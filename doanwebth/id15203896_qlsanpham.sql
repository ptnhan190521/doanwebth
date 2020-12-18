-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 18, 2020 lúc 05:37 AM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id15203896_qlsanpham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `maBinhLuan` int(11) NOT NULL,
  `maSanPham` int(11) NOT NULL,
  `noiDung` text COLLATE utf8_vietnamese_ci NOT NULL,
  `maKhachHang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bosuutap`
--

CREATE TABLE `bosuutap` (
  `maBoSuuTap` int(11) NOT NULL,
  `tenBoSuuTap` int(11) NOT NULL,
  `soLuongSanPham` int(11) NOT NULL,
  `moTaChung` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietbosuutap`
--

CREATE TABLE `chitietbosuutap` (
  `maSanPham` int(11) NOT NULL,
  `maChiTietBST` int(11) NOT NULL,
  `maBoSuuTap` int(11) NOT NULL,
  `linkHinh` varchar(111) COLLATE utf8_vietnamese_ci NOT NULL,
  `moTa` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `maChiTietDonHang` int(11) NOT NULL,
  `maDonHang` int(11) NOT NULL,
  `maSanPham` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `maDonHang` int(11) NOT NULL,
  `maKhachHang` int(11) NOT NULL,
  `soLuongSanPham` int(11) NOT NULL,
  `ngayLap` date NOT NULL,
  `trangThai` int(11) NOT NULL,
  `diaChiGiaoHang` varchar(111) COLLATE utf8_vietnamese_ci NOT NULL,
  `tenNguoiNhan` varchar(35) COLLATE utf8_vietnamese_ci NOT NULL,
  `maNhanVien` int(11) NOT NULL,
  `giaDonHang` float NOT NULL,
  `soDienThoaiNguoiNhan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh`
--

CREATE TABLE `hinh` (
  `maSanPham` int(11) NOT NULL,
  `maHinh` int(11) NOT NULL,
  `linkHinh` text COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `maKhachHang` int(11) NOT NULL,
  `tenKhachHang` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `gioiTinh` varchar(10) COLLATE utf8_vietnamese_ci NOT NULL,
  `ngaySinh` date NOT NULL,
  `soDienThoai` int(11) NOT NULL,
  `matKhau` varchar(111) COLLATE utf8_vietnamese_ci NOT NULL,
  `diaChi` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`maKhachHang`, `tenKhachHang`, `email`, `gioiTinh`, `ngaySinh`, `soDienThoai`, `matKhau`, `diaChi`) VALUES
(5, 'PT NHAN', 'nn@gmail.com', '1', '1999-05-19', 928831314, '202cb962ac59075b964b07152d234b70', 'HQC PLAZA'),
(6, 'Long', 'fcphanthanhnhan1986@gmail.com', 'Nam', '2020-12-04', 909404041, '202cb962ac59075b964b07152d234b70', 'AN GIANG'),
(8, 'Thao', 'thao123@gmail.com', '0', '2001-06-01', 909123456, 'f4d86e8e1b27d67aebd458ca739370fe', 'BINH THUAN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `tenLoai` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `maLoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`tenLoai`, `maLoai`) VALUES
('Áo CLB', 1),
('Áo đội tuyển', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `maMau` int(11) NOT NULL,
  `loaiMau` varchar(111) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`maMau`, `loaiMau`) VALUES
(1, 'ĐỎ'),
(2, 'Trắng'),
(3, 'Xanh '),
(4, 'Vàng'),
(5, 'Đen'),
(6, 'Xanh lá');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `maNhanVien` int(11) NOT NULL,
  `tenNhanVien` varchar(30) COLLATE utf8_vietnamese_ci NOT NULL,
  `matKhau` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `quyen` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`maNhanVien`, `tenNhanVien`, `matKhau`, `quyen`) VALUES
(3, 'admin', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `maSanPham` int(11) NOT NULL,
  `tenSanPham` varchar(111) COLLATE utf8_vietnamese_ci NOT NULL,
  `soLuong` int(11) NOT NULL,
  `maLoai` int(11) NOT NULL,
  `giamGia` int(11) NOT NULL,
  `moTa` text COLLATE utf8_vietnamese_ci NOT NULL,
  `hinh` text COLLATE utf8_vietnamese_ci NOT NULL,
  `gia` float NOT NULL,
  `maSize` int(11) NOT NULL,
  `maMau` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`maSanPham`, `tenSanPham`, `soLuong`, `maLoai`, `giamGia`, `moTa`, `hinh`, `gia`, `maSize`, `maMau`) VALUES
(4, '', 10, 1, 10, 'Áo CLB Real Madrid', 'hinh2.jpg', 350000, 1, 1),
(5, 'Áo Real Madrid', 10, 1, 10, 'Áo CLB Juventus', 'hinh3.jpg', 350000, 1, 1),
(7, 'Áo Thái Lan', 10, 2, 10, 'Áo đấu chính thức của đội tuyển Thái Lan', 'hinh5.jpg', 350000, 1, 1),
(9, 'Áo Leicester City', 10, 1, 10, 'Áo CLB Leicester City', 'hinh7.jpg', 350000, 1, 3),
(10, 'Áo Dortmund', 10, 1, 10, 'Áo CLB Dortmund', 'hinh8.jpg', 350000, 1, 4),
(13, 'Áo Hà Lan', 10, 2, 10, 'Áo đấu chính thức của đội tuyển Hà Lan', 'hinh11.jpg', 350000, 1, 1),
(14, 'Áo Barzil', 10, 2, 10, 'Áo đấu chính thức của đội tuyển Barzil', 'hinh12.jpg', 350000, 1, 4),
(15, 'Áo Anh', 10, 2, 10, 'Áo đấu chính thức của đội tuyển Anh', 'hinh13.jpg', 350000, 1, 3),
(16, 'Áo Italia', 10, 2, 10, 'Áo đấu chính thức của đội tuyển Italia', 'hinh14.jpg', 350000, 1, 3),
(17, 'Áo Pháp', 10, 2, 10, 'Áo đấu chính thức của đội tuyển Pháp', 'hinh15.jpg', 350000, 1, 3),
(18, 'Áo Bồ Đào Nha', 10, 2, 10, 'Áo đấu chính thức của đội tuyển Bồ Đào Nha', 'hinh16.jpg', 350000, 1, 3),
(20, 'Áo Việt NAM', 10, 2, 10, 'Áo đấu chính thức của đội tuyển Việt Nam', 'hinh1.jpg', 350000, 1, 1),
(21, 'Áo Roma', 11, 1, 20, 'Áo CLB Roma', 'hinh19.jpg', 250000, 1, 2),
(22, 'Áo AcMilan', 20, 1, 15, 'Áo CLB AcMilan', 'hinh17.jpg', 350000, 1, 1),
(23, 'Áo MU', 100, 1, 10, 'Áo CLB MU', 'hinh 20.jpg', 500000, 1, 1),
(26, 'Áo Liverpoor', 10, 1, 10, 'Áo CLB Liverpoor', 'hinh6.jpg', 350000, 1, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `maSize` int(11) NOT NULL,
  `loaiSize` varchar(111) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`maSize`, `loaiSize`) VALUES
(1, 'L'),
(2, 'M'),
(3, 'S'),
(4, 'XL'),
(5, 'XXL');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`maBinhLuan`,`maKhachHang`,`maSanPham`),
  ADD KEY `maSanPham` (`maSanPham`),
  ADD KEY `maKhachHang` (`maKhachHang`);

--
-- Chỉ mục cho bảng `bosuutap`
--
ALTER TABLE `bosuutap`
  ADD PRIMARY KEY (`maBoSuuTap`);

--
-- Chỉ mục cho bảng `chitietbosuutap`
--
ALTER TABLE `chitietbosuutap`
  ADD PRIMARY KEY (`maChiTietBST`),
  ADD KEY `maBoSuuTap` (`maBoSuuTap`),
  ADD KEY `maSanPham` (`maSanPham`);

--
-- Chỉ mục cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`maChiTietDonHang`,`maDonHang`,`maSanPham`),
  ADD KEY `maDonHang` (`maDonHang`),
  ADD KEY `maSanPham` (`maSanPham`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`maDonHang`,`maKhachHang`),
  ADD KEY `maNhanVien` (`maNhanVien`),
  ADD KEY `maKhachHang` (`maKhachHang`);

--
-- Chỉ mục cho bảng `hinh`
--
ALTER TABLE `hinh`
  ADD PRIMARY KEY (`maSanPham`,`maHinh`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`maKhachHang`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`maLoai`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`maMau`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`maNhanVien`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`maSanPham`),
  ADD KEY `maLoai` (`maLoai`),
  ADD KEY `maSize` (`maSize`),
  ADD KEY `maMau` (`maMau`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`maSize`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `maBinhLuan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `bosuutap`
--
ALTER TABLE `bosuutap`
  MODIFY `maBoSuuTap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  MODIFY `maChiTietDonHang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `maDonHang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `maKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `mau`
--
ALTER TABLE `mau`
  MODIFY `maMau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `maNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `maSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `maSize` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`maSanPham`) REFERENCES `sanpham` (`maSanPham`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`maKhachHang`) REFERENCES `khachhang` (`maKhachHang`);

--
-- Các ràng buộc cho bảng `chitietbosuutap`
--
ALTER TABLE `chitietbosuutap`
  ADD CONSTRAINT `chitietbosuutap_ibfk_1` FOREIGN KEY (`maSanPham`) REFERENCES `sanpham` (`maSanPham`),
  ADD CONSTRAINT `chitietbosuutap_ibfk_2` FOREIGN KEY (`maBoSuuTap`) REFERENCES `bosuutap` (`maBoSuuTap`);

--
-- Các ràng buộc cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `chitietdondathang_ibfk_1` FOREIGN KEY (`maDonHang`) REFERENCES `dondathang` (`maDonHang`),
  ADD CONSTRAINT `chitietdondathang_ibfk_2` FOREIGN KEY (`maSanPham`) REFERENCES `sanpham` (`maSanPham`);

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `dondathang_ibfk_1` FOREIGN KEY (`maNhanVien`) REFERENCES `nhanvien` (`maNhanVien`),
  ADD CONSTRAINT `dondathang_ibfk_2` FOREIGN KEY (`maKhachHang`) REFERENCES `khachhang` (`maKhachHang`);

--
-- Các ràng buộc cho bảng `hinh`
--
ALTER TABLE `hinh`
  ADD CONSTRAINT `hinh_ibfk_1` FOREIGN KEY (`maSanPham`) REFERENCES `sanpham` (`maSanPham`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`maLoai`) REFERENCES `loaisanpham` (`maLoai`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`maMau`) REFERENCES `mau` (`maMau`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`maSize`) REFERENCES `size` (`maSize`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
