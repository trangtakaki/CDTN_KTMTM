-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2018 at 07:06 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_banhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `ma_HD` int(10) UNSIGNED NOT NULL,
  `ma_KH` int(10) UNSIGNED NOT NULL,
  `ngay_dat` date NOT NULL,
  `tong` double NOT NULL,
  `thanh_toan` varchar(255) NOT NULL,
  `ghi_chu` varchar(500) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ngay_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hoadonchitiet`
--

CREATE TABLE `hoadonchitiet` (
  `ma_HDCT` int(10) UNSIGNED NOT NULL,
  `ma_HD` int(10) UNSIGNED NOT NULL,
  `ma_SP` int(10) UNSIGNED NOT NULL,
  `so_luong` int(11) NOT NULL,
  `don_gia` double NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ngay_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `ma_KH` int(10) UNSIGNED NOT NULL,
  `ten_KH` varchar(100) NOT NULL,
  `gioi_tinh` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dia_chi` varchar(100) NOT NULL,
  `sdt` varchar(20) NOT NULL,
  `ghi_chu` varchar(200) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ngay_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `ma_LoaiSP` int(10) UNSIGNED NOT NULL,
  `ten_LoaiSP` varchar(100) NOT NULL,
  `mo_ta` text NOT NULL,
  `anh` varchar(255) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ngay_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `ma_SP` int(10) UNSIGNED NOT NULL,
  `ten_SP` varchar(100) NOT NULL,
  `ma_LoaiSP` int(10) UNSIGNED NOT NULL,
  `mo_ta` text NOT NULL,
  `don_gia` float NOT NULL,
  `gia_KM` float NOT NULL,
  `anh` varchar(255) NOT NULL,
  `don_vi` varchar(255) NOT NULL,
  `moi` int(2) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ngay_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(10) NOT NULL,
  `link` varchar(100) NOT NULL,
  `anh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(10) NOT NULL,
  `tieu_de` varchar(200) NOT NULL,
  `noi_dung` text NOT NULL,
  `anh` varchar(100) NOT NULL,
  `ngay_tao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ngay_update` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`ma_HD`),
  ADD KEY `hoadon_ibfk_1` (`ma_KH`);

--
-- Indexes for table `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  ADD PRIMARY KEY (`ma_HDCT`),
  ADD KEY `ma_HD` (`ma_HD`),
  ADD KEY `ma_SP` (`ma_SP`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`ma_KH`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`ma_LoaiSP`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ma_SP`),
  ADD KEY `sanpham_ibfk_1` (`ma_LoaiSP`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `ma_HD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  MODIFY `ma_HDCT` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `ma_KH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `ma_LoaiSP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ma_SP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`ma_KH`) REFERENCES `khachhang` (`ma_KH`);

--
-- Constraints for table `hoadonchitiet`
--
ALTER TABLE `hoadonchitiet`
  ADD CONSTRAINT `hoadonchitiet_ibfk_1` FOREIGN KEY (`ma_HD`) REFERENCES `hoadon` (`ma_HD`),
  ADD CONSTRAINT `hoadonchitiet_ibfk_2` FOREIGN KEY (`ma_SP`) REFERENCES `sanpham` (`ma_SP`);

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`ma_KH`) REFERENCES `hoadon` (`ma_HD`);

--
-- Constraints for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD CONSTRAINT `loaisp_ibfk_1` FOREIGN KEY (`ma_LoaiSP`) REFERENCES `sanpham` (`ma_SP`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ma_LoaiSP`) REFERENCES `loaisp` (`ma_LoaiSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
