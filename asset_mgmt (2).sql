-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 07:14 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asset_mgmt`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset_attribute`
--

CREATE TABLE `asset_attribute` (
  `ASSET_TYPE` int(3) NOT NULL,
  `ASSET_ATTRIBUTE_ID` int(3) NOT NULL,
  `ATTRIBUTE_NAME` varchar(50) NOT NULL,
  `ATTRIBUTE_UNIT` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asset_attribute`
--

INSERT INTO `asset_attribute` (`ASSET_TYPE`, `ASSET_ATTRIBUTE_ID`, `ATTRIBUTE_NAME`, `ATTRIBUTE_UNIT`) VALUES
(100, 1, 'RAM', 'GB'),
(100, 2, 'LCD SCREEN', 'PPI'),
(100, 3, 'POWER BOARD', 'WATT'),
(100, 4, 'REMOTE CONTROL', 'RTU'),
(200, 4, 'REMOTE CONTROL', 'RTU'),
(200, 5, 'COMPRESSOR', 'kPA'),
(200, 6, 'THERMOSTAT', 'CELCIUS');

-- --------------------------------------------------------

--
-- Table structure for table `asset_detl`
--

CREATE TABLE `asset_detl` (
  `ASSET_ID` int(5) NOT NULL,
  `LOC_ID` int(3) NOT NULL,
  `DEPT_ID` int(3) NOT NULL,
  `Alloted_on` date NOT NULL,
  `Released_on` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asset_detl`
--

INSERT INTO `asset_detl` (`ASSET_ID`, `LOC_ID`, `DEPT_ID`, `Alloted_on`, `Released_on`) VALUES
(211, 10, 3, '2023-02-08', '2023-06-06'),
(102, 20, 2, '2023-05-08', '2023-06-02'),
(211, 10, 3, '2023-02-08', '2023-06-06'),
(203, 21, 2, '2023-06-05', '2023-06-06'),
(203, 21, 2, '2023-06-05', '2023-06-06'),
(101, 10, 1, '2023-06-01', '2023-06-06'),
(101, 10, 1, '2023-06-01', '2023-06-06'),
(101, 10, 1, '2023-06-01', '2023-06-06'),
(101, 10, 1, '2023-06-01', '2023-06-06'),
(101, 10, 1, '2023-06-01', '2023-06-06'),
(101, 10, 1, '2023-06-02', '2023-06-05'),
(101, 10, 1, '2023-06-02', '2023-06-05'),
(101, 10, 1, '2023-06-02', '2023-06-05'),
(201, 20, 3, '2023-06-06', '2023-06-07'),
(101, 10, 1, '2023-06-01', '2023-06-15'),
(101, 10, 1, '2023-06-02', NULL),
(101, 10, 1, '2023-06-02', NULL),
(101, 10, 1, '2023-06-02', NULL),
(203, 21, 3, '2023-06-09', NULL),
(212, 10, 4, '2023-06-08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `asset_master`
--

CREATE TABLE `asset_master` (
  `ASSET_ID` int(5) NOT NULL,
  `ASSET_NAME` varchar(50) NOT NULL,
  `ASSET_TYPE` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asset_master`
--

INSERT INTO `asset_master` (`ASSET_ID`, `ASSET_NAME`, `ASSET_TYPE`) VALUES
(101, 'TV Mod1', 100),
(102, 'TV Mod2', 100),
(103, 'TV Mod3', 100),
(201, 'AC Mod1', 200),
(202, 'AC Mod2', 200),
(203, 'AC Mod3', 200),
(204, 'LaptopMOD1', 300),
(206, 'LaptopMOD2', 300),
(211, 'LaptopMOD3', 300),
(212, 'LaptopMod4', 300);

-- --------------------------------------------------------

--
-- Table structure for table `dept_master`
--

CREATE TABLE `dept_master` (
  `DEPT_ID` int(3) NOT NULL,
  `DEPT_NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept_master`
--

INSERT INTO `dept_master` (`DEPT_ID`, `DEPT_NAME`) VALUES
(1, 'IT'),
(2, 'Electrical'),
(3, 'utility'),
(4, 'Mechanical'),
(5, 'Mechanical');

-- --------------------------------------------------------

--
-- Table structure for table `loc_master`
--

CREATE TABLE `loc_master` (
  `LOC_ID` int(3) NOT NULL,
  `LOC_NAME` varchar(50) NOT NULL,
  `ASSET_ADDRESS` varchar(50) NOT NULL,
  `FLOOR` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loc_master`
--

INSERT INTO `loc_master` (`LOC_ID`, `LOC_NAME`, `ASSET_ADDRESS`, `FLOOR`) VALUES
(10, 'CET', 'Shyamli', 2),
(20, 'RDCIS', 'Shyamli', 1),
(21, 'MTI', 'Shyamli', 3),
(22, 'MTI', 'Shyamli', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `USER_ID` int(3) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `DESIGNATION` varchar(10) NOT NULL,
  `DEPT_ID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`USER_ID`, `USERNAME`, `PASSWORD`, `DESIGNATION`, `DEPT_ID`) VALUES
(1, 'Abc', '35593b7ce5020eae3ca68fd5b6f3e031', 'CGM', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset_master`
--
ALTER TABLE `asset_master`
  ADD UNIQUE KEY `ASSET_ID` (`ASSET_ID`);

--
-- Indexes for table `dept_master`
--
ALTER TABLE `dept_master`
  ADD UNIQUE KEY `DEPT_ID` (`DEPT_ID`);

--
-- Indexes for table `loc_master`
--
ALTER TABLE `loc_master`
  ADD UNIQUE KEY `LOC_ID` (`LOC_ID`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`USER_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset_master`
--
ALTER TABLE `asset_master`
  MODIFY `ASSET_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `dept_master`
--
ALTER TABLE `dept_master`
  MODIFY `DEPT_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loc_master`
--
ALTER TABLE `loc_master`
  MODIFY `LOC_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `USER_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
