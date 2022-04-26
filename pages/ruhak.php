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
    <?php if (isset($get)) : ?> <title><?php echo $name ?></title>
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
                <h1>Első ruha címe</h1>
                <p>Készítő</p>
                <img src="assets/img/divat/elso/1.png" alt="">
                <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Magni eum, quasi doloremque ipsa expedita quibusdam blanditiis error ducimus architecto, id ab natus culpa accusamus, maiores in! Sed, voluptatem a animi ratione, magnam quia quibusdam illum qui blanditiis vero culpa provident, eaque id eveniet quisquam nemo! Ipsum quo distinctio in blanditiis optio dolore nobis enim ex dolorem ad saepe facere nostrum labore eligendi harum eveniet quos alias non consectetur laudantium delectus officiis, officia, ratione eum! Officiis deleniti nostrum blanditiis quo itaque ut commodi tempore repellat alias aliquid eius a officia iure at necessitatibus odit consequatur rem placeat nisi, illo totam deserunt soluta, tempora iste! Rerum quo possimus commodi veniam asperiores illo! Natus, dolore, asperiores amet corporis recusandae, non nulla voluptatibus nisi totam atque possimus molestiae labore deleniti! Explicabo labore hic consectetur dicta voluptates! Voluptate tempore eum perferendis. Recusandae repellendus ad tenetur, sequi ut, tempora a, rerum quos similique animi natus perspiciatis?</p>
                <p>Ruha stílusa</p>
                <p>Férfi/Női ruha</p>
                <img src="assets/img/divat/elso/2.png" alt="">
                <h5>Tervezési fázis</h5>
            <?php else : ?>
                <!-- Ruhák kiíratása -->
                <h1>Ruhák oldal</h1>
                <a href="?page=ruhak&ruha=elso-ruha">Első ruha</a>
            <?php endif; ?>
        </div>
    </div>

    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/ajax/functions.js"></script>
</body>

</html>