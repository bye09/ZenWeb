-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2024 at 05:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zenproperty`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(11) NOT NULL,
  `AdminUserName` varchar(50) NOT NULL,
  `AdminName` varchar(100) NOT NULL,
  `AdminEmail` varchar(255) NOT NULL,
  `AdminPassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `AdminUserName`, `AdminName`, `AdminEmail`, `AdminPassword`) VALUES
(1, 'admin_user1', 'John Doe', 'admin1@example.com', '*668425423DB5193AF921380129F465A6425216D0'),
(2, 'admin_user2', 'Jane Smith', 'admin2@example.com', '*6DF6691249D07E4796FBED8EAA52419EF838A046');

-- --------------------------------------------------------

--
-- Table structure for table `adminphone`
--

CREATE TABLE `adminphone` (
  `AdminID` int(11) NOT NULL,
  `AdminPhoneNo` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminphone`
--

INSERT INTO `adminphone` (`AdminID`, `AdminPhoneNo`) VALUES
(1, 57364735),
(1, 1234567890),
(2, 987654321);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `UserID` int(11) NOT NULL,
  `PropertyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`UserID`, `PropertyID`) VALUES
(1, 101),
(2, 102),
(2, 101);

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `PropertyID` int(11) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Availability` varchar(50) NOT NULL,
  `Bedrooms` int(2) NOT NULL,
  `Location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`PropertyID`, `Description`, `Type`, `Price`, `Availability`, `Bedrooms`, `Location`) VALUES
(101, 'Beautiful 2-bedroom apartment in the city center', 'Apartment', 1500.00, 'Available', 2, 'Downtown'),
(102, 'Spacious 3-bedroom house with a garden', 'House', 2500.00, 'Available', 3, 'Suburbs');

-- --------------------------------------------------------

--
-- Table structure for table `registereduser`
--

CREATE TABLE `registereduser` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `UserPassword` varchar(100) NOT NULL,
  `UserEmail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registereduser`
--

INSERT INTO `registereduser` (`UserID`, `UserName`, `UserPassword`, `UserEmail`) VALUES
(1, 'howie', '*84AAC12F54AB666ECFC2A83C676908C8BBC381B1', 'howie@example.com'),
(2, 'tom', '*06D59D9D2A3F6A2CA329E8FB3BC72B40FCBF2A27', 'tom@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `registereduserphone`
--

CREATE TABLE `registereduserphone` (
  `UserID` int(11) NOT NULL,
  `UserPhoneNo` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registereduserphone`
--

INSERT INTO `registereduserphone` (`UserID`, `UserPhoneNo`) VALUES
(1, 1234566),
(1, 54748464),
(2, 54638282);

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `RentID` int(11) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `TotalPrice` decimal(10,2) NOT NULL,
  `UserID` int(11) NOT NULL,
  `PropertyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`RentID`, `StartDate`, `EndDate`, `TotalPrice`, `UserID`, `PropertyID`) VALUES
(1, '2024-09-01', '2024-09-30', 1500.00, 1, 101),
(2, '2024-10-01', '2024-10-31', 2500.00, 2, 102),
(3, '2024-09-04', '2024-09-11', 6000.00, 1, 102);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ReviewID` int(11) NOT NULL,
  `Rating` int(1) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  `Date` date NOT NULL,
  `UserID` int(11) NOT NULL,
  `PropertyID` int(11) NOT NULL,
  `RentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`ReviewID`, `Rating`, `Comment`, `Date`, `UserID`, `PropertyID`, `RentID`) VALUES
(1, 5, 'Great place to stay!', '2024-09-02', 1, 101, 1),
(2, 4, 'Nice house, but a bit far from the city center.', '2024-11-01', 2, 102, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `adminphone`
--
ALTER TABLE `adminphone`
  ADD PRIMARY KEY (`AdminID`,`AdminPhoneNo`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD KEY `UserID` (`UserID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`PropertyID`);

--
-- Indexes for table `registereduser`
--
ALTER TABLE `registereduser`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `UserName` (`UserName`) USING BTREE;

--
-- Indexes for table `registereduserphone`
--
ALTER TABLE `registereduserphone`
  ADD PRIMARY KEY (`UserID`,`UserPhoneNo`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`RentID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `PropertyID` (`PropertyID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `PropertyID` (`PropertyID`),
  ADD KEY `RentID` (`RentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `property`
--
ALTER TABLE `property`
  MODIFY `PropertyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `registereduser`
--
ALTER TABLE `registereduser`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `RentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminphone`
--
ALTER TABLE `adminphone`
  ADD CONSTRAINT `adminphone_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `registereduser` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `registereduserphone`
--
ALTER TABLE `registereduserphone`
  ADD CONSTRAINT `registereduserphone_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `registereduser` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rent`
--
ALTER TABLE `rent`
  ADD CONSTRAINT `rent_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `registereduser` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rent_ibfk_2` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `registereduser` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`PropertyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `review_ibfk_3` FOREIGN KEY (`RentID`) REFERENCES `rent` (`RentID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
