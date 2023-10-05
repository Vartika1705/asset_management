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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
