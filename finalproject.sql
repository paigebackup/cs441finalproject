-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 05:26 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `finalproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`) VALUES
(1, 'squish'),
(2, 'world'),
(3, 'gossip');

-- --------------------------------------------------------

--
-- Table structure for table `news_articles`
--

CREATE TABLE `news_articles` (
  `articleTitle` varchar(100) NOT NULL,
  `articleCategory` varchar(100) NOT NULL,
  `articleContent` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_articles`
--

INSERT INTO `news_articles` (`articleTitle`, `articleCategory`, `articleContent`) VALUES
('sports1', 'sports', 'yaysports'),
('sports2', 'sports', 'yaysports'),
('sports3', 'sports', 'yaysports'),
('sports4', 'sports', 'yaysports'),
('sports5', 'sports', 'yaysports'),
('squish1', 'squish', 'yaysquish'),
('squish2', 'squish', 'yaysquish'),
('squish3', 'squish', 'yaysquish'),
('squish4', 'squish', 'yaysquish'),
('squish5', 'squish', 'yaysquish'),
('world1', 'world', 'yayworld'),
('world2', 'world', 'yayworld'),
('world3', 'world', 'yayworld'),
('world4', 'world', 'yayworld'),
('world5', 'world', 'yayworld');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `submissionTitle` varchar(1000) NOT NULL,
  `submissionContent` varchar(1000) NOT NULL,
  `submissionStatus` varchar(10) NOT NULL,
  `submitterId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userType` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `subscription1` int(11) NOT NULL,
  `subscription2` int(11) NOT NULL,
  `subscription3` int(11) NOT NULL,
  `subscription4` int(11) NOT NULL,
  `subscription5` int(11) NOT NULL,
  `subscription6` int(11) NOT NULL,
  `subscription7` int(11) NOT NULL,
  `subscription8` int(11) NOT NULL,
  `subscription9` int(11) NOT NULL,
  `subscription10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='userType- can either be user, admin, or moderator';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userType`, `username`, `password`, `subscription1`, `subscription2`, `subscription3`, `subscription4`, `subscription5`, `subscription6`, `subscription7`, `subscription8`, `subscription9`, `subscription10`) VALUES
(1, 'moderator', 'testmoderator', '1234', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'user', 'testuser', '1234', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'admin', 'testadmin', '1234', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_articles`
--
ALTER TABLE `news_articles`
  ADD PRIMARY KEY (`articleTitle`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
