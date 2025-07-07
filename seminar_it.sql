-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2025 at 06:25 PM
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
-- Database: `seminar_it`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500'),
(2, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu` varchar(100) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `judul`, `tanggal`, `waktu`, `tempat`) VALUES
(1, 'Sistem Keamanan Jaringan Berbasis IoT', '2025-07-05', '10:00', ' Gedung Auditorium Graha Wira Bakti, Universitas Darma Persada');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `nama`, `email`, `pesan`, `waktu`) VALUES
(2, 'Wahyudin Achmad Fadly', 'wahyudinachmadfadly@gmail.com', 'sertifikat kapan keluarnya ya?', '2025-06-16 23:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `institusi` varchar(100) DEFAULT NULL,
  `kehadiran` enum('Hadir','Tidak Hadir') DEFAULT NULL,
  `tanggal_daftar` timestamp NOT NULL DEFAULT current_timestamp(),
  `bukti_ig` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id`, `nama`, `email`, `no_hp`, `institusi`, `kehadiran`, `tanggal_daftar`, `bukti_ig`) VALUES
(8, 'Muhammad Alif Fauzan', 'fauzanalif@gmail.com', '089573682254', 'Universitas Darma Persada', NULL, '2025-06-16 22:06:45', 'img_68509575f2327.jpg'),
(11, 'Nico Ferwandika Panjaitan', 'nico93734@gmail.com', '081264759238', 'Universitas Darma Persada', NULL, '2025-06-16 22:11:27', 'img_6850968f41ce8.jpg'),
(14, 'Muhammad Reihan Haryance', 'reihanharyance@gmail.com', '089622834100', 'Universitas Darma Persada', NULL, '2025-06-16 22:14:35', 'img_6850974be3bef.jpg'),
(17, 'Andrean Syahputra', 'andrean2345@gmail.com', '081231579903', 'Universitas Darma Persada', NULL, '2025-06-16 22:24:51', 'img_685099b363e6d.jpg'),
(18, 'Abdul Ghani Jala Sakti', 'abghan7855@gmail.com', '081375920577', 'Universitas Darma Persada', NULL, '2025-06-16 22:25:29', 'img_685099d9c553e.jpg'),
(19, 'Gusty Aranda Bachtiar', 'gustyaranda@gmail.com', '089628735166', 'Universitas Darma Persada', NULL, '2025-06-16 22:26:01', 'img_685099f9eacfc.jpg'),
(20, 'Alvin Khair', 'alvinkhair@gmail.com', '081374952167', 'Universitas Darma Persada', NULL, '2025-06-16 22:26:31', 'img_68509a17090a9.jpg'),
(21, 'Faizal Aly Wardhana', 'faisalaly@gmail.com', '081277459387', 'Universitas Darma Persada', NULL, '2025-06-16 22:26:50', 'img_68509a2abb223.jpg'),
(22, 'Wahyudin Achmad Fadly', 'wahyudinachmadfadly@gmail.com', '081399361843', 'Universitas Darma Persada', NULL, '2025-06-16 22:27:17', 'img_68509a45497a0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `id` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `tempat` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sertifikat`
--

CREATE TABLE `sertifikat` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `uploaded_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sertifikat`
--
ALTER TABLE `sertifikat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
