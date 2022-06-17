-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 09:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spmp`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_submission`
--

CREATE TABLE `add_submission` (
  `sid` int(11) NOT NULL,
  `sub_title` varchar(70) NOT NULL,
  `sub_desc` varchar(255) NOT NULL,
  `due_date` date NOT NULL,
  `course_id` varchar(20) NOT NULL,
  `cdept` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `name` varchar(150) NOT NULL,
  `mail` varchar(150) NOT NULL,
  `password` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mail`, `password`) VALUES
(1, 'admin', 'admin@tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` varchar(20) NOT NULL,
  `fid` varchar(20) NOT NULL,
  `course_name` varchar(40) NOT NULL,
  `cdept` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `fid`, `course_name`, `cdept`) VALUES
('18ES590 - A', 'IT002', 'SYSTEM THINKING', 'IT'),
('18ES690 - A', 'IT001', 'ENGINEERING DESIGN', 'IT'),
('18ES690 - B', 'IT003', 'ENGINEERING DESIGN', 'IT'),
('18ES790 - A', 'IT002', 'CAPSTONE PROJECT', 'IT'),
('18ES790 - B', 'IT004', 'CAPSTONE PROJECT', 'IT'),
('18IT810 - A', 'IT001', 'FINAL SEM PROJECT', 'IT'),
('18IT810 - A', 'IT003', 'FINAL SEM PROJECT', 'IT'),
('18ES390 - A', 'IT001', 'DESIGN THINKING', 'IT'),
('18ES390 - B', 'IT004', 'DESIGN THINKING', 'IT'),
('18ES590 - B', 'G001', 'SYSTEM THINKING', 'MECH');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `regno` varchar(30) NOT NULL,
  `course_id` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `team_status` tinyint(1) NOT NULL DEFAULT 0,
  `enroll_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`regno`, `course_id`, `dept`, `team_status`, `enroll_id`) VALUES
('19IT082', '18ES690 - B', 'IT', 0, 26),
('19IT025', '18ES690 - B', 'IT', 0, 27),
('19IT027', '18ES690 - B', 'IT', 1, 28),
('19IT033', '18ES690 - B', 'IT', 1, 29),
('19IT040', '18ES690 - B', 'IT', 0, 30),
('19IT041', '18ES690 - B', 'IT', 0, 33),
('19IT073', '18ES690 - B', 'IT', 1, 34),
('19IT074', '18ES690 - B', 'IT', 1, 35),
('19IT075', '18ES690 - B', 'IT', 1, 36),
('19IT093', '18ES690 - B', 'IT', 1, 37),
('19IT101', '18ES690 - B', 'IT', 1, 38),
('19IT019', '18ES690 - B', 'IT', 1, 39),
('19G031', '18ES590 - B', 'MECH', 1, 40),
('19G059', '18ES590 - B', 'MECH', 1, 41),
('19G103', '18ES590 - B', 'MECH', 1, 42),
('19G060', '18ES590 - B', 'MECH', 1, 43);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_advisor`
--

CREATE TABLE `faculty_advisor` (
  `fid` varchar(10) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `password` varchar(300) NOT NULL,
  `dept` varchar(11) NOT NULL,
  `fname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_advisor`
--

INSERT INTO `faculty_advisor` (`fid`, `mail`, `password`, `dept`, `fname`) VALUES
('G001', 'g001@tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'MECH', 'MECH FACULTY'),
('IT001', 'faculty001@tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'IT', 'Faculty_001'),
('IT002', 'faculty002@tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'IT', 'Faculty_002'),
('IT003', 'faculty003@tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'IT', 'Faculty_003');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(50) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `team_id` int(50) NOT NULL,
  `project_desc` varchar(255) NOT NULL,
  `domain` varchar(30) NOT NULL,
  `batch` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `project_name`, `team_id`, `project_desc`, `domain`, `batch`) VALUES
(16, 'URBAN BUS TRACKING SYSTEM', 15, 'Tracking passenger count in real time.', 'IoT ', '2019-2023'),
(17, 'Movie Recommendation System', 14, 'ML model to recommend movies.', 'Machine Learning', '2019-2023'),
(19, 'E-Magnetic bicycle', 17, 'Magnet Powered BiCycle', 'Design', '2019-2023');

-- --------------------------------------------------------

--
-- Table structure for table `ssub`
--

CREATE TABLE `ssub` (
  `subid` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `originalfile` varchar(100) NOT NULL,
  `file` varchar(255) NOT NULL,
  `cf_status` varchar(100) NOT NULL DEFAULT 'Not updated',
  `guide_status` varchar(100) NOT NULL DEFAULT 'Not Updated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `regno` varchar(8) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dept` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`regno`, `mail`, `password`, `name`, `dept`) VALUES
('19G031', 'jeganathan@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'JEGANATHAN R', 'MECH'),
('19G059', 'nanthakumarp@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'NANTHA KUMAR P', 'MECH'),
('19G060', 'nawinkumaar@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'NAWINKUMAAR S', 'MECH'),
('19G103', 'surriaprakash@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'SURRIYAPRAKASH G', 'MECH'),
('19IT019', 'daya@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'DAYA ANAND C', 'IT'),
('19IT025', 'dixon@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'DIXON J ANTONY A', 'IT'),
('19IT027', 'eniyanmaran@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'ENIYAN MS', 'IT'),
('19IT033', 'harish@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'HARISH J', 'IT'),
('19IT040', 'jeswin@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'JESWIN W', 'IT'),
('19IT041', 'jeyaganesh@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'JEYA GANESH A V', 'IT'),
('19IT073', 'ragul@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'RAGUL MGA', 'IT'),
('19IT074', 'rahulhariesh@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'RAHUL HARIESH B', 'IT'),
('19IT075', 'ravi@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'RAVI KUMAR K', 'IT'),
('19IT082', 'sanjaykumars@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'SANJAYKUMAR S', 'IT'),
('19IT093', 'siddharth@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'SIDDHARTH S', 'IT'),
('19IT101', 'sreesh@student.tce.edu', '$2b$10$7X7FISgpSEJWysKYcs5kpOE4Gih4w9S0FX.AzdP9FF8PTV2CfzA1y', 'SREESH N', 'IT');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(30) NOT NULL,
  `team_members` varchar(30) NOT NULL,
  `course_id` varchar(30) NOT NULL,
  `team_name` varchar(30) NOT NULL,
  `fid` varchar(30) NOT NULL,
  `cdept` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_members`, `course_id`, `team_name`, `fid`, `cdept`) VALUES
(14, '19IT073,19IT101,19IT093,19IT07', '18ES690 - B', 'ZERO DIVISION ERROR', 'IT003', 'IT'),
(15, '19IT027,19IT019,19IT075,19IT03', '18ES690 - B', 'SENTINELS', 'IT002', 'IT'),
(17, '19G031,19G059,19G060,19G103', '18ES590 - B', 'TEAM NK', 'G001', 'MECH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_submission`
--
ALTER TABLE `add_submission`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`enroll_id`);

--
-- Indexes for table `faculty_advisor`
--
ALTER TABLE `faculty_advisor`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `email` (`mail`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `ssub`
--
ALTER TABLE `ssub`
  ADD PRIMARY KEY (`subid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regno`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_submission`
--
ALTER TABLE `add_submission`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `enroll_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `project_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ssub`
--
ALTER TABLE `ssub`
  MODIFY `subid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
