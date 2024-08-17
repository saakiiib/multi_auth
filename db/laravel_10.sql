-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2024 at 07:39 AM
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
-- Database: `laravel_10`
--

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(191) DEFAULT NULL,
  `company_logo` varchar(191) DEFAULT NULL,
  `footer_logo` varchar(191) DEFAULT NULL,
  `fav_icon` varchar(191) DEFAULT NULL,
  `address1` varchar(191) DEFAULT NULL,
  `address2` varchar(191) DEFAULT NULL,
  `phone1` varchar(191) DEFAULT NULL,
  `phone2` varchar(191) DEFAULT NULL,
  `phone3` varchar(191) DEFAULT NULL,
  `phone4` varchar(191) DEFAULT NULL,
  `email1` varchar(191) DEFAULT NULL,
  `email2` varchar(191) DEFAULT NULL,
  `website` varchar(191) DEFAULT NULL,
  `footer_content` varchar(191) DEFAULT NULL,
  `footer_link` varchar(191) DEFAULT NULL,
  `opening_time` varchar(255) DEFAULT NULL,
  `header_content` varchar(191) DEFAULT NULL,
  `google_play_link` varchar(191) DEFAULT NULL,
  `google_appstore_link` varchar(191) DEFAULT NULL,
  `tawkto` varchar(191) DEFAULT NULL,
  `facebook` varchar(191) DEFAULT NULL,
  `twitter` varchar(191) DEFAULT NULL,
  `instagram` varchar(191) DEFAULT NULL,
  `linkedin` varchar(191) DEFAULT NULL,
  `youtube` varchar(191) DEFAULT NULL,
  `google_map` longtext DEFAULT NULL,
  `about_us` longtext DEFAULT NULL,
  `currency` varchar(191) DEFAULT NULL,
  `created_by` varchar(191) DEFAULT NULL,
  `updated_by` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`id`, `company_name`, `company_logo`, `footer_logo`, `fav_icon`, `address1`, `address2`, `phone1`, `phone2`, `phone3`, `phone4`, `email1`, `email2`, `website`, `footer_content`, `footer_link`, `opening_time`, `header_content`, `google_play_link`, `google_appstore_link`, `tawkto`, `facebook`, `twitter`, `instagram`, `linkedin`, `youtube`, `google_map`, `about_us`, `currency`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Becker Mccarty Associates', '135561_company_logo.jpg', '766640_footer_logo.jpg', '157191_fav_icon.jpg', '997 White First Parkway', 'Cupidatat mollit mag', '+1 (957) 718-5451', '+1 (396) 321-2312', '+1 (974) 578-1844', '+1 (511) 808-4318', 'kenih@mailinator.com', 'ryjimat@mailinator.com', NULL, 'Impedit necessitati', 'Cupiditate modi a an', '07:08', NULL, 'Ullamco Nam voluptas', 'Architecto quis nisi', 'Iusto qui sit et do', 'Ut dignissimos aut s', 'Aliquip et fugit pa', 'Modi aspernatur et l', 'Et similique sit et', 'Repudiandae aliquam', 'Fugit voluptatem la', 'Sapiente ea magnam a', '৳', NULL, NULL, NULL, '2024-08-16 23:31:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2024_08_17_051502_create_company_details_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `is_type` tinyint(4) NOT NULL DEFAULT 0,
  `phone` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `nid_image` varchar(255) DEFAULT NULL,
  `house_number` varchar(255) DEFAULT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `town` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `about` longtext DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `google` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `updated_by` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `email_verified_at`, `password`, `is_type`, `phone`, `address`, `nid`, `nid_image`, `house_number`, `street_name`, `town`, `postcode`, `country`, `photo`, `about`, `facebook`, `twitter`, `google`, `linkedin`, `whatsapp`, `status`, `updated_by`, `created_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', NULL, '$2y$10$wXr9dGTSurA4xvc9PfR2jOkdnJHLA80GWEeOgcPrr9qBFyagaAUe6', 1, '01676026364', NULL, NULL, NULL, 'H-231', 'DUKE Lane', 'modern city', '232RBT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-06-01 05:47:52', '2024-06-01 05:47:52'),
(2, 'Manager', 'Manager', 'manager@gmail.com', NULL, '$2y$10$K3H0/cG5iZYVHtbKjrneH.8UjT7tfGbavBaTIV/wOHERl39zJsAxe', 2, '01676026364', NULL, NULL, NULL, 'H-231', 'DUKE Lane', 'modern city', '232RBT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-06-01 05:47:52', '2024-06-01 05:47:52'),
(3, 'User', 'User', 'user@gmail.com', NULL, '$2y$10$s9FSc3l9CLpAHOfcuNeZwOW1IosqR/imGVrkOlOslGGPhTkZAGDYC', 0, '01676026364', NULL, NULL, NULL, 'H-231', 'DUKE Lane', 'modern city', '232RBT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-06-01 05:47:52', '2024-06-01 05:47:52'),
(5, 'Xenos Mcbride', NULL, 'zujujylanu@mailinator.com', NULL, '$2y$10$75aTJThCp4QV8CUbx2F/U.aBM8hmQx17uvYOInxC7nRF00paHw9zS', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '2024-08-16 23:00:19', '2024-08-16 23:00:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
