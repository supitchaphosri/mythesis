-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2020 at 06:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `planner_subjectgroup`
--

CREATE TABLE `planner_subjectgroup` (
  `SubjectGroupID` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubjectGroupName` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Credit` int(11) NOT NULL,
  `CreateTime` datetime(6) NOT NULL,
  `CreateBy` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UpdateTime` datetime(6) NOT NULL,
  `UpdateBy` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planner_subjectgroup`
--

INSERT INTO `planner_subjectgroup` (`SubjectGroupID`, `SubjectGroupName`, `Credit`, `CreateTime`, `CreateBy`, `UpdateTime`, `UpdateBy`, `category_id`) VALUES
('1', 'กลุ่มสาระอยู่ดีมีสุข', 6, '2020-03-20 16:06:13.000000', 'mook', '2020-03-20 16:06:15.000000', 'mook', 1),
('3', 'กลุ่มสาระพลเมืองไทยและพลเมืองโลก', 5, '2020-03-20 16:11:36.000000', 'mook', '2020-03-20 16:11:39.000000', 'mook', 3),
('4', 'กลุ่มสาระภาษากับการสื่อสาร', 13, '2020-03-20 16:14:35.000000', 'mook', '2020-03-20 16:14:38.000000', 'mook', 1),
('6', 'วิชาแกนทางวิทยาศาสตร์และคณิตศาสตร์', 21, '2020-03-20 16:15:42.000000', 'mook', '2020-03-20 16:15:43.000000', 'mook', 2),
('7', 'วิชาแกนทางวิศวกรรม', 19, '2020-03-20 16:23:05.000000', 'mook', '2020-03-20 16:23:07.000000', 'mook', 2),
('8', 'กลุ่มเทคโนโลยีเพื่องานประยุกต์', 3, '2020-03-20 16:27:06.000000', 'mook', '2020-03-20 16:27:09.000000', 'mook', 2),
('9', 'กลุ่มเทคโนโลยีและวิธีทางซอฟแวร์', 10, '2020-03-20 16:27:58.000000', 'mook', '2020-03-20 16:28:00.000000', 'mook', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `planner_subjectgroup`
--
ALTER TABLE `planner_subjectgroup`
  ADD PRIMARY KEY (`SubjectGroupID`),
  ADD KEY `planner_subjectgroup_category_id_adaa4dca_fk_planner_category_id` (`category_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `planner_subjectgroup`
--
ALTER TABLE `planner_subjectgroup`
  ADD CONSTRAINT `planner_subjectgroup_category_id_adaa4dca_fk_planner_category_id` FOREIGN KEY (`category_id`) REFERENCES `planner_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
