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
    <?php if (isset($get)) : ?> <title><?php echo $name . ": " . GetData($get, "title", "blog", "slug") ?></title>
    <?php else : ?> <title><?php echo $name ?></title>
    <?php endif; ?>


    <!-- Boostrap -->
    <?php if (isset($get)) : ?>
        <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <?php else : ?>
            <link rel="stylesheet" href="assets/css/bootstrap.css">
    <?php endif; ?>
    <script src="assets/js/bootstrap.js"></script>

    <!-- Custom CSS -->
    <?php if (isset($get)) : ?>
        <link rel="stylesheet" href="../assets/css/style.css">
    <?php else : ?>
        <link rel="stylesheet" href="assets/css/style.css">
    <?php endif; ?>
</head>

<body>
    <div class="container">
        <div class="row">

            <?php if (isset($get)) : ?>
                <!-- Ruha bemutatása -->
            <?php else : ?>
                <!-- Ruhák kiíratása -->
                <h1>Ruhák oldal</h1>
            <?php endif; ?>
        </div>
    </div>

    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/ajax/functions.js"></script>
</body>

</html>