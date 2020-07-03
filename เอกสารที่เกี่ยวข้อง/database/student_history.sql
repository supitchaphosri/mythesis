-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2020 at 03:45 PM
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
-- Table structure for table `student_history`
--

CREATE TABLE `student_history` (
  `id` int(11) NOT NULL,
  `studentid` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Semester` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubjectID1` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade1` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubjectID2` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject2` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade2` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubjectID3` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject3` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade3` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubjectID4` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject4` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade4` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubjectID5` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject5` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade5` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubjectID6` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject6` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade6` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubjectID7` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject7` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade7` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubjectID8` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject8` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade8` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubjectID9` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject9` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade9` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubjectID10` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject10` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Grade10` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GPAX` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `GPA` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_history`
--

INSERT INTO `student_history` (`id`, `studentid`, `Year`, `Semester`, `SubjectID1`, `Subject1`, `Grade1`, `SubjectID2`, `Subject2`, `Grade2`, `SubjectID3`, `Subject3`, `Grade3`, `SubjectID4`, `Subject4`, `Grade4`, `SubjectID5`, `Subject5`, `Grade5`, `SubjectID6`, `Subject6`, `Grade6`, `SubjectID7`, `Subject7`, `Grade7`, `SubjectID8`, `Subject8`, `Grade8`, `SubjectID9`, `Subject9`, `Grade9`, `SubjectID10`, `Subject10`, `Grade10`, `GPAX`, `GPA`) VALUES
(1, '5940205402', '2559', 'ภาคต้น', '01175111', 'Track and Field for Health (58)', 'A', '01175143', 'Social Dance for Health (58)', 'A', '01208111', 'Engineering Drawing (43)', 'B+', '01355113', 'Foundation English III (43)', 'B', '01403114', 'Laboratory in Fundamental of General Chemistry (51', 'B', '01403117', 'Fundamental of General Chemistry (51)', 'C', '01417168', 'Engineering Mathematics II (43)', 'D+', '01420112', 'General Physics II (46)', 'C', '01420114', 'Laboratory in Physics II (46)', 'A', '01999033', 'Arts of Living (43)', 'B+', '3.21', '3.21'),
(2, '5940205402', '2559', 'ภาคปลาย', '01200101', 'Innovative Thinking (56)', 'C+', '01204111', 'Computers and Programming (51)', 'B', '01355111', 'Foundation English I (43)', 'P', '01355112', 'Foundation English II (43)', 'B+', '01417167', 'Engineering Mathematics I (55)', 'C+', '01420111', 'General Physics I (46)', 'B+', '01420113', 'Laboratory in Physics I (46)', 'A', '01999021', 'Thai Language for Communication (46)', 'B+', '-', '-', '-', '-', '-', '-', '2.80', '2.97'),
(3, '5940205402', '2560', 'ภาคต้น', '01204211', 'Discrete Mathematics (43)', 'C+', '01204212', 'Abstract Data Types and Problem Solving (51)', 'D', '01204215', 'Object-Oriented Programming Laboratory (56)', 'C+', '01204222', 'Digital Systems Design (51)', 'D+', '01204223', 'Practicum in Computer Engineering (56)', 'D+', '01204312', 'Probability Theory and Statistics for Computer Eng', 'C', '01205204', 'General Electronics I (56)', 'C', '01219211', 'Software Development Training Camp (56)', 'B', '01417267', 'Engineering Mathematics III (43)', 'D', '-', '-', '-', '1.76', '2.55'),
(4, '5940205402', '2560', 'ภาคปลาย', '01204214', 'Problem Solving Laboratory (56)', 'A', '01204224', 'Logic Circuit Laboratory (51)', 'C+', '01204225', 'Computer Architecture and Organization (51)', 'B+', '01204313', 'Algorithm Design and Analysis (43)', 'D+', '01204351', 'Database Systems (47)', 'C+', '01204371', 'Transform Techniques in Signal Processing (56)', 'D', '01205205', 'General Electronics II (56)', 'C+', '01999012', 'Health for Life (43)', 'B', '-', '-', '-', '-', '-', '-', '2.43', '2.52'),
(5, '5940205402', '2561', 'ภาคต้น', '01204325', 'Data Communication and Computer Networks (43)', 'B+', '01204332', 'Operating Systems (47)', 'B+', '01204341', 'Software Engineering (56)', 'B+', '01204465', 'Introduction to data mining and knowledge discover', 'A', '01205206', 'General Electronics Laboratory (56)', 'A', '01208201', 'Basic Principles of Engineering Mechanics (46)', 'C', '01213211', 'Materials Science for Engineers (43)', 'B+', '-', '-', '-', '-', '-', '-', '-', '-', '-', '3.38', '2.69'),
(6, '5940205402', '2561', 'ภาคปลาย', '01204213', 'Theory of Computation (56)', 'A', '01204322', 'Embedded System (51)', 'C', '01204324', 'Computer System Laboratory (56)', 'C', '01204421', 'Computer Networks (43)', 'A', '01204453', 'Web Information Retrieval and Mining (56)', 'A', '01362101', 'Chinese I (55)', 'B+', '01453102', 'Law in Everyday Life (55)', 'B+', '04804201', 'Science of Dynamic Earth (57)', 'A', '-', '-', '-', '-', '-', '-', '3.50', '2.84'),
(7, '5940205402', '2562', 'ภาคต้น', '01204352', 'Laws and Ethics in Information Technology (56)', 'A', '01204399', 'Internship (56)', 'A', '01204425', 'Internet System Programming (56)', 'A', '01204483', 'Digital Image Processing (56)', 'A', '01204495', 'Computer Engineering Project Preparation (56)', 'A', '01999213', 'Environment,Technology and Life (43)', 'B+', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '-', '3.90', '2.95'),
(8, '5940203141', '2559', 'ภาคต้น', '01200101', 'Innovative Thinking', 'B', '01204111', 'Computers and Programming', 'A', '01355111', 'Foundation English I', 'P', '01417167', 'Engineering Mathematics I', 'B', '01420111', 'General Physics I', 'B', '01420113', 'Laboratory in Physics I', 'A', '01999021', 'Thai Language for Communication', 'A', '-', '-', '-', '-', '-', '-', '-', '-', '-', '3.50', '3.5'),
(9, '5940203141', '2559', 'ภาคปลาย', '01175111', 'Track and Field for Health', 'A', '01208111', 'Engineering Drawing', 'B+', '01355112', 'Foundation English II', 'A', '01403114', 'Laboratory in Fundamental of General Chemistry', 'A', '01403117', 'Fundamental of General Chemistry', 'C+', '01417168', 'Engineering Mathematics II', 'C', '01420112', 'General Physics II', 'C+', '01420114', 'Laboratory in Physics II', 'A', '01999033', 'Arts of Living', 'A', '-', '-', '-', '3.21', '3.33'),
(10, '5940203141', '2560', 'ภาคต้น', '01175153', 'Martial Art with Thai Boxing', 'A', '01204211', 'Discrete Mathematics', 'C', '01204212', 'Abstract Data Types and Problem Solving', 'A', '01204215', 'Object-Oriented Programming Laboratory', 'B', '01204222', 'Digital Systems Design', 'C', '01204223', 'Practicum in Computer Engineering', 'A', '01204312', 'Probability Theory and Statistics for Computer Eng', 'C', '01205204', 'General Electronics I', 'F', '01219211', 'Software Development Training Camp', 'B', '01417267', 'Engineering Mathematics III', 'D', '2.14', '2.87'),
(11, '5940203141', '2560', 'ภาคปลาย', '01204214', 'Problem Solving Laboratory', 'A', '01204224', 'Logic Circuit Laboratory', 'C+', '01204225', 'Computer Architecture and Organization', 'B+', '01204313', 'Algorithm Design and Analysis', 'B+', '01204351', 'Database Systems', 'C+', '01204371', 'Transform Techniques in Signal Processing', 'D+', '01999012', 'Health for Life', 'B+', '-', '-', '-', '-', '-', '-', '-', '-', '-', '2.94', '2.89'),
(12, '5940205401', '2561', 'ภาคต้น', '01204325', 'Data Communication and Computer Networks', 'A', '01204332', 'Operating Systems', 'B', '01204341', 'Software Engineering', 'A', '01204465', 'Introduction to data mining and knowledge discover', 'A', '01205204', 'General Electronics I', 'B', '01208201', 'Basic Principles of Engineering Mechanics', 'C+', '01213211', 'Materials Science for Engineers', 'A', '--', '-', '-', '-', '-', '-', '-', '-', '-', '3.52', '3.03'),
(13, '5940203141', '2561', 'ภาคปลาย', '01204213', 'Theory of Computation', 'B', '01204322', 'Embedded System', 'B', '01204324', 'Computer System Laboratory', 'C', '01204421', 'Computer Networks', 'A', '01204453', 'Web Information Retrieval and Mining', 'A', '01205205', 'General Electronics II', 'D+', '01355113', 'Foundation English III', 'A', '01453102', 'Law in Everyday Life', 'B+', '-', '-', '-', '-', '-', '-', '3.23', '3.07'),
(14, '5940203141', '2562', 'ภาคต้น', '01204352', 'Laws and Ethics in Information Technology', 'A', '01204399', 'Internship', 'A', '01204425', 'Internet System Programming', 'A', '01204483', 'Digital Image Processing', 'A', '01204495', 'Computer Engineering Project Preparation', 'A', '01205206', 'General Electronics Laboratory', 'A', '01355202', 'Fundamental English Writing', 'A', '01355204', 'Fundamental English Listening-Speaking', 'A', '01999213', 'Environment,Technology and Life', 'A', '-', '-', '-', '4', '3.21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_history`
--
ALTER TABLE `student_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_history`
--
ALTER TABLE `student_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
