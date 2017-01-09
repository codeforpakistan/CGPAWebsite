<?php

/**
 * class User
 *
 * Description for class User
 *
 * @author:
*/
require_once("PageBase.class.php");

class MPA extends PageBase 
{
	public $m_blnIsNameSet			= false;

	public $m_txtName               	= "";
	public $m_txtID 			= "0";
	public $m_txtDescription        	= "";
	public $m_txtImageName          	= "";
	public $m_txtPoliticalPartyID   	= "";
	public $m_txtConstituencyID     	= "";
	public $m_txtPartyLongName      	= "";
	public $m_txtPartyImageName     	= "";
	public $m_txtQuestions          	= "0";
	public $m_txtQuestionsRank      	= "0";
	public $m_txtResolutions        	= "0";
	public $m_txtResolutionsRank    	= "0";
	public $m_txtPrivilegeMotions		= "0";
	public $m_txtPrivilegeMotionsRank	= "0";
	public $m_txtAdjournmentMotions         = "0";
	public $m_txtAdjournmentMotionsRank     = "0";
	public $m_txtCallAttentionNotices       = "0";
	public $m_txtCallAttentionNoticesRank   = "0";
	public $m_txtBills                      = "0";
	public $m_txtBillsRank                  = "0";
	public $m_txtTotalPresents      	= "0";
	public $m_txtTotalAbsents       	= "0";
	public $m_txtTotalApplications  	= "0";

	
	public function __construct($MessageLog)
	{
		parent::__construct($MessageLog);
		$this->m_MessageLog->AddMessage(__FILE__, __LINE__, "PageBase constructor.");

                if( isset($_GET["mpaName"]) )
		{
			$this->m_txtName 	= $_GET["mpaName"];
			$this->m_blnIsNameSet 	= true;
		}
        }

	public function IsFilterSet()
	{
		return ($this->m_blnIsNameSet);
	}

	public function GetRecordList($db)
	{
		$db->ExecuteSP("SP_GetMPAList");
		return $db->ResultSet();
	}

	public function GetRecordByName($MessageLog, $db)
	{
		if( $this->IsFilterSet() == false )
		{
			return false;
		}
		
		$db->ExecuteSP("SP_GetMPAByName", "string", "mpaName", $this->m_txtName);
		
		if( $this->VerifyRecords($db, 1, 1) == false )
		{
			return false;
		}

		$DataRow = $db->GetNextRow();

		$this->m_txtID              		= $DataRow["mpaID"];
		$this->m_txtDescription       		= $DataRow["mpaDescription"];
		$this->m_txtImageName         		= $DataRow["mpaImageName"];
		$this->m_txtPoliticalPartyID  		= $DataRow["plpPoliticalPartyID"];
		$this->m_txtConstituencyID    		= $DataRow["cntConstituencyID"];
		$this->m_txtPartyLongName     		= $DataRow["plpLongName"];
		$this->m_txtPartyImageName    		= $DataRow["plpImageName"];
		$this->m_txtQuestions         		= $DataRow["Questions"];
		$this->m_txtQuestionsRank      		= $DataRow["QRank"];
		$this->m_txtResolutions       		= $DataRow["Resolutions"];
		$this->m_txtResolutionsRank   		= $DataRow["RRank"];
		$this->m_txtPrivilegeMotions   		= $DataRow["PrivilegeMotions"];
		$this->m_txtPrivilegeMotionsRank   	= $DataRow["PRank"];
		$this->m_txtAdjournmentMotions   	= $DataRow["AdjournmentMotions"];
		$this->m_txtAdjournmentMotionsRank   	= $DataRow["ARank"];
		$this->m_txtCallAttentionNotices   	= $DataRow["CallAttentionNotices"];
		$this->m_txtCallAttentionNoticesRank   	= $DataRow["CRank"];
		$this->m_txtBills   			= $DataRow["Bills"];
		$this->m_txtBillsRank   		= $DataRow["BRank"];
		$this->m_txtTotalPresents     		= $DataRow["TotalPresents"];
		$this->m_txtTotalAbsents      		= $DataRow["TotalAbsents"];
		$this->m_txtTotalApplications 		= $DataRow["TotalApplications"];

		return true;
	}
}

?>
