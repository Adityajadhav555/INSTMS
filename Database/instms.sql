-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 04:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instms`
--

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `serial` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `food` varchar(15) NOT NULL,
  `nit_name` varchar(25) NOT NULL,
  `sport` varchar(30) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`serial`, `Name`, `age`, `food`, `nit_name`, `sport`, `role`) VALUES
(1, 'Sashank', 23, 'Non Veg', 'nitc', 'Table Tennis', 'Captain'),
(2, 'Sushal', 21, 'Non Veg', 'nitc', 'Badminton', 'Defence');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `serial` int(11) NOT NULL,
  `name_of_sport` varchar(25) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `team` varchar(25) NOT NULL,
  `rank` int(11) NOT NULL,
  `place` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `serial` int(10) NOT NULL,
  `nit_name` varchar(15) NOT NULL,
  `sport` varchar(25) NOT NULL,
  `no_of_players` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`serial`, `nit_name`, `sport`, `no_of_players`) VALUES
(1, 'nitc', 'cricket', 12),
(4, 'nitc', 'Swimming', 1),
(5, 'nits', 'cricket', 12),
(6, 'nitc', 'Badmintan solo', 1),
(7, 'nitc', 'badminatan duo', 2),
(8, 'nitc', 'swimming', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `serial` int(10) NOT NULL,
  `nit_name` varchar(25) NOT NULL,
  `sport` varchar(30) NOT NULL,
  `team_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`serial`, `nit_name`, `sport`, `team_name`) VALUES
(1, 'nitc', 'cricket', 'Alpha'),
(2, 'nitc', 'ss', 'ss');

-- --------------------------------------------------------

--
-- Table structure for table `teams_tournament`
--

CREATE TABLE `teams_tournament` (
  `serial` int(11) NOT NULL,
  `nit_name` varchar(20) NOT NULL,
  `team` varchar(20) NOT NULL,
  `sport` varchar(25) NOT NULL,
  `tournament` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tournaments`
--

CREATE TABLE `tournaments` (
  `serial` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `host` varchar(25) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(23) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `username`, `password`, `dt`) VALUES
(1, 'admin', 'admin', '2023-02-09 19:14:44'),
(2, 'guest', 'guest', '2023-03-01 23:16:07'),
(3, 'host', 'host', '2023-03-04 13:06:49'),
(4, 'nitc', 'nitc', '2023-03-04 13:08:54'),
(5, 'nitt', 'nitt', '2023-03-04 13:08:56'),
(6, 'nits', 'nits', '2023-03-04 13:09:48'),
(7, 'a', 'a', '2023-03-06 20:20:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `serial` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `serial` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
