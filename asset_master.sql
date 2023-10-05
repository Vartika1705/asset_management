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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset_master`
--
ALTER TABLE `asset_master`
  ADD UNIQUE KEY `ASSET_ID` (`ASSET_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset_master`
--
ALTER TABLE `asset_master`
  MODIFY `ASSET_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
