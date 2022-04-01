-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Ápr 01. 12:36
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

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `titleIMG` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `body` longtext NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `blog`
--

INSERT INTO `blog` (`id`, `title`, `titleIMG`, `author`, `date`, `body`, `category`) VALUES
(1, 'Az első bejegyzés', 'elso.jpg', 'Csiszér Dominik', '2022-04-01 09:48:52', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum debitis praesentium optio nisi voluptate repellat reiciendis quis eos ratione error! Beatae alias dolore eligendi nihil quidem inventore ducimus velit saepe magnam maiores, quae optio nulla cupiditate error exercitationem est quas soluta. Ratione, reprehenderit porro? Facere explicabo assumenda quo nisi omnis.<br>Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum debitis praesentium optio nisi voluptate repellat reiciendis quis eos ratione error! Beatae alias dolore eligendi nihil quidem inventore ducimus velit saepe magnam maiores, quae optio nulla cupiditate error exercitationem est quas soluta. Ratione, reprehenderit porro? Facere explicabo assumenda quo nisi omnis.Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum debitis praesentium optio nisi voluptate repellat reiciendis quis eos ratione error! Beatae alias dolore eligendi nihil quidem inventore ducimus velit saepe magnam maiores, quae optio nulla cupiditate error exercitationem est quas soluta. Ratione, reprehenderit porro? Facere explicabo assumenda quo nisi omnis.', 'Teszt'),
(2, 'Második bejegyzés', '', 'Csiszér Dominik', '2022-04-01 09:57:04', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum debitis praesentium optio nisi voluptate repellat reiciendis quis eos ratione error! Beatae alias dolore eligendi nihil quidem inventore ducimus velit saepe magnam maiores, quae optio nulla cupiditate error exercitationem est quas soluta. Ratione, reprehenderit porro? Facere explicabo assumenda quo nisi omnis.', 'Teszt');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
