<?php 
function IssetPage() {
	if(!isset($_GET['page']))
		header("Location:?page=home");
}

function GetData($id, $state, $type, $where = 'id') {
	global $conn;
	$query = $conn->query("SELECT * FROM ".$type." WHERE ".$where." = '$id'");	
	if($query->num_rows > 0)
		while($row = $query->fetch_assoc())
			return $row[$state];
	else
		return 0;
}

function GDate($type) {
	switch($type) {
		case 1: {
			$date = date('m/d/Y');
			return $date;
		}
		break;
		
		case 2: {
			$date = date('Y-m-d H:i:s');
			return $date;
		}
		break;
		
		case 3: {
			$date = date('j F Y');
			return $date;
		}
		break;
	}
}

function GetTimezone() {
	return date_default_timezone_set('Europe/Budapest');
	return setlocale (LC_ALL, "no_NO.utf8");
}

function GetSentences($body, $sentencesToDisplay = 3) {
    $clear = preg_replace('/\s+/',' ',strip_tags($body));
    $sentences = preg_split('/(\.|\?|\!)(\s)/',$clear);

    if (count($sentences) <= $sentencesToDisplay)
        return $clear;

    $stopAt = 0;
    foreach ($sentences as $i => $sentence) {
        $stopAt += strlen($sentence);

        if ($i >= $sentencesToDisplay - 1)
            break;
    }

    $stopAt += ($sentencesToDisplay * 2);
	
    return trim(substr($clear, 0, $stopAt));
}

function LoadQuiz($quizId, $status = 0) {
    global $conn;
	$query = $conn->query("SELECT * FROM quizquestions WHERE quizID = '$quizId'");	
	if($query->num_rows > 0)
		while($row = $query->fetch_assoc())
			echo '<div class="question">'. $row["question"] .'</div>
			<div class="answer answerA">
				<div class="answerText" id="a1" value="'. $row["a1"] .'">'. $row["a1"] .'</div>
			</div>
			<div class="answer answerB">
				<div class="answerText" id="a2" value="'. $row["a2"] .'">'. $row["a2"] .'</div>
			</div>
			<div class="answer answerC">
				<div class="answerText" id="a3" value="'. $row["a3"] .'">'. $row["a3"] .'</div>
			</div>
			<div class="answer answerD">
				<div class="answerText" id="a4" value="'. $row["a4"] .'">'. $row["a4"] .'</div>
			</div>

			<div class="quizFooter">
				<div class="quizStatus">1/5 kérdés</div>
				<div class="quizNext"><input type="button" value="Következő" onclick="nextQuiz()"></div>
			</div>';
}

function nextQuiz() {
	echo $_POST['a1'];
}
?>