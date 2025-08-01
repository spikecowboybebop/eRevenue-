-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2025 at 06:32 AM
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
-- Database: `erevenue`
--

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `user_id` int(11) NOT NULL,
  `division` varchar(50) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `upazila` varchar(50) DEFAULT NULL,
  `ward_or_union` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_audit_logs`
--

CREATE TABLE `login_audit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `attempt_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `success` tinyint(1) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `two_factor_tokens`
--

CREATE TABLE `two_factor_tokens` (
  `id` int(20) UNSIGNED NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `token` varchar(10) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `used` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `two_factor_tokens`
--

INSERT INTO `two_factor_tokens` (`id`, `user_id`, `token`, `expires_at`, `used`, `created_at`) VALUES
(1, 46, 'c19937', '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password_hash` text NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `role` varchar(50) NOT NULL CHECK (`role` in ('taxpayer','officer','admin')),
  `is_active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_of_birth` date NOT NULL,
  `nid` varchar(30) NOT NULL,
  `tin` varchar(30) NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `address` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `phone`, `password_hash`, `full_name`, `role`, `is_active`, `created_at`, `updated_at`, `date_of_birth`, `nid`, `tin`, `occupation`, `address`) VALUES
(5, 'rahim.bd@example.com', '01711122334', '$2y$10$abcdefghijKLMNOP12345678', 'Md. Rahim Uddin', 'taxpayer', 1, '2025-07-30 20:31:23', '2025-07-30 20:31:23', '1990-03-15', '1990015123456', '123456789012', 'Software Engineer', '12/A Dhanmondi, Dhaka'),
(6, 'shapla.khan@example.com', '01822334455', '$2y$10$abcdef123456GHIJKLMNOpq', 'Shapla Khan', 'taxpayer', 1, '2025-07-30 20:31:23', '2025-07-30 20:31:23', '1987-11-22', '1987112200012', '123456789013', 'Teacher', '45 Sholoshohor, Chattogram'),
(7, 'arif.hasan@example.com', '01933445566', '$2y$10$mnopqrABCDEF456789ghijk', 'Arif Hasan', 'taxpayer', 1, '2025-07-30 20:31:23', '2025-07-30 20:31:23', '1995-07-05', '1995070500009', '123456789014', 'Businessman', '30/A Barisal Sadar, Barisal'),
(8, 'mahin.akter@example.com', '01799887766', '$2y$10$opqrstuvWXYZabcdefghijk', 'Mahin Akter', 'taxpayer', 1, '2025-07-30 20:31:23', '2025-07-30 20:31:23', '1993-01-12', '1993011200098', '123456789015', 'Doctor', '27 K.B. Road, Mymensingh'),
(9, 'tariq.joy@example.com', '01611223344', '$2y$10$xyzABCDELMNOP456789ghij', 'Tariq Joy', 'taxpayer', 1, '2025-07-30 20:31:23', '2025-07-30 20:31:23', '1989-06-18', '1989061800088', '123456789016', 'Engineer', '15 GEC Circle, Sylhet'),
(10, 'aisha.nasrin@example.com', '01555667788', '$2y$10$QWERTYUIOPasdfghjklzxcv', 'Aisha Nasrin', 'taxpayer', 1, '2025-07-30 20:31:23', '2025-07-30 20:31:23', '1991-09-27', '1991092700011', '123456789017', 'Lawyer', '221/A Bangla Bazar, Rajshahi'),
(11, 'fahim.ahmed@example.com', '01888776655', '$2y$10$zxcvbnmlkjhgfdsapoiuytr', 'Fahim Ahmed', 'taxpayer', 1, '2025-07-30 20:31:23', '2025-07-30 20:31:23', '1996-02-10', '1996021000007', '123456789018', 'Freelancer', '5/A Halishahar, Chattogram'),
(12, 'nabila.rima@example.com', '01733445566', '$2y$10$asdfghjklzxcvbnmqwertyu', 'Nabila Rima', 'taxpayer', 1, '2025-07-30 20:31:23', '2025-07-30 20:31:23', '1994-08-03', '1994080300065', '123456789019', 'Civil Servant', '22 Uttara Sector 7, Dhaka'),
(13, 'junaid.hoque@example.com', '01911223344', '$2y$10$qazwsxedcrfvtgbyhnujmik', 'Junaid Hoque', 'taxpayer', 1, '2025-07-30 20:31:23', '2025-07-30 20:31:23', '1985-12-30', '1985123000010', '123456789020', 'Banker', '9/A Sonadanga, Khulna'),
(14, 'sadia.tasnim@example.com', '01666778899', '$2y$10$mnbvcxzlkjhgfdsapoiuytr', 'Sadia Tasnim', 'taxpayer', 1, '2025-07-30 20:31:23', '2025-07-30 20:31:23', '1992-05-19', '1992051900033', '123456789021', 'Lecturer', 'Sector 3, Pabna'),
(46, 'mehrabh330@gmail.com', '01718901372', '$2y$10$ewdxPF6dTHkgKFzBmzOT6ONPVUUwfBrS6HcsoKM3Wk3IIGD/J2jAK', 'MD MEHRAB HOSSAIN KHANDOKER', 'taxpayer', 1, '2025-07-31 20:37:55', '2025-07-31 20:37:55', '2000-12-20', '20031458972', '123456789101', 'Student', '26/1, Hemandra Das Road, Sutrapur, Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `user_sessions`
--

CREATE TABLE `user_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `session_token` text NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `login_audit_logs`
--
ALTER TABLE `login_audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `two_factor_tokens`
--
ALTER TABLE `two_factor_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nid` (`nid`,`tin`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email_2` (`email`,`phone`,`password_hash`) USING HASH;

--
-- Indexes for table `user_sessions`
--
ALTER TABLE `user_sessions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login_audit_logs`
--
ALTER TABLE `login_audit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `two_factor_tokens`
--
ALTER TABLE `two_factor_tokens`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_sessions`
--
ALTER TABLE `user_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `two_factor_tokens`
--
ALTER TABLE `two_factor_tokens`
  ADD CONSTRAINT `two_factor_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
