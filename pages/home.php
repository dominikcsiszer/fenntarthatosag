<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $name ?></title>

    <!-- Custom -->
    <link rel="stylesheet" href="assets/css/home.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
    <?php require_once("inc/nav.php"); ?>
    <section class="section header">
        <div class="header-about">
            <div class="header-aboutTop">
                <p>A Fenntarthatósági Témahét 2022. április 25. és 29. között kerül megrendezésre, amelyet Emberi Erőforrások Minisztériuma hirdet. Minden hazai és határon túli nevelési-oktatási intézmény  csatlakozhat idén a mi iskolánk is újra belevágott.</p>
            </div>
            <div class="header-aboutMid">
                <h3>Mit tervezünk erre a hétre?</h3>
                <p>Könyvcsere; Ruhacsere; Használt póló megújító workshop; Ovisoknak kézműves foglalkozás és versenyek; Divatbemutató és Verseny az osztályok között, aminek a címe tedd zöldebbé a földet.</p>
                <p>Ha többet szeretnél megtudni <a href="https://www.fenntarthatosagi.temahet.hu" target="_blank">itt</a> a program hivatalos weboldala, de persze a mi weboldalunkon is nézz körbe.</p>
            </div>
            <div class="header-aboutBottom">
                <h3>Célja?</h3>
                <p>A fenntarthatósági témahét célja, hogy megvédjük Földünket az utókor számára az esetleges Globális felmelegedéstől; vízhiánytól; klíma változástól és csökkenő energiakészlet hiányától. Fontos mindenkiben elmélyíteni ezeket a szemléleteket, hiszen mindenki számára fontos a Földünk, és ha nem vigyázunk, rá hamar tönkre megy.</p>
                <p>Egy előadó idézete: „A Föld nem a miénk, hanem unokáinktól, kaptuk kölcsön.”</p>
                <p>A SZÁMALK - Szalézi Technikum és Szakgimnázium az idei Fenntarthatósági héten is részt vesz már 2. alkalommal. Az idei évben több osztály is részt vesz az előkészületekben: Divat-, jelmez- és díszlettervező; Szoftverfejlesztő és tesztelő; Pedagógiai munkatárs; Dekoratőr; Grafikus; Fotográfus és Közművelődési munkatárs diákjai.</p>
            </div>
        </div>
    </section>
    
    <div class="container">
        <seaction class="section cikkek">
            <h1 class="section-title">Cikkek</h1>
            <p class="section-titleDetails">Nézd meg a legújabb cikkjeinket</p>
            <div class="cikkek-osszes">
                <?php
                $query = $conn->query("SELECT * FROM blog ORDER BY date DESC LIMIT 3");
                if ($query->num_rows > 0) :
                    while ($row = $query->fetch_assoc()) :
                ?>
                    <div class="cikk">
                        <div class="cikk-img"><img src="assets/img/blog/bevezetés/kep3.jpg" alt="Cikk img"></div>
                        <div class="cikk-category"><?php echo $row['category']; ?></div>
                        <a href="cikkek/<?php echo createSlug($row['title']); ?>"><div class="cikk-title"><?php echo $row['title']; ?></div></a>
                        <div class="cikk-details">
                            <div class="cikk-author"><?php echo $row['author']; ?></div>
                            <div class="cikk-date"><?php echo strftime("%G. %B %d. - %H:%M", strtotime($row['date'])); ?></div>
                        </div>
                    </div>
                <?php endwhile;
                endif; ?>
            </div>
        </seaction>

        <section class="section ruhak">
            <h1 class="section-title">Ruhák</h1>
            <p class="section-titleDetails">Fedezd fel a Fenntarthatósági Témahétre készített ruháinkat</p>
            <div class="ruhak-kollekcio">
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
                    </div>
                </div>
            </div>
        </section>

        <section class="section galeria">
            <h1 class="section-title">Galéria</h1>
            <p class="section-titleDetails">Képek az eseményről illetve a ruhákról</p>
            <div class="galeria-kepek">
                <div class="kepek-sor">
                    <img src="assets/img/home/Divat-h1_6.jpg" alt="Kep">
                    <img src="assets/img/home/Divat-h1_8.jpg" alt="Kep">
                    <img src="assets/img/home/Divat-v1_4.jpg" alt="Kep">
                    <img src="assets/img/home/Divat-v1_7.jpg" alt="Kep">
                    
                </div>
                <div class="kepek-sor">
                    <img src="assets/img/home/Divat-h1_6.jpg" alt="Kep">
                    <img src="assets/img/home/Divat-h1_8.jpg" alt="Kep">
                    <img src="assets/img/home/Divat-v1_4.jpg" alt="Kep">
                    <img src="assets/img/home/Divat-v1_7.jpg" alt="Kep">
                    
                </div>
            </div>
        </section>
    </div>

    <script src="assets/js/jquery-3.1.0.min.js"></script>
    <script src="assets/ajax/functions.js"></script>
    <script src="assets/js/script.js"></script>
</body>
</html>