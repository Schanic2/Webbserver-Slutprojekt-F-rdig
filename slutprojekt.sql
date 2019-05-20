-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 20 maj 2019 kl 23:29
-- Serverversion: 10.1.38-MariaDB
-- PHP-version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `slutprojekt`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `idUsers` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `content` varchar(3000) COLLATE utf8_swedish_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `posts`
--

INSERT INTO `posts` (`id`, `idUsers`, `title`, `subtitle`, `content`, `date`) VALUES
(19, 0, 'Ã¥Ã¤Ã¶', 'Ã¥Ã¥Ã¤Ã¶Ã¶', 'Ã¥Ã¥Ã¤Ã¤Ã¤Ã¶Ã¶', 'Monday 20th of May 2019 10:53:04 PM'),
(20, 0, 'Ã¥Ã¥Ã¤Ã¤Ã¶Ã¶', 'Ã¥Ã¥Ã¤Ã¤Ã¤Ã¶Ã¶Ã¶', 'Ã¥Ã¥Ã¥Ã¤Ã¤Ã¤Ã¶Ã¶Ã¶', 'Monday 20th of May 2019 10:53:27 PM');

-- --------------------------------------------------------

--
-- Tabellstruktur `users`
--

CREATE TABLE `users` (
  `idUsers` int(11) NOT NULL,
  `uidUsers` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `emailUsers` tinytext COLLATE utf8_swedish_ci NOT NULL,
  `pwdUsers` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `admin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `users`
--

INSERT INTO `users` (`idUsers`, `uidUsers`, `emailUsers`, `pwdUsers`, `admin`) VALUES
(5, 'dwad', 'johan@gamle.net', '$2y$10$QvLTDyQVV/fWAwi1f9Gg8ufIcMBVhKhVSamIxceEmHGSOhhokBCeW', 0);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uidUsers` (`idUsers`),
  ADD KEY `idUsers` (`idUsers`);

--
-- Index för tabell `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUsers`),
  ADD KEY `idUsers` (`idUsers`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT för tabell `users`
--
ALTER TABLE `users`
  MODIFY `idUsers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
