-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Agu 2023 pada 09.46
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
-- Struktur dari tabel `tbl_booking`
--

CREATE TABLE `tbl_booking` (
  `jumlah_orang_pembooking` varchar(48) NOT NULL,
  `no_hppembooking` varchar(16) NOT NULL,
  `tanggal_pembooking` date NOT NULL,
  `nama_pembooking` varchar(64) NOT NULL,
  `waktu_pembooking` time NOT NULL,
  `pesan_pembooking` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_booking`
--

INSERT INTO `tbl_booking` (`jumlah_orang_pembooking`, `no_hppembooking`, `tanggal_pembooking`, `nama_pembooking`, `waktu_pembooking`, `pesan_pembooking`) VALUES
('2', '081293218', '2000-08-07', 'Hafizh dan rio', '10:10:00', 'PANTEKKK'),
('12', '08217010XXX', '2023-08-10', 'farhan', '09:18:00', ''),
('6', '120301321', '2024-02-22', 'vikri', '12:12:00', '123\r\n'),
('4', '324523', '2023-08-22', 'sdgfsgf', '10:10:00', 'w');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `nohp_contact` varchar(64) NOT NULL,
  `subject_contact` varchar(64) NOT NULL,
  `message_contact` varchar(64) NOT NULL,
  `nama_contact` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_contact`
--

INSERT INTO `tbl_contact` (`nohp_contact`, `subject_contact`, `message_contact`, `nama_contact`) VALUES
('081239', 'ahdj', 'jasdjasdsa', 'aksmdaksdsa'),
('082170188', 'pantek', 'meki\r\n', 'genta'),
('123213213', '12312321', '21321312', '12321');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kasir`
--

CREATE TABLE `tbl_kasir` (
  `id_kasir` int(11) NOT NULL,
  `nama_kasir` varchar(64) NOT NULL,
  `alamat_kasir` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kasir`
--

INSERT INTO `tbl_kasir` (`id_kasir`, `nama_kasir`, `alamat_kasir`, `username`) VALUES
(1, 'lubiss', 'jalan gedebageee', 'kasir');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_koki`
--

CREATE TABLE `tbl_koki` (
  `id_koki` int(11) NOT NULL,
  `nama_koki` varchar(64) NOT NULL,
  `alamat_koki` varchar(64) NOT NULL,
  `username` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_koki`
--

INSERT INTO `tbl_koki` (`id_koki`, `nama_koki`, `alamat_koki`, `username`) VALUES
(1, 'riani', 'jalan gedebagee', 'koki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_meja`
--

CREATE TABLE `tbl_meja` (
  `no_meja` int(11) NOT NULL,
  `status` enum('ada','kosong') NOT NULL,
  `nama_pelanggan` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_meja`
--

INSERT INTO `tbl_meja` (`no_meja`, `status`, `nama_pelanggan`) VALUES
(1, 'ada', 'hasbi'),
(2, 'ada', 'hassbii'),
(3, 'ada', 'vikri\r\n'),
(4, 'ada', 'vikriii'),
(5, 'ada', 'aa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` int(11) NOT NULL,
  `nama_menu` varchar(64) NOT NULL,
  `deskripsi_menu` varchar(64) NOT NULL,
  `gambar_menu` varchar(64) NOT NULL,
  `harga_menu` int(14) NOT NULL,
  `stok_menu` int(64) NOT NULL,
  `jenis_menu` varchar(64) NOT NULL,
  `tag_menu` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `nama_menu`, `deskripsi_menu`, `gambar_menu`, `harga_menu`, `stok_menu`, `jenis_menu`, `tag_menu`) VALUES
(1, 'jus jeruk', 'jus perpaduan....', 'menu-item-6.png', 5000, 21, 'minuman', '#minuman'),
(2, 'Jus jeruk12', '12321312', 'menu-item-4.png', 7000, 21, 'makanan', '#makanan'),
(3, 'jus mangga', 'jus mangga', 'menu-item-6.png', 8000, 22, 'makanan', '#makanan'),
(4, 'asdsa', 'asdas', 'menu-item-3.png', 7002, 12, 'minuman', '#minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelayan`
--

CREATE TABLE `tbl_pelayan` (
  `id_pelayan` int(11) NOT NULL,
  `nama_pelayan` varchar(48) NOT NULL,
  `alamat_pelayan` varchar(64) NOT NULL,
  `notelp_pelayan` varchar(16) NOT NULL,
  `username` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pelayan`
--

INSERT INTO `tbl_pelayan` (`id_pelayan`, `nama_pelayan`, `alamat_pelayan`, `notelp_pelayan`, `username`) VALUES
(0, 'rani', 'jalan sersan badjuri 221', '0821700109535', 'pelayan123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pesanan`
--

CREATE TABLE `tbl_pesanan` (
  `id_pesanan` int(11) NOT NULL,
  `jumlah_pesanan` int(64) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `no_meja` int(11) NOT NULL,
  `status` enum('selesai','baru') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pesanan`
--

INSERT INTO `tbl_pesanan` (`id_pesanan`, `jumlah_pesanan`, `id_menu`, `no_meja`, `status`) VALUES
(1, 2, 3, 1, 'baru'),
(3, 2, 1, 2, 'baru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `no_meja` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`no_meja`, `id_menu`, `qty`, `id_transaksi`) VALUES
(1, 1, 2, 1);

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
(1, 'kasir', 'kasir', 'kasir'),
(3, 'koki', 'koki', 'koki'),
(2, 'pelayan', 'pelayan', 'pelayan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_booking`
--
ALTER TABLE `tbl_booking`
  ADD PRIMARY KEY (`no_hppembooking`);

--
-- Indeks untuk tabel `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`nohp_contact`);

--
-- Indeks untuk tabel `tbl_kasir`
--
ALTER TABLE `tbl_kasir`
  ADD PRIMARY KEY (`id_kasir`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `tbl_koki`
--
ALTER TABLE `tbl_koki`
  ADD PRIMARY KEY (`id_koki`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `tbl_meja`
--
ALTER TABLE `tbl_meja`
  ADD PRIMARY KEY (`no_meja`),
  ADD UNIQUE KEY `nama_pelanggan` (`nama_pelanggan`);

--
-- Indeks untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `tbl_pelayan`
--
ALTER TABLE `tbl_pelayan`
  ADD PRIMARY KEY (`id_pelayan`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD UNIQUE KEY `id_menu` (`id_menu`),
  ADD UNIQUE KEY `no_meja` (`no_meja`);

--
-- Indeks untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD UNIQUE KEY `no_meja` (`no_meja`),
  ADD UNIQUE KEY `id_menu` (`id_menu`);

--
-- Indeks untuk tabel `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_kasir`
--
ALTER TABLE `tbl_kasir`
  MODIFY `id_kasir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_koki`
--
ALTER TABLE `tbl_koki`
  MODIFY `id_koki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  MODIFY `id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_kasir`
--
ALTER TABLE `tbl_kasir`
  ADD CONSTRAINT `tbl_kasir_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user_log` (`username`);

--
-- Ketidakleluasaan untuk tabel `tbl_koki`
--
ALTER TABLE `tbl_koki`
  ADD CONSTRAINT `tbl_koki_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user_log` (`username`);

--
-- Ketidakleluasaan untuk tabel `tbl_pelayan`
--
ALTER TABLE `tbl_pelayan`
  ADD CONSTRAINT `tbl_pelayan_ibfk_1` FOREIGN KEY (`username`) REFERENCES `user_log` (`username`);

--
-- Ketidakleluasaan untuk tabel `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD CONSTRAINT `tbl_pesanan_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `tbl_menu` (`id_menu`),
  ADD CONSTRAINT `tbl_pesanan_ibfk_2` FOREIGN KEY (`no_meja`) REFERENCES `tbl_meja` (`no_meja`);

--
-- Ketidakleluasaan untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD CONSTRAINT `tbl_transaksi_ibfk_1` FOREIGN KEY (`no_meja`) REFERENCES `tbl_meja` (`no_meja`),
  ADD CONSTRAINT `tbl_transaksi_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `tbl_menu` (`id_menu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
