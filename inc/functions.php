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

function teszt() {
    echo "Done!";
}
?>