-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 03:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eightyfive_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_report`
--

CREATE TABLE `activity_report` (
  `id` int(11) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `pkg_name` varchar(255) NOT NULL,
  `pkg_amount` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_gtron_wallet`
--

CREATE TABLE `admin_gtron_wallet` (
  `id` int(11) NOT NULL,
  `commission` float NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `sender_address` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_gtron_wallet`
--

INSERT INTO `admin_gtron_wallet` (`id`, `commission`, `transaction_type`, `sender_address`, `date`) VALUES
(1, 100, 'internal wallet transfer', 'xxxxxx', '2023-07-26 18:30:00'),
(2, 200, 'withdrawal', 'xxxxx', '2023-07-26 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_log`
--

CREATE TABLE `admin_log` (
  `id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `activity` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_log`
--

INSERT INTO `admin_log` (`id`, `user_name`, `activity`, `date`) VALUES
(1, 'master', 'Pending Package Approved diamond And Amount is 100', '2023-03-09 17:18:12'),
(2, 'master', 'Pending Package Approved pool And Amount is 500', '2023-03-09 17:41:51'),
(3, 'master', 'Pending Package Approved diamond And Amount is 1000', '2023-03-13 18:05:34'),
(4, 'master', 'Pending Package Approved pool And Amount is 2500', '2023-03-13 18:09:35'),
(5, 'control', 'Pending Package Approved vineet And Amount is 2500', '2023-03-14 12:07:09'),
(6, 'control', 'Email changed form contact@maxicoin.com email to vineet.miskin@mazimatic.com email', '2023-03-14 12:33:47'),
(7, '', 'User Unblock ', '2023-08-26 08:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(1) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp_code` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `user_name`, `password`, `email`, `otp_code`) VALUES
(1, 'control', '$2y$10$HSX6Fk1TZYi0DUGie5wMcudvNKLJxfgV7V7RPzPHV1IcPX.IpVas2', '', 0),
(2, 'master', '$2y$10$JPGXizWFrT5QsaiALXpdLOmmWcpc/Rwi4PSNnkBIQy1hn8euGNrOy', '2015kshitij14@gmail.com', 213103);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet`
--

CREATE TABLE `admin_wallet` (
  `wallet_id` int(11) NOT NULL,
  `wallet_amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_wallet`
--

INSERT INTO `admin_wallet` (`wallet_id`, `wallet_amount`) VALUES
(1, 153.295);

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet_summary`
--

CREATE TABLE `admin_wallet_summary` (
  `owner_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `wallet_address` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `gtron_commission` float NOT NULL,
  `total_amount` double DEFAULT 0,
  `otp_code` int(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_wallet_summary`
--

INSERT INTO `admin_wallet_summary` (`owner_id`, `email`, `wallet_address`, `owner`, `gtron_commission`, `total_amount`, `otp_code`, `date`) VALUES
(1, 'selvaraj@gtron.io', 'TPHyyDRvbT3LgoSmqWTHVuMUBeZB45jKvk', 'Selvaraj', 0, 100, 0, '2023-09-02 00:00:00'),
(2, 'rajesh@gtron.io', 'TJCGXFG5VbfK6UjwGsyF9s4FFtWRfsk8gY', 'Rajesh', 200, 0, 0, '2023-07-27 00:00:00'),
(3, 'rajendran@gtron.io', 'TBDMNMhNPw9TbAeRsaFQL1fvHKUYQp5KNy', 'Rajendran', 100, 0, 0, '2023-07-27 00:00:00'),
(4, 'project', 'project@address', 'project features', 400, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `admin_wallet_summary_logs`
--

CREATE TABLE `admin_wallet_summary_logs` (
  `id` int(11) NOT NULL,
  `owner_id_fk` int(11) NOT NULL,
  `wallet_address` varchar(11) NOT NULL,
  `previous_amount` float NOT NULL,
  `new_amount` float NOT NULL,
  `gtron_commission` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_wallet_summary_logs`
--

INSERT INTO `admin_wallet_summary_logs` (`id`, `owner_id_fk`, `wallet_address`, `previous_amount`, `new_amount`, `gtron_commission`, `date`) VALUES
(1, 1, '0', 0, 100, 100, '2023-09-02'),
(2, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(3, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(4, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(5, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(6, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(7, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(8, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(9, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(10, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(11, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(12, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(13, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(14, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(15, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(16, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(17, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(18, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(19, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(20, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(21, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(22, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(23, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(24, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(25, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(26, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(27, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(28, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02'),
(29, 1, 'TPHyyDRvbT3', 100, 100, 0, '2023-09-02');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `file` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `title`, `description`, `file`, `date`) VALUES
(3, 'Refer More than 4 People and Get Exciting GTRON Rewards. Offers Valid Till June 30 2023. Start Now', 'Refer More than 4 People and Get Exciting GTRON Rewards. Offers Valid Till June 30 2023. Start Now', '../member/images/announcement/ceef44d2b457df6ba08e42bf0809f5a9-Untitled Photo (4).jpg', '2023-06-10 06:23:24');

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(250) NOT NULL,
  `account_title` varchar(250) NOT NULL,
  `account_number` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `bank_name`, `account_title`, `account_number`, `date`) VALUES
(5, 'Gcash', 'Gcash', '12345678', '2022-03-02 19:34:46'),
(8, 'Palawan Express', 'Palawan Express', '12345678', '2022-03-02 19:35:14');

-- --------------------------------------------------------

--
-- Table structure for table `blogpost`
--

CREATE TABLE `blogpost` (
  `PostID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Content` text NOT NULL,
  `AuthorID` int(11) NOT NULL,
  `PublicationDate` date NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Subtitle` varchar(255) DEFAULT NULL,
  `Tags` varchar(100) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  `LastUpdated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Approved` tinyint(1) DEFAULT 0,
  `MetaDescription` varchar(255) DEFAULT NULL,
  `imageURL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogpost`
--

INSERT INTO `blogpost` (`PostID`, `Title`, `Content`, `AuthorID`, `PublicationDate`, `Category`, `Subtitle`, `Tags`, `URL`, `LastUpdated`, `Approved`, `MetaDescription`, `imageURL`) VALUES
(4, 'Hello world', '<h2>Hello</h2><p>What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2, '2023-11-08', 'sfsfsf', 'sfsfs', 'fssff', 'hello-world', '2023-11-16 12:25:11', 0, 'fffff', ''),
(5, 'df', '', 2, '2023-11-08', 'gfgfg', 'gfgfgf', 'fgfgf', 'df', '2023-11-08 09:27:54', 0, 'gfgfgfgf', ''),
(8, 'gfgfg', '<p>gfgfgfg</p>\r\n', 2, '2023-11-08', 'gfgfgfg', 'gfgfgf', 'fggfg', 'gfgfg', '2023-11-08 12:13:16', 0, 'gfgfgf', ''),
(10, 'jgjgjg', '<p>jvjhgjhgj</p>\r\n', 2, '2023-11-09', 'jgjgjgj', 'gjgjg', 'gjgjgj', 'jgjgjg', '2023-11-09 11:27:06', 0, 'gjjgjgj', ''),
(11, 'hghg', '<p>hghg</p>\r\n', 2, '2023-11-16', 'hghgh', NULL, NULL, 'hghgh', '2023-11-16 10:12:54', 0, 'hghg', 'hghgh'),
(12, 'jhjhj', '<p>jhjhj</p>\r\n', 2, '2023-11-16', 'jhjhj', NULL, 'jhhj', 'jhjhj', '2023-11-16 10:15:27', 0, 'jhjhj', 'uploads/user-profile.png.png'),
(13, 'hello dev please update data ', '<p>fsdfsfs</p>\r\n', 2, '2023-11-16', 'fsfsf', NULL, 'fdd', 'hello-dev-please-update-data', '2023-11-16 12:34:46', 0, 'fdfdfd', 'uploads/user-profile.png.png'),
(14, 'Hello word dev ', '<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n', 2, '2023-11-16', 'FFDDFD', NULL, 'imga', 'hello-word-dev', '2023-11-16 13:10:11', 0, 'ddsdsd', 'uploads/pexels-zulian-yuliansyah-573130.jpg'),
(15, '.,.', '<h2>Hello</h2><p>What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 2, '2023-11-16', 'kjkj', 'Essentially, there are two ways to create a cryptocurrency exchange platform: choosing white-label products or creating the path for themselves.', 'kjkjj', 'hii', '2023-11-16 13:50:20', 0, 'How to Build a Cryptocurrency Exchange Platform', 'uploads/65561752b4fce.jpg'),
(16, 'hgh', '<p>fhfhfh</p>\r\n', 2, '2023-11-16', 'fhfhfh', NULL, 'fhfhf', 'hgh', '2023-11-16 13:59:30', 0, 'fhfh', 'uploads/655620427f43c.jpg'),
(17, 'dsds', '<p>dsdsdd</p>\r\n', 2, '2023-11-16', 'sdsdsd', NULL, 'dsdsdd', 'dsds', '2023-11-16 14:02:29', 0, 'sdsd', 'uploads/655620f55e112.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bonuses_details`
--

CREATE TABLE `bonuses_details` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `bonus_amount` float NOT NULL,
  `level` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bonuses_details`
--

INSERT INTO `bonuses_details` (`id`, `sender`, `receiver`, `bonus_amount`, `level`, `date`) VALUES
(1, 'Level 1 Bonus', 'MLM2', 500, 1, '2023-06-24 18:30:00'),
(2, 'Level 1 Bonus', 'MLM3', 500, 1, '2023-06-24 18:30:00'),
(3, 'Level 1 Bonus', 'MLM2', 50, 1, '2023-06-24 18:30:00'),
(4, 'Level 1 Bonus', 'MLM3', 125, 1, '2023-06-24 18:30:00'),
(5, 'Level 2 Bonus', 'MLM2', 20, 2, '2023-06-24 18:30:00'),
(6, 'Level 1 Bonus', 'MLM4', 50, 1, '2023-06-24 18:30:00'),
(7, 'Level 2 Bonus', 'MLM3', 8, 2, '2023-06-24 18:30:00'),
(8, 'Level 1 Bonus', 'MLM2', 50, 1, '2023-06-24 18:30:00'),
(9, 'Level 1 Bonus', 'MLM6', 50, 1, '2023-06-24 18:30:00'),
(10, 'Level 2 Bonus', 'MLM3', 8, 2, '2023-06-24 18:30:00'),
(11, 'Level 3 Bonus', 'MLM2', 6, 3, '2023-06-24 18:30:00'),
(12, 'Level 1 Bonus', 'MLM7', 500, 1, '2023-06-24 18:30:00'),
(13, 'Level 1 Bonus', 'MLM2', 250, 1, '2023-06-24 18:30:00'),
(14, 'Level 1 Bonus', 'MLM9', 50, 1, '2023-06-24 18:30:00'),
(15, 'Level 4 Bonus', 'MLM2', 4, 4, '2023-06-24 18:30:00'),
(16, 'Level 1 Bonus', 'MLM10', 125, 1, '2023-06-24 18:30:00'),
(17, 'Level 1 Bonus', 'MLM2', 50, 1, '2023-06-24 18:30:00'),
(18, 'Level 1 Bonus', 'MLM12', 50, 1, '2023-06-24 18:30:00'),
(19, 'Level 5 Bonus', 'MLM2', 3, 5, '2023-06-24 18:30:00'),
(20, 'Level 1 Bonus', 'MLM13', 500, 1, '2023-06-24 18:30:00'),
(21, 'Level 1 Bonus', 'MLM2', 50, 1, '2023-06-24 18:30:00'),
(22, 'Level 1 Bonus', 'MLM15', 50, 1, '2023-06-24 18:30:00'),
(23, 'Level 6 Bonus', 'MLM2', 1, 6, '2023-06-24 18:30:00'),
(24, 'Level 1 Bonus', 'MLM13', 50, 1, '2023-06-24 18:30:00'),
(25, 'Level 6 Bonus', 'MLM2', 1, 6, '2023-06-24 18:30:00'),
(26, 'Level 1 Bonus', 'MLM16', 50, 1, '2023-06-24 18:30:00'),
(27, 'Level 1 Bonus', 'MLM2', 50, 1, '2023-06-24 18:30:00'),
(28, 'Level 1 Bonus', 'MLM18', 500, 1, '2023-06-24 18:30:00'),
(29, 'Level 7 Bonus', 'MLM2', 10, 7, '2023-06-24 18:30:00'),
(30, 'Level 1 Bonus', 'MLM19', 50, 1, '2023-06-24 18:30:00'),
(31, 'Level 1 Bonus', 'MLM2', 50, 1, '2023-06-24 18:30:00'),
(32, 'Level 1 Bonus', 'MLM21', 500, 1, '2023-06-24 18:30:00'),
(33, 'Level 8 Bonus', 'MLM2', 10, 8, '2023-06-24 18:30:00'),
(34, 'Level 1 Bonus', 'MLM22', 50, 1, '2023-06-24 18:30:00'),
(35, 'Level 1 Bonus', 'MLM2', 50, 1, '2023-06-24 18:30:00'),
(36, 'Level 1 Bonus', 'MLM24', 250, 1, '2023-06-24 18:30:00'),
(37, 'Level 9 Bonus', 'MLM2', 2.5, 9, '2023-06-24 18:30:00'),
(38, 'Level 1 Bonus', 'MLM25', 50, 1, '2023-06-24 18:30:00'),
(39, 'Level 1 Bonus', 'MLM2', 50, 1, '2023-06-24 18:30:00'),
(40, 'Level 1 Bonus', 'MLM27', 50, 1, '2023-06-24 18:30:00'),
(41, 'Level 10 Bonus', 'MLM2', 0.5, 10, '2023-06-24 18:30:00'),
(42, 'Level 1 Bonus', 'MLM3', 50, 1, '2023-06-24 18:30:00'),
(43, 'Level 2 Bonus', 'MLM2', 8, 2, '2023-06-24 18:30:00'),
(44, 'Level 1 Bonus', 'MLM4', 125, 1, '2023-06-24 18:30:00'),
(45, 'Level 2 Bonus', 'MLM3', 20, 2, '2023-06-24 18:30:00'),
(46, 'Level 3 Bonus', 'MLM2', 15, 3, '2023-06-24 18:30:00'),
(47, 'Level 1 Bonus', 'MLM7', 50, 1, '2023-06-24 18:30:00'),
(48, 'Level 2 Bonus', 'MLM4', 8, 2, '2023-06-24 18:30:00'),
(49, 'Level 3 Bonus', 'MLM3', 6, 3, '2023-06-24 18:30:00'),
(50, 'Level 4 Bonus', 'MLM2', 4, 4, '2023-06-24 18:30:00'),
(51, 'Level 1 Bonus', 'MLM10', 50, 1, '2023-06-24 18:30:00'),
(52, 'Level 2 Bonus', 'MLM7', 8, 2, '2023-06-24 18:30:00'),
(53, 'Level 3 Bonus', 'MLM4', 6, 3, '2023-06-24 18:30:00'),
(54, 'Level 5 Bonus', 'MLM2', 3, 5, '2023-06-24 18:30:00'),
(55, 'Level 1 Bonus', 'MLM3', 50, 1, '2023-06-24 18:30:00'),
(56, 'Level 2 Bonus', 'MLM2', 8, 2, '2023-06-24 18:30:00'),
(57, 'Level 1 Bonus', 'MLM13', 50, 1, '2023-06-24 18:30:00'),
(58, 'Level 2 Bonus', 'MLM10', 8, 2, '2023-06-24 18:30:00'),
(59, 'Level 6 Bonus', 'MLM2', 1, 6, '2023-06-24 18:30:00'),
(60, 'Level 1 Bonus', 'MLM10', 50, 1, '2023-06-24 18:30:00'),
(61, 'Level 2 Bonus', 'MLM7', 8, 2, '2023-06-24 18:30:00'),
(62, 'Level 3 Bonus', 'MLM4', 6, 3, '2023-06-24 18:30:00'),
(63, 'Level 4 Bonus', 'MLM3', 4, 4, '2023-06-24 18:30:00'),
(64, 'Level 5 Bonus', 'MLM2', 3, 5, '2023-06-24 18:30:00'),
(65, 'Level 1 Bonus', 'MLM10', 50, 1, '2023-06-30 18:30:00'),
(66, 'Level 2 Bonus', 'MLM7', 8, 2, '2023-06-30 18:30:00'),
(67, 'Level 3 Bonus', 'MLM4', 6, 3, '2023-06-30 18:30:00'),
(68, 'Level 4 Bonus', 'MLM3', 4, 4, '2023-06-30 18:30:00'),
(69, 'Level 5 Bonus', 'MLM2', 3, 5, '2023-06-30 18:30:00'),
(70, 'Level 1 Bonus', 'MLM45', 25, 1, '2023-09-03 18:30:00'),
(71, 'Level 1 Bonus', 'MLM145', 50, 1, '2023-09-03 18:30:00'),
(72, 'Level 2 Bonus', 'MLM54', 8, 2, '2023-09-03 18:30:00'),
(73, 'Level 3 Bonus', 'MLM45', 6, 3, '2023-09-03 18:30:00'),
(74, 'Level 1 Bonus', 'MLM54', 250, 1, '2023-09-03 18:30:00'),
(75, 'Level 2 Bonus', 'MLM45', 40, 2, '2023-09-03 18:30:00'),
(76, 'Level 1 Bonus', 'MLM54', 250, 1, '2023-09-03 18:30:00'),
(77, 'Level 2 Bonus', 'MLM45', 40, 2, '2023-09-03 18:30:00'),
(78, 'Level 1 Bonus', 'MLM145', 250, 1, '2023-09-03 18:30:00'),
(79, 'Level 2 Bonus', 'MLM54', 40, 2, '2023-09-03 18:30:00'),
(80, 'Level 3 Bonus', 'MLM45', 30, 3, '2023-09-03 18:30:00'),
(81, 'Level 1 Bonus', 'MLM145', 25, 1, '2023-09-03 18:30:00'),
(82, 'Level 2 Bonus', 'MLM54', 4, 2, '2023-09-03 18:30:00'),
(83, 'Level 3 Bonus', 'MLM45', 3, 3, '2023-09-03 18:30:00'),
(84, 'Level 1 Bonus', 'MLM54', 25, 1, '2023-09-03 18:30:00'),
(85, 'Level 2 Bonus', 'MLM45', 4, 2, '2023-09-03 18:30:00'),
(86, 'Level 1 Bonus', 'MLM54', 25, 1, '2023-09-04 18:30:00'),
(87, 'Level 2 Bonus', 'MLM43', 4, 2, '2023-09-04 18:30:00'),
(88, 'Level 1 Bonus', 'MLM43', 25, 1, '2023-09-04 18:30:00'),
(89, 'Level 1 Bonus', 'MLM43', 25, 1, '2023-09-04 18:30:00'),
(90, 'Level 1 Bonus', 'MLM45', 25, 1, '2023-09-06 18:30:00'),
(91, 'Level 1 Bonus', 'MLM45', 25, 1, '2023-09-06 18:30:00'),
(92, 'Level 1 Bonus', 'MLM45', 25, 1, '2023-09-07 18:30:00'),
(93, 'Level 1 Bonus', '0', 125, 1, '2023-09-07 18:30:00'),
(94, 'Level 1 Bonus', '0', 125, 1, '2023-09-07 18:30:00'),
(95, 'Level 1 Bonus', '0', 125, 1, '2023-09-07 18:30:00'),
(96, 'Level 1 Bonus', '0', 125, 1, '2023-09-07 18:30:00'),
(97, 'Level 1 Bonus', '0', 125, 1, '2023-09-07 18:30:00'),
(98, 'Level 1 Bonus', '0', 125, 1, '2023-09-07 18:30:00'),
(99, 'Level 1 Bonus', '0', 125, 1, '2023-09-07 18:30:00'),
(100, 'Level 1 Bonus', 'MLM464', 125, 1, '2023-09-07 18:30:00'),
(101, 'Level 1 Bonus', 'MLM464', 125, 1, '2023-09-07 18:30:00'),
(102, 'Level 1 Bonus', 'MLM464', 125, 1, '2023-09-07 18:30:00'),
(103, 'Level 1 Bonus', '0', 125, 1, '2023-09-07 18:30:00'),
(104, 'Level 1 Bonus', '0', 125, 1, '2023-09-07 18:30:00'),
(105, 'Level 1 Bonus', 'MLM464', 250, 1, '2023-09-07 18:30:00'),
(106, 'Level 1 Bonus', 'MLM464', 250, 1, '2023-09-07 18:30:00'),
(107, 'Level 1 Bonus', 'MLM464', 250, 1, '2023-09-07 18:30:00'),
(108, 'Level 1 Bonus', '0', 25, 1, '2023-09-07 18:30:00'),
(109, 'Level 1 Bonus', '0', 25, 1, '2023-09-07 18:30:00'),
(110, 'Level 1 Bonus', '0', 25, 1, '2023-09-07 18:30:00'),
(111, 'Level 1 Bonus', '0', 25, 1, '2023-09-07 18:30:00'),
(112, 'Level 1 Bonus', '0', 25, 1, '2023-09-07 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `date`) VALUES
(1, 'testing', '2022-03-15 19:34:13'),
(2, 'testing1', '2022-03-15 19:35:54'),
(3, 'Electronics', '2022-03-19 07:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `check_if_performance_bonus_already_given`
--

CREATE TABLE `check_if_performance_bonus_already_given` (
  `p_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `for_5_direct_level_1` int(11) NOT NULL DEFAULT 0,
  `for_5_direct_level_2` int(11) NOT NULL DEFAULT 0,
  `for_10_direct_level_1` int(11) NOT NULL DEFAULT 0,
  `for_10_direct_level_2` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `commission_percentage`
--

CREATE TABLE `commission_percentage` (
  `id` int(11) NOT NULL,
  `level1` float NOT NULL,
  `level2` float NOT NULL,
  `level3` float NOT NULL,
  `level4` float NOT NULL,
  `level5` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commission_percentage`
--

INSERT INTO `commission_percentage` (`id`, `level1`, `level2`, `level3`, `level4`, `level5`) VALUES
(1, 4, 3, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `cron_log`
--

CREATE TABLE `cron_log` (
  `id` int(12) NOT NULL,
  `filename` varchar(66) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `current_rates`
--

CREATE TABLE `current_rates` (
  `id` int(11) NOT NULL,
  `from_currency` varchar(250) NOT NULL,
  `to_currency` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donate`
--

CREATE TABLE `donate` (
  `id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `mode` varchar(250) NOT NULL,
  `bank` varchar(250) NOT NULL,
  `image` varchar(250) NOT NULL,
  `trans_id` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL DEFAULT 'Pending',
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gtron_feature_project`
--

CREATE TABLE `gtron_feature_project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(50) DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  `gtron_commision` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `image1` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(250) NOT NULL,
  `id_no` varchar(255) NOT NULL,
  `doc_type` varchar(255) NOT NULL,
  `issue_date` varchar(255) NOT NULL,
  `expire_date` varchar(255) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending',
  `reason` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kyc`
--

INSERT INTO `kyc` (`id`, `user_name`, `image1`, `image2`, `image3`, `image4`, `id_no`, `doc_type`, `issue_date`, `expire_date`, `status`, `reason`, `date`) VALUES
(1, 'mlm68', 'img1-64b7d56ed8002.png', 'img2-64b7d56ed800f.png', 'img3-64b7d56ed8015.png', 'img3-64b7d56ed8015.png', '12222222', 'national_id', '2023-07-07', '2023-07-19', 'Approved', 'testing', '2023-07-19 17:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `level_percentage`
--

CREATE TABLE `level_percentage` (
  `id` int(11) NOT NULL,
  `level1` float NOT NULL,
  `level2` float NOT NULL,
  `level3` float NOT NULL,
  `level4` float NOT NULL,
  `level5` float NOT NULL,
  `level6` float NOT NULL,
  `level7` float NOT NULL,
  `level8` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level_percentage`
--

INSERT INTO `level_percentage` (`id`, `level1`, `level2`, `level3`, `level4`, `level5`, `level6`, `level7`, `level8`) VALUES
(1, 8, 4, 1, 2, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `ip` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `postal_code` varchar(250) NOT NULL,
  `region` varchar(250) NOT NULL,
  `country` varchar(250) NOT NULL,
  `browser` varchar(250) NOT NULL,
  `device` varchar(250) NOT NULL,
  `os` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `user_name`, `ip`, `city`, `postal_code`, `region`, `country`, `browser`, `device`, `os`, `date`) VALUES
(8, 'mlm49', '', '', '', '', '', '', '', '', '2023-07-10 10:27:18'),
(9, 'mlm6', '', '', '', '', '', '', '', '', '2023-07-01 10:33:07'),
(10, 'mlm50', '', '', '', '', '', '', '', '', '2023-07-11 09:24:30');

-- --------------------------------------------------------

--
-- Table structure for table `monthly_percentage`
--

CREATE TABLE `monthly_percentage` (
  `id` int(11) NOT NULL,
  `2month` float NOT NULL,
  `5month` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `monthly_share`
--

CREATE TABLE `monthly_share` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `bonus_amount` float NOT NULL,
  `level` int(11) NOT NULL,
  `temp_amount` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `old_share`
--

CREATE TABLE `old_share` (
  `id` int(11) NOT NULL,
  `old_share` float NOT NULL,
  `todays_share` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `pkg_price` varchar(250) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `package_name`, `pkg_price`, `image`, `date`) VALUES
(1, 'MLM 1', '50', 'images/packageImages/765c36199e3725b9b40091849777f381-padlock.png', '2022-03-07 21:29:49'),
(2, 'MLM 2', '100', 'images/packageImages/765c36199e3725b9b40091849777f381-padlock.png', '2022-03-08 02:22:02'),
(3, 'MLM 3', '250', 'images/packageImages/cc1487436993605a04db920612a121e5-starter.png', '2022-03-08 13:04:11'),
(4, 'MLM 4', '500', NULL, '2022-05-17 14:35:19'),
(5, 'MLM 5', '1000', NULL, '2022-05-17 14:35:19'),
(7, 'testing', '600', 'images/packageImages/2b480f9abc9f68f475b21b144a40b3a0-user-profile.png.png', '2023-08-10 11:26:41');

-- --------------------------------------------------------

--
-- Table structure for table `package_bonuses`
--

CREATE TABLE `package_bonuses` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_amount_usdt` int(11) NOT NULL,
  `gtc_bonus` int(11) NOT NULL,
  `wallet_address` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_bonuses`
--

INSERT INTO `package_bonuses` (`id`, `package_id`, `package_amount_usdt`, `gtc_bonus`, `wallet_address`, `user_name`, `date`) VALUES
(1, 1, 50, 5000, '0x8baac7c858bcee5ff59a7607c462f57a17878f101', 'MLM145', '2023-09-05 11:53:47'),
(2, 1, 50, 5000, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM45', '2023-09-05 13:52:16'),
(3, 1, 50, 5000, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM46', '2023-09-05 13:57:00'),
(4, 1, 50, 5000, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM46', '2023-09-05 14:08:19'),
(5, 1, 50, 5000, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM46', '2023-09-07 11:25:21'),
(6, 1, 50, 5000, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM46', '2023-09-07 11:26:29'),
(7, 1, 50, 5000, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM46', '2023-09-08 11:14:51'),
(8, 1, 50, 5000, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM46', '2023-09-08 11:19:23'),
(9, 1, 50, 5000, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM46', '2023-09-08 11:19:45'),
(10, 1, 50, 5000, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM46', '2023-09-08 11:20:31'),
(11, 1, 50, 5000, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM46', '2023-09-08 12:10:32'),
(12, 3, 250, 25000, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM45', '2023-09-08 12:13:55'),
(13, 3, 250, 25000, 'gtronwallence', 'MLM464', '2023-09-08 13:56:26'),
(14, 3, 250, 25000, 'gtronwallence', 'MLM464', '2023-09-08 13:57:01'),
(15, 3, 250, 25000, 'gtronwallence', 'MLM464', '2023-09-08 13:57:38'),
(16, 3, 250, 25000, 'gtronwallence', 'MLM464', '2023-09-08 14:24:17'),
(17, 3, 250, 25000, 'gtronwallence', 'MLM464', '2023-09-08 14:24:50'),
(18, 3, 250, 25000, 'gtronwallence', 'MLM464', '2023-09-08 14:26:46'),
(19, 3, 250, 25000, 'gtronwallence', 'MLM464', '2023-09-08 14:27:00'),
(20, 3, 250, 25000, 'newtestgtrontest007', 'MLM465', '2023-09-08 14:29:20'),
(21, 3, 250, 25000, 'newtestgtrontest007', 'MLM465', '2023-09-08 14:30:29'),
(22, 3, 250, 25000, 'newtestgtrontest007', 'MLM465', '2023-09-08 14:31:07'),
(23, 3, 250, 25000, 'gtronwallence', 'MLM464', '2023-09-08 15:23:13'),
(24, 3, 250, 25000, 'gtronwallence', 'MLM464', '2023-09-08 15:36:08'),
(25, 4, 500, 50000, 'newtestgtrontest007', 'MLM465', '2023-09-08 15:36:38'),
(26, 4, 500, 50000, 'newtestgtrontest007', 'MLM465', '2023-09-08 15:36:53'),
(27, 4, 500, 50000, 'newtestgtrontest007', 'MLM465', '2023-09-08 15:37:07'),
(28, 1, 50, 5000, 'gtronwallence', 'MLM464', '2023-09-08 15:37:43'),
(29, 1, 50, 5000, 'gtronwallence', 'MLM464', '2023-09-08 15:37:58'),
(30, 1, 50, 5000, 'gtronwallence', 'MLM464', '2023-09-08 15:38:15'),
(31, 1, 50, 5000, 'gtronwallence', 'MLM464', '2023-09-08 15:38:40'),
(32, 1, 50, 5000, 'gtronwallence', 'MLM464', '2023-09-08 15:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `package_details`
--

CREATE TABLE `package_details` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `sponsor_name` varchar(255) NOT NULL,
  `pkg_id` int(250) NOT NULL DEFAULT 0,
  `pkg_name` varchar(255) NOT NULL,
  `pkg_price` float NOT NULL,
  `tax` float NOT NULL DEFAULT 0,
  `amount_after_tax` float NOT NULL DEFAULT 0,
  `mode` varchar(255) NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `days` int(250) NOT NULL,
  `trans_id` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `roi_status` varchar(255) NOT NULL DEFAULT 'Inactive',
  `received_roi` float NOT NULL DEFAULT 0,
  `no_of_roi` int(255) NOT NULL DEFAULT 0,
  `reason` varchar(255) NOT NULL DEFAULT 'N/A',
  `approved_by` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_details`
--

INSERT INTO `package_details` (`id`, `user_name`, `sponsor_name`, `pkg_id`, `pkg_name`, `pkg_price`, `tax`, `amount_after_tax`, `mode`, `type`, `bank`, `image`, `days`, `trans_id`, `status`, `roi_status`, `received_roi`, `no_of_roi`, `reason`, `approved_by`, `date`) VALUES
(1, 'MLM1', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-6497efa9b6e52', 'Approved', 'Active', 0, 0, '', '', '2023-07-11 02:11:29'),
(2, 'MLM1', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497efcbbabe6', 'Approved', 'Active', 0, 0, '', '', '2023-07-06 02:12:03'),
(3, 'MLM2', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-6497f0006eb9a', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 02:12:56'),
(4, 'MLM3', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-6497f0799c5ef', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 02:14:57'),
(5, 'MLM4', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-6497f0ba67940', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 02:16:02'),
(6, 'MLM5', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497f10813d80', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 02:17:20'),
(7, 'MLM6', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-6497f16861104', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 02:18:56'),
(8, 'MLM7', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497f1e172afd', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 02:20:57'),
(9, 'MLM8', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497f2298f8e5', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 02:22:09'),
(10, 'MLM9', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497f2a292572', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 02:24:10'),
(11, 'MLM10', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-6497f2ef7f620', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 02:25:27'),
(12, 'MLM11', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-6497f337381e9', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 02:26:39'),
(13, 'MLM2', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-6497fd0e59076', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:08:38'),
(14, 'MLM12', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497fd5396839', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:09:47'),
(15, 'MLM13', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-6497fd9a24d42', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:10:58'),
(16, 'MLM14', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497fde5e6908', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:12:13'),
(17, 'MLM15', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497fe2c3b827', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:13:24'),
(18, 'MLM16', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-6497fe77c6b4f', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:14:39'),
(19, 'MLM17', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497febf2783f', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:15:51'),
(20, 'MLM18', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497fef7deb9f', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:16:47'),
(21, 'MLM16', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497ff43a19b5', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:18:03'),
(22, 'MLM19', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6497ffed78b3c', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:20:53'),
(23, 'MLM20', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-64980082c1d19', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:23:22'),
(24, 'MLM21', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-649800f426cc6', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:25:16'),
(25, 'MLM22', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6498013ee0fef', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:26:30'),
(26, 'MLM23', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-64980182df0cc', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:27:38'),
(27, 'MLM24', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-649801b3e82ed', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:28:27'),
(28, 'MLM25', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-649801e7d0420', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:29:19'),
(29, 'MLM26', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-649802137580e', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:30:03'),
(30, 'MLM27', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-649802527349e', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:31:06'),
(31, 'MLM28', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6498029f4d797', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:32:23'),
(32, 'MLM29', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-649802f03f96f', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:33:44'),
(33, 'MLM30', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-649803670b5c1', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:35:43'),
(34, 'MLM1', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64980404eac61', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:38:20'),
(35, 'MLM31', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-649804105c21e', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:38:32'),
(36, 'MLM32', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-6498047c39bb3', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:40:20'),
(37, 'MLM34', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6498051fc6567', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:43:03'),
(38, 'MLM35', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-64980579aec0a', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:44:33'),
(39, 'MLM36', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-649805afd5e7f', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:45:27'),
(40, 'MLM37', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-649806128cf7c', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:47:06'),
(41, 'MLM38', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-6498070e30cef', 'Approved', 'Active', 0, 0, '', '', '2023-06-25 03:51:18'),
(42, 'MLM1', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-649bc8a608c4c', 'Approved', 'Active', 0, 0, '', '', '2023-06-28 00:14:06'),
(43, 'MLM38', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-64a0291030e07', 'Approved', 'Active', 0, 0, '', '', '2023-07-01 07:54:32'),
(44, 'MLM1', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64a12deb1b0fa', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:27:31'),
(45, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a12df9dde39', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:27:45'),
(46, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a12f08e6bb9', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:32:16'),
(47, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a12f0abf549', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:32:18'),
(48, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a12f8750257', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:34:23'),
(49, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a12f8a8d8b4', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:34:26'),
(50, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a12f8c80547', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:34:28'),
(51, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a1322ba40b7', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:45:39'),
(52, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a1330ed4009', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:49:26'),
(53, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a133103496b', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:49:28'),
(54, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a1331280447', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:49:30'),
(55, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a13313e27ad', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:49:31'),
(56, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a134d87f8e2', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:57:04'),
(57, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a134dc8a80e', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:57:08'),
(58, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a134de60aea', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:57:10'),
(59, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a134dfcec7f', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 02:57:11'),
(60, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a136953e7f4', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 03:04:29'),
(61, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a136a1a73d5', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 03:04:41'),
(62, 'MLM1', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a13a6423238', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 03:20:44'),
(63, 'MLM2', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a13a6b30895', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 03:20:51'),
(64, 'MLM3', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a13f60dc193', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 03:42:00'),
(65, 'MLM3', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a14b6fc5caa', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 04:33:27'),
(66, 'MLM1', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64a157987ab88', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:25:20'),
(67, 'MLM2', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-64a157a31228d', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:25:31'),
(68, 'MLM3', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64a157badd2f6', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:25:54'),
(69, 'MLM40', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a158be8d50a', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:30:14'),
(70, 'MLM41', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a158cbc8245', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:30:27'),
(71, 'MLM41', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a15ba21ede1', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:42:34'),
(72, 'MLM41', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a15bb0618ad', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:42:48'),
(73, 'MLM41', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a15bda4859c', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:43:30'),
(74, 'MLM41', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a15c0d42589', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:44:21'),
(75, 'MLM41', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a15c31df789', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:44:57'),
(76, 'MLM41', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a15c5b76897', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:45:39'),
(77, 'MLM41', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a15c79e8bd0', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:46:09'),
(78, 'MLM1', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64a15cff94cdb', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:48:23'),
(79, 'MLM2', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-64a15d0774489', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:48:31'),
(80, 'MLM3', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64a15d0f5ff8f', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:48:39'),
(81, 'MLM40', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a15d8c91796', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:50:44'),
(82, 'MLM43', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a15d9a090c9', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:50:58'),
(83, 'MLM43', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a15eb8867ba', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 05:55:44'),
(84, 'MLM40', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a15ff431bee', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 06:01:00'),
(85, 'MLM40', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a166df1fee4', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 06:30:31'),
(86, 'MLM40', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a167209c72b', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 06:31:36'),
(87, 'MLM40', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a1675240c2a', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 06:32:26'),
(88, 'MLM40', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a16777c477d', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 06:33:03'),
(89, 'MLM1', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64a186564429a', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 08:44:46'),
(90, 'MLM45', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-64a1866b07c65', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 08:45:07'),
(91, 'MLM46', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64a18679af826', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 08:45:21'),
(92, 'MLM47', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64a187174410b', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 08:47:59'),
(93, 'MLM48', '', 5, 'MLM 5', 1000, 0, 0, '', '', '', '', 0, 'TXN-64a18726e07b3', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 08:48:14'),
(94, 'MLM45', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-64a187710ca18', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 08:49:29'),
(95, 'MLM45', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-64a1879e30b71', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 08:50:14'),
(96, 'MLM45', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-64a187ba78870', 'Approved', 'Active', 0, 0, '', '', '2023-07-02 08:50:42'),
(97, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b246455615d', 'Approved', 'Active', 0, 0, '', '', '2023-07-15 03:39:57'),
(98, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b24f3926bcf', 'Approved', 'Active', 0, 0, '', '', '2023-07-15 04:18:09'),
(99, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b251a139251', 'Approved', 'Active', 0, 0, '', '', '2023-07-15 04:28:25'),
(100, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b251a424a98', 'Approved', 'Active', 0, 0, '', '', '2023-07-15 04:28:28'),
(101, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b2521323661', 'Approved', 'Active', 0, 0, '', '', '2023-07-15 04:30:19'),
(102, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b25c36e03d5', 'Approved', 'Active', 0, 0, '', '', '2023-07-15 05:13:34'),
(103, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b2805166154', 'Approved', 'Active', 0, 0, '', '', '2023-07-15 07:47:37'),
(104, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b28053f2d6a', 'Approved', 'Active', 0, 0, '', '', '2023-07-15 07:47:39'),
(105, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b2811f977be', 'Approved', 'Active', 0, 0, '', '', '2023-07-15 07:51:03'),
(106, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b4f3b8d5a9f', 'Approved', 'Active', 0, 0, '', '', '2023-07-17 04:24:32'),
(107, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b4f3f8e76f1', 'Approved', 'Active', 0, 0, '', '', '2023-07-17 04:25:36'),
(108, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b519ad41252', 'Approved', 'Active', 0, 0, '', '', '2023-07-17 07:06:29'),
(109, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b541a88bcf3', 'Approved', 'Active', 0, 0, '', '', '2023-07-17 09:57:04'),
(110, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b541b8dfa34', 'Approved', 'Active', 0, 0, '', '', '2023-07-17 09:57:20'),
(111, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b77cb19386c', 'Approved', 'Active', 0, 0, '', '', '2023-07-19 02:33:29'),
(112, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b77d085a5e7', 'Approved', 'Active', 0, 0, '', '', '2023-07-19 02:34:56'),
(113, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b77e639c352', 'Approved', 'Active', 0, 0, '', '', '2023-07-19 02:40:43'),
(114, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b77e8c7d1fb', 'Approved', 'Active', 0, 0, '', '', '2023-07-19 02:41:24'),
(115, 'MLM49', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64b7d37c14405', 'Approved', 'Active', 0, 0, '', '', '2023-07-19 08:43:48'),
(116, 'MLM68', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64bf9e56bceb8', 'Approved', 'Active', 0, 0, '', '', '2023-07-25 06:35:10'),
(117, 'MLM54', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64f58a601eb2d', 'Approved', 'Active', 0, 0, '', '', '2023-09-04 04:12:24'),
(118, 'MLM54', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64f58ad20d547', 'Approved', 'Active', 0, 0, '', '', '2023-09-04 04:14:18'),
(119, 'MLM450', '', 2, 'MLM 2', 100, 0, 0, '', '', '', '', 0, 'TXN-64f5b7b1b2e11', 'Approved', 'Active', 0, 0, '', '', '2023-09-04 07:25:45'),
(120, 'MLM145', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64f5b8943bc15', 'Approved', 'Active', 0, 0, '', '', '2023-09-04 07:29:32'),
(121, 'MLM146', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64f5bf0419970', 'Approved', 'Active', 0, 0, '', '', '2023-09-04 07:57:00'),
(122, 'MLM145', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64f5bf1217b02', 'Approved', 'Active', 0, 0, '', '', '2023-09-04 07:57:14'),
(123, 'MLM146', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64f5bf1c18829', 'Approved', 'Active', 0, 0, '', '', '2023-09-04 07:57:24'),
(124, 'MLM451', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64f5bf6d46b63', 'Approved', 'Active', 0, 0, '', '', '2023-09-04 07:58:45'),
(125, 'MLM451', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64f5c690a5411', 'Approved', 'Active', 0, 0, '', '', '2023-09-04 08:29:12'),
(126, 'MLM145', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64f5c6999dc5d', 'Approved', 'Active', 0, 0, '', '', '2023-09-04 08:29:21'),
(127, 'MLM145', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64f6c9731ce27', 'Approved', 'Active', 0, 0, '', '', '2023-09-05 02:53:47'),
(128, 'MLM45', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64f6e5389e4d3', 'Approved', 'Active', 0, 0, '', '', '2023-09-05 04:52:16'),
(129, 'MLM46', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64f6e6542ba3e', 'Approved', 'Active', 0, 0, '', '', '2023-09-05 04:57:00'),
(130, 'MLM46', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64f6e8fb32afa', 'Approved', 'Active', 0, 0, '', '', '2023-09-05 05:08:19'),
(131, 'MLM46', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64f965c9120b4', 'Approved', 'Active', 0, 0, '', '', '2023-09-07 02:25:21'),
(132, 'MLM46', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64f9660dbbcab', 'Approved', 'Active', 0, 0, '', '', '2023-09-07 02:26:29'),
(133, 'MLM46', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64fac1e0ad179', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 03:10:32'),
(134, 'MLM45', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64fac2ab29e18', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 03:13:55'),
(135, 'MLM464', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64fadab2215ce', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 04:56:26'),
(136, 'MLM464', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64fadad50c4c8', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 04:57:01'),
(137, 'MLM464', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64fadafa728af', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 04:57:38'),
(138, 'MLM464', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64fae139e1701', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 05:24:17'),
(139, 'MLM464', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64fae15a83a71', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 05:24:50'),
(140, 'MLM464', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64fae1ce816b1', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 05:26:46'),
(141, 'MLM464', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64fae1dca92e7', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 05:27:00'),
(142, 'MLM465', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64fae268ba98d', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 05:29:20'),
(143, 'MLM465', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64fae2ad28a63', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 05:30:29'),
(144, 'MLM465', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64fae2d35fa04', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 05:31:07'),
(145, 'MLM464', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64faef099b256', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 06:23:13'),
(146, 'MLM464', '', 3, 'MLM 3', 250, 0, 0, '', '', '', '', 0, 'TXN-64faf2104a25c', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 06:36:08'),
(147, 'MLM465', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64faf22e383cc', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 06:36:38'),
(148, 'MLM465', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64faf23dc3d7f', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 06:36:53'),
(149, 'MLM465', '', 4, 'MLM 4', 500, 0, 0, '', '', '', '', 0, 'TXN-64faf24b179a6', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 06:37:07'),
(150, 'MLM464', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64faf26f7acb4', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 06:37:43'),
(151, 'MLM464', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64faf27e7760b', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 06:37:58'),
(152, 'MLM464', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64faf28f3c92b', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 06:38:15'),
(153, 'MLM464', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64faf2a885b1d', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 06:38:40'),
(154, 'MLM464', '', 1, 'MLM 1', 50, 0, 0, '', '', '', '', 0, 'TXN-64faf2c9054c9', 'Approved', 'Active', 0, 0, '', '', '2023-09-08 06:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `package_old`
--

CREATE TABLE `package_old` (
  `id` int(11) NOT NULL,
  `package_name` varchar(255) DEFAULT NULL,
  `pkg_price` varchar(250) NOT NULL,
  `distribution` float NOT NULL,
  `no_of_days` int(11) DEFAULT NULL,
  `percentage_per_day` float NOT NULL DEFAULT 0,
  `min_amount` float NOT NULL DEFAULT 0,
  `max_amount` float NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_old`
--

INSERT INTO `package_old` (`id`, `package_name`, `pkg_price`, `distribution`, `no_of_days`, `percentage_per_day`, `min_amount`, `max_amount`, `image`, `capital`, `status`, `date`) VALUES
(1, 'MLM 1', '50', 5, 30, 10, 20, 199, 'images/packageImages/765c36199e3725b9b40091849777f381-padlock.png', 'no', 'active', '2022-03-07 21:29:49'),
(2, 'MLM 2', '100', 12, 90, 5, 200, 499, 'images/packageImages/765c36199e3725b9b40091849777f381-padlock.png', 'no', 'active', '2022-03-08 02:22:02'),
(3, 'MLM 3', '250', 35, 180, 15, 500, 1000, 'images/packageImages/cc1487436993605a04db920612a121e5-starter.png', 'yes', 'active', '2022-03-08 13:04:11'),
(4, 'MLM 4', '500', 80, NULL, 0, 0, 0, NULL, NULL, 'active', '2022-05-17 14:35:19'),
(5, 'MLM 5', '1000', 180, NULL, 0, 0, 0, NULL, NULL, 'active', '2022-05-17 14:35:19');

-- --------------------------------------------------------

--
-- Table structure for table `package_percentage`
--

CREATE TABLE `package_percentage` (
  `id` int(11) NOT NULL,
  `starter` float NOT NULL,
  `elite` float NOT NULL,
  `premium` float NOT NULL,
  `supreme` float NOT NULL,
  `executive` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_percentage`
--

INSERT INTO `package_percentage` (`id`, `starter`, `elite`, `premium`, `supreme`, `executive`) VALUES
(1, 60, 61, 62, 63, 64);

-- --------------------------------------------------------

--
-- Table structure for table `payment_requests`
--

CREATE TABLE `payment_requests` (
  `id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `pkg_id` int(250) NOT NULL,
  `pkg_price` int(250) NOT NULL DEFAULT 0,
  `mode` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `transaction_id` varchar(250) NOT NULL,
  `transaction_address` varchar(250) NOT NULL,
  `transaction_confirms_needed` varchar(250) NOT NULL,
  `qrcode_url` text NOT NULL,
  `status_url` text NOT NULL,
  `checkout_url` text NOT NULL,
  `status` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_pacakge_amount`
--

CREATE TABLE `pending_pacakge_amount` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `orderid` int(11) NOT NULL,
  `expires_at` datetime NOT NULL,
  `is_expired` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pending_pacakge_amount`
--

INSERT INTO `pending_pacakge_amount` (`id`, `userid`, `amount`, `orderid`, `expires_at`, `is_expired`) VALUES
(1, 'MLM2', 500, 4, '2023-07-02 07:44:57', 0),
(2, 'MLM3', 500, 5, '2023-07-02 07:46:02', 0),
(3, 'MLM2', 550, 6, '2023-07-02 07:47:20', 0),
(4, 'MLM3', 625, 7, '2023-07-02 07:48:56', 0),
(5, 'MLM2', 570, 7, '2023-07-02 07:48:56', 0),
(6, 'MLM4', 50, 8, '2023-07-02 07:50:57', 0),
(7, 'MLM3', 633, 8, '2023-07-02 07:50:57', 0),
(8, 'MLM2', 620, 9, '2023-07-02 07:52:09', 0),
(9, 'MLM6', 50, 10, '2023-07-02 07:54:10', 0),
(10, 'MLM3', 641, 10, '2023-07-02 07:54:10', 0),
(11, 'MLM2', 626, 10, '2023-07-02 07:54:10', 0),
(12, 'MLM7', 200, 11, '2023-07-02 07:55:27', 0),
(13, 'MLM2', 126, 12, '2023-07-02 07:56:39', 0),
(14, 'MLM9', 50, 14, '2023-07-02 08:39:47', 0),
(15, 'MLM2', 4, 14, '2023-07-02 08:39:47', 0),
(16, 'MLM10', 125, 15, '2023-07-02 08:40:58', 0),
(17, 'MLM2', 54, 16, '2023-07-02 08:42:13', 0),
(18, 'MLM12', 50, 17, '2023-07-02 08:43:24', 0),
(19, 'MLM2', 57, 17, '2023-07-02 08:43:24', 0),
(20, 'MLM13', 500, 18, '2023-07-02 08:44:39', 0),
(21, 'MLM2', 107, 19, '2023-07-02 08:45:51', 0),
(22, 'MLM15', 50, 20, '2023-07-02 08:46:47', 0),
(23, 'MLM2', 108, 20, '2023-07-02 08:46:47', 0),
(24, 'MLM13', 550, 21, '2023-07-02 08:48:03', 0),
(25, 'MLM2', 109, 21, '2023-07-02 08:48:03', 0),
(26, 'MLM16', 50, 22, '2023-07-02 08:50:53', 0),
(27, 'MLM2', 159, 23, '2023-07-02 08:53:22', 0),
(28, 'MLM18', 200, 24, '2023-07-02 08:55:16', 0),
(29, 'MLM2', 169, 24, '2023-07-02 08:55:16', 0),
(30, 'MLM19', 50, 25, '2023-07-02 08:56:30', 0),
(31, 'MLM2', 219, 26, '2023-07-02 08:57:38', 0),
(32, 'MLM21', 500, 27, '2023-07-02 08:58:27', 0),
(33, 'MLM2', 229, 27, '2023-07-02 08:58:27', 0),
(34, 'MLM22', 50, 28, '2023-07-02 08:59:19', 0),
(35, 'MLM2', 279, 29, '2023-07-02 09:00:03', 0),
(36, 'MLM24', 250, 30, '2023-07-02 09:01:06', 0),
(37, 'MLM2', 281.5, 30, '2023-07-02 09:01:06', 0),
(38, 'MLM25', 50, 31, '2023-07-02 09:02:23', 0),
(39, 'MLM2', 331.5, 32, '2023-07-02 09:03:44', 0),
(40, 'MLM27', 50, 33, '2023-07-02 09:05:43', 0),
(41, 'MLM2', 332, 33, '2023-07-02 09:05:43', 0),
(42, 'MLM3', 691, 35, '2023-07-02 09:08:32', 0),
(43, 'MLM2', 340, 35, '2023-07-02 09:08:32', 0),
(44, 'MLM4', 175, 36, '2023-07-02 09:10:20', 0),
(45, 'MLM3', 711, 36, '2023-07-02 09:10:20', 0),
(46, 'MLM2', 355, 36, '2023-07-02 09:10:20', 0),
(47, 'MLM7', 50, 37, '2023-07-02 09:13:03', 0),
(48, 'MLM4', 8, 37, '2023-07-02 09:13:03', 0),
(49, 'MLM3', 6, 37, '2023-07-02 09:13:03', 0),
(50, 'MLM2', 4, 37, '2023-07-02 09:13:03', 0),
(51, 'MLM10', 175, 38, '2023-07-02 09:14:33', 0),
(52, 'MLM7', 308, 38, '2023-07-02 09:14:33', 0),
(53, 'MLM4', 181, 38, '2023-07-02 09:14:33', 0),
(54, 'MLM2', 358, 38, '2023-07-02 09:14:33', 0),
(55, 'MLM3', 761, 39, '2023-07-02 09:15:27', 0),
(56, 'MLM2', 366, 39, '2023-07-02 09:15:27', 0),
(57, 'MLM13', 600, 40, '2023-07-02 09:17:06', 0),
(58, 'MLM10', 183, 40, '2023-07-02 09:17:06', 0),
(59, 'MLM2', 367, 40, '2023-07-02 09:17:06', 0),
(60, 'MLM10', 233, 41, '2023-07-02 09:21:18', 0),
(61, 'MLM7', 316, 41, '2023-07-02 09:21:18', 0),
(62, 'MLM4', 187, 41, '2023-07-02 09:21:18', 0),
(63, 'MLM3', 765, 41, '2023-07-02 09:21:18', 0),
(64, 'MLM2', 370, 41, '2023-07-02 09:21:18', 0),
(65, 'MLM10', 283, 43, '2023-07-08 13:24:32', 0),
(66, 'MLM7', 324, 43, '2023-07-08 13:24:32', 0),
(67, 'MLM4', 193, 43, '2023-07-08 13:24:32', 0),
(68, 'MLM3', 769, 43, '2023-07-08 13:24:32', 0),
(69, 'MLM2', 1373, 43, '2023-07-08 13:24:32', 0),
(70, 'MLM45', 25, 118, '2023-09-11 09:44:18', 0),
(71, 'MLM145', 50, 119, '2023-09-11 12:55:45', 0),
(72, 'MLM54', 8, 119, '2023-09-11 12:55:45', 0),
(73, 'MLM45', 6, 119, '2023-09-11 12:55:45', 0),
(74, 'MLM54', 103.442, 120, '2023-09-11 12:59:32', 0),
(75, 'MLM45', 40, 120, '2023-09-11 12:59:32', 0),
(76, 'MLM54', 250.943, 122, '2023-09-11 13:27:14', 0),
(77, 'MLM45', 40.943, 122, '2023-09-11 13:27:14', 0),
(78, 'MLM145', 250, 124, '2023-09-11 13:28:45', 0),
(79, 'MLM54', 190, 124, '2023-09-11 13:28:45', 0),
(80, 'MLM45', 69.057, 124, '2023-09-11 13:28:45', 0),
(81, 'MLM145', 275, 125, '2023-09-11 13:59:12', 0),
(82, 'MLM54', 196.174, 125, '2023-09-11 13:59:12', 0),
(83, 'MLM45', 72.057, 125, '2023-09-11 13:59:12', 0),
(84, 'MLM54', 71.174, 126, '2023-09-11 13:59:21', 0),
(85, 'MLM45', 50.174, 126, '2023-09-11 13:59:21', 0),
(86, 'MLM54', 25.108, 127, '2023-09-12 08:23:47', 0),
(87, 'MLM45', 4.108, 127, '2023-09-12 08:23:47', 0),
(88, 'MLM45', 25, 129, '2023-09-12 10:27:00', 0),
(89, 'MLM45', 50, 130, '2023-09-12 10:38:19', 0),
(90, 'MLM45', 75, 131, '2023-09-14 07:55:21', 0),
(91, 'MLM45', 100, 132, '2023-09-14 07:56:29', 0),
(92, 'MLM45', 125, 133, '2023-09-15 08:40:32', 0),
(93, '0', 125, 135, '2023-09-15 10:26:26', 0),
(94, '0', 125, 136, '2023-09-15 10:27:01', 0),
(95, '0', 125, 137, '2023-09-15 10:27:38', 0),
(96, '0', 125, 138, '2023-09-15 10:54:17', 0),
(97, '0', 125, 139, '2023-09-15 10:54:50', 0),
(98, '0', 125, 140, '2023-09-15 10:56:46', 0),
(99, '0', 125, 141, '2023-09-15 10:57:00', 0),
(100, 'MLM464', 125, 142, '2023-09-15 10:59:20', 0),
(101, 'MLM464', 250, 143, '2023-09-15 11:00:29', 0),
(102, 'MLM464', 375, 144, '2023-09-15 11:01:07', 0),
(103, '0', 125, 145, '2023-09-15 11:53:13', 0),
(104, '0', 125, 146, '2023-09-15 12:06:08', 0),
(105, 'MLM464', 250, 147, '2023-09-15 12:06:38', 0),
(106, 'MLM464', 500, 148, '2023-09-15 12:06:53', 0),
(107, 'MLM464', 0, 149, '2023-09-15 12:07:07', 0),
(108, '0', 25, 150, '2023-09-15 12:07:43', 0),
(109, '0', 25, 151, '2023-09-15 12:07:58', 0),
(110, '0', 25, 152, '2023-09-15 12:08:15', 0),
(111, '0', 25, 153, '2023-09-15 12:08:40', 0),
(112, '0', 25, 154, '2023-09-15 12:09:13', 0);

-- --------------------------------------------------------

--
-- Table structure for table `percentages`
--

CREATE TABLE `percentages` (
  `id` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `percentage` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `percentages`
--

INSERT INTO `percentages` (`id`, `type`, `percentage`, `date`) VALUES
(1, 'deposit', '2', '2022-01-07 08:20:38'),
(2, 'withdrawal', '1', '2022-01-07 08:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `percentages_summary`
--

CREATE TABLE `percentages_summary` (
  `id` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `percentage` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `percentages_summary`
--

INSERT INTO `percentages_summary` (`id`, `type`, `percentage`, `date`) VALUES
(1, 'withdrawal', '10', '2023-06-10 06:10:33'),
(4, 'withdrawal', '10', '2023-06-25 06:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `pool_share_credit_history`
--

CREATE TABLE `pool_share_credit_history` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `amount_credited` float NOT NULL,
  `amount_before_credit` float NOT NULL,
  `amount_after_credit` float NOT NULL,
  `creditdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pre_registration`
--

CREATE TABLE `pre_registration` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(100) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `referral_link` varchar(255) NOT NULL,
  `is_referred` int(11) NOT NULL,
  `user_referral_id` varchar(50) NOT NULL,
  `referrer_user_id` varchar(50) DEFAULT NULL,
  `reffered_user_count` int(11) NOT NULL,
  `gtron` int(11) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_24hour_later_email_sent` int(30) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pre_registration`
--

INSERT INTO `pre_registration` (`id`, `user_name`, `email`, `country`, `contact_no`, `message`, `referral_link`, `is_referred`, `user_referral_id`, `referrer_user_id`, `reffered_user_count`, `gtron`, `registration_date`, `is_24hour_later_email_sent`) VALUES
(1, 'User1', 'user1@example.com', 'Country1', '123456789', '', 'https://gtron.io?ref=Jj9BZA', 0, 'Jj9BZA', NULL, 0, 500, '2023-08-27 13:00:00', 0),
(2, 'User2', 'user2@example.com', 'Country2', '987654321', '', 'https://gtron.io?ref=Jj9BZB', 1, 'Jj9BZB', 'Jj9BZA', 0, 500, '2023-08-28 04:45:00', 0),
(3, 'User3', 'user3@example.com', 'Country3', '555555555', '', 'https://gtron.io?ref=Jj9BZC', 1, 'Jj9BZC', 'Jj9BZA', 0, 500, '2023-08-28 06:00:00', 0),
(4, 'User4', 'user4@example.com', 'Country4', '777777777', '', 'https://gtron.io?ref=Jj9BZD', 0, 'Jj9BZD', NULL, 0, 500, '2023-08-29 04:15:00', 0),
(5, 'User5', 'user5@example.com', 'Country5', '888888888', '', 'https://gtron.io?ref=Jj9BZE', 1, 'Jj9BZE', 'Jj9BZD', 0, 500, '2023-08-29 05:00:00', 0),
(6, 'User6', 'user6@example.com', 'Country6', '999999999', '', 'https://gtron.io?ref=Jj9BZF', 0, 'Jj9BZF', NULL, 0, 500, '2023-08-29 06:45:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `main_category` varchar(250) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `product_title` varchar(250) NOT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `main_category`, `sub_category`, `product_title`, `product_image`, `date`) VALUES
(2, '2', '1', 'testing title', 'images/product/0aac696c81b55721334c6027f09ff4bb-graph2.PNG', '2022-03-18 00:02:17'),
(6, '3', '2', 'iphone', 'images/product/2f8cbdbdf9d18951c47bd1b399db68de-Crypto Heaven 1.pdf', '2022-03-19 07:31:17'),
(5, '1', '1', 'ads', 'images/product/3c523e47214d9729fc1a277ce3e98658-screencapture-demo-tortoizthemes-paito-main-trading-html-2022-03-09-11_27_10.pdf', '2022-03-19 06:50:13');

-- --------------------------------------------------------

--
-- Table structure for table `project_management`
--

CREATE TABLE `project_management` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `fav_icon` varchar(255) DEFAULT NULL,
  `otp_status` int(11) NOT NULL DEFAULT 1,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_management`
--

INSERT INTO `project_management` (`id`, `logo`, `fav_icon`, `otp_status`, `date`) VALUES
(1, 'images/icons/digital-wallet.png', 'images/icons/digital-wallet.png', 1, '2022-03-03 13:46:48');

-- --------------------------------------------------------

--
-- Table structure for table `referral_bonuses`
--

CREATE TABLE `referral_bonuses` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `package_amount_usdt` int(11) NOT NULL,
  `gtc_bonus` int(11) NOT NULL,
  `wallet_address` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `purchaser_name` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referral_bonuses`
--

INSERT INTO `referral_bonuses` (`id`, `package_id`, `package_amount_usdt`, `gtc_bonus`, `wallet_address`, `user_name`, `purchaser_name`, `date`) VALUES
(3, 1, 50, 2500, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM45', 'MLM46', '2023-09-05 14:08:19'),
(4, 1, 50, 2500, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM45', 'MLM46', '2023-09-07 11:25:21'),
(5, 1, 50, 2500, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM45', 'MLM46', '2023-09-07 11:26:29'),
(6, 1, 50, 2500, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM45', 'MLM46', '2023-09-08 11:14:51'),
(7, 1, 50, 2500, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM45', 'MLM46', '2023-09-08 11:19:23'),
(8, 1, 50, 2500, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM45', 'MLM46', '2023-09-08 11:19:45'),
(9, 1, 50, 2500, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM45', 'MLM46', '2023-09-08 11:20:31'),
(10, 1, 50, 2500, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 'MLM45', 'MLM46', '2023-09-08 12:10:32'),
(11, 3, 250, 12500, '', '0', 'MLM464', '2023-09-08 13:56:26'),
(12, 3, 250, 12500, '', '0', 'MLM464', '2023-09-08 13:57:01'),
(13, 3, 250, 12500, '', '0', 'MLM464', '2023-09-08 13:57:38'),
(14, 3, 250, 12500, '', '0', 'MLM464', '2023-09-08 14:24:17'),
(15, 3, 250, 12500, '', '0', 'MLM464', '2023-09-08 14:24:50'),
(16, 3, 250, 12500, 'gtronwallence', 'MLM464', 'MLM465', '2023-09-08 14:31:07'),
(17, 3, 250, 12500, '', '0', 'MLM464', '2023-09-08 15:23:13'),
(18, 3, 250, 12500, '', '0', 'MLM464', '2023-09-08 15:36:08'),
(19, 4, 500, 25000, 'gtronwallence', 'MLM464', 'MLM465', '2023-09-08 15:36:38'),
(20, 4, 500, 25000, 'gtronwallence', 'MLM464', 'MLM465', '2023-09-08 15:36:53'),
(21, 4, 500, 25000, 'gtronwallence', 'MLM464', 'MLM465', '2023-09-08 15:37:07'),
(22, 1, 50, 2500, '', '0', 'MLM464', '2023-09-08 15:37:43'),
(23, 1, 50, 2500, '', '0', 'MLM464', '2023-09-08 15:37:58'),
(24, 1, 50, 2500, '', '0', 'MLM464', '2023-09-08 15:38:15'),
(25, 1, 50, 2500, '', '0', 'MLM464', '2023-09-08 15:38:40'),
(26, 1, 50, 2500, '', '0', 'MLM464', '2023-09-08 15:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `referral_levels`
--

CREATE TABLE `referral_levels` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(50) DEFAULT NULL,
  `min_referral_count` int(11) DEFAULT NULL,
  `max_referral_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referral_levels`
--

INSERT INTO `referral_levels` (`level_id`, `level_name`, `min_referral_count`, `max_referral_count`) VALUES
(1, 'Level 1', 5, 10),
(2, 'Level 2', 25, 100),
(3, 'Level 3', 125, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `referral_performance_bonus`
--

CREATE TABLE `referral_performance_bonus` (
  `id` int(11) NOT NULL,
  `user_id` int(30) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `wallet_address` varchar(255) NOT NULL,
  `usdt_bonus` int(11) NOT NULL,
  `gtc_bonus` int(11) NOT NULL,
  `directsCountsByUser` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referral_performance_bonus`
--

INSERT INTO `referral_performance_bonus` (`id`, `user_id`, `user_name`, `wallet_address`, `usdt_bonus`, `gtc_bonus`, `directsCountsByUser`, `date`) VALUES
(19, 45, 'MLM45', '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 200, 20000, 10, '2023-09-05 12:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `referral_performance_bonus_logs`
--

CREATE TABLE `referral_performance_bonus_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(30) NOT NULL,
  `usdt_bonus` decimal(10,2) NOT NULL,
  `gtc_bonus` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reward`
--

CREATE TABLE `reward` (
  `id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `prize` varchar(255) NOT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roi`
--

CREATE TABLE `roi` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `percentage` float NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'Delivered',
  `type` varchar(255) NOT NULL DEFAULT 'Normal',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roi_percentage`
--

CREATE TABLE `roi_percentage` (
  `id` int(11) NOT NULL,
  `roi_percentage` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roi_percentage`
--

INSERT INTO `roi_percentage` (`id`, `roi_percentage`, `date`) VALUES
(1, 1, '2020-08-21 06:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `roi_percentage_summary`
--

CREATE TABLE `roi_percentage_summary` (
  `id` int(11) NOT NULL,
  `percent_age` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `main_category_id` varchar(250) NOT NULL,
  `sub_category` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `main_category_id`, `sub_category`, `date`) VALUES
(1, '2', 'sub testing', '2022-03-15 19:50:39'),
(2, '3', 'Phone', '2022-03-19 07:20:14'),
(3, '3', 'Camera', '2022-03-19 07:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `reply` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Under Review',
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `support`
--

INSERT INTO `support` (`id`, `user_name`, `subject`, `message`, `reply`, `status`, `date`) VALUES
(1, 'mlm49', 'Registration Related Issue', 'swsss', '', 'Under Review', '2023-08-19 13:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `type` varchar(250) NOT NULL,
  `percentage` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `type`, `percentage`) VALUES
(1, 'deposit', 5),
(2, 'withdrawal', 10);

-- --------------------------------------------------------

--
-- Table structure for table `trade_history`
--

CREATE TABLE `trade_history` (
  `id` int(11) NOT NULL,
  `buy_order` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `deal` varchar(250) NOT NULL,
  `profit` varchar(250) NOT NULL,
  `profit_amount` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trade_item`
--

CREATE TABLE `trade_item` (
  `id` int(11) NOT NULL,
  `item` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_direct_ref_count`
--

CREATE TABLE `user_direct_ref_count` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_direct_five_ref` int(11) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_dividend_bonus_summery`
--

CREATE TABLE `user_dividend_bonus_summery` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `gtron_wallet` float NOT NULL DEFAULT 0,
  `credit_type` varchar(30) NOT NULL DEFAULT 'pool_bonus',
  `current_bonus_status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_dividend_bonus_summery`
--

INSERT INTO `user_dividend_bonus_summery` (`id`, `user_name`, `amount`, `date`, `gtron_wallet`, `credit_type`, `current_bonus_status`) VALUES
(4, 'MLM45', 3.7037, '2023-09-08 06:48:48', 3.7037, 'pool_bonus', 'fourex'),
(3, 'MLM1', 0.740741, '2023-09-08 06:48:48', 0.740741, 'pool_bonus', 'threeex'),
(5, 'MLM450', 1.48148, '2023-09-08 06:48:48', 1.48148, 'pool_bonus', 'twoex'),
(6, 'MLM464', 0.740741, '2023-09-08 06:48:48', 0.740741, 'pool_bonus', 'threeex');

-- --------------------------------------------------------

--
-- Table structure for table `user_hierarchy`
--

CREATE TABLE `user_hierarchy` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `parent_user_id` int(11) DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `referral_link` varchar(255) NOT NULL,
  `is_referred` int(11) NOT NULL,
  `user_referral_id` varchar(30) NOT NULL,
  `referrer_user_id` varchar(30) NOT NULL,
  `reffered_user_count` int(11) NOT NULL,
  `gtron` int(11) NOT NULL,
  `user_level` int(30) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_24hour_later_email_sent` int(30) NOT NULL,
  `level_distribution_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_hierarchy`
--

INSERT INTO `user_hierarchy` (`id`, `user_id`, `user_name`, `email`, `parent_user_id`, `country`, `contact_no`, `message`, `referral_link`, `is_referred`, `user_referral_id`, `referrer_user_id`, `reffered_user_count`, `gtron`, `user_level`, `registration_date`, `is_24hour_later_email_sent`, `level_distribution_date`) VALUES
(16, 1, 'User1', 'user1@example.com', 0, 'Country1', '123456789', '', 'https://gtron.io?ref=Jj9BZA', 0, 'Jj9BZA', '', 0, 500, 0, '2023-08-27 13:00:00', 0, '2023-08-30 10:23:58'),
(17, 2, 'User2', 'user2@example.com', 1, 'Country2', '987654321', '', 'https://gtron.io?ref=Jj9BZB', 0, 'Jj9BZB', 'Jj9BZA', 0, 500, 1, '2023-08-28 04:45:00', 0, '2023-08-30 10:29:22'),
(18, 3, 'User3', 'user3@example.com', 1, 'Country3', '555555555', '', 'https://gtron.io?ref=Jj9BZC', 0, 'Jj9BZC', 'Jj9BZA', 0, 500, 1, '2023-08-28 06:00:00', 0, '2023-08-30 10:30:34'),
(19, 4, 'User4', 'user4@example.com', 2, 'Country4', '777777777', '', 'https://gtron.io?ref=Jj9BZD', 0, 'Jj9BZD', 'Jj9BZB', 0, 500, 2, '2023-08-30 10:39:47', 0, '2023-08-30 10:39:21'),
(20, 5, 'User5', 'user5@example.com', 3, 'Country5', '888888888', '', 'https://gtron.io?ref=Jj9BZE', 0, 'Jj9BZE', 'Jj9BZC', 0, 500, 2, '2023-08-30 10:41:47', 0, '2023-08-30 10:41:20'),
(21, 6, 'User6', 'user6@example.com', 0, 'Country6', '999999999', '', 'https://gtron.io?ref=Jj9BZF', 0, 'Jj9BZF', '', 0, 500, 0, '2023-08-30 10:49:07', 0, '2023-08-30 10:48:30'),
(22, 7, 'User7', 'user7@example.com', 6, 'Country6', '999999999', '', 'https://gtron.io?ref=Jj9BZF', 0, 'Jj9BZE', 'Jj9BZF', 0, 500, 1, '2023-08-30 10:51:00', 0, '2023-08-30 10:50:08'),
(23, 8, 'User8', 'user8@example.com', 6, 'Country1', '123456789', '', 'https://gtron.io?ref=Jj9BZA', 0, 'Jj9BZP', 'Jj9BZF', 0, 500, 1, '2023-08-30 10:53:45', 0, '2023-08-30 04:53:58'),
(24, 9, 'User9', 'user9@example.com', 8, 'Country1', '123456789', '', 'https://gtron.io?ref=Jj9BZA', 0, 'Jj9BZA', 'Jj9BZP', 0, 500, 2, '2023-08-30 11:09:37', 0, '2023-08-30 04:53:58'),
(25, 1, 'User1', 'user1@example.com', 0, 'Country1', '123456789', '', 'https://gtron.io?ref=Jj9BZA', 0, 'Jj9BZA', '', 0, 500, 1, '2023-08-27 13:00:00', 0, '2023-08-30 13:33:24'),
(26, 1, 'User1', 'user1@example.com', 0, 'Country1', '123456789', '', 'https://gtron.io?ref=Jj9BZA', 0, 'Jj9BZA', '', 0, 500, 0, '2023-08-27 13:00:00', 0, '2023-08-30 14:12:04'),
(27, 3, 'User3', 'user3@example.com', 1, 'Country3', '555555555', '', 'https://gtron.io?ref=Jj9BZC', 0, 'Jj9BZC', 'Jj9BZA', 0, 500, 2, '2023-08-28 06:00:00', 0, '2023-08-30 14:49:33'),
(28, 1, 'User1', 'user1@example.com', 0, 'Country1', '123456789', '', 'https://gtron.io?ref=Jj9BZA', 0, 'Jj9BZA', '', 0, 500, 2, '2023-08-27 13:00:00', 0, '2023-08-30 14:49:41'),
(29, 4, 'User4', 'user4@example.com', 0, 'Country4', '777777777', '', 'https://gtron.io?ref=Jj9BZD', 0, 'Jj9BZD', '', 0, 500, 3, '2023-08-29 04:15:00', 0, '2023-08-30 14:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_level_count`
--

CREATE TABLE `user_level_count` (
  `id` int(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `user_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_level_hierarchy`
--

CREATE TABLE `user_level_hierarchy` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `wallet_address` varchar(255) NOT NULL,
  `parent_user_id` int(11) DEFAULT NULL,
  `user_level` int(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_level_hierarchy`
--

INSERT INTO `user_level_hierarchy` (`id`, `user_id`, `user_name`, `wallet_address`, `parent_user_id`, `user_level`, `date`) VALUES
(1, 45, 'MLM45', '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 0, 1, '2023-09-01 12:31:32'),
(2, 46, 'MLM46', '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 45, 1, '2023-08-31 01:35:50'),
(3, 47, 'MLM47', '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 45, 1, '2023-08-31 01:35:50'),
(4, 48, 'MLM48', '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 45, 1, '2023-08-31 01:35:50'),
(5, 49, 'MLM49', '0x8baac7c858bcee5ff59a7607c462f57a17878f01', 45, 1, '2023-09-04 03:47:43'),
(6, 50, 'MLM50', '0x8baac7c858bcee5ff59a7607c462f57a17878f06', 45, 1, '2023-08-31 02:25:50'),
(7, 51, 'MLM51', '0x8baac7c858bcee5ff59a7607c462f57a17878f07', 45, 1, '2023-08-31 02:35:50'),
(8, 52, 'MLM52', '0x8baac7c858bcee5ff59a7607c462f57a17878f08', 45, 1, '2023-08-31 02:45:50'),
(9, 53, 'MLM53', '0x8baac7c858bcee5ff59a7607c462f57a17878f09', 45, 1, '2023-08-31 02:55:50'),
(10, 54, 'MLM54', '0x8baac7c858bcee5ff59a7607c462f57a17878f10', 45, 1, '2023-08-31 03:05:50'),
(11, 55, 'MLM55', '0x8baac7c858bcee5ff59a7607c462f57a17878f11', 45, 1, '2023-08-31 03:15:50'),
(12, 56, 'MLM56', '0x8baac7c858bcee5ff59a7607c462f57a17878f12', 46, 1, '2023-09-04 03:35:50'),
(13, 57, 'MLM57', '0x8baac7c858bcee5ff59a7607c462f57a17878f13', 46, 1, '2023-09-04 03:45:50'),
(14, 58, 'MLM58', '0x8baac7c858bcee5ff59a7607c462f57a17878f14', 46, 1, '2023-09-04 03:55:50'),
(15, 59, 'MLM59', '0x8baac7c858bcee5ff59a7607c462f57a17878f15', 46, 1, '2023-09-04 04:05:50'),
(16, 60, 'MLM60', '0x8baac7c858bcee5ff59a7607c462f57a17878f16', 46, 1, '2023-09-04 04:15:50'),
(17, 61, 'MLM61', '0x8baac7c858bcee5ff59a7607c462f57a17878f17', 46, 1, '2023-09-04 04:25:50'),
(18, 62, 'MLM62', '0x8baac7c858bcee5ff59a7607c462f57a17878f18', 46, 1, '2023-09-04 04:35:50'),
(19, 63, 'MLM63', '0x8baac7c858bcee5ff59a7607c462f57a17878f19', 46, 1, '2023-09-04 04:45:50'),
(20, 64, 'MLM64', '0x8baac7c858bcee5ff59a7607c462f57a17878f20', 46, 1, '2023-09-04 04:55:50'),
(21, 65, 'MLM65', '0x8baac7c858bcee5ff59a7607c462f57a17878f21', 46, 1, '2023-09-04 05:05:50'),
(22, 66, 'MLM66', '0x8baac7c858bcee5ff59a7607c462f57a17878f22', 47, 1, '2023-09-04 05:35:50'),
(23, 67, 'MLM67', '0x8baac7c858bcee5ff59a7607c462f57a17878f23', 47, 1, '2023-09-04 05:45:50'),
(24, 68, 'MLM68', '0x8baac7c858bcee5ff59a7607c462f57a17878f24', 47, 1, '2023-09-04 05:55:50'),
(25, 69, 'MLM69', '0x8baac7c858bcee5ff59a7607c462f57a17878f25', 47, 1, '2023-09-04 06:05:50'),
(26, 70, 'MLM70', '0x8baac7c858bcee5ff59a7607c462f57a17878f26', 47, 1, '2023-09-04 06:15:50'),
(27, 71, 'MLM71', '0x8baac7c858bcee5ff59a7607c462f57a17878f27', 47, 1, '2023-09-04 06:25:50'),
(28, 72, 'MLM72', '0x8baac7c858bcee5ff59a7607c462f57a17878f28', 47, 1, '2023-09-04 06:35:50'),
(29, 73, 'MLM73', '0x8baac7c858bcee5ff59a7607c462f57a17878f29', 47, 1, '2023-09-04 06:45:50'),
(30, 74, 'MLM74', '0x8baac7c858bcee5ff59a7607c462f57a17878f30', 47, 1, '2023-09-04 06:55:50'),
(31, 75, 'MLM75', '0x8baac7c858bcee5ff59a7607c462f57a17878f31', 47, 1, '2023-09-04 07:05:50'),
(32, 76, 'MLM76', '0x8baac7c858bcee5ff59a7607c462f57a17878f32', 48, 1, '2023-09-04 07:15:50'),
(33, 77, 'MLM77', '0x8baac7c858bcee5ff59a7607c462f57a17878f33', 48, 1, '2023-09-04 07:25:50'),
(34, 78, 'MLM78', '0x8baac7c858bcee5ff59a7607c462f57a17878f34', 48, 1, '2023-09-04 07:35:50'),
(35, 79, 'MLM79', '0x8baac7c858bcee5ff59a7607c462f57a17878f35', 48, 1, '2023-09-04 07:45:50'),
(36, 80, 'MLM80', '0x8baac7c858bcee5ff59a7607c462f57a17878f36', 48, 1, '2023-09-04 07:55:50'),
(37, 81, 'MLM81', '0x8baac7c858bcee5ff59a7607c462f57a17878f37', 48, 1, '2023-09-04 08:05:50'),
(38, 82, 'MLM82', '0x8baac7c858bcee5ff59a7607c462f57a17878f38', 48, 1, '2023-09-04 08:15:50'),
(39, 83, 'MLM83', '0x8baac7c858bcee5ff59a7607c462f57a17878f39', 48, 1, '2023-09-04 08:25:50'),
(40, 84, 'MLM84', '0x8baac7c858bcee5ff59a7607c462f57a17878f40', 48, 1, '2023-09-04 08:35:50'),
(41, 85, 'MLM85', '0x8baac7c858bcee5ff59a7607c462f57a17878f41', 48, 1, '2023-09-04 08:45:50'),
(42, 86, 'MLM86', '0x8baac7c858bcee5ff59a7607c462f57a17878f42', 49, 1, '2023-09-04 09:35:50'),
(43, 87, 'MLM87', '0x8baac7c858bcee5ff59a7607c462f57a17878f43', 49, 1, '2023-09-04 09:45:50'),
(44, 88, 'MLM88', '0x8baac7c858bcee5ff59a7607c462f57a17878f44', 49, 1, '2023-09-04 09:55:50'),
(45, 89, 'MLM89', '0x8baac7c858bcee5ff59a7607c462f57a17878f45', 49, 1, '2023-09-04 10:05:50'),
(46, 90, 'MLM90', '0x8baac7c858bcee5ff59a7607c462f57a17878f46', 49, 1, '2023-09-04 10:15:50'),
(47, 91, 'MLM91', '0x8baac7c858bcee5ff59a7607c462f57a17878f47', 49, 1, '2023-09-04 10:25:50'),
(48, 92, 'MLM92', '0x8baac7c858bcee5ff59a7607c462f57a17878f48', 49, 1, '2023-09-04 10:35:50'),
(49, 93, 'MLM93', '0x8baac7c858bcee5ff59a7607c462f57a17878f49', 49, 1, '2023-09-04 10:45:50'),
(50, 94, 'MLM94', '0x8baac7c858bcee5ff59a7607c462f57a17878f50', 49, 1, '2023-09-04 10:55:50'),
(51, 95, 'MLM95', '0x8baac7c858bcee5ff59a7607c462f57a17878f51', 49, 1, '2023-09-04 11:05:50'),
(52, 96, 'MLM96', '0x8baac7c858bcee5ff59a7607c462f57a17878f52', 50, 1, '2023-09-04 11:15:50'),
(53, 97, 'MLM97', '0x8baac7c858bcee5ff59a7607c462f57a17878f53', 50, 1, '2023-09-04 11:25:50'),
(54, 98, 'MLM98', '0x8baac7c858bcee5ff59a7607c462f57a17878f54', 50, 1, '2023-09-04 11:35:50'),
(55, 99, 'MLM99', '0x8baac7c858bcee5ff59a7607c462f57a17878f55', 50, 1, '2023-09-04 11:45:50'),
(56, 100, 'MLM100', '0x8baac7c858bcee5ff59a7607c462f57a17878f56', 50, 1, '2023-09-04 11:55:50'),
(57, 101, 'MLM101', '0x8baac7c858bcee5ff59a7607c462f57a17878f57', 50, 1, '2023-09-04 12:05:50'),
(58, 102, 'MLM102', '0x8baac7c858bcee5ff59a7607c462f57a17878f58', 50, 1, '2023-09-04 12:15:50'),
(59, 103, 'MLM103', '0x8baac7c858bcee5ff59a7607c462f57a17878f59', 50, 1, '2023-09-04 12:25:50'),
(60, 104, 'MLM104', '0x8baac7c858bcee5ff59a7607c462f57a17878f60', 50, 1, '2023-09-04 12:35:50'),
(61, 105, 'MLM105', '0x8baac7c858bcee5ff59a7607c462f57a17878f61', 50, 1, '2023-09-04 12:45:50'),
(62, 106, 'MLM106', '0x8baac7c858bcee5ff59a7607c462f57a17878f62', 51, 1, '2023-09-04 12:55:50'),
(63, 107, 'MLM107', '0x8baac7c858bcee5ff59a7607c462f57a17878f63', 51, 1, '2023-09-04 13:05:50'),
(64, 108, 'MLM108', '0x8baac7c858bcee5ff59a7607c462f57a17878f64', 51, 1, '2023-09-04 13:15:50'),
(65, 109, 'MLM109', '0x8baac7c858bcee5ff59a7607c462f57a17878f65', 51, 1, '2023-09-04 13:25:50'),
(66, 110, 'MLM110', '0x8baac7c858bcee5ff59a7607c462f57a17878f66', 51, 1, '2023-09-04 13:35:50'),
(67, 111, 'MLM111', '0x8baac7c858bcee5ff59a7607c462f57a17878f67', 51, 1, '2023-09-04 13:45:50'),
(68, 112, 'MLM112', '0x8baac7c858bcee5ff59a7607c462f57a17878f68', 51, 1, '2023-09-04 13:55:50'),
(69, 113, 'MLM113', '0x8baac7c858bcee5ff59a7607c462f57a17878f69', 51, 1, '2023-09-04 14:05:50'),
(70, 114, 'MLM114', '0x8baac7c858bcee5ff59a7607c462f57a17878f70', 51, 1, '2023-09-04 14:15:50'),
(71, 115, 'MLM115', '0x8baac7c858bcee5ff59a7607c462f57a17878f71', 51, 1, '2023-09-04 14:35:50'),
(72, 116, 'MLM116', '0x8baac7c858bcee5ff59a7607c462f57a17878f72', 52, 1, '2023-09-04 14:45:50'),
(73, 117, 'MLM117', '0x8baac7c858bcee5ff59a7607c462f57a17878f73', 52, 1, '2023-09-04 14:55:50'),
(74, 118, 'MLM118', '0x8baac7c858bcee5ff59a7607c462f57a17878f74', 52, 1, '2023-09-04 15:05:50'),
(75, 119, 'MLM119', '0x8baac7c858bcee5ff59a7607c462f57a17878f75', 52, 1, '2023-09-04 15:15:50'),
(76, 120, 'MLM120', '0x8baac7c858bcee5ff59a7607c462f57a17878f76', 52, 1, '2023-09-04 15:25:50'),
(77, 121, 'MLM121', '0x8baac7c858bcee5ff59a7607c462f57a17878f77', 52, 1, '2023-09-04 15:35:50'),
(78, 122, 'MLM122', '0x8baac7c858bcee5ff59a7607c462f57a17878f78', 52, 1, '2023-09-04 15:45:50'),
(79, 123, 'MLM123', '0x8baac7c858bcee5ff59a7607c462f57a17878f79', 52, 1, '2023-09-04 15:55:50'),
(80, 124, 'MLM124', '0x8baac7c858bcee5ff59a7607c462f57a17878f80', 52, 1, '2023-09-04 16:05:50'),
(81, 125, 'MLM125', '0x8baac7c858bcee5ff59a7607c462f57a17878f81', 52, 1, '2023-09-04 16:15:50'),
(82, 126, 'MLM126', '0x8baac7c858bcee5ff59a7607c462f57a17878f82', 53, 1, '2023-09-04 16:25:50'),
(83, 127, 'MLM127', '0x8baac7c858bcee5ff59a7607c462f57a17878f83', 53, 1, '2023-09-04 16:35:50'),
(84, 128, 'MLM128', '0x8baac7c858bcee5ff59a7607c462f57a17878f84', 53, 1, '2023-09-04 16:45:50'),
(85, 129, 'MLM129', '0x8baac7c858bcee5ff59a7607c462f57a17878f85', 53, 1, '2023-09-04 16:55:50'),
(86, 130, 'MLM130', '0x8baac7c858bcee5ff59a7607c462f57a17878f86', 53, 1, '2023-09-04 17:05:50'),
(87, 131, 'MLM131', '0x8baac7c858bcee5ff59a7607c462f57a17878f87', 53, 1, '2023-09-04 17:15:50'),
(88, 132, 'MLM132', '0x8baac7c858bcee5ff59a7607c462f57a17878f88', 53, 1, '2023-09-04 17:25:50'),
(89, 133, 'MLM133', '0x8baac7c858bcee5ff59a7607c462f57a17878f89', 53, 1, '2023-09-04 17:35:50'),
(90, 134, 'MLM134', '0x8baac7c858bcee5ff59a7607c462f57a17878f90', 53, 1, '2023-09-04 17:45:50'),
(91, 135, 'MLM135', '0x8baac7c858bcee5ff59a7607c462f57a17878f91', 53, 1, '2023-09-04 17:55:50'),
(92, 136, 'MLM136', '0x8baac7c858bcee5ff59a7607c462f57a17878f92', 54, 1, '2023-09-04 18:05:50'),
(93, 137, 'MLM137', '0x8baac7c858bcee5ff59a7607c462f57a17878f93', 54, 1, '2023-09-04 18:15:50'),
(94, 138, 'MLM138', '0x8baac7c858bcee5ff59a7607c462f57a17878f94', 54, 1, '2023-09-04 18:25:50'),
(95, 139, 'MLM139', '0x8baac7c858bcee5ff59a7607c462f57a17878f95', 54, 1, '2023-09-04 18:35:50'),
(96, 140, 'MLM140', '0x8baac7c858bcee5ff59a7607c462f57a17878f96', 54, 1, '2023-09-04 18:45:50'),
(97, 141, 'MLM141', '0x8baac7c858bcee5ff59a7607c462f57a17878f97', 54, 1, '2023-09-04 18:55:50'),
(98, 142, 'MLM142', '0x8baac7c858bcee5ff59a7607c462f57a17878f98', 54, 1, '2023-09-04 19:05:50'),
(99, 143, 'MLM143', '0x8baac7c858bcee5ff59a7607c462f57a17878f99', 54, 1, '2023-09-04 19:35:50'),
(100, 144, 'MLM144', '0x8baac7c858bcee5ff59a7607c462f57a17878f100', 54, 1, '2023-09-04 19:45:50'),
(101, 145, 'MLM145', '0x8baac7c858bcee5ff59a7607c462f57a17878f101', 54, 1, '2023-09-04 19:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `user_pool_amount`
--

CREATE TABLE `user_pool_amount` (
  `id` int(11) NOT NULL,
  `total_pool_amount` float NOT NULL DEFAULT 0,
  `total_sale_amount` float NOT NULL DEFAULT 0,
  `old_share` float NOT NULL,
  `todays_share` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_pool_amount`
--

INSERT INTO `user_pool_amount` (`id`, `total_pool_amount`, `total_sale_amount`, `old_share`, `todays_share`) VALUES
(1, 950, 4750, 108, 95);

-- --------------------------------------------------------

--
-- Table structure for table `user_pool_amount_history`
--

CREATE TABLE `user_pool_amount_history` (
  `id` int(11) NOT NULL,
  `total_pool_amount` float NOT NULL,
  `total_sale_amount` float NOT NULL,
  `pool_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_pool_amount_history`
--

INSERT INTO `user_pool_amount_history` (`id`, `total_pool_amount`, `total_sale_amount`, `pool_date`) VALUES
(1, 20, 200, '2023-07-12 06:31:11');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `id` int(250) NOT NULL,
  `wallet_address` varchar(1000) NOT NULL DEFAULT '0',
  `transaction_password` varchar(400) DEFAULT NULL,
  `pkg_id` int(11) NOT NULL DEFAULT 0,
  `sponsor_name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `current_balance` float NOT NULL DEFAULT 0,
  `iwallet` float NOT NULL DEFAULT 0,
  `pending_amount` float NOT NULL DEFAULT 0,
  `total_income` float NOT NULL DEFAULT 0,
  `max_income` float NOT NULL DEFAULT 0,
  `active_investment` float NOT NULL DEFAULT 0,
  `threex_amount_limit` float NOT NULL DEFAULT 0,
  `threex_amount` float NOT NULL DEFAULT 0,
  `eligible_shares` int(11) NOT NULL DEFAULT 0,
  `first_bonus` int(11) NOT NULL DEFAULT 0,
  `second_bonus` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `verified` int(250) NOT NULL DEFAULT 0,
  `sflag` int(2) NOT NULL DEFAULT 1,
  `usdttrc_address` varchar(250) NOT NULL,
  `email_code` varchar(100) DEFAULT NULL,
  `otp_code` int(11) DEFAULT NULL,
  `mobile` varchar(250) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) NOT NULL DEFAULT 'user-profile.png',
  `total_invest` float NOT NULL DEFAULT 0,
  `direct_team` int(11) NOT NULL DEFAULT 0,
  `total_team` int(11) NOT NULL DEFAULT 0,
  `d_sale` float NOT NULL DEFAULT 0,
  `l1` float NOT NULL DEFAULT 0,
  `l2` float NOT NULL DEFAULT 0,
  `l3` float NOT NULL DEFAULT 0,
  `l4` float NOT NULL DEFAULT 0,
  `l5` float NOT NULL DEFAULT 0,
  `l6` float NOT NULL DEFAULT 0,
  `l7` float NOT NULL DEFAULT 0,
  `l8` float NOT NULL DEFAULT 0,
  `l9` float NOT NULL DEFAULT 0,
  `l10` float NOT NULL DEFAULT 0,
  `s1` int(250) NOT NULL DEFAULT 0,
  `s2` int(250) NOT NULL DEFAULT 0,
  `s3` int(250) NOT NULL DEFAULT 0,
  `s4` int(250) NOT NULL DEFAULT 0,
  `s5` int(250) NOT NULL DEFAULT 0,
  `s6` int(11) NOT NULL DEFAULT 0,
  `s7` int(11) NOT NULL DEFAULT 0,
  `s8` int(250) NOT NULL DEFAULT 0,
  `s9` int(11) NOT NULL DEFAULT 0,
  `s10` int(11) NOT NULL DEFAULT 0,
  `db` float NOT NULL,
  `idb` float NOT NULL DEFAULT 0,
  `idb_weekly` float NOT NULL DEFAULT 0,
  `idb_monthly` float NOT NULL DEFAULT 0,
  `roi` float NOT NULL DEFAULT 0,
  `roi_daily` float NOT NULL,
  `roi_today` float NOT NULL,
  `roi_monthly` float NOT NULL,
  `temp_roi` float NOT NULL DEFAULT 0,
  `monthly_share` float NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'Pending',
  `activation_fee` varchar(250) NOT NULL DEFAULT 'Unpaid',
  `login_status` varchar(100) NOT NULL DEFAULT 'Unblock',
  `withdrawal_status` varchar(255) NOT NULL DEFAULT 'on',
  `kyc` varchar(100) NOT NULL DEFAULT 'Unverified',
  `rank` int(100) NOT NULL DEFAULT 0,
  `team_sales` int(11) NOT NULL DEFAULT 0,
  `current_order_id` int(11) NOT NULL DEFAULT 0,
  `current_login` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `order_expires_at` date DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `package_purchase_count` int(11) NOT NULL DEFAULT 0,
  `last_updated_bonus` date DEFAULT NULL,
  `gtron_wallet` float NOT NULL DEFAULT 0,
  `current_bonus_status` enum('twoex','threeex','fourex') NOT NULL,
  `remark` varchar(255) NOT NULL,
  `for_5_direct_level_1` int(11) NOT NULL,
  `for_5_direct_level_2` int(11) NOT NULL,
  `for_10_direct_level_1` int(11) NOT NULL,
  `for_10_direct_level_2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`id`, `wallet_address`, `transaction_password`, `pkg_id`, `sponsor_name`, `user_name`, `address`, `current_balance`, `iwallet`, `pending_amount`, `total_income`, `max_income`, `active_investment`, `threex_amount_limit`, `threex_amount`, `eligible_shares`, `first_bonus`, `second_bonus`, `password`, `full_name`, `email`, `verified`, `sflag`, `usdttrc_address`, `email_code`, `otp_code`, `mobile`, `street`, `city`, `state`, `postal_code`, `phone`, `country`, `profile_pic`, `total_invest`, `direct_team`, `total_team`, `d_sale`, `l1`, `l2`, `l3`, `l4`, `l5`, `l6`, `l7`, `l8`, `l9`, `l10`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`, `s9`, `s10`, `db`, `idb`, `idb_weekly`, `idb_monthly`, `roi`, `roi_daily`, `roi_today`, `roi_monthly`, `temp_roi`, `monthly_share`, `status`, `activation_fee`, `login_status`, `withdrawal_status`, `kyc`, `rank`, `team_sales`, `current_order_id`, `current_login`, `order_date`, `order_expires_at`, `date`, `package_purchase_count`, `last_updated_bonus`, `gtron_wallet`, `current_bonus_status`, `remark`, `for_5_direct_level_1`, `for_5_direct_level_2`, `for_10_direct_level_1`, `for_10_direct_level_2`) VALUES
(10, '0x8baac7c858bcee5ff59a7607c462f57a17878f57', NULL, 0, 'MLM50', 'MLM101', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 06:35:50', 0, NULL, 0, 'threeex', '', 0, 0, 0, 0),
(43, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', '$2y$10$WiYuBfLTlldISkRciDKbieWQlpq7d5zmQR5nyfTwST3AKaniWvu2a', 2, 'mlm68', 'MLM43', '', 0, 0, 0, 0, 0, 100, 300, 0, 2, 0, 0, NULL, 'Kshitij Rana', 'master', 1, 1, '', NULL, NULL, NULL, NULL, '', '', '', '9760492063', '', 'user-profile.png', 400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, NULL, NULL, NULL, 4, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(44, '0xcd596d19635540c3da9c9ab7f22157c1c0e76668', NULL, 1, NULL, 'MLM1', NULL, 200, 0, 0, 0, 0, 50, 150, 100.741, 1, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Paid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, NULL, NULL, NULL, 1, NULL, 0.740741, 'threeex', 'testing block', 0, 0, 0, 0),
(45, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', NULL, 3, NULL, 'MLM45', NULL, 833.114, 0, 0, 150.775, 0, 250, 750, 3.7037, 5, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 300, 0, 0, 0, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, '2023-09-08', NULL, '2023-09-01 07:01:32', 2, NULL, 25003.7, 'fourex', '', 0, 0, 0, 0),
(46, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', NULL, 1, 'MLM45', 'MLM46', NULL, 0, 0, 0, 0, 0, 50, 150, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, '2023-09-08', NULL, '2023-08-30 20:05:50', 5, NULL, 5000, 'threeex', '', 0, 0, 0, 0),
(47, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', NULL, 0, 'MLM45', 'MLM47', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-08-30 20:05:50', 0, NULL, 0, 'fourex', '', 0, 0, 0, 0),
(48, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', NULL, 0, 'MLM45', 'MLM48', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-08-30 20:05:50', 0, NULL, 0, 'fourex', '', 0, 0, 0, 0),
(49, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', NULL, 0, 'MLM45', 'MLM49', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-03 22:17:43', 0, NULL, 0, 'fourex', '', 0, 0, 0, 0),
(50, '0x8baac7c858bcee5ff59a7607c462f57a17878f06', NULL, 0, 'MLM45', 'MLM50', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-08-30 20:55:50', 0, NULL, 0, 'fourex', '', 0, 0, 0, 0),
(51, '0x8baac7c858bcee5ff59a7607c462f57a17878f07', NULL, 0, 'MLM45', 'MLM51', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-08-30 21:05:50', 0, NULL, 0, 'fourex', '', 0, 0, 0, 0),
(52, '0x8baac7c858bcee5ff59a7607c462f57a17878f08', NULL, 0, 'MLM45', 'MLM52', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-08-30 21:15:50', 0, NULL, 0, 'fourex', '', 0, 0, 0, 0),
(53, '0x8baac7c858bcee5ff59a7607c462f57a17878f09', NULL, 0, 'MLM45', 'MLM53', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-08-30 21:25:50', 0, NULL, 0, 'fourex', '', 0, 0, 0, 0),
(54, '0x8baac7c858bcee5ff59a7607c462f57a17878f10', NULL, 1, 'MLM45', 'MLM54', NULL, 143.333, 0, 844.841, 143.333, 0, 50, 150, 150, 1, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 100, 0, 0, 0, 54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, '2023-09-04', NULL, '2023-08-30 21:35:50', 2, NULL, 6.6664, 'fourex', '', 0, 0, 0, 0),
(55, '0x8baac7c858bcee5ff59a7607c462f57a17878f11', NULL, 0, 'MLM45', 'MLM55', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-08-30 21:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(56, '0x8baac7c858bcee5ff59a7607c462f57a17878f12', NULL, 0, 'MLM46', 'MLM56', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-03 22:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(57, '0x8baac7c858bcee5ff59a7607c462f57a17878f13', NULL, 0, 'MLM46', 'MLM57', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-03 22:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(58, '0x8baac7c858bcee5ff59a7607c462f57a17878f14', NULL, 0, 'MLM46', 'MLM58', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-03 22:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(59, '0x8baac7c858bcee5ff59a7607c462f57a17878f15', NULL, 0, 'MLM46', 'MLM59', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-03 22:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(60, '0x8baac7c858bcee5ff59a7607c462f57a17878f16', NULL, 0, 'MLM46', 'MLM60', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-03 22:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(61, '0x8baac7c858bcee5ff59a7607c462f57a17878f17', NULL, 0, 'MLM46', 'MLM61', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-03 22:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(62, '0x8baac7c858bcee5ff59a7607c462f57a17878f18', NULL, 0, 'MLM46', 'MLM62', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-03 23:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(63, '0x8baac7c858bcee5ff59a7607c462f57a17878f19', NULL, 0, 'MLM46', 'MLM63', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-03 23:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(64, '0x8baac7c858bcee5ff59a7607c462f57a17878f20', NULL, 0, 'MLM46', 'MLM64', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-03 23:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(65, '0x8baac7c858bcee5ff59a7607c462f57a17878f21', NULL, 0, 'MLM46', 'MLM65', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-03 23:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(66, '0x8baac7c858bcee5ff59a7607c462f57a17878f22', NULL, 0, 'MLM47', 'MLM66', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 00:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(67, '0x8baac7c858bcee5ff59a7607c462f57a17878f23', NULL, 0, 'MLM47', 'MLM67', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 00:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(68, '0x8baac7c858bcee5ff59a7607c462f57a17878f24', NULL, 0, 'MLM47', 'MLM68', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 00:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(69, '0x8baac7c858bcee5ff59a7607c462f57a17878f25', NULL, 0, 'MLM47', 'MLM69', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 00:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(70, '0x8baac7c858bcee5ff59a7607c462f57a17878f26', NULL, 0, 'MLM47', 'MLM70', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 00:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(71, '0x8baac7c858bcee5ff59a7607c462f57a17878f27', NULL, 0, 'MLM47', 'MLM71', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 00:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(72, '0x8baac7c858bcee5ff59a7607c462f57a17878f28', NULL, 0, 'MLM47', 'MLM72', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 01:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(73, '0x8baac7c858bcee5ff59a7607c462f57a17878f29', NULL, 0, 'MLM47', 'MLM73', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 01:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(74, '0x8baac7c858bcee5ff59a7607c462f57a17878f30', NULL, 0, 'MLM47', 'MLM74', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 01:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(75, '0x8baac7c858bcee5ff59a7607c462f57a17878f31', NULL, 0, 'MLM47', 'MLM75', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 01:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(76, '0x8baac7c858bcee5ff59a7607c462f57a17878f32', NULL, 0, 'MLM48', 'MLM76', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 01:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(77, '0x8baac7c858bcee5ff59a7607c462f57a17878f33', NULL, 0, 'MLM48', 'MLM77', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 01:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(78, '0x8baac7c858bcee5ff59a7607c462f57a17878f34', NULL, 0, 'MLM48', 'MLM78', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 02:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(79, '0x8baac7c858bcee5ff59a7607c462f57a17878f35', NULL, 0, 'MLM48', 'MLM79', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 02:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(80, '0x8baac7c858bcee5ff59a7607c462f57a17878f36', NULL, 0, 'MLM48', 'MLM80', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 02:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(81, '0x8baac7c858bcee5ff59a7607c462f57a17878f37', NULL, 0, 'MLM48', 'MLM81', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 02:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(82, '0x8baac7c858bcee5ff59a7607c462f57a17878f38', NULL, 0, 'MLM48', 'MLM82', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 02:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(83, '0x8baac7c858bcee5ff59a7607c462f57a17878f39', NULL, 0, 'MLM48', 'MLM83', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 02:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(84, '0x8baac7c858bcee5ff59a7607c462f57a17878f40', NULL, 0, 'MLM48', 'MLM84', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 03:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(85, '0x8baac7c858bcee5ff59a7607c462f57a17878f41', NULL, 0, 'MLM48', 'MLM85', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 03:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(86, '0x8baac7c858bcee5ff59a7607c462f57a17878f42', NULL, 0, 'MLM49', 'MLM86', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 04:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(87, '0x8baac7c858bcee5ff59a7607c462f57a17878f43', NULL, 0, 'MLM49', 'MLM87', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 04:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(88, '0x8baac7c858bcee5ff59a7607c462f57a17878f44', NULL, 0, 'MLM49', 'MLM88', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 04:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(89, '0x8baac7c858bcee5ff59a7607c462f57a17878f45', NULL, 0, 'MLM49', 'MLM89', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 04:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(90, '0x8baac7c858bcee5ff59a7607c462f57a17878f46', NULL, 0, 'MLM49', 'MLM90', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 04:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(91, '0x8baac7c858bcee5ff59a7607c462f57a17878f47', NULL, 0, 'MLM49', 'MLM91', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 04:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(92, '0x8baac7c858bcee5ff59a7607c462f57a17878f48', NULL, 0, 'MLM49', 'MLM92', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 05:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(93, '0x8baac7c858bcee5ff59a7607c462f57a17878f49', NULL, 0, 'MLM49', 'MLM93', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 05:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(94, '0x8baac7c858bcee5ff59a7607c462f57a17878f50', NULL, 0, 'MLM49', 'MLM94', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 05:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(95, '0x8baac7c858bcee5ff59a7607c462f57a17878f51', NULL, 0, 'MLM49', 'MLM95', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 05:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(96, '0x8baac7c858bcee5ff59a7607c462f57a17878f52', NULL, 0, 'MLM50', 'MLM96', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 05:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(97, '0x8baac7c858bcee5ff59a7607c462f57a17878f53', NULL, 0, 'MLM50', 'MLM97', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 05:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(98, '0x8baac7c858bcee5ff59a7607c462f57a17878f54', NULL, 0, 'MLM50', 'MLM98', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 06:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(99, '0x8baac7c858bcee5ff59a7607c462f57a17878f55', NULL, 0, 'MLM50', 'MLM99', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 06:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(100, '0x8baac7c858bcee5ff59a7607c462f57a17878f56', NULL, 0, 'MLM50', 'MLM100', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 06:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(102, '0x8baac7c858bcee5ff59a7607c462f57a17878f58', NULL, 0, 'MLM50', 'MLM102', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 06:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(103, '0x8baac7c858bcee5ff59a7607c462f57a17878f59', NULL, 0, 'MLM50', 'MLM103', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 06:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(104, '0x8baac7c858bcee5ff59a7607c462f57a17878f60', NULL, 0, 'MLM50', 'MLM104', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 07:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(105, '0x8baac7c858bcee5ff59a7607c462f57a17878f61', NULL, 0, 'MLM50', 'MLM105', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 07:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(106, '0x8baac7c858bcee5ff59a7607c462f57a17878f62', NULL, 0, 'MLM51', 'MLM106', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 07:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(107, '0x8baac7c858bcee5ff59a7607c462f57a17878f63', NULL, 0, 'MLM51', 'MLM107', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 07:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(108, '0x8baac7c858bcee5ff59a7607c462f57a17878f64', NULL, 0, 'MLM51', 'MLM108', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 07:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(109, '0x8baac7c858bcee5ff59a7607c462f57a17878f65', NULL, 0, 'MLM51', 'MLM109', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 07:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(110, '0x8baac7c858bcee5ff59a7607c462f57a17878f66', NULL, 0, 'MLM51', 'MLM110', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 08:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(111, '0x8baac7c858bcee5ff59a7607c462f57a17878f67', NULL, 0, 'MLM51', 'MLM111', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 08:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(112, '0x8baac7c858bcee5ff59a7607c462f57a17878f68', NULL, 0, 'MLM51', 'MLM112', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 08:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(113, '0x8baac7c858bcee5ff59a7607c462f57a17878f69', NULL, 0, 'MLM51', 'MLM113', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 08:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(114, '0x8baac7c858bcee5ff59a7607c462f57a17878f70', NULL, 0, 'MLM51', 'MLM114', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 08:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(115, '0x8baac7c858bcee5ff59a7607c462f57a17878f71', NULL, 0, 'MLM51', 'MLM115', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 09:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(116, '0x8baac7c858bcee5ff59a7607c462f57a17878f72', NULL, 0, 'MLM52', 'MLM116', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 09:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(117, '0x8baac7c858bcee5ff59a7607c462f57a17878f73', NULL, 0, 'MLM52', 'MLM117', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 09:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(118, '0x8baac7c858bcee5ff59a7607c462f57a17878f74', NULL, 0, 'MLM52', 'MLM118', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 09:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(119, '0x8baac7c858bcee5ff59a7607c462f57a17878f75', NULL, 0, 'MLM52', 'MLM119', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 09:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(120, '0x8baac7c858bcee5ff59a7607c462f57a17878f76', NULL, 0, 'MLM52', 'MLM120', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 09:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(121, '0x8baac7c858bcee5ff59a7607c462f57a17878f77', NULL, 0, 'MLM52', 'MLM121', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 10:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(122, '0x8baac7c858bcee5ff59a7607c462f57a17878f78', NULL, 0, 'MLM52', 'MLM122', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 10:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(123, '0x8baac7c858bcee5ff59a7607c462f57a17878f79', NULL, 0, 'MLM52', 'MLM123', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 10:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(124, '0x8baac7c858bcee5ff59a7607c462f57a17878f80', NULL, 0, 'MLM52', 'MLM124', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 10:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(125, '0x8baac7c858bcee5ff59a7607c462f57a17878f81', NULL, 0, 'MLM52', 'MLM125', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 10:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(126, '0x8baac7c858bcee5ff59a7607c462f57a17878f82', NULL, 0, 'MLM53', 'MLM126', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 10:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(127, '0x8baac7c858bcee5ff59a7607c462f57a17878f83', NULL, 0, 'MLM53', 'MLM127', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 11:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(128, '0x8baac7c858bcee5ff59a7607c462f57a17878f84', NULL, 0, 'MLM53', 'MLM128', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 11:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(129, '0x8baac7c858bcee5ff59a7607c462f57a17878f85', NULL, 0, 'MLM53', 'MLM129', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 11:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(130, '0x8baac7c858bcee5ff59a7607c462f57a17878f86', NULL, 0, 'MLM53', 'MLM130', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 11:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(131, '0x8baac7c858bcee5ff59a7607c462f57a17878f87', NULL, 0, 'MLM53', 'MLM131', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 11:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(132, '0x8baac7c858bcee5ff59a7607c462f57a17878f88', NULL, 0, 'MLM53', 'MLM132', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 11:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(133, '0x8baac7c858bcee5ff59a7607c462f57a17878f89', NULL, 0, 'MLM53', 'MLM133', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 12:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(134, '0x8baac7c858bcee5ff59a7607c462f57a17878f90', NULL, 0, 'MLM53', 'MLM134', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 12:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(135, '0x8baac7c858bcee5ff59a7607c462f57a17878f91', NULL, 0, 'MLM53', 'MLM135', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 12:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(136, '0x8baac7c858bcee5ff59a7607c462f57a17878f92', NULL, 0, 'MLM54', 'MLM136', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 12:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(137, '0x8baac7c858bcee5ff59a7607c462f57a17878f93', NULL, 0, 'MLM54', 'MLM137', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 12:45:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(138, '0x8baac7c858bcee5ff59a7607c462f57a17878f94', NULL, 0, 'MLM54', 'MLM138', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 12:55:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(139, '0x8baac7c858bcee5ff59a7607c462f57a17878f95', NULL, 0, 'MLM54', 'MLM139', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 13:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(140, '0x8baac7c858bcee5ff59a7607c462f57a17878f96', NULL, 0, 'MLM54', 'MLM140', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 13:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(141, '0x8baac7c858bcee5ff59a7607c462f57a17878f97', NULL, 0, 'MLM54', 'MLM141', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 13:25:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(142, '0x8baac7c858bcee5ff59a7607c462f57a17878f98', NULL, 0, 'MLM54', 'MLM142', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 13:35:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(143, '0x8baac7c858bcee5ff59a7607c462f57a17878f99', NULL, 0, 'MLM54', 'MLM143', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 14:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(144, '0x8baac7c858bcee5ff59a7607c462f57a17878f100', NULL, 0, 'MLM54', 'MLM144', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-04 14:15:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(145, '0x8baac7c858bcee5ff59a7607c462f57a17878f101', NULL, 1, 'MLM54', 'MLM145', NULL, 275, 0, 575, 275, 0, 50, 150, 0, 1, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 1100, 0, 0, 0, 325, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, '2023-09-05', NULL, '2023-09-04 14:25:50', 2, NULL, 9.54149, 'threeex', '', 0, 0, 0, 0),
(146, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', NULL, 2, 'MLM145', 'MLM450', NULL, 0, 0, 0, 0, 0, 100, 300, 8.3857, 2, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, '2023-09-04', NULL, '2023-09-01 07:01:32', 1, NULL, 8.3857, 'twoex', '', 0, 0, 0, 0),
(451, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', NULL, 1, 'MLM145', 'MLM451', NULL, 0, 0, 0, 0, 0, 50, 150, 0.848268, 1, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, '2023-09-04', NULL, '2023-09-01 07:01:32', 1, NULL, 22.5873, 'threeex', '', 0, 0, 0, 0),
(453, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', NULL, 0, 'MLM451', 'MLM453', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-09-01 07:01:32', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0);
INSERT INTO `user_registration` (`id`, `wallet_address`, `transaction_password`, `pkg_id`, `sponsor_name`, `user_name`, `address`, `current_balance`, `iwallet`, `pending_amount`, `total_income`, `max_income`, `active_investment`, `threex_amount_limit`, `threex_amount`, `eligible_shares`, `first_bonus`, `second_bonus`, `password`, `full_name`, `email`, `verified`, `sflag`, `usdttrc_address`, `email_code`, `otp_code`, `mobile`, `street`, `city`, `state`, `postal_code`, `phone`, `country`, `profile_pic`, `total_invest`, `direct_team`, `total_team`, `d_sale`, `l1`, `l2`, `l3`, `l4`, `l5`, `l6`, `l7`, `l8`, `l9`, `l10`, `s1`, `s2`, `s3`, `s4`, `s5`, `s6`, `s7`, `s8`, `s9`, `s10`, `db`, `idb`, `idb_weekly`, `idb_monthly`, `roi`, `roi_daily`, `roi_today`, `roi_monthly`, `temp_roi`, `monthly_share`, `status`, `activation_fee`, `login_status`, `withdrawal_status`, `kyc`, `rank`, `team_sales`, `current_order_id`, `current_login`, `order_date`, `order_expires_at`, `date`, `package_purchase_count`, `last_updated_bonus`, `gtron_wallet`, `current_bonus_status`, `remark`, `for_5_direct_level_1`, `for_5_direct_level_2`, `for_10_direct_level_1`, `for_10_direct_level_2`) VALUES
(454, '0x8baac7c858bcee5ff59a7607c462f57a17878f01', NULL, 0, 'MLM451', 'MLM454', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 0, NULL, NULL, '2023-08-30 20:05:50', 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(455, 'newtestuser600', NULL, 0, 'master', 'MLM455', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(456, 'newtestuser600', NULL, 0, 'master', 'MLM456', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(457, 'newtestuser600', NULL, 0, 'master', 'MLM457', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(458, 'newtestuser6', NULL, 0, 'MLM43', 'MLM458', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(459, 'newtestuser600', NULL, 0, 'MLM458', 'MLM459', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(460, 'newtestuser600', NULL, 0, 'MLM43', 'MLM460', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(461, 'newtestuser6', NULL, 0, 'MLM101', 'MLM461', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(462, 'newtestuser6000', NULL, 0, 'MLM1', 'MLM462', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(463, 'newtestuser7', NULL, 0, 'MLM1', 'MLM463', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, NULL, NULL, NULL, 0, NULL, 0, 'twoex', '', 0, 0, 0, 0),
(464, 'gtronwallence', NULL, 1, '0', 'MLM464', NULL, 2625, 0, 0, 1125, 0, 50, 150, 0, 1, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 2500, 0, 0, 0, 1125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, '2023-09-08', NULL, NULL, 14, NULL, 5000, 'threeex', '', 0, 0, 0, 0),
(465, 'newtestgtrontest007', NULL, 4, 'MLM464', 'MLM465', NULL, 0, 0, 0, 0, 0, 500, 1500, 0, 10, 0, 0, NULL, NULL, NULL, 1, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 2250, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Approved', 'Unpaid', 'Unblock', 'on', 'Verified', 0, 0, 0, 0, '2023-09-08', NULL, NULL, 6, NULL, 50000, 'twoex', '', 0, 0, 0, 0),
(466, 'TMshLMuGQjpBW3HvyuCCgYM2tQ7CoQSyQv', NULL, 0, NULL, 'mlm466', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0, 1, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'user-profile.png', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pending', 'Unpaid', 'Unblock', 'on', 'Unverified', 0, 0, 0, 1, NULL, NULL, NULL, 0, NULL, 0, 'twoex', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_summary`
--

CREATE TABLE `wallet_summary` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `description` varchar(255) NOT NULL,
  `wallet_type` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `gtron_wallet` float NOT NULL DEFAULT 0,
  `credit_type` enum('pool_bonus','level_bonus') NOT NULL,
  `current_bonus_status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_summary`
--

INSERT INTO `wallet_summary` (`id`, `user_name`, `amount`, `description`, `wallet_type`, `type`, `date`, `gtron_wallet`, `credit_type`, `current_bonus_status`) VALUES
(229, 'MLM52', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(228, 'MLM51', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(227, 'MLM50', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(226, 'MLM49', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(225, 'MLM48', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(224, 'MLM47', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(223, 'MLM46', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(222, 'MLM45', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(221, 'MLM1', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'twoex'),
(220, 'MLM45', 6, 'Level 3 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(219, 'MLM54', 8, 'Level 2 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(218, 'MLM145', 50, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(217, 'MLM54', 3.21429, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 3.21429, 'level_bonus', 'fourex'),
(216, 'MLM53', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(215, 'MLM52', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(214, 'MLM51', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(213, 'MLM50', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(212, 'MLM49', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(211, 'MLM48', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(210, 'MLM47', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(207, 'MLM1', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'twoex'),
(208, 'MLM45', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(209, 'MLM46', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(325, '0', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(324, '0', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(323, '0', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(322, '0', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(321, '0', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(320, 'MLM464', 250, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(319, 'MLM464', 250, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(318, 'MLM464', 250, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(317, '0', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(316, '0', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(315, 'MLM464', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(314, 'MLM464', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(313, 'MLM464', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(312, '0', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(311, '0', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(310, '0', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(309, '0', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(308, '0', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(307, '0', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(306, '0', 125, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(305, 'MLM451', 0.740741, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0.740741, 'level_bonus', 'threeex'),
(304, 'MLM450', 1.48148, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 1.48148, 'level_bonus', 'twoex'),
(303, 'MLM45', 3.7037, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 3.7037, 'level_bonus', 'fourex'),
(302, 'MLM1', 0.740741, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0.740741, 'level_bonus', 'threeex'),
(301, 'MLM45', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-07 18:30:00', 0, 'pool_bonus', ''),
(300, 'MLM45', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-06 18:30:00', 0, 'pool_bonus', ''),
(299, 'MLM45', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-06 18:30:00', 0, 'pool_bonus', ''),
(298, 'MLM45', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-04 18:30:00', 0, 'pool_bonus', ''),
(297, 'MLM45', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-04 18:30:00', 0, 'pool_bonus', ''),
(296, 'MLM45', 4, 'Level 2 Bonus', 'Cash Wallet', 'Credit', '2023-09-04 18:30:00', 0, 'pool_bonus', ''),
(295, 'MLM54', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-04 18:30:00', 0, 'pool_bonus', ''),
(294, 'MLM451', 0.107527, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0.107527, 'level_bonus', 'threeex'),
(293, 'MLM450', 0.215054, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0.215054, 'level_bonus', 'twoex'),
(292, 'MLM145', 0.107527, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0.107527, 'level_bonus', 'threeex'),
(291, 'MLM54', 0.107527, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0.107527, 'level_bonus', 'fourex'),
(290, 'MLM53', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(289, 'MLM52', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(288, 'MLM51', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(287, 'MLM50', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(286, 'MLM49', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(285, 'MLM48', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(284, 'MLM47', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(283, 'MLM46', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(282, 'MLM45', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(281, 'MLM1', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'twoex'),
(280, 'MLM45', 4, 'Level 2 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(279, 'MLM54', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(278, 'MLM45', 3, 'Level 3 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(277, 'MLM54', 4, 'Level 2 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(276, 'MLM145', 25, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(275, 'MLM54', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(274, 'MLM53', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(273, 'MLM52', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(272, 'MLM51', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(271, 'MLM50', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(270, 'MLM49', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(269, 'MLM48', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(268, 'MLM47', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(267, 'MLM46', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(266, 'MLM45', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(265, 'MLM451', 21.7391, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 21.7391, 'level_bonus', 'threeex'),
(264, 'MLM450', 4.34783, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 4.34783, 'level_bonus', 'twoex'),
(263, 'MLM54', 2.17391, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 2.17391, 'level_bonus', 'fourex'),
(262, 'MLM53', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(261, 'MLM52', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(260, 'MLM51', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(259, 'MLM50', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(258, 'MLM49', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(257, 'MLM48', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(256, 'MLM47', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(255, 'MLM46', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(254, 'MLM45', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(253, 'MLM1', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'twoex'),
(252, 'MLM45', 30, 'Level 3 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(251, 'MLM54', 40, 'Level 2 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(250, 'MLM145', 250, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(249, 'MLM45', 40, 'Level 2 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(248, 'MLM54', 250, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(247, 'MLM450', 1.88679, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 1.88679, 'level_bonus', 'twoex'),
(246, 'MLM145', 9.43396, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 9.43396, 'level_bonus', 'threeex'),
(245, 'MLM54', 0.943396, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0.943396, 'level_bonus', 'fourex'),
(244, 'MLM53', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(243, 'MLM52', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(242, 'MLM51', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(241, 'MLM50', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(240, 'MLM49', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(239, 'MLM48', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(238, 'MLM47', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(237, 'MLM46', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(236, 'MLM45', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(235, 'MLM1', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'twoex'),
(234, 'MLM45', 40, 'Level 2 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(233, 'MLM54', 250, 'Level 1 Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'pool_bonus', ''),
(232, 'MLM450', 0.454545, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0.454545, 'level_bonus', 'twoex'),
(230, 'MLM53', 0, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0, 'level_bonus', 'fourex'),
(231, 'MLM54', 0.227273, 'Pool Bonus', 'Cash Wallet', 'Credit', '2023-09-03 18:30:00', 0.227273, 'level_bonus', 'fourex');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_transfer`
--

CREATE TABLE `wallet_transfer` (
  `id` int(11) NOT NULL,
  `transfer_from` varchar(255) NOT NULL,
  `transfer_to` varchar(255) NOT NULL,
  `transfer_amount` float NOT NULL,
  `transfer_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `transfer_fee_in_percentage` float NOT NULL,
  `transfer_fee_amount` float NOT NULL,
  `amount_transferred` float NOT NULL,
  `amount_after_transfer_fee_deduct` float NOT NULL,
  `sender_wallet_amount_before` float NOT NULL,
  `sender_wallet_amount_after` float NOT NULL,
  `receiver_wallet_amount_before` float NOT NULL,
  `receiver_wallet_amount_after` float NOT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet_transfer`
--

INSERT INTO `wallet_transfer` (`id`, `transfer_from`, `transfer_to`, `transfer_amount`, `transfer_date`, `transfer_fee_in_percentage`, `transfer_fee_amount`, `amount_transferred`, `amount_after_transfer_fee_deduct`, `sender_wallet_amount_before`, `sender_wallet_amount_after`, `receiver_wallet_amount_before`, `receiver_wallet_amount_after`, `transaction_date`) VALUES
(1, 'admin', 'test', 200, '2023-07-31 11:09:23', 5, 20, 100, 0, 0, 0, 0, 0, '2023-07-31 11:09:23');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `desire_amount` float NOT NULL,
  `amount_after_tax` float NOT NULL,
  `tax` float NOT NULL,
  `mode` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `account_title` varchar(250) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `btc_address` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `reject_reason` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `transaction_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawal`
--

INSERT INTO `withdrawal` (`id`, `user_name`, `email`, `desire_amount`, `amount_after_tax`, `tax`, `mode`, `bank`, `account_title`, `account_no`, `btc_address`, `status`, `reject_reason`, `date`, `transaction_hash`) VALUES
(1, '', '', 0, 0, 0, '', '', NULL, NULL, '', 'Approved', '', '2023-07-24 15:32:10', '');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_limit`
--

CREATE TABLE `withdrawal_limit` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_limit_summary`
--

CREATE TABLE `withdrawal_limit_summary` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_report`
--
ALTER TABLE `activity_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_gtron_wallet`
--
ALTER TABLE `admin_gtron_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_log`
--
ALTER TABLE `admin_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_wallet`
--
ALTER TABLE `admin_wallet`
  ADD PRIMARY KEY (`wallet_id`);

--
-- Indexes for table `admin_wallet_summary`
--
ALTER TABLE `admin_wallet_summary`
  ADD PRIMARY KEY (`owner_id`);

--
-- Indexes for table `admin_wallet_summary_logs`
--
ALTER TABLE `admin_wallet_summary_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogpost`
--
ALTER TABLE `blogpost`
  ADD PRIMARY KEY (`PostID`);

--
-- Indexes for table `bonuses_details`
--
ALTER TABLE `bonuses_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_if_performance_bonus_already_given`
--
ALTER TABLE `check_if_performance_bonus_already_given`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `commission_percentage`
--
ALTER TABLE `commission_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cron_log`
--
ALTER TABLE `cron_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_rates`
--
ALTER TABLE `current_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donate`
--
ALTER TABLE `donate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gtron_feature_project`
--
ALTER TABLE `gtron_feature_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level_percentage`
--
ALTER TABLE `level_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_percentage`
--
ALTER TABLE `monthly_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_share`
--
ALTER TABLE `monthly_share`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `old_share`
--
ALTER TABLE `old_share`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_bonuses`
--
ALTER TABLE `package_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_details`
--
ALTER TABLE `package_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `trans_id` (`trans_id`);

--
-- Indexes for table `package_old`
--
ALTER TABLE `package_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_percentage`
--
ALTER TABLE `package_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_requests`
--
ALTER TABLE `payment_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pending_pacakge_amount`
--
ALTER TABLE `pending_pacakge_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `percentages`
--
ALTER TABLE `percentages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `percentages_summary`
--
ALTER TABLE `percentages_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pool_share_credit_history`
--
ALTER TABLE `pool_share_credit_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pre_registration`
--
ALTER TABLE `pre_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_management`
--
ALTER TABLE `project_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_bonuses`
--
ALTER TABLE `referral_bonuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_levels`
--
ALTER TABLE `referral_levels`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `referral_performance_bonus`
--
ALTER TABLE `referral_performance_bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral_performance_bonus_logs`
--
ALTER TABLE `referral_performance_bonus_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward`
--
ALTER TABLE `reward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roi`
--
ALTER TABLE `roi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roi_percentage`
--
ALTER TABLE `roi_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roi_percentage_summary`
--
ALTER TABLE `roi_percentage_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade_history`
--
ALTER TABLE `trade_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade_item`
--
ALTER TABLE `trade_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_direct_ref_count`
--
ALTER TABLE `user_direct_ref_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_dividend_bonus_summery`
--
ALTER TABLE `user_dividend_bonus_summery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_hierarchy`
--
ALTER TABLE `user_hierarchy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_level_count`
--
ALTER TABLE `user_level_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_level_hierarchy`
--
ALTER TABLE `user_level_hierarchy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_pool_amount`
--
ALTER TABLE `user_pool_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_pool_amount_history`
--
ALTER TABLE `user_pool_amount_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `wallet_summary`
--
ALTER TABLE `wallet_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_transfer`
--
ALTER TABLE `wallet_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_limit`
--
ALTER TABLE `withdrawal_limit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_limit_summary`
--
ALTER TABLE `withdrawal_limit_summary`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_report`
--
ALTER TABLE `activity_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_gtron_wallet`
--
ALTER TABLE `admin_gtron_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_log`
--
ALTER TABLE `admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_wallet`
--
ALTER TABLE `admin_wallet`
  MODIFY `wallet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_wallet_summary`
--
ALTER TABLE `admin_wallet_summary`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_wallet_summary_logs`
--
ALTER TABLE `admin_wallet_summary_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blogpost`
--
ALTER TABLE `blogpost`
  MODIFY `PostID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bonuses_details`
--
ALTER TABLE `bonuses_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `check_if_performance_bonus_already_given`
--
ALTER TABLE `check_if_performance_bonus_already_given`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commission_percentage`
--
ALTER TABLE `commission_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cron_log`
--
ALTER TABLE `cron_log`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `current_rates`
--
ALTER TABLE `current_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donate`
--
ALTER TABLE `donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gtron_feature_project`
--
ALTER TABLE `gtron_feature_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `level_percentage`
--
ALTER TABLE `level_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `monthly_percentage`
--
ALTER TABLE `monthly_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monthly_share`
--
ALTER TABLE `monthly_share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `old_share`
--
ALTER TABLE `old_share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `package_bonuses`
--
ALTER TABLE `package_bonuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `package_details`
--
ALTER TABLE `package_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `package_old`
--
ALTER TABLE `package_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `package_percentage`
--
ALTER TABLE `package_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_requests`
--
ALTER TABLE `payment_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pending_pacakge_amount`
--
ALTER TABLE `pending_pacakge_amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `percentages`
--
ALTER TABLE `percentages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `percentages_summary`
--
ALTER TABLE `percentages_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pool_share_credit_history`
--
ALTER TABLE `pool_share_credit_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pre_registration`
--
ALTER TABLE `pre_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `project_management`
--
ALTER TABLE `project_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `referral_bonuses`
--
ALTER TABLE `referral_bonuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `referral_performance_bonus`
--
ALTER TABLE `referral_performance_bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `referral_performance_bonus_logs`
--
ALTER TABLE `referral_performance_bonus_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reward`
--
ALTER TABLE `reward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roi`
--
ALTER TABLE `roi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roi_percentage`
--
ALTER TABLE `roi_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roi_percentage_summary`
--
ALTER TABLE `roi_percentage_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trade_history`
--
ALTER TABLE `trade_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trade_item`
--
ALTER TABLE `trade_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_direct_ref_count`
--
ALTER TABLE `user_direct_ref_count`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_dividend_bonus_summery`
--
ALTER TABLE `user_dividend_bonus_summery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_hierarchy`
--
ALTER TABLE `user_hierarchy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_level_count`
--
ALTER TABLE `user_level_count`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_level_hierarchy`
--
ALTER TABLE `user_level_hierarchy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `user_pool_amount`
--
ALTER TABLE `user_pool_amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_pool_amount_history`
--
ALTER TABLE `user_pool_amount_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `wallet_summary`
--
ALTER TABLE `wallet_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `wallet_transfer`
--
ALTER TABLE `wallet_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdrawal_limit`
--
ALTER TABLE `withdrawal_limit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal_limit_summary`
--
ALTER TABLE `withdrawal_limit_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
