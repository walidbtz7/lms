-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 13 juin 2021 à 02:47
-- Version du serveur :  10.1.39-MariaDB
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `chakfi`
--

-- --------------------------------------------------------

--
-- Structure de la table `content_categories`
--

CREATE TABLE `content_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `content_category_content_page`
--

CREATE TABLE `content_category_content_page` (
  `content_category_id` int(10) UNSIGNED DEFAULT NULL,
  `content_page_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `content_pages`
--

CREATE TABLE `content_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_text` text COLLATE utf8mb4_unicode_ci,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `content_pages`
--

INSERT INTO `content_pages` (`id`, `title`, `page_text`, `excerpt`, `featured_image`, `created_at`, `updated_at`) VALUES
(1, 'About us', 'Sample text', 'Sample excerpt', '', '2021-06-12 01:26:26', '2021-06-12 01:26:26');

-- --------------------------------------------------------

--
-- Structure de la table `content_page_content_tag`
--

CREATE TABLE `content_page_content_tag` (
  `content_page_id` int(10) UNSIGNED DEFAULT NULL,
  `content_tag_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `content_tags`
--

CREATE TABLE `content_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `coursecategories`
--

CREATE TABLE `coursecategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coursecategories`
--

INSERT INTO `coursecategories` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 'Media', 'media', '2021-06-12 20:19:15', '2021-06-12 20:19:15', NULL),
(12, 'Dev Web', 'web', '2021-06-12 20:24:30', '2021-06-12 20:24:30', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `introduction` text COLLATE utf8mb4_unicode_ci,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `approved` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `courses`
--

INSERT INTO `courses` (`id`, `order`, `title`, `slug`, `description`, `introduction`, `featured_image`, `duration`, `start_date`, `end_date`, `approved`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, NULL, 'Multimédia', 'multimedia', 'IMAGE VIDEO SON', '<p>TEEEEEEEEEEEESSSSSSSSSSSSSSSSSSSTTTTTTTTTTTTTT</p>\r\n', NULL, 10, '2021-06-15', '2021-06-30', 0, '2021-06-12 20:15:22', '2021-06-12 20:22:23', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `coursescertificates`
--

CREATE TABLE `coursescertificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coursescertificates`
--

INSERT INTO `coursescertificates` (`id`, `order`, `title`, `slug`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 11, 'Multimédia', 'Multimédia', NULL, '2021-06-12 20:15:22', '2021-06-12 20:15:22', NULL),
(14, 14, 'LARAVEL 8 ', 'LARAVEL 8 ', NULL, '2021-06-12 20:41:38', '2021-06-12 20:41:38', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `coursetags`
--

CREATE TABLE `coursetags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by_team_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `coursetags`
--

INSERT INTO `coursetags` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`, `created_by_id`, `created_by_team_id`) VALUES
(11, 'Informatique', 'info', '2021-06-12 20:19:40', '2021-06-12 20:19:40', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `course_coursecategory`
--

CREATE TABLE `course_coursecategory` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `coursecategory_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `course_coursecategory`
--

INSERT INTO `course_coursecategory` (`course_id`, `coursecategory_id`) VALUES
(11, 11);

-- --------------------------------------------------------

--
-- Structure de la table `course_coursetag`
--

CREATE TABLE `course_coursetag` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `coursetag_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `course_coursetag`
--

INSERT INTO `course_coursetag` (`course_id`, `coursetag_id`) VALUES
(11, 11);

-- --------------------------------------------------------

--
-- Structure de la table `course_lesson`
--

CREATE TABLE `course_lesson` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `lesson_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `course_lesson`
--

INSERT INTO `course_lesson` (`course_id`, `lesson_id`) VALUES
(11, 11);

-- --------------------------------------------------------

--
-- Structure de la table `course_trail`
--

CREATE TABLE `course_trail` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `trail_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `course_user`
--

CREATE TABLE `course_user` (
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `course_user`
--

INSERT INTO `course_user` (`course_id`, `user_id`) VALUES
(11, 1);

-- --------------------------------------------------------

--
-- Structure de la table `datacourses`
--

CREATE TABLE `datacourses` (
  `id` int(10) UNSIGNED NOT NULL,
  `view` int(11) DEFAULT NULL,
  `progress` double(10,5) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `testimonal` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `certificate_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `datacourses`
--

INSERT INTO `datacourses` (`id`, `view`, `progress`, `rating`, `testimonal`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `course_id`, `certificate_id`) VALUES
(6, 1, 25.00000, 90, 'nien', '2021-06-12 20:23:04', '2021-06-12 21:37:19', NULL, 1, 11, NULL),
(20, 1, NULL, NULL, NULL, '2021-06-12 23:13:19', '2021-06-12 23:13:19', NULL, 3, 11, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `datalessons`
--

CREATE TABLE `datalessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `view` int(11) DEFAULT NULL,
  `progress` double(10,5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `lesson_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `datalessons`
--

INSERT INTO `datalessons` (`id`, `view`, `progress`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `course_id`, `lesson_id`) VALUES
(8, NULL, 100.00000, '2021-06-12 20:23:12', '2021-06-12 20:23:12', NULL, 1, 11, 11);

-- --------------------------------------------------------

--
-- Structure de la table `datatrails`
--

CREATE TABLE `datatrails` (
  `id` int(10) UNSIGNED NOT NULL,
  `view` int(11) DEFAULT NULL,
  `progress` double(10,5) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `testimonal` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `trail_id` int(10) UNSIGNED DEFAULT NULL,
  `certificate_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `datatrails`
--

INSERT INTO `datatrails` (`id`, `view`, `progress`, `rating`, `testimonal`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `trail_id`, `certificate_id`) VALUES
(1, 1, 25.00000, NULL, NULL, '2021-06-12 13:29:08', '2021-06-12 16:11:18', NULL, 1, 1, NULL),
(2, 1, 33.33333, NULL, NULL, '2021-06-12 13:32:30', '2021-06-12 13:33:26', NULL, 1, 10, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `faq_categories`
--

CREATE TABLE `faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faq_categories`
--

INSERT INTO `faq_categories` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Sample category', '2021-06-12 01:26:26', '2021-06-12 01:26:26');

-- --------------------------------------------------------

--
-- Structure de la table `faq_questions`
--

CREATE TABLE `faq_questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `faq_questions`
--

INSERT INTO `faq_questions` (`id`, `question_text`, `answer_text`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Sample question', 'Sample answer', '2021-06-12 01:26:26', '2021-06-12 01:26:26', 1);

-- --------------------------------------------------------

--
-- Structure de la table `generals`
--

CREATE TABLE `generals` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `generals`
--

INSERT INTO `generals` (`id`, `site_name`, `site_logo`, `theme_color`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'CHAKFI', '1623540355-sTREAAMO (2).jpg', 'deep-purple', '2021-06-12 13:16:13', '2021-06-12 23:25:56', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `internal_notifications`
--

CREATE TABLE `internal_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `internal_notifications`
--

INSERT INTO `internal_notifications` (`id`, `text`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Bonjour ', '', '2021-06-12 13:21:22', '2021-06-12 13:21:22');

-- --------------------------------------------------------

--
-- Structure de la table `internal_notification_user`
--

CREATE TABLE `internal_notification_user` (
  `internal_notification_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `internal_notification_user`
--

INSERT INTO `internal_notification_user` (`internal_notification_id`, `user_id`, `read_at`, `created_at`) VALUES
(1, 3, NULL, '2021-06-12 13:21:22');

-- --------------------------------------------------------

--
-- Structure de la table `lessons`
--

CREATE TABLE `lessons` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduction` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `study_material` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `lessons`
--

INSERT INTO `lessons` (`id`, `order`, `title`, `slug`, `introduction`, `content`, `study_material`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 1, 'INTRO', 'multimedia', 'ttteessstttttttt', '', '', NULL, '2021-06-12 20:16:13', '2021-06-12 20:31:02', NULL),
(12, 1, 'Generalités', 'web', 'Généralités sur Laravel et ses outils', '', '', NULL, '2021-06-12 20:29:44', '2021-06-12 21:30:01', NULL),
(13, 3, 'POO', 'web', 'Les baes de la poo Laravel', '', '', NULL, '2021-06-12 20:30:35', '2021-06-12 21:30:13', NULL),
(14, 1, 'INTRO Laravel', 'web', 'introduction de Framework Laravel', '', '', NULL, '2021-06-12 20:31:45', '2021-06-12 20:31:45', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_messages`
--

INSERT INTO `messenger_messages` (`id`, `topic_id`, `sender_id`, `content`, `sent_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Bonjour,\r\n\r\nVeuillez nous visiter dans local pour prendre votre attestation d\'inscription', '2021-06-12 13:19:11', '2021-06-12 13:19:11', '2021-06-12 13:19:11', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_topics`
--

CREATE TABLE `messenger_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `sender_read_at` timestamp NULL DEFAULT NULL,
  `receiver_read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `messenger_topics`
--

INSERT INTO `messenger_topics` (`id`, `subject`, `sender_id`, `receiver_id`, `sent_at`, `sender_read_at`, `receiver_read_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ATTESTATION', 1, 3, '2021-06-12 13:19:11', '2021-06-12 13:19:11', '2021-06-12 23:15:04', '2021-06-12 13:19:11', '2021-06-12 23:15:04', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_11_22_160552_create_topics_table', 1),
(4, '2016_11_22_160943_create_questions_table', 1),
(5, '2016_11_22_161439_create_questions_options_table', 1),
(6, '2016_11_23_140354_create_results_table', 1),
(7, '2016_11_28_161439_create_tests_table', 1),
(8, '2016_11_28_161440_create_test_answers_table', 1),
(9, '2018_09_17_224419_create_1537213459_permissions_table', 1),
(10, '2018_09_17_224421_create_1537213461_roles_table', 1),
(11, '2018_09_17_224423_create_1537213463_users_table', 1),
(12, '2018_09_17_224425_create_5ba0041671f8a_permission_role_table', 1),
(13, '2018_09_17_224427_create_5ba00418763fb_role_user_table', 1),
(14, '2018_09_17_224438_create_1537213478_teams_table', 1),
(15, '2018_09_17_224440_add_5ba0042872508_relationships_to_user_table', 1),
(16, '2018_09_17_224531_update_1537213531_users_table', 1),
(17, '2018_09_17_224532_add_5ba0045c77360_relationships_to_user_table', 1),
(18, '2018_09_17_224532_custom_1537213532_approve_existing_users', 1),
(19, '2018_09_17_224548_create_messenger_topics_table', 1),
(20, '2018_09_17_224549_create_messenger_messages_table', 1),
(21, '2018_09_18_181233_create_1537283553_internal_notifications_table', 1),
(22, '2018_09_18_181237_create_5ba115e259aa4_internal_notification_user_table', 1),
(23, '2018_09_18_181527_update_1537283727_users_table', 1),
(24, '2018_09_18_181528_add_5ba116901e4fc_relationships_to_user_table', 1),
(25, '2018_09_18_182732_create_1537284452_coursecategories_table', 1),
(26, '2018_09_18_182746_add_5ba11972646ff_relationships_to_user_table', 1),
(27, '2018_09_18_182913_create_1537284553_trailcategories_table', 1),
(28, '2018_09_18_183055_create_1537284654_coursetags_table', 1),
(29, '2018_09_18_183056_add_5ba11a308cd36_relationships_to_coursetag_table', 1),
(30, '2018_09_18_183156_add_5ba11a6c4489a_relationships_to_user_table', 1),
(31, '2018_09_18_183240_create_1537284759_trailtags_table', 1),
(32, '2018_09_18_183241_add_5ba11a99de6b5_relationships_to_trailtag_table', 1),
(33, '2018_09_18_183557_create_1537284956_lessons_table', 1),
(34, '2018_09_18_183558_add_5ba11b5f09116_relationships_to_lesson_table', 1),
(35, '2018_09_18_184747_create_1537285666_courses_table', 1),
(36, '2018_09_18_184748_add_5ba11e27e8291_relationships_to_course_table', 1),
(37, '2018_09_18_184751_create_5ba11e27d9c89_course_user_table', 1),
(38, '2018_09_18_184752_create_5ba11e27dd752_course_lesson_table', 1),
(39, '2018_09_18_184753_create_5ba11e27e15b9_course_coursecategory_table', 1),
(40, '2018_09_18_184754_create_5ba11e27e53df_course_coursetag_table', 1),
(41, '2018_09_18_184937_drop_5ba11e91afa1d5ba11e91acb9c_course_user_table', 1),
(42, '2018_09_18_184937_drop_5ba11e91b5f8a5ba11e91acb9c_course_lesson_table', 1),
(43, '2018_09_18_184937_drop_5ba11e91bb5a15ba11e91acb9c_course_coursecategory_table', 1),
(44, '2018_09_18_184937_drop_5ba11e91c0e025ba11e91acb9c_course_coursetag_table', 1),
(45, '2018_09_18_184938_drop_5ba11e92a2f69_courses_table', 1),
(46, '2018_09_18_185020_create_1537285819_courses_table', 1),
(47, '2018_09_18_185021_add_5ba11ec12d2f5_relationships_to_course_table', 1),
(48, '2018_09_18_185024_create_5ba11ec11d632_course_user_table', 1),
(49, '2018_09_18_185025_create_5ba11ec121ceb_course_lesson_table', 1),
(50, '2018_09_18_185026_create_5ba11ec1262be_course_coursecategory_table', 1),
(51, '2018_09_18_185027_create_5ba11ec12a3b6_course_coursetag_table', 1),
(52, '2018_09_18_185055_update_1537285855_courses_table', 1),
(53, '2018_09_18_185236_update_1537285956_lessons_table', 1),
(54, '2018_09_18_185832_create_1537286312_trails_table', 1),
(55, '2018_09_18_185836_create_5ba120abc91c3_course_trail_table', 1),
(56, '2018_09_18_185837_create_5ba120abcd052_trail_trailcategory_table', 1),
(57, '2018_09_18_185838_create_5ba120abd070a_trail_trailtag_table', 1),
(58, '2018_09_18_191009_create_1537287009_generals_table', 1),
(59, '2018_09_18_191458_create_1537287298_coursescertificates_table', 1),
(60, '2018_09_18_191947_create_1537287586_coursesdatas_table', 1),
(61, '2018_09_18_191948_add_5ba125a48114c_relationships_to_coursesdatum_table', 1),
(62, '2018_09_18_192053_create_1537287653_trailscertificates_table', 1),
(63, '2018_09_18_192217_create_1537287736_traildatas_table', 1),
(64, '2018_09_18_192218_add_5ba1263a80401_relationships_to_traildatum_table', 1),
(65, '2018_09_18_192235_add_5ba1264b02ad7_relationships_to_coursesdatum_table', 1),
(66, '2018_09_18_192505_create_1537287904_user_actions_table', 1),
(67, '2018_09_18_192506_add_5ba126e251231_relationships_to_useraction_table', 1),
(68, '2018_09_18_192526_create_1537287926_faq_categories_table', 1),
(69, '2018_09_18_192531_create_1537287930_faq_questions_table', 1),
(70, '2018_09_18_192532_add_5ba126fbe6425_relationships_to_faqquestion_table', 1),
(71, '2018_09_18_192545_create_1537287945_content_categories_table', 1),
(72, '2018_09_18_192548_create_1537287948_content_tags_table', 1),
(73, '2018_09_18_192551_create_1537287951_content_pages_table', 1),
(74, '2018_09_18_192555_create_5ba12711d3186_content_category_content_page_table', 1),
(75, '2018_09_18_192556_create_5ba12711d7b16_content_page_content_tag_table', 1),
(76, '2018_09_18_192714_add_5ba127623d4a9_relationships_to_user_table', 1),
(77, '2018_09_18_193217_add_5ba128919fb98_relationships_to_faqquestion_table', 1),
(78, '2018_09_18_193329_add_5ba128d9b9b76_relationships_to_coursesdatum_table', 1),
(79, '2018_09_18_193357_add_5ba128f589ea1_relationships_to_traildatum_table', 1),
(80, '2018_09_18_193634_add_5ba12992d816d_relationships_to_user_table', 1),
(81, '2018_09_18_203106_add_5ba13659d27f5_relationships_to_coursesdatum_table', 1),
(82, '2018_09_18_213809_create_1537295888_datatrails_table', 1),
(83, '2018_09_18_213810_add_5ba146134264a_relationships_to_datatrail_table', 1),
(84, '2018_09_18_213852_drop_5ba1463ca0216_traildatas_table', 1),
(85, '2018_09_18_213922_create_1537295961_datacourses_table', 1),
(86, '2018_09_18_213922_create_1537295962_datalessons_table', 1),
(87, '2018_09_18_213923_add_5ba1465b94b7d_relationships_to_datacourse_table', 1),
(88, '2018_09_18_213943_drop_5ba1466f062e6_coursesdatas_table', 1),
(89, '2018_09_18_224036_add_5ba154b492cf0_relationships_to_datalesson_table', 1),
(90, '2018_09_18_224036_add_5ba154b492cf9_relationships_to_datacourse_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'user_management_access', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(2, 'permission_access', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(3, 'permission_create', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(4, 'permission_edit', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(5, 'permission_view', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(6, 'permission_delete', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(7, 'role_access', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(8, 'role_create', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(9, 'role_edit', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(10, 'role_view', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(11, 'role_delete', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(12, 'user_access', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(13, 'user_create', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(14, 'user_edit', '2021-06-12 01:26:26', '2021-06-12 01:26:26'),
(15, 'user_view', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(16, 'user_delete', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(17, 'team_access', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(18, 'team_create', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(19, 'team_edit', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(20, 'team_view', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(21, 'team_delete', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(22, 'internal_notification_access', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(23, 'internal_notification_create', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(24, 'internal_notification_edit', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(25, 'internal_notification_view', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(26, 'internal_notification_delete', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(27, 'course_management_access', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(28, 'trail_management_access', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(29, 'setting_access', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(30, 'coursecategory_access', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(31, 'coursecategory_create', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(32, 'coursecategory_edit', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(33, 'coursecategory_view', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(34, 'coursecategory_delete', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(35, 'trailcategory_access', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(36, 'trailcategory_create', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(37, 'trailcategory_edit', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(38, 'trailcategory_view', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(39, 'trailcategory_delete', '2021-06-12 01:26:27', '2021-06-12 01:26:27'),
(40, 'coursetag_access', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(41, 'coursetag_create', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(42, 'coursetag_edit', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(43, 'coursetag_view', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(44, 'coursetag_delete', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(45, 'trailtag_access', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(46, 'trailtag_create', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(47, 'trailtag_edit', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(48, 'trailtag_view', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(49, 'trailtag_delete', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(50, 'lesson_access', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(51, 'lesson_create', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(52, 'lesson_edit', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(53, 'lesson_view', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(54, 'lesson_delete', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(60, 'course_access', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(61, 'course_create', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(62, 'course_edit', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(63, 'course_view', '2021-06-12 01:26:28', '2021-06-12 01:26:28'),
(64, 'course_delete', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(65, 'trail_access', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(66, 'trail_create', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(67, 'trail_edit', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(68, 'trail_view', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(69, 'trail_delete', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(70, 'general_access', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(71, 'general_create', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(72, 'general_edit', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(73, 'general_view', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(74, 'general_delete', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(75, 'coursescertificate_access', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(76, 'coursescertificate_create', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(77, 'coursescertificate_edit', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(78, 'coursescertificate_view', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(79, 'coursescertificate_delete', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(85, 'trailscertificate_access', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(86, 'trailscertificate_create', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(87, 'trailscertificate_edit', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(88, 'trailscertificate_view', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(89, 'trailscertificate_delete', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(95, 'user_action_access', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(96, 'user_action_create', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(97, 'user_action_edit', '2021-06-12 01:26:29', '2021-06-12 01:26:29'),
(98, 'user_action_view', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(99, 'user_action_delete', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(100, 'faq_management_access', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(101, 'faq_management_create', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(102, 'faq_management_edit', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(103, 'faq_management_view', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(104, 'faq_management_delete', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(105, 'faq_category_access', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(106, 'faq_category_create', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(107, 'faq_category_edit', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(108, 'faq_category_view', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(109, 'faq_category_delete', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(110, 'faq_question_access', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(111, 'faq_question_create', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(112, 'faq_question_edit', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(113, 'faq_question_view', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(114, 'faq_question_delete', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(115, 'content_management_access', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(116, 'content_management_create', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(117, 'content_management_edit', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(118, 'content_management_view', '2021-06-12 01:26:30', '2021-06-12 01:26:30'),
(119, 'content_management_delete', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(120, 'content_category_access', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(121, 'content_category_create', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(122, 'content_category_edit', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(123, 'content_category_view', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(124, 'content_category_delete', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(125, 'content_tag_access', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(126, 'content_tag_create', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(127, 'content_tag_edit', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(128, 'content_tag_view', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(129, 'content_tag_delete', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(130, 'content_page_access', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(131, 'content_page_create', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(132, 'content_page_edit', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(133, 'content_page_view', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(134, 'content_page_delete', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(135, 'datatrail_access', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(136, 'datatrail_create', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(137, 'datatrail_edit', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(138, 'datatrail_view', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(139, 'datatrail_delete', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(140, 'datacourse_access', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(141, 'datacourse_create', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(142, 'datacourse_edit', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(143, 'datacourse_view', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(144, 'datacourse_delete', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(145, 'datalesson_access', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(146, 'datalesson_create', '2021-06-12 01:26:31', '2021-06-12 01:26:31'),
(147, 'datalesson_edit', '2021-06-12 01:26:32', '2021-06-12 01:26:32'),
(148, 'datalesson_view', '2021-06-12 01:26:32', '2021-06-12 01:26:32'),
(149, 'datalesson_delete', '2021-06-12 01:26:32', '2021-06-12 01:26:32');

-- --------------------------------------------------------

--
-- Structure de la table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(22, 2),
(25, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(33, 2),
(35, 2),
(38, 2),
(39, 2),
(40, 2),
(43, 2),
(45, 2),
(48, 2),
(50, 2),
(53, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(60, 2),
(63, 2),
(65, 2),
(68, 2),
(75, 2),
(78, 2),
(85, 2),
(88, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(100, 2),
(103, 2),
(105, 2),
(108, 2),
(110, 2),
(113, 2),
(115, 2),
(118, 2),
(125, 2),
(128, 2),
(130, 2),
(133, 2),
(120, 2),
(123, 2),
(1, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(70, 2),
(73, 2),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3);

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED DEFAULT NULL,
  `question_text` text COLLATE utf8mb4_unicode_ci,
  `code_snippet` text COLLATE utf8mb4_unicode_ci,
  `answer_explanation` text COLLATE utf8mb4_unicode_ci,
  `more_info_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `questions_options`
--

CREATE TABLE `questions_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `correct` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Administrator (can create other users)', '2021-06-12 01:26:32', '2021-06-12 01:26:32'),
(2, 'Student', '2021-06-12 01:26:32', '2021-06-12 01:26:32'),
(3, 'Teacher', '2021-06-12 01:26:32', '2021-06-12 13:26:03');

-- --------------------------------------------------------

--
-- Structure de la table `role_user`
--

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`) VALUES
(1, 1),
(3, 2),
(2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `result` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `test_answers`
--

CREATE TABLE `test_answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `correct` tinyint(4) DEFAULT '0',
  `option_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `trailcategories`
--

CREATE TABLE `trailcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trailcategories`
--

INSERT INTO `trailcategories` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'non', 'eveniet', '2021-06-12 01:26:52', '2021-06-12 01:26:52', NULL),
(2, 'fuga', 'suscipit', '2021-06-12 01:26:52', '2021-06-12 01:26:52', NULL),
(3, 'inventore', 'facilis', '2021-06-12 01:26:52', '2021-06-12 01:26:52', NULL),
(4, 'sequi', 'dignissimos', '2021-06-12 01:26:52', '2021-06-12 01:26:52', NULL),
(5, 'non', 'explicabo', '2021-06-12 01:26:52', '2021-06-12 01:26:52', NULL),
(6, 'sit', 'quasi', '2021-06-12 01:26:52', '2021-06-12 01:26:52', NULL),
(7, 'perferendis', 'autem', '2021-06-12 01:26:52', '2021-06-12 01:26:52', NULL),
(8, 'fugiat', 'laboriosam', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL),
(9, 'non', 'esse', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL),
(10, 'et', 'ex', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `trails`
--

CREATE TABLE `trails` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `introduction` text COLLATE utf8mb4_unicode_ci,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `approved` tinyint(4) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trails`
--

INSERT INTO `trails` (`id`, `order`, `title`, `slug`, `description`, `introduction`, `featured_image`, `start_date`, `end_date`, `approved`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'Trail 01', 'trail01', 'Alice had begun to dream that she had but to get in at once.\' And in she went. Once more she found that her neck from being run over; and the Dormouse indignantly. However, he consented to go nearer.', 'Vel nemo sed sed fuga. Sapiente recusandae quod qui libero occaecati porro. Quisquam qui inventore rem et. Et minus rerum modi deleniti omnis.', NULL, '2021-03-17', '2021-07-23', 1, '2021-06-12 01:26:48', '2021-06-12 01:26:48', NULL),
(2, '2', 'Trail 02', 'trail02', 'Pigeon in a very short time the Queen in front of the players to be told so. \'It\'s really dreadful,\' she muttered to herself, and fanned herself with one eye; \'I seem to have finished,\' said the.', 'Veritatis optio unde ab. Et laboriosam placeat ex eum voluptatem quaerat vero. Et nulla pariatur optio possimus et aspernatur sunt.', NULL, '2021-03-31', '2021-07-13', 1, '2021-06-12 01:26:48', '2021-06-12 01:26:48', NULL),
(3, '3', 'Trail 03', 'trail03', 'Dormouse began in a very little way forwards each time and a scroll of parchment in the night? Let me see: I\'ll give them a railway station.) However, she did it at last, with a smile. There was a.', 'Nisi vero omnis in vero. Iusto dolores mollitia dolorem eius. Modi perferendis optio harum vero doloribus temporibus. Hic dolore illum magnam voluptas odio natus quis dolorem.', NULL, '2021-04-17', '2021-07-04', 1, '2021-06-12 01:26:48', '2021-06-12 01:26:48', NULL),
(4, '4', 'Trail 04', 'trail04', 'Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon in a day or two: wouldn\'t it be murder to leave it behind?\' She said the Duck. \'Found IT,\' the Mouse heard this, it turned round and look up and.', 'Doloribus soluta id architecto quis ex laudantium. Doloremque dolor totam vero reprehenderit eum. Ut et reiciendis aperiam eius quia magni explicabo.', NULL, '2021-05-05', '2021-06-28', 1, '2021-06-12 01:26:49', '2021-06-12 01:26:49', NULL),
(5, '5', 'Trail 05', 'trail05', 'How the Owl had the dish as its share of the wood--(she considered him to you, Though they were all shaped like the three gardeners, oblong and flat, with their fur clinging close to her full size.', 'Quo dolorem et occaecati officiis sed cum. Laborum amet iste voluptatem omnis. Possimus dolores magnam quos omnis quia mollitia.', NULL, '2021-05-20', '2021-08-09', 1, '2021-06-12 01:26:49', '2021-06-12 01:26:49', NULL),
(6, '6', 'Trail 06', 'trail06', 'That\'s all.\' \'Thank you,\' said the Hatter. \'You MUST remember,\' remarked the King, going up to her ear, and whispered \'She\'s under sentence of execution. Then the Queen to-day?\' \'I should like to.', 'Et qui dolores tempore. Est quidem ut sed quos nostrum. Unde incidunt voluptatum et esse aut sunt. Incidunt voluptatum mollitia deleniti sunt sed.', NULL, '2021-03-31', '2021-06-26', 1, '2021-06-12 01:26:49', '2021-06-12 01:26:49', NULL),
(7, '7', 'Trail 07', 'trail07', 'Alice hastily, afraid that she ought to be executed for having cheated herself in Wonderland, though she looked up, but it was all ridges and furrows; the balls were live hedgehogs, the mallets live.', 'Reiciendis eos animi officia quo. In molestias voluptas expedita consequatur sequi ut ut. Enim dolor sed mollitia dicta.', NULL, '2021-06-02', '2021-08-29', 1, '2021-06-12 01:26:49', '2021-06-12 01:26:49', NULL),
(8, '8', 'Trail 08', 'trail08', 'Dodo, \'the best way you go,\' said the Cat, as soon as she could. \'The game\'s going on within--a constant howling and sneezing, and every now and then she noticed that the poor animal\'s feelings. \'I.', 'Accusamus debitis aliquam quae minima consequatur maiores. Rerum quam nobis iusto nam ducimus deserunt. Libero et dolores officia officiis.', NULL, '2021-04-18', '2021-07-10', 1, '2021-06-12 01:26:49', '2021-06-12 01:26:49', NULL),
(9, '9', 'Trail 09', 'trail09', 'Said he thanked the whiting kindly, but he could go. Alice took up the fan and two or three times over to the voice of the trees had a door leading right into a tidy little room with a teacup in one.', 'Rerum beatae quia est labore cumque quis maiores. Ea nostrum rerum aut accusantium hic voluptas. Velit nam quia hic. Velit dicta error aut saepe.', NULL, '2021-05-12', '2021-08-27', 1, '2021-06-12 01:26:49', '2021-06-12 01:26:49', NULL),
(10, '10', 'Trail 10', 'trail10', 'It\'s HIM.\' \'I don\'t quite understand you,\' she said, \'than waste it in time,\' said the Footman. \'That\'s the most important piece of rudeness was more than three.\' \'Your hair wants cutting,\' said the.', 'Consectetur eos pariatur ea non modi fugit. Nemo minus labore amet non repudiandae veritatis dolore eligendi.', NULL, '2021-05-30', '2021-07-27', 1, '2021-06-12 01:26:49', '2021-06-12 01:26:49', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `trailscertificates`
--

CREATE TABLE `trailscertificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trailscertificates`
--

INSERT INTO `trailscertificates` (`id`, `order`, `title`, `slug`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'qui', 'dolorem', 'https://lorempixel.com/300/300/?16385', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL),
(2, 2, 'sit', 'nam', 'https://lorempixel.com/300/300/?47123', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL),
(3, 3, 'quae', 'amet', 'https://lorempixel.com/300/300/?90519', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL),
(4, 4, 'facilis', 'eius', 'https://lorempixel.com/300/300/?58092', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL),
(5, 5, 'iure', 'dolor', 'https://lorempixel.com/300/300/?43223', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL),
(6, 6, 'ut', 'quis', 'https://lorempixel.com/300/300/?79009', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL),
(7, 7, 'voluptatem', 'quo', 'https://lorempixel.com/300/300/?43769', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL),
(8, 8, 'ratione', 'ipsa', 'https://lorempixel.com/300/300/?69188', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL),
(9, 9, 'voluptate', 'ut', 'https://lorempixel.com/300/300/?94003', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL),
(10, 10, 'ex', 'blanditiis', 'https://lorempixel.com/300/300/?39724', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `trailtags`
--

CREATE TABLE `trailtags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `created_by_team_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trailtags`
--

INSERT INTO `trailtags` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`, `created_by_id`, `created_by_team_id`) VALUES
(1, 'itaque', 'ut', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL, NULL, NULL),
(2, 'qui', 'veniam', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL, NULL, NULL),
(3, 'repellat', 'sunt', '2021-06-12 01:26:53', '2021-06-12 01:26:53', NULL, NULL, NULL),
(4, 'nostrum', 'voluptates', '2021-06-12 01:26:54', '2021-06-12 01:26:54', NULL, NULL, NULL),
(5, 'doloribus', 'ipsa', '2021-06-12 01:26:54', '2021-06-12 01:26:54', NULL, NULL, NULL),
(6, 'voluptatem', 'delectus', '2021-06-12 01:26:54', '2021-06-12 01:26:54', NULL, NULL, NULL),
(7, 'ratione', 'animi', '2021-06-12 01:26:54', '2021-06-12 01:26:54', NULL, NULL, NULL),
(8, 'placeat', 'nam', '2021-06-12 01:26:54', '2021-06-12 01:26:54', NULL, NULL, NULL),
(9, 'perferendis', 'ut', '2021-06-12 01:26:54', '2021-06-12 01:26:54', NULL, NULL, NULL),
(10, 'aperiam', 'ducimus', '2021-06-12 01:26:54', '2021-06-12 01:26:54', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `trail_trailcategory`
--

CREATE TABLE `trail_trailcategory` (
  `trail_id` int(10) UNSIGNED DEFAULT NULL,
  `trailcategory_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trail_trailcategory`
--

INSERT INTO `trail_trailcategory` (`trail_id`, `trailcategory_id`) VALUES
(1, 4),
(4, 9),
(7, 4),
(3, 3),
(4, 6),
(1, 1),
(1, 5),
(6, 3),
(7, 3),
(9, 3),
(6, 6),
(9, 6),
(5, 2),
(6, 2),
(2, 6),
(2, 9),
(2, 5),
(8, 2),
(4, 2),
(7, 9);

-- --------------------------------------------------------

--
-- Structure de la table `trail_trailtag`
--

CREATE TABLE `trail_trailtag` (
  `trail_id` int(10) UNSIGNED DEFAULT NULL,
  `trailtag_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `trail_trailtag`
--

INSERT INTO `trail_trailtag` (`trail_id`, `trailtag_id`) VALUES
(7, 5),
(6, 1),
(9, 4),
(4, 2),
(5, 8),
(2, 6),
(1, 6),
(3, 5),
(3, 5),
(1, 7),
(1, 4),
(6, 7),
(5, 8),
(1, 9),
(6, 7),
(9, 2),
(1, 9),
(5, 2),
(4, 6),
(4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL,
  `approved` tinyint(4) DEFAULT '0',
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `team_id`, `approved`, `lastname`, `website`, `avatar`) VALUES
(1, 'Chakfi', 'Chakfi@admin.com', '$2y$10$Bk4RNxBEN3fI1YdVD3N1lOcTaJri6c8QZyLcIV86R5z6GD10OXCEu', 'VZDfMaG4pt9qfuJKCONNw2uCQbgRZJ7BDVDNh7MNxqa0iUGL5QnxROLEYEq4', '2021-06-12 01:26:32', '2021-06-12 23:26:35', NULL, 1, '', '', '1623540395-sTREAAMO (2).jpg'),
(2, 'Teacher', 'Teacher@instructor.com', '$2y$10$wtVeMS/o0UUsW1OqEtF16.bfySgezIXZLMhKhAdls1A1KWVRc9X3i', NULL, '2021-06-12 01:26:32', '2021-06-12 20:12:10', NULL, 1, '', '', NULL),
(3, 'Student', 'student@student.com', '$2y$10$Nx0G3l1ziTS5OLwwXhQwre7cUuJwai0CWmF3W9uaq/LN8oJhG/HXu', 'qSmQekObhY7mIHdfvEMyQVpegJTKqMh0mTGlncRLiSsYSMJbRjNxMPhJjL22', '2021-06-12 01:26:32', '2021-06-12 23:11:51', NULL, 1, '', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `user_actions`
--

CREATE TABLE `user_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user_actions`
--

INSERT INTO `user_actions` (`id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'updated', 'users', 1, '2021-06-12 01:48:48', '2021-06-12 01:48:48', 1),
(2, 'created', 'generals', 1, '2021-06-12 13:16:13', '2021-06-12 13:16:13', 1),
(3, 'updated', 'generals', 1, '2021-06-12 13:16:50', '2021-06-12 13:16:50', 1),
(4, 'created', 'internal_notifications', 1, '2021-06-12 13:21:22', '2021-06-12 13:21:22', 1),
(5, 'deleted', 'teams', 1, '2021-06-12 13:22:39', '2021-06-12 13:22:39', 1),
(6, 'deleted', 'teams', 2, '2021-06-12 13:22:39', '2021-06-12 13:22:39', 1),
(7, 'deleted', 'teams', 3, '2021-06-12 13:22:40', '2021-06-12 13:22:40', 1),
(8, 'deleted', 'teams', 4, '2021-06-12 13:22:40', '2021-06-12 13:22:40', 1),
(9, 'deleted', 'teams', 5, '2021-06-12 13:22:40', '2021-06-12 13:22:40', 1),
(10, 'deleted', 'teams', 6, '2021-06-12 13:22:40', '2021-06-12 13:22:40', 1),
(11, 'deleted', 'teams', 7, '2021-06-12 13:22:40', '2021-06-12 13:22:40', 1),
(12, 'deleted', 'teams', 8, '2021-06-12 13:22:41', '2021-06-12 13:22:41', 1),
(13, 'deleted', 'teams', 9, '2021-06-12 13:22:41', '2021-06-12 13:22:41', 1),
(14, 'deleted', 'teams', 10, '2021-06-12 13:22:41', '2021-06-12 13:22:41', 1),
(15, 'updated', 'users', 2, '2021-06-12 13:23:13', '2021-06-12 13:23:13', 1),
(16, 'updated', 'roles', 2, '2021-06-12 13:25:49', '2021-06-12 13:25:49', 1),
(17, 'updated', 'roles', 3, '2021-06-12 13:26:03', '2021-06-12 13:26:03', 1),
(18, 'updated', 'users', 1, '2021-06-12 13:26:33', '2021-06-12 13:26:33', 1),
(19, 'updated', 'users', 1, '2021-06-12 13:26:44', '2021-06-12 13:26:44', 1),
(20, 'created', 'datacourses', 1, '2021-06-12 13:28:13', '2021-06-12 13:28:13', 1),
(21, 'updated', 'datacourses', 1, '2021-06-12 13:28:21', '2021-06-12 13:28:21', 1),
(22, 'created', 'datalessons', 1, '2021-06-12 13:28:21', '2021-06-12 13:28:21', 1),
(23, 'created', 'datalessons', 2, '2021-06-12 13:28:22', '2021-06-12 13:28:22', 1),
(24, 'created', 'datalessons', 3, '2021-06-12 13:28:22', '2021-06-12 13:28:22', 1),
(25, 'created', 'datalessons', 4, '2021-06-12 13:28:22', '2021-06-12 13:28:22', 1),
(26, 'updated', 'datacourses', 1, '2021-06-12 13:28:25', '2021-06-12 13:28:25', 1),
(27, 'updated', 'datalessons', 1, '2021-06-12 13:28:25', '2021-06-12 13:28:25', 1),
(28, 'updated', 'datalessons', 2, '2021-06-12 13:28:26', '2021-06-12 13:28:26', 1),
(29, 'updated', 'datalessons', 3, '2021-06-12 13:28:26', '2021-06-12 13:28:26', 1),
(30, 'updated', 'datalessons', 4, '2021-06-12 13:28:26', '2021-06-12 13:28:26', 1),
(31, 'updated', 'datacourses', 1, '2021-06-12 13:28:28', '2021-06-12 13:28:28', 1),
(32, 'updated', 'datalessons', 1, '2021-06-12 13:28:28', '2021-06-12 13:28:28', 1),
(33, 'updated', 'datalessons', 2, '2021-06-12 13:28:28', '2021-06-12 13:28:28', 1),
(34, 'updated', 'datalessons', 3, '2021-06-12 13:28:28', '2021-06-12 13:28:28', 1),
(35, 'updated', 'datalessons', 4, '2021-06-12 13:28:28', '2021-06-12 13:28:28', 1),
(36, 'created', 'datatrails', 1, '2021-06-12 13:29:08', '2021-06-12 13:29:08', 1),
(37, 'updated', 'datatrails', 1, '2021-06-12 13:29:10', '2021-06-12 13:29:10', 1),
(38, 'created', 'datacourses', 2, '2021-06-12 13:29:10', '2021-06-12 13:29:10', 1),
(39, 'created', 'datacourses', 3, '2021-06-12 13:29:11', '2021-06-12 13:29:11', 1),
(40, 'created', 'datacourses', 4, '2021-06-12 13:29:11', '2021-06-12 13:29:11', 1),
(41, 'updated', 'datacourses', 1, '2021-06-12 13:29:13', '2021-06-12 13:29:13', 1),
(42, 'updated', 'datalessons', 1, '2021-06-12 13:29:13', '2021-06-12 13:29:13', 1),
(43, 'updated', 'datalessons', 2, '2021-06-12 13:29:13', '2021-06-12 13:29:13', 1),
(44, 'updated', 'datalessons', 3, '2021-06-12 13:29:13', '2021-06-12 13:29:13', 1),
(45, 'updated', 'datalessons', 4, '2021-06-12 13:29:13', '2021-06-12 13:29:13', 1),
(46, 'updated', 'datacourses', 1, '2021-06-12 13:29:37', '2021-06-12 13:29:37', 1),
(47, 'updated', 'datalessons', 1, '2021-06-12 13:29:37', '2021-06-12 13:29:37', 1),
(48, 'updated', 'datalessons', 2, '2021-06-12 13:29:37', '2021-06-12 13:29:37', 1),
(49, 'updated', 'datalessons', 3, '2021-06-12 13:29:37', '2021-06-12 13:29:37', 1),
(50, 'updated', 'datalessons', 4, '2021-06-12 13:29:37', '2021-06-12 13:29:37', 1),
(51, 'updated', 'datacourses', 1, '2021-06-12 13:29:39', '2021-06-12 13:29:39', 1),
(52, 'updated', 'datalessons', 1, '2021-06-12 13:29:39', '2021-06-12 13:29:39', 1),
(53, 'updated', 'datalessons', 2, '2021-06-12 13:29:39', '2021-06-12 13:29:39', 1),
(54, 'updated', 'datalessons', 3, '2021-06-12 13:29:40', '2021-06-12 13:29:40', 1),
(55, 'updated', 'datalessons', 4, '2021-06-12 13:29:40', '2021-06-12 13:29:40', 1),
(56, 'updated', 'datacourses', 1, '2021-06-12 13:29:42', '2021-06-12 13:29:42', 1),
(57, 'updated', 'datalessons', 1, '2021-06-12 13:29:42', '2021-06-12 13:29:42', 1),
(58, 'updated', 'datalessons', 2, '2021-06-12 13:29:42', '2021-06-12 13:29:42', 1),
(59, 'updated', 'datalessons', 3, '2021-06-12 13:29:42', '2021-06-12 13:29:42', 1),
(60, 'updated', 'datalessons', 4, '2021-06-12 13:29:42', '2021-06-12 13:29:42', 1),
(61, 'updated', 'datacourses', 1, '2021-06-12 13:29:43', '2021-06-12 13:29:43', 1),
(62, 'updated', 'datalessons', 1, '2021-06-12 13:29:43', '2021-06-12 13:29:43', 1),
(63, 'updated', 'datalessons', 2, '2021-06-12 13:29:43', '2021-06-12 13:29:43', 1),
(64, 'updated', 'datalessons', 3, '2021-06-12 13:29:44', '2021-06-12 13:29:44', 1),
(65, 'updated', 'datalessons', 4, '2021-06-12 13:29:44', '2021-06-12 13:29:44', 1),
(66, 'updated', 'datalessons', 4, '2021-06-12 13:29:47', '2021-06-12 13:29:47', 1),
(67, 'updated', 'datacourses', 1, '2021-06-12 13:29:47', '2021-06-12 13:29:47', 1),
(68, 'updated', 'datalessons', 1, '2021-06-12 13:29:47', '2021-06-12 13:29:47', 1),
(69, 'updated', 'datalessons', 2, '2021-06-12 13:29:47', '2021-06-12 13:29:47', 1),
(70, 'updated', 'datalessons', 3, '2021-06-12 13:29:48', '2021-06-12 13:29:48', 1),
(71, 'updated', 'datalessons', 4, '2021-06-12 13:29:48', '2021-06-12 13:29:48', 1),
(72, 'updated', 'datacourses', 1, '2021-06-12 13:29:51', '2021-06-12 13:29:51', 1),
(73, 'updated', 'datalessons', 1, '2021-06-12 13:29:51', '2021-06-12 13:29:51', 1),
(74, 'updated', 'datalessons', 2, '2021-06-12 13:29:51', '2021-06-12 13:29:51', 1),
(75, 'updated', 'datalessons', 3, '2021-06-12 13:29:51', '2021-06-12 13:29:51', 1),
(76, 'updated', 'datalessons', 4, '2021-06-12 13:29:51', '2021-06-12 13:29:51', 1),
(77, 'updated', 'datacourses', 1, '2021-06-12 13:30:03', '2021-06-12 13:30:03', 1),
(78, 'updated', 'datalessons', 1, '2021-06-12 13:30:04', '2021-06-12 13:30:04', 1),
(79, 'updated', 'datalessons', 2, '2021-06-12 13:30:04', '2021-06-12 13:30:04', 1),
(80, 'updated', 'datalessons', 3, '2021-06-12 13:30:04', '2021-06-12 13:30:04', 1),
(81, 'updated', 'datalessons', 4, '2021-06-12 13:30:04', '2021-06-12 13:30:04', 1),
(82, 'updated', 'datalessons', 1, '2021-06-12 13:30:06', '2021-06-12 13:30:06', 1),
(83, 'updated', 'datacourses', 1, '2021-06-12 13:30:06', '2021-06-12 13:30:06', 1),
(84, 'updated', 'datalessons', 1, '2021-06-12 13:30:06', '2021-06-12 13:30:06', 1),
(85, 'updated', 'datalessons', 2, '2021-06-12 13:30:06', '2021-06-12 13:30:06', 1),
(86, 'updated', 'datalessons', 3, '2021-06-12 13:30:06', '2021-06-12 13:30:06', 1),
(87, 'updated', 'datalessons', 4, '2021-06-12 13:30:07', '2021-06-12 13:30:07', 1),
(88, 'updated', 'datacourses', 1, '2021-06-12 13:30:16', '2021-06-12 13:30:16', 1),
(89, 'updated', 'datalessons', 1, '2021-06-12 13:30:16', '2021-06-12 13:30:16', 1),
(90, 'updated', 'datalessons', 2, '2021-06-12 13:30:16', '2021-06-12 13:30:16', 1),
(91, 'updated', 'datalessons', 3, '2021-06-12 13:30:16', '2021-06-12 13:30:16', 1),
(92, 'updated', 'datalessons', 4, '2021-06-12 13:30:16', '2021-06-12 13:30:16', 1),
(93, 'updated', 'datacourses', 1, '2021-06-12 13:30:19', '2021-06-12 13:30:19', 1),
(94, 'updated', 'datalessons', 1, '2021-06-12 13:30:19', '2021-06-12 13:30:19', 1),
(95, 'updated', 'datalessons', 2, '2021-06-12 13:30:19', '2021-06-12 13:30:19', 1),
(96, 'updated', 'datalessons', 3, '2021-06-12 13:30:19', '2021-06-12 13:30:19', 1),
(97, 'updated', 'datalessons', 4, '2021-06-12 13:30:19', '2021-06-12 13:30:19', 1),
(98, 'updated', 'datalessons', 2, '2021-06-12 13:30:20', '2021-06-12 13:30:20', 1),
(99, 'updated', 'datacourses', 1, '2021-06-12 13:30:21', '2021-06-12 13:30:21', 1),
(100, 'updated', 'datalessons', 1, '2021-06-12 13:30:21', '2021-06-12 13:30:21', 1),
(101, 'updated', 'datalessons', 2, '2021-06-12 13:30:21', '2021-06-12 13:30:21', 1),
(102, 'updated', 'datalessons', 3, '2021-06-12 13:30:21', '2021-06-12 13:30:21', 1),
(103, 'updated', 'datalessons', 4, '2021-06-12 13:30:21', '2021-06-12 13:30:21', 1),
(104, 'updated', 'datacourses', 1, '2021-06-12 13:30:23', '2021-06-12 13:30:23', 1),
(105, 'updated', 'datalessons', 1, '2021-06-12 13:30:23', '2021-06-12 13:30:23', 1),
(106, 'updated', 'datalessons', 2, '2021-06-12 13:30:23', '2021-06-12 13:30:23', 1),
(107, 'updated', 'datalessons', 3, '2021-06-12 13:30:23', '2021-06-12 13:30:23', 1),
(108, 'updated', 'datalessons', 4, '2021-06-12 13:30:23', '2021-06-12 13:30:23', 1),
(109, 'updated', 'datalessons', 3, '2021-06-12 13:30:25', '2021-06-12 13:30:25', 1),
(110, 'updated', 'datacourses', 1, '2021-06-12 13:30:26', '2021-06-12 13:30:26', 1),
(111, 'updated', 'datalessons', 1, '2021-06-12 13:30:26', '2021-06-12 13:30:26', 1),
(112, 'updated', 'datalessons', 2, '2021-06-12 13:30:26', '2021-06-12 13:30:26', 1),
(113, 'updated', 'datalessons', 3, '2021-06-12 13:30:26', '2021-06-12 13:30:26', 1),
(114, 'updated', 'datalessons', 4, '2021-06-12 13:30:26', '2021-06-12 13:30:26', 1),
(115, 'created', 'datatrails', 2, '2021-06-12 13:32:30', '2021-06-12 13:32:30', 1),
(116, 'updated', 'datatrails', 2, '2021-06-12 13:32:37', '2021-06-12 13:32:37', 1),
(117, 'created', 'datacourses', 5, '2021-06-12 13:32:37', '2021-06-12 13:32:37', 1),
(118, 'updated', 'datacourses', 1, '2021-06-12 13:32:41', '2021-06-12 13:32:41', 1),
(119, 'updated', 'datalessons', 1, '2021-06-12 13:32:41', '2021-06-12 13:32:41', 1),
(120, 'updated', 'datalessons', 2, '2021-06-12 13:32:41', '2021-06-12 13:32:41', 1),
(121, 'updated', 'datalessons', 3, '2021-06-12 13:32:41', '2021-06-12 13:32:41', 1),
(122, 'updated', 'datalessons', 4, '2021-06-12 13:32:41', '2021-06-12 13:32:41', 1),
(123, 'updated', 'datacourses', 5, '2021-06-12 13:32:52', '2021-06-12 13:32:52', 1),
(124, 'created', 'datalessons', 5, '2021-06-12 13:32:52', '2021-06-12 13:32:52', 1),
(125, 'created', 'datalessons', 6, '2021-06-12 13:32:52', '2021-06-12 13:32:52', 1),
(126, 'created', 'datalessons', 7, '2021-06-12 13:32:52', '2021-06-12 13:32:52', 1),
(127, 'updated', 'datatrails', 2, '2021-06-12 13:33:26', '2021-06-12 13:33:26', 1),
(128, 'updated', 'datacourses', 1, '2021-06-12 13:33:31', '2021-06-12 13:33:31', 1),
(129, 'updated', 'datalessons', 1, '2021-06-12 13:33:31', '2021-06-12 13:33:31', 1),
(130, 'updated', 'datalessons', 2, '2021-06-12 13:33:31', '2021-06-12 13:33:31', 1),
(131, 'updated', 'datalessons', 3, '2021-06-12 13:33:31', '2021-06-12 13:33:31', 1),
(132, 'updated', 'datalessons', 4, '2021-06-12 13:33:31', '2021-06-12 13:33:31', 1),
(133, 'updated', 'datacourses', 1, '2021-06-12 13:33:48', '2021-06-12 13:33:48', 1),
(134, 'updated', 'datalessons', 1, '2021-06-12 13:33:49', '2021-06-12 13:33:49', 1),
(135, 'updated', 'datalessons', 2, '2021-06-12 13:33:49', '2021-06-12 13:33:49', 1),
(136, 'updated', 'datalessons', 3, '2021-06-12 13:33:49', '2021-06-12 13:33:49', 1),
(137, 'updated', 'datalessons', 4, '2021-06-12 13:33:49', '2021-06-12 13:33:49', 1),
(138, 'updated', 'datalessons', 1, '2021-06-12 13:33:52', '2021-06-12 13:33:52', 1),
(139, 'updated', 'datacourses', 1, '2021-06-12 13:33:53', '2021-06-12 13:33:53', 1),
(140, 'updated', 'datalessons', 1, '2021-06-12 13:33:53', '2021-06-12 13:33:53', 1),
(141, 'updated', 'datalessons', 2, '2021-06-12 13:33:53', '2021-06-12 13:33:53', 1),
(142, 'updated', 'datalessons', 3, '2021-06-12 13:33:53', '2021-06-12 13:33:53', 1),
(143, 'updated', 'datalessons', 4, '2021-06-12 13:33:53', '2021-06-12 13:33:53', 1),
(144, 'updated', 'datacourses', 1, '2021-06-12 13:33:54', '2021-06-12 13:33:54', 1),
(145, 'updated', 'datalessons', 1, '2021-06-12 13:33:54', '2021-06-12 13:33:54', 1),
(146, 'updated', 'datalessons', 2, '2021-06-12 13:33:54', '2021-06-12 13:33:54', 1),
(147, 'updated', 'datalessons', 3, '2021-06-12 13:33:54', '2021-06-12 13:33:54', 1),
(148, 'updated', 'datalessons', 4, '2021-06-12 13:33:54', '2021-06-12 13:33:54', 1),
(149, 'updated', 'datalessons', 2, '2021-06-12 13:33:56', '2021-06-12 13:33:56', 1),
(150, 'updated', 'datacourses', 1, '2021-06-12 13:33:57', '2021-06-12 13:33:57', 1),
(151, 'updated', 'datalessons', 1, '2021-06-12 13:33:57', '2021-06-12 13:33:57', 1),
(152, 'updated', 'datalessons', 2, '2021-06-12 13:33:57', '2021-06-12 13:33:57', 1),
(153, 'updated', 'datalessons', 3, '2021-06-12 13:33:57', '2021-06-12 13:33:57', 1),
(154, 'updated', 'datalessons', 4, '2021-06-12 13:33:57', '2021-06-12 13:33:57', 1),
(155, 'updated', 'datacourses', 1, '2021-06-12 13:33:59', '2021-06-12 13:33:59', 1),
(156, 'updated', 'datalessons', 1, '2021-06-12 13:33:59', '2021-06-12 13:33:59', 1),
(157, 'updated', 'datalessons', 2, '2021-06-12 13:33:59', '2021-06-12 13:33:59', 1),
(158, 'updated', 'datalessons', 3, '2021-06-12 13:33:59', '2021-06-12 13:33:59', 1),
(159, 'updated', 'datalessons', 4, '2021-06-12 13:33:59', '2021-06-12 13:33:59', 1),
(160, 'updated', 'datalessons', 3, '2021-06-12 13:34:01', '2021-06-12 13:34:01', 1),
(161, 'updated', 'datacourses', 1, '2021-06-12 13:34:01', '2021-06-12 13:34:01', 1),
(162, 'updated', 'datalessons', 1, '2021-06-12 13:34:01', '2021-06-12 13:34:01', 1),
(163, 'updated', 'datalessons', 2, '2021-06-12 13:34:01', '2021-06-12 13:34:01', 1),
(164, 'updated', 'datalessons', 3, '2021-06-12 13:34:01', '2021-06-12 13:34:01', 1),
(165, 'updated', 'datalessons', 4, '2021-06-12 13:34:01', '2021-06-12 13:34:01', 1),
(166, 'updated', 'datacourses', 1, '2021-06-12 13:34:03', '2021-06-12 13:34:03', 1),
(167, 'updated', 'datalessons', 1, '2021-06-12 13:34:03', '2021-06-12 13:34:03', 1),
(168, 'updated', 'datalessons', 2, '2021-06-12 13:34:03', '2021-06-12 13:34:03', 1),
(169, 'updated', 'datalessons', 3, '2021-06-12 13:34:03', '2021-06-12 13:34:03', 1),
(170, 'updated', 'datalessons', 4, '2021-06-12 13:34:03', '2021-06-12 13:34:03', 1),
(171, 'updated', 'datalessons', 4, '2021-06-12 13:34:05', '2021-06-12 13:34:05', 1),
(172, 'updated', 'datacourses', 1, '2021-06-12 13:34:05', '2021-06-12 13:34:05', 1),
(173, 'updated', 'datalessons', 1, '2021-06-12 13:34:05', '2021-06-12 13:34:05', 1),
(174, 'updated', 'datalessons', 2, '2021-06-12 13:34:05', '2021-06-12 13:34:05', 1),
(175, 'updated', 'datalessons', 3, '2021-06-12 13:34:06', '2021-06-12 13:34:06', 1),
(176, 'updated', 'datalessons', 4, '2021-06-12 13:34:06', '2021-06-12 13:34:06', 1),
(177, 'updated', 'datacourses', 1, '2021-06-12 13:34:30', '2021-06-12 13:34:30', 1),
(178, 'updated', 'datalessons', 1, '2021-06-12 13:34:30', '2021-06-12 13:34:30', 1),
(179, 'updated', 'datalessons', 2, '2021-06-12 13:34:30', '2021-06-12 13:34:30', 1),
(180, 'updated', 'datalessons', 3, '2021-06-12 13:34:30', '2021-06-12 13:34:30', 1),
(181, 'updated', 'datalessons', 4, '2021-06-12 13:34:30', '2021-06-12 13:34:30', 1),
(182, 'updated', 'datacourses', 5, '2021-06-12 13:34:37', '2021-06-12 13:34:37', 1),
(183, 'updated', 'datalessons', 5, '2021-06-12 13:34:37', '2021-06-12 13:34:37', 1),
(184, 'updated', 'datalessons', 6, '2021-06-12 13:34:37', '2021-06-12 13:34:37', 1),
(185, 'updated', 'datalessons', 7, '2021-06-12 13:34:37', '2021-06-12 13:34:37', 1),
(186, 'updated', 'datalessons', 5, '2021-06-12 13:34:40', '2021-06-12 13:34:40', 1),
(187, 'updated', 'datacourses', 5, '2021-06-12 13:34:40', '2021-06-12 13:34:40', 1),
(188, 'updated', 'datalessons', 5, '2021-06-12 13:34:40', '2021-06-12 13:34:40', 1),
(189, 'updated', 'datalessons', 6, '2021-06-12 13:34:40', '2021-06-12 13:34:40', 1),
(190, 'updated', 'datalessons', 7, '2021-06-12 13:34:40', '2021-06-12 13:34:40', 1),
(191, 'updated', 'datacourses', 5, '2021-06-12 13:34:42', '2021-06-12 13:34:42', 1),
(192, 'updated', 'datalessons', 5, '2021-06-12 13:34:42', '2021-06-12 13:34:42', 1),
(193, 'updated', 'datalessons', 6, '2021-06-12 13:34:42', '2021-06-12 13:34:42', 1),
(194, 'updated', 'datalessons', 7, '2021-06-12 13:34:42', '2021-06-12 13:34:42', 1),
(195, 'updated', 'datalessons', 6, '2021-06-12 13:34:44', '2021-06-12 13:34:44', 1),
(196, 'updated', 'datacourses', 5, '2021-06-12 13:34:45', '2021-06-12 13:34:45', 1),
(197, 'updated', 'datalessons', 5, '2021-06-12 13:34:45', '2021-06-12 13:34:45', 1),
(198, 'updated', 'datalessons', 6, '2021-06-12 13:34:45', '2021-06-12 13:34:45', 1),
(199, 'updated', 'datalessons', 7, '2021-06-12 13:34:45', '2021-06-12 13:34:45', 1),
(200, 'updated', 'datacourses', 5, '2021-06-12 13:34:47', '2021-06-12 13:34:47', 1),
(201, 'updated', 'datalessons', 5, '2021-06-12 13:34:47', '2021-06-12 13:34:47', 1),
(202, 'updated', 'datalessons', 6, '2021-06-12 13:34:48', '2021-06-12 13:34:48', 1),
(203, 'updated', 'datalessons', 7, '2021-06-12 13:34:48', '2021-06-12 13:34:48', 1),
(204, 'updated', 'datalessons', 7, '2021-06-12 13:34:50', '2021-06-12 13:34:50', 1),
(205, 'updated', 'datacourses', 5, '2021-06-12 13:34:50', '2021-06-12 13:34:50', 1),
(206, 'updated', 'datalessons', 5, '2021-06-12 13:34:50', '2021-06-12 13:34:50', 1),
(207, 'updated', 'datalessons', 6, '2021-06-12 13:34:51', '2021-06-12 13:34:51', 1),
(208, 'updated', 'datalessons', 7, '2021-06-12 13:34:51', '2021-06-12 13:34:51', 1),
(209, 'updated', 'users', 1, '2021-06-12 13:46:48', '2021-06-12 13:46:48', 1),
(210, 'updated', 'datacourses', 1, '2021-06-12 15:09:40', '2021-06-12 15:09:40', 1),
(211, 'updated', 'datalessons', 1, '2021-06-12 15:09:40', '2021-06-12 15:09:40', 1),
(212, 'updated', 'datalessons', 2, '2021-06-12 15:09:40', '2021-06-12 15:09:40', 1),
(213, 'updated', 'datalessons', 3, '2021-06-12 15:09:40', '2021-06-12 15:09:40', 1),
(214, 'updated', 'datalessons', 4, '2021-06-12 15:09:40', '2021-06-12 15:09:40', 1),
(215, 'updated', 'datacourses', 1, '2021-06-12 15:09:45', '2021-06-12 15:09:45', 1),
(216, 'updated', 'datalessons', 1, '2021-06-12 15:09:45', '2021-06-12 15:09:45', 1),
(217, 'updated', 'datalessons', 2, '2021-06-12 15:09:45', '2021-06-12 15:09:45', 1),
(218, 'updated', 'datalessons', 3, '2021-06-12 15:09:45', '2021-06-12 15:09:45', 1),
(219, 'updated', 'datalessons', 4, '2021-06-12 15:09:45', '2021-06-12 15:09:45', 1),
(220, 'updated', 'coursescertificates', 1, '2021-06-12 15:49:02', '2021-06-12 15:49:02', 1),
(221, 'updated', 'datatrails', 1, '2021-06-12 16:11:18', '2021-06-12 16:11:18', 1),
(222, 'updated', 'users', 1, '2021-06-12 16:14:10', '2021-06-12 16:14:10', 1),
(223, 'updated', 'users', 1, '2021-06-12 16:23:37', '2021-06-12 16:23:37', 1),
(224, 'updated', 'users', 1, '2021-06-12 18:22:13', '2021-06-12 18:22:13', 1),
(225, 'updated', 'users', 2, '2021-06-12 20:12:10', '2021-06-12 20:12:10', 1),
(226, 'created', 'courses', 11, '2021-06-12 20:15:22', '2021-06-12 20:15:22', 1),
(227, 'created', 'lessons', 11, '2021-06-12 20:16:13', '2021-06-12 20:16:13', 1),
(228, 'updated', 'courses', 11, '2021-06-12 20:16:41', '2021-06-12 20:16:41', 1),
(229, 'created', 'content_categories', 1, '2021-06-12 20:17:35', '2021-06-12 20:17:35', 1),
(230, 'created', 'coursecategories', 11, '2021-06-12 20:19:15', '2021-06-12 20:19:15', 1),
(231, 'created', 'coursetags', 11, '2021-06-12 20:19:40', '2021-06-12 20:19:40', 1),
(232, 'updated', 'courses', 11, '2021-06-12 20:20:22', '2021-06-12 20:20:22', 1),
(233, 'updated', 'courses', 11, '2021-06-12 20:20:36', '2021-06-12 20:20:36', 1),
(234, 'updated', 'courses', 11, '2021-06-12 20:20:45', '2021-06-12 20:20:45', 1),
(235, 'updated', 'courses', 5, '2021-06-12 20:22:12', '2021-06-12 20:22:12', 1),
(236, 'updated', 'courses', 11, '2021-06-12 20:22:23', '2021-06-12 20:22:23', 1),
(237, 'created', 'datacourses', 6, '2021-06-12 20:23:04', '2021-06-12 20:23:04', 1),
(238, 'updated', 'datacourses', 6, '2021-06-12 20:23:12', '2021-06-12 20:23:12', 1),
(239, 'created', 'datalessons', 8, '2021-06-12 20:23:12', '2021-06-12 20:23:12', 1),
(240, 'created', 'coursecategories', 12, '2021-06-12 20:24:30', '2021-06-12 20:24:30', 1),
(241, 'created', 'courses', 12, '2021-06-12 20:26:19', '2021-06-12 20:26:19', 1),
(242, 'updated', 'courses', 12, '2021-06-12 20:27:14', '2021-06-12 20:27:14', 1),
(243, 'created', 'datacourses', 7, '2021-06-12 20:27:27', '2021-06-12 20:27:27', 1),
(244, 'updated', 'datacourses', 6, '2021-06-12 20:28:31', '2021-06-12 20:28:31', 1),
(245, 'updated', 'datalessons', 8, '2021-06-12 20:28:31', '2021-06-12 20:28:31', 1),
(246, 'updated', 'datacourses', 6, '2021-06-12 20:28:31', '2021-06-12 20:28:31', 1),
(247, 'updated', 'datalessons', 8, '2021-06-12 20:28:31', '2021-06-12 20:28:31', 1),
(248, 'updated', 'datacourses', 7, '2021-06-12 20:28:35', '2021-06-12 20:28:35', 1),
(249, 'created', 'datalessons', 9, '2021-06-12 20:28:35', '2021-06-12 20:28:35', 1),
(250, 'updated', 'datalessons', 9, '2021-06-12 20:28:37', '2021-06-12 20:28:37', 1),
(251, 'updated', 'datacourses', 7, '2021-06-12 20:28:37', '2021-06-12 20:28:37', 1),
(252, 'updated', 'datalessons', 9, '2021-06-12 20:28:37', '2021-06-12 20:28:37', 1),
(253, 'created', 'lessons', 12, '2021-06-12 20:29:44', '2021-06-12 20:29:44', 1),
(254, 'created', 'lessons', 13, '2021-06-12 20:30:35', '2021-06-12 20:30:35', 1),
(255, 'updated', 'lessons', 12, '2021-06-12 20:30:45', '2021-06-12 20:30:45', 1),
(256, 'updated', 'lessons', 11, '2021-06-12 20:31:02', '2021-06-12 20:31:02', 1),
(257, 'created', 'lessons', 14, '2021-06-12 20:31:45', '2021-06-12 20:31:45', 1),
(258, 'updated', 'courses', 12, '2021-06-12 20:32:18', '2021-06-12 20:32:18', 1),
(259, 'created', 'datacourses', 8, '2021-06-12 20:32:30', '2021-06-12 20:32:30', 1),
(260, 'updated', 'datacourses', 7, '2021-06-12 20:32:34', '2021-06-12 20:32:34', 1),
(261, 'created', 'datalessons', 10, '2021-06-12 20:32:34', '2021-06-12 20:32:34', 1),
(262, 'created', 'datacourses', 9, '2021-06-12 20:32:48', '2021-06-12 20:32:48', 1),
(263, 'updated', 'datacourses', 7, '2021-06-12 20:32:51', '2021-06-12 20:32:51', 1),
(264, 'updated', 'datalessons', 10, '2021-06-12 20:32:52', '2021-06-12 20:32:52', 1),
(265, 'deleted', 'courses', 12, '2021-06-12 20:33:43', '2021-06-12 20:33:43', 1),
(266, 'created', 'courses', 13, '2021-06-12 20:36:26', '2021-06-12 20:36:26', 1),
(267, 'created', 'datacourses', 10, '2021-06-12 20:36:39', '2021-06-12 20:36:39', 1),
(268, 'updated', 'datacourses', 10, '2021-06-12 20:36:44', '2021-06-12 20:36:44', 1),
(269, 'updated', 'datacourses', 6, '2021-06-12 20:36:50', '2021-06-12 20:36:50', 1),
(270, 'updated', 'datalessons', 8, '2021-06-12 20:36:50', '2021-06-12 20:36:50', 1),
(271, 'created', 'datacourses', 11, '2021-06-12 20:37:18', '2021-06-12 20:37:18', 1),
(272, 'updated', 'datacourses', 10, '2021-06-12 20:37:21', '2021-06-12 20:37:21', 1),
(273, 'updated', 'courses', 13, '2021-06-12 20:38:52', '2021-06-12 20:38:52', 1),
(274, 'updated', 'users', 1, '2021-06-12 20:39:05', '2021-06-12 20:39:05', 1),
(275, 'created', 'datacourses', 12, '2021-06-12 20:39:31', '2021-06-12 20:39:31', 1),
(276, 'updated', 'datacourses', 10, '2021-06-12 20:39:34', '2021-06-12 20:39:34', 1),
(277, 'updated', 'courses', 13, '2021-06-12 20:40:29', '2021-06-12 20:40:29', 1),
(278, 'created', 'courses', 14, '2021-06-12 20:41:39', '2021-06-12 20:41:39', 1),
(279, 'updated', 'courses', 13, '2021-06-12 20:41:47', '2021-06-12 20:41:47', 1),
(280, 'created', 'datacourses', 13, '2021-06-12 20:41:55', '2021-06-12 20:41:55', 1),
(281, 'created', 'datacourses', 14, '2021-06-12 20:41:59', '2021-06-12 20:41:59', 1),
(282, 'updated', 'datacourses', 10, '2021-06-12 20:42:04', '2021-06-12 20:42:04', 1),
(283, 'updated', 'datacourses', 14, '2021-06-12 20:42:07', '2021-06-12 20:42:07', 1),
(284, 'created', 'datalessons', 17, '2021-06-12 20:42:07', '2021-06-12 20:42:07', 1),
(285, 'updated', 'datalessons', 17, '2021-06-12 20:42:12', '2021-06-12 20:42:12', 1),
(286, 'updated', 'datacourses', 14, '2021-06-12 20:42:13', '2021-06-12 20:42:13', 1),
(287, 'updated', 'datalessons', 17, '2021-06-12 20:42:13', '2021-06-12 20:42:13', 1),
(288, 'deleted', 'datacourses', 1, '2021-06-12 20:43:18', '2021-06-12 20:43:18', 1),
(289, 'deleted', 'datacourses', 2, '2021-06-12 20:43:18', '2021-06-12 20:43:18', 1),
(290, 'deleted', 'datacourses', 3, '2021-06-12 20:43:18', '2021-06-12 20:43:18', 1),
(291, 'deleted', 'datacourses', 4, '2021-06-12 20:43:18', '2021-06-12 20:43:18', 1),
(292, 'deleted', 'datacourses', 5, '2021-06-12 20:43:18', '2021-06-12 20:43:18', 1),
(293, 'created', 'datacourses', 15, '2021-06-12 20:44:00', '2021-06-12 20:44:00', 1),
(294, 'updated', 'datacourses', 10, '2021-06-12 20:44:58', '2021-06-12 20:44:58', 1),
(295, 'updated', 'datacourses', 10, '2021-06-12 20:45:38', '2021-06-12 20:45:38', 1),
(296, 'deleted', 'courses', 1, '2021-06-12 20:46:35', '2021-06-12 20:46:35', 1),
(297, 'deleted', 'courses', 2, '2021-06-12 20:46:35', '2021-06-12 20:46:35', 1),
(298, 'deleted', 'courses', 3, '2021-06-12 20:46:35', '2021-06-12 20:46:35', 1),
(299, 'deleted', 'courses', 4, '2021-06-12 20:46:35', '2021-06-12 20:46:35', 1),
(300, 'deleted', 'courses', 5, '2021-06-12 20:46:35', '2021-06-12 20:46:35', 1),
(301, 'deleted', 'courses', 6, '2021-06-12 20:46:35', '2021-06-12 20:46:35', 1),
(302, 'deleted', 'courses', 7, '2021-06-12 20:46:35', '2021-06-12 20:46:35', 1),
(303, 'deleted', 'courses', 8, '2021-06-12 20:46:36', '2021-06-12 20:46:36', 1),
(304, 'deleted', 'courses', 9, '2021-06-12 20:46:36', '2021-06-12 20:46:36', 1),
(305, 'deleted', 'courses', 10, '2021-06-12 20:46:36', '2021-06-12 20:46:36', 1),
(306, 'deleted', 'courses', 13, '2021-06-12 20:46:36', '2021-06-12 20:46:36', 1),
(307, 'updated', 'courses', 14, '2021-06-12 20:46:50', '2021-06-12 20:46:50', 1),
(308, 'deleted', 'lessons', 1, '2021-06-12 20:47:39', '2021-06-12 20:47:39', 1),
(309, 'deleted', 'lessons', 2, '2021-06-12 20:47:42', '2021-06-12 20:47:42', 1),
(310, 'deleted', 'lessons', 3, '2021-06-12 20:47:46', '2021-06-12 20:47:46', 1),
(311, 'updated', 'users', 1, '2021-06-12 20:52:02', '2021-06-12 20:52:02', 1),
(312, 'updated', 'datacourses', 14, '2021-06-12 20:52:13', '2021-06-12 20:52:13', 1),
(313, 'updated', 'courses', 14, '2021-06-12 21:18:49', '2021-06-12 21:18:49', 1),
(314, 'updated', 'datacourses', 14, '2021-06-12 21:19:07', '2021-06-12 21:19:07', 1),
(315, 'created', 'datacourses', 16, '2021-06-12 21:19:17', '2021-06-12 21:19:17', 1),
(316, 'updated', 'datacourses', 14, '2021-06-12 21:19:24', '2021-06-12 21:19:24', 1),
(317, 'updated', 'datacourses', 14, '2021-06-12 21:20:18', '2021-06-12 21:20:18', 1),
(318, 'created', 'datacourses', 17, '2021-06-12 21:22:20', '2021-06-12 21:22:20', 1),
(319, 'updated', 'datacourses', 14, '2021-06-12 21:22:24', '2021-06-12 21:22:24', 1),
(320, 'updated', 'lessons', 12, '2021-06-12 21:28:07', '2021-06-12 21:28:07', 1),
(321, 'updated', 'lessons', 13, '2021-06-12 21:28:33', '2021-06-12 21:28:33', 1),
(322, 'updated', 'lessons', 12, '2021-06-12 21:30:01', '2021-06-12 21:30:01', 1),
(323, 'updated', 'lessons', 13, '2021-06-12 21:30:13', '2021-06-12 21:30:13', 1),
(324, 'created', 'datacourses', 18, '2021-06-12 21:35:34', '2021-06-12 21:35:34', 1),
(325, 'updated', 'datacourses', 14, '2021-06-12 21:35:37', '2021-06-12 21:35:37', 1),
(326, 'created', 'datacourses', 19, '2021-06-12 21:35:57', '2021-06-12 21:35:57', 1),
(327, 'updated', 'datacourses', 6, '2021-06-12 21:36:52', '2021-06-12 21:36:52', 1),
(328, 'updated', 'datacourses', 14, '2021-06-12 21:37:07', '2021-06-12 21:37:07', 1),
(329, 'updated', 'datacourses', 6, '2021-06-12 21:37:19', '2021-06-12 21:37:19', 1),
(330, 'updated', 'datacourses', 14, '2021-06-12 21:41:59', '2021-06-12 21:41:59', 1),
(331, 'updated', 'users', 1, '2021-06-12 22:56:46', '2021-06-12 22:56:46', 1),
(332, 'created', 'users', 4, '2021-06-12 23:00:47', '2021-06-12 23:00:47', 1),
(333, 'updated', 'users', 1, '2021-06-12 23:03:13', '2021-06-12 23:03:13', 1),
(334, 'deleted', 'users', 4, '2021-06-12 23:10:41', '2021-06-12 23:10:41', 1),
(335, 'updated', 'users', 1, '2021-06-12 23:11:03', '2021-06-12 23:11:03', 1),
(336, 'updated', 'users', 3, '2021-06-12 23:11:51', '2021-06-12 23:11:51', 1),
(337, 'updated', 'users', 1, '2021-06-12 23:11:57', '2021-06-12 23:11:57', 1),
(338, 'created', 'datacourses', 20, '2021-06-12 23:13:19', '2021-06-12 23:13:19', 3),
(339, 'created', 'datacourses', 21, '2021-06-12 23:13:22', '2021-06-12 23:13:22', 3),
(340, 'updated', 'datacourses', 21, '2021-06-12 23:13:24', '2021-06-12 23:13:24', 3),
(341, 'updated', 'users', 3, '2021-06-12 23:13:42', '2021-06-12 23:13:42', 3),
(342, 'updated', 'users', 3, '2021-06-12 23:19:41', '2021-06-12 23:19:41', 3),
(343, 'updated', 'users', 1, '2021-06-12 23:20:24', '2021-06-12 23:20:24', 1),
(344, 'updated', 'users', 3, '2021-06-12 23:22:07', '2021-06-12 23:22:07', 3),
(345, 'updated', 'generals', 1, '2021-06-12 23:25:56', '2021-06-12 23:25:56', 1),
(346, 'updated', 'users', 1, '2021-06-12 23:26:35', '2021-06-12 23:26:35', 1),
(347, 'updated', 'roles', 2, '2021-06-12 23:39:48', '2021-06-12 23:39:48', 1),
(348, 'updated', 'users', 1, '2021-06-12 23:39:52', '2021-06-12 23:39:52', 1),
(349, 'updated', 'users', 3, '2021-06-12 23:41:45', '2021-06-12 23:41:45', 3),
(350, 'updated', 'roles', 2, '2021-06-12 23:45:58', '2021-06-12 23:45:58', 1),
(351, 'updated', 'roles', 3, '2021-06-12 23:46:38', '2021-06-12 23:46:38', 1),
(352, 'updated', 'roles', 3, '2021-06-12 23:47:23', '2021-06-12 23:47:23', 1),
(353, 'updated', 'users', 1, '2021-06-12 23:47:27', '2021-06-12 23:47:27', 1),
(354, 'updated', 'users', 3, '2021-06-12 23:48:45', '2021-06-12 23:48:45', 3),
(355, 'updated', 'roles', 2, '2021-06-12 23:51:57', '2021-06-12 23:51:57', 1),
(356, 'updated', 'users', 1, '2021-06-13 00:24:29', '2021-06-13 00:24:29', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `content_categories`
--
ALTER TABLE `content_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `content_category_content_page`
--
ALTER TABLE `content_category_content_page`
  ADD KEY `fk_p_209366_209368_conten_5ba12711d3366` (`content_category_id`),
  ADD KEY `fk_p_209368_209366_conten_5ba12711d3473` (`content_page_id`);

--
-- Index pour la table `content_pages`
--
ALTER TABLE `content_pages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `content_page_content_tag`
--
ALTER TABLE `content_page_content_tag`
  ADD KEY `fk_p_209368_209367_conten_5ba12711d7d3b` (`content_page_id`),
  ADD KEY `fk_p_209367_209368_conten_5ba12711d7e48` (`content_tag_id`);

--
-- Index pour la table `content_tags`
--
ALTER TABLE `content_tags`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `coursecategories`
--
ALTER TABLE `coursecategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursecategories_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `coursescertificates`
--
ALTER TABLE `coursescertificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursescertificates_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `coursetags`
--
ALTER TABLE `coursetags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coursetags_deleted_at_index` (`deleted_at`),
  ADD KEY `209350_5ba11a2f7451e` (`created_by_id`),
  ADD KEY `209350_5ba11a2f8ceb7` (`created_by_team_id`);

--
-- Index pour la table `course_coursecategory`
--
ALTER TABLE `course_coursecategory`
  ADD KEY `fk_p_209354_209345_course_5ba11ec1264ce` (`course_id`),
  ADD KEY `fk_p_209345_209354_course_5ba11ec1265a0` (`coursecategory_id`);

--
-- Index pour la table `course_coursetag`
--
ALTER TABLE `course_coursetag`
  ADD KEY `fk_p_209354_209350_course_5ba11ec12a567` (`course_id`),
  ADD KEY `fk_p_209350_209354_course_5ba11ec12a661` (`coursetag_id`);

--
-- Index pour la table `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD KEY `fk_p_209354_209352_lesson_5ba11ec121e8d` (`course_id`),
  ADD KEY `fk_p_209352_209354_course_5ba11ec121fa4` (`lesson_id`);

--
-- Index pour la table `course_trail`
--
ALTER TABLE `course_trail`
  ADD KEY `fk_p_209354_209355_trail__5ba120abc92da` (`course_id`),
  ADD KEY `fk_p_209355_209354_course_5ba120abc936a` (`trail_id`);

--
-- Index pour la table `course_user`
--
ALTER TABLE `course_user`
  ADD KEY `fk_p_209354_208952_user_c_5ba11ec11d7cd` (`course_id`),
  ADD KEY `fk_p_208952_209354_course_5ba11ec11d88d` (`user_id`);

--
-- Index pour la table `datacourses`
--
ALTER TABLE `datacourses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datacourses_deleted_at_index` (`deleted_at`),
  ADD KEY `209379_5ba1465a6e8d2` (`user_id`),
  ADD KEY `209379_5ba1465a8371f` (`course_id`),
  ADD KEY `209379_5ba1465a9717b` (`certificate_id`);

--
-- Index pour la table `datalessons`
--
ALTER TABLE `datalessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datalessons_deleted_at_index` (`deleted_at`),
  ADD KEY `209379_5ba1465a6e8d3` (`user_id`),
  ADD KEY `209379_5ba1465a8371g` (`course_id`),
  ADD KEY `209379_5ba1465a8371h` (`lesson_id`);

--
-- Index pour la table `datatrails`
--
ALTER TABLE `datatrails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `datatrails_deleted_at_index` (`deleted_at`),
  ADD KEY `209378_5ba14611f2209` (`user_id`),
  ADD KEY `209378_5ba146121451b` (`trail_id`),
  ADD KEY `209378_5ba146122fbe2` (`certificate_id`);

--
-- Index pour la table `faq_categories`
--
ALTER TABLE `faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `209364_5ba126fb26358` (`category_id`);

--
-- Index pour la table `generals`
--
ALTER TABLE `generals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generals_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `internal_notifications`
--
ALTER TABLE `internal_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `internal_notification_user`
--
ALTER TABLE `internal_notification_user`
  ADD KEY `fk_p_209340_208952_user_i_5ba115e259c68` (`internal_notification_id`),
  ADD KEY `fk_p_208952_209340_intern_5ba115e259d5e` (`user_id`);

--
-- Index pour la table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lessons_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messenger_messages_topic_id_foreign` (`topic_id`);

--
-- Index pour la table `messenger_topics`
--
ALTER TABLE `messenger_topics`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `fk_p_208950_208951_role_p_5ba00416720ab` (`permission_id`),
  ADD KEY `fk_p_208951_208950_permis_5ba0041672144` (`role_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_256_topic_topic_id_question` (`topic_id`),
  ADD KEY `questions_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `questions_options`
--
ALTER TABLE `questions_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_257_question_question_id_questions_option` (`question_id`),
  ADD KEY `questions_options_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_254_user_user_id_result` (`user_id`),
  ADD KEY `fk_257_question_question_id_result` (`question_id`),
  ADD KEY `results_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `fk_p_208951_208952_user_r_5ba0041876594` (`role_id`),
  ADD KEY `fk_p_208952_208951_role_u_5ba004187664a` (`user_id`);

--
-- Index pour la table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `test_answers`
--
ALTER TABLE `test_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_answers_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `trailcategories`
--
ALTER TABLE `trailcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trailcategories_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `trails`
--
ALTER TABLE `trails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trails_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `trailscertificates`
--
ALTER TABLE `trailscertificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trailscertificates_deleted_at_index` (`deleted_at`);

--
-- Index pour la table `trailtags`
--
ALTER TABLE `trailtags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trailtags_deleted_at_index` (`deleted_at`),
  ADD KEY `209351_5ba11a99109dd` (`created_by_id`),
  ADD KEY `209351_5ba11a9922fae` (`created_by_team_id`);

--
-- Index pour la table `trail_trailcategory`
--
ALTER TABLE `trail_trailcategory`
  ADD KEY `fk_p_209355_209346_trailc_5ba120abcd1b0` (`trail_id`),
  ADD KEY `fk_p_209346_209355_trail__5ba120abcd26f` (`trailcategory_id`);

--
-- Index pour la table `trail_trailtag`
--
ALTER TABLE `trail_trailtag`
  ADD KEY `fk_p_209355_209351_trailt_5ba120abd086f` (`trail_id`),
  ADD KEY `fk_p_209351_209355_trail__5ba120abd0930` (`trailtag_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `208952_5ba00427b37a1` (`team_id`);

--
-- Index pour la table `user_actions`
--
ALTER TABLE `user_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `209361_5ba126e174ec3` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `content_categories`
--
ALTER TABLE `content_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `content_pages`
--
ALTER TABLE `content_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `content_tags`
--
ALTER TABLE `content_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `coursecategories`
--
ALTER TABLE `coursecategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `coursescertificates`
--
ALTER TABLE `coursescertificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `coursetags`
--
ALTER TABLE `coursetags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `datacourses`
--
ALTER TABLE `datacourses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `datalessons`
--
ALTER TABLE `datalessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `datatrails`
--
ALTER TABLE `datatrails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `faq_categories`
--
ALTER TABLE `faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `faq_questions`
--
ALTER TABLE `faq_questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `generals`
--
ALTER TABLE `generals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `internal_notifications`
--
ALTER TABLE `internal_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `messenger_topics`
--
ALTER TABLE `messenger_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `questions_options`
--
ALTER TABLE `questions_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `test_answers`
--
ALTER TABLE `test_answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `trailcategories`
--
ALTER TABLE `trailcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `trails`
--
ALTER TABLE `trails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `trailscertificates`
--
ALTER TABLE `trailscertificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `trailtags`
--
ALTER TABLE `trailtags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `user_actions`
--
ALTER TABLE `user_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `content_category_content_page`
--
ALTER TABLE `content_category_content_page`
  ADD CONSTRAINT `fk_p_209366_209368_conten_5ba12711d3366` FOREIGN KEY (`content_category_id`) REFERENCES `content_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_209368_209366_conten_5ba12711d3473` FOREIGN KEY (`content_page_id`) REFERENCES `content_pages` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `content_page_content_tag`
--
ALTER TABLE `content_page_content_tag`
  ADD CONSTRAINT `fk_p_209367_209368_conten_5ba12711d7e48` FOREIGN KEY (`content_tag_id`) REFERENCES `content_tags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_209368_209367_conten_5ba12711d7d3b` FOREIGN KEY (`content_page_id`) REFERENCES `content_pages` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `coursetags`
--
ALTER TABLE `coursetags`
  ADD CONSTRAINT `209350_5ba11a2f7451e` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `209350_5ba11a2f8ceb7` FOREIGN KEY (`created_by_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `course_coursecategory`
--
ALTER TABLE `course_coursecategory`
  ADD CONSTRAINT `fk_p_209345_209354_course_5ba11ec1265a0` FOREIGN KEY (`coursecategory_id`) REFERENCES `coursecategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_209354_209345_course_5ba11ec1264ce` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `course_coursetag`
--
ALTER TABLE `course_coursetag`
  ADD CONSTRAINT `fk_p_209350_209354_course_5ba11ec12a661` FOREIGN KEY (`coursetag_id`) REFERENCES `coursetags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_209354_209350_course_5ba11ec12a567` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `course_lesson`
--
ALTER TABLE `course_lesson`
  ADD CONSTRAINT `fk_p_209352_209354_course_5ba11ec121fa4` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_209354_209352_lesson_5ba11ec121e8d` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `course_trail`
--
ALTER TABLE `course_trail`
  ADD CONSTRAINT `fk_p_209354_209355_trail__5ba120abc92da` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_209355_209354_course_5ba120abc936a` FOREIGN KEY (`trail_id`) REFERENCES `trails` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `fk_p_208952_209354_course_5ba11ec11d88d` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_209354_208952_user_c_5ba11ec11d7cd` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `datacourses`
--
ALTER TABLE `datacourses`
  ADD CONSTRAINT `209379_5ba1465a6e8d2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `209379_5ba1465a8371f` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `209379_5ba1465a9717b` FOREIGN KEY (`certificate_id`) REFERENCES `coursescertificates` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `datalessons`
--
ALTER TABLE `datalessons`
  ADD CONSTRAINT `209379_5ba1465a6e8d3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `209379_5ba1465a8371g` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `209379_5ba1465a8371h` FOREIGN KEY (`lesson_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `datatrails`
--
ALTER TABLE `datatrails`
  ADD CONSTRAINT `209378_5ba14611f2209` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `209378_5ba146121451b` FOREIGN KEY (`trail_id`) REFERENCES `trails` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `209378_5ba146122fbe2` FOREIGN KEY (`certificate_id`) REFERENCES `trailscertificates` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `faq_questions`
--
ALTER TABLE `faq_questions`
  ADD CONSTRAINT `209364_5ba126fb26358` FOREIGN KEY (`category_id`) REFERENCES `faq_categories` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `internal_notification_user`
--
ALTER TABLE `internal_notification_user`
  ADD CONSTRAINT `fk_p_208952_209340_intern_5ba115e259d5e` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_209340_208952_user_i_5ba115e259c68` FOREIGN KEY (`internal_notification_id`) REFERENCES `internal_notifications` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD CONSTRAINT `messenger_messages_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `messenger_topics` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `fk_p_208950_208951_role_p_5ba00416720ab` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_208951_208950_permis_5ba0041672144` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_256_topic_topic_id_question` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Contraintes pour la table `questions_options`
--
ALTER TABLE `questions_options`
  ADD CONSTRAINT `fk_257_question_question_id_questions_option` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Contraintes pour la table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `fk_254_user_user_id_result` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_257_question_question_id_result` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Contraintes pour la table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `fk_p_208951_208952_user_r_5ba0041876594` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_208952_208951_role_u_5ba004187664a` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `trailtags`
--
ALTER TABLE `trailtags`
  ADD CONSTRAINT `209351_5ba11a99109dd` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `209351_5ba11a9922fae` FOREIGN KEY (`created_by_team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `trail_trailcategory`
--
ALTER TABLE `trail_trailcategory`
  ADD CONSTRAINT `fk_p_209346_209355_trail__5ba120abcd26f` FOREIGN KEY (`trailcategory_id`) REFERENCES `trailcategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_209355_209346_trailc_5ba120abcd1b0` FOREIGN KEY (`trail_id`) REFERENCES `trails` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `trail_trailtag`
--
ALTER TABLE `trail_trailtag`
  ADD CONSTRAINT `fk_p_209351_209355_trail__5ba120abd0930` FOREIGN KEY (`trailtag_id`) REFERENCES `trailtags` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_p_209355_209351_trailt_5ba120abd086f` FOREIGN KEY (`trail_id`) REFERENCES `trails` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `208952_5ba00427b37a1` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_actions`
--
ALTER TABLE `user_actions`
  ADD CONSTRAINT `209361_5ba126e174ec3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
