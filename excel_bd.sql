-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2016 at 08:28 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `excel_bd`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblsale`
--

CREATE TABLE IF NOT EXISTS `tblsale` (
`SaleinfoID` int(11) NOT NULL,
  `SaleinfoUUID` int(11) NOT NULL,
  `TypeOfService` varchar(250) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `DeliveryBoyID` int(11) NOT NULL,
  `Hawb` int(11) NOT NULL,
  `Destination` varchar(300) NOT NULL,
  `Pcs` int(11) NOT NULL,
  `Item` varchar(250) NOT NULL,
  `Weight` varchar(250) NOT NULL,
  `Volweight` varchar(250) NOT NULL,
  `AmountUsd` varchar(250) NOT NULL,
  `AmountinBDT` varchar(250) NOT NULL,
  `SaleinfoIsActive` int(11) NOT NULL,
  `UserIDInserted` int(11) NOT NULL,
  `UserIDUpdated` int(11) NOT NULL,
  `UserIDLocked` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime NOT NULL,
  `DateLocked` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsale`
--

INSERT INTO `tblsale` (`SaleinfoID`, `SaleinfoUUID`, `TypeOfService`, `CustomerID`, `DeliveryBoyID`, `Hawb`, `Destination`, `Pcs`, `Item`, `Weight`, `Volweight`, `AmountUsd`, `AmountinBDT`, `SaleinfoIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `DateInserted`, `DateUpdated`, `DateLocked`) VALUES
(1, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '33333', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '33333', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '2222', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '34444', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '144', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '144', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '144', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblsaleinfo`
--

CREATE TABLE IF NOT EXISTS `tblsaleinfo` (
`SaleinfoID` int(11) NOT NULL,
  `SaleinfoUUID` int(11) NOT NULL,
  `TypeOfService` varchar(120) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `DeliveryBoyID` int(11) NOT NULL,
  `Hawb` int(11) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Pcs` int(11) NOT NULL,
  `Item` varchar(100) NOT NULL,
  `Weight` varchar(50) NOT NULL,
  `Volweight` varchar(50) NOT NULL,
  `AmountUsd` varchar(50) NOT NULL,
  `AmountinBDT` varchar(50) NOT NULL,
  `SaleinfoIsActive` int(11) NOT NULL,
  `UserIDInserted` int(11) NOT NULL,
  `UserIDUpdated` int(11) NOT NULL,
  `UserIDLocked` int(11) NOT NULL,
  `DateInserted` datetime NOT NULL,
  `DateUpdated` datetime NOT NULL,
  `DateLocked` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsaleinfo`
--

INSERT INTO `tblsaleinfo` (`SaleinfoID`, `SaleinfoUUID`, `TypeOfService`, `CustomerID`, `DeliveryBoyID`, `Hawb`, `Destination`, `Pcs`, `Item`, `Weight`, `Volweight`, `AmountUsd`, `AmountinBDT`, `SaleinfoIsActive`, `UserIDInserted`, `UserIDUpdated`, `UserIDLocked`, `DateInserted`, `DateUpdated`, `DateLocked`) VALUES
(1, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '33333', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '33333', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '2222', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '34444', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '144', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '144', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '144', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '33333', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '33333', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '2222', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '34444', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '144', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '144', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 0, 'DUTY', 25325, 11, 2147483647, 'DHAKA', 1, 'SPX', '6.4', '6.4', '12', '144', 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_excel`
--

CREATE TABLE IF NOT EXISTS `tbl_excel` (
`id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `excel_e` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_excel`
--

INSERT INTO `tbl_excel` (`id`, `name`, `excel_e`) VALUES
(1, 'ssihia', 'sh@.com'),
(2, 'DUTY', '25325'),
(3, 'DUTY', '25325'),
(4, 'DUTY', '25325'),
(5, 'DUTY', '25325'),
(6, 'DUTY', '25325');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblsale`
--
ALTER TABLE `tblsale`
 ADD PRIMARY KEY (`SaleinfoID`);

--
-- Indexes for table `tblsaleinfo`
--
ALTER TABLE `tblsaleinfo`
 ADD PRIMARY KEY (`SaleinfoID`);

--
-- Indexes for table `tbl_excel`
--
ALTER TABLE `tbl_excel`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblsale`
--
ALTER TABLE `tblsale`
MODIFY `SaleinfoID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblsaleinfo`
--
ALTER TABLE `tblsaleinfo`
MODIFY `SaleinfoID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_excel`
--
ALTER TABLE `tbl_excel`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
