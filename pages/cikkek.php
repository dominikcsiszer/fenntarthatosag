<?php 
?><!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $name ?></title>
    
    <!-- Boostrap -->
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <script src="assets/js/bootstrap.js"></script>
</head>
<body>
    <div class="container">
        <div class="row">
    <?php if (isset($_GET['cikk'])) : ?>
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                    <h1><?php echo GetData($_GET['cikk'], "title", "blog"); ?></h1>
                    <h6><?php echo GetData($_GET['cikk'], "author", "blog") ." | ". GetData($_GET['cikk'], "category", "blog") ." | <i>". strftime("%G. %B %d. - %H:%M", strtotime(GetData($_GET['cikk'], "date", "blog"))) ."</i>"; ?> </h6>
                    <?php if(GetData($_GET['cikk'], "titleIMG", "blog") != "") :?>
                        <img src="assets/img/blog/<?php echo GetData($_GET['cikk'], "titleIMG", "blog") ?>" alt="Első" style="max-width: 100%;">
                    <?php endif; ?>
                    <hr>
                    <p><?php echo GetData($_GET['cikk'], "body", "blog"); ?></p>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                    <h3><?php echo GetData($_GET['cikk'], "category", "blog") ." Kategóriából" ?></h3>
                    <?php 
                    $query = $conn->query("SELECT * FROM blog WHERE category = '". GetData($_GET['cikk'], "category", "blog") ."' LIMIT 3");
                    if ($query->num_rows > 0)
                        while($row = $query->fetch_assoc()) :
                    ?>
                        <a href="?page=cikkek&cikk=<?php echo $row['id'] ?>"><?php echo $row['title'] ?></a><br>
                    <?php endwhile; ?>
                </div>
        <?php else : ?>
                <?php 
                $query = $conn->query("SELECt * FROM blog ORDER BY date ASC");
                if ($query->num_rows > 0)
                    while($row = $query->fetch_assoc()) :
                ?>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    <a href="?page=cikkek&cikk=<?php echo $row['id'];?>">
                    <?php if($row['titleIMG'] != "") :?>
                        <img src="assets/img/blog/<?php echo $row['titleIMG'] ?>" alt="Első" style="max-width: 100%;">
                    <?php endif; ?>
                    <h4><?php echo $row['title']; ?></h4></a>
                </div>
            <?php endwhile; ?>
            <?php endif; ?>
        </div>
    </div>

    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/ajax/functions.js"></script>
</body>
</html>