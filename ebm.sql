-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2024 at 12:19 AM
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
-- Database: `ebm`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount_due` decimal(10,2) NOT NULL,
  `due_date` date NOT NULL,
  `status` enum('paid','unpaid','overdue') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `user_id`, `amount_due`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 496.36, '2009-08-01', 'paid', '2024-11-29 15:34:48', '2024-11-29 16:32:26'),
(2, 2, 442.23, '1993-12-08', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(3, 2, 107.41, '2006-10-26', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(4, 12, 332.03, '1991-02-02', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(5, 13, 113.02, '2018-12-01', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(6, 14, 252.40, '2008-10-03', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(7, 3, 259.60, '2019-04-03', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(8, 3, 283.12, '2014-02-22', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(9, 3, 266.79, '2008-06-04', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(10, 15, 377.07, '2014-02-20', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(11, 16, 53.57, '1996-05-07', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(12, 17, 466.33, '2000-04-15', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(13, 4, 483.22, '2006-06-30', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(14, 4, 321.72, '1990-08-03', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(15, 4, 482.54, '2004-05-29', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(16, 18, 225.16, '2004-08-18', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(17, 19, 120.54, '2009-07-02', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(18, 20, 467.37, '1987-08-07', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(19, 5, 366.97, '2013-05-01', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(20, 1, 282.67, '2021-02-01', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(21, 5, 483.77, '1975-07-07', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(22, 21, 250.38, '1986-05-23', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(23, 22, 71.77, '2004-11-05', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(24, 23, 405.34, '1982-10-17', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(25, 6, 119.05, '2017-10-31', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(26, 6, 348.06, '2018-09-14', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(27, 6, 464.19, '2017-07-05', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(28, 24, 363.35, '2014-02-27', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(29, 25, 91.26, '2009-04-08', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(30, 26, 119.95, '1999-02-22', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(31, 7, 137.48, '1990-11-23', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(32, 7, 303.90, '1975-01-10', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(33, 7, 378.66, '1976-09-30', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(34, 27, 281.24, '2001-09-30', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(35, 28, 480.65, '1986-05-23', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(36, 29, 312.44, '1985-09-17', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(37, 8, 330.67, '1994-07-26', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(38, 8, 422.30, '2004-09-25', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(39, 8, 404.37, '1998-11-06', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(40, 30, 303.73, '2010-02-08', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(41, 31, 250.30, '2019-12-09', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(42, 32, 114.02, '1978-04-26', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(43, 9, 230.78, '1991-12-25', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(44, 9, 403.29, '1993-11-10', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(45, 9, 343.76, '2005-04-01', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(46, 33, 230.73, '2000-10-17', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(47, 34, 373.04, '2024-09-19', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(48, 35, 361.02, '1985-08-10', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(49, 10, 287.10, '2020-07-17', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(50, 10, 64.26, '1990-08-28', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(51, 10, 293.92, '1984-05-30', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(52, 36, 278.55, '2009-06-24', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(53, 37, 412.15, '1976-08-20', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(54, 38, 432.62, '2005-03-04', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(55, 11, 374.40, '1986-10-08', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(56, 11, 306.79, '2015-06-17', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(57, 11, 298.26, '1981-07-23', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(58, 39, 225.57, '2005-10-20', 'overdue', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(59, 40, 187.52, '2019-10-23', 'unpaid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(60, 41, 312.63, '1994-04-14', 'paid', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(61, 2, 1300.00, '2024-12-29', 'unpaid', '2024-11-29 17:18:18', '2024-11-29 17:18:18'),
(62, 2, 1300.00, '2024-12-29', 'unpaid', '2024-11-29 17:24:58', '2024-11-29 17:24:58'),
(63, 2, 650.00, '2024-12-29', 'unpaid', '2024-11-29 17:25:08', '2024-11-29 17:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `electricity_usage_records`
--

CREATE TABLE `electricity_usage_records` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `units_consumed` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `electricity_usage_records`
--

INSERT INTO `electricity_usage_records` (`id`, `user_id`, `start_date`, `end_date`, `units_consumed`, `created_at`, `updated_at`) VALUES
(1, 1, '1996-06-18', '1984-05-19', 384.82, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(2, 2, '1973-07-23', '1980-01-21', 303.14, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(3, 2, '1992-03-06', '1996-10-02', 59.52, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(4, 2, '2005-09-06', '1986-04-07', 297.16, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(5, 2, '2021-07-26', '1975-09-16', 449.32, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(6, 3, '2022-08-21', '1980-07-21', 365.68, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(7, 3, '2019-08-14', '1988-02-12', 72.28, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(8, 3, '1995-11-25', '1995-04-10', 152.66, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(9, 3, '2006-01-16', '2002-06-18', 443.43, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(10, 3, '2020-05-11', '1997-03-02', 386.29, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(11, 1, '2023-09-18', '1984-12-27', 135.25, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(12, 4, '1980-07-02', '1974-05-12', 368.99, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(13, 4, '1979-11-29', '2006-02-19', 317.83, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(14, 4, '1977-01-14', '1979-07-02', 449.21, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(15, 4, '1984-08-21', '1994-06-16', 287.24, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(16, 5, '2023-01-18', '1995-01-18', 467.00, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(17, 5, '2013-06-21', '1991-09-03', 138.75, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(18, 5, '2012-08-04', '2007-09-24', 217.10, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(19, 5, '2018-11-14', '1999-06-10', 204.93, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(20, 5, '2010-01-24', '2018-06-20', 111.16, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(21, 6, '1978-11-01', '1973-11-21', 277.66, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(22, 6, '1987-03-13', '1976-04-11', 361.83, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(23, 6, '1987-05-02', '2013-02-06', 158.01, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(24, 6, '1997-07-04', '1979-10-30', 400.71, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(25, 6, '2001-01-28', '2017-01-04', 339.97, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(26, 7, '1978-10-07', '1998-01-26', 340.94, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(27, 7, '2016-06-02', '1991-12-19', 279.84, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(28, 7, '1993-03-15', '1985-11-07', 297.06, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(29, 7, '1982-11-16', '1995-05-06', 144.44, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(30, 7, '2003-12-09', '2001-04-06', 126.45, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(31, 8, '1984-04-09', '2006-02-17', 67.35, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(32, 8, '1993-02-06', '1970-01-18', 146.65, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(33, 8, '2023-06-19', '2010-11-05', 448.63, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(34, 8, '2013-03-27', '1974-04-17', 389.10, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(35, 8, '2006-11-20', '2010-01-16', 489.74, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(36, 9, '1976-10-06', '1988-07-17', 486.68, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(37, 9, '2000-04-18', '2013-05-28', 224.15, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(38, 9, '1992-02-13', '1988-11-18', 305.96, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(39, 9, '1983-09-29', '1987-05-21', 281.77, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(40, 9, '2023-08-23', '1970-04-14', 365.00, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(41, 10, '2000-06-15', '1991-08-30', 231.36, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(42, 10, '1970-10-27', '2008-02-05', 267.87, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(43, 10, '1984-01-24', '1996-06-08', 198.93, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(44, 10, '1986-05-22', '2011-03-01', 145.88, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(45, 10, '2014-06-30', '2018-10-24', 399.44, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(46, 11, '2009-08-09', '2021-05-20', 326.95, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(47, 11, '1993-12-14', '1991-12-12', 191.00, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(48, 11, '2000-11-17', '2000-05-31', 330.06, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(49, 11, '2004-05-04', '1980-04-12', 137.13, '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(50, 11, '1984-07-06', '2006-07-03', 229.31, '2024-11-29 15:34:48', '2024-11-29 15:34:48');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_11_29_205514_create_electricity_usage_records_table', 1),
(6, '2024_11_29_212615_create_bills_table', 1),
(7, '2024_11_29_225542_create_payments_table', 1),
(8, '2024_11_29_224711_add_is_admin_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `bill_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` enum('successful','failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'successful',
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `user_id`, `bill_id`, `amount`, `status`, `payment_date`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 73.28, 'successful', '2023-04-08 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(2, 1, 5, 131.77, 'successful', '1998-12-02 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(3, 2, 6, 25.62, 'failed', '2004-01-09 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(4, 3, 10, 168.48, 'failed', '1973-04-12 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(5, 3, 11, 101.30, 'failed', '2024-02-22 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(6, 3, 12, 354.71, 'successful', '1983-06-08 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(7, 4, 16, 166.17, 'successful', '1981-08-26 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(8, 4, 17, 208.25, 'successful', '2024-09-30 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(9, 4, 18, 274.72, 'failed', '2018-07-21 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(10, 5, 22, 305.91, 'successful', '1973-06-23 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(11, 5, 23, 178.98, 'successful', '1996-05-31 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(12, 5, 24, 459.14, 'failed', '1970-06-18 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(13, 6, 28, 446.07, 'failed', '1974-02-06 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(14, 6, 29, 457.92, 'successful', '1973-10-16 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(15, 6, 30, 478.72, 'failed', '2000-11-07 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(16, 7, 34, 207.05, 'successful', '1986-05-25 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(17, 7, 35, 303.80, 'failed', '2002-06-02 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(18, 7, 36, 280.27, 'successful', '1971-10-24 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(19, 8, 40, 232.42, 'successful', '2018-08-15 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(20, 8, 41, 381.20, 'successful', '1991-06-11 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(21, 8, 42, 456.28, 'failed', '1992-04-03 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(22, 9, 46, 176.53, 'successful', '1979-04-06 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(23, 9, 47, 280.05, 'successful', '2011-10-19 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(24, 9, 48, 80.02, 'successful', '1991-11-20 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(25, 10, 52, 73.13, 'failed', '1999-08-29 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(26, 10, 53, 108.12, 'failed', '2008-01-04 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(27, 10, 54, 114.50, 'failed', '1971-05-09 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(28, 11, 58, 107.52, 'successful', '2003-10-15 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(29, 11, 59, 352.68, 'failed', '1990-04-12 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(30, 11, 60, 96.62, 'successful', '1985-03-14 18:00:00', '2024-11-29 15:34:48', '2024-11-29 15:34:48'),
(31, 1, 1, 496.36, 'successful', '2024-11-29 22:32:26', '2024-11-29 16:32:26', '2024-11-29 16:32:26');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Bithi', 'bithi@ebm.com', NULL, '$2y$12$VQ8F8UJh1zUIDOkpPwxYTeFXoH9hFsaYomazBKenPHT0yUSFQMJAu', NULL, '2024-11-29 15:29:39', '2024-11-29 16:13:44', 0),
(2, 'Amelie Carter V', 'sebastian66@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'NVUNGZrWaV', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(3, 'Demario Franecki', 'nathanael25@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'VCuIB6ATIX', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(4, 'Rupert Dickinson', 'casper.marlene@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'GGLBgGL5Rh', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(5, 'Mr. Kamron Parker', 'piper.maggio@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'klKsQmGUYP', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(6, 'Aurelia Swaniawski', 'qtowne@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', '2GFLCWsA2T', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(7, 'Ansel Marvin', 'ellie.daugherty@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'mOn6bAbjJW', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(8, 'Jeramie Boyle', 'reid.feil@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'WbL2iwyjaG', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(9, 'Dr. Jenifer Russel', 'reynolds.clay@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'iAA4uPt5QB', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(10, 'Sam Schoen', 'talia87@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'vvZVOkajun', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(11, 'Zena Bogisich', 'lenna.gaylord@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'Ri1avRdrNv', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(12, 'Clovis Boyle', 'adrienne.oconnell@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'W30jtlEMxP', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(13, 'Lizeth Hyatt', 'epfeffer@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'zuy8EEHN32', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(14, 'Jaylan Lehner', 'green.jaeden@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'aZAeNh9Z7S', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(15, 'Dr. Jaida Powlowski PhD', 'natalia42@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'eP12xAkafJ', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(16, 'Katrina Borer', 'bergstrom.giovanni@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'JIQeOO6d78', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(17, 'Brandi Osinski', 'milo.russel@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'fi9ZezAMkK', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(18, 'Brennon Kub', 'wolf.myah@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'ckRWAlQNDI', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(19, 'Alexis Little', 'ujerde@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'HKpGqN8ux7', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(20, 'Rosie Walsh', 'americo75@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'KvJQCE0H9M', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(21, 'Carli Treutel', 'leannon.rollin@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'syEEkSioAE', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(22, 'Kenna Spencer II', 'weber.treva@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', '0WsVouFKyE', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(23, 'Amos Cummerata', 'trussel@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'g8Mp3S4HYJ', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(24, 'Aletha Gulgowski', 'eula83@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'mkgrmt9V7p', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(25, 'Prof. Taylor Lang', 'lgulgowski@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'vlNQib5RRC', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(26, 'Prof. Jewel Hyatt', 'raymond.jast@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'bC771uKaoq', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(27, 'Ms. Macie Wiza', 'connelly.genoveva@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'AlC8x1hw63', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(28, 'Prof. Arne Hirthe DDS', 'robel.samantha@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'PrIJRWhsCd', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(29, 'Prof. Madalyn Lesch', 'king.lucy@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', '7PNKqXFrtl', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(30, 'Petra Mertz', 'asha23@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'NOCIA3QrQn', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(31, 'Hassie Schoen', 'hilton68@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', '3adQGLaYdY', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(32, 'Miss Dianna Ward', 'daniella15@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'HaHDlzONaq', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(33, 'Una Rippin', 'dena.lindgren@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'WQzY1yIinf', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(34, 'Carissa Johnston', 'feil.amalia@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'nQWpeIaXsq', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(35, 'Loraine Ernser', 'ykuhlman@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'UuEwyTVVkJ', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(36, 'May Nader', 'lthompson@example.com', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'qf2XkY4gVP', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(37, 'Myrtie Hintz', 'meagan93@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'rfeStziVzn', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(38, 'Joana Hauck Jr.', 'horacio18@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 't53tgmkCTs', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(39, 'Georgianna Bednar Jr.', 'zoe92@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'EHCiUu7Tpq', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(40, 'Trever Miller', 'klemke@example.net', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'nuTMHsCAdx', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0),
(41, 'Dr. Robert Hansen', 'fisher.ryder@example.org', '2024-11-29 15:34:48', '$2y$12$oyXhjTrTGXl0CTN57IlDHOTISvQpCvz/CkyZ.8qyXA87tzuFAZqiW', 'QpZlp6O3XF', '2024-11-29 15:34:48', '2024-11-29 15:34:48', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bills_user_id_foreign` (`user_id`);

--
-- Indexes for table `electricity_usage_records`
--
ALTER TABLE `electricity_usage_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `electricity_usage_records_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_bill_id_foreign` (`bill_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `electricity_usage_records`
--
ALTER TABLE `electricity_usage_records`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `electricity_usage_records`
--
ALTER TABLE `electricity_usage_records`
  ADD CONSTRAINT `electricity_usage_records_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_bill_id_foreign` FOREIGN KEY (`bill_id`) REFERENCES `bills` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
