# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.23)
# Database: cgpaweb
# Generation Time: 2017-01-09 23:27:12 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table attendance
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `attAttendanceID` int(11) NOT NULL AUTO_INCREMENT,
  `mpaID` int(11) DEFAULT NULL,
  `mpaName` varchar(50) NOT NULL,
  `attAttendance` int(11) NOT NULL,
  `mpaPresents` int(11) DEFAULT NULL,
  `mpaAbsents` int(11) DEFAULT NULL,
  `application` int(11) DEFAULT NULL,
  ` mpaTenureTime` int(11) DEFAULT NULL,
  `mpaTotalAttendance` decimal(10,8) DEFAULT NULL,
  PRIMARY KEY (`attAttendanceID`),
  UNIQUE KEY `AttAttendanceID` (`mpaName`,`attAttendance`),
  UNIQUE KEY `attAttendanceID_UNIQUE` (`attAttendanceID`),
  KEY `attAttendance_idx` (`attAttendance`),
  CONSTRAINT `attAttendance` FOREIGN KEY (`attAttendance`) REFERENCES `attendancedate` (`attAttendanceID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=497 DEFAULT CHARSET=utf8;

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;

INSERT INTO `attendance` (`attAttendanceID`, `mpaID`, `mpaName`, `attAttendance`, `mpaPresents`, `mpaAbsents`, `application`, ` mpaTenureTime`, `mpaTotalAttendance`)
VALUES
	(1,NULL,'Zia Ullah Afridi ',1,65,6,1,72,90.27777778),
	(2,NULL,'Shokat Yousafzai ',1,62,10,NULL,72,86.11111111),
	(3,NULL,'Javid Naseem ',1,68,2,2,72,94.44444444),
	(4,NULL,'Arif Yosaf ',1,71,1,NULL,72,98.61111111),
	(5,NULL,'Yaseen Khalil ',1,55,16,1,72,76.38888889),
	(6,NULL,'Fazal e Elahi ',1,65,7,NULL,72,90.27777778),
	(7,NULL,'Mehmood Jan ',1,70,NULL,2,72,97.22222222),
	(8,NULL,'Arbab Akbar Hayat Khan ',1,67,5,NULL,72,93.05555556),
	(9,NULL,'Arbab Jehandad Khan ',1,63,7,2,72,87.50000000),
	(10,NULL,'Shah Farman ',1,66,6,NULL,72,91.66666667),
	(11,NULL,'Syed Muhammad Ishtiaq ',1,65,6,1,72,90.27777778),
	(12,NULL,'Khaleeq ur Rehman ',1,66,6,NULL,72,91.66666667),
	(13,NULL,'Parvez Khattak ',1,37,35,NULL,72,51.38888889),
	(14,NULL,'Jamshid ud Din ',1,64,8,NULL,72,88.88888889),
	(15,NULL,'Muhammad Idrees Khan ',1,50,22,NULL,72,69.44444444),
	(16,NULL,'Qurban Khan ',1,71,1,NULL,72,98.61111111),
	(17,NULL,'Fazal e Shakoor Khan ',1,57,15,NULL,72,79.16666667),
	(18,NULL,'Sultan Muhammad Khan ',1,38,27,7,72,52.77777778),
	(19,NULL,'Arshad Ali Khan ',1,60,11,1,72,83.33333333),
	(20,NULL,'Khalid Khan ',1,44,20,8,72,61.11111111),
	(21,NULL,'Sikandar Hayat Khan ',1,54,9,9,72,75.00000000),
	(22,NULL,'Muhammad Arif Khan ',1,57,13,2,72,79.16666667),
	(23,NULL,'Ahmad Khan Bahadur ',1,19,23,13,55,34.54545455),
	(24,NULL,'Muhammad Zahid Durrani ',1,52,5,15,72,72.22222222),
	(25,NULL,'Obaid Ullah Mayar ',1,51,19,2,72,70.83333333),
	(26,NULL,'Iftikhar Ali Mushwani ',1,43,12,17,72,59.72222222),
	(27,NULL,'Jamshid Khan, session 4th ',1,53,NULL,2,55,96.36363636),
	(28,NULL,'Gohar Ali Shah ',1,35,14,13,72,48.61111111),
	(29,NULL,'Tufail Anjum ',1,62,9,1,72,86.11111111),
	(30,NULL,'Atif Khan ',1,48,24,NULL,72,66.66666667),
	(31,NULL,'Babar Khan ',1,66,5,1,72,91.66666667),
	(32,NULL,'Shahram Khan ',1,57,14,1,72,79.16666667),
	(33,NULL,'Muhammad Ali Taraki ',1,32,25,9,72,44.44444444),
	(34,NULL,'Abdul Karim ',1,66,5,1,72,91.66666667),
	(35,NULL,'Asad Qaisar ',1,42,30,NULL,72,58.33333333),
	(36,NULL,'Muhammad Sheraz ',1,66,4,2,72,91.66666667),
	(37,NULL,'Amjad Khan Afridi ',1,44,26,2,72,61.11111111),
	(38,NULL,'Ziaullah Khan Bangash ',1,52,19,1,72,72.22222222),
	(39,NULL,'Imtiaz Shahid ',1,70,2,NULL,72,97.22222222),
	(40,NULL,'Gul Sahib Khan ',1,49,17,6,72,68.05555556),
	(41,NULL,'Malik Qasim Khattak ',1,51,19,2,72,70.83333333),
	(42,NULL,'Shah Faisal Khan ',1,53,2,NULL,55,96.36363636),
	(43,NULL,'Mufti Syed Janan ',1,71,1,NULL,72,98.61111111),
	(44,NULL,'Mushtaq Ahmad Ghani ',1,59,6,7,72,81.94444444),
	(45,NULL,'Sardar Mehtab Ahmad Khan ',1,19,NULL,3,63,30.15873016),
	(46,NULL,'Haji Qalandar Lodhi ',1,61,4,7,72,84.72222222),
	(47,NULL,'Sardar Aurangzeb Nalota ',1,66,NULL,6,72,91.66666667),
	(48,NULL,'Sardar Muhammad Idress ',1,61,10,1,72,84.72222222),
	(49,NULL,'Raja Faisal Zaman ',1,63,NULL,9,72,87.50000000),
	(50,NULL,'Akbar Ayub Khan ',1,18,6,2,72,25.00000000),
	(51,NULL,'Gohar Nawaz Khan ',1,21,46,5,72,29.16666667),
	(52,NULL,'Faisal Zaman ',1,38,34,NULL,72,52.77777778),
	(53,NULL,'Sardar Zahoor Ahmad ',1,51,5,16,72,70.83333333),
	(54,NULL,'Mian Zia ur Rehman ',1,40,14,18,72,55.55555556),
	(55,NULL,'Saleh Muhammad ',1,44,9,19,72,61.11111111),
	(56,NULL,'Wajeh uz Zaman Khan ',1,37,9,26,72,51.38888889),
	(57,NULL,'Al Haj Ibrar Hussain ',1,26,28,18,72,36.11111111),
	(58,NULL,'Zareen Gul ',1,65,4,3,72,90.27777778),
	(59,NULL,'Nawab Zada Wali M. Khan ',1,60,11,1,72,83.33333333),
	(60,NULL,'Shah Hussain Khan ',1,62,1,9,72,86.11111111),
	(61,NULL,'Abdul Haq Khan ',1,62,7,3,72,86.11111111),
	(62,NULL,'Muhammad Asmatullah ',1,47,25,NULL,72,65.27777778),
	(63,NULL,'Abdul Sattar Khan ',1,46,21,5,72,63.88888889),
	(64,NULL,'Ali Amin Khan ',1,41,27,4,72,56.94444444),
	(65,NULL,'Sami Ullah ',1,34,31,7,72,47.22222222),
	(66,NULL,'Maulana Lutf ur Rehman ',1,40,32,NULL,72,55.55555556),
	(67,NULL,'Ikram Ullah Ghandapur , ',1,26,5,5,36,72.22222222),
	(68,NULL,'Javed Akbar Khan ',1,41,31,NULL,72,56.94444444),
	(69,NULL,'Mahmood Ahmad Khan ',1,49,16,7,72,68.05555556),
	(70,NULL,'Azam Khan Durrani 4th ',1,48,7,NULL,56,85.71428571),
	(71,NULL,'Fakhre Azam Wazir ',1,38,27,6,72,52.77777778),
	(72,NULL,'Shah Muhammad Khan ',1,66,5,1,72,91.66666667),
	(73,NULL,'Malik Riaz Khan ',1,60,5,7,72,83.33333333),
	(74,NULL,'Anwar Hayat Khan ',1,48,24,NULL,72,66.66666667),
	(75,NULL,'Noor Saleem Malik ',1,47,19,6,72,65.27777778),
	(76,NULL,'Munawar Khan Advocate ',1,71,1,NULL,72,98.61111111),
	(77,NULL,'Sardar Hussain ',1,61,11,NULL,72,84.72222222),
	(78,NULL,'Habib ur Rehman ',1,67,3,2,72,93.05555556),
	(79,NULL,'Maulana Mufti Fazal Ghafoor ',1,67,5,NULL,72,93.05555556),
	(80,NULL,'Fazal Hakim ',1,58,7,7,72,80.55555556),
	(81,NULL,'Azizullah Khan ',1,39,1,NULL,40,97.50000000),
	(82,NULL,'Amjad Ali ',1,61,9,2,72,84.72222222),
	(83,NULL,'Muhibullah Khan ',1,58,11,3,72,80.55555556),
	(84,NULL,'Mahmood Khan ',1,57,12,3,72,79.16666667),
	(85,NULL,'Syed Jafar Shah ',1,67,2,3,72,93.05555556),
	(86,NULL,'Haidar Ali Khan ',1,3,NULL,1,4,75.00000000),
	(87,NULL,'Muhammad Rashad Khan ',1,44,17,11,72,61.11111111),
	(88,NULL,'Abdul Munim ',1,68,4,NULL,72,94.44444444),
	(89,NULL,'Saleem Khan ',1,53,14,5,72,73.61111111),
	(90,NULL,'Sardar Hussian ',1,4,1,NULL,5,80.00000000),
	(91,NULL,'Inayat Ullah ',1,61,6,5,72,84.72222222),
	(92,NULL,'Muhammad Ali ',1,62,2,8,72,86.11111111),
	(93,NULL,'Behram Khan ',1,53,3,16,72,73.61111111),
	(94,NULL,'Mazafar Said ',1,68,3,1,72,94.44444444),
	(95,NULL,'Siraj Ul Haq ',1,48,19,4,72,66.66666667),
	(96,NULL,'Saeed Gul ',1,59,5,8,72,81.94444444),
	(97,NULL,'Bakht Baidar ',1,38,27,7,72,52.77777778),
	(98,NULL,'Syed Muhammad Ali Shah ',1,38,27,7,72,52.77777778),
	(99,NULL,'Shakeel Ahmad ',1,45,5,18,72,62.50000000),
	(100,NULL,'Naseem Hayat ',1,60,4,8,72,83.33333333),
	(101,NULL,'Meher Taj Roghani ',1,66,NULL,6,72,91.66666667),
	(102,NULL,'Nadia Sher ',1,40,2,30,72,55.55555556),
	(103,NULL,'Aisha Naeem ',1,70,1,1,72,97.22222222),
	(104,NULL,'Maliha Tanveer ',1,55,16,1,72,76.38888889),
	(105,NULL,'Zareen Riaz ',1,71,NULL,1,72,98.61111111),
	(106,NULL,'Nargas ',1,70,NULL,2,72,97.22222222),
	(107,NULL,'Nageena Khan ',1,71,1,NULL,72,98.61111111),
	(108,NULL,'Dina Naz ',1,67,NULL,5,72,93.05555556),
	(109,NULL,'Bibi Fozia ',1,58,7,7,72,80.55555556),
	(110,NULL,'Romana Jalil ',1,55,NULL,16,71,77.46478873),
	(111,NULL,'Uzma Khan ',1,69,3,NULL,72,95.83333333),
	(112,NULL,'Najma Shaheen ',1,70,1,1,72,97.22222222),
	(113,NULL,'Amina Sardar ',1,69,NULL,3,72,95.83333333),
	(114,NULL,'Roqia Hina ',1,69,NULL,3,72,95.83333333),
	(115,NULL,'Sobia Shahid ',1,45,13,14,72,62.50000000),
	(116,NULL,'Rashada Riffat ',1,68,1,3,72,94.44444444),
	(117,NULL,'Anisa Zab Tahirheli ',1,64,5,3,72,88.88888889),
	(118,NULL,'Meraj Hamayun Khan ',1,64,6,2,72,88.88888889),
	(119,NULL,'Yasmeen Pir Muhammad ',1,61,11,NULL,72,84.72222222),
	(120,NULL,'Khatoon Bibi ',1,69,1,2,72,95.83333333),
	(121,NULL,'Nighat Orakzai ',1,56,16,NULL,72,77.77777778),
	(122,NULL,'Soran Singh ',1,69,NULL,3,72,95.83333333),
	(123,NULL,'Askar Pervaiz ',1,64,1,7,72,88.88888889),
	(124,NULL,'Fredrick Azeem ',1,69,NULL,3,72,95.83333333),
	(125,NULL,'Zia Ullah Afridi ',2,40,10,7,57,70.17543860),
	(126,NULL,'Shokat Yousafzai ',2,36,10,11,57,63.15789474),
	(127,NULL,'Javid Naseem ',2,47,7,3,57,82.45614035),
	(128,NULL,'Arif Yosaf ',2,44,12,1,57,77.19298246),
	(129,NULL,'Yaseen Khalil ',2,43,9,5,57,75.43859649),
	(130,NULL,'Fazal e Elahi ',2,37,20,NULL,57,64.91228070),
	(131,NULL,'Mehmood Jan ',2,37,7,13,57,64.91228070),
	(132,NULL,'Arbab Akbar Hayat Khan ',2,47,10,NULL,57,82.45614035),
	(133,NULL,'Arbab Jehandad Khan ',2,49,8,NULL,57,85.96491228),
	(134,NULL,'Shah Farman ',2,48,9,NULL,57,84.21052632),
	(135,NULL,'Syed Muhammad Ishtiaq ',2,37,18,NULL,57,64.91228070),
	(136,NULL,'Khaleeq ur Rehman ',2,48,9,NULL,57,84.21052632),
	(137,NULL,'Parvez Khattak ',2,20,37,NULL,57,35.08771930),
	(138,NULL,'Jamshid ud Din ',2,40,17,NULL,57,70.17543860),
	(139,NULL,'Muhammad Idrees Khan ',2,34,23,NULL,57,59.64912281),
	(140,NULL,'Qurban Khan ',2,48,8,NULL,57,84.21052632),
	(141,NULL,'Fazal e Shakoor Khan ',2,52,5,NULL,57,91.22807018),
	(142,NULL,'Sultan Muhammad Khan ',2,30,27,NULL,57,52.63157895),
	(143,NULL,'Arshad Ali Khan ',2,39,15,3,57,68.42105263),
	(144,NULL,'Khalid Khan ',2,33,18,6,57,57.89473684),
	(145,NULL,'Sikandar Hayat Khan ',2,37,15,5,57,64.91228070),
	(146,NULL,'Muhammad Arif Khan ',2,38,17,2,57,66.66666667),
	(147,NULL,'Ahmad Khan Bahadur ',2,11,46,NULL,57,19.29824561),
	(148,NULL,'Muhammad Zahid Durrani ',2,28,7,22,57,49.12280702),
	(149,NULL,'Obaid Ullah Mayar ',2,26,31,NULL,57,45.61403509),
	(150,NULL,'Iftikhar Ali Mushwani ',2,32,17,18,57,56.14035088),
	(151,NULL,'Jamshid Khan, session 4th ',2,38,7,12,57,66.66666667),
	(152,NULL,'Gohar Ali Shah ',2,21,28,8,57,36.84210526),
	(153,NULL,'Tufail Anjum ',2,36,20,1,57,63.15789474),
	(154,NULL,'Atif Khan ',2,38,19,NULL,57,66.66666667),
	(155,NULL,'Babar Khan ',2,32,23,2,57,56.14035088),
	(156,NULL,'Shahram Khan ',2,42,13,2,57,73.68421053),
	(157,NULL,'Muhammad Ali Taraki ',2,18,32,7,57,31.57894737),
	(158,NULL,'Abdul Karim ',2,47,10,NULL,57,82.45614035),
	(159,NULL,'Asad Qaisar ',2,57,NULL,NULL,57,99.99999000),
	(160,NULL,'Muhammad Sheraz ',2,45,5,7,57,78.94736842),
	(161,NULL,'Amjad Khan Afridi ',2,26,29,2,57,45.61403509),
	(162,NULL,'Ziaullah Khan Bangash ',2,37,20,NULL,57,64.91228070),
	(163,NULL,'Imtiaz Shahid ',2,35,18,4,57,61.40350877),
	(164,NULL,'Gul Sahib Khan ',2,21,36,NULL,57,36.84210526),
	(165,NULL,'Malik Qasim Khattak ',2,44,7,6,57,77.19298246),
	(166,NULL,'Shah Faisal Khan ',2,38,19,NULL,57,66.66666667),
	(167,NULL,'Mufti Syed Janan ',2,43,14,NULL,57,75.43859649),
	(168,NULL,'Mushtaq Ahmad Ghani ',2,42,13,2,57,73.68421053),
	(169,NULL,'Sardar Mehtab Ahmad Khan ',2,28,22,5,55,50.90909091),
	(170,NULL,'Haji Qalandar Lodhi ',2,47,3,7,57,82.45614035),
	(171,NULL,'Sardar Aurangzeb Nalota ',2,42,10,5,57,73.68421053),
	(172,NULL,'Sardar Muhammad Idress ',2,33,18,6,57,57.89473684),
	(173,NULL,'Raja Faisal Zaman ',2,43,5,9,57,75.43859649),
	(174,NULL,'Akbar Ayub Khan ',2,38,18,1,57,66.66666667),
	(175,NULL,'Gohar Nawaz Khan ',2,8,33,16,57,14.03508772),
	(176,NULL,'Faisal Zaman ',2,23,34,NULL,57,40.35087719),
	(177,NULL,'Sardar Zahoor Ahmad ',2,30,3,24,57,52.63157895),
	(178,NULL,'Mian Zia ur Rehman ',2,28,2,27,57,49.12280702),
	(179,NULL,'Saleh Muhammad ',2,27,2,28,57,47.36842105),
	(180,NULL,'Wajeh uz Zaman Khan ',2,11,29,13,53,20.75471698),
	(181,NULL,'Al Haj Ibrar Hussain ',2,16,13,28,57,28.07017544),
	(182,NULL,'Zareen Gul ',2,46,10,1,57,80.70175439),
	(183,NULL,'Nawab Zada Wali M. Khan ',2,39,18,NULL,57,68.42105263),
	(184,NULL,'Shah Hussain Khan ',2,33,17,7,57,57.89473684),
	(185,NULL,'Abdul Haq Khan ',2,35,18,4,57,61.40350877),
	(186,NULL,'Muhammad Asmatullah ',2,38,19,NULL,57,66.66666667),
	(187,NULL,'Abdul Sattar Khan ',2,29,26,2,57,50.87719298),
	(188,NULL,'Ali Amin Khan ',2,24,33,NULL,57,42.10526316),
	(189,NULL,'Sami Ullah ',2,25,31,1,57,43.85964912),
	(190,NULL,'Maulana Lutf ur Rehman ',2,30,27,NULL,57,52.63157895),
	(191,NULL,'Ikram Ullah Ghandapur , ',2,29,23,5,57,50.87719298),
	(192,NULL,'Javed Akbar Khan ',2,32,7,7,46,69.56521739),
	(193,NULL,'Mahmood Ahmad Khan ',2,37,18,2,57,64.91228070),
	(194,NULL,'Azam Khan Durrani 4th ',2,36,8,13,57,63.15789474),
	(195,NULL,'Fakhre Azam Wazir ',2,20,34,3,57,35.08771930),
	(196,NULL,'Shah Muhammad Khan ',2,41,14,2,57,71.92982456),
	(197,NULL,'Malik Riaz Khan ',2,33,11,13,57,57.89473684),
	(198,NULL,'Anwar Hayat Khan ',2,18,30,9,57,31.57894737),
	(199,NULL,'Noor Saleem Malik ',2,34,20,3,57,59.64912281),
	(200,NULL,'Munawar Khan Advocate ',2,44,13,NULL,57,77.19298246),
	(201,NULL,'Sardar Hussain ',2,22,15,NULL,57,38.59649123),
	(202,NULL,'Habib ur Rehman ',2,47,8,2,57,82.45614035),
	(203,NULL,'Maulana Mufti Fazal Ghafoor ',2,36,16,5,57,63.15789474),
	(204,NULL,'Fazal Hakim ',2,36,5,16,57,63.15789474),
	(205,NULL,'Azizullah Khan ',2,39,6,12,57,68.42105263),
	(206,NULL,'Amjad Ali ',2,47,9,1,57,82.45614035),
	(207,NULL,'Muhibullah Khan ',2,33,22,2,57,57.89473684),
	(208,NULL,'Mahmood Khan ',2,38,16,3,57,66.66666667),
	(209,NULL,'Syed Jafar Shah ',2,40,10,7,57,70.17543860),
	(210,NULL,'Haidar Ali Khan ',2,30,9,18,57,52.63157895),
	(211,NULL,'Muhammad Rashad Khan ',2,23,30,4,57,40.35087719),
	(212,NULL,'Abdul Munim ',2,38,17,2,57,66.66666667),
	(213,NULL,'Saleem Khan ',2,23,22,12,57,40.35087719),
	(214,NULL,'Sardar Hussian ',2,27,26,4,57,47.36842105),
	(215,NULL,'Inayat Ullah ',2,41,13,3,57,71.92982456),
	(216,NULL,'Muhammad Ali ',2,35,16,6,57,61.40350877),
	(217,NULL,'Behram Khan ',2,24,10,23,57,42.10526316),
	(218,NULL,'Mazafar Said ',2,39,17,1,57,68.42105263),
	(219,NULL,'Siraj Ul Haq ',2,12,16,11,39,30.76923077),
	(220,NULL,'Saeed Gul ',2,36,10,11,57,63.15789474),
	(221,NULL,'Bakht Baidar ',2,45,12,NULL,57,78.94736842),
	(222,NULL,'Syed Muhammad Ali Shah ',2,28,27,2,57,49.12280702),
	(223,NULL,'Shakeel Ahmad ',2,30,4,25,57,52.63157895),
	(224,NULL,'Naseem Hayat ',2,46,2,9,57,80.70175439),
	(225,NULL,'Meher Taj Roghani ',2,49,1,7,57,85.96491228),
	(226,NULL,'Nadia Sher ',2,26,5,26,57,45.61403509),
	(227,NULL,'Aisha Naeem ',2,56,NULL,1,57,98.24561404),
	(228,NULL,'Maliha Tanveer ',2,23,32,2,57,40.35087719),
	(229,NULL,'Zareen Riaz ',2,53,1,3,57,92.98245614),
	(230,NULL,'Nargas ',2,49,5,3,57,85.96491228),
	(231,NULL,'Nageena Khan ',2,47,3,7,57,82.45614035),
	(232,NULL,'Dina Naz ',2,39,18,NULL,57,68.42105263),
	(233,NULL,'Bibi Fozia ',2,39,9,9,57,68.42105263),
	(234,NULL,'Romana Jalil ',2,49,4,4,57,85.96491228),
	(235,NULL,'Uzma Khan ',2,46,3,8,57,80.70175439),
	(236,NULL,'Najma Shaheen ',2,43,2,12,57,75.43859649),
	(237,NULL,'Amina Sardar ',2,49,4,4,57,85.96491228),
	(238,NULL,'Roqia Hina ',2,40,4,13,57,70.17543860),
	(239,NULL,'Sobia Shahid ',2,25,15,17,57,43.85964912),
	(240,NULL,'Rashada Riffat ',2,53,2,2,57,92.98245614),
	(241,NULL,'Anisa Zab Tahirheli ',2,39,9,9,57,68.42105263),
	(242,NULL,'Meraj Hamayun Khan ',2,49,8,NULL,57,85.96491228),
	(243,NULL,'Yasmeen Pir Muhammad ',2,43,13,1,57,75.43859649),
	(244,NULL,'Khatoon Bibi ',2,50,3,4,57,87.71929825),
	(245,NULL,'Nighat Orakzai ',2,28,28,1,57,49.12280702),
	(246,NULL,'Soran Singh ',2,42,5,10,57,73.68421053),
	(247,NULL,'Askar Pervaiz ',2,48,1,8,57,84.21052632),
	(248,NULL,'Fredrick Azeem ',2,49,5,3,57,85.96491228),
	(249,NULL,'Zia Ullah Afridi ',3,4,46,1,51,7.84313726),
	(250,NULL,'Shokat Yousafzai ',3,28,22,1,51,54.90196078),
	(251,NULL,'Javid Naseem ',3,46,5,NULL,51,90.19607843),
	(252,NULL,'Arif Yosaf ',3,34,17,NULL,51,66.66666667),
	(253,NULL,'Yaseen Khalil ',3,39,11,1,51,76.47058824),
	(254,NULL,'Fazal e Elahi ',3,27,22,2,51,52.94117647),
	(255,NULL,'Mehmood Jan ',3,43,NULL,8,51,84.31372549),
	(256,NULL,'Arbab Akbar Hayat Khan ',3,2,1,NULL,3,66.66666667),
	(257,NULL,'Arbab Jehandad Khan ',3,43,8,NULL,51,84.31372549),
	(258,NULL,'Shah Farman ',3,32,19,NULL,51,62.74509804),
	(259,NULL,'Syed Muhammad Ishtiaq ',3,20,28,3,51,39.21568627),
	(260,NULL,'Khaleeq ur Rehman ',3,36,9,6,51,70.58823529),
	(261,NULL,'Parvez Khattak ',3,15,36,NULL,51,29.41176471),
	(262,NULL,'Jamshid ud Din ',3,27,24,NULL,51,52.94117647),
	(263,NULL,'Muhammad Idrees Khan ',3,26,25,NULL,51,50.98039216),
	(264,NULL,'Qurban Khan ',3,45,4,2,51,88.23529412),
	(265,NULL,'Fazal e Shakoor Khan ',3,34,17,NULL,51,66.66666667),
	(266,NULL,'Sultan Muhammad Khan ',3,26,25,NULL,51,50.98039216),
	(267,NULL,'Arshad Ali Khan ',3,44,5,2,51,86.27450980),
	(268,NULL,'Khalid Khan ',3,28,21,2,51,54.90196078),
	(269,NULL,'Sikandar Hayat Khan ',3,29,22,NULL,51,56.86274510),
	(270,NULL,'Muhammad Arif Khan ',3,32,14,5,51,62.74509804),
	(271,NULL,'Ahmad Khan Bahadur ',3,12,36,3,51,23.52941176),
	(272,NULL,'Muhammad Zahid Durrani ',3,16,17,18,51,31.37254902),
	(273,NULL,'Obaid Ullah Mayar ',3,11,39,1,51,21.56862745),
	(274,NULL,'Iftikhar Ali Mushwani ',3,26,12,13,51,50.98039216),
	(275,NULL,'Jamshid Khan, session 4th ',3,35,7,9,51,68.62745098),
	(276,NULL,'Gohar Ali Shah ',3,9,42,NULL,51,17.64705882),
	(277,NULL,'Tufail Anjum ',3,31,20,NULL,51,60.78431373),
	(278,NULL,'Atif Khan ',3,25,25,1,51,49.01960784),
	(279,NULL,'Babar Khan ',3,35,16,NULL,51,68.62745098),
	(280,NULL,'Shahram Khan ',3,30,14,7,51,58.82352941),
	(281,NULL,'Muhammad Ali Taraki ',3,7,43,1,51,13.72549020),
	(282,NULL,'Abdul Karim ',3,42,2,7,51,82.35294118),
	(283,NULL,'Asad Qaisar ',3,34,17,NULL,51,66.66666667),
	(284,NULL,'Muhammad Sheraz ',3,40,4,7,51,78.43137255),
	(285,NULL,'Amjad Khan Afridi ',3,20,28,3,51,39.21568627),
	(286,NULL,'Ziaullah Khan Bangash ',3,34,17,NULL,51,66.66666667),
	(287,NULL,'Imtiaz Shahid ',3,40,6,5,51,78.43137255),
	(288,NULL,'Gul Sahib Khan ',3,30,21,NULL,51,58.82352941),
	(289,NULL,'Malik Qasim Khattak ',3,31,12,8,51,60.78431373),
	(290,NULL,'Shah Faisal Khan ',3,31,20,NULL,51,60.78431373),
	(291,NULL,'Mufti Syed Janan ',3,28,17,6,51,54.90196078),
	(292,NULL,'Mushtaq Ahmad Ghani ',3,38,8,5,51,74.50980392),
	(293,NULL,'Sardar Mehtab Ahmad Khan ',3,25,16,10,51,49.01960784),
	(294,NULL,'Haji Qalandar Lodhi ',3,37,7,7,51,72.54901961),
	(295,NULL,'Sardar Aurangzeb Nalota ',3,44,4,3,51,86.27450980),
	(296,NULL,'Sardar Muhammad Idress ',3,29,12,10,51,56.86274510),
	(297,NULL,'Raja Faisal Zaman ',3,22,13,16,51,43.13725490),
	(298,NULL,'Akbar Ayub Khan ',3,24,17,10,51,47.05882353),
	(299,NULL,'Gohar Nawaz Khan ',3,6,43,2,51,11.76470588),
	(300,NULL,'Faisal Zaman ',3,15,35,1,51,29.41176471),
	(301,NULL,'Sardar Zahoor Ahmad ',3,24,5,22,51,47.05882353),
	(302,NULL,'Mian Zia ur Rehman ',3,23,8,20,51,45.09803922),
	(303,NULL,'Saleh Muhammad ',3,17,4,30,51,33.33333333),
	(304,NULL,'Wajeh uz Zaman Khan ',3,12,28,11,51,23.52941176),
	(305,NULL,'Al Haj Ibrar Hussain ',3,8,7,36,51,15.68627451),
	(306,NULL,'Zareen Gul ',3,44,5,2,51,86.27450980),
	(307,NULL,'Nawab Zada Wali M. Khan ',3,38,10,3,51,74.50980392),
	(308,NULL,'Shah Hussain Khan ',3,40,8,3,51,78.43137255),
	(309,NULL,'Abdul Haq Khan ',3,15,30,6,51,29.41176471),
	(310,NULL,'Muhammad Asmatullah ',3,17,34,NULL,51,33.33333333),
	(311,NULL,'Abdul Sattar Khan ',3,18,33,NULL,51,35.29411765),
	(312,NULL,'Ali Amin Khan ',3,10,41,NULL,51,19.60784314),
	(313,NULL,'Sami Ullah ',3,14,37,NULL,51,27.45098039),
	(314,NULL,'Maulana Lutf ur Rehman ',3,24,27,NULL,51,47.05882353),
	(315,NULL,'Ikram Ullah Ghandapur , ',3,19,19,13,51,37.25490196),
	(316,NULL,'Javed Akbar Khan ',3,29,20,2,51,56.86274510),
	(317,NULL,'Mahmood Ahmad Khan ',3,27,12,12,51,52.94117647),
	(318,NULL,'Azam Khan Durrani 4th ',3,27,9,15,51,52.94117647),
	(319,NULL,'Fakhre Azam Wazir ',3,19,29,3,51,37.25490196),
	(320,NULL,'Shah Muhammad Khan ',3,21,11,19,51,41.17647059),
	(321,NULL,'Malik Riaz Khan ',3,24,19,8,51,47.05882353),
	(322,NULL,'Anwar Hayat Khan ',3,30,4,17,51,58.82352941),
	(323,NULL,'Noor Saleem Malik ',3,24,27,NULL,51,47.05882353),
	(324,NULL,'Munawar Khan Advocate ',3,38,9,4,51,74.50980392),
	(325,NULL,'Sardar Hussain ',3,26,25,NULL,51,50.98039216),
	(326,NULL,'Habib ur Rehman ',3,38,7,6,51,74.50980392),
	(327,NULL,'Maulana Mufti Fazal Ghafoor ',3,30,16,5,51,58.82352941),
	(328,NULL,'Fazal Hakim ',3,33,1,17,51,64.70588235),
	(329,NULL,'Azizullah Khan ',3,38,2,11,51,74.50980392),
	(330,NULL,'Amjad Ali ',3,32,16,3,51,62.74509804),
	(331,NULL,'Muhibullah Khan ',3,24,17,10,51,47.05882353),
	(332,NULL,'Mahmood Khan ',3,29,21,1,51,56.86274510),
	(333,NULL,'Syed Jafar Shah ',3,27,16,8,51,52.94117647),
	(334,NULL,'Haidar Ali Khan ',3,27,20,4,51,52.94117647),
	(335,NULL,'Muhammad Rashad Khan ',3,26,24,1,51,50.98039216),
	(336,NULL,'Abdul Munim ',3,34,16,1,51,66.66666667),
	(337,NULL,'Saleem Khan ',3,28,21,2,51,54.90196078),
	(338,NULL,'Sardar Hussian ',3,17,33,1,51,33.33333333),
	(339,NULL,'Inayat Ullah ',3,33,14,4,51,64.70588235),
	(340,NULL,'Muhammad Ali ',3,16,26,9,51,31.37254902),
	(341,NULL,'Behram Khan ',3,26,7,3,36,72.22222222),
	(342,NULL,'Mazafar Said ',3,35,16,NULL,51,68.62745098),
	(343,NULL,'Siraj Ul Haq ',3,10,2,3,15,66.66666667),
	(344,NULL,'Saeed Gul ',3,31,19,1,51,60.78431373),
	(345,NULL,'Bakht Baidar ',3,44,4,3,51,86.27450980),
	(346,NULL,'Syed Muhammad Ali Shah ',3,21,28,2,51,41.17647059),
	(347,NULL,'Shakeel Ahmad ',3,19,17,15,51,37.25490196),
	(348,NULL,'Naseem Hayat ',3,46,NULL,5,51,90.19607843),
	(349,NULL,'Meher Taj Roghani ',3,50,NULL,1,51,98.03921569),
	(350,NULL,'Nadia Sher ',3,11,20,20,51,21.56862745),
	(351,NULL,'Aisha Naeem ',3,51,NULL,NULL,51,99.99999000),
	(352,NULL,'Maliha Tanveer ',3,11,37,3,51,21.56862745),
	(353,NULL,'Zareen Riaz ',3,45,2,4,51,88.23529412),
	(354,NULL,'Nargas ',3,39,10,2,51,76.47058824),
	(355,NULL,'Nageena Khan ',3,51,NULL,NULL,51,99.99999000),
	(356,NULL,'Dina Naz ',3,34,5,12,51,66.66666667),
	(357,NULL,'Bibi Fozia ',3,35,7,9,51,68.62745098),
	(358,NULL,'Romana Jalil ',3,25,7,19,51,49.01960784),
	(359,NULL,'Uzma Khan ',3,29,8,14,51,56.86274510),
	(360,NULL,'Najma Shaheen ',3,47,3,1,51,92.15686275),
	(361,NULL,'Amina Sardar ',3,33,13,5,51,64.70588235),
	(362,NULL,'Roqia Hina ',3,41,4,6,51,80.39215686),
	(363,NULL,'Sobia Shahid ',3,29,13,9,51,56.86274510),
	(364,NULL,'Rashada Riffat ',3,48,2,1,51,94.11764706),
	(365,NULL,'Anisa Zab Tahirheli ',3,39,3,9,51,76.47058824),
	(366,NULL,'Meraj Hamayun Khan ',3,43,NULL,8,51,84.31372549),
	(367,NULL,'Yasmeen Pir Muhammad ',3,31,15,5,51,60.78431373),
	(368,NULL,'Khatoon Bibi ',3,26,15,10,51,50.98039216),
	(369,NULL,'Nighat Orakzai ',3,21,28,2,51,41.17647059),
	(370,NULL,'Soran Singh ',3,25,4,13,51,49.01960784),
	(371,NULL,'Askar Pervaiz ',3,50,1,NULL,51,98.03921569),
	(372,NULL,'Fredrick Azeem ',3,33,4,14,51,64.70588235),
	(373,NULL,'Zia Ullah Afridi ',4,0,8,NULL,8,0.00000000),
	(374,NULL,'Shokat Yousafzai ',4,8,NULL,NULL,8,99.99999000),
	(375,NULL,'Javid Naseem ',4,6,2,NULL,8,75.00000000),
	(376,NULL,'Arif Yosaf ',4,8,NULL,NULL,8,99.99999000),
	(377,NULL,'Yaseen Khalil ',4,6,2,NULL,8,75.00000000),
	(378,NULL,'Fazal e Elahi ',4,8,NULL,NULL,8,99.99999000),
	(379,NULL,'Mehmood Jan ',4,6,2,NULL,8,75.00000000),
	(380,NULL,'Arbab Akbar Hayat Khan ',4,7,1,NULL,8,87.50000000),
	(381,NULL,'Arbab Jehandad Khan ',4,8,NULL,NULL,8,99.99999000),
	(382,NULL,'Shah Farman ',4,8,NULL,NULL,8,99.99999000),
	(383,NULL,'Syed Muhammad Ishtiaq ',4,8,NULL,NULL,8,99.99999000),
	(384,NULL,'Khaleeq ur Rehman ',4,8,NULL,NULL,8,99.99999000),
	(385,NULL,'Parvez Khattak ',4,8,NULL,NULL,8,99.99999000),
	(386,NULL,'Jamshid ud Din ',4,8,NULL,NULL,8,99.99999000),
	(387,NULL,'Muhammad Idrees Khan ',4,7,1,NULL,8,87.50000000),
	(388,NULL,'Qurban Khan ',4,6,2,NULL,8,75.00000000),
	(389,NULL,'Fazal e Shakoor Khan ',4,5,3,NULL,8,62.50000000),
	(390,NULL,'Sultan Muhammad Khan ',4,3,5,NULL,8,37.50000000),
	(391,NULL,'Arshad Ali Khan ',4,8,NULL,NULL,8,99.99999000),
	(392,NULL,'Khalid Khan ',4,7,1,NULL,8,87.50000000),
	(393,NULL,'Sikandar Hayat Khan ',4,8,NULL,NULL,8,99.99999000),
	(394,NULL,'Muhammad Arif Khan ',4,8,NULL,NULL,8,99.99999000),
	(395,NULL,'Ahmad Khan Bahadur ',4,4,4,NULL,8,50.00000000),
	(396,NULL,'Muhammad Zahid Durrani ',4,3,2,3,8,37.50000000),
	(397,NULL,'Obaid Ullah Mayar ',4,5,3,NULL,8,62.50000000),
	(398,NULL,'Iftikhar Ali Mushwani ',4,8,NULL,NULL,8,99.99999000),
	(399,NULL,'Jamshid Khan, session 4th ',4,5,3,NULL,8,62.50000000),
	(400,NULL,'Gohar Ali Shah ',4,0,8,NULL,8,0.00000000),
	(401,NULL,'Tufail Anjum ',4,8,NULL,NULL,8,99.99999000),
	(402,NULL,'Atif Khan ',4,8,NULL,NULL,8,99.99999000),
	(403,NULL,'Babar Khan ',4,6,2,NULL,8,75.00000000),
	(404,NULL,'Shahram Khan ',4,8,NULL,NULL,8,99.99999000),
	(405,NULL,'Muhammad Ali Taraki ',4,5,3,NULL,8,62.50000000),
	(406,NULL,'Abdul Karim ',4,6,2,NULL,8,75.00000000),
	(407,NULL,'Asad Qaisar ',4,8,NULL,NULL,8,99.99999000),
	(408,NULL,'Muhammad Sheraz ',4,5,NULL,3,8,62.50000000),
	(409,NULL,'Amjad Khan Afridi ',4,6,NULL,2,8,75.00000000),
	(410,NULL,'Ziaullah Khan Bangash ',4,7,1,NULL,8,87.50000000),
	(411,NULL,'Imtiaz Shahid ',4,8,NULL,NULL,8,99.99999000),
	(412,NULL,'Gul Sahib Khan ',4,6,2,NULL,8,75.00000000),
	(413,NULL,'Malik Qasim Khattak ',4,8,NULL,NULL,8,99.99999000),
	(414,NULL,'Shah Faisal Khan ',4,8,NULL,NULL,8,99.99999000),
	(415,NULL,'Mufti Syed Janan ',4,0,NULL,8,8,0.00000000),
	(416,NULL,'Mushtaq Ahmad Ghani ',4,8,NULL,NULL,8,99.99999000),
	(417,NULL,'Sardar Mehtab Ahmad Khan ',4,1,NULL,7,8,12.50000000),
	(418,NULL,'Haji Qalandar Lodhi ',4,7,NULL,1,8,87.50000000),
	(419,NULL,'Sardar Aurangzeb Nalota ',4,4,NULL,4,8,50.00000000),
	(420,NULL,'Sardar Muhammad Idress ',4,7,1,NULL,8,87.50000000),
	(421,NULL,'Raja Faisal Zaman ',4,7,NULL,1,8,87.50000000),
	(422,NULL,'Akbar Ayub Khan ',4,8,NULL,NULL,8,99.99999000),
	(423,NULL,'Gohar Nawaz Khan ',4,4,4,NULL,8,50.00000000),
	(424,NULL,'Faisal Zaman ',4,3,5,NULL,8,37.50000000),
	(425,NULL,'Sardar Zahoor Ahmad ',4,4,NULL,4,8,50.00000000),
	(426,NULL,'Mian Zia ur Rehman ',4,7,NULL,1,8,87.50000000),
	(427,NULL,'Saleh Muhammad ',4,4,NULL,4,8,50.00000000),
	(428,NULL,'Wajeh uz Zaman Khan ',4,3,1,4,8,37.50000000),
	(429,NULL,'Al Haj Ibrar Hussain ',4,1,7,NULL,8,12.50000000),
	(430,NULL,'Zareen Gul ',4,7,1,NULL,8,87.50000000),
	(431,NULL,'Nawab Zada Wali M. Khan ',4,6,NULL,2,8,75.00000000),
	(432,NULL,'Shah Hussain Khan ',4,8,NULL,NULL,8,99.99999000),
	(433,NULL,'Abdul Haq Khan ',4,5,2,1,8,62.50000000),
	(434,NULL,'Muhammad Asmatullah ',4,7,1,NULL,8,87.50000000),
	(435,NULL,'Abdul Sattar Khan ',4,5,1,2,8,62.50000000),
	(436,NULL,'Ali Amin Khan ',4,8,NULL,NULL,8,99.99999000),
	(437,NULL,'Sami Ullah ',4,7,1,NULL,8,87.50000000),
	(438,NULL,'Maulana Lutf ur Rehman ',4,8,NULL,NULL,8,99.99999000),
	(439,NULL,'Ikram Ullah Ghandapur , ',4,8,NULL,NULL,8,99.99999000),
	(440,NULL,'Javed Akbar Khan ',4,7,1,NULL,8,87.50000000),
	(441,NULL,'Mahmood Ahmad Khan ',4,8,NULL,NULL,8,99.99999000),
	(442,NULL,'Azam Khan Durrani 4th ',4,7,NULL,1,8,87.50000000),
	(443,NULL,'Fakhre Azam Wazir ',4,5,3,NULL,8,62.50000000),
	(444,NULL,'Shah Muhammad Khan ',4,3,5,NULL,8,37.50000000),
	(445,NULL,'Malik Riaz Khan ',4,6,2,NULL,8,75.00000000),
	(446,NULL,'Anwar Hayat Khan ',4,7,NULL,1,8,87.50000000),
	(447,NULL,'Noor Saleem Malik ',4,8,NULL,NULL,8,99.99999000),
	(448,NULL,'Munawar Khan Advocate ',4,8,NULL,NULL,8,99.99999000),
	(449,NULL,'Sardar Hussain ',4,8,NULL,NULL,8,99.99999000),
	(450,NULL,'Habib ur Rehman ',4,8,NULL,NULL,8,99.99999000),
	(451,NULL,'Maulana Mufti Fazal Ghafoor ',4,8,NULL,NULL,8,99.99999000),
	(452,NULL,'Fazal Hakim ',4,8,NULL,NULL,8,99.99999000),
	(453,NULL,'Azizullah Khan ',4,8,NULL,NULL,8,99.99999000),
	(454,NULL,'Amjad Ali ',4,8,NULL,NULL,8,99.99999000),
	(455,NULL,'Muhibullah Khan ',4,8,NULL,NULL,8,99.99999000),
	(456,NULL,'Mahmood Khan ',4,8,NULL,NULL,8,99.99999000),
	(457,NULL,'Syed Jafar Shah ',4,8,NULL,NULL,8,99.99999000),
	(458,NULL,'Haidar Ali Khan ',4,8,NULL,NULL,8,99.99999000),
	(459,NULL,'Muhammad Rashad Khan ',4,5,3,NULL,8,62.50000000),
	(460,NULL,'Abdul Munim ',4,8,NULL,NULL,8,99.99999000),
	(461,NULL,'Saleem Khan ',4,7,1,NULL,8,87.50000000),
	(462,NULL,'Sardar Hussian ',4,4,4,NULL,8,50.00000000),
	(463,NULL,'Inayat Ullah ',4,8,NULL,NULL,8,99.99999000),
	(464,NULL,'Muhammad Ali ',4,8,NULL,NULL,8,99.99999000),
	(465,NULL,'Behram Khan ',4,4,1,3,8,50.00000000),
	(466,NULL,'Mazafar Said ',4,8,NULL,NULL,8,99.99999000),
	(467,NULL,'Siraj Ul Haq ',4,8,NULL,NULL,8,99.99999000),
	(468,NULL,'Saeed Gul ',4,8,NULL,NULL,8,99.99999000),
	(469,NULL,'Bakht Baidar ',4,7,1,NULL,8,87.50000000),
	(470,NULL,'Syed Muhammad Ali Shah ',4,1,7,NULL,8,12.50000000),
	(471,NULL,'Shakeel Ahmad ',4,3,5,NULL,8,37.50000000),
	(472,NULL,'Naseem Hayat ',4,6,NULL,2,8,75.00000000),
	(473,NULL,'Meher Taj Roghani ',4,8,NULL,NULL,8,99.99999000),
	(474,NULL,'Nadia Sher ',4,5,3,NULL,8,62.50000000),
	(475,NULL,'Aisha Naeem ',4,8,NULL,NULL,8,99.99999000),
	(476,NULL,'Maliha Tanveer ',4,1,7,NULL,8,12.50000000),
	(477,NULL,'Zareen Riaz ',4,8,NULL,NULL,8,99.99999000),
	(478,NULL,'Nargas ',4,4,4,NULL,8,50.00000000),
	(479,NULL,'Nageena Khan ',4,7,NULL,1,8,87.50000000),
	(480,NULL,'Dina Naz ',4,8,NULL,NULL,8,99.99999000),
	(481,NULL,'Bibi Fozia ',4,8,NULL,NULL,8,99.99999000),
	(482,NULL,'Romana Jalil ',4,0,NULL,8,8,0.00000000),
	(483,NULL,'Uzma Khan ',4,8,NULL,NULL,8,99.99999000),
	(484,NULL,'Najma Shaheen ',4,8,NULL,NULL,8,99.99999000),
	(485,NULL,'Amina Sardar ',4,8,NULL,NULL,8,99.99999000),
	(486,NULL,'Roqia Hina ',4,8,NULL,NULL,8,99.99999000),
	(487,NULL,'Sobia Shahid ',4,0,8,NULL,8,0.00000000),
	(488,NULL,'Rashada Riffat ',4,8,NULL,NULL,8,99.99999000),
	(489,NULL,'Anisa Zab Tahirheli ',4,8,NULL,NULL,8,99.99999000),
	(490,NULL,'Meraj Hamayun Khan ',4,8,NULL,NULL,8,99.99999000),
	(491,NULL,'Yasmeen Pir Muhammad ',4,8,NULL,NULL,8,99.99999000),
	(492,NULL,'Khatoon Bibi ',4,8,NULL,NULL,8,99.99999000),
	(493,NULL,'Nighat Orakzai ',4,4,4,NULL,8,50.00000000),
	(494,NULL,'Soran Singh ',4,NULL,NULL,NULL,NULL,0.00000000),
	(495,NULL,'Askar Pervaiz ',4,8,NULL,NULL,8,99.99999000),
	(496,NULL,'Fredrick Azeem ',4,7,NULL,1,8,87.50000000);

/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table attendancedate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attendancedate`;

CREATE TABLE `attendancedate` (
  `attAttendanceID` int(11) NOT NULL AUTO_INCREMENT,
  `attAttendanceYear` int(11) NOT NULL,
  PRIMARY KEY (`attAttendanceID`),
  UNIQUE KEY `attAttendanceID_UNIQUE` (`attAttendanceID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `attendancedate` WRITE;
/*!40000 ALTER TABLE `attendancedate` DISABLE KEYS */;

INSERT INTO `attendancedate` (`attAttendanceID`, `attAttendanceYear`)
VALUES
	(1,1),
	(2,2),
	(3,3),
	(4,4);

/*!40000 ALTER TABLE `attendancedate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cbpcabinetposition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cbpcabinetposition`;

CREATE TABLE `cbpcabinetposition` (
  `idcbpCabinetPositionID` varchar(30) NOT NULL,
  PRIMARY KEY (`idcbpCabinetPositionID`),
  UNIQUE KEY `idcbpCabinetPositionID_UNIQUE` (`idcbpCabinetPositionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cbpcabinetposition` WRITE;
/*!40000 ALTER TABLE `cbpcabinetposition` DISABLE KEYS */;

INSERT INTO `cbpcabinetposition` (`idcbpCabinetPositionID`)
VALUES
	('Advisor of Minister'),
	('Minister'),
	('Parliamentary Secy'),
	('Senior Minister'),
	('Special Assistant');

/*!40000 ALTER TABLE `cbpcabinetposition` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table comitteetype
# ------------------------------------------------------------

DROP TABLE IF EXISTS `comitteetype`;

CREATE TABLE `comitteetype` (
  `comitteetypeID` varchar(50) NOT NULL,
  PRIMARY KEY (`comitteetypeID`),
  UNIQUE KEY `comitteetypeID_UNIQUE` (`comitteetypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `comitteetype` WRITE;
/*!40000 ALTER TABLE `comitteetype` DISABLE KEYS */;

INSERT INTO `comitteetype` (`comitteetypeID`)
VALUES
	('Legislative Committee'),
	('PAC'),
	('Select Committee'),
	('Special Committee'),
	('Standing Committee'),
	('Steering Committee');

/*!40000 ALTER TABLE `comitteetype` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table committee
# ------------------------------------------------------------

DROP TABLE IF EXISTS `committee`;

CREATE TABLE `committee` (
  `cmtCommitteeID` varchar(150) NOT NULL,
  `cmtChairedBy` varchar(45) DEFAULT NULL,
  `cmtFormationDate` date DEFAULT NULL,
  `cmtEndDate` date DEFAULT NULL,
  `cttCommitteeTypeID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cmtCommitteeID`),
  KEY `cttCommitteeTypeID_idx` (`cttCommitteeTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='\n\n\n';

LOCK TABLES `committee` WRITE;
/*!40000 ALTER TABLE `committee` DISABLE KEYS */;

INSERT INTO `committee` (`cmtCommitteeID`, `cmtChairedBy`, `cmtFormationDate`, `cmtEndDate`, `cttCommitteeTypeID`)
VALUES
	('Ehtisaab Commission Bill,2013 ','Pervaiz Khattak ',NULL,NULL,'Select Committee '),
	('Finance ',NULL,NULL,NULL,NULL),
	('Legislative Committee ','Asad Qaiser ',NULL,NULL,'Legislative Committee '),
	('Public Accounts Commitee ','Asad Qaiser ',NULL,NULL,'PAC '),
	('Public Accounts Committee ','Asad Qaiser ',NULL,NULL,'PAC '),
	('Right to Information ','Sobia Shahid ',NULL,NULL,'Select Committee '),
	('Select Committee on Local Government ','Inayat Ullah ',NULL,NULL,'Select Committee '),
	('STANDING COMMITTEE NO. 01 ON PROCEDURE & CONDUCT OF BUSINESS RULES, PRIVILEGES & IMPLEMENTATION OF GOVERNMENT ASSURANCES ','Meher Taj Roghani ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 02 ON LAW REFORMS AND CONTROL ON SUBORDINATE LEGISLATION ','Asad Qaiser ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 03 ON JUDICAL ','Zia ullah Khan Bangash ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 04 ON HOUSE AND LIBRARY ','Meher Taj Roghani ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 05 ON AGRICULTURE, LIVESTOCK AND COOPERATION DEPARTMENT ','Arbab Jahandad Khan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 06 ON AUQAF, HAJJ, RELIGIOUS AND MINORITY AFFAIRS DEPARTMENT ','Malik Noor Salim ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 07 ON COMMUNICATION AND WORKS DEPARTMENT ','Iftikhar Ali Mushwani ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 08 ON HIGHER EDUCATION, ARCHIVES AND LIBRARIES DEPARTMENT ','Saleh Mohammad ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 09 ON EXCISE AND TAXATION DEPARTMENT ','Jamshaid Khan Mohmand ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 10 ON FINANCE DEPARTMENT ','Sahibzada Sanaullah ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 11 ON ENVIRONMENT DEPARTMENT ','Wajeh uz Zaman Khan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 12 ON HEALTH DEPARTMENT ','Mehmood Jan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 13 ON HOME AND TRIBAL AFFARIS DEPARTMENT ','Shah Hussain Khan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 14 ON INDUSTRIES, AND TECHNICAL EDUCATION DEPARTMENT ','Babar Khan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 15 ON INFORMATION AND PUBLIC RELATIONS DEPARTMENT ','Shaukat Ali Yousafzai ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 16 ON IRRIGATION AND POWER DEPARTMENT ','Mufti Said Janan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 17 ON LAW, PARLIAMENTARY AFFAIRS AND HUMAN RIGHTS DEPARTMENT ','Sultan Mohammad khan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 18 ON LOCAL GOVERNMENT, ELECTIONS AND RURAL DEVELOPMENT DEPARTMENT ','Maulana Lutf ur Rehman ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 19 ON FOOD DEPARTMENT ','Javed Nasim ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 20 ON PLANNING AND DEVEOPMENT DEPARTMENT ','Syed Mohammad Ali ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 21 ON POPULATION WELFARE DEPARTMENT ','Naseem Hayat ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 22 ON REVENUE DEPARTMENT ','Mufti Fazal Ghafoor ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 23 ON ADMINISTRATION DEPARTMENT ','Anisa zeb Tahirkheli ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 24 ON ZAKAT, USHR, SOCIAL WELFARE AND WOMEN EMPOWERMENT DEPARTMENT ','Nawab Zada Wali Mohammad Khan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 25 ON ESTABLISHMENT DEPARTMENT ','Faisal Zaman ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 26 ON ELEMENTARY AND SECONDARY EDUCATION DEPARTMENT ','Mohammad Arif ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 27 ON SPORTS, CULTURE, TOURSIM, MUSEUMS ARCHAEOLOGY AND YOUTH AFFAIRS DEPARTMENT ','Abdul Sattar Khan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 29 ON HOUSING DEPARMENT/PROVINCIAL HOUSING AUTHORITY ','Sardar Muhammad Idrees ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 30 ON INTER PROVINCIAL COORDINATION DEPARTMENT ','Muhammad Idrees ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 31 ON ENERGY AND POWER DEPARTMENT ','Qurban Ali Khan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 32 ON TRANSPORT DEPARTMENT ','Malik Riaz Khan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 33 ON PUBLIC HEALTH ENGINEERING DEPARTMENT ','Gul Sahib Khan ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 34 ON LABOUR DEPARTMENT ','Jafar Shah ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 35 ON MINERALS DEVELOPMENT DEPARTMENT ','Sardar Aurangzeb Nalota ',NULL,NULL,'Standing Committee '),
	('STANDING COMMITTEE NO. 36 ON RELIEF, REHABILITATION AND SETTLEMENT DEPARTMENT ','Ehtesham Javed Akber Khan ',NULL,NULL,'Standing Committee '),
	('Steering Committee on Friends of Scotland ','Dr.Haider Ali Khan ',NULL,NULL,'Steering Committee '),
	('Steeting Committee on Capacity Building Abroad ','Anisa zeb Tahirkheli ',NULL,NULL,'Steering Committee '),
	('The Provincial Assembly of Khyber Pakhtunkhwa (Salaries and Allowances of Members)Act,1974) ',NULL,NULL,NULL,'Special Commitee ');

/*!40000 ALTER TABLE `committee` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table constituency
# ------------------------------------------------------------

DROP TABLE IF EXISTS `constituency`;

CREATE TABLE `constituency` (
  `cntConstituencyID` varchar(50) NOT NULL,
  PRIMARY KEY (`cntConstituencyID`),
  UNIQUE KEY `cntContinuencyID_UNIQUE` (`cntConstituencyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `constituency` WRITE;
/*!40000 ALTER TABLE `constituency` DISABLE KEYS */;

INSERT INTO `constituency` (`cntConstituencyID`)
VALUES
	('MR-2'),
	('MR-3'),
	('PK-01 Peshawar-I'),
	('PK-02 Peshawar-II'),
	('PK-03 Peshawar-III'),
	('PK-04 Peshawar-IV'),
	('PK-05 Peshawar-V'),
	('PK-06 Peshawar-VI'),
	('PK-07 Peshawar-VII'),
	('PK-08 Peshawar-VIII'),
	('PK-09 Peshawar-IX'),
	('PK-10 Peshawar-X'),
	('PK-11 Peshawar-XI'),
	('PK-12 Nowshera-I'),
	('PK-13 Nowshera-II'),
	('PK-14 Nowshera-III'),
	('PK-15 Nowshera-IV'),
	('PK-16 Nowshera-V'),
	('PK-17 Charsadda-I'),
	('PK-18 Charsadda-II'),
	('PK-19 Charsadda-III'),
	('PK-20 Charsadda-IV'),
	('PK-21 Charsadda-V'),
	('PK-22 Charsadda-VI'),
	('PK-23 Mardan-I'),
	('PK-24 Mardan-II'),
	('PK-25 Mardan-III'),
	('PK-26 Mardan-IV'),
	('PK-27 Mardan-V'),
	('PK-28 Mardan-VI'),
	('PK-29 Mardan-VII'),
	('PK-30 Mardan-VIII'),
	('PK-31 Swabi-I'),
	('PK-32 Swabi-II'),
	('PK-33 Swabi-III'),
	('PK-34 Swabi-IV'),
	('PK-35 Swabi-V'),
	('PK-36 Swabi-VI'),
	('PK-37 Kohat-I'),
	('PK-38 Kohat-II'),
	('PK-39 Kohat-III'),
	('PK-40 Karak-I'),
	('PK-41 Karak-II'),
	('PK-42 Hangu-I'),
	('PK-43 Hangu-II'),
	('PK-44 Abbottabad-I'),
	('PK-45 Abbottabad-II'),
	('PK-46 Abbottabad-III'),
	('PK-47 Abbottabad-IV'),
	('PK-48 Abbottabad-V'),
	('PK-49 Haripur-I'),
	('PK-50 Haripur-II'),
	('PK-51 Haripur-III'),
	('PK-52 Haripur-IV'),
	('PK-53 Mansehra-I'),
	('PK-54 Mansehra-II'),
	('PK-55 Mansehra-III'),
	('PK-56 Mansehra-IV'),
	('PK-57 Mansehra-V'),
	('PK-58 Tor Ghar'),
	('PK-59 Batagram-I'),
	('PK-60 Batagram-II'),
	('PK-61 Kohistan-I'),
	('PK-62 Kohistan-II'),
	('PK-63 Kohistan-III'),
	('PK-64 D.I. Khan-I'),
	('PK-65 D.I. Khan-II'),
	('PK-66 D.I. Khan-III'),
	('PK-67 D.I. Khan-IV'),
	('PK-68 D.I. Khan-V'),
	('PK-69 Tank'),
	('PK-70 Bannu-I'),
	('PK-71 Bannu-II'),
	('PK-72 Bannu-III'),
	('PK-73 Bannu-IV'),
	('PK-74 Lakki Marwat-I'),
	('PK-75 Lakki Marwat-II'),
	('PK-76 Lakki Marwat-III'),
	('PK-77 Bunair-I'),
	('PK-78 Bunair-II'),
	('PK-79 Bunair-III'),
	('PK-80 Swat-I'),
	('PK-81 Swat-II'),
	('PK-82 Swat-III'),
	('PK-83 Swat-IV'),
	('PK-84 Swat-V'),
	('PK-85 Swat-VI'),
	('PK-86 Swat-VII'),
	('PK-87 Shangla-I'),
	('PK-88 Shangla-II'),
	('PK-89 Chitral-I'),
	('PK-90 Chitral-II'),
	('PK-91 Upper Dir-I'),
	('PK-92 Upper Dir-II'),
	('PK-93 Upper Dir-III'),
	('PK-94 Lower Dir-I'),
	('PK-95 Lower Dir-II'),
	('PK-96 Lower Dir-III'),
	('PK-97 Lower Dir-IV'),
	('PK-98 Malakand'),
	('PK-99 Malakand'),
	('WR-01'),
	('WR-02'),
	('WR-03'),
	('WR-04'),
	('WR-05'),
	('WR-06'),
	('WR-07'),
	('WR-08'),
	('WR-09'),
	('WR-10'),
	('WR-11'),
	('WR-12'),
	('WR-13'),
	('WR-14'),
	('WR-15'),
	('WR-16'),
	('WR-17'),
	('WR-19'),
	('WR-20'),
	('WR-21'),
	('WR-22');

/*!40000 ALTER TABLE `constituency` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table department
# ------------------------------------------------------------

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `dptDepartmentID` varchar(150) NOT NULL,
  PRIMARY KEY (`dptDepartmentID`),
  UNIQUE KEY `dptDepartmentID_UNIQUE` (`dptDepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;

INSERT INTO `department` (`dptDepartmentID`)
VALUES
	('Agriculture'),
	('Anti Corruption, Establishment & Provincial Inspection Team'),
	('Commerce & Industries'),
	('Communication & Works'),
	('Elementry & Secondary Education'),
	('Environment'),
	('Excise & Taxation'),
	('Finance'),
	('Food'),
	('Health'),
	('Higher Education and Information'),
	('Industries Commerce & Labour'),
	('Irrigation, Social Welfare, Special Education & Women Empowerment'),
	('Labour & Mineral Development'),
	('Law'),
	('Live Stock'),
	('Local Government, Elections & Rural Development'),
	('Mines & Mineral'),
	('P&D'),
	('Population Welfare'),
	('Prisons'),
	('Public Health Engineering'),
	('Relief Rehabilitation & Settlement '),
	('Revenue'),
	('Social Welfare'),
	('Tourism'),
	('Zakat, Ushar, Auqah, Hajj & Religious Affairs');

/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mpa
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mpa`;

CREATE TABLE `mpa` (
  `mpaID` int(11) NOT NULL AUTO_INCREMENT,
  `mpaName` varchar(50) NOT NULL,
  `mpaDescription` varchar(255) DEFAULT '',
  `mpaImageName` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mpaID`),
  UNIQUE KEY `mpaID_UNIQUE` (`mpaID`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

LOCK TABLES `mpa` WRITE;
/*!40000 ALTER TABLE `mpa` DISABLE KEYS */;

INSERT INTO `mpa` (`mpaID`, `mpaName`, `mpaDescription`, `mpaImageName`)
VALUES
	(1,'Jafar Shah','KP Politician','profile_image_none.png'),
	(2,'Mufti Said Janan ','KP Politician','profile_image_none.png'),
	(3,'Sardar Aurangzeb Nalota ','KP Politician','profile_image_none.png'),
	(4,'Zareen Gul ','KP Politician','profile_image_none.png'),
	(5,'Sikandar Hayat Khan ','KP Politician','profile_image_none.png'),
	(6,'Sardar Hussain Babak ','KP Politician','profile_image_none.png'),
	(7,'Anisa Zeb Tahirkheli ','KP Politician','profile_image_none.png'),
	(8,'Uzma Khan ','KP Politician','profile_image_none.png'),
	(9,'Abdul Karim ','KP Politician','profile_image_none.png'),
	(10,'Mulana Mufti Fazal Ghafoor ','KP Politician','profile_image_none.png'),
	(11,'Najma Shaheen ','KP Politician','profile_image_none.png'),
	(12,'Shah Hussain Khan ','KP Politician','profile_image_none.png'),
	(13,'Nighat Orakzai ','KP Politician','profile_image_none.png'),
	(14,'Shah Ram Khan ','KP Politician','profile_image_none.png'),
	(15,'Sobia Shahid ','KP Politician','profile_image_none.png'),
	(16,'Shah Farman ','KP Politician','profile_image_none.png'),
	(17,'Maulana Lutf ur Rehman ','KP Politician','profile_image_none.png'),
	(18,'Muhammad Ali Shah ','KP Politician','profile_image_none.png'),
	(19,'Munawar Khan Advocate ','KP Politician','profile_image_none.png'),
	(20,'Mohammad Ali ','KP Politician','profile_image_none.png'),
	(21,'Muzafar Said ','KP Politician','profile_image_none.png'),
	(22,'Imtiaz Shahid ','KP Politician','profile_image_none.png'),
	(23,'Saleem Khan ','KP Politician','saleem-khan.jpg'),
	(24,'Aamna Sardar ','KP Politician','profile_image_none.png'),
	(25,'Saleh Muhammad ','KP Politician','profile_image_none.png'),
	(26,'Inayat Ullah ','KP Politician','profile_image_none.png'),
	(27,'Bakht Baidar ','KP Politician','profile_image_none.png'),
	(28,'Sarda Hussain ','KP Politician','profile_image_none.png'),
	(29,'Gohar Ali Shah ','KP Politician','profile_image_none.png'),
	(30,'Noor Saleem Khan ','KP Politician','profile_image_none.png'),
	(31,'Habib-Ur-Rahman ','KP Politician','profile_image_none.png'),
	(32,'Meraj Hamayun Khan ','KP Politician','profile_image_none.png'),
	(33,'Shaukat Ali Yousafzai ','KP Politician','profile_image_none.png'),
	(34,'Mushtaq Ahmed Ghani ','KP Politician','profile_image_none.png'),
	(35,'Muhammad Asmatullah ','KP Politician','profile_image_none.png'),
	(36,'Muhammad Rashad Khan ','KP Politician','profile_image_none.png'),
	(37,'Mehmood Jan ','KP Politician','profile_image_none.png'),
	(38,'Azam Khan Durrani ','KP Politician','profile_image_none.png'),
	(39,'Abdul Munim ','KP Politician','profile_image_none.png'),
	(40,'Ahmed Khan Bahadur ','KP Politician','profile_image_none.png'),
	(41,'Saeed Gul ','KP Politician','profile_image_none.png'),
	(42,'Sahibzada Sanaullah ','KP Politician','profile_image_none.png'),
	(43,'Arif Yousaf ','KP Politician','profile_image_none.png'),
	(44,'Muhammmad Atif ','KP Politician','profile_image_none.png'),
	(45,'Raja Faisal Zaman ','KP Politician','profile_image_none.png'),
	(46,'Wajeh uz Zaman Khan ','KP Politician','profile_image_none.png'),
	(47,'Nawab Zada Wali Mohammad Khan ','KP Politician','profile_image_none.png'),
	(48,'Fakhr Azam Wazir ','KP Politician','profile_image_none.png'),
	(49,'Malik Riaz Khan ','KP Politician','profile_image_none.png'),
	(50,'Muhammad Idrees ','KP Politician','profile_image_none.png'),
	(51,'Qurban Ali Khan ','KP Politician','profile_image_none.png'),
	(52,'Arshad Ali ','KP Politician','profile_image_none.png'),
	(53,'Babar Khan ','KP Politician','profile_image_none.png'),
	(54,'Malik Qasim Khan Khattak ','KP Politician','profile_image_none.png'),
	(55,'Sardar Zahoor Ahmad ','KP Politician','profile_image_none.png'),
	(56,'Askar Pervaiz ','KP Politician','profile_image_none.png'),
	(57,'Ziaullah Khan ','KP Politician','profile_image_none.png'),
	(58,'Yaseen Khan Khalil ','KP Politician','profile_image_none.png'),
	(59,'Muhammad Ishtiaq ','KP Politician','profile_image_none.png'),
	(60,'Sultan Mohammad Khan ','KP Politician','profile_image_none.png'),
	(61,'Jamshaid Khan Mohmand ','KP Politician','profile_image_none.png'),
	(62,'Muhammad Sheeraz ','KP Politician','profile_image_none.png'),
	(63,'Gul Sahib Khan ','KP Politician','profile_image_none.png'),
	(64,'Abdul Sattar Khan ','KP Politician','profile_image_none.png'),
	(65,'Mahmood Ahmad Khan ','KP Politician','profile_image_none.png'),
	(66,'Frederick Azeem ','KP Politician','profile_image_none.png'),
	(67,'Fazl Elahi ','KP Politician','profile_image_none.png'),
	(68,'Arbab Jahandad Khan ','KP Politician','profile_image_none.png'),
	(69,'Mohammad Arif ','KP Politician','profile_image_none.png'),
	(70,'Muhammad Zahid Durrani ','KP Politician','profile_image_none.png'),
	(71,'Iftikhar Ali Mushwani ','KP Politician','profile_image_none.png'),
	(72,'Zia Ullah Khan Bangash ','KP Politician','profile_image_none.png'),
	(73,'Faisal Zaman ','KP Politician','profile_image_none.png'),
	(74,'Shah Mohammad ','KP Politician','profile_image_none.png'),
	(75,'Mehmood Khan ','KP Politician','profile_image_none.png'),
	(76,'Nagina Khan ','KP Politician','profile_image_none.png'),
	(77,'Bibi Fozia ','KP Politician','profile_image_none.png'),
	(78,'Rashda Riffat ','KP Politician','profile_image_none.png'),
	(79,'Yasmeen Pir Mohammad Khan ','KP Politician','profile_image_none.png'),
	(80,'Haider Ali Khan ','KP Politician','profile_image_none.png'),
	(81,'Javed Nasim ','KP Politician','profile_image_none.png'),
	(82,'Khalid Khan ','KP Politician','profile_image_none.png'),
	(83,'Amjad Khan Afridi ','KP Politician','profile_image_none.png'),
	(84,'Shah Faisal Khan ','KP Politician','profile_image_none.png'),
	(85,'Qalandar Khan Lodhi ','KP Politician','profile_image_none.png'),
	(86,'Sardar Muhammad Idrees ','KP Politician','profile_image_none.png'),
	(87,'Gohar Nawaz Khan ','KP Politician','profile_image_none.png'),
	(88,'Mian Zia Ur Rehman ','KP Politician','profile_image_none.png'),
	(89,'Amjad Ali ','KP Politician','profile_image_none.png'),
	(90,'Naseem Hayat ','KP Politician','profile_image_none.png'),
	(91,'Zareen Riaz ','KP Politician','profile_image_none.png'),
	(92,'Dina Naz ','KP Politician','profile_image_none.png'),
	(93,'Romana Jalil ','KP Politician','profile_image_none.png'),
	(94,'Ruqia Hina ','KP Politician','profile_image_none.png'),
	(95,'Ihtesham Javed Akber Khan ','KP Politician','profile_image_none.png'),
	(96,'Arbab Muhammad Wasim Khan ','KP Politician','profile_image_none.png'),
	(97,'Khaliq Ur Rehman ','KP Politician','profile_image_none.png'),
	(98,'Pervaiz Khattak ','KP Politician','profile_image_none.png'),
	(99,'Jamshaid ud din ','KP Politician','profile_image_none.png'),
	(100,'Fazle Shakoor Khan ','KP Politician','profile_image_none.png'),
	(101,'Ubaid Ullah Mayar ','KP Politician','profile_image_none.png'),
	(102,'Tufail Anjum ','KP Politician','profile_image_none.png'),
	(103,'Mohammad Ali Tarkai ','KP Politician','profile_image_none.png'),
	(104,'Akbar Ayub Khan ','KP Politician','profile_image_none.png'),
	(105,'Ibrar Hussain ','KP Politician','profile_image_none.png'),
	(106,'Abdul Haq Khan ','KP Politician','profile_image_none.png'),
	(107,'Ali Amin Gandapur ','KP Politician','profile_image_none.png'),
	(108,'Sami Ulllah ','KP Politician','profile_image_none.png'),
	(109,'Anwar Hayat Khan ','KP Politician','profile_image_none.png'),
	(110,'Fazal Hakim ','KP Politician','profile_image_none.png'),
	(111,'Azizullah Khan ','KP Politician','profile_image_none.png'),
	(112,'Muhibullah Khan ','KP Politician','profile_image_none.png'),
	(113,'Izazul Mulk ','KP Politician','profile_image_none.png'),
	(114,'Sardar Fareed ','KP Politician','profile_image_none.png'),
	(115,'Sardar Ikramullah Gandapur ','KP Politician','profile_image_none.png'),
	(116,'Shakeel Ahmad ','KP Politician','profile_image_none.png'),
	(117,'Asad Qaiser ','KP Politician','profile_image_none.png'),
	(118,'Meher Taj Roghani ','KP Politician','profile_image_none.png'),
	(119,'Nadia Sher ','KP Politician','profile_image_none.png'),
	(120,'Aisha Naeem ','KP Politician','profile_image_none.png'),
	(121,'Maliha Ali Asghar Khan ','KP Politician','profile_image_none.png'),
	(122,'Nargis ','KP Politician','profile_image_none.png'),
	(123,'Khatoon Bibi ','KP Politician','profile_image_none.png');

/*!40000 ALTER TABLE `mpa` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mpaattendance
# ------------------------------------------------------------

DROP VIEW IF EXISTS `mpaattendance`;

CREATE TABLE `mpaattendance` (
   `mpaName` VARCHAR(50) NOT NULL,
   `TotalPresents` DECIMAL(32) NULL DEFAULT NULL,
   `TotalAbsents` DECIMAL(32) NULL DEFAULT NULL,
   `TotalApplications` DECIMAL(32) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table mpadepartmentcabinetpositions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mpadepartmentcabinetpositions`;

CREATE TABLE `mpadepartmentcabinetpositions` (
  `mdcpID` int(11) NOT NULL,
  `dcpMPA` int(11) DEFAULT NULL,
  `dcpdptDepartment` varchar(150) DEFAULT NULL,
  `dcpcbpCabinetPosition` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mdcpID`),
  KEY `mpa_idx` (`dcpMPA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mpadepartmentcabinetpositions` WRITE;
/*!40000 ALTER TABLE `mpadepartmentcabinetpositions` DISABLE KEYS */;

INSERT INTO `mpadepartmentcabinetpositions` (`mdcpID`, `dcpMPA`, `dcpdptDepartment`, `dcpcbpCabinetPosition`)
VALUES
	(1,1,NULL,NULL),
	(2,2,NULL,NULL),
	(3,3,NULL,NULL),
	(4,4,NULL,NULL),
	(5,5,'Irrigation, Social Welfare, Special Education & Women Empowerment ','Minister '),
	(6,6,NULL,NULL),
	(7,7,'Labour & Mineral Development ','Minister '),
	(8,8,NULL,NULL),
	(9,9,'Commerce & Industries ','Special Assistant '),
	(10,10,NULL,NULL),
	(11,11,NULL,NULL),
	(12,12,NULL,NULL),
	(13,13,NULL,NULL),
	(14,14,'Health ','Senior Minister '),
	(15,15,NULL,NULL),
	(16,16,'Public Health Engineering ','Minister '),
	(17,17,NULL,NULL),
	(18,18,NULL,NULL),
	(19,19,NULL,NULL),
	(20,20,'Finance ','Parliamentary Secy '),
	(21,21,'Finance ','Minister '),
	(22,22,'Law ','Minister '),
	(23,23,NULL,NULL),
	(24,24,NULL,NULL),
	(25,25,NULL,NULL),
	(26,26,'Local Government, Elections & Rural Development ','Minister '),
	(27,27,NULL,NULL),
	(28,28,NULL,NULL),
	(29,29,NULL,NULL),
	(30,30,NULL,NULL),
	(31,31,'Zakat, Ushar, Auqah, Hajj & Religious Affairs ','Minister '),
	(32,32,NULL,NULL),
	(33,33,NULL,NULL),
	(34,34,'Higher Education and Information ','Special Assistant '),
	(35,35,NULL,NULL),
	(36,36,NULL,NULL),
	(37,37,NULL,NULL),
	(38,38,NULL,NULL),
	(39,39,'Industries Commerce & Labour ','Special Assistant '),
	(40,40,NULL,NULL),
	(41,41,'Local Government, Elections & Rural Development ','Parliamentary Secy '),
	(42,42,NULL,NULL),
	(43,43,'Law ','Special Assistant '),
	(44,44,'Elementry & Secondary Education ','Minister '),
	(45,45,NULL,NULL),
	(46,46,NULL,NULL),
	(47,47,NULL,NULL),
	(48,48,NULL,NULL),
	(49,49,NULL,NULL),
	(50,50,NULL,NULL),
	(51,51,NULL,NULL),
	(52,52,'Tech Education ','Special Assistant '),
	(53,53,NULL,NULL),
	(54,54,'Prisons ','Advisor of Minister '),
	(55,55,NULL,NULL),
	(56,56,NULL,NULL),
	(57,57,NULL,NULL),
	(58,58,NULL,NULL),
	(59,59,'Environment ','Special Assistant '),
	(60,60,NULL,NULL),
	(61,61,NULL,NULL),
	(62,62,NULL,NULL),
	(63,63,NULL,NULL),
	(64,64,NULL,NULL),
	(65,65,NULL,NULL),
	(66,66,NULL,NULL),
	(67,67,'Environment ','Parliamentary Secy '),
	(68,68,NULL,NULL),
	(69,69,NULL,NULL),
	(70,70,NULL,NULL),
	(71,71,NULL,NULL),
	(72,72,NULL,NULL),
	(73,73,NULL,NULL),
	(74,74,NULL,NULL),
	(75,75,NULL,NULL),
	(76,76,NULL,NULL),
	(77,77,'Tourism ','Parliamentary Secy '),
	(78,78,NULL,NULL),
	(79,79,NULL,NULL),
	(80,80,'Anti Corruption, Establishment & Provincial Inspection Team ','Parliamentary Secy '),
	(81,81,NULL,'Parliamentary Secy '),
	(82,82,NULL,NULL),
	(83,83,'Sports, Culture, Tourism & Meuseums ','Advisor of Minister '),
	(84,84,NULL,NULL),
	(85,85,'Food ','Minister '),
	(86,86,NULL,NULL),
	(87,87,NULL,NULL),
	(88,88,NULL,NULL),
	(89,89,NULL,NULL),
	(90,90,NULL,NULL),
	(91,91,NULL,NULL),
	(92,92,'Social Welfare ','Parliamentary Secy '),
	(93,93,NULL,NULL),
	(94,94,NULL,NULL),
	(95,95,NULL,NULL),
	(96,96,NULL,NULL),
	(97,97,'P&D ','Parliamentary Secy '),
	(98,98,NULL,' CM '),
	(99,99,'Excise & Taxation ','Minister '),
	(100,100,NULL,NULL),
	(101,101,'Mines & Mineral ','Parliamentary Secy '),
	(102,102,'Excise & Taxation ','Parliamentary Secy '),
	(103,103,'Elementry & Secondary Education ','Parliamentary Secy '),
	(104,104,'Communication & Works ',NULL),
	(105,105,NULL,NULL),
	(106,106,NULL,NULL),
	(107,107,'Revenue ','Minister '),
	(108,108,NULL,NULL),
	(109,109,NULL,NULL),
	(110,110,NULL,NULL),
	(111,111,NULL,NULL),
	(112,112,'Live Stock ','Special Assistant '),
	(113,113,NULL,NULL),
	(114,114,NULL,NULL),
	(115,115,'Agriculture ','Minister '),
	(116,116,'Population Welfare ','Advisor of Minister '),
	(117,117,NULL,NULL),
	(118,118,NULL,NULL),
	(119,119,'Population Welfare ','Parliamentary Secy '),
	(120,120,'Public Health Engineering ','Parliamentary Secy '),
	(121,121,NULL,NULL),
	(122,122,'Relief Rehabilitation & Settlement  ','Parliamentary Secy '),
	(123,123,NULL,NULL);

/*!40000 ALTER TABLE `mpadepartmentcabinetpositions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mpascorecard
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mpascorecard`;

CREATE TABLE `mpascorecard` (
  `mscID` int(11) NOT NULL AUTO_INCREMENT,
  `Questions` int(11) NOT NULL DEFAULT '0',
  `PrivilegeMotions` int(11) NOT NULL DEFAULT '0',
  `AdjournmentMotions` int(11) NOT NULL DEFAULT '0',
  `Resolutions` int(11) NOT NULL DEFAULT '0',
  `CallAttentionNotices` int(11) NOT NULL DEFAULT '0',
  `Committees` int(11) NOT NULL DEFAULT '0',
  `CommitteeChaired` int(11) NOT NULL DEFAULT '0',
  `Bills` int(11) NOT NULL DEFAULT '0',
  `PMB` int(11) NOT NULL DEFAULT '0',
  `GMB` int(11) NOT NULL DEFAULT '0',
  `mscStartDate` date DEFAULT NULL,
  `mscEndDate` date DEFAULT NULL,
  `mptMPATenureID` int(11) DEFAULT NULL,
  PRIMARY KEY (`mscID`),
  UNIQUE KEY `mscID_UNIQUE` (`mscID`),
  KEY `mptMPATenure_idx` (`mptMPATenureID`),
  CONSTRAINT `mptMPATenure` FOREIGN KEY (`mptMPATenureID`) REFERENCES `mpatenures` (`mptMPATenureID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

LOCK TABLES `mpascorecard` WRITE;
/*!40000 ALTER TABLE `mpascorecard` DISABLE KEYS */;

INSERT INTO `mpascorecard` (`mscID`, `Questions`, `PrivilegeMotions`, `AdjournmentMotions`, `Resolutions`, `CallAttentionNotices`, `Committees`, `CommitteeChaired`, `Bills`, `PMB`, `GMB`, `mscStartDate`, `mscEndDate`, `mptMPATenureID`)
VALUES
	(1,189,4,19,23,109,8,1,2,1,1,NULL,NULL,1),
	(2,391,2,19,10,13,6,1,0,0,0,NULL,NULL,2),
	(3,190,4,1,26,99,4,1,0,0,0,NULL,NULL,3),
	(4,272,1,3,7,10,4,0,0,0,0,NULL,NULL,4),
	(5,5,0,6,21,4,3,0,0,0,0,NULL,NULL,5),
	(6,149,0,11,12,10,6,0,0,0,0,NULL,NULL,6),
	(7,15,0,1,16,1,7,2,0,0,0,NULL,NULL,7),
	(8,126,2,6,6,18,3,0,0,0,0,NULL,NULL,8),
	(9,136,0,1,2,18,3,0,0,0,0,NULL,NULL,9),
	(10,331,5,11,3,67,3,1,0,0,0,NULL,NULL,10),
	(11,224,0,0,2,18,3,0,0,0,0,NULL,NULL,11),
	(12,39,1,2,13,31,4,0,1,1,0,NULL,NULL,12),
	(13,9,0,8,19,5,5,1,0,0,0,NULL,NULL,13),
	(14,0,0,0,18,0,3,0,0,0,0,NULL,NULL,14),
	(15,195,1,3,1,32,6,1,0,0,0,NULL,NULL,15),
	(16,0,0,0,17,0,4,0,0,0,0,NULL,NULL,16),
	(17,0,1,1,14,2,5,1,0,0,0,NULL,NULL,17),
	(18,10,1,2,14,6,5,1,0,0,0,NULL,NULL,18),
	(19,3,3,2,15,4,3,0,0,0,0,NULL,NULL,19),
	(20,80,4,11,11,27,2,0,0,0,0,NULL,NULL,20),
	(21,19,0,3,6,17,1,0,2,2,0,NULL,NULL,21),
	(22,0,0,0,15,0,2,0,0,0,0,NULL,NULL,22),
	(23,65,1,0,9,5,3,0,0,0,0,NULL,NULL,23),
	(24,21,0,2,4,30,4,0,0,0,0,NULL,NULL,24),
	(25,149,0,1,4,10,3,1,0,0,0,NULL,NULL,25),
	(26,0,0,0,14,0,1,1,1,0,1,NULL,NULL,26),
	(27,59,1,5,7,6,3,0,0,0,0,NULL,NULL,27),
	(28,12,0,0,12,3,3,0,0,0,0,NULL,NULL,28),
	(29,34,0,2,0,11,3,0,0,0,0,NULL,NULL,29),
	(30,106,1,0,0,3,6,1,0,0,0,NULL,NULL,30),
	(31,0,0,0,11,0,1,0,0,0,0,NULL,NULL,31),
	(32,101,1,0,7,18,3,0,0,0,0,NULL,NULL,32),
	(33,0,0,0,9,1,7,1,0,0,0,NULL,NULL,33),
	(34,0,1,0,8,0,1,0,0,0,0,NULL,NULL,34),
	(35,9,1,3,4,6,3,0,0,0,0,NULL,NULL,35),
	(36,4,1,4,2,7,3,0,0,0,0,NULL,NULL,36),
	(37,4,4,1,3,10,7,1,0,0,0,NULL,NULL,37),
	(38,89,2,0,0,13,3,0,0,0,0,NULL,NULL,38),
	(39,6,1,0,6,0,2,0,0,0,0,NULL,NULL,39),
	(40,4,0,0,6,9,3,0,0,0,0,NULL,NULL,40),
	(41,2,0,0,5,7,0,0,0,0,0,NULL,NULL,41),
	(42,46,0,3,0,36,7,1,0,0,0,NULL,NULL,42),
	(43,1,1,1,4,0,0,0,0,0,0,NULL,NULL,43),
	(44,0,0,0,5,0,0,0,0,0,0,NULL,NULL,44),
	(45,0,2,0,5,0,3,0,0,0,0,NULL,NULL,45),
	(46,7,2,0,3,0,4,1,0,0,0,NULL,NULL,46),
	(47,6,1,3,3,2,3,1,0,0,0,NULL,NULL,47),
	(48,21,0,13,2,19,3,0,0,0,0,NULL,NULL,48),
	(49,43,0,0,0,1,3,1,0,0,0,NULL,NULL,49),
	(50,0,0,1,2,4,11,1,0,0,0,NULL,NULL,50),
	(51,0,0,0,2,1,10,1,0,0,0,NULL,NULL,51),
	(52,19,0,2,0,9,3,0,0,0,0,NULL,NULL,52),
	(53,1,0,0,3,2,6,1,0,0,0,NULL,NULL,53),
	(54,0,0,0,4,0,0,0,0,0,0,NULL,NULL,54),
	(55,5,1,1,4,6,3,0,0,0,0,NULL,NULL,55),
	(56,18,0,0,2,2,3,0,0,0,0,NULL,NULL,56),
	(57,0,0,0,3,0,1,0,0,0,0,NULL,NULL,57),
	(58,14,3,0,1,5,5,0,0,0,0,NULL,NULL,58),
	(59,0,0,0,3,0,0,0,0,0,0,NULL,NULL,59),
	(60,11,2,1,2,6,3,1,0,0,0,NULL,NULL,60),
	(61,14,0,0,1,4,7,1,0,0,0,NULL,NULL,61),
	(62,20,1,1,2,16,4,0,0,0,0,NULL,NULL,62),
	(63,4,1,0,3,2,7,1,0,0,0,NULL,NULL,63),
	(64,0,0,3,2,10,3,1,0,0,0,NULL,NULL,64),
	(65,36,1,0,1,1,4,0,0,0,0,NULL,NULL,65),
	(66,1,0,0,1,1,3,0,0,0,0,NULL,NULL,66),
	(67,0,3,1,0,1,0,0,0,0,0,NULL,NULL,67),
	(68,0,0,1,1,0,8,1,0,0,0,NULL,NULL,68),
	(69,1,0,0,0,8,8,1,0,0,0,NULL,NULL,69),
	(70,0,2,0,1,3,0,0,0,0,0,NULL,NULL,70),
	(71,19,1,0,0,1,6,1,0,0,0,NULL,NULL,71),
	(72,0,1,0,2,1,9,1,0,0,0,NULL,NULL,72),
	(73,0,0,0,1,0,6,1,0,0,0,NULL,NULL,73),
	(74,6,0,0,0,6,0,0,0,0,0,NULL,NULL,74),
	(75,0,0,0,2,0,1,0,0,0,0,NULL,NULL,75),
	(76,0,0,0,1,1,0,0,0,0,0,NULL,NULL,76),
	(77,0,1,0,2,0,0,0,0,0,0,NULL,NULL,77),
	(78,24,0,1,0,28,5,0,0,0,0,NULL,NULL,78),
	(79,0,0,1,1,0,4,0,0,0,0,NULL,NULL,79),
	(80,9,0,1,0,0,2,1,0,0,0,NULL,NULL,80),
	(81,10,3,0,0,5,6,1,0,0,0,NULL,NULL,81),
	(82,0,0,2,0,2,3,0,0,0,0,NULL,NULL,82),
	(83,0,0,0,1,0,0,0,0,0,0,NULL,NULL,83),
	(84,0,2,0,0,1,8,0,0,0,0,NULL,NULL,84),
	(85,0,0,0,1,0,0,0,0,0,0,NULL,NULL,85),
	(86,2,2,1,0,9,5,1,0,0,0,NULL,NULL,86),
	(87,0,0,0,0,2,3,0,0,0,0,NULL,NULL,87),
	(88,0,0,0,1,1,3,0,0,0,0,NULL,NULL,88),
	(89,0,1,0,0,0,0,0,0,0,0,NULL,NULL,89),
	(90,0,0,0,1,1,7,1,0,0,0,NULL,NULL,90),
	(91,0,1,0,1,1,0,0,0,0,0,NULL,NULL,91),
	(92,0,0,0,1,0,0,0,0,0,0,NULL,NULL,92),
	(93,18,0,0,0,2,4,0,0,0,0,NULL,NULL,93),
	(94,4,0,0,0,1,3,0,0,0,0,NULL,NULL,94),
	(95,0,0,0,0,0,6,1,0,0,0,NULL,NULL,95),
	(96,0,0,0,0,0,0,0,0,0,0,NULL,NULL,96),
	(97,0,0,0,0,0,0,0,0,0,0,NULL,NULL,97),
	(98,0,0,0,0,0,0,0,0,0,0,NULL,NULL,98),
	(99,0,0,0,0,0,1,0,0,0,0,NULL,NULL,99),
	(100,0,0,0,0,0,3,0,0,0,0,NULL,NULL,100),
	(101,0,0,0,0,2,0,0,0,0,0,NULL,NULL,101),
	(102,0,0,0,0,0,0,0,0,0,0,NULL,NULL,102),
	(103,0,0,0,0,0,0,0,0,0,0,NULL,NULL,103),
	(104,0,0,0,0,0,1,0,0,0,0,NULL,NULL,104),
	(105,0,0,0,0,1,3,0,0,0,0,NULL,NULL,105),
	(106,0,0,0,0,0,0,0,0,0,0,NULL,NULL,106),
	(107,0,0,0,0,0,0,0,0,0,0,NULL,NULL,107),
	(108,1,0,0,0,0,9,0,0,0,0,NULL,NULL,108),
	(109,4,0,0,0,1,3,0,0,0,0,NULL,NULL,109),
	(110,0,0,0,0,0,7,0,0,0,0,NULL,NULL,110),
	(111,0,0,0,0,0,6,1,0,0,0,NULL,NULL,111),
	(112,0,0,0,0,0,0,0,0,0,0,NULL,NULL,112),
	(113,7,0,0,0,0,0,0,0,0,0,NULL,NULL,113),
	(114,0,0,0,0,0,4,0,0,0,0,NULL,NULL,114),
	(115,0,0,0,0,0,1,0,0,0,0,NULL,NULL,115),
	(116,0,0,0,0,0,0,0,0,0,0,NULL,NULL,116),
	(117,0,0,0,0,0,0,0,0,0,0,NULL,NULL,117),
	(118,0,0,0,0,0,0,2,0,0,0,NULL,NULL,118),
	(119,0,0,0,0,0,0,0,0,0,0,NULL,NULL,119),
	(120,0,0,0,0,0,0,0,0,0,0,NULL,NULL,120),
	(121,0,0,0,0,0,9,0,0,0,0,NULL,NULL,121),
	(122,0,0,0,0,1,0,0,0,0,0,NULL,NULL,122),
	(123,0,0,0,0,0,0,0,0,0,0,NULL,NULL,123);

/*!40000 ALTER TABLE `mpascorecard` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table mpatenures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mpatenures`;

CREATE TABLE `mpatenures` (
  `mptMPATenureID` int(11) NOT NULL AUTO_INCREMENT,
  `mpaTenureStartDate` date DEFAULT NULL,
  `mpaTenureEndDate` date DEFAULT NULL,
  `mpaID` int(11) NOT NULL,
  `plpPoliticalPartyID` varchar(50) NOT NULL DEFAULT '',
  `cntConstituencyID` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`mptMPATenureID`),
  UNIQUE KEY `mptMPATenureID_UNIQUE` (`mptMPATenureID`),
  KEY `mpaID_idx` (`mpaID`),
  CONSTRAINT `mpa` FOREIGN KEY (`mpaID`) REFERENCES `mpa` (`mpaID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 COMMENT='\ncntContinuencyID\n';

LOCK TABLES `mpatenures` WRITE;
/*!40000 ALTER TABLE `mpatenures` DISABLE KEYS */;

INSERT INTO `mpatenures` (`mptMPATenureID`, `mpaTenureStartDate`, `mpaTenureEndDate`, `mpaID`, `plpPoliticalPartyID`, `cntConstituencyID`)
VALUES
	(1,NULL,NULL,1,'ANP','PK-85 Swat-VI'),
	(2,NULL,NULL,2,'JUI-F','PK-43 Hangu-II'),
	(3,NULL,NULL,3,'PML-N ','PK-47 Abbottabad-IV '),
	(4,NULL,NULL,4,'JUI-F ','PK-58 Tor Ghar '),
	(5,NULL,NULL,5,'QWP ','PK-21 Charsadda-V '),
	(6,NULL,NULL,6,'ANP ','PK-77 Bunair-I '),
	(7,NULL,NULL,7,'QWP ','WR-18 '),
	(8,NULL,NULL,8,'JUI-F ','WR-12 '),
	(9,NULL,NULL,9,'QWP ','PK-34 Swabi-IV '),
	(10,NULL,NULL,10,'JUI-F ','PK-79 Bunair-III '),
	(11,NULL,NULL,11,'JUI-F ','WR-13 '),
	(12,NULL,NULL,12,'JUI-F ','PK-60 Batagram-II '),
	(13,NULL,NULL,13,'PPPP ','WR-22 '),
	(14,NULL,NULL,14,'PTI ','PK-32 Swabi-II '),
	(15,NULL,NULL,15,'PML-N ','WR-16 '),
	(16,NULL,NULL,16,'PTI ','PK-10 Peshawar-X '),
	(17,NULL,NULL,17,'JUI-F ','PK-66 D.I. Khan-III '),
	(18,NULL,NULL,18,'PPPP ','PK-98 Malakand '),
	(19,NULL,NULL,19,'JUI-F ','PK-76 Lakki Marwat-III '),
	(20,NULL,NULL,20,'JI ','PK-92 Upper Dir-II '),
	(21,NULL,NULL,21,'JI ','PK-94 Lower Dir-I '),
	(22,NULL,NULL,22,'PTI ','PK-39 Kohat-III '),
	(23,NULL,NULL,23,'PPPP ','PK-89 Chitral-I '),
	(24,NULL,NULL,24,'PML-N ','WR-14 '),
	(25,NULL,NULL,25,'PML-N ','PK-55 Mansehra-III '),
	(26,NULL,NULL,26,'JI ','PK-91 Upper Dir-I '),
	(27,NULL,NULL,27,'QWP ','PK-97 Lower Dir-IV '),
	(28,NULL,NULL,28,'PPPP ','PK-90 Chitral-II '),
	(29,NULL,NULL,29,'ANP ','PK-28 Mardan-VI '),
	(30,NULL,NULL,30,'JUI-F ','PK-75 Lakki Marwat-II '),
	(31,NULL,NULL,31,'JI ','PK-78 Bunair-II '),
	(32,NULL,NULL,32,'QWP ','WR-19 '),
	(33,NULL,NULL,33,'PTI ','PK-02 Peshawar-II '),
	(34,NULL,NULL,34,'PTI ','PK-44 Abbottabad-I '),
	(35,NULL,NULL,35,'JUI-F ','PK-62 Kohistan-II '),
	(36,NULL,NULL,36,'PML-N ','PK-87 Shangla-I '),
	(37,NULL,NULL,37,'PTI ','PK-07 Peshawar-VII '),
	(38,NULL,NULL,38,'JUI-F ','PK-70 Bannu-I '),
	(39,NULL,NULL,39,'PTI ','PK-88 Shangla-II '),
	(40,NULL,NULL,40,'ANP ','PK-23 Mardan-I '),
	(41,NULL,NULL,41,'JI ','PK-96 Lower Dir-III '),
	(42,NULL,NULL,42,'PPPP ','PK-93 Upper Dir-III '),
	(43,NULL,NULL,43,'PTI ','PK-04 Peshawar-IV '),
	(44,NULL,NULL,44,'PTI ','PK-30 Mardan-VIII '),
	(45,NULL,NULL,45,'PML-N ','PK-49 Haripur-I '),
	(46,NULL,NULL,46,'PML-N ','PK-56 Mansehra-IV '),
	(47,NULL,NULL,47,'PML_N ','PK-59 Batagram-I '),
	(48,NULL,NULL,48,'PPPP ','PK-71 Bannu-II '),
	(49,NULL,NULL,49,'JUI-F ','PK-73 Bannu-IV '),
	(50,NULL,NULL,50,'PTI ','PK-15 Nowshera-IV '),
	(51,NULL,NULL,51,'PTI ','PK-16 Nowshera-V '),
	(52,NULL,NULL,52,'QWP ','PK-19 Charsadda-III '),
	(53,NULL,NULL,53,'PTI ','PK-31 Swabi-I '),
	(54,NULL,NULL,54,'PTI ','PK-41 Karak-II '),
	(55,NULL,NULL,55,'PML ','PK-53 Mansehra-I '),
	(56,NULL,NULL,56,'JUI-F ','MR-2 '),
	(57,NULL,NULL,57,'PTI ','PK-01 Peshawar-I '),
	(58,NULL,NULL,58,'PTI ','PK-05 Peshawar-V '),
	(59,NULL,NULL,59,'PTI ','PK-11 Peshawar-XI '),
	(60,NULL,NULL,60,'QWP ','PK-18 Charsadda-II '),
	(61,NULL,NULL,61,'IND ','PK-27 Mardan-V '),
	(62,NULL,NULL,62,'PML-N ','PK-36 Swabi-VI '),
	(63,NULL,NULL,63,'PTI ','PK-40 Karak-I '),
	(64,NULL,NULL,64,'PML-N ','PK-63 Kohistan-III '),
	(65,NULL,NULL,65,'JUI-F ','PK-69 Tank '),
	(66,NULL,NULL,66,'PML-N ','MR-3 '),
	(67,NULL,NULL,67,'PTI ','PK-06 Peshawar-VI '),
	(68,NULL,NULL,68,'PTI ','PK-09 Peshawar-IX '),
	(69,NULL,NULL,69,'PTI ','PK-22 Charsadda-VI '),
	(70,NULL,NULL,70,'PTI ','PK-24 Mardan-II '),
	(71,NULL,NULL,71,'PTI ','PK-26 Mardan-IV '),
	(72,NULL,NULL,72,'PTI ','PK-38 Kohat-II '),
	(73,NULL,NULL,73,'PTI ','PK-52 Haripur-IV '),
	(74,NULL,NULL,74,'PTI ','PK-72 Bannu-III '),
	(75,NULL,NULL,75,'PTI ','PK-84 Swat-V '),
	(76,NULL,NULL,76,'PTI ','WR-08 '),
	(77,NULL,NULL,77,'PTI ','WR-10 '),
	(78,NULL,NULL,78,'JI ','WR-17 '),
	(79,NULL,NULL,79,'ANP ','WR-20 '),
	(80,NULL,NULL,80,'PTI ','PK-86 Swat-VII '),
	(81,NULL,NULL,81,'PTI ','PK-03 Peshawar-III '),
	(82,NULL,NULL,82,'QWP ','PK-20 Charsadda-IV '),
	(83,NULL,NULL,83,'PTI ','PK-37 Kohat-I '),
	(84,NULL,NULL,84,'IND ','PK-42 Hangu-I '),
	(85,NULL,NULL,85,'PTI ','PK-46 Abbottabad-III '),
	(86,NULL,NULL,86,'PTI ','PK-48 Abbottabad-V '),
	(87,NULL,NULL,87,'QWP ','PK-51 Haripur-III '),
	(88,NULL,NULL,88,'PML-N ','PK-54 Mansehra-II '),
	(89,NULL,NULL,89,'PTI ','PK-82 Swat-III '),
	(90,NULL,NULL,90,'PTI ','WR-01 '),
	(91,NULL,NULL,91,'PTI ','WR-06 '),
	(92,NULL,NULL,92,'PTI ','WR-09 '),
	(93,NULL,NULL,93,'JUI-F ','WR-11 '),
	(94,NULL,NULL,94,'PML-N ','WR-15 '),
	(95,NULL,NULL,95,'PTI ','PK-68 D.I. Khan-V '),
	(96,NULL,NULL,96,'PML-N ','PK-08 Peshawar-VIII '),
	(97,NULL,NULL,97,'PTI ','PK-12 Nowshera-I '),
	(98,NULL,NULL,98,'PTI ','PK-13 Nowshera-II '),
	(99,NULL,NULL,99,'PTI ','PK-14 Nowshera-III '),
	(100,NULL,NULL,100,'JUI -F ','PK-17 Charsadda-I '),
	(101,NULL,NULL,101,'PTI ','PK-25 Mardan-III '),
	(102,NULL,NULL,102,'PTI ','PK-29 Mardan-VII '),
	(103,NULL,NULL,103,'PTI ','PK-33 Swabi-III '),
	(104,NULL,NULL,104,'PTI ','PK-50 Haripur-II '),
	(105,NULL,NULL,105,'QWP ','PK-57 Mansehra-V '),
	(106,NULL,NULL,106,'PTI ','PK-61 Kohistan-I '),
	(107,NULL,NULL,107,'PTI ','PK-64 D.I. Khan-I '),
	(108,NULL,NULL,108,'PTI ','PK-65 D.I. Khan-II '),
	(109,NULL,NULL,109,'JUI-F ','PK-74 Lakki Marwat-I '),
	(110,NULL,NULL,110,'PTI ','PK-80 Swat-I '),
	(111,NULL,NULL,111,'PTI ','PK-81 Swat-II '),
	(112,NULL,NULL,112,'PTI ','PK-83 Swat-IV '),
	(113,NULL,NULL,113,'JI ','PK-95 Lower Dir-II '),
	(114,NULL,NULL,114,'PML-N ','PK-45 Abbottabad-II '),
	(115,NULL,NULL,115,'PTI ','PK-67 D.I. Khan-IV '),
	(116,NULL,NULL,116,'PTI ','PK-99 Malakand '),
	(117,NULL,NULL,117,'PTI ','PK-35 Swabi-V '),
	(118,NULL,NULL,118,'PTI ','WR-02 '),
	(119,NULL,NULL,119,'PTI ','WR-03 '),
	(120,NULL,NULL,120,'PTI ','WR-04 '),
	(121,NULL,NULL,121,'PTI ','WR-05 '),
	(122,NULL,NULL,122,'PTI ','WR-07 '),
	(123,NULL,NULL,123,'PTI ','WR-21 ');

/*!40000 ALTER TABLE `mpatenures` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table politicalparty
# ------------------------------------------------------------

DROP TABLE IF EXISTS `politicalparty`;

CREATE TABLE `politicalparty` (
  `plpPoliticalPartyID` varchar(50) NOT NULL DEFAULT '',
  `plpLongName` varchar(255) DEFAULT NULL,
  `plpImageName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`plpPoliticalPartyID`),
  UNIQUE KEY `plpPoliticalPartyID_UNIQUE` (`plpPoliticalPartyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `politicalparty` WRITE;
/*!40000 ALTER TABLE `politicalparty` DISABLE KEYS */;

INSERT INTO `politicalparty` (`plpPoliticalPartyID`, `plpLongName`, `plpImageName`)
VALUES
	('ANP','Awami National Party','anp.png'),
	('IND','Independent','default.png'),
	('JI','Jamaat-e-Islami','ji.png'),
	('JUI-F','Jamiat Ulema-e-Islam (F)','jui-f.png'),
	('PML','Pakistan Muslim League','pml.png'),
	('PML-N','Pakistan Muslim League (N)','pml-n.jpg'),
	('PPPP','Pakistan People\'s Party Parliamentarians','pppp.png'),
	('PTI','Pakistan Tehreek-e-Insaf','pti.png'),
	('QWP','Qaumi Watan Party','qwp.png');

/*!40000 ALTER TABLE `politicalparty` ENABLE KEYS */;
UNLOCK TABLES;




# Replace placeholder table for mpaattendance with correct view syntax
# ------------------------------------------------------------

DROP TABLE `mpaattendance`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mpaattendance`
AS SELECT
   `attendance`.`mpaName` AS `mpaName`,sum(ifnull(`attendance`.`mpaPresents`,0)) AS `TotalPresents`,sum(ifnull(`attendance`.`mpaAbsents`,0)) AS `TotalAbsents`,sum(ifnull(`attendance`.`application`,0)) AS `TotalApplications`
FROM `attendance` group by `attendance`.`mpaName` order by `attendance`.`mpaName`;

--
-- Dumping routines (PROCEDURE) for database 'cgpaweb'
--
DELIMITER ;;

# Dump of PROCEDURE SP_GetMPAByName
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `SP_GetMPAByName` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `SP_GetMPAByName`(IN `p_mpaName` VARCHAR(50))
BEGIN

	SELECT mpa.mpaID	
		, mpa.mpaName
		, mpa.mpaDescription
		, mpa.mpaImageName
		, mpatenures.plpPoliticalPartyID
		, mpatenures.cntConstituencyID
		, politicalparty.plpLongName
		, politicalparty.plpImageName
		, mpascorecard.Questions
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.Questions, 0) > IFNULL(mpascorecard.Questions, 0)) + 1 AS QRank
		, mpascorecard.Resolutions
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.Resolutions, 0) > IFNULL(mpascorecard.Resolutions, 0)) + 1 AS RRank
		, mpascorecard.PrivilegeMotions
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.PrivilegeMotions, 0) > IFNULL(mpascorecard.PrivilegeMotions, 0)) + 1 AS PRank
		, mpascorecard.AdjournmentMotions
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.AdjournmentMotions, 0) > IFNULL(mpascorecard.AdjournmentMotions, 0)) + 1 AS ARank
		, mpascorecard.CallAttentionNotices
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.CallAttentionNotices, 0) > IFNULL(mpascorecard.CallAttentionNotices, 0)) + 1 AS CRank
		, mpascorecard.Bills
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.Bills, 0) > IFNULL(mpascorecard.Bills, 0)) + 1 AS BRank
		, mpascorecard.PMB
		, mpascorecard.GMB
		, mpaattendance.TotalPresents
		, mpaattendance.TotalAbsents
		, mpaattendance.TotalApplications
		, (SELECT IFNULL(COUNT(*), 0) FROM mpaattendance m3 where (IFNULL(m3.TotalPresents, 0) + IFNULL(m3.TotalApplications, 0)) > (IFNULL(mpaattendance.TotalPresents, 0) + IFNULL(mpaattendance.TotalApplications, 0))) + 1 AS ATTRank
		, mpascorecard.Questions + mpascorecard.Resolutions + mpascorecard.PrivilegeMotions + mpascorecard.AdjournmentMotions + mpascorecard.CallAttentionNotices + mpascorecard.Bills + IFNULL(PMB, 0) + IFNULL(GMB, 0)		AS Overall
	FROM	mpa 	INNER JOIN mpatenures
		ON	mpa.mpaID 			= mpatenures.mpaID
			AND mpa.mpaName			= IFNULL(p_mpaName, mpa.mpaName)
			INNER JOIN politicalparty
		ON	mpatenures.plpPoliticalPartyID	= politicalparty.plpPoliticalPartyID
			INNER JOIN mpascorecard
		ON	mpatenures.mptMPATenureID	= mpascorecard.mptMPATenureID
			INNER JOIN mpaattendance
		ON	mpa.mpaName			= mpaattendance.mpaName;

END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE SP_GetMPAList
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `SP_GetMPAList` */;;
/*!50003 SET SESSION SQL_MODE="STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION"*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `SP_GetMPAList`()
BEGIN

	CALL SP_GetMPAByName(NULL);

END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
