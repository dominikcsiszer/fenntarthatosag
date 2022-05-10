<?php
    if(isset($_GET['ruha']))
        $get = $_GET['ruha'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $name ?></title>

    <!-- Custom CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/ruhak.css">
</head>

<body>
    <?php require_once("inc/nav.php"); ?>
    <div class="container">
        <div class="kollekciokPanel">
            <div class="zero-waste">
                <h1>Zero Waste Kollekció</h1>
                <div class="startBtn"><button id="zero">Tovább</button></div>
            </div>
            <div class="kreativ-kiserletek">
                <h1>Kreatív Kisérletek Kollekció</h1>
                <div class="startBtn"><button id="kreativ">Tovább</button></div>
            </div>
        </div>
        <div class="ruhakPanel">
            
        </div>
    </div>

    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/ajax/functions.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/ruhak.js"></script>
</body>

</html>