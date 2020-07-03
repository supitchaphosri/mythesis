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
-- Table structure for table `planner_subject`
--

CREATE TABLE `planner_subject` (
  `subject_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_nameTH` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_nameEN` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_credit` int(11) NOT NULL,
  `is_have_pre_subject` tinyint(1) NOT NULL,
  `subjectgroup_id` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planner_subject`
--

INSERT INTO `planner_subject` (`subject_id`, `subject_code`, `subject_nameTH`, `subject_nameEN`, `subject_credit`, `is_have_pre_subject`, `subjectgroup_id`) VALUES
('1', '01175XXX', 'กิจกรรมพลศึกษา', 'Physical Educate Activities', 1, 0, '1'),
('10', '01417267', 'คณิตศาสตร์วิศวกรรม III', 'Engineering Mathematics III', 3, 1, '6'),
('11', '01420111', 'ฟิสิกส์ทั่วไป I', 'General Physics I', 3, 0, '6'),
('12', '01420112', 'ฟิสิกส์ทั่วไป II', 'General Physics II', 3, 1, '6'),
('13', '01420113', 'ปฏิบัติการฟิสิกส์ I', 'Labatory in Physics I', 3, 1, '6'),
('14', '01420114', 'ปฏิบัติการฟิสิกส์ II', 'Labatory in Physics II', 3, 1, '6'),
('15', '01204321', 'ทฤษฎีความน่าจะเป็นและสถิติ   สำหรับวิศวกรคอมพิวเตอร์', 'Probability Theory and Statistics for Computer Engineers', 3, 0, '7'),
('16', '01204371', 'เทคนิคการแปลงในการประมวลผลสัญญาณ', 'Transform Techniques in Signal Processing', 3, 0, '7'),
('17', '01208111', 'การเขียนแบบวิศวกรรม', 'Engineering Drawing', 3, 0, '7'),
('18', '01205211', 'การวิเคราะห์วงจรไฟฟ้า I', 'Electrical Circuit Analysis I', 3, 0, '7'),
('19', '01205231', 'วงจรและระบบอิเล็กทรอนิกส์ I', 'Electronic Circuits and Systems I', 3, 0, '7'),
('2', '01999021', 'ภาษาไทยเพื่อการสื่อสาร', 'Thai Language for Communication', 3, 0, '3'),
('20', '01205332', 'ปฏิบัติการอิเล็กทรอนิกส์', 'General Electronics Laboratory', 1, 0, '7'),
('21', '01208201', 'หลักการพื้นฐานทางกลศาสตร์วิศวกรรม', 'Basic Principles of Engineering Mechanics', 3, 0, '7'),
('22', '01204351', 'ระบบฐานข้อมูล', 'Database Systems', 3, 0, '8'),
('23', '01204111', 'คอมพิวเตอร์และการโปรแกรม', 'Computers and Programming', 3, 0, '9'),
('24', '01204212', 'แบบชนิดข้อมูลนามธรรมและการแก้ปัญหา', 'Abstract Data Types and Problem Solving', 3, 0, '9'),
('25', '01204341', 'วิศวกรรมซอฟต์แวร์', 'Software Engineering', 4, 0, '9'),
('3', '01355XXX', 'ภาษาไทยเพื่อการสื่อสาร', 'Thai Language for Communication', 3, 0, '3'),
('4', 'XXXXXXXX', 'วิชาสารสนเทศ/คอมพิวเตอร์', 'Information / Computer', 1, 0, '3'),
('5', '01999111', 'ศาสตร์แห่งแผ่นดิน', 'Knowledge of the Land', 2, 0, '4'),
('6', '01403114', 'ปฏิบัติการหลักมูลเคมีทั่วไป', 'Labaratory in Fundamental of general Chemistry', 1, 1, '6'),
('7', '01403117', 'หลักมูลเคมีทั่วไป', 'Fundamental of general Chemistry', 3, 0, '6'),
('8', '01417167', 'คณิตศาสตร์วิศวกรรม I', 'Engineering Mathematics I', 3, 0, '6'),
('9', '01417168', 'คณิตศาสตร์วิศวกรรม II', 'Engineering Mathematics II', 3, 1, '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `planner_subject`
--
ALTER TABLE `planner_subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `planner_subject_subjectgroup_id_c07f7518_fk_planner_s` (`subjectgroup_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `planner_subject`
--
ALTER TABLE `planner_subject`
  ADD CONSTRAINT `planner_subject_subjectgroup_id_c07f7518_fk_planner_s` FOREIGN KEY (`subjectgroup_id`) REFERENCES `planner_subjectgroup` (`SubjectGroupID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
