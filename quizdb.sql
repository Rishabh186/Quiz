-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2019 at 03:58 PM
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
  `aid` int(11) NOT NULL,
  `qid` int(250) NOT NULL,
  `student_id` int(250) NOT NULL,
  `answer` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `qid`, `student_id`, `answer`) VALUES
(1, 1, 0, 0),
(2, 1, 0, 0),
(3, 1, 0, 0),
(4, 1, 0, 0),
(5, 1, 0, 0),
(6, 1, 0, 0),
(7, 1, 0, 0),
(8, 1, 0, 0),
(9, 1, 0, 0),
(10, 1, 0, 0),
(11, 2, 0, 0),
(12, 2, 0, 0),
(13, 3, 0, 0),
(14, 3, 0, 0),
(15, 4, 0, 0),
(16, 4, 0, 0),
(17, 3, 0, 0),
(18, 3, 0, 0),
(19, 2, 0, 0),
(20, 2, 0, 0),
(21, 1, 0, 0),
(22, 1, 0, 0),
(23, 1, 0, 0),
(24, 1, 0, 0),
(25, 1, 0, 0),
(26, 1, 0, 0),
(27, 1, 0, 0),
(28, 1, 0, 0),
(29, 1, 0, 0),
(30, 1, 0, 0),
(31, 2, 0, 0),
(32, 2, 0, 0),
(33, 3, 0, 0),
(34, 3, 0, 0),
(35, 3, 0, 0),
(36, 3, 0, 0),
(37, 3, 0, 0),
(38, 3, 0, 0),
(39, 3, 0, 0),
(40, 3, 0, 0),
(41, 3, 0, 0),
(42, 3, 0, 0),
(43, 3, 0, 0),
(44, 3, 0, 0),
(45, 3, 0, 0),
(46, 3, 0, 0),
(47, 3, 0, 0),
(48, 3, 0, 0),
(49, 3, 0, 0),
(50, 3, 0, 0),
(51, 3, 0, 0),
(52, 3, 0, 0),
(53, 3, 0, 0),
(54, 3, 0, 0),
(55, 3, 0, 0),
(56, 3, 0, 0),
(57, 3, 0, 0),
(58, 3, 0, 2),
(59, 3, 0, 2),
(60, 3, 0, 2),
(61, 3, 0, 0),
(62, 4, 0, 0),
(63, 4, 0, 0),
(64, 3, 0, 0),
(65, 3, 0, 0),
(66, 2, 0, 0),
(67, 2, 0, 0),
(68, 1, 0, 0),
(69, 1, 0, 1),
(70, 1, 0, 0),
(71, 2, 0, 0),
(72, 2, 0, 2),
(73, 2, 0, 0),
(74, 3, 0, 0),
(75, 3, 0, 0),
(76, 3, 0, 0),
(77, 4, 0, 0),
(78, 4, 0, 0),
(79, 4, 0, 0),
(80, 4, 0, 0),
(81, 4, 0, 0),
(82, 4, 0, 0),
(83, 4, 0, 0),
(84, 4, 0, 0),
(85, 4, 0, 0),
(86, 4, 0, 0),
(87, 4, 0, 0),
(88, 4, 0, 0),
(89, 3, 0, 0),
(90, 3, 0, 0),
(91, 2, 0, 0),
(92, 2, 0, 0),
(93, 3, 0, 0),
(94, 3, 0, 0),
(95, 2, 0, 0),
(96, 2, 0, 0),
(97, 2, 0, 0),
(98, 2, 0, 0),
(99, 2, 0, 0),
(100, 2, 0, 0),
(101, 2, 0, 0),
(102, 2, 0, 2),
(103, 2, 0, 2),
(104, 2, 0, 2),
(105, 2, 0, 2),
(106, 2, 0, 2),
(107, 2, 0, 2),
(108, 2, 0, 2),
(109, 2, 0, 2),
(110, 2, 0, 0),
(111, 3, 0, 0),
(112, 3, 0, 0),
(113, 2, 0, 0),
(114, 2, 0, 0),
(115, 3, 0, 0),
(116, 3, 0, 0),
(117, 4, 0, 0),
(118, 4, 0, 0),
(119, 3, 0, 0),
(120, 3, 0, 0),
(121, 2, 0, 0),
(122, 2, 0, 0),
(123, 1, 0, 0),
(124, 1, 0, 0),
(125, 1, 0, 0),
(126, 1, 0, 0),
(127, 1, 0, 0),
(128, 1, 0, 0),
(129, 1, 0, 0),
(130, 1, 0, 0);

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
(2, '2. Opening Tag of HTML Tag is called as ________.', 'Closed Tag', 'Starting Tag\r\n', ' Forward Tag ', 'Ending Tag', '2'),
(3, '3. DOM stands for', ' Document object model ', 'Data object model', 'Data oriented model\r\n', 'None', '1');

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
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

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
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
