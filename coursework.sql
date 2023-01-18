-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 02:34 PM
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
-- Database: `coursework`
--

-- --------------------------------------------------------

--
-- Table structure for table `arcade_machine_info`
--

CREATE TABLE `arcade_machine_info` (
  `machine_no` int(11) NOT NULL,
  `game` varchar(50) DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `floor_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `arcade_machine_info`
--

INSERT INTO `arcade_machine_info` (`machine_no`, `game`, `year`, `floor_no`) VALUES
(13, 'POker', 2002, 2),
(23, 'Space invader', 2001, 1),
(45, 'Mario', 2004, 2);

-- --------------------------------------------------------

--
-- Table structure for table `booking_list`
--

CREATE TABLE `booking_list` (
  `booking_id` int(11) NOT NULL,
  `session_number` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `date_` date DEFAULT NULL,
  `member` varchar(20) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `pre_paid` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking_list`
--

INSERT INTO `booking_list` (`booking_id`, `session_number`, `customer_id`, `date_`, `member`, `fee`, `pre_paid`) VALUES
(401, 1, 909, '2021-05-14', 'Yes', NULL, 'n/a'),
(402, 1, 910, '2021-05-14', 'No', 100, 'no'),
(403, 1, 911, '2021-05-14', 'Yes', 90, 'Yes'),
(404, 1, 912, '2021-05-14', 'NO', 100, 'NO'),
(405, 2, 913, '2021-05-14', 'Yes', 45, 'No'),
(406, 4, 914, '2021-05-06', 'Yes', 45, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `combined_p_k`
--

CREATE TABLE `combined_p_k` (
  `console_ID` int(11) NOT NULL,
  `gamer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `combined_p_k`
--

INSERT INTO `combined_p_k` (`console_ID`, `gamer_ID`) VALUES
(2014, 3001),
(2015, 3002),
(2016, 3003),
(2017, 3008),
(2018, 4001),
(2019, 4010);

-- --------------------------------------------------------

--
-- Table structure for table `console_alish`
--

CREATE TABLE `console_alish` (
  `Console_ID` int(11) NOT NULL,
  `Console` varchar(50) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `console_alish`
--

INSERT INTO `console_alish` (`Console_ID`, `Console`, `Quantity`) VALUES
(2014, 'ps1', 3),
(2015, 'PS2', 2),
(2016, 'PS4', 3),
(2017, 'PS2', 2),
(2018, 'Nintendo Switch', 2),
(2019, 'X Box360', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(80) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `membership_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `address`, `date_of_birth`, `join_date`, `membership_id`) VALUES
(909, 'Manoj', 'Tamang', 'Dillibazar,Kathmandu', '1999-03-01', '2021-02-01', 10709),
(910, 'Sony', 'Gurung', 'Putalisadak,Kathmandu', '2002-02-14', '2021-01-30', 10708),
(911, 'Hemant', 'Puri', 'Maitidevi,Kathmandu', '1999-04-25', '2021-01-30', 10710),
(912, 'Hitesh', 'Magar', 'Gyaneshwor,Kathmandu', '1970-02-14', '2021-02-05', 10712),
(913, 'Shyam', 'Bhatta', 'n/a', NULL, NULL, NULL),
(914, 'Ganesh', 'Dhakal', 'n/a', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `floor_alish`
--

CREATE TABLE `floor_alish` (
  `floor_no` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `floor_alish`
--

INSERT INTO `floor_alish` (`floor_no`, `price`) VALUES
(1, 100),
(2, 50);

-- --------------------------------------------------------

--
-- Table structure for table `gamer_info`
--

CREATE TABLE `gamer_info` (
  `Gamer_ID` int(11) NOT NULL,
  `NAME` varchar(60) DEFAULT NULL,
  `rATING` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gamer_info`
--

INSERT INTO `gamer_info` (`Gamer_ID`, `NAME`, `rATING`) VALUES
(3001, 'Spiro', '5'),
(3002, 'Spiro', '8'),
(3003, 'Crash Bandicooot', '9'),
(3008, 'Crash Bandicot', '6'),
(4001, 'Legend of Zelda', '7'),
(4010, 'Halo3', '9');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `membership_id` int(11) NOT NULL,
  `membership_type` varchar(50) DEFAULT NULL,
  `mewmbership_fee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`membership_id`, `membership_type`, `mewmbership_fee`) VALUES
(10708, 'Premium', 1650),
(10709, 'Standard', 100),
(10710, 'Premium', 1650),
(10712, 'Standard', 100);

-- --------------------------------------------------------

--
-- Table structure for table `session_and_fee`
--

CREATE TABLE `session_and_fee` (
  `Session_number` int(11) NOT NULL,
  `Session_day` varchar(50) DEFAULT NULL,
  `Start_time` time DEFAULT NULL,
  `Session_type` varchar(50) DEFAULT NULL,
  `floor_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_and_fee`
--

INSERT INTO `session_and_fee` (`Session_number`, `Session_day`, `Start_time`, `Session_type`, `floor_no`) VALUES
(1, 'sunday', '11:00:00', 'freeplay', 1),
(2, 'sunday', '11:00:00', 'freeplay', 2),
(3, 'saturday', '11:00:00', 'freeplay', 1),
(4, 'Monday', '18:00:00', 'special', 2);

-- --------------------------------------------------------

--
-- Table structure for table `session_console`
--

CREATE TABLE `session_console` (
  `session_number` int(11) DEFAULT NULL,
  `console_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_console`
--

INSERT INTO `session_console` (`session_number`, `console_id`, `date`, `quantity`) VALUES
(1, 2014, '2021-05-14', 2),
(1, 2015, '2021-05-14', 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff_member`
--

CREATE TABLE `staff_member` (
  `staff_id` int(11) NOT NULL,
  `frist_name` varchar(60) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `role` varchar(40) DEFAULT NULL,
  `session_number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_member`
--

INSERT INTO `staff_member` (`staff_id`, `frist_name`, `last_name`, `role`, `session_number`) VALUES
(405, 'Kiran', 'Rana', 'Cafe', 1),
(406, 'SUdeep', 'Koirala', 'Maintenance', 1),
(407, 'Ramesh', 'Maharjan', 'Counter', 1),
(408, 'Pooja', 'Mishra', 'Counter', 2),
(409, 'Jabbed', 'Merza', 'Maintenance', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arcade_machine_info`
--
ALTER TABLE `arcade_machine_info`
  ADD PRIMARY KEY (`machine_no`),
  ADD KEY `floor_no` (`floor_no`);

--
-- Indexes for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `session_number` (`session_number`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `combined_p_k`
--
ALTER TABLE `combined_p_k`
  ADD PRIMARY KEY (`console_ID`,`gamer_ID`),
  ADD KEY `gamer_ID` (`gamer_ID`);

--
-- Indexes for table `console_alish`
--
ALTER TABLE `console_alish`
  ADD PRIMARY KEY (`Console_ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `membership_id` (`membership_id`);

--
-- Indexes for table `floor_alish`
--
ALTER TABLE `floor_alish`
  ADD PRIMARY KEY (`floor_no`);

--
-- Indexes for table `gamer_info`
--
ALTER TABLE `gamer_info`
  ADD PRIMARY KEY (`Gamer_ID`);

--
-- Indexes for table `membership`
--
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membership_id`);

--
-- Indexes for table `session_and_fee`
--
ALTER TABLE `session_and_fee`
  ADD PRIMARY KEY (`Session_number`),
  ADD KEY `floor_no` (`floor_no`);

--
-- Indexes for table `session_console`
--
ALTER TABLE `session_console`
  ADD KEY `session_number` (`session_number`),
  ADD KEY `console_id` (`console_id`);

--
-- Indexes for table `staff_member`
--
ALTER TABLE `staff_member`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `session_number` (`session_number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arcade_machine_info`
--
ALTER TABLE `arcade_machine_info`
  ADD CONSTRAINT `arcade_machine_info_ibfk_1` FOREIGN KEY (`floor_no`) REFERENCES `floor_alish` (`floor_no`) ON DELETE CASCADE;

--
-- Constraints for table `booking_list`
--
ALTER TABLE `booking_list`
  ADD CONSTRAINT `booking_list_ibfk_1` FOREIGN KEY (`session_number`) REFERENCES `session_and_fee` (`Session_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `booking_list_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE;

--
-- Constraints for table `combined_p_k`
--
ALTER TABLE `combined_p_k`
  ADD CONSTRAINT `combined_p_k_ibfk_1` FOREIGN KEY (`console_ID`) REFERENCES `console_alish` (`Console_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `combined_p_k_ibfk_2` FOREIGN KEY (`gamer_ID`) REFERENCES `gamer_info` (`Gamer_ID`) ON DELETE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`membership_id`) REFERENCES `membership` (`membership_id`);

--
-- Constraints for table `session_and_fee`
--
ALTER TABLE `session_and_fee`
  ADD CONSTRAINT `session_and_fee_ibfk_1` FOREIGN KEY (`floor_no`) REFERENCES `floor_alish` (`floor_no`) ON DELETE CASCADE;

--
-- Constraints for table `session_console`
--
ALTER TABLE `session_console`
  ADD CONSTRAINT `session_console_ibfk_1` FOREIGN KEY (`session_number`) REFERENCES `session_and_fee` (`Session_number`) ON DELETE CASCADE,
  ADD CONSTRAINT `session_console_ibfk_2` FOREIGN KEY (`console_id`) REFERENCES `combined_p_k` (`console_ID`) ON DELETE CASCADE;

--
-- Constraints for table `staff_member`
--
ALTER TABLE `staff_member`
  ADD CONSTRAINT `staff_member_ibfk_1` FOREIGN KEY (`session_number`) REFERENCES `session_and_fee` (`Session_number`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
