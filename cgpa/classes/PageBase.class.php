<?php

/**
 * class PageBase
 *
 * Description for class PageBase
 *
 * @author:
*/
require_once("Base.class.php");

abstract class PageBase extends Base
{
	public function __construct($MessageLog)
	{
		parent::__construct($MessageLog);
			
		$this->m_MessageLog->AddMessage(__FILE__, __LINE__, "PageBase constructor.");
	}

        protected function VerifyRecords($db, $iMinCount, $iMaxCount)
        {
                if( $db->HasError() )
                {
                        $this->m_ErrorMessage = $db->Error();
                        return false;
                }

                if( $db->RowCount() < $iMinCount || $db->RowCount > $iMaxCount )
                {
                        return false;
                }

                return true;
        }
}

?>