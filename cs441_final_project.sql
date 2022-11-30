-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 02:42 AM
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
-- Database: `cs441_final_project`
--

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
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='userType- can either be user, admin, or moderator';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userType`, `username`, `password`) VALUES
(1, 'moderator', 'testmoderator', '1234'),
(2, 'user', 'testuser', '1234'),
(3, 'admin', 'testadmin', '1234');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
