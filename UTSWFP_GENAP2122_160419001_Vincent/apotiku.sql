-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2022 at 06:27 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotiku`
--

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategoriobat160419001`
--

CREATE TABLE `kategoriobat160419001` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategoriobat160419001`
--

INSERT INTO `kategoriobat160419001` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Batuk', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Mata', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Nyeri Otot', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2022_03_31_053405_create_obat160419001_table', 2),
(9, '2022_03_31_053429_create_kategoriobat160419001_table', 2),
(10, '2022_03_31_053601_add_categoryid_column', 2);

-- --------------------------------------------------------

--
-- Table structure for table `obat160419001`
--

CREATE TABLE `obat160419001` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_obat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kategoriobat_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `obat160419001`
--

INSERT INTO `obat160419001` (`id`, `nama_obat`, `stok`, `harga`, `created_at`, `updated_at`, `kategoriobat_id`) VALUES
(1, 'OBH Combi', 3, 20900, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'Woods', 7, 27000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(3, 'Vicks Formula 44', 5, 17000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(4, 'Siladex', 6, 21500, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(5, 'Komix', 15, 4000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(6, 'Insto', 9, 28000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(7, 'Rohto', 13, 23200, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(8, 'Cendo Asthenof', 11, 39000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(9, 'Cendo Xitrol', 16, 32500, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(10, 'Visine', 8, 24000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2),
(11, 'Counterpain', 13, 20500, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3),
(12, 'Rheumacyl', 14, 23500, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3),
(13, 'Neurobion Forte', 12, 39000, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3),
(14, 'Koyo Cabe', 17, 28500, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3),
(15, 'Geliga', 18, 19500, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoriobat160419001`
--
ALTER TABLE `kategoriobat160419001`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat160419001`
--
ALTER TABLE `obat160419001`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obat160419001_kategoriobat_id_foreign` (`kategoriobat_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoriobat160419001`
--
ALTER TABLE `kategoriobat160419001`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `obat160419001`
--
ALTER TABLE `obat160419001`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `obat160419001`
--
ALTER TABLE `obat160419001`
  ADD CONSTRAINT `obat160419001_kategoriobat_id_foreign` FOREIGN KEY (`kategoriobat_id`) REFERENCES `obat160419001` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
