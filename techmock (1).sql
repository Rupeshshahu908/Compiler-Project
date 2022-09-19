-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2022 at 06:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techmock`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` enum('admin','student','trainer') NOT NULL DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `password`, `type`) VALUES
(1, 'seema gupt', 'seema@gmail.com', '8005163689', '81dc9bdb52d04dc20036dbd8313ed055', 'student'),
(2, 'trainer', 'trainer@123gmail.com', '34556656679', '81dc9bdb52d04dc20036dbd8313ed055', 'trainer'),
(3, 'admin ', 'admin@123gmail.com', '456789234', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(4, 'divya', 'div@gmail.com', '12340908989', '1234', 'trainer'),
(5, 'neetu', 'nit@gmail.com', '9878765656', '1224', 'trainer'),
(6, 'abhi', 'a@gmail.com', '1978782379', '1234', 'trainer'),
(10, 'seema gupta', 'seemagupta@gmail.com', '8005163696', '1234', 'trainer'),
(13, 'shyam', 'shyam@gmail.com', '356677889', '1234', 'trainer'),
(17, 'pinkey', 'pinkey@123', '80087287873', '1234', 'student'),
(18, 'mohan', 'mohan@gmail.com', '5657889765', '1234', 'student'),
(19, 'neetu', 'neetu@gmail.com', '57657547287', '1234', 'student');

-- --------------------------------------------------------

--
-- Table structure for table `workspace`
--

CREATE TABLE `workspace` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workspace`
--

INSERT INTO `workspace` (`id`, `name`, `token`, `user_id`) VALUES
(1, 'project-demo', '7929f334fdf19ace637ec1471bfabeb3', 1),
(2, 'sample-project', '8c5454af26beb4f6dc1d81c0760a689e', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `workspace`
--
ALTER TABLE `workspace`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `workspace`
--
ALTER TABLE `workspace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
