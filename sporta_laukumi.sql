-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2024 at 10:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sporta_laukumi`
--

-- --------------------------------------------------------

--
-- Table structure for table `mikrorajons`
--

CREATE TABLE `mikrorajons` (
  `ID` int(255) NOT NULL,
  `id_zona` int(2) NOT NULL,
  `nosaukums` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mikrorajons`
--

INSERT INTO `mikrorajons` (`ID`, `id_zona`, `nosaukums`) VALUES
(1, 2, 'Imanta'),
(2, 2, 'Beberbeķi'),
(3, 2, 'Zolitūde'),
(4, 2, 'Pleskodāle'),
(5, 2, 'Šampēteris'),
(6, 2, 'Mūkupurvs'),
(7, 2, 'Katlakalns'),
(8, 2, 'Dzirciems'),
(9, 2, 'Iļģuciems'),
(10, 2, 'Āgenskalns'),
(11, 2, 'Ķīpsala'),
(12, 2, 'Spilve'),
(13, 2, 'Kleisti'),
(14, 2, 'Bolderāja'),
(15, 2, 'Vakarbuļļi'),
(16, 2, 'Daugavgrīva'),
(17, 2, 'Voleri'),
(18, 2, 'Torņakalns'),
(19, 2, 'Salas'),
(20, 2, 'Bieriņi'),
(21, 2, 'Ziepniekkalns'),
(22, 1, 'Berģi'),
(23, 1, 'Bukulti'),
(24, 1, 'Suži'),
(25, 1, 'Jaunciems'),
(26, 1, 'Trīsciems'),
(27, 1, 'Vecāķi'),
(28, 1, 'Vecdaugava'),
(29, 1, 'Mangaļsala'),
(30, 1, 'Vecmīgrāvis'),
(31, 1, 'Kundziņsala'),
(32, 1, 'Sarkandaugava'),
(33, 1, 'Pētersala-Andrejsala'),
(34, 1, 'Vecpilsēta'),
(35, 1, 'Centrs'),
(36, 1, 'Skanste'),
(37, 1, 'Brasa'),
(38, 1, 'Mīlgrāvis'),
(39, 1, 'Mežaparks'),
(40, 1, 'Čiekurkalns'),
(41, 1, 'Teika'),
(42, 1, 'Purvciems'),
(43, 1, 'Grīziņkalns'),
(44, 1, 'Avoti'),
(45, 1, 'Maskavas forštate'),
(46, 1, 'Ķengarags'),
(47, 1, 'Dārzciems'),
(48, 1, 'Pļavnieki'),
(49, 1, 'Šķirotava'),
(50, 1, 'Rumbula'),
(51, 1, 'Dārziņi'),
(52, 1, 'Dreiliņi'),
(53, 1, 'Mežciems'),
(54, 1, 'Jugla');

-- --------------------------------------------------------

--
-- Table structure for table `sporta_laukums`
--

CREATE TABLE `sporta_laukums` (
  `id_laukums` int(11) NOT NULL,
  `id_mikrorajons` int(54) NOT NULL,
  `sp_nosaukums` text DEFAULT NULL,
  `longitude` decimal(10,4) DEFAULT NULL,
  `latitude` decimal(10,4) DEFAULT NULL,
  `dl_vasara` varchar(255) DEFAULT NULL,
  `dl_ziema` varchar(255) DEFAULT NULL,
  `rotallaukums` varchar(255) DEFAULT NULL,
  `skriesana` varchar(255) DEFAULT NULL,
  `futbols` int(11) DEFAULT NULL,
  `basketbols` int(11) DEFAULT NULL,
  `tr_zona` varchar(255) DEFAULT NULL,
  `pieejams` varchar(255) DEFAULT NULL,
  `adrese` varchar(255) DEFAULT NULL,
  `apraksts` varchar(255) DEFAULT NULL,
  `privats` varchar(255) DEFAULT NULL,
  `zona_` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sporta_laukums`
--

INSERT INTO `sporta_laukums` (`id_laukums`, `id_mikrorajons`, `sp_nosaukums`, `longitude`, `latitude`, `dl_vasara`, `dl_ziema`, `rotallaukums`, `skriesana`, `futbols`, `basketbols`, `tr_zona`, `pieejams`, `adrese`, `apraksts`, `privats`, `zona_`) VALUES
(1, 1, 'Rīgas Imantas Vidusskola', 23.9985, 56.9564, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 3, 'Ir', 'Visiem', 'Kurzemes Prospekts 158', 'Liels sporta laukums, kas bija uzcelts 2018. gadā. Infrastruktūra ir moderna, viss ir labā kvalitātē. Sporta laukums ir lielākais Imantā', 'Nē', 2),
(2, 1, '96. Vidusskolas Sporta Laukums', 24.0050, 56.9598, '7:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Auru Iela 6\r\n', 'Otrs lielākais sporta laukums Imantā. Celts 2018. gadā. RIV laukumam līdzīgs projekts pēc dizaina.\r\n', 'Nē', 2),
(3, 1, 'Anniņmuižas Parks', 24.0157, 56.9557, 'Visu diennakts\r\n', 'Visu diennakts\r\n', 'Ir', 'Piemērots', 0, 0, 'Ir', 'Visiem', 'Dumbrāja Iela 23A\r\n', 'Sporta laukums, kas atrodas Anniņmuižas parkā. Tas nav liels, izņemot rotaļlaukumu, ir tikai spēka treniņu zona. Skriet var pa pašu parku.\n', 'Nē', 2),
(4, 1, 'Metropolia Namu Sporta Laukums', 24.0179, 56.9606, '8:00-23:00\r\n', '11:00-21:00\r\n', 'Ir', 'Nav piemērots', 0, 1, 'Ir', 'Visiem, izņemot Basketbola laukumu (privāts)\n', 'Anniņmuižas Bulvāris 38\r\n', 'Neliels sporta laukums, kas ir daļēji privāts. Basketbola laukuma izmantošana ir atļauta tikai \"Metropolia\" namu kompleksa iedzīvotājiem. Pārējais ir publisks', 'Daļēji', 2),
(5, 1, 'Anniņmuižas Vidusskolas Sporta Laukums', 24.0259, 56.9626, '9:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 1, 'Ir', 'Visiem', 'Kleistu iela 14', 'Liels sporta laukums, kas attiecās pie Rīgas Anniņmuižas vidusskolas. Ir viss, kas nepieciešams sportošanai', 'Nē', 2),
(6, 1, 'Imantas Pērles Namu Sporta Laukums', 24.0201, 56.9632, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Nav piemērots ', 0, 1, 'Ir', 'Visiem', 'Kleistu iela 11', 'Mazs sporta laukums, kas atrodas blakus \"Imantas Pērles\" namu kompleksam. Basketbola laukums ir diezgan sliktā stāvoklī, asfalts daļēji ir saplaisīts.\r\n', 'Nē', 2),
(7, 1, 'Ostvalda Vidusskolas Sporta Laukums', 24.0141, 56.9660, '9:00-22:00', '16:00-21:00', 'Ir', 'Piemērots', 1, 0, 'Ir', 'Visiem', 'Dammes iela 20', 'Sporta laukums, kura lielākā daļa ir liels un kvalitatīvs futbola stadions. Vislabāk ir piemērots futbolam.', 'Nē', 2),
(8, 1, 'Volvo Stadium', 24.0059, 56.9507, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Nav piemērots', 1, 0, 'Ir', 'Visiem', 'Jūrmalas Gatve 78D', 'Mazs sporta laukums, kas būtiski satur nelielu futbola laukumu un mazu spēka treniņu zonu', 'Nē', 2),
(9, 3, 'Zolitūdes Ģimnāzijas Sporta Laukums', 24.0076, 56.9456, 'Visu diennakts', 'Visu diennakts', 'Ir', 'Piemērots', 2, 1, 'Ir', 'Visiem', 'Ruses iela 22', 'Lielākais sporta laukums Zolitūdē. Ir diezgan vecs, daudzās vietās ir saplaisīts asfalts', 'Nē', 2),
(10, 3, 'Ziemeļvalstu Ģimnāzijas Sporta Laukums', 24.0199, 56.9462, '9:00-20:00', '16:00-20:00', 'Ir', 'Nav piemērtots', 0, 0, 'Ir', 'Visiem', 'Paula Lejiņa iela 12', 'Mazs sporta laukums, kas attiecās pie Ziemeļvalstu ģimnāzijas. Ir spēka treniņu zona un rotaļlaukums', 'Nē', 2),
(11, 3, 'Anniņmuižas Ielas 16-stāvju māju infrastruktūra', 24.0100, 56.9469, 'Visu diennakts', 'Visu diennakts', 'Nav', 'Nav piemērts', 0, 0, 'Ir', 'Visiem', 'Anniņmuižas iela 3-5', 'Nelielas celtnes, domātas spēka treniņiem', 'Nē', 2);

-- --------------------------------------------------------

--
-- Table structure for table `zona`
--

CREATE TABLE `zona` (
  `ID` int(255) NOT NULL,
  `Nosaukums` mediumtext CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zona`
--

INSERT INTO `zona` (`ID`, `Nosaukums`) VALUES
(1, 'Kreisais Krasts'),
(2, 'Pardaugava');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mikrorajons`
--
ALTER TABLE `mikrorajons`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_zona` (`id_zona`);

--
-- Indexes for table `sporta_laukums`
--
ALTER TABLE `sporta_laukums`
  ADD UNIQUE KEY `id_rajons` (`id_laukums`),
  ADD KEY `id_mikrorajons` (`id_mikrorajons`),
  ADD KEY `zona_` (`zona_`);

--
-- Indexes for table `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mikrorajons`
--
ALTER TABLE `mikrorajons`
  ADD CONSTRAINT `mikrorajons_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zona` (`ID`),
  ADD CONSTRAINT `mikrorajons_ibfk_2` FOREIGN KEY (`id_zona`) REFERENCES `zona` (`ID`);

--
-- Constraints for table `sporta_laukums`
--
ALTER TABLE `sporta_laukums`
  ADD CONSTRAINT `sporta_laukums_ibfk_1` FOREIGN KEY (`zona_`) REFERENCES `zona` (`ID`),
  ADD CONSTRAINT `sporta_laukums_ibfk_2` FOREIGN KEY (`id_mikrorajons`) REFERENCES `mikrorajons` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
