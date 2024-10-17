-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Oct 17, 2024 at 10:11 AM
-- Server version: 10.4.28-MariaDB-1:10.4.28+maria~ubu2004-log
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(169, 'action_scheduler/migration_hook', 'complete', '2024-10-10 05:12:05', '2024-10-10 05:12:05', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1728537125;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1728537125;}', 1, 1, '2024-10-10 05:22:14', '2024-10-10 05:22:14', 0, NULL),
(170, 'wp_mail_smtp_summary_report_email', 'complete', '2024-10-14 14:00:00', '2024-10-14 14:00:00', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728914400;s:18:\"\0*\0first_timestamp\";i:1728914400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728914400;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2024-10-15 04:52:47', '2024-10-15 04:52:47', 0, NULL),
(171, 'wpforms_process_forms_locator_scan', 'complete', '2024-10-10 05:22:40', '2024-10-10 05:22:40', 10, '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728537760;s:18:\"\0*\0first_timestamp\";i:1728537760;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728537760;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-10-10 05:23:58', '2024-10-10 05:23:58', 0, NULL),
(172, 'wpforms_process_purge_spam', 'complete', '2024-10-10 05:22:40', '2024-10-10 05:22:40', 10, '{\"tasks_meta_id\":2}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728537760;s:18:\"\0*\0first_timestamp\";i:1728537760;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728537760;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-10-10 05:23:58', '2024-10-10 05:23:58', 0, NULL),
(174, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-10-10 05:23:57', '2024-10-10 05:23:57', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728537837;s:18:\"\0*\0first_timestamp\";i:1728537837;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728537837;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2024-10-10 05:23:58', '2024-10-10 05:23:58', 0, NULL),
(175, 'wpforms_admin_notifications_update', 'complete', '2024-10-10 05:22:57', '2024-10-10 05:22:57', 10, '{\"tasks_meta_id\":3}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 3, 1, '2024-10-10 05:23:58', '2024-10-10 05:23:58', 0, NULL),
(176, 'wpforms_process_forms_locator_scan', 'complete', '2024-10-11 05:23:58', '2024-10-11 05:23:58', 10, '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728624238;s:18:\"\0*\0first_timestamp\";i:1728537760;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728624238;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-10-11 05:25:01', '2024-10-11 05:25:01', 0, NULL),
(177, 'wpforms_process_purge_spam', 'complete', '2024-10-11 05:23:58', '2024-10-11 05:23:58', 10, '{\"tasks_meta_id\":2}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728624238;s:18:\"\0*\0first_timestamp\";i:1728537760;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728624238;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2024-10-11 05:25:01', '2024-10-11 05:25:01', 0, NULL),
(178, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-10-11 05:23:58', '2024-10-11 05:23:58', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728624238;s:18:\"\0*\0first_timestamp\";i:1728537837;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728624238;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2024-10-11 05:25:01', '2024-10-11 05:25:01', 0, NULL),
(179, 'action_scheduler/migration_hook', 'complete', '2024-10-10 05:38:23', '2024-10-10 05:38:23', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1728538703;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1728538703;}', 1, 1, '2024-10-10 05:39:27', '2024-10-10 05:39:27', 0, NULL),
(182, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-10-12 05:25:01', '2024-10-12 05:25:01', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728710701;s:18:\"\0*\0first_timestamp\";i:1728537837;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728710701;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2024-10-14 04:51:34', '2024-10-14 04:51:34', 0, NULL),
(183, 'wpforms_admin_notifications_update', 'complete', '2024-10-11 05:27:55', '2024-10-11 05:27:55', 10, '{\"tasks_meta_id\":4}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 3, 1, '2024-10-11 05:28:05', '2024-10-11 05:28:05', 0, NULL),
(184, 'action_scheduler/migration_hook', 'complete', '2024-10-11 10:16:16', '2024-10-11 10:16:16', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1728641776;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1728641776;}', 1, 1, '2024-10-11 10:18:45', '2024-10-11 10:18:45', 0, NULL),
(185, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-10-15 04:51:34', '2024-10-15 04:51:34', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1728967894;s:18:\"\0*\0first_timestamp\";i:1728537837;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1728967894;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2024-10-15 04:52:48', '2024-10-15 04:52:48', 0, NULL),
(186, 'wp_mail_smtp_summary_report_email', 'pending', '2024-10-22 04:52:47', '2024-10-22 04:52:47', 10, '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1729572767;s:18:\"\0*\0first_timestamp\";i:1728914400;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1729572767;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(187, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-10-16 04:52:48', '2024-10-16 04:52:48', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1729054368;s:18:\"\0*\0first_timestamp\";i:1728537837;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1729054368;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2024-10-16 05:37:28', '2024-10-16 05:37:28', 0, NULL),
(188, 'wp_mail_smtp_admin_notifications_update', 'complete', '2024-10-17 05:37:29', '2024-10-17 05:37:29', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1729143449;s:18:\"\0*\0first_timestamp\";i:1728537837;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1729143449;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2024-10-17 07:39:13', '2024-10-17 07:39:13', 0, NULL),
(189, 'wp_mail_smtp_admin_notifications_update', 'pending', '2024-10-18 07:39:13', '2024-10-18 07:39:13', 10, '[1]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1729237153;s:18:\"\0*\0first_timestamp\";i:1728537837;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1729237153;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp'),
(3, 'wpforms');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 169, 'action created', '2024-10-10 05:11:05', '2024-10-10 05:11:05'),
(2, 169, 'action started via WP Cron', '2024-10-10 05:22:14', '2024-10-10 05:22:14'),
(3, 169, 'action complete via WP Cron', '2024-10-10 05:22:14', '2024-10-10 05:22:14'),
(4, 170, 'action created', '2024-10-10 05:22:23', '2024-10-10 05:22:23'),
(5, 171, 'action created', '2024-10-10 05:22:40', '2024-10-10 05:22:40'),
(6, 172, 'action created', '2024-10-10 05:22:40', '2024-10-10 05:22:40'),
(8, 174, 'action created', '2024-10-10 05:22:57', '2024-10-10 05:22:57'),
(9, 175, 'action created', '2024-10-10 05:22:57', '2024-10-10 05:22:57'),
(10, 171, 'action started via WP Cron', '2024-10-10 05:23:58', '2024-10-10 05:23:58'),
(11, 171, 'action complete via WP Cron', '2024-10-10 05:23:58', '2024-10-10 05:23:58'),
(12, 176, 'action created', '2024-10-10 05:23:58', '2024-10-10 05:23:58'),
(13, 172, 'action started via WP Cron', '2024-10-10 05:23:58', '2024-10-10 05:23:58'),
(14, 172, 'action complete via WP Cron', '2024-10-10 05:23:58', '2024-10-10 05:23:58'),
(15, 177, 'action created', '2024-10-10 05:23:58', '2024-10-10 05:23:58'),
(16, 175, 'action started via WP Cron', '2024-10-10 05:23:58', '2024-10-10 05:23:58'),
(17, 175, 'action complete via WP Cron', '2024-10-10 05:23:58', '2024-10-10 05:23:58'),
(18, 174, 'action started via WP Cron', '2024-10-10 05:23:58', '2024-10-10 05:23:58'),
(19, 174, 'action complete via WP Cron', '2024-10-10 05:23:58', '2024-10-10 05:23:58'),
(20, 178, 'action created', '2024-10-10 05:23:58', '2024-10-10 05:23:58'),
(21, 179, 'action created', '2024-10-10 05:37:23', '2024-10-10 05:37:23'),
(22, 179, 'action started via WP Cron', '2024-10-10 05:39:27', '2024-10-10 05:39:27'),
(23, 179, 'action complete via WP Cron', '2024-10-10 05:39:27', '2024-10-10 05:39:27'),
(24, 176, 'action started via WP Cron', '2024-10-11 05:25:00', '2024-10-11 05:25:00'),
(25, 176, 'action complete via WP Cron', '2024-10-11 05:25:01', '2024-10-11 05:25:01'),
(27, 177, 'action started via WP Cron', '2024-10-11 05:25:01', '2024-10-11 05:25:01'),
(28, 177, 'action complete via WP Cron', '2024-10-11 05:25:01', '2024-10-11 05:25:01'),
(30, 178, 'action started via WP Cron', '2024-10-11 05:25:01', '2024-10-11 05:25:01'),
(31, 178, 'action complete via WP Cron', '2024-10-11 05:25:01', '2024-10-11 05:25:01'),
(32, 182, 'action created', '2024-10-11 05:25:01', '2024-10-11 05:25:01'),
(33, 183, 'action created', '2024-10-11 05:27:55', '2024-10-11 05:27:55'),
(34, 183, 'action started via WP Cron', '2024-10-11 05:28:05', '2024-10-11 05:28:05'),
(35, 183, 'action complete via WP Cron', '2024-10-11 05:28:05', '2024-10-11 05:28:05'),
(39, 184, 'action created', '2024-10-11 10:15:16', '2024-10-11 10:15:16'),
(40, 184, 'action started via WP Cron', '2024-10-11 10:18:45', '2024-10-11 10:18:45'),
(41, 184, 'action complete via WP Cron', '2024-10-11 10:18:45', '2024-10-11 10:18:45'),
(42, 182, 'action started via WP Cron', '2024-10-14 04:51:33', '2024-10-14 04:51:33'),
(43, 182, 'action complete via WP Cron', '2024-10-14 04:51:34', '2024-10-14 04:51:34'),
(44, 185, 'action created', '2024-10-14 04:51:34', '2024-10-14 04:51:34'),
(45, 170, 'action started via WP Cron', '2024-10-15 04:52:41', '2024-10-15 04:52:41'),
(46, 170, 'action complete via WP Cron', '2024-10-15 04:52:47', '2024-10-15 04:52:47'),
(47, 186, 'action created', '2024-10-15 04:52:47', '2024-10-15 04:52:47'),
(48, 185, 'action started via WP Cron', '2024-10-15 04:52:47', '2024-10-15 04:52:47'),
(49, 185, 'action complete via WP Cron', '2024-10-15 04:52:48', '2024-10-15 04:52:48'),
(50, 187, 'action created', '2024-10-15 04:52:48', '2024-10-15 04:52:48'),
(51, 187, 'action started via WP Cron', '2024-10-16 05:37:28', '2024-10-16 05:37:28'),
(52, 187, 'action complete via WP Cron', '2024-10-16 05:37:28', '2024-10-16 05:37:28'),
(53, 188, 'action created', '2024-10-16 05:37:29', '2024-10-16 05:37:29'),
(54, 188, 'action started via WP Cron', '2024-10-17 07:39:13', '2024-10-17 07:39:13'),
(55, 188, 'action complete via WP Cron', '2024-10-17 07:39:13', '2024-10-17 07:39:13'),
(56, 189, 'action created', '2024-10-17 07:39:13', '2024-10-17 07:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-09-12 07:10:54', '2024-09-12 07:10:54', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1729159854;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1729159865;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1729192261;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1729195854;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1729197654;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1729199454;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1729235454;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729235461;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729235465;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729753992;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1729754887;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'auto'),
(2, 'siteurl', 'http://wp-for-twig.ddev.site', 'on'),
(3, 'home', 'http://wp-for-twig.ddev.site', 'on'),
(4, 'blogname', 'RD', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'a7xrishabhdiwan@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', 'password', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:119:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"type_of_project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?type_of_project=$matches[1]&feed=$matches[2]\";s:51:\"type_of_project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?type_of_project=$matches[1]&feed=$matches[2]\";s:32:\"type_of_project/([^/]+)/embed/?$\";s:48:\"index.php?type_of_project=$matches[1]&embed=true\";s:44:\"type_of_project/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?type_of_project=$matches[1]&paged=$matches[2]\";s:26:\"type_of_project/([^/]+)/?$\";s:37:\"index.php?type_of_project=$matches[1]\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=15&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"animated-typing-effect/typingeffect.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:25:\"timber-library/timber.php\";i:5;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'rishabh-d-portfolio', 'on'),
(42, 'stylesheet', 'rishabh-d-portfolio', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '57155', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '15', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1741677054', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '57155', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'auto'),
(103, 'fresh_site', '0', 'auto'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.6.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'on'),
(125, 'recovery_keys', 'a:0:{}', 'auto'),
(126, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1726125650;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(127, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.2\";s:7:\"version\";s:5:\"6.6.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1729152744;s:15:\"version_checked\";s:5:\"6.6.2\";s:12:\"translations\";a:0:{}}', 'off'),
(131, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1729150756;s:7:\"checked\";a:1:{s:19:\"rishabh-d-portfolio\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'off'),
(137, 'can_compress_scripts', '0', 'on'),
(152, 'finished_updating_comment_type', '1', 'auto'),
(153, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(154, 'recently_activated', 'a:2:{s:24:\"wpforms-lite/wpforms.php\";i:1728641716;s:72:\"change-admin-email-setting-without-outbound-email/change-admin-email.php\";i:1728538643;}', 'auto'),
(160, 'current_theme', 'Rishabh D Portfolio', 'auto'),
(161, 'theme_mods_learning-theme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1729060715;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'off'),
(162, 'theme_switched', '', 'auto'),
(169, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(177, 'acf_first_activated_version', '6.3.6', 'on'),
(178, 'acf_site_health', '{\"version\":\"6.3.6.3\",\"plugin_type\":\"Free\",\"wp_version\":\"6.6.2\",\"mysql_version\":\"10.4.28-MariaDB-1:10.4.28+maria~ubu2004-log\",\"is_multisite\":false,\"active_theme\":{\"name\":\"Rishabh D Portfolio\",\"version\":\"1.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"classic-editor\\/classic-editor.php\":{\"name\":\"Classic Editor\",\"version\":\"1.6.5\",\"plugin_uri\":\"https:\\/\\/wordpress.org\\/plugins\\/classic-editor\\/\"},\"contact-form-7\\/wp-contact-form-7.php\":{\"name\":\"Contact Form 7\",\"version\":\"5.9.8\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/\"},\"advanced-custom-fields\\/acf.php\":{\"name\":\"Secure Custom Fields\",\"version\":\"6.3.6.3\",\"plugin_uri\":\"http:\\/\\/wordpress.org\\/plugins\\/advanced-custom-fields\\/\"},\"timber-library\\/timber.php\":{\"name\":\"Timber\",\"version\":\"1.23.1\",\"plugin_uri\":\"https:\\/\\/upstatement.com\\/timber\"},\"animated-typing-effect\\/typingeffect.php\":{\"name\":\"Typing Effect\",\"version\":\"1.3.7\",\"plugin_uri\":\"http:\\/\\/93digital.co.uk\\/\"},\"wp-mail-smtp\\/wp_mail_smtp.php\":{\"name\":\"WP Mail SMTP\",\"version\":\"4.1.1\",\"plugin_uri\":\"https:\\/\\/wpmailsmtp.com\\/\"}},\"ui_field_groups\":\"1\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"group\":3},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"5\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"4\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1726126088,\"event_first_created_post_type\":1726126899,\"event_first_created_field_group\":1726126954,\"event_first_created_taxonomy\":1726138300,\"last_updated\":1729150757}', 'off'),
(180, 'acf_version', '6.3.6.3', 'auto'),
(215, 'type_of_project_children', 'a:0:{}', 'auto'),
(242, 'recovery_mode_email_last_sent', '1726206299', 'auto'),
(259, 'https_detection_errors', 'a:0:{}', 'auto'),
(260, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":6,\"critical\":1}', 'on'),
(266, 'category_children', 'a:0:{}', 'auto'),
(321, 'WPLANG', '', 'auto'),
(327, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'auto'),
(553, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.9.8\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1726818906;s:7:\"version\";s:5:\"5.9.8\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'auto'),
(554, 'secret_key', 'uJEXM?|0dzC&BE &C33KSaXr[=^&a#hNomVz<03b6)/b65WqU8~G+7RLbIj2q.d;', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1099, 'action_scheduler_hybrid_store_demarkation', '168', 'auto'),
(1100, 'schema-ActionScheduler_StoreSchema', '7.0.1728537064', 'auto'),
(1101, 'schema-ActionScheduler_LoggerSchema', '3.0.1728537065', 'auto'),
(1102, 'wp_mail_smtp_initial_version', '4.1.1', 'off'),
(1103, 'wp_mail_smtp_version', '4.1.1', 'off'),
(1104, 'wp_mail_smtp', 'a:18:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:25:\"a7xrishabhdiwan@gmail.com\";s:9:\"from_name\";s:2:\"RD\";s:6:\"mailer\";s:4:\"smtp\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:0;}s:4:\"smtp\";a:7:{s:7:\"autotls\";b:1;s:4:\"auth\";b:1;s:4:\"host\";s:14:\"smtp.gmail.com\";s:4:\"port\";i:587;s:10:\"encryption\";s:3:\"tls\";s:4:\"user\";s:25:\"a7xrishabhdiwan@gmail.com\";s:4:\"pass\";s:76:\"lRZjvAvcEgJHig3G6CLmtZr/R0LzgSHhn4c9VaFYZQRNTf+MNQRcF+JfzBjj5O6+GYbAkP5jGbU=\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}s:9:\"sendlayer\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:7:\"smtp2go\";a:1:{s:7:\"api_key\";s:0:\"\";}s:9:\"sparkpost\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"postmark\";a:2:{s:16:\"server_api_token\";s:0:\"\";s:14:\"message_stream\";s:0:\"\";}s:9:\"amazonses\";a:3:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:6:\"region\";s:9:\"us-east-1\";}s:5:\"gmail\";a:8:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";s:12:\"user_details\";a:1:{s:5:\"email\";s:0:\"\";}s:23:\"one_click_setup_enabled\";b:0;s:27:\"one_click_setup_credentials\";a:2:{s:3:\"key\";s:0:\"\";s:5:\"token\";s:0:\"\";}s:28:\"one_click_setup_user_details\";a:1:{s:5:\"email\";s:0:\"\";}}s:7:\"outlook\";a:5:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";s:12:\"user_details\";a:1:{s:5:\"email\";s:0:\"\";}}s:4:\"zoho\";a:6:{s:9:\"client_id\";s:0:\"\";s:13:\"client_secret\";s:0:\"\";s:6:\"domain\";s:3:\"com\";s:12:\"access_token\";a:0:{}s:13:\"refresh_token\";s:0:\"\";s:12:\"user_details\";a:1:{s:5:\"email\";s:0:\"\";}}s:4:\"logs\";a:5:{s:7:\"enabled\";b:0;s:17:\"log_email_content\";b:0;s:16:\"save_attachments\";b:0;s:19:\"open_email_tracking\";b:0;s:19:\"click_link_tracking\";b:0;}s:11:\"alert_email\";a:2:{s:7:\"enabled\";b:0;s:11:\"connections\";a:0:{}}s:7:\"license\";a:4:{s:3:\"key\";s:0:\"\";s:10:\"is_expired\";b:0;s:11:\"is_disabled\";b:0;s:10:\"is_invalid\";b:0;}}', 'off'),
(1105, 'wp_mail_smtp_activated_time', '1728537065', 'off'),
(1106, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1728537065;}', 'auto'),
(1111, 'action_scheduler_lock_async-request-runner', '6710dc78a35272.31682209|1729158324', 'no'),
(1115, 'wp_mail_smtp_migration_version', '5', 'on'),
(1116, 'wp_mail_smtp_debug_events_db_version', '1', 'on'),
(1117, 'wp_mail_smtp_activation_prevent_redirect', '1', 'auto'),
(1118, 'wp_mail_smtp_setup_wizard_stats', 'a:3:{s:13:\"launched_time\";i:1728537067;s:14:\"completed_time\";i:1728537771;s:14:\"was_successful\";b:0;}', 'off'),
(1120, 'wp_mail_smtp_mail_key', 'NMW6TLf07OdVUaEd/3B6cUJIHoNjomT2Q1w+ewrtlL0=', 'auto'),
(1123, 'wpforms_activation_redirect', '1', 'auto'),
(1124, 'wpforms_installation_source', 'wp-mail-smtp-setup-wizard', 'auto'),
(1125, 'wpforms_version', '1.9.1.3', 'auto'),
(1126, 'wpforms_version_lite', '1.9.1.3', 'auto'),
(1127, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1728537751;}', 'auto'),
(1132, 'wpforms_versions_lite', 'a:13:{s:5:\"1.5.9\";i:0;s:7:\"1.6.7.2\";i:0;s:5:\"1.6.8\";i:0;s:5:\"1.7.5\";i:0;s:7:\"1.7.5.1\";i:0;s:5:\"1.7.7\";i:0;s:5:\"1.8.2\";i:0;s:5:\"1.8.3\";i:0;s:5:\"1.8.4\";i:0;s:5:\"1.8.6\";i:0;s:5:\"1.8.7\";i:0;s:5:\"1.9.1\";i:0;s:7:\"1.9.1.3\";i:1728537760;}', 'auto'),
(1133, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(1134, 'wpforms_settings', 'a:3:{s:13:\"modern-markup\";s:1:\"1\";s:20:\"modern-markup-is-set\";b:1;s:26:\"modern-markup-hide-setting\";b:1;}', 'auto'),
(1135, 'wpforms_admin_notices', 'a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1728537760;s:9:\"dismissed\";b:0;}}', 'auto'),
(1136, 'wp_mail_smtp_debug', 'a:0:{}', 'off'),
(1140, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1728537777;s:9:\"dismissed\";b:0;}', 'auto'),
(1142, 'wpforms_process_forms_locator_status', 'completed', 'auto'),
(1144, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1729150753;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'auto'),
(1148, 'wp_mail_smtp_lite_sent_email_counter', '6', 'on'),
(1149, 'wp_mail_smtp_lite_weekly_sent_email_counter', 'a:2:{i:41;i:4;i:42;i:2;}', 'on'),
(1168, '_wpforms_transient_timeout_addons.json', '1729143374', 'off'),
(1169, '_wpforms_transient_addons.json', '1728538574', 'off'),
(1499, '_site_transient_timeout_php_check_3fde9d06ba9e4fd20d08658e6f30b792', '1729235462', 'off'),
(1500, '_site_transient_php_check_3fde9d06ba9e4fd20d08658e6f30b792', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(1590, 'action_scheduler_migration_status', 'complete', 'auto'),
(1655, '_site_transient_timeout_browser_971351e0fba8e96d14d95724127e6831', '1729486326', 'off'),
(1656, '_site_transient_browser_971351e0fba8e96d14d95724127e6831', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"131.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(1858, 'wp_mail_smtp_summary_report_email_last_sent_week', '42', 'auto'),
(2105, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1729150756;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.9.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.9.8.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:7:\"6.3.6.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3167679\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3167679\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3167679\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3167679\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:25:\"timber-library/timber.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/timber-library\";s:4:\"slug\";s:14:\"timber-library\";s:6:\"plugin\";s:25:\"timber-library/timber.php\";s:11:\"new_version\";s:6:\"1.23.1\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/timber-library/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/timber-library.1.23.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/timber-library/assets/icon-256x256.png?rev=1482054\";s:2:\"1x\";s:67:\"https://ps.w.org/timber-library/assets/icon-128x128.png?rev=1482055\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/timber-library/assets/banner-1544x500.jpg?rev=1481635\";s:2:\"1x\";s:69:\"https://ps.w.org/timber-library/assets/banner-772x250.jpg?rev=1481619\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"5.3.0\";}s:39:\"animated-typing-effect/typingeffect.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/animated-typing-effect\";s:4:\"slug\";s:22:\"animated-typing-effect\";s:6:\"plugin\";s:39:\"animated-typing-effect/typingeffect.php\";s:11:\"new_version\";s:5:\"1.3.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/animated-typing-effect/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/animated-typing-effect.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/animated-typing-effect/assets/icon-256x256.jpg?rev=2636926\";s:2:\"1x\";s:75:\"https://ps.w.org/animated-typing-effect/assets/icon-128x128.jpg?rev=2636926\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/animated-typing-effect/assets/banner-1544x500.jpg?rev=2636926\";s:2:\"1x\";s:77:\"https://ps.w.org/animated-typing-effect/assets/banner-772x250.jpg?rev=2636926\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.jpg?rev=2811094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.jpg?rev=2811094\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";}}s:7:\"checked\";a:8:{s:19:\"akismet/akismet.php\";s:5:\"5.3.3\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.5\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.9.8\";s:9:\"hello.php\";s:5:\"1.7.2\";s:30:\"advanced-custom-fields/acf.php\";s:7:\"6.3.6.3\";s:25:\"timber-library/timber.php\";s:6:\"1.23.1\";s:39:\"animated-typing-effect/typingeffect.php\";s:5:\"1.3.7\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"4.1.1\";}}', 'off'),
(2163, 'theme_mods_rishabh-d-portfolio', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(2222, '_transient_timeout_action_scheduler_last_pastdue_actions_check', '1729172632', 'off'),
(2223, '_transient_action_scheduler_last_pastdue_actions_check', '1729151032', 'off'),
(2284, '_site_transient_timeout_theme_roots', '1729158149', 'off'),
(2285, '_site_transient_theme_roots', 'a:1:{s:19:\"rishabh-d-portfolio\";s:7:\"/themes\";}', 'off'),
(2307, '_site_transient_timeout_wp_theme_files_patterns-5aa4416832fa64af86168f1353c33386', '1729161649', 'off'),
(2308, '_site_transient_wp_theme_files_patterns-5aa4416832fa64af86168f1353c33386', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1727248654:1'),
(6, 8, '_edit_last', '1'),
(7, 8, '_edit_lock', '1726741058:1'),
(9, 11, '_edit_last', '1'),
(10, 11, '_edit_lock', '1729157988:1'),
(11, 15, '_edit_last', '1'),
(12, 15, '_edit_lock', '1729158121:1'),
(15, 15, 'banner_image', '73'),
(16, 15, '_banner_image', 'field_66e29c66a7830'),
(17, 15, 'banner', ''),
(18, 15, '_banner', 'field_66e29c57a782f'),
(19, 15, 'about_us_title', 'I\'ll Introduce Myself'),
(20, 15, '_about_us_title', 'field_66e29bae61a7b'),
(21, 15, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(22, 15, '_about_us_body', 'field_66e29bbf61a7c'),
(23, 15, 'about_us', ''),
(24, 15, '_about_us', 'field_66e29b604820b'),
(25, 20, 'banner_image', '19'),
(26, 20, '_banner_image', 'field_66e29c66a7830'),
(27, 20, 'banner', ''),
(28, 20, '_banner', 'field_66e29c57a782f'),
(29, 20, 'about_us_title', 'About RD'),
(30, 20, '_about_us_title', 'field_66e29bae61a7b'),
(31, 20, 'about_us_body', 'RDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRD RDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRD RDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRD  RDRDRDRRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRDRD RDRDRDRDRDRDRDRDRDRDRDRDRDRD '),
(32, 20, '_about_us_body', 'field_66e29bbf61a7c'),
(33, 20, 'about_us', ''),
(34, 20, '_about_us', 'field_66e29b604820b'),
(35, 15, '_wp_page_template', 'index.php'),
(36, 21, 'banner_image', '19'),
(37, 21, '_banner_image', 'field_66e29c66a7830'),
(38, 21, 'banner', ''),
(39, 21, '_banner', 'field_66e29c57a782f'),
(40, 21, 'about_us_title', 'About RD'),
(41, 21, '_about_us_title', 'field_66e29bae61a7b'),
(42, 21, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(43, 21, '_about_us_body', 'field_66e29bbf61a7c'),
(44, 21, 'about_us', ''),
(45, 21, '_about_us', 'field_66e29b604820b'),
(46, 22, 'banner_image', '19'),
(47, 22, '_banner_image', 'field_66e29c66a7830'),
(48, 22, 'banner', ''),
(49, 22, '_banner', 'field_66e29c57a782f'),
(50, 22, 'about_us_title', 'About'),
(51, 22, '_about_us_title', 'field_66e29bae61a7b'),
(52, 22, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(53, 22, '_about_us_body', 'field_66e29bbf61a7c'),
(54, 22, 'about_us', ''),
(55, 22, '_about_us', 'field_66e29b604820b'),
(56, 23, '_edit_last', '1'),
(57, 23, '_edit_lock', '1728641630:1'),
(59, 24, '_edit_last', '1'),
(60, 24, '_edit_lock', '1728641632:1'),
(62, 25, '_edit_last', '1'),
(63, 25, '_edit_lock', '1728641635:1'),
(65, 26, '_edit_last', '1'),
(66, 26, '_edit_lock', '1726213499:1'),
(460, 73, '_wp_attached_file', '2024/09/home-right.png'),
(461, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:724;s:6:\"height\";i:703;s:4:\"file\";s:22:\"2024/09/home-right.png\";s:8:\"filesize\";i:56668;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"home-right-300x291.png\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25076;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"home-right-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11134;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(462, 74, 'banner_image', '73'),
(463, 74, '_banner_image', 'field_66e29c66a7830'),
(464, 74, 'banner', ''),
(465, 74, '_banner', 'field_66e29c57a782f'),
(466, 74, 'about_us_title', 'About'),
(467, 74, '_about_us_title', 'field_66e29bae61a7b'),
(468, 74, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(469, 74, '_about_us_body', 'field_66e29bbf61a7c'),
(470, 74, 'about_us', ''),
(471, 74, '_about_us', 'field_66e29b604820b'),
(484, 76, '_menu_item_type', 'custom'),
(485, 76, '_menu_item_menu_item_parent', '0'),
(486, 76, '_menu_item_object_id', '76'),
(487, 76, '_menu_item_object', 'custom'),
(488, 76, '_menu_item_target', ''),
(489, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(490, 76, '_menu_item_xfn', ''),
(491, 76, '_menu_item_url', '/about'),
(492, 76, '_menu_item_orphaned', '1726472049'),
(493, 77, '_menu_item_type', 'custom'),
(494, 77, '_menu_item_menu_item_parent', '0'),
(495, 77, '_menu_item_object_id', '77'),
(496, 77, '_menu_item_object', 'custom'),
(497, 77, '_menu_item_target', ''),
(498, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(499, 77, '_menu_item_xfn', ''),
(500, 77, '_menu_item_url', '/technical-skills'),
(501, 77, '_menu_item_orphaned', '1726472067'),
(502, 78, '_menu_item_type', 'custom'),
(503, 78, '_menu_item_menu_item_parent', '0'),
(504, 78, '_menu_item_object_id', '78'),
(505, 78, '_menu_item_object', 'custom'),
(506, 78, '_menu_item_target', ''),
(507, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(508, 78, '_menu_item_xfn', ''),
(509, 78, '_menu_item_url', '/projects'),
(510, 78, '_menu_item_orphaned', '1726472080'),
(511, 79, '_menu_item_type', 'custom'),
(512, 79, '_menu_item_menu_item_parent', '0'),
(513, 79, '_menu_item_object_id', '79'),
(514, 79, '_menu_item_object', 'custom'),
(515, 79, '_menu_item_target', ''),
(516, 79, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(517, 79, '_menu_item_xfn', ''),
(518, 79, '_menu_item_url', '/contact-us'),
(519, 79, '_menu_item_orphaned', '1726472096'),
(520, 80, '_menu_item_type', 'custom'),
(521, 80, '_menu_item_menu_item_parent', '0'),
(522, 80, '_menu_item_object_id', '80'),
(523, 80, '_menu_item_object', 'custom'),
(524, 80, '_menu_item_target', ''),
(525, 80, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(526, 80, '_menu_item_xfn', ''),
(527, 80, '_menu_item_url', '/#about'),
(529, 81, '_menu_item_type', 'custom'),
(530, 81, '_menu_item_menu_item_parent', '0'),
(531, 81, '_menu_item_object_id', '81'),
(532, 81, '_menu_item_object', 'custom'),
(533, 81, '_menu_item_target', ''),
(534, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(535, 81, '_menu_item_xfn', ''),
(536, 81, '_menu_item_url', '/#technical-skills'),
(538, 82, '_menu_item_type', 'custom'),
(539, 82, '_menu_item_menu_item_parent', '0'),
(540, 82, '_menu_item_object_id', '82'),
(541, 82, '_menu_item_object', 'custom'),
(542, 82, '_menu_item_target', ''),
(543, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(544, 82, '_menu_item_xfn', ''),
(545, 82, '_menu_item_url', '/#projects'),
(547, 83, '_menu_item_type', 'custom'),
(548, 83, '_menu_item_menu_item_parent', '0'),
(549, 83, '_menu_item_object_id', '83'),
(550, 83, '_menu_item_object', 'custom'),
(551, 83, '_menu_item_target', ''),
(552, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(553, 83, '_menu_item_xfn', ''),
(554, 83, '_menu_item_url', '/#contact-us'),
(566, 80, '_wp_old_date', '2024-09-16'),
(567, 81, '_wp_old_date', '2024-09-16'),
(568, 82, '_wp_old_date', '2024-09-16'),
(569, 83, '_wp_old_date', '2024-09-16'),
(570, 85, 'banner_image', '73'),
(571, 85, '_banner_image', 'field_66e29c66a7830'),
(572, 85, 'banner', ''),
(573, 85, '_banner', 'field_66e29c57a782f'),
(574, 85, 'about_us_title', 'Let me Introduce Myself'),
(575, 85, '_about_us_title', 'field_66e29bae61a7b'),
(576, 85, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(577, 85, '_about_us_body', 'field_66e29bbf61a7c'),
(578, 85, 'about_us', ''),
(579, 85, '_about_us', 'field_66e29b604820b'),
(580, 86, 'banner_image', '73'),
(581, 86, '_banner_image', 'field_66e29c66a7830'),
(582, 86, 'banner', ''),
(583, 86, '_banner', 'field_66e29c57a782f'),
(584, 86, 'about_us_title', 'I\'ll Introduce Myself'),
(585, 86, '_about_us_title', 'field_66e29bae61a7b'),
(586, 86, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(587, 86, '_about_us_body', 'field_66e29bbf61a7c'),
(588, 86, 'about_us', ''),
(589, 86, '_about_us', 'field_66e29b604820b'),
(598, 91, '_edit_last', '1'),
(599, 91, '_edit_lock', '1728641638:1'),
(610, 94, '_edit_last', '1'),
(611, 94, '_edit_lock', '1728641641:1'),
(612, 96, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(613, 96, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:47:\"[_site_title] <wordpress@wp-for-twig.ddev.site>\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(614, 96, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:47:\"[_site_title] <wordpress@wp-for-twig.ddev.site>\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(615, 96, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(616, 96, '_additional_settings', ''),
(617, 96, '_locale', 'en_US'),
(618, 96, '_hash', '62492842cea87667eaf3f01c0d87cffc97e93a62'),
(619, 97, '_form', '[text* your-name class:your-name autocomplete:name placeholder \"Your Name\"]\n[email* your-email class:your-email autocomplete:email placeholder \"Your Email\"]\n[text* your-subject class:your-subject placeholder \"Your Subject\"]\n[textarea your-message class:your-message placeholder \"Your Message\"]\n[submit \"Submit\"]'),
(620, 97, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:47:\"[_site_title] <wordpress@wp-for-twig.ddev.site>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(621, 97, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:47:\"[_site_title] <wordpress@wp-for-twig.ddev.site>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(622, 97, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(623, 97, '_additional_settings', ''),
(624, 97, '_locale', 'en_US'),
(625, 97, '_hash', '474d839532634a822e328824e8e8ba2d2c7ee3a6'),
(626, 119, '_form', '[text* your-name autocomplete:name]\n[email* your-email autocomplete:email] </label>\n[text* your-subject]\n[textarea your-message]\n[submit \"Submit\"]'),
(627, 119, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:47:\"[_site_title] <wordpress@wp-for-twig.ddev.site>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(628, 119, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:47:\"[_site_title] <wordpress@wp-for-twig.ddev.site>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(629, 119, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(630, 119, '_additional_settings', ''),
(631, 119, '_locale', 'en_US'),
(632, 119, '_hash', '7eb05dcba59d71b6d0075cae0caf14784d8a32ab'),
(651, 131, '_wp_attached_file', '2024/09/businessman-showing-changes-report-scaled.jpg'),
(652, 131, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:53:\"2024/09/businessman-showing-changes-report-scaled.jpg\";s:8:\"filesize\";i:448186;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:46:\"businessman-showing-changes-report-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34827;}s:5:\"large\";a:5:{s:4:\"file\";s:47:\"businessman-showing-changes-report-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:120782;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:46:\"businessman-showing-changes-report-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26195;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:46:\"businessman-showing-changes-report-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85090;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:48:\"businessman-showing-changes-report-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:206712;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:48:\"businessman-showing-changes-report-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:314587;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"2.2\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:117:\"Confident businessman pointing at document while explaining his idea to his partner on background of their colleagues\";s:17:\"created_timestamp\";s:10:\"1409664397\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"50\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:5:\"0.008\";s:5:\"title\";s:9:\"Paperwork\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:50:{i:0;s:14:\"businesspeople\";i:1;s:6:\"people\";i:2;s:8:\"business\";i:3;s:6:\"female\";i:4;s:5:\"woman\";i:5;s:13:\"businesswoman\";i:6;s:5:\"group\";i:7;s:4:\"team\";i:8;s:7:\"meeting\";i:9;s:3:\"man\";i:10;s:6:\"person\";i:11;s:5:\"white\";i:12;s:7:\"partner\";i:13;s:5:\"young\";i:14;s:11:\"businessman\";i:15;s:12:\"professional\";i:16;s:3:\"job\";i:17;s:4:\"male\";i:18;s:12:\"contemporary\";i:19;s:9:\"corporate\";i:20;s:9:\"executive\";i:21;s:10:\"occupation\";i:22;s:9:\"associate\";i:23;s:5:\"adult\";i:24;s:8:\"employee\";i:25;s:6:\"collar\";i:26;s:6:\"worker\";i:27;s:4:\"busy\";i:28;s:10:\"employment\";i:29;s:6:\"inside\";i:30;s:6:\"indoor\";i:31;s:10:\"specialist\";i:32;s:9:\"colleague\";i:33;s:9:\"co-worker\";i:34;s:6:\"office\";i:35;s:8:\"teamwork\";i:36;s:10:\"explaining\";i:37;s:7:\"showing\";i:38;s:5:\"focus\";i:39;s:8:\"handsome\";i:40;s:9:\"confident\";i:41;s:9:\"Caucasian\";i:42;s:9:\"clipboard\";i:43;s:5:\"paper\";i:44;s:8:\"document\";i:45;s:10:\"foreground\";i:46;s:10:\"background\";i:47;s:4:\"idea\";i:48;s:9:\"ethnicity\";i:49;s:10:\"consulting\";}}s:14:\"original_image\";s:38:\"businessman-showing-changes-report.jpg\";}'),
(653, 23, '_thumbnail_id', '131'),
(654, 24, '_thumbnail_id', '131'),
(655, 25, '_thumbnail_id', '131'),
(656, 91, '_thumbnail_id', '131'),
(657, 94, '_thumbnail_id', '131'),
(658, 132, '_wp_attached_file', '2024/10/wordpress.png'),
(659, 132, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:21:\"2024/10/wordpress.png\";s:8:\"filesize\";i:27218;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"wordpress-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16708;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"wordpress-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7484;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(660, 133, '_wp_attached_file', '2024/10/twig.png'),
(661, 133, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:16:\"2024/10/twig.png\";s:8:\"filesize\";i:16579;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"twig-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13664;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"twig-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5828;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(662, 134, '_wp_attached_file', '2024/10/tailwind.png'),
(663, 134, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:522;s:6:\"height\";i:433;s:4:\"file\";s:20:\"2024/10/tailwind.png\";s:8:\"filesize\";i:60351;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"tailwind-300x249.png\";s:5:\"width\";i:300;s:6:\"height\";i:249;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:27784;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"tailwind-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11923;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(664, 135, '_wp_attached_file', '2024/10/Stripe.png'),
(665, 135, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:374;s:6:\"height\";i:375;s:4:\"file\";s:18:\"2024/10/Stripe.png\";s:8:\"filesize\";i:63536;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"Stripe-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44572;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"Stripe-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15117;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(666, 136, '_wp_attached_file', '2024/10/slick.png'),
(667, 136, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:17:\"2024/10/slick.png\";s:8:\"filesize\";i:7541;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"slick-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18366;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"slick-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8363;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(668, 137, '_wp_attached_file', '2024/10/sass.png'),
(669, 137, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:16:\"2024/10/sass.png\";s:8:\"filesize\";i:30688;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"sass-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21567;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"sass-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9859;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(670, 138, '_wp_attached_file', '2024/10/php.png'),
(671, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:15:\"2024/10/php.png\";s:8:\"filesize\";i:32172;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"php-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23685;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"php-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10284;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(672, 139, '_wp_attached_file', '2024/10/npm.png'),
(673, 139, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:15:\"2024/10/npm.png\";s:8:\"filesize\";i:13368;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"npm-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9489;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"npm-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4368;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(674, 140, '_wp_attached_file', '2024/10/laravel.png'),
(675, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2024/10/laravel.png\";s:8:\"filesize\";i:156547;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"laravel-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55366;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"laravel-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17944;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(676, 141, '_wp_attached_file', '2024/10/lando2.png'),
(677, 141, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:504;s:4:\"file\";s:18:\"2024/10/lando2.png\";s:8:\"filesize\";i:7684;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"lando2-300x295.png\";s:5:\"width\";i:300;s:6:\"height\";i:295;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20206;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"lando2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9259;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(678, 142, '_wp_attached_file', '2024/10/lando.png'),
(679, 142, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:503;s:6:\"height\";i:496;s:4:\"file\";s:17:\"2024/10/lando.png\";s:8:\"filesize\";i:120203;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"lando-300x296.png\";s:5:\"width\";i:300;s:6:\"height\";i:296;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:48123;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"lando-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17432;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(680, 143, '_wp_attached_file', '2024/10/jquery2.png'),
(681, 143, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:485;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2024/10/jquery2.png\";s:8:\"filesize\";i:28782;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"jquery2-284x300.png\";s:5:\"width\";i:284;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21262;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"jquery2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9864;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(682, 144, '_wp_attached_file', '2024/10/jquery.png'),
(683, 144, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:505;s:6:\"height\";i:512;s:4:\"file\";s:18:\"2024/10/jquery.png\";s:8:\"filesize\";i:29054;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"jquery-296x300.png\";s:5:\"width\";i:296;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20976;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"jquery-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9094;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(684, 145, '_wp_attached_file', '2024/10/javascript.png'),
(685, 145, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:22:\"2024/10/javascript.png\";s:8:\"filesize\";i:18419;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"javascript-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8652;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"javascript-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3924;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(686, 146, '_wp_attached_file', '2024/10/html.png'),
(687, 146, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:16:\"2024/10/html.png\";s:8:\"filesize\";i:38956;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"html-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19439;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"html-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8332;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(688, 147, '_wp_attached_file', '2024/10/github.png'),
(689, 147, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:18:\"2024/10/github.png\";s:8:\"filesize\";i:18926;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"github-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7319;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"github-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3418;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(690, 148, '_wp_attached_file', '2024/10/git.png'),
(691, 148, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:15:\"2024/10/git.png\";s:8:\"filesize\";i:22043;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"git-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15642;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"git-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7198;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(692, 149, '_wp_attached_file', '2024/10/drupal.png'),
(693, 149, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:18:\"2024/10/drupal.png\";s:8:\"filesize\";i:21762;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"drupal-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14735;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"drupal-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6593;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(694, 150, '_wp_attached_file', '2024/10/docker.png'),
(695, 150, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:18:\"2024/10/docker.png\";s:8:\"filesize\";i:16968;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"docker-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12187;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"docker-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6019;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(696, 151, '_wp_attached_file', '2024/10/ddev.png'),
(697, 151, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:16:\"2024/10/ddev.png\";s:8:\"filesize\";i:15058;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"ddev-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19365;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(698, 152, '_wp_attached_file', '2024/10/css.png'),
(699, 152, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:15:\"2024/10/css.png\";s:8:\"filesize\";i:39579;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"css-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20100;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"css-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8607;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(700, 153, '_wp_attached_file', '2024/10/composer.png'),
(701, 153, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:20:\"2024/10/composer.png\";s:8:\"filesize\";i:88042;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"composer-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:64212;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"composer-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:26709;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(702, 154, '_wp_attached_file', '2024/10/Bootstrap.png'),
(703, 154, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:559;s:6:\"height\";i:446;s:4:\"file\";s:21:\"2024/10/Bootstrap.png\";s:8:\"filesize\";i:104936;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"Bootstrap-300x239.png\";s:5:\"width\";i:300;s:6:\"height\";i:239;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30957;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"Bootstrap-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13495;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(704, 15, 'technical_skills_languages_skill_1_image', '146'),
(705, 15, '_technical_skills_languages_skill_1_image', 'field_66ed4a2026228'),
(706, 15, 'technical_skills_languages_skill_2_image', '152'),
(707, 15, '_technical_skills_languages_skill_2_image', 'field_66ed4a60536d2'),
(708, 15, 'technical_skills_languages_skill_3_image', '145'),
(709, 15, '_technical_skills_languages_skill_3_image', 'field_66ed4a85536d3'),
(710, 15, 'technical_skills_languages_skill_4_image', '138'),
(711, 15, '_technical_skills_languages_skill_4_image', 'field_66ed4a9a536d4'),
(712, 15, 'technical_skills_languages_skill_5_image', '133'),
(713, 15, '_technical_skills_languages_skill_5_image', 'field_66ed4aad536d5'),
(714, 15, 'technical_skills_languages', ''),
(715, 15, '_technical_skills_languages', 'field_67064babcc5e8'),
(716, 15, 'technical_skills_cms_skill_1_image', '132'),
(717, 15, '_technical_skills_cms_skill_1_image', 'field_67064c11cc5ea'),
(718, 15, 'technical_skills_cms_skill_2_image', '149'),
(719, 15, '_technical_skills_cms_skill_2_image', 'field_67064c1ecc5eb'),
(720, 15, 'technical_skills_cms', ''),
(721, 15, '_technical_skills_cms', 'field_67064bf8cc5e9'),
(722, 15, 'technical_skills_tools_frameworks_and_libraries_skill_1_image', '137'),
(723, 15, '_technical_skills_tools_frameworks_and_libraries_skill_1_image', 'field_66ed4bab536ea'),
(724, 15, 'technical_skills_tools_frameworks_and_libraries_skill_2_image', '148'),
(725, 15, '_technical_skills_tools_frameworks_and_libraries_skill_2_image', 'field_66ed4ba0536e9'),
(726, 15, 'technical_skills_tools_frameworks_and_libraries_skill_3_image', '135'),
(727, 15, '_technical_skills_tools_frameworks_and_libraries_skill_3_image', 'field_66ed4b96536e8'),
(728, 15, 'technical_skills_tools_frameworks_and_libraries_skill_4_image', '151'),
(729, 15, '_technical_skills_tools_frameworks_and_libraries_skill_4_image', 'field_66ed4b84536e7'),
(730, 15, 'technical_skills_tools_frameworks_and_libraries_skill_5_image', '142'),
(731, 15, '_technical_skills_tools_frameworks_and_libraries_skill_5_image', 'field_66ed4b77536e6'),
(732, 15, 'technical_skills_tools_frameworks_and_libraries_skill_6_image', '154'),
(733, 15, '_technical_skills_tools_frameworks_and_libraries_skill_6_image', 'field_66ed4ac6536d7'),
(734, 15, 'technical_skills_tools_frameworks_and_libraries_skill_7_image', '134'),
(735, 15, '_technical_skills_tools_frameworks_and_libraries_skill_7_image', 'field_66ed4adb536d8'),
(736, 15, 'technical_skills_tools_frameworks_and_libraries_skill_8_image', '136'),
(737, 15, '_technical_skills_tools_frameworks_and_libraries_skill_8_image', 'field_66ed4aec536d9'),
(738, 15, 'technical_skills_tools_frameworks_and_libraries_skill_9_image', '139'),
(739, 15, '_technical_skills_tools_frameworks_and_libraries_skill_9_image', 'field_66ed4afa536db'),
(740, 15, 'technical_skills_tools_frameworks_and_libraries_skill_10_image', '153'),
(741, 15, '_technical_skills_tools_frameworks_and_libraries_skill_10_image', 'field_66ed4b12536dd'),
(742, 15, 'technical_skills_tools_frameworks_and_libraries_skill_11_image', '140'),
(743, 15, '_technical_skills_tools_frameworks_and_libraries_skill_11_image', 'field_66ed4b27536df'),
(744, 15, 'technical_skills_tools_frameworks_and_libraries_skill_12_image', '143'),
(745, 15, '_technical_skills_tools_frameworks_and_libraries_skill_12_image', 'field_66ed4b3d536e1'),
(746, 15, 'technical_skills_tools_frameworks_and_libraries_skill_13_image', '150'),
(747, 15, '_technical_skills_tools_frameworks_and_libraries_skill_13_image', 'field_66ed4b51536e3'),
(748, 15, 'technical_skills_tools_frameworks_and_libraries', ''),
(749, 15, '_technical_skills_tools_frameworks_and_libraries', 'field_67064c3acc5ec'),
(750, 15, 'technical_skills', ''),
(751, 15, '_technical_skills', 'field_66ed4a0e0a9f3'),
(752, 160, 'banner_image', '73'),
(753, 160, '_banner_image', 'field_66e29c66a7830'),
(754, 160, 'banner', ''),
(755, 160, '_banner', 'field_66e29c57a782f'),
(756, 160, 'about_us_title', 'I\'ll Introduce Myself'),
(757, 160, '_about_us_title', 'field_66e29bae61a7b'),
(758, 160, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(759, 160, '_about_us_body', 'field_66e29bbf61a7c'),
(760, 160, 'about_us', ''),
(761, 160, '_about_us', 'field_66e29b604820b'),
(762, 160, 'technical_skills_languages_skill_1_image', '146'),
(763, 160, '_technical_skills_languages_skill_1_image', 'field_66ed4a2026228'),
(764, 160, 'technical_skills_languages_skill_2_image', '152'),
(765, 160, '_technical_skills_languages_skill_2_image', 'field_66ed4a60536d2'),
(766, 160, 'technical_skills_languages_skill_3_image', '145'),
(767, 160, '_technical_skills_languages_skill_3_image', 'field_66ed4a85536d3'),
(768, 160, 'technical_skills_languages_skill_4_image', '138'),
(769, 160, '_technical_skills_languages_skill_4_image', 'field_66ed4a9a536d4'),
(770, 160, 'technical_skills_languages_skill_5_image', '133'),
(771, 160, '_technical_skills_languages_skill_5_image', 'field_66ed4aad536d5'),
(772, 160, 'technical_skills_languages', ''),
(773, 160, '_technical_skills_languages', 'field_67064babcc5e8'),
(774, 160, 'technical_skills_cms_skill_1_image', ''),
(775, 160, '_technical_skills_cms_skill_1_image', 'field_67064c11cc5ea'),
(776, 160, 'technical_skills_cms_skill_2_image', ''),
(777, 160, '_technical_skills_cms_skill_2_image', 'field_67064c1ecc5eb'),
(778, 160, 'technical_skills_cms', ''),
(779, 160, '_technical_skills_cms', 'field_67064bf8cc5e9'),
(780, 160, 'technical_skills_tools_frameworks_and_libraries_skill_1_image', ''),
(781, 160, '_technical_skills_tools_frameworks_and_libraries_skill_1_image', 'field_66ed4bab536ea'),
(782, 160, 'technical_skills_tools_frameworks_and_libraries_skill_2_image', ''),
(783, 160, '_technical_skills_tools_frameworks_and_libraries_skill_2_image', 'field_66ed4ba0536e9'),
(784, 160, 'technical_skills_tools_frameworks_and_libraries_skill_3_image', ''),
(785, 160, '_technical_skills_tools_frameworks_and_libraries_skill_3_image', 'field_66ed4b96536e8'),
(786, 160, 'technical_skills_tools_frameworks_and_libraries_skill_4_image', ''),
(787, 160, '_technical_skills_tools_frameworks_and_libraries_skill_4_image', 'field_66ed4b84536e7');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(788, 160, 'technical_skills_tools_frameworks_and_libraries_skill_5_image', ''),
(789, 160, '_technical_skills_tools_frameworks_and_libraries_skill_5_image', 'field_66ed4b77536e6'),
(790, 160, 'technical_skills_tools_frameworks_and_libraries_skill_6_image', ''),
(791, 160, '_technical_skills_tools_frameworks_and_libraries_skill_6_image', 'field_66ed4ac6536d7'),
(792, 160, 'technical_skills_tools_frameworks_and_libraries_skill_7_image', ''),
(793, 160, '_technical_skills_tools_frameworks_and_libraries_skill_7_image', 'field_66ed4adb536d8'),
(794, 160, 'technical_skills_tools_frameworks_and_libraries_skill_8_image', ''),
(795, 160, '_technical_skills_tools_frameworks_and_libraries_skill_8_image', 'field_66ed4aec536d9'),
(796, 160, 'technical_skills_tools_frameworks_and_libraries_skill_9_image', ''),
(797, 160, '_technical_skills_tools_frameworks_and_libraries_skill_9_image', 'field_66ed4afa536db'),
(798, 160, 'technical_skills_tools_frameworks_and_libraries_skill_10_image', ''),
(799, 160, '_technical_skills_tools_frameworks_and_libraries_skill_10_image', 'field_66ed4b12536dd'),
(800, 160, 'technical_skills_tools_frameworks_and_libraries_skill_11_image', ''),
(801, 160, '_technical_skills_tools_frameworks_and_libraries_skill_11_image', 'field_66ed4b27536df'),
(802, 160, 'technical_skills_tools_frameworks_and_libraries_skill_12_image', ''),
(803, 160, '_technical_skills_tools_frameworks_and_libraries_skill_12_image', 'field_66ed4b3d536e1'),
(804, 160, 'technical_skills_tools_frameworks_and_libraries_skill_13_image', ''),
(805, 160, '_technical_skills_tools_frameworks_and_libraries_skill_13_image', 'field_66ed4b51536e3'),
(806, 160, 'technical_skills_tools_frameworks_and_libraries', ''),
(807, 160, '_technical_skills_tools_frameworks_and_libraries', 'field_67064c3acc5ec'),
(808, 160, 'technical_skills', ''),
(809, 160, '_technical_skills', 'field_66ed4a0e0a9f3'),
(810, 161, 'banner_image', '73'),
(811, 161, '_banner_image', 'field_66e29c66a7830'),
(812, 161, 'banner', ''),
(813, 161, '_banner', 'field_66e29c57a782f'),
(814, 161, 'about_us_title', 'I\'ll Introduce Myself'),
(815, 161, '_about_us_title', 'field_66e29bae61a7b'),
(816, 161, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(817, 161, '_about_us_body', 'field_66e29bbf61a7c'),
(818, 161, 'about_us', ''),
(819, 161, '_about_us', 'field_66e29b604820b'),
(820, 161, 'technical_skills_languages_skill_1_image', '146'),
(821, 161, '_technical_skills_languages_skill_1_image', 'field_66ed4a2026228'),
(822, 161, 'technical_skills_languages_skill_2_image', '152'),
(823, 161, '_technical_skills_languages_skill_2_image', 'field_66ed4a60536d2'),
(824, 161, 'technical_skills_languages_skill_3_image', '145'),
(825, 161, '_technical_skills_languages_skill_3_image', 'field_66ed4a85536d3'),
(826, 161, 'technical_skills_languages_skill_4_image', '138'),
(827, 161, '_technical_skills_languages_skill_4_image', 'field_66ed4a9a536d4'),
(828, 161, 'technical_skills_languages_skill_5_image', '133'),
(829, 161, '_technical_skills_languages_skill_5_image', 'field_66ed4aad536d5'),
(830, 161, 'technical_skills_languages', ''),
(831, 161, '_technical_skills_languages', 'field_67064babcc5e8'),
(832, 161, 'technical_skills_cms_skill_1_image', '132'),
(833, 161, '_technical_skills_cms_skill_1_image', 'field_67064c11cc5ea'),
(834, 161, 'technical_skills_cms_skill_2_image', '149'),
(835, 161, '_technical_skills_cms_skill_2_image', 'field_67064c1ecc5eb'),
(836, 161, 'technical_skills_cms', ''),
(837, 161, '_technical_skills_cms', 'field_67064bf8cc5e9'),
(838, 161, 'technical_skills_tools_frameworks_and_libraries_skill_1_image', ''),
(839, 161, '_technical_skills_tools_frameworks_and_libraries_skill_1_image', 'field_66ed4bab536ea'),
(840, 161, 'technical_skills_tools_frameworks_and_libraries_skill_2_image', ''),
(841, 161, '_technical_skills_tools_frameworks_and_libraries_skill_2_image', 'field_66ed4ba0536e9'),
(842, 161, 'technical_skills_tools_frameworks_and_libraries_skill_3_image', ''),
(843, 161, '_technical_skills_tools_frameworks_and_libraries_skill_3_image', 'field_66ed4b96536e8'),
(844, 161, 'technical_skills_tools_frameworks_and_libraries_skill_4_image', ''),
(845, 161, '_technical_skills_tools_frameworks_and_libraries_skill_4_image', 'field_66ed4b84536e7'),
(846, 161, 'technical_skills_tools_frameworks_and_libraries_skill_5_image', ''),
(847, 161, '_technical_skills_tools_frameworks_and_libraries_skill_5_image', 'field_66ed4b77536e6'),
(848, 161, 'technical_skills_tools_frameworks_and_libraries_skill_6_image', ''),
(849, 161, '_technical_skills_tools_frameworks_and_libraries_skill_6_image', 'field_66ed4ac6536d7'),
(850, 161, 'technical_skills_tools_frameworks_and_libraries_skill_7_image', ''),
(851, 161, '_technical_skills_tools_frameworks_and_libraries_skill_7_image', 'field_66ed4adb536d8'),
(852, 161, 'technical_skills_tools_frameworks_and_libraries_skill_8_image', ''),
(853, 161, '_technical_skills_tools_frameworks_and_libraries_skill_8_image', 'field_66ed4aec536d9'),
(854, 161, 'technical_skills_tools_frameworks_and_libraries_skill_9_image', ''),
(855, 161, '_technical_skills_tools_frameworks_and_libraries_skill_9_image', 'field_66ed4afa536db'),
(856, 161, 'technical_skills_tools_frameworks_and_libraries_skill_10_image', ''),
(857, 161, '_technical_skills_tools_frameworks_and_libraries_skill_10_image', 'field_66ed4b12536dd'),
(858, 161, 'technical_skills_tools_frameworks_and_libraries_skill_11_image', ''),
(859, 161, '_technical_skills_tools_frameworks_and_libraries_skill_11_image', 'field_66ed4b27536df'),
(860, 161, 'technical_skills_tools_frameworks_and_libraries_skill_12_image', ''),
(861, 161, '_technical_skills_tools_frameworks_and_libraries_skill_12_image', 'field_66ed4b3d536e1'),
(862, 161, 'technical_skills_tools_frameworks_and_libraries_skill_13_image', ''),
(863, 161, '_technical_skills_tools_frameworks_and_libraries_skill_13_image', 'field_66ed4b51536e3'),
(864, 161, 'technical_skills_tools_frameworks_and_libraries', ''),
(865, 161, '_technical_skills_tools_frameworks_and_libraries', 'field_67064c3acc5ec'),
(866, 161, 'technical_skills', ''),
(867, 161, '_technical_skills', 'field_66ed4a0e0a9f3'),
(868, 162, 'banner_image', '73'),
(869, 162, '_banner_image', 'field_66e29c66a7830'),
(870, 162, 'banner', ''),
(871, 162, '_banner', 'field_66e29c57a782f'),
(872, 162, 'about_us_title', 'I\'ll Introduce Myself'),
(873, 162, '_about_us_title', 'field_66e29bae61a7b'),
(874, 162, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(875, 162, '_about_us_body', 'field_66e29bbf61a7c'),
(876, 162, 'about_us', ''),
(877, 162, '_about_us', 'field_66e29b604820b'),
(878, 162, 'technical_skills_languages_skill_1_image', '146'),
(879, 162, '_technical_skills_languages_skill_1_image', 'field_66ed4a2026228'),
(880, 162, 'technical_skills_languages_skill_2_image', '152'),
(881, 162, '_technical_skills_languages_skill_2_image', 'field_66ed4a60536d2'),
(882, 162, 'technical_skills_languages_skill_3_image', '145'),
(883, 162, '_technical_skills_languages_skill_3_image', 'field_66ed4a85536d3'),
(884, 162, 'technical_skills_languages_skill_4_image', '138'),
(885, 162, '_technical_skills_languages_skill_4_image', 'field_66ed4a9a536d4'),
(886, 162, 'technical_skills_languages_skill_5_image', '133'),
(887, 162, '_technical_skills_languages_skill_5_image', 'field_66ed4aad536d5'),
(888, 162, 'technical_skills_languages', ''),
(889, 162, '_technical_skills_languages', 'field_67064babcc5e8'),
(890, 162, 'technical_skills_cms_skill_1_image', '132'),
(891, 162, '_technical_skills_cms_skill_1_image', 'field_67064c11cc5ea'),
(892, 162, 'technical_skills_cms_skill_2_image', '149'),
(893, 162, '_technical_skills_cms_skill_2_image', 'field_67064c1ecc5eb'),
(894, 162, 'technical_skills_cms', ''),
(895, 162, '_technical_skills_cms', 'field_67064bf8cc5e9'),
(896, 162, 'technical_skills_tools_frameworks_and_libraries_skill_1_image', '137'),
(897, 162, '_technical_skills_tools_frameworks_and_libraries_skill_1_image', 'field_66ed4bab536ea'),
(898, 162, 'technical_skills_tools_frameworks_and_libraries_skill_2_image', '148'),
(899, 162, '_technical_skills_tools_frameworks_and_libraries_skill_2_image', 'field_66ed4ba0536e9'),
(900, 162, 'technical_skills_tools_frameworks_and_libraries_skill_3_image', '135'),
(901, 162, '_technical_skills_tools_frameworks_and_libraries_skill_3_image', 'field_66ed4b96536e8'),
(902, 162, 'technical_skills_tools_frameworks_and_libraries_skill_4_image', '151'),
(903, 162, '_technical_skills_tools_frameworks_and_libraries_skill_4_image', 'field_66ed4b84536e7'),
(904, 162, 'technical_skills_tools_frameworks_and_libraries_skill_5_image', '141'),
(905, 162, '_technical_skills_tools_frameworks_and_libraries_skill_5_image', 'field_66ed4b77536e6'),
(906, 162, 'technical_skills_tools_frameworks_and_libraries_skill_6_image', '150'),
(907, 162, '_technical_skills_tools_frameworks_and_libraries_skill_6_image', 'field_66ed4ac6536d7'),
(908, 162, 'technical_skills_tools_frameworks_and_libraries_skill_7_image', '154'),
(909, 162, '_technical_skills_tools_frameworks_and_libraries_skill_7_image', 'field_66ed4adb536d8'),
(910, 162, 'technical_skills_tools_frameworks_and_libraries_skill_8_image', '136'),
(911, 162, '_technical_skills_tools_frameworks_and_libraries_skill_8_image', 'field_66ed4aec536d9'),
(912, 162, 'technical_skills_tools_frameworks_and_libraries_skill_9_image', '134'),
(913, 162, '_technical_skills_tools_frameworks_and_libraries_skill_9_image', 'field_66ed4afa536db'),
(914, 162, 'technical_skills_tools_frameworks_and_libraries_skill_10_image', '139'),
(915, 162, '_technical_skills_tools_frameworks_and_libraries_skill_10_image', 'field_66ed4b12536dd'),
(916, 162, 'technical_skills_tools_frameworks_and_libraries_skill_11_image', '153'),
(917, 162, '_technical_skills_tools_frameworks_and_libraries_skill_11_image', 'field_66ed4b27536df'),
(918, 162, 'technical_skills_tools_frameworks_and_libraries_skill_12_image', '143'),
(919, 162, '_technical_skills_tools_frameworks_and_libraries_skill_12_image', 'field_66ed4b3d536e1'),
(920, 162, 'technical_skills_tools_frameworks_and_libraries_skill_13_image', '140'),
(921, 162, '_technical_skills_tools_frameworks_and_libraries_skill_13_image', 'field_66ed4b51536e3'),
(922, 162, 'technical_skills_tools_frameworks_and_libraries', ''),
(923, 162, '_technical_skills_tools_frameworks_and_libraries', 'field_67064c3acc5ec'),
(924, 162, 'technical_skills', ''),
(925, 162, '_technical_skills', 'field_66ed4a0e0a9f3'),
(926, 163, 'banner_image', '73'),
(927, 163, '_banner_image', 'field_66e29c66a7830'),
(928, 163, 'banner', ''),
(929, 163, '_banner', 'field_66e29c57a782f'),
(930, 163, 'about_us_title', 'I\'ll Introduce Myself'),
(931, 163, '_about_us_title', 'field_66e29bae61a7b'),
(932, 163, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(933, 163, '_about_us_body', 'field_66e29bbf61a7c'),
(934, 163, 'about_us', ''),
(935, 163, '_about_us', 'field_66e29b604820b'),
(936, 163, 'technical_skills_languages_skill_1_image', '146'),
(937, 163, '_technical_skills_languages_skill_1_image', 'field_66ed4a2026228'),
(938, 163, 'technical_skills_languages_skill_2_image', '152'),
(939, 163, '_technical_skills_languages_skill_2_image', 'field_66ed4a60536d2'),
(940, 163, 'technical_skills_languages_skill_3_image', '145'),
(941, 163, '_technical_skills_languages_skill_3_image', 'field_66ed4a85536d3'),
(942, 163, 'technical_skills_languages_skill_4_image', '138'),
(943, 163, '_technical_skills_languages_skill_4_image', 'field_66ed4a9a536d4'),
(944, 163, 'technical_skills_languages_skill_5_image', '133'),
(945, 163, '_technical_skills_languages_skill_5_image', 'field_66ed4aad536d5'),
(946, 163, 'technical_skills_languages', ''),
(947, 163, '_technical_skills_languages', 'field_67064babcc5e8'),
(948, 163, 'technical_skills_cms_skill_1_image', '132'),
(949, 163, '_technical_skills_cms_skill_1_image', 'field_67064c11cc5ea'),
(950, 163, 'technical_skills_cms_skill_2_image', '149'),
(951, 163, '_technical_skills_cms_skill_2_image', 'field_67064c1ecc5eb'),
(952, 163, 'technical_skills_cms', ''),
(953, 163, '_technical_skills_cms', 'field_67064bf8cc5e9'),
(954, 163, 'technical_skills_tools_frameworks_and_libraries_skill_1_image', '137'),
(955, 163, '_technical_skills_tools_frameworks_and_libraries_skill_1_image', 'field_66ed4bab536ea'),
(956, 163, 'technical_skills_tools_frameworks_and_libraries_skill_2_image', '148'),
(957, 163, '_technical_skills_tools_frameworks_and_libraries_skill_2_image', 'field_66ed4ba0536e9'),
(958, 163, 'technical_skills_tools_frameworks_and_libraries_skill_3_image', '135'),
(959, 163, '_technical_skills_tools_frameworks_and_libraries_skill_3_image', 'field_66ed4b96536e8'),
(960, 163, 'technical_skills_tools_frameworks_and_libraries_skill_4_image', '151'),
(961, 163, '_technical_skills_tools_frameworks_and_libraries_skill_4_image', 'field_66ed4b84536e7'),
(962, 163, 'technical_skills_tools_frameworks_and_libraries_skill_5_image', '142'),
(963, 163, '_technical_skills_tools_frameworks_and_libraries_skill_5_image', 'field_66ed4b77536e6'),
(964, 163, 'technical_skills_tools_frameworks_and_libraries_skill_6_image', '150'),
(965, 163, '_technical_skills_tools_frameworks_and_libraries_skill_6_image', 'field_66ed4ac6536d7'),
(966, 163, 'technical_skills_tools_frameworks_and_libraries_skill_7_image', '154'),
(967, 163, '_technical_skills_tools_frameworks_and_libraries_skill_7_image', 'field_66ed4adb536d8'),
(968, 163, 'technical_skills_tools_frameworks_and_libraries_skill_8_image', '136'),
(969, 163, '_technical_skills_tools_frameworks_and_libraries_skill_8_image', 'field_66ed4aec536d9'),
(970, 163, 'technical_skills_tools_frameworks_and_libraries_skill_9_image', '134'),
(971, 163, '_technical_skills_tools_frameworks_and_libraries_skill_9_image', 'field_66ed4afa536db'),
(972, 163, 'technical_skills_tools_frameworks_and_libraries_skill_10_image', '139'),
(973, 163, '_technical_skills_tools_frameworks_and_libraries_skill_10_image', 'field_66ed4b12536dd'),
(974, 163, 'technical_skills_tools_frameworks_and_libraries_skill_11_image', '153'),
(975, 163, '_technical_skills_tools_frameworks_and_libraries_skill_11_image', 'field_66ed4b27536df'),
(976, 163, 'technical_skills_tools_frameworks_and_libraries_skill_12_image', '143'),
(977, 163, '_technical_skills_tools_frameworks_and_libraries_skill_12_image', 'field_66ed4b3d536e1'),
(978, 163, 'technical_skills_tools_frameworks_and_libraries_skill_13_image', '140'),
(979, 163, '_technical_skills_tools_frameworks_and_libraries_skill_13_image', 'field_66ed4b51536e3'),
(980, 163, 'technical_skills_tools_frameworks_and_libraries', ''),
(981, 163, '_technical_skills_tools_frameworks_and_libraries', 'field_67064c3acc5ec'),
(982, 163, 'technical_skills', ''),
(983, 163, '_technical_skills', 'field_66ed4a0e0a9f3'),
(984, 164, '_edit_last', '1'),
(985, 164, '_edit_lock', '1728468923:1'),
(986, 23, 'description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(987, 23, '_description', 'field_6706579c42520'),
(988, 23, 'technologies_used', ''),
(989, 23, '_technologies_used', 'field_670657c042521'),
(990, 164, '_wp_trash_meta_status', 'publish'),
(991, 164, '_wp_trash_meta_time', '1728469340'),
(992, 164, '_wp_desired_post_slug', 'group_6706579c7fd4f'),
(993, 165, '_wp_trash_meta_status', 'publish'),
(994, 165, '_wp_trash_meta_time', '1728469340'),
(995, 165, '_wp_desired_post_slug', 'field_6706579c42520'),
(996, 166, '_wp_trash_meta_status', 'publish'),
(997, 166, '_wp_trash_meta_time', '1728469340'),
(998, 166, '_wp_desired_post_slug', 'field_670657c042521'),
(999, 15, 'contact_email', 'a7xrishabhdiwan@gmail.com'),
(1000, 15, '_contact_email', 'field_670903bb40265'),
(1001, 15, 'contact_phone', '123-456-7890'),
(1002, 15, '_contact_phone', 'field_670903c440266'),
(1003, 15, 'contact', ''),
(1004, 15, '_contact', 'field_670903a540264'),
(1005, 171, 'banner_image', '73'),
(1006, 171, '_banner_image', 'field_66e29c66a7830'),
(1007, 171, 'banner', ''),
(1008, 171, '_banner', 'field_66e29c57a782f'),
(1009, 171, 'about_us_title', 'I\'ll Introduce Myself'),
(1010, 171, '_about_us_title', 'field_66e29bae61a7b'),
(1011, 171, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1012, 171, '_about_us_body', 'field_66e29bbf61a7c'),
(1013, 171, 'about_us', ''),
(1014, 171, '_about_us', 'field_66e29b604820b'),
(1015, 171, 'technical_skills_languages_skill_1_image', '146'),
(1016, 171, '_technical_skills_languages_skill_1_image', 'field_66ed4a2026228'),
(1017, 171, 'technical_skills_languages_skill_2_image', '152'),
(1018, 171, '_technical_skills_languages_skill_2_image', 'field_66ed4a60536d2'),
(1019, 171, 'technical_skills_languages_skill_3_image', '145'),
(1020, 171, '_technical_skills_languages_skill_3_image', 'field_66ed4a85536d3'),
(1021, 171, 'technical_skills_languages_skill_4_image', '138'),
(1022, 171, '_technical_skills_languages_skill_4_image', 'field_66ed4a9a536d4'),
(1023, 171, 'technical_skills_languages_skill_5_image', '133'),
(1024, 171, '_technical_skills_languages_skill_5_image', 'field_66ed4aad536d5'),
(1025, 171, 'technical_skills_languages', ''),
(1026, 171, '_technical_skills_languages', 'field_67064babcc5e8'),
(1027, 171, 'technical_skills_cms_skill_1_image', '132'),
(1028, 171, '_technical_skills_cms_skill_1_image', 'field_67064c11cc5ea'),
(1029, 171, 'technical_skills_cms_skill_2_image', '149'),
(1030, 171, '_technical_skills_cms_skill_2_image', 'field_67064c1ecc5eb'),
(1031, 171, 'technical_skills_cms', ''),
(1032, 171, '_technical_skills_cms', 'field_67064bf8cc5e9'),
(1033, 171, 'technical_skills_tools_frameworks_and_libraries_skill_1_image', '137'),
(1034, 171, '_technical_skills_tools_frameworks_and_libraries_skill_1_image', 'field_66ed4bab536ea'),
(1035, 171, 'technical_skills_tools_frameworks_and_libraries_skill_2_image', '148'),
(1036, 171, '_technical_skills_tools_frameworks_and_libraries_skill_2_image', 'field_66ed4ba0536e9'),
(1037, 171, 'technical_skills_tools_frameworks_and_libraries_skill_3_image', '135'),
(1038, 171, '_technical_skills_tools_frameworks_and_libraries_skill_3_image', 'field_66ed4b96536e8'),
(1039, 171, 'technical_skills_tools_frameworks_and_libraries_skill_4_image', '151'),
(1040, 171, '_technical_skills_tools_frameworks_and_libraries_skill_4_image', 'field_66ed4b84536e7'),
(1041, 171, 'technical_skills_tools_frameworks_and_libraries_skill_5_image', '142'),
(1042, 171, '_technical_skills_tools_frameworks_and_libraries_skill_5_image', 'field_66ed4b77536e6'),
(1043, 171, 'technical_skills_tools_frameworks_and_libraries_skill_6_image', '150'),
(1044, 171, '_technical_skills_tools_frameworks_and_libraries_skill_6_image', 'field_66ed4ac6536d7'),
(1045, 171, 'technical_skills_tools_frameworks_and_libraries_skill_7_image', '154'),
(1046, 171, '_technical_skills_tools_frameworks_and_libraries_skill_7_image', 'field_66ed4adb536d8'),
(1047, 171, 'technical_skills_tools_frameworks_and_libraries_skill_8_image', '136'),
(1048, 171, '_technical_skills_tools_frameworks_and_libraries_skill_8_image', 'field_66ed4aec536d9'),
(1049, 171, 'technical_skills_tools_frameworks_and_libraries_skill_9_image', '134'),
(1050, 171, '_technical_skills_tools_frameworks_and_libraries_skill_9_image', 'field_66ed4afa536db'),
(1051, 171, 'technical_skills_tools_frameworks_and_libraries_skill_10_image', '139'),
(1052, 171, '_technical_skills_tools_frameworks_and_libraries_skill_10_image', 'field_66ed4b12536dd'),
(1053, 171, 'technical_skills_tools_frameworks_and_libraries_skill_11_image', '153'),
(1054, 171, '_technical_skills_tools_frameworks_and_libraries_skill_11_image', 'field_66ed4b27536df'),
(1055, 171, 'technical_skills_tools_frameworks_and_libraries_skill_12_image', '143'),
(1056, 171, '_technical_skills_tools_frameworks_and_libraries_skill_12_image', 'field_66ed4b3d536e1'),
(1057, 171, 'technical_skills_tools_frameworks_and_libraries_skill_13_image', '140'),
(1058, 171, '_technical_skills_tools_frameworks_and_libraries_skill_13_image', 'field_66ed4b51536e3'),
(1059, 171, 'technical_skills_tools_frameworks_and_libraries', ''),
(1060, 171, '_technical_skills_tools_frameworks_and_libraries', 'field_67064c3acc5ec'),
(1061, 171, 'technical_skills', ''),
(1062, 171, '_technical_skills', 'field_66ed4a0e0a9f3'),
(1063, 171, 'contact_email', 'a7xrishabhdiwan@gmail.com'),
(1064, 171, '_contact_email', 'field_670903bb40265'),
(1065, 171, 'contact_phone', '1234567890'),
(1066, 171, '_contact_phone', 'field_670903c440266'),
(1067, 171, 'contact', ''),
(1068, 171, '_contact', 'field_670903a540264'),
(1069, 172, 'banner_image', '73'),
(1070, 172, '_banner_image', 'field_66e29c66a7830'),
(1071, 172, 'banner', ''),
(1072, 172, '_banner', 'field_66e29c57a782f'),
(1073, 172, 'about_us_title', 'I\'ll Introduce Myself'),
(1074, 172, '_about_us_title', 'field_66e29bae61a7b'),
(1075, 172, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1076, 172, '_about_us_body', 'field_66e29bbf61a7c'),
(1077, 172, 'about_us', ''),
(1078, 172, '_about_us', 'field_66e29b604820b'),
(1079, 172, 'technical_skills_languages_skill_1_image', '146'),
(1080, 172, '_technical_skills_languages_skill_1_image', 'field_66ed4a2026228'),
(1081, 172, 'technical_skills_languages_skill_2_image', '152'),
(1082, 172, '_technical_skills_languages_skill_2_image', 'field_66ed4a60536d2'),
(1083, 172, 'technical_skills_languages_skill_3_image', '145'),
(1084, 172, '_technical_skills_languages_skill_3_image', 'field_66ed4a85536d3'),
(1085, 172, 'technical_skills_languages_skill_4_image', '138'),
(1086, 172, '_technical_skills_languages_skill_4_image', 'field_66ed4a9a536d4'),
(1087, 172, 'technical_skills_languages_skill_5_image', '133'),
(1088, 172, '_technical_skills_languages_skill_5_image', 'field_66ed4aad536d5'),
(1089, 172, 'technical_skills_languages', ''),
(1090, 172, '_technical_skills_languages', 'field_67064babcc5e8'),
(1091, 172, 'technical_skills_cms_skill_1_image', '132'),
(1092, 172, '_technical_skills_cms_skill_1_image', 'field_67064c11cc5ea'),
(1093, 172, 'technical_skills_cms_skill_2_image', '149'),
(1094, 172, '_technical_skills_cms_skill_2_image', 'field_67064c1ecc5eb'),
(1095, 172, 'technical_skills_cms', ''),
(1096, 172, '_technical_skills_cms', 'field_67064bf8cc5e9'),
(1097, 172, 'technical_skills_tools_frameworks_and_libraries_skill_1_image', '137'),
(1098, 172, '_technical_skills_tools_frameworks_and_libraries_skill_1_image', 'field_66ed4bab536ea'),
(1099, 172, 'technical_skills_tools_frameworks_and_libraries_skill_2_image', '148'),
(1100, 172, '_technical_skills_tools_frameworks_and_libraries_skill_2_image', 'field_66ed4ba0536e9'),
(1101, 172, 'technical_skills_tools_frameworks_and_libraries_skill_3_image', '135'),
(1102, 172, '_technical_skills_tools_frameworks_and_libraries_skill_3_image', 'field_66ed4b96536e8'),
(1103, 172, 'technical_skills_tools_frameworks_and_libraries_skill_4_image', '151'),
(1104, 172, '_technical_skills_tools_frameworks_and_libraries_skill_4_image', 'field_66ed4b84536e7'),
(1105, 172, 'technical_skills_tools_frameworks_and_libraries_skill_5_image', '142'),
(1106, 172, '_technical_skills_tools_frameworks_and_libraries_skill_5_image', 'field_66ed4b77536e6'),
(1107, 172, 'technical_skills_tools_frameworks_and_libraries_skill_6_image', '150'),
(1108, 172, '_technical_skills_tools_frameworks_and_libraries_skill_6_image', 'field_66ed4ac6536d7'),
(1109, 172, 'technical_skills_tools_frameworks_and_libraries_skill_7_image', '154'),
(1110, 172, '_technical_skills_tools_frameworks_and_libraries_skill_7_image', 'field_66ed4adb536d8'),
(1111, 172, 'technical_skills_tools_frameworks_and_libraries_skill_8_image', '136'),
(1112, 172, '_technical_skills_tools_frameworks_and_libraries_skill_8_image', 'field_66ed4aec536d9'),
(1113, 172, 'technical_skills_tools_frameworks_and_libraries_skill_9_image', '134'),
(1114, 172, '_technical_skills_tools_frameworks_and_libraries_skill_9_image', 'field_66ed4afa536db'),
(1115, 172, 'technical_skills_tools_frameworks_and_libraries_skill_10_image', '139'),
(1116, 172, '_technical_skills_tools_frameworks_and_libraries_skill_10_image', 'field_66ed4b12536dd'),
(1117, 172, 'technical_skills_tools_frameworks_and_libraries_skill_11_image', '153'),
(1118, 172, '_technical_skills_tools_frameworks_and_libraries_skill_11_image', 'field_66ed4b27536df'),
(1119, 172, 'technical_skills_tools_frameworks_and_libraries_skill_12_image', '143'),
(1120, 172, '_technical_skills_tools_frameworks_and_libraries_skill_12_image', 'field_66ed4b3d536e1'),
(1121, 172, 'technical_skills_tools_frameworks_and_libraries_skill_13_image', '140'),
(1122, 172, '_technical_skills_tools_frameworks_and_libraries_skill_13_image', 'field_66ed4b51536e3'),
(1123, 172, 'technical_skills_tools_frameworks_and_libraries', ''),
(1124, 172, '_technical_skills_tools_frameworks_and_libraries', 'field_67064c3acc5ec'),
(1125, 172, 'technical_skills', ''),
(1126, 172, '_technical_skills', 'field_66ed4a0e0a9f3'),
(1127, 172, 'contact_email', 'a7xrishabhdiwan@gmail.com'),
(1128, 172, '_contact_email', 'field_670903bb40265'),
(1129, 172, 'contact_phone', '123-456-7890'),
(1130, 172, '_contact_phone', 'field_670903c440266'),
(1131, 172, 'contact', ''),
(1132, 172, '_contact', 'field_670903a540264'),
(1133, 174, 'banner_image', '73'),
(1134, 174, '_banner_image', 'field_66e29c66a7830'),
(1135, 174, 'banner', ''),
(1136, 174, '_banner', 'field_66e29c57a782f'),
(1137, 174, 'about_us_title', 'I\'ll Introduce Myself'),
(1138, 174, '_about_us_title', 'field_66e29bae61a7b'),
(1139, 174, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1140, 174, '_about_us_body', 'field_66e29bbf61a7c'),
(1141, 174, 'about_us', ''),
(1142, 174, '_about_us', 'field_66e29b604820b'),
(1143, 174, 'technical_skills_languages_skill_1_image', '146'),
(1144, 174, '_technical_skills_languages_skill_1_image', 'field_66ed4a2026228'),
(1145, 174, 'technical_skills_languages_skill_2_image', '152'),
(1146, 174, '_technical_skills_languages_skill_2_image', 'field_66ed4a60536d2'),
(1147, 174, 'technical_skills_languages_skill_3_image', '145'),
(1148, 174, '_technical_skills_languages_skill_3_image', 'field_66ed4a85536d3'),
(1149, 174, 'technical_skills_languages_skill_4_image', '138'),
(1150, 174, '_technical_skills_languages_skill_4_image', 'field_66ed4a9a536d4'),
(1151, 174, 'technical_skills_languages_skill_5_image', '133'),
(1152, 174, '_technical_skills_languages_skill_5_image', 'field_66ed4aad536d5'),
(1153, 174, 'technical_skills_languages', ''),
(1154, 174, '_technical_skills_languages', 'field_67064babcc5e8'),
(1155, 174, 'technical_skills_cms_skill_1_image', '132'),
(1156, 174, '_technical_skills_cms_skill_1_image', 'field_67064c11cc5ea'),
(1157, 174, 'technical_skills_cms_skill_2_image', '149'),
(1158, 174, '_technical_skills_cms_skill_2_image', 'field_67064c1ecc5eb'),
(1159, 174, 'technical_skills_cms', ''),
(1160, 174, '_technical_skills_cms', 'field_67064bf8cc5e9'),
(1161, 174, 'technical_skills_tools_frameworks_and_libraries_skill_1_image', '137'),
(1162, 174, '_technical_skills_tools_frameworks_and_libraries_skill_1_image', 'field_66ed4bab536ea'),
(1163, 174, 'technical_skills_tools_frameworks_and_libraries_skill_2_image', '148'),
(1164, 174, '_technical_skills_tools_frameworks_and_libraries_skill_2_image', 'field_66ed4ba0536e9'),
(1165, 174, 'technical_skills_tools_frameworks_and_libraries_skill_3_image', '135'),
(1166, 174, '_technical_skills_tools_frameworks_and_libraries_skill_3_image', 'field_66ed4b96536e8'),
(1167, 174, 'technical_skills_tools_frameworks_and_libraries_skill_4_image', '151'),
(1168, 174, '_technical_skills_tools_frameworks_and_libraries_skill_4_image', 'field_66ed4b84536e7'),
(1169, 174, 'technical_skills_tools_frameworks_and_libraries_skill_5_image', '142'),
(1170, 174, '_technical_skills_tools_frameworks_and_libraries_skill_5_image', 'field_66ed4b77536e6'),
(1171, 174, 'technical_skills_tools_frameworks_and_libraries_skill_6_image', '154'),
(1172, 174, '_technical_skills_tools_frameworks_and_libraries_skill_6_image', 'field_66ed4ac6536d7'),
(1173, 174, 'technical_skills_tools_frameworks_and_libraries_skill_7_image', '134'),
(1174, 174, '_technical_skills_tools_frameworks_and_libraries_skill_7_image', 'field_66ed4adb536d8'),
(1175, 174, 'technical_skills_tools_frameworks_and_libraries_skill_8_image', '136'),
(1176, 174, '_technical_skills_tools_frameworks_and_libraries_skill_8_image', 'field_66ed4aec536d9'),
(1177, 174, 'technical_skills_tools_frameworks_and_libraries_skill_9_image', '139'),
(1178, 174, '_technical_skills_tools_frameworks_and_libraries_skill_9_image', 'field_66ed4afa536db'),
(1179, 174, 'technical_skills_tools_frameworks_and_libraries_skill_10_image', '153'),
(1180, 174, '_technical_skills_tools_frameworks_and_libraries_skill_10_image', 'field_66ed4b12536dd'),
(1181, 174, 'technical_skills_tools_frameworks_and_libraries_skill_11_image', '150'),
(1182, 174, '_technical_skills_tools_frameworks_and_libraries_skill_11_image', 'field_66ed4b27536df'),
(1183, 174, 'technical_skills_tools_frameworks_and_libraries_skill_12_image', '143'),
(1184, 174, '_technical_skills_tools_frameworks_and_libraries_skill_12_image', 'field_66ed4b3d536e1'),
(1185, 174, 'technical_skills_tools_frameworks_and_libraries_skill_13_image', '140'),
(1186, 174, '_technical_skills_tools_frameworks_and_libraries_skill_13_image', 'field_66ed4b51536e3'),
(1187, 174, 'technical_skills_tools_frameworks_and_libraries', ''),
(1188, 174, '_technical_skills_tools_frameworks_and_libraries', 'field_67064c3acc5ec'),
(1189, 174, 'technical_skills', ''),
(1190, 174, '_technical_skills', 'field_66ed4a0e0a9f3'),
(1191, 174, 'contact_email', 'a7xrishabhdiwan@gmail.com'),
(1192, 174, '_contact_email', 'field_670903bb40265'),
(1193, 174, 'contact_phone', '123-456-7890'),
(1194, 174, '_contact_phone', 'field_670903c440266'),
(1195, 174, 'contact', ''),
(1196, 174, '_contact', 'field_670903a540264'),
(1197, 175, 'banner_image', '73'),
(1198, 175, '_banner_image', 'field_66e29c66a7830'),
(1199, 175, 'banner', ''),
(1200, 175, '_banner', 'field_66e29c57a782f'),
(1201, 175, 'about_us_title', 'I\'ll Introduce Myself'),
(1202, 175, '_about_us_title', 'field_66e29bae61a7b'),
(1203, 175, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1204, 175, '_about_us_body', 'field_66e29bbf61a7c'),
(1205, 175, 'about_us', ''),
(1206, 175, '_about_us', 'field_66e29b604820b'),
(1207, 175, 'technical_skills_languages_skill_1_image', '146'),
(1208, 175, '_technical_skills_languages_skill_1_image', 'field_66ed4a2026228'),
(1209, 175, 'technical_skills_languages_skill_2_image', '152'),
(1210, 175, '_technical_skills_languages_skill_2_image', 'field_66ed4a60536d2'),
(1211, 175, 'technical_skills_languages_skill_3_image', '145'),
(1212, 175, '_technical_skills_languages_skill_3_image', 'field_66ed4a85536d3'),
(1213, 175, 'technical_skills_languages_skill_4_image', '138'),
(1214, 175, '_technical_skills_languages_skill_4_image', 'field_66ed4a9a536d4'),
(1215, 175, 'technical_skills_languages_skill_5_image', '133'),
(1216, 175, '_technical_skills_languages_skill_5_image', 'field_66ed4aad536d5'),
(1217, 175, 'technical_skills_languages', ''),
(1218, 175, '_technical_skills_languages', 'field_67064babcc5e8'),
(1219, 175, 'technical_skills_cms_skill_1_image', '132'),
(1220, 175, '_technical_skills_cms_skill_1_image', 'field_67064c11cc5ea'),
(1221, 175, 'technical_skills_cms_skill_2_image', '149'),
(1222, 175, '_technical_skills_cms_skill_2_image', 'field_67064c1ecc5eb'),
(1223, 175, 'technical_skills_cms', ''),
(1224, 175, '_technical_skills_cms', 'field_67064bf8cc5e9'),
(1225, 175, 'technical_skills_tools_frameworks_and_libraries_skill_1_image', '137'),
(1226, 175, '_technical_skills_tools_frameworks_and_libraries_skill_1_image', 'field_66ed4bab536ea'),
(1227, 175, 'technical_skills_tools_frameworks_and_libraries_skill_2_image', '148'),
(1228, 175, '_technical_skills_tools_frameworks_and_libraries_skill_2_image', 'field_66ed4ba0536e9'),
(1229, 175, 'technical_skills_tools_frameworks_and_libraries_skill_3_image', '135'),
(1230, 175, '_technical_skills_tools_frameworks_and_libraries_skill_3_image', 'field_66ed4b96536e8'),
(1231, 175, 'technical_skills_tools_frameworks_and_libraries_skill_4_image', '151'),
(1232, 175, '_technical_skills_tools_frameworks_and_libraries_skill_4_image', 'field_66ed4b84536e7'),
(1233, 175, 'technical_skills_tools_frameworks_and_libraries_skill_5_image', '142'),
(1234, 175, '_technical_skills_tools_frameworks_and_libraries_skill_5_image', 'field_66ed4b77536e6'),
(1235, 175, 'technical_skills_tools_frameworks_and_libraries_skill_6_image', '154'),
(1236, 175, '_technical_skills_tools_frameworks_and_libraries_skill_6_image', 'field_66ed4ac6536d7'),
(1237, 175, 'technical_skills_tools_frameworks_and_libraries_skill_7_image', '134'),
(1238, 175, '_technical_skills_tools_frameworks_and_libraries_skill_7_image', 'field_66ed4adb536d8'),
(1239, 175, 'technical_skills_tools_frameworks_and_libraries_skill_8_image', '136'),
(1240, 175, '_technical_skills_tools_frameworks_and_libraries_skill_8_image', 'field_66ed4aec536d9'),
(1241, 175, 'technical_skills_tools_frameworks_and_libraries_skill_9_image', '139'),
(1242, 175, '_technical_skills_tools_frameworks_and_libraries_skill_9_image', 'field_66ed4afa536db'),
(1243, 175, 'technical_skills_tools_frameworks_and_libraries_skill_10_image', '153'),
(1244, 175, '_technical_skills_tools_frameworks_and_libraries_skill_10_image', 'field_66ed4b12536dd'),
(1245, 175, 'technical_skills_tools_frameworks_and_libraries_skill_11_image', '140'),
(1246, 175, '_technical_skills_tools_frameworks_and_libraries_skill_11_image', 'field_66ed4b27536df'),
(1247, 175, 'technical_skills_tools_frameworks_and_libraries_skill_12_image', '143'),
(1248, 175, '_technical_skills_tools_frameworks_and_libraries_skill_12_image', 'field_66ed4b3d536e1'),
(1249, 175, 'technical_skills_tools_frameworks_and_libraries_skill_13_image', '150'),
(1250, 175, '_technical_skills_tools_frameworks_and_libraries_skill_13_image', 'field_66ed4b51536e3'),
(1251, 175, 'technical_skills_tools_frameworks_and_libraries', ''),
(1252, 175, '_technical_skills_tools_frameworks_and_libraries', 'field_67064c3acc5ec'),
(1253, 175, 'technical_skills', ''),
(1254, 175, '_technical_skills', 'field_66ed4a0e0a9f3'),
(1255, 175, 'contact_email', 'a7xrishabhdiwan@gmail.com'),
(1256, 175, '_contact_email', 'field_670903bb40265'),
(1257, 175, 'contact_phone', '123-456-7890'),
(1258, 175, '_contact_phone', 'field_670903c440266'),
(1259, 175, 'contact', ''),
(1260, 175, '_contact', 'field_670903a540264'),
(1261, 15, 'contact_linked', 'https://www.linkedin.com/'),
(1262, 15, '_contact_linked', 'field_670903c440266'),
(1263, 176, 'banner_image', '73'),
(1264, 176, '_banner_image', 'field_66e29c66a7830'),
(1265, 176, 'banner', ''),
(1266, 176, '_banner', 'field_66e29c57a782f'),
(1267, 176, 'about_us_title', 'I\'ll Introduce Myself'),
(1268, 176, '_about_us_title', 'field_66e29bae61a7b'),
(1269, 176, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1270, 176, '_about_us_body', 'field_66e29bbf61a7c'),
(1271, 176, 'about_us', ''),
(1272, 176, '_about_us', 'field_66e29b604820b'),
(1273, 176, 'technical_skills_languages_skill_1_image', '146'),
(1274, 176, '_technical_skills_languages_skill_1_image', 'field_66ed4a2026228'),
(1275, 176, 'technical_skills_languages_skill_2_image', '152'),
(1276, 176, '_technical_skills_languages_skill_2_image', 'field_66ed4a60536d2'),
(1277, 176, 'technical_skills_languages_skill_3_image', '145'),
(1278, 176, '_technical_skills_languages_skill_3_image', 'field_66ed4a85536d3'),
(1279, 176, 'technical_skills_languages_skill_4_image', '138'),
(1280, 176, '_technical_skills_languages_skill_4_image', 'field_66ed4a9a536d4'),
(1281, 176, 'technical_skills_languages_skill_5_image', '133'),
(1282, 176, '_technical_skills_languages_skill_5_image', 'field_66ed4aad536d5'),
(1283, 176, 'technical_skills_languages', ''),
(1284, 176, '_technical_skills_languages', 'field_67064babcc5e8'),
(1285, 176, 'technical_skills_cms_skill_1_image', '132'),
(1286, 176, '_technical_skills_cms_skill_1_image', 'field_67064c11cc5ea'),
(1287, 176, 'technical_skills_cms_skill_2_image', '149'),
(1288, 176, '_technical_skills_cms_skill_2_image', 'field_67064c1ecc5eb'),
(1289, 176, 'technical_skills_cms', ''),
(1290, 176, '_technical_skills_cms', 'field_67064bf8cc5e9'),
(1291, 176, 'technical_skills_tools_frameworks_and_libraries_skill_1_image', '137'),
(1292, 176, '_technical_skills_tools_frameworks_and_libraries_skill_1_image', 'field_66ed4bab536ea'),
(1293, 176, 'technical_skills_tools_frameworks_and_libraries_skill_2_image', '148'),
(1294, 176, '_technical_skills_tools_frameworks_and_libraries_skill_2_image', 'field_66ed4ba0536e9'),
(1295, 176, 'technical_skills_tools_frameworks_and_libraries_skill_3_image', '135'),
(1296, 176, '_technical_skills_tools_frameworks_and_libraries_skill_3_image', 'field_66ed4b96536e8'),
(1297, 176, 'technical_skills_tools_frameworks_and_libraries_skill_4_image', '151'),
(1298, 176, '_technical_skills_tools_frameworks_and_libraries_skill_4_image', 'field_66ed4b84536e7'),
(1299, 176, 'technical_skills_tools_frameworks_and_libraries_skill_5_image', '142'),
(1300, 176, '_technical_skills_tools_frameworks_and_libraries_skill_5_image', 'field_66ed4b77536e6'),
(1301, 176, 'technical_skills_tools_frameworks_and_libraries_skill_6_image', '154'),
(1302, 176, '_technical_skills_tools_frameworks_and_libraries_skill_6_image', 'field_66ed4ac6536d7'),
(1303, 176, 'technical_skills_tools_frameworks_and_libraries_skill_7_image', '134'),
(1304, 176, '_technical_skills_tools_frameworks_and_libraries_skill_7_image', 'field_66ed4adb536d8'),
(1305, 176, 'technical_skills_tools_frameworks_and_libraries_skill_8_image', '136'),
(1306, 176, '_technical_skills_tools_frameworks_and_libraries_skill_8_image', 'field_66ed4aec536d9'),
(1307, 176, 'technical_skills_tools_frameworks_and_libraries_skill_9_image', '139'),
(1308, 176, '_technical_skills_tools_frameworks_and_libraries_skill_9_image', 'field_66ed4afa536db'),
(1309, 176, 'technical_skills_tools_frameworks_and_libraries_skill_10_image', '153'),
(1310, 176, '_technical_skills_tools_frameworks_and_libraries_skill_10_image', 'field_66ed4b12536dd'),
(1311, 176, 'technical_skills_tools_frameworks_and_libraries_skill_11_image', '140'),
(1312, 176, '_technical_skills_tools_frameworks_and_libraries_skill_11_image', 'field_66ed4b27536df'),
(1313, 176, 'technical_skills_tools_frameworks_and_libraries_skill_12_image', '143'),
(1314, 176, '_technical_skills_tools_frameworks_and_libraries_skill_12_image', 'field_66ed4b3d536e1'),
(1315, 176, 'technical_skills_tools_frameworks_and_libraries_skill_13_image', '150'),
(1316, 176, '_technical_skills_tools_frameworks_and_libraries_skill_13_image', 'field_66ed4b51536e3'),
(1317, 176, 'technical_skills_tools_frameworks_and_libraries', ''),
(1318, 176, '_technical_skills_tools_frameworks_and_libraries', 'field_67064c3acc5ec'),
(1319, 176, 'technical_skills', ''),
(1320, 176, '_technical_skills', 'field_66ed4a0e0a9f3'),
(1321, 176, 'contact_email', 'a7xrishabhdiwan@gmail.com'),
(1322, 176, '_contact_email', 'field_670903bb40265'),
(1323, 176, 'contact_phone', '123-456-7890'),
(1324, 176, '_contact_phone', 'field_670903c440266'),
(1325, 176, 'contact', ''),
(1326, 176, '_contact', 'field_670903a540264'),
(1327, 176, 'contact_linked', 'https://www.linkedin.com/'),
(1328, 176, '_contact_linked', 'field_670903c440266'),
(1330, 80, '_wp_old_date', '2024-09-18'),
(1331, 81, '_wp_old_date', '2024-09-18'),
(1332, 82, '_wp_old_date', '2024-09-18'),
(1333, 83, '_wp_old_date', '2024-09-18'),
(1334, 177, '_menu_item_type', 'custom'),
(1335, 177, '_menu_item_menu_item_parent', '0'),
(1336, 177, '_menu_item_object_id', '177'),
(1337, 177, '_menu_item_object', 'custom'),
(1338, 177, '_menu_item_target', ''),
(1339, 177, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1340, 177, '_menu_item_xfn', ''),
(1341, 177, '_menu_item_url', '/#home'),
(1343, 178, 'banner_image', '73'),
(1344, 178, '_banner_image', 'field_66e29c66a7830'),
(1345, 178, 'banner', ''),
(1346, 178, '_banner', 'field_66e29c57a782f'),
(1347, 178, 'about_us_title', 'I\'ll Introduce Myself'),
(1348, 178, '_about_us_title', 'field_66e29bae61a7b'),
(1349, 178, 'about_us_body', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(1350, 178, '_about_us_body', 'field_66e29bbf61a7c'),
(1351, 178, 'about_us', ''),
(1352, 178, '_about_us', 'field_66e29b604820b'),
(1353, 178, 'technical_skills_languages_skill_1_image', '146'),
(1354, 178, '_technical_skills_languages_skill_1_image', 'field_66ed4a2026228'),
(1355, 178, 'technical_skills_languages_skill_2_image', '152'),
(1356, 178, '_technical_skills_languages_skill_2_image', 'field_66ed4a60536d2'),
(1357, 178, 'technical_skills_languages_skill_3_image', '145'),
(1358, 178, '_technical_skills_languages_skill_3_image', 'field_66ed4a85536d3'),
(1359, 178, 'technical_skills_languages_skill_4_image', '138'),
(1360, 178, '_technical_skills_languages_skill_4_image', 'field_66ed4a9a536d4'),
(1361, 178, 'technical_skills_languages_skill_5_image', '133'),
(1362, 178, '_technical_skills_languages_skill_5_image', 'field_66ed4aad536d5'),
(1363, 178, 'technical_skills_languages', ''),
(1364, 178, '_technical_skills_languages', 'field_67064babcc5e8'),
(1365, 178, 'technical_skills_cms_skill_1_image', '132'),
(1366, 178, '_technical_skills_cms_skill_1_image', 'field_67064c11cc5ea'),
(1367, 178, 'technical_skills_cms_skill_2_image', '149'),
(1368, 178, '_technical_skills_cms_skill_2_image', 'field_67064c1ecc5eb'),
(1369, 178, 'technical_skills_cms', ''),
(1370, 178, '_technical_skills_cms', 'field_67064bf8cc5e9'),
(1371, 178, 'technical_skills_tools_frameworks_and_libraries_skill_1_image', '137'),
(1372, 178, '_technical_skills_tools_frameworks_and_libraries_skill_1_image', 'field_66ed4bab536ea'),
(1373, 178, 'technical_skills_tools_frameworks_and_libraries_skill_2_image', '148'),
(1374, 178, '_technical_skills_tools_frameworks_and_libraries_skill_2_image', 'field_66ed4ba0536e9'),
(1375, 178, 'technical_skills_tools_frameworks_and_libraries_skill_3_image', '135'),
(1376, 178, '_technical_skills_tools_frameworks_and_libraries_skill_3_image', 'field_66ed4b96536e8'),
(1377, 178, 'technical_skills_tools_frameworks_and_libraries_skill_4_image', '151'),
(1378, 178, '_technical_skills_tools_frameworks_and_libraries_skill_4_image', 'field_66ed4b84536e7'),
(1379, 178, 'technical_skills_tools_frameworks_and_libraries_skill_5_image', '142'),
(1380, 178, '_technical_skills_tools_frameworks_and_libraries_skill_5_image', 'field_66ed4b77536e6'),
(1381, 178, 'technical_skills_tools_frameworks_and_libraries_skill_6_image', '154'),
(1382, 178, '_technical_skills_tools_frameworks_and_libraries_skill_6_image', 'field_66ed4ac6536d7'),
(1383, 178, 'technical_skills_tools_frameworks_and_libraries_skill_7_image', '134'),
(1384, 178, '_technical_skills_tools_frameworks_and_libraries_skill_7_image', 'field_66ed4adb536d8'),
(1385, 178, 'technical_skills_tools_frameworks_and_libraries_skill_8_image', '136'),
(1386, 178, '_technical_skills_tools_frameworks_and_libraries_skill_8_image', 'field_66ed4aec536d9'),
(1387, 178, 'technical_skills_tools_frameworks_and_libraries_skill_9_image', '139'),
(1388, 178, '_technical_skills_tools_frameworks_and_libraries_skill_9_image', 'field_66ed4afa536db'),
(1389, 178, 'technical_skills_tools_frameworks_and_libraries_skill_10_image', '153'),
(1390, 178, '_technical_skills_tools_frameworks_and_libraries_skill_10_image', 'field_66ed4b12536dd'),
(1391, 178, 'technical_skills_tools_frameworks_and_libraries_skill_11_image', '140'),
(1392, 178, '_technical_skills_tools_frameworks_and_libraries_skill_11_image', 'field_66ed4b27536df'),
(1393, 178, 'technical_skills_tools_frameworks_and_libraries_skill_12_image', '143'),
(1394, 178, '_technical_skills_tools_frameworks_and_libraries_skill_12_image', 'field_66ed4b3d536e1'),
(1395, 178, 'technical_skills_tools_frameworks_and_libraries_skill_13_image', '150'),
(1396, 178, '_technical_skills_tools_frameworks_and_libraries_skill_13_image', 'field_66ed4b51536e3'),
(1397, 178, 'technical_skills_tools_frameworks_and_libraries', ''),
(1398, 178, '_technical_skills_tools_frameworks_and_libraries', 'field_67064c3acc5ec'),
(1399, 178, 'technical_skills', ''),
(1400, 178, '_technical_skills', 'field_66ed4a0e0a9f3'),
(1401, 178, 'contact_email', 'a7xrishabhdiwan@gmail.com'),
(1402, 178, '_contact_email', 'field_670903bb40265'),
(1403, 178, 'contact_phone', '123-456-7890'),
(1404, 178, '_contact_phone', 'field_670903c440266'),
(1405, 178, 'contact', ''),
(1406, 178, '_contact', 'field_670903a540264'),
(1407, 178, 'contact_linked', 'https://www.linkedin.com/'),
(1408, 178, '_contact_linked', 'field_670903c440266');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-09-12 07:10:54', '2024-09-12 07:10:54', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2024-09-12 07:10:54', '2024-09-12 07:10:54', '', 0, 'http://wp-for-twig.ddev.site/?p=1', 0, 'post', '', 1),
(3, 1, '2024-09-12 07:10:54', '2024-09-12 07:10:54', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://wp-for-twig.ddev.site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-09-12 07:10:54', '2024-09-12 07:10:54', '', 0, 'http://wp-for-twig.ddev.site/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-09-12 07:10:54', '2024-09-12 07:10:54', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-09-12 07:10:54', '2024-09-12 07:10:54', '', 0, 'http://wp-for-twig.ddev.site/2024/09/12/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2024-09-12 07:22:22', '2024-09-12 07:22:22', '', 'Hi Earth', '', 'publish', 'open', 'open', '', 'hi-earth', '', '', '2024-09-12 07:22:22', '2024-09-12 07:22:22', '', 0, 'http://wp-for-twig.ddev.site/?p=6', 0, 'post', '', 0),
(7, 1, '2024-09-12 07:22:22', '2024-09-12 07:22:22', '', 'Hi Earth', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2024-09-12 07:22:22', '2024-09-12 07:22:22', '', 6, 'http://wp-for-twig.ddev.site/?p=7', 0, 'revision', '', 0),
(8, 1, '2024-09-12 07:41:39', '2024-09-12 07:41:39', 'a:35:{s:9:\"post_type\";s:7:\"project\";s:22:\"advanced_configuration\";b:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:33:{s:4:\"name\";s:8:\"Projects\";s:13:\"singular_name\";s:7:\"Project\";s:9:\"menu_name\";s:8:\"Projects\";s:9:\"all_items\";s:12:\"All Projects\";s:9:\"edit_item\";s:12:\"Edit Project\";s:9:\"view_item\";s:12:\"View Project\";s:10:\"view_items\";s:13:\"View Projects\";s:12:\"add_new_item\";s:15:\"Add New Project\";s:7:\"add_new\";s:15:\"Add New Project\";s:8:\"new_item\";s:11:\"New Project\";s:17:\"parent_item_colon\";s:15:\"Parent Project:\";s:12:\"search_items\";s:15:\"Search Projects\";s:9:\"not_found\";s:17:\"No projects found\";s:18:\"not_found_in_trash\";s:26:\"No projects found in Trash\";s:8:\"archives\";s:16:\"Project Archives\";s:10:\"attributes\";s:18:\"Project Attributes\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:16:\"insert_into_item\";s:19:\"Insert into project\";s:21:\"uploaded_to_this_item\";s:24:\"Uploaded to this project\";s:17:\"filter_items_list\";s:20:\"Filter projects list\";s:14:\"filter_by_date\";s:23:\"Filter projects by date\";s:21:\"items_list_navigation\";s:24:\"Projects list navigation\";s:10:\"items_list\";s:13:\"Projects list\";s:14:\"item_published\";s:18:\"Project published.\";s:24:\"item_published_privately\";s:28:\"Project published privately.\";s:22:\"item_reverted_to_draft\";s:26:\"Project reverted to draft.\";s:14:\"item_scheduled\";s:18:\"Project scheduled.\";s:12:\"item_updated\";s:16:\"Project updated.\";s:9:\"item_link\";s:12:\"Project Link\";s:21:\"item_link_description\";s:20:\"A link to a project.\";}s:11:\"description\";s:0:\"\";s:6:\"public\";b:1;s:12:\"hierarchical\";b:0;s:19:\"exclude_from_search\";b:0;s:18:\"publicly_queryable\";b:1;s:7:\"show_ui\";b:1;s:12:\"show_in_menu\";b:1;s:17:\"admin_menu_parent\";s:0:\"\";s:17:\"show_in_admin_bar\";b:1;s:17:\"show_in_nav_menus\";b:1;s:12:\"show_in_rest\";b:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Posts_Controller\";s:13:\"menu_position\";s:0:\"\";s:9:\"menu_icon\";a:2:{s:4:\"type\";s:9:\"dashicons\";s:5:\"value\";s:20:\"dashicons-admin-post\";}s:19:\"rename_capabilities\";b:0;s:24:\"singular_capability_name\";s:4:\"post\";s:22:\"plural_capability_name\";s:5:\"posts\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";s:0:\"\";s:11:\"has_archive\";b:0;s:16:\"has_archive_slug\";s:0:\"\";s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:13:\"post_type_key\";s:10:\"with_front\";s:1:\"1\";s:5:\"feeds\";s:1:\"0\";s:5:\"pages\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:10:\"can_export\";b:1;s:16:\"delete_with_user\";b:0;s:20:\"register_meta_box_cb\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}', 'Projects', 'projects', 'publish', 'closed', 'closed', '', 'post_type_66e29b1d0be9b', '', '', '2024-09-12 07:41:39', '2024-09-12 07:41:39', '', 0, 'http://wp-for-twig.ddev.site/?post_type=acf-post-type&#038;p=8', 0, 'acf-post-type', '', 0),
(11, 1, '2024-09-12 07:42:34', '2024-09-12 07:42:34', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"15\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_66e29b6050962', '', '', '2024-10-17 09:42:08', '2024-10-17 09:42:08', '', 0, 'http://wp-for-twig.ddev.site/?post_type=acf-field-group&#038;p=11', 0, 'acf-field-group', '', 0),
(12, 1, '2024-09-12 07:42:34', '2024-09-12 07:42:34', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'About Us', 'about_us', 'publish', 'closed', 'closed', '', 'field_66e29b604820b', '', '', '2024-09-17 10:26:22', '2024-09-17 10:26:22', '', 11, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=12', 0, 'acf-field', '', 0),
(13, 1, '2024-09-12 07:44:20', '2024-09-12 07:44:20', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_66e29bae61a7b', '', '', '2024-09-12 07:44:20', '2024-09-12 07:44:20', '', 12, 'http://wp-for-twig.ddev.site/?post_type=acf-field&p=13', 0, 'acf-field', '', 0),
(14, 1, '2024-09-12 07:44:20', '2024-09-12 07:44:20', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Body', 'body', 'publish', 'closed', 'closed', '', 'field_66e29bbf61a7c', '', '', '2024-09-12 07:44:20', '2024-09-12 07:44:20', '', 12, 'http://wp-for-twig.ddev.site/?post_type=acf-field&p=14', 1, 'acf-field', '', 0),
(15, 1, '2024-09-12 07:44:38', '2024-09-12 07:44:38', '', 'Home', '', 'publish', 'closed', 'closed', '', 'hm', '', '', '2024-10-17 09:41:47', '2024-10-17 09:41:47', '', 0, 'http://wp-for-twig.ddev.site/?page_id=15', 0, 'page', '', 0),
(16, 1, '2024-09-12 07:44:38', '2024-09-12 07:44:38', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-09-12 07:44:38', '2024-09-12 07:44:38', '', 15, 'http://wp-for-twig.ddev.site/?p=16', 0, 'revision', '', 0),
(20, 1, '2024-09-12 08:04:26', '2024-09-12 08:04:26', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-09-12 08:04:26', '2024-09-12 08:04:26', '', 15, 'http://wp-for-twig.ddev.site/?p=20', 0, 'revision', '', 0),
(21, 1, '2024-09-12 10:02:20', '2024-09-12 10:02:20', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-09-12 10:02:20', '2024-09-12 10:02:20', '', 15, 'http://wp-for-twig.ddev.site/?p=21', 0, 'revision', '', 0),
(22, 1, '2024-09-12 10:02:36', '2024-09-12 10:02:36', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-09-12 10:02:36', '2024-09-12 10:02:36', '', 15, 'http://wp-for-twig.ddev.site/?p=22', 0, 'revision', '', 0),
(23, 1, '2024-09-12 10:03:15', '2024-09-12 10:03:15', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n<h4>Technoloies Used</h4>\r\n<ul>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n</ul>\r\n\r\n<a href=\"#\" target=\"_blank\" rel=\"noopener\">View Project</a>', 'post 1', '', 'publish', 'closed', 'closed', '', 'post-1', '', '', '2024-10-11 10:15:45', '2024-10-11 10:15:45', '', 0, 'http://wp-for-twig.ddev.site/?post_type=project&#038;p=23', 0, 'project', '', 0),
(24, 1, '2024-09-12 10:03:31', '2024-09-12 10:03:31', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n<h4>Technoloies Used</h4>\r\n<ul>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n</ul>\r\n\r\n<a href=\"#\" target=\"_blank\" rel=\"noopener\">View Project</a>', 'post 2', '', 'publish', 'closed', 'closed', '', 'post-2', '', '', '2024-10-11 10:15:52', '2024-10-11 10:15:52', '', 0, 'http://wp-for-twig.ddev.site/?post_type=project&#038;p=24', 0, 'project', '', 0),
(25, 1, '2024-09-12 10:03:50', '2024-09-12 10:03:50', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n<h4>Technoloies Used</h4>\r\n<ul>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n</ul>\r\n\r\n<a href=\"#\" target=\"_blank\" rel=\"noopener\">View Project</a>', 'post 3', '', 'publish', 'closed', 'closed', '', 'post-3', '', '', '2024-10-11 10:15:58', '2024-10-11 10:15:58', '', 0, 'http://wp-for-twig.ddev.site/?post_type=project&#038;p=25', 0, 'project', '', 0),
(26, 1, '2024-09-12 10:51:40', '2024-09-12 10:51:40', 'a:29:{s:8:\"taxonomy\";s:15:\"type_of_project\";s:11:\"object_type\";a:1:{i:0;s:7:\"project\";}s:22:\"advanced_configuration\";i:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:5:\"Types\";s:13:\"singular_name\";s:4:\"Type\";s:9:\"menu_name\";s:5:\"Types\";s:9:\"all_items\";s:9:\"All Types\";s:9:\"edit_item\";s:9:\"Edit Type\";s:9:\"view_item\";s:9:\"View Type\";s:11:\"update_item\";s:11:\"Update Type\";s:12:\"add_new_item\";s:12:\"Add New Type\";s:13:\"new_item_name\";s:13:\"New Type Name\";s:11:\"parent_item\";s:11:\"Parent Type\";s:17:\"parent_item_colon\";s:12:\"Parent Type:\";s:12:\"search_items\";s:12:\"Search Types\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:14:\"No types found\";s:8:\"no_terms\";s:8:\"No types\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:14:\"filter_by_item\";s:14:\"Filter by type\";s:21:\"items_list_navigation\";s:21:\"Types list navigation\";s:10:\"items_list\";s:10:\"Types list\";s:13:\"back_to_items\";s:15:\"← Go to types\";s:9:\"item_link\";s:9:\"Type Link\";s:21:\"item_link_description\";s:16:\"A link to a type\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:1;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}', 'Types', 'types', 'publish', 'closed', 'closed', '', 'taxonomy_66e2c795d436f', '', '', '2024-09-12 10:51:40', '2024-09-12 10:51:40', '', 0, 'http://wp-for-twig.ddev.site/?post_type=acf-taxonomy&#038;p=26', 0, 'acf-taxonomy', '', 0),
(73, 1, '2024-09-16 05:29:57', '2024-09-16 05:29:57', '', 'home-right', '', 'inherit', 'open', 'closed', '', 'home-right', '', '', '2024-09-16 05:29:57', '2024-09-16 05:29:57', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/09/home-right.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2024-09-16 05:30:03', '2024-09-16 05:30:03', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-09-16 05:30:03', '2024-09-16 05:30:03', '', 15, 'http://wp-for-twig.ddev.site/?p=74', 0, 'revision', '', 0),
(76, 1, '2024-09-16 07:34:09', '0000-00-00 00:00:00', '', 'About', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-09-16 07:34:09', '0000-00-00 00:00:00', '', 0, 'http://wp-for-twig.ddev.site/?p=76', 1, 'nav_menu_item', '', 0),
(77, 1, '2024-09-16 07:34:27', '0000-00-00 00:00:00', '', 'Technical Skills', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-09-16 07:34:27', '0000-00-00 00:00:00', '', 0, 'http://wp-for-twig.ddev.site/?p=77', 1, 'nav_menu_item', '', 0),
(78, 1, '2024-09-16 07:34:40', '0000-00-00 00:00:00', '', 'Projects', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-09-16 07:34:40', '0000-00-00 00:00:00', '', 0, 'http://wp-for-twig.ddev.site/?p=78', 1, 'nav_menu_item', '', 0),
(79, 1, '2024-09-16 07:34:56', '0000-00-00 00:00:00', '', 'Contact Us', '', 'draft', 'closed', 'closed', '', '', '', '', '2024-09-16 07:34:56', '0000-00-00 00:00:00', '', 0, 'http://wp-for-twig.ddev.site/?p=79', 1, 'nav_menu_item', '', 0),
(80, 1, '2024-10-16 06:13:40', '2024-09-16 07:36:00', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2024-10-16 06:13:40', '2024-10-16 06:13:40', '', 0, 'http://wp-for-twig.ddev.site/?p=80', 2, 'nav_menu_item', '', 0),
(81, 1, '2024-10-16 06:13:40', '2024-09-16 07:36:01', '', 'Technical Skills', '', 'publish', 'closed', 'closed', '', 'technical-skills', '', '', '2024-10-16 06:13:40', '2024-10-16 06:13:40', '', 0, 'http://wp-for-twig.ddev.site/?p=81', 3, 'nav_menu_item', '', 0),
(82, 1, '2024-10-16 06:13:40', '2024-09-16 07:36:01', '', 'Projects', '', 'publish', 'closed', 'closed', '', 'projects', '', '', '2024-10-16 06:13:40', '2024-10-16 06:13:40', '', 0, 'http://wp-for-twig.ddev.site/?p=82', 4, 'nav_menu_item', '', 0),
(83, 1, '2024-10-16 06:13:40', '2024-09-16 07:36:01', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2024-10-16 06:13:40', '2024-10-16 06:13:40', '', 0, 'http://wp-for-twig.ddev.site/?p=83', 5, 'nav_menu_item', '', 0),
(85, 1, '2024-09-19 06:21:00', '2024-09-19 06:21:00', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-09-19 06:21:00', '2024-09-19 06:21:00', '', 15, 'http://wp-for-twig.ddev.site/?p=85', 0, 'revision', '', 0),
(86, 1, '2024-09-19 06:21:31', '2024-09-19 06:21:31', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-09-19 06:21:31', '2024-09-19 06:21:31', '', 15, 'http://wp-for-twig.ddev.site/?p=86', 0, 'revision', '', 0),
(91, 1, '2024-09-19 10:20:31', '2024-09-19 10:20:31', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n<h4>Technoloies Used</h4>\r\n<ul>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n</ul>\r\n\r\n<a href=\"#\" target=\"_blank\" rel=\"noopener\">View Project</a>', 'post 4', '', 'publish', 'closed', 'closed', '', 'post-4', '', '', '2024-10-11 10:16:04', '2024-10-11 10:16:04', '', 0, 'http://wp-for-twig.ddev.site/?post_type=project&#038;p=91', 0, 'project', '', 0),
(94, 1, '2024-09-19 10:21:24', '2024-09-19 10:21:24', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n<h4>Technoloies Used</h4>\r\n<ul>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n<li>Wordpress</li>\r\n</ul>\r\n\r\n<a href=\"#\" target=\"_blank\" rel=\"noopener\">View Project</a>', 'post 5', '', 'publish', 'closed', 'closed', '', 'post-5', '', '', '2024-10-11 10:16:09', '2024-10-11 10:16:09', '', 0, 'http://wp-for-twig.ddev.site/?post_type=project&#038;p=94', 0, 'project', '', 0),
(96, 1, '2024-09-20 07:55:06', '2024-09-20 07:55:06', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wp-for-twig.ddev.site>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wp-for-twig.ddev.site>\nMessage Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2024-09-20 07:55:06', '2024-09-20 07:55:06', '', 0, 'http://wp-for-twig.ddev.site/?post_type=wpcf7_contact_form&p=96', 0, 'wpcf7_contact_form', '', 0),
(97, 1, '2024-09-20 07:55:41', '2024-09-20 07:55:41', '[text* your-name class:your-name autocomplete:name placeholder \"Your Name\"]\r\n[email* your-email class:your-email autocomplete:email placeholder \"Your Email\"]\r\n[text* your-subject class:your-subject placeholder \"Your Subject\"]\r\n[textarea your-message class:your-message placeholder \"Your Message\"]\r\n[submit \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wp-for-twig.ddev.site>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wp-for-twig.ddev.site>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Let Talk!', '', 'publish', 'closed', 'closed', '', 'let-talk', '', '', '2024-09-24 08:05:00', '2024-09-24 08:05:00', '', 0, 'http://wp-for-twig.ddev.site/?post_type=wpcf7_contact_form&#038;p=97', 0, 'wpcf7_contact_form', '', 0),
(98, 1, '2024-09-20 10:10:37', '2024-09-20 10:10:37', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";b:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"sub_fields\";a:0:{}s:6:\"layout\";s:5:\"block\";}', 'Technical Skills', 'technical_skills', 'publish', 'closed', 'closed', '', 'field_66ed4a0e0a9f3', '', '', '2024-09-20 10:10:37', '2024-09-20 10:10:37', '', 11, 'http://wp-for-twig.ddev.site/?post_type=acf-field&p=98', 1, 'acf-field', '', 0),
(99, 1, '2024-09-20 10:11:33', '2024-09-20 10:11:33', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 1 Image', 'skill_1_image', 'publish', 'closed', 'closed', '', 'field_66ed4a2026228', '', '', '2024-10-09 09:36:37', '2024-10-09 09:36:37', '', 155, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=99', 0, 'acf-field', '', 0),
(100, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 2 Image', 'skill_2_image', 'publish', 'closed', 'closed', '', 'field_66ed4a60536d2', '', '', '2024-10-09 09:36:37', '2024-10-09 09:36:37', '', 155, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=100', 1, 'acf-field', '', 0),
(101, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 3 Image', 'skill_3_image', 'publish', 'closed', 'closed', '', 'field_66ed4a85536d3', '', '', '2024-10-09 09:36:37', '2024-10-09 09:36:37', '', 155, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=101', 2, 'acf-field', '', 0),
(102, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 4 Image', 'skill_4_image', 'publish', 'closed', 'closed', '', 'field_66ed4a9a536d4', '', '', '2024-10-09 09:36:37', '2024-10-09 09:36:37', '', 155, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=102', 3, 'acf-field', '', 0),
(103, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 5 Image', 'skill_5_image', 'publish', 'closed', 'closed', '', 'field_66ed4aad536d5', '', '', '2024-10-09 09:36:37', '2024-10-09 09:36:37', '', 155, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=103', 4, 'acf-field', '', 0),
(104, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 6 Image', 'skill_6_image', 'publish', 'closed', 'closed', '', 'field_66ed4ac6536d7', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=104', 5, 'acf-field', '', 0),
(105, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 7 Image', 'skill_7_image', 'publish', 'closed', 'closed', '', 'field_66ed4adb536d8', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=105', 6, 'acf-field', '', 0),
(106, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 8 Image', 'skill_8_image', 'publish', 'closed', 'closed', '', 'field_66ed4aec536d9', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=106', 7, 'acf-field', '', 0),
(107, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 9 Image', 'skill_9_image', 'publish', 'closed', 'closed', '', 'field_66ed4afa536db', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=107', 8, 'acf-field', '', 0),
(108, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 10 Image', 'skill_10_image', 'publish', 'closed', 'closed', '', 'field_66ed4b12536dd', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=108', 9, 'acf-field', '', 0),
(109, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 11 Image', 'skill_11_image', 'publish', 'closed', 'closed', '', 'field_66ed4b27536df', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=109', 10, 'acf-field', '', 0),
(110, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 12 Image', 'skill_12_image', 'publish', 'closed', 'closed', '', 'field_66ed4b3d536e1', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=110', 11, 'acf-field', '', 0),
(111, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 13 Image', 'skill_13_image', 'publish', 'closed', 'closed', '', 'field_66ed4b51536e3', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=111', 12, 'acf-field', '', 0),
(114, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 5 Image', 'skill_5_image', 'publish', 'closed', 'closed', '', 'field_66ed4b77536e6', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=114', 4, 'acf-field', '', 0),
(115, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 4 Image', 'skill_4_image', 'publish', 'closed', 'closed', '', 'field_66ed4b84536e7', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=115', 3, 'acf-field', '', 0),
(116, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 3 Image', 'skill_3_image', 'publish', 'closed', 'closed', '', 'field_66ed4b96536e8', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=116', 2, 'acf-field', '', 0),
(117, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 2 Image', 'skill_2_image', 'publish', 'closed', 'closed', '', 'field_66ed4ba0536e9', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=117', 1, 'acf-field', '', 0),
(118, 1, '2024-09-20 10:17:30', '2024-09-20 10:17:30', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 1 Image', 'skill_1_image', 'publish', 'closed', 'closed', '', 'field_66ed4bab536ea', '', '', '2024-10-09 09:39:30', '2024-10-09 09:39:30', '', 159, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=118', 0, 'acf-field', '', 0),
(119, 1, '2024-09-20 11:15:13', '2024-09-20 11:15:13', '[text* your-name autocomplete:name]\r\n[email* your-email autocomplete:email] </label>\r\n[text* your-subject]\r\n[textarea your-message]\r\n[submit \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wp-for-twig.ddev.site>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@wp-for-twig.ddev.site>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1_copy', '', 'publish', 'closed', 'closed', '', 'contact-form-1_copy', '', '', '2024-09-20 11:16:03', '2024-09-20 11:16:03', '', 0, 'http://wp-for-twig.ddev.site/?post_type=wpcf7_contact_form&#038;p=119', 0, 'wpcf7_contact_form', '', 0),
(131, 1, '2024-10-09 07:09:19', '2024-10-09 07:09:19', '', 'Paperwork', 'Confident businessman pointing at document while explaining his idea to his partner on background of their colleagues', 'inherit', 'open', 'closed', '', 'paperwork', '', '', '2024-10-09 07:09:19', '2024-10-09 07:09:19', '', 23, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/09/businessman-showing-changes-report.jpg', 0, 'attachment', 'image/jpeg', 0),
(132, 1, '2024-10-09 09:21:31', '2024-10-09 09:21:31', '', 'wordpress', '', 'inherit', 'open', 'closed', '', 'wordpress', '', '', '2024-10-09 09:21:31', '2024-10-09 09:21:31', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/wordpress.png', 0, 'attachment', 'image/png', 0),
(133, 1, '2024-10-09 09:22:45', '2024-10-09 09:22:45', '', 'twig', '', 'inherit', 'open', 'closed', '', 'twig', '', '', '2024-10-09 09:22:45', '2024-10-09 09:22:45', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/twig.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2024-10-09 09:22:45', '2024-10-09 09:22:45', '', 'tailwind', '', 'inherit', 'open', 'closed', '', 'tailwind', '', '', '2024-10-09 09:22:45', '2024-10-09 09:22:45', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/tailwind.png', 0, 'attachment', 'image/png', 0),
(135, 1, '2024-10-09 09:22:45', '2024-10-09 09:22:45', '', 'Stripe', '', 'inherit', 'open', 'closed', '', 'stripe', '', '', '2024-10-09 09:22:45', '2024-10-09 09:22:45', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/Stripe.png', 0, 'attachment', 'image/png', 0),
(136, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'slick', '', 'inherit', 'open', 'closed', '', 'slick', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/slick.png', 0, 'attachment', 'image/png', 0),
(137, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'sass', '', 'inherit', 'open', 'closed', '', 'sass', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/sass.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'php', '', 'inherit', 'open', 'closed', '', 'php', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/php.png', 0, 'attachment', 'image/png', 0),
(139, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'npm', '', 'inherit', 'open', 'closed', '', 'npm', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/npm.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'laravel', '', 'inherit', 'open', 'closed', '', 'laravel', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/laravel.png', 0, 'attachment', 'image/png', 0),
(141, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'lando2', '', 'inherit', 'open', 'closed', '', 'lando2', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/lando2.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'lando', '', 'inherit', 'open', 'closed', '', 'lando', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/lando.png', 0, 'attachment', 'image/png', 0),
(143, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'jquery2', '', 'inherit', 'open', 'closed', '', 'jquery2', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/jquery2.png', 0, 'attachment', 'image/png', 0),
(144, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'jquery', '', 'inherit', 'open', 'closed', '', 'jquery', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/jquery.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(145, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'javascript', '', 'inherit', 'open', 'closed', '', 'javascript', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/javascript.png', 0, 'attachment', 'image/png', 0),
(146, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'html', '', 'inherit', 'open', 'closed', '', 'html', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/html.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 'github', '', 'inherit', 'open', 'closed', '', 'github', '', '', '2024-10-09 09:22:46', '2024-10-09 09:22:46', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/github.png', 0, 'attachment', 'image/png', 0),
(148, 1, '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 'git', '', 'inherit', 'open', 'closed', '', 'git', '', '', '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/git.png', 0, 'attachment', 'image/png', 0),
(149, 1, '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 'drupal', '', 'inherit', 'open', 'closed', '', 'drupal', '', '', '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/drupal.png', 0, 'attachment', 'image/png', 0),
(150, 1, '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 'docker', '', 'inherit', 'open', 'closed', '', 'docker', '', '', '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/docker.png', 0, 'attachment', 'image/png', 0),
(151, 1, '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 'ddev', '', 'inherit', 'open', 'closed', '', 'ddev', '', '', '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/ddev.png', 0, 'attachment', 'image/png', 0),
(152, 1, '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 'css', '', 'inherit', 'open', 'closed', '', 'css', '', '', '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/css.png', 0, 'attachment', 'image/png', 0),
(153, 1, '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 'composer', '', 'inherit', 'open', 'closed', '', 'composer', '', '', '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/composer.png', 0, 'attachment', 'image/png', 0),
(154, 1, '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 'Bootstrap', '', 'inherit', 'open', 'closed', '', 'bootstrap', '', '', '2024-10-09 09:22:47', '2024-10-09 09:22:47', '', 15, 'http://wp-for-twig.ddev.site/wp-content/uploads/2024/10/Bootstrap.png', 0, 'attachment', 'image/png', 0),
(155, 1, '2024-10-09 09:34:54', '2024-10-09 09:34:54', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Languages', 'languages', 'publish', 'closed', 'closed', '', 'field_67064babcc5e8', '', '', '2024-10-09 09:34:54', '2024-10-09 09:34:54', '', 98, 'http://wp-for-twig.ddev.site/?post_type=acf-field&p=155', 0, 'acf-field', '', 0),
(156, 1, '2024-10-09 09:34:54', '2024-10-09 09:34:54', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'CMS', 'cms', 'publish', 'closed', 'closed', '', 'field_67064bf8cc5e9', '', '', '2024-10-09 09:34:54', '2024-10-09 09:34:54', '', 98, 'http://wp-for-twig.ddev.site/?post_type=acf-field&p=156', 1, 'acf-field', '', 0),
(157, 1, '2024-10-09 09:34:54', '2024-10-09 09:34:54', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 1 Image', 'skill_1_image', 'publish', 'closed', 'closed', '', 'field_67064c11cc5ea', '', '', '2024-10-09 09:37:16', '2024-10-09 09:37:16', '', 156, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=157', 0, 'acf-field', '', 0),
(158, 1, '2024-10-09 09:34:54', '2024-10-09 09:34:54', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:12:\"preview_size\";s:6:\"medium\";}', 'Skill 2 Image', 'skill_2_image', 'publish', 'closed', 'closed', '', 'field_67064c1ecc5eb', '', '', '2024-10-09 09:37:16', '2024-10-09 09:37:16', '', 156, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=158', 1, 'acf-field', '', 0),
(159, 1, '2024-10-09 09:34:54', '2024-10-09 09:34:54', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Tools, Frameworks and Libraries', 'tools_frameworks_and_libraries', 'publish', 'closed', 'closed', '', 'field_67064c3acc5ec', '', '', '2024-10-09 09:34:54', '2024-10-09 09:34:54', '', 98, 'http://wp-for-twig.ddev.site/?post_type=acf-field&p=159', 2, 'acf-field', '', 0),
(160, 1, '2024-10-09 09:35:48', '2024-10-09 09:35:48', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-10-09 09:35:48', '2024-10-09 09:35:48', '', 15, 'http://wp-for-twig.ddev.site/?p=160', 0, 'revision', '', 0),
(161, 1, '2024-10-09 09:37:47', '2024-10-09 09:37:47', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-10-09 09:37:47', '2024-10-09 09:37:47', '', 15, 'http://wp-for-twig.ddev.site/?p=161', 0, 'revision', '', 0),
(162, 1, '2024-10-09 09:41:22', '2024-10-09 09:41:22', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-10-09 09:41:22', '2024-10-09 09:41:22', '', 15, 'http://wp-for-twig.ddev.site/?p=162', 0, 'revision', '', 0),
(163, 1, '2024-10-09 10:07:54', '2024-10-09 10:07:54', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-10-09 10:07:54', '2024-10-09 10:07:54', '', 15, 'http://wp-for-twig.ddev.site/?p=163', 0, 'revision', '', 0),
(164, 1, '2024-10-09 10:17:27', '2024-10-09 10:17:27', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"project\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Projects PT', 'projects-pt', 'trash', 'closed', 'closed', '', 'group_6706579c7fd4f__trashed', '', '', '2024-10-09 10:22:20', '2024-10-09 10:22:20', '', 0, 'http://wp-for-twig.ddev.site/?post_type=acf-field-group&#038;p=164', 0, 'acf-field-group', '', 0),
(165, 1, '2024-10-09 10:17:27', '2024-10-09 10:17:27', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'description', 'trash', 'closed', 'closed', '', 'field_6706579c42520__trashed', '', '', '2024-10-09 10:22:20', '2024-10-09 10:22:20', '', 164, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=165', 0, 'acf-field', '', 0),
(166, 1, '2024-10-09 10:17:27', '2024-10-09 10:17:27', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Technologies Used', 'technologies_used', 'trash', 'closed', 'closed', '', 'field_670657c042521__trashed', '', '', '2024-10-09 10:22:20', '2024-10-09 10:22:20', '', 164, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=166', 1, 'acf-field', '', 0),
(167, 1, '2024-10-09 10:39:10', '2024-10-09 10:39:10', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\n\n<h4>Technoloies Used</h4>\n<ul>\n<li>Wordpress</li>\n<li>Wordpress</li>\n<li>Wordpress</li>\n<li>Wordpress</li>\n</ul>\n\n<a href =', 'post 1', '', 'inherit', 'closed', 'closed', '', '23-autosave-v1', '', '', '2024-10-09 10:39:10', '2024-10-09 10:39:10', '', 23, 'http://wp-for-twig.ddev.site/?p=167', 0, 'revision', '', 0),
(168, 1, '2024-10-11 10:55:02', '2024-10-11 10:55:02', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'field_670903a540264', '', '', '2024-10-11 10:55:02', '2024-10-11 10:55:02', '', 11, 'http://wp-for-twig.ddev.site/?post_type=acf-field&p=168', 2, 'acf-field', '', 0),
(169, 1, '2024-10-11 10:55:02', '2024-10-11 10:55:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_670903bb40265', '', '', '2024-10-11 10:55:02', '2024-10-11 10:55:02', '', 168, 'http://wp-for-twig.ddev.site/?post_type=acf-field&p=169', 0, 'acf-field', '', 0),
(170, 1, '2024-10-11 10:55:02', '2024-10-11 10:55:02', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'LinkedIn', 'linked', 'publish', 'closed', 'closed', '', 'field_670903c440266', '', '', '2024-10-14 05:02:23', '2024-10-14 05:02:23', '', 168, 'http://wp-for-twig.ddev.site/?post_type=acf-field&#038;p=170', 1, 'acf-field', '', 0),
(171, 1, '2024-10-11 10:55:46', '2024-10-11 10:55:46', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-10-11 10:55:46', '2024-10-11 10:55:46', '', 15, 'http://wp-for-twig.ddev.site/?p=171', 0, 'revision', '', 0),
(172, 1, '2024-10-11 10:56:11', '2024-10-11 10:56:11', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-10-11 10:56:11', '2024-10-11 10:56:11', '', 15, 'http://wp-for-twig.ddev.site/?p=172', 0, 'revision', '', 0),
(173, 1, '2024-10-14 04:52:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-10-14 04:52:06', '0000-00-00 00:00:00', '', 0, 'http://wp-for-twig.ddev.site/?p=173', 0, 'post', '', 0),
(174, 1, '2024-10-14 04:55:20', '2024-10-14 04:55:20', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-10-14 04:55:20', '2024-10-14 04:55:20', '', 15, 'http://wp-for-twig.ddev.site/?p=174', 0, 'revision', '', 0),
(175, 1, '2024-10-14 04:55:57', '2024-10-14 04:55:57', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-10-14 04:55:57', '2024-10-14 04:55:57', '', 15, 'http://wp-for-twig.ddev.site/?p=175', 0, 'revision', '', 0),
(176, 1, '2024-10-14 05:03:11', '2024-10-14 05:03:11', '', 'Hm', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-10-14 05:03:11', '2024-10-14 05:03:11', '', 15, 'http://wp-for-twig.ddev.site/?p=176', 0, 'revision', '', 0),
(177, 1, '2024-10-16 06:13:40', '2024-10-16 06:13:40', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2024-10-16 06:13:40', '2024-10-16 06:13:40', '', 0, 'http://wp-for-twig.ddev.site/?p=177', 1, 'nav_menu_item', '', 0),
(178, 1, '2024-10-17 09:41:34', '2024-10-17 09:41:34', '', 'Home', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2024-10-17 09:41:34', '2024-10-17 09:41:34', '', 15, 'http://portfolio.ddev.site/?p=178', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(4, 'WP', 'wp', 0),
(5, 'Non WP', 'non-wp', 0),
(7, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(23, 4, 0),
(24, 5, 0),
(25, 4, 0),
(80, 7, 0),
(81, 7, 0),
(82, 7, 0),
(83, 7, 0),
(91, 4, 0),
(177, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(4, 4, 'type_of_project', '', 0, 3),
(5, 5, 'type_of_project', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'rishabh'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"7cc03b23814497bf9607d27add1d4e77994a006a737f464d452968d5b69af1ed\";a:4:{s:10:\"expiration\";i:1729231356;s:2:\"ip\";s:10:\"172.31.0.6\";s:2:\"ua\";s:78:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:131.0) Gecko/20100101 Firefox/131.0\";s:5:\"login\";i:1729058556;}s:64:\"49e4bff33cdca5ed9ab6099afbbf3570adbe79930200ff181b49f7611c0f3e00\";a:4:{s:10:\"expiration\";i:1729323829;s:2:\"ip\";s:10:\"172.31.0.6\";s:2:\"ua\";s:78:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:131.0) Gecko/20100101 Firefox/131.0\";s:5:\"login\";i:1729151029;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '173'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.31.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-09-12T07:22:08.744Z\";}'),
(20, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(21, 1, 'acf_user_settings', 'a:2:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;}'),
(22, 1, 'closedpostboxes_acf-post-type', 'a:0:{}'),
(23, 1, 'metaboxhidden_acf-post-type', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(25, 1, 'wp_user-settings-time', '1726727637'),
(26, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(27, 1, 'closedpostboxes_acf-taxonomy', 'a:0:{}'),
(28, 1, 'metaboxhidden_acf-taxonomy', 'a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}'),
(29, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(30, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-project\";i:1;s:12:\"add-post_tag\";i:2;s:19:\"add-type_of_project\";}'),
(31, 1, 'nav_menu_recently_edited', '7'),
(32, 1, 'wp_media_library_mode', 'grid');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'rishabh', '$P$BqxSnetsom75RWbN3Gtrf.WnFKycOG/', 'rishabh', 'a7xrishabhdiwan@gmail.com', 'http://wp-for-twig.ddev.site', '2024-09-12 07:10:54', '', 0, 'rishabh');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpforms_logs`
--

CREATE TABLE `wp_wpforms_logs` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `types` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL,
  `form_id` bigint(20) DEFAULT NULL,
  `entry_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpforms_payments`
--

CREATE TABLE `wp_wpforms_payments` (
  `id` bigint(20) NOT NULL,
  `form_id` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `subtotal_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `discount_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `total_amount` decimal(26,8) NOT NULL DEFAULT 0.00000000,
  `currency` varchar(3) NOT NULL DEFAULT '',
  `entry_id` bigint(20) NOT NULL DEFAULT 0,
  `gateway` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(12) NOT NULL DEFAULT '',
  `mode` varchar(4) NOT NULL DEFAULT '',
  `transaction_id` varchar(40) NOT NULL DEFAULT '',
  `customer_id` varchar(40) NOT NULL DEFAULT '',
  `subscription_id` varchar(40) NOT NULL DEFAULT '',
  `subscription_status` varchar(10) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `date_created_gmt` datetime NOT NULL,
  `date_updated_gmt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpforms_payment_meta`
--

CREATE TABLE `wp_wpforms_payment_meta` (
  `id` bigint(20) NOT NULL,
  `payment_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpforms_tasks_meta`
--

CREATE TABLE `wp_wpforms_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpforms_tasks_meta`
--

INSERT INTO `wp_wpforms_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_forms_locator_scan', 'W10=', '2024-10-10 05:22:40'),
(2, 'wpforms_process_purge_spam', 'W10=', '2024-10-10 05:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text DEFAULT NULL,
  `initiator` text DEFAULT NULL,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmailsmtp_debug_events`
--

INSERT INTO `wp_wpmailsmtp_debug_events` (`id`, `content`, `initiator`, `event_type`, `created_at`) VALUES
(1, 'Mailer: Other SMTP\r\nSMTP Error: Could not authenticate.', '{\"file\":\"\\/var\\/www\\/html\\/wp-content\\/plugins\\/wp-mail-smtp\\/src\\/Admin\\/SetupWizard.php\",\"line\":1218}', 0, '2024-10-10 05:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) NOT NULL,
  `data` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wpmailsmtp_tasks_meta`
--

INSERT INTO `wp_wpmailsmtp_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wp_mail_smtp_admin_notifications_update', 'W10=', '2024-10-10 05:22:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  ADD KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wpforms_logs`
--
ALTER TABLE `wp_wpforms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpforms_payments`
--
ALTER TABLE `wp_wpforms_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `form_id` (`form_id`),
  ADD KEY `status` (`status`(8)),
  ADD KEY `total_amount` (`total_amount`),
  ADD KEY `type` (`type`(8)),
  ADD KEY `transaction_id` (`transaction_id`(32)),
  ADD KEY `customer_id` (`customer_id`(32)),
  ADD KEY `subscription_id` (`subscription_id`(32)),
  ADD KEY `subscription_status` (`subscription_status`(8)),
  ADD KEY `title` (`title`(64));

--
-- Indexes for table `wp_wpforms_payment_meta`
--
ALTER TABLE `wp_wpforms_payment_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `meta_key` (`meta_key`(191)),
  ADD KEY `meta_value` (`meta_value`(191));

--
-- Indexes for table `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=907;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2310;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1409;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpforms_logs`
--
ALTER TABLE `wp_wpforms_logs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpforms_payments`
--
ALTER TABLE `wp_wpforms_payments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpforms_payment_meta`
--
ALTER TABLE `wp_wpforms_payment_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wpforms_tasks_meta`
--
ALTER TABLE `wp_wpforms_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
