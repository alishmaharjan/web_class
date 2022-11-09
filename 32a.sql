-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2022 at 07:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `32b`
--

-- --------------------------------------------------------

--
-- Table structure for table `32a`
--

CREATE TABLE `32a` (
  `First_Name` varchar(255) DEFAULT NULL,
  `last_Name` varchar(255) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `favorite_movie` varchar(255) DEFAULT NULL,
  `favorite_song` varchar(255) DEFAULT NULL,
  `favorite_actor` varchar(255) DEFAULT NULL,
  `NO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `32a`
--

INSERT INTO `32a` (`First_Name`, `last_Name`, `AGE`, `favorite_movie`, `favorite_song`, `favorite_actor`, `NO`) VALUES
('Nihangchha', 'Rai', 5, 'nothing', 'nothing', 'nothing', 1),
('sita', 'kaka', 5, 'nothing', 'nothing', 'nothing', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
