<?php

/**
 * class Database
 *
 * Description for class Database
 *
 * @author:
*/

require_once("Log.class.php");

class Database 
{
	protected $m_DatabaseName 	= 'cgpaweb';
	protected $m_Server 		= '127.0.0.1';
	protected $m_Username 		= 'root';
	protected $m_Password 		= '';
	protected $m_Port 		= 3306;
	
	protected $m_Conn 		= null;
	protected $m_ResultSet 		= null;
	protected $m_MessageLog 	= null;
	protected $m_ErrorMessage 	= "";

	/**
	 * Database constructor
	 *
	 * @param 
	 */
	function Database($MessageLog, $blnEnableUnicode) 
	{
		$this->m_MessageLog = $MessageLog;
	
		$this->m_MessageLog->AddMessage(__FILE__, __LINE__,  "Connection String: " . $this->m_Server . ", " . $this->m_Username . ", " . $this->m_Password . ", " . $this->m_DatabaseName . ", " . $this->m_Port);
		$this->m_Conn = mysqli_connect($this->m_Server, $this->m_Username, $this->m_Password, $this->m_DatabaseName);

		if( $blnEnableUnicode )
		{
			mysqli_set_charset($this->m_Conn, "ucs2");
			mysqli_query($this->m_Conn, "SET NAMES 'ucs2' COLLATE 'ucs2_unicode_ci'");
		}

		$this->CreateResultSet();
	
		if( !$this->m_Conn )
		{
			$this->m_ErrorMessage = mysqli_connect_error();
			$this->m_MessageLog->AddMessage(__FILE__, __LINE__, "Error: " . $this->m_ErrorMessage);
		}
	}
	
	function __destruct()
	{
		if( $this->m_ResultSet != null )
		{
			mysqli_free_result($this->m_ResultSet);
		}
		
		if( $this->m_Conn != null )
		{
			mysqli_close($this->m_Conn);
		}
	}
	
	public function HasError()
	{
		if( $this->m_ErrorMessage == "" )
		{
			return false;
		}
		
		return true;
	}
	
	public function Error()
	{
		return $this->m_ErrorMessage;
	}
	
	// Format:
	//		1. SP Name
	//		2. Argument Type
	//		3. Argument Value
	//		2, 3 are optional and may be repeated.
	public function ExecuteSP()
	{
		$this->m_ErrorMessage = "";
		
		$argc = func_num_args();
		$arg_list = func_get_args();
		
		$Query = "Call " . $arg_list[0] . "(";
		
		if( $argc > 2 )
		{
			$Query .= $this->CreateSPParameterValue($arg_list[1], $arg_list[3]);
		}

		for($i = 4; $i < $argc - 1; $i += 3)
		{
			$Query .= ", " . $this->CreateSPParameterValue($arg_list[$i], $arg_list[$i + 2]);
		}
		
		$Query .= ")";

		$this->m_MessageLog->AddMessage(__FILE__, __LINE__, $Query);
		mysqli_multi_query($this->m_Conn, $Query);
		$this->m_ResultSet = $this->m_Conn->store_result();
		
		if( !$this->m_ResultSet && $this->m_Conn->error )
		{
			$this->m_MessageLog->AddMessage(__FILE__, __LINE__, $this->m_Conn->error);
			$this->m_ErrorMessage = $this->m_Conn->error;
		}
		
		$this->m_MessageLog->AddMessage(__FILE__, __LINE__, "Row Count: " . $this->RowCount());
	}
	
	function RowCount()
	{
		if( $this->m_ResultSet != null )
		{
			return mysqli_num_rows($this->m_ResultSet);
		}
		
		return 0;
	}
	
	function ResultSet()
	{
		return $this->m_ResultSet;
	}
	
	function GetNextRow()
	{
		return mysqli_fetch_array($this->m_ResultSet);
	}
	
	function CreateSPParameterValue($ParamType, $ParamValue)
	{
		if( strcasecmp($ParamType, "string") == 0 )
		{
			return "'" . $ParamValue . "'";
		}
		elseif( (strcasecmp($ParamType, "Int") == 0 || strcasecmp($ParamType, "Float") == 0) && $ParamValue == "" )
		{
			$this->m_MessageLog->AddMessage(__FILE__, __LINE__, $ParamType. " Found.");
			return "null";
		}
		
		return $ParamValue;
	}

	private function CreateResultSet()
	{
		mysqli_multi_query($this->m_Conn, "SET NAMES utf8");
		$this->m_ResultSet = $this->m_Conn->store_result();
	}
	
	function FreeResultSet()
	{
		if( !$this->m_ResultSet )
		{
			$this->m_MessageLog->AddMessage(__FILE__, __LINE__, "Not a valid resultset.");
			return;
		}
		
		while($this->m_Conn->next_result())
		{
			$this->m_ResultSet->close();
			$this->m_ResultSet = $this->m_Conn->store_result();
		}
		
		$this->m_MessageLog->AddMessage(__FILE__, __LINE__, "Closed Successfully.");
	}
}

?>