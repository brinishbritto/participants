-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 25, 2020 at 08:09 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eduvanz`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_10_24_162849_create_participants_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE IF NOT EXISTS `participants` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` tinyint(3) unsigned NOT NULL,
  `dob` date NOT NULL,
  `profession` tinyint(3) unsigned NOT NULL,
  `locality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guests` tinyint(3) unsigned NOT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `participants_dob_index` (`dob`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `participants`
--

INSERT INTO `participants` (`id`, `name`, `age`, `dob`, `profession`, `locality`, `guests`, `address`, `created_at`, `updated_at`, `is_active`) VALUES
(1, 'Whitney Schneider', 6, '2017-03-03', 2, '2694 Buck Island', 1, '49554 Eva Mills Apt. 698\nBrookeburgh, NV 55001-4066', '2020-10-25 09:06:29', '2020-10-25 09:06:29', 1),
(2, 'Hattie Tromp', 69, '2003-12-16', 2, '5122 Moen Mills', 2, '6898 Gilbert Motorway\nNikitaville, WY 39023-1051', '2020-10-25 09:06:29', '2020-10-25 09:06:29', 1),
(3, 'Geraldine Bartoletti', 12, '1982-08-16', 2, '8240 Goyette Valley Apt. 694', 1, '28686 Nyasia Overpass Suite 808\nPort Sarai, VT 48196-7148', '2020-10-25 09:06:29', '2020-10-25 09:06:29', 1),
(4, 'Roman Denesik III', 89, '1992-05-30', 2, '8496 Von Hollow Apt. 710', 0, '52889 Corrine Hills Suite 378\nSchaefermouth, MA 07953', '2020-10-25 09:06:29', '2020-10-25 09:06:29', 1),
(5, 'Chester Beahan', 46, '1986-04-04', 1, '431 Stone Road', 2, '72323 Wellington Trafficway Suite 061\nBuddyfort, IA 85382', '2020-10-25 09:06:29', '2020-10-25 09:06:29', 1),
(6, 'Destinee Hermiston Jr.', 6, '1971-08-13', 2, '31872 Morissette Place', 2, '375 Zboncak Cape\nCorwinberg, FL 76048-1661', '2020-10-25 09:06:29', '2020-10-25 09:06:29', 1),
(7, 'Troy Tillman', 23, '2000-07-17', 1, '83850 Harvey Bridge', 2, '56374 Domenica Manors Apt. 781\nMantetown, FL 18532', '2020-10-25 09:06:29', '2020-10-25 09:06:29', 1),
(8, 'Prof. Alayna Heathcote DDS', 21, '1970-11-17', 2, '94536 Charles Key Suite 191', 2, '4118 Turcotte Shoal\nNew Shyanne, OR 67269-5551', '2020-10-25 09:06:29', '2020-10-25 09:06:29', 1),
(9, 'Dr. Brett Keeling V', 67, '2011-05-24', 1, '652 Mosciski Mission Suite 471', 0, '44310 Blick Place Suite 424\nGreenholtchester, HI 12165', '2020-10-25 09:06:29', '2020-10-25 09:06:29', 1),
(10, 'Delmer Hane', 86, '2011-07-11', 2, '29985 Renee Dam', 0, '960 Schinner Alley Apt. 405\nSouth Tayashire, NV 99779', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(11, 'Dr. Leo Harris Sr.', 51, '1992-06-16', 1, '42789 Howe Burg Apt. 747', 0, '579 Leannon Street\nJordanfurt, CO 22157', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(12, 'Mr. Dario Thompson', 9, '2010-09-28', 2, '8600 Sharon Views', 0, '841 Stanton Village Suite 692\nLittlemouth, OR 03591-4909', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(13, 'Damien Sauer Jr.', 32, '2012-02-26', 2, '8156 Travis Ports', 2, '180 Lavinia Inlet\nLake Alysonfort, VA 50574', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(14, 'Annabell Funk', 63, '2019-02-11', 1, '7319 Lauryn Neck Apt. 124', 0, '607 Lang Harbors\nNew Melbaland, WV 88164', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(15, 'Erwin Ferry', 47, '1978-01-15', 2, '9349 Chesley Skyway', 1, '70328 Smith Station\nPollichside, MT 32192-1258', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(16, 'Murray Doyle', 76, '2001-05-27', 1, '766 Graham Gateway', 1, '33103 Aurore Trail\nWest Junior, MN 47972-2330', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(17, 'Sage Kiehn', 91, '2018-05-13', 2, '69923 Gladyce Canyon', 0, '23583 Opal Prairie Suite 489\nHermistonchester, MS 14844', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(18, 'Marianne Green', 63, '2000-12-11', 1, '38483 Schamberger Oval Suite 231', 1, '30272 Michele Glen Apt. 212\nJazlynbury, WY 06452-5447', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(19, 'Mrs. Abigayle Kiehn Jr.', 26, '2003-03-04', 2, '41696 Daugherty Centers', 1, '2772 Crona Branch Apt. 856\nColefort, ID 92303', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(20, 'Telly Ryan', 5, '2018-01-23', 2, '87431 Geo Plaza', 0, '859 Jaskolski Orchard Suite 473\nNorth Goldahaven, OH 59012', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(21, 'Devon Stanton', 19, '1976-01-09', 2, '633 Madelynn Spurs', 2, '95976 Derrick Streets Apt. 973\nLake Titomouth, OK 72064', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(22, 'Mrs. Shannon Bergnaum', 56, '1987-03-23', 1, '323 Shields Crossroad', 1, '357 Price Plain\nBechtelarmouth, UT 59312-0210', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(23, 'Julian Bednar', 13, '1971-03-20', 1, '96784 Haag Groves Suite 556', 0, '64119 Spencer Tunnel\nBoylemouth, MT 12069-1770', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(24, 'Anabel Gulgowski MD', 35, '1991-10-04', 2, '60592 Cali Causeway', 0, '203 Sauer Path\nEast Davonteview, MT 60994-3141', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(25, 'Frances Greenfelder', 93, '1980-06-22', 1, '2023 Sylvester Circle Apt. 107', 0, '110 Abernathy Circle Apt. 673\nGermantown, MT 96748', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(26, 'Eleanora Spencer', 96, '1977-07-19', 1, '91462 Kulas Street', 0, '29063 Kelsi Radial\nSchulistside, FL 71645', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(27, 'Bonita Abernathy', 50, '1976-12-12', 2, '54672 Wendell Light', 0, '81967 Flo Turnpike Suite 020\nNew Groverland, ID 92770-5668', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(28, 'Dr. Princess Leuschke', 69, '2016-01-13', 2, '2470 Tillman Valley Suite 986', 2, '26534 Schuster Ranch Suite 686\nJasminland, AL 81647-5868', '2020-10-25 09:06:30', '2020-10-25 09:06:30', 1),
(29, 'Vilma Cassin', 56, '1993-05-23', 2, '84718 Cooper Pike Apt. 752', 2, '124 Brennan Island\nWest Genovevaview, WI 73218-5064', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(30, 'Forrest Larkin', 58, '2001-09-28', 2, '364 Antonia Lane Suite 147', 0, '406 Graham Hill\nSouth Georgianachester, PA 32818', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(31, 'Felicita Weimann', 53, '2003-10-08', 1, '39115 Hettinger River Apt. 764', 2, '76385 Brady Islands Apt. 319\nSouth Ismaelstad, ME 17087', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(32, 'Prof. Aniyah Windler', 98, '1971-06-22', 1, '5855 Keyon Street', 0, '74218 Malcolm Circles Suite 885\nRachaelville, NM 81013', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(33, 'Miss Larissa Shanahan', 74, '1975-02-23', 2, '33529 Satterfield Square', 2, '15064 Otha Plaza\nKyleeview, WA 05251-1453', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(34, 'Marc Zboncak', 59, '2005-11-11', 1, '324 Cheyanne Stravenue', 0, '57791 Verlie Drive\nLouveniachester, DE 19980-6572', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(35, 'Ben Streich', 38, '1974-01-20', 2, '842 Harber Center', 1, '5404 Hilma Inlet Apt. 441\nAliviahaven, PA 75081-2096', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(36, 'Giovanny Olson', 64, '2014-05-15', 1, '405 Peyton Street', 1, '936 Wintheiser Avenue\nSouth Nickolaston, AZ 62648-1253', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(37, 'June Beahan', 45, '1981-12-19', 1, '1647 Oberbrunner Haven', 1, '9227 Suzanne Tunnel\nMortimerview, NC 67354-9113', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(38, 'Mrs. Keira Treutel', 4, '2018-07-18', 2, '86808 Lesch Vista Apt. 891', 0, '1530 Nicolas Mountains Suite 304\nNew Andreanne, NV 98102', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(39, 'Angel Lakin DVM', 46, '2020-06-22', 1, '6342 Hegmann Locks', 1, '6672 Moen Station Apt. 136\nKerluketon, VT 61581-4073', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(40, 'Keith Hills', 26, '2005-11-10', 2, '3810 Gail Spur', 2, '604 Shields Forges\nLake Chanel, AK 90726-9243', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(41, 'Sidney Blanda', 10, '1979-12-26', 1, '191 Gail Parks Apt. 465', 1, '186 Carole Park Suite 507\nRogahnbury, GA 56671', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(42, 'Roselyn Bernier', 37, '2020-03-30', 1, '51005 Dan Locks', 0, '53190 Klocko Circle Suite 131\nBirdieville, WV 77511-8203', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(43, 'Muhammad Ortiz DVM', 77, '1982-04-30', 2, '205 Dalton Streets', 2, '15895 Modesto Hill\nLake Zora, IL 21109', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(44, 'Alena Gulgowski Sr.', 13, '2020-09-11', 1, '1561 Mante Creek Suite 278', 2, '88193 Schimmel Causeway\nWest Gregorioberg, RI 50706', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(45, 'Brando Heathcote', 46, '1978-11-13', 2, '918 Jefferey Points', 2, '3535 Watsica Ranch\nJammieborough, PA 99392', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(46, 'Mr. Bertram Romaguera II', 61, '1986-11-20', 1, '311 Terry Run', 2, '83658 Fernando Forges\nRueckerville, DE 61847', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(47, 'Timmy Feeney', 24, '1985-04-26', 1, '5489 Botsford Park Suite 502', 1, '123 Trey Port\nLake Annette, IN 00930', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(48, 'Freeman Mante', 95, '2008-04-06', 1, '81741 Brekke Fall Suite 854', 0, '4743 Betty Motorway Suite 602\nNew Alfredomouth, KS 82842-5766', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(49, 'Sophie Nicolas', 18, '1977-04-12', 2, '63616 Stamm Lock Suite 857', 2, '484 Monahan Groves\nEast Frank, MO 60425-5714', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1),
(50, 'Ramon Keebler', 41, '1970-04-23', 2, '582 Feeney Pines Apt. 510', 0, '3461 Bailey Avenue\nCarterview, KS 44274-4723', '2020-10-25 09:06:31', '2020-10-25 09:06:31', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
