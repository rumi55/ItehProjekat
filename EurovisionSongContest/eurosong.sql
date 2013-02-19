-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2013 at 03:12 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eurosong`
--

-- --------------------------------------------------------

--
-- Table structure for table `drzave`
--

CREATE TABLE IF NOT EXISTS `drzave` (
  `id_drz` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_faza` int(11) NOT NULL,
  PRIMARY KEY (`id_drz`),
  KEY `id_faza` (`id_faza`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `drzave`
--

INSERT INTO `drzave` (`id_drz`, `naziv`, `id_faza`) VALUES
(1, 'Austria', 1),
(2, 'Belarus', 1),
(3, 'Belgium', 1),
(4, 'Croatia', 1),
(5, 'Cyprus', 1),
(6, 'Denmark', 1),
(7, 'Estonia', 1),
(8, 'Ireland', 1),
(9, 'Lithuania', 1),
(10, 'Moldova', 1),
(11, 'Montenegro', 1),
(12, 'Russia', 1),
(13, 'Serbia', 1),
(14, 'Slovenia', 1),
(15, 'Ukraine', 1),
(16, 'The Netherlands', 1),
(17, 'Albania', 2),
(18, 'Armenia', 2),
(19, 'Azerbaijan', 2),
(20, 'Bulgaria', 2),
(21, 'F.Y.R. Macedonia', 2),
(22, 'Finland', 2),
(23, 'Georgia', 2),
(24, 'Greece', 2),
(25, 'Hungary', 2),
(26, 'Iceland', 2),
(27, 'Israel', 2),
(28, 'Latvia', 2),
(29, 'Norway', 2),
(30, 'Malta', 2),
(31, 'Romania', 2),
(32, 'San Marino', 2),
(33, 'Switzerland', 2),
(34, 'France', 3),
(35, 'Germany', 3),
(36, 'Italy', 3),
(37, 'Sweden', 3),
(38, 'United Kingdom', 3),
(39, 'Spain', 3);

-- --------------------------------------------------------

--
-- Table structure for table `faze_takmicenja`
--

CREATE TABLE IF NOT EXISTS `faze_takmicenja` (
  `id_faza` int(11) NOT NULL AUTO_INCREMENT,
  `naziv_faze` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_faza`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `faze_takmicenja`
--

INSERT INTO `faze_takmicenja` (`id_faza`, `naziv_faze`) VALUES
(1, '1st Semi-Final'),
(2, '2nd Semi-Final'),
(3, 'Final');

-- --------------------------------------------------------

--
-- Table structure for table `predstavnici`
--

CREATE TABLE IF NOT EXISTS `predstavnici` (
  `id_pred` int(11) NOT NULL AUTO_INCREMENT,
  `ime_prezime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pesma` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_drz` int(11) NOT NULL,
  PRIMARY KEY (`id_pred`),
  KEY `id_drz` (`id_drz`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=40 ;

--
-- Dumping data for table `predstavnici`
--

INSERT INTO `predstavnici` (`id_pred`, `ime_prezime`, `pesma`, `id_drz`) VALUES
(1, 'Natália Kelly', 'Shine ', 1),
(2, 'Alyona Lanskaya', 'Rhythm Of Love', 2),
(3, 'Roberto Bellarosa', 'Love Kills ', 3),
(4, '', 'Mižerja ', 4),
(5, 'Despina Olympiou', 'An Me Thimase ', 5),
(6, 'Emmelie de Forest', 'Only Teardrops', 6),
(7, 'To be announced', '', 7),
(8, 'To be announced', '', 8),
(9, 'Andrius Pojavis', 'Something ', 9),
(10, 'To be announced', '', 10),
(11, 'Who See', 'Igranka ', 11),
(12, 'To be announced', '', 12),
(13, 'To be announced', '', 13),
(14, 'Hannah', 'To be announced', 14),
(15, 'Zlata Ognevich', 'Gravity ', 15),
(16, 'Anouk', 'To be announced', 16),
(17, 'Adrian Lulgjuraj & Bledar Sejko', 'Identitet', 17),
(18, 'Gor Sujyan', 'To be announced', 18),
(19, 'To be announced', '', 19),
(20, 'Elitsa & Stoyan', 'To be announced', 20),
(21, 'Lozano & Esma', 'To be announced', 21),
(22, 'To be announced', '', 22),
(23, 'Nodi Tatishvili & Sophie Gelovani', 'Waterfall ', 23),
(24, 'To be announced', '', 24),
(25, 'To be announced', '', 25),
(26, 'Eyþór Ingi Gunnlaugsson', 'Ég á Líf', 26),
(27, 'To be announced', '', 27),
(28, 'PeR', 'Here We Go ', 28),
(29, 'Margaret Berger', 'I Feed You My Love ', 29),
(30, 'Gianluca Bezzina', 'Tomorrow ', 30),
(31, 'To be announced', '', 31),
(32, 'Valentina Monetta', 'Crisalide ', 32),
(33, '', 'You And Me ', 33),
(34, 'Amandine Bourgeois', 'L''Enfer Et Moi ', 34),
(35, 'Cascada', 'Glorious ', 35),
(36, 'To be announced', '', 36),
(37, 'To be announced', '', 37),
(38, 'To be announced', '', 38),
(39, 'ESDM - El Sueño De Morfeo', 'To be announced', 39);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drzave`
--
ALTER TABLE `drzave`
  ADD CONSTRAINT `drzave_ibfk_2` FOREIGN KEY (`id_faza`) REFERENCES `faze_takmicenja` (`id_faza`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `predstavnici`
--
ALTER TABLE `predstavnici`
  ADD CONSTRAINT `predstavnici_ibfk_1` FOREIGN KEY (`id_drz`) REFERENCES `drzave` (`id_drz`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
