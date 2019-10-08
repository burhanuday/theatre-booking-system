-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2019 at 04:19 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theater`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingid` int(12) NOT NULL,
  `bookingdate` date NOT NULL,
  `customerfk` int(6) NOT NULL,
  `performancefk` int(5) NOT NULL,
  `seatfk` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingid`, `bookingdate`, `customerfk`, `performancefk`, `seatfk`) VALUES
(9, '2019-10-08', 8, 326, 'A1'),
(8, '2019-09-29', 7, 325, 'B3'),
(7, '2019-09-29', 6, 325, 'A1'),
(6, '2019-09-28', 5, 325, 'B2');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(6) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `town` varchar(30) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  `phonenumber` varchar(13) DEFAULT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `firstname`, `lastname`, `street`, `town`, `postcode`, `phonenumber`, `email`) VALUES
(8, 'Burhanuddin', 'Udaipurwala', '350 Atlantic House, Lamington Road', 'Mumbai', '400007', '09773587619', 'udaipurwalaburhanuddin@gmail.c'),
(5, 'Burhanuddin', 'Udaipurwala', '350 Atlantic House, Lamington Road', 'Mumbai', '400007', '09773587619', 'udaipurwalaburhanuddin@gmail.c'),
(6, 'Burhanuddin', 'Udaipurwala', '350 Atlantic House, Lamington Road', 'Mumbai', '400007', '09773587619', 'udaipurwalaburhanuddin@gmail.c'),
(7, 'Burhanuddin', 'Udaipurwala', '350 Atlantic House, Lamington Road', 'Mumbai', '400007', '09773587619', 'udaipurwalaburhanuddin@gmail.c');

-- --------------------------------------------------------

--
-- Table structure for table `performance`
--

CREATE TABLE `performance` (
  `performanceid` int(5) NOT NULL,
  `performancedate` date NOT NULL,
  `productionfk` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `performance`
--

INSERT INTO `performance` (`performanceid`, `performancedate`, `productionfk`) VALUES
(326, '2019-10-25', 12134),
(325, '2019-10-25', 12131);

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `productionid` int(5) NOT NULL,
  `productiontypefk` varchar(20) NOT NULL,
  `productionname` varchar(50) NOT NULL,
  `productiondate` date NOT NULL,
  `productionprice` float NOT NULL,
  `productionimage` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `production`
--

INSERT INTO `production` (`productionid`, `productiontypefk`, `productionname`, `productiondate`, `productionprice`, `productionimage`) VALUES
(12134, 'Thriller', 'The Well (2020)', '2019-10-25', 190, 'https://m.media-amazon.com/images/M/MV5BMTYyMjIyMjY4N15BMl5BanBnXkFtZTgwMzAxNTQ5MTE@._V1_QL50_SY1000_CR0,0,675,1000_AL_.jpg'),
(12131, 'Action', 'War (2019)', '2019-10-25', 170, 'https://m.media-amazon.com/images/M/MV5BNTlmNDMzOWQtYzg4Ny00OWQ0LWFhN2MtNmQ2MDczZGZhNTU5XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UY268_CR7,0,182,268_AL__QL50.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `seatid` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`seatid`) VALUES
('A1'),
('A2'),
('A3'),
('A4'),
('A5'),
('A6'),
('B1'),
('B2'),
('B3'),
('B4'),
('B5'),
('B6'),
('C1'),
('C2'),
('C3'),
('C4'),
('C5'),
('C6');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticketid` int(5) NOT NULL,
  `performancefk` int(5) NOT NULL,
  `seatfk` varchar(2) NOT NULL,
  `bookingfk` int(12) NOT NULL,
  `ticketreference` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticketid`, `performancefk`, `seatfk`, `bookingfk`, `ticketreference`) VALUES
(1, 18, 'A1', 1, '18A1'),
(2, 42, 'A1', 2, '42A1'),
(3, 13, 'B6', 3, '13B6'),
(4, 35, 'C4', 4, '35C4'),
(5, 68, 'B3', 5, '68B3'),
(6, 325, 'B2', 6, '325B2'),
(7, 325, 'A1', 7, '325A1'),
(8, 325, 'B3', 8, '325B3'),
(9, 326, 'A1', 9, '326A1');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `productiontypeid` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`productiontypeid`) VALUES
('Action'),
('Comedy'),
('Drama'),
('Musical');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingid`),
  ADD KEY `customerfk` (`customerfk`),
  ADD KEY `performancefk` (`performancefk`),
  ADD KEY `seatfk` (`seatfk`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `performance`
--
ALTER TABLE `performance`
  ADD PRIMARY KEY (`performanceid`),
  ADD KEY `productionfk` (`productionfk`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`productionid`),
  ADD KEY `productiontypefk` (`productiontypefk`);
ALTER TABLE `production` ADD FULLTEXT KEY `productionname` (`productionname`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`seatid`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketid`),
  ADD KEY `performancefk` (`performancefk`),
  ADD KEY `seatfk` (`seatfk`),
  ADD KEY `bookingfk` (`bookingfk`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`productiontypeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `performance`
--
ALTER TABLE `performance`
  MODIFY `performanceid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=327;

--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `productionid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12135;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticketid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
