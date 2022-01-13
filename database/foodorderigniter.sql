-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jan 2022 pada 13.06
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorderigniter`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `date`) VALUES
(1, 'admin', '$2y$10$mI/hpZ59vGgjs/lPTQWLJu.I82O93AEJ3gwFycAjuibOjAGi9dcTm', 'admin123@gmail.com', '2021-02-26 16:24:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dishesh`
--

CREATE TABLE `dishesh` (
  `d_id` int(11) NOT NULL,
  `r_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `about` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dishesh`
--

INSERT INTO `dishesh` (`d_id`, `r_id`, `name`, `about`, `price`, `img`) VALUES
(24, 1, 'Ayam Geprek Nasi', 'Ayam segar dan krispi, dengan level pedas yang bervariasi dari level 1 - 7 dan juga dilengkapi dengan sayur segar ditambah nasi.', 11000, 'Ayam_geprek1.png'),
(25, 9, 'Jus Semangka', 'Jus segar dengan buah yang segar, dapat menghilangkan dahaga dan menyegarkan tenggorokan serta mebuat harimu bersemangat.', 7000, 'jus_semangka.jpg'),
(26, 10, 'Es Kopi Susu', 'Perpaduan antara kopi espresso dan susu dengan pemanis gula aren yang dapat menyehatkan tubuh dan menyegarkan tenggorokan.', 15000, 'janjijiwa.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `restaurants`
--

CREATE TABLE `restaurants` (
  `r_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `o_hr` varchar(255) NOT NULL,
  `c_hr` varchar(255) NOT NULL,
  `o_days` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `restaurants`
--

INSERT INTO `restaurants` (`r_id`, `c_id`, `name`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `img`) VALUES
(1, 8, 'Geprek Bu Rini', 'geprekrini@gmail.com', '63426374521', 'https://geprekrini.com', '8am', '8pm', 'mon-sat', 'Jl. Singoranu', 'Ayam_geprek.png'),
(9, 9, 'Amanda Jus', 'jusamanda@gmail.com', '0745247593', 'https://amandajus.co.id', '9am', '8pm', 'mon-sat', 'Jl. Ringroad Selatan', 'jus.jpg'),
(10, 12, 'Janji Jiwa', 'janjijiwa@gmail.com', '0374527293', 'janjijiwa.co.id', '9am', '8pm', 'mon-sat', 'Jl. Singoranu', 'janjijiwa.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`) VALUES
(8, 'Makanan Kering'),
(9, 'Minuman Buah'),
(10, 'Makanan Berkuah'),
(11, 'Makanan Ringan'),
(12, 'Minuman Dingin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`) VALUES
(35, 'ekamelyp', 'Eka Meliyani', 'Putri', 'ekameliyaniputri@gmail.com', '7465274911', '$2y$10$NkjikWdKGx9lo5r7OL7k9.TF4Oibq.7g9kxnt0yYW1spie2mm7dXm', 'Jl. Singoranu'),
(36, 'asep123', 'Asep', 'Ujang', 'asepujang@gmail.com', '0374527481', '$2y$10$esIx7jAI9x5pBypbZ4w44OjukUECgBgrtCfNPnERIAXl43m/ckhXq', 'Gedung utama lantai 2 ruang TU'),
(37, 'jarwo', 'Adit Sopo', 'Jarwo', 'aditjarwo@gmail.com', '7463446573', '$2y$10$PXPVThx.cS7Zn7b.VXeSEO8xxvYomjbWeMOy/4MzrfdC0XpCiu1D2', 'Jl. Pramuka'),
(38, 'ekamp', 'Eka', 'Putri', 'maimunah@gmail.com', '0853424465', '$2y$10$nYQoxHqJhz2WguYHSaNXg.r/T6NGzyU.OQJJjjf4RkM.DVXHRXseO', 'Yogyakarta'),
(39, 'maya1234', 'Maya', 'Aulia', 'mayaaulia@gmail.com', '1234567890', '$2y$10$9NHR1vknF7a8HvawYCH77udpyQ1KjT6TisK43yWE6u7ef34W7jVNW', 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_orders`
--

CREATE TABLE `user_orders` (
  `o_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `d_id` int(11) NOT NULL,
  `d_name` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL,
  `price` float NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `success-date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_orders`
--

INSERT INTO `user_orders` (`o_id`, `u_id`, `d_id`, `d_name`, `quantity`, `price`, `status`, `date`, `success-date`, `r_id`) VALUES
(37, 35, 24, 'Ayam Geprek Nasi', 1, 11000, 'closed', '2021-07-07 14:37:29', '2021-07-07 18:52:23', 1),
(38, 36, 24, 'Ayam Geprek Nasi', 1, 11000, 'closed', '2021-07-07 16:55:55', '2021-07-07 15:05:42', 1),
(39, 36, 25, 'Jus Semangka', 1, 7000, 'closed', '2021-07-07 19:37:12', '2021-07-07 18:55:48', 9),
(41, 37, 26, 'Es Kopi Susu', 1, 15000, 'closed', '2021-07-07 21:07:12', '2021-12-20 15:38:53', 10);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `dishesh`
--
ALTER TABLE `dishesh`
  ADD PRIMARY KEY (`d_id`);

--
-- Indeks untuk tabel `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`r_id`);

--
-- Indeks untuk tabel `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indeks untuk tabel `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `dishesh`
--
ALTER TABLE `dishesh`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
