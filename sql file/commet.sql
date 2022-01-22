-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2022 at 05:42 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `commet`
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
(53, '2014_10_12_000000_create_users_table', 1),
(54, '2014_10_12_100000_create_password_resets_table', 1),
(55, '2019_08_19_000000_create_failed_jobs_table', 1),
(56, '2021_04_03_151335_create_roles_table', 1),
(58, '2021_04_05_172541_create_post_categories_table', 2),
(59, '2021_04_07_084605_create_post_tags_table', 3),
(61, '2021_04_05_103116_create_posts_table', 4),
(62, '2021_04_15_135624_create_post_category_rel_table', 5),
(63, '2021_04_15_153816_create_post_tag_rel_table', 6),
(64, '2021_12_30_165648_create_product_cats_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shemoon8@gmail.com', '$2y$10$.TXesLXPavLrRD0mP.FeEeH52MrMNKbS1BC0tUKSPWxH1EgWtiMIO', '2021-04-04 02:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `trash` tinyint(1) NOT NULL DEFAULT 0,
  `posted_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `description`, `featured`, `status`, `trash`, `posted_by`, `created_at`, `updated_at`) VALUES
(14, 1, '১৪টি বিদেশি উচ্চশিক্ষা প্রতিষ্ঠান দেশে কার্যক্রম চালু করতে চায়', '14ti-bidesi-uccsiksha-prtishthan-dese-karzkrm-calu-krte-cay', '<p>শিক্ষা মন্ত্রণালয় ও ইউজিসি সূত্রে জানা গেছে, বিধিমালার পর ১৪টি বিদেশি উচ্চশিক্ষা প্রতিষ্ঠান এ দেশে শিক্ষা কার্যক্রম চালুর আবেদন করে। এ দেশের বিভিন্ন প্রতিষ্ঠানের নামেই মূলত এই আবেদনগুলো করা হয়। এর মধ্যে অস্ট্রেলিয়ার মনাশ কলেজের স্টাডি সেন্টারের জন্য আবেদন করে এডুকো বাংলাদেশ লিমিটেড। এডুকো প্রস্তাবিত এলাকা দিয়েছে বসুন্ধরায়। লন্ডনের ইউনিভার্সিটি অব ডার্বের স্টাডি সেন্টার করার জন্য আবেদন করে বিএসি ইন্টারন্যাশনাল। তারা প্রস্তাবিত ঠিকানা দিয়েছে ধানমন্ডি। গুলশান-২ এলাকার জন্য লন্ডন স্কুল অব কমার্সের স্টাডি সেন্টারের আবেদন করেছে এশিয়ান সেন্টার ফর ম্যানেজমেন্ট অ্যান্ড ইনফরমেশন টেকনোলজি নামে একটি প্রতিষ্ঠান।</p>', '{\"post_type\":\"image\",\"image\":\"2824843dac4d47f43cdaece773843592.jpg\",\"gallery_image\":[],\"post_audio\":null,\"post_video\":\"\"}', 1, 0, 1, '2021-04-22 04:00:54', '2022-01-02 16:38:56'),
(17, 1, 'TEST  gallery images', 'test-gallery-images', '<p>ttttttttttttttttttt</p>\r\n\r\n<p>hiooooooooooooooooooo</p>', '{\"post_type\":\"gallery\",\"image\":null,\"gallery_image\":[],\"post_audio\":null,\"post_video\":\"\"}', 1, 1, 1, '2022-01-02 04:01:26', '2022-01-02 16:08:33'),
(22, 1, 'Bangladesh cricket academy', 'bangladesh-cricket-academy', '<pre>\r\n<code>\r\n        $imagesize  = $file[$i]-&gt;getClientSize();\r\n        $imageexten = $file[$i]-&gt;getClientOriginalExtension();\r\n        $product_image_count = count($request-&gt;productimagename)</code></pre>\r\n\r\n<p><code>&nbsp; &nbsp; &nbsp; &nbsp; tgid 90</code></p>', '{\"post_type\":\"video\",\"image\":null,\"gallery_image\":[],\"post_audio\":null,\"post_video\":\"https:\\/\\/www.youtube.com\\/embed\\/i0ZabxXmH4Y\"}', 1, 0, 1, '2022-01-02 10:44:55', '2022-01-02 13:09:08'),
(23, 1, 'Twitter Video', 'twitter-video', '<p>sdfghjkl;</p>', '{\"post_type\":\"video\",\"image\":null,\"gallery_image\":[],\"post_audio\":null,\"post_video\":\"https:\\/\\/www.youtube.com\\/embed\\/i0ZabxXmH4Y\"}', 1, 0, 1, '2022-01-02 11:09:36', '2022-01-02 16:18:41'),
(25, 1, 'Gallery Post Example', 'gallery-post-example', '<p>ieruiou&nbsp; irt t ug wrtgui rwtu rwuo ritu ru wriu&nbsp; wtiu&nbsp; witu&nbsp;&nbsp;</p>', '{\"post_type\":\"gallery\",\"image\":null,\"gallery_image\":[],\"post_audio\":null,\"post_video\":\"\"}', 1, 0, 1, '2022-01-02 16:09:26', '2022-01-02 16:09:38'),
(26, 1, '65rc75v', '65rc75v', '<p>4cy65c 76 5675 7 766r trfytfh trf&nbsp;</p>', '{\"post_type\":\"gallery\",\"image\":null,\"gallery_image\":[],\"post_audio\":null,\"post_video\":\"\"}', 1, 0, 1, '2022-01-02 16:12:15', '2022-01-02 16:12:27'),
(27, 1, 'c hvkjh v', 'c-hvkjh-v', '<p>fv6cbn</p>', '{\"post_type\":\"gallery\",\"image\":null,\"gallery_image\":[],\"post_audio\":null,\"post_video\":\"\"}', 1, 0, 1, '2022-01-02 16:16:06', '2022-01-02 16:16:17'),
(28, 1, 'yuiiip', 'yuiiip', '<p>45xrycy&nbsp;</p>', '{\"post_type\":\"gallery\",\"image\":null,\"gallery_image\":[\"bb6914a8015040ee12b9a863d98ebd4e.jpg\",\"086c951f79fbc8699f3873bf762a04d0.jpg\",\"7aec8cd6bd157c679d22974a648f940a.jpg\",\"4fe38df72b03e22bdff220b036131c10.jpg\"],\"post_audio\":null,\"post_video\":\"\"}', 1, 0, 1, '2022-01-02 16:37:07', '2022-01-02 16:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(17, 'Bangladesh', 'bangladesh', 1, '2021-04-15 09:26:32', '2021-04-15 09:26:32'),
(18, 'International', 'international', 1, '2021-04-15 09:26:54', '2021-04-15 09:26:54'),
(19, 'Sports', 'sports', 1, '2021-04-15 09:27:13', '2021-04-15 09:27:13'),
(20, 'Business', 'business', 1, '2021-04-15 09:27:33', '2021-04-15 09:27:33'),
(21, 'Youth', 'youth', 1, '2021-04-15 09:27:43', '2021-04-15 09:27:43'),
(22, 'Opinion', 'opinion', 1, '2021-04-15 09:28:09', '2021-04-15 09:28:09'),
(23, 'EPS', 'eps', 1, '2021-12-29 16:43:02', '2021-12-29 16:43:02'),
(24, 'India', 'india', 1, '2022-01-02 09:55:01', '2022-01-02 09:56:14');

-- --------------------------------------------------------

--
-- Table structure for table `post_category_rel`
--

CREATE TABLE `post_category_rel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `cat_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category_rel`
--

INSERT INTO `post_category_rel` (`id`, `post_id`, `cat_id`, `created_at`, `updated_at`) VALUES
(5, 10, 17, NULL, NULL),
(6, 10, 22, NULL, NULL),
(9, 12, 18, NULL, NULL),
(11, 13, 18, NULL, NULL),
(12, 13, 21, NULL, NULL),
(13, 13, 22, NULL, NULL),
(14, 14, 17, NULL, NULL),
(15, 15, 20, NULL, NULL),
(16, 15, 21, NULL, NULL),
(17, 16, 18, NULL, NULL),
(18, 16, 21, NULL, NULL),
(19, 16, 22, NULL, NULL),
(26, 11, 23, NULL, NULL),
(27, 12, 17, NULL, NULL),
(28, 12, 19, NULL, NULL),
(29, 11, 17, NULL, NULL),
(30, 11, 21, NULL, NULL),
(31, 17, 18, NULL, NULL),
(32, 17, 19, NULL, NULL),
(33, 18, 17, NULL, NULL),
(34, 19, 22, NULL, NULL),
(35, 20, 19, NULL, NULL),
(36, 18, 19, NULL, NULL),
(37, 18, 21, NULL, NULL),
(38, 21, 17, NULL, NULL),
(39, 22, 17, NULL, NULL),
(40, 22, 19, NULL, NULL),
(41, 22, 21, NULL, NULL),
(42, 23, 17, NULL, NULL),
(43, 24, 19, NULL, NULL),
(44, 14, 19, NULL, NULL),
(45, 23, 22, NULL, NULL),
(46, 23, 23, NULL, NULL),
(47, 23, 19, NULL, NULL),
(49, 25, 17, NULL, NULL),
(50, 25, 19, NULL, NULL),
(51, 26, 17, NULL, NULL),
(52, 27, 17, NULL, NULL),
(53, 23, 21, NULL, NULL),
(54, 23, 18, NULL, NULL),
(55, 28, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Politics', 'politics', 1, '2021-04-15 09:29:30', '2021-04-15 09:29:30'),
(5, 'Student', 'student', 1, '2021-04-15 09:30:00', '2021-04-15 09:30:00'),
(6, 'Covid-19', 'covid-19', 1, '2021-04-15 09:30:17', '2021-04-15 09:30:17'),
(7, 'Accident', 'accident', 1, '2021-04-15 09:30:39', '2021-04-15 09:30:39'),
(8, 'crime and law', 'crime-and-law', 1, '2021-04-15 09:31:11', '2021-04-15 09:31:11'),
(9, 'cricket', 'cricket', 1, '2021-04-15 10:06:10', '2021-04-15 10:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag_rel`
--

CREATE TABLE `post_tag_rel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag_rel`
--

INSERT INTO `post_tag_rel` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(11, 18, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_cats`
--

CREATE TABLE `product_cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_cats`
--

INSERT INTO `product_cats` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'mobile', 1, '2021-12-30 12:01:48', '2021-12-30 12:01:48'),
(2, 'Mens T-shirt', 'mens-t-shirt', 1, '2021-12-30 12:03:26', '2021-12-30 12:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
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
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 2,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.jpg',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_id`, `username`, `email`, `phone_number`, `email_verified_at`, `password`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'shajedul', 2, 'shajedul89', 'shemoon8@gmail.com', '01912586164', NULL, '$2y$10$QBbMIIWvLXxv81nhAxQn9.BhjzBnQscSvjHMr8AIbMPIFtpubdRga', 'avatar.jpg', 1, NULL, '2021-04-03 16:59:18', '2021-04-03 16:59:18'),
(2, 'Shajedul islam shimun', 2, NULL, 'rlinfobd@gmail.com', '+8801912586166', NULL, '$2y$10$pficQ5Jxhh7ndP7AInha9OtI2aFIqMAthGQVobSRpYFXVW0zfdOHq', 'avatar.jpg', 1, NULL, '2021-04-04 05:46:54', '2021-04-04 05:46:54'),
(3, 'Rakibul Hasan', 2, NULL, 'rlinfobd1@gmail.com', '01235969636', NULL, '$2y$10$K70W99mmZnjokiTpC0PW/eUeTLASnCnWJ3WXeOz/.i0jqJxA37BQu', 'avatar.jpg', 1, NULL, '2021-04-04 05:53:33', '2021-04-04 05:53:33');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_categories_name_unique` (`name`);

--
-- Indexes for table `post_category_rel`
--
ALTER TABLE `post_category_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_tags_name_unique` (`name`);

--
-- Indexes for table `post_tag_rel`
--
ALTER TABLE `post_tag_rel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_cats`
--
ALTER TABLE `product_cats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_cats_name_unique` (`name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `post_category_rel`
--
ALTER TABLE `post_category_rel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_tag_rel`
--
ALTER TABLE `post_tag_rel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_cats`
--
ALTER TABLE `product_cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
