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
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 5),
(4, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add student', 1, 'add_student'),
(2, 'Can change student', 1, 'change_student'),
(3, 'Can delete student', 1, 'delete_student'),
(4, 'Can view student', 1, 'view_student'),
(5, 'Can add history', 2, 'add_history'),
(6, 'Can change history', 2, 'change_history'),
(7, 'Can delete history', 2, 'delete_history'),
(8, 'Can view history', 2, 'view_history'),
(9, 'Can add category', 3, 'add_category'),
(10, 'Can change category', 3, 'change_category'),
(11, 'Can delete category', 3, 'delete_category'),
(12, 'Can view category', 3, 'view_category'),
(13, 'Can add subject group', 4, 'add_subjectgroup'),
(14, 'Can change subject group', 4, 'change_subjectgroup'),
(15, 'Can delete subject group', 4, 'delete_subjectgroup'),
(16, 'Can view subject group', 4, 'view_subjectgroup'),
(17, 'Can add subject', 5, 'add_subject'),
(18, 'Can change subject', 5, 'change_subject'),
(19, 'Can delete subject', 5, 'delete_subject'),
(20, 'Can view subject', 5, 'view_subject'),
(21, 'Can add pre subject', 6, 'add_presubject'),
(22, 'Can change pre subject', 6, 'change_presubject'),
(23, 'Can delete pre subject', 6, 'delete_presubject'),
(24, 'Can view pre subject', 6, 'view_presubject'),
(25, 'Can add planner', 7, 'add_planner'),
(26, 'Can change planner', 7, 'change_planner'),
(27, 'Can delete planner', 7, 'delete_planner'),
(28, 'Can view planner', 7, 'view_planner'),
(29, 'Can add addsubject', 8, 'add_addsubject'),
(30, 'Can change addsubject', 8, 'change_addsubject'),
(31, 'Can delete addsubject', 8, 'delete_addsubject'),
(32, 'Can view addsubject', 8, 'view_addsubject'),
(33, 'Can add subject active', 9, 'add_subjectactive'),
(34, 'Can change subject active', 9, 'change_subjectactive'),
(35, 'Can delete subject active', 9, 'delete_subjectactive'),
(36, 'Can view subject active', 9, 'view_subjectactive'),
(37, 'Can add log entry', 10, 'add_logentry'),
(38, 'Can change log entry', 10, 'change_logentry'),
(39, 'Can delete log entry', 10, 'delete_logentry'),
(40, 'Can view log entry', 10, 'view_logentry'),
(41, 'Can add permission', 11, 'add_permission'),
(42, 'Can change permission', 11, 'change_permission'),
(43, 'Can delete permission', 11, 'delete_permission'),
(44, 'Can view permission', 11, 'view_permission'),
(45, 'Can add group', 12, 'add_group'),
(46, 'Can change group', 12, 'change_group'),
(47, 'Can delete group', 12, 'delete_group'),
(48, 'Can view group', 12, 'view_group'),
(49, 'Can add user', 13, 'add_user'),
(50, 'Can change user', 13, 'change_user'),
(51, 'Can delete user', 13, 'delete_user'),
(52, 'Can view user', 13, 'view_user'),
(53, 'Can add content type', 14, 'add_contenttype'),
(54, 'Can change content type', 14, 'change_contenttype'),
(55, 'Can delete content type', 14, 'delete_contenttype'),
(56, 'Can view content type', 14, 'view_contenttype'),
(57, 'Can add session', 15, 'add_session'),
(58, 'Can change session', 15, 'change_session'),
(59, 'Can delete session', 15, 'delete_session'),
(60, 'Can view session', 15, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$caPIno7PwOfB$VkaGhwU4el1K20RoVaseFldYSZtJO+E0xq74wIG9Iok=', '2020-03-25 14:43:23.600608', 1, 'admin', '', '', 'ad@a.com', 1, 1, '2020-03-08 14:36:34.754900'),
(4, 'pbkdf2_sha256$180000$sBHfxCJ2iz99$+xuIllqFnkI9JPa5I6DDRkMMBLd7m0aXm8ttZTjRpiI=', '2020-03-25 14:43:55.703826', 0, '5940205402', '', '', '', 1, 1, '2020-03-23 13:06:06.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-03-08 14:39:19.335571', '5940205402', 'Student object (5940205402)', 1, '[{\"added\": {}}]', 1, 1),
(2, '2020-03-08 14:39:28.654919', '5940205402', 'Student object (5940205402)', 3, '', 1, 1),
(3, '2020-03-08 14:54:41.507239', '2', '5940205402', 2, '[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]', 13, 1),
(85, '2020-03-25 13:02:48.220107', '3', '5940203141', 3, '', 13, 1),
(86, '2020-03-25 13:12:02.994070', '3', 'History object (3)', 1, '[{\"added\": {}}]', 2, 1),
(87, '2020-03-25 13:13:17.543306', '4', '5940205402', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 13, 1),
(88, '2020-03-25 13:14:50.128590', '4', '5940205402', 2, '[{\"changed\": {\"fields\": [\"Staff status\"]}}]', 13, 1),
(89, '2020-03-25 13:15:55.650170', '4', '5940205402', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 13, 1),
(90, '2020-03-25 13:20:17.994376', '4', '5940205402', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 13, 1),
(91, '2020-03-25 13:20:39.469222', '4', '5940205402', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 13, 1),
(92, '2020-03-25 13:23:52.418261', '4', 'History object (4)', 1, '[{\"added\": {}}]', 2, 4),
(93, '2020-03-25 13:26:19.308445', '5', 'History object (5)', 1, '[{\"added\": {}}]', 2, 4),
(94, '2020-03-25 13:29:24.917349', '6', 'History object (6)', 1, '[{\"added\": {}}]', 2, 4),
(95, '2020-03-25 13:31:03.991859', '7', 'History object (7)', 1, '[{\"added\": {}}]', 2, 4),
(96, '2020-03-25 13:32:22.616492', '1', 'user', 1, '[{\"added\": {}}]', 12, 4),
(97, '2020-03-25 13:32:43.303977', '4', '5940205402', 2, '[{\"changed\": {\"fields\": [\"Groups\"]}}]', 13, 4),
(98, '2020-03-25 13:36:40.709229', '1', 'user', 2, '[]', 12, 4),
(99, '2020-03-25 13:45:29.995506', '8', 'History object (8)', 1, '[{\"added\": {}}]', 2, 4),
(100, '2020-03-25 13:48:26.239903', '9', 'History object (9)', 1, '[{\"added\": {}}]', 2, 4),
(101, '2020-03-25 13:52:10.834811', '10', 'History object (10)', 1, '[{\"added\": {}}]', 2, 4),
(102, '2020-03-25 13:53:01.174022', '9', 'History object (9)', 2, '[{\"changed\": {\"fields\": [\"GPAX\", \"GPA\"]}}]', 2, 4),
(103, '2020-03-25 13:53:22.316407', '8', 'History object (8)', 2, '[{\"changed\": {\"fields\": [\"GPAX\", \"GPA\"]}}]', 2, 4),
(104, '2020-03-25 13:56:11.563408', '11', 'History object (11)', 1, '[{\"added\": {}}]', 2, 4),
(105, '2020-03-25 13:59:27.378938', '12', 'History object (12)', 1, '[{\"added\": {}}]', 2, 4),
(106, '2020-03-25 14:01:53.060754', '13', 'History object (13)', 1, '[{\"added\": {}}]', 2, 4),
(107, '2020-03-25 14:05:05.041714', '14', 'History object (14)', 1, '[{\"added\": {}}]', 2, 4),
(108, '2020-03-25 14:19:30.236668', '4', '5940205402', 2, '[{\"changed\": {\"fields\": [\"Superuser status\"]}}]', 13, 1),
(109, '2020-03-25 14:20:20.045377', '5', '5940203141', 3, '', 13, 1),
(110, '2020-03-25 14:22:12.131774', '1', 'user', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 12, 1),
(111, '2020-03-25 14:23:04.716718', '1', 'user', 2, '[{\"changed\": {\"fields\": [\"Permissions\"]}}]', 12, 1),
(112, '2020-03-25 14:24:36.854970', '1', 'user', 2, '[]', 12, 1),
(113, '2020-03-25 14:40:38.426923', '1', 'user', 2, '[]', 12, 1),
(114, '2020-03-25 14:43:42.389650', '6', '5940203141', 3, '', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(10, 'admin', 'logentry'),
(12, 'auth', 'group'),
(11, 'auth', 'permission'),
(13, 'auth', 'user'),
(14, 'contenttypes', 'contenttype'),
(8, 'planner', 'addsubject'),
(3, 'planner', 'category'),
(7, 'planner', 'planner'),
(6, 'planner', 'presubject'),
(5, 'planner', 'subject'),
(16, 'planner', 'subject_plan'),
(9, 'planner', 'subjectactive'),
(4, 'planner', 'subjectgroup'),
(15, 'sessions', 'session'),
(2, 'student', 'history'),
(1, 'student', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-08 14:33:41.827457'),
(2, 'auth', '0001_initial', '2020-03-08 14:33:43.268617'),
(3, 'admin', '0001_initial', '2020-03-08 14:33:51.681976'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-08 14:33:54.051065'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-08 14:33:54.112056'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-08 14:33:55.360331'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-08 14:33:56.285862'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-08 14:33:56.542686'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-08 14:33:56.667682'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-08 14:33:57.351646'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-08 14:33:57.401808'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-08 14:33:57.484055'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-08 14:33:57.617781'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-08 14:33:57.759689'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-08 14:33:57.895330'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-08 14:33:57.949494'),
(17, 'student', '0001_initial', '2020-03-08 14:33:59.168169'),
(18, 'student', '0002_detail', '2020-03-08 14:34:00.336637'),
(19, 'student', '0003_auto_20200109_2318', '2020-03-08 14:34:05.297511'),
(20, 'student', '0004_student_student_picture', '2020-03-08 14:34:06.562694'),
(21, 'student', '0005_auto_20200202_2244', '2020-03-08 14:34:07.334577'),
(22, 'student', '0006_auto_20200212_1954', '2020-03-08 14:34:10.297305'),
(23, 'planner', '0001_initial', '2020-03-08 14:34:11.745715'),
(24, 'planner', '0002_category_category_credit', '2020-03-08 14:34:16.079130'),
(25, 'planner', '0003_auto_20200213_2338', '2020-03-08 14:34:16.257922'),
(26, 'planner', '0004_auto_20200218_1942', '2020-03-08 14:34:19.438491'),
(27, 'planner', '0005_auto_20200218_2036', '2020-03-08 14:34:20.443957'),
(28, 'planner', '0006_addsubject_subjectactive', '2020-03-08 14:34:21.068711'),
(29, 'sessions', '0001_initial', '2020-03-08 14:34:21.515603'),
(30, 'student', '0007_auto_20200228_2211', '2020-03-08 14:34:25.034876'),
(31, 'student', '0008_auto_20200308_2133', '2020-03-08 14:34:27.632714'),
(32, 'student', '0009_auto_20200308_2202', '2020-03-08 15:02:54.426088'),
(33, 'student', '0010_auto_20200315_1324', '2020-03-15 06:25:03.649635'),
(34, 'student', '0011_auto_20200320_2156', '2020-03-20 14:56:52.766854'),
(35, 'planner', '0007_remove_subject_subject_detail', '2020-03-20 16:09:45.769391'),
(36, 'student', '0012_auto_20200320_2356', '2020-03-20 16:56:36.836818'),
(37, 'planner', '0008_create_plan_plan_subject_plan', '2020-03-21 06:28:22.011469'),
(38, 'planner', '0009_auto_20200321_1507', '2020-03-21 08:08:05.552351'),
(39, 'planner', '0010_auto_20200322_1503', '2020-03-22 08:03:49.440005');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('dsee3m1vqpr7tr3y1gjbzw4ji3dc7pxn', 'Y2IyM2QyOWFlNzQ2NmJkNGU4YWQyY2ZmZDQ5N2I4N2JkMDBkNzZiNTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYWM4NzBkYWYyMTcwNjY3MzFiZWVkYmZiNjFhYzQ1ZDUzYjk1N2JlIn0=', '2020-04-06 13:06:12.371171'),
('ob9i5cej0jeha16rolyoqjpk3yii3929', 'Y2IyM2QyOWFlNzQ2NmJkNGU4YWQyY2ZmZDQ5N2I4N2JkMDBkNzZiNTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxYWM4NzBkYWYyMTcwNjY3MzFiZWVkYmZiNjFhYzQ1ZDUzYjk1N2JlIn0=', '2020-04-08 14:43:55.740335');

-- --------------------------------------------------------

--
-- Table structure for table `planner_addsubject`
--

CREATE TABLE `planner_addsubject` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addsubject_date` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addsubject_startime` time(6) NOT NULL,
  `addsubject_endtime` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `planner_category`
--

CREATE TABLE `planner_category` (
  `id` int(11) NOT NULL,
  `CategoryID` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CategoryNAme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreateTime` datetime(6) NOT NULL,
  `CreateBy` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UpdateTime` datetime(6) NOT NULL,
  `UpdateBy` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Category_credit` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planner_category`
--

INSERT INTO `planner_category` (`id`, `CategoryID`, `CategoryNAme`, `CreateTime`, `CreateBy`, `UpdateTime`, `UpdateBy`, `Category_credit`) VALUES
(1, '1', 'หมวดวิชาศึกษาทั่วไป', '2020-03-20 16:04:48.000000', 'mook', '2020-03-20 16:04:51.000000', 'mook', '30'),
(2, '2', 'หมวดวิชาเฉพาะ', '2020-03-20 16:05:06.000000', 'mook', '2020-03-20 16:05:08.000000', 'mook', '111'),
(3, '3', 'หมวดวิชาเลือกเสรี', '2020-03-20 16:05:22.000000', 'mook', '2020-03-20 16:05:24.000000', 'mook', '6');

-- --------------------------------------------------------

--
-- Table structure for table `planner_create_plan`
--

CREATE TABLE `planner_create_plan` (
  `id` int(11) NOT NULL,
  `plan_no` int(11) NOT NULL,
  `Time_start` time(6) DEFAULT NULL,
  `Time_close` time(6) DEFAULT NULL,
  `day_id` int(11) NOT NULL,
  `Username` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Subject_ID_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planner_create_plan`
--

INSERT INTO `planner_create_plan` (`id`, `plan_no`, `Time_start`, `Time_close`, `day_id`, `Username`, `Subject_ID_id`) VALUES
(29, 30, '15:00:00.000000', '18:00:00.000000', 1, '5940203141', 2),
(32, 30, '13:00:00.000000', '16:00:00.000000', 1, '5940203141', 2);

-- --------------------------------------------------------

--
-- Table structure for table `planner_plan`
--

CREATE TABLE `planner_plan` (
  `id` int(11) NOT NULL,
  `plan` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_ID` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planner_plan`
--

INSERT INTO `planner_plan` (`id`, `plan`, `user_ID`) VALUES
(30, 'plan1', '5940203141'),
(31, 'plan1', '5940205402');

-- --------------------------------------------------------

--
-- Table structure for table `planner_planner`
--

CREATE TABLE `planner_planner` (
  `plan_id` int(11) NOT NULL,
  `plan_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_year` int(11) NOT NULL,
  `plan_semester` int(11) NOT NULL,
  `plan_gps` double NOT NULL,
  `plan_no` int(11) NOT NULL,
  `plan_totalcredit` int(11) NOT NULL,
  `plan_remark` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `planner_presubject`
--

CREATE TABLE `planner_presubject` (
  `id` int(11) NOT NULL,
  `pre_subject_id` int(11) NOT NULL,
  `subject_id_id` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `planner_subjectactive`
--

CREATE TABLE `planner_subjectactive` (
  `id` int(11) NOT NULL,
  `SA_year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SA_semster` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SA_id` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SA_nameTH` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SA_nameEN` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SA_credit` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SA_hour` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(7, '01204461', 'Artificial Intelligence ', 3, 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `student_student`
--

CREATE TABLE `student_student` (
  `student_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_surname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_year` int(11) NOT NULL,
  `student_gpa` double NOT NULL,
  `student_email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_totalcredit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_student`
--

INSERT INTO `student_student` (`student_id`, `student_name`, `student_surname`, `student_password`, `student_year`, `student_gpa`, `student_email`, `student_totalcredit`) VALUES
('5940203141', 'ปภัสสรา', 'มหานาม', 'princess303', 2559, 3.5, 'P@p.com', 145),
('5940205402', 'สุพิชชา', 'โพธิ์ศรี', 'princess303', 2559, 2.95, 'supitcha.pho@ku.th', 145);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `planner_addsubject`
--
ALTER TABLE `planner_addsubject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planner_category`
--
ALTER TABLE `planner_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planner_create_plan`
--
ALTER TABLE `planner_create_plan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planner_create_plan_Subject_ID_id_04150f94_fk_planner_s` (`Subject_ID_id`);

--
-- Indexes for table `planner_plan`
--
ALTER TABLE `planner_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planner_planner`
--
ALTER TABLE `planner_planner`
  ADD PRIMARY KEY (`plan_id`),
  ADD KEY `planner_planner_student_id_id_f922a5e9_fk` (`student_id_id`);

--
-- Indexes for table `planner_presubject`
--
ALTER TABLE `planner_presubject`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planner_presubject_subject_id_id_e5ca7076_fk_planner_s` (`subject_id_id`);

--
-- Indexes for table `planner_subject`
--
ALTER TABLE `planner_subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD KEY `planner_subject_subjectgroup_id_c07f7518_fk_planner_s` (`subjectgroup_id`);

--
-- Indexes for table `planner_subjectactive`
--
ALTER TABLE `planner_subjectactive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planner_subjectgroup`
--
ALTER TABLE `planner_subjectgroup`
  ADD PRIMARY KEY (`SubjectGroupID`),
  ADD KEY `planner_subjectgroup_category_id_adaa4dca_fk_planner_category_id` (`category_id`);

--
-- Indexes for table `planner_subject_plan`
--
ALTER TABLE `planner_subject_plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_history`
--
ALTER TABLE `student_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_student`
--
ALTER TABLE `student_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `planner_addsubject`
--
ALTER TABLE `planner_addsubject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `planner_category`
--
ALTER TABLE `planner_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `planner_create_plan`
--
ALTER TABLE `planner_create_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `planner_plan`
--
ALTER TABLE `planner_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `planner_presubject`
--
ALTER TABLE `planner_presubject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planner_subjectactive`
--
ALTER TABLE `planner_subjectactive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planner_subject_plan`
--
ALTER TABLE `planner_subject_plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_history`
--
ALTER TABLE `student_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `planner_create_plan`
--
ALTER TABLE `planner_create_plan`
  ADD CONSTRAINT `planner_create_plan_Subject_ID_id_04150f94_fk_planner_s` FOREIGN KEY (`Subject_ID_id`) REFERENCES `planner_subject_plan` (`id`);

--
-- Constraints for table `planner_planner`
--
ALTER TABLE `planner_planner`
  ADD CONSTRAINT `planner_planner_student_id_id_f922a5e9_fk` FOREIGN KEY (`student_id_id`) REFERENCES `student_student` (`student_id`);

--
-- Constraints for table `planner_presubject`
--
ALTER TABLE `planner_presubject`
  ADD CONSTRAINT `planner_presubject_subject_id_id_e5ca7076_fk_planner_s` FOREIGN KEY (`subject_id_id`) REFERENCES `planner_subject` (`subject_id`);

--
-- Constraints for table `planner_subject`
--
ALTER TABLE `planner_subject`
  ADD CONSTRAINT `planner_subject_subjectgroup_id_c07f7518_fk_planner_s` FOREIGN KEY (`subjectgroup_id`) REFERENCES `planner_subjectgroup` (`SubjectGroupID`);

--
-- Constraints for table `planner_subjectgroup`
--
ALTER TABLE `planner_subjectgroup`
  ADD CONSTRAINT `planner_subjectgroup_category_id_adaa4dca_fk_planner_category_id` FOREIGN KEY (`category_id`) REFERENCES `planner_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
