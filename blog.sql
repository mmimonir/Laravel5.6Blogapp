-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 02, 2018 at 06:19 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(13, 12, 9, '2018-07-21 18:48:09', '2018-07-21 18:48:09'),
(14, 12, 11, '2018-07-27 08:35:58', '2018-07-27 08:35:58'),
(15, 12, 14, '2018-07-27 08:35:58', '2018-07-27 08:35:58'),
(16, 11, 12, '2018-07-27 08:40:19', '2018-07-27 08:40:19'),
(17, 11, 13, '2018-07-27 08:40:19', '2018-07-27 08:40:19'),
(18, 10, 9, '2018-07-27 08:41:50', '2018-07-27 08:41:50'),
(19, 10, 12, '2018-07-27 08:41:50', '2018-07-27 08:41:50'),
(20, 10, 13, '2018-07-27 08:41:50', '2018-07-27 08:41:50'),
(21, 8, 9, '2018-07-27 08:43:48', '2018-07-27 08:43:48'),
(22, 8, 12, '2018-07-27 08:43:48', '2018-07-27 08:43:48'),
(23, 8, 13, '2018-07-27 08:43:48', '2018-07-27 08:43:48'),
(24, 7, 9, '2018-07-27 08:45:38', '2018-07-27 08:45:38'),
(25, 7, 13, '2018-07-27 08:45:38', '2018-07-27 08:45:38'),
(26, 7, 14, '2018-07-27 08:45:38', '2018-07-27 08:45:38'),
(27, 6, 12, '2018-07-27 08:46:56', '2018-07-27 08:46:56'),
(28, 6, 13, '2018-07-27 08:46:56', '2018-07-27 08:46:56'),
(29, 2, 10, '2018-07-27 08:48:18', '2018-07-27 08:48:18'),
(30, 2, 11, '2018-07-27 08:48:18', '2018-07-27 08:48:18'),
(31, 2, 13, '2018-07-27 08:48:18', '2018-07-27 08:48:18'),
(32, 13, 9, '2018-07-27 08:49:35', '2018-07-27 08:49:35'),
(33, 13, 10, '2018-07-27 08:49:35', '2018-07-27 08:49:35'),
(34, 13, 11, '2018-07-27 08:49:35', '2018-07-27 08:49:35'),
(35, 13, 13, '2018-07-27 08:49:35', '2018-07-27 08:49:35'),
(36, 13, 14, '2018-07-27 08:49:35', '2018-07-27 08:49:35'),
(37, 14, 9, '2018-07-27 08:51:47', '2018-07-27 08:51:47'),
(38, 14, 10, '2018-07-27 08:51:47', '2018-07-27 08:51:47'),
(39, 14, 11, '2018-07-27 08:51:47', '2018-07-27 08:51:47'),
(40, 14, 14, '2018-07-27 08:51:47', '2018-07-27 08:51:47'),
(41, 15, 9, '2018-07-27 08:53:06', '2018-07-27 08:53:06'),
(42, 15, 10, '2018-07-27 08:53:06', '2018-07-27 08:53:06'),
(43, 15, 11, '2018-07-27 08:53:06', '2018-07-27 08:53:06'),
(44, 15, 12, '2018-07-27 08:53:06', '2018-07-27 08:53:06'),
(45, 15, 14, '2018-07-27 08:53:06', '2018-07-27 08:53:06'),
(46, 16, 9, '2018-07-27 08:54:27', '2018-07-27 08:54:27'),
(47, 16, 10, '2018-07-27 08:54:27', '2018-07-27 08:54:27'),
(48, 16, 11, '2018-07-27 08:54:27', '2018-07-27 08:54:27'),
(49, 16, 12, '2018-07-27 08:54:27', '2018-07-27 08:54:27'),
(50, 16, 14, '2018-07-27 08:54:27', '2018-07-27 08:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{"displayName":"App\\\\Notifications\\\\NewPostNotify","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":9:{s:11:\\"notifiables\\";O:44:\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\":1:{s:6:\\"routes\\";a:1:{s:4:\\"mail\\";s:14:\\"admin@blog.com\\";}}s:12:\\"notification\\";O:31:\\"App\\\\Notifications\\\\NewPostNotify\\":8:{s:4:\\"post\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:8:\\"App\\\\Post\\";s:2:\\"id\\";i:13;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"352837e5-ae64-47bd-8bb5-aa7ad42b0711\\";s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1532702978, 1532702978),
(2, 'default', '{"displayName":"App\\\\Notifications\\\\NewPostNotify","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":9:{s:11:\\"notifiables\\";O:44:\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\":1:{s:6:\\"routes\\";a:1:{s:4:\\"mail\\";s:21:\\"monirdhk.it@gmail.com\\";}}s:12:\\"notification\\";O:31:\\"App\\\\Notifications\\\\NewPostNotify\\":8:{s:4:\\"post\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:8:\\"App\\\\Post\\";s:2:\\"id\\";i:13;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"83cb8feb-f8c3-40f5-bcb0-bc58371ff96f\\";s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1532702978, 1532702978),
(3, 'default', '{"displayName":"App\\\\Notifications\\\\NewPostNotify","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":9:{s:11:\\"notifiables\\";O:44:\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\":1:{s:6:\\"routes\\";a:1:{s:4:\\"mail\\";s:14:\\"admin@blog.com\\";}}s:12:\\"notification\\";O:31:\\"App\\\\Notifications\\\\NewPostNotify\\":8:{s:4:\\"post\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:8:\\"App\\\\Post\\";s:2:\\"id\\";i:14;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"e9474bd4-94ac-46c1-91fd-2eee02f7b6c4\\";s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1532703107, 1532703107),
(4, 'default', '{"displayName":"App\\\\Notifications\\\\NewPostNotify","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":9:{s:11:\\"notifiables\\";O:44:\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\":1:{s:6:\\"routes\\";a:1:{s:4:\\"mail\\";s:21:\\"monirdhk.it@gmail.com\\";}}s:12:\\"notification\\";O:31:\\"App\\\\Notifications\\\\NewPostNotify\\":8:{s:4:\\"post\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:8:\\"App\\\\Post\\";s:2:\\"id\\";i:14;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"aa1efd68-5a66-4dbb-a83f-0f09a2cecc58\\";s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1532703107, 1532703107),
(5, 'default', '{"displayName":"App\\\\Notifications\\\\NewPostNotify","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":9:{s:11:\\"notifiables\\";O:44:\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\":1:{s:6:\\"routes\\";a:1:{s:4:\\"mail\\";s:14:\\"admin@blog.com\\";}}s:12:\\"notification\\";O:31:\\"App\\\\Notifications\\\\NewPostNotify\\":8:{s:4:\\"post\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:8:\\"App\\\\Post\\";s:2:\\"id\\";i:15;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"a2cdcfc8-d9c2-42ac-bd9f-6a09141e10ca\\";s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1532703186, 1532703186),
(6, 'default', '{"displayName":"App\\\\Notifications\\\\NewPostNotify","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":9:{s:11:\\"notifiables\\";O:44:\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\":1:{s:6:\\"routes\\";a:1:{s:4:\\"mail\\";s:21:\\"monirdhk.it@gmail.com\\";}}s:12:\\"notification\\";O:31:\\"App\\\\Notifications\\\\NewPostNotify\\":8:{s:4:\\"post\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:8:\\"App\\\\Post\\";s:2:\\"id\\";i:15;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"9128ce1b-f721-43dc-8aa1-ac287b88140b\\";s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1532703186, 1532703186),
(7, 'default', '{"displayName":"App\\\\Notifications\\\\NewPostNotify","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":9:{s:11:\\"notifiables\\";O:44:\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\":1:{s:6:\\"routes\\";a:1:{s:4:\\"mail\\";s:14:\\"admin@blog.com\\";}}s:12:\\"notification\\";O:31:\\"App\\\\Notifications\\\\NewPostNotify\\":8:{s:4:\\"post\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:8:\\"App\\\\Post\\";s:2:\\"id\\";i:16;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"64f5ecb1-a6a5-4bf2-b671-afc616879521\\";s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1532703267, 1532703267),
(8, 'default', '{"displayName":"App\\\\Notifications\\\\NewPostNotify","job":"Illuminate\\\\Queue\\\\CallQueuedHandler@call","maxTries":null,"timeout":null,"timeoutAt":null,"data":{"commandName":"Illuminate\\\\Notifications\\\\SendQueuedNotifications","command":"O:48:\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\":9:{s:11:\\"notifiables\\";O:44:\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\":1:{s:6:\\"routes\\";a:1:{s:4:\\"mail\\";s:21:\\"monirdhk.it@gmail.com\\";}}s:12:\\"notification\\";O:31:\\"App\\\\Notifications\\\\NewPostNotify\\":8:{s:4:\\"post\\";O:45:\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\":4:{s:5:\\"class\\";s:8:\\"App\\\\Post\\";s:2:\\"id\\";i:16;s:9:\\"relations\\";a:0:{}s:10:\\"connection\\";s:5:\\"mysql\\";}s:2:\\"id\\";s:36:\\"85dafee2-9f50-45b6-8f63-1404b36138f5\\";s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}s:8:\\"channels\\";a:1:{i:0;s:4:\\"mail\\";}s:10:\\"connection\\";N;s:5:\\"queue\\";N;s:15:\\"chainConnection\\";N;s:10:\\"chainQueue\\";N;s:5:\\"delay\\";N;s:7:\\"chained\\";a:0:{}}"}}', 0, NULL, 1532703267, 1532703267);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(12, '2018_07_26_191826_create_post_user_table', 8),
(13, '2018_08_02_172910_create_comments_table', 9);

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(2, 1, 'Android Tutorial', 'android-tutorial', 'android-tutorial-2018-07-27-5b5b30b15f592.jpg', '<p>Android is an open source and Linux-based operating system for mobile devices such as smartphones and tablet computers. Android was developed by the Open Handset Alliance, led by Google, and other companies. This tutorial will teach you basic Android programming and will also take you through some advance concepts related to Android application development.</p>\r\n<h1>Audience</h1>\r\n<p>This tutorial has been prepared for the beginners to help them understand basic Android programming. After completing this tutorial you will find yourself at a moderate level of expertise in Android programming from where you can take yourself to next levels.</p>\r\n<h1>Prerequisites</h1>\r\n<p>Android programming is based on Java programming language so if you have basic understanding on Java programming then it will be a fun to learn Android application development.</p>\r\n<h2>What is Android?</h2>\r\n<p><img src="https://www.tutorialspoint.com/android/images/who_i_am.jpg" alt="Who I Am" /></p>\r\n<p>Android is an open source and Linux-based <strong>Operating System</strong> for mobile devices such as smartphones and tablet computers. Android was developed by the <em>Open Handset Alliance</em>, led by Google, and other companies.</p>\r\n<p>Android offers a unified approach to application development for mobile devices which means developers need only develop for Android, and their applications should be able to run on different devices powered by Android.</p>\r\n<p>The first beta version of the Android Software Development Kit (SDK) was released by Google in 2007 where as the first commercial version, Android 1.0, was released in September 2008.</p>\r\n<p>On June 27, 2012, at the Google I/O conference, Google announced the next Android version, 4.1 <strong>Jelly Bean</strong>. Jelly Bean is an incremental update, with the primary aim of improving the user interface, both in terms of functionality and performance.</p>\r\n<p>The source code for Android is available under free and open source software licenses. Google publishes most of the code under the Apache License version 2.0 and the rest, Linux kernel changes, under the GNU General Public License version 2.</p>\r\n<h2>Why Android ?</h2>\r\n<p><img src="https://www.tutorialspoint.com/android/images/why_android.jpg" alt="Why Android" /></p>\r\n<h2>Features of Android</h2>\r\n<p>Android is a powerful operating system competing with Apple 4GS and supports great features. Few of them are listed below &minus;</p>\r\n<table class="table table-bordered">\r\n<tbody>\r\n<tr>\r\n<th>Sr.No.</th>\r\n<th style="text-align: center;">Feature &amp; Description</th>\r\n</tr>\r\n<tr>\r\n<td>1</td>\r\n<td>\r\n<p><strong>Beautiful UI</strong></p>\r\n<p>Android OS basic screen provides a beautiful and intuitive user interface.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>\r\n<p><strong>Connectivity</strong></p>\r\n<p>GSM/EDGE, IDEN, CDMA, EV-DO, UMTS, Bluetooth, Wi-Fi, LTE, NFC and WiMAX.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>3</td>\r\n<td>\r\n<p><strong>Storage</strong></p>\r\n<p>SQLite, a lightweight relational database, is used for data storage purposes.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>4</td>\r\n<td>\r\n<p><strong>Media support</strong></p>\r\n<p>H.263, H.264, MPEG-4 SP, AMR, AMR-WB, AAC, HE-AAC, AAC 5.1, MP3, MIDI, Ogg Vorbis, WAV, JPEG, PNG, GIF, and BMP.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>5</td>\r\n<td>\r\n<p><strong>Messaging</strong></p>\r\n<p>SMS and MMS</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>6</td>\r\n<td>\r\n<p><strong>Web browser</strong></p>\r\n<p>Based on the open-source WebKit layout engine, coupled with Chrome''s V8 JavaScript engine supporting HTML5 and CSS3.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>7</td>\r\n<td>\r\n<p><strong>Multi-touch</strong></p>\r\n<p>Android has native support for multi-touch which was initially made available in handsets such as the HTC Hero.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>8</td>\r\n<td>\r\n<p><strong>Multi-tasking</strong></p>\r\n<p>User can jump from one task to another and same time various application can run simultaneously.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>9</td>\r\n<td>\r\n<p><strong>Resizable widgets</strong></p>\r\n<p>Widgets are resizable, so users can expand them to show more content or shrink them to save space.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>10</td>\r\n<td>\r\n<p><strong>Multi-Language</strong></p>\r\n<p>Supports single direction and bi-directional text.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>11</td>\r\n<td>\r\n<p><strong>GCM</strong></p>\r\n<p>Google Cloud Messaging (GCM) is a service that lets developers send short message data to their users on Android devices, without needing a proprietary sync solution.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>12</td>\r\n<td>\r\n<p><strong>Wi-Fi Direct</strong></p>\r\n<p>A technology that lets apps discover and pair directly, over a high-bandwidth peer-to-peer connection.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>13</td>\r\n<td>\r\n<p><strong>Android Beam</strong></p>\r\n<p>A popular NFC-based technology that lets users instantly share, just by touching two NFC-enabled phones together.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>Android Applications</h2>\r\n<p>Android applications are usually developed in the Java language using the Android Software Development Kit.</p>\r\n<p>Once developed, Android applications can be packaged easily and sold out either through a store such as <strong>Google Play</strong>, <strong>SlideME</strong>, <strong>Opera Mobile Store</strong>, <strong>Mobango</strong>, <strong>F-droid</strong> and the <strong>Amazon Appstore</strong>.</p>\r\n<p>Android powers hundreds of millions of mobile devices in more than 190 countries around the world. It''s the largest installed base of any mobile platform and growing fast. Every day more than 1 million new Android devices are activated worldwide.</p>\r\n<p>This tutorial has been written with an aim to teach you how to develop and package Android application. We will start from environment setup for Android application programming and then drill down to look into various aspects of Android applications.</p>\r\n<h2>Categories of Android applications</h2>\r\n<p>There are many android applications in the market. The top categories are &minus;</p>\r\n<p><img src="https://www.tutorialspoint.com/android/images/categories.jpg" alt="Categories" /></p>', 0, 1, 1, '2018-07-13 03:52:02', '2018-07-27 08:48:17'),
(6, 1, 'VBA Tutorial', 'vba-tutorial', 'vba-tutorial-2018-07-27-5b5b306005eaa.jpg', '<p>VBA stands for <strong>V</strong>isual <strong>B</strong>asic for <strong>A</strong>pplications, an event-driven programming language from Microsoft. It is now predominantly used with Microsoft Office applications such as MSExcel, MS-Word and MS-Access. This tutorial teaches the basics of VBA. Each of the sections contain related topics with simple and useful examples.</p>\r\n<h1>Audience</h1>\r\n<p>This reference has been prepared for the beginners to help them understand the basics of VBA. This tutorial will provide enough understanding on VBA from where you can take yourself to a higher level of expertise.</p>\r\n<h1>Prerequisites</h1>\r\n<p>Before proceeding with this tutorial, you should install MS Office, particularly MS-Excel.</p>\r\n<p>VBA stands for <strong>V</strong>isual <strong>B</strong>asic for <strong>A</strong>pplications an event-driven programming language from Microsoft that is now predominantly used with Microsoft office applications such as MSExcel, MS-Word, and MS-Access.</p>\r\n<p>It helps techies to build customized applications and solutions to enhance the capabilities of those applications. The advantage of this facility is that you NEED NOT have visual basic installed on our PC, however, installing Office will implicitly help in achieving the purpose.</p>\r\n<p>You can use VBA in all office versions, right from MS-Office 97 to MS-Office 2013 and also with any of the latest versions available. Among VBA, Excel VBA is the most popular. The advantage of using VBA is that you can build very powerful tools in MS Excel using linear programming.</p>\r\n<h2>Application of VBA</h2>\r\n<p>You might wonder why to use VBA in Excel as MS-Excel itself provides loads of inbuilt functions. MS-Excel provides only basic inbuilt functions which might not be sufficient to perform complex calculations. Under such circumstances, VBA becomes the most obvious solution.</p>\r\n<p>For example, it is very hard to calculate the monthly repayment of a loan using Excel''s built-in formulas. Rather, it is easy to program a VBA for such a calculation.</p>\r\n<h2>Accessing VBA Editor</h2>\r\n<p>In Excel window, press "ALT+F11". A VBA window opens up as shown in the following screenshot.</p>', 0, 1, 1, '2018-07-13 10:56:07', '2018-07-27 08:46:56'),
(7, 1, 'MS Access Tutorial', 'ms-access-tutorial', 'ms-access-tutorial-2018-07-27-5b5b3011b3e34.jpg', '<p>Microsoft Access is a Database Management System (DBMS) from Microsoft that combines the relational Microsoft Jet Database Engine with a graphical user interface and softwaredevelopment tools. It is a part of the Microsoft Office suite of applications, included in the professional and higher editions. This is an introductory tutorial that covers the basics of MS Access.</p>\r\n<h1>Audience</h1>\r\n<p>This tutorial is designed for those people who want to learn how to start working with Microsoft Access. After completing this tutorial, you will have a better understating of MS Access and how you can use it to store and retrieve data.</p>\r\n<h1>Prerequisites</h1>\r\n<p>It is a simple and easy-to-understand tutorial. There are no set prerequisites as such, and it should be useful for any beginner who want acquire knowledge on MS Access. However it will definitely help if you are aware of some basic concepts of a database, especially RDBMS concepts.</p>\r\n<p>Microsoft Access is a Database Management System (DBMS) from Microsoft that combines the relational Microsoft Jet Database Engine with a graphical user interface and softwaredevelopment tools. It is a member of the Microsoft Office suite of applications, included in the professional and higher editions.</p>\r\n<ul class="list">\r\n<li>\r\n<p>Microsoft Access is just one part of Microsoft&rsquo;s overall data management product strategy.</p>\r\n</li>\r\n<li>\r\n<p>It stores data in its own format based on the Access Jet Database Engine.</p>\r\n</li>\r\n<li>\r\n<p>Like relational databases, Microsoft Access also allows you to link related information easily. For example, customer and order data. However, Access 2013 also complements other database products because it has several powerful connectivity features.</p>\r\n</li>\r\n<li>\r\n<p>It can also import or link directly to data stored in other applications and databases.</p>\r\n</li>\r\n<li>\r\n<p>As its name implies, Access can work directly with data from other sources, including many popular PC database programs, with many SQL (Structured Query Language) databases on the desktop, on servers, on minicomputers, or on mainframes, and with data stored on Internet or intranet web servers.</p>\r\n</li>\r\n<li>\r\n<p>Access can also understand and use a wide variety of other data formats, including many other database file structures.</p>\r\n</li>\r\n<li>\r\n<p>You can export data to and import data from word processing files, spreadsheets, or database files directly.</p>\r\n</li>\r\n<li>\r\n<p>Access can work with most popular databases that support the Open Database Connectivity (ODBC) standard, including SQL Server, Oracle, and DB2.</p>\r\n</li>\r\n<li>\r\n<p>Software developers can use Microsoft Access to develop application software.</p>\r\n</li>\r\n</ul>\r\n<p>Microsoft Access stores information which is called a database. To use MS Access, you will need to follow these four steps &minus;</p>\r\n<ul class="list">\r\n<li>\r\n<p><strong>Database Creation</strong> &minus; Create your Microsoft Access database and specify what kind of data you will be storing.</p>\r\n</li>\r\n<li>\r\n<p><strong>Data Input</strong> &minus; After your database is created, the data of every business day can be entered into the Access database.</p>\r\n</li>\r\n<li>\r\n<p><strong>Query</strong> &minus; This is a fancy term to basically describe the process of retrieving information from the database.</p>\r\n</li>\r\n<li>\r\n<p><strong>Report</strong> (optional) &minus; Information from the database is organized in a nice presentation that can be printed in an Access Report.</p>\r\n</li>\r\n</ul>\r\n<h2>Architecture</h2>\r\n<ul class="list">\r\n<li>\r\n<p>Access calls anything that can have a name an object. Within an Access desktop database, the main objects are tables, queries, forms, reports, macros, data macros, and modules.</p>\r\n</li>\r\n<li>\r\n<p>If you have worked with other database systems on desktop computers, you might have seen the term database used to refer to only those files in which you store data.</p>\r\n</li>\r\n<li>\r\n<p>But, in Access, a desktop database (.accdb) also includes all the major objects related to the stored data, including objects you define to automate the use of your data.</p>\r\n</li>\r\n</ul>', 0, 1, 1, '2018-07-13 14:18:15', '2018-07-27 08:45:38'),
(8, 1, 'Excel 2010 Tutorial', 'excel-2010-tutorial', 'excel-2010-tutorial-2018-07-27-5b5b2fa34b981.jpg', '<p>Microsoft Excel is a commercial spreadsheet application, written and distributed by Microsoft for Microsoft Windows and Mac OS X. At the time of writing this tutorial the Microsoft excel version was 2010 for Microsoft Windows and 2011 for Mac OS X.</p>\r\n<p>Microsoft Excel is a spreadsheet tool capable of performing calculations, analyzing data and integrating information from different programs.</p>\r\n<p>By default, documents saved in Excel 2010 are saved with the .xlsx extension whereas the file extension of the prior Excel versions are .xls.</p>\r\n<h1>Audience</h1>\r\n<p>This tutorial has been designed for computer users who would like to learn Microsoft Excel in easy and simple steps. It will be highly useful for those learners who do not have prior exposure to Microsoft applications.</p>\r\n<h1>Prerequisites</h1>\r\n<p>Before proceeding with this tutorial, you should have a basic understanding of Computer peripherals like mouse, keyboard, monitor, screen etc. and their basic operations. You should also have the basic skills of file management and folder navigations.</p>\r\n<p>This chapter teaches you how to start an excel 2010 application in simple steps. Assuming you have Microsoft Office 2010 installed in your PC, start the excel application following the below mentioned steps in your PC.</p>\r\n<p><strong>Step 1</strong> &minus; Click on the <strong>Start</strong> button.</p>\r\n<p><img src="https://www.tutorialspoint.com/excel/images/start_button.jpg" alt="Windows Start Button" /></p>\r\n<p><strong>Step 2</strong> &minus; Click on <strong>All Programs</strong> option from the menu.</p>\r\n<p><img src="https://www.tutorialspoint.com/excel/images/all_programs.jpg" alt="Windows All Programs" /></p>\r\n<p><strong>Step 3</strong> &minus; Search for <strong>Microsoft Office</strong> from the sub menu and click it.</p>\r\n<p><img src="https://www.tutorialspoint.com/excel/images/microsoft_office.jpg" alt="Microsoft Office 2010" /></p>\r\n<p><strong>Step 4</strong> &minus; Search for <strong>Microsoft Excel 2010</strong> from the submenu and click it.</p>\r\n<p><img src="https://www.tutorialspoint.com/excel/images/microsoft_excel.jpg" alt="Microsoft Excel 2010" /></p>\r\n<p>This will launch the Microsoft Excel 2010 application and you will see the following excel window.</p>\r\n<p><img src="https://www.tutorialspoint.com/excel/images/excel_window.jpg" alt="Excel Window" /></p>', 1, 1, 1, '2018-07-17 15:16:34', '2018-07-27 09:13:51'),
(10, 1, 'MongoDB Tutorial', 'mongodb-tutorial', 'mongodb-tutorial-2018-07-27-5b5b2f2dd35fd.jpg', '<p>MongoDB is an open-source document database and leading NoSQL database. MongoDB is written in C++. This tutorial will give you great understanding on MongoDB concepts needed to create and deploy a highly scalable and performance-oriented database.</p>\r\n<h1>Audience</h1>\r\n<p>This tutorial is designed for Software Professionals who are willing to learn MongoDB Database in simple and easy steps. It will throw light on MongoDB concepts and after completing this tutorial you will be at an intermediate level of expertise, from where you can take yourself at higher level of expertise.</p>\r\n<h1>Prerequisites</h1>\r\n<p>Before proceeding with this tutorial, you should have a basic understanding of database, text editor and execution of programs, etc. Because we are going to develop high performance database, so it will be good if you have an understanding on the basic concepts of Database (RDBMS).</p>\r\n<div style="padding-bottom: 5px; padding-left: 10px; text-align: center;">Advertisements</div>\r\n<hr />\r\n<div class="pre-btn"><a href="https://www.tutorialspoint.com/mongodb/index.htm"> Previous Page</a></div>\r\n<div class="nxt-btn"><a href="https://www.tutorialspoint.com/mongodb/mongodb_advantages.htm">Next Page &nbsp;</a></div>\r\n<div class="clearer">&nbsp;</div>\r\n<hr />\r\n<p>MongoDB is a cross-platform, document oriented database that provides, high performance, high availability, and easy scalability. MongoDB works on concept of collection and document.</p>\r\n<h2>Database</h2>\r\n<p>Database is a physical container for collections. Each database gets its own set of files on the file system. A single MongoDB server typically has multiple databases.</p>\r\n<h2>Collection</h2>\r\n<p>Collection is a group of MongoDB documents. It is the equivalent of an RDBMS table. A collection exists within a single database. Collections do not enforce a schema. Documents within a collection can have different fields. Typically, all documents in a collection are of similar or related purpose.</p>\r\n<h2>Document</h2>\r\n<p>A document is a set of key-value pairs. Documents have dynamic schema. Dynamic schema means that documents in the same collection do not need to have the same set of fields or structure, and common fields in a collection''s documents may hold different types of data.</p>\r\n<p>The following table shows the relationship of RDBMS terminology with MongoDB.</p>\r\n<table class="table table-bordered" style="text-align: center;">\r\n<tbody>\r\n<tr>\r\n<th style="text-align: center; width: 50%;">RDBMS</th>\r\n<th style="text-align: center;">MongoDB</th>\r\n</tr>\r\n<tr>\r\n<td>Database</td>\r\n<td>Database</td>\r\n</tr>\r\n<tr>\r\n<td>Table</td>\r\n<td>Collection</td>\r\n</tr>\r\n<tr>\r\n<td>Tuple/Row</td>\r\n<td>Document</td>\r\n</tr>\r\n<tr>\r\n<td>column</td>\r\n<td>Field</td>\r\n</tr>\r\n<tr>\r\n<td>Table Join</td>\r\n<td>Embedded Documents</td>\r\n</tr>\r\n<tr>\r\n<td>Primary Key</td>\r\n<td>Primary Key (Default key _id provided by mongodb itself)</td>\r\n</tr>\r\n<tr>\r\n<th style="text-align: center;" colspan="2">Database Server and Client</th>\r\n</tr>\r\n<tr>\r\n<td>Mysqld/Oracle</td>\r\n<td>mongod</td>\r\n</tr>\r\n<tr>\r\n<td>mysql/sqlplus</td>\r\n<td>mongo</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h2>Sample Document</h2>\r\n<p>Following example shows the document structure of a blog site, which is simply a comma separated key value pair.</p>\r\n<pre class="prettyprint notranslate prettyprinted"><span class="pun">{</span><span class="pln">\r\n   _id</span><span class="pun">:</span> <span class="typ">ObjectId</span><span class="pun">(</span><span class="lit">7df78ad8902c</span><span class="pun">)</span><span class="pln">\r\n   title</span><span class="pun">:</span> <span class="str">''MongoDB Overview''</span><span class="pun">,</span><span class="pln"> \r\n   description</span><span class="pun">:</span> <span class="str">''MongoDB is no sql database''</span><span class="pun">,</span>\r\n   <span class="kwd">by</span><span class="pun">:</span> <span class="str">''tutorials point''</span><span class="pun">,</span><span class="pln">\r\n   url</span><span class="pun">:</span> <span class="str">''http://www.tutorialspoint.com''</span><span class="pun">,</span><span class="pln">\r\n   tags</span><span class="pun">:</span> <span class="pun">[</span><span class="str">''mongodb''</span><span class="pun">,</span> <span class="str">''database''</span><span class="pun">,</span> <span class="str">''NoSQL''</span><span class="pun">],</span><span class="pln">\r\n   likes</span><span class="pun">:</span> <span class="lit">100</span><span class="pun">,</span><span class="pln"> \r\n   comments</span><span class="pun">:</span> <span class="pun">[</span>	\r\n      <span class="pun">{</span><span class="pln">\r\n         user</span><span class="pun">:</span><span class="str">''user1''</span><span class="pun">,</span><span class="pln">\r\n         message</span><span class="pun">:</span> <span class="str">''My first comment''</span><span class="pun">,</span><span class="pln">\r\n         dateCreated</span><span class="pun">:</span> <span class="kwd">new</span> <span class="typ">Date</span><span class="pun">(</span><span class="lit">2011</span><span class="pun">,</span><span class="lit">1</span><span class="pun">,</span><span class="lit">20</span><span class="pun">,</span><span class="lit">2</span><span class="pun">,</span><span class="lit">15</span><span class="pun">),</span><span class="pln">\r\n         like</span><span class="pun">:</span> <span class="lit">0</span> \r\n      <span class="pun">},</span>\r\n      <span class="pun">{</span><span class="pln">\r\n         user</span><span class="pun">:</span><span class="str">''user2''</span><span class="pun">,</span><span class="pln">\r\n         message</span><span class="pun">:</span> <span class="str">''My second comments''</span><span class="pun">,</span><span class="pln">\r\n         dateCreated</span><span class="pun">:</span> <span class="kwd">new</span> <span class="typ">Date</span><span class="pun">(</span><span class="lit">2011</span><span class="pun">,</span><span class="lit">1</span><span class="pun">,</span><span class="lit">25</span><span class="pun">,</span><span class="lit">7</span><span class="pun">,</span><span class="lit">45</span><span class="pun">),</span><span class="pln">\r\n         like</span><span class="pun">:</span> <span class="lit">5</span>\r\n      <span class="pun">}</span>\r\n   <span class="pun">]</span>\r\n<span class="pun">}</span></pre>\r\n<p><strong>_id</strong> is a 12 bytes hexadecimal number which assures the uniqueness of every document. You can provide _id while inserting the document. If you don&rsquo;t provide then MongoDB provides a unique id for every document. These 12 bytes first 4 bytes for the current timestamp, next 3 bytes for machine id, next 2 bytes for process id of MongoDB server and remaining 3 bytes are simple incremental VALUE.</p>', 0, 1, 1, '2018-07-21 18:09:25', '2018-07-27 08:41:50'),
(11, 1, 'MySQL Tutorial', 'mysql-tutorial', 'mysql-tutorial-2018-07-27-5b5b2ed2927e7.jpg', '<div>\r\n<p>MySQL is the most popular Open Source Relational SQL Database Management System. MySQL is one of the best RDBMS being used for developing various web-based software applications. MySQL is developed, marketed and supported by MySQL AB, which is a Swedish company. This tutorial will give you a quick start to MySQL and make you comfortable with MySQL programming.</p>\r\n</div>\r\n<h1>Audience</h1>\r\n<p>This tutorial is prepared for the beginners to help them understand the basics-to-advanced concepts related to MySQL languages.</p>\r\n<h1>Prerequisites</h1>\r\n<p>Before you start doing practice with various types of examples given in this tutorial, it is being assumed that you are already aware about what a database is, especially an RDBMS and what is a computer programming language.</p>\r\n<h2>What is a Database?</h2>\r\n<p>A database is a separate application that stores a collection of data. Each database has one or more distinct APIs for creating, accessing, managing, searching and replicating the data it holds.</p>\r\n<p>Other kinds of data stores can also be used, such as files on the file system or large hash tables in memory but data fetching and writing would not be so fast and easy with those type of systems.</p>\r\n<p>Nowadays, we use relational database management systems (RDBMS) to store and manage huge volume of data. This is called relational database because all the data is stored into different tables and relations are established using primary keys or other keys known as <strong>Foreign Keys</strong>.</p>\r\n<p>A <strong>Relational DataBase Management System (RDBMS)</strong> is a software that &minus;</p>\r\n<ul class="list">\r\n<li>\r\n<p>Enables you to implement a database with tables, columns and indexes.</p>\r\n</li>\r\n<li>\r\n<p>Guarantees the Referential Integrity between rows of various tables.</p>\r\n</li>\r\n<li>\r\n<p>Updates the indexes automatically.</p>\r\n</li>\r\n<li>\r\n<p>Interprets an SQL query and combines information from various tables.</p>\r\n</li>\r\n</ul>\r\n<h2>RDBMS Terminology</h2>\r\n<p>Before we proceed to explain the MySQL database system, let us revise a few definitions related to the database.</p>\r\n<ul class="list">\r\n<li>\r\n<p><strong>Database</strong> &minus; A database is a collection of tables, with related data.</p>\r\n</li>\r\n<li>\r\n<p><strong>Table</strong> &minus; A table is a matrix with data. A table in a database looks like a simple spreadsheet.</p>\r\n</li>\r\n<li>\r\n<p><strong>Column</strong> &minus; One column (data element) contains data of one and the same kind, for example the column postcode.</p>\r\n</li>\r\n<li>\r\n<p><strong>Row</strong> &minus; A row (= tuple, entry or record) is a group of related data, for example the data of one subscription.</p>\r\n</li>\r\n<li>\r\n<p><strong>Redundancy</strong> &minus; Storing data twice, redundantly to make the system faster.</p>\r\n</li>\r\n<li>\r\n<p><strong>Primary Key</strong> &minus; A primary key is unique. A key value can not occur twice in one table. With a key, you can only find one row.</p>\r\n</li>\r\n<li>\r\n<p><strong>Foreign Key</strong> &minus; A foreign key is the linking pin between two tables.</p>\r\n</li>\r\n<li>\r\n<p><strong>Compound Key</strong> &minus; A compound key (composite key) is a key that consists of multiple columns, because one column is not sufficiently unique.</p>\r\n</li>\r\n<li>\r\n<p><strong>Index</strong> &minus; An index in a database resembles an index at the back of a book.</p>\r\n</li>\r\n<li>\r\n<p><strong>Referential Integrity</strong> &minus; Referential Integrity makes sure that a foreign key value always points to an existing row.</p>\r\n</li>\r\n</ul>\r\n<h2>MySQL Database</h2>\r\n<p>MySQL is a fast, easy-to-use RDBMS being used for many small and big businesses. MySQL is developed, marketed and supported by MySQL AB, which is a Swedish company. MySQL is becoming so popular because of many good reasons &minus;</p>\r\n<ul class="list">\r\n<li>\r\n<p>MySQL is released under an open-source license. So you have nothing to pay to use it.</p>\r\n</li>\r\n<li>\r\n<p>MySQL is a very powerful program in its own right. It handles a large subset of the functionality of the most expensive and powerful database packages.</p>\r\n</li>\r\n<li>\r\n<p>MySQL uses a standard form of the well-known SQL data language.</p>\r\n</li>\r\n<li>\r\n<p>MySQL works on many operating systems and with many languages including PHP, PERL, C, C++, JAVA, etc.</p>\r\n</li>\r\n<li>\r\n<p>MySQL works very quickly and works well even with large data sets.</p>\r\n</li>\r\n<li>\r\n<p>MySQL is very friendly to PHP, the most appreciated language for web development.</p>\r\n</li>\r\n<li>\r\n<p>MySQL supports large databases, up to 50 million rows or more in a table. The default file size limit for a table is 4GB, but you can increase this (if your operating system can handle it) to a theoretical limit of 8 million terabytes (TB).</p>\r\n</li>\r\n<li>\r\n<p>MySQL is customizable. The open-source GPL license allows programmers to modify the MySQL software to fit their own specific environments.</p>\r\n</li>\r\n</ul>', 0, 1, 1, '2018-07-21 18:24:27', '2018-07-27 08:40:19'),
(12, 1, 'VueJS Tutorial', 'vuejs-tutorial', 'vuejs-tutorial-2018-07-27-5b5b2dcd0afc3.jpg', '<p><strong>VueJS</strong> is a progressive JavaScript framework used to develop interactive web interfaces. Focus is more on the view part, which is the front end. It is very easy to integrate with other projects and libraries. The installation of VueJS is fairly simple, and beginners can easily understand and start building their own user interfaces. The content is divided into various chapters that contain related topics with simple and useful examples.</p>\r\n<h1>Audience</h1>\r\n<p>This tutorial is designed for software programmers who want to learn the basics of VueJS and its programming concepts in a simple and easy manner. This tutorial will give the readers enough understanding on the various functionalities of VueJS from where they can take themselves to the next level.</p>\r\n<h1>Prerequisites</h1>\r\n<p>Before proceeding with this tutorial, readers should have a basic understanding of HTML, CSS, and JavaScript.</p>\r\n<p><strong>VueJS</strong> is an open source progressive JavaScript framework used to develop interactive web interfaces. It is one of the famous frameworks used to simplify web development. VueJS focusses on the view layer. It can be easily integrated into big projects for front-end development without any issues.</p>\r\n<p>The installation for VueJS is very easy to start with. Any developer can easily understand and build interactive web interfaces in a matter of time. VueJS is created by Evan You, an ex-employee from Google. The first version of VueJS was released in Feb 2014. It recently has clocked to 64,828 stars on GitHub, making it very popular.</p>\r\n<h2>Features</h2>\r\n<p>Following are the features available with VueJS.</p>\r\n<h3>Virtual DOM</h3>\r\n<p>VueJS makes the use of virtual DOM, which is also used by other frameworks such as React, Ember, etc. The changes are not made to the DOM, instead a replica of the DOM is created which is present in the form of JavaScript data structures. Whenever any changes are to be made, they are made to the JavaScript data structures and the latter is compared with the original data structure. The final changes are then updated to the real DOM, which the user will see changing. This is good in terms of optimization, it is less expensive and the changes can be made at a faster rate.</p>\r\n<h3>Data Binding</h3>\r\n<p>The data binding feature helps manipulate or assign values to HTML attributes, change the style, assign classes with the help of binding directive called <strong>v-bind</strong> available with VueJS.</p>\r\n<h3>Components</h3>\r\n<p>Components are one of the important features of VueJS that helps create custom elements, which can be reused in HTML.</p>\r\n<h3>Event Handling</h3>\r\n<p><strong>v-on</strong> is the attribute added to the DOM elements to listen to the events in VueJS.</p>\r\n<h3>Animation/Transition</h3>\r\n<p>VueJS provides various ways to apply transition to HTML elements when they are added/updated or removed from the DOM. VueJS has a built-in transition component that needs to be wrapped around the element for transition effect. We can easily add third party animation libraries and also add more interactivity to the interface.</p>', 0, 1, 1, '2018-07-21 18:48:09', '2018-07-27 08:35:58'),
(13, 1, 'GitLab Tutorial', 'gitlab-tutorial', 'gitlab-tutorial-2018-07-27-5b5b30ff0801e.jpg', '<p>Gitlab is a service that provides remote access to Git repositories. In addition to hosting your code, the services provide additional features designed to help manage the software development lifecycle. These additional features include managing the sharing of code between different people, bug tracking, wiki space and other tools for ''social coding''.</p>\r\n<h1>Audience</h1>\r\n<p>This tutorial will help beginners learn the basic functionality of Gitlab service. After completing this tutorial, you will find yourself at a moderate level of expertise in using Gitlab from where you can take yourself to the next levels.</p>\r\n<h1>Prerequisites</h1>\r\n<p>We assume that you are going to use Gitlab to handle all levels of Java and Non-Java projects. So it will be good if you have some amount of exposure to software development life cycle and working knowledge of developing web-based and non web-based applications, alongwith usage of command prompts on Windows or Linux environments.</p>\r\n<h2>What is Gitlab?</h2>\r\n<p>Before we dive into definition for Gitlab, first we need to understand few terminologies. We often come across these terms like Git, Gitlab, GitHub, and Bitbucket. Let''s see definiton of all these as below &minus;</p>\r\n<p><strong>Git - </strong> It is a source code versioning system that lets you locally track changes and push or pull changes from remote resources.</p>\r\n<p><strong>GitLab, GitHub, and Bitbucket -</strong> Are services that provides remote access to Git repositories. In addition to hosting your code, the services provide additional features designed to help manage the software development lifecycle. These additional features include managing the sharing of code between different people, bug tracking, wiki space and other tools for ''social coding''.</p>\r\n<ul class="list">\r\n<li>\r\n<p><strong>GitHub </strong>is a publicly available, free service which requires all code (unless you have a paid account) be made open. Anyone can see code you push to GitHub and offer suggestions for improvement. GitHub currently hosts the source code for tens of thousands of open source projects.</p>\r\n</li>\r\n<li>\r\n<p><strong>GitLab</strong> is a github like service that organizations can use to provide internal management of git repositories. It is a self hosted Git-repository management system that keeps the user code private and can easily deploy the changes of the code.</p>\r\n</li>\r\n</ul>\r\n<h2>History</h2>\r\n<p>GitLab was found by <em>Dmitriy Zaporozhets</em> and <em>Valery Sizov</em> in October 2011. It was distributed under MIT license and the stable version of GitLab is 10.4 released in January 22, 2018.</p>\r\n<h2>Why to use GitLab?</h2>\r\n<p>GitLab is great way to manage git repositories on centralized server. GitLab gives you complete control over your repositories or projects and allows you to decide whether they are public or private for free.</p>\r\n<h2>Features</h2>\r\n<ul class="list">\r\n<li>\r\n<p>&nbsp;</p>\r\nGitLab hosts your (private) software projects for free.\r\n<p>&nbsp;</p>\r\n</li>\r\n<li>\r\n<p>GitLab is a platform for managing Git repositories.</p>\r\n</li>\r\n<li>\r\n<p>GitLab offers free public and private repositories, issue-tracking and wikis.</p>\r\n</li>\r\n<li>\r\n<p>GitLab is a user friendly web interface layer on top of Git, which increases the speed of working with Git.</p>\r\n</li>\r\n<li>\r\n<p>GitLab provides its own <em>Continuous Integration</em> (CI) system for managing the projects and provides user interface along with other features of GitLab.</p>\r\n</li>\r\n</ul>\r\n<h2>Advantages</h2>\r\n<ul class="list">\r\n<li>\r\n<p>GitLab provides <em>GitLab Community Edition</em> version for users to locate, on which servers their code is present.</p>\r\n</li>\r\n<li>\r\n<p>GitLab provides unlimited number of private and public repositories for free.</p>\r\n</li>\r\n<li>\r\n<p>The <em>Snippet</em> section can share small amount of code from a project, instead of sharing whole project.</p>\r\n</li>\r\n</ul>\r\n<h2>Disadvantages</h2>\r\n<ul class="list">\r\n<li>\r\n<p>While pushing and pulling repositories, it is not as fast as GitHub.</p>\r\n</li>\r\n<li>\r\n<p>GitLab interface will take time while switching from one to another page.</p>\r\n</li>\r\n</ul>', 1, 1, 1, '2018-07-27 08:49:35', '2018-07-27 09:46:27'),
(14, 1, 'PHP 7 Tutorial', 'php-7-tutorial', 'php-7-tutorial-2018-07-27-5b5b3182b3269.jpg', '<p>PHP 7 is the most awaited and is a major feature release of PHP programming language. PHP 7 was released on 3<sup>rd</sup> Dec 2015. This tutorial will teach you the new features of PHP 7 and their usage in a simple and intuitive way.</p>\r\n<h1>Audience</h1>\r\n<p>This tutorial has been prepared for PHP developers from a beginner&rsquo;s point of view. After completing this tutorial, you will find yourself at a moderate level of expertise in the knowledge of PHP from where you can take yourself to next levels.</p>\r\n<h1>Prerequisites</h1>\r\n<p>We assume that you already know about the older versions of PHP and now you can start learning the new features of PHP 7.</p>\r\n<h1>Execute PHP-7 Online</h1>\r\n<p>For most of the examples given in this tutorial, you will find an option <strong>Try it</strong>. Just use this option to execute your PHP-7 programs at the spot and enjoy your learning.</p>\r\n<p>Try the following example using <strong>Try it</strong> option available at the top right corner of the below sample code box &minus;</p>\r\n<h2>What is PHP 7?</h2>\r\n<p>PHP 7 is a major release of PHP programming language and is touted to be a revolution in the way web applications can be developed and delivered for mobile to enterprises and the cloud. This release is considered to be the most important change for PHP after the release of PHP 5 in 2004.</p>\r\n<h2>New Features</h2>\r\n<p>There are dozens of features added to PHP 7, the most significant ones are mentioned below &minus;</p>\r\n<ul class="list">\r\n<li>\r\n<p><strong>Improved performance</strong> &minus; Having PHPNG code merged in PHP7, it is twice as fast as PHP 5.</p>\r\n</li>\r\n<li>\r\n<p><strong>Lower Memory Consumption</strong> &minus; Optimized PHP 7 utilizes lesser resource.</p>\r\n</li>\r\n<li>\r\n<p><strong>Scalar type declarations</strong> &minus; Now parameter and return types can be enforced.</p>\r\n</li>\r\n<li>\r\n<p><strong>Consistent 64-bit support</strong> &minus; Consistent support for 64-bit architecture machines.</p>\r\n</li>\r\n<li>\r\n<p><strong>Improved Exception hierarchy</strong> &minus; Exception hierarchy is improved.</p>\r\n</li>\r\n<li>\r\n<p><strong>Many fatal errors converted to Exceptions</strong> &minus; Range of exceptions is increased covering many fatal error converted as exceptions.</p>\r\n</li>\r\n<li>\r\n<p><strong>Secure random number generator</strong> &minus; Addition of new secure random number generator API.</p>\r\n</li>\r\n<li>\r\n<p><strong>Deprecated SAPIs and extensions removed</strong> &minus; Various old and unsupported SAPIs and extensions are removed from the latest version.</p>\r\n</li>\r\n<li>\r\n<p><strong>The null coalescing operator (??)</strong> &minus; New null coalescing operator added.</p>\r\n</li>\r\n<li>\r\n<p><strong>Return and Scalar Type Declarations</strong> &minus; Support for return type and parameter type added.</p>\r\n</li>\r\n<li>\r\n<p><strong>Anonymous Classes</strong> &minus; Support for anonymous added.</p>\r\n</li>\r\n<li>\r\n<p><strong>Zero cost asserts</strong> &minus; Support for zero cost assert added.</p>\r\n</li>\r\n</ul>\r\n<p>PHP 7 uses new Zend Engine 3.0 to improve application performance almost twice and 50% better memory consumption than PHP 5.6. It allows to serve more concurrent users without requiring any additional hardware. PHP 7 is designed and refactored considering today''s workloads.</p>', 0, 1, 1, '2018-07-27 08:51:47', '2018-07-27 08:51:47'),
(15, 1, 'Bootstrap Tutorial', 'bootstrap-tutorial', 'bootstrap-tutorial-2018-07-27-5b5b31cf772bb.jpg', '<p>Twitter Bootstrap is the most popular front end framework in the recent time. It is sleek, intuitive, and powerful mobile first front-end framework for faster and easier web development. It uses HTML, CSS and Javascript. This tutorial will teach you the basics of Bootstrap Framework using which you can create web projects with ease. The tutorial is divided into sections such as Bootstrap Basic Structure, Bootstrap CSS, Bootstrap Layout Components and Bootstrap Plugins. Each of these sections contain related topics with simple and useful examples.</p>\r\n<h1>Audience</h1>\r\n<p>This tutorial has been prepared for anyone who has a basic knowledge of HTML and CSS and has an urge to develop websites. After completing this tutorial you will find yourself at a moderate level of expertise in developing web projects using Twitter Bootstrap.</p>\r\n<h1>Prerequisites</h1>\r\n<p>Before you start proceeding with this tutorial, we are assuming that you are already aware about the basics of HTML and CSS. If you are not well aware of these concepts then we will suggest you to go through our short tutorial on HTML Tutorial and CSS Tutorial.</p>\r\n<h1>Execute Bootstrap Online</h1>\r\n<p>You do not need to have your own environment to start learning Bootstrap programming! We have set up an on-line compiler for you that can be used to compile and execute the programs on-line.</p>\r\n<p>For most of the examples available in this tutorial, you will find a Try it option at the top right corner of the code box. Use it to verify the programs and check the outcome with different options. Feel free to modify any example and execute it online.</p>\r\n<h2>What is Twitter Bootstrap?</h2>\r\n<p>Bootstrap is a sleek, intuitive, and powerful, mobile first front-end framework for faster and easier web development. It uses HTML, CSS and Javascript.</p>\r\n<h2>History</h2>\r\n<p>Bootstrap was developed by <em>Mark Otto</em> and <em>Jacob Thornton</em> at <em>Twitter</em>. It was released as an open source product in August 2011 on GitHub.</p>\r\n<h2>Why Use Bootstrap?</h2>\r\n<ul class="list">\r\n<li>\r\n<p><strong>Mobile first approach</strong> &minus; Bootstrap 3, framework consists of Mobile first styles throughout the entire library instead them of in separate files.</p>\r\n</li>\r\n<li>\r\n<p><strong>Browser Support</strong> &minus; It is supported by all popular browsers.</p>\r\n</li>\r\n</ul>\r\n<p><img src="https://www.tutorialspoint.com/bootstrap/images/browsers.jpg" alt="Popular Browser" /></p>\r\n<ul class="list">\r\n<li>\r\n<p><strong>Easy to get started</strong> &minus; With just the knowledge of HTML and CSS anyone can get started with Bootstrap. Also the Bootstrap official site has a good documentation.</p>\r\n</li>\r\n<li>\r\n<p><strong>Responsive design</strong> &minus; Bootstrap''s responsive CSS adjusts to Desktops, Tablets and Mobiles. More about the responsive design is in the chapter <a href="https://www.tutorialspoint.com/bootstrap/bootstrap_responsive_utilities.htm">Bootstrap Responsive Design.</a></p>\r\n</li>\r\n</ul>\r\n<p><img src="https://www.tutorialspoint.com/bootstrap/images/responsive.jpg" alt="Responsive Design" /></p>\r\n<ul class="list">\r\n<li>\r\n<p>Provides a clean and uniform solution for building an interface for developers.</p>\r\n</li>\r\n<li>\r\n<p>It contains beautiful and functional built-in components which are easy to customize.</p>\r\n</li>\r\n<li>\r\n<p>It also provides web based customization.</p>\r\n</li>\r\n<li>\r\n<p>And best of all it is an open source.</p>\r\n</li>\r\n</ul>\r\n<h2>What Bootstrap Package Includes?</h2>\r\n<ul class="list">\r\n<li>\r\n<p><strong>Scaffolding</strong> &minus; Bootstrap provides a basic structure with Grid System, link styles, and background. This is is covered in detail in the section <strong>Bootstrap Basic Structure</strong></p>\r\n</li>\r\n<li>\r\n<p><strong>CSS</strong> &minus; Bootstrap comes with the feature of global CSS settings, fundamental HTML elements styled and enhanced with extensible classes, and an advanced grid system. This is covered in detail in the section <strong>Bootstrap with CSS</strong>.</p>\r\n</li>\r\n<li>\r\n<p><strong>Components</strong> &minus; Bootstrap contains over a dozen reusable components built to provide iconography, dropdowns, navigation, alerts, pop-overs, and much more. This is covered in detail in the section <strong>Layout Components</strong>.</p>\r\n</li>\r\n<li>\r\n<p><strong>JavaScript Plugins</strong> &minus; Bootstrap contains over a dozen custom jQuery plugins. You can easily include them all, or one by one. This is covered in details in the section <strong>Bootstrap Plugins</strong>.</p>\r\n</li>\r\n<li>\r\n<p><strong>Customize</strong> &minus; You can customize Bootstrap''s components, LESS variables, and jQuery plugins to get your very own version.</p>\r\n</li>\r\n</ul>', 0, 1, 1, '2018-07-27 08:53:05', '2018-07-27 08:53:05');
INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `image`, `body`, `view_count`, `status`, `is_approved`, `created_at`, `updated_at`) VALUES
(16, 1, 'Laravel Tutorial', 'laravel-tutorial', 'laravel-tutorial-2018-07-27-5b5b32227cb61.jpg', '<p>Laravel is a powerful MVC PHP framework, designed for developers who need a simple and elegant toolkit to create full-featured web applications. Laravel was created by Taylor Otwell. This is a brief tutorial that explains the basics of Laravel framework.</p>\r\n<h1>Audience</h1>\r\n<p>This tutorial will guide the developers and students who want to learn how to develop a website using Laravel. This tutorial is particularly meant for all those developers who have no prior experience of using Laravel.</p>\r\n<h1>Prerequisites</h1>\r\n<p>Before you start proceeding with this tutorial, we assume that you are familiar with HTML, Core PHP, and Advance PHP. We have used Laravel version 5.1 in all the examples.</p>\r\n<h2>Introduction</h2>\r\n<p>Laravel is an open-source PHP framework, which is robust and easy to understand. It follows a model-view-controller design pattern. Laravel reuses the existing components of different frameworks which helps in creating a web application. The web application thus designed is more structured and pragmatic.</p>\r\n<p>Laravel offers a rich set of functionalities which incorporates the basic features of PHP frameworks like CodeIgniter, Yii and other programming languages like Ruby on Rails. Laravel has a very rich set of features which will boost the speed of web development.</p>\r\n<p>If you are familiar with Core PHP and Advanced PHP, Laravel will make your task easier. It saves a lot time if you are planning to develop a website from scratch. Moreover, a website built in Laravel is secure and prevents several web attacks.</p>\r\n<h2>Advantages of Laravel</h2>\r\n<p>Laravel offers you the following advantages, when you are designing a web application based on it &minus;</p>\r\n<ul class="list">\r\n<li>\r\n<p>The web application becomes more scalable, owing to the Laravel framework.</p>\r\n</li>\r\n<li>\r\n<p>Considerable time is saved in designing the web application, since Laravel reuses the components from other framework in developing web application.</p>\r\n</li>\r\n<li>\r\n<p>It includes namespaces and interfaces, thus helps to organize and manage resources.</p>\r\n</li>\r\n</ul>\r\n<h3>Composer</h3>\r\n<p>Composer is a tool which includes all the dependencies and libraries. It allows a user to create a project with respect to the mentioned framework (for example, those used in Laravel installation). Third party libraries can be installed easily with help of composer.</p>\r\n<p>All the dependencies are noted in <strong>composer.json</strong> file which is placed in the source folder.</p>\r\n<h3>Artisan</h3>\r\n<p>Command line interface used in Laravel is called <strong>Artisan</strong>. It includes a set of commands which assists in building a web application. These commands are incorporated from Symphony framework, resulting in add-on features in Laravel 5.1 (latest version of Laravel).</p>\r\n<h2>Features of Laravel</h2>\r\n<p>Laravel offers the following key features which makes it an ideal choice for designing web applications &minus;</p>\r\n<h3>Modularity</h3>\r\n<p>Laravel provides 20 built in libraries and modules which helps in enhancement of the application. Every module is integrated with Composer dependency manager which eases updates.</p>\r\n<h3>Testability</h3>\r\n<p>Laravel includes features and helpers which helps in testing through various test cases. This feature helps in maintaining the code as per the requirements.</p>\r\n<h3>Routing</h3>\r\n<p>Laravel provides a flexible approach to the user to define routes in the web application. Routing helps to scale the application in a better way and increases its performance.</p>\r\n<h3>Configuration Management</h3>\r\n<p>A web application designed in Laravel will be running on different environments, which means that there will be a constant change in its configuration. Laravel provides a consistent approach to handle the configuration in an efficient way.</p>\r\n<h3>Query Builder and ORM</h3>\r\n<p>Laravel incorporates a query builder which helps in querying databases using various simple chain methods. It provides <strong>ORM</strong> (Object Relational Mapper) and <strong>ActiveRecord</strong> implementation called Eloquent.</p>\r\n<h3>Schema Builder</h3>\r\n<p>Schema Builder maintains the database definitions and schema in PHP code. It also maintains a track of changes with respect to database migrations.</p>\r\n<h3>Template Engine</h3>\r\n<p>Laravel uses the <strong>Blade Template</strong> engine, a lightweight template language used to design hierarchical blocks and layouts with predefined blocks that include dynamic content.</p>\r\n<h3>E-mail</h3>\r\n<p>Laravel includes a <strong>mail</strong> class which helps in sending mail with rich content and attachments from the web application.</p>\r\n<h3>Authentication</h3>\r\n<p>User authentication is a common feature in web applications. Laravel eases designing authentication as it includes features such as <strong>register, forgot password</strong> and <strong>send password reminders</strong>.</p>\r\n<h3>Redis</h3>\r\n<p>Laravel uses <strong>Redis</strong> to connect to an existing session and general-purpose cache. Redis interacts with session directly.</p>\r\n<h3>Queues</h3>\r\n<p>Laravel includes queue services like emailing large number of users or a specified <strong>Cron</strong> job. These queues help in completing tasks in an easier manner without waiting for the previous task to be completed.</p>\r\n<h3>Event and Command Bus</h3>\r\n<p>Laravel 5.1 includes <strong>Command Bus</strong> which helps in executing commands and dispatch events in a simple way. The commands in Laravel act as per the application&rsquo;s lifecycle.</p>', 2, 1, 1, '2018-07-27 08:54:27', '2018-08-02 11:25:35');

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(16, 12, 2, '2018-07-21 18:48:09', '2018-07-21 18:48:09'),
(17, 12, 5, '2018-07-27 08:35:58', '2018-07-27 08:35:58'),
(18, 12, 6, '2018-07-27 08:35:59', '2018-07-27 08:35:59'),
(19, 12, 7, '2018-07-27 08:35:59', '2018-07-27 08:35:59'),
(20, 11, 2, '2018-07-27 08:40:19', '2018-07-27 08:40:19'),
(21, 11, 6, '2018-07-27 08:40:19', '2018-07-27 08:40:19'),
(22, 11, 7, '2018-07-27 08:40:19', '2018-07-27 08:40:19'),
(23, 10, 1, '2018-07-27 08:41:50', '2018-07-27 08:41:50'),
(24, 10, 2, '2018-07-27 08:41:50', '2018-07-27 08:41:50'),
(25, 10, 7, '2018-07-27 08:41:50', '2018-07-27 08:41:50'),
(26, 8, 1, '2018-07-27 08:43:48', '2018-07-27 08:43:48'),
(27, 8, 2, '2018-07-27 08:43:48', '2018-07-27 08:43:48'),
(28, 8, 7, '2018-07-27 08:43:48', '2018-07-27 08:43:48'),
(29, 7, 1, '2018-07-27 08:45:38', '2018-07-27 08:45:38'),
(30, 7, 2, '2018-07-27 08:45:38', '2018-07-27 08:45:38'),
(31, 7, 4, '2018-07-27 08:45:38', '2018-07-27 08:45:38'),
(32, 6, 4, '2018-07-27 08:46:56', '2018-07-27 08:46:56'),
(33, 6, 5, '2018-07-27 08:46:56', '2018-07-27 08:46:56'),
(34, 2, 1, '2018-07-27 08:48:18', '2018-07-27 08:48:18'),
(35, 2, 4, '2018-07-27 08:48:18', '2018-07-27 08:48:18'),
(36, 2, 6, '2018-07-27 08:48:18', '2018-07-27 08:48:18'),
(37, 13, 2, '2018-07-27 08:49:35', '2018-07-27 08:49:35'),
(38, 13, 4, '2018-07-27 08:49:35', '2018-07-27 08:49:35'),
(39, 13, 5, '2018-07-27 08:49:35', '2018-07-27 08:49:35'),
(40, 13, 7, '2018-07-27 08:49:35', '2018-07-27 08:49:35'),
(41, 14, 2, '2018-07-27 08:51:47', '2018-07-27 08:51:47'),
(42, 14, 4, '2018-07-27 08:51:47', '2018-07-27 08:51:47'),
(43, 14, 5, '2018-07-27 08:51:47', '2018-07-27 08:51:47'),
(44, 14, 6, '2018-07-27 08:51:47', '2018-07-27 08:51:47'),
(45, 15, 1, '2018-07-27 08:53:06', '2018-07-27 08:53:06'),
(46, 15, 4, '2018-07-27 08:53:06', '2018-07-27 08:53:06'),
(47, 15, 5, '2018-07-27 08:53:06', '2018-07-27 08:53:06'),
(48, 15, 6, '2018-07-27 08:53:06', '2018-07-27 08:53:06'),
(49, 15, 7, '2018-07-27 08:53:06', '2018-07-27 08:53:06'),
(50, 16, 1, '2018-07-27 08:54:27', '2018-07-27 08:54:27'),
(51, 16, 5, '2018-07-27 08:54:27', '2018-07-27 08:54:27'),
(52, 16, 6, '2018-07-27 08:54:27', '2018-07-27 08:54:27'),
(53, 16, 7, '2018-07-27 08:54:27', '2018-07-27 08:54:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_user`
--

INSERT INTO `post_user` (`id`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 12, 1, '2018-07-26 14:25:27', '2018-07-26 14:25:27'),
(3, 11, 1, '2018-07-26 14:25:33', '2018-07-26 14:25:33'),
(5, 8, 2, '2018-07-27 05:42:33', '2018-07-27 05:42:33'),
(6, 7, 2, '2018-07-27 05:42:44', '2018-07-27 05:42:44'),
(7, 6, 2, '2018-07-27 05:48:07', '2018-07-27 05:48:07'),
(8, 12, 2, '2018-07-27 05:48:12', '2018-07-27 05:48:12'),
(9, 11, 2, '2018-07-27 05:48:18', '2018-07-27 05:48:18');

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
(1, 1, 'MD. Monirul Islam', 'admin', 'monir@blog.com', '$2y$10$50izAdPYyUfjGefNDJ0nxOm5oy52.N8A9Uu6cv5Z5Mvbx4n1XfeWm', 'md-monirul-islam-2018-07-25-5b58c830beb9d.jpg', 'Something about me.', '8LY5KMNdtc4bna6TmlPVqLvhFWJbfgV9x6kuvzbllCeNmSa0cNFGWyzXBJBe', NULL, '2018-07-26 12:09:26'),
(2, 2, 'MD.Author Islam', 'author', 'author@blog.com', '$2y$10$XIC2LEqnSaHjRgkzwkuW4enJaQvu6Jk44G5HG0Hd7klwqfa8LkiIG', 'mdauthor-islam-2018-07-26-5b5a147bc5daf.png', 'About author', 'mrnGJaaLf9W5G0yZyOUH1bJPCVL7t29lfm7ow7sopgdT6dhM9kFRiHxBQlU5', NULL, '2018-07-26 12:37:05');

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
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `post_user`
--
ALTER TABLE `post_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
