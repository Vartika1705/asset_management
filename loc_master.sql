-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 07:16 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loc_master`
--
ALTER TABLE `loc_master`
  ADD UNIQUE KEY `LOC_ID` (`LOC_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loc_master`
--
ALTER TABLE `loc_master`
  MODIFY `LOC_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
