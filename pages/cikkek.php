<?php
    if(isset($_GET['cikk']))
        $get = $_GET['cikk'];
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php if (isset($get)) : ?>
        <title><?php echo $name . ": " . GetData($get, "title", "blog", "slug") ?></title>
    <?php else : ?>
        <title><?php echo $name ?></title>
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

            <?php
            //TODO: Képek beszúrása és átnézni, hogy minden rendesen fent van-e az adatbázisban.
            if (isset($get)) : ?>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 cikkek">
                    <h1><?php echo GetData($get, "title", "blog", "slug") ?></h1>
                    <h6><?php echo GetData($get, "author", "blog", "slug") . " | " . GetData($get, "category", "blog", "slug") . " | <i>" . strftime("%G. %B %d. - %H:%M", strtotime(GetData($get, "date", "blog", "slug"))) . "</i>"; ?> </h6>
                    <?php if (GetData($get, "titleIMG", "blog", "slug") != "") : ?>
                        <img src="../assets/img/blog/<?php echo GetData($get, "slug", "blog", "slug") ?>/<?php echo GetData($get, "titleIMG", "blog", "slug") ?>" alt="Első" style="max-width: 100%;">
                    <?php endif; ?>
                    <hr>
                    <p><?php echo GetData($get, "body", "blog", "slug"); ?></p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <h3><?php echo GetData($get, "category", "blog", "slug") . " Kategóriából" ?></h3>
                    <?php
                    $query = $conn->query("SELECT * FROM blog WHERE category = '" . GetData($get, "category", "blog", "slug") . "' LIMIT 3");
                    if ($query->num_rows > 0)
                        while ($row = $query->fetch_assoc()) :
                    ?>
                        <a href="?page=cikkek&cikk=<?php echo $row['id'] ?>"><?php echo $row['title'] ?></a><br>
                    <?php endwhile; ?>
                </div>
            <?php else : ?>
                <?php
                $query = $conn->query("SELECt * FROM blog ORDER BY date ASC");
                if ($query->num_rows > 0)
                    while ($row = $query->fetch_assoc()) :
                ?>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 blog">
                        <div class="card">
                            <a href="cikkek/<?php echo createSlug($row['title']); ?>">
                                <?php if ($row['titleIMG'] != "") : ?>
                                    <img class="card-img-top" src="assets/img/blog/<?php echo $row['slug'] ?>/<?php echo $row['titleIMG'] ?>" alt="Első" style="width: 100%;">
                                <?php endif; ?>
                                <div class="card-body">
                                    <h5 class=""><?php echo $row['title']; ?></h5>
                                    <p class="card-text"><?php echo GetSentences($row['body']); ?></p>
                            </a>
                        </div>
                    </div>
        </div>
    <?php endwhile; ?>
<?php endif; ?>
    </div>
    </div>

    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/ajax/functions.js"></script>
</body>

</html>