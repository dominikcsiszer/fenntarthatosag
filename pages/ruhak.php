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

    <!-- BOXICONS -->
    <link href='https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css' rel='stylesheet'>

</head>

<body>
    <?php require_once("inc/nav.php"); ?>
    <div class="container">
    <div class="kollekciokPanel">
                <div class="kollekcio">
                    <div class="kollekcio-img"><img src="assets/img/zero-waste.png" alt="Zero Waste Kollekcio"></div>
                    <div class="kollekcio-details">
                        <h1 class="kollekcio-title">Zero Waste Kollekció</h1>
                        <p class="kollekcio-description">
                        Egy jól tervezett folyamat lényege, hogy ne keletkezzen szemét, legfeljebb hulladék. A természetben az anyagok folyamatos átalakuláson mennek keresztül, de sohasem kerülnek ki egy zárt körforgásból. Vagyis körkörösen, a lehető leghatékonyabban újrahasznosítható erőforrások. Ezzel szemben az átgondolatlan termelési folyamatok felesleget eredményeznek. Ez a szemét. Teljesen mindegy, hogy a szemét elpazarolt alapanyag, energia, vagy humán tőke.		
                        A hulladék nélküli öltözékek elkészítése magas szintű szabászati és kivitelezési ismereteket feltételez, ami korlátozta volna a lehetőségeket. Ezért a hulladék mentesség bemutatására három tervezési és kivitelezési koncepciót választottunk:		
                        <ol>
                            <li>hulladékmentes szabászati és kivitelezési megoldásokkal készített öltözékek,</li>
                            <li>maradék anyagok felhasználásával készített öltözékek,</li>
                            <li>upcycle koncepcióval készített öltözékek.</li>
                        </ol>
                        Ezekkel az eljárásokkal azok számára is adhatnak a diákok kreatív ötleteket, akik tudnak varrni és azoknak is, akik most kapnak kedvet ahhoz, hogy megtanulják		
                        </p>
                        <div class="startBtn"><button id="zero">Tovább</button></div>
                    </div>
                </div>

                <div class="kollekcio">
                    <div class="kollekcio-img"><img src="assets/img/kreativ-kiserletek.png" alt="Zero Waste Kollekcio"></div>
                    <div class="kollekcio-details">
                        <h1 class="kollekcio-title">Kreatív Kisérletek Kollekció</h1>
                        <p class="kollekcio-description">
                        A kreatív kísérletek kollekció bepillantást enged a tervezési folyamat egyik fázisába, ahol a diákok kötöttségek nélkül, a formákkal szabadon kísérletezve alkothatták meg az elképzeléseiket régi férfiingeket használva alapanyagként.
                        A feladat az ing alkotóelemeire bontása, a kapott alkatrészek újrakomponálása volt.
                        A bemutatásra kerülő modellek a tervezési folyamat egy pillanatfelvételét testesítik meg, a kibontakozó ötletek egy-egy lehetséges irányát mutatják meg a számtalan lehetőség közül, amelyeket továbbfejlesztve születnek majd meg a végső öltözékek
                        </p>
                        <div class="startBtn"><button id="kreativ" onClick="window.location.reload()">Tovább</button></div>
                    </div>
                </div>
            </div>
        <div class="backBtn"><button id="vissza">< Vissza</button></div>
        <div class="ruhakPanel">
        </div>
        <div class="ruhaPanel">
        </div>
    </div>


    <?php require_once("inc/footer.php"); ?>
    
    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/ajax/functions.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/ruhak.js"></script>
</body>

</html>