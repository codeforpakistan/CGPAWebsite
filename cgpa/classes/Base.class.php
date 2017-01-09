<?php

require_once("Log.class.php");

abstract class Base
{
	protected $m_MessageLog = null;
	protected $m_Message = "";
	protected $m_ErrorMessage = "";
	
	public function __construct($MessageLog) 
	{
		$this->m_MessageLog = $MessageLog;
		$this->m_MessageLog->AddMessage(__FILE__, __LINE__, "Base constructor.");
	}
	
	public function HasMessage()
	{
		if( $this->m_Message == "" )
		{
			return false;
		}

		return true;
	}
	
	public function Message()
	{
		return $this->m_Message;
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
}

?>