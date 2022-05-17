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
        <link rel="stylesheet" href="../assets/css/cikkek.css">
    <?php else : ?>
        <link rel="stylesheet" href="assets/css/cikkek.css">
    <?php endif; ?>
    <script src="assets/js/bootstrap.js"></script>

    <!-- Custom CSS -->
    <?php if (isset($get)) : ?>
        <link rel="stylesheet" href="../assets/css/style.css">
    <?php else : ?>
        <link rel="stylesheet" href="assets/css/style.css">
    <?php endif; ?>

    <!-- BOXICONS -->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
<?php require_once("inc/nav.php"); ?>
    <div class="container">

            <?php
            //TODO: Képek beszúrása és átnézni, hogy minden rendesen fent van-e az adatbázisban.
            if (isset($get)) : ?>
                <div class="cikkek">
                    <p class="cikk-category"><?php echo GetData($get, "category", "blog", "slug"); ?></p>
                    <h1><?php echo GetData($get, "title", "blog", "slug") ?></h1>
                    <?php if (GetData($get, "titleIMG", "blog", "slug") != "") : ?>
                        <img src="../assets/img/blog/<?php echo GetData($get, "slug", "blog", "slug") ?>/<?php echo GetData($get, "titleIMG", "blog", "slug") ?>" alt="Első" style="max-width: 100%;">
                    <?php endif; ?>
                    <hr>
                    <p><?php echo GetData($get, "body", "blog", "slug"); ?></p>
                    <p class="cikkekDetails"><?php echo GetData($get, "author", "blog", "slug"); ?></p>
                    <p class="cikkekDetails"><?php echo strftime("%G. %B %d. - %H:%M", strtotime(GetData($get, "date", "blog", "slug"))); ?></p>
                </div>
                <!--<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <h3><?php echo GetData($get, "category", "blog", "slug") . " Kategóriából" ?></h3>
                    <?php
                    $query = $conn->query("SELECT * FROM blog WHERE category = '" . GetData($get, "category", "blog", "slug") . "' LIMIT 3");
                    if ($query->num_rows > 0)
                        while ($row = $query->fetch_assoc()) :
                    ?>
                        <a href="?page=cikkek&cikk=<?php echo $row['id'] ?>"><?php echo $row['title'] ?></a><br>
                    <?php endwhile; ?>-->
                </div>
            <?php else : ?>

                <div class="cikk-bevezeto">
                    <?php
                        $query = $conn->query("SELECT * FROM blog ORDER BY date DESC LIMIT 1");
                        if ($query->num_rows > 0) :
                            $row = $query->fetch_assoc()
                        ?>
                        <div class="cikk-bevezetoDetails">
                            <p class="cikk-category"><?php echo $row['category']; ?></p>
                            <h2><a href="cikkek/<?php echo createSlug($row['title']); ?>"><?php echo $row['title']; ?></a></h2>
                            <p><?php echo $row['author']; ?></p>
                            <p><?php echo strftime("%G. %B %d. - %H:%M", strtotime($row['date'])); ?></p>
                        </div>
                        <div class="cikk-bevezetoImg">
                            <img src="assets/img/blog/<?php echo $row['slug'] ?>/<?php echo $row['titleIMG'] ?>" alt="Kép" style="max-width: 100%;">
                        </div>
                        <?php endif; ?>
                </div>
                <div class="cikkek-uj">
                    <?php
                    $query = $conn->query("SELECT * FROM blog ORDER BY date DESC LIMIT 3 OFFSET 1");
                    if ($query->num_rows > 0) :
                        while ($row = $query->fetch_assoc()) :
                    ?>
                        <div class="cikk-uj">
                            <!--<img src="assets/img/blog/bevezetés/kep3.jpg" alt="Kép" style="max-width: 100%;">-->
                            <img src="assets/img/blog/<?php echo $row['slug'] ?>/<?php echo $row['titleIMG'] ?>" alt="Kép" style="max-width: 100%;">
                            <p class="cikk-category"><?php echo $row['category']; ?></p>
                            <a href="cikkek/<?php echo createSlug($row['title']); ?>" class="cikk-title"><?php echo $row['title']; ?></a>
                            <p><?php echo $row['author']; ?></p>
                            <p><?php echo strftime("%G. %B %d. - %H:%M", strtotime($row['date'])); ?></p>
                        </div>
                    <?php endwhile; ?>
                    <?php endif; ?>
                </div>
                <div class="cikkekLista">
                    <?php
                    $query = $conn->query("SELECT * FROM blog WHERE id != 1 ORDER BY date DESC");
                    if ($query->num_rows > 0) :
                        while ($row = $query->fetch_assoc()) :
                    ?>
                    <div class="cikkek-list">
                        <div class="cikk">
                            <!--<a href="cikkek/<?php echo createSlug($row['title']); ?>"></a>-->
                                <div class="cikk-img">
                                    <img src="assets/img/blog/<?php echo $row['slug'] ?>/<?php echo $row['titleIMG'] ?>" alt="Kép" style="max-width: 100%;">
                                </div>
                                <div class="cikk-details">
                                    <p class="cikk-category"><?php echo $row['category']; ?></p>
                                    <a href="cikkek/<?php echo createSlug($row['title']); ?>" class="cikk-title"><?php echo $row['title']; ?></a>
                                    <!--<p class="card-text"><?php echo GetSentences($row['body']); ?></p>-->
                                </div>
                        </div>
                    </div>
                    <?php endwhile; ?>
                    <?php endif; ?>
                    <?php endif; ?>            
                </div>
            </div>

    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/ajax/functions.js"></script>
    <?php if (isset($get)) : ?>
        <script src="../assets/js/script.js"></script>
    <?php else : ?>
        <script src="assets/js/script.js"></script>
    <?php endif; ?>
</body>

</html>