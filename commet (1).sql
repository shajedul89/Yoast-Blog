-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2022 at 06:36 PM
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_04_03_151335_create_roles_table', 1),
(5, '2021_04_05_103116_create_posts_table', 1),
(6, '2021_04_05_172541_create_post_categories_table', 1),
(7, '2021_04_07_084605_create_post_tags_table', 1),
(8, '2021_04_15_135624_create_post_category_rel_table', 1),
(9, '2021_04_15_153816_create_post_tag_rel_table', 1),
(10, '2021_12_30_165648_create_product_cats_table', 1);

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
(1, 1, 'Mominul Liton propel Bangladesh in first New Zealand Test', 'mominul-liton-propel-bangladesh-in-first-new-zealand-test', '<p>Half-centuries for a composed Mominul Haque and a feisty Liton Das had Bangladesh on the verge of a first-innings lead over New Zealand at tea on day three of the first Test on Monday.</p>\r\n\r\n<p>The tourists were a healthy 307 for four in reply to New Zealand&#39;s 328 at Mount Maunganui.</p>\r\n\r\n<p>Captain Mominul faced 175 deliveries for his 61 while Das reached 51 off 97 balls on a track favourable for batting under a hot sun and cloudless sky. The pair put on 104 for the unbroken fifth wicket.</p>\r\n\r\n<p>Das had been rollicking along to reach 40 from 46 balls before slowing down as his 11th half-century neared.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bangladesh\'s batsman Liton Das plays a shot during day three of the first cricket Test match between New Zealand and Bangladesh at the Bay Oval in Mount Maunganui on 3 January, 2022\" src=\"https://images.prothomalo.com/prothomalo-english%2F2022-01%2F94a74283-c8d1-4243-a59d-2d6a9f7aac1a%2F460818_01_02.jpg?auto=format%2Ccompress&amp;format=webp&amp;w=640&amp;dpr=1.0\" /></p>\r\n\r\n<p>Jamieson trapped Mominul in front with the second ball after lunch but the ball had pitched just outside leg stump, and a Mominul edge off Trent Boult landed just short of Ross Taylor.</p>\r\n\r\n<p>Boult did have success with the wicket of Mushfiqur Rahim, bowled for 12, but had trouble trying to contain Das, who hit the left-armer to the fence on both sides of the wicket.</p>', '{\"post_type\":\"image\",\"image\":\"180598bdb876c693d8d5527cc332a4f8.jpg\",\"gallery_image\":[],\"post_audio\":null,\"post_video\":\"\"}', 1, 0, 1, '2022-01-03 05:02:35', '2022-01-22 16:05:43'),
(2, 1, '\'Spider-Man\' stays strong, again topping N America box office', '\'Spider-Man\'-stays-strong,-again-topping-N-America-box-office', '<p>&quot;Spider-Man: No Way Home&quot; again dominated in North American theaters with an estimated $52.7 million weekend take, while topping the $600 million mark domestically in its third week out, industry watcher Exhibitor Relations said Sunday.</p>\r\n\r\n<p>The strong results for Sony&#39;s superhero sequel -- last weekend it surpassed the $1 billion mark globally -- have breathed welcome life into the movie industry as it battles to recover from the Covid-19 pandemic. British actor Tom Holland stars as the Marvel webslinger.</p>', '{\"post_type\":\"gallery\",\"image\":\"\",\"gallery_image\":[\"43b2abfd065a598d72f8f1de389f1126.jpg\",\"c140ea484d7c7e6982016bd29bf016f1.jpg\",\"78bc59f0ca3a38c734c7d93532927e2e.jpg\"],\"post_audio\":null,\"post_video\":\"\"}', 1, 0, 1, '2022-01-03 05:11:15', '2022-01-03 05:11:15'),
(3, 1, '16 IU students selected for science, tech fellowship', '16-IU-students-selected-for-science,-tech-fellowship', '<p>A total of 16 students of different departments of Islamic University (IU) in Kushtia have been selected for science and technology fellowship 2021-23 under the science and technology ministry, reports UNB.</p>\r\n\r\n<p>IU acting registrar M Ataur Rahman said he received a letter from the ministry in this regard on Sunday.</p>', '{\"post_type\":\"video\",\"image\":\"\",\"gallery_image\":[],\"post_audio\":null,\"post_video\":\"https:\\/\\/www.youtube.com\\/embed\\/iU9GIyG5i94\"}', 1, 0, 1, '2022-01-03 05:13:21', '2022-01-03 05:13:21'),
(4, 1, 'Concern over \'critical\' Palestinian prisoner on hunger strike', 'Concern-over-\'critical\'-Palestinian-prisoner-on-hunger-strike', '<p>A Palestinian prisoner languishing in hospital after an extensive hunger strike teetered close to death Sunday, sparking international concern and Palestinian demands that Israel release him from detention without charges.</p>\r\n\r\n<p>Hisham Abu Hawash, a 40-year-old member of the Islamic Jihad militant movement, began refusing food in August to protest Israel holding him without charges or trial.</p>', '{\"post_type\":\"image\",\"image\":\"2c4c7da9d556152fc03632082b46b7d7.jpg\",\"gallery_image\":[],\"post_audio\":null,\"post_video\":\"\"}', 1, 0, 1, '2022-01-03 05:15:34', '2022-01-03 05:15:34'),
(5, 1, 'Lionel Messi tests positive for Covid: PSG', 'Lionel-Messi-tests-positive-for-Covid:-PSG', '<p>Messi has scored only one goal in 11 league appearances for PSG, although he has netted five times in the Champions League.</p>\r\n\r\n<p>He will miss Monday&#39;s cup tie and will likely also be sidelined for PSG&#39;s first Ligue 1 match since the winter break, at Lyon next Sunday.</p>\r\n\r\n<p>The other players to test positive were full-back Juan Bernat, back-up goalkeeper Sergio Rico and teenage midfielder Nathan Bitumazala.</p>', '{\"post_type\":\"image\",\"image\":\"76a6ea5e62be61c380e7c1d1ae0ccdf8.jpg\",\"gallery_image\":[],\"post_audio\":null,\"post_video\":\"\"}', 1, 0, 1, '2022-01-03 05:17:51', '2022-01-03 05:17:51');

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
(3, 'sports', 'sports', 1, '2022-01-03 04:50:22', '2022-01-03 04:50:22'),
(4, 'Business', 'business', 1, '2022-01-03 04:52:22', '2022-01-03 04:52:22'),
(5, 'bangladesh', 'bangladesh', 1, '2022-01-03 04:53:19', '2022-01-03 04:53:19'),
(6, 'International', 'international', 1, '2022-01-03 04:53:38', '2022-01-03 04:53:38'),
(7, 'Opinion', 'opinion', 1, '2022-01-03 04:53:50', '2022-01-03 04:53:50'),
(8, 'Youth', 'youth', 1, '2022-01-03 04:54:12', '2022-01-03 04:54:12'),
(9, 'Entertainment', 'entertainment', 1, '2022-01-03 04:54:27', '2022-01-03 04:54:27');

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
(1, 1, 3, NULL, NULL),
(2, 2, 9, NULL, NULL),
(3, 3, 8, NULL, NULL),
(4, 4, 6, NULL, NULL),
(5, 5, 3, NULL, NULL),
(6, 1, 5, NULL, NULL),
(9, 1, 4, NULL, NULL);

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
(1, 'cricket', 'cricket', 1, '2022-01-03 04:55:22', '2022-01-03 04:55:22'),
(2, 'Newzeland', 'newzeland', 1, '2022-01-03 04:55:39', '2022-01-03 04:55:39'),
(3, 'Test Cricket', 'test-cricket', 1, '2022-01-03 04:55:57', '2022-01-03 04:55:57'),
(4, 'prize award', 'prize-award', 1, '2022-01-03 04:56:16', '2022-01-03 04:56:16'),
(5, 'live', 'live', 1, '2022-01-03 04:56:25', '2022-01-03 04:56:25');

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
(5, 2, 4, NULL, NULL),
(6, 3, 5, NULL, NULL),
(7, 4, 5, NULL, NULL),
(8, 5, 2, NULL, NULL),
(9, 1, 2, NULL, NULL),
(10, 1, 3, NULL, NULL),
(12, 1, 4, NULL, NULL);

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
(1, 'SHIMUN', 2, NULL, 'rlinfobd@gmail.com', '01912586164', NULL, '$2y$10$ux7cWUfWB55QylItaH4hk.Ah5swCXYa5eZd023wswvoTPgW3DrVyG', 'avatar.jpg', 1, NULL, '2022-01-03 04:49:09', '2022-01-03 04:49:09');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_category_rel`
--
ALTER TABLE `post_category_rel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_tag_rel`
--
ALTER TABLE `post_tag_rel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_cats`
--
ALTER TABLE `product_cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
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
