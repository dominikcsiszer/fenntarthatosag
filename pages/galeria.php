<?php 
?><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title><?php echo $name ?></title>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/galeria.css">

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<?php require_once("inc/nav.php"); ?>
<div class="container">
    <section class="fotosKepei">
        <h2>Józsa Anna</h2>
        <div class="kepek"></div>
    </section>

    <section class="fotosKepei">
        <h2>Gáll Regina</h2>
        <div class="kepek"></div>
    </section>

    <section class="fotosKepei">
        <h2>Fehér Szebasztián</h2>
        <div class="kepek"></div>
    </section>
</div>

<?php require_once("inc/footer.php"); ?>

    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/ajax/functions.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/galeria.js"></script>
</body>
</html>