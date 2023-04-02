-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 02, 2023 at 05:03 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20496829_instms`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `serial` int(11) NOT NULL,
  `nit_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci NOT NULL,
  `sport` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `tournament` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`serial`, `nit_name`, `link`, `sport`, `tournament`) VALUES
(1, 'nitc', 'https://pdfhost.io/v/iKbqhyvuX_Microsoft_Word_Certificate_of_recognition_for_administrative_professional', 'cricket', 'super 4'),
(2, 'nitc', 'https://pdfhost.io/v/iKbqhyvuX_Microsoft_Word_Certificate_of_recognition_for_administrative_professional', 'Cricket', 'super 4');

-- --------------------------------------------------------

--
-- Table structure for table `fixture`
--

CREATE TABLE `fixture` (
  `serial` int(11) NOT NULL,
  `tournament` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fixture` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_accom`
--

CREATE TABLE `food_accom` (
  `serial` int(11) NOT NULL,
  `date` date NOT NULL,
  `nit_name` varchar(20) NOT NULL,
  `accom` text NOT NULL,
  `food` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `issues`
--

CREATE TABLE `issues` (
  `serial` int(11) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `sport` varchar(20) NOT NULL,
  `team` varchar(20) NOT NULL,
  `issue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `sport` varchar(25) NOT NULL,
  `role` varchar(25) NOT NULL,
  `team_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`serial`, `Name`, `age`, `food`, `nit_name`, `sport`, `role`, `team_name`) VALUES
(1, 'Alex Johnson', 24, 'Veg', 'nitc', 'Cricket', 'Bastman', 'Mtech boys'),
(2, 'Aiden Davidson', 22, 'Vegan', 'nitc', 'Cricket', 'Bastman', 'Mtech boys'),
(3, 'Blake Johnson', 23, 'Non Veg', 'nitc', 'Cricket', 'BOWLER', 'Mtech boys'),
(4, 'Caleb Williams', 25, 'Veg', 'nitc', 'Cricket', 'WICKET KEEPER Batsman(C)', 'Mtech boys'),
(5, 'Daniel Parker', 28, 'Non Veg', 'nitc', 'Cricket', 'Batsman', 'Mtech boys'),
(6, 'Ethan Wright', 21, 'Non Veg', 'nitc', 'Cricket', 'Bastman', 'Mtech boys'),
(7, 'Finn Nelson', 24, 'Non Veg', 'nitc', 'Cricket', 'BOWLER', 'Mtech boys'),
(8, 'George Martin', 26, 'Non Veg', 'nitc', 'Cricket', 'All rounder', 'Mtech boys'),
(9, 'Harry Brown', 22, 'Veg', 'nitc', 'Cricket', 'All rounder', 'Mtech boys'),
(10, 'Isaac Taylor', 27, 'Non Veg', 'nitc', 'Cricket', 'BOWLER', 'Mtech boys'),
(11, 'Jack Robinson', 23, 'Non Veg', 'nitc', 'Cricket', 'Batsman(VC)', 'Mtech boys'),
(12, 'Kyle Adams', 25, 'Vegan', 'nitc', 'Cricket', 'Bastman', 'Mtech boys'),
(13, 'Liam Green', 28, 'Vegan', 'nitc', 'Cricket', 'Bastman', 'Mtech girls'),
(14, 'Mason Evans', 20, 'Non Veg', 'nitc', 'Cricket', 'Bastman', 'Mtech girls'),
(15, 'Noah White', 24, 'Non Veg', 'nitc', 'Cricket', 'Bastman', 'Mtech girls'),
(16, 'Oliver Lee', 26, 'Vegan', 'nitc', 'Cricket', 'BOWLER', 'Mtech girls'),
(17, 'Patrick Allen', 22, 'Non Veg', 'nitc', 'Cricket', 'Batsman(C)', 'Mtech girls'),
(18, 'Yusuf Ali', 22, 'Non Veg', 'nitc', 'Cricket', 'Bastman', 'Btech boys'),
(19, 'Zachary Wilson', 27, 'Non Veg', 'nitc', 'Cricket', 'Batsman(C)', 'Btech boys'),
(20, 'Adam Brown', 23, 'Veg', 'nitc', 'Cricket', 'Bastman', 'Btech boys'),
(21, 'Ben Taylor', 25, 'Vegan', 'nitc', 'Cricket', 'BOWLER', 'Btech boys'),
(22, 'Charlie Jones', 28, 'Non Veg', 'nitc', 'Cricket', 'WICKET KEEPER Batsman', 'Btech boys'),
(23, 'Dylan Wright', 21, 'Veg', 'nitc', 'Cricket', 'BOWLER', 'Btech boys'),
(24, 'Ethan Lewis', 24, 'Non Veg', 'nitc', 'Cricket', 'All rounder', 'Btech boys'),
(25, 'Felix Clark', 26, 'Non Veg', 'nitc', 'Cricket', 'BOWLER', 'Btech boys'),
(26, 'George Wright', 22, 'Non Veg', 'nitc', 'Cricket', 'Bastman', 'Btech boys'),
(27, 'Harry Martin', 27, 'Veg', 'nitc', 'Cricket', 'BOWLER', 'Btech boys'),
(28, 'Isaac Robinson', 23, 'Veg', 'nitc', 'Cricket', 'All rounder', 'Btech boys'),
(29, 'Jack Taylor', 25, 'Non Veg', 'nitc', 'Cricket', 'BOWLER', 'Btech boys'),
(30, 'Aashvi.', 25, 'Veg', 'nitc', 'Cricket', 'Bastman', 'Mtech girls'),
(31, 'Lakshmi.', 22, 'Non Veg', 'nitc', 'Cricket', 'WICKET KEEPER Batsman', 'Mtech girls'),
(32, 'Meera.', 21, 'Veg', 'nitc', 'Cricket', 'All rounder', 'Mtech girls'),
(33, 'Saanvi', 20, 'Veg', 'nitc', 'Cricket', 'BOWLER', 'Mtech girls'),
(34, 'Sarika', 25, 'Non Veg', 'nitc', 'Cricket', 'BOWLER', 'Mtech girls'),
(35, 'Sita', 24, 'Veg', 'nitc', 'Cricket', 'BOWLER', 'Mtech girls'),
(36, 'Uma.', 25, 'Non Veg', 'nitc', 'Cricket', 'BOWLER', 'Mtech girls'),
(37, 'Kimaya', 20, 'Veg', 'nitc', 'Badminton', 'Captain', 'Btech Girls'),
(38, 'Aarya', 21, 'Veg', 'nitc', 'Badminton', '', 'Btech Girls'),
(39, 'Srikanth Kidambi', 20, 'Veg', 'nitc', 'Badminton', 'Captain', 'Mtech boys(CSE)'),
(40, 'Priyanshu Rajawat', 23, 'Veg', 'nitc', 'Badminton', 'player', 'Mtech boys(CSE)'),
(41, 'Divya', 20, 'Veg', 'nitc', 'Badminton', 'Captain', 'Mtech girls'),
(42, 'Jaya', 25, 'Non Veg', 'nitc', 'Badminton', 'player', 'Mtech girls'),
(43, 'Rohit', 20, 'Non Veg', 'nitc', 'Badminton', 'Captain', 'Btech boys'),
(44, 'Rahul', 25, 'Veg', 'nitc', 'Badminton', 'player', 'Btech boys'),
(45, 'Suraj', 25, 'Non Veg', 'nitc', 'Swimming', 'Captain', 'Mtech boys'),
(46, 'Mohit', 21, 'Veg', 'nitc', 'Swimming', 'player', 'Btech boys'),
(47, 'Monu', 28, 'Veg', 'nitc', 'Swimming', 'player', 'PHD boys'),
(48, 'Lavanya', 26, 'Veg', 'nitc', 'Swimming', 'player', 'Mtech girls'),
(49, 'Archery', 22, 'Non Veg', 'nitc', 'Archery', 'player', 'Mtech girls'),
(50, 'Saumya', 21, 'Vegan', 'nitc', 'Archery', 'player', 'Btech Girls'),
(51, 'Mohan', 22, 'Non Veg', 'nitc', 'Archery', 'Player', 'Btech boys'),
(52, 'Rajendra', 25, 'Veg', 'nitc', 'Archery', 'Player', 'Mtech boys'),
(53, 'Aiden Davidson', 22, 'Veg', 'nitt', 'Cricket', 'Bastman', 'Mtech boys'),
(54, 'Blake Johnson', 23, 'Non Veg', 'nitt', 'Cricket', 'BOWLER', 'Mtech boys'),
(55, 'Caleb Williams', 25, 'Veg', 'nitt', 'Cricket', 'WICKET KEEPER Batsman(C)', 'Mtech boys'),
(56, 'Daniel Parker', 28, 'Non Veg', 'nitt', 'Cricket', 'All rounder', 'Mtech boys'),
(57, 'Ethan Wright', 26, 'Non Veg', 'nitt', 'Cricket', 'Bastman', 'Mtech boys'),
(58, 'Finn Nelson', 25, 'Vegan', 'nitt', 'Cricket', 'BOWLER', 'Mtech boys'),
(59, 'George Martin', 25, 'Non Veg', 'nitt', 'Cricket', 'Bastman(VC)', 'Mtech boys'),
(60, 'Harry Brown', 23, 'Veg', 'nitt', 'Cricket', 'Bastman', 'Mtech boys'),
(61, 'Isaac Taylor', 27, 'Non Veg', 'nitt', 'Cricket', 'BOWLER', 'Mtech boys'),
(62, 'Jack Robinson', 24, 'Non Veg', 'nitt', 'Cricket', 'All rounder', 'Mtech boys'),
(63, 'Kyle Adams', 28, 'Veg', 'nitt', 'Cricket', 'BOWLER', 'Mtech boys'),
(64, 'Liam Green', 28, 'Non Veg', 'nitt', 'Cricket', 'BOWLER', 'Mtech boys'),
(65, 'Aadhavi', 22, 'Veg', 'nitt', 'Cricket', 'Bastman', 'Mtech girls'),
(66, 'Aanya', 21, 'Non Veg', 'nitt', 'Cricket', 'BOWLER', 'Mtech girls'),
(67, 'Aarya', 25, 'Veg', 'nitt', 'Cricket', 'WICKET KEEPER Batsman', 'Mtech girls'),
(68, 'Myra', 25, 'Veg', 'nitt', 'Cricket', 'BOWLER(C)', 'Mtech girls'),
(69, 'Roja', 26, 'Veg', 'nitt', 'Cricket', 'Bastman', 'Mtech girls'),
(70, 'Pritha', 28, 'Vegan', 'nitt', 'Cricket', 'All rounder', 'Mtech girls'),
(71, 'Nisha', 24, 'Veg', 'nitt', 'Cricket', 'All rounder', 'Mtech girls'),
(72, 'Shivaya', 25, 'Veg', 'nitt', 'Cricket', 'Bastman', 'Mtech girls'),
(73, 'Sita', 25, 'Veg', 'nitt', 'Cricket', 'Bastman(VC)', 'Mtech girls'),
(74, 'Sonia', 26, 'Veg', 'nitt', 'Cricket', 'BOWLER', 'Mtech girls'),
(75, 'Suri', 20, 'Veg', 'nitt', 'Cricket', 'Bastman', 'Mtech girls'),
(76, 'Uma', 23, 'Non Veg', 'nitt', 'Cricket', 'Bastman', 'Mtech girls'),
(77, 'Mason Evans', 22, 'Non Veg', 'nitt', 'Cricket', 'Bastman', 'Btech boys'),
(78, 'Noah White', 20, 'Non Veg', 'nitt', 'Cricket', 'All rounder', 'Btech boys'),
(79, 'Oliver Lee', 23, 'Vegan', 'nitt', 'Cricket', 'All rounder', 'Btech boys'),
(80, 'Patrick Allen', 25, 'Veg', 'nitt', 'Cricket', 'WICKET KEEPER Batsman(C)', 'Btech boys'),
(81, 'Quinn Wright', 18, 'Non Veg', 'nitt', 'Cricket', 'BOWLER', 'Btech boys'),
(82, 'Ryan Phillips', 21, 'Non Veg', 'nitt', 'Cricket', 'BOWLER(VC)', 'Btech boys'),
(83, 'Sam Turner', 23, 'Veg', 'nitt', 'Cricket', 'Bastman', 'Btech boys'),
(84, 'Tyler Clark', 25, 'Non Veg', 'nitt', 'Cricket', 'Bastman', 'Btech boys'),
(85, 'Vincent Cooper', 26, 'Vegan', 'nitt', 'Cricket', 'BOWLER', 'Btech boys'),
(86, 'William Parker', 24, 'Vegan', 'nitt', 'Cricket', 'Bastman', 'Btech boys'),
(87, 'Xavier Johnson', 20, 'Veg', 'nitt', 'Cricket', 'Bastman', 'Btech boys'),
(88, 'Zachary Wilson', 28, 'Veg', 'nitt', 'Cricket', 'Bastman', 'Btech boys'),
(89, 'Sonia', 22, 'Veg', 'nitt', 'Badminton', 'Captain', 'Mtech girls'),
(90, 'Veena', 21, 'Non Veg', 'nitt', 'Badminton', 'player', 'Mtech girls'),
(91, 'Sonu', 19, 'Veg', 'nitt', 'Badminton', 'Captain', 'Btech boys'),
(92, 'Ravi', 20, 'Non Veg', 'nitt', 'Badminton', 'player', 'Btech boys'),
(93, 'Shaniya', 18, 'Veg', 'nitt', 'Badminton', 'Captain', 'Btech Girls'),
(94, 'Tashi', 21, 'Non Veg', 'nitt', 'Badminton', 'player', 'Btech Girls'),
(95, 'Sashi', 24, 'Veg', 'nitt', 'Badminton', 'Captain', 'Mtech Boys'),
(96, 'Ankit', 25, 'Veg', 'nitt', 'Badminton', 'player', 'Mtech Boys'),
(97, 'Adam Brown', 28, 'Non Veg', 'nitt', 'Swimming', 'player', 'PHD boys'),
(98, 'Siya', 24, 'Veg', 'nitt', 'Swimming', 'player', 'Mtech girls'),
(99, 'Priyam', 20, 'Veg', 'nitt', 'Swimming', 'player', 'Btech boys'),
(100, 'Shyam', 26, 'Non Veg', 'nitt', 'Swimming', 'player', 'Mtech boys'),
(101, 'Suhasini', 25, 'Non Veg', 'nitt', 'Archery', 'player', 'Mtech girls'),
(102, 'Sohan', 22, 'Veg', 'nitt', 'Archery', 'player', 'Btech boys'),
(103, 'Akashay', 24, 'Veg', 'nitt', 'Archery', 'player', 'Mtech boys'),
(104, 'Saanvi', 21, 'Veg', 'nitt', 'Archery', 'player', 'Btech Girls'),
(106, 'Anuj Patel', 19, 'Non Veg', 'nits', 'Cricket', 'Bastman', 'Mtech boys'),
(107, 'Arnav Singh', 18, 'Non Veg', 'nits', 'Cricket', 'BOWLER', 'Mtech boys'),
(108, 'Aryan Sharma', 25, 'Veg', 'nits', 'Cricket', 'Bastman(C)', 'Mtech boys'),
(109, 'Ashish Verma', 22, 'Vegan', 'nits', 'Cricket', 'WICKET KEEPER Batsman(VC)', 'Mtech boys'),
(110, 'Ayush Tiwari', 28, 'Veg', 'nits', 'Cricket', 'All rounder', 'Mtech boys'),
(111, 'Bhuvan Choudhary', 27, 'Veg', 'nits', 'Cricket', 'BOWLER', 'Mtech boys'),
(112, 'Chirag Shah', 19, 'Non Veg', 'nits', 'Cricket', 'BOWLER(C)', 'Mtech boys'),
(113, 'Darshan Patel', 26, 'Vegan', 'nits', 'Cricket', 'Bastman', 'Mtech boys'),
(114, 'Deepak Singh', 20, 'Veg', 'nits', 'Cricket', 'Bastman', 'Mtech boys'),
(115, 'Dev Sharma', 26, 'Veg', 'nits', 'Cricket', 'Bastman', 'Mtech boys'),
(116, 'Dhruv Mehta', 18, 'Non Veg', 'nits', 'Cricket', 'All rounder', 'Mtech boys'),
(117, 'Gaurav Gupta', 23, 'Veg', 'nits', 'Cricket', 'Bastman(C)', 'Btech boys'),
(118, 'Gopal Singh', 27, 'Vegan', 'nits', 'Cricket', 'Bastman', 'Btech boys'),
(119, 'Harish Sharma', 21, 'Veg', 'nits', 'Cricket', 'Bastman', 'Btech boys'),
(120, 'Harsh Verma', 19, 'Veg', 'nits', 'Cricket', 'BOWLER', 'Btech boys'),
(121, 'Himanshu Singh', 29, 'Non Veg', 'nits', 'Cricket', 'All rounder', 'Btech boys'),
(122, 'Ishaan Mishra', 20, 'Non Veg', 'nits', 'Cricket', 'BOWLER(VC)', 'Btech boys'),
(123, 'Jaideep Singh', 22, 'Non Veg', 'nits', 'Cricket', 'BOWLER', 'Btech boys'),
(124, 'Jayesh Patel', 24, 'Veg', 'nits', 'Cricket', 'BOWLER', 'Btech boys'),
(125, 'Jatin Sharma', 18, 'Non Veg', 'nits', 'Cricket', 'Bastman', 'Btech boys'),
(126, 'Kunal Singh', 26, 'Veg', 'nits', 'Cricket', 'All rounder', 'Btech boys'),
(127, 'Lalit Kumar', 29, 'Vegan', 'nits', 'Cricket', 'Bastman', 'Btech boys'),
(128, 'Lokesh Singh', 21, 'Veg', 'nits', 'Cricket', 'Bastman', 'Btech boys'),
(129, 'Anjali Patel', 21, 'Veg', 'nits', 'Cricket', 'Bastman', 'Mtech girls'),
(130, 'Kirti Singh', 24, 'Veg', 'nits', 'Cricket', 'Bastman(C)', 'Mtech girls'),
(131, 'Shivani Gupta', 19, 'Non Veg', 'nits', 'Cricket', 'Bastman', 'Mtech girls'),
(132, 'Priya Sharma', 27, 'Veg', 'nits', 'Cricket', 'Bastman', 'Mtech girls'),
(133, 'Aarohi Desai', 22, 'Veg', 'nits', 'Cricket', 'All rounder(VC)', 'Mtech girls'),
(134, 'Nandini Reddy', 23, 'Non Veg', 'nits', 'Cricket', 'BOWLER', 'Mtech girls'),
(135, 'Mitali Das', 18, 'Veg', 'nits', 'Cricket', 'BOWLER', 'Mtech girls'),
(136, 'Alisha Saxena', 26, 'Vegan', 'nits', 'Cricket', 'BOWLER', 'Mtech girls'),
(137, 'Pooja Banerjee', 20, 'Non Veg', 'nits', 'Cricket', 'Bastman', 'Mtech girls'),
(138, 'Rohini Rao', 29, 'Non Veg', 'nits', 'Cricket', 'Bastman', 'Mtech girls'),
(139, 'Smita Verma', 25, 'Veg', 'nits', 'Cricket', 'Bastman', 'Mtech girls'),
(140, 'Tanvi Sharma', 21, 'Veg', 'nits', 'Cricket', 'Bastman', 'Mtech girls'),
(141, 'Jyoti Yadav', 25, 'Veg', 'nits', 'Badminton', 'Captain', 'Mtech girls'),
(142, 'Megha Patel', 18, 'Veg', 'nits', 'Badminton', 'player', 'Mtech girls'),
(143, 'Jugal', 24, 'Veg', 'nits', 'Badminton', 'Captain', 'Btech boys'),
(144, 'Aditya', 24, 'Non Veg', 'nits', 'Badminton', 'player', 'Btech boys'),
(145, 'Harshita Singh', 19, 'Veg', 'nits', 'Swimming', 'player', 'Btech Girls'),
(146, 'Akansha Patel', 26, 'Veg', 'nits', 'Swimming', 'player', 'Mtech girls'),
(147, 'Sneha Singh', 22, 'Veg', 'nits', 'Archery', 'player', 'Mtech girls'),
(148, 'Prerna Singh', 21, 'Veg', 'nits', 'Archery', 'player', 'Btech Girls'),
(149, 'Rohit Kumar', 24, 'Veg', 'nits', 'Badminton', 'Captain', 'PHD boys'),
(150, 'Ajay Singh', 27, 'Non Veg', 'nits', 'Badminton', 'player', 'PHD boys'),
(151, 'Yash Sharma', 22, 'Veg', 'nits', 'Badminton', 'Captain', 'Mtech boys'),
(152, 'Ankit Patel', 23, 'Non Veg', 'nits', 'Badminton', 'player', 'Mtech boys'),
(153, 'Kunal Verma', 22, 'Veg', 'nits', 'Swimming', 'player', 'Btech boys'),
(154, 'Rishi Gupta', 24, 'Non Veg', 'nits', 'Swimming', 'player', 'Mtech boys'),
(155, 'Akshay Kumar', 23, 'Veg', 'nits', 'Archery', 'player', 'Btech boys'),
(156, 'Vikas Sharma', 24, 'Vegan', 'nits', 'Hockey', 'player', 'Mtech boys');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `serial` int(11) NOT NULL,
  `sport` varchar(20) NOT NULL,
  `nit_name` varchar(30) NOT NULL,
  `team_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`serial`, `sport`, `nit_name`, `team_name`) VALUES
(1, 'Cricket', 'nitc', 'Mtech boys');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `serial` int(10) NOT NULL,
  `nit_name` varchar(15) NOT NULL,
  `sport` varchar(25) NOT NULL,
  `no_of_players` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`serial`, `nit_name`, `sport`, `no_of_players`) VALUES
(1, 'nitc', 'Cricket', 12),
(2, 'nitc', 'Badminton', 2),
(3, 'nitc', 'Swimming', 1),
(5, 'nits', 'Cricket', 12),
(6, 'nits', 'Badminton', 2),
(7, 'nits', 'Swimming', 1),
(8, 'nits', 'Archery', 1),
(9, 'nitt', 'Cricket', 12),
(10, 'nitt', 'Badminton', 2),
(11, 'nitt', 'Swimming', 1),
(12, 'nitt', 'Archery', 1),
(14, 'nitc', 'Archery', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `serial` int(10) NOT NULL,
  `nit_name` varchar(25) NOT NULL,
  `sport` varchar(30) NOT NULL,
  `team_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`serial`, `nit_name`, `sport`, `team_name`) VALUES
(1, 'nitc', 'Cricket', 'Mtech boys'),
(2, 'nitc', 'Cricket', 'Mtech girls'),
(3, 'nitc', 'Cricket', 'Btech boys'),
(4, 'nitc', 'Badminton', 'Btech Girls'),
(5, 'nitc', 'Badminton', 'Mtech boys(CSE)'),
(6, 'nitc', 'Badminton', 'Mtech girls'),
(8, 'nitc', 'Badminton', 'Btech boys'),
(9, 'nitc', 'Swimming', 'Mtech boys'),
(10, 'nitc', 'Swimming', 'Btech boys'),
(11, 'nitc', 'Swimming', 'PHD boys'),
(12, 'nitc', 'Swimming', 'Mtech girls'),
(13, 'nitc', 'Archery', 'Mtech girls'),
(14, 'nitc', 'Archery', 'Btech Girls'),
(15, 'nitc', 'Archery', 'Btech boys'),
(16, 'nitc', 'Archery', 'Mtech boys'),
(17, 'nitt', 'Cricket', 'Mtech boys'),
(18, 'nitt', 'Cricket', 'Mtech girls'),
(19, 'nitt', 'Cricket', 'Btech boys'),
(20, 'nitt', 'Badminton', 'Mtech girls'),
(21, 'nitt', 'Badminton', 'Btech boys'),
(22, 'nitt', 'Badminton', 'Btech Girls'),
(23, 'nitt', 'Badminton', 'Mtech Boys'),
(24, 'nitt', 'Swimming', 'PHD boys'),
(25, 'nitt', 'Swimming', 'Mtech girls'),
(26, 'nitt', 'Swimming', 'Btech boys'),
(28, 'nitt', 'Swimming', 'Mtech boys'),
(29, 'nitt', 'Archery', 'Mtech girls'),
(30, 'nitt', 'Archery', 'Btech boys'),
(31, 'nitt', 'Archery', 'Mtech boys'),
(32, 'nitt', 'Archery', 'Btech Girls'),
(33, 'nits', 'Cricket', 'Mtech boys'),
(34, 'nits', 'Cricket', 'Btech boys'),
(35, 'nits', 'Cricket', 'Mtech girls'),
(36, 'nits', 'Badminton', 'Mtech girls'),
(37, 'nits', 'Badminton', 'Btech boys'),
(38, 'nits', 'Badminton', 'Mtech boys'),
(39, 'nits', 'Badminton', 'PHD boys'),
(40, 'nits', 'Swimming', 'Btech boys'),
(41, 'nits', 'Swimming', 'Btech Girls'),
(42, 'nits', 'Swimming', 'Mtech boys'),
(43, 'nits', 'Swimming', 'Mtech girls'),
(44, 'nits', 'Archery', 'Mtech girls'),
(45, 'nits', 'Archery', 'Btech boys'),
(46, 'nits', 'Archery', 'Mtech boys'),
(47, 'nits', 'Archery', 'Btech Girls'),
(49, 'nitc', 'karate', 'boys');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tournment_declare`
--

CREATE TABLE `tournment_declare` (
  `sno` int(11) NOT NULL,
  `date` date NOT NULL,
  `text` text NOT NULL,
  `last_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tournment_declare`
--

INSERT INTO `tournment_declare` (`sno`, `date`, `text`, `last_date`) VALUES
(1, '2023-03-30', 'Super 4 Tournament(Cricket, Football, Badminton, Hockey), Host NIT is NIT Calicut', '2023-03-23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `username` varchar(11) NOT NULL,
  `password` varchar(23) NOT NULL,
  `dt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `fixture`
--
ALTER TABLE `fixture`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`serial`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
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
-- Indexes for table `tournment_declare`
--
ALTER TABLE `tournment_declare`
  ADD PRIMARY KEY (`sno`);

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
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fixture`
--
ALTER TABLE `fixture`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `serial` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `serial` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tournment_declare`
--
ALTER TABLE `tournment_declare`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
