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
	return setlocale(LC_ALL, 'hu_HU.ISO8859-2');
}

function GetSentences($body, $sentencesToDisplay = 2) {
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

function createSlug($slug) {

    $lettersNumbersSpacesHypens = '/[^\-\s\pN\pL]+/u';
    $spacesDuplicateHypens = '/[\-\s]+/';

	$pattern = array("'é'", "'è'", "'ë'", "'ê'", "'É'", "'È'", "'Ë'", "'Ê'", "'á'", "'à'", "'ä'", "'â'", "'å'", "'Á'", "'À'", "'Ä'", "'Â'", "'Å'", "'ó'", "'ò'", "'ö'", "'ő'", "'ô'", "'Ó'", "'Ò'", "'Ö'", "'Ő'", "'Ô'", "'í'", "'ì'", "'ï'", "'î'", "'Í'", "'Ì'", "'Ï'", "'Î'", "'ú'", "'ù'", "'ü'", "'ű'", "'û'", "'Ú'", "'Ù'", "'Ü'", "'Ű'", "'Û'", "'ý'", "'ÿ'", "'Ý'", "'ø'", "'Ø'", "'œ'", "'Œ'", "'Æ'", "'ç'", "'Ç'");

	$replace = array('e', 'e', 'e', 'e', 'E', 'E', 'E', 'E', 'a', 'a', 'a', 'a', 'a', 'A', 'A', 'A', 'A', 'A', 'o', 'o', 'o', 'o', 'O', 'O', 'O', 'O', 'i', 'i', 'i', 'I', 'I', 'I', 'I', 'I', 'u', 'u', 'u', 'u', 'u', 'U', 'U', 'U', 'U', 'U', 'y', 'y', 'Y', 'o', 'O', 'a', 'A', 'A', 'c', 'C'); 	

    $slug = preg_replace($lettersNumbersSpacesHypens, '', mb_strtolower($slug, 'UTF-8'));
    $slug = preg_replace($spacesDuplicateHypens, '-', $slug);
    $slug = preg_replace($pattern, $replace, $slug);
    $slug = trim($slug, '-');

    return $slug;
}
?>