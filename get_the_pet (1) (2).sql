-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 11:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `get_the_pet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bio` varchar(1500) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `picture` varchar(1500) NOT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `bio`, `username`, `picture`, `phone_number`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$tzhledUR.Kw0vhYe1wvAp.bAZJy1B9hUSbatCT2GMSM7SGPNlW9bq', 'hjhjhjjhjhj', 'admin', 'downloads/1Xwd3KZPIbN1wxt2BVZF3mueoxTGFyTnKgDoTLMq.png', '0212112', '2024-05-07 01:10:00', '2024-07-30 16:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `author_role` enum('admin','doctor') NOT NULL,
  `author_id` int(11) NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `content`, `image_url`, `author_role`, `author_id`, `is_approved`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'How to Stop a Biting Pet: A Comprehensive Guide', 'Biting can be a serious issue for pet owners, whether it involves a dog, cat, or small animal. This behavior can result from fear, aggression, playfulness, or pain. Addressing biting behavior early on is essential to ensure the safety and well-being of both the pet and the people around them. This comprehensive guide provides practical tips and techniques to help you stop your pet from biting.\r\n\r\nUnderstanding the Causes of Biting\r\nCommon Reasons for Biting\r\nFear or Anxiety: Pets may bite when they feel threatened or scared.\r\nPlayfulness: Young pets, especially puppies and kittens, often bite during play as they explore their environment.\r\nPain or Discomfort: Pets in pain or discomfort might bite if touched in a sensitive area.\r\nTerritorial Behavior: Pets may bite to protect their territory from perceived intruders.\r\nLack of Socialization: Poorly socialized pets might bite due to unfamiliarity with people or other animals.\r\nRedirected Aggression: Pets might bite when unable to reach the source of their frustration.', 'downloads/BFa0PJLHyIJknogAS8UQVLVy36rfuuwyA0nZxuFO.jpg', 'admin', 1, 1, '2024-07-11 11:55:44', '2024-09-29 20:11:26', 6),
(2, 'How to Housetrain a Pet: A Comprehensive Guide', 'Housetraining is one of the most important tasks for any pet owner. It sets the foundation for a harmonious relationship between you and your furry friend. Whether you’re training a puppy, kitten, or an older pet, the principles of housetraining remain the same: patience, consistency, and positive reinforcement. This guide will provide you with step-by-step instructions and tips to successfully housetrain your pet.', 'downloads/JcUzmsnUtX6XkgTzEr7PBLzb8vvc3ypcrfXNiBqo.jpg', 'doctor', 1, 1, '2024-07-11 11:55:44', '2024-09-29 20:14:11', 2),
(3, 'Homemade Pet Food Secrets: Ensuring a Healthy and Happy Pet', 'The benefits of feeding your pet homemade food can be numerous. It allows you to have complete control over the ingredients, ensuring that your furry friend receives the best nutrition possible without the additives and preservatives often found in commercial pet foods. However, preparing homemade pet food requires careful planning and knowledge to ensure it meets all of your pet’s nutritional needs. In this blog post, we’ll uncover the secrets to creating balanced, nutritious homemade pet food that will keep your pet healthy and happy.', 'downloads/F4byBuckCUq5HzRamoU53dPF7z3vTKwGmQsYSCSw.jpg', 'doctor', 2, 0, '2024-07-11 11:55:44', '2024-09-29 20:15:59', 4),
(10, 'Dog Attack Survival Tips: Staying Safe and Knowing What to Do', 'Dog attacks, though rare, can be frightening and dangerous. Knowing how to protect yourself and respond appropriately can make a significant difference in the outcome of such an encounter. This guide offers practical tips and strategies to help you survive a dog attack and reduce the risk of injury.', 'downloads/HJnpx4EDg59sBCI2yfPgJRKmaVTLKga5Kuock0Nj.jpg', 'admin', 1, 1, '2024-07-11 23:36:41', '2024-09-29 20:18:09', 2),
(13, 'Companion Pet Training: Building a Lifelong Bond', 'Training your companion pet is an essential part of responsible pet ownership. Whether you have a dog, cat, or other small animal, proper training can help ensure a harmonious relationship and a well-behaved pet. This comprehensive guide covers the fundamentals of companion pet training, offering techniques, tips, and insights to help you build a lifelong bond with your furry friend.', 'downloads/3pDAypJQv881nNqP3C3reLcD2KDhDKaIzg2WsSnX.jpg', 'admin', 1, 1, '2024-07-12 18:22:37', '2024-09-29 20:19:08', 2),
(14, 'How to Potty Train Your Pet: A Comprehensive Guide', 'Potty training is one of the most crucial aspects of pet ownership, ensuring a clean and harmonious living environment for both you and your pet. Whether you have a new puppy, kitten, or an adult pet that needs training, this guide provides step-by-step instructions and tips to make the process as smooth and successful as possible.', 'downloads/PLm7lGnaj19tXtWnFHHu6KrDdAVGWZXn1CSTQGX3.jpg', 'doctor', 1, 1, '2024-07-12 19:24:34', '2024-09-29 20:12:55', 2),
(15, 'Buying the Perfect Pet Shock Collar: A Comprehensive Guide', 'Pet shock collars, also known as e-collars or electronic collars, can be a valuable tool for training and behavior modification when used correctly and responsibly. These collars are designed to provide a small electric stimulation, vibration, or beep to get your pet’s attention and correct unwanted behaviors. However, with numerous options on the market, finding the perfect shock collar for your pet can be challenging. This comprehensive guide will help you make an informed decision to ensure the safety and effectiveness of the collar for your furry friend.', 'downloads/dG1yu2cDoe38iyr6dfqwvIfnSLJx9WCpVYym5Ikw.jpg', 'admin', 1, 1, '2024-07-12 23:44:33', '2024-09-29 20:20:54', 5),
(16, 'sa', 'as', 'downloads/iUlOprXdHSuaK0rdLy0azwgHC1eZZz0zsDRHpZkr.png', 'admin', 1, 0, '2024-07-22 16:48:48', '2024-07-22 09:50:02', 3),
(18, 'dsa', '<p>dsasddsdsa</p>', 'downloads/cw1z3aqQvhx4FMj7v6tnN5xwUxbF1vmsUVNUYssn.png', 'doctor', 2, 0, '2024-07-25 01:08:03', '2024-07-25 01:08:03', 2),
(19, 'dsa', '<p>adsads</p>', 'downloads/jZQYdsN844vFFqaF5aQHZojGy41AXZmgGAFfyZte.jpg', 'admin', 1, 1, '2024-11-07 01:14:49', '2024-11-07 01:14:49', 3),
(22, 'ad', '<p>DADS</p>', 'downloads/F4OCNCSsauxE0gPgTfJT3cbERs5MdVJvV7DekqoC.jpg', 'doctor', 6, 1, '2024-11-07 01:27:15', '2024-11-07 01:27:43', 2),
(23, 'ASD', '<p>ADDAGEGD</p>', 'downloads/F9HjKYeZrvRIUIKC0fkG5eQb7GaJY66FrJcq2jKv.jpg', 'admin', 1, 0, '2024-11-07 01:28:51', '2024-11-07 01:29:27', 6),
(24, 'My First Blog', '<ol>\r\n	<li><em><strong>My First Blog</strong></em></li>\r\n</ol>', 'downloads/vBNSUx2ex42S0Z88NctFxPfNikE6bsReKB3TZB9A.jpg', 'doctor', 8, 1, '2024-11-11 23:30:15', '2024-11-11 23:31:02', 3);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Pet Care', '2024-07-12 15:07:51', '2024-07-12 15:07:51'),
(2, 'Pet Training', '2024-07-12 15:07:51', '2024-07-12 15:07:51'),
(3, 'Pet Nutrition', '2024-07-12 15:07:51', '2024-07-12 15:07:51'),
(4, 'Pet Health', '2024-07-12 15:07:51', '2024-07-12 15:07:51'),
(5, 'Pet Accessories', '2024-07-12 15:07:51', '2024-07-12 15:07:51'),
(6, 'Pet Adoption', '2024-07-12 15:07:51', '2024-07-12 15:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `user_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'dasads', '2024-07-12 11:52:23', '2024-07-12 11:52:23'),
(2, 14, 1, 'Great', '2024-07-12 15:18:14', '2024-07-12 15:18:14'),
(3, 1, 1, 'Great', '2024-07-12 23:08:02', '2024-07-12 23:08:02'),
(4, 14, 1, 'fantastic', '2024-07-12 23:08:22', '2024-07-12 23:08:22'),
(5, 2, 1, 'good', '2024-07-12 23:08:37', '2024-07-12 23:08:37'),
(6, 3, 2, 'good', '2024-11-07 03:00:42', '2024-11-07 03:00:42'),
(7, 24, 2, 'Nice', '2024-11-11 23:32:48', '2024-11-11 23:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `blog_likes`
--

CREATE TABLE `blog_likes` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_likes`
--

INSERT INTO `blog_likes` (`id`, `blog_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-07-12 12:19:06', '2024-07-12 12:19:06'),
(2, 14, 2, '2024-07-12 12:32:44', '2024-07-12 12:32:44'),
(3, 14, 2, '2024-07-12 12:32:53', '2024-07-12 12:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `buy_requests`
--

CREATE TABLE `buy_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` enum('pending','accepted','rejected') DEFAULT 'pending',
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_phone` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buy_requests`
--

INSERT INTO `buy_requests` (`id`, `user_id`, `seller_id`, `product_id`, `status`, `request_date`, `user_phone`, `user_address`) VALUES
(9, 2, 3, 18, 'accepted', '2024-09-30 14:43:33', '03135360330', 'st'),
(10, 2, 15, 28, 'accepted', '2024-11-06 07:50:37', 'password', 'St 11'),
(14, 2, 16, 29, 'pending', '2024-11-08 16:50:22', '322332', 'st mary');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `pro_id`, `name`, `price`, `qty`, `subtotal`, `image`, `created_at`, `updated_at`) VALUES
(11, 7, 2, 'Pigeon Food', 400.00, NULL, 0.00, 'downloads/EhP6rocRg909L4h0rQZcrxmhyfdUkAIgvqsxPYNL.jpg', '2024-05-29 00:03:32', '2024-05-29 00:03:32'),
(26, 1, 3, 'Grain Free Recipe', 401.00, 5, 2005.00, 'downloads/sBd2yk0EGzVP0Df3A9n3uyaggih5aDuqR0HgKjE9.jpg', '2024-06-09 19:51:23', '2024-06-09 20:05:07'),
(32, 2, 2, 'Pigeon Food', 400.00, 1, 400.00, 'downloads/EhP6rocRg909L4h0rQZcrxmhyfdUkAIgvqsxPYNL.jpg', '2024-11-13 22:54:10', '2024-11-13 22:54:10'),
(33, 2, 3, 'Grain Free Recipe', 401.00, 1, 401.00, 'downloads/sBd2yk0EGzVP0Df3A9n3uyaggih5aDuqR0HgKjE9.jpg', '2024-11-13 23:30:40', '2024-11-13 23:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) DEFAULT NULL,
  `CategoryImage` varchar(258) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `CategoryImage`) VALUES
(1, 'PHARMACY', 'downloads/MI2v912EstfVDNXmPwwl58Ks3Mlqz7N3tjhYW61v.png'),
(2, 'ACESSORIES', 'downloads/T5zpU8OXUlUlUD3ewh91et9ZDhiTJpoBmMJeujd2.png'),
(3, 'FOOD', 'downloads/JXvykGFhrVbZrkfQSDufXEaFBLBSLl23MePapTE9.png'),
(4, 'CLOTHING', 'downloads/2NElg8k3nFUTPSFRWQBq2lP7uWk3WWwArOw5tobI.png'),
(5, 'DECOR', 'downloads/rqWuNR1cBtRmF3n80C2NyPV57XBKTul6dXUKFKVt.png'),
(6, 'GROOMING', 'downloads/5VgeECn0JrdmGVzm1uc547MUVgb7ebprUrO0ftfI.png');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sender_id`, `receiver_id`, `message`, `seen`, `created_at`, `updated_at`) VALUES
(298, 2, 2, 'hey', 0, '2024-07-28 21:32:41', '2024-07-28 21:32:41'),
(299, 2, 2, 'hey', 0, '2024-07-28 21:32:49', '2024-07-28 21:32:49'),
(300, 2, 2, 'yes', 0, '2024-07-29 01:25:13', '2024-07-29 01:25:13'),
(301, 2, 2, 'i told you', 0, '2024-07-29 14:15:02', '2024-07-29 14:15:02'),
(302, 1, 2, 'hey', 0, '2024-07-29 14:41:45', '2024-07-29 14:41:45'),
(303, 1, 2, 'hey', 0, '2024-07-29 14:43:32', '2024-07-29 14:43:32'),
(304, 1, 2, 'ga', 0, '2024-07-29 15:02:04', '2024-07-29 15:02:04'),
(305, 1, 2, 'hello doctor', 0, '2024-07-29 15:02:48', '2024-07-29 15:02:48'),
(306, 1, 4, 'hey', 0, '2024-08-01 15:19:04', '2024-08-01 15:19:04'),
(307, 4, 1, 'yes', 0, '2024-08-01 15:19:19', '2024-08-01 15:19:19'),
(308, 1, 4, 'i want to let u know', 0, '2024-08-01 15:21:33', '2024-08-01 15:21:33'),
(309, 4, 1, 'are you there', 0, '2024-08-01 15:21:57', '2024-08-01 15:21:57'),
(310, 1, 4, 'ok what', 0, '2024-08-01 15:22:40', '2024-08-01 15:22:40'),
(311, 2, 1, 'hy kevin', 0, '2024-08-14 22:57:55', '2024-08-14 22:57:55'),
(312, 2, 3, 'hey', 0, '2024-09-30 21:40:36', '2024-09-30 21:40:36'),
(313, 2, 8, 'Hey', 0, '2024-11-11 23:33:33', '2024-11-11 23:33:33'),
(314, 8, 2, 'yes', 0, '2024-11-11 23:34:07', '2024-11-11 23:34:07'),
(315, 2, 8, 'i want to ask you something', 0, '2024-11-11 23:34:18', '2024-11-11 23:34:18'),
(316, 8, 2, 'ok ask', 0, '2024-11-11 23:34:24', '2024-11-11 23:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'musa dar', 'afnantariq715@gmail.com', '03135360330', 'yes', '2024-08-15 02:35:21', '2024-08-15 02:35:21'),
(2, 'afs', 'afnantariq715@gmail.com', '03135360330', 'Please Doctor Fix this Really thankful if you do this', '2024-09-22 21:21:46', '2024-09-22 21:21:46');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doctor_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `specialty` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(258) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `opening_hours` varchar(1000) DEFAULT NULL,
  `views` int(12) DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `location_map` mediumtext DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `behance` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `status` enum('verified','not verified') DEFAULT 'not verified'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doctor_id`, `name`, `specialty`, `location`, `phone`, `password`, `email`, `address`, `opening_hours`, `views`, `description`, `location_map`, `website`, `facebook`, `twitter`, `linkedin`, `whatsapp`, `behance`, `image_url`, `status`) VALUES
(1, 'Dr. Kevin', 'Surgeon', 'Rawalpindi', '+96544444222221100', '$2y$12$Kw7CJYYYb9GshC4kee.Uau4KbZakV0Tc5gmKeXMqtLDhU3I6h7seO', 'kevin@gmail.com', 'Washington, Indiana', '', 15, 'Lorem ipsum dolor sit amet, qui assum oblique praesent te. Quo ei erant essent scaevola, est                             ut clita dolorem, ei est mazim fuisset scribentur. Mel ut decore salutandi intellegam.                             Labitur epicurei vis cu, in mei rationibus consequuntur. Duo eu modus periculis, inermis                             detracto expetendis ius eu. Mel ludus viderer noluisse cu, te virtute constituam vix, et eos                             justo mucius salutatus. Nam illum.', '  <iframe                             src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14602.678639283793!2d90.39695083611213!3d23.794774936848686!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c70c15ea1de1%3A0x97856381e88fb311!2z4Kas4Kao4Ka-4Kao4KeAIOCmruCmoeCnh-CmsiDgpp_gpr7gpongpqgsIOCmouCmvuCmleCmvg!5e0!3m2!1sbn!2sbd!4v1634550875957!5m2!1sbn!2sbd\"                             width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>              ', 'https://example.com', 'https://facebook.com/johndoe', 'https://twitter.com/johndoe', 'https://linkedin.com/in/johndoe', 'https://wa.me/+96544444222221100', 'https://behance.net/johndoe', '/users/images/client3.jpg', 'verified'),
(2, 'Dr. John Doe', 'Anesthisia and Surgeon', 'Islamabad', '+96544444222221100', '$2y$12$Kw7CJYYYb9GshC4kee.Uau4KbZakV0Tc5gmKeXMqtLDhU3I6h7seO', 'john@gmail.com', 'Washington, Indiana', '[{\"day\":\"Monday\",\"hours\":\"09:00 AM - 05:00 PM\"},{\"day\":\"Friday\",\"hours\":\"09:00 AM - 05:00 PM\"}]', 29, 'A doctor is responsible for all sides of care of a patient. They diagnose, educate, and treat patients to ensure that they have the best possible care. A few of the main duties of a doctor are performing diagnostic tests, recommending specialists for patients, sdocument patient\'s medical history, and educating patients.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d106330.03885687914!2d73.0497024!3d33.6101376!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38df9370a0fed41d%3A0xeed8bbd712d8f63a!2sCombined%20Military%20Hospital%20Rawalpindi%20(CMH)!5e0!3m2!1sen!2s!4v1720639411691!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://example.com', 'https://facebook.com/johndoe', 'https://twitter.com/johndoe', 'https://linkedin.com/in/johndoe', 'https://wa.me/+96544444222221100', 'https://behance.net/', '/storage/profile/Rz1O9smNGJj38gLW7mhvEftrZcJfhKmSVKh6jNdt.jpg', 'verified'),
(3, 'Charles', 'Pet Seller ', 'Islamabad', NULL, '$2y$12$Kw7CJYYYb9GshC4kee.Uau4KbZakV0Tc5gmKeXMqtLDhU3I6h7seO', NULL, NULL, '', 19, '', '  <iframe                             src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14602.678639283793!2d90.39695083611213!3d23.794774936848686!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c70c15ea1de1%3A0x97856381e88fb311!2z4Kas4Kao4Ka-4Kao4KeAIOCmruCmoeCnh-CmsiDgpp_gpr7gpongpqgsIOCmouCmvuCmleCmvg!5e0!3m2!1sbn!2sbd!4v1634550875957!5m2!1sbn!2sbd\"                             width=\"100%\" height=\"400\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>              ', 'https://example.com', 'https://facebook.com/johndoe', 'https://twitter.com/johndoe', 'https://linkedin.com/in/johndoe', 'https://wa.me/+96544444222221100', 'https://behance.net/', '/users/images/client1.jpg', 'not verified'),
(4, 'musa dar', 'Surgeon', 'Rawalpindi', '03135360330', '$2y$12$Kw7CJYYYb9GshC4kee.Uau4KbZakV0Tc5gmKeXMqtLDhU3I6h7seO', 'musdiq@gmail.com', 'st', '', 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/storage/profile/yYUQiL5SCBZ1IUOrD4Kab2rhLVXGyVlZkJhgdz3s.jpg', 'verified'),
(6, 'New Doctor', 'Anesthesia', 'Rawalpindi', '03135360330', '$2y$12$Az8K9heT.2QwA74LLOz4T.FIR81Bb31hyankiArgvKk0wCMmD0GLu', 'newdoctor@gmail.com', 'st', '[]', NULL, 'Hey are you okay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/storage/profile/g0bYxYey1OdKdDtSSaTgbVSTJ5ZDh9yLpuY6ZlIQ.png', 'not verified'),
(8, 'ali', 'Pet', 'Islamabad', '33232232', '$2y$12$gQBrHlRf4nvXQLhJtuXv8.OruLp8kvh1xa.lkWGQqJCq3804whirC', 'ali@gmail.com', NULL, '[{\"day\":\"Monday\",\"hours\":\"09:00 AM - 05:00 PM\"}]', NULL, 'I am good doctor', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d13293.542613874204!2d73.05151995!3d33.59529685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x38df94834d87f5a3%3A0x506e17bedd22f2e7!2sSaddar%2C%20Rawalpindi%2C%20Punjab%2046000!5e0!3m2!1sen!2s!4v1731338754919!5m2!1sen!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, NULL, NULL, NULL, NULL, NULL, '/storage/profile/N1jOdfT4bd9S86eEsx6OVloX6XVoCqwj1MUlMeZp.png', 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_doctors`
--

CREATE TABLE `favorite_doctors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorite_doctors`
--

INSERT INTO `favorite_doctors` (`id`, `user_id`, `doctor_id`, `created_at`, `updated_at`) VALUES
(4, 1, 2, '2024-07-05 22:51:41', '2024-07-05 22:51:41'),
(5, 2, 2, '2024-07-11 15:30:21', '2024-07-11 15:30:21'),
(6, 2, 1, '2024-11-07 02:58:10', '2024-11-07 02:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `question_id`, `created_at`, `updated_at`) VALUES
(13, 1, 8, '2024-06-05 00:06:39', '2024-08-01 15:02:40'),
(65, 2, 15, '2024-08-01 22:45:19', '2024-08-01 22:45:19'),
(69, 2, 21, '2024-08-14 23:39:51', '2024-08-14 23:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `like_products`
--

CREATE TABLE `like_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `like_products`
--

INSERT INTO `like_products` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(17, 1, 3, NULL, NULL),
(18, 3, 2, NULL, NULL),
(25, 1, 6, '2024-06-06 22:10:57', '2024-06-06 22:10:57'),
(26, 1, 4, '2024-06-09 19:46:02', '2024-06-09 19:46:02'),
(29, 1, 2, '2024-06-21 17:03:31', '2024-06-21 17:03:31'),
(30, 2, 2, '2024-08-14 22:56:52', '2024-08-14 22:56:52');

-- --------------------------------------------------------

--
-- Table structure for table `like_replies`
--

CREATE TABLE `like_replies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `like_replies`
--

INSERT INTO `like_replies` (`id`, `user_id`, `reply_id`) VALUES
(16, 1, 9),
(18, 2, 2),
(19, 7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` int(11) NOT NULL,
  `seller_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `age` int(11) NOT NULL,
  `color` enum('red','blue','green','yellow','black','white','brown','gray','orange','pink','purple') DEFAULT NULL,
  `species` enum('dogs','cats','birds') DEFAULT NULL,
  `breed` varchar(50) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `location` enum('Rawalpindi','Islamabad','Other') DEFAULT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `vaccination_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`vaccination_details`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('sold','not_sold') DEFAULT 'not_sold',
  `pet_certificate_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `seller_id`, `title`, `description`, `age`, `color`, `species`, `breed`, `gender`, `price`, `location`, `images`, `vaccination_details`, `created_at`, `updated_at`, `status`, `pet_certificate_image`) VALUES
(2, 3, 'Listen12', 'da', 12, 'orange', 'dogs', 'das', 'female', 4000.00, 'Islamabad', '[\"\\/storage\\/listings\\/naEKhm1Uio5AmawIITJnkF3GBsFPfkQ7mWrJooKT.jpg\",\"\\/storage\\/listings\\/qa8aBEdVivv5blrkkLaFuLL0SIDHsHPdqyFWCQla.jpg\",\"\\/storage\\/listings\\/lih0AkRulYkK58MIos7QrqUUYXleie07rww5EhLT.jpg\",\"\\/storage\\/listings\\/FZ12TPevDVLOHm69JhXww9ExyTSxtoBkcr8Nduzk.jpg\",\"\\/storage\\/listings\\/H9g36uV43J0JuS4MTkg3Zo5dm8YuV2DniOLJFoZT.jpg\",\"\\/storage\\/listings\\/FeBrePIX6LiX4KFHwjaPvbzcDFE2wduWGVWexWTq.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-07-11\"},{\"type\":\"ads\",\"date\":\"2024-08-02\"}]', '2024-07-24 02:57:27', '2024-10-27 10:00:58', 'not_sold', '/storage/pet_certificates/KSiqoKfNYeqIN2yx6rWpMuMHWetPJ3fklmmTykSp.jpg'),
(3, 3, 'ads', 'dsds', 23, 'gray', 'dogs', 'das', 'female', 4000.00, 'Rawalpindi', '[\"\\/storage\\/listings\\/naEKhm1Uio5AmawIITJnkF3GBsFPfkQ7mWrJooKT.jpg\",\"\\/storage\\/listings\\/qa8aBEdVivv5blrkkLaFuLL0SIDHsHPdqyFWCQla.jpg\",\"\\/storage\\/listings\\/lih0AkRulYkK58MIos7QrqUUYXleie07rww5EhLT.jpg\",\"\\/storage\\/listings\\/FZ12TPevDVLOHm69JhXww9ExyTSxtoBkcr8Nduzk.jpg\",\"\\/storage\\/listings\\/H9g36uV43J0JuS4MTkg3Zo5dm8YuV2DniOLJFoZT.jpg\",\"\\/storage\\/listings\\/FeBrePIX6LiX4KFHwjaPvbzcDFE2wduWGVWexWTq.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-07-09\"},{\"type\":\"sasa3232\",\"date\":\"2024-07-30\"}]', '2024-07-24 03:02:26', '2024-10-27 10:09:28', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(4, 4, 's', 'da', 23, 'purple', 'dogs', 'das', 'male', 4000.00, 'Islamabad', '[\"\\/storage\\/listings\\/naEKhm1Uio5AmawIITJnkF3GBsFPfkQ7mWrJooKT.jpg\",\"\\/storage\\/listings\\/qa8aBEdVivv5blrkkLaFuLL0SIDHsHPdqyFWCQla.jpg\",\"\\/storage\\/listings\\/lih0AkRulYkK58MIos7QrqUUYXleie07rww5EhLT.jpg\",\"\\/storage\\/listings\\/FZ12TPevDVLOHm69JhXww9ExyTSxtoBkcr8Nduzk.jpg\",\"\\/storage\\/listings\\/H9g36uV43J0JuS4MTkg3Zo5dm8YuV2DniOLJFoZT.jpg\",\"\\/storage\\/listings\\/FeBrePIX6LiX4KFHwjaPvbzcDFE2wduWGVWexWTq.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-07-31\"},{\"type\":\"ads\",\"date\":\"2024-08-01\"}]', '2024-07-24 16:47:50', '2024-10-27 10:09:25', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(6, 3, 'asd', 'da', 12, 'brown', 'dogs', 'das', 'male', 20000.00, 'Islamabad', '[\"\\/storage\\/listings\\/naEKhm1Uio5AmawIITJnkF3GBsFPfkQ7mWrJooKT.jpg\",\"\\/storage\\/listings\\/qa8aBEdVivv5blrkkLaFuLL0SIDHsHPdqyFWCQla.jpg\",\"\\/storage\\/listings\\/lih0AkRulYkK58MIos7QrqUUYXleie07rww5EhLT.jpg\",\"\\/storage\\/listings\\/FZ12TPevDVLOHm69JhXww9ExyTSxtoBkcr8Nduzk.jpg\",\"\\/storage\\/listings\\/H9g36uV43J0JuS4MTkg3Zo5dm8YuV2DniOLJFoZT.jpg\",\"\\/storage\\/listings\\/FeBrePIX6LiX4KFHwjaPvbzcDFE2wduWGVWexWTq.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-07-05\"},{\"type\":\"ads\",\"date\":\"2024-08-02\"}]', '2024-07-24 16:51:26', '2024-10-27 10:00:52', 'not_sold', '/storage/pet_certificates/KSiqoKfNYeqIN2yx6rWpMuMHWetPJ3fklmmTykSp.jpg'),
(7, 4, 'ads', 'da', 12, 'gray', 'dogs', 'das', 'female', 0.03, 'Rawalpindi', '[\"\\/storage\\/listings\\/naEKhm1Uio5AmawIITJnkF3GBsFPfkQ7mWrJooKT.jpg\",\"\\/storage\\/listings\\/qa8aBEdVivv5blrkkLaFuLL0SIDHsHPdqyFWCQla.jpg\",\"\\/storage\\/listings\\/lih0AkRulYkK58MIos7QrqUUYXleie07rww5EhLT.jpg\",\"\\/storage\\/listings\\/FZ12TPevDVLOHm69JhXww9ExyTSxtoBkcr8Nduzk.jpg\",\"\\/storage\\/listings\\/H9g36uV43J0JuS4MTkg3Zo5dm8YuV2DniOLJFoZT.jpg\",\"\\/storage\\/listings\\/FeBrePIX6LiX4KFHwjaPvbzcDFE2wduWGVWexWTq.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-08-01\"},{\"type\":\"ads\",\"date\":\"2024-07-26\"}]', '2024-07-24 23:28:22', '2024-10-27 10:09:19', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(8, 3, 'sa', 'da', 12, 'orange', 'dogs', 'das', 'female', 20000.00, 'Rawalpindi', '[\"\\/storage\\/listings\\/naEKhm1Uio5AmawIITJnkF3GBsFPfkQ7mWrJooKT.jpg\",\"\\/storage\\/listings\\/qa8aBEdVivv5blrkkLaFuLL0SIDHsHPdqyFWCQla.jpg\",\"\\/storage\\/listings\\/lih0AkRulYkK58MIos7QrqUUYXleie07rww5EhLT.jpg\",\"\\/storage\\/listings\\/FZ12TPevDVLOHm69JhXww9ExyTSxtoBkcr8Nduzk.jpg\",\"\\/storage\\/listings\\/H9g36uV43J0JuS4MTkg3Zo5dm8YuV2DniOLJFoZT.jpg\",\"\\/storage\\/listings\\/FeBrePIX6LiX4KFHwjaPvbzcDFE2wduWGVWexWTq.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-07-25\"},{\"type\":\"ads\",\"date\":\"2024-07-25\"}]', '2024-07-24 23:31:03', '2024-10-27 10:09:15', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(18, 3, 'Friendly Golden Retriever', 'A playful and friendly golden retriever looking for a new home.', 2, 'orange', 'dogs', 'Golden Retriever', 'male', 500.00, 'Rawalpindi', '[\"\\/storage\\/listings\\/KmyKouAGIqiVtpLxefwxbepiWORyIRaJOmSZGTPR.jpg\",\"\\/storage\\/listings\\/US2om7SWENGZLYi9IjXaYVPMFglocOT0ucYksIVU.jpg\",\"\\/storage\\/listings\\/rElrmXddzJvbXqanR4FO1tLT47gsqfJ2x7PiglzB.jpg\",\"\\/storage\\/listings\\/ryXJ78A1XfSth3pKtDVfW5HU9985ixttwXwItR9C.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-07-25\"},{\"type\":\"ads\",\"date\":\"2024-07-26\"}]', '2024-09-30 13:37:17', '2024-11-13 23:21:31', 'sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(19, 3, 'Cute Persian Cat', 'A cute and fluffy Persian cat with a calm demeanor.', 3, 'white', 'dogs', 'Persian', 'female', 400.00, 'Rawalpindi', '[\"\\/storage\\/listings\\/naEKhm1Uio5AmawIITJnkF3GBsFPfkQ7mWrJooKT.jpg\",\"\\/storage\\/listings\\/qa8aBEdVivv5blrkkLaFuLL0SIDHsHPdqyFWCQla.jpg\",\"\\/storage\\/listings\\/lih0AkRulYkK58MIos7QrqUUYXleie07rww5EhLT.jpg\",\"\\/storage\\/listings\\/FZ12TPevDVLOHm69JhXww9ExyTSxtoBkcr8Nduzk.jpg\",\"\\/storage\\/listings\\/H9g36uV43J0JuS4MTkg3Zo5dm8YuV2DniOLJFoZT.jpg\",\"\\/storage\\/listings\\/FeBrePIX6LiX4KFHwjaPvbzcDFE2wduWGVWexWTq.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-07-25\"},{\"type\":\"ads\",\"date\":\"2024-07-26\"}]', '2024-09-30 13:37:17', '2024-10-27 10:09:06', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(20, 3, 'Playful Beagle', 'A fun-loving beagle that enjoys outdoor activities.', 1, 'brown', 'dogs', 'Beagle', 'male', 300.00, 'Islamabad', '[\"\\/storage\\/listings\\/naEKhm1Uio5AmawIITJnkF3GBsFPfkQ7mWrJooKT.jpg\",\"\\/storage\\/listings\\/qa8aBEdVivv5blrkkLaFuLL0SIDHsHPdqyFWCQla.jpg\",\"\\/storage\\/listings\\/lih0AkRulYkK58MIos7QrqUUYXleie07rww5EhLT.jpg\",\"\\/storage\\/listings\\/FZ12TPevDVLOHm69JhXww9ExyTSxtoBkcr8Nduzk.jpg\",\"\\/storage\\/listings\\/H9g36uV43J0JuS4MTkg3Zo5dm8YuV2DniOLJFoZT.jpg\",\"\\/storage\\/listings\\/FeBrePIX6LiX4KFHwjaPvbzcDFE2wduWGVWexWTq.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-07-25\"},{\"type\":\"ads\",\"date\":\"2024-07-26\"}]', '2024-09-30 13:37:17', '2024-10-27 10:09:02', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(21, 3, 'Siamese Kitten', 'A playful Siamese kitten full of energy and love.', 0, 'black', 'dogs', 'Siamese', 'female', 250.00, 'Islamabad', '[\"\\/storage\\/listings\\/naEKhm1Uio5AmawIITJnkF3GBsFPfkQ7mWrJooKT.jpg\",\"\\/storage\\/listings\\/qa8aBEdVivv5blrkkLaFuLL0SIDHsHPdqyFWCQla.jpg\",\"\\/storage\\/listings\\/lih0AkRulYkK58MIos7QrqUUYXleie07rww5EhLT.jpg\",\"\\/storage\\/listings\\/FZ12TPevDVLOHm69JhXww9ExyTSxtoBkcr8Nduzk.jpg\",\"\\/storage\\/listings\\/H9g36uV43J0JuS4MTkg3Zo5dm8YuV2DniOLJFoZT.jpg\",\"\\/storage\\/listings\\/FeBrePIX6LiX4KFHwjaPvbzcDFE2wduWGVWexWTq.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-07-25\"},{\"type\":\"ads\",\"date\":\"2024-07-26\"}]', '2024-09-30 13:37:17', '2024-10-27 10:08:59', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(22, 3, 'Loving Bulldog', 'An affectionate bulldog looking for a forever home.', 4, 'yellow', 'dogs', 'Bulldog', 'male', 600.00, 'Islamabad', '[\"\\/storage\\/listings\\/KmyKouAGIqiVtpLxefwxbepiWORyIRaJOmSZGTPR.jpg\",\"\\/storage\\/listings\\/US2om7SWENGZLYi9IjXaYVPMFglocOT0ucYksIVU.jpg\",\"\\/storage\\/listings\\/rElrmXddzJvbXqanR4FO1tLT47gsqfJ2x7PiglzB.jpg\",\"\\/storage\\/listings\\/ryXJ78A1XfSth3pKtDVfW5HU9985ixttwXwItR9C.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-07-25\"},{\"type\":\"ads\",\"date\":\"2024-07-26\"}]', '2024-09-30 13:37:17', '2024-10-27 10:08:55', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(23, 3, 'Charming Rottweiler', 'A strong and loyal Rottweiler with a gentle heart.', 5, 'black', 'dogs', 'Rottweiler', 'female', 700.00, 'Rawalpindi', '[\"\\/storage\\/listings\\/KmyKouAGIqiVtpLxefwxbepiWORyIRaJOmSZGTPR.jpg\",\"\\/storage\\/listings\\/US2om7SWENGZLYi9IjXaYVPMFglocOT0ucYksIVU.jpg\",\"\\/storage\\/listings\\/rElrmXddzJvbXqanR4FO1tLT47gsqfJ2x7PiglzB.jpg\",\"\\/storage\\/listings\\/ryXJ78A1XfSth3pKtDVfW5HU9985ixttwXwItR9C.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-07-25\"},{\"type\":\"ads\",\"date\":\"2024-07-26\"}]', '2024-09-30 13:37:17', '2024-10-27 10:08:51', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(25, 3, 'Jessi', 'Jessi I have many memorize with her', 6, 'blue', 'dogs', 'Jermen', 'female', 1212.00, 'Rawalpindi', '[\"\\/storage\\/listings\\/0sdf8GMLlSfdQVHJya1xnJUfICCZNl7hwS8N7xJI.jpg\",\"\\/storage\\/listings\\/LAKRQJb7jZ1QgHoMrZnnrpBbDrhbZ6U7GjwQUAEC.jpg\",\"\\/storage\\/listings\\/7LEAYmUHXPKA4vQrXIcMQPT78CRv0Tb7Ov5803Ni.jpg\",\"\\/storage\\/listings\\/48fN3SY9SLRZzqvzernwYFZa6thcE8Utd3k1IC06.jpg\",\"\\/storage\\/listings\\/j8MBRLKvKErpvfgjAv2RzhBBcs35OIRbINJiZo01.jpg\",\"\\/storage\\/listings\\/cFaSg7EUzfgQOdrKXfAT3BvHGtbi3gnuPYpHRZQM.jpg\"]', '[{\"type\":\"Bread\",\"date\":\"2018-12-27\"},{\"type\":\"Bread\",\"date\":\"2024-10-27\"}]', '2024-10-27 16:47:02', '2024-10-27 10:08:46', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(26, 3, 'jessi', 'Jessi I have many memorize with her', 7, 'blue', 'birds', 'Jermen', 'female', 34.00, 'Islamabad', '[\"\\/storage\\/listings\\/q5bdE5S1v3K6v0BUnHDc5cjkWZ3ak9DJNZWAybgb.jpg\",\"\\/storage\\/listings\\/jXkZ2Udgq7jBtsR9HuX3j9ftsCtjuBZy9cXVWm1r.jpg\"]', '[{\"type\":\"Bread\",\"date\":\"2024-10-16\"},{\"type\":\"Bread\",\"date\":\"2024-10-31\"}]', '2024-10-27 17:07:10', '2024-10-27 10:08:41', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(27, 3, 'Jermen', 'Jessi I have many memorize with her', 11, 'green', 'cats', 'Jermen', 'female', 32.00, 'Rawalpindi', '[\"\\/storage\\/listings\\/cClKlhviQtcDXfW5JAduoVucIPAD0RZ3kcfcEPkF.jpg\",\"\\/storage\\/listings\\/eBKDOeerJQBe38CAZYOv6yJuOtotQ4VR2ikCHfcx.jpg\",\"\\/storage\\/listings\\/oZgGw0BcLUZpfqqxfB4VdYnMOZwagUxB6mopjAwM.jpg\"]', '[{\"type\":\"Bread\",\"date\":\"2024-11-08\"},{\"type\":\"Bread\",\"date\":\"2024-11-09\"}]', '2024-10-27 17:08:07', '2024-10-27 17:08:07', 'not_sold', '/storage/pet_certificates/sww6CVTsBuJ6aljkjUOuVFLbUVC6B3NaJPt6pu4N.jpg'),
(28, 15, 'Kiwi', 'great pet', 23, 'black', 'dogs', 'Haski', 'female', 20000.00, 'Islamabad', '[\"\\/storage\\/listings\\/gAQeycvpmo5CDRH1HC5j4ZpuQMI8rvyCccGPdQLE.jpg\"]', '[{\"type\":\"Diadsaad\",\"date\":\"2024-10-31\"},{\"type\":\"ads\",\"date\":\"2024-11-18\"}]', '2024-11-06 15:43:29', '2024-11-06 15:52:32', 'sold', '/storage/pet_certificates/Df3AQ2aW14vDJoDsC7jrsg56WxANGe8S0iyIfGA8.png'),
(29, 16, 'Jessi', 'great pet', 2, 'green', 'birds', 'Haski', 'female', 20000.00, 'Islamabad', '[\"\\/storage\\/listings\\/DdkJtCyU3ousQr1fokv7MvHWIW08ZtIDJoXqNFHw.jpg\",\"\\/storage\\/listings\\/qxqAMB6igK89e3fY2nMjiLqnqMGKpJBvwEHdFW0i.jpg\",\"\\/storage\\/listings\\/ceP7aDZ2hgTj2iUOb6WKd8mu7PGlW3vkHO6A4hzE.jpg\",\"\\/storage\\/listings\\/e3238p5kcXdQpbHJCYpq28KQfXSYwGximwQ8vdKv.jpg\",\"\\/storage\\/listings\\/yU0xB6PkmVAKpktFul4R7QUG4yZAsGIjmVMcCCp1.jpg\"]', '[{\"type\":\"Vac\",\"date\":\"2024-11-27\"},{\"type\":\"Vac\",\"date\":\"2024-11-23\"}]', '2024-11-09 00:28:01', '2024-11-09 00:28:01', 'not_sold', '/storage/pet_certificates/ZUSZqfMhNejecN3WeLfrqc6NVc9dZS5wP96HAWzD.png'),
(30, 3, 'ffsds', 'dffss', 332, 'red', 'birds', 'fdd', 'male', 4334.00, 'Rawalpindi', '[\"\\/storage\\/listings\\/1CpsaOgLyMtDyPmv91DIt6n06QwS6WucIreXK0J5.jpg\"]', '[{\"type\":\"gfgf\",\"date\":\"2024-11-13\"}]', '2024-11-13 23:37:33', '2024-11-13 23:37:33', 'not_sold', '/storage/pet_certificates/Qva0P5pZuV080zd3EAwQkfawqC60PGO617vPhfEV.jpg'),
(31, 3, 'ads', 'ads', 3232, 'green', 'cats', 'sda', 'female', 3232.00, 'Rawalpindi', '[\"\\/storage\\/listings\\/tijQ0Pi8TJF15ikRNBbWcnHN3wjYgucjTYBxYeK8.jpg\"]', '[{\"type\":\"ads\",\"date\":\"2024-11-28\"},{\"type\":\"ads\",\"date\":\"2024-11-27\"}]', '2024-11-13 23:38:51', '2024-11-13 23:38:51', 'not_sold', '/storage/pet_certificates/E6KZw9ftXb1UMk2dPz1D6eH6rJONC39Oxn5hYegi.png');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `total_items` int(11) NOT NULL,
  `subtotal` mediumtext NOT NULL,
  `shipping` decimal(10,2) NOT NULL,
  `total` varchar(3535) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone_number`, `address`, `total_items`, `subtotal`, `shipping`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 'Afnan Tariq', 'afnantariq715@gmail.com', '03135360330', 'Street 11, Mohan Pura , RWP', 5, '2,003.00', 500.75, '2,503.75', '2024-05-28 23:59:20', '2024-05-28 23:59:20'),
(2, 1, 'Afnan Tariq', 'afnantariq715@gmail.com', '03135360330', 'Street 11, Mohan Pura , RWP', 4, '1,602.00', 400.50, '2,002.50', '2024-05-29 00:01:35', '2024-05-29 00:01:35'),
(3, 1, 'Afnan Tariq', 'afnantariq715@gmail.com', '03135360330', 'Street 11, Mohan Pura , RWP', 1, '400.00', 100.00, '500.00', '2024-05-29 00:04:09', '2024-05-29 00:04:09'),
(4, 7, 'Afnan Tariq', 'afnantariq715@gmail.com', '03135360330', 'Street 11, Mohan Pura , RWP', 3, '1,200.00', 300.00, '1,500.00', '2024-05-29 13:13:58', '2024-07-24 07:15:47'),
(5, 1, 'Afnan Tariq', 'afnantariq715@gmail.com', '03135360330', 'Street 11, Mohan Pura , RWP', 1, '400.00', 100.00, '500.00', '2024-06-06 23:42:49', '2024-06-06 23:42:49'),
(6, 1, 'Afnan Tariq', 'afnantariq715@gmail.com', '03135360330', 'streer11', 4, '1,600.00', 400.00, '2,000.00', '2024-06-07 00:03:59', '2024-06-07 00:03:59'),
(7, 2, 'user', 'user@gmail.com', '323323232', 'St maryland', 4, '1,603.00', 400.75, '2,003.75', '2024-11-11 23:41:54', '2024-11-11 23:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductImage` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Stock` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `CategoryID` int(11) DEFAULT NULL,
  `ProductStatus` enum('New','In Stock','Out of Stock','Sale') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `ProductImage`, `Description`, `Price`, `Stock`, `created_at`, `updated_at`, `CategoryID`, `ProductStatus`) VALUES
(1, 'Cat Food', 'downloads/hAei99zrgIc62H7QegIao846PtAZH0gCyS2bYQW0.jpg', 'Cat Food For Healthy growth', 400.00, 25, '2024-05-24 17:33:22', '2024-06-09 18:50:35', 2, 'New'),
(2, 'Pigeon Food', 'downloads/EhP6rocRg909L4h0rQZcrxmhyfdUkAIgvqsxPYNL.jpg', 'Natural with Added vitamins and minerals', 400.00, 15, '2024-05-24 17:34:13', '2024-11-13 22:54:10', 2, 'Sale'),
(3, 'Grain Free Recipe', 'downloads/sBd2yk0EGzVP0Df3A9n3uyaggih5aDuqR0HgKjE9.jpg', 'Whole Earth Grain Free Recipe for your beloved Pets.', 401.00, 2, '2024-05-24 17:34:52', '2024-11-13 23:30:40', 2, 'New'),
(4, 'Dog Bed', 'downloads/lo5TofU5w6XdXcSnDSvXbszuKHNYAIoZoYBC9SQh.jpg', 'Dog Bed\r\nDog  Comfortable Bed', 400.00, 22, '2024-05-24 17:35:29', '2024-06-06 23:41:20', 5, 'Sale'),
(5, 'Shalwar Kmez', 'downloads/4MDMdqt9zHmndzi0YzL0IX7ahosVXTznPXR0DDTw.jpg', 'dsdsds', 35000.00, 22, '2024-05-25 17:41:23', '2024-05-25 17:45:56', 5, 'New'),
(6, 'Cat Food', 'downloads/GJY36aOXaeLvlO50iyhMsCRb1pZls02kquSJzbIS.jpg', 'cat food', 32.00, 2, '2024-06-06 22:10:16', '2024-06-06 22:16:18', 3, 'New'),
(7, 'Shalwar Kmez', 'downloads/hOSidDYezrmOKt76RzlyFGRtYdM9NX4VMnikJVfy.jpg', 'hhhyuyuyuhhjhj', 4.00, 34, '2024-06-09 18:41:00', '2024-06-10 00:18:40', 1, 'New'),
(9, 'adsfs', 'downloads/yAOL91RmVJ9CheszasaRq4sZggjUUQ6TXnVSluys.jpg', 'adsfdsdfs', 3232232.00, 233, '2024-11-13 22:47:19', '2024-11-13 22:47:53', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `user_id`, `question_text`, `created_at`, `updated_at`) VALUES
(6, 1, 'What are the best dog breeds for families with kids?', '2024-06-03 17:09:43', '2024-06-04 16:53:34'),
(7, 2, 'How can I train my cat to use the litter box?', '2024-06-03 17:09:07', '2024-06-04 16:53:34'),
(8, 1, 'What should I feed my pet rabbit for optimal health?', '2024-06-03 17:09:07', '2024-08-01 15:04:38'),
(12, 1, 'Dogs are best', '2024-06-04 21:02:10', '2024-06-04 16:53:34'),
(15, 1, 'i am professional Pet Care', '2024-06-04 23:31:53', '2024-06-04 16:53:34'),
(19, 1, 'How many breads of dog', '2024-06-06 23:43:41', '2024-06-06 16:43:41'),
(21, 1, 'pet are loyal', '2024-06-07 22:16:40', '2024-06-07 15:16:40'),
(22, 1, 'sdas', '2024-06-09 19:53:55', '2024-06-09 12:53:56'),
(25, 2, 'I want to know about pets', '2024-11-11 23:43:14', '2024-11-11 15:43:14');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `reply_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `user_id`, `question_id`, `reply_text`, `created_at`, `updated_at`) VALUES
(1, 2, 12, 'good\r\n', '2024-06-04 14:19:49', '2024-08-01 15:03:16'),
(2, 2, 6, 'These are Just ', '2024-06-04 14:20:38', '2024-06-04 15:15:12'),
(3, 2, 6, 'thses are not ', '2024-06-04 14:22:38', '2024-08-01 15:03:21'),
(9, NULL, NULL, 'Yes', '2024-06-09 20:03:58', '2024-08-01 15:00:36'),
(10, NULL, NULL, 'what are ypu in your senses', '2024-07-10 23:26:57', '2024-08-01 15:00:40'),
(11, NULL, NULL, 'Great', '2024-07-24 09:10:07', '2024-08-01 15:00:44'),
(13, 2, 22, 'what', '2024-08-01 22:52:52', '2024-08-01 22:52:52'),
(14, 2, 22, 'what', '2024-08-01 22:57:54', '2024-08-01 22:57:54'),
(15, 2, 21, 'yes aggreed ❤️', '2024-08-01 23:11:14', '2024-08-01 23:11:14'),
(16, 2, 22, 'hey', '2024-08-14 23:35:06', '2024-08-14 23:35:06'),
(17, 2, 21, 'Nice', '2024-08-14 23:40:17', '2024-08-14 23:40:17');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL CHECK (`rating` between 1 and 5),
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `doctor_id`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Excellent doctor, highly recommend!', '2024-06-22 12:17:09', '2024-06-22 12:46:16'),
(2, 7, 1, 5, 'Excellent doctor, highly recommend!', '2024-06-22 12:17:20', '2024-06-22 15:34:54'),
(3, 1, 1, 1, 'Great Doctor', '2024-06-22 22:58:31', '2024-06-22 22:58:31'),
(4, 1, 3, 2, 'great', '2024-06-24 20:01:42', '2024-06-24 20:01:42'),
(5, 1, 4, 4, 'GReat doc', '2024-06-28 19:23:02', '2024-06-28 19:23:02'),
(6, 1, 2, 3, 'Great Person', '2024-07-11 01:04:20', '2024-07-11 01:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `picture` varchar(1500) DEFAULT NULL,
  `bio` mediumtext DEFAULT NULL,
  `phone_number` longtext DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `email`, `picture`, `bio`, `phone_number`, `password`, `created_at`, `updated_at`, `facebook`, `linkedin`, `instagram`, `status`) VALUES
(3, 'Seller', 'seller@gmail.com', 'downloads/y5U2nXDDanv0V9HSMwCmvv7KubtRh20smWynf5eT.png', 'Seller of Year', '03131545544545', '$2y$12$r0unAAMzTD4InnAz9/YqTOzseOEadm59orV3tNyG.dV4MwdVGNhdO', NULL, '2024-11-13 14:24:37', NULL, NULL, NULL, 'active'),
(4, 'Seller2', 'seller2@gmail.com', 'downloads/yLJ8rgu1bawDZNL45BGso2q6cOQ5SQcaMwypi2e5.png', 'Best Seller', '03135360330', '$2y$10$KvoziaoRqm4btO/KlgEETeHLi44M7db1SG8JJcorLHmpPLYmDnczC', '2024-07-24 22:13:10', '2024-08-23 00:17:46', 'https://www.linkedin.com/feed/', 'https://www.linkedin.com/feed/', NULL, 'active'),
(15, 'Seller6', 'seller6@gmail.com', 'downloads/BsbZG7xltjjQMzyWUsgsnHhqDPUmaYcZWHeszG9Z.png', NULL, NULL, '$2y$12$Usued8aWKxwQAmLAXw5N2eNqhmBSnvfyhrVy9uU/kGOjy9dd0q8kW', '2024-11-06 15:39:00', '2024-11-06 15:40:47', NULL, NULL, NULL, 'active'),
(16, 'Seller', 'seller9@gmail.com', 'downloads/fW3gcF6Uj5HXPYnaQYgFrL1HHdsMTUM1CGl6omM5.png', NULL, NULL, '$2y$12$JkEIgC0GVwrCn/DkRaz1eePqhWL8kFpOFpzlcNKYR3tZNKLf67W/a', '2024-11-09 00:25:31', '2024-11-09 00:26:10', NULL, NULL, NULL, 'active'),
(17, 'newseller', 'newseller@gmail.com', NULL, NULL, NULL, '$2y$12$tFWxIk3DTqLxdFCFkAYnQOWbyxp1tf6rzSDMmobraUwxYTPifIUNq', '2024-11-11 23:17:06', '2024-11-11 23:17:06', NULL, NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `seller_admin_chats`
--

CREATE TABLE `seller_admin_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_admin_chats`
--

INSERT INTO `seller_admin_chats` (`id`, `sender_id`, `receiver_id`, `message`, `seen`, `created_at`, `updated_at`) VALUES
(2, 3, 1, 'i told you', 0, '2024-07-29 16:46:31', '2024-07-29 16:46:31'),
(4, 3, 1, 'are you there', 0, '2024-07-29 17:42:17', '2024-07-29 17:42:17'),
(22, 1, 3, 'yes doctor', 0, '2024-07-29 23:35:24', '2024-07-29 23:35:24'),
(23, 1, 3, 'Please Doctor Fix this Really thankful if you do this', 0, '2024-07-29 23:37:52', '2024-07-29 23:37:52'),
(24, 1, 3, 'hey', 0, '2024-07-29 23:39:48', '2024-07-29 23:39:48'),
(25, 1, 3, 'yes doctor', 0, '2024-07-29 23:42:34', '2024-07-29 23:42:34'),
(26, 1, 3, 'Please Doctor Fix this Really thankful if you do this', 0, '2024-07-29 23:43:55', '2024-07-29 23:43:55'),
(27, 1, 3, 'hey', 0, '2024-07-29 23:48:17', '2024-07-29 23:48:17'),
(28, 1, 3, 'are you there', 0, '2024-07-30 00:53:46', '2024-07-30 00:53:46'),
(29, 1, 3, 'i told you', 0, '2024-07-30 00:59:16', '2024-07-30 00:59:16'),
(30, 1, 3, 'yes', 0, '2024-07-30 01:05:34', '2024-07-30 01:05:34'),
(31, 3, 1, 'are you there', 0, '2024-07-30 01:05:46', '2024-07-30 01:05:46'),
(32, 3, 1, 'yes doctor', 0, '2024-07-30 01:06:35', '2024-07-30 01:06:35'),
(33, 1, 3, 'i told you', 0, '2024-07-30 01:10:31', '2024-07-30 01:10:31'),
(34, 4, 1, 'hey admin', 0, '2024-07-30 01:11:12', '2024-07-30 01:11:12'),
(35, 1, 4, 'yes', 0, '2024-07-30 01:11:55', '2024-07-30 01:11:55'),
(36, 4, 1, 'nothing 😒', 0, '2024-07-30 01:12:19', '2024-07-30 01:12:19'),
(37, 1, 4, 'ok then why text me 👌❤️', 0, '2024-07-30 01:12:37', '2024-07-30 01:12:37'),
(38, 1, 4, 'hey👌', 0, '2024-07-30 01:20:05', '2024-07-30 01:20:05'),
(39, 4, 1, 'yes😒', 0, '2024-07-30 01:20:19', '2024-07-30 01:20:19'),
(40, 4, 1, 'yes', 0, '2024-07-30 01:23:55', '2024-07-30 01:23:55'),
(41, 4, 1, 'yes doctor', 0, '2024-07-30 01:24:57', '2024-07-30 01:24:57'),
(42, 4, 1, 'i told you', 0, '2024-07-30 01:27:46', '2024-07-30 01:27:46'),
(43, 1, 4, 'yes doctor', 0, '2024-07-30 01:27:55', '2024-07-30 01:27:55'),
(44, 1, 3, 'hey', 0, '2024-07-30 01:29:55', '2024-07-30 01:29:55'),
(45, 3, 1, 'yes😒', 0, '2024-07-30 01:30:07', '2024-07-30 01:30:07'),
(46, 3, 1, 'hey', 0, '2024-08-14 18:31:51', '2024-08-14 18:31:51'),
(47, 1, 3, 'yes', 0, '2024-08-14 18:32:07', '2024-08-14 18:32:07'),
(48, 3, 1, 'helo admin', 0, '2024-08-14 23:01:54', '2024-08-14 23:01:54'),
(49, 1, 3, 'yes tell me', 0, '2024-08-14 23:02:06', '2024-08-14 23:02:06'),
(50, 3, 1, 'hey admin', 0, '2024-09-30 21:52:48', '2024-09-30 21:52:48'),
(51, 15, 1, 'hey', 0, '2024-11-06 15:45:44', '2024-11-06 15:45:44'),
(52, 17, 1, 'listen', 0, '2024-11-11 23:17:31', '2024-11-11 23:17:31'),
(53, 1, 17, 'yes', 0, '2024-11-11 23:18:18', '2024-11-11 23:18:18'),
(54, 17, 1, 'ok', 0, '2024-11-11 23:18:24', '2024-11-11 23:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `seller_user_chats`
--

CREATE TABLE `seller_user_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `seen` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller_user_chats`
--

INSERT INTO `seller_user_chats` (`id`, `sender_id`, `receiver_id`, `message`, `seen`, `created_at`, `updated_at`) VALUES
(155, 3, 2, 'are you there', 0, '2024-07-29 14:11:44', '2024-07-29 14:11:44'),
(156, 2, 3, 'Hey', 0, '2024-07-29 14:14:36', '2024-07-29 14:14:36'),
(157, 3, 2, 'what going on ?', 0, '2024-07-29 14:14:47', '2024-07-29 14:14:47'),
(158, 1, 3, 'hey', 0, '2024-07-29 14:36:19', '2024-07-29 14:36:19'),
(159, 1, 3, 'hey', 0, '2024-07-29 14:36:42', '2024-07-29 14:36:42'),
(160, 3, 1, 'yes', 0, '2024-07-29 14:36:51', '2024-07-29 14:36:51'),
(161, 1, 3, 'i want to let uknow', 0, '2024-07-29 14:37:29', '2024-07-29 14:37:29'),
(165, 1, 3, 'yes', 0, '2024-08-01 23:50:56', '2024-08-01 23:50:56'),
(166, 2, 3, 'hey', 0, '2024-08-14 22:55:46', '2024-08-14 22:55:46'),
(167, 3, 2, 'yes', 0, '2024-08-14 23:03:02', '2024-08-14 23:03:02'),
(168, 2, 3, 'nothin', 0, '2024-08-14 23:03:08', '2024-08-14 23:03:08'),
(169, 2, 3, 'hey please response me', 0, '2024-09-29 20:22:43', '2024-09-29 20:22:43'),
(170, 2, 3, 'Hey', 0, '2024-09-30 20:48:37', '2024-09-30 20:48:37'),
(171, 3, 2, 'yes', 0, '2024-09-30 20:49:05', '2024-09-30 20:49:05'),
(172, 3, 2, 'yes', 0, '2024-09-30 20:49:06', '2024-09-30 20:49:06'),
(173, 2, 3, 'hey seller', 0, '2024-09-30 21:42:34', '2024-09-30 21:42:34'),
(174, 2, 15, 'hey', 0, '2024-11-06 15:51:18', '2024-11-06 15:51:18'),
(175, 15, 2, 'yes', 0, '2024-11-06 15:51:49', '2024-11-06 15:51:49'),
(176, 2, 16, 'hy', 0, '2024-11-09 00:52:16', '2024-11-09 00:52:16'),
(177, 16, 2, 'yes', 0, '2024-11-09 00:52:42', '2024-11-09 00:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bio` varchar(1000) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `bio`, `picture`, `phone_number`, `username`, `created_at`, `updated_at`, `status`) VALUES
(1, 'arooj', 'arooj@gmail.com', '$2y$10$KvoziaoRqm4btO/KlgEETeHLi44M7db1SG8JJcorLHmpPLYmDnczC', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence was created for the bliss of souls like mine.I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents.', 'downloads/vosvjZuGiaMZ76PFbuWFbVBzmKCVvY0Ehb3cHd45.png', '03135360330', NULL, '2024-05-05 20:49:37', '2024-08-22 17:11:11', 'active'),
(2, 'user', 'user@gmail.com', '$2y$10$hYqLE57LR0.dC/ja7ZFRNOVifDVNphh6BEXc/S5M8GpR.wY9LJP8e', NULL, 'downloads/SGiNG9pQsMTG2FlZXlKOdtHmAQQis20foS6sx2ef.png', '03135360330', NULL, '2024-05-07 01:50:20', '2024-08-22 17:12:33', 'active'),
(7, 'user', 'user2@gmail.com', '$2y$10$KvoziaoRqm4btO/KlgEETeHLi44M7db1SG8JJcorLHmpPLYmDnczC', NULL, 'downloads/WY50WIP8lFhV9uW9ARlYLCpZGQ5kndwQ5HMwUm4b.jpg', NULL, 'user2', '2024-05-10 17:07:19', '2024-08-01 15:25:41', 'active'),
(9, 'maryam', 'maryam@gmail.com', '$2y$12$/LH5rT0r2DDLpWLruVwGSOFFyFzHpeIgntdzbmUCZfXyyHGnUGZ3u', NULL, NULL, NULL, NULL, '2024-10-30 13:17:48', '2024-10-30 13:17:48', 'inactive'),
(10, 'najaf', 'najfaj@gmail.com', '$2y$12$nlea9qt7c2p8juXg1haLQOCjZBP0PZ/VkNX3kW0996gdWJthzYX3q', NULL, NULL, NULL, NULL, '2024-11-14 10:44:49', '2024-11-14 10:44:49', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blog_category` (`category_id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blog_comments_blog_id` (`blog_id`),
  ADD KEY `fk_blog_comments_user_id` (`user_id`);

--
-- Indexes for table `blog_likes`
--
ALTER TABLE `blog_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_blog_likes_blog_id` (`blog_id`),
  ADD KEY `fk_blog_likes_user_id` (`user_id`);

--
-- Indexes for table `buy_requests`
--
ALTER TABLE `buy_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorite_doctors`
--
ALTER TABLE `favorite_doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `like_products`
--
ALTER TABLE `like_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_replies`
--
ALTER TABLE `like_replies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`reply_id`),
  ADD KEY `reply_id` (`reply_id`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_seller` (`seller_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `CategoryID` (`CategoryID`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `seller_admin_chats`
--
ALTER TABLE `seller_admin_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_user_chats`
--
ALTER TABLE `seller_user_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_likes`
--
ALTER TABLE `blog_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `buy_requests`
--
ALTER TABLE `buy_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_doctors`
--
ALTER TABLE `favorite_doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `like_products`
--
ALTER TABLE `like_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `like_replies`
--
ALTER TABLE `like_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `seller_admin_chats`
--
ALTER TABLE `seller_admin_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `seller_user_chats`
--
ALTER TABLE `seller_user_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `fk_blog_category` FOREIGN KEY (`category_id`) REFERENCES `blog_categories` (`id`);

--
-- Constraints for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `fk_blog_comments_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `fk_blog_comments_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `blog_likes`
--
ALTER TABLE `blog_likes`
  ADD CONSTRAINT `fk_blog_likes_blog_id` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `fk_blog_likes_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `buy_requests`
--
ALTER TABLE `buy_requests`
  ADD CONSTRAINT `buy_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `buy_requests_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`),
  ADD CONSTRAINT `buy_requests_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `listings` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `products` (`ProductID`) ON DELETE CASCADE;

--
-- Constraints for table `favorite_doctors`
--
ALTER TABLE `favorite_doctors`
  ADD CONSTRAINT `favorite_doctors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorite_doctors_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `like_replies`
--
ALTER TABLE `like_replies`
  ADD CONSTRAINT `like_replies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `like_replies_ibfk_2` FOREIGN KEY (`reply_id`) REFERENCES `replies` (`id`);

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `fk_seller` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `replies`
--
ALTER TABLE `replies`
  ADD CONSTRAINT `replies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `replies_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
