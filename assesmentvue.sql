-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2022 at 03:29 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assesmentvue`
--

-- --------------------------------------------------------

--
-- Table structure for table `baggage`
--

CREATE TABLE `baggage` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `destination` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `air_freight` double(20,3) NOT NULL,
  `airport_transfer_charges` double(20,3) NOT NULL,
  `warehouse_services_charges` double(20,3) NOT NULL,
  `document_fee` double(11,3) NOT NULL,
  `handling_fee` double(11,3) NOT NULL,
  `inspection_fee` double(11,3) NOT NULL,
  `total` double(20,3) NOT NULL COMMENT 'sum all charges in an table',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baggage`
--

INSERT INTO `baggage` (`id`, `user_id`, `destination`, `air_freight`, `airport_transfer_charges`, `warehouse_services_charges`, `document_fee`, `handling_fee`, `inspection_fee`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'Karachi', 12.760, 55.000, 55.000, 25.000, 25.000, 55.000, 227.760, '2022-01-13 09:27:36', '2022-01-13 09:27:36'),
(2, 1, 'Singapor', 4.000, 55.000, 55.000, 25.000, 25.000, 55.000, 219.000, '2022-01-13 09:35:04', '2022-01-13 09:35:04'),
(3, 1, 'Faislabad', 4314.560, 556.000, 333.600, 25.000, 25.000, 55.000, 5309.160, '2022-01-13 10:02:07', '2022-01-13 10:02:07'),
(4, 1, 'naran', 107.460, 55.000, 55.000, 25.000, 25.000, 55.000, 322.460, '2022-01-13 10:54:30', '2022-01-13 10:54:30'),
(5, 1, 'Karachi', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-13 11:44:55', '2022-01-13 11:44:55'),
(6, 1, 'Lahore d', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-13 11:48:53', '2022-01-13 11:48:53'),
(7, 1, 'Faislabad', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-13 13:42:05', '2022-01-13 13:42:05'),
(8, 1, 'Lahore', 52.760, 55.000, 55.000, 25.000, 25.000, 55.000, 267.760, '2022-01-13 14:08:09', '2022-01-13 14:08:09'),
(9, 1, 'Gujranwala', 456.300, 58.500, 55.000, 25.000, 25.000, 55.000, 674.800, '2022-01-17 13:50:29', '2022-01-17 13:50:29'),
(10, 1, 'Test Karachi', 70.760, 55.000, 55.000, 25.000, 25.000, 55.000, 285.760, '2022-01-17 13:52:06', '2022-01-17 13:52:06'),
(11, 1, 'Lahore', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-17 13:54:46', '2022-01-17 13:54:46'),
(12, 1, 'test 1', 4.000, 55.000, 55.000, 25.000, 25.000, 55.000, 219.000, '2022-01-17 13:55:28', '2022-01-17 13:55:28'),
(13, 1, 'test 11', 4.000, 55.000, 55.000, 25.000, 25.000, 55.000, 219.000, '2022-01-17 13:59:28', '2022-01-17 13:59:28'),
(14, 1, 'test 1122', 4.000, 55.000, 55.000, 25.000, 25.000, 55.000, 219.000, '2022-01-17 14:04:38', '2022-01-17 14:04:38'),
(15, 1, 'was', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-17 14:06:09', '2022-01-17 14:06:09'),
(16, 1, 'qaw', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-17 14:08:31', '2022-01-17 14:08:31'),
(17, 1, 'qw', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-17 14:09:08', '2022-01-17 14:09:08'),
(18, 1, 'zaq', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-17 14:12:19', '2022-01-17 14:12:19'),
(19, 1, '11', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-17 14:26:51', '2022-01-17 14:26:51'),
(20, 1, '11', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-17 14:26:56', '2022-01-17 14:26:56'),
(21, 1, '22', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-17 14:27:40', '2022-01-17 14:27:40'),
(22, 1, '21', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-17 14:28:43', '2022-01-17 14:28:43'),
(23, 1, 'Faislabad', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-17 14:29:27', '2022-01-17 14:29:27'),
(24, 1, 'Test Karachi', 0.002, 55.000, 55.000, 25.000, 25.000, 55.000, 215.002, '2022-01-18 08:11:52', '2022-01-18 08:11:52'),
(25, 1, 'test 1', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-18 08:12:13', '2022-01-18 08:12:13'),
(26, 1, 'Lahore', 6.760, 55.000, 55.000, 25.000, 25.000, 55.000, 221.760, '2022-01-19 08:41:59', '2022-01-19 08:41:59'),
(27, 1, 'Lahore', 0.002, 55.000, 55.000, 25.000, 25.000, 55.000, 215.002, '2022-01-19 09:16:31', '2022-01-19 09:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `baggage_details`
--

CREATE TABLE `baggage_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `baggage_id` int(11) NOT NULL,
  `item_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` double(10,2) NOT NULL,
  `weight` double(10,2) NOT NULL,
  `length` double(10,2) NOT NULL,
  `breath` double(10,2) NOT NULL,
  `height` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baggage_details`
--

INSERT INTO `baggage_details` (`id`, `baggage_id`, `item_name`, `description`, `quantity`, `weight`, `length`, `breath`, `height`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'H', 'Description One', 2.00, 3.38, 10.00, 3.00, 3.00, 16.00, '2022-01-13 09:27:36', '2022-01-13 09:27:36'),
(2, 1, 'a', 'as', 2.00, 3.00, 3.00, 3.00, 3.00, 9.00, '2022-01-13 09:27:36', '2022-01-13 09:27:36'),
(3, 2, 'I', 'Test', 2.00, 2.00, 2.00, 2.00, 1.00, 5.00, '2022-01-13 09:35:04', '2022-01-13 09:35:04'),
(4, 3, 'i', 'item des', 2.00, 2.00, 2.00, 12.00, 22.00, 36.00, '2022-01-13 10:02:07', '2022-01-13 10:02:07'),
(5, 3, 't', 'nlknl', 123.00, 2222.00, 12.00, 12.00, 12.00, 36.00, '2022-01-13 10:02:07', '2022-01-13 10:02:07'),
(6, 4, 'K', 'Description One', 21.00, 21.00, 21.00, 21.00, 21.00, 63.00, '2022-01-13 10:54:30', '2022-01-13 10:54:30'),
(7, 4, 'i', 'as', 21.00, 33.00, 2.00, 2.00, 2.00, 6.00, '2022-01-13 10:54:30', '2022-01-13 10:54:30'),
(8, 5, 'B', 'as', 1.00, 3.38, 10.00, 2.00, 2.00, 14.00, '2022-01-13 11:44:55', '2022-01-13 11:44:55'),
(9, 6, 'H', 'wqeqw', 5.00, 3.38, 10.00, 2.00, 3.00, 15.00, '2022-01-13 11:48:53', '2022-01-13 11:48:53'),
(10, 7, 'p', 'Description One', 2.00, 3.38, 10.00, 3.00, 3.00, 16.00, '2022-01-13 13:42:05', '2022-01-13 13:42:05'),
(11, 8, 'Item Onw', 'description One', 2.00, 23.00, 222.00, 22.00, 22.00, 266.00, '2022-01-13 14:08:09', '2022-01-13 14:08:09'),
(12, 8, 'Chem Reader 733 Plus', 'as', 2.00, 3.38, 10.00, 33.00, 33.00, 76.00, '2022-01-13 14:08:09', '2022-01-13 14:08:09'),
(13, 9, 'Item One', 'Item One', 222.00, 12.00, 12.00, 12.00, 12.00, 36.00, '2022-01-17 13:50:29', '2022-01-17 13:50:29'),
(14, 9, 'Item two', 'Item two', 222.00, 222.00, 112.00, 11.00, 22.00, 145.00, '2022-01-17 13:50:29', '2022-01-17 13:50:29'),
(15, 10, 'as', 'asdsa', 2.00, 3.38, 10.00, 3.00, 3.00, 16.00, '2022-01-17 13:52:06', '2022-01-17 13:52:06'),
(16, 10, 'Chem Reader 733 Plus', 'Description One', 23.00, 32.00, 22.00, 2.00, 1.00, 25.00, '2022-01-17 13:52:06', '2022-01-17 13:52:06'),
(17, 11, 'peach', 'assadsa', 2.00, 3.38, 10.00, 1.00, 1.00, 12.00, '2022-01-17 13:54:46', '2022-01-17 13:54:46'),
(18, 12, 'test 1', 'test 1', 2.00, 2.00, 2.00, 2.00, 2.00, 6.00, '2022-01-17 13:55:28', '2022-01-17 13:55:28'),
(19, 13, 'e', 'sd', 2.00, 2.00, 2.00, 12.00, 21.00, 35.00, '2022-01-17 13:59:28', '2022-01-17 13:59:28'),
(20, 14, 'Chem Reader 733 Plus', 'Description One', 2.00, 2.00, 2.00, 2.00, 2.00, 6.00, '2022-01-17 14:04:38', '2022-01-17 14:04:38'),
(21, 15, 'Chem Reader 733 Plus', 'Description One', 2.00, 3.38, 10.00, 2.00, 2.00, 14.00, '2022-01-17 14:06:09', '2022-01-17 14:06:09'),
(22, 16, 'Chem Reader 733 Plus', 'Description One', 2.00, 3.38, 10.00, 2.00, 2.00, 14.00, '2022-01-17 14:08:31', '2022-01-17 14:08:31'),
(23, 17, 'Chem Reader 733 Plus', 'Description One', 2.00, 3.38, 10.00, 2.00, 2.00, 14.00, '2022-01-17 14:09:08', '2022-01-17 14:09:08'),
(24, 18, 'Chem Reader 733 Plus', 'Description One', 2.00, 3.38, 10.00, 2.00, 2.00, 14.00, '2022-01-17 14:12:19', '2022-01-17 14:12:19'),
(25, 19, 'Chem Reader 733 Plus', 'Description One', 2.00, 3.38, 10.00, 2.00, 2.00, 14.00, '2022-01-17 14:26:51', '2022-01-17 14:26:51'),
(26, 20, 'Chem Reader 733 Plus', 'Description One', 2.00, 3.38, 10.00, 2.00, 2.00, 14.00, '2022-01-17 14:26:56', '2022-01-17 14:26:56'),
(27, 21, 'qw', 'Description One', 2.00, 3.38, 10.00, 2.00, 2.00, 14.00, '2022-01-17 14:27:40', '2022-01-17 14:27:40'),
(28, 22, 'Chem Reader 733 Plus', 'Description One', 2.00, 3.38, 10.00, 2.00, 2.00, 14.00, '2022-01-17 14:28:43', '2022-01-17 14:28:43'),
(29, 23, 'Item One', 'Description One', 10.00, 3.38, 10.00, 2.00, 2.00, 14.00, '2022-01-17 14:29:27', '2022-01-17 14:29:27'),
(30, 24, '10', 'Description One', 2.00, 0.00, 23.00, 3.00, 3.00, 29.00, '2022-01-18 08:11:52', '2022-01-18 08:11:52'),
(31, 25, 'Chem Reader 733 Plus', 'Description One', 2.00, 3.38, 0.00, 33.00, 3.00, 36.00, '2022-01-18 08:12:13', '2022-01-18 08:12:13'),
(32, 26, 'Chem Reader 733 Plus', 'as', 2.00, 3.38, 10.00, 3.00, 3.00, 16.00, '2022-01-19 08:41:59', '2022-01-19 08:41:59'),
(33, 27, 'Chem Reader 733 Plus', 'Description One', 2.00, 0.00, 10.00, 5.00, 5.00, 20.00, '2022-01-19 09:16:31', '2022-01-19 09:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_11_141215_create_baggage_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Junaid', 'junaidwahid116@gmail.com', NULL, '$2y$10$PyH06J9wxim6hn.8j2ux8O0P/j9yqeZo0xalsKBGtzW6H24WqVCdm', NULL, '2022-01-11 13:20:51', '2022-01-11 13:20:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baggage`
--
ALTER TABLE `baggage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baggage_details`
--
ALTER TABLE `baggage_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baggage`
--
ALTER TABLE `baggage`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `baggage_details`
--
ALTER TABLE `baggage_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
