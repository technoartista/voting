-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2017 at 06:58 AM
-- Server version: 5.7.17
-- PHP Version: 7.0.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_apicustom`
--

CREATE TABLE `cms_apicustom` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `responses` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_apicustom`
--

INSERT INTO `cms_apicustom` (`id`, `created_at`, `updated_at`, `permalink`, `tabel`, `aksi`, `kolom`, `orderby`, `sub_query_1`, `sql_where`, `nama`, `keterangan`, `parameter`, `method_type`, `parameters`, `responses`) VALUES
(1, NULL, NULL, 'addvoter', 'vote.voter_name', 'save_add', NULL, NULL, NULL, '', 'adduser', '', NULL, 'post', 'a:1:{i:0;a:5:{s:4:\"name\";s:10:\"voter_name\";s:4:\"type\";s:6:\"string\";s:6:\"config\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:4:\"used\";s:1:\"1\";}}', 'a:2:{i:0;a:4:{s:4:\"name\";s:2:\"id\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}i:1;a:4:{s:4:\"name\";s:10:\"voter_name\";s:4:\"type\";s:6:\"string\";s:8:\"subquery\";s:0:\"\";s:4:\"used\";s:1:\"1\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `cms_apikey`
--

CREATE TABLE `cms_apikey` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_dashboard`
--

CREATE TABLE `cms_dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_queues`
--

CREATE TABLE `cms_email_queues` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci,
  `email_attachments` text COLLATE utf8_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_email_templates`
--

CREATE TABLE `cms_email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_email_templates`
--

INSERT INTO `cms_email_templates` (`id`, `name`, `slug`, `subject`, `content`, `description`, `from_name`, `from_email`, `cc_email`, `created_at`, `updated_at`) VALUES
(1, 'Email Template Forgot Password Backend', 'forgot_password_backend', NULL, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', NULL, '2017-03-12 01:27:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_logs`
--

CREATE TABLE `cms_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_logs`
--

INSERT INTO `cms_logs` (`id`, `created_at`, `updated_at`, `ipaddress`, `useragent`, `url`, `description`, `id_cms_users`) VALUES
(1, '2017-03-12 01:28:56', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'admin@crudbooster.com login with IP Address ::1', 1),
(2, '2017-03-12 01:30:30', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/users/edit-save/1', 'Update data Surya Kumaran at Users', 1),
(3, '2017-03-12 08:04:20', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'suryakumaran@technoartista.com login with IP Address ::1', 1),
(4, '2017-03-12 08:26:23', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/module_generator/action-selected', 'Delete data 12,13 at Module Generator', 1),
(5, '2017-03-12 08:29:42', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/module_generator/delete/12', 'Delete data Voter List at Module Generator', 1),
(6, '2017-03-12 08:30:34', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/logout', 'suryakumaran@technoartista.com logout', 1),
(7, '2017-03-12 08:30:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'suryakumaran@technoartista.com login with IP Address ::1', 1),
(8, '2017-03-12 08:34:51', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/module_generator/delete/12', 'Delete data Voter List at Module Generator', 1),
(9, '2017-03-12 08:37:03', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/module_generator/delete/12', 'Delete data Voter List at Module Generator', 1),
(10, '2017-03-12 08:44:25', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/logout', 'suryakumaran@technoartista.com logout', 1),
(11, '2017-03-12 08:44:27', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'suryakumaran@technoartista.com login with IP Address ::1', 1),
(12, '2017-03-12 08:46:27', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/module_generator/delete/12', 'Delete data Voter List at Module Generator', 1),
(13, '2017-03-12 09:02:12', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/module_generator/delete/12', 'Delete data Voter List at Module Generator', 1),
(14, '2017-03-12 09:02:22', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/menu_management/delete/2', 'Delete data Votes List at Menu Management', 1),
(15, '2017-03-12 09:03:13', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/vote_voter_name/add-save', 'Add New Data Surya at Voter List', 1),
(16, '2017-03-12 09:06:26', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/module_generator/delete/13', 'Delete data Votes at Module Generator', 1),
(17, '2017-03-12 09:45:18', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/vote_symbols/add-save', 'Add New Data DMK at Symbols', 1),
(18, '2017-03-12 09:45:22', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/vote_symbols/add-save', 'Add New Data ADMK at Symbols', 1),
(19, '2017-03-12 09:45:28', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/vote_symbols/add-save', 'Add New Data AIADMK at Symbols', 1),
(20, '2017-03-12 09:45:57', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/statistic_builder/add-save', 'Add New Data dashboard at Statistic Builder', 1),
(21, '2017-03-12 09:47:07', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/vote_votecount/add-save', 'Add New Data 1 at Votes', 1),
(22, '2017-03-12 10:08:23', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/users/add-save', 'Add New Data Vote Tester at Users', 1),
(23, '2017-03-12 10:08:31', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/logout', 'suryakumaran@technoartista.com logout', 1),
(24, '2017-03-12 10:08:33', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'vote@vote.com login with IP Address ::1', 2),
(25, '2017-03-12 10:08:39', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/users', 'Try view the data :name at Users', 2),
(26, '2017-03-12 10:10:32', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/logout', 'vote@vote.com logout', 2),
(27, '2017-03-12 10:10:34', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'vote@vote.com login with IP Address ::1', 2),
(28, '2017-03-12 10:10:41', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/users', 'Try view the data :name at Users', 2),
(29, '2017-03-12 10:10:47', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/logout', 'vote@vote.com logout', 2),
(30, '2017-03-12 10:10:47', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/logout', ' logout', NULL),
(31, '2017-03-12 10:10:53', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'suryakumaran@technoartista.com login with IP Address ::1', 1),
(32, '2017-03-12 10:11:11', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/menu_management/delete/4', 'Delete data Symbols at Menu Management', 1),
(33, '2017-03-12 10:11:15', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/menu_management/delete/5', 'Delete data Users at Menu Management', 1),
(34, '2017-03-12 10:11:20', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/menu_management/delete/6', 'Delete data Voter List at Menu Management', 1),
(35, '2017-03-12 10:11:25', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/menu_management/delete/7', 'Delete data Votes at Menu Management', 1),
(36, '2017-03-12 11:46:12', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/statistic_builder/delete/1', 'Delete data dashboard at Statistic Builder', 1),
(37, '2017-03-12 11:46:20', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/statistic_builder/add-save', 'Add New Data dashboard at Statistic Builder', 1),
(38, '2017-03-12 11:46:25', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/statistic_builder/edit-save/1', 'Update data dashboard at Statistic Builder', 1),
(39, '2017-03-13 20:45:32', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'vote@vote.com login with IP Address ::1', 2),
(40, '2017-03-14 06:53:29', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'vote@vote.com login with IP Address ::1', 2),
(41, '2017-03-14 06:54:05', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/logout', 'vote@vote.com logout', 2),
(42, '2017-03-14 06:54:11', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'suryakumaran@technoartista.com login with IP Address ::1', 1),
(43, '2017-03-14 06:55:09', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/logout', 'suryakumaran@technoartista.com logout', 1),
(44, '2017-03-14 06:55:20', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'vote@vote.com login with IP Address ::1', 2),
(45, '2017-03-14 13:24:44', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'suryakumaran@technoartista.com login with IP Address ::1', 1),
(46, '2017-03-14 13:25:20', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/menu_management/add-save', 'Add New Data Dashboard at Menu Management', 1),
(47, '2017-03-14 13:25:46', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/menu_management/edit-save/11', 'Update data Dashboard at Menu Management', 1),
(48, '2017-03-14 13:26:36', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/menu_management/add-save', 'Add New Data Vote Count at Menu Management', 1),
(49, '2017-03-14 13:26:48', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/logout', 'suryakumaran@technoartista.com logout', 1),
(50, '2017-03-14 13:26:53', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'vote@vote.com login with IP Address ::1', 2),
(51, '2017-03-14 13:27:05', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/logout', 'vote@vote.com logout', 2),
(52, '2017-03-14 13:27:11', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'suryakumaran@technoartista.com login with IP Address ::1', 1),
(53, '2017-03-14 13:27:30', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/menu_management/edit-save/11', 'Update data Vote Count at Menu Management', 1),
(54, '2017-03-14 21:07:03', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', 'http://localhost/voting/public/admin/login', 'suryakumaran@technoartista.com login with IP Address ::1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cms_menus`
--

CREATE TABLE `cms_menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_menus`
--

INSERT INTO `cms_menus` (`id`, `name`, `type`, `path`, `color`, `icon`, `parent_id`, `is_active`, `is_dashboard`, `id_cms_privileges`, `sorting`, `created_at`, `updated_at`) VALUES
(1, 'Voter List', 'Route', 'AdminVoteVoterNameControllerGetIndex', NULL, 'fa fa-users', 0, 1, 0, 1, 1, '2017-03-12 09:02:47', NULL),
(2, 'Votes', 'Route', 'AdminVoteVotecountControllerGetIndex', NULL, 'fa fa-envelope', 0, 1, 0, 1, 2, '2017-03-12 09:07:43', NULL),
(3, 'Symbols', 'Route', 'AdminVoteSymbolsControllerGetIndex', NULL, 'fa fa-th-list', 0, 1, 0, 1, 3, '2017-03-12 09:43:24', NULL),
(8, 'Symbols', 'Route', 'AdminVoteSymbolsControllerGetIndex', 'normal', 'fa fa-th-list', 0, 1, 0, 2, 5, '2017-03-12 10:07:10', NULL),
(9, 'Voter List', 'Route', 'AdminVoteVoterNameControllerGetIndex', 'normal', 'fa fa-users', 0, 1, 0, 2, 6, '2017-03-12 10:07:10', NULL),
(10, 'Votes', 'Route', 'AdminVoteVotecountControllerGetIndex', 'normal', 'fa fa-envelope', 0, 1, 0, 2, 7, '2017-03-12 10:07:10', NULL),
(11, 'Vote Count', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-dashboard', 0, 1, 1, 1, NULL, '2017-03-14 13:25:20', '2017-03-14 13:27:30'),
(12, 'Vote Count', 'Statistic', 'statistic_builder/show/dashboard', 'normal', 'fa fa-search', 0, 1, 1, 2, NULL, '2017-03-14 13:26:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_moduls`
--

CREATE TABLE `cms_moduls` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_moduls`
--

INSERT INTO `cms_moduls` (`id`, `created_at`, `updated_at`, `name`, `icon`, `path`, `table_name`, `controller`, `is_protected`, `is_active`) VALUES
(1, '2017-03-12 01:27:32', NULL, 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', 1, 1),
(2, '2017-03-12 01:27:32', NULL, 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', 1, 1),
(3, '2017-03-12 01:27:32', NULL, 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', 1, 1),
(4, '2017-03-12 01:27:32', NULL, 'Users', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', 0, 1),
(5, '2017-03-12 01:27:32', NULL, 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', 1, 1),
(6, '2017-03-12 01:27:32', NULL, 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', 1, 1),
(7, '2017-03-12 01:27:32', NULL, 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', 1, 1),
(8, '2017-03-12 01:27:32', NULL, 'Email Template', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', 1, 1),
(9, '2017-03-12 01:27:32', NULL, 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', 1, 1),
(10, '2017-03-12 01:27:32', NULL, 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', 1, 1),
(11, '2017-03-12 01:27:32', NULL, 'Logs', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', 1, 1),
(12, '2017-03-12 09:02:47', NULL, 'Voter List', 'fa fa-users', 'vote_voter_name', 'vote.voter_name', 'AdminVoteVoterNameController', 0, 0),
(13, '2017-03-12 09:07:43', NULL, 'Votes', 'fa fa-envelope', 'vote_votecount', 'vote.votecount', 'AdminVoteVotecountController', 0, 0),
(14, '2017-03-12 09:43:24', NULL, 'Symbols', 'fa fa-th-list', 'vote_symbols', 'vote.symbols', 'AdminVoteSymbolsController', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cms_notifications`
--

CREATE TABLE `cms_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges`
--

CREATE TABLE `cms_privileges` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges`
--

INSERT INTO `cms_privileges` (`id`, `created_at`, `updated_at`, `name`, `is_superadmin`, `theme_color`) VALUES
(1, '2017-03-12 01:27:32', NULL, 'Super Administrator', 1, 'skin-red'),
(2, NULL, NULL, 'ADMIN', 0, 'skin-blue');

-- --------------------------------------------------------

--
-- Table structure for table `cms_privileges_roles`
--

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_privileges_roles`
--

INSERT INTO `cms_privileges_roles` (`id`, `created_at`, `updated_at`, `is_visible`, `is_create`, `is_read`, `is_edit`, `is_delete`, `id_cms_privileges`, `id_cms_moduls`) VALUES
(1, '2017-03-12 01:27:32', NULL, 1, 0, 0, 0, 0, 1, 1),
(2, '2017-03-12 01:27:32', NULL, 1, 1, 1, 1, 1, 1, 2),
(3, '2017-03-12 01:27:32', NULL, 0, 1, 1, 1, 1, 1, 3),
(4, '2017-03-12 01:27:32', NULL, 1, 1, 1, 1, 1, 1, 4),
(5, '2017-03-12 01:27:32', NULL, 1, 1, 1, 1, 1, 1, 5),
(6, '2017-03-12 01:27:32', NULL, 1, 1, 1, 1, 1, 1, 6),
(7, '2017-03-12 01:27:32', NULL, 1, 1, 1, 1, 1, 1, 7),
(8, '2017-03-12 01:27:32', NULL, 1, 1, 1, 1, 1, 1, 8),
(9, '2017-03-12 01:27:32', NULL, 1, 1, 1, 1, 1, 1, 9),
(10, '2017-03-12 01:27:32', NULL, 1, 1, 1, 1, 1, 1, 10),
(11, '2017-03-12 01:27:32', NULL, 1, 0, 1, 0, 1, 1, 11),
(12, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(13, NULL, NULL, 1, 1, 1, 1, 1, 1, 13),
(14, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(15, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(16, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(17, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(18, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(19, NULL, NULL, 1, 1, 1, 1, 1, 1, 12),
(20, NULL, NULL, 1, 1, 1, 1, 1, 1, 13),
(21, NULL, NULL, 1, 1, 1, 1, 1, 1, 13),
(22, NULL, NULL, 1, 1, 1, 1, 1, 1, 14),
(23, NULL, NULL, 1, 1, 1, 1, 1, 2, 14),
(24, NULL, NULL, 1, 1, 1, 1, 1, 2, 12),
(25, NULL, NULL, 1, 1, 1, 1, 1, 2, 13);

-- --------------------------------------------------------

--
-- Table structure for table `cms_settings`
--

CREATE TABLE `cms_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_settings`
--

INSERT INTO `cms_settings` (`id`, `created_at`, `updated_at`, `name`, `content`, `content_input_type`, `dataenum`, `helper`, `group_setting`, `label`) VALUES
(1, '2017-03-12 01:27:32', NULL, 'login_background_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Login Background Color'),
(2, '2017-03-12 01:27:32', NULL, 'login_font_color', NULL, 'text', NULL, 'Input hexacode', 'Login Register Style', 'Login Font Color'),
(3, '2017-03-12 01:27:32', NULL, 'login_background_image', NULL, 'upload_image', NULL, NULL, 'Login Register Style', 'Login Background Image'),
(4, '2017-03-12 01:27:32', NULL, 'email_sender', 'support@crudbooster.com', 'text', NULL, NULL, 'Email Setting', 'Email Sender'),
(5, '2017-03-12 01:27:32', NULL, 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', NULL, 'Email Setting', 'Mail Driver'),
(6, '2017-03-12 01:27:32', NULL, 'smtp_host', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Host'),
(7, '2017-03-12 01:27:32', NULL, 'smtp_port', '25', 'text', NULL, 'default 25', 'Email Setting', 'SMTP Port'),
(8, '2017-03-12 01:27:32', NULL, 'smtp_username', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Username'),
(9, '2017-03-12 01:27:32', NULL, 'smtp_password', '', 'text', NULL, NULL, 'Email Setting', 'SMTP Password'),
(10, '2017-03-12 01:27:32', NULL, 'appname', 'SMART VOTING SYSTEM', 'text', NULL, NULL, 'Application Setting', 'Application Name'),
(11, '2017-03-12 01:27:32', NULL, 'default_paper_size', 'Legal', 'text', NULL, 'Paper size, ex : A4, Legal, etc', 'Application Setting', 'Default Paper Print Size'),
(12, '2017-03-12 01:27:32', NULL, 'logo', 'uploads/2017-03/38ab7d85a8a0cc30cab44e609cb33298.jpg', 'upload_image', NULL, NULL, 'Application Setting', 'Logo'),
(13, '2017-03-12 01:27:32', NULL, 'favicon', NULL, 'upload_image', NULL, NULL, 'Application Setting', 'Favicon'),
(14, '2017-03-12 01:27:32', NULL, 'api_debug_mode', 'true', 'select', 'true,false', NULL, 'Application Setting', 'API Debug Mode'),
(15, '2017-03-12 01:27:32', NULL, 'google_api_key', '', 'text', NULL, NULL, 'Application Setting', 'Google API Key'),
(16, '2017-03-12 01:27:32', NULL, 'google_fcm_key', '', 'text', NULL, NULL, 'Application Setting', 'Google FCM Key');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistics`
--

CREATE TABLE `cms_statistics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_statistics`
--

INSERT INTO `cms_statistics` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'dashboard', 'dashboard', '2017-03-12 11:46:20', '2017-03-12 11:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `cms_statistic_components`
--

CREATE TABLE `cms_statistic_components` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_statistic_components`
--

INSERT INTO `cms_statistic_components` (`id`, `id_cms_statistics`, `componentID`, `component_name`, `area_name`, `sorting`, `name`, `config`, `created_at`, `updated_at`) VALUES
(1, 1, 'e418ff585f1dd2f7cb6a7001d9ce8377', 'smallbox', 'area1', 0, NULL, '{\"name\":\"ADMK\",\"icon\":\"ion-icecream\",\"color\":\"bg-green\",\"link\":\"technoartista.com\",\"sql\":\"\"}', '2017-03-14 13:27:50', NULL),
(2, 1, 'c9eb387e5e0c119343be07134e7c0fbc', 'smallbox', 'area2', 0, NULL, '{\"name\":\"DML\",\"icon\":\"ion-clock\",\"color\":\"bg-yellow\",\"link\":\"technoartista.com\",\"sql\":\"\"}', '2017-03-14 13:27:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_users`
--

CREATE TABLE `cms_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cms_users`
--

INSERT INTO `cms_users` (`id`, `created_at`, `updated_at`, `name`, `photo`, `email`, `password`, `id_cms_privileges`, `status`) VALUES
(1, '2017-03-12 01:27:32', '2017-03-12 01:30:30', 'Surya Kumaran', 'uploads/2017-03/1766f76446b3f79eedc2d8ac9f8ce0da.jpg', 'suryakumaran@technoartista.com', '$2y$10$EAs35q7JWjIgd/UalrOrHefVVicTOB6Uic5jCxa/Wy6VgvtZa75Fa', 1, 'Active'),
(2, '2017-03-12 10:08:23', NULL, 'Vote Tester', 'uploads/2017-03/8d3548b72f463b22985bf5963e934b1d.jpg', 'vote@vote.com', '$2y$10$0zkAWz2iaTI3XXvjcuWqaOVh1gqX981lXQm7W07GcY4cLfOjmrODW', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_08_07_145904_add_table_cms_apicustom', 1),
(2, '2016_08_07_150834_add_table_cms_dashboard', 1),
(3, '2016_08_07_151210_add_table_cms_logs', 1),
(4, '2016_08_07_152014_add_table_cms_privileges', 1),
(5, '2016_08_07_152214_add_table_cms_privileges_roles', 1),
(6, '2016_08_07_152320_add_table_cms_settings', 1),
(7, '2016_08_07_152421_add_table_cms_users', 1),
(8, '2016_08_07_154624_add_table_cms_moduls', 1),
(9, '2016_08_17_225409_add_status_cms_users', 1),
(10, '2016_08_20_125418_add_table_cms_notifications', 1),
(11, '2016_09_04_033706_add_table_cms_email_queues', 1),
(12, '2016_09_16_035347_add_group_setting', 1),
(13, '2016_09_16_045425_add_label_setting', 1),
(14, '2016_09_17_104728_create_nullable_cms_apicustom', 1),
(15, '2016_10_01_141740_add_method_type_apicustom', 1),
(16, '2016_10_01_141846_add_parameters_apicustom', 1),
(17, '2016_10_01_141934_add_responses_apicustom', 1),
(18, '2016_10_01_144826_add_table_apikey', 1),
(19, '2016_11_14_141657_create_cms_menus', 1),
(20, '2016_11_15_132350_create_cms_email_templates', 1),
(21, '2016_11_15_190410_create_cms_statistics', 1),
(22, '2016_11_17_102740_create_cms_statistic_components', 1),
(23, '2017_03_12_142451_create_voterlist_table', 2),
(25, '2017_03_12_142858_create_votecount_table', 3),
(26, '2017_03_12_151154_create_symbols_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `symbols`
--

CREATE TABLE `symbols` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `party_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `symbols`
--

INSERT INTO `symbols` (`id`, `created_at`, `updated_at`, `party_name`) VALUES
(1, '2017-03-12 09:45:18', NULL, 'DMK'),
(2, '2017-03-12 09:45:22', NULL, 'ADMK'),
(3, '2017-03-12 09:45:28', NULL, 'AIADMK');

-- --------------------------------------------------------

--
-- Table structure for table `votecount`
--

CREATE TABLE `votecount` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `votername` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vote_symbol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `votecount`
--

INSERT INTO `votecount` (`id`, `created_at`, `updated_at`, `votername`, `vote_symbol`) VALUES
(1, '2017-03-12 09:47:07', NULL, '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `voter_name`
--

CREATE TABLE `voter_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `voter_name` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `voter_name`
--

INSERT INTO `voter_name` (`id`, `created_at`, `updated_at`, `voter_name`) VALUES
(1, '2017-03-12 09:03:13', NULL, 'Surya'),
(2, '2017-03-12 09:50:59', NULL, 'Prasanth'),
(3, '2017-03-12 11:15:01', NULL, 'Jeeva'),
(4, '2017-03-12 11:30:47', NULL, 'suresh'),
(5, '2017-03-12 11:41:53', NULL, 'surya'),
(6, '2017-03-14 07:00:16', NULL, 'jaikumar'),
(7, '2017-03-14 07:01:07', NULL, 'ssk'),
(8, '2017-03-14 07:02:02', NULL, 'deepakkumar'),
(9, '2017-03-14 07:03:37', NULL, 'suganya'),
(10, '2017-03-14 07:13:15', NULL, 'shanti'),
(11, '2017-03-14 07:14:06', NULL, 'shanti'),
(12, '2017-03-14 07:17:02', NULL, 'chandra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_logs`
--
ALTER TABLE `cms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_menus`
--
ALTER TABLE `cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_settings`
--
ALTER TABLE `cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_users`
--
ALTER TABLE `cms_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `symbols`
--
ALTER TABLE `symbols`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votecount`
--
ALTER TABLE `votecount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voter_name`
--
ALTER TABLE `voter_name`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_apicustom`
--
ALTER TABLE `cms_apicustom`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_apikey`
--
ALTER TABLE `cms_apikey`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_dashboard`
--
ALTER TABLE `cms_dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_queues`
--
ALTER TABLE `cms_email_queues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_email_templates`
--
ALTER TABLE `cms_email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_logs`
--
ALTER TABLE `cms_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `cms_menus`
--
ALTER TABLE `cms_menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cms_moduls`
--
ALTER TABLE `cms_moduls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cms_notifications`
--
ALTER TABLE `cms_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_privileges`
--
ALTER TABLE `cms_privileges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_privileges_roles`
--
ALTER TABLE `cms_privileges_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `cms_settings`
--
ALTER TABLE `cms_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `cms_statistics`
--
ALTER TABLE `cms_statistics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cms_statistic_components`
--
ALTER TABLE `cms_statistic_components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cms_users`
--
ALTER TABLE `cms_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `symbols`
--
ALTER TABLE `symbols`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `votecount`
--
ALTER TABLE `votecount`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `voter_name`
--
ALTER TABLE `voter_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
