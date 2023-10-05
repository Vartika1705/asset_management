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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
