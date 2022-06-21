-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 08:27 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'San Diego', 3),
(2, 'Los Angeles', 3),
(3, 'San Jose', 3),
(4, 'San Francisco', 3),
(5, 'Fresno', 3),
(6, 'Phoenix', 4),
(7, 'Tucson', 4),
(8, 'Mesa', 4),
(9, 'Chandler', 4),
(10, 'Houston', 5),
(11, 'San Antonio', 5),
(12, 'Dallas', 5),
(13, 'Austin', 5),
(14, 'Garland', 5),
(15, 'Calgary', 1),
(16, 'Strathcona County', 1),
(17, 'Canmore', 1),
(18, 'Medicine Hat', 1),
(19, 'Toronto', 2),
(20, 'Ottawa', 2),
(21, 'Mississauga', 2),
(22, 'Amaravati', 6),
(23, 'Anantapur', 6),
(24, 'Bhimavaram', 6),
(25, 'Chirala', 6),
(26, 'Lucknow', 7),
(27, 'Kanpur', 7),
(28, 'Varanasi', 7),
(29, 'Mumbai', 8),
(30, 'Pune', 8),
(31, 'Nagpur', 8),
(32, 'Nasik', 8);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'India'),
(2, 'United States'),
(3, 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Alberta', 3),
(2, 'Ontario', 3),
(3, 'California', 2),
(4, 'Arizona', 2),
(5, 'Texas', 2),
(6, 'Andhra Pradesh', 1),
(7, 'Uttar Pradesh', 1),
(8, 'Maharastra', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `country`, `state`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Ravi Singh', 'abc@gmail.com', 1, 6, 22, '2022-06-21 12:10:25', '2022-06-21 12:41:39'),
(2, 'John Doe', 'john@gmail.com', 1, 7, 28, '2022-06-21 12:41:23', '2022-06-21 12:41:51'),
(3, 'Sachin', 'sachin@gmail.com', 3, 1, 15, '2022-06-21 12:42:34', '2022-06-21 12:42:34'),
(4, 'Rohit', 'rohit@gmail.com', 2, 4, 8, '2022-06-21 12:42:57', '2022-06-21 12:42:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
