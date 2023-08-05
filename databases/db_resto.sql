-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Agu 2023 pada 09.14
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_resto`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelayan`
--

CREATE TABLE `tbl_pelayan` (
  `id_pelayan` int(11) NOT NULL,
  `nama_pelayan` varchar(48) NOT NULL,
  `alamat_pelayan` varchar(64) NOT NULL,
  `notelp_pelayan` varchar(16) NOT NULL,
  `username` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_log`
--

CREATE TABLE `user_log` (
  `id_user` int(11) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL,
  `role` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_log`
--

INSERT INTO `user_log` (`id_user`, `username`, `password`, `role`) VALUES
(3, 'chef123', 'chef123', 'chef'),
(1, 'kasir123', 'kasir123', 'kasir'),
(2, 'pelayan123', 'pelayan123', 'pelayan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_pelayan`
--
ALTER TABLE `tbl_pelayan`
  ADD PRIMARY KEY (`id_pelayan`,`username`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
