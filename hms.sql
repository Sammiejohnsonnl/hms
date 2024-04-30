-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2024 at 02:32 PM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(11) NOT NULL,
  `F_name` varchar(255) NOT NULL,
  `L_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `F_name`, `L_name`, `email`, `phone_no`) VALUES
(1, 'Jotaro', 'Kujo', 'jotaro.kujo@gmail.com', '3234567890'),
(2, 'Semi', 'Lovato', 'semi.lovato@gmail.com', '5987654321');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_id` int(11) NOT NULL,
  `Department_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_id`, `Department_name`) VALUES
(1, 'Doctor'),
(2, 'Nurse'),
(3, 'Front Desk Staff');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `Doctor_id` int(11) NOT NULL,
  `Department_id` int(11) DEFAULT NULL,
  `F_name` varchar(255) NOT NULL,
  `L_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`Doctor_id`, `Department_id`, `F_name`, `L_name`, `email`, `phone_no`) VALUES
(1, 1, 'John', 'Doe', 'john.doe@gmail.com', '1234567890'),
(2, 1, 'Jane', 'Smith', 'jane.smith@gmail.com', '0987654321');

-- --------------------------------------------------------

--
-- Table structure for table `front_desk_staff`
--

CREATE TABLE `front_desk_staff` (
  `Staff_id` int(11) NOT NULL,
  `Department_id` int(11) DEFAULT NULL,
  `F_name` varchar(255) NOT NULL,
  `L_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `front_desk_staff`
--

INSERT INTO `front_desk_staff` (`Staff_id`, `Department_id`, `F_name`, `L_name`, `email`, `phone_no`) VALUES
(1, 3, 'Charlie', 'Brown', 'charlie.brown@gmail.com', '4567890123'),
(2, 3, 'David', 'Davis', 'david.davis@gmail.com', '5678901234');

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `Nurse_id` int(11) NOT NULL,
  `Department_id` int(11) DEFAULT NULL,
  `F_name` varchar(255) NOT NULL,
  `L_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nurses`
--

INSERT INTO `nurses` (`Nurse_id`, `Department_id`, `F_name`, `L_name`, `email`, `phone_no`) VALUES
(1, 2, 'Alice', 'Johnson', 'alice.johnson@gmail.com', '2345678901'),
(2, 2, 'Bob', 'Williams', 'bob.williams@gmail.com', '3456789012');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_id` int(11) NOT NULL,
  `F_name` varchar(255) NOT NULL,
  `L_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_id`, `F_name`, `L_name`, `email`, `phone_no`) VALUES
(1, 'Jebron', 'Lames', 'jebron.lames@gmail.com', '1237567890'),
(2, 'Bames', 'Jond', 'bames.jond@gmail.com', '2345978901'),
(3, 'Corn', 'Cena', 'corn.cena@gmail.com', '3456729012'),
(4, 'Jichael', 'Mackson', 'jichael.mackson@gmail.com', '4567810123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`Doctor_id`),
  ADD KEY `Department_id` (`Department_id`);

--
-- Indexes for table `front_desk_staff`
--
ALTER TABLE `front_desk_staff`
  ADD PRIMARY KEY (`Staff_id`),
  ADD KEY `Department_id` (`Department_id`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`Nurse_id`),
  ADD KEY `Department_id` (`Department_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `Doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `front_desk_staff`
--
ALTER TABLE `front_desk_staff`
  MODIFY `Staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nurses`
--
ALTER TABLE `nurses`
  MODIFY `Nurse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`Department_id`) REFERENCES `department` (`Department_id`);

--
-- Constraints for table `front_desk_staff`
--
ALTER TABLE `front_desk_staff`
  ADD CONSTRAINT `front_desk_staff_ibfk_1` FOREIGN KEY (`Department_id`) REFERENCES `department` (`Department_id`);

--
-- Constraints for table `nurses`
--
ALTER TABLE `nurses`
  ADD CONSTRAINT `nurses_ibfk_1` FOREIGN KEY (`Department_id`) REFERENCES `department` (`Department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
