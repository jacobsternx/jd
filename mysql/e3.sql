-- phpMyAdmin SQL Dump
-- version 5.1.3-1.fc35
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 28, 2022 at 09:53 PM
-- Server version: 10.6.5-MariaDB
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `h3`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(6) NOT NULL,
  `account_name` varchar(32) NOT NULL,
  `account_csm` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `account_name`, `account_csm`) VALUES
(101, 'taft', 'john'),
(102, 'timbox', 'linda'),
(103, 'southside', 'sam'),
(314, 'freedom schools', 'britt'),
(369, 'casey', 'finn'),
(561, 'prairie ', 'eric');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(6) NOT NULL,
  `event_name` varchar(64) NOT NULL,
  `event_loc` varchar(64) NOT NULL,
  `event_policy` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_loc`, `event_policy`) VALUES
(3, 'temple vs jefferson', 'san diego', 'all sales final'),
(4, 'xavier vs jefferson', 'tempe', 'not supplied'),
(105, 'andrew vs jackson', 'mesa', 'no refunds'),
(106, 'john vs kennedy', 'chandler', 'exchanges allowed'),
(202, 'lyndon vs johnson', 'chandler', 'not supplied'),
(203, 'scottsdale vs columbus', 'scottsdale', 'refer to client'),
(404, 'st joseph vs holy names', 'marysville', 'exchanges allowed.'),
(405, 'kirkland vs deception point', 'bothel', 'refer to client');

-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

CREATE TABLE `revenue` (
  `revenue_tickets` decimal(10,0) NOT NULL,
  `revenue_gate` decimal(10,0) NOT NULL,
  `revenue_associations` decimal(10,0) NOT NULL,
  `revenue_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `revenue`
--

INSERT INTO `revenue` (`revenue_tickets`, `revenue_gate`, `revenue_associations`, `revenue_date`) VALUES
('3000', '75', '1500', '2022-01-01'),
('1650', '200', '400', '2022-01-15'),
('1500', '35', '200', '2022-02-01'),
('1850', '400', '240', '2022-02-15'),
('2500', '50', '1500', '2022-03-01'),
('2250', '150', '220', '2022-03-15'),
('2250', '25', '50', '2022-04-01'),
('750', '1250', '50', '2022-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `school_name` varchar(64) NOT NULL,
  `school_loc` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`school_name`, `school_loc`) VALUES
('johnson', 'portland'),
('kennedy', 'fremont'),
('jackson', 'phoenix'),
('jefferson', 'spokane'),
('washington', 'redmond'),
('heather', 'scottsdale');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `team_name` varchar(32) NOT NULL,
  `team_sport` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`team_name`, `team_sport`) VALUES
('varsity basketball', 'mens basketball'),
('jv basketball', 'mens basketball'),
('varsity baseball', 'mens baseball'),
('gymnastics', 'acrobatics'),
('varsity swimming', 'swimming and diving'),
('varsity wrestling', 'wrestling');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_order` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`ticket_order`, `ticket_id`) VALUES
(401, 10326196),
(624, 16875324),
(582, 26978231),
(741, 47623187),
(821, 87264183),
(546, 87298013);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`revenue_date`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
