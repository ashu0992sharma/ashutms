-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 21, 2014 at 06:51 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `transport`
--
CREATE DATABASE IF NOT EXISTS `transport` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `transport`;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `designation` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `designation`, `name`) VALUES
(1, 'driver', 'rajiv'),
(2, 'driver', 'ashok');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE IF NOT EXISTS `routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `from_latitude` varchar(45) DEFAULT NULL,
  `from_longitude` varchar(45) DEFAULT NULL,
  `from_address` varchar(45) DEFAULT NULL,
  `to_latitude` varchar(45) DEFAULT NULL,
  `to_longitude` varchar(45) DEFAULT NULL,
  `to_address` varchar(45) DEFAULT NULL,
  `route_length` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `name`, `from_latitude`, `from_longitude`, `from_address`, `to_latitude`, `to_longitude`, `to_address`, `route_length`) VALUES
(1, 'route1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'route2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'route3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'route4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'route5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'route6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'route9', NULL, '77.31922752380365', 'A-64-65, BHEL Township,Noida, BHEL Township, ', '28.57267593416478', '77.3170388412475', 'Ecity Bioscope Road, Film City, Sector 16A, N', NULL),
(11, 'route 8', '', '', '', '', '', '', NULL),
(12, 'route9', '28.57478648211517', '77.31862670898431', '60, BHEL Township,Noida, BHEL Township, Secto', '28.575238736881495', '77.32785350799554', 'D-81, D Block, Pocket D, Sector 27, Noida, Ut', NULL),
(14, '', '28.573618148303115', '77.31897003173822', '71, BHEL Township,Noida, BHEL Township, Secto', '28.57783916405559', '77.32484943389886', 'B-186, B Block, Pocket B, Sector 19, Noida, U', NULL),
(15, '', '28.573618148303115', '77.31897003173822', '71, BHEL Township,Noida, BHEL Township, Secto', '28.57783916405559', '77.32484943389886', 'B-186, B Block, Pocket B, Sector 19, Noida, U', NULL),
(17, 'route11', '28.57267593416478', '77.32317573547357', 'N-27, N Block, Pocket K, Sector 18, Noida, Ut', '28.574334225404552', '77.31854087829583', '63, BHEL Township,Noida, BHEL Township, Secto', NULL),
(18, 'route11', '28.57267593416478', '77.32317573547357', 'N-27, N Block, Pocket K, Sector 18, Noida, Ut', '28.574334225404552', '77.31854087829583', '63, BHEL Township,Noida, BHEL Township, Secto', NULL),
(19, 'route 10', '28.573768901782152', '77.32562191009515', 'E-221, E Block, Pocket E, Sector 27, Noida, U', '28.58296445546863', '77.31622344970697', 'D-60, D Block, Sector 2, Noida, Uttar Pradesh', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `routes_stops`
--

CREATE TABLE IF NOT EXISTS `routes_stops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `stoppage_time` time DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `stop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `route_id` (`route_id`,`stop_id`),
  KEY `stop_id` (`stop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `routes_stops`
--

INSERT INTO `routes_stops` (`id`, `name`, `amount`, `sequence`, `stoppage_time`, `arrival_time`, `route_id`, `stop_id`) VALUES
(4, NULL, '600', NULL, NULL, NULL, 8, 2),
(9, NULL, '500', NULL, NULL, '00:06:00', 11, NULL),
(10, NULL, '700', 3, '00:10:00', '00:07:00', 12, 0),
(11, NULL, '500', 1, '00:10:00', '00:06:00', 12, 0),
(14, NULL, NULL, NULL, '00:10:00', '00:06:00', 14, 0),
(15, NULL, NULL, NULL, NULL, NULL, 14, 0),
(16, NULL, NULL, NULL, '00:10:00', '00:06:00', 15, 0),
(17, NULL, NULL, NULL, NULL, NULL, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE IF NOT EXISTS `schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `address` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=122 ;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`) VALUES
(1, 'Malwa Institute Of Technology And Management', 'NH-75, Sikroda, Badori, Jhansi Road, Near Power Grid Corporation Of India Limited, National Highway 75, Adupurajagir'),
(2, 'Indian Institute of Information Technology an', 'Morena Link Road, Gwalior , Madhya Pradesh, 474010, IIITM Campus, Gwalior'),
(3, 'ITM University', 'Jhansi Road, Opposite Sithouli Railway Station, Gwalior, Madhya Pradesh, 475001, National Highway 75, Gwalior'),
(4, 'Miss Hill High School', 'MLB Colony, Gandhinagar, Gwalior'),
(5, 'The Scindia School', 'The Fort, Gwalior, Madhya Pradesh 474008, Gwalior Fort, Gwalior'),
(6, 'Madhav Institute of Technology and Science', 'Gola Ka Mandir, Racecourse Road, Morar, Gwalior, Mela Ground, Thatipur, Gwalior'),
(7, 'Ebenezer Hr. Sec. School', 'Bhagatsingh Nagar, Near Deen Dayal Nagar, Gwalior(Madhya Pradesh), Deen Dayal Nagar, Gwalior'),
(8, 'Pinnacle', '36, Maharani Laxmibai Marg, MLB Colony, Gandhinagar, Gwalior'),
(9, 'Gwalior Glory High School', 'Shivpuri Link Rd'),
(10, 'St. Paul''s School', 'River View colony, Morar, Gwalior'),
(11, 'Scindia Kanya Vidyalaya', 'Basant Vihar Colony, Lashkar, Gwalior'),
(12, 'Prestige Institute of Management Gwalior', 'Airport Road , Opposite Deendayal Nagar , Gwalior , Madhya Pradesh 474020'),
(13, 'Shemrock Castle', 'Shemrock Castle, B/4, Harishankarpuram, Raksha Vihar, Lashkar, Gwalior'),
(14, 'Maharana Pratap College of Technology', 'Putli Ghar Road , Near Jiwaji University, Gwalior, Madhya Pradesh, 474006, Gwalior'),
(15, 'Lakshmibai National Institute of Physical Edu', 'Racecourse Road, Shakti Nagar, Gwalior, LNUPE Campus, Thatipur, Gwalior'),
(16, 'Oxford Public School', 'Shivpuri- Jhansi Link Road, Shivpuri Link Rd'),
(17, 'Little Angels High School', 'Mahadji Nagar, Shivpuri Link Road, Gudagudi Ka Naka, Gwalior'),
(18, 'DPS Gwalior', 'Shivpuri Link Road, Shivpuri Link Rd'),
(19, 'Delhi Public Academy', 'B-5, Deen Dayal Nagar, Morar, Gwalior'),
(20, 'Pragati Vidhya Peeth', 'Thandi Sadak, Raghavpuram, Morar, Gwalior'),
(21, 'Malwa Institute Of Technology And Management', 'NH-75, Sikroda, Badori, Jhansi Road, Near Power Grid Corporation Of India Limited, National Highway 75, Adupurajagir'),
(22, 'Indian Institute of Information Technology an', 'Morena Link Road, Gwalior , Madhya Pradesh, 474010, IIITM Campus, Gwalior'),
(23, 'ITM University', 'Jhansi Road, Opposite Sithouli Railway Station, Gwalior, Madhya Pradesh, 475001, National Highway 75, Gwalior'),
(24, 'Miss Hill High School', 'MLB Colony, Gandhinagar, Gwalior'),
(25, 'The Scindia School', 'The Fort, Gwalior, Madhya Pradesh 474008, Gwalior Fort, Gwalior'),
(26, 'Madhav Institute of Technology and Science', 'Gola Ka Mandir, Racecourse Road, Morar, Gwalior, Mela Ground, Thatipur, Gwalior'),
(27, 'Ebenezer Hr. Sec. School', 'Bhagatsingh Nagar, Near Deen Dayal Nagar, Gwalior(Madhya Pradesh), Deen Dayal Nagar, Gwalior'),
(28, 'Pinnacle', '36, Maharani Laxmibai Marg, MLB Colony, Gandhinagar, Gwalior'),
(29, 'Gwalior Glory High School', 'Shivpuri Link Rd'),
(30, 'St. Paul''s School', 'River View colony, Morar, Gwalior'),
(31, 'Scindia Kanya Vidyalaya', 'Basant Vihar Colony, Lashkar, Gwalior'),
(32, 'Prestige Institute of Management Gwalior', 'Airport Road , Opposite Deendayal Nagar , Gwalior , Madhya Pradesh 474020'),
(33, 'Shemrock Castle', 'Shemrock Castle, B/4, Harishankarpuram, Raksha Vihar, Lashkar, Gwalior'),
(34, 'Maharana Pratap College of Technology', 'Putli Ghar Road , Near Jiwaji University, Gwalior, Madhya Pradesh, 474006, Gwalior'),
(35, 'Lakshmibai National Institute of Physical Edu', 'Racecourse Road, Shakti Nagar, Gwalior, LNUPE Campus, Thatipur, Gwalior'),
(36, 'Oxford Public School', 'Shivpuri- Jhansi Link Road, Shivpuri Link Rd'),
(37, 'Little Angels High School', 'Mahadji Nagar, Shivpuri Link Road, Gudagudi Ka Naka, Gwalior'),
(38, 'DPS Gwalior', 'Shivpuri Link Road, Shivpuri Link Rd'),
(39, 'Delhi Public Academy', 'B-5, Deen Dayal Nagar, Morar, Gwalior'),
(40, 'Pragati Vidhya Peeth', 'Thandi Sadak, Raghavpuram, Morar, Gwalior'),
(41, 'Malwa Institute Of Technology And Management', 'NH-75, Sikroda, Badori, Jhansi Road, Near Power Grid Corporation Of India Limited, National Highway 75, Adupurajagir'),
(42, 'Indian Institute of Information Technology an', 'Morena Link Road, Gwalior , Madhya Pradesh, 474010, IIITM Campus, Gwalior'),
(43, 'ITM University', 'Jhansi Road, Opposite Sithouli Railway Station, Gwalior, Madhya Pradesh, 475001, National Highway 75, Gwalior'),
(44, 'Miss Hill High School', 'MLB Colony, Gandhinagar, Gwalior'),
(45, 'The Scindia School', 'The Fort, Gwalior, Madhya Pradesh 474008, Gwalior Fort, Gwalior'),
(46, 'Madhav Institute of Technology and Science', 'Gola Ka Mandir, Racecourse Road, Morar, Gwalior, Mela Ground, Thatipur, Gwalior'),
(47, 'Ebenezer Hr. Sec. School', 'Bhagatsingh Nagar, Near Deen Dayal Nagar, Gwalior(Madhya Pradesh), Deen Dayal Nagar, Gwalior'),
(48, 'Pinnacle', '36, Maharani Laxmibai Marg, MLB Colony, Gandhinagar, Gwalior'),
(49, 'Gwalior Glory High School', 'Shivpuri Link Rd'),
(50, 'St. Paul''s School', 'River View colony, Morar, Gwalior'),
(51, 'Scindia Kanya Vidyalaya', 'Basant Vihar Colony, Lashkar, Gwalior'),
(52, 'Prestige Institute of Management Gwalior', 'Airport Road , Opposite Deendayal Nagar , Gwalior , Madhya Pradesh 474020'),
(53, 'Shemrock Castle', 'Shemrock Castle, B/4, Harishankarpuram, Raksha Vihar, Lashkar, Gwalior'),
(54, 'Kendriya Vidyalaya No. 2', 'National Highway 92, Gwalior'),
(55, 'Maharana Pratap College of Technology', 'Putli Ghar Road , Near Jiwaji University, Gwalior, Madhya Pradesh, 474006, Gwalior'),
(56, 'Lakshmibai National Institute of Physical Edu', 'Racecourse Road, Shakti Nagar, Gwalior, LNUPE Campus, Thatipur, Gwalior'),
(57, 'Oxford Public School', 'Shivpuri- Jhansi Link Road, Shivpuri Link Rd'),
(58, 'Little Angels High School', 'Mahadji Nagar, Shivpuri Link Road, Gudagudi Ka Naka, Gwalior'),
(59, 'DPS Gwalior', 'Shivpuri Link Road, Shivpuri Link Rd'),
(60, 'Delhi Public Academy', 'B-5, Deen Dayal Nagar, Morar, Gwalior'),
(61, 'Pragati Vidhya Peeth', 'Thandi Sadak, Raghavpuram, Morar, Gwalior'),
(62, 'Indian Institute of Information Technology an', 'Morena Link Road, Gwalior , Madhya Pradesh, 474010, IIITM Campus, Gwalior'),
(63, 'ITM University', 'Jhansi Road, Opposite Sithouli Railway Station, Gwalior, Madhya Pradesh, 475001, National Highway 75, Gwalior'),
(64, 'Miss Hill High School', 'MLB Colony, Gandhinagar, Gwalior'),
(65, 'The Scindia School', 'The Fort, Gwalior, Madhya Pradesh 474008, Gwalior Fort, Gwalior'),
(66, 'Madhav Institute of Technology and Science', 'Gola Ka Mandir, Racecourse Road, Morar, Gwalior, Mela Ground, Thatipur, Gwalior'),
(67, 'Ebenezer Hr. Sec. School', 'Bhagatsingh Nagar, Near Deen Dayal Nagar, Gwalior(Madhya Pradesh), Deen Dayal Nagar, Gwalior'),
(68, 'Pinnacle', '36, Maharani Laxmibai Marg, MLB Colony, Gandhinagar, Gwalior'),
(69, 'Gwalior Glory High School', 'Shivpuri Link Rd'),
(70, 'St. Paul''s School', 'River View colony, Morar, Gwalior'),
(71, 'Scindia Kanya Vidyalaya', 'Basant Vihar Colony, Lashkar, Gwalior'),
(72, 'Prestige Institute of Management Gwalior', 'Airport Road , Opposite Deendayal Nagar , Gwalior , Madhya Pradesh 474020'),
(73, 'Shemrock Castle', 'Shemrock Castle, B/4, Harishankarpuram, Raksha Vihar, Lashkar, Gwalior'),
(74, 'Kendriya Vidyalaya No. 2', 'National Highway 92, Gwalior'),
(75, 'Maharana Pratap College of Technology', 'Putli Ghar Road , Near Jiwaji University, Gwalior, Madhya Pradesh, 474006, Gwalior'),
(76, 'Lakshmibai National Institute of Physical Edu', 'Racecourse Road, Shakti Nagar, Gwalior, LNUPE Campus, Thatipur, Gwalior'),
(77, 'Oxford Public School', 'Shivpuri- Jhansi Link Road, Shivpuri Link Rd'),
(78, 'Little Angels High School', 'Mahadji Nagar, Shivpuri Link Road, Gudagudi Ka Naka, Gwalior'),
(79, 'DPS Gwalior', 'Shivpuri Link Road, Shivpuri Link Rd'),
(80, 'Delhi Public Academy', 'B-5, Deen Dayal Nagar, Morar, Gwalior'),
(81, 'Pragati Vidhya Peeth', 'Thandi Sadak, Raghavpuram, Morar, Gwalior'),
(82, 'Indian Institute of Information Technology an', 'Morena Link Road, Gwalior , Madhya Pradesh, 474010, IIITM Campus, Gwalior'),
(83, 'ITM University', 'Jhansi Road, Opposite Sithouli Railway Station, Gwalior, Madhya Pradesh, 475001, National Highway 75, Gwalior'),
(84, 'Miss Hill High School', 'MLB Colony, Gandhinagar, Gwalior'),
(85, 'The Scindia School', 'The Fort, Gwalior, Madhya Pradesh 474008, Gwalior Fort, Gwalior'),
(86, 'Madhav Institute of Technology and Science', 'Gola Ka Mandir, Racecourse Road, Morar, Gwalior, Mela Ground, Thatipur, Gwalior'),
(87, 'Ebenezer Hr. Sec. School', 'Bhagatsingh Nagar, Near Deen Dayal Nagar, Gwalior(Madhya Pradesh), Deen Dayal Nagar, Gwalior'),
(88, 'Pinnacle', '36, Maharani Laxmibai Marg, MLB Colony, Gandhinagar, Gwalior'),
(89, 'Gwalior Glory High School', 'Shivpuri Link Rd'),
(90, 'St. Paul''s School', 'River View colony, Morar, Gwalior'),
(91, 'Scindia Kanya Vidyalaya', 'Basant Vihar Colony, Lashkar, Gwalior'),
(92, 'Prestige Institute of Management Gwalior', 'Airport Road , Opposite Deendayal Nagar , Gwalior , Madhya Pradesh 474020'),
(93, 'Shemrock Castle', 'Shemrock Castle, B/4, Harishankarpuram, Raksha Vihar, Lashkar, Gwalior'),
(94, 'Kendriya Vidyalaya No. 2', 'National Highway 92, Gwalior'),
(95, 'Maharana Pratap College of Technology', 'Putli Ghar Road , Near Jiwaji University, Gwalior, Madhya Pradesh, 474006, Gwalior'),
(96, 'Lakshmibai National Institute of Physical Edu', 'Racecourse Road, Shakti Nagar, Gwalior, LNUPE Campus, Thatipur, Gwalior'),
(97, 'Oxford Public School', 'Shivpuri- Jhansi Link Road, Shivpuri Link Rd'),
(98, 'Little Angels High School', 'Mahadji Nagar, Shivpuri Link Road, Gudagudi Ka Naka, Gwalior'),
(99, 'DPS Gwalior', 'Shivpuri Link Road, Shivpuri Link Rd'),
(100, 'Delhi Public Academy', 'B-5, Deen Dayal Nagar, Morar, Gwalior'),
(101, 'Pragati Vidhya Peeth', 'Thandi Sadak, Raghavpuram, Morar, Gwalior'),
(102, 'Indian Institute of Information Technology an', 'Morena Link Road, Gwalior , Madhya Pradesh, 474010, IIITM Campus, Gwalior'),
(103, 'ITM University', 'Jhansi Road, Opposite Sithouli Railway Station, Gwalior, Madhya Pradesh, 475001, National Highway 75, Gwalior'),
(104, 'Miss Hill High School', 'MLB Colony, Gandhinagar, Gwalior'),
(105, 'The Scindia School', 'The Fort, Gwalior, Madhya Pradesh 474008, Gwalior Fort, Gwalior'),
(106, 'Madhav Institute of Technology and Science', 'Gola Ka Mandir, Racecourse Road, Morar, Gwalior, Mela Ground, Thatipur, Gwalior'),
(107, 'Ebenezer Hr. Sec. School', 'Bhagatsingh Nagar, Near Deen Dayal Nagar, Gwalior(Madhya Pradesh), Deen Dayal Nagar, Gwalior'),
(108, 'Pinnacle', '36, Maharani Laxmibai Marg, MLB Colony, Gandhinagar, Gwalior'),
(109, 'Gwalior Glory High School', 'Shivpuri Link Rd'),
(110, 'St. Paul''s School', 'River View colony, Morar, Gwalior'),
(111, 'Scindia Kanya Vidyalaya', 'Basant Vihar Colony, Lashkar, Gwalior'),
(112, 'Prestige Institute of Management Gwalior', 'Airport Road , Opposite Deendayal Nagar , Gwalior , Madhya Pradesh 474020'),
(113, 'Shemrock Castle', 'Shemrock Castle, B/4, Harishankarpuram, Raksha Vihar, Lashkar, Gwalior'),
(114, 'Kendriya Vidyalaya No. 2', 'National Highway 92, Gwalior'),
(115, 'Maharana Pratap College of Technology', 'Putli Ghar Road , Near Jiwaji University, Gwalior, Madhya Pradesh, 474006, Gwalior'),
(116, 'Lakshmibai National Institute of Physical Edu', 'Racecourse Road, Shakti Nagar, Gwalior, LNUPE Campus, Thatipur, Gwalior'),
(117, 'Little Angels High School', 'Mahadji Nagar, Shivpuri Link Road, Gudagudi Ka Naka, Gwalior'),
(118, 'Delhi Public Academy', 'B-5, Deen Dayal Nagar, Morar, Gwalior'),
(119, 'Preston College for Professional Studies', 'Bada Gaon Road, Khurer, Morar, Gwalior'),
(120, 'Pragati Vidhya Peeth', 'Thandi Sadak, Raghavpuram, Morar, Gwalior'),
(121, 'Greenwood Senior Secondary School', 'Aditya Puram, Gwalior');

-- --------------------------------------------------------

--
-- Table structure for table `stops`
--

CREATE TABLE IF NOT EXISTS `stops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `stops`
--

INSERT INTO `stops` (`id`, `name`, `latitude`, `longitude`, `address`) VALUES
(2, 'sec 62', '11.34', '45.55', 'sec 62'),
(3, 'sec 16', '62.12', '45.54', 'sec 16\r\n'),
(4, 'mayur vihar', '11.34', '45.55', 'mayur vihar'),
(5, 'dps noida', '28.574956077880366', '77.33675844192499', '600, Chameli Marg, Sector 28, Noida, Uttar Pradesh 201303, India'),
(6, 'sec 18', '28.5704145858047', '77.32390529632562', 'G-2-3, G Block, Pocket G, Sector 18, Noida, Uttar Pradesh 201301, India'),
(7, 'sec 18', '28.570678412284476', '77.3263514709472', 'A-10, first floor, bhawani market,Atta, Captain Vijyant Thapar Marg, Atta Market, Pocket E, Sector 27, Noida, Uttar Pradesh 201301, India'),
(8, 'sec 27', '28.574748794130205', '77.32806808471673', 'D-140, D Block, Pocket D, Sector 27, Noida, Uttar Pradesh 201301, India'),
(9, 'sec 29', '28.569057753459347', '77.33424789428705', '16-17, Sector 29, Noida, Uttar Pradesh 201303, India'),
(10, 'sec 25', '28.58258760431338', '77.34038478851312', 'Road Number 2, H-Block, Sector 25, JalVayu Vihar, Noida, Uttar Pradesh 201301, India'),
(11, 'bhel', '28.574937233919982', '77.31866962432855', '60, BHEL Township,Noida, BHEL Township, Sector 17, Noida, Uttar Pradesh 201301, India'),
(12, 'sec 3', '28.579874236131392', '77.31824047088617', 'A7, Sector 3, Block F, Sector 3, Noida, Uttar Pradesh 201301, India'),
(13, 'sec 28', '28.57173371158813', '77.33180171966546', '407-412, Sector 28, Noida, Uttar Pradesh 201303, India');

-- --------------------------------------------------------

--
-- Table structure for table `studentroutestops`
--

CREATE TABLE IF NOT EXISTS `studentroutestops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  `stop_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`,`route_id`,`stop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `studentroutestops`
--

INSERT INTO `studentroutestops` (`id`, `student_id`, `route_id`, `stop_id`) VALUES
(1, 4, 1, 2),
(10, 4, 13, 1),
(2, 6, 2, 3),
(5, 6, 8, 0),
(6, 6, 8, 0),
(7, 6, 8, 0),
(3, 7, 1, 2),
(4, 12, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classlist_id` int(11) NOT NULL,
  `admissioncategory_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `admission_date` date NOT NULL,
  `sr_no` varchar(100) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `distance_school` decimal(10,0) DEFAULT NULL,
  `school_bus` varchar(10) DEFAULT NULL,
  `medical_history` text NOT NULL,
  `other_health_issue` text NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `current_session` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `admit_session` varchar(20) NOT NULL,
  `last_fee_month` date DEFAULT NULL,
  `balance_remaining` decimal(10,2) DEFAULT '0.00',
  `photo_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_students_classlists1_idx` (`classlist_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `classlist_id`, `admissioncategory_id`, `first_name`, `middle_name`, `last_name`, `admission_date`, `sr_no`, `date_of_birth`, `gender`, `blood_group`, `distance_school`, `school_bus`, `medical_history`, `other_health_issue`, `email`, `current_session`, `status`, `admit_session`, `last_fee_month`, `balance_remaining`, `photo_id`) VALUES
(4, 49, 1, 'kaushal', 'kumar', 'pahwani', '2014-01-14', '12', '1996-01-10', 'male', 'b+', '32', 'yes', '', '', 'kaushal.pahewani@gmail.com', '2013', 'bright', '2013', '2014-02-06', '0.00', 2),
(5, 49, 1, 'shri', 'Kumar', 'pahwani', '2014-01-14', '4675', '1992-10-16', 'female', 'b+', '12', 'nO', '', '', 'kaushal@gmail.com', '2013', 'BORING', '2013', '2014-01-01', '0.00', 1),
(6, 50, 1, 'Rohan', 'ku.', 'Sharma', '2014-01-18', '78', '1997-01-23', 'Male', 'o+', '32', 'yes', '', '', 'kakal@gmail.com', '2014', 'BORING', '2013', '2014-01-29', '0.00', 2),
(7, 50, 2, 'uday', 'Shy', 'kumar', '2014-01-02', '321', '1996-01-11', 'male', 'b+', '32', 'yes', '.....', '....!!', 'uday@gmail.com', '2013', 'good', '2013', '2014-01-09', '0.00', 2),
(8, 49, 1, 'Priya', 'ku.', 'Ram', '2014-01-03', '78', '1996-01-10', 'Female', 'o+', '12', 'nO', '', '', NULL, '2013', 'bright', '2013', '2014-01-01', '0.00', 1),
(9, 49, 2, 'Ram ', 'ku.', 'mohan', '2014-01-18', '31', '1997-01-23', 'Male', 'o+', '12', 'yes', '', '', 'shrishti@hotmail.in', '2014', 'bright', '2013', '2014-01-01', '0.00', 1),
(12, 50, 1, 'Brown ', 'Deny', 'Jr.', '0000-00-00', '', '0000-00-00', 'male', 'b-', '54', 'yes', 'None', 'None', NULL, '2013', '', '', '0000-00-00', '0.00', 2),
(45, 50, 0, NULL, NULL, NULL, '0000-00-00', NULL, '0000-00-00', '', '', NULL, NULL, '', '', NULL, '2013', '', '', NULL, '0.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `chasis_no` varchar(100) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  `acquisition_date` date DEFAULT NULL,
  `license_plate` varchar(45) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `horse_power` varchar(45) DEFAULT NULL,
  `co2` varchar(45) DEFAULT NULL,
  `fuel_type` varchar(45) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `odometer_unit` varchar(45) DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `horse_powertax` decimal(10,2) DEFAULT NULL,
  `name` varchar(145) DEFAULT NULL,
  `transmission` varchar(45) DEFAULT NULL,
  `vehiclemodel` varchar(45) DEFAULT NULL,
  `vehiclestate` varchar(45) DEFAULT NULL,
  `is_active` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_vehicles_vehiclemodels_idx` (`vehiclemodel`),
  KEY `fk_vehicles_vehiclestates1_idx` (`vehiclestate`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `created`, `modified`, `created_by`, `chasis_no`, `color`, `registration_date`, `acquisition_date`, `license_plate`, `driver_id`, `seats`, `horse_power`, `co2`, `fuel_type`, `company_id`, `odometer_unit`, `doors`, `power`, `horse_powertax`, `name`, `transmission`, `vehiclemodel`, `vehiclestate`, `is_active`) VALUES
(3, '2014-03-22 11:33:00', '2014-03-22 11:33:00', NULL, '', '', NULL, NULL, 'hr05', NULL, NULL, '', '', '0', NULL, '', NULL, NULL, NULL, 'v3', '', NULL, NULL, ''),
(4, '2014-03-22 11:35:05', '2014-03-22 11:35:05', NULL, '', '', NULL, NULL, 'hr05', NULL, NULL, '', '', '0', NULL, '', NULL, NULL, NULL, 'v4', '', NULL, NULL, ''),
(5, '2014-03-22 11:37:02', '2014-03-22 11:37:02', NULL, '', '', NULL, NULL, 'hr05', NULL, NULL, '', '', '0', NULL, '', NULL, NULL, NULL, 'v5', '', NULL, NULL, ''),
(6, '2014-03-22 11:37:14', '2014-03-22 11:37:14', NULL, '', '', NULL, NULL, '', NULL, NULL, '', '', '0', NULL, '', NULL, NULL, NULL, 'v6', '', NULL, NULL, ''),
(7, '2014-03-22 11:38:39', '2014-03-22 11:38:39', NULL, '', '', NULL, NULL, '', NULL, NULL, '', '', '0', NULL, '', NULL, NULL, NULL, 'v7', '', NULL, NULL, ''),
(9, '2014-04-03 11:20:42', '2014-04-03 11:20:42', NULL, '', '', NULL, NULL, 'dl4c-6282', NULL, 45, '', '', '0', NULL, '', NULL, NULL, NULL, NULL, '', 'toyota', 'leased', 'yes'),
(13, '2014-04-14 08:24:04', '2014-04-14 08:24:04', NULL, '', 'yellow', NULL, '0000-00-00', 'dl5c 5647', NULL, NULL, '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', '', '', 'No'),
(18, '2014-04-14 09:08:34', '2014-04-14 09:08:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2014-04-14 09:16:39', '2014-04-14 09:16:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2014-04-14 09:19:03', '2014-04-14 09:19:03', NULL, '', '', NULL, NULL, '', NULL, NULL, '', '', 'null', NULL, '', NULL, NULL, NULL, '', '', '', '', 'null'),
(22, '2014-04-14 09:59:27', '2014-04-14 09:59:27', NULL, '2', 'blue', '2014-04-01', '2014-04-02', 'dl4c-6282', NULL, 45, NULL, '34', 'CNG', NULL, '', NULL, NULL, NULL, 'v8', '', '', '', 'YEs'),
(24, '2014-04-14 10:00:10', '2014-04-14 10:00:10', NULL, '2', 'blue', '2014-04-01', '2014-04-02', 'dl4c-6282', NULL, 45, NULL, '34', 'CNG', NULL, '', NULL, NULL, NULL, 'v8', '', '', '', 'YEs'),
(25, '2014-04-14 10:02:35', '2014-04-14 10:02:35', NULL, '2', 'blue', '2014-04-01', '2014-04-02', 'dl4c-6282', NULL, 45, NULL, '34', 'CNG', NULL, '', NULL, NULL, NULL, 'v8', '', '', '', 'YEs');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_employees`
--

CREATE TABLE IF NOT EXISTS `vehicles_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle_id` int(11) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `vehicles_employees`
--

INSERT INTO `vehicles_employees` (`id`, `vehicle_id`, `designation`, `name`) VALUES
(2, 1, 'cleaner', 'rajiv'),
(3, 3, NULL, 'ashok'),
(4, 7, NULL, 'rajiv'),
(5, 7, NULL, 'rajiv'),
(6, 8, 'driver', 'rajiv'),
(7, 8, 'driver', 'ashok'),
(8, 9, 'cleaner', 'ashok'),
(9, 10, 'cleaner', 'rajiv'),
(10, 10, 'cleaner', 'ashok'),
(11, 11, 'driver', 'rajiv'),
(12, 12, 'driver', 'rajiv'),
(13, 13, 'driver', 'rajiv'),
(14, 14, 'driver', 'rajiv'),
(15, 15, 'driver', 'rajiv'),
(16, 16, 'driver', 'ashok'),
(17, 17, 'cleaner', 'rajiv'),
(18, 21, 'null', 'null'),
(19, 23, 'driver', 'rajiv'),
(20, 25, 'cleaner', 'rajiv');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles_routes`
--

CREATE TABLE IF NOT EXISTS `vehicles_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vehicle_id` (`vehicle_id`,`route_id`),
  KEY `route_id` (`route_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `vehicles_routes`
--

INSERT INTO `vehicles_routes` (`id`, `start_time`, `end_time`, `capacity`, `vehicle_id`, `route_id`) VALUES
(11, '07:00:00', NULL, 50, NULL, 11),
(13, '00:05:45', '00:07:30', 30, NULL, 12);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vehicles_routes`
--
ALTER TABLE `vehicles_routes`
  ADD CONSTRAINT `vehicles_routes_ibfk_2` FOREIGN KEY (`route_id`) REFERENCES `routes` (`id`),
  ADD CONSTRAINT `vehicles_routes_ibfk_3` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
