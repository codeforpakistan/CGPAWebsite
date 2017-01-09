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
	public $m_blnIsIDSet		= false;

	public $m_txtMPAID 		= "0";
	public $m_txtName               = "";
	public $m_txtDescription        = "";
	public $m_txtImageName          = "";
	public $m_txtPoliticalPartyID   = "";
	public $m_txtConstituencyID     = "";
	public $m_txtPartyLongName      = "";
	public $m_txtPartyImageName     = "";
	public $m_txtQuestions          = "0";
	public $m_txtResolutions        = "0";
	public $m_txtTotalPresents      = "0";
	public $m_txtTotalAbsents       = "0";
	public $m_txtTotalApplications  = "0";


	public function __construct($MessageLog)
	{
		parent::__construct($MessageLog);
		$this->m_MessageLog->AddMessage(__FILE__, __LINE__, "PageBase constructor.");

                if( isset($_GET["mpaID"]) )
		{
			$this->m_txtMPAID 	= $_GET["mpaID"];
			$this->m_blnIsIDSet 	= (intval($this->m_txtMPAID) > 0);
		}
        }

	public function GetRecordList($db, $iCurrentPage, &$iTotalPageCount)
	{
		$db->ExecuteSP("SP_GetMPAList");
		return $db->ResultSet();
	}

	public function GetRecordByID($MessageLog, $db)
	{
		if( $this->m_blnIsIDSet == false )
		{
			return;
		}
		
		$db->ExecuteSP("SP_GetMPAByID", "Int", "mpaID", $this->m_txtMPAID);
		
		if( $this->VerifyRecords($db, 1, 1) == false )
		{
			return;
		}

		$DataRow = $db->GetNextRow();

		$this->m_txtName              	= $DataRow["mpaName"];
		$this->m_txtDescription       	= $DataRow["mpaDescription"];
		$this->m_txtImageName         	= $DataRow["mpaImageName"];
		$this->m_txtPoliticalPartyID  	= $DataRow["plpPoliticalPartyID"];
		$this->m_txtConstituencyID    	= $DataRow["cntConstituencyID"];
		$this->m_txtPartyLongName     	= $DataRow["plpLongName"];
		$this->m_txtPartyImageName    	= $DataRow["plpImageName"];
		$this->m_txtQuestions         	= $DataRow["Questions"];
		$this->m_txtResolutions       	= $DataRow["Resolutions"];
		$this->m_txtTotalPresents     	= $DataRow["TotalPresents"];
		$this->m_txtTotalAbsents      	= $DataRow["TotalAbsents"];
		$this->m_txtTotalApplications 	= $DataRow["TotalApplications"];
	}
}

?>
