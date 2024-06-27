-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2022 at 12:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(125) DEFAULT NULL,
  `createdBy` int(5) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `categoryName`, `createdBy`, `creationDate`) VALUES
(2, 'Travelling', 1, '2022-04-02 15:56:17'),
(3, 'Personal', 1, '2022-04-03 06:18:36'),
(4, 'Travel', 2, '2022-04-03 09:51:43'),
(5, 'Financial', 2, '2022-04-03 09:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

CREATE TABLE `tblnotes` (
  `id` int(11) NOT NULL,
  `noteCategory` varchar(255) DEFAULT NULL,
  `noteTitle` varchar(255) DEFAULT NULL,
  `noteDescription` mediumtext DEFAULT NULL,
  `createdBy` int(5) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotes`
--

INSERT INTO `tblnotes` (`id`, `noteCategory`, `noteTitle`, `noteDescription`, `createdBy`, `creationDate`) VALUES
(2, 'Personal', 'Nanital Trip', 'This text is for testing Purposes only.This text is for testing Purposes only.This text is for testing Purposes only.This text is for testing Purposes only.This text is for testing Purposes only.This text is for testing Purposes only.This text is for testing Purposes only.', 1, '2022-04-03 06:18:59'),
(3, 'Travelling', 'Trip to Manali', 'This is for testing. This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.', 1, '2022-04-03 07:23:13'),
(4, 'Financial', 'Year Budget 2021-2022', 'This is test budget.  This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.This is test budget.', 2, '2022-04-03 09:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblnoteshistory`
--

CREATE TABLE `tblnoteshistory` (
  `id` int(11) NOT NULL,
  `noteId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `noteDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnoteshistory`
--

INSERT INTO `tblnoteshistory` (`id`, `noteId`, `userId`, `noteDetails`, `postingDate`) VALUES
(3, 2, 1, 'Note Details. Note DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote DetailsNote Details', '2022-04-03 07:21:09'),
(5, 3, 1, 'This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.', '2022-04-03 07:23:26'),
(6, 4, 2, 'Testing purpose.  Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. Testing purpose. ', '2022-04-03 09:53:17'),
(7, 4, 2, 'Budget  Budget  Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget Budget  Budget ', '2022-04-03 09:53:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblregistration`
--

CREATE TABLE `tblregistration` (
  `id` int(11) NOT NULL,
  `firstName` varchar(150) DEFAULT NULL,
  `lastName` varchar(150) DEFAULT NULL,
  `emailId` varchar(150) DEFAULT NULL,
  `mobileNumber` bigint(12) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblregistration`
--

INSERT INTO `tblregistration` (`id`, `firstName`, `lastName`, `emailId`, `mobileNumber`, `userPassword`, `regDate`) VALUES
(1, 'Anuj', 'kumar', 'ak@gmail.com', 1425362514, 'f925916e2754e5e03f75dd58a5733251', '2022-04-02 12:17:37'),
(2, 'John', 'Doe', 'johndoe@gmail.com', 1221121212, 'f925916e2754e5e03f75dd58a5733251', '2022-04-03 09:51:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnotes`
--
ALTER TABLE `tblnotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblnoteshistory`
--
ALTER TABLE `tblnoteshistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblregistration`
--
ALTER TABLE `tblregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblnotes`
--
ALTER TABLE `tblnotes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblnoteshistory`
--
ALTER TABLE `tblnoteshistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblregistration`
--
ALTER TABLE `tblregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
