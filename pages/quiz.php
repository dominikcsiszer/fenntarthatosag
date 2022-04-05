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

    <!-- Custom CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header"><h1>Kvíz</h1></div>
                    <div class="card-body">
                        <div class="quizChoose">
                            <div class="row">
                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="quizCategory" onclick="startQuiz()">
                                        <p>Általános Iskolásoknak Kvíz</p>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="quizCategory">
                                        <p>Középiskolásoknak Kvíz</p>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                    <div class="quizCategory">
                                        <p>Fiatal Felnőtteknek Kvíz</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="quiz">
                            <div class="question"></div>
                            <div class="answer answerA" onclick="quizEllenorzes()">
                                <div class="answerText" id="a1"></div>
                            </div>
                            <div class="answer answerB" onclick="quizEllenorzes()">
                                <div class="answerText" id="a2"></div>
                            </div>
                            <div class="answer answerC" onclick="quizEllenorzes()">
                                <div class="answerText" id="a3"></div>
                            </div>
        
                            <div class="quizFooter">
                                <div class="quizStatus"></div>
                                <input type="button" class="quizNext" value="Következő" onclick="nextQuiz()" disabled>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/ajax/functions.js"></script>
    <script src="assets/js/quiz.js"></script>
</body>
</html>