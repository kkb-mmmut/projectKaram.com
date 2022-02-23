-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 09, 2019 at 06:31 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `karam`
--
CREATE DATABASE `karam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `karam`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`admid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admid`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complain`
--

CREATE TABLE IF NOT EXISTS `tbl_complain` (
  `comid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ctext` varchar(500) NOT NULL,
  `postdate` varchar(50) NOT NULL,
  PRIMARY KEY (`comid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_complain`
--

INSERT INTO `tbl_complain` (`comid`, `name`, `email`, `ctext`, `postdate`) VALUES
(1, 'Hashim', 'bdhu786@gmail.com', 'kjl;jfads', '2019-08-06 06:38:53');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `conid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL,
  `date` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`conid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`conid`, `name`, `email`, `mobile`, `message`, `date`) VALUES
(1, 'Mohd Hashim', 'bdhu786@gmail.com', '8858344175', 'karam Industry\r\n', '0.00198117'),
(2, 'Mohd Hashim', 'sonudon096@gmail.com', '1255546462', 'fhfghdhgfhdf', '0.00198117'),
(3, 'Mohd Qasim', 'chotoo994@gmail.com', '9170243039', 'hiiiii', '0.00198117'),
(4, 'Hasan', 'hasan@gmail.com', '9695445353', 'fdgdfshgf', '0.00198117'),
(5, 'hasan', 'hasan@gmail.com', '2545465455', 'jkljfjsadk', '0.00198117'),
(6, 'Mohd Hashim', '123@gmail.com', '778688181', 'i am not filling well in your companyt\r\n', '0.00198117'),
(7, 'Mohd Hashim', '123@gmail.com', '778688181', 'i am not filling well in your companyt\r\n', '0.00198117'),
(8, 'Mohd Hashim', '123@gmail.com', '778688181', 'i am not filling well in your companyt\r\n', '0.00198117'),
(9, 'Mohd Hashim', '123@gmail.com', '778688181', 'i am not filling well in your companyt\r\n', '0.00198117'),
(10, 'Mohd Hashim', '123@gmail.com', '778688181', 'i am not filling well in your companyt\r\n', '0.00198117'),
(11, 'Mohd Qasim Azhari', 'chotoo994@gmail.com', '9935095156', 'hiiii i am busy today', '0.00198117'),
(12, 'Mohd Qasim Azhari', 'chotoo994@gmail.com', '9935095156', 'hiiii i am busy today', '0.00198117'),
(13, 'hasim', 'bdhu786@gmail.com', '558855552', '543212', '0.00198117'),
(14, 'mohd hashimq', 'asdf@gmail.com', '5434354576', 'jklkljkl', NULL),
(15, 'Mohd Hashim', 'sonudon096@gmail.com', '7846556465', 'kjfkdsjakjsdakfjkkjkljk', '2019-08-03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE IF NOT EXISTS `tbl_employee` (
  `empid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `address` varchar(80) NOT NULL,
  `department` varchar(20) NOT NULL,
  `date` varchar(10) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`empid`, `name`, `fname`, `dob`, `gender`, `email`, `password`, `mobile`, `contact`, `address`, `department`, `date`) VALUES
(1, 'Hashim', 'Nizamuddin', '1111-11-11', 'male', 'bdhu786@gmail.com', '123', '8858344175', '9935095156', 'Reweridih', 'HR', '2019-08-06'),
(2, 'Qasim a', 'Nizamuddin', '1111-02-11', 'male', 'chotoo994@gmail.com', '123456', '9170243039', '9935095156', 'reweridih', 'Finance', '2019-08-06'),
(3, 'hasan', 'Nizamuddin', '2055-05-05', 'male', 'hasan@gmail.com', '123', '9935095156', '9935095156', 'Ghosi', 'Marketing', '2019-08-06'),
(4, 'Reahan', 'Nizamuddin', '2019-12-31', 'male', 'rehan123@gmail.com', '123', '8887855785', '6351323252', 'Ghazipur', 'Finance', '2019-08-07'),
(5, 'Ashis', 'S L patel', '2005-12-29', 'male', 'ptel@gmail.com', '123456', '8546541655', '6546515614', 'Jaunpur', 'Workshop', '2019-08-07'),
(6, 'Manglesh', 'Manglesh ke pita', '2008-12-31', 'male', 'manglesh@gmail.com', '123', '5435643215', '3543546554', 'Jaupur', 'Marketing', '2019-08-07'),
(7, 'Hashim', 'Nizamuddin', '2019-12-31', 'male', 'abcd@gmail.com', '54564135', '5456456454', '5456465456', 'mau', 'HR', '2019-08-08'),
(8, 'hasan', 'tert', '2019-08-09', 'male', 'x@gmail.com', '145', '1345678922', '1234569875', 'asdfghjkl', 'Marketing', '2019-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE IF NOT EXISTS `tbl_feedback` (
  `feedid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ftext` varchar(500) NOT NULL,
  `postdate` varchar(50) NOT NULL,
  PRIMARY KEY (`feedid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`feedid`, `name`, `email`, `ftext`, `postdate`) VALUES
(1, 'Hashim', 'bdhu786@gmail.com', 'jklhjh', '2019-08-04 10:25:35'),
(2, 'Hashim', 'bdhu786@gmail.com', 'skfdjgd', '2019-08-04 10:31:20'),
(3, 'Hashim', 'bdhu786@gmail.com', 'jkljfkasdjfk', '2019-08-04 10:50:51'),
(4, 'Hashim', 'bdhu786@gmail.com', 'kjlnbjk', '2019-08-04 10:53:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job`
--

CREATE TABLE IF NOT EXISTS `tbl_job` (
  `jobid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `salary` varchar(10) NOT NULL,
  `experience` varchar(20) NOT NULL,
  `location` varchar(200) NOT NULL,
  `date` varchar(10) NOT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_job`
--

INSERT INTO `tbl_job` (`jobid`, `title`, `salary`, `experience`, `location`, `date`) VALUES
(1, 'Computer Science Engineer', '20000', '2 years', 'Lucknow', '2019-08-08'),
(2, 'Electrical Engineer', '30000', '2 years', 'Lucknow', '2019-08-08'),
(3, 'Instrument controlar', '25000', '1 Year', 'Lucknow', '2019-08-08'),
(4, 'Supervisor', '12000', '5 years', 'Lucknow sector-12 Gt Road ', '2019-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notification`
--

CREATE TABLE IF NOT EXISTS `tbl_notification` (
  `notid` int(11) NOT NULL AUTO_INCREMENT,
  `notification` varchar(200) NOT NULL,
  `date` varchar(10) NOT NULL,
  PRIMARY KEY (`notid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_notification`
--

INSERT INTO `tbl_notification` (`notid`, `notification`, `date`) VALUES
(1, '"TODYA IS HOLLYDAY"', '2019-08-03'),
(2, 'I AM VERY HAPPY', '2019-08-03'),
(3, 'ON 12th OF AUGUST WE WILL THE "CELEBRATE FAREWELL PARTY"', '2019-08-03'),
(4, 'TODAY CEO REACH IN COMPANY', '2019-08-03'),
(5, 'Today is festival', '2019-08-03');
