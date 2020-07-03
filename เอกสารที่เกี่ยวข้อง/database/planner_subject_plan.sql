-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2020 at 12:33 PM
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
-- Table structure for table `planner_subject_plan`
--

CREATE TABLE `planner_subject_plan` (
  `id` int(11) NOT NULL,
  `Subject_ID` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject_credit` int(11) NOT NULL,
  `group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planner_subject_plan`
--

INSERT INTO `planner_subject_plan` (`id`, `Subject_ID`, `Subject_name`, `Subject_credit`, `group`) VALUES
(2, '01204496', 'Select Topic ', 3, 1),
(3, '01204452', 'Information Technology Mangement ', 3, 1),
(4, '01204499', 'Computer Engineering Project ', 2, 1),
(5, '02729102', 'Computer Aplication in Everyday Life ', 3, 1),
(6, '01204213', 'Theory of Compation', 3, 1),
(7, '01204461', 'Artificial Intelligence ', 3, 1),
(8, '01403114', 'Labaratory in Fundamental of general Chemistry', 1, 0),
(9, '01403117', 'Fundamental of general Chemistry', 3, 0),
(10, '01417167', 'Engineering Mathematics I', 3, 0),
(11, '01417168', 'Engineering Mathematics II', 3, 0),
(12, '01417267', 'Engineering Mathematics III', 3, 0),
(13, '01420111', 'General Physics I', 3, 0),
(14, '01420112', 'General Physics I', 3, 0),
(15, '01420114', 'Labatory in Physics II', 3, 0),
(16, '01204321', 'Probability Theory and Statistics for Computer Engineers', 3, 0),
(17, '01204371', 'Transform Techniques in Signal Processing', 3, 0),
(18, '01208111', 'Engineering Drawing', 3, 0),
(19, '01205211', 'Electrical Circuit Analysis I', 3, 0),
(20, '01205231', 'Electronic Circuits and Systems I', 3, 0),
(21, '01205332', 'General Electronics Laboratory', 3, 0),
(22, '01208201', 'Basic Principles of Engineering Mechanics', 3, 0),
(23, '01204351', 'Database Systems', 3, 0),
(24, '01204111', 'Computers and Programming', 3, 0),
(25, '01204212', 'Abstract Data Types and Problem Solving', 3, 0),
(26, '01204341', 'Software Engineering', 3, 0),
(27, '01204211', 'Discrete Mathematics', 3, 0),
(28, '01204213', 'Theory of Computation', 3, 0),
(29, '01204214', 'Problem Solving Laboratory', 3, 0),
(30, '01204313', 'Algorithm Design and Analysis', 3, 0),
(31, '01204332', 'Operating Systems', 3, 0),
(32, '01204222', 'Digital Systems Design', 3, 0),
(33, '01204313', 'Algorithm Design and Analysis', 3, 0),
(34, '01204332', 'Operating Systems', 3, 0),
(35, '01204222', 'Digital Systems Design', 3, 0),
(36, '01204224', 'Logic Circuit Laboratory', 3, 0),
(37, '01204225', 'Computer Architecture and Organization', 3, 0),
(38, '01204322', 'Embedded System', 3, 0),
(39, '01204324', 'Computer System Laboratory (56)', 3, 0),
(40, '01204325', 'Data Communication and Computer Networks', 3, 0),
(41, '01204421', 'Computer Network', 1, 0),
(42, '01204437', 'Computer System Security', 3, 0),
(43, '01204223', 'Practicum in Computer Engineering', 1, 0),
(44, '01204271', 'Introduction to Computer Engineering', 1, 0),
(45, '01204391', 'Career and Social Skill Development Laboratory I', 1, 0),
(46, '01219211', 'Software Development Training Camp', 1, 0),
(47, '01204399', 'Intrernship', 1, 0),
(48, '01204491', 'Career and Social Skill Development Laboratory II', 1, 0),
(49, '01204495', 'Computer Engineering Project Preparation', 2, 0),
(50, '00120632', 'Operations Research for Engineering I', 3, 0),
(51, '01204499', 'Computer Engineering Project', 2, 0),
(52, '01206323', 'Operations Research for Engineering II', 3, 0),
(53, '01204472', 'Numerical Computation', 3, 0),
(54, '01204436', 'Real-time System Engineering', 3, 0),
(55, '01204473', 'Mechatronic System and Control', 3, 0),
(56, '01205338', 'VLSI Systems', 3, 0),
(57, '01204331', 'System Softwere Interface', 3, 0),
(58, '01204342', 'Managing Softwere Development', 3, 0),
(59, '01204432', 'Object-Oriented Design', 3, 0),
(60, '01204433', 'Programming Language Translation', 3, 0),
(61, '01204342', 'Managing Softwere Development', 3, 0),
(62, '01204432', 'Object-Oriented Design', 3, 0),
(63, '01204433', 'Programming Language Translation', 3, 0),
(64, '01204434', 'Parallel and Distibuted Computing Systems', 3, 0),
(65, '01204438', 'Enterprise Application Architecture', 3, 0),
(66, '01204451', 'Database System Design', 3, 0),
(67, '00120445', 'Database System Design', 3, 0),
(68, '01204422', 'Basic Networks and Network Configuration Laboratory', 3, 0),
(69, '01204423', 'Network Kernel Architectures and Implementation', 3, 0),
(70, '01204425', 'Internet System Programming', 3, 0),
(71, '01204427', 'Computer System and Network Security', 3, 0),
(72, '01204428', 'Wireless Embedded System', 3, 0),
(73, '01204428', 'Wireless Embedded System', 3, 0),
(74, '01204429', 'Wireless Networks and Simulation', 3, 0),
(75, '01204453', 'Web Information Retrival and Mining', 3, 0),
(76, '01204456', 'Social Networks Data Mining', 3, 0),
(77, '01204457', 'Semantic Web Technology', 3, 0),
(78, '01204458', 'Introduction to Computation Finance', 3, 0),
(79, '01204461', 'Artificial Intelligance', 3, 0),
(80, '01204462', 'Introduction to Expert Systems', 3, 0),
(81, '01204463', 'Introduction to Natural Language Processing', 3, 0),
(82, '01204464', 'Computer Vision', 3, 0),
(83, '01204465', 'Introduction to Data Mining and Knowleage Discovery', 3, 0),
(84, '01204481', 'Fuoundations of Computer Graphics', 3, 0),
(85, '01204482', 'Computer-Human Interfaces', 3, 0),
(86, '01204483', 'Digital Image Processing', 3, 0),
(87, '01205314', 'Digital Signal Processing', 3, 0),
(88, '01204352', 'Law and Ethics in Information Technology', 3, 0),
(89, '01204452', 'Information Technology Management', 3, 0),
(90, '01204454', 'Management of Technology and Innovation', 3, 0),
(91, '01204496', 'Selected Topics in Computer Engineering', 3, 0),
(92, '01204498', 'Special Problems', 3, 0),
(93, '00121931', 'Functional Programming', 3, 0),
(94, '01219322', 'Electronic Commerce Engineering', 3, 0),
(95, '01219332', 'Data Warehouse', 3, 0),
(96, '01219333', 'Introduction to Data Mining', 3, 0),
(97, '0121933', 'Transaction Processing', 3, 0),
(98, '01219336', 'Advanced Database', 3, 0),
(99, '01219343', 'Softwere Testing', 3, 0),
(100, '01219344', 'Mobile Softwere Deverlopment', 3, 0),
(101, '01219349', 'Digital Game Production', 3, 0),
(102, '01219351', 'Wep Application Deverlopment', 3, 0),
(103, '01219361', 'Business Intelligence', 3, 0),
(104, '01219362', 'Machine Learning', 3, 0),
(105, '01219364', 'Knowledge Discovery', 3, 0),
(106, '00121941', 'Computer Systems Security', 3, 0),
(107, '01219421', 'Cloud Computing Technology and Management', 3, 0),
(108, '01219451', 'Web Services Technology', 3, 0),
(109, '01219452', 'Principle of Information Security', 3, 0),
(110, '01219461', 'Big Data Platform and Analytics', 3, 0),
(111, '01219482', 'Data Visualization', 3, 0),
(112, '00121949', 'Softwere Entrepreneurship', 3, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `planner_subject_plan`
--
ALTER TABLE `planner_subject_plan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `planner_subject_plan`
--
ALTER TABLE `planner_subject_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
