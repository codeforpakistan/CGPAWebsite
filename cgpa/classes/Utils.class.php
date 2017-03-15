<?php

require_once("UtilFunctions.class.php");

class Utils  
{

	/**
	 * Utils constructor
	 *
	 * @param 
	 */
	function Utils() 
	{
	}
	
	public static function HTMLForDropdown($MessageLog, $ResultSet, $ValueColumnName, $TextColumnName, $SelectedValue)
	{
		$DataRow = mysqli_fetch_array($ResultSet);

		if( !$DataRow )
		{
			$MessageLog->AddMessage(__FILE__, __LINE__, "No rows found.");
		}
		
		while($DataRow)
		{
			if( $DataRow[$ValueColumnName] == $SelectedValue )
			{
				echo("<option value='" . $DataRow[$ValueColumnName] . "' selected>" . $DataRow[$TextColumnName] . "</option>");
			}
			else
			{
				echo("<option value='" . $DataRow[$ValueColumnName] . "'>" . $DataRow[$TextColumnName] . "</option>");
			}
			
			$DataRow = mysqli_fetch_array($ResultSet);
		}
		
		if( mysqli_data_seek($ResultSet, 0) == false )
		{
			$MessageLog->AddMessage(__FILE__, __LINE__, "Unable to reset the ResultSet pointer to start row.");
		}
	}

/*

                      <tr role="row" class="odd">
                        <td>Gecko</td>
                        <td>Firefox 1.0</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.7</td>
                        <td>A</td>
                        <td>A</td>
                        <td>1.7</td>
                      </tr>
                      <tr role="row" class="even">
                        <td>ecko</td>
                        <td>irefox 1.0</td>
                        <td>Win 98+ / OSX.2+</td>
                        <td>1.7</td>
                        <td>A</td>
                        <td>A</td>
                        <td>1.4</td>
                      </tr>


*/
	public static function HTMLForTable($MessageLog, $ResultSet, $ValueColumnNames, $EvenOddCSSStyles, $blnAddSerialNumber = false)
	{
		$DataRow = mysqli_fetch_array($ResultSet);

		if( !$DataRow )
		{
			$MessageLog->AddMessage(__FILE__, __LINE__, "No rows found.");
		}

		$i = 0;
		$IsPercentColumn = "";

		while($DataRow)
		{
			echo "<tr role='row' class='" . $EvenOddCSSStyles[$i % 2] . "'>";

			if( $blnAddSerialNumber )
			{
				echo "<td>" . ($i + 1) . "</td>";
			}

			for($j = 0; $j < sizeof($ValueColumnNames); $j++)
			{
				$IsPercentColumn = "";

				if( preg_match('/percent$/i', $ValueColumnNames[$j]) )
				{
				    $IsPercentColumn = "%";
				}

				echo "<td>" . $DataRow[$ValueColumnNames[$j]] . $IsPercentColumn . "</td>";
			}

			echo "</tr>";
			$DataRow = mysqli_fetch_array($ResultSet);

			$i++;
		}
	}

	public static function HTMLForDropdownYN($MessageLog, $SelectedValue)
	{
		$MessageLog->AddMessage(__FILE__, __LINE__, "YN Selected Value: " . $SelectedValue);
		
		$YSelected = "";
		$NSelected = "Selected";
		
		if( $SelectedValue == "1" )
		{
			$YSelected = "Selected";
			$NSelected = "";
		}
		
		echo("<option value='0' " . $NSelected. ">No</option>");
		echo("<option value='1' " . $YSelected. ">Yes</option>");
	}
	
	private static function KeyValuePairQueryString($DataRow, $DataKeys)
	{
		$KeyValuePair = "";
		
		for($i = 0; $i < sizeof($DataKeys); $i++)
		{
			if( $i > 0 )
			{
				$KeyValuePair .= "&";
			}
			
			$KeyValuePair .= $DataKeys[$i] . "=" . $DataRow[$DataKeys[$i]];
		}
		
		return $KeyValuePair;
	}
	
	public static function HTMLForRichTextbox($MessageLog, $TextAreaID, $Value, $Height, $Width)
	{
		$MessageLog->AddMessage(__FILE__, __LINE__, "Generating HTML for " . $TextAreaID);
		
		echo("<div class='yui-skin-sam'>");
		
		echo("<textarea name='" . $TextAreaID . "' id='" . $TextAreaID . "'>" . $Value . "</textarea>");
		
		echo("\n<script language='javascript' type='text/javascript'>\n");
		echo("(function() {\n");
		echo("var Dom = YAHOO.util.Dom;\n");
		echo("var Event = YAHOO.util.Event;\n");
		echo("var vConf" . $TextAreaID . " = {height: '" . $Height . "', width: '" . $Width . "', dompath: false};\n");
		echo("var v" . $TextAreaID . " = new YAHOO.widget.Editor('" . $TextAreaID . "', vConf" . $TextAreaID . ");\n");
		//echo("v" . $TextAreaID . "._defaultToolbar.buttonType = 'advanced';");
		echo("v" . $TextAreaID . ".render();\n");
		echo("YAHOO.util.Event.on('btnSubmit', 'click', function() { v" . $TextAreaID . ".saveHTML(); var html" . $TextAreaID . " = v" . $TextAreaID . ".get('element').value; });\n");
		echo("})();\n\n");

		echo("</script>\n");
		
		echo("</div>");
	}
	
	public static function HTMLForFileUpload($MessageLog, $FileUploadID, $Value)
	{
		if( !(!$Value || $Value == "") )
		{
			echo("<input type='checkbox' class='Checkbox' id='chk" . $FileUploadID . "' name='chk" . $FileUploadID . "' /> Remove - Current URL: [" . $Value . "] <br />");
		}
		
		echo("<input type ='file' id='" . $FileUploadID . "' name ='" . $FileUploadID . "' value='' />");
	}
	
	public static function FeedbackEmail($bcheck)
	{
		extract($_POST, EXTR_OVERWRITE); 
		
		if($bcheck == true)
		{
			$date=date("Y-m-d");
			$ip = $_SERVER['REMOTE_ADDR'];
			$mail_body =
			'<style type="text/css">
			<!--
			.style7 {
				font-family: "Open Sans", Arial, sans-serif;
				font-size: 14.44444465637207px;
				text-align: left;
				padding: 2px;
			}
			-->
			</style>
			<table width="700" border="0" align="left" cellspacing="5px" cellpadding="0">
			  <tr style="padding-top: 10px; padding-bottom: 10px;">
				<td align="center" colspan="3" style="background-color:#254069; font-size:28px; color:#ffffff; ">' . AppSettings::$COMPANY_NAME . '</td>
			  </tr>
			  <tr>
				<td colspan="3" style="background-color:#ffffff; color:#000000; font-size:12px; ">
			   
				 <br /> <p><strong>Dear Admin,</strong><br />
				   A new Contact form has been submitted. </p> </td>
			  </tr><tr>
				<td colspan="3" style="background-color:#ffffff; color:#000000;"><table  width="95%" cellpadding="5px" cellspacing="0" align="left" style="padding: 2px;">
				  <tr>
					<td width="19%" class="style7"><strong>Date:</strong></td>
					<td width="81%" class="style7">'.$date.'</td>
				  </tr>
				  <tr>
					<td width="19%" class="style7"><strong>Name:</strong></td>
					<td width="81%" class="style7">'.$_REQUEST["name"].'</td>
				  </tr>
				  <tr>
					<td class="style7"><strong>Email:</strong></td>
					<td class="style7">'.$_REQUEST["email"].'</td>
				  </tr>  <tr>
					<td width="19%" class="style7"><strong>Subject:</strong></td>
					<td width="81%" class="style7">'.$_REQUEST["subject"].'</td>
				  </tr>
				  <tr>
					<td class="style7"><strong>IP Address:</strong></td>
					<td class="style7">'.$_SERVER["REMOTE_ADDR"].'</td>
				  </tr>
				  <tr>
					<td valign="top" class="style7"><strong>Message:</strong></td>
					<td class="style7">'.$_REQUEST["message"].'</td>
				  </tr>
				</table></td>
			  </tr><tr>
				<td colspan="3" style="background-color:#ffffff; color:#000000; font-size:12px; ">&nbsp; </td>
			  </tr>
			  <tr style="padding-top: 10px; padding-bottom: 10px;">
				<td colspan="3" style="background-color:#254069;" ><a href="#" style="color:#FFFFFF; text-decoration:none;">Copyright &copy; 2014, ' . AppSettings::$COMPANY_NAME . '</a></td>
			  </tr>
			</table>';
			
			$headers  = "MIME-Version: 1.0\r\n";
			$headers .= "Content-type: text/html; charset=iso-8859-1\r\n";	
			$headers .= "From: UBSCO <hamid.akhtar@gmail.com>\r\n";	

			return mail(AppSettings::$FEEDBACK_EMAIL, 'Contact Form', $mail_body, $headers);
		}
		
		return false;
	}
}

?>
