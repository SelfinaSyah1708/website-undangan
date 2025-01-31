-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jan 2025 pada 07.58
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_crud`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_wali`
--

CREATE TABLE `tbl_wali` (
  `id_wali` int(11) NOT NULL,
  `nama_siswa` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_ayah` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_ibu` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `alamat_wali` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_telepon` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `penghasilan_wali` varchar(25) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tempat_tinggal` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `keterangan_wali` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_wali`
--

INSERT INTO `tbl_wali` (`id_wali`, `nama_siswa`, `nama_ayah`, `nama_ibu`, `alamat_wali`, `no_telepon`, `penghasilan_wali`, `tempat_tinggal`, `keterangan_wali`) VALUES
(1, 'Samiyah Chayani', 'Fahri Ramadhan', 'Zahawa Rahayu', 'Jl. Belimbing No.6', '082316986726', '2000000', 'Padang', 'Paman'),
(2, 'Zaki Rabani', 'Mawan', 'Rini ', 'Jl. Sungai Sapih No. 12', '082188576824', '15000000', 'Kota Padang', 'Paman'),
(3, 'Selfina Syah Darma', 'Darmawansyah', 'Nilawatii', 'Jl. Kapuk Rawang Kalumbuk No.2', '083192047702', '3000000', 'Padang', 'Ayah Kandung'),
(4, 'Dea Wana', 'Anto', 'Khairani', 'Jl. Taratak Paneh No.9', '082218769912', '12000000', 'Jambi', 'Paman'),
(5, 'Alifah Putri', 'Alvi Syahrin', 'Selfina Syah Darma', 'Jl. Panggambiran No.4', '083192047702', '15000000', 'Pasaman Barat', 'Ayah Kandung');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_wali`
--
ALTER TABLE `tbl_wali`
  ADD PRIMARY KEY (`id_wali`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_wali`
--
ALTER TABLE `tbl_wali`
  MODIFY `id_wali` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
