-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 01:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

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
(6, '2022_11_15_112823_create_products_table', 2);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(50,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `file_path`, `description`, `price`, `created_at`, `updated_at`) VALUES
(8, 'iphone16', 'products/JccLbbWZuIc6064OrsWnG1MuxOKNj4IV7VVn61bQ.jpg', 'iphone16', 558400.00, '2022-11-17 06:21:52', '2022-11-22 05:10:22'),
(9, 'apple iphone 23', 'products/EJEIO9P9IGHFOzjUY7miGipVMOBZJZbD0t76wUEy.webp', 'apple iphone 23', 270000.00, '2022-11-18 00:49:36', '2022-11-21 02:11:41');

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
(1, 'anil', 'anil@gmail.com', NULL, '$2y$10$ig8xSsHTf5F.ws1Y.Q36sefJVFJmE6whJkxDt.QNZfYB..wlwGsLu', NULL, '2022-11-02 04:19:08', '2022-11-02 04:19:08'),
(4, 'angel', 'ads@gmail.com', NULL, '$2y$10$qjqVJHAtmBIjikOBxQMWWeUM/E6IRiphb9NvJuS/gC/KjxaEC8LAq', NULL, '2022-11-04 04:01:52', '2022-11-04 04:01:52'),
(9, 'vishal', '44v@gmail.com', NULL, '$2y$10$z2jrHdjA7r7u9H54v1yVwOSTP/L7fxOvgHWdv2GTBxZmUoyzxxpZ6', NULL, '2022-11-04 04:06:58', '2022-11-04 04:06:58'),
(11, 'atharv', 'atharv@gmail.com', NULL, '$2y$10$UE1KoB5VQs55KxPbCNdS7ulRuk0cfA99dd86IVr4RGGMnRHePxNle', NULL, '2022-11-05 02:31:28', '2022-11-05 02:31:28'),
(14, 'prithu;', 'prithul@gmail.com', NULL, '$2y$10$O.KFmNcoYT2w2QBkjdhpRuSZOlWdVjqN3ImtWq56XtcO.4olW9BzK', NULL, '2022-11-05 02:48:49', '2022-11-05 02:48:49'),
(15, 'john', 'john@gmail.com', NULL, '$2y$10$bnVrq/lv12CTrizVfxag0OV9Q5U2T838GTQIXaA/oY5yNodt5bdw6', NULL, '2022-11-05 06:00:57', '2022-11-05 06:00:57'),
(16, 'viraj', 'viraj@gmail.com', NULL, '$2y$10$c3tFCVt5cC1O6DKtAVi08.baFA39jBCmu/QnrGbnOHFO0lXutaVsC', NULL, '2022-11-05 06:03:48', '2022-11-05 06:03:48'),
(17, 'pramansh', 'pramansh@gmail.com', NULL, '$2y$10$n6uHZDXUuM5crHAgbH9jGOI3Q838zS2StVrGHRQ8NddH3029iYbGa', NULL, '2022-11-05 06:07:04', '2022-11-05 06:07:04'),
(18, 'bruce', 'bruce@gmail.com', NULL, '$2y$10$WjvbVT70SAUsfn4JRB9a5ebPJyO2qePtEaaiPQIz160dfUeH6ZGYO', NULL, '2022-11-05 06:17:33', '2022-11-05 06:17:33'),
(19, 'ritik', 'roshan@yahoo.com', NULL, '$2y$10$ULNVj38aQLr47hseH3jfKeaxV5gahq2qwqLAcKyawM18DInvjgpae', NULL, '2022-11-05 06:20:03', '2022-11-05 06:20:03'),
(20, 'vivaan sharma', 'sharma@gmail.com', NULL, '$2y$10$t1Syqkq7NN6bou9OizuWF.B99dMZHzTcRxCoVsF4kr8lvUBpJ2ZeO', NULL, '2022-11-15 01:09:06', '2022-11-15 01:09:06'),
(21, 'peter', 'peter@gmail.com', NULL, '$2y$10$mqQ1wy1Nw7szo1koXuB/8.qcETVxVT3EDnHe5D8WDQKM4JhRz90lO', NULL, '2022-11-15 03:27:19', '2022-11-15 03:27:19'),
(22, 'arjun', 'arjun@yahoo.com', NULL, '$2y$10$SCdd2ZLesjnNjIR4kusoA.C1x2X3yGtXM/rp4/qQkoU1Tzam.fIyi', NULL, '2022-11-15 05:24:51', '2022-11-15 05:24:51'),
(23, 'johnnie', 'johnnie@gmail.com', NULL, '$2y$10$zGYXWIgC.qztM1AKKACqWuFojeC111NJf0zKcxOpRp.JC7mrprGcO', NULL, '2022-11-16 18:40:38', '2022-11-16 18:40:38'),
(24, 'Sharukh', 'Sharukh@gmail.com', NULL, '$2y$10$v5J3M1oEEoSGfuGimpTP6OFMzDQvXug4hGi.YagDgqTmKpz/3ItLu', NULL, '2023-01-03 06:43:42', '2023-01-03 06:43:42');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
