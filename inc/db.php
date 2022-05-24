<?php 
    $shost = "localhost";
    $sname = "root";
    $spassword = "";
    $dbName = "fenntarthatosag";
    // $shost = "185.129.138.45:3306";
    // $sname = "b21949";
    // $spassword = "vhQW69ns";
    // $dbName = "b21949";

    $conn = mysqli_connect($shost, $sname, $spassword, $dbName);
    mysqli_query($conn,"SET NAMES 'utf8'");

    if (!$conn) {
        die("Hiba a csatlakozásba: " . mysqli_connect_error());
    }
?>