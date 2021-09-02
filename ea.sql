-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2021 at 01:40 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_restoran`
--

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `kode_makanan` int(11) NOT NULL,
  `nama_makanan` varchar(30) NOT NULL,
  `harga_makanan` int(20) NOT NULL,
  `stok_makanan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`kode_makanan`, `nama_makanan`, `harga_makanan`, `stok_makanan`) VALUES
(1, 'nasi_kucing', 6000, 50),
(2, 'nasi_kambing', 7000, 30),
(3, 'nasi_naga', 10000, 20),
(4, 'nasi_bungkus', 7000, 20),
(5, 'nasi_biawak', 6000, 40),
(6, 'nasi_banteng', 20000, 30),
(7, 'ikan_bakar', 30000, 30),
(8, 'biawak_goreng', 30000, 10),
(9, 'bakso_tikus', 8000, 10),
(10, 'banteng_goreng', 50000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `minuman`
--

CREATE TABLE `minuman` (
  `kode_minuman` int(11) NOT NULL,
  `nama_minuman` varchar(30) NOT NULL,
  `harga_minuman` int(20) NOT NULL,
  `stok_minuman` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `minuman`
--

INSERT INTO `minuman` (`kode_minuman`, `nama_minuman`, `harga_minuman`, `stok_minuman`) VALUES
(1, 'fanta', 5000, 30),
(2, 'air_tinja', 4000, 20),
(3, 'air_zamzam', 10000, 30),
(4, 'air_mineral', 3000, 40),
(5, 'holy_wateh', 100000, 6),
(6, 'big_cola', 6000, 10),
(7, 'bot o wateh', 9000, 4),
(8, 'lemon_tea', 23000, 20),
(9, 'mysterious drink', 50000, 45),
(10, 'gacha_minuman', 20000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kode_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `nomor_pelanggan` bigint(20) NOT NULL,
  `email_pelanggan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kode_pelanggan`, `nama_pelanggan`, `nomor_pelanggan`, `email_pelanggan`) VALUES
(1, 'mamat', 62817858291023, 'sayaganteng@gmail.com'),
(2, 'rahmat', 6287362518273, 'exodia@gmail.com'),
(3, 'komara', 62816759271762, 'ketikadiapergi@gmail.com'),
(4, 'Nina', 629371758291, 'namunkutetapsendiri@gmail.com'),
(5, 'ferdi', 62817263910, 'Frederik Konečný@gmail.com'),
(6, 'alma', 6287263495012, 'Václav Almáši@gmail.com'),
(7, 'ayu', 6289103829102, 'Oldrich Tatárka @gmail.com'),
(8, 'siska', 62819305892812, 'Benjamín Haluška@gmail.com'),
(9, 'vincent', 628739102837, 'Vincent Vico@gmail.com'),
(10, 'dudu', 6281739201093, 'Rastislav Ďaďo@gmail.com'),
(11, 'dimas', 628739102731, 'dimasganteng@gmail.com'),
(12, 'dony', 6281739201921, 'donyganz@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `kode_transaksi` int(11) NOT NULL,
  `jumlah_makanan` int(20) NOT NULL,
  `jumlah_minuman` int(20) NOT NULL,
  `kode_makanan` int(20) NOT NULL,
  `kode_minuman` int(20) NOT NULL,
  `kode_pelanggan` int(20) NOT NULL,
  `TGL_Trans` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`kode_transaksi`, `jumlah_makanan`, `jumlah_minuman`, `kode_makanan`, `kode_minuman`, `kode_pelanggan`, `TGL_Trans`) VALUES
(1, 3, 4, 5, 6, 1, '2021-08-17 23:58:57'),
(2, 6, 3, 4, 5, 2, '2021-08-17 23:58:57'),
(3, 4, 6, 2, 1, 3, '2021-08-17 23:58:57'),
(4, 1, 6, 2, 1, 4, '2021-08-17 23:58:57'),
(5, 5, 1, 2, 2, 5, '2021-08-17 23:58:57'),
(6, 4, 1, 3, 2, 6, '2021-08-17 23:58:57'),
(7, 4, 1, 2, 3, 7, '2021-08-17 23:58:57'),
(8, 1, 2, 5, 2, 8, '2021-08-17 23:58:57'),
(9, 4, 2, 1, 5, 9, '2021-08-17 23:58:57'),
(10, 5, 5, 2, 4, 3, '2021-08-17 23:58:57'),
(11, 4, 6, 3, 6, 8, '2021-08-17 23:58:57'),
(12, 2, 3, 4, 4, 2, '2021-08-18 01:18:52'),
(13, 2, 5, 7, 9, 2, '2021-08-18 01:18:52'),
(14, 4, 6, 1, 2, 1, '2021-08-18 01:18:52'),
(15, 3, 5, 7, 1, 5, '2021-08-18 01:18:52'),
(16, 3, 4, 2, 7, 7, '2021-08-18 21:57:06'),
(17, 10, 11, 5, 3, 7, '2021-08-18 21:57:06'),
(18, 4, 2, 4, 2, 1, '2021-08-18 21:57:06'),
(19, 2, 5, 4, 1, 4, '2021-08-18 21:57:06'),
(20, 4, 2, 4, 1, 5, '2021-08-18 21:57:06'),
(21, 3, 1, 4, 2, 1, '2021-08-18 21:57:06'),
(22, 6, 2, 3, 4, 1, '2021-08-18 21:57:06'),
(23, 4, 2, 1, 4, 6, '2021-08-18 21:57:06'),
(24, 6, 5, 2, 4, 9, '2021-08-18 21:57:06'),
(25, 12, 14, 2, 4, 10, '2021-08-18 21:57:06'),
(26, 4, 2, 5, 1, 2, '2021-08-18 21:57:06'),
(27, 5, 5, 4, 6, 1, '2021-08-18 22:55:00'),
(28, 3, 4, 5, 7, 1, '2021-08-18 22:55:00'),
(29, 4, 5, 3, 4, 11, '2021-08-18 22:55:00'),
(30, 4, 5, 1, 2, 6, '2021-08-18 22:55:00'),
(31, 1, 1, 4, 2, 6, '2021-08-18 22:55:00'),
(32, 1, 4, 2, 1, 2, '2021-08-18 22:55:00'),
(33, 4, 5, 1, 2, 5, '2021-08-18 22:55:00'),
(34, 3, 2, 3, 5, 1, '2021-08-18 22:55:00'),
(35, 4, 6, 8, 2, 7, '2021-08-18 22:55:00'),
(36, 1, 4, 2, 6, 2, '2021-08-18 22:55:00'),
(37, 4, 2, 4, 4, 2, '2021-08-18 22:55:00'),
(38, 1, 1, 1, 1, 2, '2021-08-18 22:55:00'),
(39, 2, 2, 2, 3, 6, '2021-08-18 22:55:00'),
(40, 2, 1, 3, 4, 2, '2021-08-18 22:55:00'),
(41, 2, 3, 1, 2, 6, '2021-08-18 22:55:00'),
(42, 2, 1, 4, 3, 2, '2021-08-18 22:55:00'),
(43, 1, 2, 3, 4, 6, '2021-08-18 22:55:00'),
(44, 3, 3, 2, 3, 1, '2021-08-18 22:55:00'),
(45, 4, 2, 1, 3, 2, '2021-08-18 22:55:00'),
(46, 1, 2, 6, 1, 3, '2021-08-18 22:55:00'),
(47, 4, 3, 2, 1, 5, '2021-08-18 22:57:08'),
(48, 5, 2, 4, 2, 1, '2021-08-18 22:57:08'),
(49, 3, 4, 4, 4, 12, '2021-08-18 22:57:08'),
(50, 2, 5, 2, 1, 3, '2021-08-18 22:57:08'),
(51, 2, 3, 4, 5, 0, '2021-08-18 22:57:08'),
(52, 2, 4, 3, 2, 1, '2021-08-18 22:57:08'),
(53, 2, 4, 5, 1, 2, '2021-08-18 22:57:08'),
(54, 3, 2, 1, 3, 10, '2021-08-18 22:57:08'),
(55, 1, 2, 5, 1, 6, '2021-08-18 22:57:08'),
(56, 2, 1, 4, 5, 1, '2021-08-18 22:57:08'),
(57, 1, 6, 2, 3, 1, '2021-08-18 22:57:08'),
(58, 5, 2, 1, 3, 5, '2021-08-18 22:57:08'),
(59, 2, 1, 5, 2, 1, '2021-08-18 22:57:08'),
(60, 4, 2, 3, 1, 6, '2021-08-18 22:57:08'),
(61, 1, 2, 6, 1, 5, '2021-08-18 22:57:08'),
(62, 3, 1, 3, 2, 1, '2021-08-18 22:57:08'),
(63, 3, 3, 1, 4, 7, '2021-08-18 22:57:08'),
(64, 5, 5, 2, 1, 5, '2021-08-18 22:57:08'),
(65, 3, 4, 1, 2, 5, '2021-08-18 22:57:08'),
(66, 4, 4, 1, 6, 2, '2021-08-18 22:57:08'),
(67, 4, 4, 1, 2, 7, '2021-08-18 22:57:39'),
(68, 2, 2, 4, 1, 8, '2021-08-18 22:57:39'),
(69, 2, 2, 3, 5, 6, '2021-08-18 23:09:09'),
(70, 2, 3, 6, 1, 6, '2021-08-18 23:09:09'),
(71, 2, 2, 5, 1, 6, '2021-08-18 23:09:09'),
(72, 4, 3, 6, 1, 6, '2021-08-18 23:09:09'),
(73, 4, 4, 1, 6, 8, '2021-08-18 23:09:09'),
(74, 2, 5, 3, 8, 9, '2021-08-18 23:09:09'),
(75, 9, 9, 5, 7, 5, '2021-08-18 23:09:09'),
(76, 4, 4, 2, 1, 6, '2021-08-18 23:09:09'),
(77, 2, 3, 4, 6, 1, '2021-08-18 23:09:09'),
(78, 2, 1, 3, 6, 9, '2021-08-18 23:09:09'),
(79, 2, 1, 3, 4, 11, '2021-08-18 23:09:09'),
(80, 3, 4, 2, 1, 12, '2021-08-18 23:09:09'),
(81, 3, 2, 1, 4, 11, '2021-08-18 23:09:09'),
(82, 2, 3, 4, 1, 6, '2021-08-18 23:09:09'),
(83, 4, 2, 1, 3, 4, '2021-08-18 23:09:09'),
(84, 4, 2, 1, 3, 4, '2021-08-18 23:09:09'),
(85, 3, 1, 2, 4, 1, '2021-08-18 23:09:09'),
(86, 4, 4, 2, 1, 3, '2021-08-18 23:09:09'),
(87, 4, 3, 2, 1, 4, '2021-08-18 23:09:09'),
(88, 2, 2, 3, 1, 4, '2021-08-18 23:09:09'),
(89, 3, 2, 4, 1, 2, '2021-08-18 23:09:09'),
(90, 3, 3, 4, 2, 1, '2021-08-18 23:09:09'),
(91, 3, 3, 3, 1, 4, '2021-08-18 23:09:09'),
(92, 3, 3, 1, 4, 2, '2021-08-18 23:09:09'),
(93, 2, 2, 3, 1, 4, '2021-08-18 23:09:09'),
(94, 3, 3, 1, 2, 3, '2021-08-18 23:09:09'),
(95, 2, 2, 1, 3, 4, '2021-08-18 23:09:09'),
(96, 3, 3, 3, 1, 2, '2021-08-18 23:09:09'),
(97, 4, 4, 4, 4, 4, '2021-08-18 23:09:09'),
(98, 5, 5, 5, 5, 5, '2021-08-18 23:09:09'),
(99, 2, 3, 1, 4, 2, '2021-08-18 23:09:26'),
(100, 3, 1, 5, 2, 1, '2021-08-18 23:09:26'),
(101, 4, 4, 3, 2, 1, '2021-08-18 23:24:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`kode_makanan`);

--
-- Indexes for table `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`kode_minuman`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`kode_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `kode_makanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `minuman`
--
ALTER TABLE `minuman`
  MODIFY `kode_minuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `kode_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `kode_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
