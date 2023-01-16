-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2023 at 11:35 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelkudotcom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `picture`, `token`, `created_at`, `updated_at`) VALUES
(1, 'Adie Firman', 'adie@gmail.com', '$2y$10$S750YDucZaqsA3DmTITahOYIX/4hmNx9iZkyMIGPDe1v9ymuxL7Ee', 'admin.jpg', '', NULL, '2023-01-06 23:59:03');

-- --------------------------------------------------------

--
-- Table structure for table `booked_rooms`
--

CREATE TABLE `booked_rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booked_rooms`
--

INSERT INTO `booked_rooms` (`id`, `booking_date`, `order_no`, `room_id`, `created_at`, `updated_at`) VALUES
(1, '15/01/2023', '1673534696', 2, NULL, NULL),
(2, '16/01/2023', '1673534696', 2, NULL, NULL),
(3, '19/01/2023', '1673534696', 3, NULL, NULL),
(4, '25/01/2023', '1673534798', 4, NULL, NULL),
(5, '26/01/2023', '1673534798', 4, NULL, NULL),
(6, '27/01/2023', '1673534798', 4, NULL, NULL),
(7, '22/02/2023', '1673535761', 2, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(8, '23/02/2023', '1673535761', 2, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(9, '24/02/2023', '1673535761', 2, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(10, '25/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(11, '26/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(12, '27/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(13, '28/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(14, '29/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(15, '30/01/2023', '1673535761', 4, '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(16, '29/01/2023', '1673538788', 4, '2023-01-12 08:53:09', '2023-01-12 08:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `country` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `state` text COLLATE utf8mb4_unicode_ci,
  `city` text COLLATE utf8mb4_unicode_ci,
  `zip` text COLLATE utf8mb4_unicode_ci,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `phone`, `country`, `address`, `state`, `city`, `zip`, `photo`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adie', 'adi.firman468@gmail.com', '$2y$10$cZMc9mQgra/6E/3LkFXNOuKo7b.I.uuzFvNHsE1aK7HEuE50kTVgq', '+62895333301831', 'Indonesia', 'JL Mawar', 'Jawa Barat', 'Ciamis', '17411', '1673549536.jpg', '', 1, '2023-01-10 08:12:43', '2023-01-12 11:52:16'),
(2, 'Daniel Moranta', 'daniel@gmail.com', '$2y$10$Sz6v0MNsJzxWPrcL8EvEyejEafqFnXXO2ZPqRDcta79AR7TSyqmei', '0812323252', 'Indonesia', 'JL Melati', 'Jawa Barat', 'Bekasi', '11324', NULL, '', 1, '2023-01-12 04:02:35', '2023-01-12 04:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Free Wifi', '2023-01-09 09:33:00', '2023-01-09 09:36:14'),
(3, 'Air Conditioner', '2023-01-09 09:33:09', '2023-01-09 09:36:29'),
(4, 'Free Breakfast', '2023-01-09 09:36:43', '2023-01-09 09:36:43'),
(5, 'Personal Care', '2023-01-09 09:36:58', '2023-01-09 09:36:58'),
(6, 'Gym', '2023-01-09 09:37:02', '2023-01-09 09:37:02'),
(7, 'Swimming Pool', '2023-01-09 09:37:09', '2023-01-09 09:37:09'),
(8, 'Parking', '2023-01-09 09:37:15', '2023-01-09 09:37:15'),
(9, 'Coffee Maker', '2023-01-09 09:37:24', '2023-01-09 09:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'What is Lorem Ipsum?', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '2023-01-08 07:34:11', '2023-01-08 07:34:11'),
(2, 'Where does it come from?', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2023-01-08 07:34:28', '2023-01-08 07:34:28'),
(3, 'Why do we use it?', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). ,,,,</span><br></p>', '2023-01-08 07:34:46', '2023-01-08 07:36:55'),
(4, 'Where can I get some?', '<p><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span><br></p>', '2023-01-08 07:35:00', '2023-01-08 07:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `icon`, `heading`, `text`, `created_at`, `updated_at`) VALUES
(1, 'fa fa-clock-o', '24 hour Room service', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:52:56', '2023-01-07 10:53:08'),
(2, 'fa fa-wifi', 'Free Wifi', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:53:47', '2023-01-07 10:53:47'),
(3, 'far fa-handshake', 'Enjoy Free Nights', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:54:14', '2023-01-08 09:06:30'),
(4, 'fa fa-money', 'Save up to 40%', 'Members get access to an exclusive discounts on Radissonblu.com. Not a member yet? Hurry Up!', '2023-01-07 10:54:39', '2023-01-07 10:54:39'),
(5, 'fa fa-coffee', 'Complimentary Breakfast', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:55:29', '2023-01-07 10:55:29'),
(6, 'fas fa-swimmer', 'Swimming Pool', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:56:17', '2023-01-08 09:09:37'),
(7, 'fas fa-dumbbell', 'Gym and Fitness', 'If you find a lower online rate, we will match it and give you an additional 25% off on your stay.', '2023-01-07 10:56:42', '2023-01-08 09:12:00'),
(9, 'fas fa-utensils', 'Top Class Restaurant', NULL, '2023-01-07 11:01:06', '2023-01-08 09:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `image`, `caption`, `created_at`, `updated_at`) VALUES
(1, 'IMG-1673171797.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet imperdiet velit. Donec fringilla ipsum at odio tincidunt, sed eleifend est ultricies. Mauris aliquam id nunc vitae egestas.', '2023-01-08 02:56:37', '2023-01-08 02:56:37'),
(2, '1673171831.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2023-01-08 02:56:45', '2023-01-08 02:57:11'),
(3, 'IMG-1673171897.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet imperdiet velit. Donec fringilla ipsum at odio tincidunt, sed eleifend est ultricies. Mauris aliquam id nunc vitae egestas.', '2023-01-08 02:58:17', '2023-01-08 02:58:17'),
(4, 'IMG-1673171907.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet imperdiet velit. Donec fringilla ipsum at odio tincidunt, sed eleifend est ultricies. Mauris aliquam id nunc vitae egestas.', '2023-01-08 02:58:27', '2023-01-08 02:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_06_143511_create_admins_table', 1),
(6, '2023_01_07_123611_create_slides_table', 2),
(7, '2023_01_08_021258_create_features_table', 3),
(8, '2023_01_08_033305_create_testimonials_table', 4),
(9, '2023_01_08_032744_create_posts_table', 5),
(10, '2023_01_08_085841_create_galleries_table', 6),
(11, '2023_01_08_111414_create_videos_table', 7),
(12, '2023_01_08_141521_create_faqs_table', 8),
(13, '2023_01_08_153102_create_pages_table', 9),
(14, '2023_01_09_145323_create_subscribers_table', 10),
(15, '2023_01_09_160420_create_facilities_table', 11),
(16, '2023_01_09_163859_create_rooms_table', 12),
(18, '2023_01_09_164849_create_room_images_table', 13),
(19, '2023_01_10_044020_create_customers_table', 14),
(22, '2023_01_11_180204_create_orders_table', 15),
(23, '2023_01_11_180707_create_order_details_table', 15),
(24, '2023_01_12_142616_create_booked_rooms_table', 16),
(25, '2023_01_12_162536_create_settings_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int NOT NULL,
  `order_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_last_digit` text COLLATE utf8mb4_unicode_ci,
  `paid_amount` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `order_no`, `transaction_id`, `payment_method`, `card_last_digit`, `paid_amount`, `booking_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '1673534696', 'PAYID-MPABZPI0LX72167N6320005V', 'PayPal', NULL, '12.00', '12/01/2023', 'Completed', '2023-01-12 07:44:56', '2023-01-12 07:44:56'),
(2, 2, '1673534798', 'PAYID-MPAB2QA79C823046N220011F', 'PayPal', NULL, '12.00', '12/01/2023', 'Completed', '2023-01-12 07:46:38', '2023-01-12 07:46:38'),
(3, 1, '1673535703', 'PAYID-MPACBPA2HW368750M030951V', 'PayPal', NULL, '39.00', '12/01/2023', 'Completed', '2023-01-12 08:01:43', '2023-01-12 08:01:43'),
(4, 1, '1673535761', 'PAYID-MPACBPA2HW368750M030951V', 'PayPal', NULL, '39.00', '12/01/2023', 'Completed', '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(5, 1, '1673538788', 'PAYID-MPACZQA797441615U007061F', 'PayPal', NULL, '4.00', '12/01/2023', 'Completed', '2023-01-12 08:53:08', '2023-01-12 08:53:08');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` int NOT NULL,
  `room_id` int NOT NULL,
  `order_no` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkin_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `adult` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `children` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `room_id`, `order_no`, `checkin_date`, `checkout_date`, `adult`, `children`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '1673534696', '15/01/2023', '17/01/2023', '2', '1', '10', '2023-01-12 07:44:57', '2023-01-12 07:44:57'),
(2, 1, 3, '1673534696', '19/01/2023', '20/01/2023', '2', '1', '2', '2023-01-12 07:44:57', '2023-01-12 07:44:57'),
(3, 2, 4, '1673534798', '25/01/2023', '28/01/2023', '2', '1', '12', '2023-01-12 07:46:38', '2023-01-12 07:46:38'),
(4, 3, 2, '1673535703', '22/02/2023', '25/02/2023', '2', '1', '15', '2023-01-12 08:01:43', '2023-01-12 08:01:43'),
(5, 4, 2, '1673535761', '22/02/2023', '25/02/2023', '2', '1', '15', '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(6, 4, 4, '1673535761', '25/01/2023', '31/01/2023', '2', '1', '24', '2023-01-12 08:02:41', '2023-01-12 08:02:41'),
(7, 5, 4, '1673538788', '29/01/2023', '30/01/2023', '2', '1', '4', '2023-01-12 08:53:09', '2023-01-12 08:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `about_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_status` int NOT NULL,
  `terms_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms_status` int NOT NULL,
  `privacy_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacy_status` int NOT NULL,
  `contact_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_status` int NOT NULL,
  `image_gallery_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_gallery_status` int NOT NULL,
  `video_gallery_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_gallery_status` int NOT NULL,
  `faq_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_status` int NOT NULL,
  `blog_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_status` int NOT NULL,
  `room_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart_status` int NOT NULL,
  `checkout_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_status` int NOT NULL,
  `payment_heading` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signup_status` int NOT NULL,
  `signin_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `signin_status` int NOT NULL,
  `forget_password_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_password_heading` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `about_heading`, `about_content`, `about_status`, `terms_heading`, `terms_content`, `terms_status`, `privacy_heading`, `privacy_content`, `privacy_status`, `contact_heading`, `contact_map`, `contact_status`, `image_gallery_heading`, `image_gallery_status`, `video_gallery_heading`, `video_gallery_status`, `faq_heading`, `faq_status`, `blog_heading`, `blog_status`, `room_heading`, `cart_heading`, `cart_status`, `checkout_heading`, `checkout_status`, `payment_heading`, `signup_heading`, `signup_status`, `signin_heading`, `signin_status`, `forget_password_heading`, `reset_password_heading`, `created_at`, `updated_at`) VALUES
(1, 'About Us', '<p style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p><p style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p><p style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p><p style=\"color: rgb(33, 37, 41); font-family: Karla, sans-serif; font-size: 16px;\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio. Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic iure delectus, aperiam eius sed suscipit corporis quas, nisi dicta harum excepturi quis est id deserunt a, ipsa autem in distinctio.</p>', 1, 'Terms and Conditions', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet imperdiet velit. Donec fringilla ipsum at odio tincidunt, sed eleifend est ultricies. Mauris aliquam id nunc vitae egestas. Phasellus fringilla, orci eu venenatis gravida, enim lorem suscipit tortor, et placerat erat sem ac ex. Pellentesque magna libero, condimentum eget diam vitae, scelerisque varius orci. Vestibulum tempor vulputate diam, eget aliquam mauris hendrerit et. Ut et libero auctor, accumsan turpis vel, laoreet odio.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Mauris imperdiet nulla nulla, non pharetra justo placerat ut. Mauris lorem urna, egestas quis gravida id, pretium sed dolor. Etiam molestie magna auctor lacus pulvinar lobortis. Maecenas feugiat mattis velit at porta. Morbi tincidunt, velit id porta ultrices, nisi odio lobortis lacus, sit amet aliquet purus enim sit amet ipsum. Nulla sit amet mauris eget leo condimentum semper nec at ipsum. Phasellus nec dictum risus. Mauris id finibus quam. Vestibulum porta nulla sit amet tortor placerat accumsan. Aenean efficitur commodo purus at finibus. Phasellus sed dignissim diam, at vulputate magna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed laoreet pharetra blandit. Maecenas lacinia turpis eget nunc tempus tincidunt. Nullam cursus varius erat eget tincidunt. Aliquam eu eros sed diam volutpat ultricies. Aenean ullamcorper odio erat, a aliquet lectus semper sit amet. Aenean arcu purus, iaculis quis rutrum vitae, faucibus et nisi. Etiam tellus eros, sollicitudin id aliquam ut, suscipit id ante. Duis congue a orci a aliquam. Vestibulum nec risus bibendum, mollis purus vitae, efficitur lectus. Quisque sed eros non elit ultricies aliquam. Vivamus imperdiet sagittis odio, quis hendrerit eros. Etiam a ante ac velit egestas ultricies non sed mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>', 1, 'Privacy Policy', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla lobortis sed erat tincidunt malesuada. Vestibulum aliquet ultricies velit, non dictum odio. Aliquam finibus in felis ac rhoncus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed massa nunc, ultrices quis tempus ac, rhoncus rhoncus quam. In sed neque a urna pretium accumsan. Donec in elementum lacus. Aenean nulla ex, faucibus at ante rutrum, aliquet elementum libero. Curabitur vel rhoncus lectus. Fusce dictum ante eget lacus laoreet facilisis. Vestibulum a rutrum erat. Sed non ante sodales, semper est eget, blandit ligula.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Quisque leo nunc, suscipit eu massa et, interdum suscipit augue. Nam ullamcorper enim enim, sit amet laoreet ex facilisis a. Donec vel eros quam. Ut posuere, lorem ac aliquam pulvinar, erat neque tristique ante, quis aliquam sem nibh sit amet quam. Nam vel efficitur orci. Morbi et lorem bibendum, elementum sapien a, tincidunt quam. Aenean tristique nec velit feugiat gravida. Donec eleifend ultrices accumsan. Etiam vitae blandit dui, vitae scelerisque libero. Vivamus viverra ac erat ac iaculis. Nam eleifend varius metus. Nunc elit lacus, bibendum id metus nec, eleifend maximus lorem. Vivamus facilisis ac purus congue faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Aliquam erat volutpat. Quisque et quam eu nibh dignissim vulputate quis quis risus. Suspendisse vitae sodales nibh. Praesent viverra ullamcorper fermentum. Ut ex mauris, scelerisque ut felis non, suscipit sollicitudin dui. Nulla eu quam suscipit, ultricies turpis quis, condimentum orci. Etiam id condimentum orci. Donec sit amet urna sem. Quisque euismod arcu nec dolor auctor, at tempor est rhoncus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer quis ultricies ligula, non elementum ex. Nulla auctor nunc diam, eget sollicitudin dolor elementum ac. Etiam quam mauris, fringilla eget urna in, iaculis condimentum tellus. Fusce tincidunt dictum libero, eu dignissim nibh vestibulum ac. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Quisque eu consectetur mi. Vivamus in risus nec diam iaculis convallis sed tempor dui. Nam non hendrerit mi, ac hendrerit tellus. Pellentesque rhoncus non lorem id dictum. Nullam luctus rhoncus leo, id faucibus risus sollicitudin quis. Phasellus sed tempus tellus. Praesent dolor massa, sagittis gravida euismod nec, tincidunt non libero.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Fusce id auctor ligula. Praesent finibus nulla in dolor commodo porttitor. Duis ipsum sem, pharetra ac ultrices eget, pellentesque vel nulla. Donec dapibus lobortis quam eget faucibus. Nam nec justo egestas, scelerisque purus eget, lobortis ipsum. Aenean et blandit neque. Fusce non turpis condimentum, feugiat turpis eu, rutrum nulla.</p>', 1, 'Contact Us', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126748.6145387566!2d107.4872652640447!3d-6.903253701014509!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e6398252477f%3A0x146a1f93d3e815b2!2sBandung%2C%20Kota%20Bandung%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1673240699948!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 1, 'Image Gallery', 1, 'Video Gallery', 1, 'FAQs', 1, 'Blog', 1, 'Room and Suites', 'Cart', 1, 'Checkout', 1, 'Payment', 'Sign Up', 1, 'Sign In', 1, 'Forget Password', 'Reset Password', NULL, '2023-01-10 10:19:50');

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_view` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `heading`, `short_desc`, `content`, `total_view`, `created_at`, `updated_at`) VALUES
(1, 'post-img-1673155058.jpg', 'Lorem ipsum', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum feugiat urna nunc, eu cursus leo bibendum vel. Curabitur quis scelerisque dolor. Suspendisse sed ultricies sem. Nunc commodo quam et vehicula egestas. Mauris ac purus risus. Maecenas non nisi tellus. Sed interdum lorem ut elit scelerisque ultrices.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum feugiat urna nunc, eu cursus leo bibendum vel. Curabitur quis scelerisque dolor. Suspendisse sed ultricies sem. Nunc commodo quam et vehicula egestas. Mauris ac purus risus. Maecenas non nisi tellus. Sed interdum lorem ut elit scelerisque ultrices.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin velit purus, laoreet at consectetur at, hendrerit eleifend metus. Fusce eu leo venenatis, rhoncus justo eget, consectetur tortor. Donec vel ipsum viverra, tincidunt massa eu, finibus purus. In a cursus metus. Sed volutpat placerat purus, in tempor ante. Pellentesque mattis leo tempor tortor tincidunt, sit amet auctor ligula malesuada. Aenean lacinia neque sit amet urna rutrum, a euismod orci eleifend. Vivamus est diam, viverra eu dui quis, feugiat cursus justo. Quisque sodales nunc tempor sollicitudin ultricies.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">In hac habitasse platea dictumst. Etiam quis bibendum tellus. Donec eget massa at lacus efficitur volutpat a id purus. Nunc id dui nec est vestibulum condimentum at sed odio. Cras consequat mattis ultricies. Integer elementum lacus at blandit euismod. Cras egestas, nisl ut mollis lobortis, erat est sollicitudin nisl, a mattis nulla felis eget quam. Integer in interdum est. Nam tempor ante diam, in semper odio aliquam sit amet. Ut nec dictum mi, quis laoreet dolor.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Nullam elementum, urna eu pellentesque vehicula, lorem lectus varius nisl, eu mattis diam enim sed mauris. Etiam tincidunt dolor id arcu bibendum, at porta eros iaculis. Aenean eleifend imperdiet metus id fermentum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nibh nisi, pellentesque non velit quis, tempus posuere est. Maecenas blandit ipsum mauris, at condimentum elit tincidunt non. Ut a viverra ligula. Morbi ultrices laoreet libero ut aliquam. Nullam sollicitudin elit sit amet massa porta suscipit. Suspendisse feugiat vel risus in blandit. Praesent sit amet lacus sed augue fringilla vehicula.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Donec quis urna id magna fermentum vehicula. Ut at nisi viverra, blandit nibh vitae, sodales dolor. Pellentesque at hendrerit justo. Cras orci sapien, tempor condimentum congue ac, suscipit in elit. Nulla id urna non ipsum egestas blandit quis a urna. Nullam fermentum, nunc ut bibendum rutrum, dolor mi tristique turpis, id luctus nulla arcu in ligula. Duis leo lectus, faucibus ut dictum ut, rutrum sed massa. Morbi congue vitae turpis viverra vehicula. Ut est dolor, hendrerit ut lacinia ullamcorper, laoreet nec eros.</p>', 4, '2023-01-07 22:17:38', '2023-01-08 00:43:46'),
(2, 'post-img-1673155210.jpg', 'Lorem ipsum 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum 2', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet imperdiet velit. Donec fringilla ipsum at odio tincidunt, sed eleifend est ultricies. Mauris aliquam id nunc vitae egestas. Phasellus fringilla, orci eu venenatis gravida, enim lorem suscipit tortor, et placerat erat sem ac ex. Pellentesque magna libero, condimentum eget diam vitae, scelerisque varius orci. Vestibulum tempor vulputate diam, eget aliquam mauris hendrerit et. Ut et libero auctor, accumsan turpis vel, laoreet odio.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Mauris imperdiet nulla nulla, non pharetra justo placerat ut. Mauris lorem urna, egestas quis gravida id, pretium sed dolor. Etiam molestie magna auctor lacus pulvinar lobortis. Maecenas feugiat mattis velit at porta. Morbi tincidunt, velit id porta ultrices, nisi odio lobortis lacus, sit amet aliquet purus enim sit amet ipsum. Nulla sit amet mauris eget leo condimentum semper nec at ipsum. Phasellus nec dictum risus. Mauris id finibus quam. Vestibulum porta nulla sit amet tortor placerat accumsan. Aenean efficitur commodo purus at finibus. Phasellus sed dignissim diam, at vulputate magna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed laoreet pharetra blandit. Maecenas lacinia turpis eget nunc tempus tincidunt. Nullam cursus varius erat eget tincidunt. Aliquam eu eros sed diam volutpat ultricies. Aenean ullamcorper odio erat, a aliquet lectus semper sit amet. Aenean arcu purus, iaculis quis rutrum vitae, faucibus et nisi. Etiam tellus eros, sollicitudin id aliquam ut, suscipit id ante. Duis congue a orci a aliquam. Vestibulum nec risus bibendum, mollis purus vitae, efficitur lectus. Quisque sed eros non elit ultricies aliquam. Vivamus imperdiet sagittis odio, quis hendrerit eros. Etiam a ante ac velit egestas ultricies non sed mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vivamus nibh sem, fermentum nec erat vitae, dictum euismod justo. Integer nec turpis maximus, commodo ex nec, condimentum arcu. Nullam mauris metus, tristique sit amet mi ullamcorper, hendrerit rhoncus libero. Quisque vestibulum a diam quis fringilla. Suspendisse accumsan nisl ut odio hendrerit, quis dignissim massa faucibus. Donec ac dictum nibh, non laoreet elit. Cras hendrerit diam nec facilisis faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Maecenas mi urna, cursus at mauris sit amet, aliquet pharetra nibh. Aliquam erat volutpat. Praesent sit amet imperdiet nisl. Proin eleifend consectetur leo id laoreet. Duis sem ex, finibus et gravida et, volutpat eget libero. Ut varius, turpis non congue fringilla, arcu lacus aliquam diam, vel blandit erat ipsum sit amet augue. Nunc at mi sit amet quam malesuada gravida. Morbi non elementum justo, eget vulputate odio. Pellentesque elementum pulvinar nulla, ut ornare purus viverra ultrices. 2</p>', 7, '2023-01-07 22:19:39', '2023-01-10 10:27:39'),
(3, 'post-img-1673156045.jpg', 'Lorem ipsum dolor sit ame', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi sit amet imperdiet velit. Donec fringilla ipsum at odio tincidunt, sed eleifend est ultricies. Mauris aliquam id nunc vitae egestas. Phasellus fringilla, orci eu venenatis gravida, enim lorem suscipit tortor, et placerat erat sem ac ex. Pellentesque magna libero, condimentum eget diam vitae, scelerisque varius orci. Vestibulum tempor vulputate diam, eget aliquam mauris hendrerit et. Ut et libero auctor, accumsan turpis vel, laoreet odio.', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Mauris imperdiet nulla nulla, non pharetra justo placerat ut. Mauris lorem urna, egestas quis gravida id, pretium sed dolor. Etiam molestie magna auctor lacus pulvinar lobortis. Maecenas feugiat mattis velit at porta. Morbi tincidunt, velit id porta ultrices, nisi odio lobortis lacus, sit amet aliquet purus enim sit amet ipsum. Nulla sit amet mauris eget leo condimentum semper nec at ipsum. Phasellus nec dictum risus. Mauris id finibus quam. Vestibulum porta nulla sit amet tortor placerat accumsan. Aenean efficitur commodo purus at finibus. Phasellus sed dignissim diam, at vulputate magna.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Sed laoreet pharetra blandit. Maecenas lacinia turpis eget nunc tempus tincidunt. Nullam cursus varius erat eget tincidunt. Aliquam eu eros sed diam volutpat ultricies. Aenean ullamcorper odio erat, a aliquet lectus semper sit amet. Aenean arcu purus, iaculis quis rutrum vitae, faucibus et nisi. Etiam tellus eros, sollicitudin id aliquam ut, suscipit id ante. Duis congue a orci a aliquam. Vestibulum nec risus bibendum, mollis purus vitae, efficitur lectus. Quisque sed eros non elit ultricies aliquam. Vivamus imperdiet sagittis odio, quis hendrerit eros. Etiam a ante ac velit egestas ultricies non sed mi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Vivamus nibh sem, fermentum nec erat vitae, dictum euismod justo. Integer nec turpis maximus, commodo ex nec, condimentum arcu. Nullam mauris metus, tristique sit amet mi ullamcorper, hendrerit rhoncus libero. Quisque vestibulum a diam quis fringilla. Suspendisse accumsan nisl ut odio hendrerit, quis dignissim massa faucibus. Donec ac dictum nibh, non laoreet elit. Cras hendrerit diam nec facilisis faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Maecenas mi urna, cursus at mauris sit amet, aliquet pharetra nibh. Aliquam erat volutpat. Praesent sit amet imperdiet nisl. Proin eleifend consectetur leo id laoreet. Duis sem ex, finibus et gravida et, volutpat eget libero. Ut varius, turpis non congue fringilla, arcu lacus aliquam diam, vel blandit erat ipsum sit amet augue. Nunc at mi sit amet quam malesuada gravida. Morbi non elementum justo, eget vulputate odio. Pellentesque elementum pulvinar nulla, ut ornare purus viverra ultrices.</p>', 16, '2023-01-07 22:34:05', '2023-01-12 20:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_rooms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `facilities` text COLLATE utf8mb4_unicode_ci,
  `size` text COLLATE utf8mb4_unicode_ci,
  `total_beds` text COLLATE utf8mb4_unicode_ci,
  `total_bathrooms` text COLLATE utf8mb4_unicode_ci,
  `total_balconies` text COLLATE utf8mb4_unicode_ci,
  `total_guests` text COLLATE utf8mb4_unicode_ci,
  `featured_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_id` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `description`, `price`, `total_rooms`, `facilities`, `size`, `total_beds`, `total_bathrooms`, `total_balconies`, `total_guests`, `featured_image`, `video_id`, `created_at`, `updated_at`) VALUES
(2, 'Deluxe Room', '<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla lobortis sed erat tincidunt malesuada. Vestibulum aliquet ultricies velit, non dictum odio. Aliquam finibus in felis ac rhoncus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed massa nunc, ultrices quis tempus ac, rhoncus rhoncus quam. In sed neque a urna pretium accumsan. Donec in elementum lacus. Aenean nulla ex, faucibus at ante rutrum, aliquet elementum libero. Curabitur vel rhoncus lectus. Fusce dictum ante eget lacus laoreet facilisis. Vestibulum a rutrum erat. Sed non ante sodales, semper est eget, blandit ligula.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Quisque leo nunc, suscipit eu massa et, interdum suscipit augue. Nam ullamcorper enim enim, sit amet laoreet ex facilisis a. Donec vel eros quam. Ut posuere, lorem ac aliquam pulvinar, erat neque tristique ante, quis aliquam sem nibh sit amet quam. Nam vel efficitur orci. Morbi et lorem bibendum, elementum sapien a, tincidunt quam. Aenean tristique nec velit feugiat gravida. Donec eleifend ultrices accumsan. Etiam vitae blandit dui, vitae scelerisque libero. Vivamus viverra ac erat ac iaculis. Nam eleifend varius metus. Nunc elit lacus, bibendum id metus nec, eleifend maximus lorem. Vivamus facilisis ac purus congue faucibus.</p>', '5', '2', '2,3,4,6,7,8', '25', '2', '1', '1', '3', '1673290144.jpg', 'BETRuf-LoW0', '2023-01-09 11:49:04', '2023-01-11 10:50:17'),
(3, 'Simple Room', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '2', '10', '2,3,4', '20', '2', '1', NULL, '2', '1673319597.jpg', 'BETRuf-LoW0', '2023-01-09 19:59:57', '2023-01-11 10:50:40'),
(4, 'Luxury', '<p><strong style=\"margin: 0px; padding: 0px; font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</strong><span style=\"font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><br></p>', '4', '2', '2,3,4,5,6,7,8,9', '30', '4', '1', '1', '4', '1673319681.jpg', 'BETRuf-LoW0', '2023-01-09 20:01:21', '2023-01-12 08:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` bigint UNSIGNED NOT NULL,
  `room_id` int NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`id`, `room_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 2, '1673290254.jpg', '2023-01-09 11:50:54', '2023-01-09 11:50:54'),
(2, 2, '1673290261.jpg', '2023-01-09 11:51:01', '2023-01-09 11:51:01'),
(4, 2, '1673290278.jpg', '2023-01-09 11:51:18', '2023-01-09 11:51:18'),
(5, 2, '1673290299.jpg', '2023-01-09 11:51:39', '2023-01-09 11:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `home_feature_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_room_total` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_room_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_testimonial_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_latest_post_total` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_latest_post_status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `copyright` text COLLATE utf8mb4_unicode_ci,
  `facebook` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `twitter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `linkedin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pinterest` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `instagram` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `theme_color_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_color_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `phone`, `email`, `home_feature_status`, `home_room_total`, `home_room_status`, `home_testimonial_status`, `home_latest_post_total`, `home_latest_post_status`, `address`, `copyright`, `facebook`, `twitter`, `linkedin`, `pinterest`, `instagram`, `theme_color_1`, `theme_color_2`, `created_at`, `updated_at`) VALUES
(1, '1673550839.png', '1673550847.png', '021-123-4444', 'cs@hotelku.com', 'Show', '4', 'Show', 'Show', '3', 'Show', 'Asia Afrika Street,\r\nBandung, Jawa Barat', 'Copyright 2023, Hotelkudotcom. All Rights Reserved.', 'https://www.facebook.com/', 'https://twitter.com/?lang=id', 'https://id.linkedin.com/', 'https://id.pinterest.com/', 'https://www.instagram.com/?hl=id', '#0dbfb7', '#ccfbfb', NULL, '2023-01-12 20:56:22');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `image`, `heading`, `text`, `button_text`, `button_url`, `created_at`, `updated_at`) VALUES
(1, 'slide1673099413.jpg', NULL, NULL, NULL, NULL, '2023-01-07 06:50:13', '2023-01-07 06:50:13'),
(2, 'slide1673104006.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'See More', NULL, '2023-01-07 07:02:50', '2023-01-07 08:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'xyzdrazer@gmail.com', '', 1, '2023-01-09 08:07:05', '2023-01-09 08:08:32'),
(2, 'yocom88398@dewareff.com', '', 1, '2023-01-09 08:09:54', '2023-01-09 08:10:50'),
(3, 'aaa@gmail.com', '', 1, '2023-01-09 08:13:39', '2023-01-09 08:14:04'),
(4, 'adifirman684@gmail.com', '38885e6b14bc29c76e2a59953287418ef668cbdb765a81451484031f4720ed02', 0, '2023-01-10 07:57:16', '2023-01-10 07:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `photo`, `name`, `designation`, `comment`, `created_at`, `updated_at`) VALUES
(1, '1673120900.jpg', 'Gerald', 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-01-07 12:48:20', '2023-01-07 12:48:20'),
(2, '1673120992.jpg', 'Jhone', 'Lorem Ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-01-07 12:49:52', '2023-01-07 12:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint UNSIGNED NOT NULL,
  `video_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_id`, `caption`, `created_at`, `updated_at`) VALUES
(1, 'adasdasda', 'asd', '2023-01-08 04:22:56', '2023-01-08 04:24:39'),
(2, 'asdasdad', 'asdasd', '2023-01-08 07:10:53', '2023-01-08 07:10:53'),
(3, 'asdasd', 'asdad', '2023-01-08 07:10:59', '2023-01-08 07:10:59'),
(4, 'asdasd', NULL, '2023-01-08 07:11:01', '2023-01-08 07:11:01'),
(5, 'asdasd', 'asdas', '2023-01-08 07:11:03', '2023-01-08 07:11:03'),
(6, 'asdasd', 'asda', '2023-01-08 07:11:06', '2023-01-08 07:11:06'),
(7, 'asdasd', 'asdasd', '2023-01-08 07:11:09', '2023-01-08 07:11:09'),
(8, 'sddd', 'dsd', '2023-01-08 07:11:19', '2023-01-08 07:11:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booked_rooms`
--
ALTER TABLE `booked_rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
