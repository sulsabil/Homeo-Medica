-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2021 at 07:24 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animal_planet_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(8, 28, 22, 'Feed your dog two or more meals daily\r\n Include canned food\r\n Make sure your dog rests after a full meal; no strenuous exercise on a full stomach', '2021-03-21 05:35:53', '2021-03-21 05:35:53'),
(9, 29, 24, 'keep giving your pet x medicine . he will get better.', '2021-03-21 05:50:08', '2021-03-21 05:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `comment_replies`
--

CREATE TABLE `comment_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment_replies`
--

INSERT INTO `comment_replies` (`id`, `comment_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(7, 7, 22, 'you may die', '2021-03-20 05:24:04', '2021-03-20 05:24:04');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `address`, `contact`, `created_at`, `updated_at`) VALUES
(4, 'hospital', 'sylhet', '09747532768', '2021-03-20 05:07:49', '2021-03-20 05:07:49'),
(5, 'hospital11', 'sylhet', '09747532768', '2021-03-20 19:00:59', '2021-03-20 19:00:59'),
(6, 'hospital-wow', 'sylhet', '08989876453', '2021-03-20 19:01:31', '2021-03-20 19:01:31'),
(7, 'womens hospital', 'sylhet', '09747532768', '2021-03-20 19:02:07', '2021-03-20 19:02:07'),
(8, 'dhaka hospital', 'sylhet', '09747532768', '2021-03-20 19:03:06', '2021-03-20 19:03:06'),
(9, 'sylhet hospital', 'sylhet', '09747532768', '2021-03-20 19:03:54', '2021-03-20 19:03:54');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `image_src`, `user_id`, `created_at`, `updated_at`) VALUES
(73, 'IMG_3772172553626.png', 'user', 19, '2021-03-20 04:57:57', '2021-03-20 04:57:57'),
(74, 'IMG_6351503701738.jpg', 'user', 19, '2021-03-20 04:58:22', '2021-03-20 04:58:22'),
(75, 'IMG_6593515289863.jpg', 'post', 15, '2021-03-20 04:59:07', '2021-03-20 04:59:07'),
(76, 'IMG_9563855258190.jpg', 'hospital', 4, '2021-03-20 05:07:49', '2021-03-20 05:07:49'),
(77, 'IMG_7502900329705.jpg', 'pharmacy', 5, '2021-03-20 05:08:25', '2021-03-20 05:08:25'),
(78, 'IMG_2829559240823.jpg', 'doctor', 21, '2021-03-20 05:10:12', '2021-03-20 05:10:12'),
(79, 'IMG_9284280809290.jpg', 'doctor', 22, '2021-03-20 05:19:34', '2021-03-20 05:19:34'),
(80, 'IMG_7076512668836.jpg', 'doctor', 23, '2021-03-20 05:22:31', '2021-03-20 05:22:31'),
(82, 'IMG_1054545132659.jpg', 'post', 17, '2021-03-20 05:50:24', '2021-03-20 05:50:24'),
(83, 'IMG_1813976064889.', 'post', 18, '2021-03-20 05:54:33', '2021-03-20 05:54:33'),
(84, 'IMG_3291633663646.', 'post', 19, '2021-03-20 05:58:11', '2021-03-20 05:58:11'),
(85, 'IMG_1483235606845.', 'post', 20, '2021-03-20 05:59:38', '2021-03-20 05:59:38'),
(86, 'IMG_8567076753860.jpg', 'post', 27, '2021-03-21 06:16:43', '2021-03-21 06:16:43'),
(87, 'IMG_5343097430522.jpg', 'doctor', 24, '2021-03-21 06:58:54', '2021-03-21 06:58:54'),
(88, 'IMG_3342899211554.jpg', 'doctor', 25, '2021-03-21 06:59:45', '2021-03-21 06:59:45'),
(89, 'IMG_974241332498.jpg', 'doctor', 26, '2021-03-20 19:00:21', '2021-03-20 19:00:21'),
(90, 'IMG_195200746306.jpg', 'hospital', 5, '2021-03-20 19:00:59', '2021-03-20 19:00:59'),
(91, 'IMG_753679213920.jpg', 'hospital', 6, '2021-03-20 19:01:31', '2021-03-20 19:01:31'),
(92, 'IMG_1571873407051.jpg', 'hospital', 7, '2021-03-20 19:02:07', '2021-03-20 19:02:07'),
(93, 'IMG_930249787868.jpg', 'hospital', 8, '2021-03-20 19:03:06', '2021-03-20 19:03:06'),
(94, 'IMG_4438072868040.jpg', 'hospital', 9, '2021-03-20 19:03:54', '2021-03-20 19:03:54'),
(95, 'IMG_4390079507310.jpg', 'pharmacy', 6, '2021-03-20 19:04:39', '2021-03-20 19:04:39'),
(96, 'IMG_9283052503660.jpg', 'pharmacy', 7, '2021-03-20 19:05:13', '2021-03-20 19:05:13'),
(97, 'IMG_8313963639653.jpg', 'pharmacy', 8, '2021-03-20 19:05:42', '2021-03-20 19:05:42'),
(98, 'IMG_5468380691592.jpg', 'pharmacy', 9, '2021-03-20 19:06:17', '2021-03-20 19:06:17'),
(99, 'IMG_3017600895109.jpg', 'pharmacy', 10, '2021-03-20 19:06:55', '2021-03-20 19:06:55'),
(100, 'IMG_6990885886422.jpg', 'post', 28, '2021-03-21 05:01:26', '2021-03-21 05:01:26'),
(101, 'IMG_4424478158759.jpg', 'post', 29, '2021-03-21 05:10:26', '2021-03-21 05:10:26'),
(102, 'IMG_8791847899287.jpg', 'post', 29, '2021-03-21 05:10:26', '2021-03-21 05:10:26'),
(103, 'IMG_6004756047684.jpg', 'post', 30, '2021-03-21 05:26:39', '2021-03-21 05:26:39'),
(104, 'IMG_8687779025793.jpg', 'post', 31, '2021-03-21 06:04:31', '2021-03-21 06:04:31'),
(105, 'IMG_85717812120.jpg', 'post', 32, '2021-03-21 06:10:50', '2021-03-21 06:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `common_id` int(11) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `data`, `common_id`, `read_at`, `created_at`, `updated_at`) VALUES
(31, 19, 'sulsabil  Comment your post', 15, NULL, '2021-03-20 04:59:18', '2021-03-20 04:59:18'),
(32, 19, 'dr.bakth  reply your comment is you may die', 15, NULL, '2021-03-20 05:24:04', '2021-03-20 05:24:04'),
(33, 20, 'sulsabil  ask this question  fever', 16, NULL, '2021-03-20 05:27:11', '2021-03-20 05:27:11'),
(34, 21, 'sulsabil  ask this question  fever', 16, NULL, '2021-03-20 05:27:11', '2021-03-20 05:27:11'),
(35, 22, 'sulsabil  ask this question  fever', 16, NULL, '2021-03-20 05:27:11', '2021-03-20 05:27:11'),
(36, 23, 'sulsabil  ask this question  fever', 16, NULL, '2021-03-20 05:27:11', '2021-03-20 05:27:11'),
(37, 20, 'sulsabil  ask this question  test ', 17, NULL, '2021-03-20 05:50:24', '2021-03-20 05:50:24'),
(38, 21, 'sulsabil  ask this question  test ', 17, NULL, '2021-03-20 05:50:24', '2021-03-20 05:50:24'),
(39, 22, 'sulsabil  ask this question  test ', 17, NULL, '2021-03-20 05:50:24', '2021-03-20 05:50:24'),
(40, 23, 'sulsabil  ask this question  test ', 17, NULL, '2021-03-20 05:50:24', '2021-03-20 05:50:24'),
(41, 20, 'sulsabil  ask this question  uyu7tf', 18, NULL, '2021-03-20 05:54:33', '2021-03-20 05:54:33'),
(42, 21, 'sulsabil  ask this question  uyu7tf', 18, NULL, '2021-03-20 05:54:33', '2021-03-20 05:54:33'),
(43, 22, 'sulsabil  ask this question  uyu7tf', 18, NULL, '2021-03-20 05:54:33', '2021-03-20 05:54:33'),
(44, 23, 'sulsabil  ask this question  uyu7tf', 18, NULL, '2021-03-20 05:54:33', '2021-03-20 05:54:33'),
(45, 20, 'sulsabil  ask this question  lkanfdsl', 19, NULL, '2021-03-20 05:58:11', '2021-03-20 05:58:11'),
(46, 21, 'sulsabil  ask this question  lkanfdsl', 19, NULL, '2021-03-20 05:58:11', '2021-03-20 05:58:11'),
(47, 22, 'sulsabil  ask this question  lkanfdsl', 19, NULL, '2021-03-20 05:58:11', '2021-03-20 05:58:11'),
(48, 23, 'sulsabil  ask this question  lkanfdsl', 19, NULL, '2021-03-20 05:58:11', '2021-03-20 05:58:11'),
(49, 20, 'sulsabil  ask this question  asdfn; wef\'n pveoaiowe0234', 20, NULL, '2021-03-20 05:59:38', '2021-03-20 05:59:38'),
(50, 21, 'sulsabil  ask this question  asdfn; wef\'n pveoaiowe0234', 20, NULL, '2021-03-20 05:59:38', '2021-03-20 05:59:38'),
(51, 22, 'sulsabil  ask this question  asdfn; wef\'n pveoaiowe0234', 20, NULL, '2021-03-20 05:59:38', '2021-03-20 05:59:38'),
(52, 23, 'sulsabil  ask this question  asdfn; wef\'n pveoaiowe0234', 20, NULL, '2021-03-20 05:59:38', '2021-03-20 05:59:38'),
(53, 20, 'sulsabil  ask this question  anfjsdf', 21, NULL, '2021-03-21 06:02:14', '2021-03-21 06:02:14'),
(54, 21, 'sulsabil  ask this question  anfjsdf', 21, NULL, '2021-03-21 06:02:14', '2021-03-21 06:02:14'),
(55, 22, 'sulsabil  ask this question  anfjsdf', 21, NULL, '2021-03-21 06:02:14', '2021-03-21 06:02:14'),
(56, 23, 'sulsabil  ask this question  anfjsdf', 21, NULL, '2021-03-21 06:02:14', '2021-03-21 06:02:14'),
(57, 20, 'sulsabil  ask this question  pew\' ofawoi', 22, NULL, '2021-03-21 06:02:59', '2021-03-21 06:02:59'),
(58, 21, 'sulsabil  ask this question  pew\' ofawoi', 22, NULL, '2021-03-21 06:02:59', '2021-03-21 06:02:59'),
(59, 22, 'sulsabil  ask this question  pew\' ofawoi', 22, NULL, '2021-03-21 06:02:59', '2021-03-21 06:02:59'),
(60, 23, 'sulsabil  ask this question  pew\' ofawoi', 22, NULL, '2021-03-21 06:02:59', '2021-03-21 06:02:59'),
(61, 20, 'sulsabil  ask this question  poyituyawestrdytfuygiuhoijpokp234567890-', 23, NULL, '2021-03-21 06:12:44', '2021-03-21 06:12:44'),
(62, 21, 'sulsabil  ask this question  poyituyawestrdytfuygiuhoijpokp234567890-', 23, NULL, '2021-03-21 06:12:44', '2021-03-21 06:12:44'),
(63, 22, 'sulsabil  ask this question  poyituyawestrdytfuygiuhoijpokp234567890-', 23, NULL, '2021-03-21 06:12:44', '2021-03-21 06:12:44'),
(64, 23, 'sulsabil  ask this question  poyituyawestrdytfuygiuhoijpokp234567890-', 23, NULL, '2021-03-21 06:12:44', '2021-03-21 06:12:44'),
(65, 20, 'sulsabil  ask this question  final test ', 24, NULL, '2021-03-21 06:13:06', '2021-03-21 06:13:06'),
(66, 21, 'sulsabil  ask this question  final test ', 24, NULL, '2021-03-21 06:13:06', '2021-03-21 06:13:06'),
(67, 22, 'sulsabil  ask this question  final test ', 24, NULL, '2021-03-21 06:13:06', '2021-03-21 06:13:06'),
(68, 23, 'sulsabil  ask this question  final test ', 24, NULL, '2021-03-21 06:13:06', '2021-03-21 06:13:06'),
(69, 20, 'sulsabil  ask this question  8yy0g08', 25, NULL, '2021-03-21 06:15:05', '2021-03-21 06:15:05'),
(70, 21, 'sulsabil  ask this question  8yy0g08', 25, NULL, '2021-03-21 06:15:05', '2021-03-21 06:15:05'),
(71, 22, 'sulsabil  ask this question  8yy0g08', 25, NULL, '2021-03-21 06:15:05', '2021-03-21 06:15:05'),
(72, 23, 'sulsabil  ask this question  8yy0g08', 25, NULL, '2021-03-21 06:15:05', '2021-03-21 06:15:05'),
(73, 20, 'sulsabil  ask this question  jhku', 26, NULL, '2021-03-21 06:16:05', '2021-03-21 06:16:05'),
(74, 21, 'sulsabil  ask this question  jhku', 26, NULL, '2021-03-21 06:16:05', '2021-03-21 06:16:05'),
(75, 22, 'sulsabil  ask this question  jhku', 26, NULL, '2021-03-21 06:16:05', '2021-03-21 06:16:05'),
(76, 23, 'sulsabil  ask this question  jhku', 26, NULL, '2021-03-21 06:16:05', '2021-03-21 06:16:05'),
(77, 20, 'sulsabil  ask this question  jgug.', 27, NULL, '2021-03-21 06:16:44', '2021-03-21 06:16:44'),
(78, 21, 'sulsabil  ask this question  jgug.', 27, NULL, '2021-03-21 06:16:44', '2021-03-21 06:16:44'),
(79, 22, 'sulsabil  ask this question  jgug.', 27, NULL, '2021-03-21 06:16:44', '2021-03-21 06:16:44'),
(80, 23, 'sulsabil  ask this question  jgug.', 27, NULL, '2021-03-21 06:16:44', '2021-03-21 06:16:44'),
(81, 20, 'sulsabil  ask this question  Dog Stomach Swelling', 28, NULL, '2021-03-21 05:01:26', '2021-03-21 05:01:26'),
(82, 21, 'sulsabil  ask this question  Dog Stomach Swelling', 28, NULL, '2021-03-21 05:01:26', '2021-03-21 05:01:26'),
(83, 22, 'sulsabil  ask this question  Dog Stomach Swelling', 28, NULL, '2021-03-21 05:01:26', '2021-03-21 05:01:26'),
(84, 23, 'sulsabil  ask this question  Dog Stomach Swelling', 28, NULL, '2021-03-21 05:01:26', '2021-03-21 05:01:26'),
(85, 24, 'sulsabil  ask this question  Dog Stomach Swelling', 28, NULL, '2021-03-21 05:01:26', '2021-03-21 05:01:26'),
(86, 25, 'sulsabil  ask this question  Dog Stomach Swelling', 28, NULL, '2021-03-21 05:01:26', '2021-03-21 05:01:26'),
(87, 26, 'sulsabil  ask this question  Dog Stomach Swelling', 28, NULL, '2021-03-21 05:01:26', '2021-03-21 05:01:26'),
(88, 20, 'mahjabin  ask this question  Viral Infections', 29, NULL, '2021-03-21 05:10:26', '2021-03-21 05:10:26'),
(89, 21, 'mahjabin  ask this question  Viral Infections', 29, NULL, '2021-03-21 05:10:26', '2021-03-21 05:10:26'),
(90, 22, 'mahjabin  ask this question  Viral Infections', 29, NULL, '2021-03-21 05:10:26', '2021-03-21 05:10:26'),
(91, 23, 'mahjabin  ask this question  Viral Infections', 29, NULL, '2021-03-21 05:10:26', '2021-03-21 05:10:26'),
(92, 24, 'mahjabin  ask this question  Viral Infections', 29, NULL, '2021-03-21 05:10:26', '2021-03-21 05:10:26'),
(93, 25, 'mahjabin  ask this question  Viral Infections', 29, NULL, '2021-03-21 05:10:26', '2021-03-21 05:10:26'),
(94, 26, 'mahjabin  ask this question  Viral Infections', 29, NULL, '2021-03-21 05:10:26', '2021-03-21 05:10:26'),
(95, 20, 'tahjiba  ask this question  Fever', 30, NULL, '2021-03-21 05:26:39', '2021-03-21 05:26:39'),
(96, 21, 'tahjiba  ask this question  Fever', 30, NULL, '2021-03-21 05:26:39', '2021-03-21 05:26:39'),
(97, 22, 'tahjiba  ask this question  Fever', 30, NULL, '2021-03-21 05:26:39', '2021-03-21 05:26:39'),
(98, 23, 'tahjiba  ask this question  Fever', 30, NULL, '2021-03-21 05:26:39', '2021-03-21 05:26:39'),
(99, 24, 'tahjiba  ask this question  Fever', 30, NULL, '2021-03-21 05:26:39', '2021-03-21 05:26:39'),
(100, 25, 'tahjiba  ask this question  Fever', 30, NULL, '2021-03-21 05:26:39', '2021-03-21 05:26:39'),
(101, 26, 'tahjiba  ask this question  Fever', 30, NULL, '2021-03-21 05:26:39', '2021-03-21 05:26:39'),
(102, 19, 'dr.bakth  Comment your post', 28, NULL, '2021-03-21 05:35:53', '2021-03-21 05:35:53'),
(103, 27, 'dr.kohinoor  Comment your post', 29, NULL, '2021-03-21 05:50:08', '2021-03-21 05:50:08'),
(104, 20, 'sulsabil  ask this question  my rabbit is vomiting ', 32, NULL, '2021-03-21 06:10:50', '2021-03-21 06:10:50'),
(105, 21, 'sulsabil  ask this question  my rabbit is vomiting ', 32, NULL, '2021-03-21 06:10:50', '2021-03-21 06:10:50'),
(106, 22, 'sulsabil  ask this question  my rabbit is vomiting ', 32, NULL, '2021-03-21 06:10:50', '2021-03-21 06:10:50'),
(107, 23, 'sulsabil  ask this question  my rabbit is vomiting ', 32, NULL, '2021-03-21 06:10:50', '2021-03-21 06:10:50'),
(108, 24, 'sulsabil  ask this question  my rabbit is vomiting ', 32, NULL, '2021-03-21 06:10:50', '2021-03-21 06:10:50'),
(109, 25, 'sulsabil  ask this question  my rabbit is vomiting ', 32, NULL, '2021-03-21 06:10:50', '2021-03-21 06:10:50'),
(110, 26, 'sulsabil  ask this question  my rabbit is vomiting ', 32, NULL, '2021-03-21 06:10:50', '2021-03-21 06:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacys`
--

CREATE TABLE `pharmacys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pharmacys`
--

INSERT INTO `pharmacys` (`id`, `name`, `contact`, `address`, `created_at`, `updated_at`) VALUES
(5, 'pharmacy', '096364326474', 'sylhet', '2021-03-20 05:08:25', '2021-03-20 05:08:25'),
(6, 'sylhet pharmacy', '08989876453', 'sylhet', '2021-03-20 19:04:39', '2021-03-20 19:04:39'),
(7, 'dhaka pharmacy', '09747532768', 'sylhet', '2021-03-20 19:05:13', '2021-03-20 19:05:13'),
(8, 'pharmacy hello', '08989876453', 'sylhet', '2021-03-20 19:05:42', '2021-03-20 19:05:42'),
(9, 'pharmacy null', '096364326474', 'sylhet', '2021-03-20 19:06:17', '2021-03-20 19:06:17'),
(10, 'pharmacy ctg', '096364326474', 'sylhet', '2021-03-20 19:06:55', '2021-03-20 19:06:55');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `animal_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_answered` tinyint(1) NOT NULL DEFAULT 0,
  `view_count` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `animal_type`, `user_id`, `doctor_id`, `is_answered`, `view_count`, `created_at`, `updated_at`) VALUES
(28, 'Dog Stomach Swelling', 'My dog\'s abdomen looks bloated or unusual. I dont Know what to do. My dog\'s abdomen looks swollen or distended, and my dog seems uncomfortable. can anyone give me any solution .', 'dog', 19, 24, 1, 8, '2021-03-21 05:01:26', '2021-03-21 05:01:26'),
(29, 'Viral Infections', 'My cat has fever for so many days. I think its any kind of viral infection. My cat is not eating properly. I have no idea what to do or what not to do. i cant see my cat like this. please help me.', 'cat', 27, 24, 1, 6, '2021-03-21 05:10:26', '2021-03-21 05:10:26'),
(30, 'Fever', 'My bird mithus temperature is high from last night. He is not feeling well. He is not slepping or eating properly. Most horrible part is he is not flying.\r\ni am tensed for my mithu. Do i need to give him any medicine or any other treatment. please guide me. i want my mithu to fly like before. he is my best friend. i want to save him any how.', 'bird', 28, 24, 0, 2, '2021-03-21 05:26:39', '2021-03-21 05:26:39'),
(31, 'cat Stomach Swelling', 'my cat is not behaving well . please tell me what to do.', 'cat', 24, NULL, 0, 2, '2021-03-21 06:04:31', '2021-03-21 06:04:31'),
(32, 'my rabbit is vomiting ', 'what should i do my rabbit isnt feeling well.', 'rabbit', 19, NULL, 0, 2, '2021-03-21 06:10:50', '2021-03-21 06:10:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialists` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_type`, `phone`, `address`, `specialists`, `password`, `created_at`, `updated_at`) VALUES
(19, 'sulsabil', 'sulsabil@gmail.com', 'user', '01726267333', 'sylhet', NULL, 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2021-03-20 04:56:58', '2021-03-20 04:58:22'),
(20, 'admin', 'admin@gmail.com', 'admin', NULL, NULL, NULL, 'password', NULL, NULL),
(21, 'dr.chpwdhury', 'dr.chowdhury@gmail.com', 'doctor', '01726267654', 'sylhet', 'Cat', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', '2021-03-20 05:10:12', '2021-03-20 05:10:12'),
(22, 'dr.bakth', 'bakth@gmail.com', 'doctor', '08635753264', 'sylhet', 'Dog', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', '2021-03-20 05:19:34', '2021-03-20 05:19:34'),
(23, 'dr.kabir', 'dr.kabir@gmail.com', 'doctor', '01726267654', 'sylhet', 'Birds', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', '2021-03-20 05:22:31', '2021-03-20 05:22:31'),
(24, 'dr.kohinoor', 'dr.kohinoor@gmail.com', 'doctor', '01726267333', 'sylhet', 'Dog', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', '2021-03-21 06:58:54', '2021-03-21 06:58:54'),
(25, 'dr.X', 'dr.X@gmail.com', 'doctor', '08635753264', 'sylhet', 'Cat', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', '2021-03-21 06:59:45', '2021-03-21 06:59:45'),
(26, 'dr.Y', 'dr.Y@gmail.com', 'doctor', '08635753264', 'sylhet', 'Rabbit', 'c7ad44cbad762a5da0a452f9e854fdc1e0e7a52a38015f23f3eab1d80b931dd472634dfac71cd34ebc35d16ab7fb8a90c81f975113d6c7538dc69dd8de9077ec', '2021-03-20 19:00:21', '2021-03-20 19:00:21'),
(27, 'mahjabin', 'mahjabin@gmail.com', 'user', '01704586775', '', NULL, 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2021-03-21 05:02:33', '2021-03-21 05:04:16'),
(28, 'tahjiba', 'tahjiba@gmail.com', 'user', '08276389733', NULL, NULL, 'b109f3bbbc244eb82441917ed06d618b9008dd09b3befd1b5e07394c706a8bb980b1d7785e5976ec049b46df5f1326af5a2ea6d103fd07c95385ffab0cacbc86', '2021-03-21 05:11:36', '2021-03-21 05:11:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pharmacys`
--
ALTER TABLE `pharmacys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comment_replies`
--
ALTER TABLE `comment_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `pharmacys`
--
ALTER TABLE `pharmacys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment_replies`
--
ALTER TABLE `comment_replies`
  ADD CONSTRAINT `comment_replies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
