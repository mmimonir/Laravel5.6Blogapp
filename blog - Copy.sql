-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2018 at 08:33 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `created_at`, `updated_at`) VALUES
(9, 'VUE JS', 'vue-js', 'vue-js-2018-07-06-5b3f7d55accdf.png', '2018-07-06 08:31:50', '2018-07-06 08:31:50'),
(10, 'WEB', 'web', 'web-2018-07-13-5b487a38eb42b.jpg', '2018-07-13 04:08:57', '2018-07-13 04:08:57'),
(11, 'CSS', 'css', 'css-2018-07-22-5b53e24835946.jpg', '2018-07-21 19:47:53', '2018-07-21 19:47:53'),
(12, 'React', 'react', 'react-2018-07-22-5b53e27264db6.jpg', '2018-07-21 19:48:34', '2018-07-21 19:48:34'),
(13, 'Angular', 'angular', 'angular-2018-07-22-5b53e2db43551.png', '2018-07-21 19:50:19', '2018-07-21 19:50:19'),
(14, 'Jquery', 'jquery', 'jquery-2018-07-22-5b53e2f144756.png', '2018-07-21 19:50:41', '2018-07-21 19:50:41');

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE IF NOT EXISTS `category_post` (
  `id` int(10) unsigned NOT NULL,
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 2, 9, '2018-07-13 03:52:02', '2018-07-13 03:52:02'),
(6, 6, 9, '2018-07-13 10:56:07', '2018-07-13 10:56:07'),
(7, 6, 10, '2018-07-13 10:56:07', '2018-07-13 10:56:07'),
(8, 7, 10, '2018-07-13 14:18:15', '2018-07-13 14:18:15'),
(9, 8, 10, '2018-07-17 15:16:34', '2018-07-17 15:16:34'),
(11, 10, 10, '2018-07-21 18:09:25', '2018-07-21 18:09:25'),
(12, 11, 10, '2018-07-21 18:24:27', '2018-07-21 18:24:27'),
(13, 12, 9, '2018-07-21 18:48:09', '2018-07-21 18:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_27_192514_create_roles_table', 1),
(4, '2018_06_29_134258_create_tags_table', 2),
(5, '2018_07_05_000903_create_categories_table', 3),
(6, '2018_07_05_175401_create_categories_table', 4),
(7, '2018_07_06_144232_create_posts_table', 5),
(8, '2018_07_06_153413_create_category_post_table', 5),
(9, '2018_07_06_153515_create_post_tag_table', 5),
(10, '2018_07_17_035527_create_subscribers_table', 6),
(11, '2018_07_22_003011_create_jobs_table', 7),
(12, '2018_07_26_191826_create_post_user_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_count` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(2, 1, 'How i Can learn HTML, CSS Updated.', 'how-i-can-learn-html-css-updated', 'how-i-can-learn-html-css-updated-2018-07-13-5b4892244f5f5.png', '<p>This is new Body Updated</p>', 0, 1, 1, '2018-07-13 03:52:02', '2018-07-13 05:51:00'),
(6, 2, 'First Author Post', 'first-author-post', 'first-author-post-2018-07-13-5b48d9a6a5c2e.jpg', '<p>This is first author post for Approved.</p>', 0, 1, 1, '2018-07-13 10:56:07', '2018-07-13 14:16:51'),
(7, 2, 'The Author Second Post', 'the-author-second-post', 'the-author-second-post-2018-07-13-5b490906b3a50.jpg', '<p>This is author second post for approval.</p>', 0, 1, 1, '2018-07-13 14:18:15', '2018-07-13 14:19:17'),
(8, 2, 'New Post for Mail', 'new-post-for-mail', 'new-post-for-mail-2018-07-17-5b4e5cb11574f.jpg', '<p>New Post for Mail testing.</p>', 0, 1, 1, '2018-07-17 15:16:34', '2018-07-17 15:36:32'),
(10, 1, 'New subscriber post', 'new-subscriber-post', 'new-subscriber-post-2018-07-22-5b53cb34af40c.jpg', '<p>New Subscriber notification</p>', 0, 1, 1, '2018-07-21 18:09:25', '2018-07-21 18:09:25'),
(11, 2, 'New subscriber post 2', 'new-subscriber-post-2', 'new-subscriber-post-2-2018-07-22-5b53cebae8edc.jpg', '<p>New Subscriber post 2</p>', 0, 1, 1, '2018-07-21 18:24:27', '2018-07-21 18:25:23'),
(12, 1, 'New Queue Post', 'new-queue-post', 'new-queue-post-2018-07-22-5b53d448cdbfc.jpg', '<p>New queue post</p>', 0, 1, 1, '2018-07-21 18:48:09', '2018-07-21 18:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE IF NOT EXISTS `post_tag` (
  `id` int(10) unsigned NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(4, 2, 2, '2018-07-13 05:13:22', '2018-07-13 05:13:22'),
(8, 6, 1, '2018-07-13 10:56:07', '2018-07-13 10:56:07'),
(9, 6, 6, '2018-07-13 10:56:07', '2018-07-13 10:56:07'),
(10, 7, 6, '2018-07-13 14:18:15', '2018-07-13 14:18:15'),
(11, 7, 7, '2018-07-13 14:18:15', '2018-07-13 14:18:15'),
(12, 8, 5, '2018-07-17 15:16:34', '2018-07-17 15:16:34'),
(14, 10, 4, '2018-07-21 18:09:25', '2018-07-21 18:09:25'),
(15, 11, 4, '2018-07-21 18:24:27', '2018-07-21 18:24:27'),
(16, 12, 2, '2018-07-21 18:48:09', '2018-07-21 18:48:09');

-- --------------------------------------------------------

--
-- Table structure for table `post_user`
--

CREATE TABLE IF NOT EXISTS `post_user` (
  `id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 12, 1, '2018-07-26 14:25:27', '2018-07-26 14:25:27'),
(3, 11, 1, '2018-07-26 14:25:33', '2018-07-26 14:25:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'Author', 'author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE IF NOT EXISTS `subscribers` (
  `id` int(10) unsigned NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin@blog.com', '2018-07-16 22:18:35', '2018-07-16 22:18:35'),
(3, 'monirdhk.it@gmail.com', '2018-07-17 14:13:45', '2018-07-17 14:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'laravel', '2018-06-29 08:55:02', '2018-06-29 08:55:02'),
(2, 'VUE', 'vue', '2018-06-29 10:35:29', '2018-06-29 10:35:29'),
(4, 'PHP', 'php', '2018-06-29 12:35:02', '2018-06-29 12:35:02'),
(5, 'HTML', 'html', '2018-06-29 12:35:15', '2018-06-29 12:35:15'),
(6, 'CSS', 'css', '2018-06-29 12:35:25', '2018-06-29 12:35:25'),
(7, 'Javascript', 'javascript', '2018-06-29 12:35:40', '2018-06-29 12:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `email`, `password`, `image`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'MD. Monirul Islam', 'admin', 'monir@blog.com', '$2y$10$50izAdPYyUfjGefNDJ0nxOm5oy52.N8A9Uu6cv5Z5Mvbx4n1XfeWm', 'md-monirul-islam-2018-07-25-5b58c830beb9d.jpg', 'Something about me.', 'dUtoiJSQNFm9Z5cUylvHS38vI3tINy9PxxIOZWL5ZVcY2eVnJnwYjIeTNpp6', NULL, '2018-07-26 12:09:26'),
(2, 2, 'MD.Author Islam', 'author', 'author@blog.com', '$2y$10$XIC2LEqnSaHjRgkzwkuW4enJaQvu6Jk44G5HG0Hd7klwqfa8LkiIG', 'mdauthor-islam-2018-07-26-5b5a147bc5daf.png', 'About author', 'y3Qnyf9ndvPihQo9xJfj9lvcJn8ulc40eDTkaONkyRJvlAr2soWWhAKKtq4S', NULL, '2018-07-26 12:37:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_user`
--
ALTER TABLE `post_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_user_post_id_foreign` (`post_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_user`
--
ALTER TABLE `post_user`
  ADD CONSTRAINT `post_user_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
