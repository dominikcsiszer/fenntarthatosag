<?php

if(isset($_GET['function'])) {
	if($_GET['function'] !== '') {
		switch($_GET['function']) {
			case 'teszt': teszt(); break;
		}
	}
	else
		header('Location:?=home');
}
else
	header('Location:?=home');

?>