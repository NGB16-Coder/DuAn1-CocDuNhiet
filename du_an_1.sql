-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 06, 2024 lúc 08:53 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_an_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `bl_id` int NOT NULL,
  `tk_id` int NOT NULL,
  `noi_dung` varchar(255) NOT NULL,
  `an_hien` bit(1) DEFAULT NULL,
  `sp_id` int NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `ctdh_id` int NOT NULL,
  `order_id` int NOT NULL,
  `sp_id` int NOT NULL,
  `gia_mua` int NOT NULL,
  `so_luong` int NOT NULL,
  `km_sp` int NOT NULL,
  `trang_thai` int NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL,
  `img_sp` varchar(255) NOT NULL,
  `an_hien` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_gia`
--

CREATE TABLE `danh_gia` (
  `dg_id` int NOT NULL,
  `noi_dung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `sp_id` int NOT NULL,
  `tk_id` int NOT NULL,
  `so_sao` int NOT NULL,
  `an_hien` bit(1) DEFAULT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `dm_id` int NOT NULL,
  `ten_dm` varchar(255) NOT NULL,
  `an_hien` bit(1) DEFAULT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `order_id` int NOT NULL,
  `tk_id` int NOT NULL,
  `dia_chi` varchar(255) NOT NULL COMMENT 'địa chỉ nhận hàng',
  `ten_nhan` varchar(255) NOT NULL COMMENT 'tên người nhận',
  `sdt` varchar(11) NOT NULL COMMENT 'số điện thoại người nhận',
  `ngay_dat` datetime NOT NULL COMMENT 'ngày đặt hàng',
  `tong_so_luong` int NOT NULL,
  `trang_thai` int NOT NULL,
  `tong_tien` int NOT NULL,
  `an_hien` bit(1) DEFAULT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` int NOT NULL,
  `sp_id` int NOT NULL,
  `tk_id` int NOT NULL,
  `an_hien` bit(1) DEFAULT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_img`
--

CREATE TABLE `list_img` (
  `sp_id` int NOT NULL,
  `img` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL,
  `an_hien` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `sp_id` int NOT NULL,
  `ten_sp` varchar(255) NOT NULL,
  `img_sp` varchar(255) NOT NULL,
  `mo_ta` varchar(255) DEFAULT NULL,
  `size_id` int NOT NULL,
  `mau_sp` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trang_thai` bit(1) NOT NULL,
  `dm_id` int NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL,
  `an_hien` bit(1) DEFAULT NULL,
  `tong_dg` int NOT NULL,
  `tong_so_sao` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `size_id` int NOT NULL,
  `gia_sp` decimal(18,2) NOT NULL,
  `km_sp` decimal(18,2) NOT NULL,
  `so_luong` int NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL,
  `an_hien` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `slide_id` int NOT NULL,
  `img_slide` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `an_hien` bit(1) DEFAULT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sp_bien_the`
--

CREATE TABLE `sp_bien_the` (
  `spbt_id` int NOT NULL,
  `sp_id` int NOT NULL,
  `size_id` int NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL,
  `an_hien` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `tk_id` int NOT NULL,
  `ho_ten` varchar(255) NOT NULL,
  `dia_chi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sdt` varchar(11) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `role` bit(1) DEFAULT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_update` datetime NOT NULL,
  `an_hien` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`bl_id`),
  ADD UNIQUE KEY `bl_id` (`bl_id`),
  ADD KEY `binh_luan_fk1` (`tk_id`),
  ADD KEY `binh_luan_fk4` (`sp_id`);

--
-- Chỉ mục cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`ctdh_id`),
  ADD UNIQUE KEY `ctdh_id` (`ctdh_id`),
  ADD KEY `chi_tiet_don_hang_fk1` (`order_id`),
  ADD KEY `chi_tiet_don_hang_fk2` (`sp_id`);

--
-- Chỉ mục cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD PRIMARY KEY (`dg_id`),
  ADD UNIQUE KEY `dg_id` (`dg_id`),
  ADD KEY `danh_gia_fk2` (`sp_id`),
  ADD KEY `danh_gia_fk3` (`tk_id`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`dm_id`),
  ADD UNIQUE KEY `dm_id` (`dm_id`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_id` (`order_id`),
  ADD KEY `don_hang_fk1` (`tk_id`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `gio_hang_fk1` (`sp_id`),
  ADD KEY `gio_hang_fk2` (`tk_id`);

--
-- Chỉ mục cho bảng `list_img`
--
ALTER TABLE `list_img`
  ADD PRIMARY KEY (`sp_id`),
  ADD UNIQUE KEY `sp_id` (`sp_id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`sp_id`),
  ADD UNIQUE KEY `sp_id` (`sp_id`),
  ADD KEY `san_pham_fk9` (`dm_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`slide_id`),
  ADD UNIQUE KEY `slide_id` (`slide_id`);

--
-- Chỉ mục cho bảng `sp_bien_the`
--
ALTER TABLE `sp_bien_the`
  ADD PRIMARY KEY (`spbt_id`),
  ADD UNIQUE KEY `spbt_id` (`spbt_id`),
  ADD KEY `sp_bien_the_fk1` (`sp_id`),
  ADD KEY `size_id_fk2` (`size_id`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`tk_id`),
  ADD UNIQUE KEY `tk_id` (`tk_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `bl_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `ctdh_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  MODIFY `dg_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `dm_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `list_img`
--
ALTER TABLE `list_img`
  MODIFY `sp_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `sp_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `slide_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sp_bien_the`
--
ALTER TABLE `sp_bien_the`
  MODIFY `spbt_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `tk_id` int NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD CONSTRAINT `binh_luan_fk1` FOREIGN KEY (`tk_id`) REFERENCES `taikhoan` (`tk_id`),
  ADD CONSTRAINT `binh_luan_fk4` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `chi_tiet_don_hang_fk1` FOREIGN KEY (`order_id`) REFERENCES `don_hang` (`order_id`),
  ADD CONSTRAINT `chi_tiet_don_hang_fk2` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `danh_gia`
--
ALTER TABLE `danh_gia`
  ADD CONSTRAINT `danh_gia_fk2` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`),
  ADD CONSTRAINT `danh_gia_fk3` FOREIGN KEY (`tk_id`) REFERENCES `taikhoan` (`tk_id`);

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `don_hang_fk1` FOREIGN KEY (`tk_id`) REFERENCES `taikhoan` (`tk_id`);

--
-- Các ràng buộc cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `gio_hang_fk1` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`),
  ADD CONSTRAINT `gio_hang_fk2` FOREIGN KEY (`tk_id`) REFERENCES `taikhoan` (`tk_id`);

--
-- Các ràng buộc cho bảng `list_img`
--
ALTER TABLE `list_img`
  ADD CONSTRAINT `list_img_fk0` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `san_pham_fk9` FOREIGN KEY (`dm_id`) REFERENCES `danh_muc` (`dm_id`);

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_id_fk0` FOREIGN KEY (`size_id`) REFERENCES `san_pham` (`size_id`);
  
  -- xóa khóa ngoại
-- ALTER TABLE size
-- DROP CONSTRAINT size_id_fk0;

--
-- Các ràng buộc cho bảng `sp_bien_the`
--
ALTER TABLE `sp_bien_the`
  ADD CONSTRAINT `size_id_fk2` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`),
  ADD CONSTRAINT `sp_bien_the_fk1` FOREIGN KEY (`sp_id`) REFERENCES `san_pham` (`sp_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
