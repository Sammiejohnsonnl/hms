-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 12:08 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eer`
--

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `BuildingAddress` varchar(1000) DEFAULT NULL,
  `Building_Type` text DEFAULT NULL,
  `built_year` date DEFAULT NULL,
  `eer` text DEFAULT NULL,
  `potential` text DEFAULT NULL,
  `grade` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`id`, `user_id`, `name`, `BuildingAddress`, `Building_Type`, `built_year`, `eer`, `potential`, `grade`, `created_at`) VALUES
(3, 4, 'test', 'YTETSUHF', '', '3422-03-12', '59.22', NULL, 'D', '2024-03-14 18:09:58'),
(4, 2, 'usdusKL', 'LKDLW', '', '4444-03-12', '59.22', '90', 'D', '2024-03-15 09:04:03'),
(5, 4, '868', 'uiui', '', '2024-03-23', '59.22', '39', 'D', '2024-03-23 02:05:14'),
(6, 2, '347', 'IUIU', 'House', '3223-03-12', '59.22', '10', 'D', '2024-03-25 21:37:50'),
(8, 2, '347', '1231', '', '2024-04-20', '40.68', '1231', 'E', '2024-04-14 21:39:25'),
(11, 2, 'joe', 'smoe', '', '2024-04-11', '58.15', '0', 'D', '2024-04-15 13:11:09'),
(12, 2, 'sodkasodka', 'sdasdasd', '', '2024-04-17', '47.54', '0', 'E', '2024-04-15 13:40:58'),
(13, 2, 'building', '123 something street', '', '2024-04-03', '98', '0', 'A', '2024-04-15 14:50:02'),
(14, 9, 'Building 1', '123 something street', '', '2024-04-18', '-18.71', '0', 'G', '2024-04-15 15:09:26'),
(15, 2, 'building2', 'joe street', '', '2024-04-03', '0', '0', 'N/A', '2024-04-16 15:32:17'),
(16, 2, 'building3', 'boom', '', '2024-04-06', '0', '0', 'N/A', '2024-04-16 15:32:51'),
(17, 2, 'jesem', 'adadad', '2', '2024-04-16', '0', '0', 'N/A', '2024-04-16 15:34:12'),
(18, 2, 'building3', 'mkmkmk', '4', '2024-04-06', '0', '0', 'N/A', '2024-04-16 15:34:49'),
(19, 2, 'sdasd', 'asdasd', 'Bungalow', '2024-04-11', '0', '0', 'N/A', '2024-04-16 15:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `calculations`
--

CREATE TABLE `calculations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `building_id` int(11) DEFAULT NULL,
  `lc` decimal(30,2) DEFAULT NULL,
  `hc` decimal(30,2) DEFAULT NULL,
  `hwc` decimal(30,2) DEFAULT NULL,
  `tfa` decimal(30,2) DEFAULT NULL,
  `rating_band` text DEFAULT NULL,
  `eer` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calculations`
--

INSERT INTO `calculations` (`id`, `user_id`, `building_id`, `lc`, `hc`, `hwc`, `tfa`, `rating_band`, `eer`, `created_at`) VALUES
(8, 4, NULL, 782.00, 979.00, 99.00, 979.00, 'C', '73.5', '2024-03-20 22:17:15'),
(9, 4, NULL, 234.00, 345.00, 343.00, 34353.00, 'A', '99.63', '2024-03-21 15:53:58'),
(10, 3, NULL, 234.00, 345.00, 343.00, 34353.00, 'A', '99.63', '2024-03-21 15:55:21'),
(11, 2, 4, 823.00, 9898.00, 9889.00, 98898.00, 'A', '97.09', '2024-03-25 07:43:37'),
(12, 2, 4, 7823.00, 87687.00, 87787.00, 87878.00, 'C', '70.9', '2024-03-25 21:36:41'),
(13, 2, 6, 2.00, 756.00, 567.00, 565.00, 'D', '67.29', '2024-03-25 21:38:13'),
(14, 6, NULL, 12.00, 565.00, 656.00, 56565.00, 'A', '99.7', '2024-03-25 21:42:00'),
(16, 2, 6, 12.00, 12.00, 12.00, 12.00, 'D', '58.15', '2024-04-14 17:04:52'),
(17, 2, 11, 12.00, 12.00, 12.00, 12.00, 'D', '58.15', '2024-04-15 13:19:35'),
(18, 2, 11, 12.00, 12.00, 12.00, 12.00, 'D', '58.15', '2024-04-15 13:20:08'),
(19, 2, 11, 12.00, 13.00, 13.00, 13.00, 'D', '59.22', '2024-04-15 13:20:13'),
(20, 2, 11, 12.00, 14.00, 14.00, 14.00, 'D', '60.14', '2024-04-15 13:21:04'),
(21, 2, 11, 14.00, 14.00, 15.00, 15.00, 'D', '60.01', '2024-04-15 13:21:31'),
(22, 2, 11, 14.00, 14.00, 14.00, 14.00, 'D', '58.15', '2024-04-15 13:21:54'),
(23, 2, 8, 16.00, 19.00, 12.00, 11.00, 'E', '40.68', '2024-04-15 13:22:05'),
(24, 2, 12, 12.00, 12.00, 21.00, 12.00, 'E', '47.54', '2024-04-15 13:41:07'),
(25, 2, 13, 13.00, 13.00, 13.00, 13.00, 'D', '58.15', '2024-04-15 14:50:10'),
(26, 9, 14, 70.00, 375.00, 190.00, 48.00, 'G', '-18.71', '2024-04-15 15:10:30'),
(27, 9, 14, 70.00, 375.00, 190.00, 48.00, 'G', '-18.71', '2024-04-15 15:11:54'),
(28, 9, 14, 70.00, 375.00, 190.00, 48.00, 'G', '-18.71', '2024-04-15 15:12:25'),
(29, 9, 14, 70.00, 375.00, 190.00, 48.00, 'G', '-18.71', '2024-04-15 15:12:51'),
(30, 2, 13, 70.00, 375.00, 190.00, 48.00, 'C', '80', '2024-04-15 15:26:14'),
(31, 2, 13, 70.00, 375.00, 190.00, 48.00, 'C', '80', '2024-04-15 15:26:42'),
(32, 2, 13, 70.00, 375.00, 190.00, 48.00, 'C', '79.9975', '2024-04-15 16:32:09'),
(33, 2, 13, 65.00, 771.00, 158.00, 45.00, 'D', '67.6453', '2024-04-15 16:45:43'),
(34, 2, 13, 109.00, 654.00, 157.00, 67.00, 'C', '75.93625', '2024-04-15 16:47:23'),
(35, 2, 13, 207.00, 1156.00, 195.00, 89.00, 'D', '65.939097014925', '2024-04-15 16:48:14'),
(36, 2, 13, 79.00, 970.00, 168.00, 55.00, 'D', '64.347985', '2024-04-15 16:48:55'),
(37, 2, 13, 106.00, 779.00, 155.00, 78.00, 'C', '75.230243902439', '2024-04-15 16:49:14'),
(38, 2, 13, 109.00, 1008.00, 187.00, 76.00, 'D', '68.429190082645', '2024-04-15 16:49:33'),
(39, 2, 13, 135.00, 1014.00, 169.00, 77.00, 'D', '68.351795081967', '2024-04-15 16:51:49'),
(40, 2, 13, 111.00, 439.00, 172.00, 77.00, 'B', '82.66312295082', '2024-04-15 16:53:44'),
(41, 2, 13, 129.00, 1041.00, 161.00, 82.00, 'C', '69.297917322835', '2024-04-15 16:54:04'),
(42, 2, 13, 74.00, 508.00, 156.00, 42.00, 'C', '75.14975862069', '2024-04-15 16:54:29'),
(43, 2, 13, 144.00, 1617.00, 326.00, 77.00, 'E', '49.79878851192', '2024-04-15 16:54:54'),
(44, 2, 13, 70.00, 375.00, 190.00, 48.00, 'C', '80', '2024-04-15 17:01:08'),
(45, 2, 13, 65.00, 771.00, 158.00, 45.00, 'D', '67.65', '2024-04-15 17:01:20'),
(46, 2, 13, 70.00, 375.00, 190.00, 48.00, 'C', '80', '2024-04-15 17:13:45'),
(47, 2, 13, 65.00, 771.00, 158.00, 45.00, 'D', '68', '2024-04-15 17:14:06'),
(48, 2, 13, 109.00, 654.00, 157.00, 67.00, 'C', '76', '2024-04-15 17:14:24'),
(49, 2, 13, 207.00, 1156.00, 195.00, 89.00, 'D', '66', '2024-04-15 17:14:40'),
(50, 2, 13, 79.00, 970.00, 168.00, 55.00, 'D', '64', '2024-04-15 17:14:58'),
(51, 2, 13, 106.00, 779.00, 155.00, 78.00, 'C', '75', '2024-04-15 17:15:38'),
(52, 2, 13, 109.00, 1008.00, 187.00, 76.00, 'D', '68', '2024-04-15 17:15:57'),
(53, 2, 13, 135.00, 1014.00, 169.00, 77.00, 'D', '68', '2024-04-15 17:16:23'),
(54, 2, 13, 111.00, 439.00, 172.00, 77.00, 'B', '83', '2024-04-15 17:16:43'),
(55, 2, 13, 129.00, 1041.00, 161.00, 82.00, 'C', '69', '2024-04-15 17:16:59'),
(56, 2, 13, 74.00, 508.00, 156.00, 42.00, 'C', '75', '2024-04-15 17:17:17'),
(57, 2, 13, 144.00, 1617.00, 326.00, 77.00, 'E', '50', '2024-04-15 17:17:33'),
(58, 2, 13, 12.00, 12.00, 12.00, 12.00, 'A', '98', '2024-04-16 15:20:56');

-- --------------------------------------------------------

--
-- Table structure for table `callback`
--

CREATE TABLE `callback` (
  `id` int(11) NOT NULL,
  `contact_name` text DEFAULT NULL,
  `job_title` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `company_name` text DEFAULT NULL,
  `site_postcode` text DEFAULT NULL,
  `postcode_office` text DEFAULT NULL,
  `business_sector` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `url`) VALUES
(1, 'Admin', 'admin'),
(2, 'Landlord', 'landlord'),
(3, 'Tenants', 'tenants');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` text DEFAULT NULL,
  `lname` text DEFAULT NULL,
  `username` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `UserAddress` varchar(5000) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `email`, `password`, `phone`, `UserAddress`, `role_id`, `created_at`) VALUES
(2, 'kdj', 'kmcdsm', 'landlord', 'landlord@gmail.com', '$2y$10$4OpoyLGZamyzLWrHAGAHpu6ZfRbhZ6Owrtj49Yqq.fEiFCUiTVTXS', 323, 'Hello', 2, '2024-03-13 10:36:51'),
(3, 'tenants', 'tenants', 'tenants', 'tenants@gmail.com', '$2y$10$urBdFaKKt6s2HKQninq54.u78lVXh7JwyHXZGz30FX8EkSVoem5AK', 3434, 'IUIU', 3, '2024-03-14 16:04:59'),
(4, 'admmin', 'name', 'admin', 'admin@gmail.com', '$2y$10$p9CGGtiDcJSxIpatxxRqrO5GjdQd5gsaeb0NgcFAFrd4rKonwilRq', 464645, 'kjehfjef', 1, '2024-03-14 16:09:06'),
(6, 'tesyttd', 'ytuty', '34343534', 'dfdfgrteba@gmail.com', '$2y$10$iMGuHW0TW8NE4hy1FmeFQeUdzdIT4eAAT7v3Bi9BQ9QjQEDe4qSKe', NULL, 'IUIU', 3, '2024-03-25 21:39:25'),
(9, 'John', 'Smith', 'JohnSmith', 'JohnSmith@gmail.com', '$2y$10$DuWwXZMjt/S8ldeHB4tB3ePGaHUwjbHa6IRUtQDpPOwtfLt0n0VLq', NULL, NULL, 2, '2024-04-15 15:08:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`),
  ADD KEY `building_user` (`user_id`);

--
-- Indexes for table `calculations`
--
ALTER TABLE `calculations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calculation_user` (`user_id`);

--
-- Indexes for table `callback`
--
ALTER TABLE `callback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `calculations`
--
ALTER TABLE `calculations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `callback`
--
ALTER TABLE `callback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `building`
--
ALTER TABLE `building`
  ADD CONSTRAINT `building_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `calculations`
--
ALTER TABLE `calculations`
  ADD CONSTRAINT `calculation_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
