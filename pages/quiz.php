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
    <link rel="stylesheet" href="assets/css/quiz.css">

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<?php require_once("inc/nav.php"); ?>
                        <div class="start">
                            <div class="startBtn"><button>Általánis iskoláloskan kvíz</button></div>
                            <div class="startBtn"><button>Középiskolásoknak kvíz</button></div>
                            <div class="startBtn"><button>Fiatal felnőtteknek kvíz</button></div>
                        </div>
                       
                        <div class="quizBox">
                            <header>
                                <div class="title"></div>
                            </header>
                            <section>
                                <div class="que_text">
                                </div>
                                <div class="optionList">
                                </div>
                            </section>
                            <footer>
                                <div class="total_que">
                                </div>
                                <button class="next_btn">Következő</button>
                            </footer>
                        </div>
                        <div class="resultBox">
                            <div class="icon">
                                <i class="fas fa-crown"></i>
                            </div>
                            <div class="complete_text">Sikeresen teljesítetted a kvízt!</div>
                            <div class="score_text">
                            </div>
                            <div class="buttons">
                                <button class="restart">Újrakezdés</button>
                                <button class="quit">Kilépés</button>
                            </div>
                        </div>


    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/ajax/functions.js"></script>
    <script src="assets/js/quiz.js"></script>
    <script src="assets/js/script.js"></script>
</body>
</html>