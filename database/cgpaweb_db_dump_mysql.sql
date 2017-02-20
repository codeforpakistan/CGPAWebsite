# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.23)
# Database: cgpaweb
# Generation Time: 2017-02-20 09:42:13 +0000
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
  `attPresents` int(11) DEFAULT NULL,
  `attAbsents` int(11) DEFAULT NULL,
  `attApplications` int(11) DEFAULT NULL,
  `attTotalAttendance` int(11) DEFAULT NULL,
  `attAttendancePercentage` decimal(10,2) DEFAULT NULL,
  `atdAttendanceDateID` int(11) NOT NULL,
  `mptMPATenureID` int(11) DEFAULT NULL,
  PRIMARY KEY (`attAttendanceID`),
  UNIQUE KEY `AttAttendanceID` (`mpaName`,`atdAttendanceDateID`),
  UNIQUE KEY `attAttendanceID_UNIQUE` (`attAttendanceID`),
  KEY `attAttendance_idx` (`atdAttendanceDateID`),
  CONSTRAINT `attAttendance` FOREIGN KEY (`atdAttendanceDateID`) REFERENCES `attendancedate` (`atdAttendanceDateID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;

INSERT INTO `attendance` (`attAttendanceID`, `mpaID`, `mpaName`, `attPresents`, `attAbsents`, `attApplications`, `attTotalAttendance`, `attAttendancePercentage`, `atdAttendanceDateID`, `mptMPATenureID`)
VALUES
	(1,57,'Ziaullah Khan',65,6,1,72,90.28,1,NULL),
	(2,33,'Shaukat Ali Yousafzai',62,10,0,72,86.11,1,NULL),
	(3,81,'Javed Nasim',68,2,2,72,94.44,1,NULL),
	(4,43,'Arif Yousaf',71,1,0,72,98.61,1,NULL),
	(5,58,'Yaseen Khan Khalil',55,16,1,72,76.39,1,NULL),
	(6,67,'Fazl Elahi',65,7,0,72,90.28,1,NULL),
	(7,37,'Mehmood Jan',70,0,2,72,97.22,1,NULL),
	(8,96,'Arbab Muhammad Wasim Khan',67,5,0,72,93.06,1,NULL),
	(9,68,'Arbab Jahandad Khan',63,7,2,72,87.50,1,NULL),
	(10,16,'Shah Farman',66,6,0,72,91.67,1,NULL),
	(11,59,'Muhammad Ishtiaq',65,6,1,72,90.28,1,NULL),
	(12,97,'Khaliq ur Rehman',66,6,0,72,91.67,1,NULL),
	(13,98,'Pervaiz Khattak',37,35,0,72,51.39,1,NULL),
	(14,99,'Jamshaid ud Din',64,8,0,72,88.89,1,NULL),
	(15,50,'Muhammad Idrees',50,22,0,72,69.44,1,NULL),
	(16,51,'Qurban Ali Khan',71,1,0,72,98.61,1,NULL),
	(17,100,'Fazle Shakoor Khan',57,15,0,72,79.17,1,NULL),
	(18,60,'Sultan Mohammad Khan',38,27,7,72,52.78,1,NULL),
	(19,52,'Arshad Ali',60,11,1,72,83.33,1,NULL),
	(20,82,'Khalid Khan',44,20,8,72,61.11,1,NULL),
	(21,5,'Sikandar Hayat Khan',54,9,9,72,75.00,1,NULL),
	(22,69,'Mohammad Arif',57,13,2,72,79.17,1,NULL),
	(23,40,'Ahmed Khan Bahadur',19,23,13,55,34.55,1,NULL),
	(24,70,'Muhammad Zahid Durrani',52,5,15,72,72.22,1,NULL),
	(25,101,'Ubaid Ullah Mayar',51,19,2,72,70.83,1,NULL),
	(26,71,'Iftikhar Ali Mushwani',43,12,17,72,59.72,1,NULL),
	(27,61,'Jamshaid Khan Mohmand',53,0,2,55,96.36,1,NULL),
	(28,29,'Gohar Ali Shah',35,14,13,72,48.61,1,NULL),
	(29,102,'Tufail Anjum',62,9,1,72,86.11,1,NULL),
	(30,44,'Muhammad Atif',48,24,0,72,66.67,1,NULL),
	(31,53,'Babar Khan',66,5,1,72,91.67,1,NULL),
	(32,14,'Shah Ram Khan',57,14,1,72,79.17,1,NULL),
	(33,103,'Mohammad Ali Tarkai',32,25,9,72,44.44,1,NULL),
	(34,9,'Abdul Karim',66,5,1,72,91.67,1,NULL),
	(35,117,'Asad Qaiser',42,30,0,72,58.33,1,NULL),
	(36,62,'Muhammad Sheeraz',66,4,2,72,91.67,1,NULL),
	(37,83,'Amjad Khan Afridi',44,26,2,72,61.11,1,NULL),
	(38,72,'Zia Ullah Khan Bangash',52,19,1,72,72.22,1,NULL),
	(39,22,'Imtiaz Shahid',70,2,0,72,97.22,1,NULL),
	(40,63,'Gul Sahib Khan',49,17,6,72,68.06,1,NULL),
	(41,54,'Malik Qasim Khan Khattak',51,19,2,72,70.83,1,NULL),
	(42,84,'Shah Faisal Khan',53,2,0,55,96.36,1,NULL),
	(43,2,'Mufti Said Janan',71,1,0,72,98.61,1,NULL),
	(44,34,'Mushtaq Ahmed Ghani',59,6,7,72,81.94,1,NULL),
	(45,NULL,'Sardar Mehtab Ahmad Khan',19,0,3,63,30.16,1,NULL),
	(46,85,'Qalandar Khan Lodhi',61,4,7,72,84.72,1,NULL),
	(47,3,'Sardar Aurangzeb Nalota',66,0,6,72,91.67,1,NULL),
	(48,86,'Sardar Muhammad Idrees',61,10,1,72,84.72,1,NULL),
	(49,45,'Raja Faisal Zaman',63,0,9,72,87.50,1,NULL),
	(50,104,'Akbar Ayub Khan',18,6,2,72,25.00,1,NULL),
	(51,87,'Gohar Nawaz Khan',21,46,5,72,29.17,1,NULL),
	(52,73,'Faisal Zaman',38,34,0,72,52.78,1,NULL),
	(53,55,'Sardar Zahoor Ahmad',51,5,16,72,70.83,1,NULL),
	(54,88,'Mian Zia Ur Rehman',40,14,18,72,55.56,1,NULL),
	(55,25,'Saleh Muhammad',44,9,19,72,61.11,1,NULL),
	(56,46,'Wajeh uz Zaman Khan',37,9,26,72,51.39,1,NULL),
	(57,105,'Ibrar Hussain',26,28,18,72,36.11,1,NULL),
	(58,4,'Zareen Gul',65,4,3,72,90.28,1,NULL),
	(59,47,'Nawab Zada Wali Mohammad Khan',60,11,1,72,83.33,1,NULL),
	(60,12,'Shah Hussain Khan',62,1,9,72,86.11,1,NULL),
	(61,106,'Abdul Haq Khan',62,7,3,72,86.11,1,NULL),
	(62,35,'Muhammad Asmatullah',47,25,0,72,65.28,1,NULL),
	(63,64,'Abdul Sattar Khan',46,21,5,72,63.89,1,NULL),
	(64,107,'Ali Amin Gandapur',41,27,4,72,56.94,1,NULL),
	(65,108,'Sami Ullah',34,31,7,72,47.22,1,NULL),
	(66,17,'Maulana Lutf ur Rehman',40,32,0,72,55.56,1,NULL),
	(67,115,'Sardar Ikramullah Gandapur',26,5,5,36,72.22,1,NULL),
	(68,95,'Ihtesham Javed Akber Khan',41,31,0,72,56.94,1,NULL),
	(69,65,'Mahmood Ahmad Khan',49,16,7,72,68.06,1,NULL),
	(70,38,'Azam Khan Durrani',48,7,0,56,85.71,1,NULL),
	(71,48,'Fakhr Azam Wazir',38,27,6,72,52.78,1,NULL),
	(72,74,'Shah Mohammad',66,5,1,72,91.67,1,NULL),
	(73,49,'Malik Riaz Khan',60,5,7,72,83.33,1,NULL),
	(74,109,'Anwar Hayat Khan',48,24,0,72,66.67,1,NULL),
	(75,30,'Noor Saleem Khan',47,19,6,72,65.28,1,NULL),
	(76,19,'Munawar Khan Advocate',71,1,0,72,98.61,1,NULL),
	(77,6,'Sardar Hussain Babak',61,11,0,72,84.72,1,NULL),
	(78,31,'Habib-Ur-Rahman',67,3,2,72,93.06,1,NULL),
	(79,10,'Mulana Mufti Fazal Ghafoor',67,5,0,72,93.06,1,NULL),
	(80,110,'Fazal Hakim',58,7,7,72,80.56,1,NULL),
	(81,111,'Azizullah Khan',39,1,0,40,97.50,1,NULL),
	(82,89,'Amjad Ali',61,9,2,72,84.72,1,NULL),
	(83,112,'Muhibullah Khan',58,11,3,72,80.56,1,NULL),
	(84,75,'Mehmood Khan',57,12,3,72,79.17,1,NULL),
	(85,1,'Jafar Shah',67,2,3,72,93.06,1,NULL),
	(86,80,'Haider Ali Khan',3,0,1,4,75.00,1,NULL),
	(87,36,'Muhammad Rashad Khan',44,17,11,72,61.11,1,NULL),
	(88,39,'Abdul Munim',68,4,0,72,94.44,1,NULL),
	(89,23,'Saleem Khan',53,14,5,72,73.61,1,NULL),
	(90,28,'Sarda Hussain',4,1,0,5,80.00,1,NULL),
	(91,26,'Inayat Ullah',61,6,5,72,84.72,1,NULL),
	(92,20,'Mohammad Ali',62,2,8,72,86.11,1,NULL),
	(93,NULL,'Behram Khan',53,3,16,72,73.61,1,NULL),
	(94,21,'Muzafar Said',68,3,1,72,94.44,1,NULL),
	(95,NULL,'Siraj Ul Haq',48,19,4,72,66.67,1,NULL),
	(96,41,'Saeed Gul',59,5,8,72,81.94,1,NULL),
	(97,27,'Bakht Baidar',38,27,7,72,52.78,1,NULL),
	(98,18,'Muhammad Ali Shah',38,27,7,72,52.78,1,NULL),
	(99,116,'Shakeel Ahmad',45,5,18,72,62.50,1,NULL),
	(100,90,'Naseem Hayat',60,4,8,72,83.33,1,NULL),
	(101,118,'Meher Taj Roghani',66,0,6,72,91.67,1,NULL),
	(102,119,'Nadia Sher',40,2,30,72,55.56,1,NULL),
	(103,120,'Aisha Naeem',70,1,1,72,97.22,1,NULL),
	(104,121,'Maliha Ali Asghar Khan',55,16,1,72,76.39,1,NULL),
	(105,91,'Zareen Riaz',71,0,1,72,98.61,1,NULL),
	(106,122,'Nargis',70,0,2,72,97.22,1,NULL),
	(107,76,'Nagina Khan',71,1,0,72,98.61,1,NULL),
	(108,92,'Dina Naz',67,0,5,72,93.06,1,NULL),
	(109,77,'Bibi Fozia',58,7,7,72,80.56,1,NULL),
	(110,93,'Romana Jalil',55,0,16,71,77.46,1,NULL),
	(111,8,'Uzma Khan',69,3,0,72,95.83,1,NULL),
	(112,11,'Najma Shaheen',70,1,1,72,97.22,1,NULL),
	(113,24,'Aamna Sardar',69,0,3,72,95.83,1,NULL),
	(114,94,'Ruqia Hina',69,0,3,72,95.83,1,NULL),
	(115,15,'Sobia Shahid',45,13,14,72,62.50,1,NULL),
	(116,78,'Rashda Riffat',68,1,3,72,94.44,1,NULL),
	(117,7,'Anisa Zeb Tahirkheli',64,5,3,72,88.89,1,NULL),
	(118,32,'Meraj Hamayun Khan',64,6,2,72,88.89,1,NULL),
	(119,79,'Yasmeen Pir Mohammad Khan',61,11,0,72,84.72,1,NULL),
	(120,123,'Khatoon Bibi',69,1,2,72,95.83,1,NULL),
	(121,13,'Nighat Orakzai',56,16,0,72,77.78,1,NULL),
	(122,NULL,'Soran Singh',69,0,3,72,95.83,1,NULL),
	(123,56,'Askar Pervaiz',64,1,7,72,88.89,1,NULL),
	(124,66,'Frederick Azeem',69,0,3,72,95.83,1,NULL),
	(125,57,'Ziaullah Khan',40,10,7,57,70.18,2,NULL),
	(126,33,'Shaukat Ali Yousafzai',36,10,11,57,63.16,2,NULL),
	(127,81,'Javed Nasim',47,7,3,57,82.46,2,NULL),
	(128,43,'Arif Yousaf',44,12,1,57,77.19,2,NULL),
	(129,58,'Yaseen Khan Khalil',43,9,5,57,75.44,2,NULL),
	(130,67,'Fazl Elahi',37,20,0,57,64.91,2,NULL),
	(131,37,'Mehmood Jan',37,7,13,57,64.91,2,NULL),
	(132,NULL,'Arbab Akbar Hayat Khan',47,10,0,57,82.46,2,NULL),
	(133,68,'Arbab Jahandad Khan',49,8,0,57,85.96,2,NULL),
	(134,16,'Shah Farman',48,9,0,57,84.21,2,NULL),
	(135,59,'Muhammad Ishtiaq',37,18,0,57,64.91,2,NULL),
	(136,97,'Khaliq ur Rehman',48,9,0,57,84.21,2,NULL),
	(137,98,'Pervaiz Khattak',20,37,0,57,35.09,2,NULL),
	(138,99,'Jamshaid ud Din',40,17,0,57,70.18,2,NULL),
	(139,50,'Muhammad Idrees',34,23,0,57,59.65,2,NULL),
	(140,51,'Qurban Ali Khan',48,8,0,57,84.21,2,NULL),
	(141,100,'Fazle Shakoor Khan',52,5,0,57,91.23,2,NULL),
	(142,60,'Sultan Mohammad Khan',30,27,0,57,52.63,2,NULL),
	(143,52,'Arshad Ali',39,15,3,57,68.42,2,NULL),
	(144,82,'Khalid Khan',33,18,6,57,57.89,2,NULL),
	(145,5,'Sikandar Hayat Khan',37,15,5,57,64.91,2,NULL),
	(146,69,'Mohammad Arif',38,17,2,57,66.67,2,NULL),
	(147,40,'Ahmed Khan Bahadur',11,46,0,57,19.30,2,NULL),
	(148,70,'Muhammad Zahid Durrani',28,7,22,57,49.12,2,NULL),
	(149,101,'Ubaid Ullah Mayar',26,31,0,57,45.61,2,NULL),
	(150,71,'Iftikhar Ali Mushwani',32,17,18,57,56.14,2,NULL),
	(151,61,'Jamshaid Khan Mohmand',38,7,12,57,66.67,2,NULL),
	(152,29,'Gohar Ali Shah',21,28,8,57,36.84,2,NULL),
	(153,102,'Tufail Anjum',36,20,1,57,63.16,2,NULL),
	(154,44,'Muhammad Atif',38,19,0,57,66.67,2,NULL),
	(155,53,'Babar Khan',32,23,2,57,56.14,2,NULL),
	(156,14,'Shah Ram Khan',42,13,2,57,73.68,2,NULL),
	(157,103,'Mohammad Ali Tarkai',18,32,7,57,31.58,2,NULL),
	(158,9,'Abdul Karim',47,10,0,57,82.46,2,NULL),
	(160,117,'Asad Qaiser',57,0,0,57,100.00,2,NULL),
	(161,62,'Muhammad Sheeraz',45,5,7,57,78.95,2,NULL),
	(162,83,'Amjad Khan Afridi',26,29,2,57,45.61,2,NULL),
	(163,72,'Zia Ullah Khan Bangash',37,20,0,57,64.91,2,NULL),
	(164,22,'Imtiaz Shahid',35,18,4,57,61.40,2,NULL),
	(165,63,'Gul Sahib Khan',21,36,0,57,36.84,2,NULL),
	(166,54,'Malik Qasim Khan Khattak',44,7,6,57,77.19,2,NULL),
	(167,84,'Shah Faisal Khan',38,19,0,57,66.67,2,NULL),
	(168,2,'Mufti Said Janan',43,14,0,57,75.44,2,NULL),
	(169,34,'Mushtaq Ahmed Ghani',42,13,2,57,73.68,2,NULL),
	(170,114,'Sardar Fareed',28,22,5,55,50.91,2,NULL),
	(171,85,'Qalandar Khan Lodhi',47,3,7,57,82.46,2,NULL),
	(172,3,'Sardar Aurangzeb Nalota',42,10,5,57,73.68,2,NULL),
	(173,86,'Sardar Muhammad Idrees',33,18,6,57,57.89,2,NULL),
	(174,45,'Raja Faisal Zaman',43,5,9,57,75.44,2,NULL),
	(175,104,'Akbar Ayub Khan',38,18,1,57,66.67,2,NULL),
	(176,87,'Gohar Nawaz Khan',8,33,16,57,14.04,2,NULL),
	(177,73,'Faisal Zaman',23,34,0,57,40.35,2,NULL),
	(178,55,'Sardar Zahoor Ahmad',30,3,24,57,52.63,2,NULL),
	(179,88,'Mian Zia Ur Rehman',28,2,27,57,49.12,2,NULL),
	(180,25,'Saleh Muhammad',27,2,28,57,47.37,2,NULL),
	(181,46,'Wajeh uz Zaman Khan',11,29,13,53,20.75,2,NULL),
	(182,105,'Ibrar Hussain',16,13,28,57,28.07,2,NULL),
	(183,4,'Zareen Gul',46,10,1,57,80.70,2,NULL),
	(184,47,'Nawab Zada Wali Mohammad Khan',39,18,0,57,68.42,2,NULL),
	(185,12,'Shah Hussain Khan',33,17,7,57,57.89,2,NULL),
	(186,106,'Abdul Haq Khan',35,18,4,57,61.40,2,NULL),
	(187,35,'Muhammad Asmatullah',38,19,0,57,66.67,2,NULL),
	(188,64,'Abdul Sattar Khan',29,26,2,57,50.88,2,NULL),
	(189,107,'Ali Amin Gandapur',24,33,0,57,42.11,2,NULL),
	(190,108,'Sami Ullah',25,31,1,57,43.86,2,NULL),
	(191,17,'Maulana Lutf ur Rehman',30,27,0,57,52.63,2,NULL),
	(192,115,'Sardar Ikramullah Gandapur',29,23,5,57,50.88,2,NULL),
	(193,95,'Ihtesham Javed Akber Khan',32,7,7,46,69.57,2,NULL),
	(194,65,'Mahmood Ahmad Khan',37,18,2,57,64.91,2,NULL),
	(195,38,'Azam Khan Durrani',36,8,13,57,63.16,2,NULL),
	(196,48,'Fakhr Azam Wazir',20,34,3,57,35.09,2,NULL),
	(197,74,'Shah Mohammad',41,14,2,57,71.93,2,NULL),
	(198,49,'Malik Riaz Khan',33,11,13,57,57.89,2,NULL),
	(199,109,'Anwar Hayat Khan',18,30,9,57,31.58,2,NULL),
	(200,30,'Noor Saleem Khan',34,20,3,57,59.65,2,NULL),
	(201,19,'Munawar Khan Advocate',44,13,0,57,77.19,2,NULL),
	(202,6,'Sardar Hussain Babak',22,15,0,57,38.60,2,NULL),
	(203,31,'Habib-Ur-Rahman',47,8,2,57,82.46,2,NULL),
	(204,10,'Mulana Mufti Fazal Ghafoor',36,16,5,57,63.16,2,NULL),
	(205,110,'Fazal Hakim',36,5,16,57,63.16,2,NULL),
	(206,111,'Azizullah Khan',39,6,12,57,68.42,2,NULL),
	(207,89,'Amjad Ali',47,9,1,57,82.46,2,NULL),
	(208,112,'Muhibullah Khan',33,22,2,57,57.89,2,NULL),
	(209,75,'Mehmood Khan',38,16,3,57,66.67,2,NULL),
	(210,1,'Jafar Shah',40,10,7,57,70.18,2,NULL),
	(211,80,'Haider Ali Khan',30,9,18,57,52.63,2,NULL),
	(212,36,'Muhammad Rashad Khan',23,30,4,57,40.35,2,NULL),
	(213,39,'Abdul Munim',38,17,2,57,66.67,2,NULL),
	(214,23,'Saleem Khan',23,22,12,57,40.35,2,NULL),
	(215,28,'Sarda Hussain',27,26,4,57,47.37,2,NULL),
	(216,26,'Inayat Ullah',41,13,3,57,71.93,2,NULL),
	(217,20,'Mohammad Ali',35,16,6,57,61.40,2,NULL),
	(218,NULL,'Behram Khan',24,10,23,57,42.11,2,NULL),
	(219,21,'Muzafar Said',39,17,1,57,68.42,2,NULL),
	(220,NULL,'Siraj Ul Haq',12,16,11,39,30.77,2,NULL),
	(221,41,'Saeed Gul',36,10,11,57,63.16,2,NULL),
	(222,27,'Bakht Baidar',45,12,0,57,78.95,2,NULL),
	(223,18,'Muhammad Ali Shah',28,27,2,57,49.12,2,NULL),
	(224,116,'Shakeel Ahmad',30,4,25,57,52.63,2,NULL),
	(225,90,'Naseem Hayat',46,2,9,57,80.70,2,NULL),
	(226,118,'Meher Taj Roghani',49,1,7,57,85.96,2,NULL),
	(227,119,'Nadia Sher',26,5,26,57,45.61,2,NULL),
	(228,120,'Aisha Naeem',56,0,1,57,98.25,2,NULL),
	(229,121,'Maliha Ali Asghar Khan',23,32,2,57,40.35,2,NULL),
	(230,91,'Zareen Riaz',53,1,3,57,92.98,2,NULL),
	(231,122,'Nargis',49,5,3,57,85.96,2,NULL),
	(232,76,'Nagina Khan',47,3,7,57,82.46,2,NULL),
	(233,92,'Dina Naz',39,18,0,57,68.42,2,NULL),
	(234,77,'Bibi Fozia',39,9,9,57,68.42,2,NULL),
	(235,93,'Romana Jalil',49,4,4,57,85.96,2,NULL),
	(236,8,'Uzma Khan',46,3,8,57,80.70,2,NULL),
	(237,11,'Najma Shaheen',43,2,12,57,75.44,2,NULL),
	(238,24,'Aamna Sardar',49,4,4,57,85.96,2,NULL),
	(239,94,'Ruqia Hina',40,4,13,57,70.18,2,NULL),
	(240,15,'Sobia Shahid',25,15,17,57,43.86,2,NULL),
	(241,78,'Rashda Riffat',53,2,2,57,92.98,2,NULL),
	(242,7,'Anisa Zeb Tahirkheli',39,9,9,57,68.42,2,NULL),
	(243,32,'Meraj Hamayun Khan',49,8,0,57,85.96,2,NULL),
	(244,79,'Yasmeen Pir Mohammad Khan',43,13,1,57,75.44,2,NULL),
	(245,123,'Khatoon Bibi',50,3,4,57,87.72,2,NULL),
	(246,13,'Nighat Orakzai',28,28,1,57,49.12,2,NULL),
	(247,NULL,'Soran Singh',42,5,10,57,73.68,2,NULL),
	(248,56,'Askar Pervaiz',48,1,8,57,84.21,2,NULL),
	(249,66,'Frederick Azeem',49,5,3,57,85.96,2,NULL),
	(250,57,'Ziaullah Khan',4,46,1,51,7.84,3,NULL),
	(251,33,'Shaukat Ali Yousafzai',28,22,1,51,54.90,3,NULL),
	(252,81,'Javed Nasim',46,5,0,51,90.20,3,NULL),
	(253,43,'Arif Yousaf',34,17,0,51,66.67,3,NULL),
	(254,58,'Yaseen Khan Khalil',39,11,1,51,76.47,3,NULL),
	(255,67,'Fazl Elahi',27,22,2,51,52.94,3,NULL),
	(256,37,'Mehmood Jan',43,0,8,51,84.31,3,NULL),
	(257,NULL,'Arbab Wasim Khan',2,1,0,3,66.67,3,NULL),
	(258,68,'Arbab Jahandad Khan',43,8,0,51,84.31,3,NULL),
	(259,16,'Shah Farman',32,19,0,51,62.75,3,NULL),
	(260,59,'Muhammad Ishtiaq',20,28,3,51,39.22,3,NULL),
	(261,97,'Khaliq ur Rehman',36,9,6,51,70.59,3,NULL),
	(262,98,'Pervaiz Khattak',15,36,0,51,29.41,3,NULL),
	(263,99,'Jamshaid ud Din',27,24,0,51,52.94,3,NULL),
	(264,50,'Muhammad Idrees',26,25,0,51,50.98,3,NULL),
	(265,51,'Qurban Ali Khan',45,4,2,51,88.24,3,NULL),
	(266,100,'Fazle Shakoor Khan',34,17,0,51,66.67,3,NULL),
	(267,60,'Sultan Mohammad Khan',26,25,0,51,50.98,3,NULL),
	(268,52,'Arshad Ali',44,5,2,51,86.27,3,NULL),
	(269,82,'Khalid Khan',28,21,2,51,54.90,3,NULL),
	(270,5,'Sikandar Hayat Khan',29,22,0,51,56.86,3,NULL),
	(271,69,'Mohammad Arif',32,14,5,51,62.75,3,NULL),
	(272,40,'Ahmed Khan Bahadur',12,36,3,51,23.53,3,NULL),
	(273,70,'Muhammad Zahid Durrani',16,17,18,51,31.37,3,NULL),
	(274,101,'Ubaid Ullah Mayar',11,39,1,51,21.57,3,NULL),
	(275,71,'Iftikhar Ali Mushwani',26,12,13,51,50.98,3,NULL),
	(276,61,'Jamshaid Khan Mohmand',35,7,9,51,68.63,3,NULL),
	(277,29,'Gohar Ali Shah',9,42,0,51,17.65,3,NULL),
	(278,102,'Tufail Anjum',31,20,0,51,60.78,3,NULL),
	(279,44,'Muhammad Atif',25,25,1,51,49.02,3,NULL),
	(280,53,'Babar Khan',35,16,0,51,68.63,3,NULL),
	(281,14,'Shah Ram Khan',30,14,7,51,58.82,3,NULL),
	(282,103,'Mohammad Ali Tarkai',7,43,1,51,13.73,3,NULL),
	(283,9,'Abdul Karim',42,2,7,51,82.35,3,NULL),
	(284,117,'Asad Qaiser',34,17,0,51,66.67,3,NULL),
	(285,62,'Muhammad Sheeraz',40,4,7,51,78.43,3,NULL),
	(286,83,'Amjad Khan Afridi',20,28,3,51,39.22,3,NULL),
	(287,72,'Zia Ullah Khan Bangash',34,17,0,51,66.67,3,NULL),
	(288,22,'Imtiaz Shahid',40,6,5,51,78.43,3,NULL),
	(289,63,'Gul Sahib Khan',30,21,0,51,58.82,3,NULL),
	(290,54,'Malik Qasim Khan Khattak',31,12,8,51,60.78,3,NULL),
	(291,84,'Shah Faisal Khan',31,20,0,51,60.78,3,NULL),
	(292,2,'Mufti Said Janan',28,17,6,51,54.90,3,NULL),
	(293,34,'Mushtaq Ahmed Ghani',38,8,5,51,74.51,3,NULL),
	(294,114,'Sardar Fareed',25,16,10,51,49.02,3,NULL),
	(295,85,'Qalandar Khan Lodhi',37,7,7,51,72.55,3,NULL),
	(296,3,'Sardar Aurangzeb Nalota',44,4,3,51,86.27,3,NULL),
	(297,86,'Sardar Muhammad Idrees',29,12,10,51,56.86,3,NULL),
	(298,45,'Raja Faisal Zaman',22,13,16,51,43.14,3,NULL),
	(299,104,'Akbar Ayub Khan',24,17,10,51,47.06,3,NULL),
	(300,87,'Gohar Nawaz Khan',6,43,2,51,11.76,3,NULL),
	(301,73,'Faisal Zaman',15,35,1,51,29.41,3,NULL),
	(302,55,'Sardar Zahoor Ahmad',24,5,22,51,47.06,3,NULL),
	(303,88,'Mian Zia Ur Rehman',23,8,20,51,45.10,3,NULL),
	(304,25,'Saleh Muhammad',17,4,30,51,33.33,3,NULL),
	(305,46,'Wajeh uz Zaman Khan',12,28,11,51,23.53,3,NULL),
	(306,105,'Ibrar Hussain',8,7,36,51,15.69,3,NULL),
	(307,4,'Zareen Gul',44,5,2,51,86.27,3,NULL),
	(308,47,'Nawab Zada Wali Mohammad Khan',38,10,3,51,74.51,3,NULL),
	(309,12,'Shah Hussain Khan',40,8,3,51,78.43,3,NULL),
	(310,106,'Abdul Haq Khan',15,30,6,51,29.41,3,NULL),
	(311,35,'Muhammad Asmatullah',17,34,0,51,33.33,3,NULL),
	(312,64,'Abdul Sattar Khan',18,33,0,51,35.29,3,NULL),
	(313,107,'Ali Amin Gandapur',10,41,0,51,19.61,3,NULL),
	(314,108,'Sami Ullah',14,37,0,51,27.45,3,NULL),
	(315,17,'Maulana Lutf ur Rehman',24,27,0,51,47.06,3,NULL),
	(316,115,'Sardar Ikramullah Gandapur',19,19,13,51,37.25,3,NULL),
	(317,95,'Ihtesham Javed Akber Khan',29,20,2,51,56.86,3,NULL),
	(318,65,'Mahmood Ahmad Khan',27,12,12,51,52.94,3,NULL),
	(319,38,'Azam Khan Durrani',27,9,15,51,52.94,3,NULL),
	(320,48,'Fakhr Azam Wazir',19,29,3,51,37.25,3,NULL),
	(321,74,'Shah Mohammad',21,11,19,51,41.18,3,NULL),
	(322,49,'Malik Riaz Khan',24,19,8,51,47.06,3,NULL),
	(323,109,'Anwar Hayat Khan',30,4,17,51,58.82,3,NULL),
	(324,30,'Noor Saleem Khan',24,27,0,51,47.06,3,NULL),
	(325,19,'Munawar Khan Advocate',38,9,4,51,74.51,3,NULL),
	(326,6,'Sardar Hussain Babak',26,25,0,51,50.98,3,NULL),
	(327,31,'Habib-Ur-Rahman',38,7,6,51,74.51,3,NULL),
	(328,10,'Mulana Mufti Fazal Ghafoor',30,16,5,51,58.82,3,NULL),
	(329,110,'Fazal Hakim',33,1,17,51,64.71,3,NULL),
	(330,111,'Azizullah Khan',38,2,11,51,74.51,3,NULL),
	(331,89,'Amjad Ali',32,16,3,51,62.75,3,NULL),
	(332,112,'Muhibullah Khan',24,17,10,51,47.06,3,NULL),
	(333,75,'Mehmood Khan',29,21,1,51,56.86,3,NULL),
	(334,1,'Jafar Shah',27,16,8,51,52.94,3,NULL),
	(335,80,'Haider Ali Khan',27,20,4,51,52.94,3,NULL),
	(336,36,'Muhammad Rashad Khan',26,24,1,51,50.98,3,NULL),
	(337,39,'Abdul Munim',34,16,1,51,66.67,3,NULL),
	(338,23,'Saleem Khan',28,21,2,51,54.90,3,NULL),
	(339,28,'Sarda Hussain',17,33,1,51,33.33,3,NULL),
	(340,26,'Inayat Ullah',33,14,4,51,64.71,3,NULL),
	(341,20,'Mohammad Ali',16,26,9,51,31.37,3,NULL),
	(342,42,'Sahibzada Sanaullah',26,7,3,36,72.22,3,NULL),
	(343,21,'Muzafar Said',35,16,0,51,68.63,3,NULL),
	(344,113,'Izazul Mulk',10,2,3,15,66.67,3,NULL),
	(345,41,'Saeed Gul',31,19,1,51,60.78,3,NULL),
	(346,27,'Bakht Baidar',44,4,3,51,86.27,3,NULL),
	(347,18,'Muhammad Ali Shah',21,28,2,51,41.18,3,NULL),
	(348,116,'Shakeel Ahmad',19,17,15,51,37.25,3,NULL),
	(349,90,'Naseem Hayat',46,0,5,51,90.20,3,NULL),
	(350,118,'Meher Taj Roghani',50,0,1,51,98.04,3,NULL),
	(351,119,'Nadia Sher',11,20,20,51,21.57,3,NULL),
	(352,120,'Aisha Naeem',51,0,0,51,100.00,3,NULL),
	(353,121,'Maliha Ali Asghar Khan',11,37,3,51,21.57,3,NULL),
	(354,91,'Zareen Riaz',45,2,4,51,88.24,3,NULL),
	(355,122,'Nargis',39,10,2,51,76.47,3,NULL),
	(356,76,'Nagina Khan',51,0,0,51,100.00,3,NULL),
	(357,92,'Dina Naz',34,5,12,51,66.67,3,NULL),
	(358,77,'Bibi Fozia',35,7,9,51,68.63,3,NULL),
	(359,93,'Romana Jalil',25,7,19,51,49.02,3,NULL),
	(360,8,'Uzma Khan',29,8,14,51,56.86,3,NULL),
	(361,11,'Najma Shaheen',47,3,1,51,92.16,3,NULL),
	(362,24,'Aamna Sardar',33,13,5,51,64.71,3,NULL),
	(363,94,'Ruqia Hina',41,4,6,51,80.39,3,NULL),
	(364,15,'Sobia Shahid',29,13,9,51,56.86,3,NULL),
	(365,78,'Rashda Riffat',48,2,1,51,94.12,3,NULL),
	(366,7,'Anisa Zeb Tahirkheli',39,3,9,51,76.47,3,NULL),
	(367,32,'Meraj Hamayun Khan',43,0,8,51,84.31,3,NULL),
	(368,79,'Yasmeen Pir Mohammad Khan',31,15,5,51,60.78,3,NULL),
	(369,123,'Khatoon Bibi',26,15,10,51,50.98,3,NULL),
	(370,13,'Nighat Orakzai',21,28,2,51,41.18,3,NULL),
	(371,NULL,'Soran Singh',25,4,13,51,49.02,3,NULL),
	(372,56,'Askar Pervaiz',50,1,0,51,98.04,3,NULL),
	(373,66,'Frederick Azeem',33,4,14,51,64.71,3,NULL),
	(374,57,'Ziaullah Khan',0,8,0,8,0.00,4,NULL),
	(375,33,'Shaukat Ali Yousafzai',8,0,0,8,100.00,4,NULL),
	(376,81,'Javed Nasim',6,2,0,8,75.00,4,NULL),
	(377,43,'Arif Yousaf',8,0,0,8,100.00,4,NULL),
	(378,58,'Yaseen Khan Khalil',6,2,0,8,75.00,4,NULL),
	(379,67,'Fazl Elahi',8,0,0,8,100.00,4,NULL),
	(380,37,'Mehmood Jan',6,2,0,8,75.00,4,NULL),
	(381,NULL,'Arbab Wasim Khan',7,1,0,8,87.50,4,NULL),
	(382,68,'Arbab Jahandad Khan',8,0,0,8,100.00,4,NULL),
	(383,16,'Shah Farman',8,0,0,8,100.00,4,NULL),
	(384,59,'Muhammad Ishtiaq',8,0,0,8,100.00,4,NULL),
	(385,97,'Khaliq ur Rehman',8,0,0,8,100.00,4,NULL),
	(386,98,'Pervaiz Khattak',8,0,0,8,100.00,4,NULL),
	(387,99,'Jamshaid ud Din',8,0,0,8,100.00,4,NULL),
	(388,50,'Muhammad Idrees',7,1,0,8,87.50,4,NULL),
	(389,51,'Qurban Ali Khan',6,2,0,8,75.00,4,NULL),
	(390,100,'Fazle Shakoor Khan',5,3,0,8,62.50,4,NULL),
	(391,60,'Sultan Mohammad Khan',3,5,0,8,37.50,4,NULL),
	(392,52,'Arshad Ali',8,0,0,8,100.00,4,NULL),
	(393,82,'Khalid Khan',7,1,0,8,87.50,4,NULL),
	(394,5,'Sikandar Hayat Khan',8,0,0,8,100.00,4,NULL),
	(395,69,'Mohammad Arif',8,0,0,8,100.00,4,NULL),
	(396,40,'Ahmed Khan Bahadur',4,4,0,8,50.00,4,NULL),
	(397,70,'Muhammad Zahid Durrani',3,2,3,8,37.50,4,NULL),
	(398,101,'Ubaid Ullah Mayar',5,3,0,8,62.50,4,NULL),
	(399,71,'Iftikhar Ali Mushwani',8,0,0,8,100.00,4,NULL),
	(400,61,'Jamshaid Khan Mohmand',5,3,0,8,62.50,4,NULL),
	(401,29,'Gohar Ali Shah',0,8,0,8,0.00,4,NULL),
	(402,102,'Tufail Anjum',8,0,0,8,100.00,4,NULL),
	(403,44,'Muhammad Atif',8,0,0,8,100.00,4,NULL),
	(404,53,'Babar Khan',6,2,0,8,75.00,4,NULL),
	(405,14,'Shah Ram Khan',8,0,0,8,100.00,4,NULL),
	(406,103,'Mohammad Ali Tarkai',5,3,0,8,62.50,4,NULL),
	(407,9,'Abdul Karim',6,2,0,8,75.00,4,NULL),
	(408,117,'Asad Qaiser',8,0,0,8,100.00,4,NULL),
	(409,62,'Muhammad Sheeraz',5,0,3,8,62.50,4,NULL),
	(410,83,'Amjad Khan Afridi',6,0,2,8,75.00,4,NULL),
	(411,72,'Zia Ullah Khan Bangash',7,1,0,8,87.50,4,NULL),
	(412,22,'Imtiaz Shahid',8,0,0,8,100.00,4,NULL),
	(413,63,'Gul Sahib Khan',6,2,0,8,75.00,4,NULL),
	(414,54,'Malik Qasim Khan Khattak',8,0,0,8,100.00,4,NULL),
	(415,84,'Shah Faisal Khan',8,0,0,8,100.00,4,NULL),
	(416,2,'Mufti Said Janan',0,0,8,8,0.00,4,NULL),
	(417,34,'Mushtaq Ahmed Ghani',8,0,0,8,100.00,4,NULL),
	(418,114,'Sardar Fareed',1,0,7,8,12.50,4,NULL),
	(419,85,'Qalandar Khan Lodhi',7,0,1,8,87.50,4,NULL),
	(420,3,'Sardar Aurangzeb Nalota',4,0,4,8,50.00,4,NULL),
	(421,86,'Sardar Muhammad Idrees',7,1,0,8,87.50,4,NULL),
	(422,45,'Raja Faisal Zaman',7,0,1,8,87.50,4,NULL),
	(423,104,'Akbar Ayub Khan',8,0,0,8,100.00,4,NULL),
	(424,87,'Gohar Nawaz Khan',4,4,0,8,50.00,4,NULL),
	(425,73,'Faisal Zaman',3,5,0,8,37.50,4,NULL),
	(426,55,'Sardar Zahoor Ahmad',4,0,4,8,50.00,4,NULL),
	(427,88,'Mian Zia Ur Rehman',7,0,1,8,87.50,4,NULL),
	(428,25,'Saleh Muhammad',4,0,4,8,50.00,4,NULL),
	(429,46,'Wajeh uz Zaman Khan',3,1,4,8,37.50,4,NULL),
	(430,105,'Ibrar Hussain',1,7,0,8,12.50,4,NULL),
	(431,4,'Zareen Gul',7,1,0,8,87.50,4,NULL),
	(432,47,'Nawab Zada Wali Mohammad Khan',6,0,2,8,75.00,4,NULL),
	(433,12,'Shah Hussain Khan',8,0,0,8,100.00,4,NULL),
	(434,106,'Abdul Haq Khan',5,2,1,8,62.50,4,NULL),
	(435,35,'Muhammad Asmatullah',7,1,0,8,87.50,4,NULL),
	(436,64,'Abdul Sattar Khan',5,1,2,8,62.50,4,NULL),
	(437,107,'Ali Amin Gandapur',8,0,0,8,100.00,4,NULL),
	(438,108,'Sami Ullah',7,1,0,8,87.50,4,NULL),
	(439,17,'Maulana Lutf ur Rehman',8,0,0,8,100.00,4,NULL),
	(440,115,'Sardar Ikramullah Gandapur',8,0,0,8,100.00,4,NULL),
	(441,95,'Ihtesham Javed Akber Khan',7,1,0,8,87.50,4,NULL),
	(442,65,'Mahmood Ahmad Khan',8,0,0,8,100.00,4,NULL),
	(443,38,'Azam Khan Durrani',7,0,1,8,87.50,4,NULL),
	(444,48,'Fakhr Azam Wazir',5,3,0,8,62.50,4,NULL),
	(445,74,'Shah Mohammad',3,5,0,8,37.50,4,NULL),
	(446,49,'Malik Riaz Khan',6,2,0,8,75.00,4,NULL),
	(447,109,'Anwar Hayat Khan',7,0,1,8,87.50,4,NULL),
	(448,30,'Noor Saleem Khan',8,0,0,8,100.00,4,NULL),
	(449,19,'Munawar Khan Advocate',8,0,0,8,100.00,4,NULL),
	(450,6,'Sardar Hussain Babak',8,0,0,8,100.00,4,NULL),
	(451,31,'Habib-Ur-Rahman',8,0,0,8,100.00,4,NULL),
	(452,10,'Mulana Mufti Fazal Ghafoor',8,0,0,8,100.00,4,NULL),
	(453,110,'Fazal Hakim',8,0,0,8,100.00,4,NULL),
	(454,111,'Azizullah Khan',8,0,0,8,100.00,4,NULL),
	(455,89,'Amjad Ali',8,0,0,8,100.00,4,NULL),
	(456,112,'Muhibullah Khan',8,0,0,8,100.00,4,NULL),
	(457,75,'Mehmood Khan',8,0,0,8,100.00,4,NULL),
	(458,1,'Jafar Shah',8,0,0,8,100.00,4,NULL),
	(459,80,'Haider Ali Khan',8,0,0,8,100.00,4,NULL),
	(460,36,'Muhammad Rashad Khan',5,3,0,8,62.50,4,NULL),
	(461,39,'Abdul Munim',8,0,0,8,100.00,4,NULL),
	(462,23,'Saleem Khan',7,1,0,8,87.50,4,NULL),
	(463,28,'Sarda Hussain',4,4,0,8,50.00,4,NULL),
	(464,26,'Inayat Ullah',8,0,0,8,100.00,4,NULL),
	(465,20,'Mohammad Ali',8,0,0,8,100.00,4,NULL),
	(466,42,'Sahibzada Sanaullah',4,1,3,8,50.00,4,NULL),
	(467,21,'Muzafar Said',8,0,0,8,100.00,4,NULL),
	(468,113,'Izazul Mulk',8,0,0,8,100.00,4,NULL),
	(469,41,'Saeed Gul',8,0,0,8,100.00,4,NULL),
	(470,27,'Bakht Baidar',7,1,0,8,87.50,4,NULL),
	(471,18,'Muhammad Ali Shah',1,7,0,8,12.50,4,NULL),
	(472,116,'Shakeel Ahmad',3,5,0,8,37.50,4,NULL),
	(473,90,'Naseem Hayat',6,0,2,8,75.00,4,NULL),
	(474,118,'Meher Taj Roghani',8,0,0,8,100.00,4,NULL),
	(475,119,'Nadia Sher',5,3,0,8,62.50,4,NULL),
	(476,120,'Aisha Naeem',8,0,0,8,100.00,4,NULL),
	(477,121,'Maliha Ali Asghar Khan',1,7,0,8,12.50,4,NULL),
	(478,91,'Zareen Riaz',8,0,0,8,100.00,4,NULL),
	(479,122,'Nargis',4,4,0,8,50.00,4,NULL),
	(480,76,'Nagina Khan',7,0,1,8,87.50,4,NULL),
	(481,92,'Dina Naz',8,0,0,8,100.00,4,NULL),
	(482,77,'Bibi Fozia',8,0,0,8,100.00,4,NULL),
	(483,93,'Romana Jalil',0,0,8,8,0.00,4,NULL),
	(484,8,'Uzma Khan',8,0,0,8,100.00,4,NULL),
	(485,11,'Najma Shaheen',8,0,0,8,100.00,4,NULL),
	(486,24,'Aamna Sardar',8,0,0,8,100.00,4,NULL),
	(487,94,'Ruqia Hina',8,0,0,8,100.00,4,NULL),
	(488,15,'Sobia Shahid',0,8,0,8,0.00,4,NULL),
	(489,78,'Rashda Riffat',8,0,0,8,100.00,4,NULL),
	(490,7,'Anisa Zeb Tahirkheli',8,0,0,8,100.00,4,NULL),
	(491,32,'Meraj Hamayun Khan',8,0,0,8,100.00,4,NULL),
	(492,79,'Yasmeen Pir Mohammad Khan',8,0,0,8,100.00,4,NULL),
	(493,123,'Khatoon Bibi',8,0,0,8,100.00,4,NULL),
	(494,13,'Nighat Orakzai',4,4,0,8,50.00,4,NULL),
	(495,NULL,'Vacant since 2200402016',0,0,0,0,0.00,4,NULL),
	(496,56,'Askar Pervaiz',8,0,0,8,100.00,4,NULL),
	(497,66,'Frederick Azeem',7,0,1,8,87.50,4,NULL);

/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table attendancedate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attendancedate`;

CREATE TABLE `attendancedate` (
  `atdAttendanceDateID` int(11) NOT NULL AUTO_INCREMENT,
  `atdAttendanceYear` int(11) NOT NULL,
  PRIMARY KEY (`atdAttendanceDateID`),
  UNIQUE KEY `attAttendanceID_UNIQUE` (`atdAttendanceDateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `attendancedate` WRITE;
/*!40000 ALTER TABLE `attendancedate` DISABLE KEYS */;

INSERT INTO `attendancedate` (`atdAttendanceDateID`, `atdAttendanceYear`)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mpa` WRITE;
/*!40000 ALTER TABLE `mpa` DISABLE KEYS */;

INSERT INTO `mpa` (`mpaID`, `mpaName`, `mpaDescription`, `mpaImageName`)
VALUES
	(1,'Jafar Shah','KP Politician','Jafar_Shah.jpg'),
	(2,'Mufti Said Janan','KP Politician','Mufti_Said_Janan.jpg'),
	(3,'Sardar Aurangzeb Nalota','KP Politician','Sardar_Aurangzeb_Nalota.jpg'),
	(4,'Zareen Gul','KP Politician','Zareen_Gul.jpg'),
	(5,'Sikandar Hayat Khan','KP Politician','Sikandar_Hayat_Khan.jpg'),
	(6,'Sardar Hussain Babak','KP Politician','Sardar_Hussain_Babak.jpg'),
	(7,'Anisa Zeb Tahirkheli','KP Politician','Anisa_Zeb_Tahirkheli.jpg'),
	(8,'Uzma Khan','KP Politician','Uzma_Khan.jpg'),
	(9,'Abdul Karim','KP Politician','Abdul_Karim.jpg'),
	(10,'Mulana Mufti Fazal Ghafoor','KP Politician','Mulana_Mufti_Fazal_Ghafoor.jpg'),
	(11,'Najma Shaheen','KP Politician','Najma_Shaheen.jpg'),
	(12,'Shah Hussain Khan','KP Politician','Shah_Hussain_Khan.jpg'),
	(13,'Nighat Orakzai','KP Politician','Nighat_Orakzai.jpg'),
	(14,'Shah Ram Khan','KP Politician','Shah_Ram_Khan.jpg'),
	(15,'Sobia Shahid','KP Politician','Sobia_Shahid.jpg'),
	(16,'Shah Farman','KP Politician','Shah_Farman.jpg'),
	(17,'Maulana Lutf ur Rehman','KP Politician','Maulana_Lutf_ur_Rehman.jpg'),
	(18,'Muhammad Ali Shah','KP Politician','Muhammad_Ali_Shah.jpg'),
	(19,'Munawar Khan Advocate','KP Politician','Munawar_Khan_Advocate.jpg'),
	(20,'Mohammad Ali','KP Politician','Mohammad_Ali.jpg'),
	(21,'Muzafar Said','KP Politician','Muzafar_Said.jpg'),
	(22,'Imtiaz Shahid','KP Politician','Imtiaz_Shahid.jpg'),
	(23,'Saleem Khan','KP Politician','Saleem_Khan.jpg'),
	(24,'Aamna Sardar','KP Politician','Aamna_Sardar.jpg'),
	(25,'Saleh Muhammad','KP Politician','Saleh_Muhammad.jpg'),
	(26,'Inayat Ullah','KP Politician','Inayat_Ullah.jpg'),
	(27,'Bakht Baidar','KP Politician','Bakht_Baidar.jpg'),
	(28,'Sarda Hussain','KP Politician','Sarda_Hussain.jpg'),
	(29,'Gohar Ali Shah','KP Politician','Gohar_Ali_Shah.jpg'),
	(30,'Noor Saleem Khan','KP Politician','Noor_Saleem_Khan.jpg'),
	(31,'Habib-Ur-Rahman','KP Politician','Habib-Ur-Rahman.jpg'),
	(32,'Meraj Hamayun Khan','KP Politician','Meraj_Hamayun_Khan.jpg'),
	(33,'Shaukat Ali Yousafzai','KP Politician','Shaukat_Ali_Yousafzai.jpg'),
	(34,'Mushtaq Ahmed Ghani','KP Politician','Mushtaq_Ahmed_Ghani.jpg'),
	(35,'Muhammad Asmatullah','KP Politician','Muhammad_Asmatullah.jpg'),
	(36,'Muhammad Rashad Khan','KP Politician','Muhammad_Rashad_Khan.jpg'),
	(37,'Mehmood Jan','KP Politician','Mehmood_Jan.jpg'),
	(38,'Azam Khan Durrani','KP Politician','Azam_Khan_Durrani.jpg'),
	(39,'Abdul Munim','KP Politician','Abdul_Munim.jpg'),
	(40,'Ahmed Khan Bahadur','KP Politician','Ahmed_Khan_Bahadur.jpg'),
	(41,'Saeed Gul','KP Politician','Saeed_Gul.jpg'),
	(42,'Sahibzada Sanaullah','KP Politician','Sahibzada_Sanaullah.jpg'),
	(43,'Arif Yousaf','KP Politician','Arif_Yousaf.jpg'),
	(44,'Muhammad Atif','KP Politician','Muhammad_Atif.jpg'),
	(45,'Raja Faisal Zaman','KP Politician','Raja_Faisal_Zaman.jpg'),
	(46,'Wajeh uz Zaman Khan','KP Politician','Wajeh_uz_Zaman_Khan.jpg'),
	(47,'Nawab Zada Wali Mohammad Khan','KP Politician','Nawab_Zada_Wali_Mohammad_Khan.jpg'),
	(48,'Fakhr Azam Wazir','KP Politician','Fakhr_Azam_Wazir.jpg'),
	(49,'Malik Riaz Khan','KP Politician','Malik_Riaz_Khan.jpg'),
	(50,'Muhammad Idrees','KP Politician','Muhammad_Idrees.jpg'),
	(51,'Qurban Ali Khan','KP Politician','Qurban_Ali_Khan.jpg'),
	(52,'Arshad Ali','KP Politician','Arshad_Ali.jpg'),
	(53,'Babar Khan','KP Politician','Babar_Khan.jpg'),
	(54,'Malik Qasim Khan Khattak','KP Politician','Malik_Qasim_Khan_Khattak.jpg'),
	(55,'Sardar Zahoor Ahmad','KP Politician','Sardar_Zahoor_Ahmad.jpg'),
	(56,'Askar Pervaiz','KP Politician','Askar_Pervaiz.jpg'),
	(57,'Ziaullah Khan','KP Politician','Ziaullah_Khan.jpg'),
	(58,'Yaseen Khan Khalil','KP Politician','Yaseen_Khan_Khalil.jpg'),
	(59,'Muhammad Ishtiaq','KP Politician','Muhammad_Ishtiaq.jpg'),
	(60,'Sultan Mohammad Khan','KP Politician','Sultan_Mohammad_Khan.jpg'),
	(61,'Jamshaid Khan Mohmand','KP Politician','Jamshaid_Khan_Mohmand.jpg'),
	(62,'Muhammad Sheeraz','KP Politician','Muhammad_Sheeraz.jpg'),
	(63,'Gul Sahib Khan','KP Politician','Gul_Sahib_Khan.jpg'),
	(64,'Abdul Sattar Khan','KP Politician','Abdul_Sattar_Khan.jpg'),
	(65,'Mahmood Ahmad Khan','KP Politician','Mahmood_Ahmad_Khan.jpg'),
	(66,'Frederick Azeem','KP Politician','Frederick_Azeem.jpg'),
	(67,'Fazl Elahi','KP Politician','Fazl_Elahi.jpg'),
	(68,'Arbab Jahandad Khan','KP Politician','Arbab_Jahandad_Khan.jpg'),
	(69,'Mohammad Arif','KP Politician','Mohammad_Arif.jpg'),
	(70,'Muhammad Zahid Durrani','KP Politician','Muhammad_Zahid_Durrani.jpg'),
	(71,'Iftikhar Ali Mushwani','KP Politician','Iftikhar_Ali_Mushwani.jpg'),
	(72,'Zia Ullah Khan Bangash','KP Politician','Zia_Ullah_Khan_Bangash.jpg'),
	(73,'Faisal Zaman','KP Politician','Faisal_Zaman.jpg'),
	(74,'Shah Mohammad','KP Politician','Shah_Mohammad.jpg'),
	(75,'Mehmood Khan','KP Politician','Mehmood_Khan.jpg'),
	(76,'Nagina Khan','KP Politician','Nagina_Khan.jpg'),
	(77,'Bibi Fozia','KP Politician','Bibi_Fozia.jpg'),
	(78,'Rashda Riffat','KP Politician','Rashda_Riffat.jpg'),
	(79,'Yasmeen Pir Mohammad Khan','KP Politician','Yasmeen_Pir_Mohammad_Khan.jpg'),
	(80,'Haider Ali Khan','KP Politician','Haider_Ali_Khan.jpg'),
	(81,'Javed Nasim','KP Politician','Javed_Nasim.jpg'),
	(82,'Khalid Khan','KP Politician','Khalid_Khan.jpg'),
	(83,'Amjad Khan Afridi','KP Politician','Amjad_Khan_Afridi.jpg'),
	(84,'Shah Faisal Khan','KP Politician','Shah_Faisal_Khan.jpg'),
	(85,'Qalandar Khan Lodhi','KP Politician','Qalandar_Khan_Lodhi.jpg'),
	(86,'Sardar Muhammad Idrees','KP Politician','Sardar_Muhammad_Idrees.jpg'),
	(87,'Gohar Nawaz Khan','KP Politician','Gohar_Nawaz_Khan.jpg'),
	(88,'Mian Zia Ur Rehman','KP Politician','Mian_Zia_Ur_Rehman.jpg'),
	(89,'Amjad Ali','KP Politician','Amjad_Ali.jpg'),
	(90,'Naseem Hayat','KP Politician','Naseem_Hayat.jpg'),
	(91,'Zareen Riaz','KP Politician','Zareen_Riaz.jpg'),
	(92,'Dina Naz','KP Politician','Dina_Naz.jpg'),
	(93,'Romana Jalil','KP Politician','Romana_Jalil.jpg'),
	(94,'Ruqia Hina','KP Politician','Ruqia_Hina.jpg'),
	(95,'Ihtesham Javed Akber Khan','KP Politician','Ihtesham_Javed_Akber_Khan.jpg'),
	(96,'Arbab Muhammad Wasim Khan','KP Politician','Arbab_Muhammad_Wasim_Khan.jpg'),
	(97,'Khaliq Ur Rehman','KP Politician','Khaliq_Ur_Rehman.jpg'),
	(98,'Pervaiz Khattak','KP Politician','Pervaiz_Khattak.jpg'),
	(99,'Jamshaid ud din','KP Politician','Jamshaid_ud_din.jpg'),
	(100,'Fazle Shakoor Khan','KP Politician','Fazle_Shakoor_Khan.jpg'),
	(101,'Ubaid Ullah Mayar','KP Politician','Ubaid_Ullah_Mayar.jpg'),
	(102,'Tufail Anjum','KP Politician','Tufail_Anjum.jpg'),
	(103,'Mohammad Ali Tarkai','KP Politician','Mohammad_Ali_Tarkai.jpg'),
	(104,'Akbar Ayub Khan','KP Politician','Akbar_Ayub_Khan.jpg'),
	(105,'Ibrar Hussain','KP Politician','Ibrar_Hussain.jpg'),
	(106,'Abdul Haq Khan','KP Politician','Abdul_Haq_Khan.jpg'),
	(107,'Ali Amin Gandapur','KP Politician','Ali_Amin_Gandapur.jpg'),
	(108,'Sami Ullah','KP Politician','Sami_Ullah.jpg'),
	(109,'Anwar Hayat Khan','KP Politician','Anwar_Hayat_Khan.jpg'),
	(110,'Fazal Hakim','KP Politician','Fazal_Hakim.jpg'),
	(111,'Azizullah Khan','KP Politician','Azizullah_Khan.jpg'),
	(112,'Muhibullah Khan','KP Politician','Muhibullah_Khan.jpg'),
	(113,'Izazul Mulk','KP Politician','Izazul_Mulk.jpg'),
	(114,'Sardar Fareed','KP Politician','Sardar_Fareed.jpg'),
	(115,'Sardar Ikramullah Gandapur','KP Politician','Sardar_Ikramullah_Gandapur.jpg'),
	(116,'Shakeel Ahmad','KP Politician','Shakeel_Ahmad.jpg'),
	(117,'Asad Qaiser','KP Politician','Asad_Qaiser.jpg'),
	(118,'Meher Taj Roghani','KP Politician','Meher_Taj_Roghani.jpg'),
	(119,'Nadia Sher','KP Politician','Nadia_Sher.jpg'),
	(120,'Aisha Naeem','KP Politician','Aisha_Naeem.jpg'),
	(121,'Maliha Ali Asghar Khan','KP Politician','Maliha_Ali_Asghar_Khan.jpg'),
	(122,'Nargis','KP Politician','Nargis.jpg'),
	(123,'Khatoon Bibi','KP Politician','Khatoon_Bibi.jpg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='\ncntContinuencyID\n';

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
	(47,NULL,NULL,47,'PML-N ','PK-59 Batagram-I '),
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
	(100,NULL,NULL,100,'JUI-F ','PK-17 Charsadda-I '),
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
   `attendance`.`mpaName` AS `mpaName`,sum(ifnull(`attendance`.`attPresents`,0)) AS `TotalPresents`,sum(ifnull(`attendance`.`attAbsents`,0)) AS `TotalAbsents`,sum(ifnull(`attendance`.`attApplications`,0)) AS `TotalApplications`
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

        DECLARE p_TotalQuestions                INT UNSIGNED DEFAULT 100;
        DECLARE p_TotalResolutions              INT UNSIGNED DEFAULT 100;
        DECLARE p_TotalPrivilegeMotions         INT UNSIGNED DEFAULT 100;
        DECLARE p_TotalAdjournmentMotions       INT UNSIGNED DEFAULT 100;
        DECLARE p_TotalCallAttentionNotices     INT UNSIGNED DEFAULT 100;
        DECLARE p_TotalBills                    INT UNSIGNED DEFAULT 100;


        SELECT  SUM(mpascorecard.Questions) 
                , SUM(mpascorecard.Resolutions)
                , SUM(mpascorecard.PrivilegeMotions)
                , SUM(mpascorecard.AdjournmentMotions)
                , SUM(mpascorecard.CallAttentionNotices)
                , SUM(mpascorecard.Bills)

        INTO    p_TotalQuestions
                , p_TotalResolutions
                , p_TotalPrivilegeMotions
                , p_TotalAdjournmentMotions
                , p_TotalCallAttentionNotices
                , p_TotalBills

        FROM    mpascorecard;


	SELECT  mpa.mpaID	
		, mpa.mpaName
		, mpa.mpaDescription
		, mpa.mpaImageName
		, mpatenures.plpPoliticalPartyID
		, mpatenures.cntConstituencyID
		, politicalparty.plpLongName
		, politicalparty.plpImageName
		, mpascorecard.Questions
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.Questions, 0) > IFNULL(mpascorecard.Questions, 0)) + 1                       AS QuestionsRank
                , p_TotalQuestions                                                                                                                              AS QuestionsTotal
                , CAST((100 * Questions / p_TotalQuestions) AS DECIMAL(10,3))                                                                                   AS QuestionsPercent
		, mpascorecard.Resolutions
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.Resolutions, 0) > IFNULL(mpascorecard.Resolutions, 0)) + 1                   AS ResolutionsRank
                , p_TotalResolutions                                                                                                                            AS ResolutionsTotal
                , CAST((100 * Resolutions / p_TotalResolutions) AS DECIMAL(10,3))                                                                               AS ResolutionsPercent
		, mpascorecard.PrivilegeMotions
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.PrivilegeMotions, 0) > IFNULL(mpascorecard.PrivilegeMotions, 0)) + 1         AS PrivilegeMotionsRank
                , p_TotalPrivilegeMotions                                                                                                                       AS PrivilegeMotionsTotal
                , CAST((100 * PrivilegeMotions / p_TotalPrivilegeMotions) AS DECIMAL(10,3))                                                                     AS PrivilegeMotionsPercent
		, mpascorecard.AdjournmentMotions
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.AdjournmentMotions, 0) > IFNULL(mpascorecard.AdjournmentMotions, 0)) + 1     AS AdjournmentMotionsRank
                , p_TotalAdjournmentMotions                                                                                                                     AS AdjournmentMotionsTotal
                , CAST((100 * AdjournmentMotions / p_TotalAdjournmentMotions) AS DECIMAL(10,3))                                                                 AS AdjournmentMotionsPercent
		, mpascorecard.CallAttentionNotices
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.CallAttentionNotices, 0) > IFNULL(mpascorecard.CallAttentionNotices, 0)) + 1 AS CallAttentionNoticesRank
                , p_TotalCallAttentionNotices                                                                                                                   AS CallAttentionNoticesTotal
                , CAST((100 * CallAttentionNotices / p_TotalCallAttentionNotices) AS DECIMAL(10,3))                                                             AS CallAttentionNoticesPercent
		, mpascorecard.Bills
		, (SELECT IFNULL(COUNT(*), 0) FROM mpascorecard m2 where IFNULL(m2.Bills, 0) > IFNULL(mpascorecard.Bills, 0)) + 1                               AS BillsRank
                , p_TotalBills                                                                                                                                  AS BillsTotal
                , CAST((100 * Bills / p_TotalBills) AS DECIMAL(10,3))                                                                                           AS BillsPercent
		, mpaattendance.TotalPresents
		, mpaattendance.TotalAbsents
		, mpaattendance.TotalApplications
		, (SELECT IFNULL(COUNT(*), 0) FROM mpaattendance m3 where (IFNULL(m3.TotalPresents, 0) + IFNULL(m3.TotalApplications, 0)) > (IFNULL(mpaattendance.TotalPresents, 0) + IFNULL(mpaattendance.TotalApplications, 0))) + 1 AS ATTRank
		, mpascorecard.Questions + mpascorecard.Resolutions + mpascorecard.PrivilegeMotions + mpascorecard.AdjournmentMotions + mpascorecard.CallAttentionNotices + mpascorecard.Bills		AS Overall
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
