-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 03:18 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogpost`
--
ALTER TABLE `blogpost`
  ADD PRIMARY KEY (`PostID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogpost`
--
ALTER TABLE `blogpost`
  MODIFY `PostID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
