-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 08:42 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adonuxt`
--

-- --------------------------------------------------------

--
-- Table structure for table `adonis_schema`
--

CREATE TABLE `adonis_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  `migration_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adonis_schema`
--

INSERT INTO `adonis_schema` (`id`, `name`, `batch`, `migration_time`) VALUES
(25, 'database\\migrations\\1630641123973_users', 1, '2021-10-19 04:07:43'),
(26, 'database\\migrations\\1630738865673_feeds', 1, '2021-10-19 04:07:43'),
(27, 'database\\migrations\\1631186206512_api_tokens', 2, '2021-10-19 04:24:53'),
(28, 'database\\migrations\\1634532800003_posts', 2, '2021-10-19 04:24:53'),
(29, 'database\\migrations\\1630902857183_comments', 3, '2021-10-19 04:28:06'),
(30, 'database\\migrations\\1634623187504_replycomments', 4, '2021-10-19 06:18:22'),
(31, 'database\\migrations\\1634631207623_reply_comments', 5, '2021-10-19 08:15:16'),
(32, 'database\\migrations\\1634633531033_likes', 6, '2021-10-19 10:04:13'),
(41, 'database\\migrations\\1635394290953_inboxes', 7, '2021-11-03 04:20:52'),
(42, 'database\\migrations\\1635395767948_chats', 7, '2021-11-03 04:20:53'),
(52, 'database\\migrations\\1637665594253_post_images', 8, '2021-11-24 09:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `api_tokens`
--

CREATE TABLE `api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `msg` text NOT NULL,
  `deleted_id` int(11) DEFAULT NULL,
  `file` text,
  `meta` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sender_id`, `msg`, `deleted_id`, `file`, `meta`, `created_at`, `updated_at`) VALUES
(195, 1, 'Hi', 1, NULL, NULL, '2021-11-30 07:21:06', '2021-11-14 05:46:37'),
(196, 3, 'Hello', 1, NULL, NULL, '2021-11-14 06:02:01', '2021-11-14 05:46:50'),
(197, 1, 'data1', 1, NULL, NULL, '2021-11-14 05:50:14', '2021-11-14 05:47:08'),
(198, 3, 'data 2', 1, NULL, NULL, '2021-11-14 06:10:29', '2021-11-14 05:47:21'),
(199, 3, 'Hi', 1, NULL, NULL, '2021-12-05 03:31:23', '2021-11-21 03:31:44'),
(200, 1, 'data2', 1, NULL, NULL, '2021-11-21 03:33:00', '2021-11-21 03:31:59'),
(201, 3, 'signal', 1, NULL, NULL, '2021-12-05 03:31:38', '2021-11-21 04:34:14'),
(202, 1, 'hi', 1, NULL, NULL, '2021-12-05 03:31:45', '2021-11-22 03:50:28'),
(203, 1, 'hi\n', NULL, NULL, NULL, '2021-11-25 11:33:32', '2021-11-25 11:33:32'),
(204, 1, 'hijjjs', 1, NULL, NULL, '2021-11-30 07:21:20', '2021-11-29 08:20:40'),
(205, 1, 'how are you', 1, NULL, NULL, '2021-12-05 03:31:35', '2021-12-01 10:14:42'),
(206, 3, 'sender', NULL, NULL, NULL, '2021-12-02 06:06:12', '2021-12-02 06:06:12'),
(207, 1, 'welcome', NULL, NULL, NULL, '2021-12-05 03:31:56', '2021-12-05 03:31:56'),
(208, 1, 'sjjsjs', 1, NULL, NULL, '2021-12-05 03:32:16', '2021-12-05 03:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_text` text NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_text`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(28, 'xhdhd', 1, 289, '2021-12-05 05:07:16', '2021-12-05 05:07:16'),
(30, 'ssss', 1, 289, '2021-12-05 07:16:43', '2021-12-05 07:16:43'),
(31, 'dhdhhd', 1, 288, '2021-12-05 07:41:17', '2021-12-05 07:41:17'),
(32, 'dhdhd', 1, 288, '2021-12-05 07:41:19', '2021-12-05 07:41:19');

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inboxes`
--

CREATE TABLE `inboxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED DEFAULT NULL,
  `lastMsg` varchar(150) DEFAULT NULL,
  `seen` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `unSeenNumbers` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(223, 3, 245, '2021-11-29 05:59:33', '2021-11-29 05:59:33'),
(242, 1, 289, '2021-12-05 07:40:00', '2021-12-05 07:40:00'),
(243, 1, 288, '2021-12-05 07:40:07', '2021-12-05 07:40:07');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
(245, 'what, up', 3, '2021-11-25 11:09:00', '2021-11-25 11:09:00'),
(269, 'banshdhhddj', 1, '2021-12-01 10:36:06', '2021-12-01 10:36:06'),
(284, 'dddddd', 1, '2021-12-02 09:17:56', '2021-12-02 09:17:56'),
(285, 'skksks', 1, '2021-12-02 09:18:30', '2021-12-02 09:18:30'),
(286, 'sssss', 1, '2021-12-02 09:18:53', '2021-12-02 09:18:53'),
(288, 'djdjjd', 1, '2021-12-05 03:59:53', '2021-12-05 03:59:53'),
(289, 'ggg', 1, '2021-12-05 04:00:18', '2021-12-05 04:00:18'),
(290, 'welcome', 1, '2021-12-05 07:40:40', '2021-12-05 07:40:40'),
(291, 'welcome to connectvier', 1, '2021-12-05 07:41:03', '2021-12-05 07:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_image` varchar(191) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`id`, `post_image`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(2, 'postImages/0.964775453531078.jpg', 1, 290, '2021-12-05 07:40:40', '2021-12-05 07:40:40'),
(3, 'postImages/0.6940794567864197.jpg', 1, 291, '2021-12-05 07:41:03', '2021-12-05 07:41:03'),
(4, 'postImages/0.9358650951589518.png', 1, 291, '2021-12-05 07:41:03', '2021-12-05 07:41:03');

-- --------------------------------------------------------

--
-- Table structure for table `reply_comments`
--

CREATE TABLE `reply_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `reply_text` text NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply_comments`
--

INSERT INTO `reply_comments` (`id`, `reply_text`, `comment_id`, `user_id`, `created_at`, `updated_at`) VALUES
(48, 'sjsjs', 30, 1, '2021-12-05 07:40:19', '2021-12-05 07:40:19'),
(49, 'sksks', 28, 1, '2021-12-05 07:40:22', '2021-12-05 07:40:22'),
(50, 'ehehhe', 30, 1, '2021-12-05 07:41:06', '2021-12-05 07:41:06'),
(51, 'sgsg', 30, 1, '2021-12-05 07:41:08', '2021-12-05 07:41:08'),
(52, 'ddhdh', 28, 1, '2021-12-05 07:41:12', '2021-12-05 07:41:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(189) DEFAULT NULL,
  `first_name` varchar(191) NOT NULL,
  `last_name` varchar(191) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(180) NOT NULL,
  `gender` varchar(191) NOT NULL,
  `status` varchar(15) DEFAULT NULL,
  `forgot_code` varchar(255) DEFAULT NULL,
  `is_banned` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `remember_me_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `gender`, `status`, `forgot_code`, `is_banned`, `profile_pic`, `cover`, `remember_me_token`, `created_at`, `updated_at`) VALUES
(1, 'david_warner', 'david', 'warner', 'david@gmail.com', '$bcrypt$v=98$r=10$HB7db7XqoCcA/LbG6A5WAw$zTh2XLddqF/QJGIRYZDG6I06aJF2qU0', 'Male', NULL, NULL, 'no', NULL, NULL, NULL, '2021-10-19 04:17:21', '2021-10-19 04:16:51'),
(2, 'parvez_fefe', 'parvez', 'fefe', 'kopen69682@wii999.com', '$bcrypt$v=98$r=10$AgAQGOqcwEURVTK5/IehsA$CNPnktt8uRaGVf7pkGHaoCNMIhYOp7I', 'Male', NULL, NULL, 'no', NULL, NULL, NULL, '2021-10-20 03:57:05', '2021-10-20 03:56:13'),
(3, 'KL_Rahul', 'KL', 'Rahul', 'kl@gmail.com', '$bcrypt$v=98$r=10$Xp4NMDkmaDWjTaI5jOFkxg$xIqk9jraAnAp6+kGv7qvb7wT0UpqNFM', 'Male', NULL, NULL, 'no', NULL, NULL, NULL, '2021-10-28 03:42:54', '2021-10-28 03:42:32'),
(4, 'Rohit_sharma', 'Rohit', 'sharma', 'rohit@gmail.com', '$bcrypt$v=98$r=10$nLfaJmOdKxiJVUUOBqpk2A$9/BKEHdpX+fBIzXZqid6H84nLipx4Ys', 'Male', NULL, NULL, 'no', NULL, NULL, NULL, '2021-10-28 03:43:58', '2021-10-28 03:43:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_tokens`
--
ALTER TABLE `api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_tokens_token_unique` (`token`),
  ADD KEY `api_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chats_sender_id_foreign` (`sender_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inboxes`
--
ALTER TABLE `inboxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inboxes_user_id_foreign` (`user_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_images_user_id_foreign` (`user_id`),
  ADD KEY `post_images_post_id_foreign` (`post_id`);

--
-- Indexes for table `reply_comments`
--
ALTER TABLE `reply_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reply_comments_comment_id_foreign` (`comment_id`),
  ADD KEY `reply_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adonis_schema`
--
ALTER TABLE `adonis_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `api_tokens`
--
ALTER TABLE `api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inboxes`
--
ALTER TABLE `inboxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reply_comments`
--
ALTER TABLE `reply_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `api_tokens`
--
ALTER TABLE `api_tokens`
  ADD CONSTRAINT `api_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `chats_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inboxes`
--
ALTER TABLE `inboxes`
  ADD CONSTRAINT `inboxes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_images`
--
ALTER TABLE `post_images`
  ADD CONSTRAINT `post_images_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reply_comments`
--
ALTER TABLE `reply_comments`
  ADD CONSTRAINT `reply_comments_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reply_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
