<?php
session_start();
ini_set('display_errors', 1);
error_reporting(E_ALL);

require('inc/config.php');
require('inc/db.php');
require('inc/functions.php');

GetTimezone();
IssetPage();

switch($_GET['page']) {
	case 'ajax': include("assets/ajax/ajax.php"); break;
	case 'home': include("pages/home.php"); break;
	case 'cikkek': include("pages/cikkek.php"); break;
	case 'quiz': include("pages/quiz.php"); break;
	default: include("pages/home.php"); break;
}

?>