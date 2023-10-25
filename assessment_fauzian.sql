-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2023 at 04:39 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assessment_fauzian`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `merchant_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `outlet_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `merchant_name`, `outlet_name`, `description`, `type`, `sales`, `created_at`, `updated_at`) VALUES
(1, 'Miss Carley Herzog', 'Veum Inc', 'Quisquam laboriosam porro assumenda eius consequuntur. Repellat distinctio placeat qui veritatis excepturi dicta nihil. Animi sit consequatur quam. Est distinctio a ea ducimus.', 'food', 338.69, '2023-10-12 19:55:45', '2023-10-12 19:55:45'),
(2, 'Burdette Feil', 'Dach, Little and Hand', 'Veniam quod autem voluptatem ipsam omnis aperiam pariatur. Commodi est aliquid occaecati repellendus assumenda. Sint sint in autem laudantium est facere. Aut quia fugit hic cupiditate qui et.', 'retail', 866.80, '2023-09-28 00:30:19', '2023-09-28 00:30:19'),
(3, 'Marley Hudson Jr.', 'Breitenberg, Gleichner and Altenwerth', 'Similique maiores ea veniam incidunt. Nihil sunt cum harum rerum sit porro harum. Autem qui nihil aut excepturi. Harum enim error nam unde et aut hic.', 'food', 234.21, '2023-10-23 14:09:59', '2023-10-23 14:09:59'),
(4, 'Emmanuelle Swift', 'Hammes, Kozey and Cruickshank', 'Error quia aut qui aut molestiae eum. Soluta dolorem et ex eos nulla commodi. Nihil velit quam neque rerum odio voluptatum in laudantium.', 'finance', 555.05, '2023-09-30 06:48:48', '2023-09-30 06:48:48'),
(5, 'Alexzander Fadel', 'Senger-Ernser', 'Officia libero repellat enim in. Quam ad cupiditate tempora tempore odit culpa non. Hic quos labore exercitationem culpa veniam repellat.', 'insurace', 213.84, '2023-10-14 13:31:09', '2023-10-14 13:31:09'),
(6, 'Kamren McKenzie IV', 'Paucek, Lubowitz and Wiza', 'Aut excepturi fugit repudiandae enim necessitatibus. Quam ab est assumenda deleniti maiores saepe. Molestias quam et nulla dolores provident sapiente.', 'food', 18.05, '2023-09-25 06:09:50', '2023-09-25 06:09:50'),
(7, 'Justen Pagac Jr.', 'Hirthe and Sons', 'Facere eveniet ut illo. Placeat odit atque et et officia dolor. Quo nisi consequatur culpa molestiae quod nihil magnam.', 'retail', 563.21, '2023-09-30 06:52:44', '2023-09-30 06:52:44'),
(8, 'Norene Gleason', 'Heidenreich, Gerlach and Kessler', 'Animi dignissimos incidunt veritatis. Deserunt doloribus dolor maxime quasi animi. Sequi voluptas in corporis minima. Non dolores qui dolores mollitia animi deleniti.', 'retail', 605.81, '2023-10-19 20:24:12', '2023-10-19 20:24:12'),
(9, 'Heaven Spinka', 'Nader, Prohaska and Price', 'Laboriosam aut fugit sunt rerum qui sit ut iusto. Laudantium necessitatibus harum ut dignissimos est. Ex architecto sint sed sed consequatur exercitationem.', 'food', 757.94, '2023-09-25 00:01:35', '2023-09-25 00:01:35'),
(10, 'Diana Durgan', 'Kiehn-Breitenberg', 'In non provident quia optio sed. Similique ut quas hic distinctio. Iure omnis rerum magnam molestias in consequatur vero. Molestiae aliquam enim quibusdam aut hic.', 'retail', 925.64, '2023-10-18 09:10:24', '2023-10-18 09:10:24'),
(11, 'Miss Vivian Hansen V', 'Schumm and Sons', 'Reiciendis aut sed vitae aspernatur nesciunt. Ullam enim et voluptatem similique enim beatae. Est est sint voluptate sapiente.', 'insurace', 550.63, '2023-10-02 09:21:05', '2023-10-02 09:21:05'),
(12, 'Orpha Moen', 'Waelchi, Leuschke and Muller', 'Non porro magnam quisquam voluptas aut praesentium. Deserunt rerum voluptas voluptatem reprehenderit accusantium.', 'food', 456.08, '2023-10-16 13:02:35', '2023-10-16 13:02:35'),
(13, 'Miss Fae Beahan', 'O\'Conner Group', 'Et ex placeat quia. Harum ullam sit provident numquam. Error placeat reprehenderit similique sit deserunt.', 'insurace', 547.46, '2023-09-26 15:54:15', '2023-09-26 15:54:15'),
(14, 'Ciara Rowe', 'Lockman, Welch and Howe', 'Distinctio ad eos molestiae nulla. Sunt blanditiis alias pariatur vel. Quibusdam qui veritatis odit aut. Consectetur dolores odit quam neque consequatur facere dolores.', 'insurace', 81.51, '2023-10-10 22:30:30', '2023-10-10 22:30:30'),
(15, 'Reinhold Raynor', 'Jacobi, Hansen and Raynor', 'Commodi maiores dolor id aut odio rerum. Laborum non iusto sit qui laudantium ipsa quia. Saepe vitae omnis perferendis.', 'food', 190.25, '2023-09-28 08:12:14', '2023-09-28 08:12:14'),
(16, 'Mrs. Kristy Kovacek', 'Block PLC', 'Exercitationem quo nemo ut non vero id voluptatum. Mollitia cum doloremque velit vel dolore. Id sit nemo consequatur ipsa praesentium. Qui in molestiae aliquam praesentium id omnis.', 'retail', 316.97, '2023-09-30 14:30:32', '2023-09-30 14:30:32'),
(17, 'Theresia Keeling', 'Bahringer-Ritchie', 'Ipsa aut enim sint sequi illo itaque dolores. Aut totam totam cupiditate vel. Et corrupti praesentium in atque exercitationem sunt odit.', 'food', 825.94, '2023-10-05 13:38:32', '2023-10-05 13:38:32'),
(18, 'Bernadette Schoen', 'Stracke-Okuneva', 'Iste eligendi quia harum voluptatem odio repudiandae. Et qui maxime et quis natus quam quas quam. Itaque quis ab ut praesentium. Quo harum autem maiores eum.', 'food', 405.81, '2023-10-10 05:22:11', '2023-10-10 05:22:11'),
(19, 'Keagan Renner PhD', 'Rowe Ltd', 'Quis ipsum aut ex animi voluptatem quos nam. Excepturi doloremque ipsum odit aliquam dicta. Nam sit et delectus quos quasi.', 'retail', 885.01, '2023-09-25 17:17:30', '2023-09-25 17:17:30'),
(20, 'Sally Boyle', 'Wolff and Sons', 'Non ipsum commodi occaecati vero culpa ipsum. Officia eligendi qui quas expedita. Voluptas ea saepe libero sequi et qui. Soluta ut et tempore.', 'insurace', 935.04, '2023-10-06 08:44:38', '2023-10-06 08:44:38');

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
(43, '2014_10_12_000000_create_users_table', 1),
(44, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(45, '2023_10_24_023854_create_business_table', 1),
(46, '2023_10_24_144245_create_reports_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_id` bigint(20) UNSIGNED NOT NULL,
  `staff_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_time` datetime NOT NULL,
  `payment_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` double(8,2) NOT NULL,
  `change_amount` double(8,2) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `payment_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `business_id`, `staff_id`, `transaction_time`, `payment_type`, `customer_name`, `tax`, `pay_amount`, `change_amount`, `total_amount`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 4, 10, '2023-09-30 08:41:34', 'Bank Transfer', 'Dejah VonRueden PhD', '9.96', 396.68, 115.95, 230.43, 'Paid', '2023-09-25 16:53:58', '2023-09-25 16:53:58'),
(2, 9, 10, '2023-10-09 06:45:26', 'Debit', 'Ms. Ottilie Dach Sr.', '4.33', 242.29, 929.73, 892.08, 'Paid', '2023-10-22 20:59:08', '2023-10-22 20:59:08'),
(3, 7, 8, '2023-09-24 08:17:19', 'Debit', 'Rae Aufderhar DDS', '7.23', 176.29, 681.13, 527.49, 'Paid', '2023-10-14 01:32:56', '2023-10-14 01:32:56'),
(4, 6, 3, '2023-10-19 08:53:34', 'Debit', 'Aubree Schulist V', '6.91', 837.11, 337.98, 584.45, 'Paid', '2023-10-03 23:02:33', '2023-10-03 23:02:33'),
(5, 5, 8, '2023-10-17 01:16:15', 'Cash', 'Oda Durgan', '2.38', 78.33, 665.62, 772.03, 'Not Paid', '2023-09-24 07:20:53', '2023-09-24 07:20:53'),
(6, 1, 1, '2023-09-27 22:17:26', 'Credit', 'Amalia Mosciski III', '3.59', 990.65, 747.41, 133.94, 'Not Paid', '2023-10-04 22:34:27', '2023-10-04 22:34:27'),
(7, 2, 3, '2023-09-30 10:45:15', 'Credit', 'Miss Dolly Prohaska PhD', '6.82', 480.47, 126.65, 532.58, 'Paid', '2023-10-15 05:48:21', '2023-10-15 05:48:21'),
(8, 9, 1, '2023-10-17 10:44:40', 'Debit', 'Mr. Alexandre Abshire IV', '8.97', 94.42, 889.07, 855.53, 'Paid', '2023-10-13 18:42:35', '2023-10-13 18:42:35'),
(9, 3, 1, '2023-10-08 02:35:39', 'Bank Transfer', 'Prof. Geovanni Emard MD', '4.27', 846.44, 324.40, 460.27, 'Not Paid', '2023-10-16 18:47:41', '2023-10-16 18:47:41'),
(10, 3, 2, '2023-10-01 12:17:47', 'Cash', 'Deborah Abbott', '2.45', 948.18, 490.86, 746.81, 'Paid', '2023-10-07 19:56:16', '2023-10-07 19:56:16'),
(11, 4, 8, '2023-10-09 18:22:28', 'Credit', 'Mr. Tristian Huel DDS', '5.27', 124.84, 674.08, 138.00, 'Not Paid', '2023-10-07 14:46:42', '2023-10-07 14:46:42'),
(12, 2, 10, '2023-10-15 04:12:28', 'Cash', 'Sandy Prosacco', '4.3', 785.63, 231.38, 220.48, 'Not Paid', '2023-10-23 12:55:47', '2023-10-23 12:55:47'),
(13, 1, 3, '2023-10-13 02:26:08', 'Bank Transfer', 'Mr. Peter Muller I', '9.14', 239.06, 204.44, 883.82, 'Paid', '2023-09-26 11:07:03', '2023-09-26 11:07:03'),
(14, 10, 5, '2023-09-26 15:45:21', 'Debit', 'Leann Ritchie', '1.36', 486.43, 452.72, 275.04, 'Not Paid', '2023-10-04 00:14:21', '2023-10-04 00:14:21'),
(15, 6, 10, '2023-09-28 23:32:23', 'Credit', 'Lois Smith', '4.7', 308.47, 201.25, 303.55, 'Paid', '2023-10-15 06:05:22', '2023-10-15 06:05:22'),
(16, 9, 4, '2023-09-26 11:35:57', 'Bank Transfer', 'Dr. Erin Kerluke DVM', '5.56', 646.25, 958.15, 105.10, 'Paid', '2023-10-17 07:49:28', '2023-10-17 07:49:28'),
(17, 6, 5, '2023-10-01 18:42:11', 'Cash', 'Prof. Clint Corkery', '2.98', 695.46, 961.45, 357.68, 'Not Paid', '2023-10-02 02:02:31', '2023-10-02 02:02:31'),
(18, 4, 9, '2023-10-18 04:16:23', 'Cash', 'Rhea Ferry', '5.52', 651.65, 607.97, 146.09, 'Not Paid', '2023-09-27 03:41:36', '2023-09-27 03:41:36'),
(19, 10, 4, '2023-10-06 15:57:13', 'Bank Transfer', 'Irving Bechtelar', '7.44', 461.30, 549.09, 306.83, 'Not Paid', '2023-10-14 14:56:04', '2023-10-14 14:56:04'),
(20, 5, 1, '2023-10-23 09:07:30', 'Credit', 'Kyle Rath I', '2.19', 462.57, 511.75, 289.38, 'Not Paid', '2023-10-12 02:12:35', '2023-10-12 02:12:35'),
(21, 8, 17, '2023-09-24 14:46:05', 'Bank Transfer', 'Mustafa Fay V', '2.82', 326.07, 756.68, 909.88, 'Paid', '2023-09-24 03:40:46', '2023-09-24 03:40:46'),
(22, 13, 11, '2023-09-27 17:43:24', 'Debit', 'Prof. Nathanial Jast', '6.86', 478.30, 950.73, 455.45, 'Paid', '2023-10-11 09:32:03', '2023-10-11 09:32:03'),
(23, 19, 19, '2023-10-20 10:42:43', 'Cash', 'Kenyatta Schmidt', '8.39', 61.85, 45.80, 138.84, 'Paid', '2023-10-10 01:02:57', '2023-10-10 01:02:57'),
(24, 8, 4, '2023-10-16 23:22:13', 'Debit', 'Oscar Armstrong', '8.01', 642.66, 828.32, 123.02, 'Not Paid', '2023-09-27 00:31:55', '2023-09-27 00:31:55'),
(25, 10, 16, '2023-10-11 17:32:45', 'Cash', 'Dr. Melba Murray DDS', '6.8', 416.37, 223.95, 998.17, 'Paid', '2023-10-09 04:36:18', '2023-10-09 04:36:18'),
(26, 8, 9, '2023-10-12 08:08:18', 'Credit', 'Bertha Kub IV', '8.78', 742.55, 888.80, 583.88, 'Paid', '2023-10-05 05:25:25', '2023-10-05 05:25:25'),
(27, 2, 2, '2023-10-14 17:41:28', 'Credit', 'Prof. Sabrina Gleason', '5.81', 699.42, 475.54, 858.61, 'Not Paid', '2023-10-03 00:27:06', '2023-10-03 00:27:06'),
(28, 11, 1, '2023-10-16 20:35:48', 'Debit', 'Hailie Buckridge', '9.09', 251.02, 787.20, 829.72, 'Not Paid', '2023-10-01 11:56:52', '2023-10-01 11:56:52'),
(29, 12, 18, '2023-09-26 00:14:15', 'Bank Transfer', 'Mr. Dejon Carter V', '7.74', 731.08, 466.82, 132.22, 'Not Paid', '2023-09-28 19:35:59', '2023-09-28 19:35:59'),
(30, 8, 5, '2023-10-18 15:38:37', 'Credit', 'Dr. Lavinia Nicolas III', '3.95', 834.20, 754.69, 550.52, 'Not Paid', '2023-10-04 23:45:31', '2023-10-04 23:45:31'),
(31, 11, 9, '2023-09-29 13:34:09', 'Credit', 'Mr. Tanner Hackett', '8.57', 270.62, 849.95, 824.19, 'Paid', '2023-10-08 03:29:03', '2023-10-08 03:29:03'),
(32, 7, 9, '2023-10-09 21:01:50', 'Cash', 'Prof. Melissa Kuphal DVM', '8.35', 716.92, 227.15, 995.68, 'Not Paid', '2023-10-15 01:46:15', '2023-10-15 01:46:15'),
(33, 12, 1, '2023-10-12 13:47:59', 'Cash', 'Lacy Toy DVM', '7.42', 287.68, 105.81, 46.65, 'Not Paid', '2023-09-28 23:57:27', '2023-09-28 23:57:27'),
(34, 13, 13, '2023-09-29 08:24:58', 'Bank Transfer', 'Abdullah Franecki', '1.22', 395.67, 410.07, 29.18, 'Paid', '2023-10-15 21:01:34', '2023-10-15 21:01:34'),
(35, 9, 17, '2023-10-09 07:50:15', 'Cash', 'Dr. Delfina Becker V', '4.82', 255.76, 138.23, 269.18, 'Not Paid', '2023-10-07 09:53:37', '2023-10-07 09:53:37'),
(36, 11, 5, '2023-09-27 14:04:43', 'Bank Transfer', 'Dexter McKenzie', '2.72', 689.06, 627.96, 621.44, 'Not Paid', '2023-10-09 08:01:33', '2023-10-09 08:01:33'),
(37, 14, 17, '2023-10-18 21:38:31', 'Credit', 'Tessie Reinger', '8.9', 235.09, 659.90, 677.96, 'Paid', '2023-10-04 14:40:30', '2023-10-04 14:40:30'),
(38, 8, 19, '2023-10-10 18:24:20', 'Cash', 'Prof. Buster Leuschke Sr.', '4.97', 311.66, 625.42, 625.60, 'Not Paid', '2023-10-21 12:28:39', '2023-10-21 12:28:39'),
(39, 16, 16, '2023-10-07 10:30:52', 'Bank Transfer', 'Mrs. Mozell Mitchell III', '3.89', 561.72, 942.33, 669.04, 'Not Paid', '2023-09-26 14:31:07', '2023-09-26 14:31:07'),
(40, 3, 7, '2023-10-15 11:30:24', 'Credit', 'Ebba Lang DDS', '4.29', 739.25, 954.41, 274.80, 'Paid', '2023-10-18 22:36:05', '2023-10-18 22:36:05'),
(41, 14, 8, '2023-10-21 13:42:26', 'Cash', 'Ms. Dorris Rippin MD', '1.53', 747.79, 757.04, 135.13, 'Paid', '2023-10-09 10:12:39', '2023-10-09 10:12:39'),
(42, 2, 11, '2023-09-26 18:08:44', 'Cash', 'Maggie Schuppe', '9.71', 996.24, 979.96, 188.67, 'Not Paid', '2023-10-21 18:35:00', '2023-10-21 18:35:00'),
(43, 5, 17, '2023-10-19 12:28:38', 'Credit', 'Zackary Kulas', '6.25', 455.18, 469.98, 425.23, 'Paid', '2023-10-21 17:24:41', '2023-10-21 17:24:41'),
(44, 9, 10, '2023-10-11 19:10:51', 'Cash', 'Mrs. Gretchen Reynolds II', '1.34', 226.40, 866.14, 794.80, 'Paid', '2023-10-18 09:34:04', '2023-10-18 09:34:04'),
(45, 1, 14, '2023-10-08 05:47:54', 'Bank Transfer', 'Elliott Padberg I', '3.61', 278.93, 334.95, 451.26, 'Paid', '2023-10-09 11:31:25', '2023-10-09 11:31:25'),
(46, 15, 1, '2023-10-07 00:34:54', 'Credit', 'Mrs. Jermaine Stracke III', '9.38', 774.29, 852.08, 698.39, 'Not Paid', '2023-09-29 07:42:43', '2023-09-29 07:42:43'),
(47, 5, 14, '2023-10-23 11:17:53', 'Debit', 'Cyril Lesch MD', '9.51', 963.28, 470.74, 275.45, 'Paid', '2023-09-28 02:54:40', '2023-09-28 02:54:40'),
(48, 6, 9, '2023-10-10 07:32:06', 'Debit', 'Oscar Kuhn DVM', '9.81', 600.12, 463.55, 443.90, 'Paid', '2023-10-14 00:14:10', '2023-10-14 00:14:10'),
(49, 1, 16, '2023-10-16 15:24:46', 'Credit', 'Luella Labadie', '5.78', 196.13, 862.52, 892.42, 'Paid', '2023-10-01 22:15:27', '2023-10-01 22:15:27'),
(50, 15, 13, '2023-10-13 20:27:49', 'Credit', 'Joanny Reinger MD', '7.02', 82.09, 578.97, 533.75, 'Not Paid', '2023-10-06 11:14:36', '2023-10-06 11:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Abigayle Hahn', 'antonia30@example.net', 'user', '$2y$10$3Mm1UYs8FskSaXXhtshmG.f/BNzx/TorQ.FwBEMWl2rWph3Kq1sr2', '2023-10-23 03:52:47', '2023-10-23 03:52:47'),
(2, 'Mrs. Theodora White', 'willa86@example.org', 'admin', '$2y$10$3qea5Er3NVwDphGvQ6oZBeqI0vtzesGY/NlTAuWMdtzRJL7BRLrm.', '2023-10-17 14:09:26', '2023-10-17 14:09:26'),
(3, 'Prof. Marley Wisoky Sr.', 'delores05@example.org', 'user', '$2y$10$YBHtoqeNT92ekXXpLBNlvuoCMm.Lpgg7q3RYk/eZ8OiSgRUG0X1aK', '2023-10-05 03:14:33', '2023-10-05 03:14:33'),
(4, 'Dr. Letitia Dickinson', 'xhills@example.org', 'admin', '$2y$10$RcLzxHlFq0Sq.e3gLQ4MBusARm47b/P.7kzBLABZqnHim9Dl/ZFTi', '2023-09-30 20:17:01', '2023-09-30 20:17:01'),
(5, 'Prof. Trevor Cremin Sr.', 'mueller.emerald@example.com', 'admin', '$2y$10$EmE8R3oOSl0f4hxgRfk3Be10851KvFRpHgiyfVlyoRq4YRbDrkXE.', '2023-10-05 12:31:09', '2023-10-05 12:31:09'),
(6, 'Brown Reinger DDS', 'keaton94@example.net', 'user', '$2y$10$L7dBo3YtiaZpN3nhgvAZWeC/O61sxW9qadYVJwPW/Z.KioejyoNhW', '2023-10-16 21:37:38', '2023-10-16 21:37:38'),
(7, 'Mr. Gunnar Bartoletti III', 'qkoepp@example.org', 'admin', '$2y$10$QFnU0WvkA7jmNp8aLpHpkeCNEJ.jLS1oufCP8Rgs660ReWD/QSeKG', '2023-10-17 09:28:50', '2023-10-17 09:28:50'),
(8, 'Josue Botsford II', 'alivia37@example.com', 'user', '$2y$10$sSnd.S1vHe.MMFXf8JE5.udStMHpOJpd6CqJgpT.E5LmPdqt.JmpW', '2023-10-20 14:41:08', '2023-10-20 14:41:08'),
(9, 'Keven Bogisich', 'htowne@example.net', 'user', '$2y$10$wN72PrJimiLGXjYvEXX0nuxlT.hGzDYk2232wBtnTBCsBHhnVCKcC', '2023-10-10 19:48:21', '2023-10-10 19:48:21'),
(10, 'Kathryn Keebler II', 'victoria.tromp@example.org', 'admin', '$2y$10$gy5Ut1SbBQcPSvQFSSmf5egkkqdcSwKKfEqvLCLRpTTThtyR84a7e', '2023-09-24 10:13:32', '2023-09-24 10:13:32'),
(11, 'Gordon Larson', 'thora.batz@example.org', 'admin', '$2y$10$yw9.Z.iFhh3L27tXnvrvPO2QHt8PcT4HXquZLUIlP36NYshdjnrkG', '2023-10-11 19:50:33', '2023-10-11 19:50:33'),
(12, 'Jettie Balistreri', 'crunolfsdottir@example.com', 'user', '$2y$10$VYpId8103e2o6AtSI..jOeO8kMAyTlDi1hLc8/COkUrKfZga2A5E2', '2023-10-15 07:52:44', '2023-10-15 07:52:44'),
(13, 'Jocelyn Mraz', 'zoe02@example.net', 'admin', '$2y$10$Ca.BtrYrdOyzJYUElN4dz.GFuKO8n0WlN1mtwDrWy6T5bdJ8/7hQS', '2023-10-14 09:40:09', '2023-10-14 09:40:09'),
(14, 'Dr. Annamae Volkman I', 'loreilly@example.net', 'user', '$2y$10$kvbEiGWgFbE4jqr47ZCOsetgDliKuQDKESkExubN2fdojKRaGQ73.', '2023-09-28 12:55:15', '2023-09-28 12:55:15'),
(15, 'Ms. Annette Goyette III', 'smith.kareem@example.com', 'admin', '$2y$10$Db8FvF3f/MJCaN9ICnpuaO8DRGYInHdPDL9nN4vA.mCi5C2qpHiyi', '2023-10-12 07:56:06', '2023-10-12 07:56:06'),
(16, 'April Gutmann', 'xschneider@example.com', 'user', '$2y$10$mVXm1fsTDaLuBEe6FgIPYe4ZIfN9kleMZ61WvjF/5jKjT8MP7qtKe', '2023-10-14 13:10:41', '2023-10-14 13:10:41'),
(17, 'Devonte Langosh', 'yasmeen04@example.com', 'user', '$2y$10$RBfldYQvJdNfcGfjmZoc6O0MxMvjtzyYnYTMjvfZcp7TM6tRFcgHa', '2023-10-20 20:11:35', '2023-10-20 20:11:35'),
(18, 'Francis Schaefer', 'zion80@example.net', 'admin', '$2y$10$GWPBoOD79MW0X6EKYaZq5.zC1br0g19NizdBCzE8VDPtOTZzST29C', '2023-10-07 14:27:07', '2023-10-07 14:27:07'),
(19, 'Burdette Mosciski II', 'marie93@example.net', 'user', '$2y$10$SzXZ/2h/foixnTnlUwsUAOuZNUWYVZIc2LXzaPSoDi1dCyHn12Gwy', '2023-10-21 19:27:26', '2023-10-21 19:27:26'),
(20, 'Dr. Layne Quitzon', 'corkery.naomi@example.org', 'user', '$2y$10$LaFj.8tStcNT5UKaOAjhqOcDpORhLd55WNvz54LlAJE0Wm2DBamcu', '2023-10-05 16:32:17', '2023-10-05 16:32:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_business_id_foreign` (`business_id`),
  ADD KEY `reports_staff_id_foreign` (`staff_id`);

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
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reports_staff_id_foreign` FOREIGN KEY (`staff_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
