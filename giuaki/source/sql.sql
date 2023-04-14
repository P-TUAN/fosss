-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 03:16 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `id_taikhoan`, `id_sanpham`, `noidung`) VALUES
(27, 5, 23, 'tuyệt vời\r\n'),
(28, 5, 27, 'quas ngon\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `id` int(11) NOT NULL,
  `id_donhang` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ctdonhang`
--

INSERT INTO `ctdonhang` (`id`, `id_donhang`, `id_sanpham`, `soluong`, `gia`) VALUES
(58, 54, 27, 1, 1),
(59, 55, 34, 2, 8850000),
(60, 56, 22, 2, 2290000),
(61, 57, 22, 1, 2290000),
(62, 57, 26, 1, 620000),
(63, 58, 22, 1, 2290000),
(64, 59, 24, 1, 3450000),
(65, 60, 23, 1, 680000),
(66, 61, 22, 1, 2290000),
(67, 62, 23, 2, 680000),
(68, 63, 24, 1, 3450000),
(69, 64, 24, 1, 3450000),
(70, 65, 23, 1, 680000),
(72, 66, 22, 2, 2290000),
(73, 66, 23, 1, 680000),
(74, 67, 22, 2, 2290000),
(75, 67, 24, 1, 3450000),
(76, 68, 23, 1, 680000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_dm` int(11) NOT NULL,
  `danhmuc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id_dm`, `danhmuc`) VALUES
(3, 'Samsung'),
(19, 'Gigabyte'),
(20, 'Sandisk'),
(21, 'Kingston'),
(22, 'Intel'),
(23, 'Crucial'),
(24, 'Seagate'),
(25, 'Western Digital'),
(26, 'PNY'),
(27, 'MSI'),
(28, 'Toshiba');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `id_taikhoan` int(11) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `diachi` text DEFAULT NULL,
  `thoigian` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `id_taikhoan`, `tongtien`, `status`, `diachi`, `thoigian`) VALUES
(54, 5, 1, 3, ' xxxx', '06-04-2023 23:27:22'),
(55, 5, 17700000, 3, ' xxxx', '06-04-2023 23:36:47'),
(56, 5, 4580000, 3, ' xxxx', '10-04-2023 07:38:27'),
(57, 23, 2910000, 4, ' ', '12-04-2023 14:16:54'),
(58, 23, 2290000, 3, ' ', '12-04-2023 14:54:25'),
(59, 23, 3450000, 4, ' ', '12-04-2023 14:54:54'),
(60, 27, 680000, 4, ' ', '13-04-2023 07:42:16'),
(61, 27, 2290000, 3, ' ', '13-04-2023 08:41:59'),
(62, 27, 1360000, 3, ' ', '13-04-2023 08:43:26'),
(63, 23, 3450000, 4, ' ', '13-04-2023 09:23:33'),
(64, 28, 3450000, 4, ' qqq', '13-04-2023 11:18:03'),
(65, 28, 0, 0, NULL, NULL),
(66, 5, 5260000, 2, ' xxxx', '14-04-2023 06:57:48'),
(67, 5, 8030000, 2, ' xxxx', '14-04-2023 07:04:42'),
(68, 5, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `gia` int(11) NOT NULL,
  `anh1` text NOT NULL,
  `anh2` text NOT NULL,
  `anh3` text NOT NULL,
  `chitiet` text NOT NULL,
  `mota` text NOT NULL,
  `luotxem` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `id_danhmuc`, `ten`, `gia`, `anh1`, `anh2`, `anh3`, `chitiet`, `mota`, `luotxem`, `status`) VALUES
(22, 3, 'Ổ Cứng Di Động SSD Samsung T7 Non Touch 1TB MU-PC1T0 USB Type C 3.2 Gen 2', 2290000, 'SSD-Samsung-T7-Non-Touch-1TB-1.jpg', 'SSD-Samsung-T7-Non-Touch-1TB-2.jpg', 'SSD-Samsung-T7-Non-Touch-1TB-3.jpg', 'Ổ cứng di động SSD Samsung T7 Non Touch 1TB là dòng ổ cứng đến từ thương hiệu Samsung, có nhiều điểm tương đồng với Samsung T7 Touch tuy nhiên phiên bản Non Touch này sẽ không hỗ trợ cảm biến vân tay nhưng vẫn đảm bảo giữ nguyên tốc độ hoạt động.\r\n\r\n', 'Dung lượng 1TB\r\nTốc độ: lên đến 1050MB/s\r\nChuẩn kết nối USB Type C 3.2 Gen 2\r\nBộ sản phẩm đã bao gồm 2 sợi cáp USB C – USB C và USB C – USB 3.0 để bạn dễ dàng chuyển đổi dữ liệu\r\nKích thước: 85 x 57 x 8.0 mm\r\nHỗ trợ: Windows 7 trở lên, Mac OS X 10.10 trở lên\r\nBảo hành 36 tháng\r\nTham khảo bài viết: So sánh kết nối USB-C và Thunderbolt 3', 42, 0),
(23, 3, 'SSD Samsung PM991 256GB M2 2280 PCIe NVMe Gen 3×4 MZVLQ256HAJD', 680000, 'SSD-Samsung-PM991-256GB-M2-2280-PCIe-NVMe-Gen-3x4-MZVLQ256HAJD.jpg', '', '', 'Hãng sản xuất Samsung vừa giới thiệu một sản phẩm SSD Samsung PM991 256GB hoàn toàn mới tại sự kiện Tech Day 2019. Đây là ổ cứng SSD được thiết kế theo chuẩn giao tiếp mới nhất M2 2280 NVMe tốc độ cao. Giúp bạn tăng tốc toàn bộ hệ thống máy tính một cách toàn diện và nhanh chóng nhất.', 'Mô tả: Sản phẩm Like new 99.9%, (chạy test dưới 50h)\r\n\r\nDung lượng 256GB\r\nTốc độ đọc ghi: 2050MB/s – 1000MB/s\r\nChuẩn kết nối M.2 NVME Gen 3×4\r\nKích thước: 22mm x 80mm\r\nBảo hành 3 năm\r\nĐối với trường hợp bảo hành các sản phẩm thiết bị lưu trữ : KHÔNG bảo hành dữ liệu', 31, 0),
(24, 3, 'Ổ Cứng SSD Samsung 970 Pro 1TB M2 PCIe NVme Gen 3×4 MZ-V7P1T0BW (NAND MLC) – Used', 3450000, 'SSD-Samsung-970-Pro-1TB-M2-2280-NVMe-MZ-V7P1T0BW.jpeg', 'SSD-Samsung-970-Pro-1TB-M2-2280-NVMe-MZ-V7P1T0BW.jpeg', '', 'Ổ cứng SSD Samsung 970 Pro 1TB M2 PCIe MZ-V7P1T0BW Chất Lượng Cao\r\nỔ Cứng SSD Samsung 970 Pro 1TB M2 2280 là sự lựa chọn nâng cấp ổ cứng SSD M2 PCIe hàng đầu cho game thủ. Sở dĩ được ưu ái bởi ổ cứng SSD Samsung 970 Pro có mức giá thành phải chăng, hiệu năng hoạt động ổn định và trên tất cả là tốc độ xử lý vô cùng vượt trội.\r\n\r\nSSD Samsung 970 Pro 1TB M2 NVMe được trang bị chuẩn giao tiếp PCIe mang lại hiệu suất hoạt động tuyệt vời. Công nghệ Samsung V-NAND và Dynamic Thermal Guard giúp cho Samsung 970 Pro đảm bảo được tính an toàn của dữ liệu, đồng thời hạn chế được tình trạng quá nhiệt bởi thế nên khi nâng cấp ổ cứng SSD này cho laptop, người sử dụng sẽ không cần phải lo lắng về khả năng bảo mật dữ liệu của mình.', 'Dung lượng 1TB\r\nTốc độ đọc ghi: 3500MB/s – 2700MB/s\r\nChuẩn kết nối M.2 NVME Gen 3×4\r\nKích thước: 22mm x 80mm\r\nCông nghệ NAND: 3D MLC cao cấp\r\nBảo hành: 5 năm\r\nĐối với trường hợp bảo hành các sản phẩm thiết bị lưu trữ : KHÔNG bảo hành dữ liệu', 26, 0),
(25, 3, 'Ổ Cứng Di Động SSD Samsung T7 Touch 1TB USB Type C 3.2 Gen 2 MU-PC1T0K', 2950000, 'SSD-Samsung-T7-Touch-2TB-USB-Type-C-3.2-Gen-2-MU-PC2T0K.jpg', 'SSD-Samsung-T7-Touch-2TB-USB-Type-C-3.2-Gen-2-MU-PC2T0K-8-100x100.jpg', 'SSD-Samsung-T7-Touch-2TB-USB-Type-C-3.2-Gen-2-MU-PC2T0K-2-100x100.jpg', 'Samsung đã chính thức công bố dòng ổ cứng SSD Samsung T7 Touch 1TB thế hệ mới nhất của hãng, thiết bị này cho khả năng truyền dữ liệu cao hơn và một tính năng bổ sung dành riêng đó là đầu đọc dấu vân tay.\r\n\r\nĐối với những người dùng coi trọng sự riêng tư và đặt vấn đề bảo mật dữ liệu lên ưu tiên hàng đầu thì Samsung T7 Touch có hỗ trợ tính năng xác thực vân tay thì đúng là một sản phẩm quá tuyệt vời. Và bên cạnh đó, đây là một sản phẩm kế thừa những ưu điểm của Samsung T5 trước đó, cho tốc độ đọc ghi dữ liệu vô cùng vượt trội.', 'Dung lượng 1TB\r\nTốc độ: lên đến 1050MB/s\r\nChuẩn kết nối USB Type C 3.2 Gen 2\r\nKích thước: 85 x 57 x 8.0 mm\r\nHỗ trợ: Windows 7 trở lên, Mac OS X 10.10 trở lên\r\nBảo hành 36 tháng\r\nTham khảo bài viết: So sánh kết nối USB-C và Thunderbolt 3\r\nĐối với trường hợp bảo hành các sản phẩm thiết bị lưu trữ : KHÔNG bảo hành dữ liệu', 4, 0),
(26, 3, 'Ổ Cứng SSD Samsung PM881 256GB 2.5 inch SATA iii MZ-7LH2560', 620000, 'SSD-Samsung-PM881-256GB-2.5-inch-SATA-iii-MZ-7LH2560-hinh-2.jpg', '', '', 'MÔ TẢ\r\n \r\nTHÔNG TIN BỔ SUNG\r\n \r\nĐÁNH GIÁ (0)\r\nMáy tính của bạn khởi động quá chậm và khiến cho bạn mất phải rất mất nhiều thời gian để chờ đợi? Bạn không có 1 ngân sách đầu tư quá lớn? Đừng lo lắng, LagiHitech xin giới thiệu đến các bạn mẫu ổ cứng SSD Samsung PM881 256GB 2.5 inch SATA iii vừa mới được giới thiệu trong khoảng thời gian gần đây.\r\n\r\nDung lượng lưu trữ 256GB', 'Phiên bản OEM của 870 EVO, hiệu năng – giá thành p/p\r\n\r\nDung lượng 256GB\r\nTốc độ đọc ghi: 540MB/s – 520MB/s\r\nChuẩn kết nối 2.5 inch SATA iii\r\nBảo hành 3 năm\r\nĐối với trường hợp bảo hành các sản phẩm thiết bị lưu trữ : KHÔNG bảo hành dữ liệu\r\n\r\nGiao Hàng Thanh Toán\r\n\r\n– Ship nội thành: gói nhanh 60 phút và giao trong ngày.\r\n– Ship các tỉnh khác: 24h-72h (có ship hỏa tốc) Xem chi tiết\r\n– Ship COD/ nhà xe theo yêu cầu khách hàng.', 10, 0),
(27, 22, 'SSD Enterprise Intel DC S4500 240GB SSDSC2KB240G701', 1650000, 'SSD-Enterprise-Intel-DC-S4500-240GB-SSDSC2KB240G701-Chinh-Hang.jpg', 'SSD-Enterprise-Intel-DC-S4500-240GB-SSDSC2KB240G701-Chinh-Hang.jpg', 'SSD-Enterprise-Intel-DC-S4500-240GB-SSDSC2KB240G701-Chinh-Hang.jpg', 'Là một sản phẩm phục vụ cho hệ thống máy chủ nên ổ cứng SSD Enterprise Intel DC S4500 240GB mang lại cho người dùng nhiều trải nghiệm tuyệt vời với những công nghệ nổi bật. Cho phép thiết bị có thể hoạt động liên tục 24/24 mà không gặp ra bất cứ vấn đề gì.\r\n\r\nỔ cứng SSD Enterprise Intel DC S4500 240GB tuy có dung lượng lưu trữ không lớn, nhưng nếu như được dùng trong hệ thống máy chủ vừa và nhỏ, thì mình nghĩ nó hoàn toàn đáp ứng được nhu cầu của bạn.', 'Dung lượng 240GB\r\nTốc độ đọc ghi: 500MB/s – 190MB/s\r\nChuẩn kết nối 2.5 inch SATA iii\r\nBảo hành 36 tháng\r\nĐối với trường hợp bảo hành các sản phẩm thiết bị lưu trữ : KHÔNG bảo hành dữ liệu\r\n\r\nGiao Hàng Thanh Toán', 11, 0),
(28, 22, 'SSD Enterprise Intel DC S4500 240GB SSDSC2KB240G701', 1850000, 'SSD-Enterprise-Intel-DC-S4510-240GB-SSDSC2KB240G801.jpg', '', '', 'Là một sản phẩm phục vụ cho hệ thống máy chủ nên ổ cứng SSD Enterprise Intel DC S4500 240GB mang lại cho người dùng nhiều trải nghiệm tuyệt vời với những công nghệ nổi bật. Cho phép thiết bị có thể hoạt động liên tục 24/24 mà không gặp ra bất cứ vấn đề gì.\r\n\r\nỔ cứng SSD Enterpr', 'Dung lượng 240GB\r\nTốc độ đọc ghi: 500MB/s – 190MB/s\r\nChuẩn kết nối 2.5 inch SATA iii\r\nBảo hành 36 tháng\r\nĐối với trường hợp bảo hành các sản phẩm thiết bị lưu trữ : KHÔNG bảo hành dữ liệu\r\n\r\nGiao Hàng Thanh Toán', 1, 0),
(29, 22, 'SSD Intel 760P 1TB M2 2280 PCIe NVMe Gen 3×4 SSDPEKKW010T8X1', 2850000, 'SSD-Intel-760P-1TB-M2-2280-SSDPEKKW010T8X1.jpg', 'SSD-Intel-760p-1TB-M2-2280.jpg', '', 'ưs', 'ưs', 1, 0),
(30, 22, 'SSD Intel 760p 256GB M2 2280 PCIe NVMe Gen 3×4 SSDPEKKW256G8X1', 450000, 'SSD-Intel-760p-1TB-M2-2280.jpg', '', '', 'ưs', 'ưs', 1, 0),
(31, 20, 'Ổ Cứng Di Động SSD Sandisk E30 1TB SDSSDE30-1T00-G25 USB 3.2 Gen 2', 1890000, 'ssd-sandisk-e30-1tb-4.jpg', 'ssd-sandisk-e30-1tb-5.png', 'ssd-sandisk-e30-c1tb-4.jpg', 'ưsccccasc', 'ưscsc', 1, 0),
(32, 20, 'Ổ cứng di động SSD SanDisk Extreme E61 1TB USB Type C 3.2 Gen 2 SDSSDE61-1T00-G2', 2500000, 'o-cung-di-dong-SSD-SanDisk-Extreme-E61-500GB-SDSSDE61-500G-G25-10-1.jpg', '', '', 'ưsaaaaa', 'ưsaaaa', 1, 0),
(33, 20, 'Ổ cứng di động SSD SanDisk Extreme E61 2TB USB Type C 3.2 Gen 2 SDSSDE61-1T00-G2', 4400000, 'o-cung-di-dong-SSD-SanDisk-Extreme-E61-500GB-SDSSDE61-500G-G25-10-1.jpg', '', '', 'ưs', 'ưs', 1, 0),
(34, 19, 'Ổ cứng di động SSD SanDisk Extreme E61 4TB USB Type C 3.2 Gen 2 SDSSDE61-1T00-G2', 8850000, '737812608e51dbc7d5156bc396d206a1_tn.jpg', '', '', 'ưssès', 'ưsdffwef', 7, 0),
(35, 20, 'Ổ cứng di động SSD SanDisk Extreme E61 1TB USB Type C 3.2 Gen 2 SDSSDE61-1T00-G2', 3790000, 'o-cung-di-dong-SSD-Sandisk-Extreme-Pro-E81-1TB-SDSSDE81-1T00-A25.jpg', 'o-cung-di-dong-SSD-SanDisk-Extreme-E61-500GB-SDSSDE61-500G-G25-10-1.jpg', '', 'ưs', 'ưs', 1, 0),
(36, 19, '[HÀNG CHÍNH HÃNG] ổ SSD Gigabyte 256GB M.2 2280 PCIe NVMe bảo hành 3 năm 1 đổi 1', 639000, '737812608e51dbc7d5156bc396d206a1_tn.jpg', '', '', 'ưs', 'ưs', 1, 0),
(37, 19, 'Ổ cứng SSD Gigabyte 480GB 2.5\" SATA 6Gb/s (GP-GSTFS31480GNTD)', 999000, 'unnamed.webp', '', '', 'ưsưeqweqw', 'ưsưqeweq', 1, 0),
(38, 19, 'SSD Gigabyte', 1000000, '737812608e51dbc7d5156bc396d206a1_tn.jpg', '', '', 'ưsáda', 'ưssdasd', 1, 0),
(39, 21, 'Ổ cứng SSD Kingston A400 120GB Sata 3 (SA400S37/120G)', 490000, 'unnamed (1).webp', '', '', 'ưsqưeq', 'ưsqưeqwe', 1, 0),
(40, 21, 'Liên hệ đặt hàng Ổ cứng SSD Kingston SUV500 120GB 2.5\" SATA 3', 850000, 'unnamed (3).webp', 'unnamed (2).webp', '', 'ưseqưeqwe', 'ưsqưeqweqw', 1, 0),
(41, 21, 'Ổ cứng SSD Kingston FURY Renegade 1TB M.2 2280 NVMe PCIe Gen4 (SFYRS/1000G)', 3890000, 'unnamed (4).webp', 'unnamed (5).webp', 'unnamed (6).webp', 'ưseqưeqwe', 'ưsqưeqweqweqw', 1, 0),
(42, 21, 'Ổ cứng SSD Kingston FURY Renegade 1TB M.2 2280 NVMe PCIe Gen4 (SFYRS/1000G)', 1749000, 'unnamed (7).webp', 'unnamed (8).webp', '', 'ưsqưeqweqw', 'ưsqưeqweqwe', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `anh` text NOT NULL,
  `mota` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `ten`, `link`, `anh`, `mota`) VALUES
(10, 'Khuyến mãi', 'http://localhost/shop/chitiet.php?id=22', '2023-03-28_02-29-04_right_samsung.png', 'mại dô mại zô');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `taikhoan` varchar(55) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `anh` text NOT NULL,
  `sdt` text NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `phanquyen` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `taikhoan`, `matkhau`, `hoten`, `anh`, `sdt`, `diachi`, `phanquyen`, `status`) VALUES
(5, 'tuan', 'c8837b23ff8aaa8a2dde915473ce0991', 'phamtuan', 'WIN_20230412_05_30_46_Pro.jpg', '09846435773', 'xxxx', 1, 0),
(23, 'a@gmail.com', '7694f4a66316e53c8cdd9d9954bd611d', 'q', '', '', '', 1, 0),
(27, 'tuann@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', 'tuan', 'WIN_20230412_05_30_46_Pro.jpg', '000', '', 0, 0),
(28, '1@gmail', 'c4ca4238a0b923820dcc509a6f75849b', '1s', '', '1', 'qqq', 0, 0),
(29, 'q@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'q', '', '1', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tlbinhluan`
--

CREATE TABLE `tlbinhluan` (
  `id` int(11) NOT NULL,
  `id_binhluan` int(11) NOT NULL,
  `noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id sản phẩm` (`id_sanpham`),
  ADD KEY `id tài khoản` (`id_taikhoan`);

--
-- Indexes for table `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_id_donhang` (`id_donhang`),
  ADD KEY `Fk_id_sanpham` (`id_sanpham`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_dm`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_takhoan` (`id_taikhoan`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id danh mục` (`id_danhmuc`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id bình luận` (`id_binhluan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `ctdonhang`
--
ALTER TABLE `ctdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_dm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `fk_id_sanpham_bl` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_id_taikhoan` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD CONSTRAINT `Fk_id_donhang` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_id_sanpham` FOREIGN KEY (`id_sanpham`) REFERENCES `sanpham` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`id_taikhoan`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `id danh mục` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_dm`);

--
-- Constraints for table `tlbinhluan`
--
ALTER TABLE `tlbinhluan`
  ADD CONSTRAINT `id bình luận` FOREIGN KEY (`id_binhluan`) REFERENCES `binhluan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
