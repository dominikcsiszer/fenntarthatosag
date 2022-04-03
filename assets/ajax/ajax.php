<?php

if(isset($_GET['function'])) {
	if($_GET['function'] !== '') {
		switch($_GET['function']) {
			case 'teszt': teszt(); break;
			case 'nextQuiz': nextQuiz(); break;
		}
	}
	else
		header('Location:?=home');
}
else
	header('Location:?=home');

?>