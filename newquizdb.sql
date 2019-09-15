-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2019 at 06:12 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(250) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(18, 'Rishabh_18', 'msdthala');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(250) NOT NULL,
  `qid` int(250) NOT NULL,
  `sid` varchar(250) NOT NULL,
  `ans` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `qid`, `sid`, `ans`) VALUES
(300, 5, '', 2),
(301, 1, '', 1),
(302, 1, '', 1),
(303, 2, '', 2),
(304, 2, '', 1),
(305, 1, '', 2),
(306, 1, '', 1),
(307, 1, '', 1),
(308, 1, '', 1),
(309, 7, '', 0),
(310, 7, '', 0),
(311, 6, '', 1),
(312, 6, '', 1),
(313, 1, '', 1),
(314, 1, '', 1),
(315, 1, '', 1),
(316, 1, '', 1),
(317, 1, '', 0),
(318, 1, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(50) NOT NULL,
  `questions` varchar(5000) NOT NULL,
  `choice1` varchar(500) NOT NULL,
  `choice2` varchar(500) NOT NULL,
  `choice3` varchar(500) NOT NULL,
  `choice4` varchar(500) NOT NULL,
  `correct_ans` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `questions`, `choice1`, `choice2`, `choice3`, `choice4`, `correct_ans`) VALUES
(1, '1. HTML stands for ________.', 'Hyper Text Markup Language', ' Hyper Text Makeup Language', 'Hyper Tech Markup Language\r\n', 'None', '1'),
(2, '2. Opening Tag of HTML Tag is called as ________.\r\n', 'Closed Tag\r\n\r\n', 'Starting Tag', 'Forward Tag', 'Ending Tag\r\n', '2'),
(3, '3.DOM stands for\r\n  ', ' Document object model ', ' Data object model', ' Document Oriented model', ' Data oriented model', '1'),
(4, '4. What should be the correct syntax to write a PHP code?\r\n\r\n\r\n\r\n', '< php >', ' < ? php ?>', ' <?p ?>', ' <?php ?>', '4'),
(5, '5. What does PHP stand for?\r\n\r\n', 'Hypertext Preprocessor', 'Professional Hypertext', 'Pretext Hypertext Processor', ' Preprocessor Home Page', '1'),
(6, '6. HTML program is saved using _________ extension.\r\n', '.html\r\n', '.hml', '.hltm', '.htlm', '1'),
(7, '7.In php variable is declared as', 'int x', '$x', 'x', '@x', '2');

-- --------------------------------------------------------

--
-- Table structure for table `s_register`
--

CREATE TABLE `s_register` (
  `id` int(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `sid` int(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mob` int(10) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `pass` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_register`
--

INSERT INTO `s_register` (`id`, `name`, `sid`, `email`, `mob`, `branch`, `pass`) VALUES
(1, 'Harshi', 12345, 'harshit@gmail.com', 2147483647, 'CSE', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `s_register`
--
ALTER TABLE `s_register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `s_register`
--
ALTER TABLE `s_register`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
