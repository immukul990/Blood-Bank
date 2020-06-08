-- phpMyAdmin SQL Dump
-- version 4.9.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2019 at 03:00 PM
-- Server version: 10.4.8
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE IF NOT EXISTS `advertisement` (
  `adv_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_title` varchar(100) NOT NULL,
  `org_by` varchar(100) NOT NULL,
  `pic` varchar(700) NOT NULL,
  `detail` varchar(900) NOT NULL,
  PRIMARY KEY (`adv_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`adv_id`, `camp_title`, `org_by`, `pic`, `detail`) VALUES
(4, 'Sri Sairam Collage of Engineering', 'NSS Unit', 'sairam.jpg', 'Blood donation camp Organised by NSS Unit  One who donate get certificate by NSS\r\nThat can help you also to gets blood in jeopard time');

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE IF NOT EXISTS `bloodgroup` (
  `bg_id` int(100) NOT NULL AUTO_INCREMENT,
  `bg_name` varchar(100) NOT NULL,
  PRIMARY KEY (`bg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` ( `bg_name`, `bg_id`) VALUES
('O+', 1),
('O-', 2),
('AB+', 3),
('AB-', 4),
('A+', 5),
('A-', 6),
('B+', 7),
('B-', 8);

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE IF NOT EXISTS `camp` (
  `camp_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `state` int(100) NOT NULL,
  `city` int(100) NOT NULL,
  `pic` varchar(900) NOT NULL,
  `detail` varchar(1000) NOT NULL,
  PRIMARY KEY (`camp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_title`, `organised_by`, `state`, `city`, `pic`, `detail`) VALUES
(1, 'Sri Sairam Collage of Engineering', 'NSS Unit', 1, 1, 'sairam.jpg', 'A Blood Donation Camp at Sri Sairam Collage of Engineering organized by NSS Unit , Bangalore.'),
(7, ' Lovely Professional University', 'Lovely Professional University', 2, 2, 'B.D camp 034.jpg', 'A Blood Donation Camp at Lovely Professional University organized by Lovely Professional University , Jalandhar.'),
(8, 'National Institite Of Technology', 'Lions Club', 4, 3, 'p36.jpg', 'A Blood Donation Camp at NIT, Patna organized by Lions Club, Patna.\n');


-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(100) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` int(100) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `pin_code`, `district`, `state`) VALUES
(1, 'Bangalore', '562106', 'Bangalore', 1),
(2, 'Faridabad', '121001', 'Gurgaon', 2),
(3, 'Patna', '144001', 'Patna', 4);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `row_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subj` varchar(700) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`row_id`, `name`, `email`, `mobile`, `subj`) VALUES
(1, 'Mukul', 'immukul990@gmail.com', '9980440498', 'save life'),
(2, 'Amit', 'amith@yahoo.com', '9888889765', 'save life'),
(3, 'neeru', 'neeru45@gmail.com', '9463958058', 'give blooooooood'),
(4, 'paras', 'bhatia34@gmail.com', '9216291294', 'save life');


-- --------------------------------------------------------

--
-- Table structure for table `donarregistration`
--

CREATE TABLE IF NOT EXISTS `donarregistration` (
  `donar_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL,
  PRIMARY KEY (`donar_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `donarregistration`
--

INSERT INTO `donarregistration` (`donar_id`, `name`, `gender`, `age`, `mobile`, `b_id`, `email`, `pwd`, `pic`) VALUES
(3, 'Mukul Kumar', 'male', '20', '9980440498', 13, 'immukul990@gmail.com', 123, 'mukul.jpg'),
(4, 'Amit Kumar', 'male', '20', '9888961990', 17, 'amith5244@gmail.com', 123, '11168037_1610636085842033_904443745256932191_n.jpg'),
(5, 'Rakesh', 'male', '22', '9876505652', 17, 'rakesh12@gmil.com', 123, '1002679_629448530471361_5912528223898153120_n.jpg'),
(6, 'Manu', 'female', '20', '9779730479', 13, 'manpreetkaler@yahoo.com', 123, '12144826_691191231017304_7118038794667291151_n.jpg'),
(7, 'Sukhwinder', 'male', '22', '01823280290', 17, 'sunnysuyan@gmail.com', 123, 'p3Penguins.jpg'),
(8, 'Abhishek', 'male', '24', '0123456780', 19, 'abhi@ymail.com', 123, 'resizedBlood donation (1).jpg'),
(9, 'Ramanjeet Kaur', 'female', '26', '9295769630', 15, 'rbawa08@yahoo.com', 123, '11261437_1624099511137421_8482759699813102898_n.jpg'),
(10, 'kuldip Banga', 'male', '26', '9878967543', 15, 'kbanga@yahoo.com', 123, '10593057_728311113906338_1063644592728298376_n.jpg'),
(11, 'Jaspinder', 'male', '24', '9445678765', 16, 'singhjaspinder12@gmail.com', 123, '12038392_969929529729736_1007747926670734265_n (1).jpg'),
(12, 'Sahil', 'male', '20', '8591824296', 13, 'sahildubey@gmail.com', 123, '12038380_834746969972073_6382623771453128938_n.jpg'),
(13, 'sonu', 'male', '25', '9594918765', 16, 'sonukhana34@gmail.com', 123, '11863382_1032998280067097_2552428582935820453_n.jpg'),
(14, 'Vinny', 'male', '24', '01824230721', 18, 'vinny786@gmail.com', 123, '11175046_366978330169273_8044521424217911178_n.jpg'),
(15, 'Rishav Bhatia', 'male', '19', '8781846758', 19, 'rbhatia@ymail.com', 123, '1491626_647476172014342_6155162312561723489_n.jpg'),
(16, 'Rahul Bangar', 'male', '25', '9216291294', 20, 'raulban@gmail.com', 123, '11899909_948967995160204_759838727467883977_n.jpg'),
(17, 'Prabhjot', 'male', '24', '9818134576', 20, 'prabh786@gmail.com', 123, '11899866_690854484348510_8725848025714675727_n.jpg'),
(18, 'Ridhima', 'female', '25', '9889786545', 14, 'ridhi@ymail.com', 123, '1.jpg'),
(19, 'Preet karanq', 'female', '28', '8427429079', 14, 'preet22@yahoo.com', 123, '123.jpg');
-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE IF NOT EXISTS `donation` (
  `donation_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_id` int(100) NOT NULL,
  `ddate` datetime NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `camp_id`, `ddate`, `units`, `detail`, `email`) VALUES
(1, 1, '2019-12-14 00:00:00', 10, 'A Blood Donation Camp at Sri Sairam Collage of Engineering organized by NSS Unit , Bangalore.', 'immukul990@gmail.com'),
(2, 7, '2019-12-11 00:00:00', 30, 'A Blood Donation Camp at Lovely Professional University organized by Lovely Professional University , Jalandhar.', 'ayushi@gmail.com'),
(3, 8, '2019-12-04 00:00:00', 25, 'A Blood Donation Camp at NIT, Patna organized by Lions Club, Patna.', 'manish02@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE IF NOT EXISTS `gallary` (
  `camp_id` int(100) NOT NULL,
  `pic_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(400) NOT NULL,
  `pic` varchar(800) NOT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`camp_id`, `pic_id`, `title`, `pic`) VALUES
(9, 15, 'pic 1', 'p48_2.jpg'),
(9, 16, 'pic 2', 'p11 (1).jpg'),
(9, 17, 'pic 3', 'p141.jpg'),
(9, 18, 'pic 5', 'p177_2.jpg'),
(9, 19, 'pic 6', 'p279.jpg'),
(8, 20, 'pic 8', 'p246.jpg'),
(9, 21, 'pic 9', 'p82.jpg'),
(7, 22, 'pic 2', 'p82.jpg'),
(7, 23, 'pic 3', 'p93.jpg'),
(7, 24, 'pic 6', 'p148.jpg'),
(7, 25, 'pic 7', 'pamrik@ymail.com1 (2).jpg'),
(7, 26, 'pic 8', 'slider4.jpg'),
(7, 27, 'pic 9', 'slider7.jpg'),
(1, 28, 'pic 2', 'slider8.jpg'),
(1, 29, 'pic 3', 'slider3.jpg'),
(1, 30, 'pic 4', 'donation.jpg'),
(1, 31, 'pic 3', 'Blood-Donation2.jpg'),
(1, 32, 'pic 4', 'blood-donation-.jpg'),
(1, 33, 'pic 6', 'blood-donation.jpg'),
(8, 34, 'pic 1', 'resizedBlood donation (1).jpg'),
(8, 35, 'pic 2', 'Blood-donation-camp.jpg'),
(8, 36, 'pic 4', '3.jpg'),
(8, 37, 'pic 5', '4.jpg'),
(8, 38, 'pic 7', 'slider6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `detail` varchar(900) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `detail`) VALUES
(1, 'blood donate', 'give blood '),
(2, 'blood bank', 'blooooddddd\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE IF NOT EXISTS `requestes` (
  `req_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` int(100) NOT NULL,
  `reqdate` datetime NOT NULL,
  `detail` varchar(500) NOT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`req_id`, `name`, `gender`, `age`, `mobile`, `email`, `bgroup`, `reqdate`, `detail`) VALUES
(1, 'Balwant singh', 'male', '22', '8427420298', 'balwant11@gmail.com', 1, '2019-11-15 08:33:50', 'save life'),
(2, 'Priya', 'female', '21', '8427420291', 'priya719@gmail.com', 2, '2019-11-18 03:22:10', 'save life'),
(3, 'Taran', 'male', '25', '7589325050', 'taran@ymail.com', 3, '2019-10-29 12:53:20', 'please donate');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(100) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Karnataka'),
(2, 'Delhi'),
(3, 'Andhra Pradesh'),
(4, 'Bihar'),
(5, 'Assam');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `pwd`, `typeofuser`) VALUES
('Mukul', 'mukul', 'Admin'),
('Amit', 'amit', 'General');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
