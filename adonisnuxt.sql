-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 09:10 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adonisnuxt`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) DEFAULT NULL,
  `last_name` varchar(191) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(180) NOT NULL,
  `username` varchar(191) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `forgot_code` varchar(15) DEFAULT NULL,
  `is_banned` varchar(15) DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `profile_pic` varchar(191) DEFAULT 'http://localhost:3000/img/male.jpg',
  `cover` varchar(191) DEFAULT NULL,
  `remember_me_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `username`, `status`, `forgot_code`, `is_banned`, `gender`, `profile_pic`, `cover`, `remember_me_token`, `created_at`, `updated_at`) VALUES
(13, 'Md', 'Sadik', 'subhesadek89990@gmail.com', '$bcrypt$v=98$r=10$wGga0qtW7oMcVdi0Nkngiw$xzkvWilr0rotcIBq594/pVjw/fk/rBs', 'Md_Sadik', NULL, NULL, 'no', 'Male', 'http://localhost:3000/img/male.jpg', NULL, NULL, '2021-10-13 06:31:04', '2021-10-13 06:21:47');

--
-- Indexes for dumped tables
--

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
