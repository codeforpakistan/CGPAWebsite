<?php

/**
 * class UtilFunctions
 *
 * Description for class UtilFunctions
 *
 * @author:
*/
class UtilFunctions  
{

	/**
	 * UtilFunctions constructor
	 *
	 * @param 
	 */
	function UtilFunctions() 
	{
	}
	
	public static function GetCurrentPageNameWithQS()
	{
		$URL = $_SERVER["SCRIPT_NAME"];
		
		if( count($_GET) > 0 )
		{
			$URL .= "?" . $_SERVER['QUERY_STRING'];
		}
		
		return $URL;
	}

	public static function QueryStringAdd($URL, $Name, $Value)
	{
		return UtilFunctions::QueryStringAR($URL, $Name, $Value, false);
	}

	public static function QueryStringRemove($URL, $Name, $Value)
	{
		return UtilFunctions::QueryStringAR($URL, $Name, $Value, true);
	}
	
	private static function QueryStringAR($URL, $Name, $Value, $blnRemove)
	{
		$pos = strpos($URL, "?");
		
		if( $pos == false && $blnRemove == false )
		{
			return $URL . "?" . $Name . "=" . $Value;
		}
		else
		{
			$blnFound	= false;
			$TrimmedURL = trim($URL);
			
			if( $TrimmedURL[strlen($TrimmedURL) - 1] == "?" )	// Has ? but no variables
			{
				return $URL . $Name . "=" . $Value;
			}
			else
			{
				$QS			= split("\?", $URL);
				$NewURL		= $QS[0] . "?";
				$QSPairs	= split("&", $QS[1]);
				
				$I = 0;
				for($I = 0; $I < sizeof($QSPairs); $I++)
				{
					$QSKeyValue = split("=", $QSPairs[$I]);
					
					if( $QSKeyValue[0] == $Name )
					{
						$blnFound	= true;

						if( $blnRemove == false )
						{
							if( $I > 0 )
							{
								$NewURL .= "&";
							}

							$NewURL	.= $Name . "=" . $Value;
						}
					}
					else
					{
						if( $I > 0 )
						{
							$NewURL .= "&";
						}

						$NewURL .= $QSPairs[$I];
					}
				}
				
				if( $blnFound == false && $blnRemove == false )
				{
					if( $I > 0 )
					{
						$NewURL .= "&";
					}
					
					$NewURL .= $Name . "=" . $Value;
				}

				return $NewURL;
			}
		}
	}
	
	public static function QueryStringAddMessage($URL, $Value)
	{
		return UtilFunctions::QueryStringAdd($URL, "FormMessage", $Value);
	}
	
	public static function QueryStringAddErrorMessage($URL, $Value)
	{
		return UtilFunctions::QueryStringAdd($URL, "ErrorMessage", $Value);
	}

	public static function GetFullPagePath()
	{
		return "http://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
	}
	
	public static function DateAdd($strDate, $iDays, $iMonths, $iYears, $DateFormat = "")
	{
		if( $DateFormat == "" )
		{
			$DateFormat = AppSettings::$DATE_FORMAT;
		}
		
		$oldDate = strtotime($strDate);
		$newDate = date($DateFormat, 
			mktime(date('h',$oldDate), 
					date('i',$oldDate), 
					date('s',$oldDate), 
					date('m',$oldDate) + $iMonths,
					date('d',$oldDate) + $iDays, 
					date('Y',$oldDate) + $iYears) );

		return $newDate;
	}

	public static function FormatDate($strDate)
	{
		if( !$strDate || $strDate == "" )
		{
			return "";
		}
		
		$oldDate = strtotime($strDate);
		
		if( $oldDate == false || $oldDate == -1 )
		{
			return $strDate;
		}
		
		$newDate = date(AppSettings::$DATE_FORMAT, 
			mktime(date('h',$oldDate), 
					date('i',$oldDate), 
					date('s',$oldDate), 
					date('m',$oldDate),
					date('d',$oldDate), 
					date('Y',$oldDate)) );

		return $newDate;
	}

	public static function GetTimeStampString()
	{
		$oldDate = date("ydmhis");
		$ms = (floor(microtime(true)) % 1000000);
		$ts = $oldDate . $ms;

		return $ts;
	}
	
	public static function UploadFile($MessageLog, $FileUploadID, $FileUploadFolder, &$FilePathName, $FileNewPathName = "")
	{
		$ErrorMessage = "";
		
		$MessageLog->AddMessage(__FILE__, __LINE__, "Uploading File... Type: " . $_FILES[$FileUploadID]["type"]);
		
		// Images			
		if( ($_FILES[$FileUploadID]["type"]	== "image/gif")
			|| ($_FILES[$FileUploadID]["type"]	== "image/jpeg")
			|| ($_FILES[$FileUploadID]["type"]	== "image/pjpeg")
			|| ($_FILES[$FileUploadID]["type"]	== "image/x-png") )
		{
			if( $_FILES[$FileUploadID]["size"] > AppSettings::$UPLOAD_IMAGE_SIZE )
			{
				return "Image file exceeds maximum file size limit [" . AppSettings::$UPLOAD_IMAGE_SIZE . "KB]";
			}
			
			$FileUploadFolder = UtilFunctions::GetImageFolder($FileUploadFolder);
			$ErrorMessage = UtilFunctions::SaveUploadedFile($MessageLog, $FileUploadID, $FileUploadFolder, $FilePathName, $FileNewPathName);
		}
		elseif($_FILES[$FileUploadID]["type"] == "application/vnd.ms-excel" )
		{
			if( $_FILES[$FileUploadID]["size"] > AppSettings::$UPLOAD_IMAGE_SIZE )
			{
				return "Excel file exceeds maximum file size limit [" . AppSettings::$UPLOAD_EXCEL_SIZE . "KB]";
			}
			
			$FileUploadFolder = UtilFunctions::GetExcelFolder($FileUploadFolder);
			$ErrorMessage = UtilFunctions::SaveUploadedFile($MessageLog, $FileUploadID, $FileUploadFolder, $FilePathName, $FileNewPathName);
		}
		else
		{
			return "File [" . $_FILES[$FileUploadID]["name"] . "] is not a valid file type [" . $_FILES[$FileUploadID]["type"] ."]";
		}
		
		return $ErrorMessage;
	}
	
	private static function SaveUploadedFile($MessageLog, $FileUploadID, $FileUploadFolder, &$FilePathName, $FileNewPathName = "")
	{
		$MessageLog->AddMessage(__FILE__, __LINE__, "File is OK");
		
		if( is_dir($FileUploadFolder) == false )
		{
			$MessageLog->AddMessage(__FILE__, __LINE__, "Path is not a directory: [" . $FileUploadFolder . "]");
			
			if( mkdir(UtilFunctions::FileSafeName($FileUploadFolder, 0777, true)) == false )
			{
				return "Unable to find/create folder on path: [" . $FileUploadFolder . "]";
			}
			
			$MessageLog->AddMessage(__FILE__, __LINE__, "Directory created: [" . $FileUploadFolder . "]");
		}

		if ($_FILES[$FileUploadID]["error"] > 0)
		{
			return "Return Code: " . $_FILES[$FileUploadID]["error"];
		}
		else
		{
			if( $FileNewPathName != "" )
			{
				$FilePathName = "../" . $FileNewPathName;
			}
			else
			{
				$FilePathName = $FileUploadFolder . "/" . $_FILES[$FileUploadID]["name"];
			}

			if( move_uploaded_file($_FILES[$FileUploadID]["tmp_name"], UtilFunctions::FileSafeName($FilePathName)) == false )
			{
				$MessageLog->AddMessage(__FILE__, __LINE__, "Unable to move uploaded file from: [" . $_FILES[$FileUploadID]["tmp_name"] . "] to [" . UtilFunctions::FileSafeName($FilePathName) . "]");
				return "Unable to move uploaded file from: [" . $_FILES[$FileUploadID]["tmp_name"] . "] to [" . UtilFunctions::FileSafeName($FilePathName) . "]";
			}
			
			// Update path and remove ../
			if( $FileNewPathName != "" )
			{
				$FilePathName = $FileNewPathName;
			}
		}
		
		return "";
	}

	public static function GetFileSafeName($Filename)
	{
		$str = str_replace(" ", "_", $Filename);
		return UtilFunctions::FileSafeName($str); 
	}
	
	private static function FileSafeName($Filename)
	{
		$InvalidChars = array('\\', ':', '*', '?', '"', '<', '>', '|'); 
		return str_replace($InvalidChars, '', $Filename); 
	}

	private static function GetImageFolder($FileUploadFolder)
	{
		return  $FileUploadFolder . AppSettings::$UPLOAD_IMAGE_FOLDER_POSTFIX;
	}

	private static function GetExcelFolder($FileUploadFolder)
	{
		return  $FileUploadFolder . AppSettings::$UPLOAD_EXCEL_FOLDER_POSTFIX;
	}
}

?>