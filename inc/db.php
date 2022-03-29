<?php 
$host = 'localhost';
$user = 'root';
$password = '';
$database_name = 'fenntarthatosag';

$conn = mysqli_connect($host,$user,$password,$database_name);
mysqli_query($conn,"SET NAMES 'utf8'");

if (!$conn) {
    die("Hiba a csatlakozásba: " . mysqli_connect_error());
}
?>