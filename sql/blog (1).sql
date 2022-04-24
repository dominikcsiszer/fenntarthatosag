-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 24. 14:42
-- Kiszolgáló verziója: 10.4.14-MariaDB
-- PHP verzió: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `fenntarthatosag`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleIMG` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `body` longtext NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- TÁBLA KAPCSOLATAI `blog`:
--

--
-- A tábla adatainak kiíratása `blog`
--

INSERT INTO `blog` (`id`, `slug`, `title`, `titleIMG`, `author`, `date`, `body`, `category`) VALUES
(1, 'bevezetés', 'Bevezetés', '', 'Fenntarthatósági témahét', '2022-04-01 09:48:52', '<p>A Fenntarthatósági Témahét 2022. április 25. és 29. között kerül megrendezésre, amelyet Emberi Erőforrások Minisztériuma hirdet. Minden hazai és határon túli nevelési-oktatási intézmény  csatlakozhat idén a mi iskolánk is újra belevágott.</p>\r\n<h3>Mit tervezünk erre a hétre?</h3>\r\n<p>Könyvcsere; Ruhacsere; Használt póló megújító workshop; Ovisoknak kézműves foglalkozás és versenyek; Divatbemutató és Verseny az osztályok között, aminek a címe tedd zöldebbé a földet.</p>\r\n<p>Ha többet szeretnél megtudni <a href=\"https://www.fenntarthatosagi.temahet.hu\" target=\"_blank\">itt</a> a program hivatalos weboldala, de persze a mi weboldalunkon is nézz körbe.</p>\r\n<h3>Célja?</h3>\r\n<p>A fenntarthatósági témahét célja, hogy megvédjük Földünket az utókor számára az esetleges Globális felmelegedéstől; vízhiánytól; klíma változástól és csökkenő energiakészlet hiányától. Fontos mindenkiben elmélyíteni ezeket a szemléleteket, hiszen mindenki számára fontos a Földünk, és ha nem vigyázunk, rá hamar tönkre megy.</p>\r\n<p>Egy előadó idézete: „A Föld nem a miénk, hanem unokáinktól, kaptuk kölcsön.”</p>\r\n<p>A SZÁMALK - Szalézi Technikum és Szakgimnázium az idei Fenntarthatósági héten is részt vesz már 2. alkalommal. Az idei évben több osztály is részt vesz az előkészületekben: Divat-, jelmez- és díszlettervező; Szoftverfejlesztő és tesztelő; Pedagógiai munkatárs; Dekoratőr; Grafikus; Fotográfus és Közművelődési munkatárs diákjai.</p>\r\n', 'Bevezetés'),
(3, 'a-fenntarthatóság-problémái-és-céljai', 'A fenntarthatóság problémái és céljai', 'kép3.jpg', 'Betti', '2022-04-14 12:04:17', '<h3>A Fenntarthatóság fő céljai:</h3>\r\n<ul>\r\n<li>A SZEGÉNYSÉG FELSZÁMOLÁSA.</li>\r\n<li>AZ ÉHEZÉS MEGSZÜNTETÉSE.</li>\r\n<li>EGÉSZSÉG ÉS JÓLÉT.</li>\r\n<li>MINŐSÉGI OKTATÁS.</li>\r\n<li>NEMEK KÖZÖTTI EGYENLŐSÉG.</li>\r\n<li>TISZTA VÍZ ALAPVETŐ KÖZTISZTASÁG.</li>\r\n<li>MEGFIZETHETŐ ÉS TISZA ENERGIA.</li>\r\n<li>TISZTESSÉGES MUNKA ÉS GAZDASÁGI NÖVEKEDÉS.</li>\r\n<li>IPAR, INNOVÁCIÓ ÉS INFRASTRUKTÚRA.</li>\r\n<li>EGYENLŐTLENSÉGEK CSÖKKENTÉSE.</li>\r\n<li>FENNTARTHATÓ VÁROSOK ÉS KÖZÖSSÉGEK.</li>\r\n<li>FELELŐS FOGYASZTÁS ÉS TERMELÉS.</li>\r\n<li>FELLÉPÉS AZ ÉGHAJLATVÁLTOZÁS ELLEN.</li>\r\n<li>ÓCEÁNOK ÉS TENGEREK VÉDELME.</li>\r\n<li>SZÁRAZFÖLDI ÖKOSZISZTÉMÁK VÉDELME.</li>\r\n<li>BÉKE, IGAZSÁG ÉS ERŐS INTÉZMÉNYEK.</li>\r\n</ul>\r\n<h3>A fenntartható fejlődés fogalma</h3>\r\n<p>A fenntartható fejlődés (sustainable development) olyan fejlődési folyamat (földeké, városoké, termelési folyamatoké, társadalmaké stb.), amely kielégíti a jelen szükségleteit anélkül, hogy csökkentené a jövendő generációk képességét, hogy kielégítsék a saját szükségleteiket</p>\r\n<img src=\"../assets/img/blog/a-fenntarthatóság-problémái-és-céljai/kép2.png\" alt=\"A-fenntarthato-fejlodes-fogalma\">\r\n\r\n<h3>A fenntarthatóság alapelvei:</h3>\r\n<p>1. Amit a környezetbe bocsátunk, az nem haladhatja meg a környezet befogadó/feldolgozó képességét.</p>\r\n<p>2. Amit a környezetből kitermelünk, az nem haladhatja meg a környezet újratermelő képességét.</p>\r\n<p>3. A nem-megújuló erőforrások felhasználásának a mértéke nem haladhatja meg azt az ütemet, amilyen arányban helyettesíteni tudjuk őket megújuló erőforrásokkal.</p>\r\n\r\n<p>Az emberi népesség létszámának és fogyasztásának növekedése tekinthető a globális változás legfontosabb okának. A növekedéssel, illetve a gazdasági tevékenység fokozásával együtt jár a földfelszín globális léptékű megváltozása.A globális változásnak a természetes élőhelyek területének csökkenése mellett a legfeltűnőbb eleme a klímának, illetve a légkör összetételének változása. Annak ellenére, hogy a globális világproblémák összefüggéseinek feltárása már régen elkezdődött, a Föld ökológiai helyzete fokozatosan romlik.</p>\r\n<img src=\"../assets/img/blog/a-fenntarthatóság-problémái-és-céljai/kép3.jpg\" alt=\"A-fenntarthato-fejlodes-fogalma\">\r\n\r\n<p>„A jövő a mi kezünkben van. Együtt mindent meg kell tennünk annak érdekében, hogy az unokáinknak ne kelljen majd megkérdezniük tőlünk, miért nem sikerült helyesen cselekednünk, és nem szabad hagynunk, hogy a mi hibáink következményeit ők szenvedjék el.” Ban Ki-moon, az ENSZ főtitkára, 2007</p>\r\n\r\n<h3>A fenntartható fejlődés modellje szerint tehát a teljes rendszer hierarchiaviszonyai a következők:</h3>\r\n<p>A főrendszer a bioszféra, amely létfenntartó rendszerként a benne élő emberi alrendszerek létét és létezésének valamennyi feltételét biztosítja.</p>\r\n<p>A természetbe ágyazottan, alrendszerként él a társadalom, amely egészséges kontrollt, egyensúlyt tart fenn a bioszféra és a gazdaság között.</p>\r\n\r\n<h3>A fenntartható társadalom legfontosabb ismérvei, alapvető követelményei:</h3>\r\n<p>szociális igazságosság, amelynek az alapja a lehetőségekhez való hozzáférés esélyegyenlőségének biztosítása, valamint a társadalmi terhekből való közös részesedés;</p>\r\n<p>az életminőség folytonos javítására való törekvés;</p>\r\n<p>a természeti erőforrások fenntartó használata, amelynek megvalósításához a társadalom környezettudatos és környezetetikus magatartása szükséges;</p>\r\n<p>a környezetminőség megőrzése</p>\r\n\r\n<h3>Fenntarthatóság az iskolában</h3>\r\n<p>Az iskolákban lenne a legfontosabb, ha a fenntarthatóságról többet beszélnének, tanítanának róla, így már kiskoruktól kezdve figyelnének a környezetükre. Meg kell tanítani az iskolákban hogyqn gyűjtsék a hulladékot szelektíven, ne pazaroljanak, ne szemeteljenek, és hogyan védjék meg a Földünket. Ne használjanak műanyagot, helyette számos megoldás található ami környezettudatos. </p>\r\n<img src=\"../assets/img/blog/a-fenntarthatóság-problémái-és-céljai/kép1.jpg\" alt=\"A-fenntarthatosah-az-iskolaban\">\r\n', 'Problémák'),
(4, 'hulladék-mentes-vásárlás', 'Hulladék mentes vásárlás', '', 'Szandi', '2022-04-19 12:21:26', '<h3>Csomagolás nélküli vásárlás Magyarországon</h3>\r\n<p>Mára több mint 50 olyan bolt található Magyarországon, amelyben csomagolás nélkül tudunk vásárolni.  Ezekben a boltokba a vásárló saját üvegedényekkel, tárolóeszközökkel érkezik, és azokban tudja haza vinni a megvásárlandó termékeket. Ez nagyban elősegíti a hulladék termelés visszafogását.</p>\r\n<img src=\"../assets/img/blog/hulladék-mentes-vásárlás/adagoló.jpg\" alt=\"Adagoló\">\r\n<h3>Magyar példakép</h3>\r\n<p>A magyar hulladékmentes mozgalom egyik kiemelkedő alakja Tóth Andi, aki mások inspirálása érdekében létrehozta a Háztartásom hulladék nélkül nevű blogját. A környezetbarát üzletek a fővárosba koncentrálódtak, de emellett az ország számos nagyvárosában és szinte az összes régiójában találni néhány boltot. Nyílt csomagolásmentes bolt Orosházán, Hajdúnánáson és Berettyóújfaluban is.</p>\r\n<h3>Mit is találhatunk egy ilyen boltban?</h3>\r\n<p>Ezen üzletek általában bio, vegyszerektől mentes, kisüzemben gyártott hazai élelmiszereket árulnak, így számolni kell azzal, hogy a termékek valamivel drágábbak lesznek a megszokottnál. Az élelmiszer mellett számos boltban találkozhatunk kimérős tisztítószerekkel is, illetve általában a hulladékmentes életmód kellékeinek széles választékát is megtaláljuk, mint például vizes palack, textil szalvéta vagy fém szívószál.</p>\r\n<img src=\"../assets/img/blog/hulladék-mentes-vásárlás/fémszívószál.jpg\" alt=\"Fémszívószál\">\r\n', 'Környezetvédelem'),
(5, 'a-zöld-marketing', 'A zöld marketing', 'zm3.jpg', 'VZS', '2022-04-19 12:31:03', '<p>A marketing már a mindennapjaink része, mindenhol találkozhatunk vele és mindig a szemünk előtt van, még ha nem is látjuk, mint egy rejtett reklám. Mindennapunk része, tehát szinte természetessé vált, nem lenne izgalmas és hasznos ezt a természetes dolgot az életünkben zöldebbé tenni? </p>\r\n<p>Ez a fejlesztés Magyarországon nem elterjedt, viszont a nyugati országok már előszeretettel használják, hiszen a fenntartható út választásával sokat profitálnak és a vállalkozásuk megítélése is javul.  Nagyon fontos, hogy a zöld marketing mögött mindig konkrét, valós környezeti előny álljon. Ilyen lehet egy technológiaváltás, amely kevesebb mennyiségű, vagy könnyebben kezelhető melléktermékeket, hulladékot termel a végtermék mellett. Ilyen lehet egy hathatós kibocsátáscsökkentés, energiahatékonysági beruházások, vagy például megújuló energia felhasználásához napelemek, illetve szélturbinák telepítése. Ha elvégezzük a tanulmányainkat és indítanánk egy vállalkozást biztos van konkrét elképzelésünk, de legalább valami konkrét ötletünk, mai még kiegészítésre vár. Sok mindenre kell gondolnunk többek között a marketingünkre, de milyen is egy jó marketing? Hát nem egyértelmű? Az modern marketing, ami új és éppen az emberek érdeklődésének középpontjában áll. Gondoltad volna, hogy a vásárlók 49%-a hajlandó többet fizetni egy termékért, ha az környezetbarát? Pontosan ez derül ki a Nielsen globális kutatásából.   </p>\r\n<img src=\"../assets/img/blog/a-zöld-marketing/zm3.jpg\" alt\"Zöld marketing\">\r\n<p>Valóban sikerülhet ez? Igen! Hiszen például az egyik legismertebb kávézónak a Starbucks-nak is sikerült. Kávét ragadva sokan 5% poliuretán műanyagot tartalmazó eldobható kávéscsészéket választanak, ami megnehezíti az újrahasznosítást és a komposztálást. A Starbucks azonban környezetbarát konténert fejleszt ki, amely 2020-ig megduplázza a csészék újrahasznosított tartalmát és újrafelhasználhatóságát. A cég elkötelezett amellett, hogy 99% -ban etikusan beszerzett kávéval dolgozik, ezzel a kávé a világ első fenntartható mezőgazdasági terméke lesz, és 2025-ig 100 millió kávéfát biztosít a gazdálkodóknak. A Starbucks emellett 10 000 energiahatékony, zöld kiskereskedelmi üzletet is szeretne építeni és működtetni 2025-ig.</p>\r\n<img src=\"../assets/img/blog/a-zöld-marketing/zm2.jpg\" alt\"Zöld marketing\">\r\n', 'Környezetvédelem'),
(6, 'plusz-erdekessegek-alternativak-lepesek-a-hulladekmentesebb-jovonk-fele', 'PLUSZ érdekességek, alternatívák, lépések a hulladékmentes(ebb) jövőnk felé.', '', 'Dóri', '2022-04-19 12:43:40', '<h3>Neked is fontos a fenntarthatóság? Rengeteg lehetőséged van tenni a környezetedért.</h3>\r\n<p>Nagyon fontos ha már egy alternatívát kiváltasz, már azzal is nagyon sokat tehetsz környezeted egészségéért.\r\nHulladékmentes alternatíva az egyszer használatos, eldobható tárgyak helyett:</p>\r\n<ul>\r\n<li>Műanyag zacskó helyett vászontáskát használj!</li>\r\n<li>Elviteles, automatás kávéhoz saját termosz vagy műanyag poharat használni</li>\r\n<li>PET-palackos italok helyett használj saját kulacsot!</li>\r\n<li>A zöldségesnél, pékségben használatos leheletvékony kisméretű műanyag zacskók helyett használj zsinóros vászonzsákokat! </li>\r\n<li>Műanyag fogkefék helyett használj, fanyelű természetes sörtéjűt</li>\r\n<li>Eldobható műanyag borotvák helyett használj hagyományos fém biztonsági borotvát cserélhető borotvapengékkel. </li>\r\n<li>Sminklemosó és vattakorongok helyett, használj mosható arctisztító párnákat!</li>\r\n<li>Műanyag szívószál helyett papír szívószálat használj!</li>\r\n<li>Műanyag evőeszközök helyett használj fa vagy fém evőeszközöket!</li>\r\n<li>Mesterséges illatok helyett frissítsd otthonod levegőjét inkább természetes illóolajokkal. </li>\r\n</ul>', 'Környezetvédelem'),
(7, 'fenntarthato-divat-hol-vasaroljak', 'Fenntartható Divat-Hol vásároljak?', '', 'Mesi', '2022-04-19 12:50:27', '<h3>Vásárlási Tippek</h3>\r\n<p>Amikor valaki azt kérdezi tőlem, hol vásároljon fenntartható és etikus divattermékeket Magyarországon, akkor csak azt tudom először mondani: a saját szekrényében. A tudatos vásárlás valahol ott kezdődik, hogy kiderítjük, mi az, amink már van. Elkezdjük megismerni a saját ruhatárunkat, mellette pedig önmagunkat is. Ez nem kétperces folyamat, és nem is biztos, hogy megy egyedül.</p>\r\n\r\n<h3>Workshopok</h3>\r\n<p>A lelőhelyek listája nagyon kezdetleges, de ahogy időm engedi, folyamatosan bővítem. A legtöbb tervezővel, alkotóval kapcsolatban is állok, a nagyobb márkák esetén pedig arra biztatlak, ha kérdésed van, írj nekik. Ezek nem fizetett megjelenések, hanem tényleg úgy gondolom, hogy náluk érdemes szétnézni.</p>\r\n<p>Másodkézből Budapesten és környékén</p>\r\n<p>Másodkézből Magyarországon – a fővároson kívül</p>\r\n<p>Magyar tervezők, alkotók</p>\r\n<h3>Külföldi márkák, tervezők, alkotók</h3>\r\n<p>Magyar webshopok külföldi etikus termékekkel</p>\r\n<h3>4 magyar márka, aki hisz a fenntartható divatban</h3>\r\n<h6>Magyar divat márkák</h6>\r\n<p>Egyre több magyar márka helyez hangsúlyt a divatipar fenntarthatóságára, a környezetbarát munkafolyamatokra, a gyártás átláthatóságára és a méltányos munkakörülmények megteremtésének fontosságára. Lelkiismeretes munkájuknak és a közösségi oldalak hatékony kommunikációnak köszönhetően mára a fogyasztói szokások is változó tendenciát mutatnak. Egyre többen keresik az etikus eljárással, újragondolt szabási technikával, kézzel és helyben készült darabokat az üzletekben. </p>\r\n<h6>Budapest-Select Concept Store</h6>\r\n<p>A Budapest Select Concept Store kínálatában is egyre több olyan márka található, akik a kreatív munkafolyamatok során előtérbe helyezik a fenntarthatóságot, olyan darabokat hozva létre, amelyek egyszerre stílusosak, funkcionálisak, klasszikusak és modernek. A magyar márkák számára a fenntarthatóság nemcsak egy jól csengő zöld marketingfogás, hanem életstílus. Eheti válogatásunkban olyan friss magyar márkák kerülnek bemutatásra, akik szem előtt tartják a környezetvédelmet és hisznek a helyben készült termékek vonzerejében.</p>\r\n<h6>ALMA</h6>\r\n<p>ALMA-A művészcsaládból származó ALMA saját magát festi meg anyagmintáit is. Kollekcióit hulladékmentes gyártástechnológiával valósítja meg. A számos szakmai díjat elnyert ALMA nemrég a milánói divathéten és a BCEFW-n is bemutatta 2021-22-es őszi-téli kollekcióját, amelyben számos egymással jól kombinálható, időtlen darab található. Ilyen például a Kayla felső is, ami 142,000 forintért kapható a Budapest Select Concept Store kínálatában.</p>\r\n<h6>Zsigmond Dora Menswear</h6>\r\n<p>ZSIGMOND DORA menswear-A 2014-ben alapított márka kollekciói a tradíciókból építkeznek, de a 21. század elvárásaihoz igazodva funkcionálisak is egyben. Az újrahasznosításra és környezetvédelemre nagy hangsúlyt fektető tervező kiválóan egyesíti archaikus paraszti kultúra és a magyar folklór elemeit a városi életérzéssel, megalkotva ezzel a modern városi férfi ruhatárát. A márka egyes darabjai a női gardróbba is könnyen beépíthetőek, ilyen például ez a kézzel szőtt, természetes növényi festéssel színezett, egyedi mintázatú ing is, amiért 85,000 forintot kérnek a webshopban.</p>\r\n<h6>DAIGE</h6>\r\n<p>DAIGE-A Tóth Melinda által 2013-ban alapított márka célja, hogy darabjaik több évre szóljanak, minőség és formavilág tekintetében időtállóak és elérhetőek is maradjanak. Irányelvük az autentikusság, a fenntarthatóság, a megfizethetőség és a praktikum. A DAIGE gerle madárral díszített pólója egyszerre lezser és nőies, 11,990 forintért rendelhető meg a Budapest Select Concept Store-ból.</p>\r\n<h6>Maison Marquise</h6>\r\n<p>Maison Marquise-A klasszikus nőies eleganciát képviselő márka a funkcionális alapdarabok híve, olyan, egymással jól variálható kollekciókban gondolkodik, amelyek könnyen alakíthatóak át a hétköznapi üzleti viseletből elegáns esti megjelenéssé. A hazai gyártásban, helyi varrodában minőségi anyagok felhasználásával készült kollekció egyik alapdarabja az arany betéttel feldobott, oldalt felsliccelt sötétkék maxiruha, amiért 84,000 forintot kérnek a webshopban.</p>\r\n', 'Divat'),
(8, 'mi-az-a-teszedd', 'Mi az a TeSzedd!?', 'kep1.jpg', 'Gréti', '2022-04-19 13:00:30', '<p>A TeSzedd! – Önkéntesen a tiszta Magyarországért akció. Hazánk legnagyobb önkéntes mozgalma. Idén immár kilencedik alkalommal valósul meg. A szemétgyűjtési akció keretében szerte az országban „nagytakarítanak” a TeSzedd! önkéntesei. Azért szervezzük meg ezt a mozgalmat minden évben, hogy közösen megtisztítsuk szűkebb-tágabb környezetünket.</p>\r\n\r\n<h3>VÍZCSEPP ÖSSZMŰVÉSZETI PÁLYÁZAT 2022.</h3>\r\n<p>A pályázat a 2022. évi Fenntarthatósági Témahét keretében kerül meghirdetésre. A pályázat célja a diákok szemléletformálása vízhez kapcsolódó művészeti alkotások készítésével. Benyújtható pályázatok: rajz, fotó, szépirodalmi mű, zenemű, képregény, infografika, kisfilm.</p>\r\n<p>A pályázat célja, hogy tudatosítsa a diákok körében a víz mindennapokban betöltött fontos szerepét. A pályázat a diákok vízhez kötődő viszonyát, művészti alkotásokon keresztül kívánja felmérni. A diákoknak egy vízcsepp helyébe kell beleképzelni magukat és arról szabadon választott művészeti alkotást kell készíteni.</p>\r\n<img src=\"../assets/img/blog/mi-az-a-teszedd/kep2.jpg\" alt=\"vicsepp\">\r\n\r\n<h3>KERT-KÓSTOLGATÓ PÁLYÁZAT</h3>\r\n<p>A pályázat célja, hogy az iskolás csoportok egy saját tervezésű legalább 1 m2 iskolakertet hozzanak létre. Az iskolakertbe olyan növények ültetését várjuk, amelyek az a fenntarthatóságot szolgálják. Az iskolakert létrehozását dokumentálni kell a tervezéstől a kivitelezésig</p>\r\n<img src=\"../assets/img/blog/mi-az-a-teszedd/kep3.jpg\" alt=\"kert\">\r\n', 'Környezetvédelem'),
(9, 'fenntarthatosag-a-szinhazban', 'Fenntarthatóság a színházban', '', 'Tori', '2022-04-19 13:04:56', '<h3>Kovács Bea: Zöld út – Bizonyítékok a fenntartható színház létezésére </h3>\r\n<img src=\"../assets/img/blog/fenntarthatosag-a-szinhazban/1.png\" alt=\"Zöld út\">\r\n\"<p>Az Éghajlatpolitika és előadóművészetek elnevezésű digitális találkozón elhangzott, hogyan segíthet a történetmesélés a példamutatásban: „Az előadások meg tudják mutatni a nézőnek azt, hogy a változás (a környezet védelméért) már elkezdődött, mert léteznek olyan emberek, akik képesek voltak változtatni saját életükön. Az erős, jól felépített, a közösségi szellemre ható történetek a tudományos álláspontot is képesek közelebb vinni a nézőhöz, és érthetővé, átláthatóbbá fordítják az (öko)szisztémák kusza, komplex viszonyrendszerét.</p>\r\n<p>A Csíki Játékszínben Sándor Anna 2019-es kezdeményezése óta már többen is leszoktak az egyszer használatos sminklemosó használatáról, helyettük mosható textilkorongokat alkalmaznak. A népszerű nagy színészek nyílt felelősségvállalásáról és a színházak által kezdeményezett párbeszédeket is folytatnak a témával kapcsolatban. Illetve a városi színházak olykor segítséget kérnek a kellékgyűjtéshez, megspórolva ezzel a gyártást és az azzal járó költségeket és hulladékot. </p>\r\n<img src=\"../assets/img/blog/fenntarthatosag-a-szinhazban/4.png\" alt=\"Zöld út\">\r\n<p>A Marosvásárhelyi Nemzeti Színház Tompa Miklós Társulatának munkatársai nyilvános folyótisztítási akcióban vettek részt, a Radnóti Színház legújabb kiadványa pedig környezetvédelmi okokból csak digitális formátumban jelent meg.</p>\r\n\r\n<h3>Mára huszonegy tagja van a Zöld Színház Projekt kezdeményezésnek az ország legkülönbözőbb részeiről.</h3>\r\n<img src=\"../assets/img/blog/fenntarthatosag-a-szinhazban/2.png\" alt=\"Zöld út\">\r\n<p>Papp Endre (a Zöld Színház Projekt vezetője) világossá teszi, hogy a Zöld Színház Projekt nem hivatott szembemenni a művészeti víziókkal, csupán arra tesz javaslatot, hogy az adott díszletelemet és kelléket honnan szerezzék be.</p>\r\n<h3>Színház újrahasznosított papírból</h3>\r\n<img src=\"../assets/img/blog/fenntarthatosag-a-szinhazban/3.png\" alt=\"Zöld út\">\r\n<p>A színházat alkotó, újrahasznosított papírból álló bálák elsősorban régi magazinokból, újságokból és irodai hulladékokból készülnek. A színház teteje egy használt cirkuszi sátor újrahasznosításával alakítanak ki, melyet bambusszal feszítenek ki. A sátor tetején elhelyezett nyílásnak köszönhetően pedig mesterséges színpadi világításra sincs szükség, a természetes fény elég a nappali előadásokhoz.</p>\r\n', 'Nemtom'),
(10, 'a-fenntarthatosag-fogalmai', 'A fenntarthatóság fogalmai', '', 'Baresz', '2022-04-19 13:10:00', '<h3>De mit is jelent valójában a kifejezés és miért fontos, hogy foglalkozzunk vele?</h3>\r\n<p>A fenntarthatóság fogalma 1987-ben indult útjára, amikor az ENSZ a fenntartható fejlődést – melyet azóta leegyszerűsítve fenntarthatóságnak is nevezünk – a következőképpen definiálta: fejlődés, amely „anélkül elégíti ki a jelen szükségleteit, hogy veszélyeztetné a jövő generációk lehetőségét saját igényeik kielégítésére”. Azaz fenntartható például az a fejlődés, melynek során nem használunk fel minden, korlátosan hozzáférhető nyersanyagot vagy nem szennyezzük be visszafordíthatatlanul vizeinket.</p>\r\n<p>Mint a fenntarthatóság egészével, úgy magával a definíció értelmezésével, gyakorlatba ültetésével kapcsolatban sem teljes az összhang a témával foglalkozók között.</p>\r\nEnnek fő oka, hogy az ENSZ által meghatározott definíció kellően általános ahhoz, hogy szabad teret engedjen a konkrét célok, valamint a célok elérését biztosító eszközök meghatározásának.\r\n<h3>A zéro összegű játék hívők</h3>\r\n<p>Sok környezeti szakértő számára például a fenntartható fejlődés alapvetően egyfajta oximoronnak (önmagában való ellentmondásnak) tekinthető, hiszen a környezet befolyásolása nélkül nem képzelhető el fejlődés.</p>\r\n<p>Ők úgy gondolják, hogy a gazdaság az emberi társadalom, a társadalom pedig a bioszféra (azaz a földi élet tere) egyik alrendszerének tekinthető, és ezek együttműködése zéróösszegű játék: amit az egyik nyer, az szükségszerűen veszteséget jelent a másik számára, miközben az ökoszisztéma (az élőlény-közösségek és élőhelyeik összessége) valamely összetevőjének túlzott használata drasztikus hatással van az ökoszisztéma egészére.</p>\r\n<h3>A win-win hívők</h3>\r\n<p>A fenntarthatóság lényege azonban sokak szerint  – éppen a nyertes-nyertes (win-win) lehetőségek kiaknázása, az olyan eszközök és megoldások megtalálása és alkalmazása, amelyekkel a társadalom és a környezet egyaránt jól jár, és amelyek révén akár évtizedek múlva is összhangban élhetünk a környezetünkkel.</p>\r\n<p>Ebben a megközelítésben a fenntarthatóság összetett jelenség. Egyrészt tényszerűséget és tudományosságot várunk el tőle. Másrészt a fenntarthatóság maga cselekvésre – leginkább szokásaink megváltoztatására – szólít fel, és így gyakorlati szerepe is meghatározó.</p>\r\n<p>A célok és feladatok értelmezésétől függetlenül és nagyon leegyszerűsítve tehát a fenntarthatóság mindazon fogalmakat és tevékenységeket magában foglalja, amelyek lehetővé teszik, hogy a Földön az élet évtizedek múlva is a maihoz hasonló lehessen.</p>\r\n<p>Bár véleményem szerint ezt egy fajta minimalista megközelítésnek kellene tekinteni – hiszen globálisan nézve (bizonyos területeket vagy embercsoportokat tekintve) a mai helyzeten is lehet még javítani –, az aktuális gazdasági-társadalmi folyamatokat figyelembe véve azonban már a jelenlegi szint fenntartása is komoly célkitűzésnek számít.</p>\r\n<h3>Környezet, azaz ’odafigyelés’ (környezeti felelősség):</h3>\r\n<p>Környezettudatosság, környezet-etikus magatartás, környezetünk védelme, beleértve a klímaváltozással és a tudatos fogyasztással kapcsolatos szempontokat.</p>\r\n<p>Biológiai sokszínűség fenntartása, azaz az állat- és növényvilág védelme.</p>\r\n<p>Természeti erőforrásokkal való fenntartható gazdálkodás, takarékos használat, megújuló energiaforrások használata.</p>\r\n<h3>Társadalmi dimenzió, azaz ’elfogadás’ (társadalmi felelősség):</h3>\r\n<p>Fenntartható társadalom: egészségügyi és élelmezési, valamint a túlnépesedésből és az öregedő társadalmakból fakadó társadalmi problémák kezelése.</p>\r\n<p>Szociális igazságosság, esélyegyenlőség, társadalmi különbségek.</p>\r\n<p>Társadalmi sokszínűség, szolidaritás, békés egymás mellett élés.</p>\r\n<h3>Gazdasági dimenzió, azaz a ’felelős vállalat’ megközelítés:</h3>\r\n<p>Tisztességes, átlátható vállalati működés, „fair trade”.</p>\r\n<p>Környezeti terhelés csökkentése pl. CO2 kibocsátás minimalizálása és papírmentes iroda révén.</p>\r\n<p>Emberközpontúság mind a kollégák, mind az ügyfelek tekintetében.</p>\r\n<p>Társadalmi szerepvállalás fontossága.</p>\r\nLINK:https://vitafutura.hu/mit-jelent-a-fenntarthatosag/\r\n', 'Nemtom'),
(11, 'az-energiank-20-a-szeleroművekbol-fog-erkezni', 'Az energiánk 20%-a szélerőművekből fog érkezni', '', 'Vera', '2022-04-19 13:12:55', '<p>A szélenergia ipar legalább olyan gyorsan növekszik, mint a napelem ipar, ha nem gyorsabban.  Becslések szerint2030-ra globális szinten az energia 20%-a szélerőművekből fog származni.</p>\r\n<p>A technológia ugyan drága, és sokkal nagyobb mértékű beruházásokra van szükség, mint a napelemes befektetéseknél, de a szélenergia hosszútávú előnyei sokkal kecsegtetőbbek. Ha az átállás sikeres lenne  az azt jelentené, hogy évente 3,6 milliárd tonnával kevesebb széndioxidot engednénk a levegőbe.</p>\r\n<p>Kína az egyik legkiemelkedőbb vezető ország, ha szélenergiáról van szó. Tavaly 17%-ra növelték a szélenergiából befolyó energia mennyiségét az országban, és jelenleg is további bővítéseket terveznek, még idén. Ezen kívül már született megegyezés abban, hogy 1.000 szénbányát fognak bezárni országszerte, ezzel is elősegítve a megújuló energiaforrásokba történő befektetéseket.</p>\r\n<p>Az jó ügy édekében Kínának és még sok más országnak teljesen át kell alakítania a hálózat infrastruktúráját, hogy teljesen ki tudják használni a megújuló energiaforrásokat. </p>\r\nhttps://www.tisztajovo.hu/megujulo-energiaforrasok/2016/10/19/az-energiank-20-a-szeleromuvekbol-fog-erkezni\r\n', 'Nemtom'),
(12, 'oceanok-mi-a-szerepUk-az-eletben-hogyan-ovjuk-oket', 'Óceánok: mi a szerepük az életben, hogyan óvjuk őket?', '', 'Vera', '2022-04-19 13:12:55', '<p>Földünk hidroszférájának közel 71 százalékát óceánok borítják. Hatalmas területet fednek le, mégsem kapnak elég figyelmet. Célunk ezen változtatni! Cikkünk szélesíteni kívánja ismereteidet velük kapcsolatban, beutatja, hogy te mit tehetsz védelmük érdekében.</p>\r\n<h3>Milyen szerepet töltenek be az óceánok a Föld életében?</h3>\r\n<p>Az óceánok nélkül a bolygó élhetetlen lenne, rengeteg lehetőséget kínálnak a növekedés, a foglalkoztatás és az innováció előmozdítására. </p>\r\n<h3>Milyen globális kihívások jelentek fenyegétést az óceánokra jelenünkben?</h3>\r\n<p>Sürgős megoldásokat kell találnunk példul a klímaváltozás területén, a rohamos hulladék felhalmozódás ellen, de a sort még folytathatnánk…</p>\r\n<h3>Említsünk meg néhány konkrét dolgot: </h3>\r\n<p>A klímaváltozásnak számos káros hatása van az óceánokra.Ilyen példul a hőmérséklet növekedés. </p>\r\n<p>A bolygónk felmelegedése mögött közvetlenül 93%-ban az óceánok melegedése áll. Mitől is melegszik az óceán? Ezt a jelenséget az üvegházhatású gázok, ezen belül főként a szén-dioxid fokozódó kibocsátása generálja. Ennek következtében egyre több napenergia esik csapdába a légkörben, mely az óceánokba kerülve növeli a víz hőmérsékletét és megváltoztatja körforgását, valamint a sarki jég olvadását eredményezi.</p>\r\n<p>Az óceánokba futó folyók mellett a parton fekvő települések ipari, mezőgazdasági és kommunális eredetű szennyeződéseivel is számolni kell. A hajók motorjai, szennyvize és a szállított áruk mind tovább fokozzák a szennyezettség mértékét. A vízi közlekedés és szállítás, és az ehhez kapcsolódó balesetek miatt sok olaj kerül a vízbe, ami számos élőlény pusztulását okozza. A légköri ülepedés is szennyezi az óceánok vizét. A szilárd szennyezőkről is szót kell ejteni:  az óceánokon hatalmas szemétszigetek alakultak ki, amelyek javarészt a tengerjáró hajók hulladékából, műanyagból tevődnek össze. A Csendes-óceán északi medencéjében található szemétsziget méretét 700 ezer-15 millió négyzetkilométer közöttire becsülik.</p>\r\n<p>A vízhőmérséklet a tengeri élővilágra drasztikus hatással lehet, a hőmérséklet emelkedése máris nagy változásokat idézett elő a víz alatt, beleértve a tengeri fajok eloszlásának jelentős átrendeződését. Egyes területeken a sótartalom drasztikus növekedése, más közegekben annak csökkenése vezet a fajok kipusztulásához.</p>\r\n<p>Az imént felsorolt változások, illetve problémák az emberek egészségére is hatással vannak: az emelkedő vízhőmérséklet miatt növekedhet a vízzel terjedő betegségek, például a Balti-tengerben fellépő vibriózis fertőzések kockázata is.</p>\r\n<p></p>\r\n<h3>Miért jelentenek óriási problémát az óceánokban végbemenő változások?</h3>\r\n<p>Az óceánokban végbemenő változások több komponensből összeálló problémát jelentenek. A víz körforgására gyakorolt hatás szélsőséges időjárási körülményeket idézhet elő. Normál esetben ez a körforgás eredményezi a víz folyamatos elosztását az óceánokból a légkörbe, szárazföldre, folyókba és tavakba, majd vissza a tengerekbe és az óceánokba. Az éghajlatváltozás nyomán fokozódik a légkörben található vízgőz szintje, emiatt teljes mértékben kiszámíthatatlanná válik az, hogy milyen mértékű lesz a rendelkezésre álló víz mennyisége. Mindezek a körülmények egyes helyeken heves zivatarokat okozhatnak, más térségekben viszont épp az ellenkező hatást érik el: súlyosbodhat az aszályhelyzet, különösen a nyári hónapok alatt, és ez egyes területeken elsivatagosodáshoz vezethet.</p>\r\n<p></p>\r\n<h3>Mi várható, ha minden így megy tovább az óceánokban?</h3>\r\n<p>Ha nem teszünk lépéseket az óceánok felmelegedésének és savasodásának megfékezése érdekében, azt kockáztatjuk, hogy az éghajlatszabályozásban betöltött szerepüket fokozatosan elvesztik, a klíma pedig olyan átalakuláson megy át, hogy az az életkörülmények drasztikus leromlásához vezet.</p>\r\n<p>Az óceánokban végbemenő változások hatására olvadnak a gleccserek, zsugorodnak a hóval és jéggel borított területek. Felborul a sarkvidéki ökoszisztéma, egyre kisebb térre szorulnak vissza a sarkvidéki állatok és az őslakos emberek. Az olvadás következtében emelkedik a tengerszint, egyre nagyobb területek kerülnek víz alá, mindezek az egymást generáló események pedig az emberi életkörülményeket is ellehetetlenítik: a gazdasági problémák mellett évtizedeken belül a tömeges migrációval is számolni kell.</p>\r\n<p>A csapadékviszonyok is változnak. Európában a csapadékos térségek még csapadékosabbá, a szárazak pedig még szárazabbá válnak, ugyanakkor egyre gyakoribbak és intenzívebbek az éghajlatváltozással összefüggő szélsőségek, köztük a hőhullámok, az erős esőzések és aszályok. A meleg több halálos áldozattal, valamint növénykultúrákat károsító, és erdőtüzeket okozó szárazsággal jár.</p>\r\n<p>Az éghajlatváltozás a folyók és tavak átlagos vízhőmérsékletét is fokozatosan növeli, a jégborításos évszakok időtartamát pedig lerövidíti, amely a talajra is káros hatással van: a földben lakozó baktériumok elszaporodnak, a kártevők is szabadabb teret kapnak. E változások jelentősen befolyással lesznek a földművelésre, mezőgazdaságra, és az emberi életminőségre is.</p>\r\n<p></p>\r\n<h3>Mi a nemzetközi óceánpolitika álláspontja?</h3>\r\n<p>Alapvető változtatásokat kell kieszközölni rövid időn belül az óceánpolitika tekintetében, ha biztosítani kívánják az emberiség jövőjét – ezért a nemzetközi szervezetek is felkarolták az óceánok ügyét. </p>\r\n<p></p>\r\n<h3>Mit tehetünk az óceánok védelméért?</h3>\r\n<p>Fontos, hogy felismerjük: nem csupán az európai, vagy a nemzetközi szervezetek, politikai nagyhatalmak tehetnek az óceánok ügyéért, hanem mi magunk, személyesen is felelősek vagyunk érte, és egyenként is hozzájárulhatunk a megóvásukhoz, mellyel saját jövőnket is biztosítjuk.</p>\r\n<p>Mind egyéni, mind közösségi szinten fontos, hogy csökkentsünk a tengereket érő szennyezést, különösen a szárazföldi tevékenységből eredőket, például a tengeri uszadékot, és a tápanyagterhelést. </p>\r\n<p>A jelentős károsító hatások elkerülése érdekében fenntartható módon kezeljük, és védjük a tengeri és tengerparti ökoszisztémákat, ideértve az ellenállásra és alkalmazkodásra való képességük megerősítését, illetve intézkedjünk helyreállításuk érdekében, hogy az óceánok egészségesek és termékenyek legyenek.</p>\r\n<p>Elengedhetetlen, hogy a lehető legjobban visszafogjuk az óceán savasodását, és kezeljük annak következményeit, többek között fokozott tudományos együttműködéssel. Ebben az együttműködésben kiemelt szerepet kell biztosítani a sajtóban való megjelenésnek, az ismeretterjesztő programoknak, rendezvényeknek.</p>\r\n<p>Fontos, hogy a halászat terén is eredményeket érjünk el. A tengeri halászat szabályozása mellett a halállományok helyreállítása is célként kell lebegjen az emberiség szeme előtt, legalább olyan szinten, amely a biológiai tulajdonságaiknak megfelelően a legnagyobb fenntartható szaporulatot hozza. Ennek fényében globálisan be kell tiltani a halászati támogatások bizonyos formáit, amelyek hozzájárulnak a túlzott kapacitások fenntartásához és a túlhalászathoz, felszámolni azon támogatásokat, amelyek hozzájárulnak a jogellenes, szabályozatlan vagy nem bejelentett halászati tevékenységekhez, és tartózkodjunk egyéni szinten, turistaként olyan termékek megvásárlásától, melyek ilyen körülmények között kerülnek ki a vizekből.</p>\r\n<p></p>\r\n<p>Mindeközben pedig globális és egyéni szinten is támogatni kell a legkevésbé fejlett országok és a fejlődő kis szigetállamok fenntartható halászatra tett törekvéseit, programjait.  Ehhez elsősorban a tengeri források fenntartható használatából – ideértve a fenntartható halászatból, haltenyésztésből és turizmusból – fakadó gazdasági előnyöket kell biztosítani nekik.</p>\r\n<p>Globálisan, nemzetközi szinten növelni kell a tudományos tudásbázist, fejleszteni a kutatási kapacitásokat, és átadni egymásnak a tengeri technológiákat, figyelembe véve a Kormányközi Oceanográfiai Bizottság „A tengeri technológiák átadásának feltételei és irányelvei” című dokumentumában foglalt előírásait. Ezzel javíthatjuk az óceán egészségét, és növelhetjük azt a hozzájárulást, amit a tengerek fajgazdagsága ad a fejlődő országok, különösen a legkevésbé fejlett országok és a fejlődő kis szigetországok fejlesztéséhez.</p>\r\n<p></p>\r\n<h3>Mit tehetsz te személy szerint az óceánok védelme érdekében?</h3>\r\n<p>Tájékozódj, legyél nyitott a nemzetközi, hazai környezetvédelmi szervezetek kommunikációjára, olvass minél több cikket, fórumot a témában, és figyeld folyamatosan a sajtóban az ezzel kapcsolatos híreket, intézkedéseket, szabályokat. Ezen információk segítségével kerüld el azon cégek termékeit, amelyek környezetpusztító módon állítják elő termékeiket, vagy túlhalászattal biztosítják a hal beszerzését.</p>\r\n<p>Nyaraláskor olyan ajándéktárgyat vásárolj, amiről biztosan tudod, hogy nem úgy állították elő, hogy tengeri állatot gyilkoltak érte. Olyan éttermeket látogass a nyaralás során, ahol fenntartható halászatból készítik az ételeket.</p>\r\n<p>Olyan halat vásárolj, amiről tudod, hogy fenntartható módon halászták. Itthon, a boltban kapható tengeri halakra ez általában nem érvényes, ezért érdemes hazait fogyasztani, és csak akkor hódolni a tengeri herkentyűk iránti élvezetnek, amikor a tengerparton, óceán mellett vagy. Fontos, hogy folyamatosan tájékozódj arról, hogy a mindennapokban mit tehetünk az óceánokért és mit kerüljünk el.</p>\r\n<p>Annak, akinek a környezettudatosság fontos szerepet játszik az életében, a kozmetikumok vásárlásánál nagyon körültekintőnek kell lennie: sok szempontból fontos, hogy az adott termék mit tartalmaz. Egyes szépítkezőszerekhez például olyan, veszélyeztetett fajokat használnak fel, mint a csikóhal.</p>\r\n<p>Ha tengerhez, vagy óceánhoz valamilyen formában kapcsolódó cég vezetője vagy</p>\r\n<p>Fordíts a nemzetközi jog érvényesítése és végrehajtása által fokozott figyelmet az óceánok és erőforrásaik megőrzésére, és fenntartható használatára az ENSZ Tengerjogi Egyezménye előírásainak megfelelően – ahogy arra „Az áhított jövő” című ENSZ-nyilatkozat 158. bekezdése emlékeztet.</p>\r\n<p></p>\r\n<p>Óceánok: mi a szerepük az életben, hogyan óvjuk őket? | xForest</p>\r\n', 'Nemtom');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
