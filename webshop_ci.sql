-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 01:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `cauhinh`
--

CREATE TABLE `cauhinh` (
  `MaCauHinh` int(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `DiaChi` varchar(500) NOT NULL,
  `TenWebsite` varchar(255) NOT NULL,
  `Logo` text NOT NULL,
  `Facebook` varchar(255) NOT NULL,
  `Instagram` varchar(255) NOT NULL,
  `Tiktok` varchar(255) NOT NULL,
  `ThuongHieu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cauhinh`
--

INSERT INTO `cauhinh` (`MaCauHinh`, `Email`, `SoDienThoai`, `DiaChi`, `TenWebsite`, `Logo`, `Facebook`, `Instagram`, `Tiktok`, `ThuongHieu`) VALUES
(1, 'chuminhnam1@gmail.com', '09999998881', 'Hà Nội1', 'Web bán hàng trực tuyến', 'http://localhost/webquanao/uploads/sanpham51.jpg', '1', '1', '', 'http://localhost/webquanao/uploads/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaChiTietDonHang` int(11) NOT NULL,
  `MaDonHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MauSac` varchar(255) NOT NULL,
  `KichThuoc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaChiTietDonHang`, `MaDonHang`, `MaSanPham`, `SoLuong`, `MauSac`, `KichThuoc`) VALUES
(56, 26, 1, 5, 'Xanh', 'L'),
(57, 27, 17, 1, 'Xanh', '39');

-- --------------------------------------------------------

--
-- Table structure for table `chuyenmuc`
--

CREATE TABLE `chuyenmuc` (
  `MaChuyenMuc` int(11) NOT NULL,
  `TenChuyenMuc` varchar(255) NOT NULL,
  `DuongDan` text NOT NULL,
  `AnhChinh` text NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuyenmuc`
--

INSERT INTO `chuyenmuc` (`MaChuyenMuc`, `TenChuyenMuc`, `DuongDan`, `AnhChinh`, `TrangThai`) VALUES
(1, 'ABC', 'abc', 'http://localhost/webshop_ci/uploads/rsz_screenshot_from_2020-07-03_12-01-57-722x400.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `MaDonHang` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `DiaChi` varchar(500) NOT NULL,
  `GiamGia` int(11) NOT NULL DEFAULT 0,
  `TenCongTy` varchar(500) NOT NULL,
  `PhuongThucThanhToan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`MaDonHang`, `MaKhachHang`, `SoLuong`, `ThanhTien`, `ThoiGian`, `TrangThai`, `DiaChi`, `GiamGia`, `TenCongTy`, `PhuongThucThanhToan`) VALUES
(26, 13, 5, 500000, '2024-05-09 22:02:29', 1, 'ABCD', 0, 'ABCDE', 1),
(27, 24, 1, 14000, '2024-05-17 16:39:59', 1, 'Tầng 2 số nhà 3, Ngõ ABC, Đường XYZ - Cầu Giấy Hà Nội', 0, 'Không', 1);

-- --------------------------------------------------------

--
-- Table structure for table `giaodien`
--

CREATE TABLE `giaodien` (
  `MaGiaoDien` int(11) NOT NULL,
  `MaChuyenMuc` int(11) DEFAULT NULL,
  `TheLoai` int(11) NOT NULL,
  `HinhAnh` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giaodien`
--

INSERT INTO `giaodien` (`MaGiaoDien`, `MaChuyenMuc`, `TheLoai`, `HinhAnh`) VALUES
(1, 1, 1, 'http://localhost/webshop_ci/uploads/Fig1.png'),
(2, 1, 2, 'http://localhost/webshop_ci/uploads/Fig11.png'),
(3, 1, 3, 'http://localhost/webshop_ci/uploads/Fig12.png'),
(4, 1, 2, 'http://localhost/webshop_ci/uploads/Fig13.png'),
(5, 1, 2, 'http://localhost/webshop_ci/uploads/Fig14.png'),
(6, 1, 3, 'http://localhost/webshop_ci/uploads/download_(2)21.png'),
(7, 1, 3, 'http://localhost/webshop_ci/uploads/download_(2)22.png');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `MaHinhAnh` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `DuongDan` text NOT NULL,
  `LoaiAnh` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`MaHinhAnh`, `MaSanPham`, `DuongDan`, `LoaiAnh`) VALUES
(1, 1, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack76.jpg', 1),
(2, 1, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack77.jpg', 2),
(3, 1, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack78.jpg', 3),
(4, 1, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack79.jpg', 4),
(5, 2, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack80.jpg', 1),
(6, 2, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack81.jpg', 2),
(7, 2, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack82.jpg', 3),
(8, 2, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack83.jpg', 4),
(9, 3, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack84.jpg', 1),
(10, 3, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack85.jpg', 2),
(11, 3, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack86.jpg', 3),
(12, 3, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack87.jpg', 4),
(13, 4, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack88.jpg', 1),
(14, 4, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack89.jpg', 2),
(15, 4, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack90.jpg', 3),
(16, 4, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack91.jpg', 4),
(17, 5, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack92.jpg', 1),
(18, 5, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack93.jpg', 2),
(19, 5, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack94.jpg', 3),
(20, 5, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 4),
(21, 6, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack96.jpg', 1),
(22, 6, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack97.jpg', 2),
(23, 6, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack98.jpg', 3),
(24, 6, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack99.jpg', 4),
(25, 7, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 1),
(26, 7, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(27, 7, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(28, 7, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(29, 8, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 1),
(30, 8, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(31, 8, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(32, 8, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(33, 10, 'http://localhost/webshop_ci/uploads/download_(2).png', 1),
(34, 10, 'http://localhost/webshop_ci/uploads/download_(2)1.png', 2),
(35, 10, 'http://localhost/webshop_ci/uploads/download_(2)2.png', 3),
(36, 10, 'http://localhost/webshop_ci/uploads/download_(2)3.png', 4),
(37, 9, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 1),
(38, 9, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(39, 9, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(40, 9, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(41, 11, 'http://localhost/webshop_ci/uploads/download_(2)4.png', 1),
(42, 11, 'http://localhost/webshop_ci/uploads/download_(2)5.png', 2),
(43, 11, 'http://localhost/webshop_ci/uploads/download_(2)6.png', 3),
(44, 11, 'http://localhost/webshop_ci/uploads/download_(2)7.png', 4),
(45, 12, 'http://localhost/webshop_ci/uploads/download_(2)8.png', 1),
(46, 12, 'http://localhost/webshop_ci/uploads/download_(2)9.png', 2),
(47, 12, 'http://localhost/webshop_ci/uploads/download_(2)10.png', 3),
(48, 12, 'http://localhost/webshop_ci/uploads/download_(2)11.png', 4),
(49, 13, 'http://localhost/webshop_ci/uploads/download_(2)12.png', 1),
(50, 13, 'http://localhost/webshop_ci/uploads/download_(2)13.png', 2),
(51, 13, 'http://localhost/webshop_ci/uploads/download_(2)14.png', 3),
(52, 13, 'http://localhost/webshop_ci/uploads/download_(2)15.png', 4),
(53, 14, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 1),
(54, 14, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(55, 14, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(56, 14, 'http://localhost/webshop_ci/uploads/Nhap-Key-Crack95.jpg', 0),
(57, 15, 'http://localhost/webshop_ci/uploads/download_(2)16.png', 1),
(58, 15, 'http://localhost/webshop_ci/uploads/rsz_screenshot_from_2020-07-03_12-01-57-722x4001.png', 2),
(59, 15, 'http://localhost/webshop_ci/uploads/download.png', 3),
(60, 15, 'http://localhost/webshop_ci/uploads/download_(3)4.png', 4),
(61, 16, 'http://localhost/webshop_ci/uploads/download_(2)17.png', 1),
(62, 16, 'http://localhost/webshop_ci/uploads/download_(2)18.png', 2),
(63, 16, 'http://localhost/webshop_ci/uploads/download_(2)19.png', 3),
(64, 16, 'http://localhost/webshop_ci/uploads/download_(2)20.png', 4),
(65, 17, 'http://localhost/webshop_ci/uploads/download1.png', 1),
(66, 17, 'http://localhost/webshop_ci/uploads/neural_networks-002.png', 2),
(67, 17, 'http://localhost/webshop_ci/uploads/download_(3)5.png', 3),
(68, 17, 'http://localhost/webshop_ci/uploads/download_(3)6.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(11) NOT NULL,
  `TenKhachHang` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `TaiKhoan` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `NgayThamGia` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `TenKhachHang`, `SoDienThoai`, `DiaChi`, `Email`, `TaiKhoan`, `MatKhau`, `TrangThai`, `NgayThamGia`) VALUES
(13, 'Chu Minh Nam', '0379962045', 'Bắc Từ Liêm, Hà Nội', 'namchuminh@gmail.com', 'nam', '21232f297a57a5a743894a0e4a801fc3', 1, '2023-07-11 18:45:18'),
(24, 'Nguyễn Văn Anh', '0555666777', 'Hà Nội', 'nguyenvananh@gmail.com', 'nguyenvana', '20ca70c7c8f494c7bd1d54ad23d40cde', 1, '2023-07-14 00:41:12'),
(25, 'Nguyễn Văn Bình', '0888999777', 'Hà Nam', 'nguyenvanbinh@gmail.com', 'nguyenvanb', '23280a0ad9238d00c62b0272af265c57', 1, '2023-07-14 00:42:46'),
(26, 'Nguyễn Văn Chung', '0333444555', 'Hà Nội', 'nguyenvanchung@gmail.com', 'nguyenvanchung', '36a00d76edeef3128c3918786dc4e10d', 1, '2023-07-14 00:46:05'),
(27, 'Nguyễn Văn Dũng', '0444555666', 'Hà Nội', 'dung@gmail.com', 'dung', '625d45c587033e8970af8b4e3fdb575c', 1, '2023-07-14 00:48:59'),
(28, 'Nguyễn Văn Em', '0222333444', 'Hà Nội', 'nguyenvanem@gmail.com', 'nguyenvanem', '2e3b271ef4f09bfd649193c6d11ccdc0', 1, '2023-07-14 00:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `kichthuoc`
--

CREATE TABLE `kichthuoc` (
  `MaKichThuoc` int(11) NOT NULL,
  `TenKichThuoc` varchar(255) NOT NULL,
  `MaMauSac` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kichthuoc`
--

INSERT INTO `kichthuoc` (`MaKichThuoc`, `TenKichThuoc`, `MaMauSac`, `SoLuong`, `MaSanPham`) VALUES
(21, '37', 135, 12, 17),
(22, '36', 136, 15, 17),
(23, '42', 140, 10, 17),
(24, '40', 141, 15, 17),
(25, '39', 140, 19, 17);

-- --------------------------------------------------------

--
-- Table structure for table `lichsunhap`
--

CREATE TABLE `lichsunhap` (
  `MaLichSuNhap` int(11) NOT NULL,
  `MaNhaCungCap` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `SoLuong` int(11) NOT NULL,
  `SoLuongCu` int(11) NOT NULL,
  `MauSac` varchar(255) NOT NULL,
  `KichThuoc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsunhap`
--

INSERT INTO `lichsunhap` (`MaLichSuNhap`, `MaNhaCungCap`, `MaSanPham`, `ThoiGian`, `SoLuong`, `SoLuongCu`, `MauSac`, `KichThuoc`) VALUES
(8, 1, 17, '2023-09-29 20:06:24', 15, 0, 'Vàng', '36'),
(9, 1, 17, '2024-01-21 21:58:58', 10, 0, 'Xanh', '42'),
(10, 1, 17, '2024-01-21 21:59:08', 15, 0, 'Đỏ', '40'),
(11, 1, 17, '2024-01-21 22:00:09', 20, 0, 'Xanh', '39');

-- --------------------------------------------------------

--
-- Table structure for table `lichsuxem`
--

CREATE TABLE `lichsuxem` (
  `MaLichSuXem` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `MaKhachHang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichsuxem`
--

INSERT INTO `lichsuxem` (`MaLichSuXem`, `MaSanPham`, `MaKhachHang`) VALUES
(246, 11, '13'),
(247, 17, '4VwLgztg0JLqffTlsCVPFMyF4JRl80VI'),
(248, 15, '4VwLgztg0JLqffTlsCVPFMyF4JRl80VI'),
(249, 11, '13'),
(250, 16, '13'),
(251, 17, '13'),
(252, 17, '13'),
(253, 17, '13'),
(254, 3, 'SBm2JizUFfuCZ91wR6hzucaTzqzxxEQW'),
(255, 5, '9apTZySQH40iFk8W4T3qXE5EZoWq24SK'),
(256, 4, '9apTZySQH40iFk8W4T3qXE5EZoWq24SK'),
(257, 6, '9apTZySQH40iFk8W4T3qXE5EZoWq24SK'),
(258, 16, 'GDwEgFlY2Hm7ZXDjsVWEfrpZr0sJe2Yn'),
(259, 17, 'GDwEgFlY2Hm7ZXDjsVWEfrpZr0sJe2Yn'),
(260, 15, 'v0T9mgaghx9bDWEmvdSlFnB6YCH9P3Vl'),
(261, 15, 'v0T9mgaghx9bDWEmvdSlFnB6YCH9P3Vl'),
(262, 16, 'v0T9mgaghx9bDWEmvdSlFnB6YCH9P3Vl'),
(263, 9, 'v0T9mgaghx9bDWEmvdSlFnB6YCH9P3Vl'),
(264, 14, 'v0T9mgaghx9bDWEmvdSlFnB6YCH9P3Vl'),
(265, 12, 'v0T9mgaghx9bDWEmvdSlFnB6YCH9P3Vl'),
(266, 17, 'uiCjnZTND2TkGsXP5EquoYiMQELUHJ7h'),
(267, 4, 'C25hvzT3tRYpj4fNXx54AzzRJv9rs5E9'),
(268, 15, 'C25hvzT3tRYpj4fNXx54AzzRJv9rs5E9'),
(269, 17, 'C25hvzT3tRYpj4fNXx54AzzRJv9rs5E9'),
(270, 17, 'C25hvzT3tRYpj4fNXx54AzzRJv9rs5E9'),
(271, 17, 'C25hvzT3tRYpj4fNXx54AzzRJv9rs5E9'),
(272, 17, 'C25hvzT3tRYpj4fNXx54AzzRJv9rs5E9'),
(273, 17, '24'),
(274, 15, '4wUbkPK243BUHIjfkstp8jIKredICRHt'),
(275, 16, 'ykLrignb2H0gbnjN6SKvmsjUm3zYNO3Z'),
(276, 15, 'ykLrignb2H0gbnjN6SKvmsjUm3zYNO3Z'),
(277, 16, 'ykLrignb2H0gbnjN6SKvmsjUm3zYNO3Z'),
(278, 17, 'ykLrignb2H0gbnjN6SKvmsjUm3zYNO3Z'),
(279, 15, 'ykLrignb2H0gbnjN6SKvmsjUm3zYNO3Z'),
(280, 17, 'ykLrignb2H0gbnjN6SKvmsjUm3zYNO3Z');

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `MaLienHe` int(11) NOT NULL,
  `TenKhachHang` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `NoiDung` text NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`MaLienHe`, `TenKhachHang`, `SoDienThoai`, `TieuDe`, `NoiDung`, `ThoiGian`, `TrangThai`) VALUES
(15, 'Nguyễn Văn A', '0999888999', 'ABCD', 'AAA', '2023-09-19 08:27:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `magiamgia`
--

CREATE TABLE `magiamgia` (
  `MaGiamGia` int(11) NOT NULL,
  `MaSuDung` varchar(255) NOT NULL,
  `NgayTao` date NOT NULL DEFAULT current_timestamp(),
  `NgayHetHan` date NOT NULL,
  `TriGia` int(11) NOT NULL,
  `SoLanDung` int(11) NOT NULL DEFAULT 0,
  `SoLuong` int(11) NOT NULL DEFAULT 1,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `magiamgia`
--

INSERT INTO `magiamgia` (`MaGiamGia`, `MaSuDung`, `NgayTao`, `NgayHetHan`, `TriGia`, `SoLanDung`, `SoLuong`, `TrangThai`) VALUES
(7, 'GIAM200K', '2023-09-29', '2024-01-22', 10000, 5, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mausac`
--

CREATE TABLE `mausac` (
  `MaMauSac` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `TenMauSac` varchar(255) NOT NULL,
  `MaHienThi` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mausac`
--

INSERT INTO `mausac` (`MaMauSac`, `MaSanPham`, `TenMauSac`, `MaHienThi`) VALUES
(1, 1, 'yellow', 'yellow'),
(2, 1, 'white', 'white'),
(3, 2, 'red', 'red'),
(4, 2, 'yellow', 'yellow'),
(5, 2, 'white', 'white'),
(6, 3, 'red', 'red'),
(7, 3, 'yellow', 'yellow'),
(8, 3, 'white', 'white'),
(9, 4, 'yellow', 'yellow'),
(10, 4, 'white', 'white'),
(11, 4, 'black', 'black'),
(12, 5, 'yellow', 'yellow'),
(13, 5, 'white', 'white'),
(14, 5, 'black', 'black'),
(15, 6, 'red', 'red'),
(16, 6, 'yellow', 'yellow'),
(17, 7, 'yellow', 'yellow'),
(18, 7, 'white', 'white'),
(19, 8, 'yellow', 'yellow'),
(20, 8, 'white', 'white'),
(21, 8, 'pink', 'pink'),
(22, 9, 'yellow', 'yellow'),
(23, 9, 'white', 'white'),
(24, 9, 'black', 'black'),
(25, 10, 'yellow', 'yellow'),
(26, 10, 'white', 'white'),
(27, 11, 'yellow', 'yellow'),
(28, 11, 'white', 'white'),
(29, 11, 'black', 'black'),
(30, 12, 'blue', 'blue'),
(31, 12, 'red', 'red'),
(32, 12, 'yellow', 'yellow'),
(33, 12, 'white', 'white'),
(34, 12, 'black', 'black'),
(35, 12, 'pink', 'pink'),
(36, 13, 'red', 'red'),
(37, 13, 'yellow', 'yellow'),
(38, 13, 'white', 'white'),
(39, 14, 'red', 'red'),
(40, 14, 'yellow', 'yellow'),
(41, 14, 'white', 'white'),
(42, 15, 'yellow', 'yellow'),
(43, 15, 'white', 'white'),
(131, 16, 'red', 'red'),
(132, 16, 'black', 'black'),
(133, 16, 'pink', 'pink'),
(140, 17, 'blue', 'blue'),
(141, 17, 'red', 'red'),
(142, 17, 'yellow', 'yellow'),
(143, 17, 'white', 'white'),
(144, 17, 'black', 'black'),
(145, 17, 'pink', 'pink');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNhaCungCap` int(11) NOT NULL,
  `TenNhaCungCap` varchar(255) NOT NULL,
  `MoTa` varchar(500) NOT NULL,
  `MaChuyenMuc` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNhaCungCap`, `TenNhaCungCap`, `MoTa`, `MaChuyenMuc`, `TrangThai`) VALUES
(1, 'Gucci', 'Nhà cung cấp sản phẩm Đức', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `TenNhanVien` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `DiaChi` text NOT NULL,
  `Email` varchar(255) NOT NULL,
  `AnhChinh` text NOT NULL,
  `TaiKhoan` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `TenNhanVien`, `SoDienThoai`, `DiaChi`, `Email`, `AnhChinh`, `TaiKhoan`, `MatKhau`, `TrangThai`) VALUES
(1, 'Chu Minh Nam', '0999999999', 'Hà Nội', 'chuminhnamma@gmail.com', 'http://localhost/webquanao/uploads/avatar1.png', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(255) NOT NULL,
  `MoTaNgan` varchar(500) NOT NULL,
  `MoTaDai` text NOT NULL,
  `GiaGoc` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `MaChuyenMuc` int(11) NOT NULL,
  `The` varchar(255) NOT NULL,
  `DuongDan` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `LoaiSanPham` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `MoTaNgan`, `MoTaDai`, `GiaGoc`, `GiaBan`, `MaChuyenMuc`, `The`, `DuongDan`, `TrangThai`, `LoaiSanPham`) VALUES
(1, 'Sản phẩm 1', 'Sản phẩm 1', '<p>Sản phẩm 1</p>\r\n', 150000, 140000, 1, 'a,b,c', 'san-pham-1', 1, 3),
(2, 'Sản phẩm 2', 'Sản phẩm 2', '<p>Sản phẩm 2</p>\r\n', 150000, 140000, 1, 'a,b,c', 'san-pham-2', 1, 3),
(3, 'Sản phẩm 3', 'Sản phẩm 3', '<p>Sản phẩm 3</p>\r\n', 150000, 140000, 1, 'a,b,c', 'san-pham-3', 1, 3),
(4, 'Sản phẩm 4', 'Sản phẩm 4', '<p>Sản phẩm 4</p>\r\n', 140000, 130000, 1, 'a,b,c', 'san-pham-4', 1, 3),
(5, 'Sản phẩm 5', 'Sản phẩm 5', '<p>Sản phẩm 5</p>\r\n', 140000, 100000, 1, 'a,b,c', 'san-pham-5', 1, 3),
(6, 'Sản phẩm 6', 'Sản phẩm 6', '<p>Sản phẩm 6</p>\r\n', 15000, 14000, 1, 'a,b,c', 'san-pham-6', 1, 3),
(7, 'Sản phẩm 7', 'Sản phẩm 7', '<p>Sản phẩm 7</p>\r\n', 140000, 100000, 1, 'a,b,c', 'san-pham-7', 1, 3),
(8, 'Sản phẩm 8', 'Sản phẩm 8', '<p>Sản phẩm 8</p>\r\n', 14000, 10000, 1, 'a,b,c', 'san-pham-8', 1, 3),
(9, 'Sản phẩm 9', 'Sản phẩm 9', '<p>Sản phẩm 9</p>\r\n', 14000, 10000, 1, 'a,b,c', 'san-pham-9', 1, 1),
(10, 'Sản phẩm 10', 'Sản phẩm 10', '<p>Sản phẩm 10</p>\r\n', 150000, 14000, 1, 'a,b,c', 'san-pham-10', 1, 1),
(11, 'Sản phẩm 11', 'Sản phẩm 11', '<p>Sản phẩm 11</p>\r\n', 150000, 14000, 1, 'a,b,c', 'san-pham-11', 1, 1),
(12, 'Sản phẩm 12', 'Sản phẩm 12', '<p>Sản phẩm 12</p>\r\n', 14000, 10000, 1, 'a,b,c', 'san-pham-12', 1, 1),
(13, 'Sản phẩm 13', 'Sản phẩm 13', '<p>Sản phẩm 13</p>\r\n', 120000, 10000, 1, 'a,b,c', 'san-pham-13', 1, 1),
(14, 'Sản phẩm 14', 'Sản phẩm 14', '<p>Sản phẩm 14</p>\r\n', 15000, 14000, 1, 'a,b,c', 'san-pham-14', 1, 1),
(15, 'Sản phẩm 15', 'Sản phẩm 15', '<p>Sản phẩm 15</p>\r\n', 150000, 10000, 1, 'a,b,c', 'san-pham-15', 1, 1),
(16, 'Sản phẩm 16', 'Sản phẩm 15', '<p>Sản phẩm 15</p>\r\n', 150000, 140000, 1, 'a,b,c', 'san-pham-16', 1, 1),
(17, 'Giày abcd', 'Sản phẩm 15', '<p>Sản phẩm 15</p>\r\n', 150000, 14000, 1, 'a,b,c', 'san-pham-17', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTinTuc` int(11) NOT NULL,
  `MaNhanVien` int(11) NOT NULL,
  `TieuDe` varchar(500) NOT NULL,
  `NoiDung` text NOT NULL,
  `NgayDang` date NOT NULL DEFAULT current_timestamp(),
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `AnhChinh` text NOT NULL,
  `DuongDan` varchar(500) NOT NULL,
  `The` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cauhinh`
--
ALTER TABLE `cauhinh`
  ADD PRIMARY KEY (`MaCauHinh`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaChiTietDonHang`);

--
-- Indexes for table `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  ADD PRIMARY KEY (`MaChuyenMuc`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDonHang`);

--
-- Indexes for table `giaodien`
--
ALTER TABLE `giaodien`
  ADD PRIMARY KEY (`MaGiaoDien`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`MaHinhAnh`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Indexes for table `kichthuoc`
--
ALTER TABLE `kichthuoc`
  ADD PRIMARY KEY (`MaKichThuoc`);

--
-- Indexes for table `lichsunhap`
--
ALTER TABLE `lichsunhap`
  ADD PRIMARY KEY (`MaLichSuNhap`);

--
-- Indexes for table `lichsuxem`
--
ALTER TABLE `lichsuxem`
  ADD PRIMARY KEY (`MaLichSuXem`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`MaLienHe`);

--
-- Indexes for table `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`MaGiamGia`);

--
-- Indexes for table `mausac`
--
ALTER TABLE `mausac`
  ADD PRIMARY KEY (`MaMauSac`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNhaCungCap`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTinTuc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cauhinh`
--
ALTER TABLE `cauhinh`
  MODIFY `MaCauHinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `MaChiTietDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  MODIFY `MaChuyenMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `giaodien`
--
ALTER TABLE `giaodien`
  MODIFY `MaGiaoDien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `kichthuoc`
--
ALTER TABLE `kichthuoc`
  MODIFY `MaKichThuoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `lichsunhap`
--
ALTER TABLE `lichsunhap`
  MODIFY `MaLichSuNhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lichsuxem`
--
ALTER TABLE `lichsuxem`
  MODIFY `MaLichSuXem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `MaLienHe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `MaGiamGia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `mausac`
--
ALTER TABLE `mausac`
  MODIFY `MaMauSac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MaNhaCungCap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;