-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2024 pada 17.13
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pasar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id_barang`, `kode`, `nama`, `created_at`, `updated_at`) VALUES
(11, '01', 'Cabai Rawit Merah', '2024-07-05 07:30:31', '2024-07-05 07:30:31'),
(12, '02', 'Bawang Merah', '2024-07-05 07:30:45', '2024-07-05 07:30:45'),
(13, '03', 'Telur Besar', '2024-07-05 07:31:02', '2024-07-05 07:31:02'),
(14, '04', 'Migor Kemasan', '2024-07-05 07:31:31', '2024-07-05 07:31:31'),
(15, '05', 'Migor Kita', '2024-07-05 07:31:54', '2024-07-05 07:31:54'),
(16, '06', 'Bawang Putih', '2024-07-05 07:32:10', '2024-07-05 07:32:10'),
(17, '07', 'Beras Premium', '2024-07-05 07:32:33', '2024-07-05 07:32:33'),
(18, '08', 'Beras Medium', '2024-07-05 07:32:53', '2024-07-05 07:32:53'),
(20, '09', 'Cabai Besar Merah', '2024-07-05 07:33:33', '2024-07-05 07:33:33'),
(21, '10', 'Daging Ayam', '2024-07-05 07:33:48', '2024-07-05 07:33:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `laporans`
--

CREATE TABLE `laporans` (
  `id_laporan` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `bulan1` varchar(255) NOT NULL,
  `bulan2` varchar(255) NOT NULL,
  `bulan3` varchar(255) NOT NULL,
  `bulan4` varchar(255) NOT NULL,
  `bulan5` varchar(255) NOT NULL,
  `bulan6` varchar(255) NOT NULL,
  `bulan7` varchar(255) NOT NULL,
  `bulan8` varchar(255) NOT NULL,
  `bulan9` varchar(255) NOT NULL,
  `bulan10` varchar(255) NOT NULL,
  `bulan11` varchar(255) NOT NULL,
  `bulan12` varchar(255) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `laporans`
--

INSERT INTO `laporans` (`id_laporan`, `kode`, `bulan1`, `bulan2`, `bulan3`, `bulan4`, `bulan5`, `bulan6`, `bulan7`, `bulan8`, `bulan9`, `bulan10`, `bulan11`, `bulan12`, `id_barang`, `created_at`, `updated_at`) VALUES
(1, '01', '35000', '87000', '9800', '4300', '89640', '123456', '765492', '75644', '98754', '09182', '123500', '9384990', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_06_21_113840_create_sessions_table', 1),
(7, '2024_06_21_124605_create_barangs_table', 2),
(9, '2024_06_23_074513_create_pasarbanyuasris_table', 3),
(10, '2024_07_04_120134_create_pasaranyars_table', 4),
(11, '2024_07_15_102554_create_laporans_table', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasaranyars`
--

CREATE TABLE `pasaranyars` (
  `id_pasaranyar` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(191) NOT NULL,
  `kode` varchar(191) NOT NULL,
  `harga` varchar(191) NOT NULL,
  `stok` text NOT NULL,
  `id_barang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pasaranyars`
--

INSERT INTO `pasaranyars` (`id_pasaranyar`, `tanggal`, `kode`, `harga`, `stok`, `id_barang`, `created_at`, `updated_at`) VALUES
(3, '2024-07-01', '06', '7000', '40', 16, '2024-07-05 07:51:43', '2024-07-05 07:51:43'),
(4, '2024-07-01', '01', '5000', '45', 11, '2024-07-05 07:55:35', '2024-07-05 07:55:35'),
(5, '2024-07-01', '02', '3500', '55', 12, '2024-07-05 07:56:21', '2024-07-05 07:56:21'),
(6, '2024-07-01', '04', '6000', '60', 14, '2024-07-05 07:56:41', '2024-07-05 07:56:41'),
(7, '2024-07-01', '09', '6000', '50', 20, '2024-07-05 07:57:16', '2024-07-05 07:57:16'),
(8, '2024-07-01', '10', '40000', '30', 21, '2024-07-05 07:57:51', '2024-07-05 07:57:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasarbanyuasris`
--

CREATE TABLE `pasarbanyuasris` (
  `id_pasarbanyuasri` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pasarbanyuasris`
--

INSERT INTO `pasarbanyuasris` (`id_pasarbanyuasri`, `tanggal`, `kode`, `harga`, `stok`, `created_at`, `updated_at`, `id_barang`) VALUES
(5, '2024-07-01', '01', '5000', '50', '2024-07-05 07:34:35', '2024-07-05 07:34:35', 11),
(6, '2024-07-08', '01', '6700', '45', '2024-07-05 07:35:29', '2024-07-05 07:35:29', 11),
(7, '2024-07-01', '02', '4500', '75', '2024-07-05 07:36:11', '2024-07-05 07:36:11', 12),
(8, '2024-07-08', '02', '5500', '70', '2024-07-05 07:36:52', '2024-07-05 07:37:09', 12),
(9, '2024-07-01', '03', '36000', '30', '2024-07-05 07:37:39', '2024-07-05 07:37:39', 13),
(10, '2024-07-01', '04', '23000', '95', '2024-07-05 07:38:22', '2024-07-05 07:38:22', 14),
(11, '2024-07-01', '05', '43000', '70', '2024-07-05 07:38:49', '2024-07-05 07:38:49', 15),
(12, '2024-07-01', '06', '56000', '65', '2024-07-05 07:39:22', '2024-07-05 07:39:22', 16),
(13, '2024-07-01', '07', '78000', '70', '2024-07-05 07:39:51', '2024-07-05 07:39:51', 17),
(14, '2024-07-01', '09', '12000', '65', '2024-07-05 07:40:13', '2024-07-05 07:40:13', 20),
(15, '2024-07-01', '10', '54000', '89', '2024-07-05 07:40:43', '2024-07-05 07:40:43', 21),
(16, '2024-07-01', '08', '67000', '65', '2024-07-05 07:42:41', '2024-07-05 07:42:41', 18),
(17, '2024-07-08', '05', '45000', '32', '2024-07-05 07:43:26', '2024-07-05 07:43:26', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3PgGgcv7oXl0yPUqlHqbmRuaq5RGSSTq5bwdgoPL', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiNFF4d3ZWOTkzVlBWMG1WbTgybkdUdHpSRGd2U2wwem1rRzgxYzU2UCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9CYW55dWFzcmlfa2VwYWxhIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRHWk1rbGthZlhyaWhxWVFmVEYuRHNPMmRJbmd0UGxUWjdka3E0OVBlejZ2L0tSMGZXWHlXdSI7fQ==', 1721229204);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `usertype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `usertype`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$GZMklkafXrihqYQfTF.DsO2dIngtPlTZ7dkq49Pez6v/KR0fWXyWu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-21 04:08:40', '2024-06-21 04:08:40', 'admin'),
(2, 'kepalabidang', 'kepalabidang01@gmail.com', NULL, '$2y$10$Cdj1.xlnqa/RXrqt7023vOFdbj3ak/NtVK7lkSnXzXiTI9HhHYw.y', NULL, NULL, NULL, NULL, NULL, NULL, '2024-07-17 02:55:22', '2024-07-17 02:55:22', 'user\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`id_laporan`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasaranyars`
--
ALTER TABLE `pasaranyars`
  ADD PRIMARY KEY (`id_pasaranyar`);

--
-- Indeks untuk tabel `pasarbanyuasris`
--
ALTER TABLE `pasarbanyuasris`
  ADD PRIMARY KEY (`id_pasarbanyuasri`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id_barang` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporans`
--
ALTER TABLE `laporans`
  MODIFY `id_laporan` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pasaranyars`
--
ALTER TABLE `pasaranyars`
  MODIFY `id_pasaranyar` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pasarbanyuasris`
--
ALTER TABLE `pasarbanyuasris`
  MODIFY `id_pasarbanyuasri` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
