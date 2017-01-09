<?php

/**
 * class Log
 *
 * Description for class Log
 *
 * @author:
*/
class Log  
{
	protected $m_Log = "";

	/**
	 * AppSettings constructor
	 *
	 * @param 
	 */
	function Log() 
	{
	}
	
	public function AddMessage($FileName, $LineNumber, $Message)
	{
		//$this->m_Log = "[" . $FileName . "] [" . $LineNumber . "] " . $Message . "<br>" . $this->m_Log;
	}
	
	public function AddMessageCritical($FileName, $LineNumber, $Message)
	{
		//$this->m_Log = "[" . $FileName . "] [" . $LineNumber . "] <font style='color: #ff0000;'>" . $Message . "</font><br>" . $this->m_Log;
	}
	
	public function Message()
	{
		return $this->m_Log;
	}
}

?>