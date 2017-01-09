<?php

session_start();
$DEBUG		= 1;
$SecurePage	= false;

require_once("Log.class.php");

$MessageLog = new Log();

require_once("Database.class.php");
require_once("UtilFunctions.class.php");
require_once("Utils.class.php");

$db      = new Database($MessageLog, false);
$dbUtils = new Database($MessageLog, false);

?>