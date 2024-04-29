-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 29, 2024 at 07:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MYSHARE`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisementData`
--

CREATE TABLE `advertisementData` (
  `AdID` int(11) NOT NULL,
  `AdName` varchar(50) NOT NULL,
  `AdPrice` int(11) NOT NULL,
  `AdType` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisementData`
--

INSERT INTO `advertisementData` (`AdID`, `AdName`, `AdPrice`, `AdType`) VALUES
(2, 'education ', 1000, 'Digital Artworks'),
(3, 'selling phone', 100000, 'Social Media Advertising'),
(5, 'phone', 10, 'Search Engine Advertising');

-- --------------------------------------------------------

--
-- Table structure for table `customerData`
--

CREATE TABLE `customerData` (
  `id` int(11) NOT NULL,
  `OrID` int(11) NOT NULL,
  `OrName` varchar(30) NOT NULL,
  `OrPrice` int(11) NOT NULL,
  `OrDate` date NOT NULL,
  `OrQuantity` int(11) NOT NULL,
  `CusMail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerData`
--

INSERT INTO `customerData` (`id`, `OrID`, `OrName`, `OrPrice`, `OrDate`, `OrQuantity`, `CusMail`) VALUES
(19, 1, 'Social Media Advertising', 1234, '2024-12-02', 12, 'k@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `empAllocate`
--

CREATE TABLE `empAllocate` (
  `AID` int(11) NOT NULL,
  `OrID` int(11) NOT NULL,
  `EmpID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `empAllocate`
--

INSERT INTO `empAllocate` (`AID`, `OrID`, `EmpID`) VALUES
(7, 9, 5),
(9, 10, 5),
(10, 9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `employeeData`
--

CREATE TABLE `employeeData` (
  `EmpID` int(11) NOT NULL,
  `EmpName` varchar(30) NOT NULL,
  `EmpMail` varchar(30) NOT NULL,
  `EmpNum` int(11) NOT NULL,
  `EmpSalary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employeeData`
--

INSERT INTO `employeeData` (`EmpID`, `EmpName`, `EmpMail`, `EmpNum`, `EmpSalary`) VALUES
(3, 'janani', 'thakshinij@gmail.com', 769673418, 30000),
(4, 'YUKESHAN', 'yjyukesh@gmail.com', 774758531, 100000),
(5, 'kalai', 'kandypan7@gmail.com', 761597810, 1000000),
(8, 'chamodi', 'muthumalachamodhi@gmail.com', 711401967, 120000);

-- --------------------------------------------------------

--
-- Table structure for table `SupplierData`
--

CREATE TABLE `SupplierData` (
  `supID` int(11) NOT NULL,
  `subName` varchar(50) NOT NULL,
  `supNumber` varchar(10) NOT NULL,
  `supEmail` varchar(30) NOT NULL,
  `supCountry` varchar(30) NOT NULL,
  `supCity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `SupplierData`
--

INSERT INTO `SupplierData` (`supID`, `subName`, `supNumber`, `supEmail`, `supCountry`, `supCity`) VALUES
(1, 'kalai', '1234567890', 'kandypan7@gmail.com', 'india', 'jaffna'),
(4, 'varshini', '9833645637', 'varshisugu1@gmail.com', 'uk', 'london'),
(6, 'chamodi', '0711401967', 'muthumalachamodhi@gmail.com', 'srilanka', 'colombo'),
(7, 'naveedh', '0764642111', 'mohaxxednavxxdh@gmail.com', 'srilanka', 'colombo'),
(9, 'kamal', '1234567890', 'kandypan7@gmail.com', 'india', 'jaffna');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisementData`
--
ALTER TABLE `advertisementData`
  ADD PRIMARY KEY (`AdID`);

--
-- Indexes for table `customerData`
--
ALTER TABLE `customerData`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empAllocate`
--
ALTER TABLE `empAllocate`
  ADD PRIMARY KEY (`AID`);

--
-- Indexes for table `employeeData`
--
ALTER TABLE `employeeData`
  ADD PRIMARY KEY (`EmpID`);

--
-- Indexes for table `SupplierData`
--
ALTER TABLE `SupplierData`
  ADD PRIMARY KEY (`supID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerData`
--
ALTER TABLE `customerData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `empAllocate`
--
ALTER TABLE `empAllocate`
  MODIFY `AID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `SupplierData`
--
ALTER TABLE `SupplierData`
  MODIFY `supID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
