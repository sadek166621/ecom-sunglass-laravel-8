-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 05:52 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sunglasshutbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` int(11) NOT NULL COMMENT 'coming form blogcategories table',
  `header` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blog_category_id`, `header`, `slug`, `description`, `image`, `author`, `publication_status`, `created_at`, `updated_at`) VALUES
(3, 1, 'মশলার সাতকাহন', 'rh-rtht', '<p>Suspendisse turpis ipsum, tempus in nulla eu, posuere pharetra nibh. In \r\ndignissim vitae lorem non mollis. Praesent pretium tellus in tortor \r\nviverra condimentum. Nullam dignissim facilisis nisl, accumsan placerat \r\njusto ultricies vel. Vivamus finibus mi a neque pretium, ut convallis \r\ndui lacinia. Morbi a rutrum velit. Curabitur sagittis quam quis \r\nconsectetur mattis. Aenean sit amet quam vel turpis interdum sagittis et\r\n eget neque. Nunc ante quam, luctus et neque a, interdum iaculis metus. \r\nAliquam vel ante mattis, placerat orci id, vehicula quam. Suspendisse \r\nquis eros cursus, viverra urna sed, commodo mauris. Cras diam arcu, \r\nfringilla a sem condimentum, viverra facilisis nunc. Curabitur vitae \r\norci id nulla maximus maximus. Nunc pulvinar sollicitudin molestie.</p>', 'admin/upload-image/blog-image/blog-1507362651.jpeg', 'collected', 1, '2021-07-06 22:58:45', '2021-07-07 22:29:35'),
(5, 2, 'Blog image post', 'Blog-image-post', '<p>Aenean et tempor eros, vitae sollicitudin velit. Etiam varius enim nec \r\nquam tempor, sed efficitur ex ultrices. Phasellus pretium est vel dui \r\nvestibulum condimentum. Aenean nec suscipit nibh. Phasellus nec lacus id\r\n arcu facilisis elementum. Curabitur lobortis, elit ut elementum congue,\r\n erat ex bibendum odio, nec iaculis lacus sem non lorem. Duis suscipit \r\nmetus ante, sed convallis quam posuere quis. Ut tincidunt eleifend odio,\r\n ac fringilla mi vehicula nec. Nunc vitae lacus eget lectus imperdiet \r\ntempus sed in dui. Nam molestie magna at risus consectetur, placerat \r\nsuscipit justo dignissim. Sed vitae fringilla enim, nec ullamcorper \r\narcu.</p>', 'admin/upload-image/blog-image/blog-902720211.jpeg', 'collected', 1, '2021-07-07 22:28:57', '2021-07-07 22:28:57'),
(6, 3, 'Blog image post -2', 'abc-abc-abc-ngfg', '<p>Suspendisse turpis ipsum, tempus in nulla eu, posuere pharetra nibh. In \r\ndignissim vitae lorem non mollis. Praesent pretium tellus in tortor \r\nviverra condimentum. Nullam dignissim facilisis nisl, accumsan placerat \r\njusto ultricies vel. Vivamus finibus mi a neque pretium, ut convallis \r\ndui lacinia. Morbi a rutrum velit. Curabitur sagittis quam quis \r\nconsectetur mattis. Aenean sit amet quam vel turpis interdum sagittis et\r\n eget neque. Nunc ante quam, luctus et neque a, interdum iaculis metus. \r\nAliquam vel ante mattis, placerat orci id, vehicula quam. Suspendisse \r\nquis eros cursus, viverra urna sed, commodo mauris. Cras diam arcu, \r\nfringilla a sem condimentum, viverra facilisis nunc. Curabitur vitae \r\norci id nulla maximus maximus. Nunc pulvinar sollicitudin molestie.</p>', 'admin/upload-image/blog-image/blog-1376313383.jpeg', 'collected', 1, '2021-07-07 22:30:29', '2021-07-07 22:30:29'),
(7, 4, 'Blog image post -3', 'Blog-image-post-3', '<p>Suspendisse turpis ipsum, tempus in nulla eu, posuere pharetra nibh. In \r\ndignissim vitae lorem non mollis. Praesent pretium tellus in tortor \r\nviverra condimentum. Nullam dignissim facilisis nisl, accumsan placerat \r\njusto ultricies vel. Vivamus finibus mi a neque pretium, ut convallis \r\ndui lacinia. Morbi a rutrum velit. Curabitur sagittis quam quis \r\nconsectetur mattis. Aenean sit amet quam vel turpis interdum sagittis et\r\n eget neque. Nunc ante quam, luctus et neque a, interdum iaculis metus. \r\nAliquam vel ante mattis, placerat orci id, vehicula quam. Suspendisse \r\nquis eros cursus, viverra urna sed, commodo mauris. Cras diam arcu, \r\nfringilla a sem condimentum, viverra facilisis nunc. Curabitur vitae \r\norci id nulla maximus maximus. Nunc pulvinar sollicitudin molestie.</p>', 'admin/upload-image/blog-image/blog-1996616655.jpeg', 'collected', 1, '2021-07-07 22:31:36', '2021-07-07 22:31:36'),
(8, 1, 'What Are Polarized Lenses Things you need to know.', 'What-Are-Polarized-Lenses-Things-you-need-to-know.', '<p>fdhgtfrbh<br></p>', 'admin/upload-image/blog-image/blog-1600752630.png', 'MEGAZINE', 1, '2021-10-28 04:59:17', '2021-10-28 04:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL COMMENT '0=Unpublished, 1=Published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `blog_category_name`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Web Development 7', 1, '2021-07-06 21:47:18', '2021-07-06 22:40:38'),
(2, 'Web design', 1, '2021-07-07 22:26:26', '2021-07-07 22:26:49'),
(3, 'Finance', 1, '2021-07-07 22:26:56', '2021-07-07 22:26:56'),
(4, 'Corporate', 1, '2021-07-07 22:27:01', '2021-07-07 22:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `bolgs`
--

CREATE TABLE `bolgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_id` int(11) NOT NULL COMMENT 'coming form blogcategories table',
  `header` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `image`, `publication_status`, `created_at`, `updated_at`) VALUES
(64, 'Ray-Ban', 'image/brand_image/1779825008.jpg', 1, '2021-07-25 11:54:28', '2021-07-25 11:54:28'),
(65, 'TomFord', 'image/brand_image/1444000241.jpg', 1, '2021-07-25 11:55:01', '2021-07-25 11:55:01'),
(66, 'Cartier', 'image/brand_image/728800783.jpg', 1, '2021-07-25 11:56:09', '2021-07-25 11:56:09'),
(67, 'Gucci', 'image/brand_image/734708703.jpg', 1, '2021-07-25 11:56:29', '2021-07-25 11:56:29'),
(68, 'Mont Blanc*', 'image/brand_image/1172493270.jpg', 1, '2021-07-25 11:57:21', '2021-07-25 11:57:21'),
(69, 'Calvin Klein', 'image/brand_image/2129522281.jpg', 1, '2021-07-25 11:58:07', '2021-07-25 11:58:07'),
(70, 'Porsche Design', 'image/brand_image/684385331.jpg', 1, '2021-07-25 11:58:44', '2021-07-25 11:58:44'),
(71, 'Nike', 'image/brand_image/335626515.jpg', 1, '2021-07-25 11:59:36', '2021-07-25 11:59:36'),
(72, 'Jaguar', 'image/brand_image/204478267.jpg', 1, '2021-07-25 12:00:20', '2021-07-25 12:00:20'),
(73, 'Freefly', 'image/brand_image/900788524.jpg', 1, '2021-07-25 12:01:28', '2021-07-25 12:01:28'),
(74, 'Oakley', 'image/brand_image/988586331.jpg', 1, '2021-07-25 12:02:00', '2021-07-25 12:02:00'),
(75, 'Gentle-Monster', 'image/brand_image/2030825207.jpg', 1, '2021-07-25 12:02:59', '2021-07-25 12:02:59'),
(76, 'Dior', 'image/brand_image/1175071953.jpg', 1, '2021-07-25 12:03:28', '2021-07-25 12:03:28'),
(77, 'Emporia Armani', 'image/brand_image/1900487859.jpg', 1, '2021-07-25 12:05:03', '2021-07-25 12:05:03'),
(78, 'Police', 'image/brand_image/1820352095.jpg', 1, '2021-07-25 12:05:50', '2021-07-25 12:05:50'),
(79, 'Danmac', 'image/brand_image/346488632.jpg', 1, '2021-07-25 12:06:29', '2021-07-25 12:06:29'),
(80, 'Carrera', 'image/brand_image/1600154034.jpg', 1, '2021-07-25 12:07:25', '2021-07-25 12:07:25'),
(81, 'Marc Jacobs', 'image/brand_image/1044161524.jpg', 1, '2021-07-25 12:08:05', '2021-07-25 12:08:05'),
(82, 'Burberry', 'image/brand_image/842624664.jpg', 1, '2021-07-25 12:08:53', '2021-07-25 12:08:53'),
(83, 'Fendi', 'image/brand_image/136455774.jpg', 1, '2021-07-25 12:11:55', '2021-07-25 12:11:55'),
(84, 'Chanel', 'image/brand_image/253316498.jpg', 1, '2021-07-25 12:13:13', '2021-07-25 12:13:13'),
(85, 'Prada', 'image/brand_image/2040124451.jpg', 1, '2021-07-25 12:13:59', '2021-07-25 12:13:59'),
(86, 'Reebok', 'image/brand_image/484719973.jpg', 1, '2021-07-25 12:15:55', '2021-07-25 12:15:55'),
(87, 'Lous Vuitton', 'image/brand_image/898390327.jpg', 1, '2021-07-25 12:16:30', '2021-07-25 12:16:30'),
(88, 'Sunglass Hut', 'image/brand_image/186400689.jpg', 1, '2021-07-25 12:22:42', '2021-07-25 12:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_category` tinyint(4) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `special_category`, `image`, `publication_status`, `created_at`, `updated_at`) VALUES
(21, 'Men\'s', 1, 'image/category_image/1452521118.jpg', 1, '2021-07-15 13:52:02', '2021-07-15 13:52:02'),
(22, 'Women\'s', 1, 'image/category_image/1278555785.jpg', 1, '2021-07-15 13:52:29', '2021-07-15 13:52:29'),
(23, 'Kid\'s', 1, 'image/category_image/513449758.jpg', 1, '2021-07-15 13:53:25', '2021-07-15 13:53:25'),
(24, 'Contact Lens', 1, 'image/category_image/372571624.jpg', 1, '2021-07-15 14:07:19', '2021-07-15 14:07:19'),
(25, 'Anti Blue Light Frame', 1, 'image/category_image/59841623.jpg', 1, '2021-07-15 14:15:27', '2021-07-15 14:16:50'),
(26, 'Transparent Frame', 1, 'image/category_image/207527447.jpg', 1, '2021-07-15 14:18:00', '2021-07-15 14:18:00'),
(27, 'Nigh-vision Glass', 1, 'image/category_image/1966063548.jpg', 1, '2021-07-15 14:24:28', '2021-07-15 14:24:28'),
(28, 'Sports glass', 1, 'image/category_image/2144142971.jpg', 1, '2021-07-15 14:28:22', '2021-07-15 14:28:22');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `color_code`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'red', '#B02A26', 1, '2021-06-16 00:06:19', '2021-06-16 00:06:19'),
(4, 'yellow', '#FFD800', 1, '2021-06-16 00:23:42', '2021-06-16 00:23:42'),
(5, 'black', '#000', 1, '2021-07-15 08:38:03', '2021-07-15 08:38:03'),
(6, 'Light grey', '#43464B', 1, '2021-07-25 14:29:57', '2021-07-25 14:29:57'),
(7, 'Light BLUE', '#87CEFA', 1, '2021-07-25 14:44:54', '2021-07-25 14:44:54'),
(8, 'brown shade', '#a55c1b', 1, '2021-07-25 15:07:53', '2021-07-25 15:07:53'),
(9, 'White', '#FFFFFF', 1, '2021-07-25 15:10:42', '2021-07-25 15:10:42'),
(10, 'Blossom Pink', '#F9B7FF', 1, '2021-07-25 15:11:29', '2021-07-25 15:11:29'),
(11, 'Purple Navy', '#4E5180', 1, '2021-07-25 15:12:24', '2021-07-25 15:12:24'),
(12, 'OrangeRed', '#FF4500', 1, '2021-07-25 15:13:48', '2021-07-25 15:13:48'),
(13, 'SpringGreen', '#00FF7F', 1, '2021-07-25 15:14:56', '2021-07-25 15:14:56'),
(14, 'Platinum', '#E5E4E2', 1, '2021-07-25 15:16:29', '2021-07-25 15:16:29'),
(15, 'Aquamarine', '#7FFD4', 1, '2021-07-25 16:40:41', '2021-07-25 16:40:41'),
(16, 'Blue Green', '#7BCCB5', 1, '2021-07-25 16:42:12', '2021-07-25 16:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE `compares` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, '1', '11', '2021-07-08 07:57:10', '2021-07-08 07:57:10'),
(2, '1', '10', '2021-07-08 08:02:46', '2021-07-08 08:02:46'),
(3, '1', '125', '2021-11-19 22:35:26', '2021-11-19 22:35:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youTube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `phone_1`, `phone_2`, `phone_3`, `phone_4`, `phone_5`, `email`, `email_1`, `facebook`, `twitter`, `instagram`, `pinterest`, `linkedIn`, `youTube`, `address`, `map`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, '+8801575050037', NULL, NULL, NULL, NULL, 'care@sunglasshut.com.bd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '44/1 Becharum Dewry Dhaka Other,\r\n1212 Bangladesh.', NULL, 1, '2021-08-02 04:29:18', '2021-08-02 04:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `discount_type`, `amount`, `cart_value`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'OFF6', 'Percent', '10', '1000', '1', '2021-08-09 23:10:41', '2021-08-15 00:37:20'),
(3, 'OFF5', 'Fixed', '150', '1000', '1', '2021-08-10 06:49:39', '2021-08-11 08:45:04');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_displays`
--

CREATE TABLE `coupon_displays` (
  `id` bigint(20) NOT NULL,
  `text` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coupon_displays`
--

INSERT INTO `coupon_displays` (`id`, `text`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, '<p><span style=\"color: #0B0809;font-size: 15px\">New Customer? Get <b>5%</b> discount use <b> off58 </b> this code</span></p>', 1, '2021-11-05 23:37:29', '2021-11-06 00:19:57'),
(3, '<p>dfnbgfn<br></p>', 0, '2021-11-06 00:47:14', '2021-11-06 01:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_number_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `customer_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `mobile_number`, `mobile_number_2`, `date_of_birth`, `customer_image`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Jafor H. Rabbi', 'ai@gmail.com', '$2y$10$IkF1Rs4FSLmwl1yNo5KJD.Fc8UvakeGyQkB4LBTVtnC1NA3/lZGbK', '01671338424', NULL, NULL, NULL, 'fhfghfgh4', '2020-08-23 01:28:59', '2020-09-05 14:11:32'),
(2, 'Jafor hosen Rabbi', 'ai1@gmail.com', '$2y$10$X4/jnZpFNEM/7UcDl3FEvOolmuvYyE1HhTbk.a.I.LbB.AA0LYdGO', '01753851666', NULL, NULL, NULL, 'asdfsadf', '2020-08-23 01:30:52', '2020-08-23 01:30:52'),
(3, 'foysal', 'ai7@gmail.com', '$2y$10$03ZIJXkQLktJAIZPO8yuMula.CDCFaVVmFhZGZY3CoLN7R2R34KEu', '0122344509', NULL, NULL, NULL, NULL, '2020-09-07 22:25:13', '2020-09-07 22:25:13'),
(4, 'Rabbi', 'aasdi@gmail.com', '$2y$10$zyY9lRDoAXtRL4sRNbsdFeTigh8qDQs8uHPMMBy1eVTUyp6bpEAYW', '01822866004', NULL, NULL, NULL, NULL, '2020-09-08 00:08:39', '2020-09-08 00:08:39'),
(5, 'Jafor', 'su@gmail.com', '$2y$10$C99blHKH3vHdTB1Yr3DZ2.59ItQvIgatJLEYBg8KyF3tql6uhEYoO', '0122344504', NULL, NULL, NULL, NULL, '2020-09-08 04:11:37', '2020-09-08 04:11:37'),
(6, 'Abir', 'habib97.cs@gmail.com', '$2y$10$vbU.ENUajJbelCGxl/l7t.4qdi.w7xCMlHhJfEja3MVg.WNf0v7HC', '01961584280', NULL, NULL, NULL, NULL, '2020-09-15 02:36:05', '2020-09-15 02:36:05'),
(7, 'Armaan', 'armaan.wub@gmail.com', '$2y$10$XGmaxZBlBQH2AUxe4y70nuW8M/QVQVnNwCrkeke7/qnf58Ohl1cOW', '01778041629', NULL, NULL, NULL, NULL, '2020-10-14 01:05:40', '2020-10-14 01:05:40'),
(9, 'hufytfdtry', 'ai2@gmail.com', '$2y$10$/lU38bFYASep.6nTaKV0beWRvf0ep3lOv7C1L6XiIhWE/sky1IfZ6', '980890789', NULL, NULL, NULL, NULL, '2021-01-28 03:31:40', '2021-01-28 03:31:40'),
(10, 'Shahadot Hossain Chowdhury', 'onu55@yahoo.com', '$2y$10$V.5zcz.mtggDkzbogADqY.eMkpahl0qpnSH.xfArbabs0835gi38e', '01878500695', NULL, NULL, NULL, NULL, '2021-02-23 00:31:59', '2021-02-23 00:31:59'),
(11, 'Foysal Ahmad', 'admin@gmail.com', '$2y$10$qogF80yFmeScBkGYm0h9JeTXHa8UC0xyrOlgC4EU5vTwviLNQfD9a', '01817530903', NULL, NULL, NULL, NULL, '2021-07-15 03:56:16', '2021-07-15 03:56:16'),
(12, 'afridi rokon', 'saafridi07@gmail.com', '$2y$10$pmefuII82zXobfDlYG/9IOi.RFgBcebsTgfP.nLbyhig0LqIiFaCu', '01760051704', NULL, NULL, NULL, NULL, '2021-07-17 16:29:53', '2021-07-17 16:29:53'),
(13, 'afridi rokon', 'saafridi07@gmail.com', '$2y$10$kgzVz9irDS2hdPbyWnOEB.5qcs6H3hiVWiyEg9UlWlcMUNAij3jW.', '01760051704', NULL, NULL, NULL, NULL, '2021-08-02 06:58:34', '2021-08-02 06:58:34'),
(14, 'afridi rokon', 'sunglasshutbd01@gmail.com', '$2y$10$Y/AUS6Vr1zgOvYBmBbtuUuijkluwaUzS7A6vu4AzAXvNuVDki05Ee', '01760051704', NULL, NULL, NULL, NULL, '2021-08-02 07:55:35', '2021-08-02 07:55:35'),
(15, 'afridi rokon', 'ai@gmail.com', '$2y$10$hLWsPN4.4T2IkAqF5Khhc.oXNN1VVF5ra7vIlshtIynXM73Mwdn06', '01760051704', NULL, NULL, NULL, NULL, '2021-08-05 16:00:09', '2021-08-05 16:00:09'),
(16, 'afridi rokon', 'ai@gmail.com', '$2y$10$Z0nlHB.UywBDaocxfh6B3.WkrLzx20BahkMIGj3lJWIP1x40MJJOK', '01760051704', NULL, NULL, NULL, NULL, '2021-08-06 06:15:04', '2021-08-06 06:15:04'),
(17, 'afridi rokon', 'ai@gmail.com', '$2y$10$1UNlfix6KgEllisRrvD4T.T0hf0og8fn8LXemomhJcikAEM.e2l7C', '01760051704', NULL, NULL, NULL, NULL, '2021-08-08 10:15:29', '2021-08-08 10:15:29'),
(18, 'afridi rokon', 'ai@gmail.com', '$2y$10$44zxclOJY8eMxvJ.aG8IsuTbekcO3JVRw.Nz.TZ2dxueggl158hxG', '01760051704', NULL, NULL, NULL, NULL, '2021-08-08 15:41:42', '2021-08-08 15:41:42'),
(19, 'afridi rokon', 'ai@gmail.com', '$2y$10$640g4jIukgpyRyOHijOl5O6PvXPkm5oE5WZiGXwKkl7jxFfHWhj/6', '01760051704', NULL, NULL, NULL, NULL, '2021-08-14 13:53:13', '2021-08-14 13:53:13'),
(20, 'afridi rokon', 'ai@gmail.com', '$2y$10$vFJmIweuDW4Ly4av5iqY0uFGrb75eJhJSF6yz6ph.dxzHqyFAlp7K', '01760051704', NULL, NULL, NULL, NULL, '2021-08-16 14:58:26', '2021-08-16 14:58:26'),
(21, 'afridi rokon', 'saafridi07@gmail.com', '$2y$10$owmKbFJR7W9lqrhwgCCdE.XQNpwavdnsrUpddbz2lT7Y2c9yhO67O', '01760051704', NULL, NULL, NULL, NULL, '2021-08-21 06:43:04', '2021-08-21 06:43:04'),
(22, 'afridi rokon', 'ai@gmail.com', '$2y$10$4/F6Ut3Rv1aqoD/Ln2WbVef6EkCnvgqZTxJrlSqQzFXl71Qhey0f2', '01760051704', NULL, NULL, NULL, NULL, '2021-08-22 02:52:48', '2021-08-22 02:52:48'),
(23, 'afridi rokon', 'ai@gmail.com', '$2y$10$cx23dy9rASPNsiRuEdFXGeU6T308q6R2sNbtgSAO3.aAyfob/XyIK', '01760051704', NULL, NULL, NULL, NULL, '2021-08-25 13:23:19', '2021-08-25 13:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `division`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 1, '2021-08-07 21:59:32', '2021-08-07 22:54:19'),
(2, 'Comilla', 1, '2021-08-07 22:00:28', '2021-08-07 22:00:28'),
(3, 'Dhaka -2', 0, '2021-08-08 07:06:25', '2021-08-08 11:41:27'),
(5, 'Faridpur', 1, '2021-08-08 15:29:37', '2021-08-08 15:29:37'),
(6, 'Gazipur', 1, '2021-08-08 15:39:39', '2021-08-08 15:39:39'),
(7, 'Gopalganj', 1, '2021-08-14 14:01:17', '2021-08-14 14:01:17'),
(8, 'Kishoreganj', 1, '2021-08-14 14:08:40', '2021-08-14 14:08:40'),
(9, 'Madaripur', 1, '2021-08-14 14:17:57', '2021-08-14 14:17:57'),
(10, 'Manikganj', 1, '2021-08-14 14:38:28', '2021-08-14 14:38:28'),
(11, 'Munshiganj', 1, '2021-08-14 14:41:25', '2021-08-14 14:41:25'),
(12, 'Narayanganj', 1, '2021-08-14 14:46:54', '2021-08-14 14:46:54'),
(13, 'Norshingdi', 1, '2021-08-15 01:25:41', '2021-08-15 01:25:41'),
(15, 'Rajbari', 1, '2021-08-25 13:25:01', '2021-08-25 13:25:01'),
(16, 'Shariatpur', 1, '2021-08-25 13:28:44', '2021-08-25 13:28:44'),
(17, 'Tangail', 1, '2021-08-25 13:40:03', '2021-08-25 13:40:03'),
(18, 'Barguna', 1, '2021-08-25 13:46:06', '2021-08-25 13:46:06'),
(19, 'Barisal', 1, '2021-08-25 13:54:07', '2021-08-25 13:54:07'),
(20, 'Bhola', 1, '2021-08-25 14:09:49', '2021-08-25 14:09:49'),
(21, 'Jhalokathi', 1, '2021-08-25 14:19:55', '2021-08-25 14:19:55'),
(22, 'Patuakhali', 1, '2021-08-25 14:29:44', '2021-08-25 14:29:44'),
(23, 'Perojpur', 1, '2021-08-25 14:33:45', '2021-08-25 14:33:45'),
(24, 'Bandarban', 1, '2021-08-26 12:34:31', '2021-08-26 12:34:31'),
(25, 'Brahmanbaria', 1, '2021-08-26 13:10:21', '2021-08-26 13:10:21'),
(26, 'Chandpur', 1, '2021-08-26 13:57:12', '2021-08-26 13:57:12'),
(27, 'Chittagong', 1, '2021-08-26 14:00:42', '2021-08-26 14:00:42'),
(29, 'Cox\'s Bazar', 1, '2021-08-26 16:13:42', '2021-08-26 16:13:42'),
(30, 'Feni', 1, '2021-08-27 13:22:15', '2021-08-27 13:22:15'),
(31, 'Khagrachari', 1, '2021-08-27 13:25:39', '2021-08-27 13:25:39'),
(32, 'Laksmipur', 1, '2021-08-27 13:31:39', '2021-08-27 13:31:39'),
(33, 'Noakhali', 1, '2021-08-27 13:43:39', '2021-08-27 13:43:39'),
(34, 'Rangamati', 1, '2021-08-27 13:52:55', '2021-08-27 13:52:55'),
(35, 'Bagerhat', 1, '2021-08-27 14:08:25', '2021-08-27 14:08:25'),
(36, 'Chuadanga', 1, '2021-08-27 14:38:03', '2021-08-27 14:38:03'),
(37, 'Jessore', 1, '2021-08-27 14:40:22', '2021-08-27 14:40:22'),
(38, 'Jhenaidah', 1, '2021-08-27 14:43:43', '2021-08-27 14:43:43'),
(39, 'Khulna', 1, '2021-08-27 14:48:10', '2021-08-27 14:48:10'),
(40, 'Kushtia', 1, '2021-08-27 14:54:55', '2021-08-27 14:54:55'),
(41, 'Magura', 1, '2021-08-27 15:21:08', '2021-08-27 15:21:08'),
(42, 'Meherpur', 1, '2021-08-27 15:35:47', '2021-08-27 15:35:47'),
(43, 'Narail', 1, '2021-08-27 15:37:26', '2021-08-27 15:37:26'),
(44, 'Satkhira', 1, '2021-08-27 15:42:10', '2021-08-27 15:42:10'),
(45, 'Jamalpur', 1, '2021-08-27 16:01:50', '2021-08-27 16:01:50'),
(46, 'Mymensingh', 1, '2021-08-27 16:09:29', '2021-08-27 16:09:29'),
(47, 'Netrokona', 1, '2021-08-27 16:18:57', '2021-08-27 16:18:57'),
(48, 'Sherpur', 1, '2021-08-27 16:23:06', '2021-08-27 16:23:06'),
(49, 'Bogra', 1, '2021-08-27 16:30:52', '2021-08-27 16:30:52'),
(50, 'Chapai Nawabganj', 1, '2021-08-27 16:38:26', '2021-08-27 16:38:26'),
(51, 'Joypurhat', 1, '2021-08-27 16:41:23', '2021-08-27 16:41:23'),
(52, 'Naogaon', 1, '2021-08-27 16:43:30', '2021-08-27 16:43:30'),
(53, 'Natore', 1, '2021-08-27 16:47:40', '2021-08-27 16:47:40'),
(54, 'Pabna', 1, '2021-08-28 12:52:52', '2021-08-28 12:52:52'),
(55, 'Rajshahi', 1, '2021-08-28 12:56:27', '2021-08-28 12:56:27'),
(56, 'Rangpur', 1, '2021-08-28 13:29:29', '2021-08-28 13:29:29'),
(57, 'Sirajganj', 1, '2021-08-28 13:34:47', '2021-08-28 13:34:47'),
(58, 'Dinajpur', 1, '2021-08-28 13:38:45', '2021-08-28 13:38:45'),
(59, 'Gaibandha', 1, '2021-08-28 13:58:49', '2021-08-28 13:58:49'),
(60, 'Kurigram', 1, '2021-08-28 14:25:39', '2021-08-28 14:25:39'),
(61, 'Lalmonirhat', 1, '2021-08-28 14:56:20', '2021-08-28 14:56:20'),
(62, 'Nilphamari', 1, '2021-08-28 14:58:51', '2021-08-28 14:58:51'),
(63, 'Panchagarh', 1, '2021-08-28 15:04:10', '2021-08-28 15:04:10'),
(64, 'Thakurgaon', 1, '2021-08-28 15:08:52', '2021-08-28 15:08:52'),
(65, 'Habiganj', 1, '2021-09-03 14:45:17', '2021-09-03 14:45:17'),
(66, 'Moulvibazar', 1, '2021-09-03 14:56:21', '2021-09-03 14:56:21'),
(67, 'Sunamganj', 1, '2021-09-03 14:59:45', '2021-09-03 14:59:45'),
(68, 'Sylhet', 1, '2021-09-03 15:14:05', '2021-09-03 15:14:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cam_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cam_date` date NOT NULL,
  `cam_time` time NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_items`
--

CREATE TABLE `flash_sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `flash_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `flash_sale_item` tinyint(4) DEFAULT NULL,
  `flash_sale_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_items`
--

INSERT INTO `flash_sale_items` (`id`, `flash_id`, `product_id`, `flash_sale_item`, `flash_sale_price`, `created_at`, `updated_at`) VALUES
(261, 152, 15, 15, '400', '2021-07-04 23:56:51', '2021-07-04 23:56:51'),
(262, 152, 16, 16, '300', '2021-07-04 23:56:51', '2021-07-04 23:56:51'),
(263, 152, 17, 17, '200', '2021-07-04 23:56:51', '2021-07-04 23:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `free_shippings`
--

CREATE TABLE `free_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `free_shipping` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `free_shippings`
--

INSERT INTO `free_shippings` (`id`, `free_shipping`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, '2021-08-16 15:01:56');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `third_header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` int(6) DEFAULT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `first_header`, `last_header`, `third_header`, `url`, `section`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'admin/gallery_image/578942130.jpg', 'Be Safe In Style', 'NIGHT-VISION GLASSES', 'Minimum Discount up to 30%', 'https://aisoftware-solutions.com/sunglasshutbd/menu/27/Nigh-vision%20Glass', 3, 1, '2021-07-10 09:43:01', '2021-08-26 16:59:01'),
(2, 'admin/gallery_image/800756966.jpg', 'Look Hot With Cool Eyeglasses', 'Anti-Blue Glasses', 'Starts From 450 Minimum 30% Discount', 'https://aisoftware-solutions.com/sunglasshutbd/menu/25/Anti%20Blue%20Light%20Frame', 4, 1, '2021-07-10 09:44:20', '2021-08-26 16:57:24'),
(5, 'admin/gallery_image/1454725644.jpg', 'Stay focused, stay stylish, stay shady', 'TRANSPARERNT FRAME', 'From 350 , Stock Limited', 'https://aisoftware-solutions.com/sunglasshutbd/menu/26/Transparent%20Frame', 5, 1, '2021-07-10 09:45:41', '2021-08-26 16:57:52'),
(6, 'admin/gallery_image/1728149108.jpg', 'Look Good Behave Decent', 'COLOR CONTACT LENSES', 'From 350 With Best Brands', 'https://aisoftware-solutions.com/sunglasshutbd/menu/24/Contact%20Lens', 6, 1, '2021-07-10 09:46:23', '2021-08-26 16:58:14'),
(8, 'admin/gallery_image/953487548.jpg', 'MENS  SUNGLASSES', 'FOR HIM', 'Limited stock', 'https://aisoftware-solutions.com/sunglasshutbd/menu/21/Men%27s', 1, 1, '2021-07-24 12:17:04', '2021-08-26 16:59:20'),
(9, 'admin/gallery_image/1874463543.jpg', 'WOMEN\'S SUNGLASS', 'FOR HER', 'Minimum Discount up to 30%', 'https://aisoftware-solutions.com/sunglasshutbd/menu/22/Women%27s', 2, 1, '2021-07-24 12:24:01', '2021-08-26 16:59:37'),
(10, 'admin/gallery_image/493878612.jpg', 'MENS  SUNGLASSES', 'FOR HIM', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/menu/21/Men%27s', 1, 1, '2021-08-01 16:46:30', '2021-08-01 16:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `lens_prices`
--

CREATE TABLE `lens_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lens_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lens_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lens_prices`
--

INSERT INTO `lens_prices` (`id`, `lens_id`, `lens_price`, `publication_status`, `created_at`, `updated_at`) VALUES
(5, '2', '600', '1', '2021-06-26 06:06:22', '2021-06-26 06:06:22'),
(6, '1', '650', '1', '2021-06-26 06:06:36', '2021-06-26 06:06:36'),
(8, NULL, '500', '1', '2021-06-26 06:08:19', '2021-06-26 06:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `lens_types`
--

CREATE TABLE `lens_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lens_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lens_types`
--

INSERT INTO `lens_types` (`id`, `lens_type`, `description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Crizal Lens', '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td>Crizal UV</td><td>100% UV Protection, Anti-Reflective</td></tr><tr><td>Crizal Forte UV</td><td>100% UV Protection, Anti-Reflective, Scratch, Smudge and water resistant, Dry</td></tr><tr><td>Crizal Prevencia</td><td>All of the features above + Anti-blue coating</td></tr></tbody></table><p><br></p>', 1, '2021-06-26 03:36:37', '2021-06-26 03:36:37'),
(2, 'Standard Lens', '<p><br></p><table class=\"table table-bordered\"><tbody><tr><td>No Coating</td><td>These lenses have no coating &amp; no UV protection. There will only be your desired power attached to these</td></tr><tr><td>Multi-Coated</td><td>These lenses have Anti-Reflective Coating on both sides. They also have UV protection as well.</td></tr><tr><td>Anti-Blue</td><td>Anti-Blue lenses have all the features of multi-coated and they block blue light as well.</td></tr></tbody></table><p><br></p>', 1, '2021-06-26 03:53:43', '2021-06-26 03:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `image`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'image/logo_image/2044104913.png', 1, '2021-08-02 04:16:36', '2021-08-02 04:16:36');

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
(4, '2020_08_17_073313_create_categories_table', 2),
(5, '2020_08_17_073551_create_sub_categories_table', 2),
(6, '2020_08_18_043448_create_brands_table', 3),
(7, '2020_08_18_073700_create_sessions_table', 4),
(8, '2020_08_18_080057_create_students_table', 5),
(9, '2020_08_18_101425_create_suppliers_table', 6),
(11, '2020_08_19_101814_create_product_sub_images_table', 8),
(12, '2020_08_23_070736_create_customers_table', 9),
(13, '2020_08_23_114412_create_shippings_table', 10),
(14, '2020_08_24_080524_create_payments_table', 11),
(15, '2020_08_25_060412_create_orders_table', 11),
(16, '2020_08_25_063220_create_order_details_table', 12),
(17, '2020_08_26_064928_create_wishlists_table', 13),
(18, '2020_08_26_182230_create_wish_lists_table', 14),
(19, '2020_09_01_194445_create_sliders_table', 14),
(20, '2020_09_02_112243_create_upload_shops_table', 15),
(23, '2021_01_28_033751_create_pages_table', 18),
(24, '2021_02_10_105021_create_ratings_table', 19),
(25, '2021_06_16_055423_create_colors_table', 19),
(26, '2021_06_16_063743_create_sizes_table', 20),
(27, '2020_08_19_070601_create_products_table', 21),
(28, '2021_06_16_120759_create_product_colors_table', 21),
(29, '2021_06_16_120819_create_product_sizes_table', 21),
(30, '2021_06_26_085417_create_lens_types_table', 22),
(31, '2021_06_26_113049_create_lens_prices_table', 23),
(32, '2021_07_03_155111_create_newsletters_table', 24),
(33, '2021_07_04_123530_create_flash_sales_table', 24),
(34, '2021_07_04_124036_create_flash_sale_items_table', 24),
(35, '2021_01_18_075248_create_bolgs_table', 25),
(36, '2021_07_07_033235_create_blog_categories_table', 25),
(37, '2021_07_07_045240_create_blogs_table', 26),
(38, '2021_07_08_134715_create_compares_table', 27),
(39, '2021_01_27_103941_create_galleries_table', 28),
(40, '2021_07_12_032542_create_shipping_rates_table', 29),
(41, '2021_07_13_083137_create_prescriptions_table', 30),
(42, '2021_07_13_125431_create_product_prices_table', 31);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'foysal1208@gmail.com', '2021-07-11 21:19:13', '2021-07-11 21:19:13'),
(3, 'afridirokon66@gmail.com', '2021-08-02 07:22:05', '2021-08-02 07:22:05'),
(4, 'afridirokon66@gmail.com', '2021-08-02 07:22:16', '2021-08-02 07:22:16'),
(5, 'sajidazamsiddiquey@hotmail.com', '2021-08-02 07:22:50', '2021-08-02 07:22:50'),
(6, 'sajidazamsiddiquey@hotmail.com', '2021-08-02 08:55:38', '2021-08-02 08:55:38'),
(7, 'cosmeticsshopinbd@gmail.com', '2021-08-02 08:56:25', '2021-08-02 08:56:25'),
(8, 'foysal126609@gmail.com', '2021-08-03 22:14:12', '2021-08-03 22:14:12'),
(9, 'foysal126609@gmail.com', '2021-08-03 22:19:12', '2021-08-03 22:19:12'),
(10, 'foysal126609@gmail.com', '2021-08-03 22:21:05', '2021-08-03 22:21:05'),
(11, 'foysal126609@gmail.com', '2021-08-03 22:35:15', '2021-08-03 22:35:15'),
(12, 'foysal126609@gmail.com', '2021-08-03 22:35:44', '2021-08-03 22:35:44'),
(13, 'foysal126609@gmail.com', '2021-08-03 22:39:02', '2021-08-03 22:39:02'),
(14, 'foysal126601@gmail.com', '2021-08-05 07:26:34', '2021-08-05 07:26:34'),
(15, 'foysal126601@gmail.com', '2021-08-05 07:28:19', '2021-08-05 07:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_no` int(11) NOT NULL,
  `order_total` double NOT NULL,
  `discount` float DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0,
  `division` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `payment_id`, `order_no`, `order_total`, `discount`, `status`, `payment_status`, `division`, `area`, `rate`, `created_at`, `updated_at`) VALUES
(26, 6, 29, 27, 2, 60, NULL, 2, 1, '', '', '', '2021-02-20 02:38:11', '2021-02-21 23:45:36'),
(27, 1, 30, 28, 3, 40, NULL, 2, 1, '', '', '', '2021-02-22 02:48:29', '2021-02-21 23:29:06'),
(28, 1, 31, 29, 4, 480, NULL, 2, 1, '', '', '', '2021-01-21 09:31:08', '2021-02-21 23:25:33'),
(30, 7, 33, 31, 6, 987, NULL, 2, 1, '', '', '', '2020-10-17 05:18:15', '2021-02-21 23:29:23'),
(31, 9, 34, 32, 7, 424, NULL, 2, 1, '', '', '', '2021-01-20 09:32:19', '2021-02-21 23:40:34'),
(35, 1, 38, 36, 11, 540, NULL, 2, 1, '', '', '', '2021-02-22 05:06:42', '2021-02-22 05:13:07'),
(36, 1, 39, 37, 12, 1730, NULL, 2, 1, '', '', '', '2021-02-22 08:25:13', '2021-02-22 22:37:32'),
(37, 1, 40, 38, 13, 2871, NULL, 0, 0, '', '', '', '2021-02-22 23:02:09', '2021-02-22 23:02:09'),
(38, 1, 41, 39, 14, 1379, NULL, 0, 0, '', '', '', '2021-02-22 23:45:19', '2021-02-22 23:45:19'),
(39, 10, 42, 40, 15, 328, NULL, 0, 0, '', '', '', '2021-02-23 00:32:51', '2021-02-23 00:32:51'),
(40, 10, 43, 41, 16, 550, NULL, 0, 0, '', '', '', '2021-02-23 00:45:22', '2021-02-23 00:45:22'),
(41, 1, 44, 42, 17, 540, NULL, 2, 1, '', '', '', '2021-03-23 07:01:08', '2021-03-23 07:01:55'),
(42, 1, 46, 44, 18, 1672, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 01:05:28', '2021-07-13 01:05:28'),
(43, 1, 47, 45, 19, 1672, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 01:10:01', '2021-07-13 01:10:01'),
(44, 1, 48, 46, 20, 1672, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 01:12:33', '2021-07-13 01:12:33'),
(45, 1, 49, 47, 21, 1672, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 01:13:08', '2021-07-13 01:13:08'),
(46, 1, 50, 48, 22, 1672, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 01:19:04', '2021-07-13 01:19:04'),
(47, 1, 51, 49, 23, 1672, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 01:21:18', '2021-07-13 01:21:18'),
(48, 1, 52, 50, 24, 1672, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 01:37:22', '2021-07-13 01:37:22'),
(49, 1, 53, 51, 25, 1672, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(50, 1, 54, 52, 26, 160, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 01:38:53', '2021-07-13 01:38:53'),
(51, 1, 55, 53, 27, 190, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 01:39:58', '2021-07-13 01:39:58'),
(52, 1, 56, 54, 28, 220, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 01:41:12', '2021-07-13 01:41:12'),
(53, 1, 57, 55, 29, 440, NULL, 0, 0, '', 'Demra', '200', '2021-07-13 01:42:19', '2021-07-13 01:42:19'),
(54, 1, 58, 56, 30, 460, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(55, 1, 59, 57, 31, 160, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 01:45:40', '2021-07-13 01:45:40'),
(56, 1, 60, 58, 32, 160, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 01:47:57', '2021-07-13 01:47:57'),
(57, 1, 62, 60, 33, 190, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 01:53:21', '2021-07-13 01:53:21'),
(58, 1, 63, 61, 34, 220, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 01:54:16', '2021-07-13 01:54:16'),
(59, 1, 64, 62, 35, 190, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 01:57:37', '2021-07-13 01:57:37'),
(60, 1, 65, 63, 36, 120, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 01:59:40', '2021-07-13 01:59:40'),
(61, 1, 66, 64, 37, 726, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 02:02:02', '2021-07-13 02:02:02'),
(62, 1, 67, 65, 38, 1332, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 02:03:41', '2021-07-13 02:03:41'),
(63, 1, 68, 66, 39, 1332, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 02:04:22', '2021-07-13 02:04:22'),
(64, 1, 69, 67, 40, 1302, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 02:10:32', '2021-07-13 02:10:32'),
(65, 1, 70, 68, 41, 1302, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 02:11:26', '2021-07-13 02:11:26'),
(66, 1, 71, 69, 42, 1302, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 02:12:25', '2021-07-13 02:12:25'),
(67, 1, 72, 70, 43, 1332, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 02:13:54', '2021-07-13 02:13:54'),
(68, 1, 74, 72, 44, 1302, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 02:16:29', '2021-07-13 02:16:29'),
(69, 1, 75, 73, 45, 1332, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 02:18:29', '2021-07-13 02:18:29'),
(70, 1, 76, 74, 46, 816, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 02:20:25', '2021-07-13 02:20:25'),
(71, 1, 77, 75, 47, 660, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 02:44:51', '2021-07-13 02:44:51'),
(72, 1, 78, 76, 48, 690, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 02:46:15', '2021-07-13 02:46:15'),
(73, 1, 79, 77, 49, 690, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 02:46:58', '2021-07-13 02:46:58'),
(74, 1, 80, 78, 50, 160, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 02:51:07', '2021-07-13 02:51:07'),
(75, 1, 81, 79, 51, 120, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 03:14:52', '2021-07-13 03:14:52'),
(76, 1, 82, 80, 52, 120, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 03:15:20', '2021-07-13 03:15:20'),
(77, 1, 83, 81, 53, 220, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 03:16:02', '2021-07-13 03:16:02'),
(78, 1, 84, 82, 54, 120, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 03:16:53', '2021-07-13 03:16:53'),
(79, 1, 85, 83, 55, 120, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 03:19:37', '2021-07-13 03:19:37'),
(80, 1, 86, 84, 56, 120, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 03:22:00', '2021-07-13 03:22:00'),
(81, 1, 87, 85, 57, 190, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 03:23:45', '2021-07-13 03:23:45'),
(82, 1, 88, 86, 58, 300, NULL, 2, 1, '', 'Dhaka', '100', '2021-07-13 03:27:59', '2021-07-13 03:39:03'),
(83, 1, 89, 87, 59, 310, NULL, 2, 1, '', 'Dhanmondi', '70', '2021-07-13 03:29:02', '2021-07-13 03:38:27'),
(84, 1, 90, 88, 60, 430, NULL, 0, 0, '', 'Demra', '200', '2021-07-13 06:23:12', '2021-07-13 06:23:12'),
(85, 1, 91, 89, 61, 330, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 06:26:10', '2021-07-13 06:26:10'),
(86, 1, 92, 90, 62, 330, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 06:28:12', '2021-07-13 06:28:12'),
(87, 1, 93, 91, 63, 240, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 06:30:34', '2021-07-13 06:30:34'),
(88, 1, 94, 92, 64, 380, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 06:57:07', '2021-07-13 06:57:07'),
(89, 1, 95, 93, 65, 380, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 06:57:36', '2021-07-13 06:57:36'),
(90, 1, 96, 94, 66, 210, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 06:58:46', '2021-07-13 06:58:46'),
(91, 1, 97, 95, 67, 210, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 07:08:11', '2021-07-13 07:08:11'),
(92, 1, 98, 96, 68, 190, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 07:26:31', '2021-07-13 07:26:31'),
(93, 1, 99, 97, 69, 170, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 07:29:16', '2021-07-13 07:29:16'),
(94, 1, 100, 98, 70, 170, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 07:29:34', '2021-07-13 07:29:34'),
(95, 1, 101, 99, 71, 300, NULL, 0, 0, '', 'Demra', '200', '2021-07-13 07:30:19', '2021-07-13 07:30:19'),
(96, 1, 102, 100, 72, 200, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 07:33:54', '2021-07-13 07:33:54'),
(97, 1, 104, 102, 73, 716, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 08:06:32', '2021-07-13 08:06:32'),
(98, 1, 105, 103, 74, 1282, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 08:29:28', '2021-07-13 08:29:28'),
(99, 1, 106, 104, 75, 2682, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 09:22:07', '2021-07-13 09:22:07'),
(100, 1, 108, 106, 76, 2502, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 09:53:06', '2021-07-13 09:53:06'),
(101, 1, 109, 107, 77, 1382, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 09:55:50', '2021-07-13 09:55:50'),
(102, 1, 110, 108, 78, 150, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 10:18:34', '2021-07-13 10:18:34'),
(103, 1, 111, 109, 79, 1472, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-13 10:19:39', '2021-07-13 10:19:39'),
(104, 1, 112, 110, 80, 710, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-13 22:40:41', '2021-07-13 22:40:41'),
(105, 1, 113, 111, 81, 240, NULL, 0, 0, '', 'Demra 2', '150', '2021-07-15 08:58:20', '2021-07-15 08:58:20'),
(106, 12, 116, 114, 82, 1100, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-17 16:33:11', '2021-07-17 16:33:11'),
(107, 12, 117, 115, 83, 1200, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-17 16:43:32', '2021-07-17 16:43:32'),
(108, 1, 120, 118, 84, 1166, NULL, 0, 0, '', 'Dhaka', '100', '2021-07-19 07:08:05', '2021-07-19 07:08:05'),
(109, 1, 121, 119, 85, 570, NULL, 0, 0, '', 'Dhanmondi', '70', '2021-07-19 10:10:23', '2021-07-19 10:10:23'),
(110, 13, 123, 121, 86, 1550, NULL, 0, 0, '', 'Demra', '200', '2021-08-02 07:01:40', '2021-08-02 07:01:40'),
(111, 14, 125, 123, 87, 1200, NULL, 0, 0, '', 'Dhaka', '100', '2021-08-02 07:57:29', '2021-08-02 07:57:29'),
(112, 14, 127, 125, 88, 400, NULL, 0, 0, '', 'Dhaka', '100', '2021-08-02 09:04:08', '2021-08-02 09:04:08'),
(113, 1, 128, 126, 89, 650, NULL, 0, 0, '', 'Dhaka', '100', '2021-08-05 07:17:52', '2021-08-05 07:17:52'),
(114, 1, 129, 127, 90, 529, NULL, 0, 0, '', 'Brahmanpara', '130', '2021-08-06 00:18:42', '2021-08-06 00:18:42'),
(115, 1, 130, 128, 91, 580, NULL, 0, 0, '1', 'Debidwar', '130', '2021-08-08 06:10:38', '2021-08-08 06:10:38'),
(116, 1, 131, 129, 92, 130, NULL, 0, 0, '1', 'Parshuram', '130', '2021-08-08 06:43:06', '2021-08-08 06:43:06'),
(117, 1, 132, 130, 93, 580, NULL, 0, 0, '1', 'Barura', '130', '2021-08-08 07:05:35', '2021-08-08 07:05:35'),
(118, 17, 133, 131, 94, 580, NULL, 0, 0, '2', 'Manoharganj', '130', '2021-08-08 10:16:59', '2021-08-08 10:16:59'),
(119, 17, 134, 132, 95, 1196, NULL, 0, 0, '2', 'Manoharganj', '130', '2021-08-08 10:26:00', '2021-08-08 10:26:00'),
(120, 1, 135, 133, 96, 1200, 150, 0, 0, '1', 'Kallyanpur', 'Free', '2021-08-14 03:15:18', '2021-08-14 03:15:18'),
(121, 1, 136, 134, 97, 1685, 180, 0, 0, '1', 'Kallyanpur', '65', '2021-08-14 03:28:46', '2021-08-14 03:28:46'),
(122, 1, 137, 135, 98, 515, NULL, 0, 0, '1', 'Gulshan', '65', '2021-09-11 23:06:08', '2021-09-11 23:06:08'),
(123, 1, 138, 136, 99, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-12 00:10:33', '2021-09-12 00:10:33'),
(124, 1, 139, 137, 100, 580, NULL, 0, 0, '11', 'Serajdikhan', '130', '2021-09-12 00:17:09', '2021-09-12 00:17:09'),
(125, 1, 140, 138, 101, 580, NULL, 0, 0, '11', 'Serajdikhan', '130', '2021-09-12 00:18:48', '2021-09-12 00:18:48'),
(126, 1, 141, 139, 102, 580, NULL, 0, 0, '11', 'Serajdikhan', '130', '2021-09-12 00:19:15', '2021-09-12 00:19:15'),
(127, 1, 142, 140, 103, 650, NULL, 0, 0, '2', 'Barura', '100', '2021-09-12 00:21:18', '2021-09-12 00:21:18'),
(128, 1, 143, 141, 104, 550, NULL, 0, 0, '5', 'Bhanga', '100', '2021-09-12 00:31:23', '2021-09-12 00:31:23'),
(129, 1, 144, 142, 105, 550, NULL, 0, 0, '5', 'Bhanga', '100', '2021-09-12 00:34:15', '2021-09-12 00:34:15'),
(130, 1, 145, 143, 106, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-12 00:34:48', '2021-09-12 00:34:48'),
(131, 1, 146, 144, 107, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-12 00:35:50', '2021-09-12 00:35:50'),
(132, 1, 147, 145, 108, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-12 00:36:20', '2021-09-12 00:36:20'),
(133, 1, 148, 146, 109, 800, NULL, 0, 0, '5', 'Bhanga', '100', '2021-09-12 00:38:35', '2021-09-12 00:38:35'),
(134, 1, 149, 147, 110, 800, NULL, 0, 0, '5', 'Bhanga', '100', '2021-09-12 00:43:56', '2021-09-12 00:43:56'),
(135, 1, 150, 148, 111, 550, NULL, 0, 0, '5', 'Bhanga', '100', '2021-09-12 00:46:19', '2021-09-12 00:46:19'),
(136, 1, 151, 149, 112, 550, NULL, 0, 0, '5', 'Bhanga', '100', '2021-09-12 00:47:32', '2021-09-12 00:47:32'),
(137, 1, 152, 150, 113, 515, NULL, 0, 0, '1', 'Kallyanpur', '65', '2021-09-12 00:48:10', '2021-09-12 00:48:10'),
(138, 1, 153, 151, 114, 800, NULL, 0, 0, '2', 'Barura', '100', '2021-09-12 00:48:49', '2021-09-12 00:48:49'),
(139, 1, 154, 152, 115, 580, NULL, 0, 0, '8', 'Hosainpur', '130', '2021-09-12 00:49:24', '2021-09-12 00:49:24'),
(140, 1, 155, 153, 116, 550, NULL, 0, 0, '5', 'Bhanga', '100', '2021-09-12 01:32:12', '2021-09-12 01:32:12'),
(141, 1, 156, 154, 117, 515, NULL, 0, 0, '1', 'Kallyanpur', '65', '2021-09-14 22:09:12', '2021-09-14 22:09:12'),
(142, 1, 157, 155, 118, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-14 22:21:34', '2021-09-14 22:21:34'),
(143, 1, 158, 156, 119, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-14 22:23:07', '2021-09-14 22:23:07'),
(144, 1, 159, 157, 120, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-14 22:23:27', '2021-09-14 22:23:27'),
(145, 1, 160, 158, 121, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-14 22:23:47', '2021-09-14 22:23:47'),
(146, 1, 161, 159, 122, 650, NULL, 0, 0, '12', 'Bandar (Narayanganj)', '100', '2021-09-14 22:47:48', '2021-09-14 22:47:48'),
(147, 1, 162, 160, 123, 650, NULL, 0, 0, '12', 'Bandar (Narayanganj)', '100', '2021-09-14 22:50:24', '2021-09-14 22:50:24'),
(148, 1, 163, 161, 124, 650, NULL, 0, 0, '12', 'Bandar (Narayanganj)', '100', '2021-09-14 22:51:06', '2021-09-14 22:51:06'),
(149, 1, 164, 162, 125, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-14 23:28:25', '2021-09-14 23:28:25'),
(150, 1, 165, 163, 126, 130, NULL, 0, 0, '10', 'Harirampur (Manikganj)', '130', '2021-09-14 23:29:15', '2021-09-14 23:29:15'),
(151, 1, 166, 164, 127, 130, NULL, 0, 0, '10', 'Harirampur (Manikganj)', '130', '2021-09-14 23:31:35', '2021-09-14 23:31:35'),
(152, 1, 167, 165, 128, 130, NULL, 0, 0, '10', 'Harirampur (Manikganj)', '130', '2021-09-14 23:31:49', '2021-09-14 23:31:49'),
(153, 1, 168, 166, 129, 580, NULL, 0, 0, '9', 'Rajoir', '130', '2021-09-14 23:36:20', '2021-09-14 23:36:20'),
(154, 1, 169, 167, 130, 550, NULL, 0, 0, '12', 'Chashara (Narayanganj)', '100', '2021-09-14 23:45:55', '2021-09-14 23:45:55'),
(155, 1, 170, 168, 131, 515, NULL, 0, 0, '1', 'Gulshan', '65', '2021-09-14 23:47:09', '2021-09-14 23:47:09'),
(156, 1, 171, 170, 132, 515, NULL, 0, 0, '1', 'Gulshan', '65', '2021-09-14 23:52:58', '2021-09-14 23:52:58'),
(157, 1, 172, 172, 133, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-14 23:55:23', '2021-09-14 23:55:23'),
(158, 1, 173, 173, 134, 680, NULL, 0, 0, '10', 'Harirampur (Manikganj)', '130', '2021-09-14 23:58:15', '2021-09-14 23:58:15'),
(159, 1, 174, 174, 135, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-15 00:04:33', '2021-09-15 00:04:33'),
(160, 1, 175, 175, 136, 550, NULL, 0, 0, '12', 'Chashara (Narayanganj)', '100', '2021-09-15 00:05:40', '2021-09-15 00:05:40'),
(161, 1, 176, 176, 137, 580, NULL, 0, 0, '8', 'Austogram', '130', '2021-09-15 00:06:41', '2021-09-15 00:06:41'),
(162, 1, 177, 177, 138, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-15 00:08:44', '2021-09-15 00:08:44'),
(163, 1, 178, 178, 139, 580, NULL, 0, 0, '11', 'Lauhajang', '130', '2021-09-15 00:15:44', '2021-09-15 00:15:44'),
(164, 1, 179, 179, 140, 580, NULL, 0, 0, '8', 'Bhairab', '130', '2021-09-15 00:17:18', '2021-09-15 00:17:18'),
(165, 1, 180, 180, 141, 650, NULL, 0, 0, '2', 'Barura', '100', '2021-09-15 00:19:07', '2021-09-15 00:19:07'),
(166, 1, 181, 181, 142, 580, NULL, 0, 0, '10', 'Harirampur (Manikganj)', '130', '2021-09-15 00:21:54', '2021-09-15 00:21:54'),
(167, 1, 182, 182, 143, 580, NULL, 0, 0, '10', 'Ghior', '130', '2021-09-15 00:23:07', '2021-09-15 00:23:07'),
(168, 1, 183, 183, 144, 680, NULL, 0, 0, '10', 'Harirampur (Manikganj)', '130', '2021-09-15 01:08:59', '2021-09-15 01:08:59'),
(169, 1, 184, 184, 145, 550, NULL, 0, 0, '2', 'Barura', '100', '2021-09-15 01:18:08', '2021-09-15 01:18:08'),
(170, 1, 185, 185, 146, 650, NULL, 0, 0, '2', 'Barura', '100', '2021-09-15 02:00:06', '2021-09-15 02:00:06'),
(171, 1, 186, 186, 147, 650, NULL, 0, 0, '2', 'Barura', '100', '2021-09-15 02:01:17', '2021-09-15 02:01:17'),
(172, 1, 187, 187, 148, 100, NULL, 0, 0, '6', 'Barmi Sreepur (Gazipur)', '100', '2021-09-15 02:41:49', '2021-09-15 02:41:49'),
(173, 1, 188, 188, 149, 550, NULL, 0, 0, '5', 'Char Bhadrasan', '100', '2021-09-15 03:04:34', '2021-09-15 03:04:34'),
(174, 1, 189, 189, 150, 580, NULL, 0, 0, '11', 'Lauhajang', '130', '2021-09-15 05:07:22', '2021-09-15 05:07:22'),
(175, 1, 190, 190, 151, 650, NULL, 0, 0, '2', 'Barura', '100', '2021-09-15 08:32:27', '2021-09-15 08:32:27'),
(176, 1, 191, 191, 152, 765, NULL, 0, 0, '1', 'Mohammadpur', '65', '2021-11-20 22:17:47', '2021-11-20 22:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `lens_type` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `prescription`, `color_id`, `size_id`, `quantity`, `lens_type`, `created_at`, `updated_at`) VALUES
(23, 26, 55, '', '', NULL, NULL, NULL, 1, NULL, '2020-09-15 02:38:11', '2020-09-15 02:38:11'),
(24, 27, 28, '', '', NULL, NULL, NULL, 1, NULL, '2020-09-15 02:48:29', '2020-09-15 02:48:29'),
(25, 28, 50, '', '', NULL, NULL, NULL, 1, NULL, '2020-09-15 02:57:06', '2020-09-15 02:57:06'),
(27, 30, 384, '', '', NULL, NULL, NULL, 1, NULL, '2020-10-17 05:18:15', '2020-10-17 05:18:15'),
(28, 30, 32, '', '', NULL, NULL, NULL, 1, NULL, '2020-10-17 05:18:15', '2020-10-17 05:18:15'),
(29, 30, 38, '', '', NULL, NULL, NULL, 1, NULL, '2020-10-17 05:18:15', '2020-10-17 05:18:15'),
(30, 31, 413, '', '', NULL, NULL, NULL, 1, NULL, '2021-01-28 03:40:12', '2021-01-28 03:40:12'),
(31, 35, 414, '', '', NULL, 'Black and Navy', NULL, 1, NULL, '2021-02-22 05:06:42', '2021-02-22 05:06:42'),
(32, 36, 415, '', '', NULL, 'Black and Navy', NULL, 2, NULL, '2021-02-22 08:25:13', '2021-02-22 08:25:13'),
(33, 36, 176, '', '', NULL, NULL, NULL, 5, NULL, '2021-02-22 08:25:13', '2021-02-22 08:25:13'),
(34, 36, 49, '', '', NULL, NULL, NULL, 1, NULL, '2021-02-22 08:25:13', '2021-02-22 08:25:13'),
(35, 37, 412, '', '', NULL, NULL, NULL, 7, NULL, '2021-02-22 23:02:09', '2021-02-22 23:02:09'),
(36, 37, 25, '', '', NULL, NULL, NULL, 1, NULL, '2021-02-22 23:02:09', '2021-02-22 23:02:09'),
(37, 38, 413, '', '', NULL, NULL, NULL, 1, NULL, '2021-02-22 23:45:19', '2021-02-22 23:45:19'),
(38, 38, 411, '', '', NULL, NULL, NULL, 1, NULL, '2021-02-22 23:45:19', '2021-02-22 23:45:19'),
(39, 39, 412, '', '', NULL, NULL, NULL, 1, NULL, '2021-02-23 00:32:51', '2021-02-23 00:32:51'),
(40, 40, 415, '', '', NULL, 'Black and Navy', NULL, 1, NULL, '2021-02-23 00:45:22', '2021-02-23 00:45:22'),
(41, 41, 414, '', '', NULL, 'Black and Navy', NULL, 1, NULL, '2021-03-23 07:01:08', '2021-03-23 07:01:08'),
(42, 49, 19, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(43, 49, 19, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(44, 49, 19, NULL, '100', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(45, 49, 19, NULL, '616', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(46, 49, 19, NULL, '616', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(47, 49, 20, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(48, 49, 20, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(49, 49, 20, NULL, '100', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(50, 49, 20, NULL, '616', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(51, 49, 20, NULL, '616', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(52, 49, 9, NULL, '150', NULL, NULL, NULL, 2, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(53, 49, 9, NULL, '90', NULL, NULL, NULL, 2, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(54, 49, 9, NULL, '100', NULL, NULL, NULL, 2, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(55, 49, 9, NULL, '616', NULL, NULL, NULL, 2, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(56, 49, 9, NULL, '616', NULL, NULL, NULL, 2, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(57, 49, 18, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(58, 49, 18, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(59, 49, 18, NULL, '100', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(60, 49, 18, NULL, '616', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(61, 49, 18, NULL, '616', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(62, 49, 10, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(63, 49, 10, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(64, 49, 10, NULL, '100', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(65, 49, 10, NULL, '616', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(66, 49, 10, NULL, '616', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(67, 50, 20, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:38:53', '2021-07-13 01:38:53'),
(68, 51, 20, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:39:58', '2021-07-13 01:39:58'),
(69, 52, 19, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:41:12', '2021-07-13 01:41:12'),
(70, 53, 19, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:42:19', '2021-07-13 01:42:19'),
(71, 53, 19, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:42:19', '2021-07-13 01:42:19'),
(72, 53, 20, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:42:19', '2021-07-13 01:42:19'),
(73, 53, 20, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:42:19', '2021-07-13 01:42:19'),
(74, 54, 20, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(75, 54, 20, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(76, 54, 20, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(77, 54, 19, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(78, 54, 19, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(79, 54, 19, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(80, 54, 19, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(81, 54, 19, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(82, 54, 19, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(83, 55, 20, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-07-13 01:45:40', '2021-07-13 01:45:40'),
(84, 56, 20, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:47:57', '2021-07-13 01:47:57'),
(85, 57, 20, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:53:21', '2021-07-13 01:53:21'),
(86, 58, 19, NULL, '150', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:54:17', '2021-07-13 01:54:17'),
(87, 59, 20, NULL, '90', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:57:37', '2021-07-13 01:57:37'),
(88, 60, 9, 'Solex Super(Pair) ergtrb6yu tyjh rfhgtehb th', '50', NULL, NULL, NULL, 1, NULL, '2021-07-13 01:59:40', '2021-07-13 01:59:40'),
(89, 61, 20, 'rwtf     y5t  thgt', '656', 'admin/prescription/1228461033.jpg', NULL, NULL, 1, NULL, '2021-07-13 02:02:02', '2021-07-13 02:02:02'),
(90, 62, 18, 'Aenean et tempor eros, vitae sollicitudin velit. Etiam varius enim nec quam tempor, sed efficitur ex ultrices. Phasellus pretium est vel dui vestibulum condimentum. Aenean nec suscipit nibh. Phasellus nec lacus id arcu facilisis elementum. Curabitur lobortis, elit ut elementum congue, erat ex bibendum odio, nec iaculis lacus sem non lorem. Duis suscipit metus ante, sed convallis quam posuere quis. Ut tincidunt eleifend odio, ac fringilla mi vehicula nec. Nunc vitae lacus eget lectus imperdiet tempus sed in dui. Nam molestie magna at risus consectetur, placerat suscipit justo dignissim. Sed vitae fringilla enim, nec ullamcorper arcu.', '616', 'admin/prescription/24630037.jpg', NULL, NULL, 1, NULL, '2021-07-13 02:03:41', '2021-07-13 02:03:41'),
(91, 63, 18, 'Aenean et tempor eros, vitae sollicitudin velit. Etiam varius enim nec quam tempor, sed efficitur ex ultrices. Phasellus pretium est vel dui vestibulum condimentum. Aenean nec suscipit nibh. Phasellus nec lacus id arcu facilisis elementum. Curabitur lobortis, elit ut elementum congue, erat ex bibendum odio, nec iaculis lacus sem non lorem. Duis suscipit metus ante, sed convallis quam posuere quis. Ut tincidunt eleifend odio, ac fringilla mi vehicula nec. Nunc vitae lacus eget lectus imperdiet tempus sed in dui. Nam molestie magna at risus consectetur, placerat suscipit justo dignissim. Sed vitae fringilla enim, nec ullamcorper arcu.', '616', 'admin/prescription/473874348.jpg', NULL, NULL, 1, NULL, '2021-07-13 02:04:22', '2021-07-13 02:04:22'),
(92, 66, 18, 'Aenean et tempor eros, vitae sollicitudin velit. Etiam varius enim nec quam tempor, sed efficitur ex ultrices. Phasellus pretium est vel dui vestibulum condimentum. Aenean nec suscipit nibh. Phasellus nec lacus id arcu facilisis elementum. Curabitur lobortis, elit ut elementum congue, erat ex bibendum odio, nec iaculis lacus sem non lorem. Duis suscipit metus ante, sed convallis quam posuere quis. Ut tincidunt eleifend odio, ac fringilla mi vehicula nec. Nunc vitae lacus eget lectus imperdiet tempus sed in dui. Nam molestie magna at risus consectetur, placerat suscipit justo dignissim. Sed vitae fringilla enim, nec ullamcorper arcu.', '616', 'admin/prescription/2053509147.jpg', NULL, NULL, 1, NULL, '2021-07-13 02:12:25', '2021-07-13 02:12:25'),
(93, 67, 18, 'Aenean et tempor eros, vitae sollicitudin velit. Etiam varius enim nec quam tempor, sed efficitur ex ultrices. Phasellus pretium est vel dui vestibulum condimentum. Aenean nec suscipit nibh. Phasellus nec lacus id arcu facilisis elementum. Curabitur lobortis, elit ut elementum congue, erat ex bibendum odio, nec iaculis lacus sem non lorem. Duis suscipit metus ante, sed convallis quam posuere quis. Ut tincidunt eleifend odio, ac fringilla mi vehicula nec. Nunc vitae lacus eget lectus imperdiet tempus sed in dui. Nam molestie magna at risus consectetur, placerat suscipit justo dignissim. Sed vitae fringilla enim, nec ullamcorper arcu.', '616', 'admin/prescription/1341482658.jpg', NULL, NULL, 1, NULL, '2021-07-13 02:13:54', '2021-07-13 02:13:54'),
(94, 69, 18, 'Aenean et tempor eros, vitae sollicitudin velit. Etiam varius enim nec quam tempor, sed efficitur ex ultrices. Phasellus pretium est vel dui vestibulum condimentum. Aenean nec suscipit nibh. Phasellus nec lacus id arcu facilisis elementum. Curabitur lobortis, elit ut elementum congue, erat ex bibendum odio, nec iaculis lacus sem non lorem. Duis suscipit metus ante, sed convallis quam posuere quis. Ut tincidunt eleifend odio, ac fringilla mi vehicula nec. Nunc vitae lacus eget lectus imperdiet tempus sed in dui. Nam molestie magna at risus consectetur, placerat suscipit justo dignissim. Sed vitae fringilla enim, nec ullamcorper arcu.', '616', 'admin/prescription/624487117.jpg', NULL, NULL, 1, NULL, '2021-07-13 02:18:29', '2021-07-13 02:18:29'),
(95, 70, 19, 'dfhg fhgr ghbgfh fghrtyu.jyjy drgreg', '716', 'admin/prescription/1386068142.jpg', NULL, NULL, 1, NULL, '2021-07-13 02:20:25', '2021-07-13 02:20:25'),
(96, 71, 20, 'rwtf     y5t  thgt', '590', NULL, NULL, NULL, 1, NULL, '2021-07-13 02:44:51', '2021-07-13 02:44:51'),
(97, 72, 20, 'rwtf     y5t  thgt', '590', NULL, NULL, NULL, 1, NULL, '2021-07-13 02:46:15', '2021-07-13 02:46:15'),
(98, 73, 20, 'rwtf     y5t  thgt', '590', NULL, NULL, NULL, 1, NULL, '2021-07-13 02:46:58', '2021-07-13 02:46:58'),
(99, 76, 9, 'Solex Super(Pair) ergtrb6yu tyjh rfhgtehb th', '50', NULL, '4', NULL, 1, NULL, '2021-07-13 03:15:20', '2021-07-13 03:15:20'),
(100, 77, 16, 'dfhg fhgr ghbgfh fghrtyu.jyjy dfhgrh', '150', NULL, '4', NULL, 1, NULL, '2021-07-13 03:16:02', '2021-07-13 03:16:02'),
(101, 78, 10, 'Aenean et tempor eros, vitae sollicitudin velit. Etiam varius enim nec quam tempor, sed efficitur ex ultrices. Phasellus pretium est vel dui vestibulum condimentum. Aenean nec suscipit nibh. Phasellus nec lacus id arcu facilisis elementum. Curabitur lobortis, elit ut elementum congue, erat ex bibendum odio, nec iaculis lacus sem non lorem. Duis suscipit metus ante, sed convallis quam posuere quis. Ut tincidunt eleifend odio, ac fringilla mi vehicula nec. Nunc vitae lacus eget lectus imperdiet tempus sed in dui. Nam molestie magna at risus consectetur, placerat suscipit justo dignissim. Sed vitae fringilla enim, nec ullamcorper arcu.', '50', NULL, '1', NULL, 1, NULL, '2021-07-13 03:16:53', '2021-07-13 03:16:53'),
(102, 79, 10, 'Aenean et tempor eros, vitae sollicitudin velit. Etiam varius enim nec quam tempor, sed efficitur ex ultrices. Phasellus pretium est vel dui vestibulum condimentum. Aenean nec suscipit nibh. Phasellus nec lacus id arcu facilisis elementum. Curabitur lobortis, elit ut elementum congue, erat ex bibendum odio, nec iaculis lacus sem non lorem. Duis suscipit metus ante, sed convallis quam posuere quis. Ut tincidunt eleifend odio, ac fringilla mi vehicula nec. Nunc vitae lacus eget lectus imperdiet tempus sed in dui. Nam molestie magna at risus consectetur, placerat suscipit justo dignissim. Sed vitae fringilla enim, nec ullamcorper arcu.', '50', NULL, '1', NULL, 1, NULL, '2021-07-13 03:19:37', '2021-07-13 03:19:37'),
(103, 80, 9, 'Solex Super(Pair) ergtrb6yu tyjh rfhgtehb th', '50', NULL, '4', NULL, 1, NULL, '2021-07-13 03:22:00', '2021-07-13 03:22:00'),
(104, 81, 20, 'rwtf     y5t  thgt', '90', NULL, '4', 2, 2, NULL, '2021-07-13 03:23:45', '2021-07-13 03:23:45'),
(105, 82, 10, 'dfhg fhgr ghbgfh fghrtyu.jyjy drgreg', '150', NULL, '1', 1, 1, NULL, '2021-07-13 03:27:59', '2021-07-13 03:27:59'),
(106, 82, 19, 'dfhg fhgr ghbgfh fghrtyu.jyjy drgreg', '150', NULL, '4', 2, 1, NULL, '2021-07-13 03:27:59', '2021-07-13 03:27:59'),
(107, 83, 20, 'dfhg fhgr ghbgfh fghrtyu.jyjy drgreg', '150', NULL, '4', 2, 2, NULL, '2021-07-13 03:29:02', '2021-07-13 03:29:02'),
(108, 83, 19, 'dfhg fhgr ghbgfh fghrtyu.jyjy drgreg', '150', NULL, '4', 2, 2, NULL, '2021-07-13 03:29:02', '2021-07-13 03:29:02'),
(109, 84, 20, 'Solex Super(Pair) ergtrb6yu tyjh rfhgtehb th', '50', NULL, '4', 2, 2, NULL, '2021-07-13 06:23:12', '2021-07-13 06:23:12'),
(110, 84, 9, 'Solex Super(Pair) ergtrb6yu tyjh rfhgtehb th', '50', NULL, '4', 2, 1, NULL, '2021-07-13 06:23:12', '2021-07-13 06:23:12'),
(111, 85, 20, NULL, '50', NULL, '4', 2, 2, NULL, '2021-07-13 06:26:10', '2021-07-13 06:26:10'),
(112, 85, 10, NULL, '50', NULL, '1', 1, 1, NULL, '2021-07-13 06:26:10', '2021-07-13 06:26:10'),
(113, 86, 20, NULL, '180', NULL, '4', 2, 2, NULL, '2021-07-13 06:28:12', '2021-07-13 06:28:12'),
(114, 86, 20, NULL, '50', NULL, '4', 2, 2, NULL, '2021-07-13 06:28:12', '2021-07-13 06:28:12'),
(115, 86, 9, NULL, '180', NULL, '4', 2, 1, NULL, '2021-07-13 06:28:12', '2021-07-13 06:28:12'),
(116, 86, 9, NULL, '50', NULL, '4', 2, 1, NULL, '2021-07-13 06:28:12', '2021-07-13 06:28:12'),
(117, 87, 20, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 06:30:34', '2021-07-13 06:30:34'),
(118, 87, 9, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 06:30:34', '2021-07-13 06:30:34'),
(119, 88, 20, NULL, NULL, NULL, '4', 2, 2, NULL, '2021-07-13 06:57:07', '2021-07-13 06:57:07'),
(120, 88, 9, NULL, NULL, NULL, '4', 2, 2, NULL, '2021-07-13 06:57:07', '2021-07-13 06:57:07'),
(121, 89, 20, NULL, NULL, NULL, '4', 2, 2, NULL, '2021-07-13 06:57:36', '2021-07-13 06:57:36'),
(122, 89, 9, NULL, NULL, NULL, '4', 2, 2, NULL, '2021-07-13 06:57:36', '2021-07-13 06:57:36'),
(123, 90, 20, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 06:58:46', '2021-07-13 06:58:46'),
(124, 90, 9, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 06:58:46', '2021-07-13 06:58:46'),
(125, 91, 20, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 07:08:11', '2021-07-13 07:08:11'),
(126, 91, 9, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 07:08:11', '2021-07-13 07:08:11'),
(127, 92, 20, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 07:26:31', '2021-07-13 07:26:31'),
(128, 93, 9, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 07:29:16', '2021-07-13 07:29:16'),
(129, 93, 10, NULL, NULL, NULL, '1', 1, 1, NULL, '2021-07-13 07:29:16', '2021-07-13 07:29:16'),
(130, 94, 9, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 07:29:34', '2021-07-13 07:29:34'),
(131, 94, 10, NULL, NULL, NULL, '1', 1, 1, NULL, '2021-07-13 07:29:34', '2021-07-13 07:29:34'),
(132, 95, 10, NULL, NULL, NULL, '1', 1, 1, NULL, '2021-07-13 07:30:19', '2021-07-13 07:30:19'),
(133, 95, 9, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 07:30:19', '2021-07-13 07:30:19'),
(134, 96, 9, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 07:33:54', '2021-07-13 07:33:54'),
(135, 96, 18, NULL, NULL, NULL, '4', 2, 1, NULL, '2021-07-13 07:33:54', '2021-07-13 07:33:54'),
(136, 97, 9, NULL, '50', NULL, '4', 2, 1, NULL, '2021-07-13 08:06:32', '2021-07-13 08:06:32'),
(137, 98, 9, NULL, '616', NULL, '4', 2, 1, NULL, '2021-07-13 08:29:28', '2021-07-13 08:29:28'),
(138, 99, 19, NULL, '150', NULL, '4', 2, 1, NULL, '2021-07-13 09:22:07', '2021-07-13 09:22:07'),
(139, 99, 19, NULL, '716', NULL, '4', 2, 1, NULL, '2021-07-13 09:22:07', '2021-07-13 09:22:07'),
(140, 99, 19, NULL, '650', NULL, '4', 2, 1, NULL, '2021-07-13 09:22:07', '2021-07-13 09:22:07'),
(141, 100, 20, NULL, '90', NULL, '4', 2, 1, NULL, '2021-07-13 09:53:06', '2021-07-13 09:53:06'),
(142, 100, 20, NULL, '590', NULL, '4', 2, 1, NULL, '2021-07-13 09:53:06', '2021-07-13 09:53:06'),
(143, 100, 20, NULL, '656', 'admin/prescription/1888181231.jpg', '4', 2, 1, NULL, '2021-07-13 09:53:06', '2021-07-13 09:53:06'),
(144, 101, 19, NULL, '716', 'admin/prescription/203955597.jpg', '4', 2, 1, NULL, '2021-07-13 09:55:50', '2021-07-13 09:55:50'),
(145, 102, 18, NULL, '50', '0', '4', 2, 1, NULL, '2021-07-13 10:18:34', '2021-07-13 10:18:34'),
(146, 103, 20, NULL, '90', '0', '4', 2, 2, NULL, '2021-07-13 10:19:39', '2021-07-13 10:19:39'),
(147, 103, 19, NULL, '716', 'admin/prescription/1456388066.jpg', '4', 2, 1, NULL, '2021-07-13 10:19:39', '2021-07-13 10:19:39'),
(148, 104, 20, NULL, '90', '0', '4', 2, 1, NULL, '2021-07-13 22:40:41', '2021-07-13 22:40:41'),
(149, 104, 18, NULL, '550', '0', '4', 2, 1, NULL, '2021-07-13 22:40:41', '2021-07-13 22:40:41'),
(150, 105, 20, NULL, '90', '0', '4', 2, 1, NULL, '2021-07-15 08:58:20', '2021-07-15 08:58:20'),
(151, 106, 21, NULL, '1000', '0', '1', 2, 1, NULL, '2021-07-17 16:33:11', '2021-07-17 16:33:11'),
(152, 107, 21, NULL, '1100', 'admin/prescription/681055396.jpeg', '1', 2, 1, NULL, '2021-07-17 16:43:32', '2021-07-17 16:43:32'),
(153, 108, 21, NULL, '1066', 'admin/prescription/98876227.png', '1', 2, 1, 2, '2021-07-19 07:08:05', '2021-07-19 07:08:05'),
(154, 109, 21, NULL, '500', '0', '1', 2, 1, 1, '2021-07-19 10:10:23', '2021-07-19 10:10:23'),
(155, 110, 51, NULL, '450', '0', '5', 11, 3, 1, '2021-08-02 07:01:40', '2021-08-02 07:01:40'),
(156, 111, 42, NULL, '1100', 'admin/prescription/891993193.PNG', '4', 4, 1, 1, '2021-08-02 07:57:29', '2021-08-02 07:57:29'),
(157, 112, 43, NULL, '300', '0', '4', 4, 1, 1, '2021-08-02 09:04:08', '2021-08-02 09:04:08'),
(158, 113, 50, NULL, '550', '0', '5', 11, 1, NULL, '2021-08-05 07:17:52', '2021-08-05 07:17:52'),
(159, 114, 38, NULL, '399', '0', '4', 4, 1, 1, '2021-08-06 00:18:42', '2021-08-06 00:18:42'),
(160, 115, 51, NULL, '450', '0', '5', 11, 1, 1, '2021-08-08 06:10:38', '2021-08-08 06:10:38'),
(161, 117, 51, NULL, '450', '0', '5', 11, 1, 1, '2021-08-08 07:05:35', '2021-08-08 07:05:35'),
(162, 118, 37, NULL, '450', '0', '5', 4, 1, 1, '2021-08-08 10:16:59', '2021-08-08 10:16:59'),
(163, 119, 39, NULL, '1066', 'admin/prescription/871605961.jpg', '5', 4, 1, 2, '2021-08-08 10:26:00', '2021-08-08 10:26:00'),
(164, 120, 46, NULL, '450', '0', '5', 4, 3, NULL, '2021-08-14 03:15:18', '2021-08-14 03:15:18'),
(165, 121, 46, NULL, '450', '0', '5', 4, 4, NULL, '2021-08-14 03:28:46', '2021-08-14 03:28:46'),
(166, 122, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-11 23:06:08', '2021-09-11 23:06:08'),
(167, 123, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-12 00:10:34', '2021-09-12 00:10:34'),
(168, 124, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-12 00:17:09', '2021-09-12 00:17:09'),
(169, 127, 124, NULL, '550', '0', '5', 3, 1, 1, '2021-09-12 00:21:18', '2021-09-12 00:21:18'),
(170, 128, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-12 00:31:23', '2021-09-12 00:31:23'),
(171, 130, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-12 00:34:48', '2021-09-12 00:34:48'),
(172, 132, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-12 00:36:20', '2021-09-12 00:36:20'),
(173, 133, 117, NULL, '700', '0', '9', 1, 1, 1, '2021-09-12 00:38:35', '2021-09-12 00:38:35'),
(174, 135, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-12 00:46:19', '2021-09-12 00:46:19'),
(175, 137, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-12 00:48:10', '2021-09-12 00:48:10'),
(176, 138, 117, NULL, '700', '0', '9', 1, 1, 1, '2021-09-12 00:48:49', '2021-09-12 00:48:49'),
(177, 139, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-12 00:49:24', '2021-09-12 00:49:24'),
(178, 140, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-12 01:32:12', '2021-09-12 01:32:12'),
(179, 141, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-14 22:09:12', '2021-09-14 22:09:12'),
(180, 142, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-14 22:21:34', '2021-09-14 22:21:34'),
(181, 146, 124, NULL, '550', '0', '5', 3, 1, 1, '2021-09-14 22:47:48', '2021-09-14 22:47:48'),
(182, 149, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-14 23:28:25', '2021-09-14 23:28:25'),
(183, 153, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-14 23:36:20', '2021-09-14 23:36:20'),
(184, 154, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-14 23:45:55', '2021-09-14 23:45:55'),
(185, 155, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-14 23:47:09', '2021-09-14 23:47:09'),
(186, 156, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-14 23:52:58', '2021-09-14 23:52:58'),
(187, 157, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-14 23:55:23', '2021-09-14 23:55:23'),
(188, 158, 124, NULL, '550', '0', '5', 3, 1, 1, '2021-09-14 23:58:15', '2021-09-14 23:58:15'),
(189, 159, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-15 00:04:33', '2021-09-15 00:04:33'),
(190, 160, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-15 00:05:40', '2021-09-15 00:05:40'),
(191, 161, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-15 00:06:41', '2021-09-15 00:06:41'),
(192, 162, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-15 00:08:44', '2021-09-15 00:08:44'),
(193, 163, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-15 00:15:45', '2021-09-15 00:15:45'),
(194, 164, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-15 00:17:18', '2021-09-15 00:17:18'),
(195, 165, 124, NULL, '550', '0', '5', 3, 1, 1, '2021-09-15 00:19:07', '2021-09-15 00:19:07'),
(196, 166, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-15 00:21:54', '2021-09-15 00:21:54'),
(197, 167, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-15 00:23:07', '2021-09-15 00:23:07'),
(198, 168, 124, NULL, '550', '0', '5', 3, 1, 1, '2021-09-15 01:08:59', '2021-09-15 01:08:59'),
(199, 169, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-15 01:18:08', '2021-09-15 01:18:08'),
(200, 170, 119, NULL, '550', '0', '8', 4, 1, 1, '2021-09-15 02:00:06', '2021-09-15 02:00:06'),
(201, 173, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-15 03:04:34', '2021-09-15 03:04:34'),
(202, 174, 125, NULL, '450', '0', '5', 4, 1, 1, '2021-09-15 05:07:22', '2021-09-15 05:07:22'),
(203, 175, 124, NULL, '550', '0', '5', 3, 1, 1, '2021-09-15 08:32:27', '2021-09-15 08:32:27'),
(204, 176, 117, NULL, '700', '0', '9', 1, 1, NULL, '2021-11-20 22:17:47', '2021-11-20 22:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_returns` int(11) NOT NULL,
  `secure_shopping` int(11) NOT NULL,
  `creative` int(11) NOT NULL,
  `delivery_information` int(11) NOT NULL,
  `privacy_policy` int(11) NOT NULL,
  `conditions` int(11) NOT NULL,
  `frequently_questions` int(11) NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `description`, `shipping_returns`, `secure_shopping`, `creative`, `delivery_information`, `privacy_policy`, `conditions`, `frequently_questions`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, '<p>dsdsfsdf<br></p>', 1, 0, 0, 0, 0, 0, 0, 1, '2021-01-27 23:06:18', '2021-01-27 23:06:18'),
(2, '<p>fdgfdhfd<br></p>', 0, 0, 0, 0, 0, 0, 1, 1, '2021-02-18 01:42:35', '2021-02-18 01:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mobile_no` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_method`, `payment_mobile_no`, `transaction_no`, `amount`, `created_at`, `updated_at`) VALUES
(26, 'cod', NULL, NULL, NULL, '2020-09-08 04:22:36', '2020-09-08 04:22:36'),
(27, 'bkash', '01961584280', 'fdhsdjf15465', '60', '2020-09-15 02:38:11', '2020-09-15 02:38:11'),
(28, 'cod', '01818077683', NULL, NULL, '2020-09-15 02:48:29', '2020-09-15 02:48:29'),
(29, 'bkash', '014618676825', NULL, NULL, '2020-09-15 02:57:06', '2020-09-15 02:57:06'),
(30, 'cod', NULL, NULL, NULL, '2020-10-08 02:31:17', '2020-10-08 02:31:17'),
(31, 'cod', NULL, NULL, NULL, '2020-10-17 05:18:15', '2020-10-17 05:18:15'),
(32, 'bkash', NULL, NULL, NULL, '2021-01-28 03:40:12', '2021-01-28 03:40:12'),
(33, NULL, NULL, NULL, NULL, '2021-02-22 05:01:23', '2021-02-22 05:01:23'),
(34, 'cod', NULL, NULL, NULL, '2021-02-22 05:01:35', '2021-02-22 05:01:35'),
(35, 'cod', NULL, NULL, NULL, '2021-02-22 05:01:56', '2021-02-22 05:01:56'),
(36, 'cod', NULL, NULL, NULL, '2021-02-22 05:06:42', '2021-02-22 05:06:42'),
(37, 'cod', NULL, NULL, NULL, '2021-02-22 08:25:13', '2021-02-22 08:25:13'),
(38, 'cod', NULL, NULL, NULL, '2021-02-22 23:02:09', '2021-02-22 23:02:09'),
(39, 'cod', NULL, NULL, NULL, '2021-02-22 23:45:19', '2021-02-22 23:45:19'),
(40, 'cod', NULL, NULL, NULL, '2021-02-23 00:32:51', '2021-02-23 00:32:51'),
(41, 'bkash', '01878500695', 'dfdsfsdfdsfdsf', '550', '2021-02-23 00:45:22', '2021-02-23 00:45:22'),
(42, 'bkash', '01818077683', 'dfhgtrfry56hrtgh', '550', '2021-03-23 07:01:08', '2021-03-23 07:01:08'),
(43, NULL, NULL, NULL, NULL, '2021-07-01 06:55:40', '2021-07-01 06:55:40'),
(44, 'COD', NULL, NULL, NULL, '2021-07-13 01:05:28', '2021-07-13 01:05:28'),
(45, 'COD', NULL, NULL, NULL, '2021-07-13 01:10:01', '2021-07-13 01:10:01'),
(46, 'COD', NULL, NULL, NULL, '2021-07-13 01:12:33', '2021-07-13 01:12:33'),
(47, 'COD', NULL, NULL, NULL, '2021-07-13 01:13:08', '2021-07-13 01:13:08'),
(48, 'COD', NULL, NULL, NULL, '2021-07-13 01:19:04', '2021-07-13 01:19:04'),
(49, 'COD', NULL, NULL, NULL, '2021-07-13 01:21:18', '2021-07-13 01:21:18'),
(50, 'COD', NULL, NULL, NULL, '2021-07-13 01:37:22', '2021-07-13 01:37:22'),
(51, 'COD', NULL, NULL, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(52, 'COD', NULL, NULL, NULL, '2021-07-13 01:38:53', '2021-07-13 01:38:53'),
(53, 'COD', NULL, NULL, NULL, '2021-07-13 01:39:58', '2021-07-13 01:39:58'),
(54, 'COD', NULL, NULL, NULL, '2021-07-13 01:41:12', '2021-07-13 01:41:12'),
(55, 'COD', NULL, NULL, NULL, '2021-07-13 01:42:19', '2021-07-13 01:42:19'),
(56, 'COD', NULL, NULL, NULL, '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(57, 'COD', NULL, NULL, NULL, '2021-07-13 01:45:40', '2021-07-13 01:45:40'),
(58, 'COD', NULL, NULL, NULL, '2021-07-13 01:47:57', '2021-07-13 01:47:57'),
(59, 'COD', NULL, NULL, NULL, '2021-07-13 01:52:36', '2021-07-13 01:52:36'),
(60, 'COD', NULL, NULL, NULL, '2021-07-13 01:53:21', '2021-07-13 01:53:21'),
(61, 'COD', NULL, NULL, NULL, '2021-07-13 01:54:16', '2021-07-13 01:54:16'),
(62, 'COD', NULL, NULL, NULL, '2021-07-13 01:57:37', '2021-07-13 01:57:37'),
(63, 'COD', NULL, NULL, NULL, '2021-07-13 01:59:40', '2021-07-13 01:59:40'),
(64, 'COD', NULL, NULL, NULL, '2021-07-13 02:02:02', '2021-07-13 02:02:02'),
(65, 'COD', NULL, NULL, NULL, '2021-07-13 02:03:41', '2021-07-13 02:03:41'),
(66, 'COD', NULL, NULL, NULL, '2021-07-13 02:04:22', '2021-07-13 02:04:22'),
(67, 'COD', NULL, NULL, NULL, '2021-07-13 02:10:32', '2021-07-13 02:10:32'),
(68, 'COD', NULL, NULL, NULL, '2021-07-13 02:11:26', '2021-07-13 02:11:26'),
(69, 'COD', NULL, NULL, NULL, '2021-07-13 02:12:25', '2021-07-13 02:12:25'),
(70, 'COD', NULL, NULL, NULL, '2021-07-13 02:13:54', '2021-07-13 02:13:54'),
(71, 'COD', NULL, NULL, NULL, '2021-07-13 02:16:22', '2021-07-13 02:16:22'),
(72, 'COD', NULL, NULL, NULL, '2021-07-13 02:16:29', '2021-07-13 02:16:29'),
(73, 'COD', NULL, NULL, NULL, '2021-07-13 02:18:29', '2021-07-13 02:18:29'),
(74, 'COD', NULL, NULL, NULL, '2021-07-13 02:20:25', '2021-07-13 02:20:25'),
(75, 'COD', NULL, NULL, NULL, '2021-07-13 02:44:51', '2021-07-13 02:44:51'),
(76, 'COD', NULL, NULL, NULL, '2021-07-13 02:46:15', '2021-07-13 02:46:15'),
(77, 'COD', NULL, NULL, NULL, '2021-07-13 02:46:58', '2021-07-13 02:46:58'),
(78, 'COD', NULL, NULL, NULL, '2021-07-13 02:51:07', '2021-07-13 02:51:07'),
(79, 'COD', NULL, NULL, NULL, '2021-07-13 03:14:52', '2021-07-13 03:14:52'),
(80, 'COD', NULL, NULL, NULL, '2021-07-13 03:15:20', '2021-07-13 03:15:20'),
(81, 'COD', NULL, NULL, NULL, '2021-07-13 03:16:02', '2021-07-13 03:16:02'),
(82, 'COD', NULL, NULL, NULL, '2021-07-13 03:16:53', '2021-07-13 03:16:53'),
(83, 'COD', NULL, NULL, NULL, '2021-07-13 03:19:37', '2021-07-13 03:19:37'),
(84, 'COD', NULL, NULL, NULL, '2021-07-13 03:22:00', '2021-07-13 03:22:00'),
(85, 'COD', NULL, NULL, NULL, '2021-07-13 03:23:45', '2021-07-13 03:23:45'),
(86, 'COD', NULL, NULL, NULL, '2021-07-13 03:27:59', '2021-07-13 03:27:59'),
(87, 'COD', NULL, NULL, NULL, '2021-07-13 03:29:02', '2021-07-13 03:29:02'),
(88, 'COD', NULL, NULL, NULL, '2021-07-13 06:23:12', '2021-07-13 06:23:12'),
(89, 'COD', NULL, NULL, NULL, '2021-07-13 06:26:10', '2021-07-13 06:26:10'),
(90, 'COD', NULL, NULL, NULL, '2021-07-13 06:28:12', '2021-07-13 06:28:12'),
(91, 'COD', NULL, NULL, NULL, '2021-07-13 06:30:34', '2021-07-13 06:30:34'),
(92, 'COD', NULL, NULL, NULL, '2021-07-13 06:57:07', '2021-07-13 06:57:07'),
(93, 'COD', NULL, NULL, NULL, '2021-07-13 06:57:36', '2021-07-13 06:57:36'),
(94, 'COD', NULL, NULL, NULL, '2021-07-13 06:58:46', '2021-07-13 06:58:46'),
(95, 'COD', NULL, NULL, NULL, '2021-07-13 07:08:11', '2021-07-13 07:08:11'),
(96, 'COD', NULL, NULL, NULL, '2021-07-13 07:26:31', '2021-07-13 07:26:31'),
(97, 'COD', NULL, NULL, NULL, '2021-07-13 07:29:16', '2021-07-13 07:29:16'),
(98, 'COD', NULL, NULL, NULL, '2021-07-13 07:29:34', '2021-07-13 07:29:34'),
(99, 'COD', NULL, NULL, NULL, '2021-07-13 07:30:19', '2021-07-13 07:30:19'),
(100, 'COD', NULL, NULL, NULL, '2021-07-13 07:33:54', '2021-07-13 07:33:54'),
(101, 'COD', NULL, NULL, NULL, '2021-07-13 08:06:26', '2021-07-13 08:06:26'),
(102, 'COD', NULL, NULL, NULL, '2021-07-13 08:06:32', '2021-07-13 08:06:32'),
(103, 'COD', NULL, NULL, NULL, '2021-07-13 08:29:28', '2021-07-13 08:29:28'),
(104, 'COD', NULL, NULL, NULL, '2021-07-13 09:22:07', '2021-07-13 09:22:07'),
(105, 'COD', NULL, NULL, NULL, '2021-07-13 09:52:50', '2021-07-13 09:52:50'),
(106, 'COD', NULL, NULL, NULL, '2021-07-13 09:53:06', '2021-07-13 09:53:06'),
(107, 'COD', NULL, NULL, NULL, '2021-07-13 09:55:50', '2021-07-13 09:55:50'),
(108, 'COD', NULL, NULL, NULL, '2021-07-13 10:18:34', '2021-07-13 10:18:34'),
(109, 'COD', NULL, NULL, NULL, '2021-07-13 10:19:39', '2021-07-13 10:19:39'),
(110, 'COD', NULL, NULL, NULL, '2021-07-13 22:40:41', '2021-07-13 22:40:41'),
(111, 'COD', NULL, NULL, NULL, '2021-07-15 08:58:20', '2021-07-15 08:58:20'),
(112, 'COD', NULL, NULL, NULL, '2021-07-17 16:32:34', '2021-07-17 16:32:34'),
(113, 'COD', NULL, NULL, NULL, '2021-07-17 16:32:56', '2021-07-17 16:32:56'),
(114, 'COD', NULL, NULL, NULL, '2021-07-17 16:33:11', '2021-07-17 16:33:11'),
(115, 'COD', NULL, NULL, NULL, '2021-07-17 16:43:32', '2021-07-17 16:43:32'),
(116, 'COD', NULL, NULL, NULL, '2021-07-18 10:19:16', '2021-07-18 10:19:16'),
(117, 'COD', NULL, NULL, NULL, '2021-07-18 10:19:38', '2021-07-18 10:19:38'),
(118, 'COD', NULL, NULL, NULL, '2021-07-19 07:08:05', '2021-07-19 07:08:05'),
(119, NULL, NULL, NULL, NULL, '2021-07-19 10:10:23', '2021-07-19 10:10:23'),
(120, NULL, NULL, NULL, NULL, '2021-07-19 10:12:17', '2021-07-19 10:12:17'),
(121, 'COD', NULL, NULL, NULL, '2021-08-02 07:01:40', '2021-08-02 07:01:40'),
(122, 'COD', NULL, NULL, NULL, '2021-08-02 07:56:34', '2021-08-02 07:56:34'),
(123, 'COD', NULL, NULL, NULL, '2021-08-02 07:57:29', '2021-08-02 07:57:29'),
(124, 'COD', NULL, NULL, NULL, '2021-08-02 09:03:35', '2021-08-02 09:03:35'),
(125, 'COD', NULL, NULL, NULL, '2021-08-02 09:04:08', '2021-08-02 09:04:08'),
(126, 'COD', NULL, NULL, NULL, '2021-08-05 07:17:52', '2021-08-05 07:17:52'),
(127, 'COD', NULL, NULL, NULL, '2021-08-06 00:18:42', '2021-08-06 00:18:42'),
(128, 'COD', NULL, NULL, NULL, '2021-08-08 06:10:38', '2021-08-08 06:10:38'),
(129, 'COD', NULL, NULL, NULL, '2021-08-08 06:43:06', '2021-08-08 06:43:06'),
(130, 'COD', NULL, NULL, NULL, '2021-08-08 07:05:35', '2021-08-08 07:05:35'),
(131, 'COD', NULL, NULL, NULL, '2021-08-08 10:16:59', '2021-08-08 10:16:59'),
(132, 'COD', NULL, NULL, NULL, '2021-08-08 10:26:00', '2021-08-08 10:26:00'),
(133, 'COD', NULL, NULL, NULL, '2021-08-14 03:15:18', '2021-08-14 03:15:18'),
(134, 'COD', NULL, NULL, NULL, '2021-08-14 03:28:46', '2021-08-14 03:28:46'),
(135, 'aamarPay', NULL, NULL, NULL, '2021-09-11 23:06:08', '2021-09-11 23:06:08'),
(136, 'COD', NULL, NULL, NULL, '2021-09-12 00:10:33', '2021-09-12 00:10:33'),
(137, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:17:09', '2021-09-12 00:17:09'),
(138, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:18:48', '2021-09-12 00:18:48'),
(139, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:19:15', '2021-09-12 00:19:15'),
(140, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:21:18', '2021-09-12 00:21:18'),
(141, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:31:23', '2021-09-12 00:31:23'),
(142, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:34:15', '2021-09-12 00:34:15'),
(143, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:34:48', '2021-09-12 00:34:48'),
(144, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:35:50', '2021-09-12 00:35:50'),
(145, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:36:20', '2021-09-12 00:36:20'),
(146, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:38:34', '2021-09-12 00:38:34'),
(147, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:43:56', '2021-09-12 00:43:56'),
(148, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:46:19', '2021-09-12 00:46:19'),
(149, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:47:32', '2021-09-12 00:47:32'),
(150, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:48:10', '2021-09-12 00:48:10'),
(151, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:48:49', '2021-09-12 00:48:49'),
(152, 'aamarPay', NULL, NULL, NULL, '2021-09-12 00:49:24', '2021-09-12 00:49:24'),
(153, 'COD', NULL, NULL, NULL, '2021-09-12 01:32:12', '2021-09-12 01:32:12'),
(154, 'aamarPay', NULL, NULL, NULL, '2021-09-14 22:09:12', '2021-09-14 22:09:12'),
(155, 'aamarPay', NULL, NULL, NULL, '2021-09-14 22:21:34', '2021-09-14 22:21:34'),
(156, 'aamarPay', NULL, NULL, NULL, '2021-09-14 22:23:07', '2021-09-14 22:23:07'),
(157, 'aamarPay', NULL, NULL, NULL, '2021-09-14 22:23:27', '2021-09-14 22:23:27'),
(158, 'aamarPay', NULL, NULL, NULL, '2021-09-14 22:23:47', '2021-09-14 22:23:47'),
(159, 'aamarPay', NULL, NULL, NULL, '2021-09-14 22:47:48', '2021-09-14 22:47:48'),
(160, 'aamarPay', NULL, NULL, NULL, '2021-09-14 22:50:24', '2021-09-14 22:50:24'),
(161, 'aamarPay', NULL, NULL, NULL, '2021-09-14 22:51:06', '2021-09-14 22:51:06'),
(162, 'aamarPay', NULL, NULL, NULL, '2021-09-14 23:28:25', '2021-09-14 23:28:25'),
(163, 'aamarPay', NULL, NULL, NULL, '2021-09-14 23:29:15', '2021-09-14 23:29:15'),
(164, 'aamarPay', NULL, NULL, NULL, '2021-09-14 23:31:35', '2021-09-14 23:31:35'),
(165, 'aamarPay', NULL, NULL, NULL, '2021-09-14 23:31:49', '2021-09-14 23:31:49'),
(166, 'aamarPay', NULL, NULL, NULL, '2021-09-14 23:36:20', '2021-09-14 23:36:20'),
(167, 'aamarPay', NULL, NULL, NULL, '2021-09-14 23:45:55', '2021-09-14 23:45:55'),
(168, 'aamarPay', NULL, NULL, NULL, '2021-09-14 23:47:09', '2021-09-14 23:47:09'),
(169, 'bKash-bKash', '01826323538', '6ED4FIJ1G)', '515.00', '2021-09-14 23:47:20', '2021-09-14 23:47:20'),
(170, 'aamarPay', NULL, NULL, NULL, '2021-09-14 23:52:58', '2021-09-14 23:52:58'),
(171, 'bKash-bKash', '01826323538', '6ED4FIJ1G)', '515.00', '2021-09-14 23:53:20', '2021-09-14 23:53:20'),
(172, 'aamarPay', NULL, NULL, NULL, '2021-09-14 23:55:23', '2021-09-14 23:55:23'),
(173, 'aamarPay', NULL, NULL, NULL, '2021-09-14 23:58:15', '2021-09-14 23:58:15'),
(174, 'aamarPay', NULL, NULL, NULL, '2021-09-15 00:04:33', '2021-09-15 00:04:33'),
(175, 'aamarPay', NULL, NULL, NULL, '2021-09-15 00:05:40', '2021-09-15 00:05:40'),
(176, 'aamarPay', NULL, NULL, NULL, '2021-09-15 00:06:41', '2021-09-15 00:06:41'),
(177, 'aamarPay', NULL, NULL, NULL, '2021-09-15 00:08:44', '2021-09-15 00:08:44'),
(178, 'aamarPay', NULL, NULL, NULL, '2021-09-15 00:15:44', '2021-09-15 00:15:44'),
(179, 'aamarPay', NULL, NULL, NULL, '2021-09-15 00:17:18', '2021-09-15 00:17:18'),
(180, 'bKash-bKash', '01826323538', '6ED4FIJ1G)', '650.00', '2021-09-15 00:19:07', '2021-09-15 00:19:18'),
(181, 'aamarPay', NULL, NULL, NULL, '2021-09-15 00:21:54', '2021-09-15 00:21:54'),
(182, 'bKash-bKash', '01826323538', '6ED4FIJ1G)', '580.00', '2021-09-15 00:23:07', '2021-09-15 00:23:20'),
(183, 'bKash-bKash', '01826323538', '6ED4FIJ1G)', '680.00', '2021-09-15 01:08:59', '2021-09-15 01:09:11'),
(184, 'COD', NULL, NULL, NULL, '2021-09-15 01:18:08', '2021-09-15 01:18:08'),
(185, 'aamarPay', NULL, NULL, NULL, '2021-09-15 02:00:06', '2021-09-15 02:00:06'),
(186, 'aamarPay', NULL, NULL, NULL, '2021-09-15 02:01:17', '2021-09-15 02:01:17'),
(187, 'aamarPay', NULL, NULL, NULL, '2021-09-15 02:41:49', '2021-09-15 02:41:49'),
(188, 'bKash-bKash', '01826323538', '6ED4FIJ1G)', '550.00', '2021-09-15 03:04:34', '2021-09-15 03:04:45'),
(189, 'aamarPay', NULL, NULL, NULL, '2021-09-15 05:07:22', '2021-09-15 05:07:22'),
(190, 'bKash-bKash', '01826323538', '6ED4FIJ1G)', '650.00', '2021-09-15 08:32:27', '2021-09-15 08:32:40'),
(191, 'COD', NULL, NULL, NULL, '2021-11-20 22:17:47', '2021-11-20 22:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `customer_id`, `shipping_id`, `order_id`, `prescription`, `created_at`, `updated_at`) VALUES
(1, '1', '79', '73', 'admin/prescription/1401167088.jpg', '2021-07-13 02:46:58', '2021-07-13 02:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_price` double(8,2) NOT NULL,
  `discount_product_amount` double(8,2) DEFAULT NULL,
  `discount_product_price` double(8,2) DEFAULT NULL,
  `product_cost` double(8,2) DEFAULT NULL,
  `product_highlight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_made_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `best_selling` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `new_arrival` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `Special_Offer` tinyint(4) NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `orginal_product_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `supplier_id`, `product_name`, `slug`, `product_code`, `product_price`, `discount_product_amount`, `discount_product_price`, `product_cost`, `product_highlight`, `product_stock`, `product_made_by`, `short_description`, `description`, `main_image`, `second_image`, `best_selling`, `trending`, `new_arrival`, `featured`, `Special_Offer`, `publication_status`, `orginal_product_link`, `youtube_link`, `created_at`, `updated_at`) VALUES
(33, 88, NULL, 'NIGHT VISION DRIVING GLASSES - DRIVER WAYFARER FOR DAY AND NIGHT', 'NIGHT-VISION-DRIVING-GLASSES---DRIVER-WAYFARER-FOR-DAY-AND-NIGHT', NULL, 500.00, 200.00, 300.00, NULL, NULL, '55', NULL, '<ul><li>SIZE: REGULAR </li><li>MATERIALS: PLASTIC</li><li>LENS MATERIALS: POLYCARBONATE</li><li><span style=\"background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS </span></li></ul>', NULL, 'image/product/product_image/main_image-330008441.jpeg', 'image/product/product_image/second_image-1923212416.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 13:36:39', '2021-07-25 14:39:59'),
(34, 66, NULL, 'Tony Stark Sunglasses Vintage Square Metal Frame Eyeglasses for Men Women - Iron Man and Spider-Man Sun Glasses', 'Tony-Stark-Sunglasses-Vintage-Square-Metal-Frame-Eyeglasses-for-Men-Women---Iron-Man-and-Spider-Man-Sun-Glasses', NULL, 500.00, 101.00, 399.00, NULL, NULL, '55', 'CHAINA', '<ul><li>Frame Materials: METAL </li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"background-color: rgb(255, 255, 0);\">Included : BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-863425447.jpeg', 'image/product/product_image/second_image-675435053.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 14:24:35', '2021-07-25 14:39:37'),
(35, 88, NULL, 'Retro Rectangle Sunglasses  Metal Semi Rim Square Sunglass', 'Retro-Rectangle-Sunglasses-Metal-Semi-Rim-Square-Sunglass', NULL, 500.00, 101.00, 399.00, NULL, NULL, '2', NULL, '<ul><li>Frame Materials: METAL </li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1208662027.jpeg', 'image/product/product_image/second_image-2086399914.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 14:37:44', '2021-07-25 14:39:08'),
(36, 66, NULL, 'Kabir Singh Celebrity Style India Film Sunglasses blue shade', 'Kabir-Singh-Celebrity-Style-India-Film-Sunglasses-blue-shade', NULL, 500.00, 101.00, 399.00, NULL, NULL, '55', NULL, '<ul><li>Frame Materials: METAL </li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1059712625.jpeg', 'image/product/product_image/second_image-1832112281.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 14:49:40', '2021-07-31 01:40:40'),
(37, 88, NULL, 'Vintage Small Round Sunglasses  Brand Designer  Female Alloy  Retro Black Circle', 'Vintage-Small-Round-Sunglasses-Brand-Designer-Female-Alloy-Retro-Black-Circle', NULL, 500.00, 50.00, 450.00, NULL, NULL, '2', NULL, '<ul><li>Frame Materials: METAL </li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1048340710.jpeg', 'image/product/product_image/second_image-1891986527.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 14:53:20', '2021-07-31 01:40:00'),
(38, NULL, NULL, 'Vintage Small Round Sunglasses Brand Designer Female Alloy Retro yellow  Circle golden tone', 'Vintage-Small-Round-Sunglasses-Brand-Designer-Female-Alloy-Retro-yellow-Circle-golden-tone', NULL, 500.00, 101.00, 399.00, NULL, NULL, '2', NULL, '<ul><li>Frame Materials: METAL </li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-2107651305.jpeg', 'image/product/product_image/second_image-1343030508.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 14:58:17', '2021-07-31 01:39:22'),
(39, 67, NULL, 'Luxury Brand Vintage Triangle Cat Eye Sun Glasses Trending Fashion Black Small sunglass', 'Luxury-Brand-Vintage-Triangle-Cat-Eye-Sun-Glasses-Trending-Fashion-Black-Small-sunglass', NULL, 600.00, 100.00, 500.00, NULL, NULL, '10', NULL, '<ul><li>Frame Materials: Plastic</li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-871874686.jpeg', 'image/product/product_image/second_image-1066090445.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 15:33:28', '2021-07-31 01:38:38'),
(40, 67, NULL, 'Luxury Brand Vintage Triangle Cat Eye Sun Glasses Trending Fashion Brown tortoise  Small sunglass', 'Luxury-Brand-Vintage-Triangle-Cat-Eye-Sun-Glasses-Trending-Fashion-Brown-tortoise-Small-sunglass', NULL, 600.00, 100.00, 500.00, NULL, NULL, '10', NULL, '<ul><li>Frame Materials: PLASTIC </li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1307467284.jpeg', 'image/product/product_image/second_image-513234984.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 15:39:16', '2021-07-31 01:37:42'),
(41, NULL, NULL, 'Classic Fashion Cat Eye Sunglasses Women Sexy Lady Famous Luxury Brand Designer Sun Glasses For Female', 'Classic-Fashion-Cat-Eye-Sunglasses-Women-Sexy-Lady-Famous-Luxury-Brand-Designer-Sun-Glasses-For-Female', NULL, 600.00, 100.00, 500.00, NULL, NULL, '10', 'CHAINA', '<ul><li>Frame Materials: Plastic</li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1076937086.jpeg', 'image/product/product_image/second_image-479208863.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 15:48:15', '2021-07-31 01:35:16'),
(42, 88, NULL, 'Fashion Brand New 2021 Small Cat Eye Sunglasses Women Triangle Shape Vintage Metal  Yellow  Color Trendy Sun Glasses', 'Fashion-Brand-New-2021-Small-Cat-Eye-Sunglasses-Women-Triangle-Shape-Vintage-Metal-Yellow-Color-Trendy-Sun-Glasses', NULL, 600.00, 100.00, 500.00, NULL, NULL, '10', NULL, '<ul><li>Frame Materials: METAL </li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-2095521787.jpeg', 'image/product/product_image/second_image-1807675645.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 16:02:04', '2021-07-31 01:33:55'),
(43, 88, NULL, 'NEW FASHIONABLE  TONY STARK SUNGLASS EYEWEAR ROBERT DOWNEY IRON MAN', 'NEW-FASHIONABLE-TONY-STARK-SUNGLASS-EYEWEAR-ROBERT-DOWNEY-IRON-MAN', NULL, 500.00, 200.00, 300.00, NULL, NULL, '55', NULL, '<ul><li>Frame Materials: PLASTIC</li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-352092345.jpeg', 'image/product/product_image/second_image-554898397.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 16:30:32', '2021-07-31 01:33:27'),
(44, 88, NULL, 'Ultra Slim Sunglass for Men Retro Round Sunglass Lightweight Plastic METAL MIXED  Frame', 'Ultra-Slim-Sunglass-for-Men-Retro-Round-Sunglass-Lightweight-Plastic-METAL-MIXED-Frame', NULL, 300.00, 100.00, 200.00, NULL, NULL, '10', NULL, '<ul><li>Frame Materials: METAL +PLASTIC</li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-670708216.jpeg', 'image/product/product_image/second_image-2068341890.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 16:35:32', '2021-07-27 14:32:05'),
(45, 88, NULL, 'Fashion Brand New 2021 Small Cat Eye Sunglasses Women Triangle Shape Vintage Metal blue green Color Trendy Sun Glasses', 'Fashion-Brand-New-2021-Small-Cat-Eye-Sunglasses-Women-Triangle-Shape-Vintage-Metal-blue-green-Color-Trendy-Sun-Glasses', NULL, 600.00, 101.00, 499.00, NULL, NULL, '2', NULL, '<ul><li>Frame Materials: METAL </li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-293086147.jpeg', 'image/product/product_image/second_image-479638070.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-25 16:45:24', '2021-07-27 14:32:40'),
(46, 88, NULL, 'Futuristic Johnny Depp Rivet oval black shinny sunglass', 'Futuristic-Johnny-Depp-Rivet-oval-black-shinny-sunglass', NULL, 600.00, 150.00, 450.00, NULL, NULL, '10', NULL, '<ul><li>Frame Materials: Plastic</li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-27099373.jpeg', 'image/product/product_image/second_image-1945295230.jpeg', 0, 0, 1, 0, 0, 1, NULL, NULL, '2021-07-27 13:29:43', '2021-07-31 01:18:26'),
(47, 66, NULL, 'Tony Stark Sunglasses Vintage Square Metal Frame Eyeglasses for Men Women - Iron Man and Spider-Man Sun Glasses', 'Tony-Stark-Sunglasses-Vintage-Square-Metal-Frame-Eyeglasses-for-Men-Women---Iron-Man-and-Spider-Man-Sun-Glasses', NULL, 600.00, 150.00, 450.00, NULL, 'UV', '1200', 'CHAINA', '<ul><li>Frame Materials: METAL </li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included : BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-222415395.jpeg', 'image/product/product_image/second_image-342292369.jpeg', 1, 1, 0, 0, 0, 1, NULL, NULL, '2021-07-27 13:54:02', '2021-07-31 01:17:43'),
(48, 66, NULL, 'futuristic Johnny Depp Rivet oval black shinny sunglass | Classic Small Frame Rectangle BLACK SHINNY  Sunglass', 'futuristic-Johnny-Depp-Rivet-oval-black-shinny-sunglass-|-Classic-Small-Frame-Rectangle-BLACK-SHINNY-Sunglass', NULL, 500.00, 201.00, 299.00, NULL, NULL, '10', NULL, '<ul><li>Frame Materials: Plastic</li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included : BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1848436340.jpeg', 'image/product/product_image/second_image-203964609.jpeg', 0, 1, 0, 1, 0, 1, NULL, NULL, '2021-07-27 14:24:36', '2021-07-31 01:16:55'),
(49, NULL, NULL, 'futuristic Johnny Depp Rivet oval black shinny sunglass | Classic  Frame Rectangle BLACK SHINNY  Sunglass', 'futuristic-Johnny-Depp-Rivet-oval-black-shinny-sunglass-|-Classic-Frame-Rectangle-BLACK-SHINNY-Sunglass', NULL, 500.00, 101.00, 399.00, NULL, NULL, '10', NULL, '<ul><li>Frame Materials: Plastic</li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-219701850.jpeg', 'image/product/product_image/second_image-463224334.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-27 14:38:57', '2021-07-31 01:16:29'),
(50, 88, NULL, 'Big Frame  Kabir sing  Sunglasses Classic Vintage Square Metal Glasses for  Men Sun Glasses Uv400', 'Big-Frame-Kabir-sing-Sunglasses-Classic-Vintage-Square-Metal-Glasses-for-Men-Sun-Glasses-Uv400', NULL, 800.00, 250.00, 550.00, NULL, 'UV', '2', NULL, '<ul><li>Frame Materials: METAL </li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included : BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1824680630.jpeg', 'image/product/product_image/second_image-491601117.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-27 14:52:53', '2021-07-31 01:15:04'),
(51, 85, NULL, 'Aviation Metail Frame Sunglass for  Men golden tone', 'Aviation-Metail-Frame-Sunglass-for-Men-golden-tone', NULL, 600.00, 150.00, 450.00, NULL, NULL, '10', NULL, '<ul><li>Frame Materials: METAL </li><li>Lens Materials: POLYCARBONATE </li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included : BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-802467073.jpeg', 'image/product/product_image/second_image-729603594.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-07-27 15:02:59', '2021-07-31 01:14:13'),
(52, NULL, NULL, '1.1 MILLIONAIRES  LOUIS VUITTON LUXURY  SUNGLASSES (TIK TOK)', '1.1-MILLIONAIRES-LOUIS-VUITTON-LUXURY-SUNGLASSES-(TIK-TOK)', NULL, 1200.00, 500.00, 700.00, NULL, 'UV', '10', NULL, '<div><br></div>', '<ul><li>FRAME MATERIALS: Black acetate frame</li><li>LENS MATERIALS: POLYCARBONATE&nbsp;</li><li>Monogram pattern engraved along the top</li><li>UV Protection :100%</li><li><span style=\"background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS&nbsp;</span></li></ul>', 'image/product/product_image/main_image-1374567706.jpeg', 'image/product/product_image/second_image-822767031.jpeg', 1, 1, 0, 0, 0, 1, NULL, NULL, '2021-08-08 09:44:24', '2021-08-08 11:38:25'),
(53, 88, NULL, 'Transparent shade Square Glasses Plastic Eyeglass Frames', 'Transparent-shade-Square-Glasses-Plastic-Eyeglass-Frames', NULL, 700.00, 200.00, 500.00, NULL, NULL, '10', 'CHAINA', 'Frame Materials: Plastic<br>Lens Materials: POLYCARBONATE <br>Included: BOX AND WEEPS', NULL, 'image/product/product_image/main_image-1792195784.jpeg', 'image/product/product_image/second_image-125133938.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-09 11:51:32', '2021-08-19 01:48:56'),
(54, 64, NULL, 'Ray-Ban Folding Wayfarer Sunglasses in BROWN TONE  RB4105', 'Ray-Ban-Folding-Wayfarer-Sunglasses-in-BROWN-TONE-RB4105', NULL, 1200.00, 500.00, 700.00, NULL, 'UV', '10', NULL, '<ul><li>Frame Materials: Plastic</li><li>Lens Materials: POLYCARBONATE&nbsp;</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1819673073.jpeg', 'image/product/product_image/second_image-56178352.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-09 12:16:04', '2021-08-19 01:49:59'),
(55, NULL, NULL, 'Black glossy  Plastic Square Eyeglasses', 'Black-glossy-Plastic-Square-Eyeglasses', NULL, 700.00, 200.00, 500.00, NULL, NULL, '10', NULL, '<ul><li>Frame Materials: Plastic</li><li>Lens Materials: POLYCARBONATE&nbsp;</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1381478496.jpeg', 'image/product/product_image/second_image-1585850292.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-09 12:21:05', '2021-08-19 01:50:30'),
(56, NULL, NULL, 'Transparent Plastic Square Eyeglasses', 'Transparent-Plastic-Square-Eyeglasses', NULL, 700.00, 200.00, 500.00, NULL, NULL, '5', NULL, 'Frame Materials: Plastic<br>Lens Materials: POLYCARBONATE <br>Included: BOX AND WEEPS<br>', NULL, 'image/product/product_image/main_image-468147368.jpeg', 'image/product/product_image/second_image-1279279638.jpeg', 0, 1, 0, 0, 0, 1, NULL, NULL, '2021-08-09 12:26:17', '2021-08-19 01:59:07'),
(57, NULL, NULL, 'Altom Anti-radiation glasses men\'s women\'s anti-blue light Korean version', 'Altom-Anti-radiation-glasses-men\'s-women\'s-anti-blue-light-Korean-version', NULL, 700.00, 200.00, 500.00, NULL, 'UV', '5', NULL, 'ANTI BLUE LIGHT <br>Frame Materials: Plastic<br>Lens Materials: POLYCARBONATE<br>Included: BOX AND WEEPS', NULL, 'image/product/product_image/main_image-2012759211.jpeg', 'image/product/product_image/second_image-1380730408.jpeg', 0, 1, 1, 0, 0, 1, NULL, NULL, '2021-08-09 12:42:29', '2021-08-19 01:47:10'),
(60, NULL, NULL, 'Silver metal Square Rimmed Eyeglasses', 'Silver-metal-Square-Rimmed-Eyeglasses', NULL, 1200.00, 500.00, 700.00, NULL, NULL, '1', NULL, '<ul><li>Frame Materials: Metal</li><li>Lens Materials: POLYCARBONATE (Demo lens )</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-41309038.jpeg', 'image/product/product_image/second_image-181061117.jpeg', 0, 0, 0, 1, 0, 1, NULL, NULL, '2021-08-09 13:02:13', '2021-08-09 13:02:13'),
(61, NULL, NULL, 'Aviation Metal Frame Night vision  Sunglass for Men\'s', 'Aviation-Metal-Frame-Night-vision-Sunglass-for-Men\'s', NULL, 1200.00, 500.00, 700.00, NULL, 'UV', '5', NULL, '<ul><li>Frame Materials: Metal</li><li>Lens Materials: POLYCARBONATE&nbsp;</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1561609529.jpeg', 'image/product/product_image/second_image-43366718.jpeg', 0, 0, 0, 1, 0, 1, NULL, NULL, '2021-08-09 13:12:50', '2021-08-09 13:12:50'),
(62, NULL, NULL, 'Aviation Metal Frame RED vision  Sunglass for Men\'s', 'Aviation-Metal-Frame-RED-vision-Sunglass-for-Men\'s', NULL, 700.00, 200.00, 500.00, NULL, 'UV', '2', NULL, '<ul><li>Frame Materials: Metal</li><li>Lens Materials: POLYCARBONATE&nbsp;</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-605173900.jpeg', 'image/product/product_image/second_image-1450250160.jpeg', 0, 0, 0, 1, 0, 1, NULL, NULL, '2021-08-09 13:17:23', '2021-08-09 13:17:23'),
(63, 67, NULL, 'Gucci Crystal-embellished oversized Women\'s Designer Luxury Square & Rectangle Sunglasses', 'Gucci-Crystal-embellished-oversized-Women\'s-Designer-Luxury-Square-&-Rectangle-Sunglasses', NULL, 1200.00, 300.00, 900.00, NULL, 'UV', '1', NULL, '<p><span style=\"background-color: rgb(255, 255, 255);\">Frame Materials: High-quality fiber </span></p><p><span style=\"background-color: rgb(255, 255, 255);\">Lens Materials: POLYCARBONATE&nbsp;</span></p><p><span style=\"background-color: rgb(255, 255, 255);\"><span style=\"transition: all 0.3s ease 0s;\">Included: BOX AND WEEPS</span></span></p>', NULL, 'image/product/product_image/main_image-1175371395.jpeg', 'image/product/product_image/second_image-2013677662.jpeg', 1, 0, 0, 0, 1, 1, NULL, NULL, '2021-08-09 13:27:15', '2021-08-10 05:45:49'),
(64, NULL, NULL, 'Hottest & Latest kabir sing sunglass with silver tone metallic frame', 'Hottest-&-Latest-kabir-sing-sunglass-with-silver-tone-metallic-frame', NULL, 700.00, 150.00, 550.00, NULL, 'UV', '10', NULL, '<ul><li>Frame Materials: Metal</li><li>Lens Materials: POLYCARBONATE&nbsp;</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-2009237869.jpeg', 'image/product/product_image/second_image-1730355383.jpeg', 1, 0, 1, 0, 0, 1, NULL, NULL, '2021-08-09 13:46:31', '2021-08-09 13:46:31'),
(66, 66, NULL, 'Hottest & Latest kabir sing sunglass with GOLDEN tone metallic frame', 'Hottest-&-Latest-kabir-sing-sunglass-with-GOLDEN-tone-metallic-frame', NULL, 700.00, 150.00, 550.00, NULL, 'UV', '10', NULL, '<ul><li>Frame Materials: Metal</li><li>Lens Materials: POLYCARBONATE&nbsp;</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-427591386.jpeg', 'image/product/product_image/second_image-921045733.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(67, 66, NULL, 'Lexington  rectangle square   vision sunglass', 'Lexington-rectangle-square-vision-sunglass', NULL, 1200.00, 400.00, 800.00, NULL, 'UV', '2', NULL, '<ul><li>Frame Materials: Metal And Fiber&nbsp;</li><li>Lens Materials: POLYCARBONATE&nbsp;</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-2093962153.jpeg', 'image/product/product_image/second_image-413945546.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(70, NULL, NULL, 'Lexington rectangle square Pink  vision sunglass', 'Lexington-rectangle-square-Pink-vision-sunglass', NULL, 1200.00, 400.00, 800.00, NULL, NULL, '2', NULL, '<ul><li>Frame Materials: Metal And Fiber&nbsp;</li><li>Lens Materials: POLYCARBONATE&nbsp;</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1695228942.jpeg', 'image/product/product_image/second_image-1791257071.jpeg', 0, 1, 0, 0, 0, 1, NULL, NULL, '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(71, 75, NULL, 'Premium Quality Classic Square men\'s black shinny sunglass', 'Premium-Quality-Classic-Square-men\'s-black-shinny-sunglass', NULL, 800.00, 300.00, 500.00, NULL, 'UV', '10', NULL, '<ul><li>FRAME MATERIALS: Black acetate frame</li><li>LENS MATERIALS: POLYCARBONATE&nbsp;</li><li>Monogram pattern&nbsp;</li><li>UV Protection :100%</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS&nbsp;</span></li></ul>', NULL, 'image/product/product_image/main_image-1432142391.jpeg', 'image/product/product_image/second_image-1123366944.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-14 15:13:37', '2021-08-19 01:32:06'),
(72, NULL, NULL, 'Dollger Vintage Steampunk Retro Metal Round Circle Frame Sunglasses', 'Dollger-Vintage-Steampunk-Retro-Metal-Round-Circle-Frame-Sunglasses', NULL, 700.00, 500.00, 200.00, NULL, NULL, '2', NULL, '<ul><li>FRAME MATERIALS: METAL</li><li>LENS MATERIALS: POLYCARBONATE&nbsp;</li><li>UV Protection :100%</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS&nbsp;</span></li></ul>', NULL, 'image/product/product_image/main_image-176993286.jpeg', 'image/product/product_image/second_image-2001601377.jpeg', 0, 1, 0, 0, 0, 1, NULL, NULL, '2021-08-14 15:34:11', '2021-08-14 15:34:11'),
(73, 88, NULL, 'Retro Rimless Rectangle Sunglasses for  Men Tinted Lens Gold Metal Frameless Vintage Square Glasses', 'Retro-Rimless-Rectangle-Sunglasses-for-Men-Tinted-Lens-Gold-Metal-Frameless-Vintage-Square-Glasses', NULL, 700.00, 200.00, 500.00, NULL, 'UV', '2', NULL, 'FRAME MATERIALS: Metal<br>LENS MATERIALS: POLYCARBONATE <br>Monogram pattern engraved along the top<br>UV Protection :100%<br>INCLUDED: BOX AND WEEPS <br>', NULL, 'image/product/product_image/main_image-761331815.jpeg', 'image/product/product_image/second_image-1442308297.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-14 15:43:14', '2021-08-19 01:44:52'),
(74, 88, NULL, 'Geometric Round Gold Frame Retro  Sunglasses', 'Geometric-Round-Gold-Frame-Retro-Sunglasses', NULL, 700.00, 200.00, 500.00, NULL, NULL, '2', NULL, 'FRAME MATERIALS: Black acetate frame<br>LENS MATERIALS: POLYCARBONATE <br>Monogram pattern engraved along the top<br>UV Protection :100%<br>INCLUDED: BOX AND WEEPS <br>', NULL, 'image/product/product_image/main_image-2052098220.jpeg', 'image/product/product_image/second_image-96438102.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-14 15:46:16', '2021-08-19 01:43:45'),
(75, NULL, NULL, 'Retro Rimless Rectangle Sunglasses For Men Tinted Lens silver Metal Frameless Vintage Square Glasses', 'Retro-Rimless-Rectangle-Sunglasses-For-Men-Tinted-Lens-silver-Metal-Frameless-Vintage-Square-Glasses', NULL, 700.00, 200.00, 500.00, NULL, 'UV', '2', NULL, '<ul><li>FRAME MATERIALS: Metal</li><li>LENS MATERIALS: POLYCARBONATE&nbsp;</li><li>Monogram pattern engraved along the top</li><li>UV Protection :100%</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS&nbsp;</span></li></ul>', NULL, 'image/product/product_image/main_image-1994859223.jpeg', 'image/product/product_image/second_image-687143173.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-14 15:49:59', '2021-08-19 00:27:20'),
(76, NULL, NULL, 'Retro Rimless Rectangle Sunglasses For Men Tinted Lens silver  Metal Frameless Vintage Square Glasses', 'Retro-Rimless-Rectangle-Sunglasses-For-Men-Tinted-Lens-silver-Metal-Frameless-Vintage-Square-Glasses', NULL, 700.00, 200.00, 500.00, NULL, NULL, '2', NULL, '<ul><li>FRAME MATERIALS: Black acetate frame</li><li>LENS MATERIALS: POLYCARBONATE&nbsp;</li><li>Monogram pattern engraved along the top</li><li>UV Protection :100%</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS&nbsp;</span></li></ul>', NULL, 'image/product/product_image/main_image-1172109698.jpeg', 'image/product/product_image/second_image-1156726697.jpeg', 0, 1, 0, 1, 1, 1, NULL, NULL, '2021-08-14 15:53:27', '2021-08-14 15:53:27'),
(77, 88, NULL, 'Geometric Round silver  Frame Retro Sunglasses', 'Geometric-Round-silver-Frame-Retro-Sunglasses', NULL, 700.00, 500.00, 200.00, NULL, NULL, '2', NULL, '<ul><li>FRAME MATERIALS: Black acetate frame</li><li>LENS MATERIALS: POLYCARBONATE&nbsp;</li><li>Monogram pattern engraved along the top</li><li>UV Protection :100%</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS&nbsp;</span></li></ul>', NULL, 'image/product/product_image/main_image-393019349.jpeg', 'image/product/product_image/second_image-1906550772.jpeg', 0, 0, 0, 1, 0, 1, NULL, NULL, '2021-08-14 15:56:30', '2021-08-14 15:56:30'),
(78, NULL, NULL, 'Dollger Vintage Steampunk Retro Metal Round Circle Frame Sunglasses', 'Dollger-Vintage-Steampunk-Retro-Metal-Round-Circle-Frame-Sunglasses', NULL, 700.00, 200.00, 500.00, NULL, NULL, '2', NULL, '<ul><li>FRAME MATERIALS: Black acetate frame</li><li>LENS MATERIALS: POLYCARBONATE&nbsp;</li><li>Monogram pattern engraved along the top</li><li>UV Protection :100%</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS&nbsp;</span></li></ul>', NULL, 'image/product/product_image/main_image-1698052652.jpeg', 'image/product/product_image/second_image-1001318414.jpeg', 0, 0, 0, 0, 1, 1, NULL, NULL, '2021-08-14 15:59:48', '2021-08-14 15:59:48'),
(79, 88, NULL, 'Retro Rimless Rectangle Sunglasses For Men Tinted Lens silver Metal Frameless Vintage Square Glasses', 'Retro-Rimless-Rectangle-Sunglasses-For-Men-Tinted-Lens-silver-Metal-Frameless-Vintage-Square-Glasses', NULL, 700.00, 500.00, 200.00, NULL, NULL, '2', NULL, '<ul><li>FRAME MATERIALS: Metal frame</li><li>LENS MATERIALS: POLYCARBONATE&nbsp;</li><li>Monogram pattern engraved along the top</li><li>UV Protection :100%</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS&nbsp;</span></li></ul>', NULL, 'image/product/product_image/main_image-1691790401.jpeg', 'image/product/product_image/second_image-1435321376.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-14 16:05:48', '2021-08-19 00:26:27'),
(80, 88, NULL, 'Classic Vintage Retro  Round  Sunglasses', 'Classic-Vintage-Retro-Round-Sunglasses', NULL, 700.00, 200.00, 500.00, NULL, 'UV', '2', NULL, '<ul><li>FRAME MATERIALS: Metal</li><li>LENS MATERIALS: POLYCARBONATE&nbsp;</li><li>Monogram pattern engraved along the top</li><li>UV Protection :100%</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS&nbsp;</span></li></ul>', NULL, 'image/product/product_image/main_image-1487083663.jpeg', 'image/product/product_image/second_image-1096640944.jpeg', 0, 1, 1, 0, 1, 1, NULL, NULL, '2021-08-15 02:06:09', '2021-08-19 00:26:17'),
(81, 88, NULL, 'Classic Vintage Retro  Round fashionable  Sunglasse', 'Classic-Vintage-Retro-Round-fashionable-Sunglasse', NULL, 700.00, 200.00, 500.00, NULL, NULL, '2', NULL, '<ul><li>FRAME MATERIALS: Metal</li><li>LENS MATERIALS: POLYCARBONATE&nbsp;</li><li>Monogram pattern engraved along the top</li><li>UV Protection :100%</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS&nbsp;</span></li></ul>', NULL, 'image/product/product_image/main_image-70479967.jpeg', 'image/product/product_image/second_image-87249301.jpeg', 0, 1, 0, 1, 1, 1, NULL, NULL, '2021-08-15 02:39:20', '2021-08-15 02:39:20'),
(82, 88, NULL, 'Geometric Round Silver Frame Retro Sunglasses', 'Geometric-Round-Silver-Frame-Retro-Sunglasses', NULL, 700.00, 500.00, 200.00, NULL, 'UV', '2', NULL, '<ul><li>FRAME MATERIALS: Metal</li><li>LENS MATERIALS: POLYCARBONATE&nbsp;</li><li>UV Protection :100%</li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0);\">INCLUDED: BOX AND WEEPS&nbsp;</span></li></ul>', NULL, 'image/product/product_image/main_image-1888662461.jpeg', 'image/product/product_image/second_image-169196265.jpeg', 0, 0, 1, 0, 0, 1, NULL, NULL, '2021-08-15 02:56:05', '2021-08-19 00:25:30'),
(83, 88, NULL, 'Classic Vintage Retro Round Night vision  Sunglasses', 'Classic-Vintage-Retro-Round-Night-vision-Sunglasses', NULL, 700.00, 500.00, 200.00, NULL, 'N', '2', NULL, 'FRAME MATERIALS: Metal<br>LENS MATERIALS: POLYCARBONATE <br>UV Protection :100%<br>INCLUDED: BOX AND WEEPS&nbsp; <br>', NULL, 'image/product/product_image/main_image-517507697.jpeg', 'image/product/product_image/second_image-1919519312.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-15 03:18:44', '2021-08-19 03:16:21'),
(84, NULL, NULL, 'Classic Vintage Retro Round Fashionable Sunglasse', 'Classic-Vintage-Retro-Round-Fashionable-Sunglasse', NULL, 700.00, 500.00, 200.00, NULL, 'UV', '2', NULL, 'FRAME MATERIALS: Metal<br>LENS MATERIALS: POLYCARBONATE<br>UV Protection :100%<br>INCLUDED: BOX AND WEEPS <br>', NULL, 'image/product/product_image/main_image-1429643540.jpeg', 'image/product/product_image/second_image-1954786874.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-15 03:30:15', '2021-08-19 01:14:22'),
(85, 88, NULL, 'Dollger Vintage Steampunk Retro Metal Round Circle Frame Sunglasses', 'Dollger-Vintage-Steampunk-Retro-Metal-Round-Circle-Frame-Sunglasses', NULL, 700.00, 200.00, 500.00, NULL, NULL, '2', NULL, 'FRAME MATERIALS: Black acetate frame<br>LENS MATERIALS: POLYCARBONATE <br>UV Protection :100%<br>INCLUDED: BOX AND WEEPS <br>', NULL, 'image/product/product_image/main_image-1097947359.jpeg', 'image/product/product_image/second_image-1715343698.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-15 03:45:08', '2021-08-19 03:17:38'),
(86, 83, NULL, 'Fendi Trendy Oversized Square Sunglasses for Women Men Flat Mirrored Lens Shield Sun Glasses', 'Fendi-Trendy-Oversized-Square-Sunglasses-for-Women-Men-Flat-Mirrored-Lens-Shield-Sun-Glasses', NULL, 1200.00, 600.00, 600.00, NULL, 'UV', '2', NULL, 'FRAME MATERIALS: Metallic&nbsp;&nbsp; frame<br>LENS MATERIALS: POLYCARBONATE <br>UV Protection :100%<br>INCLUDED: BOX AND WEEPS <br>', NULL, 'image/product/product_image/main_image-696809555.jpeg', 'image/product/product_image/second_image-1237543670.jpeg', 0, 0, 0, 1, 0, 1, NULL, NULL, '2021-08-16 15:14:57', '2021-08-19 02:55:32'),
(87, 67, NULL, 'GUCCHI Trendy Oversized Square Sunglasses for Women Men Flat Mirrored Lens Shield Sun Glasses', 'GUCCHI-Trendy-Oversized-Square-Sunglasses-for-Women-Men-Flat-Mirrored-Lens-Shield-Sun-Glasses', NULL, 1200.00, 600.00, NULL, NULL, 'UV', '2', NULL, 'FRAME MATERIALS: Metallic&nbsp;&nbsp; frame<br>LENS MATERIALS: POLYCARBONATE <br>UV Protection :100%<br>INCLUDED: BOX AND WEEPS', '<ul><li><span style=\"font-family: Arial;\">FRAME MATERIALS: M</span><span style=\"transition: all 0.3s ease 0s; color: rgb(15, 17, 17); font-family: Arial; font-size: 18px; font-style: italic;\">etallic </span><span style=\"font-family: Arial;\">  frame</span></li><li><span style=\"font-family: Arial;\">LENS MATERIALS: POLYCARBONATE </span></li><li><font style=\"vertical-align: inherit;\"><span style=\"font-family: Arial;\">UV Protection :100%</span></font><br></li><li><span style=\"transition: all 0.3s ease 0s; background-color: rgb(255, 255, 0); font-family: Arial;\">INCLUDED: BOX AND WEEPS </span></li></ul>', 'image/product/product_image/main_image-1064762363.jpeg', 'image/product/product_image/second_image-445687063.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-16 15:21:38', '2021-08-19 02:54:13'),
(88, NULL, NULL, 'Fendi Trendy Oversized Square Sunglasses for Women Men Flat Mirrored Lens Shield Sun Glasses', 'Fendi-Trendy-Oversized-Square-Sunglasses-for-Women-Men-Flat-Mirrored-Lens-Shield-Sun-Glasses', NULL, 1200.00, 600.00, 600.00, NULL, 'UV', '2', NULL, 'FRAME MATERIALS: Metallic&nbsp;&nbsp; frame<br>LENS MATERIALS: POLYCARBONATE <br>UV Protection :100%<br>INCLUDED: BOX AND WEEPS <br>', NULL, 'image/product/product_image/main_image-1061947472.jpeg', 'image/product/product_image/second_image-1788863618.jpeg', 0, 1, 0, 0, 0, 1, NULL, NULL, '2021-08-16 16:07:21', '2021-08-19 02:52:57'),
(89, 67, NULL, 'GUCCHI Trendy Oversized Square Sunglasses for Women Men Flat Mirrored Lens Shield Sun Glasses', 'GUCCHI-Trendy-Oversized-Square-Sunglasses-for-Women-Men-Flat-Mirrored-Lens-Shield-Sun-Glasses', NULL, 1200.00, 600.00, 600.00, NULL, 'UV', '2', NULL, 'FRAME MATERIALS: Metallic&nbsp;&nbsp; frame<br>LENS MATERIALS: POLYCARBONATE <br>UV Protection :100%<br>INCLUDED: BOX AND WEEPS', NULL, 'image/product/product_image/main_image-1075402579.jpeg', 'image/product/product_image/second_image-1699242834.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-16 16:16:33', '2021-08-19 02:51:39'),
(90, 83, NULL, 'Fendi Trendy Oversized Square Sunglasses for Women Men Flat Mirrored Lens Shield Sun Glasses', 'Fendi-Trendy-Oversized-Square-Sunglasses-for-Women-Men-Flat-Mirrored-Lens-Shield-Sun-Glasses', NULL, 1200.00, 600.00, 600.00, NULL, 'UV', '2', NULL, 'FRAME MATERIALS: Metallic&nbsp;&nbsp; frame<br>LENS MATERIALS: POLYCARBONATE<br>UV Protection :100%<br>INCLUDED: BOX AND WEEPS <br>', NULL, 'image/product/product_image/main_image-2042856642.jpeg', 'image/product/product_image/second_image-908995849.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-16 16:18:36', '2021-08-19 02:48:33'),
(91, 88, NULL, 'VANLINKER Vintage  Aviator Sunglasses, Retro Rectangular Metal Flat Pilot Glasses', 'VANLINKER-Vintage-Aviator-Sunglasses,-Retro-Rectangular-Metal-Flat-Pilot-Glasses', NULL, 700.00, 200.00, 500.00, NULL, 'N', '2', NULL, 'FRAME MATERIALS: Metallic&nbsp;&nbsp; frame<br>LENS MATERIALS: POLYCARBONATE<br>UV Protection :100%<br>INCLUDED: BOX AND WEEPS <br>', '<p><br></p>', 'image/product/product_image/main_image-1310965194.jpeg', 'image/product/product_image/second_image-1723430518.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-08-16 16:29:36', '2021-08-19 02:46:48'),
(92, NULL, NULL, 'OGA premium quality metal square eyeglasses', 'OGA-premium-quality-metal-square-eyeglasses', NULL, 1200.00, 500.00, 700.00, NULL, NULL, '2', NULL, 'FRAME MATERIALS: Metal frame<br>LENS MATERIALS: POLYCARBONATE (Demo)<br>INCLUDED: BOX AND WEEPS', NULL, 'image/product/product_image/main_image-334346834.jpeg', 'image/product/product_image/second_image-966035028.jpeg', 0, 0, 1, 0, 0, 1, NULL, NULL, '2021-09-04 13:31:18', '2021-09-05 04:21:40'),
(96, NULL, NULL, 'HAPTRON Fashion rhombus Square Sunglasses Women Men Retro Luxury Brand  Red Polygon Sun Glass', 'HAPTRON-Fashion-rhombus-Square-Sunglasses-Women-Men-Retro-Luxury-Brand-Red-Polygon-Sun-Glass', NULL, 700.00, 200.00, 500.00, NULL, 'UV', '2', NULL, 'Frame Materials: POLYCARBONATE<br>Lens Materials: POLYCARBONATE<br>Included: BOX AND WEEPS', NULL, 'image/product/product_image/main_image-1781763824.jpeg', 'image/product/product_image/second_image-394425715.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-04 14:00:14', '2021-09-05 04:44:19'),
(97, NULL, NULL, 'VISTA TRANSPARENT NIGHVISHION SUNGLASS VISTA TRANSPARENT frame sunglass', 'VISTA-TRANSPARENT-NIGHVISHION-SUNGLASS-VISTA-TRANSPARENT-frame-sunglass', NULL, 950.00, 450.00, 500.00, NULL, 'NV', '10', NULL, 'FRAME MATERIAL: PC<br>LENS MATERIAL: ACRYLIC<br>Included: BOX AND WEEPS', NULL, 'image/product/product_image/main_image-320031136.jpeg', 'image/product/product_image/second_image-358739391.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-04 14:13:20', '2021-09-05 04:45:37'),
(98, 66, NULL, 'Fashion Tony Stark sunglasses Men The Avengers 3 iron Man Square Glasses Frame Spiderman Edith Sun Glasses Unisex', 'Fashion-Tony-Stark-sunglasses-Men-The-Avengers-3-iron-Man-Square-Glasses-Frame-Spiderman-Edith-Sun-Glasses-Unisex', NULL, 700.00, 250.00, 450.00, NULL, 'UV', '10', NULL, '<p></p>Frame Material: Alloy<br>Lenses Material: Polycarbonate<br>Lenses Optical Attribute: UV400<br>Included: BOX AND WEEPS<p></p><p><span class=\"property-desc line-limit-length\" title=\"Alloy\" style=\"padding: 0px; margin: 0px; -webkit-tap-highlight-color: transparent; outline: 0px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; cursor: pointer; display: inline-block; max-width: inherit; font-size: 14px; color: rgb(21, 21, 21); vertical-align: bottom; font-family: \" open=\"\" sans\",=\"\" roboto,=\"\" arial,=\"\" helvetica,=\"\" sans-serif,=\"\" simsun;=\"\" user-select:=\"\" initial=\"\" !important;\"=\"\"></span><br></p>', NULL, 'image/product/product_image/main_image-1919055063.jpeg', 'image/product/product_image/second_image-610365800.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-04 14:21:51', '2021-09-05 04:49:00'),
(99, 66, NULL, 'Fashion Tony Stark Sunglasses Men The Avengers 3 Iron Man Square Glasses Frame Spiderman Edith Sun Glasses Unisex', 'Fashion-Tony-Stark-Sunglasses-Men-The-Avengers-3-Iron-Man-Square-Glasses-Frame-Spiderman-Edith-Sun-Glasses-Unisex', NULL, 700.00, 250.00, 450.00, NULL, 'UV', '10', NULL, 'Frame Material: Alloy<br>Lenses Material: Polycarbonate<br>Lenses Optical Attribute: UV400<br>Included: BOX AND WEEPS<br>', NULL, 'image/product/product_image/main_image-1972560950.jpeg', 'image/product/product_image/second_image-1001190467.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-04 14:25:57', '2021-09-05 04:50:16'),
(100, 66, NULL, 'Tony Stark Sunglasses Vintage Square Metal Frame Eyeglasses for Men Women - Iron Man and Spider-Man Sun Glasses', 'Tony-Stark-Sunglasses-Vintage-Square-Metal-Frame-Eyeglasses-for-Men-Women---Iron-Man-and-Spider-Man-Sun-Glasses', NULL, 700.00, 250.00, 450.00, NULL, 'UV', '10', NULL, 'Frame Material: Alloy<br>Lenses Material: Polycarbonate<br>Lenses Optical Attribute: UV400<br>Included: BOX AND WEEPS', NULL, 'image/product/product_image/main_image-887418736.jpeg', 'image/product/product_image/second_image-1024162853.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-04 14:54:17', '2021-09-05 04:51:30'),
(101, NULL, NULL, 'Tony Stark Sunglasses Vintage Square Metal Frame Eyeglasses for Men Women - Iron Man and Spider-Man Sun Glasses', 'Tony-Stark-Sunglasses-Vintage-Square-Metal-Frame-Eyeglasses-for-Men-Women---Iron-Man-and-Spider-Man-Sun-Glasses', NULL, 700.00, 250.00, 450.00, NULL, 'NV', '10', NULL, 'Frame Material: Alloy<br>Lenses Material: Polycarbonate<br>Lenses Optical Attribute: UV400<br>Included: BOX AND WEEPS', NULL, 'image/product/product_image/main_image-1708454833.jpeg', 'image/product/product_image/second_image-40974093.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-04 14:59:50', '2021-09-05 04:53:01'),
(102, NULL, NULL, 'Luxury  Kabir Singh Celebrity Style India Film metallic  Sunglasses for men', 'Luxury-Kabir-Singh-Celebrity-Style-India-Film-metallic-Sunglasses-for-men', NULL, 700.00, 250.00, 450.00, NULL, NULL, '10', NULL, '<ul><li>Frame Material: Alloy</li><li>Lenses Material: Polycarbonate</li><li>Lenses Optical Attribute: UV400</li><li><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-1264909027.jpeg', 'image/product/product_image/second_image-2022532529.jpeg', 0, 0, 1, 0, 0, 1, NULL, NULL, '2021-09-04 15:32:21', '2021-09-05 04:55:34'),
(103, 87, NULL, 'louis Vuitton  1.1 MILLIONAIRES SUNGLASSES | tik tok  sunglass', 'louis-Vuitton-1.1-MILLIONAIRES-SUNGLASSES-|-tik-tok-sunglass', NULL, 1200.00, 500.00, 700.00, NULL, 'NV', '10', NULL, '<ul><li>Frame Material: Alloy</li><li>Lenses Material: Polycarbonate</li><li>Lenses Optical Attribute: UV400</li><li>Gold-color metal Monogram pattern on the top bar</li><li>Gold-color metal S-lock hinge</li><li>LV Initials on lenses and temples</li><li>Louis Vuitton Paris signature inside temples</li><li><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', NULL, 'image/product/product_image/main_image-29074895.jpeg', 'image/product/product_image/second_image-1281700284.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-04 15:46:24', '2021-09-05 04:55:50'),
(104, 66, NULL, 'luxury Retro steampunk sunglasses men round vintage metal frame gold black oval sun glasses', 'luxury-Retro-steampunk-sunglasses-men-round-vintage-metal-frame-gold-black-oval-sun-glasses', NULL, 700.00, 150.00, 550.00, NULL, 'UV', '10', NULL, NULL, '<ul><li>Frame Material: METAL</li><li>Lenses Material: Polycarbonate</li><li>Lenses Optical Attribute: UV400</li><li><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', 'image/product/product_image/main_image-1255397544.jpeg', 'image/product/product_image/second_image-516080334.jpeg', 1, 0, 1, 0, 0, 1, NULL, NULL, '2021-09-07 12:29:11', '2021-09-07 12:29:11'),
(105, 66, NULL, 'LUXYURY  DESIENGER Cartier Giverny YELLOW  Flash Gold', 'LUXYURY-DESIENGER-Cartier-Giverny-YELLOW-Flash-Gold', NULL, 700.00, 200.00, 500.00, NULL, 'NV', '10', NULL, NULL, '<ul><li>Frame Material: METAL</li><li>Lenses Material: Polycarbonate</li><li>Lenses Optical Attribute: UV400</li><li><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', 'image/product/product_image/main_image-1293535935.jpeg', 'image/product/product_image/second_image-1965592582.jpeg', 1, 0, 1, 0, 0, 1, NULL, NULL, '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(106, 66, NULL, 'LUXYURY DESIENGER Cartier Giverny BLACK  Flash Gold', 'LUXYURY-DESIENGER-Cartier-Giverny-BLACK-Flash-Gold', NULL, 700.00, 200.00, 500.00, NULL, 'UV', '10', NULL, NULL, '<ul><li>Frame Material: METAL</li><li>Lenses Material: Polycarbonate</li><li>Lenses Optical Attribute: UV400</li><li><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', 'image/product/product_image/main_image-1655102446.jpeg', 'image/product/product_image/second_image-1730842995.jpeg', 1, 0, 1, 0, 0, 1, NULL, NULL, '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(107, 66, NULL, 'Luxury Designer   Cartier Giverny Red Flash Gold', 'Luxury-Designer-Cartier-Giverny-Red-Flash-Gold', NULL, 700.00, 200.00, 500.00, NULL, 'UV', '10', NULL, NULL, '<ul><li>Frame Material: METAL</li><li>Lenses Material: Polycarbonate</li><li>Lenses Optical Attribute: UV400</li><li><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', 'image/product/product_image/main_image-250985131.jpeg', 'image/product/product_image/second_image-973098666.jpeg', 1, 0, 1, 0, 0, 1, NULL, NULL, '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(108, 66, NULL, 'Tony Stark Sunglasses Vintage Square Metal Frame Eyeglasses for Men Women - Iron Man and Spider-Man Sun Glasses', 'Tony-Stark-Sunglasses-Vintage-Square-Metal-Frame-Eyeglasses-for-Men-Women---Iron-Man-and-Spider-Man-Sun-Glasses', NULL, 700.00, 250.00, 450.00, NULL, 'UV', '10', NULL, NULL, NULL, 'image/product/product_image/main_image-525676822.jpeg', 'image/product/product_image/second_image-1184560211.jpeg', 1, 0, 0, 1, 0, 1, NULL, NULL, '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(109, 66, NULL, 'Tony Stark Sunglasses Vintage Square Metal Frame Eyeglasses for Men Women - Iron Man and Spider-Man Sun Glasses', 'Tony-Stark-Sunglasses-Vintage-Square-Metal-Frame-Eyeglasses-for-Men-Women---Iron-Man-and-Spider-Man-Sun-Glasses', NULL, 700.00, 250.00, 450.00, NULL, 'NV', '10', NULL, NULL, '<ul><li>Frame Material: METAL</li><li>Lenses Material: Polycarbonate</li><li>Lenses Optical Attribute: UV400</li><li><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', 'image/product/product_image/main_image-403131455.jpeg', 'image/product/product_image/second_image-48710962.jpeg', 0, 0, 1, 1, 1, 1, NULL, NULL, '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(110, 66, NULL, 'luxury Retro steampunk sunglasses men round vintage metal frame gold yellow  oval sun glasses', 'luxury-Retro-steampunk-sunglasses-men-round-vintage-metal-frame-gold-yellow-oval-sun-glasses', NULL, 700.00, 150.00, 550.00, NULL, 'NV', '10', NULL, NULL, '<p>Frame Material: METAL</p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></p>', 'image/product/product_image/main_image-288676258.jpeg', 'image/product/product_image/second_image-1687567784.jpeg', 0, 0, 1, 0, 0, 1, NULL, NULL, '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(111, 88, NULL, 'Kabir Singh Celebrity Style India Film  golden yellow Sunglasses', 'Kabir-Singh-Celebrity-Style-India-Film-golden-yellow-Sunglasses', NULL, 700.00, 150.00, 550.00, NULL, 'NV', '10', NULL, NULL, '<p>Frame Material: METAL</p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></p>', 'image/product/product_image/main_image-1910956677.jpeg', 'image/product/product_image/second_image-33452317.jpeg', 0, 0, 1, 0, 1, 1, NULL, NULL, '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(112, 64, NULL, 'Ray-Ban 88667 PARTY MONSTER DAY AND NIGHT VISHION  blue lens SUNGLASS', 'Ray-Ban-88667-PARTY-MONSTER-DAY-AND-NIGHT-VISHION-blue-lens-SUNGLASS', NULL, 600.00, 200.00, 400.00, NULL, 'UV', '10', NULL, '<p><br></p>', '<p>Frame Material: PLASTIC</p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></p>', 'image/product/product_image/main_image-1246890234.jpeg', 'image/product/product_image/second_image-888585313.jpeg', 1, 0, 1, 1, 0, 1, NULL, NULL, '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(113, 64, NULL, 'Ray-Ban 88667 PARTY MONSTER DAY AND NIGHT VISHION RED lens SUNGLASS', 'Ray-Ban-88667-PARTY-MONSTER-DAY-AND-NIGHT-VISHION-blue-lens-SUNGLASS', NULL, 600.00, 200.00, 400.00, NULL, 'UV', '10', NULL, NULL, '<p>Frame Material: PLASTIC </p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></p>', 'image/product/product_image/main_image-141424743.jpeg', 'image/product/product_image/second_image-2071221904.jpeg', 0, 1, 0, 0, 1, 1, NULL, NULL, '2021-09-07 14:18:24', '2021-09-07 14:18:53'),
(114, 64, NULL, 'Ray-Ban 88667 PARTY MONSTER DAY AND NIGHT VISHION YELLOW  lens SUNGLASS', 'Ray-Ban-88667-PARTY-MONSTER-DAY-AND-NIGHT-VISHION-YELLOW-lens-SUNGLASS', NULL, 600.00, 200.00, 400.00, NULL, 'NV', '10', NULL, NULL, '<ul><li>Frame Material: PLASTIC</li><li>Lenses Material: Polycarbonate</li><li>Lenses Optical Attribute: UV400</li><li>Included: BOX AND WEEPS</li></ul>', 'image/product/product_image/main_image-1495153191.jpeg', 'image/product/product_image/second_image-947444070.jpeg', 1, 0, 1, 0, 0, 1, NULL, NULL, '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(115, 64, NULL, 'Ray-Ban 88667 PARTY MONSTER BLACK  lens SUNGLASS', 'Ray-Ban-88667-PARTY-MONSTER-BLACK-lens-SUNGLASS', NULL, 600.00, 200.00, 400.00, NULL, 'UV', '10', NULL, NULL, '<p>Frame Material: PLASTIC</p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></p>', 'image/product/product_image/main_image-133068579.jpeg', 'image/product/product_image/second_image-994510322.jpeg', 0, 1, 0, 0, 1, 1, NULL, NULL, '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(116, NULL, NULL, 'Tom Ford Fausto  Shiny Havana/vintage Yellow Unisex Sunglasses (COPY)', 'Tom-Ford-Fausto-Shiny-Havana/vintage-Yellow-Unisex-Sunglasses-(COPY)', NULL, 800.00, 200.00, 600.00, NULL, 'NV', '10', NULL, NULL, '<p>Frame Material: PLASTIC</p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></p>', 'image/product/product_image/main_image-1377000762.jpeg', 'image/product/product_image/second_image-916154467.jpeg', 1, 0, 1, 0, 0, 1, NULL, NULL, '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(117, 87, NULL, 'Louis Vuitton 1.1 MILLIONAIRES EYE-GLASSES | Tik Tok Sunglass', 'Louis-Vuitton-1.1-MILLIONAIRES-EYE-GLASSES-|-Tik-Tok-Sunglass', NULL, 1200.00, 500.00, 700.00, NULL, NULL, '10', NULL, NULL, '<ul><li>Frame Material: Alloy</li><li>Lenses Material: Polycarbonate</li><li>Gold-color metal Monogram pattern on the top bar</li><li>Gold-color metal S-lock hinge</li><li>LV Initials on lenses and temples</li><li>Louis Vuitton Paris signature inside temples</li><li><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></li></ul>', 'image/product/product_image/main_image-1413361850.jpeg', 'image/product/product_image/second_image-965498076.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-07 14:59:21', '2021-10-09 03:40:40');
INSERT INTO `products` (`id`, `brand_id`, `supplier_id`, `product_name`, `slug`, `product_code`, `product_price`, `discount_product_amount`, `discount_product_price`, `product_cost`, `product_highlight`, `product_stock`, `product_made_by`, `short_description`, `description`, `main_image`, `second_image`, `best_selling`, `trending`, `new_arrival`, `featured`, `Special_Offer`, `publication_status`, `orginal_product_link`, `youtube_link`, `created_at`, `updated_at`) VALUES
(118, 64, NULL, 'Tony Stark Sunglasses Vintage Square PLASTIC  Frame Eyeglasses for Men  - Iron Man and Spider-Man Sun Glasses', 'Tony-Stark-Sunglasses-Vintage-Square-PLASTIC-Frame-Eyeglasses-for-Men---Iron-Man-and-Spider-Man-Sun-Glasses', NULL, 500.00, 150.00, 350.00, NULL, 'NV', '1200', NULL, NULL, NULL, 'image/product/product_image/main_image-1740594800.jpeg', 'image/product/product_image/second_image-1735879084.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(119, 76, NULL, 'luxury Retro steampunk sunglasses men round vintage metal frame gold BROWN oval sun glasses', 'luxury-Retro-steampunk-sunglasses-men-round-vintage-metal-frame-gold-BROWN-oval-sun-glasses', NULL, 700.00, 150.00, 550.00, NULL, 'UV', '10', NULL, NULL, '<p>Frame Material: METAL</p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></p><div><br></div>', 'image/product/product_image/main_image-84376137.jpeg', 'image/product/product_image/second_image-1302896187.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-07 15:11:14', '2021-09-07 15:11:14'),
(120, 88, NULL, 'Casual Wear Ocean Blue Lens Aviator Unisex Sunglasses', 'Casual-Wear-Ocean-Blue-Lens-Aviator-Unisex-Sunglasses', NULL, 700.00, 200.00, 500.00, NULL, 'UV', '10', NULL, NULL, '<p>Frame Material: METAL</p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></p><div><br></div>', 'image/product/product_image/main_image-1352575551.jpeg', 'image/product/product_image/second_image-98760420.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(121, 88, NULL, 'VEITHDIA Brand Aluminum Polarized Sunglasses\\ Men Sun Glasses Driving Glasses Goggle Eyewear Male Accessories shades', 'VEITHDIA-Brand-Aluminum-Polarized-Sunglasses\\-Men-Sun-Glasses-Driving-Glasses-Goggle-Eyewear-Male-Accessories-shades', NULL, 1200.00, 500.00, 700.00, NULL, 'UV', '2', NULL, NULL, '<p>Frame Material:&nbsp;Aluminum</p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p>Included: BOX AND WEEPS</p><div><br></div>', 'image/product/product_image/main_image-1865866100.jpeg', 'image/product/product_image/second_image-160565449.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(122, 66, NULL, 'Tony Stark EYE-glasses Vintage Square Metal Frame Eyeglasses for Men Women - Iron Man and Spider-Man EYE-Glasses', 'Tony-Stark-EYE-glasses-Vintage-Square-Metal-Frame-Eyeglasses-for-Men-Women---Iron-Man-and-Spider-Man-EYE-Glasses', NULL, 700.00, 500.00, 200.00, NULL, NULL, '10', NULL, NULL, '<p>Frame Material: METAL</p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p>Included: BOX AND WEEPS</p><div><br></div>', 'image/product/product_image/main_image-897187939.jpeg', 'image/product/product_image/second_image-614287397.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(123, NULL, NULL, 'VEITHDIA Brand Aluminum Polarized Sunglasses\\ Men Sun Glasses Driving Glasses Goggle Eyewear Male Accessories shades', 'VEITHDIA-Brand-Aluminum-Polarized-Sunglasses\\-Men-Sun-Glasses-Driving-Glasses-Goggle-Eyewear-Male-Accessories-shades', NULL, 1200.00, 550.00, 650.00, NULL, 'UV', '2', NULL, NULL, '<p>Frame Material: METAL</p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p><span style=\"background-color: rgb(255, 255, 0);\">Included: BOX AND WEEPS</span></p><div><br></div>', 'image/product/product_image/main_image-1782645806.jpeg', 'image/product/product_image/second_image-1681250490.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(124, 85, NULL, 'PRADA  Brand Top Grade Eyeglasses Frame Men METTALIC EYE-  Frame', 'PRADA-Brand-Top-Grade-Eyeglasses-Frame-Men-METTALIC-EYE--Frame', NULL, 700.00, 150.00, 550.00, NULL, NULL, '10', NULL, NULL, '<p>Frame Material: METAL</p><p>Lenses Material: Polycarbonate</p><p>Included: BOX AND WEEPS<br></p><div><br></div>', 'image/product/product_image/main_image-875353778.jpeg', 'image/product/product_image/second_image-1031061170.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(125, 85, NULL, 'PRADA  Brand Top Grade SUNglasses Frame Men METTALIC SUNGLASS', 'PRADA-Brand-Top-Grade-SUNglasses-Frame-Men-METTALIC-SUNGLASS', NULL, 700.00, 250.00, 450.00, NULL, 'UV', '10', NULL, NULL, '<p>Frame Material: METAL</p><p>Lenses Material: Polycarbonate</p><p>Lenses Optical Attribute: UV400</p><p>Included: BOX AND WEEPS</p>', 'image/product/product_image/main_image-1796504109.jpeg', 'image/product/product_image/second_image-1749108577.jpeg', 1, 1, 1, 1, 1, 1, NULL, NULL, '2021-09-07 15:52:45', '2021-09-07 15:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(13, 51, 21, '2021-07-31 01:14:13', '2021-07-31 01:14:13'),
(14, 50, 21, '2021-07-31 01:15:04', '2021-07-31 01:15:04'),
(15, 49, 21, '2021-07-31 01:16:29', '2021-07-31 01:16:29'),
(16, 48, 21, '2021-07-31 01:16:55', '2021-07-31 01:16:55'),
(17, 47, 21, '2021-07-31 01:17:43', '2021-07-31 01:17:43'),
(18, 46, 21, '2021-07-31 01:18:26', '2021-07-31 01:18:26'),
(19, 45, 22, '2021-07-31 01:27:09', '2021-07-31 01:27:09'),
(20, 44, 21, '2021-07-31 01:32:37', '2021-07-31 01:32:37'),
(21, 42, 22, '2021-07-31 01:33:55', '2021-07-31 01:33:55'),
(22, 41, 22, '2021-07-31 01:35:16', '2021-07-31 01:35:16'),
(23, 40, 22, '2021-07-31 01:37:42', '2021-07-31 01:37:42'),
(24, 39, 22, '2021-07-31 01:38:38', '2021-07-31 01:38:38'),
(25, 37, 22, '2021-07-31 01:40:00', '2021-07-31 01:40:00'),
(26, 36, 21, '2021-07-31 01:40:40', '2021-07-31 01:40:40'),
(27, 35, 21, '2021-07-31 01:41:01', '2021-07-31 01:41:01'),
(28, 34, 21, '2021-07-31 01:41:19', '2021-07-31 01:41:19'),
(29, 33, 27, '2021-07-31 01:41:52', '2021-07-31 01:41:52'),
(30, 38, 21, '2021-07-31 01:46:51', '2021-07-31 01:46:51'),
(31, 43, 21, '2021-07-31 01:48:52', '2021-07-31 01:48:52'),
(34, 52, 21, '2021-08-08 11:38:25', '2021-08-08 11:38:25'),
(35, 52, 22, '2021-08-08 11:38:25', '2021-08-08 11:38:25'),
(39, 54, 21, '2021-08-09 12:16:04', '2021-08-09 12:16:04'),
(40, 55, 21, '2021-08-09 12:21:05', '2021-08-09 12:21:05'),
(50, 60, 21, '2021-08-09 13:02:13', '2021-08-09 13:02:13'),
(51, 61, 21, '2021-08-09 13:12:50', '2021-08-09 13:12:50'),
(52, 62, 21, '2021-08-09 13:17:23', '2021-08-09 13:17:23'),
(54, 64, 21, '2021-08-09 13:46:31', '2021-08-09 13:46:31'),
(58, 66, 21, '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(59, 67, 21, '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(76, 63, 22, '2021-08-10 05:45:49', '2021-08-10 05:45:49'),
(78, 70, 21, '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(79, 70, 22, '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(80, 71, 21, '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(81, 72, 22, '2021-08-14 15:34:11', '2021-08-14 15:34:11'),
(84, 75, 21, '2021-08-14 15:49:59', '2021-08-14 15:49:59'),
(85, 76, 21, '2021-08-14 15:53:27', '2021-08-14 15:53:27'),
(86, 77, 22, '2021-08-14 15:56:30', '2021-08-14 15:56:30'),
(87, 78, 21, '2021-08-14 15:59:48', '2021-08-14 15:59:48'),
(88, 78, 22, '2021-08-14 15:59:48', '2021-08-14 15:59:48'),
(89, 79, 21, '2021-08-14 16:05:49', '2021-08-14 16:05:49'),
(90, 80, 21, '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(91, 80, 22, '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(92, 81, 22, '2021-08-15 02:39:20', '2021-08-15 02:39:20'),
(93, 82, 22, '2021-08-15 02:56:05', '2021-08-15 02:56:05'),
(133, 74, 22, '2021-08-19 01:43:45', '2021-08-19 01:43:45'),
(134, 73, 21, '2021-08-19 01:44:52', '2021-08-19 01:44:52'),
(135, 57, 21, '2021-08-19 01:46:26', '2021-08-19 01:46:26'),
(136, 57, 22, '2021-08-19 01:46:26', '2021-08-19 01:46:26'),
(137, 53, 21, '2021-08-19 01:48:56', '2021-08-19 01:48:56'),
(138, 53, 22, '2021-08-19 01:48:56', '2021-08-19 01:48:56'),
(139, 53, 26, '2021-08-19 01:48:56', '2021-08-19 01:48:56'),
(140, 56, 22, '2021-08-19 01:59:07', '2021-08-19 01:59:07'),
(141, 91, 21, '2021-08-19 02:46:48', '2021-08-19 02:46:48'),
(142, 91, 27, '2021-08-19 02:46:48', '2021-08-19 02:46:48'),
(143, 90, 21, '2021-08-19 02:48:33', '2021-08-19 02:48:33'),
(144, 89, 21, '2021-08-19 02:51:39', '2021-08-19 02:51:39'),
(145, 88, 21, '2021-08-19 02:52:57', '2021-08-19 02:52:57'),
(146, 87, 21, '2021-08-19 02:54:13', '2021-08-19 02:54:13'),
(147, 86, 21, '2021-08-19 02:55:32', '2021-08-19 02:55:32'),
(148, 83, 21, '2021-08-19 03:16:21', '2021-08-19 03:16:21'),
(149, 83, 22, '2021-08-19 03:16:21', '2021-08-19 03:16:21'),
(150, 83, 27, '2021-08-19 03:16:21', '2021-08-19 03:16:21'),
(151, 84, 22, '2021-08-19 03:16:59', '2021-08-19 03:16:59'),
(152, 85, 21, '2021-08-19 03:17:38', '2021-08-19 03:17:38'),
(153, 85, 22, '2021-08-19 03:17:38', '2021-08-19 03:17:38'),
(178, 103, 21, '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(179, 103, 22, '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(180, 103, 27, '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(182, 92, 21, '2021-09-05 04:21:40', '2021-09-05 04:21:40'),
(203, 96, 21, '2021-09-05 04:44:19', '2021-09-05 04:44:19'),
(204, 96, 22, '2021-09-05 04:44:19', '2021-09-05 04:44:19'),
(205, 97, 21, '2021-09-05 04:45:37', '2021-09-05 04:45:37'),
(206, 97, 22, '2021-09-05 04:45:37', '2021-09-05 04:45:37'),
(207, 97, 27, '2021-09-05 04:45:37', '2021-09-05 04:45:37'),
(210, 98, 21, '2021-09-05 04:49:00', '2021-09-05 04:49:00'),
(211, 98, 22, '2021-09-05 04:49:00', '2021-09-05 04:49:00'),
(212, 99, 21, '2021-09-05 04:50:16', '2021-09-05 04:50:16'),
(213, 99, 22, '2021-09-05 04:50:16', '2021-09-05 04:50:16'),
(214, 100, 21, '2021-09-05 04:51:14', '2021-09-05 04:51:14'),
(215, 100, 22, '2021-09-05 04:51:14', '2021-09-05 04:51:14'),
(216, 101, 21, '2021-09-05 04:52:45', '2021-09-05 04:52:45'),
(217, 101, 22, '2021-09-05 04:52:45', '2021-09-05 04:52:45'),
(218, 101, 27, '2021-09-05 04:52:45', '2021-09-05 04:52:45'),
(221, 102, 21, '2021-09-05 04:55:34', '2021-09-05 04:55:34'),
(222, 102, 27, '2021-09-05 04:55:34', '2021-09-05 04:55:34'),
(234, 104, 21, '2021-09-07 12:29:11', '2021-09-07 12:29:11'),
(235, 105, 21, '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(236, 105, 22, '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(237, 105, 27, '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(238, 106, 21, '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(239, 106, 22, '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(240, 107, 21, '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(241, 107, 22, '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(242, 108, 21, '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(243, 109, 21, '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(244, 109, 27, '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(245, 110, 21, '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(246, 110, 22, '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(247, 110, 27, '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(248, 111, 21, '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(249, 111, 27, '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(250, 112, 21, '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(252, 113, 21, '2021-09-07 14:18:53', '2021-09-07 14:18:53'),
(253, 114, 21, '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(254, 114, 27, '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(255, 115, 21, '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(256, 116, 21, '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(257, 116, 27, '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(260, 118, 21, '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(261, 118, 27, '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(262, 119, 21, '2021-09-07 15:11:14', '2021-09-07 15:11:14'),
(263, 119, 22, '2021-09-07 15:11:14', '2021-09-07 15:11:14'),
(264, 120, 21, '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(265, 120, 22, '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(266, 121, 21, '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(267, 121, 27, '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(268, 122, 21, '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(269, 123, 21, '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(270, 123, 27, '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(271, 124, 21, '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(272, 125, 21, '2021-09-07 15:52:45', '2021-09-07 15:52:45'),
(273, 117, 21, '2021-10-09 03:40:40', '2021-10-09 03:40:40'),
(274, 117, 22, '2021-10-09 03:40:40', '2021-10-09 03:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_colors`
--

CREATE TABLE `product_colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_colors`
--

INSERT INTO `product_colors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(5, 8, 4, '2021-06-17 02:33:17', '2021-06-17 02:33:17'),
(17, 14, 4, '2021-06-23 04:35:54', '2021-06-23 04:35:54'),
(18, 13, 4, '2021-06-23 04:36:09', '2021-06-23 04:36:09'),
(19, 12, 1, '2021-06-23 04:36:25', '2021-06-23 04:36:25'),
(20, 12, 4, '2021-06-23 04:36:25', '2021-06-23 04:36:25'),
(21, 11, 1, '2021-06-23 04:36:41', '2021-06-23 04:36:41'),
(22, 10, 1, '2021-06-23 04:36:56', '2021-06-23 04:36:56'),
(23, 10, 4, '2021-06-23 04:36:56', '2021-06-23 04:36:56'),
(24, 9, 4, '2021-06-23 04:37:11', '2021-06-23 04:37:11'),
(25, 15, 4, '2021-06-23 07:02:32', '2021-06-23 07:02:32'),
(26, 16, 4, '2021-06-23 07:06:46', '2021-06-23 07:06:46'),
(27, 17, 4, '2021-06-23 07:16:12', '2021-06-23 07:16:12'),
(29, 19, 4, '2021-06-30 22:15:12', '2021-06-30 22:15:12'),
(31, 18, 4, '2021-07-03 22:01:55', '2021-07-03 22:01:55'),
(33, 20, 4, '2021-07-15 08:53:36', '2021-07-15 08:53:36'),
(53, 35, 6, '2021-07-25 14:39:08', '2021-07-25 14:39:08'),
(54, 34, 4, '2021-07-25 14:39:37', '2021-07-25 14:39:37'),
(55, 33, 4, '2021-07-25 14:39:59', '2021-07-25 14:39:59'),
(56, 36, 7, '2021-07-25 14:49:40', '2021-07-25 14:49:40'),
(57, 37, 5, '2021-07-25 14:53:20', '2021-07-25 14:53:20'),
(58, 38, 4, '2021-07-25 14:58:17', '2021-07-25 14:58:17'),
(61, 41, 8, '2021-07-25 15:48:15', '2021-07-25 15:48:15'),
(62, 42, 4, '2021-07-25 16:02:04', '2021-07-25 16:02:04'),
(63, 40, 8, '2021-07-25 16:02:24', '2021-07-25 16:02:24'),
(64, 43, 4, '2021-07-25 16:30:32', '2021-07-25 16:30:32'),
(72, 47, 5, '2021-07-27 13:54:02', '2021-07-27 13:54:02'),
(73, 48, 5, '2021-07-27 14:24:36', '2021-07-27 14:24:36'),
(74, 39, 5, '2021-07-27 14:30:41', '2021-07-27 14:30:41'),
(75, 46, 5, '2021-07-27 14:31:19', '2021-07-27 14:31:19'),
(76, 44, 5, '2021-07-27 14:32:05', '2021-07-27 14:32:05'),
(77, 45, 16, '2021-07-27 14:32:40', '2021-07-27 14:32:40'),
(78, 49, 5, '2021-07-27 14:38:57', '2021-07-27 14:38:57'),
(79, 50, 5, '2021-07-27 14:52:53', '2021-07-27 14:52:53'),
(80, 51, 5, '2021-07-27 15:02:59', '2021-07-27 15:02:59'),
(82, 52, 5, '2021-08-08 11:38:25', '2021-08-08 11:38:25'),
(84, 54, 8, '2021-08-09 12:16:04', '2021-08-09 12:16:04'),
(85, 55, 5, '2021-08-09 12:21:05', '2021-08-09 12:21:05'),
(90, 60, 5, '2021-08-09 13:02:13', '2021-08-09 13:02:13'),
(91, 61, 4, '2021-08-09 13:12:50', '2021-08-09 13:12:50'),
(92, 62, 1, '2021-08-09 13:17:23', '2021-08-09 13:17:23'),
(94, 64, 5, '2021-08-09 13:46:31', '2021-08-09 13:46:31'),
(96, 66, 8, '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(97, 67, 5, '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(104, 63, 9, '2021-08-10 05:45:49', '2021-08-10 05:45:49'),
(106, 70, 10, '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(107, 71, 5, '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(108, 72, 5, '2021-08-14 15:34:11', '2021-08-14 15:34:11'),
(111, 75, 5, '2021-08-14 15:49:59', '2021-08-14 15:49:59'),
(112, 76, 8, '2021-08-14 15:53:27', '2021-08-14 15:53:27'),
(113, 77, 5, '2021-08-14 15:56:30', '2021-08-14 15:56:30'),
(114, 78, 10, '2021-08-14 15:59:48', '2021-08-14 15:59:48'),
(115, 79, 10, '2021-08-14 16:05:49', '2021-08-14 16:05:49'),
(116, 80, 5, '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(117, 81, 8, '2021-08-15 02:39:20', '2021-08-15 02:39:20'),
(118, 82, 5, '2021-08-15 02:56:05', '2021-08-15 02:56:05'),
(146, 74, 10, '2021-08-19 01:43:45', '2021-08-19 01:43:45'),
(147, 73, 5, '2021-08-19 01:44:52', '2021-08-19 01:44:52'),
(148, 57, 5, '2021-08-19 01:46:26', '2021-08-19 01:46:26'),
(149, 53, 6, '2021-08-19 01:48:56', '2021-08-19 01:48:56'),
(150, 56, 4, '2021-08-19 01:59:07', '2021-08-19 01:59:07'),
(151, 91, 4, '2021-08-19 02:46:48', '2021-08-19 02:46:48'),
(152, 90, 8, '2021-08-19 02:48:33', '2021-08-19 02:48:33'),
(153, 89, 5, '2021-08-19 02:51:39', '2021-08-19 02:51:39'),
(154, 88, 5, '2021-08-19 02:52:57', '2021-08-19 02:52:57'),
(155, 87, 5, '2021-08-19 02:54:13', '2021-08-19 02:54:13'),
(156, 86, 5, '2021-08-19 02:55:32', '2021-08-19 02:55:32'),
(157, 83, 4, '2021-08-19 03:16:21', '2021-08-19 03:16:21'),
(158, 84, 8, '2021-08-19 03:16:59', '2021-08-19 03:16:59'),
(159, 85, 7, '2021-08-19 03:17:38', '2021-08-19 03:17:38'),
(172, 103, 4, '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(174, 92, 1, '2021-09-05 04:21:41', '2021-09-05 04:21:41'),
(185, 96, 1, '2021-09-05 04:44:19', '2021-09-05 04:44:19'),
(186, 97, 4, '2021-09-05 04:45:37', '2021-09-05 04:45:37'),
(188, 98, 5, '2021-09-05 04:49:00', '2021-09-05 04:49:00'),
(189, 99, 1, '2021-09-05 04:50:16', '2021-09-05 04:50:16'),
(190, 100, 7, '2021-09-05 04:51:14', '2021-09-05 04:51:14'),
(191, 101, 4, '2021-09-05 04:52:45', '2021-09-05 04:52:45'),
(193, 102, 4, '2021-09-05 04:55:34', '2021-09-05 04:55:34'),
(201, 104, 5, '2021-09-07 12:29:11', '2021-09-07 12:29:11'),
(202, 105, 4, '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(203, 106, 5, '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(204, 107, 1, '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(205, 108, 4, '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(206, 109, 4, '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(207, 110, 4, '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(208, 111, 4, '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(209, 112, 7, '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(211, 113, 1, '2021-09-07 14:18:53', '2021-09-07 14:18:53'),
(212, 114, 4, '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(213, 115, 5, '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(214, 116, 4, '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(216, 118, 4, '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(217, 119, 8, '2021-09-07 15:11:14', '2021-09-07 15:11:14'),
(218, 120, 7, '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(219, 121, 4, '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(220, 122, 9, '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(221, 123, 4, '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(222, 124, 5, '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(223, 125, 5, '2021-09-07 15:52:45', '2021-09-07 15:52:45'),
(224, 117, 9, '2021-10-09 03:40:40', '2021-10-09 03:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o_product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_prices`
--

INSERT INTO `product_prices` (`id`, `customer_id`, `shipping_id`, `order_id`, `o_product_price`, `created_at`, `updated_at`) VALUES
(1, '1', '95', '89', '180', '2021-07-13 06:57:36', '2021-07-13 06:57:36'),
(2, '1', '95', '89', '100', '2021-07-13 06:57:36', '2021-07-13 06:57:36'),
(3, '1', '96', '90', '90', '2021-07-13 06:58:46', '2021-07-13 06:58:46'),
(4, '1', '96', '90', '50', '2021-07-13 06:58:46', '2021-07-13 06:58:46'),
(5, '1', '97', '91', '90', '2021-07-13 07:08:11', '2021-07-13 07:08:11'),
(6, '1', '97', '91', '50', '2021-07-13 07:08:11', '2021-07-13 07:08:11'),
(7, '1', '98', '92', '90', '2021-07-13 07:26:31', '2021-07-13 07:26:31'),
(8, '1', '100', '94', '50', '2021-07-13 07:29:34', '2021-07-13 07:29:34'),
(9, '1', '100', '94', '50', '2021-07-13 07:29:34', '2021-07-13 07:29:34'),
(10, '1', '101', '95', '50', '2021-07-13 07:30:19', '2021-07-13 07:30:19'),
(11, '1', '101', '95', '60', '2021-07-13 07:30:19', '2021-07-13 07:30:19'),
(12, '1', '104', '97', '616', '2021-07-13 08:06:32', '2021-07-13 08:06:32'),
(13, '1', '105', '98', '1182', '2021-07-13 08:29:28', '2021-07-13 08:29:28'),
(14, '1', '106', '99', '150', '2021-07-13 09:22:07', '2021-07-13 09:22:07'),
(15, '1', '106', '99', '1282', '2021-07-13 09:22:07', '2021-07-13 09:22:07'),
(16, '1', '106', '99', '1150', '2021-07-13 09:22:07', '2021-07-13 09:22:07'),
(17, '1', '108', '100', '90', '2021-07-13 09:53:06', '2021-07-13 09:53:06'),
(18, '1', '108', '100', '1090', '2021-07-13 09:53:06', '2021-07-13 09:53:06'),
(19, '1', '108', '100', '1222', '2021-07-13 09:53:06', '2021-07-13 09:53:06'),
(20, '1', '109', '101', '1282', '2021-07-13 09:55:50', '2021-07-13 09:55:50'),
(21, '1', '110', '102', '50', '2021-07-13 10:18:34', '2021-07-13 10:18:34'),
(22, '1', '111', '103', '90', '2021-07-13 10:19:39', '2021-07-13 10:19:39'),
(23, '1', '111', '103', '1282', '2021-07-13 10:19:39', '2021-07-13 10:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(4, 8, 2, '2021-06-17 02:33:17', '2021-06-17 02:33:17'),
(19, 14, 3, '2021-06-23 04:35:54', '2021-06-23 04:35:54'),
(20, 13, 2, '2021-06-23 04:36:09', '2021-06-23 04:36:09'),
(21, 12, 1, '2021-06-23 04:36:25', '2021-06-23 04:36:25'),
(22, 12, 2, '2021-06-23 04:36:25', '2021-06-23 04:36:25'),
(23, 11, 1, '2021-06-23 04:36:41', '2021-06-23 04:36:41'),
(24, 11, 2, '2021-06-23 04:36:41', '2021-06-23 04:36:41'),
(25, 10, 1, '2021-06-23 04:36:56', '2021-06-23 04:36:56'),
(26, 10, 2, '2021-06-23 04:36:56', '2021-06-23 04:36:56'),
(27, 9, 2, '2021-06-23 04:37:11', '2021-06-23 04:37:11'),
(28, 15, 2, '2021-06-23 07:02:32', '2021-06-23 07:02:32'),
(29, 16, 2, '2021-06-23 07:06:46', '2021-06-23 07:06:46'),
(30, 17, 2, '2021-06-23 07:16:12', '2021-06-23 07:16:12'),
(32, 19, 2, '2021-06-30 22:15:12', '2021-06-30 22:15:12'),
(34, 18, 2, '2021-07-03 22:01:55', '2021-07-03 22:01:55'),
(36, 20, 2, '2021-07-15 08:53:36', '2021-07-15 08:53:36'),
(37, 20, 6, '2021-07-15 08:53:36', '2021-07-15 08:53:36'),
(58, 35, 7, '2021-07-25 14:39:08', '2021-07-25 14:39:08'),
(59, 34, 3, '2021-07-25 14:39:37', '2021-07-25 14:39:37'),
(60, 34, 4, '2021-07-25 14:39:37', '2021-07-25 14:39:37'),
(61, 33, 4, '2021-07-25 14:39:59', '2021-07-25 14:39:59'),
(62, 36, 8, '2021-07-25 14:49:40', '2021-07-25 14:49:40'),
(63, 37, 4, '2021-07-25 14:53:20', '2021-07-25 14:53:20'),
(64, 38, 4, '2021-07-25 14:58:17', '2021-07-25 14:58:17'),
(67, 41, 3, '2021-07-25 15:48:15', '2021-07-25 15:48:15'),
(68, 42, 4, '2021-07-25 16:02:04', '2021-07-25 16:02:04'),
(69, 40, 4, '2021-07-25 16:02:24', '2021-07-25 16:02:24'),
(70, 43, 4, '2021-07-25 16:30:32', '2021-07-25 16:30:32'),
(79, 47, 9, '2021-07-27 13:54:02', '2021-07-27 13:54:02'),
(80, 47, 11, '2021-07-27 13:54:02', '2021-07-27 13:54:02'),
(81, 48, 8, '2021-07-27 14:24:36', '2021-07-27 14:24:36'),
(82, 39, 4, '2021-07-27 14:30:41', '2021-07-27 14:30:41'),
(83, 46, 4, '2021-07-27 14:31:19', '2021-07-27 14:31:19'),
(84, 44, 4, '2021-07-27 14:32:05', '2021-07-27 14:32:05'),
(85, 45, 4, '2021-07-27 14:32:40', '2021-07-27 14:32:40'),
(86, 49, 9, '2021-07-27 14:38:57', '2021-07-27 14:38:57'),
(87, 50, 11, '2021-07-27 14:52:53', '2021-07-27 14:52:53'),
(88, 51, 11, '2021-07-27 15:02:59', '2021-07-27 15:02:59'),
(90, 52, 12, '2021-08-08 11:38:25', '2021-08-08 11:38:25'),
(92, 54, 3, '2021-08-09 12:16:04', '2021-08-09 12:16:04'),
(93, 55, 4, '2021-08-09 12:21:05', '2021-08-09 12:21:05'),
(98, 60, 3, '2021-08-09 13:02:13', '2021-08-09 13:02:13'),
(99, 61, 3, '2021-08-09 13:12:50', '2021-08-09 13:12:50'),
(100, 62, 3, '2021-08-09 13:17:23', '2021-08-09 13:17:23'),
(102, 64, 4, '2021-08-09 13:46:31', '2021-08-09 13:46:31'),
(104, 66, 4, '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(105, 67, 4, '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(112, 63, 12, '2021-08-10 05:45:49', '2021-08-10 05:45:49'),
(114, 70, 4, '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(115, 71, 8, '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(116, 72, 4, '2021-08-14 15:34:11', '2021-08-14 15:34:11'),
(119, 75, 4, '2021-08-14 15:49:59', '2021-08-14 15:49:59'),
(120, 76, 4, '2021-08-14 15:53:27', '2021-08-14 15:53:27'),
(121, 77, 4, '2021-08-14 15:56:30', '2021-08-14 15:56:30'),
(122, 78, 4, '2021-08-14 15:59:48', '2021-08-14 15:59:48'),
(123, 79, 4, '2021-08-14 16:05:49', '2021-08-14 16:05:49'),
(124, 80, 4, '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(125, 81, 3, '2021-08-15 02:39:20', '2021-08-15 02:39:20'),
(126, 82, 4, '2021-08-15 02:56:05', '2021-08-15 02:56:05'),
(154, 74, 4, '2021-08-19 01:43:45', '2021-08-19 01:43:45'),
(155, 73, 4, '2021-08-19 01:44:52', '2021-08-19 01:44:52'),
(156, 57, 3, '2021-08-19 01:46:26', '2021-08-19 01:46:26'),
(157, 53, 8, '2021-08-19 01:48:56', '2021-08-19 01:48:56'),
(158, 56, 4, '2021-08-19 01:59:07', '2021-08-19 01:59:07'),
(159, 91, 4, '2021-08-19 02:46:48', '2021-08-19 02:46:48'),
(160, 90, 12, '2021-08-19 02:48:33', '2021-08-19 02:48:33'),
(161, 89, 12, '2021-08-19 02:51:39', '2021-08-19 02:51:39'),
(162, 88, 12, '2021-08-19 02:52:57', '2021-08-19 02:52:57'),
(163, 87, 12, '2021-08-19 02:54:13', '2021-08-19 02:54:13'),
(164, 86, 12, '2021-08-19 02:55:32', '2021-08-19 02:55:32'),
(165, 83, 4, '2021-08-19 03:16:21', '2021-08-19 03:16:21'),
(166, 84, 3, '2021-08-19 03:16:59', '2021-08-19 03:16:59'),
(167, 85, 4, '2021-08-19 03:17:38', '2021-08-19 03:17:38'),
(185, 103, 12, '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(187, 92, 4, '2021-09-05 04:21:41', '2021-09-05 04:21:41'),
(198, 96, 4, '2021-09-05 04:44:19', '2021-09-05 04:44:19'),
(199, 97, 4, '2021-09-05 04:45:37', '2021-09-05 04:45:37'),
(202, 98, 3, '2021-09-05 04:49:00', '2021-09-05 04:49:00'),
(203, 98, 4, '2021-09-05 04:49:00', '2021-09-05 04:49:00'),
(204, 99, 3, '2021-09-05 04:50:16', '2021-09-05 04:50:16'),
(205, 99, 4, '2021-09-05 04:50:16', '2021-09-05 04:50:16'),
(206, 100, 3, '2021-09-05 04:51:14', '2021-09-05 04:51:14'),
(207, 100, 4, '2021-09-05 04:51:14', '2021-09-05 04:51:14'),
(208, 101, 3, '2021-09-05 04:52:45', '2021-09-05 04:52:45'),
(209, 101, 4, '2021-09-05 04:52:45', '2021-09-05 04:52:45'),
(211, 102, 4, '2021-09-05 04:55:34', '2021-09-05 04:55:34'),
(219, 104, 4, '2021-09-07 12:29:11', '2021-09-07 12:29:11'),
(220, 105, 4, '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(221, 106, 4, '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(222, 107, 4, '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(223, 108, 3, '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(224, 108, 4, '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(225, 109, 3, '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(226, 109, 4, '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(227, 111, 4, '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(228, 112, 4, '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(230, 113, 4, '2021-09-07 14:18:53', '2021-09-07 14:18:53'),
(231, 114, 4, '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(232, 115, 4, '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(233, 116, 3, '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(236, 118, 4, '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(237, 119, 4, '2021-09-07 15:11:14', '2021-09-07 15:11:14'),
(238, 120, 4, '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(239, 121, 3, '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(240, 122, 4, '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(241, 123, 4, '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(242, 124, 3, '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(243, 125, 4, '2021-09-07 15:52:45', '2021-09-07 15:52:45'),
(244, 117, 1, '2021-10-09 03:40:40', '2021-10-09 03:40:40'),
(245, 117, 3, '2021-10-09 03:40:40', '2021-10-09 03:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_categories`
--

CREATE TABLE `product_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_categories`
--

INSERT INTO `product_sub_categories` (`id`, `product_id`, `sub_category_id`, `created_at`, `updated_at`) VALUES
(7, 51, 53, '2021-07-31 01:14:13', '2021-07-31 01:14:13'),
(8, 50, 53, '2021-07-31 01:15:04', '2021-07-31 01:15:04'),
(9, 49, 53, '2021-07-31 01:16:29', '2021-07-31 01:16:29'),
(10, 48, 53, '2021-07-31 01:16:55', '2021-07-31 01:16:55'),
(11, 47, 53, '2021-07-31 01:17:43', '2021-07-31 01:17:43'),
(12, 46, 53, '2021-07-31 01:18:26', '2021-07-31 01:18:26'),
(13, 45, 55, '2021-07-31 01:27:10', '2021-07-31 01:27:10'),
(14, 44, 53, '2021-07-31 01:32:37', '2021-07-31 01:32:37'),
(15, 42, 55, '2021-07-31 01:33:55', '2021-07-31 01:33:55'),
(16, 41, 55, '2021-07-31 01:35:16', '2021-07-31 01:35:16'),
(17, 40, 55, '2021-07-31 01:37:42', '2021-07-31 01:37:42'),
(18, 39, 55, '2021-07-31 01:38:38', '2021-07-31 01:38:38'),
(19, 37, 55, '2021-07-31 01:40:00', '2021-07-31 01:40:00'),
(20, 36, 53, '2021-07-31 01:40:40', '2021-07-31 01:40:40'),
(21, 35, 53, '2021-07-31 01:41:01', '2021-07-31 01:41:01'),
(22, 34, 53, '2021-07-31 01:41:19', '2021-07-31 01:41:19'),
(23, 38, 53, '2021-07-31 01:46:51', '2021-07-31 01:46:51'),
(24, 43, 53, '2021-07-31 01:48:52', '2021-07-31 01:48:52'),
(27, 52, 53, '2021-08-08 11:38:25', '2021-08-08 11:38:25'),
(28, 52, 55, '2021-08-08 11:38:25', '2021-08-08 11:38:25'),
(31, 54, 53, '2021-08-09 12:16:04', '2021-08-09 12:16:04'),
(32, 55, 53, '2021-08-09 12:21:05', '2021-08-09 12:21:05'),
(40, 60, 54, '2021-08-09 13:02:13', '2021-08-09 13:02:13'),
(41, 61, 53, '2021-08-09 13:12:50', '2021-08-09 13:12:50'),
(42, 62, 53, '2021-08-09 13:17:23', '2021-08-09 13:17:23'),
(44, 64, 53, '2021-08-09 13:46:31', '2021-08-09 13:46:31'),
(47, 66, 53, '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(48, 67, 53, '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(60, 63, 55, '2021-08-10 05:45:49', '2021-08-10 05:45:49'),
(62, 70, 53, '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(63, 70, 55, '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(64, 71, 53, '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(65, 72, 55, '2021-08-14 15:34:11', '2021-08-14 15:34:11'),
(68, 75, 53, '2021-08-14 15:49:59', '2021-08-14 15:49:59'),
(69, 76, 53, '2021-08-14 15:53:27', '2021-08-14 15:53:27'),
(70, 77, 55, '2021-08-14 15:56:30', '2021-08-14 15:56:30'),
(71, 78, 53, '2021-08-14 15:59:48', '2021-08-14 15:59:48'),
(72, 78, 55, '2021-08-14 15:59:48', '2021-08-14 15:59:48'),
(73, 79, 53, '2021-08-14 16:05:49', '2021-08-14 16:05:49'),
(74, 80, 53, '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(75, 80, 55, '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(76, 81, 55, '2021-08-15 02:39:20', '2021-08-15 02:39:20'),
(77, 82, 55, '2021-08-15 02:56:05', '2021-08-15 02:56:05'),
(107, 74, 55, '2021-08-19 01:43:45', '2021-08-19 01:43:45'),
(108, 73, 53, '2021-08-19 01:44:52', '2021-08-19 01:44:52'),
(109, 57, 54, '2021-08-19 01:46:26', '2021-08-19 01:46:26'),
(110, 57, 56, '2021-08-19 01:46:26', '2021-08-19 01:46:26'),
(111, 53, 54, '2021-08-19 01:48:56', '2021-08-19 01:48:56'),
(112, 53, 56, '2021-08-19 01:48:56', '2021-08-19 01:48:56'),
(113, 56, 56, '2021-08-19 01:59:07', '2021-08-19 01:59:07'),
(114, 91, 53, '2021-08-19 02:46:48', '2021-08-19 02:46:48'),
(115, 90, 53, '2021-08-19 02:48:33', '2021-08-19 02:48:33'),
(116, 89, 53, '2021-08-19 02:51:39', '2021-08-19 02:51:39'),
(117, 88, 53, '2021-08-19 02:52:57', '2021-08-19 02:52:57'),
(118, 87, 53, '2021-08-19 02:54:13', '2021-08-19 02:54:13'),
(119, 86, 53, '2021-08-19 02:55:32', '2021-08-19 02:55:32'),
(120, 83, 53, '2021-08-19 03:16:21', '2021-08-19 03:16:21'),
(121, 83, 55, '2021-08-19 03:16:21', '2021-08-19 03:16:21'),
(122, 84, 55, '2021-08-19 03:16:59', '2021-08-19 03:16:59'),
(123, 85, 53, '2021-08-19 03:17:38', '2021-08-19 03:17:38'),
(124, 85, 55, '2021-08-19 03:17:38', '2021-08-19 03:17:38'),
(143, 103, 53, '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(144, 103, 55, '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(146, 92, 54, '2021-09-05 04:21:40', '2021-09-05 04:21:40'),
(162, 96, 53, '2021-09-05 04:44:19', '2021-09-05 04:44:19'),
(163, 96, 55, '2021-09-05 04:44:19', '2021-09-05 04:44:19'),
(164, 97, 53, '2021-09-05 04:45:37', '2021-09-05 04:45:37'),
(165, 97, 54, '2021-09-05 04:45:37', '2021-09-05 04:45:37'),
(168, 98, 53, '2021-09-05 04:49:00', '2021-09-05 04:49:00'),
(169, 98, 55, '2021-09-05 04:49:00', '2021-09-05 04:49:00'),
(170, 100, 53, '2021-09-05 04:51:14', '2021-09-05 04:51:14'),
(171, 100, 55, '2021-09-05 04:51:14', '2021-09-05 04:51:14'),
(172, 101, 53, '2021-09-05 04:52:45', '2021-09-05 04:52:45'),
(173, 101, 55, '2021-09-05 04:52:45', '2021-09-05 04:52:45'),
(175, 102, 53, '2021-09-05 04:55:34', '2021-09-05 04:55:34'),
(185, 104, 53, '2021-09-07 12:29:11', '2021-09-07 12:29:11'),
(186, 105, 53, '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(187, 105, 55, '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(188, 106, 53, '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(189, 106, 55, '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(190, 107, 53, '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(191, 107, 55, '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(192, 108, 53, '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(193, 109, 53, '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(194, 110, 53, '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(195, 110, 55, '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(196, 112, 53, '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(198, 113, 53, '2021-09-07 14:18:53', '2021-09-07 14:18:53'),
(199, 115, 53, '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(200, 116, 53, '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(203, 118, 53, '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(204, 119, 53, '2021-09-07 15:11:14', '2021-09-07 15:11:14'),
(205, 119, 55, '2021-09-07 15:11:14', '2021-09-07 15:11:14'),
(206, 120, 53, '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(207, 120, 55, '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(208, 121, 53, '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(209, 122, 54, '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(210, 123, 53, '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(211, 124, 54, '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(212, 125, 53, '2021-09-07 15:52:45', '2021-09-07 15:52:45'),
(213, 117, 54, '2021-10-09 03:40:40', '2021-10-09 03:40:40'),
(214, 117, 56, '2021-10-09 03:40:40', '2021-10-09 03:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `product_sub_images`
--

CREATE TABLE `product_sub_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `sub_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sub_images`
--

INSERT INTO `product_sub_images` (`id`, `product_id`, `sub_image`, `created_at`, `updated_at`) VALUES
(161, 10, 'image/product/sub_image/sub_image-315104576.jpeg', '2021-06-17 03:41:12', '2021-06-17 03:41:12'),
(162, 10, 'image/product/sub_image/sub_image-1773098992.png', '2021-06-17 03:41:12', '2021-06-17 03:41:12'),
(163, 10, 'image/product/sub_image/sub_image-447398747.png', '2021-06-17 03:41:12', '2021-06-17 03:41:12'),
(164, 11, 'image/product/sub_image/sub_image-219178352.jpeg', '2021-06-20 00:06:57', '2021-06-20 00:06:57'),
(165, 11, 'image/product/sub_image/sub_image-388078377.png', '2021-06-20 00:06:57', '2021-06-20 00:06:57'),
(166, 11, 'image/product/sub_image/sub_image-2091417706.png', '2021-06-20 00:06:57', '2021-06-20 00:06:57'),
(167, 12, 'image/product/sub_image/sub_image-2083351390.jpeg', '2021-06-23 03:41:21', '2021-06-23 03:41:21'),
(168, 12, 'image/product/sub_image/sub_image-1741159122.jpeg', '2021-06-23 03:41:21', '2021-06-23 03:41:21'),
(169, 12, 'image/product/sub_image/sub_image-1015119022.jpeg', '2021-06-23 03:41:21', '2021-06-23 03:41:21'),
(170, 12, 'image/product/sub_image/sub_image-878940505.jpeg', '2021-06-23 03:41:21', '2021-06-23 03:41:21'),
(171, 13, 'image/product/sub_image/sub_image-2089713095.jpeg', '2021-06-23 03:42:45', '2021-06-23 03:42:45'),
(172, 13, 'image/product/sub_image/sub_image-1688951760.jpeg', '2021-06-23 03:42:45', '2021-06-23 03:42:45'),
(173, 13, 'image/product/sub_image/sub_image-843925027.jpeg', '2021-06-23 03:42:45', '2021-06-23 03:42:45'),
(174, 13, 'image/product/sub_image/sub_image-2123137507.jpeg', '2021-06-23 03:42:45', '2021-06-23 03:42:45'),
(175, 14, 'image/product/sub_image/sub_image-910710112.jpeg', '2021-06-23 03:44:38', '2021-06-23 03:44:38'),
(176, 14, 'image/product/sub_image/sub_image-1196130929.jpeg', '2021-06-23 03:44:38', '2021-06-23 03:44:38'),
(177, 14, 'image/product/sub_image/sub_image-1423761604.jpeg', '2021-06-23 03:44:38', '2021-06-23 03:44:38'),
(178, 15, 'image/product/sub_image/sub_image-1728555065.jpeg', '2021-06-23 07:02:32', '2021-06-23 07:02:32'),
(179, 15, 'image/product/sub_image/sub_image-1114034168.jpeg', '2021-06-23 07:02:32', '2021-06-23 07:02:32'),
(180, 15, 'image/product/sub_image/sub_image-1192959426.jpeg', '2021-06-23 07:02:32', '2021-06-23 07:02:32'),
(181, 15, 'image/product/sub_image/sub_image-311099722.jpeg', '2021-06-23 07:02:32', '2021-06-23 07:02:32'),
(182, 16, 'image/product/sub_image/sub_image-576102308.jpeg', '2021-06-23 07:06:46', '2021-06-23 07:06:46'),
(183, 16, 'image/product/sub_image/sub_image-1236172959.jpeg', '2021-06-23 07:06:46', '2021-06-23 07:06:46'),
(184, 16, 'image/product/sub_image/sub_image-665876575.jpeg', '2021-06-23 07:06:46', '2021-06-23 07:06:46'),
(185, 16, 'image/product/sub_image/sub_image-928961930.jpeg', '2021-06-23 07:06:46', '2021-06-23 07:06:46'),
(186, 16, 'image/product/sub_image/sub_image-1131880376.jpeg', '2021-06-23 07:06:46', '2021-06-23 07:06:46'),
(187, 16, 'image/product/sub_image/sub_image-168302583.jpeg', '2021-06-23 07:06:46', '2021-06-23 07:06:46'),
(188, 17, 'image/product/sub_image/sub_image-448458984.jpeg', '2021-06-23 07:16:12', '2021-06-23 07:16:12'),
(189, 17, 'image/product/sub_image/sub_image-442948241.jpeg', '2021-06-23 07:16:12', '2021-06-23 07:16:12'),
(190, 17, 'image/product/sub_image/sub_image-1396800048.jpeg', '2021-06-23 07:16:12', '2021-06-23 07:16:12'),
(191, 18, 'image/product/sub_image/sub_image-1176275201.jpeg', '2021-06-23 07:17:52', '2021-06-23 07:17:52'),
(192, 18, 'image/product/sub_image/sub_image-1405668485.jpeg', '2021-06-23 07:17:52', '2021-06-23 07:17:52'),
(193, 18, 'image/product/sub_image/sub_image-1258925298.jpeg', '2021-06-23 07:17:52', '2021-06-23 07:17:52'),
(194, 18, 'image/product/sub_image/sub_image-707500864.jpeg', '2021-06-23 07:17:52', '2021-06-23 07:17:52'),
(195, 19, 'image/product/sub_image/sub_image-1086240495.jpeg', '2021-06-30 22:15:12', '2021-06-30 22:15:12'),
(196, 20, 'image/product/sub_image/sub_image-389246222.jpeg', '2021-07-12 05:44:54', '2021-07-12 05:44:54'),
(197, 20, 'image/product/sub_image/sub_image-1335190376.jpeg', '2021-07-12 05:44:54', '2021-07-12 05:44:54'),
(198, 20, 'image/product/sub_image/sub_image-1314656245.jpeg', '2021-07-12 05:44:54', '2021-07-12 05:44:54'),
(199, 20, 'image/product/sub_image/sub_image-248067181.jpeg', '2021-07-12 05:44:54', '2021-07-12 05:44:54'),
(200, 20, 'image/product/sub_image/sub_image-1624736834.jpeg', '2021-07-12 05:44:54', '2021-07-12 05:44:54'),
(201, 20, 'image/product/sub_image/sub_image-196034404.jpeg', '2021-07-12 05:44:54', '2021-07-12 05:44:54'),
(202, 20, 'image/product/sub_image/sub_image-989968910.jpeg', '2021-07-12 05:44:54', '2021-07-12 05:44:54'),
(203, 20, 'image/product/sub_image/sub_image-1895506115.jpeg', '2021-07-12 05:44:54', '2021-07-12 05:44:54'),
(229, 33, 'image/product/sub_image/sub_image-781811293.jpeg', '2021-07-25 13:36:39', '2021-07-25 13:36:39'),
(230, 33, 'image/product/sub_image/sub_image-272977082.jpeg', '2021-07-25 13:36:39', '2021-07-25 13:36:39'),
(231, 33, 'image/product/sub_image/sub_image-929829265.jpeg', '2021-07-25 13:36:39', '2021-07-25 13:36:39'),
(232, 33, 'image/product/sub_image/sub_image-590426589.jpeg', '2021-07-25 13:36:39', '2021-07-25 13:36:39'),
(233, 33, 'image/product/sub_image/sub_image-308859280.jpeg', '2021-07-25 13:36:39', '2021-07-25 13:36:39'),
(234, 34, 'image/product/sub_image/sub_image-246533782.jpeg', '2021-07-25 14:24:35', '2021-07-25 14:24:35'),
(235, 34, 'image/product/sub_image/sub_image-2132200980.jpeg', '2021-07-25 14:24:35', '2021-07-25 14:24:35'),
(236, 34, 'image/product/sub_image/sub_image-1408683213.jpeg', '2021-07-25 14:24:35', '2021-07-25 14:24:35'),
(237, 34, 'image/product/sub_image/sub_image-1872685683.jpeg', '2021-07-25 14:24:35', '2021-07-25 14:24:35'),
(238, 34, 'image/product/sub_image/sub_image-648198371.jpeg', '2021-07-25 14:24:35', '2021-07-25 14:24:35'),
(239, 35, 'image/product/sub_image/sub_image-715608004.jpeg', '2021-07-25 14:37:44', '2021-07-25 14:37:44'),
(240, 35, 'image/product/sub_image/sub_image-514416767.jpeg', '2021-07-25 14:37:44', '2021-07-25 14:37:44'),
(241, 35, 'image/product/sub_image/sub_image-1029818306.jpeg', '2021-07-25 14:37:44', '2021-07-25 14:37:44'),
(242, 35, 'image/product/sub_image/sub_image-1022996615.jpeg', '2021-07-25 14:37:44', '2021-07-25 14:37:44'),
(243, 36, 'image/product/sub_image/sub_image-1578761758.jpeg', '2021-07-25 14:49:40', '2021-07-25 14:49:40'),
(244, 36, 'image/product/sub_image/sub_image-233935389.jpeg', '2021-07-25 14:49:40', '2021-07-25 14:49:40'),
(245, 36, 'image/product/sub_image/sub_image-608264501.jpeg', '2021-07-25 14:49:40', '2021-07-25 14:49:40'),
(246, 36, 'image/product/sub_image/sub_image-1658256117.jpeg', '2021-07-25 14:49:40', '2021-07-25 14:49:40'),
(247, 36, 'image/product/sub_image/sub_image-1956958117.jpeg', '2021-07-25 14:49:40', '2021-07-25 14:49:40'),
(248, 37, 'image/product/sub_image/sub_image-1599252682.jpeg', '2021-07-25 14:53:20', '2021-07-25 14:53:20'),
(249, 37, 'image/product/sub_image/sub_image-658413809.jpeg', '2021-07-25 14:53:20', '2021-07-25 14:53:20'),
(250, 37, 'image/product/sub_image/sub_image-336265521.jpeg', '2021-07-25 14:53:20', '2021-07-25 14:53:20'),
(251, 37, 'image/product/sub_image/sub_image-339223565.jpeg', '2021-07-25 14:53:20', '2021-07-25 14:53:20'),
(252, 37, 'image/product/sub_image/sub_image-931677518.jpeg', '2021-07-25 14:53:20', '2021-07-25 14:53:20'),
(253, 38, 'image/product/sub_image/sub_image-1217749384.jpeg', '2021-07-25 14:58:17', '2021-07-25 14:58:17'),
(254, 38, 'image/product/sub_image/sub_image-105671335.jpeg', '2021-07-25 14:58:17', '2021-07-25 14:58:17'),
(255, 38, 'image/product/sub_image/sub_image-911064593.jpeg', '2021-07-25 14:58:17', '2021-07-25 14:58:17'),
(256, 38, 'image/product/sub_image/sub_image-83678314.jpeg', '2021-07-25 14:58:17', '2021-07-25 14:58:17'),
(257, 38, 'image/product/sub_image/sub_image-2004169131.jpeg', '2021-07-25 14:58:17', '2021-07-25 14:58:17'),
(258, 39, 'image/product/sub_image/sub_image-739694143.jpeg', '2021-07-25 15:33:28', '2021-07-25 15:33:28'),
(259, 39, 'image/product/sub_image/sub_image-383232065.jpeg', '2021-07-25 15:33:28', '2021-07-25 15:33:28'),
(260, 39, 'image/product/sub_image/sub_image-1224098992.jpeg', '2021-07-25 15:33:28', '2021-07-25 15:33:28'),
(261, 39, 'image/product/sub_image/sub_image-612876260.jpeg', '2021-07-25 15:33:28', '2021-07-25 15:33:28'),
(262, 39, 'image/product/sub_image/sub_image-781241059.jpeg', '2021-07-25 15:33:28', '2021-07-25 15:33:28'),
(263, 40, 'image/product/sub_image/sub_image-1277788734.jpeg', '2021-07-25 15:39:16', '2021-07-25 15:39:16'),
(264, 40, 'image/product/sub_image/sub_image-734774415.jpeg', '2021-07-25 15:39:16', '2021-07-25 15:39:16'),
(265, 40, 'image/product/sub_image/sub_image-2099687120.jpeg', '2021-07-25 15:39:16', '2021-07-25 15:39:16'),
(266, 40, 'image/product/sub_image/sub_image-956516615.jpeg', '2021-07-25 15:39:16', '2021-07-25 15:39:16'),
(267, 40, 'image/product/sub_image/sub_image-105725556.jpeg', '2021-07-25 15:39:16', '2021-07-25 15:39:16'),
(268, 41, 'image/product/sub_image/sub_image-1413585958.jpeg', '2021-07-25 15:48:15', '2021-07-25 15:48:15'),
(269, 41, 'image/product/sub_image/sub_image-1185370880.jpeg', '2021-07-25 15:48:15', '2021-07-25 15:48:15'),
(270, 41, 'image/product/sub_image/sub_image-641045213.jpeg', '2021-07-25 15:48:15', '2021-07-25 15:48:15'),
(271, 41, 'image/product/sub_image/sub_image-358509789.jpeg', '2021-07-25 15:48:15', '2021-07-25 15:48:15'),
(272, 41, 'image/product/sub_image/sub_image-162416227.jpeg', '2021-07-25 15:48:15', '2021-07-25 15:48:15'),
(273, 42, 'image/product/sub_image/sub_image-736965183.jpeg', '2021-07-25 16:02:04', '2021-07-25 16:02:04'),
(274, 42, 'image/product/sub_image/sub_image-1588471066.jpeg', '2021-07-25 16:02:04', '2021-07-25 16:02:04'),
(275, 42, 'image/product/sub_image/sub_image-1415823167.jpeg', '2021-07-25 16:02:04', '2021-07-25 16:02:04'),
(276, 42, 'image/product/sub_image/sub_image-1353690038.jpeg', '2021-07-25 16:02:04', '2021-07-25 16:02:04'),
(277, 42, 'image/product/sub_image/sub_image-1420844121.jpeg', '2021-07-25 16:02:04', '2021-07-25 16:02:04'),
(278, 43, 'image/product/sub_image/sub_image-1839345007.jpeg', '2021-07-25 16:30:32', '2021-07-25 16:30:32'),
(279, 43, 'image/product/sub_image/sub_image-1714916075.jpeg', '2021-07-25 16:30:32', '2021-07-25 16:30:32'),
(280, 43, 'image/product/sub_image/sub_image-240912585.jpeg', '2021-07-25 16:30:32', '2021-07-25 16:30:32'),
(281, 43, 'image/product/sub_image/sub_image-1005044136.jpeg', '2021-07-25 16:30:32', '2021-07-25 16:30:32'),
(282, 43, 'image/product/sub_image/sub_image-1231417180.jpeg', '2021-07-25 16:30:32', '2021-07-25 16:30:32'),
(283, 44, 'image/product/sub_image/sub_image-604986116.jpeg', '2021-07-25 16:35:32', '2021-07-25 16:35:32'),
(284, 44, 'image/product/sub_image/sub_image-648671123.jpeg', '2021-07-25 16:35:32', '2021-07-25 16:35:32'),
(285, 44, 'image/product/sub_image/sub_image-1822231423.jpeg', '2021-07-25 16:35:32', '2021-07-25 16:35:32'),
(286, 44, 'image/product/sub_image/sub_image-1042116379.jpeg', '2021-07-25 16:35:32', '2021-07-25 16:35:32'),
(287, 44, 'image/product/sub_image/sub_image-1678801716.jpeg', '2021-07-25 16:35:32', '2021-07-25 16:35:32'),
(288, 45, 'image/product/sub_image/sub_image-882714551.jpeg', '2021-07-25 16:45:24', '2021-07-25 16:45:24'),
(289, 45, 'image/product/sub_image/sub_image-193224176.jpeg', '2021-07-25 16:45:24', '2021-07-25 16:45:24'),
(290, 45, 'image/product/sub_image/sub_image-7992559.jpeg', '2021-07-25 16:45:24', '2021-07-25 16:45:24'),
(291, 45, 'image/product/sub_image/sub_image-2015810472.jpeg', '2021-07-25 16:45:24', '2021-07-25 16:45:24'),
(292, 45, 'image/product/sub_image/sub_image-991532390.jpeg', '2021-07-25 16:45:24', '2021-07-25 16:45:24'),
(293, 46, 'image/product/sub_image/sub_image-1586049819.jpeg', '2021-07-27 13:29:43', '2021-07-27 13:29:43'),
(294, 46, 'image/product/sub_image/sub_image-727844386.jpeg', '2021-07-27 13:29:43', '2021-07-27 13:29:43'),
(295, 46, 'image/product/sub_image/sub_image-713293016.jpeg', '2021-07-27 13:29:43', '2021-07-27 13:29:43'),
(296, 46, 'image/product/sub_image/sub_image-1921663443.jpeg', '2021-07-27 13:29:43', '2021-07-27 13:29:43'),
(297, 47, 'image/product/sub_image/sub_image-2094816955.jpeg', '2021-07-27 13:54:02', '2021-07-27 13:54:02'),
(298, 47, 'image/product/sub_image/sub_image-731208806.jpeg', '2021-07-27 13:54:02', '2021-07-27 13:54:02'),
(299, 47, 'image/product/sub_image/sub_image-96118085.jpeg', '2021-07-27 13:54:02', '2021-07-27 13:54:02'),
(300, 47, 'image/product/sub_image/sub_image-1932638875.jpeg', '2021-07-27 13:54:02', '2021-07-27 13:54:02'),
(301, 47, 'image/product/sub_image/sub_image-1186313407.jpeg', '2021-07-27 13:54:02', '2021-07-27 13:54:02'),
(302, 48, 'image/product/sub_image/sub_image-1145365060.jpeg', '2021-07-27 14:24:36', '2021-07-27 14:24:36'),
(303, 48, 'image/product/sub_image/sub_image-1457671854.jpeg', '2021-07-27 14:24:36', '2021-07-27 14:24:36'),
(304, 48, 'image/product/sub_image/sub_image-249935413.jpeg', '2021-07-27 14:24:36', '2021-07-27 14:24:36'),
(305, 48, 'image/product/sub_image/sub_image-1680836331.jpeg', '2021-07-27 14:24:36', '2021-07-27 14:24:36'),
(306, 49, 'image/product/sub_image/sub_image-766350958.jpeg', '2021-07-27 14:38:57', '2021-07-27 14:38:57'),
(307, 49, 'image/product/sub_image/sub_image-1571336558.jpeg', '2021-07-27 14:38:57', '2021-07-27 14:38:57'),
(308, 49, 'image/product/sub_image/sub_image-876052826.jpeg', '2021-07-27 14:38:57', '2021-07-27 14:38:57'),
(309, 49, 'image/product/sub_image/sub_image-707747724.jpeg', '2021-07-27 14:38:57', '2021-07-27 14:38:57'),
(310, 49, 'image/product/sub_image/sub_image-18039123.jpeg', '2021-07-27 14:38:57', '2021-07-27 14:38:57'),
(311, 50, 'image/product/sub_image/sub_image-1479939982.jpeg', '2021-07-27 14:52:53', '2021-07-27 14:52:53'),
(312, 50, 'image/product/sub_image/sub_image-889766585.jpeg', '2021-07-27 14:52:53', '2021-07-27 14:52:53'),
(313, 50, 'image/product/sub_image/sub_image-983512917.jpeg', '2021-07-27 14:52:53', '2021-07-27 14:52:53'),
(314, 50, 'image/product/sub_image/sub_image-1467756844.jpeg', '2021-07-27 14:52:53', '2021-07-27 14:52:53'),
(315, 50, 'image/product/sub_image/sub_image-295338126.jpeg', '2021-07-27 14:52:53', '2021-07-27 14:52:53'),
(316, 51, 'image/product/sub_image/sub_image-1360297946.jpeg', '2021-07-27 15:02:59', '2021-07-27 15:02:59'),
(317, 51, 'image/product/sub_image/sub_image-1550218107.jpeg', '2021-07-27 15:02:59', '2021-07-27 15:02:59'),
(318, 51, 'image/product/sub_image/sub_image-742736700.jpeg', '2021-07-27 15:02:59', '2021-07-27 15:02:59'),
(319, 51, 'image/product/sub_image/sub_image-2062683422.jpeg', '2021-07-27 15:02:59', '2021-07-27 15:02:59'),
(320, 51, 'image/product/sub_image/sub_image-84884093.jpeg', '2021-07-27 15:02:59', '2021-07-27 15:02:59'),
(321, 52, 'image/product/sub_image/sub_image-1462637087.jpeg', '2021-08-08 09:44:24', '2021-08-08 09:44:24'),
(322, 52, 'image/product/sub_image/sub_image-898135039.jpeg', '2021-08-08 09:44:24', '2021-08-08 09:44:24'),
(323, 52, 'image/product/sub_image/sub_image-1922704528.jpeg', '2021-08-08 09:44:24', '2021-08-08 09:44:24'),
(324, 52, 'image/product/sub_image/sub_image-164990409.jpeg', '2021-08-08 09:44:24', '2021-08-08 09:44:24'),
(325, 53, 'image/product/sub_image/sub_image-133977355.jpeg', '2021-08-09 11:51:32', '2021-08-09 11:51:32'),
(326, 53, 'image/product/sub_image/sub_image-607905714.jpeg', '2021-08-09 11:51:32', '2021-08-09 11:51:32'),
(327, 53, 'image/product/sub_image/sub_image-1484582548.jpeg', '2021-08-09 11:51:32', '2021-08-09 11:51:32'),
(328, 53, 'image/product/sub_image/sub_image-430417142.jpeg', '2021-08-09 11:51:32', '2021-08-09 11:51:32'),
(329, 53, 'image/product/sub_image/sub_image-818608464.jpeg', '2021-08-09 11:51:32', '2021-08-09 11:51:32'),
(330, 54, 'image/product/sub_image/sub_image-197317769.jpeg', '2021-08-09 12:16:04', '2021-08-09 12:16:04'),
(331, 54, 'image/product/sub_image/sub_image-1745756985.jpeg', '2021-08-09 12:16:04', '2021-08-09 12:16:04'),
(332, 54, 'image/product/sub_image/sub_image-840539137.jpeg', '2021-08-09 12:16:04', '2021-08-09 12:16:04'),
(333, 54, 'image/product/sub_image/sub_image-133521032.jpeg', '2021-08-09 12:16:04', '2021-08-09 12:16:04'),
(334, 54, 'image/product/sub_image/sub_image-1841975900.jpeg', '2021-08-09 12:16:04', '2021-08-09 12:16:04'),
(335, 55, 'image/product/sub_image/sub_image-1267072513.jpeg', '2021-08-09 12:21:05', '2021-08-09 12:21:05'),
(336, 55, 'image/product/sub_image/sub_image-728270425.jpeg', '2021-08-09 12:21:05', '2021-08-09 12:21:05'),
(337, 55, 'image/product/sub_image/sub_image-332406129.jpeg', '2021-08-09 12:21:05', '2021-08-09 12:21:05'),
(338, 55, 'image/product/sub_image/sub_image-41744995.jpeg', '2021-08-09 12:21:05', '2021-08-09 12:21:05'),
(339, 55, 'image/product/sub_image/sub_image-261930504.jpeg', '2021-08-09 12:21:05', '2021-08-09 12:21:05'),
(340, 55, 'image/product/sub_image/sub_image-1881299986.jpeg', '2021-08-09 12:21:05', '2021-08-09 12:21:05'),
(341, 56, 'image/product/sub_image/sub_image-566017384.jpeg', '2021-08-09 12:26:17', '2021-08-09 12:26:17'),
(342, 56, 'image/product/sub_image/sub_image-1555736564.jpeg', '2021-08-09 12:26:17', '2021-08-09 12:26:17'),
(343, 56, 'image/product/sub_image/sub_image-794877808.jpeg', '2021-08-09 12:26:17', '2021-08-09 12:26:17'),
(344, 56, 'image/product/sub_image/sub_image-1256847359.jpeg', '2021-08-09 12:26:17', '2021-08-09 12:26:17'),
(345, 56, 'image/product/sub_image/sub_image-661700741.jpeg', '2021-08-09 12:26:17', '2021-08-09 12:26:17'),
(346, 57, 'image/product/sub_image/sub_image-373776560.jpeg', '2021-08-09 12:42:29', '2021-08-09 12:42:29'),
(347, 57, 'image/product/sub_image/sub_image-381055813.jpeg', '2021-08-09 12:42:29', '2021-08-09 12:42:29'),
(348, 57, 'image/product/sub_image/sub_image-1030640811.jpeg', '2021-08-09 12:42:29', '2021-08-09 12:42:29'),
(349, 57, 'image/product/sub_image/sub_image-2138269981.jpeg', '2021-08-09 12:42:29', '2021-08-09 12:42:29'),
(350, 57, 'image/product/sub_image/sub_image-688173374.jpeg', '2021-08-09 12:42:29', '2021-08-09 12:42:29'),
(361, 61, 'image/product/sub_image/sub_image-961580849.jpeg', '2021-08-09 13:12:50', '2021-08-09 13:12:50'),
(362, 61, 'image/product/sub_image/sub_image-1232101457.jpeg', '2021-08-09 13:12:50', '2021-08-09 13:12:50'),
(363, 61, 'image/product/sub_image/sub_image-616098251.jpeg', '2021-08-09 13:12:50', '2021-08-09 13:12:50'),
(364, 61, 'image/product/sub_image/sub_image-680405160.jpeg', '2021-08-09 13:12:50', '2021-08-09 13:12:50'),
(365, 61, 'image/product/sub_image/sub_image-476577542.jpeg', '2021-08-09 13:12:50', '2021-08-09 13:12:50'),
(366, 62, 'image/product/sub_image/sub_image-166415757.jpeg', '2021-08-09 13:17:23', '2021-08-09 13:17:23'),
(367, 62, 'image/product/sub_image/sub_image-794948231.jpeg', '2021-08-09 13:17:23', '2021-08-09 13:17:23'),
(368, 62, 'image/product/sub_image/sub_image-1074794579.jpeg', '2021-08-09 13:17:23', '2021-08-09 13:17:23'),
(369, 62, 'image/product/sub_image/sub_image-610604478.jpeg', '2021-08-09 13:17:23', '2021-08-09 13:17:23'),
(370, 62, 'image/product/sub_image/sub_image-1972605804.jpeg', '2021-08-09 13:17:23', '2021-08-09 13:17:23'),
(371, 62, 'image/product/sub_image/sub_image-2126198620.jpeg', '2021-08-09 13:17:23', '2021-08-09 13:17:23'),
(372, 63, 'image/product/sub_image/sub_image-508967453.jpeg', '2021-08-09 13:27:15', '2021-08-09 13:27:15'),
(373, 63, 'image/product/sub_image/sub_image-990275854.jpeg', '2021-08-09 13:27:15', '2021-08-09 13:27:15'),
(374, 63, 'image/product/sub_image/sub_image-1108606532.jpeg', '2021-08-09 13:27:15', '2021-08-09 13:27:15'),
(375, 63, 'image/product/sub_image/sub_image-54568000.jpeg', '2021-08-09 13:27:15', '2021-08-09 13:27:15'),
(376, 63, 'image/product/sub_image/sub_image-1482157149.jpeg', '2021-08-09 13:27:15', '2021-08-09 13:27:15'),
(377, 64, 'image/product/sub_image/sub_image-1280838939.jpeg', '2021-08-09 13:46:31', '2021-08-09 13:46:31'),
(378, 64, 'image/product/sub_image/sub_image-1498055554.jpeg', '2021-08-09 13:46:31', '2021-08-09 13:46:31'),
(379, 64, 'image/product/sub_image/sub_image-1149119851.jpeg', '2021-08-09 13:46:31', '2021-08-09 13:46:31'),
(380, 64, 'image/product/sub_image/sub_image-141140346.jpeg', '2021-08-09 13:46:31', '2021-08-09 13:46:31'),
(381, 64, 'image/product/sub_image/sub_image-1594684826.jpeg', '2021-08-09 13:46:31', '2021-08-09 13:46:31'),
(387, 66, 'image/product/sub_image/sub_image-1373380798.jpeg', '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(388, 66, 'image/product/sub_image/sub_image-835578400.jpeg', '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(389, 66, 'image/product/sub_image/sub_image-571282032.jpeg', '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(390, 66, 'image/product/sub_image/sub_image-1823905895.jpeg', '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(391, 66, 'image/product/sub_image/sub_image-1328046165.jpeg', '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(392, 66, 'image/product/sub_image/sub_image-715492314.jpeg', '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(393, 66, 'image/product/sub_image/sub_image-1903321783.jpeg', '2021-08-09 14:14:46', '2021-08-09 14:14:46'),
(394, 67, 'image/product/sub_image/sub_image-1401494349.jpeg', '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(395, 67, 'image/product/sub_image/sub_image-1248680499.jpeg', '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(396, 67, 'image/product/sub_image/sub_image-981480352.jpeg', '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(397, 67, 'image/product/sub_image/sub_image-63074630.jpeg', '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(398, 67, 'image/product/sub_image/sub_image-144918501.jpeg', '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(399, 67, 'image/product/sub_image/sub_image-675907190.jpeg', '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(400, 67, 'image/product/sub_image/sub_image-65183564.jpeg', '2021-08-09 14:38:29', '2021-08-09 14:38:29'),
(411, 70, 'image/product/sub_image/sub_image-1403469131.jpeg', '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(412, 70, 'image/product/sub_image/sub_image-116862239.jpeg', '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(413, 70, 'image/product/sub_image/sub_image-876637243.jpeg', '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(414, 70, 'image/product/sub_image/sub_image-1169828008.jpeg', '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(415, 70, 'image/product/sub_image/sub_image-2040896288.jpeg', '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(416, 70, 'image/product/sub_image/sub_image-221626788.jpeg', '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(417, 70, 'image/product/sub_image/sub_image-1689570285.jpeg', '2021-08-14 15:00:17', '2021-08-14 15:00:17'),
(418, 71, 'image/product/sub_image/sub_image-1788877593.jpeg', '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(419, 71, 'image/product/sub_image/sub_image-1734591880.jpeg', '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(420, 71, 'image/product/sub_image/sub_image-1243101015.jpeg', '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(421, 71, 'image/product/sub_image/sub_image-1321370449.jpeg', '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(422, 71, 'image/product/sub_image/sub_image-1691295118.jpeg', '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(423, 71, 'image/product/sub_image/sub_image-1912256808.jpeg', '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(424, 71, 'image/product/sub_image/sub_image-1794761530.jpeg', '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(425, 71, 'image/product/sub_image/sub_image-724554673.jpeg', '2021-08-14 15:13:37', '2021-08-14 15:13:37'),
(426, 72, 'image/product/sub_image/sub_image-244803137.jpeg', '2021-08-14 15:34:11', '2021-08-14 15:34:11'),
(427, 72, 'image/product/sub_image/sub_image-2101868948.jpeg', '2021-08-14 15:34:11', '2021-08-14 15:34:11'),
(428, 72, 'image/product/sub_image/sub_image-1193341854.jpeg', '2021-08-14 15:34:11', '2021-08-14 15:34:11'),
(429, 72, 'image/product/sub_image/sub_image-2033503675.jpeg', '2021-08-14 15:34:11', '2021-08-14 15:34:11'),
(430, 72, 'image/product/sub_image/sub_image-690387537.jpeg', '2021-08-14 15:34:11', '2021-08-14 15:34:11'),
(431, 73, 'image/product/sub_image/sub_image-395797139.jpeg', '2021-08-14 15:43:14', '2021-08-14 15:43:14'),
(432, 73, 'image/product/sub_image/sub_image-1556365781.jpeg', '2021-08-14 15:43:14', '2021-08-14 15:43:14'),
(433, 73, 'image/product/sub_image/sub_image-567401267.jpeg', '2021-08-14 15:43:14', '2021-08-14 15:43:14'),
(434, 73, 'image/product/sub_image/sub_image-1215487769.jpeg', '2021-08-14 15:43:14', '2021-08-14 15:43:14'),
(435, 74, 'image/product/sub_image/sub_image-1521108360.jpeg', '2021-08-14 15:46:16', '2021-08-14 15:46:16'),
(436, 74, 'image/product/sub_image/sub_image-1768396245.jpeg', '2021-08-14 15:46:16', '2021-08-14 15:46:16'),
(437, 74, 'image/product/sub_image/sub_image-894341601.jpeg', '2021-08-14 15:46:16', '2021-08-14 15:46:16'),
(438, 74, 'image/product/sub_image/sub_image-2122332243.jpeg', '2021-08-14 15:46:16', '2021-08-14 15:46:16'),
(439, 74, 'image/product/sub_image/sub_image-1303989589.jpeg', '2021-08-14 15:46:16', '2021-08-14 15:46:16'),
(440, 75, 'image/product/sub_image/sub_image-1061356289.jpeg', '2021-08-14 15:49:59', '2021-08-14 15:49:59'),
(441, 75, 'image/product/sub_image/sub_image-1383248633.jpeg', '2021-08-14 15:49:59', '2021-08-14 15:49:59'),
(442, 75, 'image/product/sub_image/sub_image-390887335.jpeg', '2021-08-14 15:49:59', '2021-08-14 15:49:59'),
(443, 75, 'image/product/sub_image/sub_image-584697072.jpeg', '2021-08-14 15:49:59', '2021-08-14 15:49:59'),
(444, 75, 'image/product/sub_image/sub_image-1854209716.jpeg', '2021-08-14 15:49:59', '2021-08-14 15:49:59'),
(445, 76, 'image/product/sub_image/sub_image-16025647.jpeg', '2021-08-14 15:53:27', '2021-08-14 15:53:27'),
(446, 76, 'image/product/sub_image/sub_image-1002750316.jpeg', '2021-08-14 15:53:27', '2021-08-14 15:53:27'),
(447, 76, 'image/product/sub_image/sub_image-1838220301.jpeg', '2021-08-14 15:53:27', '2021-08-14 15:53:27'),
(448, 76, 'image/product/sub_image/sub_image-802532009.jpeg', '2021-08-14 15:53:27', '2021-08-14 15:53:27'),
(449, 76, 'image/product/sub_image/sub_image-1531790457.jpeg', '2021-08-14 15:53:27', '2021-08-14 15:53:27'),
(450, 77, 'image/product/sub_image/sub_image-871750079.jpeg', '2021-08-14 15:56:30', '2021-08-14 15:56:30'),
(451, 77, 'image/product/sub_image/sub_image-1166799107.jpeg', '2021-08-14 15:56:30', '2021-08-14 15:56:30'),
(452, 77, 'image/product/sub_image/sub_image-921124586.jpeg', '2021-08-14 15:56:30', '2021-08-14 15:56:30'),
(453, 77, 'image/product/sub_image/sub_image-2095658728.jpeg', '2021-08-14 15:56:30', '2021-08-14 15:56:30'),
(454, 77, 'image/product/sub_image/sub_image-218849246.jpeg', '2021-08-14 15:56:30', '2021-08-14 15:56:30'),
(455, 79, 'image/product/sub_image/sub_image-161626484.jpeg', '2021-08-14 16:05:49', '2021-08-14 16:05:49'),
(456, 79, 'image/product/sub_image/sub_image-985676742.jpeg', '2021-08-14 16:05:49', '2021-08-14 16:05:49'),
(457, 79, 'image/product/sub_image/sub_image-318367264.jpeg', '2021-08-14 16:05:49', '2021-08-14 16:05:49'),
(458, 79, 'image/product/sub_image/sub_image-240919846.jpeg', '2021-08-14 16:05:49', '2021-08-14 16:05:49'),
(459, 79, 'image/product/sub_image/sub_image-1220854129.jpeg', '2021-08-14 16:05:49', '2021-08-14 16:05:49'),
(460, 80, 'image/product/sub_image/sub_image-1487900664.jpeg', '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(461, 80, 'image/product/sub_image/sub_image-439343321.jpeg', '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(462, 80, 'image/product/sub_image/sub_image-1895702991.jpeg', '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(463, 80, 'image/product/sub_image/sub_image-1492408506.jpeg', '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(464, 80, 'image/product/sub_image/sub_image-1121630325.jpeg', '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(465, 80, 'image/product/sub_image/sub_image-892912696.jpeg', '2021-08-15 02:06:09', '2021-08-15 02:06:09'),
(466, 81, 'image/product/sub_image/sub_image-306874196.jpeg', '2021-08-15 02:39:20', '2021-08-15 02:39:20'),
(467, 81, 'image/product/sub_image/sub_image-463333938.jpeg', '2021-08-15 02:39:20', '2021-08-15 02:39:20'),
(468, 81, 'image/product/sub_image/sub_image-849864091.jpeg', '2021-08-15 02:39:20', '2021-08-15 02:39:20'),
(469, 81, 'image/product/sub_image/sub_image-1490417127.jpeg', '2021-08-15 02:39:20', '2021-08-15 02:39:20'),
(470, 82, 'image/product/sub_image/sub_image-1384375220.jpeg', '2021-08-15 02:56:05', '2021-08-15 02:56:05'),
(471, 82, 'image/product/sub_image/sub_image-368806694.jpeg', '2021-08-15 02:56:05', '2021-08-15 02:56:05'),
(472, 82, 'image/product/sub_image/sub_image-833149918.jpeg', '2021-08-15 02:56:05', '2021-08-15 02:56:05'),
(473, 82, 'image/product/sub_image/sub_image-1504493059.jpeg', '2021-08-15 02:56:05', '2021-08-15 02:56:05'),
(474, 82, 'image/product/sub_image/sub_image-2016240935.jpeg', '2021-08-15 02:56:05', '2021-08-15 02:56:05'),
(475, 83, 'image/product/sub_image/sub_image-2123055787.jpeg', '2021-08-15 03:18:44', '2021-08-15 03:18:44'),
(476, 83, 'image/product/sub_image/sub_image-616677224.jpeg', '2021-08-15 03:18:44', '2021-08-15 03:18:44'),
(477, 83, 'image/product/sub_image/sub_image-726287152.jpeg', '2021-08-15 03:18:44', '2021-08-15 03:18:44'),
(478, 83, 'image/product/sub_image/sub_image-1607822865.jpeg', '2021-08-15 03:18:44', '2021-08-15 03:18:44'),
(479, 83, 'image/product/sub_image/sub_image-1400896159.jpeg', '2021-08-15 03:18:44', '2021-08-15 03:18:44'),
(480, 83, 'image/product/sub_image/sub_image-1215615263.jpeg', '2021-08-15 03:18:44', '2021-08-15 03:18:44'),
(481, 83, 'image/product/sub_image/sub_image-1966172402.jpeg', '2021-08-15 03:18:44', '2021-08-15 03:18:44'),
(482, 84, 'image/product/sub_image/sub_image-2071263246.jpeg', '2021-08-15 03:30:15', '2021-08-15 03:30:15'),
(483, 84, 'image/product/sub_image/sub_image-961418436.jpeg', '2021-08-15 03:30:15', '2021-08-15 03:30:15'),
(484, 84, 'image/product/sub_image/sub_image-1593459857.jpeg', '2021-08-15 03:30:15', '2021-08-15 03:30:15'),
(485, 84, 'image/product/sub_image/sub_image-266650742.jpeg', '2021-08-15 03:30:15', '2021-08-15 03:30:15'),
(486, 84, 'image/product/sub_image/sub_image-371395962.jpeg', '2021-08-15 03:30:15', '2021-08-15 03:30:15'),
(487, 85, 'image/product/sub_image/sub_image-739560987.jpeg', '2021-08-15 03:45:08', '2021-08-15 03:45:08'),
(488, 85, 'image/product/sub_image/sub_image-2125631712.jpeg', '2021-08-15 03:45:08', '2021-08-15 03:45:08'),
(489, 85, 'image/product/sub_image/sub_image-1338664653.jpeg', '2021-08-15 03:45:08', '2021-08-15 03:45:08'),
(490, 85, 'image/product/sub_image/sub_image-819277839.jpeg', '2021-08-15 03:45:08', '2021-08-15 03:45:08'),
(491, 85, 'image/product/sub_image/sub_image-1534753454.jpeg', '2021-08-15 03:45:08', '2021-08-15 03:45:08'),
(492, 85, 'image/product/sub_image/sub_image-951222397.jpeg', '2021-08-15 03:45:08', '2021-08-15 03:45:08'),
(493, 86, 'image/product/sub_image/sub_image-1151386618.jpeg', '2021-08-16 15:14:57', '2021-08-16 15:14:57'),
(494, 86, 'image/product/sub_image/sub_image-2128521002.jpeg', '2021-08-16 15:14:57', '2021-08-16 15:14:57'),
(495, 86, 'image/product/sub_image/sub_image-2118667429.jpeg', '2021-08-16 15:14:57', '2021-08-16 15:14:57'),
(496, 87, 'image/product/sub_image/sub_image-259657084.jpeg', '2021-08-16 15:21:38', '2021-08-16 15:21:38'),
(497, 87, 'image/product/sub_image/sub_image-1829767507.jpeg', '2021-08-16 15:21:38', '2021-08-16 15:21:38'),
(498, 87, 'image/product/sub_image/sub_image-219689720.jpeg', '2021-08-16 15:21:38', '2021-08-16 15:21:38'),
(499, 87, 'image/product/sub_image/sub_image-1381145918.jpeg', '2021-08-16 15:21:38', '2021-08-16 15:21:38'),
(500, 87, 'image/product/sub_image/sub_image-337874206.jpeg', '2021-08-16 15:21:38', '2021-08-16 15:21:38'),
(501, 88, 'image/product/sub_image/sub_image-1957929270.jpeg', '2021-08-16 16:07:21', '2021-08-16 16:07:21'),
(502, 88, 'image/product/sub_image/sub_image-1613239179.jpeg', '2021-08-16 16:07:21', '2021-08-16 16:07:21'),
(503, 88, 'image/product/sub_image/sub_image-235294921.jpeg', '2021-08-16 16:07:21', '2021-08-16 16:07:21'),
(504, 88, 'image/product/sub_image/sub_image-909791968.jpeg', '2021-08-16 16:07:21', '2021-08-16 16:07:21'),
(505, 88, 'image/product/sub_image/sub_image-1526457535.jpeg', '2021-08-16 16:07:21', '2021-08-16 16:07:21'),
(506, 89, 'image/product/sub_image/sub_image-1124507356.jpeg', '2021-08-16 16:16:33', '2021-08-16 16:16:33'),
(507, 89, 'image/product/sub_image/sub_image-1451453438.jpeg', '2021-08-16 16:16:33', '2021-08-16 16:16:33'),
(508, 89, 'image/product/sub_image/sub_image-587344047.jpeg', '2021-08-16 16:16:33', '2021-08-16 16:16:33'),
(509, 89, 'image/product/sub_image/sub_image-1702058894.jpeg', '2021-08-16 16:16:33', '2021-08-16 16:16:33'),
(510, 89, 'image/product/sub_image/sub_image-1052502269.jpeg', '2021-08-16 16:16:33', '2021-08-16 16:16:33'),
(511, 90, 'image/product/sub_image/sub_image-874092213.jpeg', '2021-08-16 16:18:36', '2021-08-16 16:18:36'),
(512, 90, 'image/product/sub_image/sub_image-537077496.jpeg', '2021-08-16 16:18:36', '2021-08-16 16:18:36'),
(513, 90, 'image/product/sub_image/sub_image-1036880784.jpeg', '2021-08-16 16:18:36', '2021-08-16 16:18:36'),
(514, 90, 'image/product/sub_image/sub_image-1495227670.jpeg', '2021-08-16 16:18:36', '2021-08-16 16:18:36'),
(515, 90, 'image/product/sub_image/sub_image-1618716869.jpeg', '2021-08-16 16:18:36', '2021-08-16 16:18:36'),
(516, 91, 'image/product/sub_image/sub_image-842049602.jpeg', '2021-08-16 16:29:36', '2021-08-16 16:29:36'),
(517, 91, 'image/product/sub_image/sub_image-1935413879.jpeg', '2021-08-16 16:29:36', '2021-08-16 16:29:36'),
(518, 91, 'image/product/sub_image/sub_image-2060607488.jpeg', '2021-08-16 16:29:36', '2021-08-16 16:29:36'),
(519, 91, 'image/product/sub_image/sub_image-1712286259.jpeg', '2021-08-16 16:29:36', '2021-08-16 16:29:36'),
(520, 91, 'image/product/sub_image/sub_image-2057900049.jpeg', '2021-08-16 16:29:36', '2021-08-16 16:29:36'),
(521, 91, 'image/product/sub_image/sub_image-487824773.jpeg', '2021-08-16 16:29:36', '2021-08-16 16:29:36'),
(522, 91, 'image/product/sub_image/sub_image-1312644046.jpeg', '2021-08-16 16:29:36', '2021-08-16 16:29:36'),
(523, 92, 'image/product/sub_image/sub_image-1834167696.jpeg', '2021-09-04 13:31:18', '2021-09-04 13:31:18'),
(524, 92, 'image/product/sub_image/sub_image-548989862.jpeg', '2021-09-04 13:31:18', '2021-09-04 13:31:18'),
(525, 92, 'image/product/sub_image/sub_image-1790829299.jpeg', '2021-09-04 13:31:18', '2021-09-04 13:31:18'),
(526, 92, 'image/product/sub_image/sub_image-1453674347.jpeg', '2021-09-04 13:31:18', '2021-09-04 13:31:18'),
(527, 92, 'image/product/sub_image/sub_image-2078469570.jpeg', '2021-09-04 13:31:18', '2021-09-04 13:31:18'),
(545, 96, 'image/product/sub_image/sub_image-728051419.jpeg', '2021-09-04 14:00:14', '2021-09-04 14:00:14'),
(546, 96, 'image/product/sub_image/sub_image-220415901.jpeg', '2021-09-04 14:00:14', '2021-09-04 14:00:14'),
(547, 96, 'image/product/sub_image/sub_image-459943668.jpeg', '2021-09-04 14:00:14', '2021-09-04 14:00:14'),
(548, 96, 'image/product/sub_image/sub_image-203157546.jpeg', '2021-09-04 14:00:14', '2021-09-04 14:00:14'),
(549, 97, 'image/product/sub_image/sub_image-1164344997.jpeg', '2021-09-04 14:13:20', '2021-09-04 14:13:20'),
(550, 97, 'image/product/sub_image/sub_image-353582499.jpeg', '2021-09-04 14:13:20', '2021-09-04 14:13:20'),
(551, 97, 'image/product/sub_image/sub_image-489510217.jpeg', '2021-09-04 14:13:20', '2021-09-04 14:13:20'),
(552, 97, 'image/product/sub_image/sub_image-1406309754.jpeg', '2021-09-04 14:13:20', '2021-09-04 14:13:20'),
(553, 98, 'image/product/sub_image/sub_image-1021106981.jpeg', '2021-09-04 14:21:51', '2021-09-04 14:21:51'),
(554, 98, 'image/product/sub_image/sub_image-1255676451.jpeg', '2021-09-04 14:21:51', '2021-09-04 14:21:51'),
(555, 98, 'image/product/sub_image/sub_image-1761150770.jpeg', '2021-09-04 14:21:51', '2021-09-04 14:21:51'),
(556, 98, 'image/product/sub_image/sub_image-1685443725.jpeg', '2021-09-04 14:21:51', '2021-09-04 14:21:51'),
(557, 98, 'image/product/sub_image/sub_image-1831512732.jpeg', '2021-09-04 14:21:51', '2021-09-04 14:21:51'),
(558, 98, 'image/product/sub_image/sub_image-72339131.jpeg', '2021-09-04 14:21:51', '2021-09-04 14:21:51'),
(559, 98, 'image/product/sub_image/sub_image-1698707969.jpeg', '2021-09-04 14:21:51', '2021-09-04 14:21:51'),
(560, 99, 'image/product/sub_image/sub_image-960990292.jpeg', '2021-09-04 14:25:57', '2021-09-04 14:25:57'),
(561, 99, 'image/product/sub_image/sub_image-1574948989.jpeg', '2021-09-04 14:25:57', '2021-09-04 14:25:57'),
(562, 99, 'image/product/sub_image/sub_image-620522623.jpeg', '2021-09-04 14:25:57', '2021-09-04 14:25:57'),
(563, 99, 'image/product/sub_image/sub_image-773073060.jpeg', '2021-09-04 14:25:57', '2021-09-04 14:25:57'),
(564, 99, 'image/product/sub_image/sub_image-240054466.jpeg', '2021-09-04 14:25:57', '2021-09-04 14:25:57'),
(565, 99, 'image/product/sub_image/sub_image-133594049.jpeg', '2021-09-04 14:25:57', '2021-09-04 14:25:57'),
(566, 100, 'image/product/sub_image/sub_image-673434282.jpeg', '2021-09-04 14:54:18', '2021-09-04 14:54:18'),
(567, 100, 'image/product/sub_image/sub_image-1550437208.jpeg', '2021-09-04 14:54:18', '2021-09-04 14:54:18'),
(568, 100, 'image/product/sub_image/sub_image-1263771431.jpeg', '2021-09-04 14:54:18', '2021-09-04 14:54:18'),
(569, 100, 'image/product/sub_image/sub_image-1594638813.jpeg', '2021-09-04 14:54:18', '2021-09-04 14:54:18'),
(570, 100, 'image/product/sub_image/sub_image-894927778.jpeg', '2021-09-04 14:54:18', '2021-09-04 14:54:18'),
(571, 100, 'image/product/sub_image/sub_image-165525172.jpeg', '2021-09-04 14:54:18', '2021-09-04 14:54:18'),
(572, 101, 'image/product/sub_image/sub_image-1174902730.jpeg', '2021-09-04 14:59:50', '2021-09-04 14:59:50'),
(573, 101, 'image/product/sub_image/sub_image-685777667.jpeg', '2021-09-04 14:59:50', '2021-09-04 14:59:50'),
(574, 101, 'image/product/sub_image/sub_image-950808703.jpeg', '2021-09-04 14:59:50', '2021-09-04 14:59:50'),
(575, 101, 'image/product/sub_image/sub_image-66289585.jpeg', '2021-09-04 14:59:50', '2021-09-04 14:59:50'),
(576, 101, 'image/product/sub_image/sub_image-1981762939.jpeg', '2021-09-04 14:59:50', '2021-09-04 14:59:50'),
(577, 101, 'image/product/sub_image/sub_image-1255187785.jpeg', '2021-09-04 14:59:50', '2021-09-04 14:59:50'),
(578, 101, 'image/product/sub_image/sub_image-522054214.jpeg', '2021-09-04 14:59:50', '2021-09-04 14:59:50'),
(579, 102, 'image/product/sub_image/sub_image-757746960.jpeg', '2021-09-04 15:32:21', '2021-09-04 15:32:21'),
(580, 102, 'image/product/sub_image/sub_image-827802448.jpeg', '2021-09-04 15:32:21', '2021-09-04 15:32:21'),
(581, 102, 'image/product/sub_image/sub_image-1557982916.jpeg', '2021-09-04 15:32:21', '2021-09-04 15:32:21'),
(582, 102, 'image/product/sub_image/sub_image-1102855131.jpeg', '2021-09-04 15:32:21', '2021-09-04 15:32:21'),
(583, 102, 'image/product/sub_image/sub_image-1265937220.jpeg', '2021-09-04 15:32:21', '2021-09-04 15:32:21'),
(584, 102, 'image/product/sub_image/sub_image-1081532821.jpeg', '2021-09-04 15:32:21', '2021-09-04 15:32:21'),
(585, 102, 'image/product/sub_image/sub_image-70383156.jpeg', '2021-09-04 15:32:21', '2021-09-04 15:32:21'),
(586, 103, 'image/product/sub_image/sub_image-79323940.jpeg', '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(587, 103, 'image/product/sub_image/sub_image-694090398.jpeg', '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(588, 103, 'image/product/sub_image/sub_image-540432751.jpeg', '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(589, 103, 'image/product/sub_image/sub_image-826395188.jpeg', '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(590, 103, 'image/product/sub_image/sub_image-116956869.jpeg', '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(591, 103, 'image/product/sub_image/sub_image-159658118.jpeg', '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(592, 103, 'image/product/sub_image/sub_image-533432206.jpeg', '2021-09-04 15:46:24', '2021-09-04 15:46:24'),
(593, 104, 'image/product/sub_image/sub_image-1313357730.jpeg', '2021-09-07 12:29:11', '2021-09-07 12:29:11'),
(594, 104, 'image/product/sub_image/sub_image-258413506.jpeg', '2021-09-07 12:29:11', '2021-09-07 12:29:11'),
(595, 104, 'image/product/sub_image/sub_image-344162174.jpeg', '2021-09-07 12:29:11', '2021-09-07 12:29:11'),
(596, 104, 'image/product/sub_image/sub_image-1396422461.jpeg', '2021-09-07 12:29:11', '2021-09-07 12:29:11'),
(597, 104, 'image/product/sub_image/sub_image-454631084.jpeg', '2021-09-07 12:29:11', '2021-09-07 12:29:11'),
(598, 104, 'image/product/sub_image/sub_image-102786864.jpeg', '2021-09-07 12:29:11', '2021-09-07 12:29:11'),
(599, 105, 'image/product/sub_image/sub_image-1518390764.jpeg', '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(600, 105, 'image/product/sub_image/sub_image-21586106.jpeg', '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(601, 105, 'image/product/sub_image/sub_image-1621818718.jpeg', '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(602, 105, 'image/product/sub_image/sub_image-957624758.jpeg', '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(603, 105, 'image/product/sub_image/sub_image-1132801990.jpeg', '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(604, 105, 'image/product/sub_image/sub_image-1064602610.jpeg', '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(605, 105, 'image/product/sub_image/sub_image-1388676938.jpeg', '2021-09-07 12:54:35', '2021-09-07 12:54:35'),
(606, 106, 'image/product/sub_image/sub_image-488028035.jpeg', '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(607, 106, 'image/product/sub_image/sub_image-849254894.jpeg', '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(608, 106, 'image/product/sub_image/sub_image-1480986819.jpeg', '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(609, 106, 'image/product/sub_image/sub_image-1805624122.jpeg', '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(610, 106, 'image/product/sub_image/sub_image-282426913.jpeg', '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(611, 106, 'image/product/sub_image/sub_image-1371038872.jpeg', '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(612, 106, 'image/product/sub_image/sub_image-203369322.jpeg', '2021-09-07 12:57:50', '2021-09-07 12:57:50'),
(613, 107, 'image/product/sub_image/sub_image-458350086.jpeg', '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(614, 107, 'image/product/sub_image/sub_image-1190774445.jpeg', '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(615, 107, 'image/product/sub_image/sub_image-1507907772.jpeg', '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(616, 107, 'image/product/sub_image/sub_image-1447702646.jpeg', '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(617, 107, 'image/product/sub_image/sub_image-1667369877.jpeg', '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(618, 107, 'image/product/sub_image/sub_image-312637819.jpeg', '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(619, 107, 'image/product/sub_image/sub_image-63360465.jpeg', '2021-09-07 13:02:28', '2021-09-07 13:02:28'),
(620, 108, 'image/product/sub_image/sub_image-207351831.jpeg', '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(621, 108, 'image/product/sub_image/sub_image-1097112999.jpeg', '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(622, 108, 'image/product/sub_image/sub_image-326153209.jpeg', '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(623, 108, 'image/product/sub_image/sub_image-273175373.jpeg', '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(624, 108, 'image/product/sub_image/sub_image-1747948916.jpeg', '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(625, 108, 'image/product/sub_image/sub_image-1222618400.jpeg', '2021-09-07 13:04:36', '2021-09-07 13:04:36'),
(626, 109, 'image/product/sub_image/sub_image-186855288.jpeg', '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(627, 109, 'image/product/sub_image/sub_image-1046019671.jpeg', '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(628, 109, 'image/product/sub_image/sub_image-518622745.jpeg', '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(629, 109, 'image/product/sub_image/sub_image-869851274.jpeg', '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(630, 109, 'image/product/sub_image/sub_image-509421860.jpeg', '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(631, 109, 'image/product/sub_image/sub_image-1534515282.jpeg', '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(632, 109, 'image/product/sub_image/sub_image-1080032209.jpeg', '2021-09-07 13:06:34', '2021-09-07 13:06:34'),
(633, 110, 'image/product/sub_image/sub_image-694852427.jpeg', '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(634, 110, 'image/product/sub_image/sub_image-809864869.jpeg', '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(635, 110, 'image/product/sub_image/sub_image-1745886302.jpeg', '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(636, 110, 'image/product/sub_image/sub_image-1352646368.jpeg', '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(637, 110, 'image/product/sub_image/sub_image-1110368516.jpeg', '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(638, 110, 'image/product/sub_image/sub_image-789342125.jpeg', '2021-09-07 13:49:36', '2021-09-07 13:49:36'),
(639, 111, 'image/product/sub_image/sub_image-1312759311.jpeg', '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(640, 111, 'image/product/sub_image/sub_image-250071096.jpeg', '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(641, 111, 'image/product/sub_image/sub_image-1307440033.jpeg', '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(642, 111, 'image/product/sub_image/sub_image-1242705991.jpeg', '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(643, 111, 'image/product/sub_image/sub_image-1922982271.jpeg', '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(644, 111, 'image/product/sub_image/sub_image-2051444161.jpeg', '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(645, 111, 'image/product/sub_image/sub_image-528007327.jpeg', '2021-09-07 13:52:39', '2021-09-07 13:52:39'),
(646, 112, 'image/product/sub_image/sub_image-1910172383.jpeg', '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(647, 112, 'image/product/sub_image/sub_image-1245077083.jpeg', '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(648, 112, 'image/product/sub_image/sub_image-1194122412.jpeg', '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(649, 112, 'image/product/sub_image/sub_image-1067127404.jpeg', '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(650, 112, 'image/product/sub_image/sub_image-704127418.jpeg', '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(651, 112, 'image/product/sub_image/sub_image-1917617878.jpeg', '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(652, 112, 'image/product/sub_image/sub_image-812263605.jpeg', '2021-09-07 14:15:56', '2021-09-07 14:15:56'),
(653, 113, 'image/product/sub_image/sub_image-769682382.jpeg', '2021-09-07 14:18:24', '2021-09-07 14:18:24'),
(654, 113, 'image/product/sub_image/sub_image-657762210.jpeg', '2021-09-07 14:18:24', '2021-09-07 14:18:24'),
(655, 113, 'image/product/sub_image/sub_image-1592173339.jpeg', '2021-09-07 14:18:24', '2021-09-07 14:18:24'),
(656, 113, 'image/product/sub_image/sub_image-343175609.jpeg', '2021-09-07 14:18:24', '2021-09-07 14:18:24'),
(657, 113, 'image/product/sub_image/sub_image-103721322.jpeg', '2021-09-07 14:18:24', '2021-09-07 14:18:24'),
(658, 113, 'image/product/sub_image/sub_image-1153441213.jpeg', '2021-09-07 14:18:24', '2021-09-07 14:18:24'),
(659, 113, 'image/product/sub_image/sub_image-721157838.jpeg', '2021-09-07 14:18:24', '2021-09-07 14:18:24'),
(660, 113, 'image/product/sub_image/sub_image-807860407.jpeg', '2021-09-07 14:18:24', '2021-09-07 14:18:24'),
(661, 114, 'image/product/sub_image/sub_image-1889871172.jpeg', '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(662, 114, 'image/product/sub_image/sub_image-2035419869.jpeg', '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(663, 114, 'image/product/sub_image/sub_image-717705551.jpeg', '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(664, 114, 'image/product/sub_image/sub_image-1336168062.jpeg', '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(665, 114, 'image/product/sub_image/sub_image-2046476703.jpeg', '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(666, 114, 'image/product/sub_image/sub_image-1897196494.jpeg', '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(667, 114, 'image/product/sub_image/sub_image-497720707.jpeg', '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(668, 114, 'image/product/sub_image/sub_image-1110620501.jpeg', '2021-09-07 14:21:37', '2021-09-07 14:21:37'),
(669, 115, 'image/product/sub_image/sub_image-646808518.jpeg', '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(670, 115, 'image/product/sub_image/sub_image-661964835.jpeg', '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(671, 115, 'image/product/sub_image/sub_image-1539875114.jpeg', '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(672, 115, 'image/product/sub_image/sub_image-642511537.jpeg', '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(673, 115, 'image/product/sub_image/sub_image-1257379258.jpeg', '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(674, 115, 'image/product/sub_image/sub_image-2084646246.jpeg', '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(675, 115, 'image/product/sub_image/sub_image-525393427.jpeg', '2021-09-07 14:23:59', '2021-09-07 14:23:59'),
(676, 116, 'image/product/sub_image/sub_image-659547657.jpeg', '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(677, 116, 'image/product/sub_image/sub_image-757332226.jpeg', '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(678, 116, 'image/product/sub_image/sub_image-993070458.jpeg', '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(679, 116, 'image/product/sub_image/sub_image-1767360673.jpeg', '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(680, 116, 'image/product/sub_image/sub_image-1098187655.jpeg', '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(681, 116, 'image/product/sub_image/sub_image-2030137532.jpeg', '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(682, 116, 'image/product/sub_image/sub_image-163863355.jpeg', '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(683, 116, 'image/product/sub_image/sub_image-1047037431.jpeg', '2021-09-07 14:51:05', '2021-09-07 14:51:05'),
(684, 117, 'image/product/sub_image/sub_image-84789758.jpeg', '2021-09-07 14:59:21', '2021-09-07 14:59:21'),
(685, 117, 'image/product/sub_image/sub_image-1807766010.jpeg', '2021-09-07 14:59:21', '2021-09-07 14:59:21'),
(686, 117, 'image/product/sub_image/sub_image-1651020349.jpeg', '2021-09-07 14:59:21', '2021-09-07 14:59:21'),
(687, 117, 'image/product/sub_image/sub_image-1311599034.jpeg', '2021-09-07 14:59:21', '2021-09-07 14:59:21'),
(688, 117, 'image/product/sub_image/sub_image-2081651924.jpeg', '2021-09-07 14:59:21', '2021-09-07 14:59:21'),
(689, 117, 'image/product/sub_image/sub_image-1139310567.jpeg', '2021-09-07 14:59:21', '2021-09-07 14:59:21'),
(690, 117, 'image/product/sub_image/sub_image-401226263.jpeg', '2021-09-07 14:59:21', '2021-09-07 14:59:21');
INSERT INTO `product_sub_images` (`id`, `product_id`, `sub_image`, `created_at`, `updated_at`) VALUES
(691, 118, 'image/product/sub_image/sub_image-1781346390.jpeg', '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(692, 118, 'image/product/sub_image/sub_image-1975438837.jpeg', '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(693, 118, 'image/product/sub_image/sub_image-425707508.jpeg', '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(694, 118, 'image/product/sub_image/sub_image-2060042973.jpeg', '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(695, 118, 'image/product/sub_image/sub_image-1027900843.jpeg', '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(696, 118, 'image/product/sub_image/sub_image-748369610.jpeg', '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(697, 118, 'image/product/sub_image/sub_image-277839915.jpeg', '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(698, 118, 'image/product/sub_image/sub_image-1711329151.jpeg', '2021-09-07 15:06:12', '2021-09-07 15:06:12'),
(699, 120, 'image/product/sub_image/sub_image-1857959900.jpeg', '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(700, 120, 'image/product/sub_image/sub_image-2144930982.jpeg', '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(701, 120, 'image/product/sub_image/sub_image-1514748112.jpeg', '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(702, 120, 'image/product/sub_image/sub_image-613740928.jpeg', '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(703, 120, 'image/product/sub_image/sub_image-1034975920.jpeg', '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(704, 120, 'image/product/sub_image/sub_image-1601356017.jpeg', '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(705, 120, 'image/product/sub_image/sub_image-909257704.jpeg', '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(706, 120, 'image/product/sub_image/sub_image-1826224054.jpeg', '2021-09-07 15:15:04', '2021-09-07 15:15:04'),
(707, 121, 'image/product/sub_image/sub_image-954608589.jpeg', '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(708, 121, 'image/product/sub_image/sub_image-1628132869.jpeg', '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(709, 121, 'image/product/sub_image/sub_image-367663461.jpeg', '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(710, 121, 'image/product/sub_image/sub_image-415506729.jpeg', '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(711, 121, 'image/product/sub_image/sub_image-2019259126.jpeg', '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(712, 121, 'image/product/sub_image/sub_image-1505777176.jpeg', '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(713, 121, 'image/product/sub_image/sub_image-1754984977.jpeg', '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(714, 121, 'image/product/sub_image/sub_image-847348133.jpeg', '2021-09-07 15:35:20', '2021-09-07 15:35:20'),
(715, 122, 'image/product/sub_image/sub_image-2145098435.jpeg', '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(716, 122, 'image/product/sub_image/sub_image-1859333418.jpeg', '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(717, 122, 'image/product/sub_image/sub_image-475512133.jpeg', '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(718, 122, 'image/product/sub_image/sub_image-946253014.jpeg', '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(719, 122, 'image/product/sub_image/sub_image-555422453.jpeg', '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(720, 122, 'image/product/sub_image/sub_image-1730342430.jpeg', '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(721, 122, 'image/product/sub_image/sub_image-2102023778.jpeg', '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(722, 122, 'image/product/sub_image/sub_image-2145042580.jpeg', '2021-09-07 15:37:28', '2021-09-07 15:37:28'),
(723, 123, 'image/product/sub_image/sub_image-1435736645.jpeg', '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(724, 123, 'image/product/sub_image/sub_image-550859427.jpeg', '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(725, 123, 'image/product/sub_image/sub_image-821580476.jpeg', '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(726, 123, 'image/product/sub_image/sub_image-67552969.jpeg', '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(727, 123, 'image/product/sub_image/sub_image-1587967529.jpeg', '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(728, 123, 'image/product/sub_image/sub_image-1317761027.jpeg', '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(729, 123, 'image/product/sub_image/sub_image-1063764499.jpeg', '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(730, 123, 'image/product/sub_image/sub_image-1242207264.jpeg', '2021-09-07 15:39:23', '2021-09-07 15:39:23'),
(731, 124, 'image/product/sub_image/sub_image-802497384.jpeg', '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(732, 124, 'image/product/sub_image/sub_image-1977457253.jpeg', '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(733, 124, 'image/product/sub_image/sub_image-2087142320.jpeg', '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(734, 124, 'image/product/sub_image/sub_image-1769090205.jpeg', '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(735, 124, 'image/product/sub_image/sub_image-1419959598.jpeg', '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(736, 124, 'image/product/sub_image/sub_image-1226117249.jpeg', '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(737, 124, 'image/product/sub_image/sub_image-2047640061.jpeg', '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(738, 124, 'image/product/sub_image/sub_image-481663036.jpeg', '2021-09-07 15:47:03', '2021-09-07 15:47:03'),
(739, 125, 'image/product/sub_image/sub_image-1472813953.jpeg', '2021-09-07 15:52:45', '2021-09-07 15:52:45'),
(740, 125, 'image/product/sub_image/sub_image-1204172847.jpeg', '2021-09-07 15:52:45', '2021-09-07 15:52:45'),
(741, 125, 'image/product/sub_image/sub_image-1433737990.jpeg', '2021-09-07 15:52:45', '2021-09-07 15:52:45'),
(742, 125, 'image/product/sub_image/sub_image-32784048.jpeg', '2021-09-07 15:52:45', '2021-09-07 15:52:45'),
(743, 125, 'image/product/sub_image/sub_image-709934109.jpeg', '2021-09-07 15:52:45', '2021-09-07 15:52:45'),
(744, 125, 'image/product/sub_image/sub_image-1231258010.jpeg', '2021-09-07 15:52:45', '2021-09-07 15:52:45'),
(745, 125, 'image/product/sub_image/sub_image-2008939814.jpeg', '2021-09-07 15:52:45', '2021-09-07 15:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `review` int(11) DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `product_id`, `customer_id`, `review`, `comments`, `created_at`, `updated_at`) VALUES
(1, 18, 1, 4, 'good 2', '2021-07-11 11:15:02', '2021-07-11 11:30:41'),
(4, 17, 1, 5, 'ghood', '2021-07-11 11:31:06', '2021-07-11 11:31:18'),
(5, 19, 1, 5, 'good', '2021-07-11 11:34:39', '2021-07-11 11:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `different_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `different_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `different_mobile_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `different_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `customer_id`, `name`, `email`, `mobile_number`, `address`, `different_name`, `different_email`, `different_mobile_number`, `different_address`, `created_at`, `updated_at`) VALUES
(26, 5, 'Jafor', 'su@gmail.com', '0122344504', 'cxfgdf', NULL, NULL, NULL, NULL, '2020-09-08 04:12:00', '2020-09-08 04:12:00'),
(27, 5, 'Jafor', 'su@gmail.com', '0122344504', 'fgchfg', NULL, NULL, NULL, NULL, '2020-09-08 04:12:50', '2020-09-08 04:12:50'),
(28, 5, 'Jafor', 'su@gmail.com', '0122344504', 'qsws', NULL, NULL, NULL, NULL, '2020-09-08 04:22:36', '2020-09-08 04:22:36'),
(29, 6, 'Abir', 'habib97.cs@gmail.com', '01961584280', 'Banani', NULL, NULL, NULL, NULL, '2020-09-15 02:38:11', '2020-09-15 02:38:11'),
(30, 1, 'Foysal', 'foysal12@gmail.com', '01818055683', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2020-09-15 02:48:29', '2020-09-15 02:48:29'),
(31, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '1671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2020-09-15 02:57:06', '2020-09-15 02:57:06'),
(32, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '1671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2020-10-08 02:31:17', '2020-10-08 02:31:17'),
(33, 7, 'Armaan', 'armaan.wub@gmail.com', '01778041629', 'Ctg', NULL, NULL, NULL, NULL, '2020-10-17 05:18:15', '2020-10-17 05:18:15'),
(34, 9, 'hufytfdtry', 'ai2@gmail.com', '980890789', 'dgfdg', NULL, NULL, NULL, NULL, '2021-01-28 03:40:12', '2021-01-28 03:40:12'),
(35, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '1671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-02-22 05:01:23', '2021-02-22 05:01:23'),
(36, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '1671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-02-22 05:01:35', '2021-02-22 05:01:35'),
(37, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '1671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-02-22 05:01:56', '2021-02-22 05:01:56'),
(38, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '1671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-02-22 05:06:42', '2021-02-22 05:06:42'),
(39, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-02-22 08:25:12', '2021-02-22 08:25:12'),
(40, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-02-22 23:02:09', '2021-02-22 23:02:09'),
(41, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-02-22 23:45:19', '2021-02-22 23:45:19'),
(42, 10, 'Shahadot Hossain Chowdhury', 'onu55@yahoo.com', '01878500695', 'Holding No: 3556, Road: Modinabagh, PO: Merajbag-1362, Kadamtali, Dhaka', NULL, NULL, NULL, NULL, '2021-02-23 00:32:51', '2021-02-23 00:32:51'),
(43, 10, 'Shahadot Hossain Chowdhury', 'onu55@yahoo.com', '01878500695', 'Holding: - 157, Road:-02, Block: - A, Bhuighar, (West Para),\r\nP.O:- Kutubpur, P.S:- Fatulla, District', NULL, NULL, NULL, NULL, '2021-02-23 00:45:22', '2021-02-23 00:45:22'),
(44, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-03-23 07:01:08', '2021-03-23 07:01:08'),
(45, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-01 06:55:40', '2021-07-01 06:55:40'),
(46, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:05:28', '2021-07-13 01:05:28'),
(47, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:10:01', '2021-07-13 01:10:01'),
(48, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:12:33', '2021-07-13 01:12:33'),
(49, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:13:08', '2021-07-13 01:13:08'),
(50, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:19:04', '2021-07-13 01:19:04'),
(51, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:21:18', '2021-07-13 01:21:18'),
(52, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:37:21', '2021-07-13 01:37:21'),
(53, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:37:48', '2021-07-13 01:37:48'),
(54, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:38:53', '2021-07-13 01:38:53'),
(55, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:39:58', '2021-07-13 01:39:58'),
(56, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:41:12', '2021-07-13 01:41:12'),
(57, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:42:19', '2021-07-13 01:42:19'),
(58, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:44:03', '2021-07-13 01:44:03'),
(59, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:45:39', '2021-07-13 01:45:39'),
(60, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:47:57', '2021-07-13 01:47:57'),
(61, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:52:36', '2021-07-13 01:52:36'),
(62, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:53:21', '2021-07-13 01:53:21'),
(63, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:54:16', '2021-07-13 01:54:16'),
(64, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:57:37', '2021-07-13 01:57:37'),
(65, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 01:59:40', '2021-07-13 01:59:40'),
(66, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:02:02', '2021-07-13 02:02:02'),
(67, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:03:41', '2021-07-13 02:03:41'),
(68, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:04:22', '2021-07-13 02:04:22'),
(69, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:10:32', '2021-07-13 02:10:32'),
(70, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:11:26', '2021-07-13 02:11:26'),
(71, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:12:25', '2021-07-13 02:12:25'),
(72, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:13:54', '2021-07-13 02:13:54'),
(73, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:16:22', '2021-07-13 02:16:22'),
(74, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:16:29', '2021-07-13 02:16:29'),
(75, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:18:29', '2021-07-13 02:18:29'),
(76, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:20:25', '2021-07-13 02:20:25'),
(77, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:44:51', '2021-07-13 02:44:51'),
(78, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:46:15', '2021-07-13 02:46:15'),
(79, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:46:58', '2021-07-13 02:46:58'),
(80, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 02:51:07', '2021-07-13 02:51:07'),
(81, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 03:14:52', '2021-07-13 03:14:52'),
(82, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 03:15:20', '2021-07-13 03:15:20'),
(83, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 03:16:02', '2021-07-13 03:16:02'),
(84, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 03:16:53', '2021-07-13 03:16:53'),
(85, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 03:19:37', '2021-07-13 03:19:37'),
(86, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 03:22:00', '2021-07-13 03:22:00'),
(87, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 03:23:44', '2021-07-13 03:23:44'),
(88, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 03:27:59', '2021-07-13 03:27:59'),
(89, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 03:29:02', '2021-07-13 03:29:02'),
(90, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 06:23:11', '2021-07-13 06:23:11'),
(91, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 06:26:10', '2021-07-13 06:26:10'),
(92, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 06:28:12', '2021-07-13 06:28:12'),
(93, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 06:30:34', '2021-07-13 06:30:34'),
(94, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 06:57:07', '2021-07-13 06:57:07'),
(95, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 06:57:36', '2021-07-13 06:57:36'),
(96, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 06:58:46', '2021-07-13 06:58:46'),
(97, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 07:08:11', '2021-07-13 07:08:11'),
(98, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 07:26:31', '2021-07-13 07:26:31'),
(99, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 07:29:16', '2021-07-13 07:29:16'),
(100, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 07:29:34', '2021-07-13 07:29:34'),
(101, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 07:30:19', '2021-07-13 07:30:19'),
(102, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 07:33:54', '2021-07-13 07:33:54'),
(103, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 08:06:26', '2021-07-13 08:06:26'),
(104, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 08:06:32', '2021-07-13 08:06:32'),
(105, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 08:29:28', '2021-07-13 08:29:28'),
(106, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 09:22:07', '2021-07-13 09:22:07'),
(107, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 09:52:50', '2021-07-13 09:52:50'),
(108, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 09:53:06', '2021-07-13 09:53:06'),
(109, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 09:55:50', '2021-07-13 09:55:50'),
(110, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 10:18:34', '2021-07-13 10:18:34'),
(111, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 10:19:39', '2021-07-13 10:19:39'),
(112, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-13 22:40:41', '2021-07-13 22:40:41'),
(113, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-15 08:58:20', '2021-07-15 08:58:20'),
(114, 12, 'afridi rokon', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-07-17 16:32:34', '2021-07-17 16:32:34'),
(115, 12, 'afridi rokon', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-07-17 16:32:56', '2021-07-17 16:32:56'),
(116, 12, 'afridi rokon', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-07-17 16:33:11', '2021-07-17 16:33:11'),
(117, 12, 'afridi rokon', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-07-17 16:43:32', '2021-07-17 16:43:32'),
(118, 12, 'afridi rokon', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-07-18 10:19:16', '2021-07-18 10:19:16'),
(119, 12, 'afridi rokon', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-07-18 10:19:38', '2021-07-18 10:19:38'),
(120, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-19 07:08:05', '2021-07-19 07:08:05'),
(121, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-19 10:10:23', '2021-07-19 10:10:23'),
(122, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-07-19 10:12:17', '2021-07-19 10:12:17'),
(123, 13, 'afridi rokon', 'saafridi07@gmail.com', '01760051704', '120,gafur mension, new elephant road , dhaka new market , PS DHAKA 1205, BANGLADESH\r\n120,gafur mension, new elephant road , dhaka new market , PS DHAKA 1205, BANGLADESH', NULL, NULL, NULL, NULL, '2021-08-02 07:01:40', '2021-08-02 07:01:40'),
(124, 14, 'test', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-08-02 07:56:34', '2021-08-02 07:56:34'),
(125, 14, 'test', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-08-02 07:57:29', '2021-08-02 07:57:29'),
(126, 14, 'afridi rokon', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-08-02 09:03:35', '2021-08-02 09:03:35'),
(127, 14, 'afridi rokon', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-08-02 09:04:08', '2021-08-02 09:04:08'),
(128, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-08-05 07:17:52', '2021-08-05 07:17:52'),
(129, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-08-06 00:18:42', '2021-08-06 00:18:42'),
(130, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-08-08 06:10:38', '2021-08-08 06:10:38'),
(131, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-08-08 06:43:06', '2021-08-08 06:43:06'),
(132, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-08-08 07:05:35', '2021-08-08 07:05:35'),
(133, 17, 'afridi rokon', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-08-08 10:16:59', '2021-08-08 10:16:59'),
(134, 17, 'afridi rokon', 'saafridi07@gmail.com', '01760051704', '44/1 becharum dewry dhaka', NULL, NULL, NULL, NULL, '2021-08-08 10:26:00', '2021-08-08 10:26:00'),
(135, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-08-14 03:15:18', '2021-08-14 03:15:18'),
(136, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-08-14 03:28:46', '2021-08-14 03:28:46'),
(137, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-11 23:06:08', '2021-09-11 23:06:08'),
(138, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:10:33', '2021-09-12 00:10:33'),
(139, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:17:09', '2021-09-12 00:17:09'),
(140, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:18:48', '2021-09-12 00:18:48'),
(141, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:19:15', '2021-09-12 00:19:15'),
(142, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:21:18', '2021-09-12 00:21:18'),
(143, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:31:23', '2021-09-12 00:31:23'),
(144, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:34:15', '2021-09-12 00:34:15'),
(145, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:34:48', '2021-09-12 00:34:48'),
(146, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:35:50', '2021-09-12 00:35:50'),
(147, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:36:20', '2021-09-12 00:36:20'),
(148, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:38:34', '2021-09-12 00:38:34'),
(149, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:43:56', '2021-09-12 00:43:56'),
(150, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:46:19', '2021-09-12 00:46:19'),
(151, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:47:32', '2021-09-12 00:47:32'),
(152, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:48:10', '2021-09-12 00:48:10'),
(153, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:48:49', '2021-09-12 00:48:49'),
(154, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 00:49:24', '2021-09-12 00:49:24'),
(155, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-12 01:32:12', '2021-09-12 01:32:12'),
(156, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 22:09:12', '2021-09-14 22:09:12'),
(157, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 22:21:34', '2021-09-14 22:21:34'),
(158, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 22:23:07', '2021-09-14 22:23:07'),
(159, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 22:23:27', '2021-09-14 22:23:27'),
(160, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 22:23:47', '2021-09-14 22:23:47'),
(161, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 22:47:48', '2021-09-14 22:47:48'),
(162, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 22:50:24', '2021-09-14 22:50:24'),
(163, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 22:51:06', '2021-09-14 22:51:06'),
(164, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 23:28:25', '2021-09-14 23:28:25'),
(165, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 23:29:15', '2021-09-14 23:29:15'),
(166, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 23:31:35', '2021-09-14 23:31:35'),
(167, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 23:31:49', '2021-09-14 23:31:49'),
(168, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 23:36:20', '2021-09-14 23:36:20'),
(169, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 23:45:55', '2021-09-14 23:45:55'),
(170, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 23:47:09', '2021-09-14 23:47:09'),
(171, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 23:52:58', '2021-09-14 23:52:58'),
(172, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 23:55:23', '2021-09-14 23:55:23'),
(173, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-14 23:58:15', '2021-09-14 23:58:15'),
(174, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 00:04:33', '2021-09-15 00:04:33'),
(175, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 00:05:40', '2021-09-15 00:05:40'),
(176, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 00:06:41', '2021-09-15 00:06:41'),
(177, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 00:08:44', '2021-09-15 00:08:44'),
(178, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 00:15:44', '2021-09-15 00:15:44'),
(179, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 00:17:18', '2021-09-15 00:17:18'),
(180, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 00:19:07', '2021-09-15 00:19:07'),
(181, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 00:21:54', '2021-09-15 00:21:54'),
(182, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 00:23:07', '2021-09-15 00:23:07'),
(183, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 01:08:59', '2021-09-15 01:08:59'),
(184, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 01:18:08', '2021-09-15 01:18:08'),
(185, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 02:00:06', '2021-09-15 02:00:06'),
(186, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 02:01:17', '2021-09-15 02:01:17'),
(187, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 02:41:49', '2021-09-15 02:41:49'),
(188, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 03:04:34', '2021-09-15 03:04:34'),
(189, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 05:07:22', '2021-09-15 05:07:22'),
(190, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-09-15 08:32:27', '2021-09-15 08:32:27'),
(191, 1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', 'fhfghfgh4', NULL, NULL, NULL, NULL, '2021-11-20 22:17:47', '2021-11-20 22:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rates`
--

CREATE TABLE `shipping_rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_rates`
--

INSERT INTO `shipping_rates` (`id`, `division_id`, `state`, `rate`, `publication_status`, `created_at`, `updated_at`) VALUES
(33, 1, 'Mohammadpur', '65', 1, '2021-08-08 12:28:48', '2021-08-08 12:28:48'),
(35, 1, 'Gulshan', '65', 1, '2021-08-08 12:29:23', '2021-08-08 12:29:23'),
(36, 1, 'Kallyanpur', '65', 1, '2021-08-08 12:29:47', '2021-08-08 12:29:47'),
(37, 1, 'Shyamoli', '65', 1, '2021-08-08 12:30:31', '2021-08-08 12:30:31'),
(38, 1, 'Adabor', '65', 1, '2021-08-08 12:30:44', '2021-08-08 12:30:44'),
(39, 1, 'Darussalam', '65', 1, '2021-08-08 12:32:59', '2021-08-08 12:32:59'),
(40, 1, 'Gabtoli', '65', 1, '2021-08-08 12:33:09', '2021-08-08 12:33:09'),
(41, 1, 'Pallabi', '65', 1, '2021-08-08 12:33:21', '2021-08-08 12:33:21'),
(42, 1, 'Lalmatia', '65', 1, '2021-08-08 12:33:31', '2021-08-08 12:33:31'),
(43, 1, 'Mirpur DOHS', '65', 1, '2021-08-08 12:33:42', '2021-08-08 12:33:42'),
(44, 1, 'Kochukhet', '65', 1, '2021-08-08 12:33:53', '2021-08-08 12:33:53'),
(45, 1, 'Gudaraghat', '65', 1, '2021-08-08 12:34:08', '2021-08-08 12:34:08'),
(46, 1, 'Agargaon', '65', 1, '2021-08-08 12:34:22', '2021-08-08 12:34:22'),
(47, 1, 'Monipur', '65', 1, '2021-08-08 12:34:33', '2021-08-08 12:34:33'),
(48, 1, 'Sher-E-Bangla Nagar', '65', 1, '2021-08-08 12:34:45', '2021-08-08 14:42:26'),
(49, 1, 'Ibrahimpur', '65', 1, '2021-08-08 12:35:00', '2021-08-08 12:35:00'),
(50, 1, 'Cantonment Post Office', '65', 1, '2021-08-08 12:35:14', '2021-08-09 06:58:47'),
(51, 1, 'Mirpur Cantonment', '65', 1, '2021-08-08 12:35:26', '2021-08-08 12:35:26'),
(52, 1, 'Kafrul', '65', 1, '2021-08-08 12:35:35', '2021-08-08 12:35:35'),
(53, 1, 'Vashantek', '65', 1, '2021-08-08 12:35:59', '2021-08-08 12:35:59'),
(54, 1, 'Manikdi', '65', 1, '2021-08-08 12:36:10', '2021-08-08 12:36:10'),
(55, 1, 'Matikata', '65', 1, '2021-08-08 12:36:20', '2021-08-08 12:36:20'),
(56, 1, 'M.E.S', '65', 1, '2021-08-08 12:36:34', '2021-08-08 12:36:34'),
(57, 1, 'Rupnagar Residential Area', '65', 1, '2021-08-08 12:37:42', '2021-08-08 12:37:42'),
(58, 1, 'Duaripara', '65', 1, '2021-08-08 12:37:50', '2021-08-08 12:37:50'),
(59, 1, 'Rainkhola', '65', 1, '2021-08-08 12:38:03', '2021-08-08 12:38:03'),
(60, 1, 'Mirpur Diabari', '65', 1, '2021-08-08 12:38:13', '2021-08-08 12:38:13'),
(61, 1, 'Mazar Road', '65', 1, '2021-08-08 12:38:25', '2021-08-08 12:38:25'),
(62, 1, 'Shagufta', '65', 1, '2021-08-08 12:38:38', '2021-08-08 12:38:38'),
(63, 1, 'Bawnia', '65', 1, '2021-08-08 12:38:51', '2021-08-08 12:38:51'),
(64, 1, 'Baigertek', '65', 1, '2021-08-08 12:39:06', '2021-08-08 12:39:06'),
(65, 1, 'Madina nagar', '65', 1, '2021-08-08 12:39:19', '2021-08-08 12:39:19'),
(66, 1, 'Dewanpara', '65', 1, '2021-08-08 12:39:57', '2021-08-08 12:39:57'),
(67, 1, 'Namapara', '65', 1, '2021-08-08 12:40:04', '2021-08-08 12:40:04'),
(68, 1, 'Mastertek', '65', 1, '2021-08-08 12:40:17', '2021-08-08 12:40:17'),
(69, 1, 'Balughat', '65', 1, '2021-08-08 12:40:26', '2021-08-08 12:40:26'),
(70, 1, 'Barontek', '65', 1, '2021-08-08 12:40:52', '2021-08-08 12:40:52'),
(71, 1, 'Goltek', '65', 1, '2021-08-08 12:41:02', '2021-08-08 12:41:02'),
(72, 1, 'Kurmitola', '65', 1, '2021-08-08 12:41:19', '2021-08-08 12:41:19'),
(73, 1, 'Shewra', '65', 1, '2021-08-08 12:41:44', '2021-08-08 12:41:44'),
(74, 1, 'Rajlokkhi (Uttara)', '65', 1, '2021-08-08 12:42:02', '2021-08-08 12:42:02'),
(75, 1, 'Uttarkhan', '65', 1, '2021-08-08 12:42:23', '2021-08-08 12:42:23'),
(76, 1, 'Dakshinkhan', '65', 1, '2021-08-08 12:42:47', '2021-08-08 12:42:47'),
(77, 1, 'Fayedabad', '65', 1, '2021-08-08 12:42:56', '2021-08-08 12:42:56'),
(78, 1, 'Ashkona', '65', 1, '2021-08-08 12:43:12', '2021-08-08 12:43:12'),
(79, 1, 'Kuril', '65', 1, '2021-08-08 12:43:28', '2021-08-08 12:43:28'),
(80, 1, 'Khilkhet', '65', 1, '2021-08-08 12:43:37', '2021-08-08 12:43:37'),
(81, 1, 'Nikunja', '65', 1, '2021-08-08 12:45:11', '2021-08-08 12:45:11'),
(82, 1, 'Azampur (Uttara)', '65', 1, '2021-08-08 12:45:20', '2021-08-08 12:45:20'),
(83, 1, 'Hajipara', '65', 1, '2021-08-08 12:45:31', '2021-08-08 12:45:31'),
(84, 1, 'Kawla', '65', 1, '2021-08-08 12:45:43', '2021-08-08 12:45:43'),
(85, 1, 'Naddapara', '65', 1, '2021-08-08 12:45:52', '2021-08-08 12:45:52'),
(86, 1, 'Bashundhara R/A', '65', 1, '2021-08-08 12:46:04', '2021-08-08 12:46:04'),
(87, 1, 'Vatara', '65', 1, '2021-08-08 12:46:14', '2021-08-08 12:46:14'),
(88, 1, 'Nadda', '65', 1, '2021-08-08 12:46:29', '2021-08-08 12:46:29'),
(89, 1, 'Baridhara', '65', 1, '2021-08-08 12:46:40', '2021-08-08 12:46:40'),
(90, 1, 'Baridhara DOHS', '65', 1, '2021-08-08 12:46:51', '2021-08-08 12:46:51'),
(91, 1, 'Notun Bazar', '65', 1, '2021-08-08 12:47:05', '2021-08-08 12:47:05'),
(92, 1, 'Adarsha Nagar (Badda)', '65', 1, '2021-08-08 12:47:14', '2021-08-08 12:47:14'),
(93, 1, 'Shahjadpur', '65', 1, '2021-08-08 12:47:40', '2021-08-08 12:47:40'),
(94, 1, 'Uttor Badda', '65', 1, '2021-08-08 12:47:51', '2021-08-08 12:47:51'),
(95, 1, 'Middle Badda', '65', 1, '2021-08-08 12:48:03', '2021-08-08 12:48:03'),
(96, 1, 'South Badda', '65', 1, '2021-08-08 12:48:14', '2021-08-08 12:48:14'),
(97, 1, 'Merul Badda', '65', 1, '2021-08-08 12:48:26', '2021-08-08 12:48:26'),
(98, 1, 'Niketon', '65', 1, '2021-08-08 12:48:33', '2021-08-08 12:48:33'),
(99, 1, 'Banani', '65', 1, '2021-08-08 12:48:47', '2021-08-08 12:48:47'),
(100, 1, 'Banani DOHS', '65', 1, '2021-08-08 12:48:58', '2021-08-08 12:48:58'),
(101, 1, 'Mohakhali', '65', 1, '2021-08-08 12:49:07', '2021-08-09 07:01:10'),
(102, 1, 'Mohakhali DOHS', '65', 1, '2021-08-08 12:49:22', '2021-08-08 12:49:22'),
(103, 1, 'South Monipur', '65', 1, '2021-08-08 12:49:33', '2021-08-08 12:49:33'),
(104, 1, 'Shah Ali Bag', '65', 1, '2021-08-08 12:49:43', '2021-08-08 12:49:43'),
(105, 1, 'Aziz Palli', '65', 1, '2021-08-08 12:49:56', '2021-08-08 12:49:56'),
(106, 1, 'Bashtola', '65', 1, '2021-08-08 12:50:06', '2021-08-08 12:50:06'),
(107, 1, 'South Baridhara DIT Project', '65', 1, '2021-08-08 12:50:15', '2021-08-08 12:50:15'),
(108, 1, 'Aftabnagar', '65', 1, '2021-08-08 12:50:26', '2021-08-08 12:50:26'),
(109, 1, 'Bijoy Shoroni', '65', 1, '2021-08-08 12:50:37', '2021-08-08 12:50:37'),
(110, 1, 'Farmgate', '65', 1, '2021-08-08 12:50:55', '2021-08-08 12:50:55'),
(111, 1, 'Indira Road', '65', 1, '2021-08-08 12:51:04', '2021-08-08 12:51:04'),
(112, 1, 'Tejgaon', '65', 1, '2021-08-08 12:51:14', '2021-08-08 12:51:14'),
(113, 1, 'Tejkunipara', '65', 1, '2021-08-08 12:51:35', '2021-08-08 12:51:35'),
(114, 1, 'Razabazar', '65', 1, '2021-08-08 12:51:46', '2021-08-08 12:51:46'),
(115, 1, 'Sukrabad', '65', 1, '2021-08-08 12:51:56', '2021-08-08 12:51:56'),
(116, 1, 'Panthopath', '65', 1, '2021-08-08 12:52:06', '2021-08-08 12:52:06'),
(117, 1, 'Kalabagan', '65', 1, '2021-08-08 12:52:16', '2021-08-08 12:52:16'),
(118, 1, 'Green Road', '65', 1, '2021-08-08 12:52:28', '2021-08-08 12:52:28'),
(119, 1, 'Manik Mia Avenue', '65', 1, '2021-08-08 12:52:42', '2021-08-08 12:52:42'),
(120, 1, 'Asad Avenue', '65', 1, '2021-08-08 12:53:00', '2021-08-08 12:53:00'),
(121, 1, 'West Dhanmondi', '65', 1, '2021-08-08 12:53:12', '2021-08-08 12:53:12'),
(122, 1, 'Shankar', '65', 1, '2021-08-08 12:53:22', '2021-08-08 12:53:22'),
(123, 1, 'Rayer Bazar', '65', 1, '2021-08-08 12:53:36', '2021-08-08 12:53:36'),
(124, 1, 'Tallabag', '65', 1, '2021-08-08 12:53:49', '2021-08-08 12:53:49'),
(125, 1, 'Hazaribag', '65', 1, '2021-08-08 12:53:58', '2021-08-08 12:53:58'),
(126, 1, 'Pilkhana', '65', 1, '2021-08-08 12:54:11', '2021-08-08 12:54:11'),
(127, 1, 'Nawabgonj Puran Dhaka', '65', 1, '2021-08-08 12:54:25', '2021-08-08 12:54:25'),
(128, 1, 'New Market', '65', 1, '2021-08-08 12:54:37', '2021-08-08 12:54:37'),
(129, 1, 'Azimpur', '65', 1, '2021-08-08 12:54:50', '2021-08-08 12:54:50'),
(130, 1, 'Nilkhet', '65', 1, '2021-08-08 12:55:05', '2021-08-08 12:55:05'),
(131, 1, 'Lalbagh', '65', 1, '2021-08-08 12:55:15', '2021-08-08 12:55:15'),
(132, 1, 'Chawkbazar (Dhaka)', '65', 1, '2021-08-08 12:55:27', '2021-08-08 12:55:27'),
(133, 1, 'Naya Bazar', '65', 1, '2021-08-08 13:27:41', '2021-08-08 13:27:41'),
(134, 1, 'Tatibazar', '65', 1, '2021-08-08 13:27:51', '2021-08-08 13:27:51'),
(135, 1, 'Luxmi Bazar', '65', 1, '2021-08-08 13:30:06', '2021-08-08 13:30:06'),
(136, 1, 'Puran Dhaka', '65', 1, '2021-08-08 13:30:54', '2021-08-08 13:30:54'),
(137, 1, 'Siddique Bazar', '65', 1, '2021-08-08 13:31:08', '2021-08-08 13:31:08'),
(138, 1, 'Tikatuly', '65', 1, '2021-08-08 13:31:19', '2021-08-08 13:31:19'),
(139, 1, 'Motijheel', '65', 1, '2021-08-08 13:31:28', '2021-08-08 13:31:28'),
(140, 1, 'Nawabpur', '65', 1, '2021-08-08 13:31:40', '2021-08-08 13:31:40'),
(141, 1, 'Kaptan Bazar', '65', 1, '2021-08-08 13:31:52', '2021-08-08 13:31:52'),
(142, 1, 'Gulistan', '65', 1, '2021-08-08 13:32:06', '2021-08-08 13:32:06'),
(143, 1, 'Bongo Bazar', '65', 1, '2021-08-08 13:32:16', '2021-08-08 13:32:16'),
(144, 1, 'Chankarpul', '65', 1, '2021-08-08 13:32:30', '2021-08-08 13:32:30'),
(145, 1, 'Palashi', '65', 1, '2021-08-08 13:32:42', '2021-08-08 13:32:42'),
(146, 1, 'Dhakeshwari', '65', 1, '2021-08-08 13:32:51', '2021-08-08 13:32:51'),
(147, 1, 'Kamalapur', '65', 1, '2021-08-08 13:33:00', '2021-08-08 13:33:00'),
(148, 1, 'Wari', '65', 1, '2021-08-08 13:33:10', '2021-08-08 13:33:10'),
(149, 1, 'Narinda', '65', 1, '2021-08-08 13:33:20', '2021-08-08 13:33:20'),
(150, 1, 'Dainik Bangla Mor', '65', 1, '2021-08-08 13:33:39', '2021-08-08 13:33:39'),
(151, 1, 'Fakirapul', '65', 1, '2021-08-08 13:33:52', '2021-08-08 13:33:52'),
(152, 1, 'Kakrail', '65', 1, '2021-08-08 13:34:00', '2021-08-08 13:34:00'),
(153, 1, 'Naya Paltan', '65', 1, '2021-08-08 13:34:21', '2021-08-08 13:34:21'),
(154, 1, 'Bijoynagar', '65', 1, '2021-08-08 13:34:32', '2021-08-08 13:34:32'),
(155, 1, 'Press Club', '65', 1, '2021-08-08 13:34:42', '2021-08-08 13:34:42'),
(156, 1, 'High Court', '65', 1, '2021-08-08 13:34:55', '2021-08-08 13:34:55'),
(157, 1, 'Dhaka University', '65', 1, '2021-08-08 13:35:08', '2021-08-08 13:35:08'),
(158, 1, 'Dhaka Medical', '65', 1, '2021-08-08 13:35:21', '2021-08-08 13:35:21'),
(159, 1, 'Bongo Bondhu Avenue', '65', 1, '2021-08-08 13:35:33', '2021-08-08 13:35:33'),
(160, 1, 'Kazi Nazrul Islam Avenue', '65', 1, '2021-08-08 13:35:46', '2021-08-08 13:35:46'),
(161, 1, 'Kawran Bazar', '65', 1, '2021-08-08 13:35:58', '2021-08-08 13:35:58'),
(162, 1, 'Ramna', '65', 1, '2021-08-08 13:36:09', '2021-08-08 13:36:09'),
(163, 1, 'Shantinagar', '65', 1, '2021-08-08 13:36:20', '2021-08-08 13:36:20'),
(164, 1, 'Shantibag', '65', 1, '2021-08-08 13:36:32', '2021-08-08 13:36:32'),
(165, 1, 'Baily Road', '65', 1, '2021-08-08 13:36:42', '2021-08-08 13:36:42'),
(166, 1, 'Minto Road', '65', 1, '2021-08-08 13:37:08', '2021-08-08 13:37:08'),
(167, 1, 'Old Elephant Road', '65', 1, '2021-08-08 13:37:19', '2021-08-08 13:37:19'),
(168, 1, 'Eskaton Garden Road', '65', 1, '2021-08-08 13:37:30', '2021-08-08 13:37:30'),
(169, 1, 'Eskaton', '65', 1, '2021-08-08 13:37:41', '2021-08-08 13:37:41'),
(170, 1, 'Moghbazar', '65', 1, '2021-08-08 13:37:52', '2021-08-08 13:37:52'),
(171, 1, 'Mouchak', '65', 1, '2021-08-08 13:38:03', '2021-08-08 13:38:03'),
(172, 1, 'Malibag', '65', 1, '2021-08-08 13:38:11', '2021-08-08 13:38:11'),
(173, 1, 'Rampura', '65', 1, '2021-08-08 13:38:32', '2021-08-08 13:38:32'),
(174, 1, 'Shahbag', '65', 1, '2021-08-08 13:38:40', '2021-08-08 13:38:40'),
(175, 1, 'Katabon', '65', 1, '2021-08-08 13:38:51', '2021-08-08 13:38:51'),
(176, 1, 'Hatirpool', '65', 1, '2021-08-08 13:39:00', '2021-08-08 13:39:00'),
(177, 1, 'Bashabo', '65', 1, '2021-08-08 13:39:12', '2021-08-08 13:39:12'),
(178, 1, 'Khilgaon', '65', 1, '2021-08-08 13:39:23', '2021-08-08 13:39:23'),
(179, 1, 'Middle Bashabo', '65', 1, '2021-08-08 13:39:37', '2021-08-08 13:39:37'),
(180, 1, 'Goran', '65', 1, '2021-08-08 13:39:47', '2021-08-08 13:39:47'),
(181, 1, 'Madartek', '65', 1, '2021-08-08 13:40:00', '2021-08-08 13:40:00'),
(182, 1, 'Manik Nagar', '65', 1, '2021-08-08 13:40:11', '2021-08-08 13:40:11'),
(183, 1, 'Shahjahanpur', '65', 1, '2021-08-08 13:40:20', '2021-08-08 13:40:20'),
(184, 1, 'Banasree (Rampura)', '65', 1, '2021-08-08 13:40:30', '2021-08-08 13:40:30'),
(185, 1, 'Meradia', '65', 1, '2021-08-08 13:40:41', '2021-08-08 13:40:41'),
(186, 1, 'Khilbari Tek (Badda)', '65', 1, '2021-08-08 13:41:02', '2021-08-08 13:41:02'),
(187, 1, 'Mughdapara', '65', 1, '2021-08-08 13:41:34', '2021-08-08 13:41:34'),
(188, 1, 'Golapbag (Dhaka)', '65', 1, '2021-08-08 13:41:50', '2021-08-08 13:41:50'),
(189, 1, 'Jatrabari', '65', 1, '2021-08-08 13:42:03', '2021-08-08 13:42:03'),
(190, 1, 'Hatirjheel', '65', 1, '2021-08-08 13:42:11', '2021-08-08 13:42:11'),
(191, 1, 'Banglamotor', '65', 1, '2021-08-08 13:42:23', '2021-08-08 13:42:23'),
(192, 1, 'Paribag', '65', 1, '2021-08-08 13:42:41', '2021-08-08 13:42:41'),
(193, 1, 'Bakshibazar', '65', 1, '2021-08-08 13:42:54', '2021-08-08 13:42:54'),
(194, 1, 'Elephant Road', '65', 1, '2021-08-08 13:43:03', '2021-08-08 13:43:03'),
(195, 1, 'Kathalbagan', '65', 1, '2021-08-08 13:43:15', '2021-08-08 13:43:15'),
(196, 1, 'Malibagh Taltola', '65', 1, '2021-08-08 13:43:29', '2021-08-08 13:43:29'),
(197, 1, 'Central Road', '65', 1, '2021-08-08 13:43:37', '2021-08-08 13:43:37'),
(198, 1, 'Sabujbag', '65', 1, '2021-08-08 13:43:48', '2021-08-08 13:43:48'),
(199, 1, 'Shiddheswari', '65', 1, '2021-08-08 13:43:59', '2021-08-08 13:43:59'),
(200, 1, 'Dolaikhal', '65', 1, '2021-08-08 13:44:10', '2021-08-08 13:44:10'),
(201, 1, 'Shegunbagicha', '65', 1, '2021-08-08 13:44:21', '2021-08-08 13:44:21'),
(202, 1, 'Rajarbag', '65', 1, '2021-08-08 13:44:33', '2021-08-08 13:44:33'),
(203, 1, 'Babubazar', '65', 1, '2021-08-08 13:44:43', '2021-08-08 13:44:43'),
(204, 1, 'Islampur(Dhaka)', '65', 1, '2021-08-08 13:44:53', '2021-08-08 13:44:53'),
(205, 1, 'Imamgonj', '65', 1, '2021-08-08 13:45:06', '2021-08-08 13:45:06'),
(206, 1, 'Nayabazar', '65', 1, '2021-08-08 13:45:22', '2021-08-08 13:45:22'),
(207, 1, 'Zigatola', '65', 1, '2021-08-08 13:45:31', '2021-08-08 13:45:31'),
(208, 1, 'Kazipara', '65', 1, '2021-08-08 13:45:41', '2021-08-08 13:45:41'),
(209, 1, 'Shewrapara', '65', 1, '2021-08-08 13:45:51', '2021-08-08 13:45:51'),
(210, 1, 'Kalshi', '65', 1, '2021-08-08 13:46:01', '2021-08-08 13:46:01'),
(211, 1, 'Sutrapur', '65', 1, '2021-08-08 13:46:28', '2021-08-08 13:46:28'),
(212, 1, 'Purana Paltan', '65', 1, '2021-08-08 13:47:59', '2021-08-08 13:47:59'),
(213, 1, 'Shyampur', '65', 1, '2021-08-08 13:48:16', '2021-08-08 13:48:16'),
(214, 1, 'Dholaipar', '65', 1, '2021-08-08 13:48:31', '2021-08-08 13:48:31'),
(215, 1, 'Monipuripara', '65', 1, '2021-08-08 13:48:40', '2021-08-08 13:48:40'),
(216, 1, 'Bosila', '65', 1, '2021-08-08 13:48:49', '2021-08-08 13:48:49'),
(217, 1, 'Shonir Akhra', '65', 1, '2021-08-08 13:48:59', '2021-08-08 13:48:59'),
(218, 1, 'Mirpur 2', '65', 1, '2021-08-08 13:49:09', '2021-08-08 13:49:09'),
(219, 1, 'Bongshal', '65', 1, '2021-08-08 13:49:19', '2021-08-08 13:49:19'),
(220, 1, 'Siddweswari', '65', 1, '2021-08-08 13:49:33', '2021-08-08 13:49:33'),
(221, 1, 'Nakhalpara', '65', 1, '2021-08-08 13:49:43', '2021-08-08 13:49:43'),
(222, 1, 'Dokshingaon', '65', 1, '2021-08-08 13:49:57', '2021-08-08 13:49:57'),
(223, 1, 'Joar Shahara', '65', 1, '2021-08-08 13:50:10', '2021-08-08 13:50:10'),
(224, 1, 'Science Lab', '65', 1, '2021-08-08 13:50:20', '2021-08-08 13:50:20'),
(225, 1, 'Sobhanbag', '65', 1, '2021-08-08 13:50:30', '2021-08-08 13:50:30'),
(226, 1, 'ECB Chattar', '65', 1, '2021-08-08 13:50:41', '2021-08-08 13:50:41'),
(227, 1, 'Arambag', '65', 1, '2021-08-08 13:50:52', '2021-08-08 13:50:52'),
(228, 1, 'Armanitola', '65', 1, '2021-08-08 13:51:03', '2021-08-08 13:51:03'),
(229, 1, 'Islambag', '65', 1, '2021-08-08 13:51:14', '2021-08-08 13:51:14'),
(230, 1, 'Kamarpara', '65', 1, '2021-08-08 13:51:23', '2021-08-08 13:51:23'),
(231, 1, 'Mitford', '65', 1, '2021-08-08 13:51:33', '2021-08-08 13:51:33'),
(232, 1, 'Shakhari Bazar', '65', 1, '2021-08-08 13:52:03', '2021-08-08 13:52:03'),
(233, 1, 'Katherpol', '65', 1, '2021-08-08 13:52:23', '2021-08-08 13:52:23'),
(234, 1, 'Bangla Bazar', '65', 1, '2021-08-08 13:52:33', '2021-08-08 13:52:33'),
(235, 1, 'Patuatuly', '65', 1, '2021-08-08 13:52:44', '2021-08-08 13:52:44'),
(236, 1, 'Nandipara', '65', 1, '2021-08-08 13:52:56', '2021-08-08 13:52:56'),
(237, 1, 'Nazira Bazar', '65', 1, '2021-08-08 13:53:07', '2021-08-08 13:53:07'),
(238, 1, 'Gopibag', '65', 1, '2021-08-08 13:53:19', '2021-08-08 13:53:19'),
(239, 1, 'Shwamibag', '65', 1, '2021-08-08 13:53:29', '2021-08-08 13:53:29'),
(240, 1, 'Sayedabad', '65', 1, '2021-08-08 13:53:39', '2021-08-08 13:53:39'),
(241, 1, 'Sadarghat (Dhaka)', '65', 1, '2021-08-08 13:53:49', '2021-08-08 13:53:49'),
(242, 1, 'Kaltabazar', '65', 1, '2021-08-08 13:53:57', '2021-08-08 13:53:57'),
(243, 1, 'Jurain', '65', 1, '2021-08-08 13:54:08', '2021-08-08 13:54:08'),
(244, 1, 'Gandaria', '65', 1, '2021-08-08 13:54:19', '2021-08-08 13:54:19'),
(245, 1, 'RayerBag', '65', 1, '2021-08-08 13:54:29', '2021-08-08 13:54:29'),
(246, 1, 'Faridabad (Jatrabari)', '65', 1, '2021-08-08 13:54:40', '2021-08-08 13:54:40'),
(247, 1, 'Matuail', '65', 1, '2021-08-08 13:54:51', '2021-08-08 13:54:51'),
(248, 1, 'Donia', '65', 1, '2021-08-08 13:55:03', '2021-08-08 13:55:03'),
(249, 1, 'Postogola', '65', 1, '2021-08-08 13:55:14', '2021-08-08 13:55:14'),
(250, 1, 'Konapara', '65', 1, '2021-08-08 13:55:22', '2021-08-08 13:55:22'),
(251, 1, 'Dhaka Uddyan', '65', 1, '2021-08-08 13:55:33', '2021-08-08 13:55:33'),
(252, 1, 'Shekhertek', '65', 1, '2021-08-08 13:56:12', '2021-08-08 13:56:12'),
(253, 1, 'CWH', '65', 1, '2021-08-08 13:56:22', '2021-08-08 13:56:22'),
(254, 1, 'Mirpur Taltola', '65', 1, '2021-08-08 13:56:33', '2021-08-08 13:56:33'),
(255, 1, 'Manda(Dhaka)', '65', 1, '2021-08-08 13:56:44', '2021-08-08 13:56:44'),
(256, 1, 'Shahjahanpur (Dhaka)', '65', 1, '2021-08-08 13:56:53', '2021-08-08 13:56:53'),
(257, 1, 'Haterrjheel', '65', 1, '2021-08-08 13:57:09', '2021-08-08 13:57:09'),
(258, 1, 'Dhaka uddan', '65', 1, '2021-08-08 13:57:19', '2021-08-08 13:57:19'),
(259, 1, 'Nobodoy', '65', 1, '2021-08-08 13:57:31', '2021-08-08 13:57:31'),
(260, 1, 'Chad Uddan', '65', 1, '2021-08-08 13:57:42', '2021-08-08 13:57:42'),
(261, 1, 'Mohammadia Housing', '65', 1, '2021-08-08 13:57:53', '2021-08-08 13:57:53'),
(262, 1, 'Ring Road', '65', 1, '2021-08-08 13:58:32', '2021-08-08 13:58:32'),
(263, 1, 'Mohammadia Housing', '65', 1, '2021-08-08 13:58:40', '2021-08-08 13:58:40'),
(264, 1, 'Ring Road', '65', 1, '2021-08-08 13:58:57', '2021-08-08 13:58:57'),
(265, 1, 'Tajmahal Road', '65', 1, '2021-08-08 13:59:07', '2021-08-08 13:59:07'),
(266, 1, 'Nurjahan Road', '65', 1, '2021-08-08 13:59:18', '2021-08-08 13:59:18'),
(267, 1, 'Rajia Sultana Road', '65', 1, '2021-08-08 13:59:31', '2021-08-08 13:59:31'),
(268, 1, 'Uttara Sector-4', '65', 1, '2021-08-08 13:59:42', '2021-08-08 13:59:42'),
(269, 1, 'Goaltek', '65', 1, '2021-08-08 13:59:54', '2021-08-08 13:59:54'),
(270, 1, 'Chalabon', '65', 1, '2021-08-08 14:00:02', '2021-08-08 14:00:02'),
(271, 1, 'Mollapara', '65', 1, '2021-08-08 14:00:15', '2021-08-08 14:00:15'),
(272, 1, 'Azampur (East) (Uttara)', '65', 1, '2021-08-08 14:00:27', '2021-08-08 14:00:27'),
(273, 1, 'Uttara Sector 5', '65', 1, '2021-08-08 14:00:39', '2021-08-08 14:00:39'),
(274, 1, 'Uttara Sector 14', '65', 1, '2021-08-08 14:00:58', '2021-08-08 14:00:58'),
(275, 1, 'Uttara Sector 3', '65', 1, '2021-08-08 14:01:10', '2021-08-08 14:01:10'),
(276, 1, 'Uttara Sector 7', '65', 1, '2021-08-08 14:01:21', '2021-08-08 14:01:21'),
(277, 1, 'Uttara Sector 9', '65', 1, '2021-08-08 14:01:30', '2021-08-08 14:01:30'),
(278, 1, 'Uttara Sector 11', '65', 1, '2021-08-08 14:01:44', '2021-08-08 14:01:44'),
(279, 1, 'Nalbhog', '65', 1, '2021-08-08 14:01:54', '2021-08-08 14:01:54'),
(280, 1, 'Nalbhog', '65', 1, '2021-08-08 14:04:22', '2021-08-08 14:04:22'),
(281, 1, 'Azampur (West) (Uttara)', '65', 1, '2021-08-08 14:04:37', '2021-08-08 14:04:37'),
(282, 1, 'Phulbaria', '65', 1, '2021-08-08 14:04:49', '2021-08-08 14:04:49'),
(283, 1, 'Dhour', '65', 1, '2021-08-08 14:05:04', '2021-08-08 14:05:04'),
(284, 1, 'Bhatuliya', '65', 1, '2021-08-08 14:05:19', '2021-08-08 14:05:19'),
(285, 1, 'Bamnartek', '65', 1, '2021-08-08 14:05:30', '2021-08-08 14:05:30'),
(286, 1, 'Turag', '65', 1, '2021-08-08 14:05:40', '2021-08-08 14:05:40'),
(287, 1, 'Kallanpur', '65', 1, '2021-08-08 14:05:51', '2021-08-08 14:05:51'),
(288, 1, 'Lalkuthi', '65', 1, '2021-08-08 14:06:02', '2021-08-08 14:06:02'),
(289, 1, 'Mirpur 1', '65', 1, '2021-08-08 14:06:14', '2021-08-08 14:06:14'),
(290, 1, 'Tolarbag', '65', 1, '2021-08-08 14:06:24', '2021-08-08 14:06:24'),
(291, 1, 'Ahmed Nagar', '65', 1, '2021-08-08 14:06:37', '2021-08-08 14:06:37'),
(292, 1, 'Paikpara', '65', 1, '2021-08-08 14:06:47', '2021-08-08 14:06:47'),
(293, 1, 'Pirerbag', '65', 1, '2021-08-08 14:06:59', '2021-08-08 14:06:59'),
(294, 1, 'Taltola', '65', 1, '2021-08-08 14:07:11', '2021-08-08 14:07:11'),
(295, 1, 'MES Colony', '65', 1, '2021-08-08 14:07:29', '2021-08-08 14:07:29'),
(296, 1, 'Zia Colony', '65', 1, '2021-08-08 14:07:39', '2021-08-08 14:07:39'),
(297, 1, 'Ajiz Market', '65', 1, '2021-08-08 14:07:53', '2021-08-08 14:07:53'),
(298, 1, 'Aga Nagar', '65', 1, '2021-08-08 14:08:04', '2021-08-08 14:08:04'),
(299, 1, 'Kunipara', '65', 1, '2021-08-08 14:08:14', '2021-08-08 14:08:14'),
(300, 1, 'Babli Masjid', '65', 1, '2021-08-08 14:08:25', '2021-08-08 14:08:25'),
(301, 1, 'Kaderabad Housing', '65', 1, '2021-08-08 14:08:37', '2021-08-08 14:08:37'),
(302, 1, 'Kunia', '65', 1, '2021-08-08 14:08:48', '2021-08-08 14:08:48'),
(303, 1, 'Gacha', '65', 1, '2021-08-08 14:08:59', '2021-08-08 14:08:59'),
(304, 1, 'Boro Bari', '65', 1, '2021-08-08 14:09:09', '2021-08-08 14:09:09'),
(305, 1, 'Board Bazar', '65', 1, '2021-08-08 14:09:22', '2021-08-08 14:09:22'),
(306, 1, 'Kamarjuri', '65', 1, '2021-08-08 14:09:36', '2021-08-08 14:09:36'),
(307, 1, 'Dattapara', '65', 1, '2021-08-08 14:09:47', '2021-08-08 14:09:47'),
(308, 1, 'Ershadnagar', '65', 1, '2021-08-08 14:09:59', '2021-08-08 14:09:59'),
(309, 1, 'Sataish', '65', 1, '2021-08-08 14:10:11', '2021-08-08 14:10:11'),
(310, 1, 'Apollo', '65', 1, '2021-08-08 14:10:23', '2021-08-08 14:10:23'),
(311, 1, 'Nurer Chala', '65', 1, '2021-08-08 14:10:32', '2021-08-08 14:10:32'),
(312, 1, 'Bawaila Para', '65', 1, '2021-08-08 14:10:43', '2021-08-08 14:10:43'),
(313, 1, 'Satarkul', '65', 1, '2021-08-08 14:10:56', '2021-08-08 14:10:56'),
(314, 1, 'Khilbar Tek', '65', 1, '2021-08-08 14:11:05', '2021-08-08 14:11:05'),
(315, 1, 'Buddho Mondir', '65', 1, '2021-08-08 14:11:22', '2021-08-08 14:11:22'),
(316, 1, 'Sipahibag', '65', 1, '2021-08-08 14:11:32', '2021-08-08 14:11:32'),
(317, 1, 'TT Para', '65', 1, '2021-08-08 14:11:44', '2021-08-08 14:11:44'),
(318, 1, 'Eastern Housing (Adabor)', '65', 1, '2021-08-08 14:11:53', '2021-08-08 14:11:53'),
(319, 1, 'Teskunipara', '65', 1, '2021-08-08 14:12:03', '2021-08-08 14:12:03'),
(320, 1, 'DHAKA TENARI MORE', '65', 1, '2021-08-08 14:12:13', '2021-08-08 14:12:13'),
(321, 1, 'Shahidnagar', '65', 1, '2021-08-08 14:12:26', '2021-08-08 14:12:26'),
(322, 1, 'Jhigatola', '65', 1, '2021-08-08 14:12:38', '2021-08-08 14:12:38'),
(323, 1, 'Polashi', '65', 1, '2021-08-08 14:12:48', '2021-08-08 14:12:48'),
(324, 1, 'Satmoshjid Road', '65', 1, '2021-08-08 14:12:56', '2021-08-08 14:12:56'),
(325, 1, 'Shukrabad', '65', 1, '2021-08-08 14:13:06', '2021-08-08 14:13:06'),
(326, 1, 'BNP Bazar', '65', 1, '2021-08-08 14:13:24', '2021-08-08 14:13:24'),
(327, 1, 'Kalachandpur', '65', 1, '2021-08-08 14:13:34', '2021-08-08 14:13:34'),
(328, 1, 'Jogonnathpur', '65', 1, '2021-08-08 14:13:45', '2021-08-08 14:13:45'),
(329, 1, 'Kuratuli', '65', 1, '2021-08-08 14:13:53', '2021-08-08 14:13:53'),
(330, 1, 'Alatunnessa School Road', '65', 1, '2021-08-08 14:14:05', '2021-08-08 14:14:05'),
(331, 1, 'Purbo Rampura', '65', 1, '2021-08-08 14:14:16', '2021-08-08 14:14:16'),
(332, 1, 'Bou Bazar', '65', 1, '2021-08-08 14:14:27', '2021-08-08 14:14:27'),
(333, 1, 'Chairman Goli', '65', 1, '2021-08-08 14:14:37', '2021-08-08 14:14:37'),
(334, 1, 'Confidence Tower, Jhilpar', '65', 1, '2021-08-08 14:14:49', '2021-08-08 14:14:49'),
(335, 1, 'Fuji Trade Center', '65', 1, '2021-08-08 14:17:47', '2021-08-08 14:17:47'),
(336, 1, 'Khil Barirtek', '100', 1, '2021-08-08 14:18:11', '2021-08-08 14:18:11'),
(337, 1, 'Korail', '65', 1, '2021-08-08 14:18:21', '2021-08-08 14:18:21'),
(338, 1, 'Mahanogor', '65', 1, '2021-08-08 14:18:32', '2021-08-08 14:18:32'),
(339, 1, 'Nimtola', '65', 1, '2021-08-08 14:18:44', '2021-08-08 14:18:44'),
(340, 1, 'Nurerchala', '65', 1, '2021-08-08 14:18:54', '2021-08-08 14:18:54'),
(341, 1, 'Pastola Bazar', '65', 1, '2021-08-08 14:19:11', '2021-08-08 14:19:11'),
(342, 1, 'Poschim Badda', '65', 1, '2021-08-08 14:19:21', '2021-08-08 14:19:21'),
(343, 1, 'Purbo Badda', '65', 1, '2021-08-08 14:19:29', '2021-08-08 14:19:29'),
(344, 1, 'Sat-tola Bazar', '65', 1, '2021-08-08 14:19:44', '2021-08-08 14:19:44'),
(345, 1, 'Shaheenbagh', '65', 1, '2021-08-08 14:19:53', '2021-08-08 14:19:53'),
(346, 1, 'Subastu', '65', 1, '2021-08-08 14:20:02', '2021-08-08 14:20:02'),
(347, 1, 'ICDDRB', '65', 1, '2021-08-08 14:20:13', '2021-08-08 14:20:13'),
(348, 1, 'Satrasta', '65', 1, '2021-08-08 14:20:22', '2021-08-08 14:20:22'),
(349, 1, 'Tekpara Adorsonagor', '65', 1, '2021-08-08 14:20:33', '2021-08-08 14:20:33'),
(350, 1, 'Uttar Badda', '65', 1, '2021-08-08 14:20:46', '2021-08-08 14:20:46'),
(351, 1, 'Wireless', '65', 1, '2021-08-08 14:20:57', '2021-08-08 14:20:57'),
(352, 1, 'Solmaid', '65', 1, '2021-08-08 14:21:03', '2021-08-08 14:21:03'),
(353, 1, '300 Feet', '65', 1, '2021-08-08 14:21:12', '2021-08-08 14:21:12'),
(354, 1, 'Mirhazirbagh', '65', 1, '2021-08-08 14:21:21', '2021-08-08 14:21:21'),
(355, 1, 'Mahut Tuli', '65', 1, '2021-08-08 14:21:35', '2021-08-08 14:21:35'),
(356, 1, 'Alubazar', '65', 1, '2021-08-08 14:21:44', '2021-08-08 14:21:44'),
(357, 1, 'Badam Toli', '65', 1, '2021-08-08 14:21:52', '2021-08-08 14:21:52'),
(358, 1, 'Chamelibag', '65', 1, '2021-08-08 14:22:00', '2021-08-08 14:22:00'),
(359, 1, 'Dholaikhal', '65', 1, '2021-08-08 14:22:10', '2021-08-08 14:22:10'),
(360, 1, 'Doyagonj', '65', 1, '2021-08-08 14:22:19', '2021-08-08 14:22:19'),
(361, 1, 'Farashgong', '65', 1, '2021-08-08 14:22:29', '2021-08-08 14:22:29'),
(362, 1, 'Dholpur', '65', 1, '2021-08-08 14:22:39', '2021-08-08 14:22:39'),
(363, 1, 'Kodomtoli(Keraniganj)', '65', 1, '2021-08-08 14:22:48', '2021-08-08 14:22:48'),
(364, 1, 'Kotwali (Puran Dhaka)', '65', 1, '2021-08-08 14:22:59', '2021-08-08 14:22:59'),
(365, 1, 'Railway Colony', '65', 1, '2021-08-08 14:23:07', '2021-08-08 14:23:07'),
(366, 1, 'Rajar Dewri', '65', 1, '2021-08-08 14:23:18', '2021-08-08 14:23:18'),
(367, 1, 'Sat rowja', '65', 1, '2021-08-08 14:23:28', '2021-08-08 14:23:28'),
(368, 1, 'Tantibazar', '65', 1, '2021-08-08 14:23:37', '2021-08-08 14:23:37'),
(369, 1, 'Rosulbagh(Mohakhali)', '65', 1, '2021-08-08 14:23:48', '2021-08-08 14:23:48'),
(370, 1, 'Gopalpur', '65', 1, '2021-08-08 14:23:58', '2021-08-08 14:23:58'),
(371, 1, 'College Gate (Tongi)', '65', 1, '2021-08-08 14:24:09', '2021-08-08 14:24:09'),
(372, 1, 'Badekomelosshor', '65', 1, '2021-08-08 14:24:17', '2021-08-08 14:24:17'),
(373, 1, 'Rail Station', '65', 1, '2021-08-08 14:24:26', '2021-08-08 14:24:26'),
(374, 1, 'Uttarkhan Mazar', '65', 1, '2021-08-08 14:24:36', '2021-08-08 14:24:36'),
(375, 1, 'Dakshinkhan Bazar', '65', 1, '2021-08-08 14:24:52', '2021-08-08 14:24:52'),
(376, 1, 'Hajipara-Dakshinkhan', '65', 1, '2021-08-08 14:25:01', '2021-08-08 14:25:01'),
(377, 1, 'Ranavola', '65', 1, '2021-08-08 14:25:10', '2021-08-08 14:25:10'),
(378, 1, 'Joynal Market', '65', 1, '2021-08-08 14:25:18', '2021-08-08 14:25:18'),
(379, 1, 'Johura Market', '65', 1, '2021-08-08 14:25:27', '2021-08-08 14:25:27'),
(380, 1, 'Johura Market', '65', 1, '2021-08-08 14:25:36', '2021-08-08 14:25:36'),
(381, 1, 'Habib Market', '65', 1, '2021-08-08 14:25:46', '2021-08-08 14:25:46'),
(382, 1, 'BDR Market-House Building', '65', 1, '2021-08-08 14:25:56', '2021-08-08 14:25:56'),
(383, 1, 'BDR Market-Sector 6', '65', 1, '2021-08-08 14:26:07', '2021-08-08 14:26:07'),
(384, 1, 'Moinartek', '65', 1, '2021-08-08 14:26:17', '2021-08-08 14:26:17'),
(385, 1, 'Atipara', '65', 1, '2021-08-08 14:26:28', '2021-08-08 14:26:28'),
(386, 1, 'Kot Bari', '65', 1, '2021-08-08 14:26:38', '2021-08-08 14:26:38'),
(387, 1, 'Abdullahpur (Uttara)', '65', 1, '2021-08-08 14:26:48', '2021-08-08 14:26:48'),
(388, 1, 'Mollartek', '65', 1, '2021-08-08 14:26:58', '2021-08-08 14:26:58'),
(389, 1, 'Gawair', '65', 1, '2021-08-08 14:27:07', '2021-08-08 14:27:07'),
(390, 1, 'Kosaibari', '65', 1, '2021-08-08 14:27:20', '2021-08-08 14:27:20'),
(391, 1, 'Prembagan', '65', 1, '2021-08-08 14:27:28', '2021-08-08 14:27:28'),
(392, 1, 'Kachkura', '65', 1, '2021-08-08 14:27:40', '2021-08-08 14:27:40'),
(393, 1, 'Helal Market', '65', 1, '2021-08-08 14:27:49', '2021-08-08 14:27:49'),
(394, 1, 'Chamur Khan', '65', 1, '2021-08-08 14:27:58', '2021-08-08 14:27:58'),
(395, 1, 'Society', '65', 1, '2021-08-08 14:28:06', '2021-08-08 14:28:06'),
(396, 1, 'Ismailkholla', '65', 1, '2021-08-08 14:28:24', '2021-08-08 14:28:24'),
(397, 1, 'Masterpara', '65', 1, '2021-08-08 14:28:46', '2021-08-08 14:28:46'),
(398, 1, 'Munda', '65', 1, '2021-08-08 14:28:54', '2021-08-08 14:28:54'),
(399, 1, 'Barua', '65', 1, '2021-08-08 14:29:02', '2021-08-08 14:29:02'),
(400, 1, 'Namapara-Khilkhet', '65', 1, '2021-08-08 14:29:15', '2021-08-08 14:29:15'),
(401, 1, 'Ahalia-Uttara', '65', 1, '2021-08-08 14:29:24', '2021-08-08 14:29:24'),
(402, 1, 'Ainusbag-Uttara', '65', 1, '2021-08-08 14:29:36', '2021-08-08 14:29:36'),
(403, 1, 'Diabari', '65', 1, '2021-08-08 14:29:46', '2021-08-08 14:29:46'),
(404, 1, 'Habib Market-Uttara', '65', 1, '2021-08-08 14:29:56', '2021-08-08 14:29:56'),
(405, 1, 'Pakuria-Uttara', '65', 1, '2021-08-08 14:30:04', '2021-08-08 14:30:04'),
(406, 1, 'Aftab Nagar', '65', 1, '2021-08-08 14:30:14', '2021-08-08 14:30:14'),
(407, 1, 'Gulbagh', '65', 1, '2021-08-08 14:30:22', '2021-08-08 14:30:22'),
(408, 1, 'Meradiya Bazar', '65', 1, '2021-08-08 14:30:31', '2021-08-08 14:30:31'),
(409, 1, 'Mirbagh', '65', 1, '2021-08-08 14:30:43', '2021-08-08 14:30:43'),
(410, 1, 'Modhubagh', '65', 1, '2021-08-08 14:30:52', '2021-08-08 14:30:52'),
(411, 1, 'Rampura TV center', '65', 1, '2021-08-08 14:31:00', '2021-08-08 14:31:00'),
(412, 1, 'TV gate', '65', 1, '2021-08-08 14:31:09', '2021-08-08 14:31:09'),
(413, 1, 'Ulan road', '65', 1, '2021-08-08 14:31:19', '2021-08-08 14:31:19'),
(414, 1, 'Mirpur 10', '65', 1, '2021-08-08 14:31:30', '2021-08-08 14:31:30'),
(415, 1, 'Gudaraghat-Mirpur', '65', 1, '2021-08-08 14:31:38', '2021-08-08 14:31:38'),
(416, 1, 'Namapara-Mirpur', '65', 1, '2021-08-08 14:31:57', '2021-08-08 14:31:57'),
(417, 1, 'Oxygen', '65', 1, '2021-08-08 14:32:07', '2021-08-08 14:32:07'),
(418, 1, 'Technical', '65', 1, '2021-08-08 14:32:16', '2021-08-08 14:32:16'),
(419, 1, 'Mirpur 13', '65', 1, '2021-08-08 14:32:30', '2021-08-08 14:32:30'),
(420, 1, 'Mirpur 15', '65', 1, '2021-08-08 14:32:44', '2021-08-08 14:32:44'),
(421, 1, 'Mirpur 14', '65', 1, '2021-08-08 14:33:00', '2021-08-08 14:33:00'),
(422, 1, 'Benaroshi Polli', '65', 1, '2021-08-08 14:33:11', '2021-08-08 14:33:11'),
(423, 1, 'Beribadh-Mirpur', '65', 1, '2021-08-08 14:33:19', '2021-08-08 14:33:19'),
(424, 1, 'Buddhijibi Road', '65', 1, '2021-08-08 14:33:31', '2021-08-08 14:33:31'),
(425, 1, 'Purobi Cinema Hall', '65', 1, '2021-08-08 14:33:41', '2021-08-08 14:33:41'),
(426, 1, 'Mondir-Mirpur', '65', 1, '2021-08-08 14:33:53', '2021-08-08 14:33:53'),
(427, 1, 'Palasnagor', '65', 1, '2021-08-08 14:34:02', '2021-08-08 14:34:02'),
(428, 1, 'Purobi', '65', 1, '2021-08-08 14:34:11', '2021-08-08 14:34:11'),
(429, 1, 'Rupnagor', '65', 1, '2021-08-08 14:34:19', '2021-08-08 14:34:19'),
(430, 1, 'Senpara', '65', 1, '2021-08-08 14:34:27', '2021-08-08 14:34:27'),
(431, 1, 'BRTA', '65', 1, '2021-08-08 14:34:37', '2021-08-08 14:34:37'),
(432, 1, 'Zoo', '65', 1, '2021-08-08 14:34:46', '2021-08-08 14:34:46'),
(433, 1, 'Niketon Bazar', '65', 1, '2021-08-08 14:36:03', '2021-08-08 14:36:03'),
(434, 1, 'No area', '65', 1, '2021-08-08 14:36:16', '2021-08-08 14:36:16'),
(435, 1, 'Eastern Housing (Pallabi)', '65', 1, '2021-08-08 14:36:25', '2021-08-08 14:36:25'),
(436, 1, 'Jahangir Gate', '65', 1, '2021-08-08 14:36:35', '2021-08-08 14:36:35'),
(437, 1, 'Nijhum gate', '65', 1, '2021-08-08 14:36:44', '2021-08-08 14:36:44'),
(438, 1, 'BAF Bashar (Dhaka cantonment)', '65', 1, '2021-08-08 14:37:48', '2021-08-08 14:37:48'),
(439, 1, 'Zia Colony', '65', 1, '2021-08-08 14:37:57', '2021-08-08 14:37:57'),
(440, 1, 'Arambag (Mirpur)', '65', 1, '2021-08-08 14:38:18', '2021-08-08 14:38:18'),
(441, 1, 'Nazimuddin Road (Puran Dhaka)', '65', 1, '2021-08-08 14:38:27', '2021-08-08 14:38:27'),
(442, 1, 'Nazimuddin Road (Malibag)', '65', 1, '2021-08-08 14:38:38', '2021-08-08 14:38:38'),
(443, 1, 'Kodomtoli (Jatrabari)', '65', 1, '2021-08-08 14:38:48', '2021-08-08 14:38:48'),
(444, 1, 'SDA', '65', 1, '2021-08-08 14:39:00', '2021-08-08 14:39:00'),
(445, 1, 'Mirpur 60 feet', '65', 1, '2021-08-08 14:39:13', '2021-08-08 14:39:13'),
(540, 5, 'Alfadanga', '100', 1, '2021-08-09 10:31:46', '2021-08-09 10:31:46'),
(541, 5, 'Bhanga', '100', 1, '2021-08-09 10:32:12', '2021-08-09 10:32:12'),
(542, 5, 'Boalmari', '100', 1, '2021-08-09 10:32:28', '2021-08-09 10:32:28'),
(543, 5, 'Char Bhadrasan', '100', 1, '2021-08-09 10:33:13', '2021-08-09 10:33:13'),
(544, 5, 'Faridpur Sadar', '100', 1, '2021-08-09 10:33:28', '2021-08-09 10:33:28'),
(545, 5, 'Madhukhali', '100', 1, '2021-08-09 10:33:50', '2021-08-09 10:33:50'),
(546, 5, 'Nagarkanda', '100', 1, '2021-08-09 10:35:05', '2021-08-09 10:35:05'),
(547, 5, 'Sadarpur', '100', 1, '2021-08-09 10:35:56', '2021-08-09 10:35:56'),
(548, 5, 'Saltha', '100', 1, '2021-08-09 10:36:57', '2021-08-09 10:36:57'),
(549, 6, 'Bager bazar', '100', 1, '2021-08-09 10:39:07', '2021-08-09 10:39:07'),
(550, 6, 'Barmi Sreepur (Gazipur)', '100', 1, '2021-08-09 10:40:56', '2021-08-09 10:40:56'),
(551, 6, 'Bhawal Gazipur', '100', 1, '2021-08-09 10:41:22', '2021-08-09 10:41:22'),
(552, 5, 'Bypass Road (Gazipur)', '100', 1, '2021-08-09 10:41:40', '2021-08-09 10:41:40'),
(553, 6, 'Chondra Gazipur', '100', 1, '2021-08-09 10:42:45', '2021-08-09 10:42:45'),
(554, 6, 'Chowrasta (Gazipur)', '100', 1, '2021-08-09 10:43:18', '2021-08-09 10:43:18'),
(555, 6, 'Dhaladia Gazipur', '100', 1, '2021-08-09 10:43:42', '2021-08-09 10:43:42'),
(556, 6, 'Duet Road', '100', 1, '2021-08-09 10:44:27', '2021-08-09 10:44:27'),
(557, 6, 'Fulbaria Gazipur', '100', 1, '2021-08-09 10:44:45', '2021-08-09 10:44:45'),
(558, 6, 'Gorgoria masterbari', '100', 1, '2021-08-09 10:44:59', '2021-08-09 10:44:59'),
(559, 6, 'Hotapara', '100', 1, '2021-08-09 10:49:41', '2021-08-09 10:49:41'),
(560, 6, 'Jinumarket', '100', 1, '2021-08-09 10:50:01', '2021-08-09 10:50:01'),
(561, 6, 'Jorpukur', '100', 1, '2021-08-09 10:50:17', '2021-08-09 10:50:17'),
(562, 6, 'Joyna Bazar', '100', 1, '2021-08-09 10:50:32', '2021-08-09 10:50:32'),
(563, 6, 'Kaliakoir', '100', 1, '2021-08-09 10:50:44', '2021-08-09 10:50:44'),
(564, 6, 'Kaliganj(Gazipur)', '100', 1, '2021-08-09 10:50:58', '2021-08-09 10:50:58'),
(565, 6, 'Kapasia', '100', 1, '2021-08-09 10:51:12', '2021-08-09 10:51:12'),
(566, 1, 'Kashempur', '100', 1, '2021-08-09 10:51:48', '2021-08-09 10:51:48'),
(567, 6, 'Khapara', '100', 1, '2021-08-09 10:52:10', '2021-08-09 10:52:10'),
(568, 6, 'Kodda', '100', 1, '2021-08-09 10:52:28', '2021-08-09 10:52:28'),
(569, 6, 'Konabari', '100', 1, '2021-08-09 10:52:58', '2021-08-09 10:52:58'),
(570, 6, 'Malakerbari', '100', 1, '2021-08-09 10:54:53', '2021-08-09 10:54:53'),
(571, 6, 'Mawna', '100', 1, '2021-08-09 10:55:31', '2021-08-09 10:55:31'),
(572, 6, 'Mc Bazar', '100', 1, '2021-08-09 10:58:18', '2021-08-09 10:58:18'),
(573, 6, 'Member Bari Gazipur', '100', 1, '2021-08-09 10:58:36', '2021-08-09 10:58:36'),
(574, 1, 'Miraspara', '100', 1, '2021-08-09 10:59:49', '2021-08-09 10:59:49'),
(575, 6, 'Mirerbazar', '100', 1, '2021-08-09 11:00:07', '2021-08-09 11:00:07'),
(576, 6, 'Modhumita', '100', 1, '2021-08-09 11:02:05', '2021-08-09 11:02:05'),
(577, 6, 'Mouchak Gazipur', '100', 1, '2021-08-09 11:02:44', '2021-08-09 11:02:44'),
(578, 6, 'Mudafa', '100', 1, '2021-08-09 11:04:43', '2021-08-09 11:04:43'),
(579, 6, 'Nayanpur Sreepur', '100', 1, '2021-08-09 11:05:15', '2021-08-09 11:05:15'),
(580, 6, 'Pagar', '100', 1, '2021-08-09 11:05:55', '2021-08-09 11:05:55'),
(581, 6, 'Pollibiddut Gazipur', '100', 1, '2021-08-09 11:06:13', '2021-08-09 11:06:13'),
(582, 6, 'Porabari Bazar', '100', 1, '2021-08-09 11:06:28', '2021-08-09 11:06:28'),
(583, 6, 'Pubail', '100', 1, '2021-08-09 11:06:54', '2021-08-09 11:06:54'),
(584, 6, 'Rajabari Sreepur', '100', 1, '2021-08-09 11:07:10', '2021-08-09 11:07:10'),
(585, 6, 'Rajendrapur', '100', 1, '2021-08-09 11:07:28', '2021-08-09 11:07:28'),
(586, 6, 'Salna', '100', 1, '2021-08-09 11:07:48', '2021-08-09 11:07:48'),
(587, 6, 'Shafipur', '100', 1, '2021-08-09 11:08:19', '2021-08-09 11:08:19'),
(588, 6, 'Shibbari', '100', 1, '2021-08-09 11:09:12', '2021-08-09 11:09:12'),
(589, 6, 'Shilmun', '100', 1, '2021-08-09 11:09:42', '2021-08-09 11:09:42'),
(590, 6, 'Shimultoli', '100', 1, '2021-08-09 11:09:58', '2021-08-09 11:09:58'),
(591, 6, 'Sreepur(Gazipur)', '100', 1, '2021-08-09 11:10:42', '2021-08-09 11:10:53'),
(592, 6, 'T & T(Gazipur)', '100', 1, '2021-08-09 11:11:17', '2021-08-09 11:11:17'),
(593, 6, 'Tongi', '100', 1, '2021-08-09 11:11:33', '2021-08-09 11:11:33'),
(594, 6, 'Ulokhola', '100', 1, '2021-08-09 11:11:46', '2021-08-09 11:11:46'),
(595, 6, 'Vobanipur Gazipur', '100', 1, '2021-08-09 11:11:59', '2021-08-09 11:11:59'),
(596, 7, 'Gopalganj Sadar', '130', 1, '2021-08-14 14:05:21', '2021-08-14 14:05:21'),
(597, 7, 'Kasiani', '130', 1, '2021-08-14 14:05:45', '2021-08-14 14:05:45'),
(598, 7, 'Kotalipara', '130', 1, '2021-08-14 14:06:26', '2021-08-14 14:06:26'),
(599, 7, 'Maksudpur', '130', 1, '2021-08-14 14:06:50', '2021-08-14 14:06:50'),
(600, 7, 'Tungipara', '130', 1, '2021-08-14 14:07:15', '2021-08-14 14:07:31'),
(601, 8, 'Austogram', '130', 1, '2021-08-14 14:09:09', '2021-08-14 14:09:09'),
(602, 8, 'Bajitpur', '130', 1, '2021-08-14 14:09:31', '2021-08-14 14:09:31'),
(603, 8, 'Bhairab', '130', 1, '2021-08-14 14:09:49', '2021-08-14 14:09:49'),
(604, 8, 'Hosainpur', '130', 1, '2021-08-14 14:10:09', '2021-08-14 14:10:09'),
(605, 8, 'Itna', '130', 1, '2021-08-14 14:10:29', '2021-08-14 14:10:29'),
(606, 8, 'Karimganj', '130', 1, '2021-08-14 14:11:16', '2021-08-14 14:11:16'),
(607, 8, 'Katiadi', '130', 1, '2021-08-14 14:11:32', '2021-08-14 14:11:32'),
(608, 8, 'Kishoreganj Sadar', '130', 1, '2021-08-14 14:11:53', '2021-08-14 14:11:53'),
(609, 8, 'Kuliarchar', '130', 1, '2021-08-14 14:13:09', '2021-08-14 14:13:09'),
(610, 8, 'Mithamain', '130', 1, '2021-08-14 14:15:59', '2021-08-14 14:15:59'),
(611, 8, 'Nikli', '130', 1, '2021-08-14 14:16:21', '2021-08-14 14:16:21'),
(612, 8, 'Pakundia', '130', 1, '2021-08-14 14:16:41', '2021-08-14 14:16:41'),
(613, 8, 'Tarail', '130', 1, '2021-08-14 14:17:04', '2021-08-14 14:17:04'),
(614, 9, 'Madaripur Sadar', '130', 1, '2021-08-14 14:18:33', '2021-08-14 14:18:33'),
(615, 9, 'Kalkini', '130', 1, '2021-08-14 14:18:55', '2021-08-14 14:18:55'),
(616, 9, 'Rajoir', '130', 1, '2021-08-14 14:19:26', '2021-08-14 14:19:26'),
(617, 9, 'Shibchar', '130', 1, '2021-08-14 14:20:31', '2021-08-14 14:20:31'),
(618, 10, 'Daulatpur(Manikganj)', '130', 1, '2021-08-14 14:38:55', '2021-08-14 14:38:55'),
(619, 10, 'Ghior', '130', 1, '2021-08-14 14:39:14', '2021-08-14 14:39:14'),
(620, 10, 'Harirampur (Manikganj)', '130', 1, '2021-08-14 14:39:33', '2021-08-14 14:39:33'),
(621, 10, 'Manikganj Sadar', '130', 1, '2021-08-14 14:39:53', '2021-08-14 14:39:53'),
(622, 10, 'Saturia', '130', 1, '2021-08-14 14:40:11', '2021-08-14 14:40:11'),
(623, 10, 'Shibalaya', '130', 1, '2021-08-14 14:40:27', '2021-08-14 14:40:27'),
(624, 10, 'Singair', '130', 1, '2021-08-14 14:40:43', '2021-08-14 14:40:43'),
(625, 11, 'Munshiganj Sadar', '130', 1, '2021-08-14 14:41:54', '2021-08-14 14:42:20'),
(626, 11, 'Gazaria', '130', 1, '2021-08-14 14:42:39', '2021-08-14 14:42:39'),
(627, 11, 'Lauhajang', '130', 1, '2021-08-14 14:42:55', '2021-08-14 14:42:55'),
(628, 11, 'Serajdikhan', '130', 1, '2021-08-14 14:43:13', '2021-08-14 14:43:13'),
(629, 11, 'Sreenagar', '130', 1, '2021-08-14 14:43:29', '2021-08-14 14:43:29'),
(630, 11, 'Tangibari', '130', 1, '2021-08-14 14:43:44', '2021-08-14 14:43:44'),
(631, 12, 'Araihazar', '100', 1, '2021-08-14 14:47:31', '2021-08-14 14:47:31'),
(632, 12, 'Bandar (Narayanganj)', '100', 1, '2021-08-14 14:47:50', '2021-08-14 14:47:50'),
(633, 12, 'Chashara (Narayanganj)', '100', 1, '2021-08-14 14:48:10', '2021-08-14 14:48:10'),
(634, 12, 'Fatullah', '100', 1, '2021-08-14 14:48:28', '2021-08-14 14:48:28'),
(635, 12, 'Rupganj', '100', 1, '2021-08-14 14:48:46', '2021-08-14 14:48:46'),
(636, 12, 'Shanarpar (Narayanganj)', '100', 1, '2021-08-14 14:49:04', '2021-08-14 14:49:04'),
(637, 12, 'Siddhirganj', '100', 1, '2021-08-14 14:49:22', '2021-08-14 14:49:22'),
(638, 12, 'Sonargaon', '100', 1, '2021-08-14 14:49:40', '2021-08-14 14:49:40'),
(639, 13, 'Babur Haat', '130', 1, '2021-08-15 01:26:28', '2021-08-15 01:26:28'),
(640, 13, 'Belabo', '130', 1, '2021-08-15 01:26:48', '2021-08-15 01:26:48'),
(641, 13, 'East Brammondi', '130', 1, '2021-08-15 01:27:10', '2021-08-15 01:27:10'),
(642, 13, 'Hasnabad Market', '130', 1, '2021-08-15 01:27:26', '2021-08-15 01:27:26'),
(643, 13, 'Madhabdi', '130', 1, '2021-08-15 01:27:47', '2021-08-15 01:27:47'),
(644, 13, 'Monohardi', '130', 1, '2021-08-15 01:28:08', '2021-08-15 01:28:08'),
(645, 13, 'Pachdona More', '130', 1, '2021-08-15 01:28:28', '2021-08-15 01:28:28'),
(646, 13, 'Palash', '130', 1, '2021-08-15 01:29:21', '2021-08-15 01:29:21'),
(647, 13, 'Raipura', '130', 1, '2021-08-15 01:29:48', '2021-08-15 01:29:48'),
(648, 13, 'Saheprtab More', '130', 1, '2021-08-15 01:30:04', '2021-08-15 01:30:04'),
(649, 13, 'Shatirpara', '130', 1, '2021-08-15 01:30:33', '2021-08-15 01:30:33'),
(650, 13, 'Shibpur', '130', 1, '2021-08-15 01:31:00', '2021-08-15 01:31:00'),
(651, 13, 'Songita Bazar', '130', 1, '2021-08-15 01:42:48', '2021-08-15 01:42:48'),
(652, 13, 'Velanogor (Norshingdi Sadar)', '130', 1, '2021-08-15 01:43:02', '2021-08-15 01:43:02'),
(653, 13, 'West Brammondi', '130', 1, '2021-08-15 01:43:24', '2021-08-15 01:43:24'),
(654, 15, 'Baliakandi', '100', 1, '2021-08-25 13:25:33', '2021-08-25 13:25:33'),
(655, 15, 'Goalunda', '100', 1, '2021-08-25 13:25:48', '2021-08-25 13:25:48'),
(656, 15, 'Kalukhali', '100', 1, '2021-08-25 13:26:00', '2021-08-25 13:26:00'),
(657, 15, 'Pangsha', '100', 1, '2021-08-25 13:26:29', '2021-08-25 13:26:29'),
(658, 15, 'Rajbari Sadar', '100', 1, '2021-08-25 13:26:47', '2021-08-25 13:26:47'),
(659, 16, 'Bhedarganj', '100', 1, '2021-08-25 13:33:39', '2021-08-25 13:33:39'),
(660, 16, 'Damudiya', '100', 1, '2021-08-25 13:33:59', '2021-08-25 13:33:59'),
(661, 16, 'Gosairhat', '100', 1, '2021-08-25 13:34:19', '2021-08-25 13:34:19'),
(662, 16, 'Naria', '100', 1, '2021-08-25 13:35:14', '2021-08-25 13:35:14'),
(663, 16, 'Shariatpur Sadar', '100', 1, '2021-08-25 13:35:42', '2021-08-25 13:35:42'),
(664, 16, 'Zajira', '100', 1, '2021-08-25 13:35:57', '2021-08-25 13:35:57'),
(665, 17, 'Bashail', '100', 1, '2021-08-25 13:40:25', '2021-08-25 13:40:25'),
(666, 17, 'Bhuapur', '100', 1, '2021-08-25 13:40:48', '2021-08-25 13:40:48'),
(667, 17, 'Delduar', '100', 1, '2021-08-25 13:41:11', '2021-08-25 13:41:11'),
(668, 17, 'Dhanbari', '100', 1, '2021-08-25 13:41:23', '2021-08-26 16:05:17'),
(669, 27, 'Ghatail', '100', 1, '2021-08-25 13:41:33', '2021-08-26 16:06:43'),
(670, 17, 'Gopalpur (Tangail)', '100', 1, '2021-08-25 13:41:48', '2021-08-25 13:41:48'),
(671, 17, 'Kalihati', '100', 1, '2021-08-25 13:42:02', '2021-08-25 13:42:02'),
(672, 17, 'Mirzapur', '100', 1, '2021-08-25 13:42:17', '2021-08-25 13:42:17'),
(673, 17, 'Modhupur', '100', 1, '2021-08-25 13:44:27', '2021-08-25 13:44:27'),
(674, 17, 'Nagarpur', '100', 1, '2021-08-25 13:44:44', '2021-08-25 13:44:44'),
(675, 17, 'Shakhipur', '100', 1, '2021-08-25 13:44:59', '2021-08-25 13:44:59'),
(676, 17, 'Tangail Sadar', '100', 1, '2021-08-25 13:45:15', '2021-08-25 13:45:15'),
(677, 18, 'Amtali', '100', 1, '2021-08-25 13:50:24', '2021-08-25 13:50:24'),
(678, 18, 'Bamna', '100', 1, '2021-08-25 13:50:51', '2021-08-25 13:50:51'),
(679, 18, 'Barguna Sadar', '100', 1, '2021-08-25 13:51:03', '2021-08-25 13:51:03'),
(680, 18, 'Betagi', '100', 1, '2021-08-25 13:51:33', '2021-08-25 13:51:33'),
(681, 18, 'Patharghata (Barguna)', '100', 1, '2021-08-25 13:51:55', '2021-08-25 13:51:55'),
(682, 19, 'Agailjhara', '100', 1, '2021-08-25 13:54:45', '2021-08-25 13:54:45'),
(683, 19, 'Babuganj', '100', 1, '2021-08-25 13:55:03', '2021-08-25 13:55:03'),
(684, 19, 'Bakerganj', '100', 1, '2021-08-25 13:55:19', '2021-08-25 13:55:19'),
(685, 19, 'Barisal Sadar', '100', 1, '2021-08-25 13:59:08', '2021-08-25 13:59:08'),
(686, 19, 'Gournadi (Barisal)', '100', 1, '2021-08-25 13:59:23', '2021-08-25 13:59:23'),
(687, 19, 'Hijla', '100', 1, '2021-08-25 13:59:35', '2021-08-25 13:59:35'),
(688, 19, 'Mehendiganj', '100', 1, '2021-08-25 13:59:49', '2021-08-25 13:59:49'),
(689, 19, 'Muladi', '100', 1, '2021-08-25 14:00:03', '2021-08-25 14:00:03'),
(690, 19, 'Wazirpur', '100', 1, '2021-08-25 14:00:18', '2021-08-25 14:00:18'),
(692, 20, 'Bhola Sadar', '100', 1, '2021-08-25 14:01:48', '2021-08-25 14:11:28'),
(693, 20, 'Borhanuddin', '100', 1, '2021-08-25 14:08:24', '2021-08-25 14:11:00'),
(694, 20, 'Charfession', '100', 1, '2021-08-25 14:08:38', '2021-08-25 14:10:31'),
(695, 20, 'Daulatkhan', '100', 1, '2021-08-25 14:08:54', '2021-08-25 14:10:19'),
(696, 20, 'Lalmohan', '100', 1, '2021-08-25 14:09:08', '2021-08-25 14:10:08'),
(697, 20, 'Manpura', '100', 1, '2021-08-25 14:14:18', '2021-08-25 14:14:18'),
(698, 20, 'Tajumuddin', '100', 1, '2021-08-25 14:14:33', '2021-08-25 14:14:33'),
(699, 21, 'Jhalokathi Sadar', '100', 1, '2021-08-25 14:20:32', '2021-08-25 14:20:32'),
(700, 21, 'Kathalia', '100', 1, '2021-08-25 14:20:45', '2021-08-25 14:20:45'),
(701, 21, 'Nalchiti', '100', 1, '2021-08-25 14:20:58', '2021-08-25 14:20:58'),
(702, 21, 'Rajapur (Jhalokathi)', '100', 1, '2021-08-25 14:21:11', '2021-08-25 14:21:11'),
(703, 22, 'Bauphal', '100', 1, '2021-08-25 14:30:16', '2021-08-25 14:30:16'),
(704, 22, 'Dasmina', '100', 1, '2021-08-25 14:30:31', '2021-08-25 14:30:31'),
(705, 22, 'Dumki', '100', 1, '2021-08-25 14:30:47', '2021-08-25 14:30:47'),
(706, 22, 'Galachipa', '100', 1, '2021-08-25 14:31:01', '2021-08-25 14:31:01'),
(707, 22, 'Kalapara', '100', 1, '2021-08-25 14:31:14', '2021-08-25 14:31:14'),
(708, 22, 'Mirjaganj', '100', 1, '2021-08-25 14:31:27', '2021-08-25 14:31:27'),
(709, 22, 'Patuakhali Sadar', '100', 1, '2021-08-25 14:31:44', '2021-08-25 14:31:44'),
(710, 22, 'Bhandaria', '100', 1, '2021-08-25 14:34:13', '2021-08-25 14:34:13'),
(711, 22, 'Kaukhali (Perojpur)', '100', 1, '2021-08-25 14:34:27', '2021-08-25 14:34:27'),
(712, 22, 'Mothbaria', '100', 1, '2021-08-25 14:34:44', '2021-08-25 14:34:44'),
(713, 22, 'Nazirpur', '100', 1, '2021-08-25 14:35:00', '2021-08-25 14:35:00'),
(714, 22, 'Nesarabad (Shawrupkathi)', '100', 1, '2021-08-25 14:35:15', '2021-08-25 14:35:15'),
(715, 22, 'Pirojpur Sadar', '100', 1, '2021-08-25 14:35:29', '2021-08-25 14:35:29'),
(716, 22, 'Zia Nagar (Indurkani)', '100', 1, '2021-08-25 14:35:45', '2021-08-25 14:35:45'),
(717, 24, 'Ali Kadam', '100', 1, '2021-08-26 12:36:30', '2021-08-26 12:36:30'),
(718, 24, 'Bandarban Sadar', '100', 1, '2021-08-26 12:40:30', '2021-08-26 12:40:30'),
(719, 24, 'Lama', '100', 1, '2021-08-26 12:41:57', '2021-08-26 12:41:57'),
(720, 24, 'Nakhoyngchari', '100', 1, '2021-08-26 12:49:07', '2021-08-26 12:49:07'),
(721, 24, 'Rawanchari', '100', 1, '2021-08-26 13:04:00', '2021-08-26 13:04:00'),
(722, 24, 'Ruma', '100', 1, '2021-08-26 13:06:31', '2021-08-26 13:06:31'),
(723, 24, 'soho area', '100', 1, '2021-08-26 13:06:47', '2021-08-26 13:06:47'),
(724, 24, 'Thanchi', '100', 1, '2021-08-26 13:07:16', '2021-08-26 13:07:16'),
(725, 25, 'Akhaura', '100', 1, '2021-08-26 13:42:17', '2021-08-26 13:42:17'),
(726, 25, 'Ashuganj', '100', 1, '2021-08-26 13:42:34', '2021-08-26 13:42:34'),
(727, 25, 'Bancharampur (Brahmanbaria)', '100', 1, '2021-08-26 13:42:51', '2021-08-26 13:42:51'),
(728, 25, 'Birashar (Brahmanbaria)', '100', 1, '2021-08-26 13:52:56', '2021-08-26 13:52:56'),
(729, 25, 'Gatura- Pirbari', '100', 1, '2021-08-26 13:53:10', '2021-08-26 13:53:10'),
(730, 25, 'Kashba', '100', 1, '2021-08-26 13:53:47', '2021-08-26 13:53:47'),
(731, 25, 'Kawtoly (Brahmanbaria)', '100', 1, '2021-08-26 13:54:04', '2021-08-26 13:54:04'),
(732, 25, 'Medda (Brahmanbaria)', '100', 1, '2021-08-26 13:54:20', '2021-08-26 13:54:20'),
(733, 25, 'Moddopara', '100', 1, '2021-08-26 13:54:35', '2021-08-26 13:54:35'),
(734, 25, 'Nabinagar (Brahmanbaria)', '100', 1, '2021-08-26 13:54:55', '2021-08-26 13:54:55'),
(735, 25, 'Nasirnagar', '100', 1, '2021-08-26 13:55:13', '2021-08-26 13:55:13'),
(736, 25, 'Paikpara (Brahmanbaria Sadar)', '100', 1, '2021-08-26 13:55:28', '2021-08-26 13:55:28'),
(737, 25, 'Sarail', '100', 1, '2021-08-26 13:55:45', '2021-08-26 13:55:45'),
(738, 25, 'Sarak bazar (Brahmanbaria)', '100', 1, '2021-08-26 13:56:00', '2021-08-26 13:56:00'),
(739, 25, 'T.A Road (Brahmanbaria)', '100', 1, '2021-08-26 13:56:15', '2021-08-26 13:56:15'),
(740, 26, 'Chandpur Sadar', '100', 1, '2021-08-26 13:57:37', '2021-08-26 13:57:37'),
(741, 22, 'Faridganj', '100', 1, '2021-08-26 13:57:51', '2021-08-26 13:57:51'),
(742, 26, 'Haimchar', '100', 1, '2021-08-26 13:58:08', '2021-08-26 13:58:08'),
(743, 26, 'Hajiganj (Chandpur)', '100', 1, '2021-08-26 13:58:26', '2021-08-26 13:58:26'),
(744, 26, 'Kachua(Chandpur)', '100', 1, '2021-08-26 13:58:41', '2021-08-26 13:58:41'),
(745, 26, 'Matlab (North)(Chengarchar)', '100', 1, '2021-08-26 13:58:56', '2021-08-26 13:58:56'),
(746, 26, 'Matlab (South)', '100', 1, '2021-08-26 13:59:16', '2021-08-26 13:59:16'),
(747, 26, 'Shahrasti', '100', 1, '2021-08-26 13:59:31', '2021-08-26 13:59:31'),
(748, 27, 'Agrabad', '100', 1, '2021-08-26 14:01:18', '2021-08-26 14:01:18'),
(749, 27, 'AK Khan', '100', 1, '2021-08-26 14:01:36', '2021-08-26 14:01:36'),
(750, 27, 'Al- Amin Baria Madrasa', '100', 1, '2021-08-26 14:02:07', '2021-08-26 14:02:07'),
(751, 27, 'Amin Jute Mills', '100', 1, '2021-08-26 14:02:36', '2021-08-26 14:02:36'),
(752, 27, 'Anandabazar', '100', 1, '2021-08-26 14:02:49', '2021-08-26 14:02:49'),
(753, 27, 'Anawara Battali', '100', 1, '2021-08-26 14:03:04', '2021-08-26 14:03:04'),
(754, 27, 'Anawara Paroikora', '100', 1, '2021-08-26 14:03:29', '2021-08-26 14:03:29'),
(755, 27, 'Anwara', '100', 1, '2021-08-26 14:03:47', '2021-08-26 14:03:47'),
(756, 27, 'Banshkhali', '100', 1, '2021-08-26 14:04:10', '2021-08-26 14:04:10'),
(757, 27, 'Barahatia', '100', 1, '2021-08-26 14:04:29', '2021-08-26 14:04:29'),
(758, 27, 'Bayezid Bostami', '100', 1, '2021-08-26 14:04:45', '2021-08-26 14:04:45'),
(759, 27, 'Boalkhali', '100', 1, '2021-08-26 14:05:05', '2021-08-26 14:05:05'),
(760, 27, 'Boalkhali Charandwip', '100', 1, '2021-08-26 14:05:20', '2021-08-26 14:05:20'),
(761, 27, 'Boalkhali Iqbal Park', '100', 1, '2021-08-26 14:05:37', '2021-08-26 14:05:37'),
(762, 27, 'Boalkhali Kadurkhal', '100', 1, '2021-08-26 14:05:53', '2021-08-26 14:05:53');
INSERT INTO `shipping_rates` (`id`, `division_id`, `state`, `rate`, `publication_status`, `created_at`, `updated_at`) VALUES
(763, 27, 'Boalkhali Kanungopara', '100', 1, '2021-08-26 14:06:12', '2021-08-26 14:06:12'),
(764, 27, 'Boalkhali Sadar', '100', 1, '2021-08-26 14:06:29', '2021-08-26 14:06:29'),
(765, 27, 'Boalkhali Sakpura', '100', 1, '2021-08-26 14:06:49', '2021-08-26 14:06:49'),
(766, 27, 'Boalkhali Saroatoli', '100', 1, '2021-08-26 14:07:04', '2021-08-26 14:07:04'),
(767, 27, 'Bondor (Chittagong)', '100', 1, '2021-08-26 14:07:25', '2021-08-26 14:07:25'),
(768, 27, 'Cadet College', '100', 1, '2021-08-26 14:25:19', '2021-08-26 14:25:19'),
(769, 27, 'Chandanaish', '100', 1, '2021-08-26 14:26:44', '2021-08-26 14:26:44'),
(770, 27, 'Chandgaon', '100', 1, '2021-08-26 14:27:04', '2021-08-26 14:27:04'),
(771, 27, 'Chattogram Airport', '100', 1, '2021-08-26 14:27:23', '2021-08-26 14:27:23'),
(772, 27, 'Chattogram Bandar', '100', 1, '2021-08-26 14:27:38', '2021-08-26 14:27:38'),
(773, 27, 'Chattogram Cantonment', '100', 1, '2021-08-26 14:28:01', '2021-08-26 14:28:01'),
(774, 27, 'Chattogram Chawkbazar', '100', 1, '2021-08-26 14:28:15', '2021-08-26 14:28:15'),
(775, 27, 'Chattogram Customs Acca', '100', 1, '2021-08-26 14:28:41', '2021-08-26 14:28:41'),
(776, 27, 'Chattogram GPO', '100', 1, '2021-08-26 14:29:04', '2021-08-26 14:29:04'),
(777, 27, 'Chattogram GPO', '100', 1, '2021-08-26 14:29:27', '2021-08-26 14:29:27'),
(778, 27, 'Chattogram New Market', '100', 1, '2021-08-26 14:29:40', '2021-08-26 14:29:40'),
(779, 27, 'Chattogram Oxygen', '100', 1, '2021-08-26 14:29:53', '2021-08-26 14:29:53'),
(780, 27, 'Chattogram Politechnic Institute', '100', 1, '2021-08-26 14:30:08', '2021-08-26 14:30:08'),
(781, 27, 'Chattogram Sailors Colony', '100', 1, '2021-08-26 14:30:25', '2021-08-26 14:30:25'),
(782, 27, 'Chattogram University', '100', 1, '2021-08-26 14:30:39', '2021-08-26 14:30:39'),
(783, 27, 'Colonel Hat', '100', 1, '2021-08-26 14:31:06', '2021-08-26 14:31:06'),
(784, 27, 'Combined Military Hospital (CMH)', '100', 1, '2021-08-26 14:31:23', '2021-08-26 14:31:23'),
(785, 27, 'Court Buliding', '100', 1, '2021-08-26 14:31:38', '2021-08-26 14:31:38'),
(786, 27, 'Dakkhin Ghatchak', '100', 1, '2021-08-26 14:31:52', '2021-08-26 14:31:52'),
(787, 27, 'Dakkshin Pahartoli', '100', 1, '2021-08-26 14:32:16', '2021-08-26 14:32:16'),
(788, 27, 'Double Mooring', '100', 1, '2021-08-26 14:32:30', '2021-08-26 14:32:30'),
(789, 27, 'East Joara Barma', '100', 1, '2021-08-26 14:32:43', '2021-08-26 14:32:43'),
(790, 27, 'East Joara Dohazari', '100', 1, '2021-08-26 14:33:15', '2021-08-26 14:33:15'),
(791, 27, 'East Joara Gachbaria', '100', 1, '2021-08-26 14:33:43', '2021-08-26 14:33:43'),
(792, 27, 'Export Processing', '100', 1, '2021-08-26 14:36:17', '2021-08-26 14:36:17'),
(793, 27, 'Fakirkill', '100', 1, '2021-08-26 14:36:40', '2021-08-26 14:36:40'),
(794, 27, 'Fatikchari', '100', 1, '2021-08-26 14:36:56', '2021-08-26 14:36:56'),
(795, 27, 'Fatikchhari Bhandar Sharif', '100', 1, '2021-08-26 14:37:10', '2021-08-26 14:37:10'),
(796, 27, 'Fatikchhari Harualchhari', '100', 1, '2021-08-26 14:37:25', '2021-08-26 14:37:25'),
(797, 27, 'Fatikchhari Najirhat', '100', 1, '2021-08-26 14:37:41', '2021-08-26 14:37:41'),
(798, 27, 'Fatikchhari Nanupur', '100', 1, '2021-08-26 14:37:55', '2021-08-26 14:37:55'),
(799, 27, 'Firozshah', '100', 1, '2021-08-26 14:39:35', '2021-08-26 14:39:35'),
(800, 27, 'GEC', '100', 1, '2021-08-26 14:39:48', '2021-08-26 14:39:48'),
(801, 27, 'Halishahar', '100', 1, '2021-08-26 14:40:01', '2021-08-26 14:40:01'),
(802, 27, 'Hathazari', '100', 1, '2021-08-26 14:40:16', '2021-08-26 14:40:16'),
(803, 27, 'Hathazari Fatahabad', '100', 1, '2021-08-26 14:41:02', '2021-08-26 14:41:02'),
(804, 27, 'Hathazari Gorduara', '100', 1, '2021-08-26 14:41:18', '2021-08-26 14:41:18'),
(805, 27, 'Hathazari Katirhat', '100', 1, '2021-08-26 14:43:04', '2021-08-26 14:43:04'),
(806, 27, 'Hathazari Madrasa', '100', 1, '2021-08-26 14:43:17', '2021-08-26 14:43:17'),
(807, 27, 'Hathazari Mirzapur', '100', 1, '2021-08-26 14:43:33', '2021-08-26 14:43:33'),
(808, 27, 'Hathazari Nuralibari', '100', 1, '2021-08-26 14:43:45', '2021-08-26 14:43:45'),
(809, 27, 'Hathazari Yunus Nagar', '100', 1, '2021-08-26 14:44:00', '2021-08-26 14:44:00'),
(810, 27, 'Jalalabad', '100', 1, '2021-08-26 14:44:12', '2021-08-26 14:44:12'),
(811, 27, 'Jaldi Banigram', '100', 1, '2021-08-26 14:44:25', '2021-08-26 14:44:25'),
(812, 27, 'Jaldi Gunagari', '100', 1, '2021-08-26 14:44:38', '2021-08-26 14:44:38'),
(813, 27, 'Jaldi Khan Bahadur', '100', 1, '2021-08-26 14:45:04', '2021-08-26 14:45:04'),
(814, 27, 'Jaldi Sadar', '100', 1, '2021-08-26 14:45:20', '2021-08-26 14:45:20'),
(815, 27, 'Jaldia Marine Academy', '100', 1, '2021-08-26 14:45:36', '2021-08-26 14:45:36'),
(816, 27, 'Jaldia Merine Accade', '100', 1, '2021-08-26 14:45:52', '2021-08-26 14:45:52'),
(817, 27, 'Kadeer Nagar', '100', 1, '2021-08-26 14:46:05', '2021-08-26 14:46:05'),
(818, 27, 'Kaptai Chandraghona', '100', 1, '2021-08-26 14:46:23', '2021-08-26 14:46:23'),
(819, 27, 'Karnaphuli', '100', 1, '2021-08-26 14:46:43', '2021-08-26 14:46:43'),
(820, 27, 'Kattuli', '100', 1, '2021-08-26 14:47:13', '2021-08-26 14:47:13'),
(821, 27, 'Khulshi', '100', 1, '2021-08-26 14:47:30', '2021-08-26 14:47:30'),
(822, 27, 'Kotwali Chattogram', '100', 1, '2021-08-26 14:47:43', '2021-08-26 14:47:43'),
(823, 27, 'Lohagara', '100', 1, '2021-08-26 14:47:57', '2021-08-26 14:47:57'),
(824, 27, 'Lohagara Chunti', '100', 1, '2021-08-26 14:48:11', '2021-08-26 14:48:11'),
(825, 27, 'Lohagara Padua', '100', 1, '2021-08-26 14:52:51', '2021-08-26 14:52:51'),
(826, 27, 'Middle Patenga', '100', 1, '2021-08-26 14:53:06', '2021-08-26 14:53:06'),
(827, 27, 'Mirsarai', '100', 1, '2021-08-26 14:53:25', '2021-08-26 14:53:25'),
(828, 27, 'Mirsharai Abutorab', '100', 1, '2021-08-26 14:53:49', '2021-08-26 14:53:49'),
(829, 27, 'Mirsharai Azampur', '100', 1, '2021-08-26 14:54:02', '2021-08-26 14:54:02'),
(830, 27, 'Mirsharai Bharawazhat', '100', 1, '2021-08-26 14:54:14', '2021-08-26 14:54:14'),
(831, 27, 'Mirsharai Darrogahat', '100', 1, '2021-08-26 14:54:27', '2021-08-26 14:54:27'),
(832, 27, 'Mirsharai Joarganj', '100', 1, '2021-08-26 14:54:41', '2021-08-26 14:54:41'),
(833, 27, 'Mirsharai Korerhat', '100', 1, '2021-08-26 14:55:25', '2021-08-26 14:55:25'),
(834, 27, 'Mirsharai Mohazanhat', '100', 1, '2021-08-26 14:55:37', '2021-08-26 14:55:37'),
(835, 27, 'Mohard', '100', 1, '2021-08-26 14:55:49', '2021-08-26 14:55:49'),
(836, 27, 'Murad Nagar', '100', 1, '2021-08-26 14:56:03', '2021-08-26 14:56:03'),
(837, 27, 'Nasirabad', '100', 1, '2021-08-26 15:00:18', '2021-08-26 15:00:18'),
(838, 27, 'North Halishahar', '100', 1, '2021-08-26 15:00:30', '2021-08-26 15:00:30'),
(839, 27, 'North Kattali', '100', 1, '2021-08-26 15:00:42', '2021-08-26 15:00:42'),
(840, 27, 'North Katuli', '100', 1, '2021-08-26 15:00:59', '2021-08-26 15:00:59'),
(841, 27, 'Noyabazar', '100', 1, '2021-08-26 15:03:22', '2021-08-26 15:03:22'),
(842, 27, 'Pahartoli', '100', 1, '2021-08-26 15:03:39', '2021-08-26 15:03:39'),
(843, 27, 'Panchlaish', '100', 1, '2021-08-26 15:03:55', '2021-08-26 15:03:55'),
(844, 27, 'Patenga', '100', 1, '2021-08-26 15:04:14', '2021-08-26 15:04:14'),
(845, 27, 'Patiya', '100', 1, '2021-08-26 15:05:00', '2021-08-26 15:05:00'),
(846, 27, 'Patiya Budhpara', '100', 1, '2021-08-26 15:05:15', '2021-08-26 15:05:15'),
(847, 27, 'Patiya Sadar', '100', 1, '2021-08-26 15:05:31', '2021-08-26 15:05:31'),
(848, 27, 'Rampur', '100', 1, '2021-08-26 15:06:04', '2021-08-26 15:06:04'),
(849, 27, 'Rampura TSO', '100', 1, '2021-08-26 15:06:24', '2021-08-26 15:06:24'),
(850, 27, 'Rangunia', '100', 1, '2021-08-26 15:06:40', '2021-08-26 15:06:40'),
(851, 27, 'Rangunia Dhamair', '100', 1, '2021-08-26 15:06:56', '2021-08-26 15:06:56'),
(852, 27, 'Rangunia Sadar', '100', 1, '2021-08-26 15:07:10', '2021-08-26 15:07:10'),
(853, 27, 'Ranir Hat', '100', 1, '2021-08-26 15:07:28', '2021-08-26 15:07:28'),
(854, 27, 'Raojan', '100', 1, '2021-08-26 15:37:46', '2021-08-26 15:37:46'),
(855, 27, 'Raozan B.I.T Post Office', '100', 1, '2021-08-26 15:38:01', '2021-08-26 15:38:01'),
(856, 27, 'Raozan Dewanpur', '100', 1, '2021-08-26 15:39:28', '2021-08-26 15:39:28'),
(857, 27, 'Raozan Dewanpur', '100', 1, '2021-08-26 15:41:47', '2021-08-26 15:41:47'),
(858, 27, 'Raozan Fatepur', '100', 1, '2021-08-26 15:42:03', '2021-08-26 15:42:03'),
(859, 27, 'Raozan Guzra Noapara', '100', 1, '2021-08-26 15:43:07', '2021-08-26 15:43:07'),
(860, 27, 'Raozan Guzra Noapara', '100', 1, '2021-08-26 15:43:55', '2021-08-26 15:43:55'),
(861, 27, 'Raozan jagannath Hat', '100', 1, '2021-08-26 15:44:15', '2021-08-26 15:44:15'),
(862, 27, 'Raozan Kundeshwari', '100', 1, '2021-08-26 15:44:35', '2021-08-26 15:44:35'),
(863, 27, 'Raozan Mohamuni', '100', 1, '2021-08-26 15:45:00', '2021-08-26 15:45:00'),
(864, 27, 'Raozan Pouroshobha', '100', 1, '2021-08-26 15:45:18', '2021-08-26 15:45:18'),
(865, 27, 'Raozan Pouroshobha', '100', 1, '2021-08-26 15:46:48', '2021-08-26 15:46:48'),
(866, 27, 'Raozan Pouroshobha', '100', 1, '2021-08-26 15:47:25', '2021-08-26 15:47:25'),
(867, 27, 'Rauzan Gahira', '100', 1, '2021-08-26 15:47:45', '2021-08-26 15:47:45'),
(868, 27, 'Rauzan Gahira', '100', 1, '2021-08-26 15:48:39', '2021-08-26 15:48:39'),
(869, 27, 'Sadarghat', '100', 1, '2021-08-26 15:49:02', '2021-08-26 15:49:02'),
(870, 27, 'Sandwip', '100', 1, '2021-08-26 15:49:28', '2021-08-26 15:49:28'),
(871, 27, 'Sandwip Shiberhat', '100', 1, '2021-08-26 15:49:45', '2021-08-26 15:49:45'),
(872, 27, 'Sandwip Urirchar', '100', 1, '2021-08-26 15:50:30', '2021-08-26 15:50:30'),
(873, 27, 'Satkania', '100', 1, '2021-08-26 15:50:46', '2021-08-26 15:50:46'),
(874, 27, 'Satkania Baitul Ijjat', '100', 1, '2021-08-26 15:51:32', '2021-08-26 15:51:32'),
(875, 27, 'Satkania Bazalia', '100', 1, '2021-08-26 15:52:03', '2021-08-26 15:52:03'),
(876, 27, 'Sayad Bari', '100', 1, '2021-08-26 15:52:26', '2021-08-26 15:52:26'),
(877, 27, 'Sitakunda Barabkunda', '100', 1, '2021-08-26 15:52:56', '2021-08-26 15:52:56'),
(878, 27, 'Sitakunda Baroidhala', '100', 1, '2021-08-26 15:55:00', '2021-08-26 15:55:00'),
(879, 27, 'Sitakunda Baroidhala', '100', 1, '2021-08-26 15:55:41', '2021-08-26 15:55:41'),
(880, 27, 'Sitakunda Bawashbaria', '100', 1, '2021-08-26 15:56:28', '2021-08-26 15:56:28'),
(881, 27, 'Sitakunda Bhatiari', '100', 1, '2021-08-26 15:56:43', '2021-08-26 15:56:43'),
(882, 27, 'Sitakunda Fouzdarhat', '100', 1, '2021-08-26 15:56:58', '2021-08-26 15:56:58'),
(883, 27, 'Sitakunda Jafrabad', '100', 1, '2021-08-26 15:57:36', '2021-08-26 15:57:36'),
(884, 27, 'Sitakunda Jafrabad', '100', 1, '2021-08-26 15:58:49', '2021-08-26 15:58:49'),
(885, 27, 'Sitakunda Kumira', '100', 1, '2021-08-26 15:59:13', '2021-08-26 15:59:13'),
(886, 27, 'Sitakundu', '100', 1, '2021-08-26 15:59:35', '2021-08-26 15:59:35'),
(887, 27, 'South Halishahar', '100', 1, '2021-08-26 15:59:55', '2021-08-26 15:59:55'),
(888, 27, 'Uttar Gatchak', '100', 1, '2021-08-26 16:00:21', '2021-08-26 16:00:21'),
(889, 27, 'Wazedia', '100', 1, '2021-08-26 16:00:36', '2021-08-26 16:00:36'),
(890, 2, 'Barura', '100', 1, '2021-08-26 16:07:48', '2021-08-26 16:07:48'),
(891, 27, 'Brahmanpara', '100', 1, '2021-08-26 16:08:03', '2021-08-26 16:08:03'),
(892, 27, 'Burichang', '100', 1, '2021-08-26 16:08:28', '2021-08-26 16:08:28'),
(893, 27, 'Chandina', '100', 1, '2021-08-26 16:08:53', '2021-08-26 16:08:53'),
(894, 27, 'Chowddagram', '100', 1, '2021-08-26 16:09:11', '2021-08-26 16:09:11'),
(895, 27, 'Comilla Sadar', '100', 1, '2021-08-26 16:09:35', '2021-08-26 16:09:35'),
(896, 27, 'Comilla Sadar South', '100', 1, '2021-08-26 16:09:56', '2021-08-26 16:09:56'),
(897, 27, 'Daudkandi', '100', 1, '2021-08-26 16:10:24', '2021-08-26 16:10:24'),
(898, 27, 'Debiduar', '100', 1, '2021-08-26 16:10:42', '2021-08-26 16:10:42'),
(899, 27, 'Gouripur (Comilla)', '100', 1, '2021-08-26 16:10:57', '2021-08-26 16:10:57'),
(900, 27, 'Homna', '100', 1, '2021-08-26 16:11:11', '2021-08-26 16:11:11'),
(901, 27, 'Laksam', '100', 1, '2021-08-26 16:11:27', '2021-08-26 16:11:27'),
(902, 27, 'Meghna', '100', 1, '2021-08-26 16:11:46', '2021-08-26 16:11:46'),
(903, 27, 'Monoharganj', '100', 1, '2021-08-26 16:12:01', '2021-08-26 16:12:01'),
(904, 27, 'Muradnagar', '100', 1, '2021-08-26 16:12:15', '2021-08-26 16:12:15'),
(905, 27, 'Nangolkot', '100', 1, '2021-08-26 16:12:28', '2021-08-26 16:12:28'),
(906, 27, 'Titas', '100', 1, '2021-08-26 16:12:41', '2021-08-26 16:12:41'),
(907, 29, 'Alir Jahal Road', '100', 1, '2021-08-26 16:14:22', '2021-08-26 16:14:22'),
(908, 29, 'Barmis Market', '100', 1, '2021-08-26 16:14:37', '2021-08-26 16:14:37'),
(909, 29, 'Bazar Ghata', '100', 1, '2021-08-26 16:14:51', '2021-08-26 16:14:51'),
(910, 29, 'Chakoria', '100', 1, '2021-08-26 16:15:05', '2021-08-26 16:15:05'),
(911, 29, 'Holiday Mor(Cox\'s Bazar)', '100', 1, '2021-08-26 16:15:20', '2021-08-26 16:15:20'),
(912, 29, 'Jilonjha', '100', 1, '2021-08-26 16:15:38', '2021-08-26 16:15:38'),
(913, 29, 'Kalur Dokan', '100', 1, '2021-08-26 16:15:54', '2021-08-26 16:15:54'),
(914, 29, 'Khurushkul', '100', 1, '2021-08-26 16:16:07', '2021-08-26 16:16:07'),
(915, 29, 'Kolatoli (Cox\'s Bazar)', '100', 1, '2021-08-26 16:16:24', '2021-08-26 16:16:24'),
(916, 29, 'Kutubdia', '100', 1, '2021-08-26 16:16:40', '2021-08-26 16:16:40'),
(917, 29, 'Laboni Point', '100', 1, '2021-08-26 16:16:56', '2021-08-26 16:16:56'),
(918, 29, 'Laldighir Par (Cox\'s Bazar)', '100', 1, '2021-08-26 16:17:10', '2021-08-26 16:17:10'),
(919, 29, 'Marin Drive Road', '100', 1, '2021-08-26 16:17:28', '2021-08-26 16:17:28'),
(920, 29, 'Moheshkhali', '100', 1, '2021-08-26 16:17:56', '2021-08-26 16:17:56'),
(921, 29, 'P M Khali', '100', 1, '2021-08-26 16:18:52', '2021-08-26 16:18:52'),
(922, 29, 'Pekua', '100', 1, '2021-08-26 16:19:11', '2021-08-26 16:19:11'),
(923, 29, 'Ramu', '100', 1, '2021-08-26 16:19:25', '2021-08-26 16:19:25'),
(924, 29, 'Romaliyer chora', '100', 1, '2021-08-26 16:19:47', '2021-08-26 16:19:47'),
(925, 29, 'Somity Para', '100', 1, '2021-08-26 16:20:07', '2021-08-26 16:20:07'),
(926, 29, 'Sonar Tara', '100', 1, '2021-08-26 16:20:23', '2021-08-26 16:20:23'),
(927, 29, 'Sughandha Point', '100', 1, '2021-08-26 16:20:48', '2021-08-26 16:20:48'),
(928, 29, 'Tarabaniyer chora', '100', 1, '2021-08-26 16:21:05', '2021-08-26 16:21:05'),
(929, 29, 'Teknaf', '100', 1, '2021-08-26 16:21:20', '2021-08-26 16:21:20'),
(930, 29, 'Ukhia', '100', 1, '2021-08-26 16:21:35', '2021-08-26 16:21:35'),
(931, 30, 'Chagalnayya', '100', 1, '2021-08-27 13:23:16', '2021-08-27 13:23:16'),
(932, 30, 'Daganbhuiyan', '100', 1, '2021-08-27 13:23:35', '2021-08-27 13:23:35'),
(933, 30, 'Feni Sadar', '100', 1, '2021-08-27 13:23:53', '2021-08-27 13:23:53'),
(934, 30, 'Fulgazi', '100', 1, '2021-08-27 13:24:12', '2021-08-27 13:24:12'),
(935, 30, 'Parshuram', '100', 1, '2021-08-27 13:24:27', '2021-08-27 13:24:27'),
(936, 30, 'Sonagazi', '100', 1, '2021-08-27 13:24:45', '2021-08-27 13:24:45'),
(937, 31, 'Dighinala', '100', 1, '2021-08-27 13:26:21', '2021-08-27 13:26:21'),
(938, 31, 'Khagrachari Sadar', '100', 1, '2021-08-27 13:26:44', '2021-08-27 13:26:44'),
(939, 31, 'Laksmichari', '100', 1, '2021-08-27 13:27:08', '2021-08-27 13:27:08'),
(940, 31, 'Manikchari', '100', 1, '2021-08-27 13:27:24', '2021-08-27 13:27:24'),
(941, 31, 'Matiranga', '100', 1, '2021-08-27 13:28:06', '2021-08-27 13:28:06'),
(942, 31, 'Mohalchari', '100', 1, '2021-08-27 13:28:26', '2021-08-27 13:28:26'),
(943, 31, 'Panchari', '100', 1, '2021-08-27 13:29:02', '2021-08-27 13:29:02'),
(944, 31, 'Ramgor', '100', 1, '2021-08-27 13:29:34', '2021-08-27 13:29:34'),
(945, 32, 'Alexandar', '100', 1, '2021-08-27 13:33:52', '2021-08-27 13:33:52'),
(946, 32, 'Kamalnagar', '100', 1, '2021-08-27 13:34:11', '2021-08-27 13:34:11'),
(947, 32, 'Laksmipur Sadar', '100', 1, '2021-08-27 13:34:40', '2021-08-27 13:34:40'),
(948, 32, 'Raipur (Lakshmipur)', '100', 1, '2021-08-27 13:35:24', '2021-08-27 13:35:24'),
(949, 32, 'Ramganj', '100', 1, '2021-08-27 13:35:55', '2021-08-27 13:35:55'),
(950, 32, 'Ramgati', '100', 1, '2021-08-27 13:36:27', '2021-08-27 13:36:27'),
(951, 33, 'Begumganj', '100', 1, '2021-08-27 13:44:24', '2021-08-27 13:44:24'),
(952, 33, 'Chatkhil', '100', 1, '2021-08-27 13:44:38', '2021-08-27 13:44:38'),
(953, 33, 'Companiganj', '100', 1, '2021-08-27 13:45:00', '2021-08-27 13:45:00'),
(954, 33, 'Hatiya', '100', 1, '2021-08-27 13:45:41', '2021-08-27 13:45:41'),
(955, 33, 'Kabir Hat', '100', 1, '2021-08-27 13:45:58', '2021-08-27 13:45:58'),
(956, 33, 'Maijdee (Noakhali)', '100', 1, '2021-08-27 13:46:19', '2021-08-27 13:51:45'),
(957, 33, 'Senbag', '100', 1, '2021-08-27 13:46:35', '2021-08-27 13:46:35'),
(958, 33, 'Sonaimuri', '100', 1, '2021-08-27 13:46:48', '2021-08-27 13:46:48'),
(959, 33, 'Subarnachar', '100', 1, '2021-08-27 13:47:12', '2021-08-27 13:47:12'),
(963, 34, 'Baghaichari', '100', 1, '2021-08-27 13:55:23', '2021-08-27 13:55:23'),
(964, 34, 'Barkal', '100', 1, '2021-08-27 13:56:20', '2021-08-27 13:56:20'),
(965, 34, 'Belaichari', '100', 1, '2021-08-27 13:56:51', '2021-08-27 13:56:51'),
(966, 34, 'Jurachari', '100', 1, '2021-08-27 13:57:06', '2021-08-27 13:57:06'),
(967, 34, 'Kaptai', '100', 1, '2021-08-27 13:57:28', '2021-08-27 13:57:28'),
(968, 34, 'Kaptai Kaptai Project', '100', 1, '2021-08-27 13:58:28', '2021-08-27 13:58:28'),
(969, 34, 'Kaptai Nuton Bazar', '100', 1, '2021-08-27 13:58:46', '2021-08-27 13:58:46'),
(970, 34, 'Kaptai Sadar', '100', 1, '2021-08-27 13:59:23', '2021-08-27 13:59:23'),
(971, 34, 'Kawkhali (Rangamati)', '100', 1, '2021-08-27 13:59:39', '2021-08-27 13:59:39'),
(972, 34, 'Langadu', '100', 1, '2021-08-27 13:59:51', '2021-08-27 13:59:51'),
(973, 34, 'Naniarchar', '100', 1, '2021-08-27 14:00:04', '2021-08-27 14:00:04'),
(974, 34, 'Rajasthali', '100', 1, '2021-08-27 14:00:30', '2021-08-27 14:00:47'),
(975, 34, 'Rangamati Sadar', '100', 1, '2021-08-27 14:01:34', '2021-08-27 14:01:34'),
(976, 35, 'Bagerhat Sadar', '100', 1, '2021-08-27 14:34:36', '2021-08-27 14:34:36'),
(977, 35, 'Chitalmari', '100', 1, '2021-08-27 14:34:55', '2021-08-27 14:34:55'),
(978, 35, 'Fakirhat (Bagerhat)', '100', 1, '2021-08-27 14:35:09', '2021-08-27 14:35:09'),
(979, 35, 'Kachua(Bagerhat)', '100', 1, '2021-08-27 14:35:24', '2021-08-27 14:35:24'),
(980, 35, 'Mollarhat', '100', 1, '2021-08-27 14:35:44', '2021-08-27 14:35:44'),
(981, 35, 'Mongla', '100', 1, '2021-08-27 14:36:05', '2021-08-27 14:36:05'),
(982, 35, 'Morelganj', '100', 1, '2021-08-27 14:36:22', '2021-08-27 14:36:22'),
(983, 35, 'Rampal', '100', 1, '2021-08-27 14:37:00', '2021-08-27 14:37:00'),
(984, 35, 'Sarankhola', '100', 1, '2021-08-27 14:37:15', '2021-08-27 14:37:15'),
(985, 36, 'Alamdanga', '100', 1, '2021-08-27 14:38:42', '2021-08-27 14:38:42'),
(986, 36, 'Chuadanga Sadar', '100', 1, '2021-08-27 14:38:58', '2021-08-27 14:38:58'),
(987, 36, 'Damurhuda', '100', 1, '2021-08-27 14:39:18', '2021-08-27 14:39:18'),
(988, 36, 'Jibannagar', '100', 1, '2021-08-27 14:39:32', '2021-08-27 14:39:32'),
(989, 37, 'Bagherpara', '100', 1, '2021-08-27 14:40:46', '2021-08-27 14:40:46'),
(990, 37, 'Benapole', '100', 1, '2021-08-27 14:41:05', '2021-08-27 14:41:05'),
(991, 37, 'Chowgacha', '100', 1, '2021-08-27 14:41:25', '2021-08-27 14:41:25'),
(992, 37, 'Jessore Sadar', '100', 1, '2021-08-27 14:41:40', '2021-08-27 14:41:40'),
(993, 37, 'Jhikargacha', '100', 1, '2021-08-27 14:41:56', '2021-08-27 14:41:56'),
(994, 37, 'Keshabpur', '100', 1, '2021-08-27 14:42:13', '2021-08-27 14:42:13'),
(995, 37, 'Manirampur', '100', 1, '2021-08-27 14:42:28', '2021-08-27 14:42:28'),
(996, 37, 'Noapara (Jessore)', '100', 1, '2021-08-27 14:42:46', '2021-08-27 14:42:46'),
(997, 37, 'Sharsha', '100', 1, '2021-08-27 14:43:01', '2021-08-27 14:43:01'),
(998, 38, 'Harinakunda', '100', 1, '2021-08-27 14:44:15', '2021-08-27 14:44:15'),
(999, 38, 'Jhenaidah Sadar', '100', 1, '2021-08-27 14:44:44', '2021-08-27 14:44:44'),
(1000, 38, 'Kaliganj(Jhenaidah)', '100', 1, '2021-08-27 14:45:02', '2021-08-27 14:45:02'),
(1001, 38, 'Kotchandpur', '100', 1, '2021-08-27 14:45:17', '2021-08-27 14:45:17'),
(1002, 38, 'Moheshpur', '100', 1, '2021-08-27 14:45:46', '2021-08-27 14:45:46'),
(1003, 38, 'Shailkupa', '100', 1, '2021-08-27 14:46:05', '2021-08-27 14:46:05'),
(1004, 39, 'Amadee Bazar', '100', 1, '2021-08-27 14:48:47', '2021-08-27 14:48:47'),
(1005, 39, 'Batiaghata', '100', 1, '2021-08-27 14:49:03', '2021-08-27 14:49:03'),
(1006, 39, 'Dacope', '100', 1, '2021-08-27 14:49:28', '2021-08-27 14:49:28'),
(1007, 39, 'Dighalia', '100', 1, '2021-08-27 14:49:44', '2021-08-27 14:49:44'),
(1008, 39, 'Doulatpur', '100', 1, '2021-08-27 14:50:05', '2021-08-27 14:50:05'),
(1009, 39, 'Dumuria', '100', 1, '2021-08-27 14:50:21', '2021-08-27 14:50:21'),
(1010, 39, 'Khalispur', '100', 1, '2021-08-27 14:50:41', '2021-08-27 14:50:41'),
(1011, 39, 'Khan jahan ali', '100', 1, '2021-08-27 14:50:57', '2021-08-27 14:50:57'),
(1012, 39, 'Khulna Sadar', '100', 1, '2021-08-27 14:51:16', '2021-08-27 14:51:16'),
(1013, 39, 'Koira', '100', 1, '2021-08-27 14:51:31', '2021-08-27 14:51:31'),
(1014, 39, 'kopilmuni Bazar', '100', 1, '2021-08-27 14:51:46', '2021-08-27 14:51:46'),
(1015, 39, 'Paikgacha', '100', 1, '2021-08-27 14:52:02', '2021-08-27 14:52:02'),
(1016, 39, 'Phultala', '100', 1, '2021-08-27 14:52:20', '2021-08-27 14:52:20'),
(1017, 39, 'Rupsa', '100', 1, '2021-08-27 14:52:35', '2021-08-27 14:52:35'),
(1018, 39, 'Sonadanga', '100', 1, '2021-08-27 14:53:03', '2021-08-27 14:53:03'),
(1019, 39, 'Terokhada', '100', 1, '2021-08-27 14:53:23', '2021-08-27 14:53:23'),
(1020, 40, 'Bheramara', '100', 1, '2021-08-27 14:55:24', '2021-08-27 14:55:24'),
(1021, 40, 'Daulatpur (Kushtia)', '100', 1, '2021-08-27 15:06:01', '2021-08-27 15:06:01'),
(1022, 40, 'Khoksha', '100', 1, '2021-08-27 15:06:42', '2021-08-27 15:07:10'),
(1023, 40, 'Kumarkhali', '100', 1, '2021-08-27 15:07:29', '2021-08-27 15:07:29'),
(1024, 40, 'Kushtia Sadar', '100', 1, '2021-08-27 15:08:03', '2021-08-27 15:08:03'),
(1025, 40, 'Mirpur (Kushtia)', '100', 1, '2021-08-27 15:08:29', '2021-08-27 15:08:29'),
(1026, 41, 'Magura Sadar', '100', 1, '2021-08-27 15:21:38', '2021-08-27 15:21:38'),
(1027, 41, 'Mohammadpur (Magura)', '100', 1, '2021-08-27 15:21:54', '2021-08-27 15:21:54'),
(1028, 41, 'Shalikha', '100', 1, '2021-08-27 15:33:37', '2021-08-27 15:33:37'),
(1029, 41, 'Sreepur (Magura)', '100', 1, '2021-08-27 15:33:52', '2021-08-27 15:33:52'),
(1030, 42, 'Gangni', '100', 1, '2021-08-27 15:36:16', '2021-08-27 15:36:16'),
(1031, 42, 'Meherpur Sadar', '100', 1, '2021-08-27 15:36:41', '2021-08-27 15:36:41'),
(1032, 42, 'Mujibnagar', '100', 1, '2021-08-27 15:36:58', '2021-08-27 15:36:58'),
(1033, 43, 'Kalia', '100', 1, '2021-08-27 15:40:24', '2021-08-27 15:40:24'),
(1034, 43, 'Lohagara(Narail)', '100', 1, '2021-08-27 15:40:40', '2021-08-27 15:40:40'),
(1035, 43, 'Narail Sadar', '100', 1, '2021-08-27 15:40:57', '2021-08-27 15:40:57'),
(1036, 44, 'Assasuni', '100', 1, '2021-08-27 15:48:48', '2021-08-27 15:48:48'),
(1037, 44, 'Debhata', '100', 1, '2021-08-27 15:49:03', '2021-08-27 15:49:03'),
(1038, 44, 'Kaliganj(Satkhira)', '100', 1, '2021-08-27 15:49:16', '2021-08-27 15:49:16'),
(1039, 44, 'Kolaroa', '100', 1, '2021-08-27 15:49:29', '2021-08-27 15:49:29'),
(1040, 44, 'Satkhira Sadar', '100', 1, '2021-08-27 15:49:43', '2021-08-27 15:49:43'),
(1041, 44, 'Shyamnagar', '100', 1, '2021-08-27 15:49:58', '2021-08-27 15:49:58'),
(1042, 44, 'Tala', '100', 1, '2021-08-27 15:50:11', '2021-08-27 15:50:11'),
(1043, 45, 'Bakshiganj', '100', 1, '2021-08-27 16:02:11', '2021-08-27 16:02:11'),
(1044, 45, 'Dewanganj', '100', 1, '2021-08-27 16:02:26', '2021-08-27 16:02:26'),
(1045, 45, 'Islampur(Jamalpur)', '100', 1, '2021-08-27 16:02:40', '2021-08-27 16:02:40'),
(1046, 45, 'Jamalpur Sadar', '100', 1, '2021-08-27 16:02:53', '2021-08-27 16:02:53'),
(1047, 45, 'Madarganj', '100', 1, '2021-08-27 16:03:08', '2021-08-27 16:03:08'),
(1048, 45, 'Melandah', '100', 1, '2021-08-27 16:03:21', '2021-08-27 16:03:21'),
(1049, 45, 'Sharishabari', '100', 1, '2021-08-27 16:03:38', '2021-08-27 16:03:38'),
(1050, 46, 'Zilla School Mor (Mymensingh)', '100', 1, '2021-08-27 16:11:58', '2021-08-27 16:11:58'),
(1051, 46, 'Agriculture University (Mymensingh)', '100', 1, '2021-08-27 16:12:12', '2021-08-27 16:12:12'),
(1052, 46, 'Akua', '100', 1, '2021-08-27 16:12:30', '2021-08-27 16:12:30'),
(1053, 46, 'Chorpara (Mymensingh)', '100', 1, '2021-08-27 16:12:44', '2021-08-27 16:12:44'),
(1054, 46, 'College Road (Mymensigh)', '100', 1, '2021-08-27 16:13:39', '2021-08-27 16:13:39'),
(1055, 46, 'Dhubaura', '100', 1, '2021-08-27 16:13:55', '2021-08-27 16:13:55'),
(1056, 46, 'Fulbaria (Mymensingh)', '100', 1, '2021-08-27 16:14:11', '2021-08-27 16:14:11'),
(1057, 46, 'Fulpur', '100', 1, '2021-08-27 16:14:27', '2021-08-27 16:14:27'),
(1058, 46, 'Goffargaon', '100', 1, '2021-08-27 16:14:45', '2021-08-27 16:14:45'),
(1059, 46, 'Haluaghat', '100', 1, '2021-08-27 16:15:01', '2021-08-27 16:15:01'),
(1060, 46, 'Iswarganj', '100', 1, '2021-08-27 16:15:20', '2021-08-27 16:15:20'),
(1061, 46, 'Kacharighat (Mymensingh)', '100', 1, '2021-08-27 16:15:37', '2021-08-27 16:15:37'),
(1062, 46, 'Kachijhuli', '100', 1, '2021-08-27 16:15:52', '2021-08-27 16:15:52'),
(1063, 46, 'Koltapara (Gouripur Mymensingh)', '100', 1, '2021-08-27 16:16:06', '2021-08-27 16:16:06'),
(1064, 46, 'Mashkanda', '100', 1, '2021-08-27 16:16:21', '2021-08-27 16:16:21'),
(1065, 46, 'Muktagacha', '100', 1, '2021-08-27 16:16:35', '2021-08-27 16:16:35'),
(1066, 46, 'Nandail', '100', 1, '2021-08-27 16:16:49', '2021-08-27 16:16:49'),
(1067, 46, 'Rohomotpur Bypass', '100', 1, '2021-08-27 16:17:03', '2021-08-27 16:17:03'),
(1068, 46, 'Trishal', '100', 1, '2021-08-27 16:17:17', '2021-08-27 16:17:17'),
(1069, 46, 'Valuka', '100', 1, '2021-08-27 16:17:31', '2021-08-27 16:17:31'),
(1070, 47, 'Atpara', '100', 1, '2021-08-27 16:19:21', '2021-08-27 16:19:21'),
(1071, 47, 'Barhatta', '100', 1, '2021-08-27 16:19:43', '2021-08-27 16:19:43'),
(1072, 47, 'Durgapur(Netrokona)', '100', 1, '2021-08-27 16:19:58', '2021-08-27 16:19:58'),
(1073, 47, 'Kalmakanda', '100', 1, '2021-08-27 16:20:12', '2021-08-27 16:20:12'),
(1074, 47, 'Kendua', '100', 1, '2021-08-27 16:20:30', '2021-08-27 16:20:30'),
(1075, 47, 'Khaliajuri', '100', 1, '2021-08-27 16:20:45', '2021-08-27 16:20:45'),
(1076, 47, 'Madan', '100', 1, '2021-08-27 16:20:59', '2021-08-27 16:20:59'),
(1077, 47, 'Mohanganj', '100', 1, '2021-08-27 16:21:14', '2021-08-27 16:21:14'),
(1078, 47, 'Netrokona Sadar', '100', 1, '2021-08-27 16:21:31', '2021-08-27 16:21:31'),
(1079, 47, 'Purbadhala (Netrokona)', '100', 1, '2021-08-27 16:21:46', '2021-08-27 16:21:46'),
(1080, 48, 'Jhenaigati', '100', 1, '2021-08-27 16:29:05', '2021-08-27 16:29:05'),
(1081, 48, 'Nakla', '100', 1, '2021-08-27 16:29:21', '2021-08-27 16:29:21'),
(1082, 48, 'Nalitabari', '100', 1, '2021-08-27 16:29:38', '2021-08-27 16:29:38'),
(1083, 48, 'Sherpur Sadar', '100', 1, '2021-08-27 16:29:52', '2021-08-27 16:29:52'),
(1084, 48, 'Sribordi', '100', 1, '2021-08-27 16:30:08', '2021-08-27 16:30:08'),
(1085, 49, 'Adamdighi (Bogra)', '100', 1, '2021-08-27 16:31:19', '2021-08-27 16:31:19'),
(1086, 49, 'Bogra Sadar', '100', 1, '2021-08-27 16:31:35', '2021-08-27 16:31:35'),
(1087, 49, 'Dhubchanchia', '100', 1, '2021-08-27 16:31:53', '2021-08-27 16:31:53'),
(1088, 49, 'Dhunot', '100', 1, '2021-08-27 16:32:08', '2021-08-27 16:32:08'),
(1089, 49, 'Gabtali (Bogra)', '100', 1, '2021-08-27 16:32:28', '2021-08-27 16:32:28'),
(1090, 49, 'Kahaloo', '100', 1, '2021-08-27 16:32:43', '2021-08-27 16:32:43'),
(1091, 49, 'Nandigram', '100', 1, '2021-08-27 16:32:59', '2021-08-27 16:32:59'),
(1092, 49, 'Sariakandi', '100', 1, '2021-08-27 16:33:12', '2021-08-27 16:33:12'),
(1093, 49, 'Shajahanpur (Bogura)', '100', 1, '2021-08-27 16:33:27', '2021-08-27 16:33:27'),
(1094, 49, 'Sherpur (Bogra)', '100', 1, '2021-08-27 16:33:41', '2021-08-27 16:33:41'),
(1095, 49, 'Shibganj ( Bogra )', '100', 1, '2021-08-27 16:33:59', '2021-08-27 16:33:59'),
(1096, 49, 'Sonatola', '100', 1, '2021-08-27 16:34:14', '2021-08-27 16:34:14'),
(1097, 50, 'Bholahat', '100', 1, '2021-08-27 16:38:50', '2021-08-27 16:38:50'),
(1098, 50, 'Chapai Nawabganj Sadar', '100', 1, '2021-08-27 16:39:06', '2021-08-27 16:39:06'),
(1099, 50, 'Gomastapur', '100', 1, '2021-08-27 16:39:21', '2021-08-27 16:39:21'),
(1100, 50, 'Nachole', '100', 1, '2021-08-27 16:39:46', '2021-08-27 16:39:46'),
(1101, 50, 'Nawabganj Sadar', '100', 1, '2021-08-27 16:40:26', '2021-08-27 16:40:26'),
(1102, 50, 'Shipganj ( Chapai )', '100', 1, '2021-08-27 16:40:42', '2021-08-27 16:40:42'),
(1103, 51, 'Akkelpur', '100', 1, '2021-08-27 16:41:48', '2021-08-27 16:41:48'),
(1104, 51, 'Joypurhat Sadar', '100', 1, '2021-08-27 16:42:02', '2021-08-27 16:42:02'),
(1105, 51, 'Kalai', '100', 1, '2021-08-27 16:42:17', '2021-08-27 16:42:17'),
(1106, 51, 'Khetlal', '100', 1, '2021-08-27 16:42:31', '2021-08-27 16:42:31'),
(1107, 51, 'Panchbibi', '100', 1, '2021-08-27 16:42:44', '2021-08-27 16:42:44'),
(1108, 52, 'Atrai', '100', 1, '2021-08-27 16:43:53', '2021-08-27 16:43:53'),
(1109, 52, 'Badalgachi', '100', 1, '2021-08-27 16:44:07', '2021-08-27 16:44:07'),
(1110, 52, 'Dhamoirhat', '100', 1, '2021-08-27 16:44:23', '2021-08-27 16:44:23'),
(1111, 52, 'Mahadebpur', '100', 1, '2021-08-27 16:44:42', '2021-08-27 16:44:42'),
(1112, 52, 'Manda(Naogaon)', '100', 1, '2021-08-27 16:44:57', '2021-08-27 16:44:57'),
(1113, 52, 'Naogaon Sadar', '100', 1, '2021-08-27 16:45:10', '2021-08-27 16:45:10'),
(1114, 52, 'Niamatpur', '100', 1, '2021-08-27 16:45:25', '2021-08-27 16:45:25'),
(1115, 52, 'Patnitala', '100', 1, '2021-08-27 16:45:48', '2021-08-27 16:45:48'),
(1116, 52, 'Porsha', '100', 1, '2021-08-27 16:46:13', '2021-08-27 16:46:13'),
(1117, 52, 'Raninagar', '100', 1, '2021-08-27 16:46:33', '2021-08-27 16:46:33'),
(1118, 52, 'Shapahar', '100', 1, '2021-08-27 16:46:51', '2021-08-27 16:46:51'),
(1119, 53, 'Baghatipara', '100', 1, '2021-08-27 16:48:14', '2021-08-27 16:48:14'),
(1120, 53, 'Baraigram', '100', 1, '2021-08-27 16:48:28', '2021-08-27 16:48:28'),
(1121, 53, 'Gurudaspur', '100', 1, '2021-08-27 16:48:46', '2021-08-27 16:48:46'),
(1122, 53, 'Lalpur', '100', 1, '2021-08-27 16:49:01', '2021-08-27 16:49:01'),
(1123, 53, 'Natore Sadar', '100', 1, '2021-08-27 16:49:16', '2021-08-27 16:49:16'),
(1124, 53, 'Singra', '100', 1, '2021-08-27 16:49:32', '2021-08-27 16:49:32'),
(1125, 54, 'Atgharia', '100', 1, '2021-08-28 12:53:15', '2021-08-28 12:53:15'),
(1126, 54, 'Bera', '100', 1, '2021-08-28 12:53:36', '2021-08-28 12:53:36'),
(1127, 54, 'Bhangura', '100', 1, '2021-08-28 12:53:51', '2021-08-28 12:53:51'),
(1128, 54, 'Chatmohar', '100', 1, '2021-08-28 12:54:05', '2021-08-28 12:54:05'),
(1129, 54, 'Faridpur ( Pabna )', '100', 1, '2021-08-28 12:54:20', '2021-08-28 12:54:20'),
(1130, 54, 'Iswardi', '100', 1, '2021-08-28 12:54:39', '2021-08-28 12:54:39'),
(1131, 54, 'Pabna Sadar', '100', 1, '2021-08-28 12:54:55', '2021-08-28 12:54:55'),
(1132, 54, 'Santhia', '100', 1, '2021-08-28 12:55:14', '2021-08-28 12:55:14'),
(1133, 54, 'Sujanagar', '100', 1, '2021-08-28 12:55:29', '2021-08-28 12:55:29'),
(1134, 55, 'Bagha', '100', 1, '2021-08-28 12:56:56', '2021-08-28 12:56:56'),
(1135, 55, 'Bagmara (Rajshahi)', '100', 1, '2021-08-28 12:57:13', '2021-08-28 12:57:13'),
(1136, 55, 'Charghat', '100', 1, '2021-08-28 13:26:04', '2021-08-28 13:26:04'),
(1137, 55, 'Durgapur(Rajshahi)', '100', 1, '2021-08-28 13:26:20', '2021-08-28 13:26:20'),
(1138, 55, 'Godagari', '100', 1, '2021-08-28 13:26:36', '2021-08-28 13:26:36'),
(1139, 55, 'Mohanpur (Rajshahi)', '100', 1, '2021-08-28 13:26:51', '2021-08-28 13:26:51'),
(1140, 55, 'Paba', '100', 1, '2021-08-28 13:27:11', '2021-08-28 13:27:11'),
(1141, 55, 'Putia', '100', 1, '2021-08-28 13:27:28', '2021-08-28 13:27:28'),
(1142, 55, 'Rajshahi Shadar', '100', 1, '2021-08-28 13:27:53', '2021-08-28 13:27:53'),
(1143, 55, 'Sadar', '100', 1, '2021-08-28 13:28:12', '2021-08-28 13:28:12'),
(1144, 55, 'Tanore', '100', 1, '2021-08-28 13:28:28', '2021-08-28 13:28:28'),
(1145, 56, 'Badarganj', '100', 1, '2021-08-28 13:30:17', '2021-08-28 13:30:17'),
(1146, 56, 'Gangachara', '100', 1, '2021-08-28 13:30:38', '2021-08-28 13:30:38'),
(1147, 56, 'Kaunia (Rangpur)', '100', 1, '2021-08-28 13:30:54', '2021-08-28 13:30:54'),
(1148, 56, 'Mithapukur', '100', 1, '2021-08-28 13:31:15', '2021-08-28 13:31:15'),
(1149, 56, 'Pirgacha', '100', 1, '2021-08-28 13:31:32', '2021-08-28 13:31:32'),
(1150, 56, 'Pirganj(Rangpur)', '100', 1, '2021-08-28 13:31:56', '2021-08-28 13:31:56'),
(1151, 56, 'Rangpur Sadar', '100', 1, '2021-08-28 13:32:15', '2021-08-28 13:32:15'),
(1152, 56, 'Taraganj', '100', 1, '2021-08-28 13:32:31', '2021-08-28 13:32:31'),
(1153, 57, 'Belkuchi', '100', 1, '2021-08-28 13:35:27', '2021-08-28 13:35:27'),
(1154, 57, 'Chowhali', '100', 1, '2021-08-28 13:35:45', '2021-08-28 13:35:45'),
(1155, 57, 'Kamarkhanda', '100', 1, '2021-08-28 13:36:00', '2021-08-28 13:36:00'),
(1156, 57, 'Kazipur', '100', 1, '2021-08-28 13:36:18', '2021-08-28 13:36:18'),
(1157, 57, 'Raiganj', '100', 1, '2021-08-28 13:36:33', '2021-08-28 13:36:33'),
(1158, 57, 'Shahajadpur (Sirajganj)', '100', 1, '2021-08-28 13:36:49', '2021-08-28 13:36:49'),
(1159, 57, 'Sirajganj Sadar', '100', 1, '2021-08-28 13:37:17', '2021-08-28 13:37:17'),
(1160, 57, 'Tarash', '100', 1, '2021-08-28 13:37:32', '2021-08-28 13:37:32'),
(1161, 57, 'Ullapara', '100', 1, '2021-08-28 13:37:50', '2021-08-28 13:37:50'),
(1162, 58, 'Baluadanga (Dinajpur)', '100', 1, '2021-08-28 13:39:10', '2021-08-28 13:39:10'),
(1163, 58, 'Birampur', '100', 1, '2021-08-28 13:39:26', '2021-08-28 13:39:26'),
(1164, 58, 'Birganj', '100', 1, '2021-08-28 13:39:47', '2021-08-28 13:39:47'),
(1165, 58, 'Birol', '100', 1, '2021-08-28 13:40:03', '2021-08-28 13:40:03'),
(1166, 58, 'Bochaganj', '100', 1, '2021-08-28 13:40:22', '2021-08-28 13:40:22'),
(1167, 58, 'Boromath (Dinajpur)', '100', 1, '2021-08-28 13:40:51', '2021-08-28 13:40:51'),
(1168, 58, 'Chirirbandar', '100', 1, '2021-08-28 13:41:06', '2021-08-28 13:41:06'),
(1169, 58, 'College mor (Dinajpur)', '100', 1, '2021-08-28 13:41:26', '2021-08-28 13:41:26'),
(1170, 58, 'Ghoraghat', '100', 1, '2021-08-28 13:41:43', '2021-08-28 13:41:43'),
(1171, 58, 'Hakimpur', '100', 1, '2021-08-28 13:51:19', '2021-08-28 13:51:19'),
(1172, 58, 'Kaharole', '100', 1, '2021-08-28 13:51:49', '2021-08-28 13:51:49'),
(1173, 58, 'Khanshama', '100', 1, '2021-08-28 13:52:10', '2021-08-28 13:52:10'),
(1174, 58, 'Lilir mor', '100', 1, '2021-08-28 13:52:26', '2021-08-28 13:52:26'),
(1175, 58, 'Modern mor (Dinajpur)', '100', 1, '2021-08-28 13:52:44', '2021-08-28 13:52:44'),
(1176, 58, 'Nawabganj (Dinajpur)', '100', 1, '2021-08-28 13:55:16', '2021-08-28 13:55:16'),
(1177, 58, 'Newtown (Dinajpur)', '100', 1, '2021-08-28 13:55:33', '2021-08-28 13:55:33'),
(1178, 58, 'Parbatipur', '100', 1, '2021-08-28 13:55:48', '2021-08-28 13:55:48'),
(1179, 58, 'Phulbari (Dinajpur)', '100', 1, '2021-08-28 13:56:04', '2021-08-28 13:56:04'),
(1180, 58, 'Pulhat', '100', 1, '2021-08-28 13:57:56', '2021-08-28 13:57:56'),
(1181, 59, 'Fulchari', '100', 1, '2021-08-28 14:15:27', '2021-08-28 14:15:27'),
(1182, 59, 'Gaibandha Sadar', '100', 1, '2021-08-28 14:15:43', '2021-08-28 14:15:43'),
(1183, 59, 'Gobindaganj ( Gaibandha )', '100', 1, '2021-08-28 14:18:18', '2021-08-28 14:18:18'),
(1184, 59, 'Palashbari', '100', 1, '2021-08-28 14:18:34', '2021-08-28 14:18:34'),
(1185, 59, 'Sadullapur', '100', 1, '2021-08-28 14:18:54', '2021-08-28 14:18:54'),
(1186, 59, 'Shaghatta', '100', 1, '2021-08-28 14:19:49', '2021-08-28 14:19:49'),
(1187, 59, 'Sundarganj', '100', 1, '2021-08-28 14:20:05', '2021-08-28 14:20:05'),
(1188, 60, 'Bhurungamari', '100', 1, '2021-08-28 14:53:26', '2021-08-28 14:53:26'),
(1189, 60, 'Chilmary', '100', 1, '2021-08-28 14:53:42', '2021-08-28 14:53:42'),
(1190, 60, 'Fulbari (Kurigram)', '100', 1, '2021-08-28 14:53:58', '2021-08-28 14:53:58'),
(1191, 60, 'Kurigram Sadar', '100', 1, '2021-08-28 14:54:17', '2021-08-28 14:54:17'),
(1192, 60, 'Nageswari', '100', 1, '2021-08-28 14:54:33', '2021-08-28 14:54:33'),
(1193, 60, 'Rajarhat', '100', 1, '2021-08-28 14:54:51', '2021-08-28 14:54:51'),
(1194, 60, 'Rajibpur', '100', 1, '2021-08-28 14:55:06', '2021-08-28 14:55:06'),
(1195, 60, 'Rowmari', '100', 1, '2021-08-28 14:55:22', '2021-08-28 14:55:22'),
(1196, 60, 'Ulipur', '100', 1, '2021-08-28 14:55:39', '2021-08-28 14:55:39'),
(1197, 61, 'Aditmari', '100', 1, '2021-08-28 14:56:47', '2021-08-28 14:56:47'),
(1198, 61, 'Hatibandha (Lalmonirhat)', '100', 1, '2021-08-28 14:57:03', '2021-08-28 14:57:03'),
(1199, 61, 'Kaliganj(Lalmonirhat)', '100', 1, '2021-08-28 14:57:18', '2021-08-28 14:57:18'),
(1200, 61, 'Lalmonirhat Sadar', '100', 1, '2021-08-28 14:57:34', '2021-08-28 14:57:34'),
(1201, 61, 'Patgram', '100', 1, '2021-08-28 14:57:50', '2021-08-28 14:57:50'),
(1202, 62, 'Dimla', '100', 1, '2021-08-28 14:59:34', '2021-08-28 14:59:34'),
(1203, 62, 'Domar', '100', 1, '2021-08-28 14:59:50', '2021-08-28 14:59:50'),
(1204, 62, 'Jaldhaka', '100', 1, '2021-08-28 15:00:06', '2021-08-28 15:00:06'),
(1205, 62, 'Kishoreganj ( Nilphamari)', '100', 1, '2021-08-28 15:00:20', '2021-08-28 15:00:20'),
(1206, 62, 'Nilphamari Sadar', '100', 1, '2021-08-28 15:02:28', '2021-08-28 15:02:28'),
(1207, 62, 'Saidpur', '100', 1, '2021-08-28 15:02:45', '2021-08-28 15:02:45'),
(1208, 63, 'Atwari (Panchagarh)', '100', 1, '2021-08-28 15:04:34', '2021-08-28 15:04:34'),
(1209, 63, 'Boda', '100', 1, '2021-08-28 15:04:53', '2021-08-28 15:04:53'),
(1210, 63, 'Debiganj', '100', 1, '2021-08-28 15:05:08', '2021-08-28 15:05:08'),
(1211, 63, 'Panchagarh Sadar', '100', 1, '2021-08-28 15:05:24', '2021-08-28 15:05:24'),
(1212, 63, 'Tetulia', '100', 1, '2021-08-28 15:05:41', '2021-08-28 15:05:41'),
(1213, 63, 'Thakurgaon', '100', 1, '2021-08-28 15:07:03', '2021-08-28 15:07:03'),
(1214, 64, 'Baliadangi', '100', 1, '2021-08-28 15:07:18', '2021-08-28 15:09:12'),
(1215, 64, 'Haripur', '100', 1, '2021-08-28 15:07:33', '2021-08-28 15:09:32'),
(1216, 64, 'Pirganj(Thakurgaon)', '100', 1, '2021-08-28 15:07:47', '2021-08-28 15:10:12'),
(1217, 64, 'Ranishankail', '100', 1, '2021-08-28 15:08:07', '2021-08-28 15:10:31'),
(1218, 64, 'Shibganj (Thakurgaon Sadar)', '100', 1, '2021-08-28 15:10:50', '2021-08-28 15:10:50'),
(1219, 64, 'Thakurgaon Sadar', '100', 1, '2021-08-28 15:11:13', '2021-08-28 15:11:13'),
(1220, 65, 'Ajmeriganj', '130', 1, '2021-09-03 14:46:38', '2021-09-03 14:46:38'),
(1221, 65, 'Bahubal', '130', 1, '2021-09-03 14:46:59', '2021-09-03 14:46:59'),
(1222, 65, 'Baniachang', '130', 1, '2021-09-03 14:47:15', '2021-09-03 14:47:15'),
(1223, 65, 'Chowdhury Bazar (Habiganj)', '130', 1, '2021-09-03 14:47:58', '2021-09-03 14:47:58'),
(1224, 65, 'Chunarughat', '130', 1, '2021-09-03 14:48:19', '2021-09-03 14:48:19'),
(1225, 65, 'Duliakal', '130', 1, '2021-09-03 14:48:37', '2021-09-03 14:48:37'),
(1226, 65, 'Gatiabazar', '130', 1, '2021-09-03 14:48:54', '2021-09-03 14:48:54'),
(1227, 65, 'Habiganj Sadar', '130', 1, '2021-09-03 14:49:12', '2021-09-03 14:49:12'),
(1228, 65, 'Lakhai', '130', 1, '2021-09-03 14:49:28', '2021-09-03 14:49:28'),
(1229, 65, 'Madhabpur', '130', 1, '2021-09-03 14:49:48', '2021-09-03 14:49:48'),
(1230, 65, 'Mahmudabad', '100', 1, '2021-09-03 14:50:21', '2021-09-03 14:50:21'),
(1231, 65, 'Mohonpur (Habiganj)', '130', 1, '2021-09-03 14:50:44', '2021-09-03 14:50:44'),
(1232, 65, 'Nabiganj', '130', 1, '2021-09-03 14:51:01', '2021-09-03 14:51:01'),
(1233, 65, 'Rajnogor', '130', 1, '2021-09-03 14:51:45', '2021-09-03 14:51:45'),
(1234, 65, 'Shayestaganj', '130', 1, '2021-09-03 14:52:04', '2021-09-03 14:52:04'),
(1235, 65, 'Sultanmahmudpur', '130', 1, '2021-09-03 14:52:23', '2021-09-03 14:52:23'),
(1236, 66, 'Barlekha', '130', 1, '2021-09-03 14:56:49', '2021-09-03 14:56:49'),
(1237, 66, 'Juri', '130', 1, '2021-09-03 14:57:05', '2021-09-03 14:57:05'),
(1238, 66, 'Kamalganj', '130', 1, '2021-09-03 14:57:21', '2021-09-03 14:57:21'),
(1239, 66, 'Kulaura', '130', 1, '2021-09-03 14:57:39', '2021-09-03 14:57:39'),
(1240, 66, 'Moulvibazar Sadar', '130', 1, '2021-09-03 14:58:01', '2021-09-03 14:58:01'),
(1241, 66, 'Rajnagar', '130', 1, '2021-09-03 14:58:17', '2021-09-03 14:58:17'),
(1242, 66, 'Sreemongal', '130', 1, '2021-09-03 14:58:35', '2021-09-03 14:58:35'),
(1243, 67, 'Biswambharpur', '130', 1, '2021-09-03 15:00:18', '2021-09-03 15:00:18'),
(1244, 67, 'Chattak', '130', 1, '2021-09-03 15:00:35', '2021-09-03 15:00:35'),
(1245, 67, 'Derai', '130', 1, '2021-09-03 15:00:51', '2021-09-03 15:00:51'),
(1246, 67, 'Dharmapasha', '130', 1, '2021-09-03 15:01:11', '2021-09-03 15:01:11'),
(1247, 67, 'Dowarabazar', '130', 1, '2021-09-03 15:01:44', '2021-09-03 15:01:44'),
(1248, 67, 'Hason Nagar', '130', 1, '2021-09-03 15:09:01', '2021-09-03 15:09:01'),
(1249, 67, 'Jagannathpur', '130', 1, '2021-09-03 15:09:17', '2021-09-03 15:09:17'),
(1250, 67, 'Jamalganj', '130', 1, '2021-09-03 15:09:35', '2021-09-03 15:09:35'),
(1251, 67, 'Kazirpoint (Sunamganj)', '130', 1, '2021-09-03 15:10:56', '2021-09-03 15:10:56'),
(1252, 67, 'Moddho bazar (Sunamganj)', '130', 1, '2021-09-03 15:11:14', '2021-09-03 15:11:14'),
(1253, 67, 'Old bustand (Sunamganj)', '130', 1, '2021-09-03 15:11:30', '2021-09-03 15:11:30'),
(1254, 67, 'South Sunamganj', '130', 1, '2021-09-03 15:11:48', '2021-09-03 15:11:48'),
(1255, 67, 'Sulla', '130', 1, '2021-09-03 15:12:04', '2021-09-03 15:12:04'),
(1256, 67, 'Taherpur', '130', 1, '2021-09-03 15:12:20', '2021-09-03 15:12:20'),
(1257, 67, 'Traffic Point (Sunamganj Sadar)', '130', 1, '2021-09-03 15:12:52', '2021-09-03 15:12:52'),
(1258, 67, 'wazkhali', '130', 1, '2021-09-03 15:13:09', '2021-09-03 15:13:09'),
(1259, 68, 'Akhalia', '130', 1, '2021-09-03 15:14:31', '2021-09-03 15:14:31'),
(1260, 68, 'Amberkhana (Sylhet)', '130', 1, '2021-09-03 15:15:25', '2021-09-03 15:15:25'),
(1261, 68, 'Balaganj', '130', 1, '2021-09-03 15:15:44', '2021-09-03 15:15:44'),
(1262, 68, 'Beanibazar', '130', 1, '2021-09-03 15:16:05', '2021-09-03 15:16:05'),
(1263, 68, 'Biswanath', '130', 1, '2021-09-03 15:16:20', '2021-09-03 15:16:20'),
(1264, 68, 'Companyganj (Sylhet)', '130', 1, '2021-09-03 15:16:36', '2021-09-03 15:16:36'),
(1265, 68, 'Fenchuganj', '130', 1, '2021-09-03 15:16:54', '2021-09-03 15:16:54'),
(1266, 68, 'Golapganj (Sylhet)', '130', 1, '2021-09-03 15:17:12', '2021-09-03 15:17:12'),
(1267, 68, 'Gowainghat', '130', 1, '2021-09-03 15:17:28', '2021-09-03 15:17:28'),
(1268, 68, 'Jaintapur', '130', 1, '2021-09-03 15:17:43', '2021-09-03 15:17:43'),
(1269, 68, 'Kanaighat', '130', 1, '2021-09-03 15:18:07', '2021-09-03 15:18:07'),
(1270, 68, 'Kodomtoli (Sylhet)', '130', 1, '2021-09-03 15:18:51', '2021-09-03 15:18:51'),
(1271, 68, 'Majortila', '130', 1, '2021-09-03 15:19:07', '2021-09-03 15:19:07'),
(1272, 68, 'Pathantula', '130', 1, '2021-09-03 15:19:27', '2021-09-03 15:19:27'),
(1273, 68, 'Sheikhghat', '130', 1, '2021-09-03 15:19:54', '2021-09-03 15:19:54'),
(1274, 68, 'Shibganj(sylhet)', '130', 1, '2021-09-03 15:20:09', '2021-09-03 15:20:09'),
(1275, 68, 'South Surma', '130', 1, '2021-09-03 15:20:28', '2021-09-03 15:20:28'),
(1276, 68, 'Subhanighat', '130', 1, '2021-09-03 15:20:44', '2021-09-03 15:20:44'),
(1277, 68, 'Subidbazar', '130', 1, '2021-09-03 15:21:01', '2021-09-03 15:21:01'),
(1278, 68, 'Tilaghor', '130', 1, '2021-09-03 15:21:17', '2021-09-03 15:21:17'),
(1279, 68, 'Uposhohor(Sylhet)', '130', 1, '2021-09-03 15:21:33', '2021-09-03 15:21:33'),
(1280, 68, 'Zakiganj', '130', 1, '2021-09-03 15:21:50', '2021-09-03 15:21:50'),
(1281, 68, 'Zindabazar', '130', 1, '2021-09-03 15:22:10', '2021-09-03 15:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'xl', 1, '2021-06-16 00:45:44', '2021-06-16 00:45:44'),
(2, 'xxl', 1, '2021-06-16 00:49:41', '2021-06-16 00:49:41'),
(3, 'L', 1, '2021-06-16 00:50:01', '2021-06-16 00:50:01'),
(4, 'M', 1, '2021-07-15 08:38:54', '2021-07-15 08:38:54'),
(5, '44', 1, '2021-07-15 08:46:36', '2021-07-15 08:46:36'),
(6, 'M(44,45,55)', 1, '2021-07-15 08:51:18', '2021-07-15 08:51:18'),
(7, 'S', 1, '2021-07-25 14:33:59', '2021-07-25 14:33:59'),
(8, 'M (Regular)', 1, '2021-07-25 14:46:23', '2021-07-25 14:46:23'),
(9, 'M 150-20-145', 1, '2021-07-27 13:50:23', '2021-07-27 13:50:23'),
(10, 'S 148-20-145', 1, '2021-07-27 13:50:50', '2021-07-27 13:50:50'),
(11, 'L 152-20-145', 1, '2021-07-27 13:51:14', '2021-07-27 13:51:14'),
(12, 'Over Size', 1, '2021-08-08 09:25:43', '2021-08-08 09:25:43');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_header` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `first_header`, `last_header`, `third_header`, `url`, `image`, `publication_status`, `created_at`, `updated_at`) VALUES
(44, 'MENS  SUNGLASSES', 'Don\'t Dress To Kill Dress To Survive', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/smenu/53/21/Men%27s', 'image/slider_image/1303019034.jpg', 0, '2021-07-23 10:08:33', '2021-09-05 18:32:48'),
(45, 'MENS EYEGLASSES', 'You Can See Clear Now', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/smenu/54/21/Men%27s', 'image/slider_image/1890898675.jpg', 0, '2021-07-23 10:11:24', '2021-09-05 18:32:44'),
(48, 'WOMEN\'S EYEGLASS', 'Better Vision With Better Fashion', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/smenu/56/22/Women%27s', 'image/slider_image/1026399130.jpg', 0, '2021-07-23 10:23:22', '2021-09-05 18:38:47'),
(49, 'BLUE LIGHT BLOCKING GLASSES', 'Protects Your Eyes From All Types Of Blue Light', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/menu/25/Anti%20Blue%20Light%20Frame', 'image/slider_image/363232251.jpg', 0, '2021-07-23 10:26:17', '2021-09-05 18:36:16'),
(51, 'WOMEN\'S SUNGLASS', 'Sunglasses are my eye sunscreen', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/smenu/55/22/Women%27s', 'image/slider_image/48074583.jpg', 0, '2021-07-23 10:35:48', '2021-09-05 18:34:33'),
(53, 'NIGHT-VISION GLASSES', 'Be safe in style.', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/menu/27/Nigh-vision%20Glass', 'image/slider_image/1774049468.jpg', 0, '2021-07-23 10:44:52', '2021-09-05 18:32:22'),
(54, 'SPORT\'S SUNGLASS', 'Achieve success with great success', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/menu/28/Sports%20glass', 'image/slider_image/75509421.jpg', 0, '2021-07-23 10:53:39', '2021-09-05 18:28:15'),
(56, 'CONTACT LENSES', 'Change Your Shades Change Your', 'Started Form 350', 'https://aisoftware-solutions.com/sunglasshutbd/menu/24/Contact%20Lens', 'image/slider_image/451156219.jpg', 1, '2021-08-26 17:05:02', '2021-08-26 17:05:02'),
(57, 'SPORT\'S SUNGLASS', 'Wear glasses look perfect and see the difference', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/menu/28/Sports%20glass', 'image/slider_image/383953770.jpg', 1, '2021-09-05 18:28:10', '2021-09-05 18:28:10'),
(58, 'NIGHT-VISION GLASSES', 'Be safe in style.', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/menu/27/Nigh-vision%20Glass', 'image/slider_image/802201955.jpg', 1, '2021-09-05 18:31:37', '2021-09-05 18:31:37'),
(59, 'WOMEN\'S SUNGLASS', 'Sunglasses are my eye sunscreen', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/smenu/55/22/Women%27s', 'image/slider_image/111389013.jpg', 1, '2021-09-05 18:34:27', '2021-09-05 18:34:27'),
(60, 'BLUE LIGHT BLOCKING GLASSES', 'Protects Your Eyes From All Types Of Blue Light', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/menu/25/Anti%20Blue%20Light%20Frame', 'image/slider_image/1737869095.jpg', 1, '2021-09-05 18:36:08', '2021-09-05 18:36:08'),
(61, 'WOMEN\'S EYEGLASS', 'Better Vision With Better Fashion', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/smenu/56/22/Women%27s', 'image/slider_image/1412951335.jpg', 1, '2021-09-05 18:38:30', '2021-09-05 18:38:30'),
(62, 'MENS EYEGLASSES', 'You Can See Clear Now', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/smenu/54/21/Men%27s?page=1', 'image/slider_image/1486931777.jpg', 1, '2021-09-05 18:40:21', '2021-09-05 18:40:21'),
(63, 'MENS  SUNGLASSES', 'Don\'t Dress To Kill Dress To Survive', 'Collect Yours Before Stock Out', 'https://aisoftware-solutions.com/sunglasshutbd/smenu/53/21/Men%27s', 'image/slider_image/1441577693.jpg', 1, '2021-09-05 18:41:30', '2021-09-05 18:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subscrib_modals`
--

CREATE TABLE `subscrib_modals` (
  `id` bigint(20) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `image` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscrib_modals`
--

INSERT INTO `subscrib_modals` (`id`, `heading`, `text`, `image`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'I use animation as a third dimension by which to simplify', '<p>I use animation as a third dimension by which to simplify\r\n                                        experiences and kuiding thro each and every interaction. I’m not adding\r\n                                        experiences and kuiding thro each and every interaction. I’m not adding\r\n                                        motion just to spruce things up, but doing it in ways that. <br></p>', 'admin/upload-image/subscribe-image/blog-8902566.jpeg', 1, '2021-11-06 01:55:06', '2021-11-19 22:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `sub_category_name`, `publication_status`, `created_at`, `updated_at`) VALUES
(53, 21, 'Men\'s Sunglass', 1, '2021-07-15 13:55:01', '2021-07-15 13:55:01'),
(54, 21, 'Men\'s Frame', 1, '2021-07-15 13:55:39', '2021-07-15 13:55:39'),
(55, 22, 'Women\'s sunglass', 1, '2021-07-15 13:56:21', '2021-07-15 13:56:21'),
(56, 22, 'Women\'s Frame', 1, '2021-07-15 13:56:38', '2021-07-15 14:11:13'),
(57, 23, 'Kid\'s sunglass', 1, '2021-07-15 13:57:04', '2021-07-15 13:57:04'),
(58, 23, 'Kid\'s Frame', 1, '2021-07-15 13:57:42', '2021-07-15 13:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_primary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_secondary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `supplier_name`, `email`, `phone_primary`, `phone_secondary`, `address`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Jafor H. Rabbi', 'ai@gmail.com', '01671338424', '01671338424', 'steew', 0, '2020-08-18 05:35:54', '2021-04-05 05:28:22'),
(2, 'jk International', 'jk-International@gmail.com', '01111111111', '01111111111', 'Dhaka', 1, '2021-04-05 05:28:16', '2021-04-05 05:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `upload_shops`
--

CREATE TABLE `upload_shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `upload_shops`
--

INSERT INTO `upload_shops` (`id`, `phone`, `image`, `created_at`, `updated_at`) VALUES
(6, '01761018969', 'image/upload_shop/22943846.PNG', '2020-09-07 04:00:32', '2020-09-07 04:00:32'),
(7, '01761018969', 'image/upload_shop/2025372977.PNG', '2020-09-07 04:01:51', '2020-09-07 04:01:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Jafor H. Rabbi', 'ai@gmail.com', NULL, '$2y$10$/IunVrku0yrU00up3rmtduqJp4JF0HVcTEQy7TepMIj8.tluQaDVG', 'LLQghwnV4Ic2ibk2IZYZjZymmZpE6cXzODyav1mb4UUlvulVrvXl5Ypyff7L', '2020-08-16 01:33:01', '2020-08-16 01:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(5, '1', '6', '2020-09-03 03:45:57', '2020-09-03 03:45:57'),
(6, '3', '8', '2020-09-07 22:25:26', '2020-09-07 22:25:26'),
(7, '4', '8', '2020-09-08 00:08:48', '2020-09-08 00:08:48'),
(8, '1', '29', '2020-09-10 23:56:51', '2020-09-10 23:56:51'),
(9, '1', '44', '2020-09-10 23:57:02', '2020-09-10 23:57:02'),
(14, '1', '19', '2021-07-14 01:30:49', '2021-07-14 01:30:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bolgs`
--
ALTER TABLE `bolgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compares`
--
ALTER TABLE `compares`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_displays`
--
ALTER TABLE `coupon_displays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `divisions_division_unique` (`division`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `free_shippings`
--
ALTER TABLE `free_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lens_prices`
--
ALTER TABLE `lens_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lens_types`
--
ALTER TABLE `lens_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_colors`
--
ALTER TABLE `product_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sub_images`
--
ALTER TABLE `product_sub_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscrib_modals`
--
ALTER TABLE `subscrib_modals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_shops`
--
ALTER TABLE `upload_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bolgs`
--
ALTER TABLE `bolgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `compares`
--
ALTER TABLE `compares`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupon_displays`
--
ALTER TABLE `coupon_displays`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `flash_sale_items`
--
ALTER TABLE `flash_sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=344;

--
-- AUTO_INCREMENT for table `free_shippings`
--
ALTER TABLE `free_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lens_prices`
--
ALTER TABLE `lens_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lens_types`
--
ALTER TABLE `lens_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `product_colors`
--
ALTER TABLE `product_colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `product_sub_categories`
--
ALTER TABLE `product_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `product_sub_images`
--
ALTER TABLE `product_sub_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=746;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `shipping_rates`
--
ALTER TABLE `shipping_rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1282;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscrib_modals`
--
ALTER TABLE `subscrib_modals`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload_shops`
--
ALTER TABLE `upload_shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
