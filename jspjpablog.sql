-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2020 at 03:09 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jspjpablog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminUsername` varchar(255) DEFAULT NULL,
  `adminPassword` varchar(255) DEFAULT NULL,
  `adminId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminUsername`, `adminPassword`, `adminId`) VALUES
('kerem', 'junior', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blogId` bigint(20) NOT NULL,
  `blogContent` longtext DEFAULT NULL,
  `blogTitle` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blogId`, `blogContent`, `blogTitle`, `date`) VALUES
(1, 'Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try Try ', 'Try Title', '2020-08-08 14:27:26'),
(2, 'Kerem \r\n', 'Jsp', '2020-08-08 14:28:29'),
(3, 'This is a jsp jpa blog website.', 'JSP JPA BLOG', '2020-08-08 14:29:13'),
(9, 'Blog Content', 'Title', '2020-08-08 14:46:54'),
(10, 'Blog Content', 'Try 2', '2020-08-08 14:47:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blogId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blogId` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
