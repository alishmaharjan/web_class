-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2022 at 05:55 AM
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
-- Database: `eth`
--

-- --------------------------------------------------------

--
-- Table structure for table `ethb`
--

CREATE TABLE `ethb` (
  `candidate_no` int(11) NOT NULL,
  `S_name` varchar(255) DEFAULT NULL,
  `add_cand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ethb`
--

INSERT INTO `ethb` (`candidate_no`, `S_name`, `add_cand`) VALUES
(1, 'sonam', 'kathmandu'),
(2, 'sudat', 'kritipur'),
(3, 'arman', 'dhumbarai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ethb`
--
ALTER TABLE `ethb`
  ADD PRIMARY KEY (`candidate_no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
