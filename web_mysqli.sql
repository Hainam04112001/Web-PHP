-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 08:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `usename` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `usename`, `password`, `admin_status`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` longtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(11, 'Bộ GD&ĐT thông tin về sử dụng sách giáo khoa theo chương trình mới', '<p>(Chinhphu.vn) - Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo (GD&amp;ĐT) cho biết đ&atilde; nhận được &yacute; kiến cử tri kiến nghị ban h&agrave;nh thống nhất, đồng bộ s&aacute;ch gi&aacute;o khoa tr&ecirc;n to&agrave;n quốc.</p>\r\n', '<p>&Yacute; kiến cử tri cho rằng: Hiện nay, mỗi địa phương &aacute;p dụng một bộ s&aacute;ch gi&aacute;o khoa ri&ecirc;ng, dẫn đến t&igrave;nh trạng thay đổi s&aacute;ch gi&aacute;o khoa nhiều lần; đồng thời s&aacute;ch gi&aacute;o khoa của học sinh ở địa phương n&agrave;y kh&ocirc;ng thể mua v&agrave; sử dụng ở địa phương kh&aacute;c.</p>\r\n\r\n<p>Về vấn đề n&agrave;y, Bộ GD&amp;ĐT cho biết: Nghị quyết số 88/2014/QH13 ng&agrave;y 28/11/2014 của Quốc hội về đổi mới chương tr&igrave;nh, s&aacute;ch gi&aacute;o khoa gi&aacute;o dục phổ th&ocirc;ng đ&atilde; quy định: &quot;S&aacute;ch gi&aacute;o khoa cụ thể h&oacute;a c&aacute;c y&ecirc;u cầu của chương tr&igrave;nh gi&aacute;o dục phổ th&ocirc;ng về nội dung gi&aacute;o dục, y&ecirc;u cầu về phẩm chất v&agrave; năng lực học sinh; định hướng về phương ph&aacute;p gi&aacute;o dục v&agrave; c&aacute;ch thức kiểm tra, đ&aacute;nh gi&aacute; chất lượng gi&aacute;o dục. Thực hiện x&atilde; hội h&oacute;a bi&ecirc;n soạn s&aacute;ch gi&aacute;o khoa; c&oacute; một số s&aacute;ch gi&aacute;o khoa cho mỗi m&ocirc;n học&quot;.</p>\r\n', 22, 1, '1684204062_sgk-1-1580363495731734798074-16772087578831912278468.jpg'),
(12, 'Xem xét bổ sung sách giáo khoa vào danh mục Nhà nước định giá', '<p>(Chinhphu.vn) - S&aacute;ch gi&aacute;o khoa thuộc nh&oacute;m vật tư gi&aacute;o dục thiết yếu của học sinh, ảnh hưởng đến an sinh x&atilde; hội, đặc biệt người d&acirc;n ở v&ugrave;ng s&acirc;u, v&ugrave;ng xa, v&ugrave;ng kinh tế kh&oacute; khăn... n&ecirc;n ng&agrave;nh gi&aacute;o dục đề xuất Nh&agrave; nước cần c&oacute; giải ph&aacute;p cấp b&aacute;ch để điều tiết gi&aacute;.</p>\r\n', '<h3>Cần đưa s&aacute;ch gi&aacute;o khoa v&agrave;o danh mục h&agrave;ng h&oacute;a do Nh&agrave; nước định gi&aacute; tối đa</h3>\r\n\r\n<p>Ng&agrave;y 28/11/2014, Quốc hội ban h&agrave;nh Nghị quyết số 88/2014/QH13 về đổi mới chương tr&igrave;nh, s&aacute;ch gi&aacute;o khoa (SGK) gi&aacute;o dục phổ th&ocirc;ng. Nghị quyết 88 quy định: &quot;Thực hiện x&atilde; hội h&oacute;a bi&ecirc;n soạn SGK; c&oacute; một số SGK cho mỗi m&ocirc;n học.&quot;; &quot;Khuyến kh&iacute;ch c&aacute;c tổ chức, c&aacute; nh&acirc;n bi&ecirc;n soạn SGK tr&ecirc;n cơ sở chương tr&igrave;nh gi&aacute;o dục phổ th&ocirc;ng&quot;.</p>\r\n\r\n<p>Tại thời điểm thảo luận Nghị quyết 88, đa số c&aacute;c đại biểu Quốc hội cũng như dư luận trong x&atilde; hội đều mong muốn thực hiện chủ trương một chương tr&igrave;nh nhiều bộ SGK, x&atilde; hội h&oacute;a trong bi&ecirc;n soạn SGK v&agrave; tạo cạnh tranh b&igrave;nh đẳng giữa c&aacute;c bộ s&aacute;ch, giao quyền chủ động lựa chọn SGK cho c&aacute;c trường (theo đ&uacute;ng xu thế quốc tế).</p>\r\n', 22, 1, '1684204194_sachgiaokhoa-16536267600001101352956.jpg'),
(13, '5 cuốn sách kỹ năng mềm hữu ích nhất dành cho sinh viên', '<p>Kỹ năng mềm l&agrave; một trong những yếu tố rất quan trọng quyết định đến cơ hội nghề nghiệp cũng như sự ph&aacute;t triển của sinh vi&ecirc;n.&nbsp;</p>\r\n', '<p>Kỹ năng mềm l&agrave; một thuật ngữ x&atilde; hội học d&ugrave;ng để chỉ c&aacute;c kỹ năng quan trọng trong cuộc sống h&agrave;ng ng&agrave;y của con người như: kỹ năng sống, l&agrave;m việc, giao tiếp, kỹ năng quản l&yacute; thời gian, xử l&yacute; t&igrave;nh huống, l&atilde;nh đạo, l&agrave;m việc nh&oacute;m, s&aacute;ng tạo, vượt qua kh&oacute; khăn,&hellip;Bạn cần ph&acirc;n biệt kỹ năng mềm với c&aacute;c kỹ năng cứng như tr&igrave;nh độ l&agrave;m việc, chuy&ecirc;n m&ocirc;n, kiến thức c&aacute;c chứng chỉ hay bằng cấp. Ch&uacute;ng chủ yếu hướng đến c&aacute;c thuộc t&iacute;nh li&ecirc;n quan tới con người ch&uacute;ng kh&ocirc;ng thể sờ nắm cũng kh&ocirc;ng mang t&iacute;nh chuy&ecirc;n m&ocirc;n. Tr&ecirc;n thực tế, những người th&agrave;nh đạt chỉ c&oacute; 25% l&agrave; do kiến thức chuy&ecirc;n m&ocirc;n, bằng cấp c&ograve;n kỹ năng mềm c&oacute; thể quyết định đến 75%. Ch&iacute;nh v&igrave; vậy, ta c&oacute; thể thấy rằng, kỹ năng mềm mang đến rất nhiều cơ hội cho mọi người, ch&uacute;ng sẽ gi&uacute;p ta ph&aacute;t triển mạnh mẽ tr&ecirc;n con đường th&agrave;nh c&ocirc;ng của m&igrave;nh.&nbsp;</p>\r\n', 25, 1, '1684204566_toi-tai-gioi-ban-cung-the-505647.jpg'),
(14, 'Top 10 Cuốn sách kỹ năng mềm hay nhất bạn nên đọc', '<p>Kỹ năng mềm - thuật ngữ d&ugrave;ng để chỉ kỹ năng quan trọng trong cuộc sống con người như: kỹ năng sống, giao tiếp, l&agrave;m việc theo nh&oacute;m.</p>\r\n', '<h3>Tony buổi s&aacute;ng: Tr&ecirc;n Đường Băng</h3>\r\n\r\n<p>Cuốn sách được chia l&agrave;m 3 phần: chuẩn bị h&agrave;nh trang, trong ph&ograve;ng chờ s&acirc;n bay và l&ecirc;n m&aacute;y bay, tương ứng với những qu&aacute; tr&igrave;nh bạn sẽ phải trải qua trước khi bước v&agrave;o xã h&ocirc;̣i.&nbsp;<strong>Tr&ecirc;n đường băng</strong>&nbsp;l&agrave; quyển s&aacute;ch hướng đến những bạn đọc l&agrave; những người trẻ tuy nhi&ecirc;n những người lớn hơn vẫn sẽ c&oacute; thể dễ hiểu hơn, giúp người lớn c&oacute; c&aacute;i nh&igrave;n kh&aacute;c cũng như thay đổi c&aacute;ch nh&igrave;n nhận về cuộc sống v&agrave; c&aacute;ch gi&aacute;o dục con em của m&igrave;nh, thay v&igrave; bảo vệ con qu&aacute; kĩ để con m&igrave;nh trở n&ecirc;n yếu ớt, kh&ocirc;ng có được sự tự lập.</p>\r\n', 25, 1, '1684204407_tony-buoi-sang-tren-duong-bang-173068.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_payment` varchar(50) NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_payment`, `cart_shipping`) VALUES
(53, 100, '2050', 0, '', 1),
(54, 100, '3134', 0, '', 1),
(55, 100, '2807', 0, 'chuyen khoan', 0),
(56, 101, '9213', 0, 'tien mat', 0),
(57, 101, '9477', 0, 'tien mat', 0),
(58, 101, '6836', 0, 'tien mat', 0),
(59, 101, '1172', 0, 'tien mat', 0),
(60, 100, '3951', 0, 'tien mat', 0),
(61, 100, '5756', 0, 'tien mat', 0),
(62, 100, '4669', 0, 'tien mat', 0),
(63, 100, '7796', 0, 'tien mat', 0),
(64, 100, '7882', 1, 'tien mat', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `in_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `in_sanpham`, `soluongmua`) VALUES
(55, '4430', 68, 1),
(56, '2487', 68, 1),
(57, '2050', 68, 1),
(58, '3134', 67, 1),
(59, '2807', 57, 1),
(60, '9213', 68, 1),
(61, '9477', 68, 1),
(62, '6836', 67, 1),
(63, '1172', 68, 1),
(64, '3951', 68, 1),
(65, '5756', 68, 1),
(66, '4669', 68, 1),
(67, '7796', 66, 1),
(68, '7882', 68, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangki` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangki`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(90, 'dinhnhuthao', 'haodinh@gmail.com', 'CL', '202cb962ac59075b964b07152d234b70', 328297517),
(91, 'lephigiao123', 'bietmoiso1998@gmail.com', 'Vĩnh Long', 'c4ca4238a0b923820dcc509a6f75849b', 328297517),
(93, 'lehainam109891', 'namyeuly10989@gmail.com', 'LaiVung', '202cb962ac59075b964b07152d234b70', 328297517),
(95, 'lehainam2001', 'namyeuly10989@gmail.com', 'LaiVung', '202cb962ac59075b964b07152d234b70', 328297517),
(97, 'lehainam2000111', 'namyeuly10989@gmail.com', 'Cao Lãnh', '00c66aaf5f2c3f49946f15c1ad2ea0d3', 328297517),
(99, 'lehainam', 'lehainam04112001@gmail.com', 'LaiVung', 'e10adc3949ba59abbe56e057f20f883e', 328297517),
(100, 'lehainam100999', 'lehainam04112001@gmail.com', 'LaiVung', '202cb962ac59075b964b07152d234b70', 328297517),
(101, 'lephigiao10989', 'namyeuly10989@gmail.com', 'LaiVung', '202cb962ac59075b964b07152d234b70', 328297517),
(102, 'phamthicamtien', 'lehainam04112001@gmail.com', 'LaiVung', '202cb962ac59075b964b07152d234b70', 328297517);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `in_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`in_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(14, 'Lập Trình', 4),
(16, 'Sách Giáo Khoa', 3),
(22, 'Sách Hướng Dẫn', 4),
(26, 'Tin Học Văn Phòng', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(22, 'Giáo Trình', 3),
(25, 'Kỹ Năng Mềm', 4),
(48, 'Sách Giáo Khoa', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<p>Số điện thoại li&ecirc;n hệ hỗ trợ: 0328297517</p>\r\n\r\n<p>Gmail: lehainam04112001@gmai.com</p>\r\n\r\n<p>Zalo: 0328297517</p>\r\n\r\n<p>Facebook:&nbsp;https://www.facebook.com/lehainam10989&nbsp;</p>\r\n\r\n<p>Địa chỉ: T&acirc;n H&ograve;a, Lai Vung, Đồng Th&aacute;p</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `in_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(250) NOT NULL,
  `giasp` varchar(100) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `in_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`in_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `in_danhmuc`) VALUES
(21, 'ốp lưng ', '1', '250000', 10, '1682409302_python.jpg', 'sdasd', 'áda', 1, 10),
(22, 'sách excel', '3', '122312', 123, '1682497549_excel.jpg', 'ádasd', 'ádas', 1, 10),
(23, 'ốp lưng 3', '6', '122312', 0, '1682414146_excel.jpg', 'ádsad', 'saaaaaaaa', 1, 12),
(26, 'pthonnnnnnn', '113', '75000', 1, '1682478129_python.jpg', 'aaaaaaaa', 'aaaaaaaaa', 1, 13),
(27, 'js', '5', '122312', 1, '1682492139_js.jpg', 'aaaaaaa', 'aaaaaaaa', 1, 12),
(28, 'tin học', '8', '100000', 1, '1682497498_thud.jpg', 'aaaaaaa', 'aaaaaa', 1, 12),
(30, 'Kỹ Thuật Lập Trình C', '5', '135000', 1, '1683015533_2c0c76fdb229960b7273c6bec92011f1.jpg', '<p>Gi&aacute;o Tr&igrave;nh Kỹ Thuật Lập Tr&igrave;nh C Căn Bản V&agrave; N&acirc;ng Cao</p>\r\n', '<p><strong>Gi&aacute;o tr&igrave;nh kỹ thuật lập tr&igrave;nh C căn bản v&agrave; n&acirc;ng cao</strong>&nbsp;được h&igrave;nh th&agrave;nh qua nhiều năm giảng dạy của c&aacute;c t&aacute;c giả. Ng&ocirc;n ngữ lập tr&igrave;nh C l&agrave; một m&ocirc;n học cơ sở trong chương tr&igrave;nh đ&agrave;o tạo kỹ sư, cử nh&acirc;n tin học của nhiều trường đại học. Ở đ&acirc;y sinh vi&ecirc;n được trang bị những kiến thức cơ bản nhất về lập tr&igrave;nh, c&aacute;c kỹ thuật&nbsp; tổ chức dữ liệu v&agrave; lập tr&igrave;nh căn bản với ng&ocirc;n ngữ C.</p>\r\n', 1, 14),
(31, 'TDT', '15', '250000', 10, '1683017435_5fe7a77e41728b41c59b1af04a81b2f5.jpg', 'aaaaaaaa', 'vvvvvvvv', 1, 13),
(32, 'C++', '1', '350000', 1, '1683330947_2c0c76fdb229960b7273c6bec92011f1.jpg', '<p>aaaaaaa</p>\r\n', '<p>aaaaaaaaa</p>\r\n', 1, 13),
(33, 'Arduino Và Thiết Bị Bay', '6', '125000', 1, '1683928143_12d9918e9e364aa505c04d91128cf2bd.jpg', '<p>Arduino V&agrave; Thiết Bị Bay</p>\r\n', '<p>M&aacute;y bay ng&agrave;y nay kh&ocirc;ng ngừng ph&aacute;t triển v&agrave; được n&acirc;ng cấp. Trong 20 năm qua, việc sử dụng m&aacute;y bay kh&ocirc;ng người l&aacute;i trong cả khu vực c&ocirc;ng v&agrave; tư (qu&acirc;n sự) đ&atilde; b&ugrave;ng nổ. C&aacute;c UAV (Unmanned Aerial Vehicles-UAV l&agrave; t&ecirc;n gọi chung chỉ một vật thể bay m&agrave; kh&ocirc;ng c&oacute; người điều khiển tr&ecirc;n đ&oacute;). UAV l&agrave; những vật thể bay c&oacute; khả năng l&aacute;i tự động, c&oacute; thể thực hiện một số nhiệm vụ kh&aacute;c nhau, từ c&aacute;c hoạt động bay đơn giản (như hạ c&aacute;nh v&agrave; cất c&aacute;nh) đến c&aacute;c nhiệm vụ phức tạp hơn. UAV thường được điều khiển bởi một người điều khiển tr&ecirc;n mặt đất, nhưng ch&uacute;ng cũng c&oacute; thể được điều khiển tự động bởi hệ thống được t&iacute;ch hợp tr&ecirc;n ch&iacute;nh ch&uacute;ng. Sự phức tạp tăng l&ecirc;n đến những hoạt động cần thiết trong c&aacute;c kịch bản hoạt động cụ thể. Trong thực tế, việc sử dụng ch&uacute;ng trải rộng từ canh t&aacute;c ch&iacute;nh x&aacute;c đến quản l&yacute; khẩn cấp ở những nơi kh&oacute; can thiệp của con người, nếu kh&ocirc;ng n&oacute;i l&agrave; kh&ocirc;ng thể Kh&ocirc;ng như lĩnh vực qu&acirc;n sự l&agrave; m&ocirc;i trường để UAV ph&aacute;t triển to&agrave;n diện với những thiết bị cảm biến tinh vi ch&iacute;nh x&aacute;c c&ugrave;ng c&aacute;c c&aacute;c phần mềm chuy&ecirc;n d&ugrave;ng nhưng cũng l&agrave; lĩnh vực người thường kh&oacute; tiếp cận nhất. Lĩnh vực n&ocirc;ng nghiệp c&ugrave;ng với lĩnh vực chụp ảnh, giải tr&iacute;&hellip; l&agrave; khu vực m&agrave; những người nghiệp dư c&oacute; thể tiếp cận.</p>\r\n', 1, 14),
(34, 'Sách Lập Trình Với Python', '7', '237000', 1, '1683928324_1bf4b69a7fcaf3a8167331ca61df854f.jpg', '<p>S&aacute;ch Lập Tr&igrave;nh Với Python</p>\r\n', '<p><strong>PYTHON L&Agrave; G&Igrave;?</strong></p>\r\n\r\n<p>Theo chỉ số phổ biến của ng&ocirc;n ngữ lập tr&igrave;nh (PYPL) trong năm 2022, Python hiện xếp đầu ti&ecirc;n tr&ecirc;n bảng xếp hạng tr&ecirc;n cả Java v&agrave; JavaScript. Python l&agrave; ng&ocirc;n ngữ lập tr&igrave;nh mạnh mẽ, hiện đại, dễ học v&agrave; được y&ecirc;u th&iacute;ch nhất tr&ecirc;n thế giới, n&oacute; đặc biệt chiếm ưu thế trong lĩnh vực khoa học m&aacute;y t&iacute;nh như Tr&iacute; tuệ nh&acirc;n tạo (Artificial Intelligence, Học m&aacute;y (Machine Learning), Đồ họa v&agrave; xử l&yacute; ảnh (Digital Image Processing),</p>\r\n\r\n<p><strong>MỤC Đ&Iacute;CH CỦA CUỐN S&Aacute;CH</strong></p>\r\n\r\n<p>- Gi&uacute;p người đọc l&agrave;m chủ những kiến thức cơ bản về lập tr&igrave;nh n&oacute;i chung v&agrave; ng&ocirc;n ngữ lập tr&igrave;nh Python n&oacute;i ri&ecirc;ng một c&aacute;ch nhanh ch&oacute;ng v&agrave; hứng th&uacute; nhất.</p>\r\n\r\n<p>- Gi&uacute;p người đọc c&oacute; c&aacute;i nh&igrave;n tổng quan về một sản phẩm c&ocirc;ng nghệ th&ocirc;ng tin, từ việc h&igrave;nh th&agrave;nh &yacute; tưởng, lập tr&igrave;nh tạo ra n&oacute; đến đ&oacute;ng g&oacute;i v&agrave; đưa n&oacute; đến người d&ugrave;ng.</p>\r\n\r\n<p>- Gi&uacute;p c&aacute;c bạn học sinh, sinh vi&ecirc;n c&oacute; một c&ocirc;ng cụ mạnh mẽ hỗ trợ học tập c&aacute;c m&ocirc;n học kh&aacute;c trong qu&aacute; tr&igrave;nh nghi&ecirc;n cứu, t&iacute;nh to&aacute;n, m&ocirc; phỏng v&agrave; chia sẻ kết quả với cộng đồng.</p>\r\n', 1, 14),
(35, 'Giáo Trình C++ Và Lập Trình HĐT', '8', '115000', 1, '1683928544_7c48a0e134d985f72b84f63727d6a09d.jpg', '<p>Gi&aacute;o Tr&igrave;nh C++ V&agrave; Lập Tr&igrave;nh Hướng Đối Tượng</p>\r\n', '<p><strong>Gi&aacute;o Tr&igrave;nh C++ V&agrave; Lập Tr&igrave;nh Hướng Đối Tượng&nbsp;</strong></p>\r\n\r\n<p>Lập tr&igrave;nh cấu tr&uacute;c l&agrave; phương ph&aacute;p tổ chức, ph&acirc;n chia chương tr&igrave;nh th&agrave;nh c&aacute;c h&agrave;m, thủ tục. Ch&uacute;ng được d&ugrave;ng để xử l&yacute; dữ liệu nhưng lại t&aacute;ch rời c&aacute;c cấu tr&uacute;c dữ liệu.</p>\r\n\r\n<p>Lập tr&igrave;nh hướng đối tượng dựa tr&ecirc;n việc tổ chức chương tr&igrave;nh th&agrave;nh c&aacute;c lớp. Kh&aacute;c với h&agrave;m v&agrave; thủ tục, lớp l&agrave; một đơn vị bao gồm cả dữ liệu v&agrave; c&aacute;c phương thức xử l&yacute;.</p>\r\n\r\n<p>&ldquo;Gi&aacute;o tr&igrave;nh C++ &amp; lập tr&igrave;nh hướng đối tượng&rdquo; tr&igrave;nh b&agrave;y một c&aacute;ch hệ thống c&aacute;c kh&aacute;i niệm của lập tr&igrave;nh hướng đối tượng được c&agrave;i đặt trong C++ như lớp, đối tượng, sự thừa kế, t&iacute;nh tương ứng bội v&agrave; c&aacute;c khả năng mới trong x&acirc;y dựng, sử dụng h&agrave;m như đối tham chiếu, đối mặc định, h&agrave;m tr&ugrave;ng t&ecirc;n, h&agrave;m to&aacute;n tử. &ldquo;Gi&aacute;o tr&igrave;nh C++ &amp; lập tr&igrave;nh hướng đối tượng&rdquo; gồm 13 chương v&agrave; 5 phụ lục được tr&igrave;nh b&agrave;y kh&aacute; khoa học. Ngo&agrave;i ra, cuốn s&aacute;ch c&ograve;n đề cập đến một số vấn đề c&ograve;n &iacute;t được biết đến như c&aacute;ch x&acirc;y dựng h&agrave;m với số đối bất định trong C cũng sẽ được giới thiệu .</p>\r\n', 1, 14),
(37, 'Sách Lập trình ứng dụng di động Inventor', '10', '237000', 1, '1683928761_4e7bfeac4e920181fc018215250e59eb.jpg', '<p>S&aacute;ch Lập tr&igrave;nh ứng dụng di động với App Inventor</p>\r\n', '<h2>App Inventor l&agrave; g&igrave;?</h2>\r\n\r\n<p>App Inventor l&agrave; một nền tảng web m&atilde; nguồn mở được cung cấp ban đầu bởi Google, năm 2012 Google chuyển giao cho Trung t&acirc;m Nghi&ecirc;n cứu Di động của Viện C&ocirc;ng nghệ Massachusetts (MIT) quản l&yacute; v&agrave; ph&aacute;t triển (http://appinventor.mit.edu).<br />\r\nM&ocirc;i trường lập tr&igrave;nh App Inventor c&oacute; c&aacute;ch tiếp cận tương tự như Scratch, c&acirc;u lệnh đều l&agrave; những khối lệnh trực quan được k&eacute;o thả để tạo ra c&aacute;c ứng dụng từ đơn giản tới phức tạp. C&aacute;c ứng dụng c&oacute; thể chạy trực tiếp tr&ecirc;n c&aacute;c thiết bị di động như điện thoại v&agrave; m&aacute;y t&iacute;nh bảng (phi&ecirc;n bản hiện tại hỗ trợ hệ điều h&agrave;nh Android, hệ điều h&agrave;nh IOS đang được ph&aacute;t triển).<br />\r\nVới Scratch, người học tập trung v&agrave;o việc l&agrave;m quen, hiểu ng&ocirc;n ngữ lập tr&igrave;nh l&agrave; g&igrave;, r&egrave;n luyện tư duy logic. App Inventor l&agrave; một bước ph&aacute;t triển tiếp theo, kế thừa ho&agrave;n to&agrave;n những ưu điểm của Scratch, ngo&agrave;i ra tập trung nhiều hơn v&agrave;o khả năng hiện thực h&oacute;a c&aacute;c &yacute; tưởng v&agrave; biến những &yacute; tưởng đ&oacute; trực tiếp th&agrave;nh c&aacute;c sản phẩm c&ocirc;ng nghệ, sử dụng trong cuộc sống h&agrave;ng ng&agrave;y tr&ecirc;n c&aacute;c thiết bị di động.<br />\r\nQua đ&oacute; người d&ugrave;ng kh&ocirc;ng cần qu&aacute; am hiểu về kiến thức lập tr&igrave;nh vẫn c&oacute; thể tạo ra những ứng dụng đơn giản cho ri&ecirc;ng m&igrave;nh m&agrave; kh&ocirc;ng cần phải nhớ cấu tr&uacute;c từng c&acirc;u lệnh. Cũng ch&iacute;nh v&igrave; vậy m&agrave; c&aacute;c bạn trong độ tuổi từ 11 trở l&ecirc;n đều c&oacute; thể học v&agrave; tiếp x&uacute;c với app inventor để tạo ra c&aacute;c ứng dụng cho ri&ecirc;ng m&igrave;nh.</p>\r\n', 1, 14),
(38, 'Bài Tập Lập Trình Cơ Bản Python', '11', '90000', 1, '1683928885_c5df1de5c586a032357fa48d7229c390.jpg', '<p>B&agrave;i Tập Lập Tr&igrave;nh Cơ Bản Với Ng&ocirc;n Ngữ Python</p>\r\n', '<p>Cung cấp c&aacute;c dạng b&agrave;i tập kh&aacute;c nhau để bạn thực h&agrave;nh khi học lập tr&igrave;nh Python.</p>\r\n\r\n<p>Gi&aacute; sản phẩm tr&ecirc;n Tiki đ&atilde; bao gồm thuế theo luật hiện h&agrave;nh. B&ecirc;n cạnh đ&oacute;, tuỳ v&agrave;o loại sản phẩm, h&igrave;nh thức v&agrave; địa chỉ giao h&agrave;ng m&agrave; c&oacute; thể ph&aacute;t sinh th&ecirc;m chi ph&iacute; kh&aacute;c như ph&iacute; vận chuyển, phụ ph&iacute; h&agrave;ng cồng kềnh, thuế nhập khẩu (đối với đơn h&agrave;ng giao từ nước ngo&agrave;i c&oacute; gi&aacute; trị tr&ecirc;n 1 triệu đồng).....</p>\r\n', 1, 14),
(39, 'Lập Trình Windows Form Với C#', '12', '117000', 1, '1683929041_f0442aece9c5dc78a1fd15f9e3f4f55e.jpg', '<p>Lập Tr&igrave;nh Windows Form V&agrave; Web Form Với C#</p>\r\n', '<p><strong>Lập Tr&igrave;nh Windows Form V&agrave; Web Form Với C#</strong><br />\r\nS&aacute;ch gồm 3 phần:<br />\r\nPhần 1: Ứng dụng Windows form<br />\r\nPhần 2: X&acirc;y dụng ứng dụng quản l&yacute; b&aacute;n h&agrave;ng<br />\r\nPhần 3: X&acirc;y dụng ứng dụng quản l&yacute; tuyển sinh</p>\r\n', 1, 14),
(40, 'Giáo Trình Kỹ Thuật Lập Trình C Căn Bản', '13', '131000', 1, '1683929176_0c25d51548eb9e7f9a0d905b636deb3e.png', '<p>Gi&aacute;o Tr&igrave;nh Kỹ Thuật Lập Tr&igrave;nh C Căn Bản &amp; N&acirc;ng Cao (T&aacute;i Bản 2023)</p>\r\n', '<p>Gi&aacute;o tr&igrave;nh kỹ thuật lập tr&igrave;nh C căn bản v&agrave; n&acirc;ng cao được h&igrave;nh th&agrave;nh qua nhiều năm giảng dạy của c&aacute;c t&aacute;c giả. Ng&ocirc;n ngữ lập tr&igrave;nh C l&agrave; một m&ocirc;n học cơ sở trong chương tr&igrave;nh đ&agrave;o tạo kỹ sư, cử nh&acirc;n tin học của nhiều trường đại học. Ở đ&acirc;y sinh vi&ecirc;n được trang bị những kiến thức cơ bản nhất về lập tr&igrave;nh, c&aacute;c kỹ thuật tổ chức dữ liệu v&agrave; lập tr&igrave;nh căn bản với ng&ocirc;n ngữ C.</p>\r\n\r\n<p>Để đ&aacute;p ứng nhu cầu học tập ng&ocirc;n ngữ lập tr&igrave;nh C của sinh vi&ecirc;n cũng như nhu cầu về t&agrave;i liệu cho mọi người trong nhiều ng&agrave;nh khoa học v&agrave; kỹ thuật cần nghi&ecirc;n cứu C để giải quyết c&aacute;c b&agrave;i to&aacute;n của m&igrave;nh, t&aacute;c giả bi&ecirc;n soạn cuốn s&aacute;ch n&agrave;y. Nội dung cuốn s&aacute;ch l&agrave; tập hợp một c&aacute;ch c&oacute; chọn lọc c&aacute;c b&agrave;i giảng của c&aacute;c t&aacute;c giả.</p>\r\n', 1, 14),
(41, 'Arduino Và Lập Trình IoT', '14', '126000', 1, '1683929302_824e62ff503d162fcf4b750b3b27e8f5.jpg', '<p>Arduino V&agrave; Lập Tr&igrave;nh IoT</p>\r\n', '<p>ARDUINO v&agrave; lập tr&igrave;nh ToT c&oacute; 3 phần với 10 chương.<br />\r\nPhần 1: Giới thiệu<br />\r\nChương 1: Tổng quan về hệ thống nh&uacute;ng, về IoT, về Arduino, Arduino v&agrave; Raspberry, Serial monitor, c&aacute;c link kiện thực h&agrave;nh.<br />\r\nPhần 2: ARDUINO v&agrave; Cảm biến<br />\r\nChương 2: Tổng quan về cảm biến<br />\r\nChương 3: Thực h&agrave;nh với Qrduino<br />\r\n1) Đọc gi&aacute; trị điện &aacute;p ng&otilde; v&agrave;o Analog<br />\r\n2) Điều khiển tốc độ s&aacute;ng tắt với biến trở<br />\r\n3) Lập tr&igrave;nh với ng&otilde; v&agrave;o (Input)<br />\r\n4) Mạch sử dụng hai n&uacute;t nhấn v&agrave; một Led<br />\r\n5) Mạch sử dụng chiết &aacute;p<br />\r\n6) Điều khiển Led RGB<br />\r\n7) Điều khiển Led cầu v&ograve;ng<br />\r\n8) Điều khiển Led s&aacute;ng dạng thanh<br />\r\nChương 4: Arduino v&agrave; cảm biến<br />\r\nArduino v&agrave; cảm biến Nhiệt độ-Độ ẩm. Cảm biến tiệm cận. Arduino v&agrave; cảm biến hồng ngoại. Cảm biến quang. Cảm biến kh&oacute;i-đầu d&ograve; kh&oacute;i. Arduino v&agrave; cảm biến dịch chuyển PIR. Đo nhiệt độ,độ ẩm từ xa với bo thu ph&aacute;t cao tần .<br />\r\nPhần 3: Lập tr&igrave;nh IOT với ARDUINO V&Agrave; ESP8266<br />\r\nChương 5: Truyền th&ocirc;ng c&oacute; d&acirc;y v&agrave; kh&ocirc;ng d&acirc;y<br />\r\nChương 6: Cấu h&igrave;nh cho ESP8266<br />\r\nChương 7: C&aacute;c b&agrave;i tập cơ bản kh&aacute;c của ESP8266<br />\r\nChương 8: Một số t&iacute;nh năng kh&aacute;c của ESP8266<br />\r\nChương 9: Sử dụng Micro Python trong ESP8266<br />\r\nChương 10: Lập tr&igrave;nh với GPS, GSM v&agrave; GPRS<br />\r\nHệ thống định vị to&agrave;n cầu (GPS). Bảng th&ocirc;ng b&aacute;o kh&ocirc;ng d&acirc;y sử dụng GSM v&agrave; Arduino. Gủi dữ liệu qua GPRS Sim800I đến Thingspeak. Khắc phục sự cố khi sử dụng Sim800I. Lập tr&igrave;nh GPS với STM32</p>\r\n', 1, 14),
(42, 'Sách Lập Trình Với C#', '15', '100000', 1, '1683929464_2752f967bcf7283d9b36c4b8718c7bfe.jpg', '<p>Lập Tr&igrave;nh Với C#</p>\r\n', '<p>Lập Tr&igrave;nh Với C#<br />\r\n<br />\r\nHướng dẫn người học từng bước lập tr&igrave;nh với C#. X&acirc;y dựng ứng dụng tr&ecirc;n Window Form.<br />\r\nX&acirc;y dựng ứng dụng, tạo hai trang web quản l&yacute; b&aacute;n h&agrave;ng v&agrave; quản l&yacute; tuyển sinh với c&aacute;c hướng dẫn từng bước l&agrave;m cơ sở cho việc thiết kế c&aacute;c trang web phức tạp hơn.</p>\r\n', 1, 14),
(43, 'Tin Học Ứng Dụng Lập Trình VBA Trong Excel', '17', '136000', 1, '1683929588_1a4684c1535b6b2ac3d561cf6137022e.jpg', '<p>Tin Học Ứng Dụng Lập Tr&igrave;nh VBA Trong Excel</p>\r\n', '<p>Excel l&agrave; một chương tr&igrave;nh mạnh v&agrave; linh hoạt, bạn c&oacute; thể sử dụng Excel để nhập tất cả c&aacute;c loại dữ liệu v&agrave; thực hiện c&aacute;c t&iacute;nh to&aacute;n t&agrave;i ch&iacute;nh, to&aacute;n học hoặc thống k&ecirc;. Bạn c&oacute; thể sử dụng Excel để l&agrave;m cho bất kỳ loại dữ liệu n&agrave;o được ghi lại hợp l&yacute; v&agrave; hiệu quả hơn. Đối tượng ch&iacute;nh để học c&aacute;c chuy&ecirc;n đề n&agrave;y l&agrave;:</p>\r\n\r\n<p>Sinh vi&ecirc;n mới ra trường đang gấp r&uacute;t lấp đầy khoảng trống Excel, đặc biệt muốn tạo ấn tượng mạnh với nh&agrave; tuyển dụng bằng kỹ năng lập tr&igrave;nh VBA tr&ecirc;n Excel.</p>\r\n\r\n<p>Người l&agrave;m việc trong c&aacute;c lĩnh vực T&agrave;i Ch&iacute;nh - Ng&acirc;n H&agrave;ng, Nh&acirc;n Sự, Kế To&aacute;n, X&acirc;y Dựng, Dự B&aacute; thường xuy&ecirc;n gặp phải vấn đề với số liệu bảng biểu: Dữ liệu Excel ph&acirc;n mảng ở nhiều file, nhiều định dạng kh&aacute;c nhau, kh&oacute; khăn trong việc tổng hợp v&agrave; l&agrave;m b&aacute;o c&aacute;o nay muốn giỏi VBA để tự tạo c&aacute;c ứng dụng quản l&yacute; phục vụ trong c&ocirc;ng việc nhưng lại chưa th&agrave;nh thạo Excel.</p>\r\n', 1, 15),
(44, 'Tin Học Ứng Dụng - Phân Tích Dữ Liệu Và Lập Mô Hình Kinh Doanh', '18', '140000', 1, '1683929685_9a92f06dcb89e65a99899c4f98270ec8.jpg', '<p>Tin Học Ứng Dụng - Ph&acirc;n T&iacute;ch Dữ Liệu V&agrave; Lập M&ocirc; H&igrave;nh Kinh Doanh</p>\r\n', '<p>Tin Học Ứng Dụng - Ph&acirc;n T&iacute;ch Dữ Liệu V&agrave; Lập M&ocirc; H&igrave;nh Kinh Doanh Trong Excel</p>\r\n', 1, 15),
(45, 'Tin Học Văn Phòng - Tự Học Nhanh Microsoft Office', '20', '170000', 1, '1683929875_93059fefd323ffcdac5840e404effaa2.jpg', '<p>Tin Học Văn Ph&ograve;ng - Tự Học Nhanh Microsoft Office</p>\r\n', '<p>Ch&uacute;c mừng bạn đến với tủ s&aacute;ch STK qua bộ s&aacute;ch &ldquo;HƯỚNG DẪN SỬ DỤNG MICROSOFT OFFICE&rdquo;, một chương tr&igrave;nh đầy quyền năng trong t&iacute;nh to&aacute;n bảng t&iacute;nh. Word v&agrave; Excel l&agrave; hai chương tr&igrave;nh thuộc bộ Microsoft Office đ&atilde; v&agrave; đang ứng dụng rộng r&atilde;i trong nhiều lĩnh vực. Hiện Word v&agrave; Excel rất phổ biến, hầu như c&aacute;c m&aacute;y t&iacute;nh mới lắp r&aacute;p đều c&oacute; y&ecirc;u cầu sử dụng Word v&agrave; Excel. Với hai chương tr&igrave;nh n&agrave;y, bạn c&oacute; trong tay c&aacute;c c&ocirc;ng cụ v&agrave; lệnh để tạo nhanh c&aacute;c file văn bản c&oacute; bố cục gọn, đẹp v&agrave; những bảng t&iacute;nh kh&aacute;c nhau, tạo những cơ sở dữ liệu cho từng thời kỳ, lập n&ecirc;n biểu đồ, dự đo&aacute;n xu thế ph&aacute;t triển, từ đ&oacute; đề ra kế hoạch ph&aacute;t triển. Tuy rất phổ cập nhưng để c&oacute; được t&agrave;i liệu tự học kiểu &ldquo;Xem tới đ&acirc;u thực h&agrave;nh tới đ&oacute;&rdquo; gi&uacute;p cho người học c&oacute; thể tự tham khảo v&agrave; thực h&agrave;nh ứng dụng Word v&agrave; Excel trong thực tế th&igrave; kh&ocirc;ng c&oacute; nhiều</p>\r\n', 1, 15),
(46, 'Tin Học Cho Mọi Người - Tự Học Nhanh Excel Bằng Hình Ảnh', '21', '121000', 1, '1683930014_3084a177334355f70001bd2e2438ac80.jpg', '<p>Tin Học Cho Mọi Người - Tự Học Nhanh Excel Bằng H&igrave;nh Ảnh</p>\r\n', '<p>Bạn đ&atilde; biết Excel cơ bản qua c&aacute;c c&ocirc;ng cụ v&agrave; lệnh trong &ldquo;<strong>GI&Aacute;O TR&Igrave;NH THỰC H&Agrave;NH EXCEL</strong>&rdquo;. B&acirc;y giờ bạn muốn đi xa hơn, với c&aacute;c ph&iacute;m tắt, thủ thuật gi&uacute;p cho bạn l&agrave;m việc th&ocirc;ng minh, nhanh hơn. Bạn sẽ học dễ d&agrave;ng hơn khi ai đ&oacute; cho bạn thấy l&agrave;m thế n&agrave;o trong Excel, đ&acirc;y l&agrave; cuốn s&aacute;ch d&agrave;nh cho bạn. S&aacute;ch l&agrave; t&agrave;i liệu kh&ocirc;ng thể thiếu cho c&aacute;c học sinh, sinh vi&ecirc;n, c&aacute;c nh&acirc;n vi&ecirc;n văn ph&ograve;ng v&agrave; nhiều hơn nữa khai th&aacute;c v&agrave; sử dụng hiệu quả Excel trong c&ocirc;ng việc.</p>\r\n\r\n<p>Với c&aacute;ch tr&igrave;nh b&agrave;y chủ yếu l&agrave; thực h&agrave;nh kh&ocirc;ng tr&igrave;nh b&agrave;y nhiều về l&yacute; thuyết n&ecirc;n c&aacute;c bạn cần tham khảo th&ecirc;m c&aacute;c t&agrave;i liệu, phim hướng dẫn sử dụng Excel kh&aacute;c để gi&uacute;p bạn đọc c&oacute; th&ecirc;m &yacute; tưởng, dễ d&agrave;ng thực h&agrave;nh c&aacute;c b&agrave;i tập kh&oacute; hơn từ đ&oacute; c&oacute; thể tự giải quyết, thiết kế bảng t&iacute;nh cho ri&ecirc;ng cho m&igrave;nh đ&aacute;p ứng y&ecirc;u cầu c&ocirc;ng việc</p>\r\n', 1, 15),
(47, 'Sách Thành thạo Soạn thảo Văn bản Word', '22', '156000', 1, '1683930138_f302cd81a0f52cbf702f0f5e4df65974.png', '<p>S&aacute;ch Th&agrave;nh thạo Soạn thảo Văn bản Word</p>\r\n', '<p>Tiếp nối cuốn s&aacute;ch&nbsp;<strong>Th&agrave;nh thạo c&aacute;c h&agrave;m Excel phổ biến nhất</strong>, cuốn s&aacute;ch&nbsp;<strong>Th&agrave;nh thạo Soạn thảo Văn bản Word: Mẹo v&agrave; c&aacute;c lỗi thường gặp&nbsp;</strong>ra đời với hy vọng sẽ trở th&agrave;nh trợ thủ đắc lực v&agrave; l&agrave; cuốn cẩm nang giải quyết c&aacute;c vấn đề m&agrave; bạn đọc c&ograve;n vướng mắc trong qu&aacute; tr&igrave;nh soạn thảo Word.&nbsp;Cuốn s&aacute;ch l&agrave; sản phẩm mới nằm trong&nbsp;<strong>Bộ sản phẩm Th&agrave;nh thạo tin học văn ph&ograve;ng</strong>&nbsp;của Tinhocmos. Sản phẩm sẽ tập trung ph&acirc;n t&iacute;ch c&aacute;c mẹo v&agrave; lỗi thường gặp khi soạn thảo văn bản Word gi&uacute;p người đọc dễ d&agrave;ng thao t&aacute;c v&agrave; l&agrave;m việc hiệu quả hơn tr&ecirc;n Microsoft Word.&nbsp;</p>\r\n\r\n<p><strong>VẤN ĐỀ BẠN ĐỌC THƯỜNG XUY&Ecirc;N GẶP PHẢI</strong></p>\r\n\r\n<p>Trong qu&aacute; tr&igrave;nh đ&agrave;o tạo, trung t&acirc;m nhận thấy phần lớn học vi&ecirc;n mắc phải những lỗi sau đ&acirc;y:</p>\r\n\r\n<ul>\r\n	<li>Thiếu c&aacute;c bước<strong>&nbsp;kiểm tra v&agrave; thiết lập</strong>&nbsp;đầu ti&ecirc;n khi sử dụng Word như: khổ giấy, hướng giấy, đơn vị đo, khoảng c&aacute;ch lề, ph&ocirc;ng chữ, bộ g&otilde; Tiếng Việt&hellip;</li>\r\n	<li><strong>Tổng hợp th&ocirc;ng tin</strong>&nbsp;từ nhiều nguồn nhưng&nbsp;<strong>kh&ocirc;ng thể đồng nhất về một định dạng</strong>&nbsp;v&igrave; kh&ocirc;ng nắm r&otilde; c&aacute;c bước t&igrave;m nguy&ecirc;n nh&acirc;n để giải quyết vấn đề</li>\r\n	<li>Chưa tận dụng được&nbsp;<strong>sức mạnh tuyệt vời của Microsoft Word</strong>&nbsp;để tự động kiểm tra, tra so&aacute;t lỗi, cập nhật số trang, mục lục, ti&ecirc;u đề, ch&uacute; th&iacute;ch,</li>\r\n</ul>\r\n\r\n<p>Với mong muốn gi&uacute;p độc giả Việt Nam đang v&agrave; sẽ thực hiện c&ocirc;ng việc soạn thảo bằng Microsoft Word c&oacute; một phương ph&aacute;p đ&uacute;ng, một tấm bản đồ r&otilde; r&agrave;ng để giải quyết c&aacute;c vấn đề trong qu&aacute; tr&igrave;nh l&agrave;m việc với ứng dụng. V&igrave; vậy, với&nbsp;cuốn s&aacute;ch&nbsp;<strong>Th&agrave;nh thạo Soạn thảo Văn bản Word: Mẹo v&agrave; c&aacute;c lỗi thường gặp</strong>, Tinhocmos tập trung giải quyết c&aacute;c vấn đề sau đ&acirc;y:</p>\r\n\r\n<ul>\r\n	<li>Biết c&aacute;ch nhận biết c&aacute;c&nbsp;<strong>l&ocirc;̃i sai thường gặp</strong>&nbsp;khi soạn thảo văn bản v&agrave;&nbsp;<strong>c&aacute;ch sửa</strong>&nbsp;lỗi sai đ&oacute;</li>\r\n	<li>Nắm được c&aacute;c&nbsp;<strong>ti&ecirc;u chuẩn soạn thảo tiểu luận, luận văn, đơn từ h&agrave;nh ch&iacute;nh</strong></li>\r\n	<li>Nắm được c&aacute;c&nbsp;<strong>mẹo soạn thảo</strong>&nbsp;hữu &iacute;ch trong Microsoft Word</li>\r\n</ul>\r\n', 1, 15),
(48, 'Tự Học Nhanh Microsoft Office Dành Cho Người Bắt Đầu', '23', '170000', 1, '1683930561_ee8ac31ecdfa53782957a38bbb39d83a.jpg', '<p>Tự Học Nhanh Microsoft Office- D&agrave;nh Cho Người Bắt Đầu</p>\r\n', '<p><strong>PHẦN 1: HƯỚNG DẪN SỬ DỤNG MICROSOFT WORD</strong></p>\r\n\r\n<ul>\r\n	<li>B&agrave;i tập 1: Thiết lập định dạng văn bản.</li>\r\n	<li>B&agrave;i tập 2: Những chức năng hiệu chỉnh.</li>\r\n	<li>B&agrave;i tập 3: Tạo Textbox-Table v&agrave; Chart.</li>\r\n	<li>B&agrave;i tập 4: T&igrave;m kiếm - Thay thế - Kiểm tra lỗi - Mail Merge.</li>\r\n	<li>B&agrave;i tập 5: Hiển thị - In.</li>\r\n	<li>B&agrave;i tập 6: Những lỗi thường gặp khi soạn thảo văn bản.</li>\r\n	<li>B&agrave;i tập 7: Mẹo hay trong Word.</li>\r\n</ul>\r\n\r\n<p><strong>PHẦN 2: HƯỚNG DẪN SỬ DỤNG MICROSOFT POWERPOINT</strong></p>\r\n\r\n<ul>\r\n	<li>B&agrave;i tập 8: Thực h&agrave;nh với Powerpoint.\r\n	<ul>\r\n		<li>L&agrave;m quen với PowerPoint.</li>\r\n		<li>Hướng dẫn thiết kế b&agrave;i giảng h&oacute;a học.</li>\r\n		<li>Ứng dụng thiết kế b&agrave;i giảng của PowerPoint.</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>PHẦN 3: HƯỚNG DẪN SỬ DỤNG MICROSOFT EXCEL</strong></p>\r\n\r\n<ul>\r\n	<li>B&agrave;i tập 9: Tổng quan về Excel.</li>\r\n	<li>B&agrave;i tập 10: H&agrave;m trong Excel.</li>\r\n	<li>B&agrave;i tập 11: Đồ thị trong Excel.</li>\r\n	<li>B&agrave;i tập 12: B&agrave;i tập Excel.</li>\r\n</ul>\r\n\r\n<p><strong>PHẦN 4: HƯỚNG DẪN SỬ DỤNG MICROSOFT VISIO</strong></p>\r\n\r\n<ul>\r\n	<li>B&agrave;i tập 13: L&agrave;m quen với Visio.</li>\r\n	<li>B&agrave;i tập 14: Vẽ m&ocirc; h&igrave;nh tổ chức c&ocirc;ng ty.</li>\r\n	<li>B&agrave;i tập 15: Vẽ sơ đồ quy tr&igrave;nh sản xuất.</li>\r\n	<li>B&agrave;i tập 16: Vẽ sơ đồ quy tr&igrave;nh sản xuất c&ocirc;ng ty.</li>\r\n</ul>\r\n\r\n<p><strong>PHẦN 5: LẬP TR&Igrave;NH VBA</strong></p>\r\n\r\n<ul>\r\n	<li>Lập tr&igrave;nh VBA với PowerPoint.</li>\r\n	<li>Lập tr&igrave;nh VBA với Excel.</li>\r\n</ul>\r\n', 1, 15),
(49, 'Word Ứng Dụng Văn Phòng - Từ Cơ Bản Đến Nâng Cao', '24', '180000', 1, '1683930694_27c82e8405d2dd6f215aaa14765d21c4.jpg', '<p>Word Ứng Dụng Văn Ph&ograve;ng - Từ Cơ Bản Đến N&acirc;ng Cao</p>\r\n', '<p><strong>Word Ứng Dụng Văn Ph&ograve;ng - Từ Cơ Bản Đến N&acirc;ng Cao (K&egrave;m Bao Thư T&agrave;i Khoản Xem Video)</strong></p>\r\n\r\n<p>Th&agrave;nh thạo tin học văn ph&ograve;ng trong đ&oacute; giỏi soạn thảo văn bản Word l&agrave; một lợi thế rất lớn khi đi l&agrave;m. Trong hơn 10 năm triển khai đ&agrave;o tạo cho h&agrave;ng ngh&igrave;n học vi&ecirc;n từ sinh vi&ecirc;n đến nh&acirc;n vi&ecirc;n văn ph&ograve;ng c&aacute;c c&ocirc;ng ty tập đo&agrave;n, t&ocirc;i đ&atilde; đ&uacute;c kết lại c&aacute;c kiến thức đang được ứng dụng trong thực tế để cho ra cuốn s&aacute;ch Word ứng dụng văn ph&ograve;ng từ cơ bản đến n&acirc;ng cao.</p>\r\n\r\n<p>Đặc biệt cuốn s&aacute;ch sẽ c&oacute; k&egrave;m theo t&agrave;i liệu b&agrave;i tập thực h&agrave;nh để bạn c&oacute; thể tự học theo lộ tr&igrave;nh của cuốn s&aacute;ch gi&uacute;p đạt hiệu quả v&agrave; trải nghiệm tốt hơn khi tự học tại nh&agrave;.</p>\r\n\r\n<p>Với kh&aacute;t vọng mong muốn gi&uacute;p cho h&agrave;ng triệu người Việt Nam c&oacute; thể dễ d&agrave;ng tiếp cận c&aacute;c kiến thức hữu &iacute;ch, n&acirc;ng cao năng lực sử dụng Word của bản th&acirc;n từ đ&oacute; gi&uacute;p cho c&ocirc;ng việc tốt l&ecirc;n v&agrave; cơ hội ph&aacute;t triển thăng tiến trong sự nghiệp.</p>\r\n', 1, 15),
(50, 'Excel Ứng Dụng Văn Phòng - Từ Cơ Bản Đến Nâng Cao', '26', '200000', 1, '1683930765_5934010460d16bc544fd63eac93dbff5.jpg', '<p>Excel Ứng Dụng Văn Ph&ograve;ng - Từ Cơ Bản Đến N&acirc;ng Cao</p>\r\n', '<p><strong>Excel Ứng Dụng Văn Ph&ograve;ng - Từ Cơ Bản Đến N&acirc;ng Cao (K&egrave;m Bao Thư T&agrave;i Khoản Xem Video)</strong></p>\r\n\r\n<p>Th&agrave;nh thạo tin học văn ph&ograve;ng trong đ&oacute; giỏi Excel l&agrave; một lợi thế rất lớn khi đi l&agrave;m. Trong hơn 10 năm triển khai đ&agrave;o tạo cho h&agrave;ng ngh&igrave;n học vi&ecirc;n từ sinh vi&ecirc;n đến nh&acirc;n vi&ecirc;n văn ph&ograve;ng c&aacute;c c&ocirc;ng ty tập đo&agrave;n, t&ocirc;i đ&atilde; đ&uacute;c kết lại c&aacute;c kiến thức đang được ứng dụng trong thực tế để cho ra cuốn s&aacute;ch Excel ứng dụng văn ph&ograve;ng từ cơ bản đến n&acirc;ng cao.</p>\r\n\r\n<p>Đặc biệt cuốn s&aacute;ch sẽ c&oacute; k&egrave;m theo t&agrave;i liệu b&agrave;i tập thực h&agrave;nh để bạn c&oacute; thể tự học theo lộ tr&igrave;nh của cuốn s&aacute;ch gi&uacute;p đạt hiệu quả v&agrave; trải nghiệm tốt hơn khi tự học tại nh&agrave;.</p>\r\n\r\n<p>Với kh&aacute;t vọng mong muốn gi&uacute;p cho h&agrave;ng triệu người Việt Nam c&oacute; thể dễ d&agrave;ng tiếp cận c&aacute;c kiến thức hữu &iacute;ch, n&acirc;ng cao năng lực sử dụng Excel của bản th&acirc;n từ đ&oacute; gi&uacute;p cho c&ocirc;ng việc tốt l&ecirc;n v&agrave; cơ hội ph&aacute;t triển thăng tiến trong sự nghiệp.</p>\r\n', 1, 15),
(51, '150 Thủ Thuật Excel Ứng Dụng Văn Phòng Kèm Theo Khóa Học Online', '27', '228000', 1, '1683930883_10e5238318254aa14a15879bf2456b87.png', '<p>150 Thủ Thuật Excel Ứng Dụng Văn Ph&ograve;ng K&egrave;m Theo Kh&oacute;a Học Online</p>\r\n', '<p>- MỘT SỐ ĐIỀU NỔI BẬT CỦA SẢN PHẨM<br />\r\n+ Phương ph&aacute;p học tập đ&uacute;ng chuẩn c&oacute; hệ thống được đ&uacute;c kết từ giảng vi&ecirc;n c&oacute; kinh nghiệm trong lĩnh vực đ&agrave;o tạo TIN HỌC VĂN PH&Ograve;NG<br />\r\n+ Bộ S&Aacute;CH được in m&agrave;u dễ nh&igrave;n c&ugrave;ng chất lượng giấy in cao cấp gi&uacute;p người đọc cảm gi&aacute;c thoải m&aacute;i, dễ d&agrave;ng trong việc học<br />\r\n+ Cuốn S&Aacute;CH THỦ THUẬT n&agrave;y c&oacute; thể n&oacute;i như l&agrave; &quot;Một cuốn từ điển tra cứu &quot; khi bạn gặp rắc rối trong qu&aacute; tr&igrave;nh l&agrave;m việc với Microsoft EXCEL<br />\r\n+ Đội ngũ hỗ trợ của DAOTAOTINHOCVN đồng h&agrave;nh c&ugrave;ng bạn chinh phục cuốn S&Aacute;CH THỦ THUẬT n&agrave;y.<br />\r\n- C&ocirc;ng ty ph&aacute;t h&agrave;nh: DAOTAOTINHOCVN<br />\r\n- T&aacute;c giả: Nguyễn Quang Vinh</p>\r\n', 1, 15),
(52, 'Sách Word Từ Cơ Bản Đến Nâng Cao Kèm Khóa Học Online', '28', '198000', 1, '1683931026_27c82e8405d2dd6f215aaa14765d21c4.jpg', '<p>S&aacute;ch Word Đ&Agrave;O TẠO TIN HỌC Ứng Dụng Văn Ph&ograve;ng Từ Cơ Bản Đến N&acirc;ng Cao K&egrave;m Theo Kh&oacute;a Học Online</p>\r\n', '<p>- Word Ứng Dụng Văn Ph&ograve;ng Từ Cơ Bản Đến N&acirc;ng Cao l&agrave; cuốn s&aacute;ch tuyệt vời để gi&uacute;p bạn giải quyết c&aacute;c vấn đề thường gặp phải trong qu&aacute; tr&igrave;nh sử dụng Word từ đơn giản đến phức tạp.<br />\r\n+ Đội ngũ hỗ trợ của DAOTAOTINHOCVN đồng h&agrave;nh c&ugrave;ng bạn chinh phục cuốn S&Aacute;CH TIN HỌC n&agrave;y</p>\r\n', 1, 15),
(53, 'Tin Học lớp 3 - Cánh Diều', '29', '14000', 1, '1683931176_3f5893dd22b21b6bd7f8f54543c51bd1.jpg', '<p>Tin Học lớp 3 - C&aacute;nh Diều</p>\r\n', '<p>SGK Tin Học lớp 3<br />\r\n- Với mong muốn đồng h&agrave;nh c&ugrave;ng c&aacute;c bạn học sinh tr&ecirc;n con đường ph&aacute;t triển tri thức, cam kết ph&acirc;n phối sản phẩm mới 100%,<br />\r\nđồng thời lu&ocirc;n c&oacute; ưu đ&atilde;i, qu&agrave; tặng hấp dẫn khi mua h&agrave;ng tại gian h&agrave;ng ch&uacute;ng t&ocirc;i.<br />\r\n- Th&ocirc;ng tin sản phẩm:</p>\r\n\r\n<p>Th&ocirc;ng tin sản phẩm:</p>\r\n\r\n<p>- T&aacute;c Giả: Nhiều t&aacute;c giả</p>\r\n\r\n<p>- Số trang: 75</p>\r\n\r\n<p>- Năm xuất bản: 2022</p>\r\n\r\n<p>- Khổ s&aacute;ch: 19 x 26.5 cm</p>\r\n\r\n<p>- H&igrave;nh thức: b&igrave;a mềm</p>\r\n\r\n<p>- NXB: NXB Đại học Sư Phạm</p>\r\n', 1, 16),
(55, 'Bài Tập Tin Học lớp 3 - Cánh Diều', '31', '19000', 1, '1683931511_02a866be7ed75bb326bf230030502097.jpg', '<p>B&agrave;i Tập Tin Học lớp 3 - C&aacute;nh Diều</p>\r\n', '<p>B&agrave;i Tập Tin Học lớp 3<br />\r\n- Với mong muốn đồng h&agrave;nh c&ugrave;ng c&aacute;c bạn học sinh tr&ecirc;n con đường ph&aacute;t triển tri thức, cam kết ph&acirc;n phối sản phẩm mới 100%,<br />\r\nđồng thời lu&ocirc;n c&oacute; ưu đ&atilde;i, qu&agrave; tặng hấp dẫn khi mua h&agrave;ng tại gian h&agrave;ng ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>Th&ocirc;ng tin sản phẩm:</p>\r\n\r\n<p>- T&aacute;c Giả: Nhiều t&aacute;c giả</p>\r\n\r\n<p>- Số trang: 93</p>\r\n\r\n<p>- Năm xuất bản: 2022</p>\r\n\r\n<p>- Khổ s&aacute;ch: 17 x 24 cm</p>\r\n\r\n<p>- H&igrave;nh thức: b&igrave;a mềm</p>\r\n\r\n<p>- NXB: NXB Đại học Sư Phạm</p>\r\n', 1, 16),
(56, 'Tin Học lớp 6 - Bộ Cánh Diều', '32', '15000', 1, '1683931605_6922f0920127f7326d361f4f2bf57e70.jpg', '<p>Tin Học lớp 6 - Bộ C&aacute;nh Diều</p>\r\n', '<p>SGK Tin Học lớp 6<br />\r\n- Với mong muốn đồng h&agrave;nh c&ugrave;ng c&aacute;c bạn học sinh tr&ecirc;n con đường ph&aacute;t triển tri thức, cam kết ph&acirc;n phối sản phẩm mới 100%,<br />\r\nđồng thời lu&ocirc;n c&oacute; ưu đ&atilde;i, qu&agrave; tặng hấp dẫn khi mua h&agrave;ng tại gian h&agrave;ng ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>Th&ocirc;ng tin sản phẩm:</p>\r\n\r\n<p>- T&aacute;c Giả: Nhiều t&aacute;c giả</p>\r\n\r\n<p>- Số trang: 100</p>\r\n\r\n<p>- Năm xuất bản: 2022</p>\r\n\r\n<p>- Khổ s&aacute;ch: 19 x 26.5 cm</p>\r\n\r\n<p>- H&igrave;nh thức: b&igrave;a mềm</p>\r\n\r\n<p>- NXB: NXB Đại học Sư Phạm, NXB Th&ocirc;ng Tin v&agrave; Truyền Th&ocirc;ng</p>\r\n', 1, 16),
(57, 'Bài Tập Tin Học lớp 6 - Cánh Diều', '33', '19000', 1, '1683931672_767e28eda9a9613bd473ebcebb36416a.jpg', '<p>B&agrave;i Tập Tin Học lớp 6 - C&aacute;nh Diều</p>\r\n', '<p>B&agrave;i Tập Tin Học lớp 6<br />\r\n- Với mong muốn đồng h&agrave;nh c&ugrave;ng c&aacute;c bạn học sinh tr&ecirc;n con đường ph&aacute;t triển tri thức, cam kết ph&acirc;n phối sản phẩm mới 100%,<br />\r\nđồng thời lu&ocirc;n c&oacute; ưu đ&atilde;i, qu&agrave; tặng hấp dẫn khi mua h&agrave;ng tại gian h&agrave;ng ch&uacute;ng t&ocirc;i.<br />\r\n- Th&ocirc;ng tin sản phẩm:</p>\r\n\r\n<p>- T&aacute;c Giả: Nhiều t&aacute;c giả</p>\r\n\r\n<p>- Số trang: 87</p>\r\n\r\n<p>- Năm xuất bản: 2022</p>\r\n\r\n<p>- Khổ s&aacute;ch: 17 x 24 cm</p>\r\n\r\n<p>- H&igrave;nh thức: b&igrave;a mềm</p>\r\n\r\n<p>- NXB: NXB Đại học Sư Phạm</p>\r\n', 1, 16),
(58, 'Tin học lớp 7 (Bộ sách Cánh Diều)', '34', '16000', 1, '1683931748_988b64c248d72d478783c563984b7a5c.jpg', '<p>Tin học lớp 7 (Bộ s&aacute;ch C&aacute;nh Diều)</p>\r\n', '<p>S&aacute;ch gi&aacute;o khoa m&ocirc;n Tin học lớp 7 shop b&aacute;n thuộc bộ s&aacute;ch gi&aacute;o khoa C&aacute;nh Diều. Bộ s&aacute;ch Gi&aacute;o khoa C&aacute;nh Diều lớp 7 được ph&ecirc; duyệt theo quyết định số 441/QĐ-BGDĐT ng&agrave;y 28 th&aacute;ng 01 năm 2022 của Bộ trưởng Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo. Bộ s&aacute;ch &nbsp;được nhiều cở sở Gi&aacute;o dục tr&ecirc;n cả nước lựa chọn để giảng dạy từ năm học 2022-2023.</p>\r\n', 1, 16),
(59, 'Sách Hướng dẫn dạy học Môn Tin học THPT 10', '10', '32000', 1, '1683931889_6f24865a3ea1e54e04611bf444da6f68.jpg', '<p>Nội dung gồm c&oacute;: Phần một. Những vấn đề chung I. Kh&aacute;i qu&aacute;t về chương tr&igrave;nh gi&aacute;o dục phổ th&ocirc;ng mới II. Kh&aacute;i qu&aacute;t về chương tr&igrave;nh m&ocirc;n Sinh học 1. Đặc đ', '<p>S&aacute;ch gi&aacute;o khoa Tin học lớp 10 thuộc bộ s&aacute;ch C&aacute;nh Diều. Bộ s&aacute;ch Gi&aacute;o khoa C&aacute;nh Diều lớp 10 được ph&ecirc; duyệt theo quyết định số 442/QĐ-BGDĐT ng&agrave;y 28 th&aacute;ng 01 năm 2022 của Bộ trưởng Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo. Bộ s&aacute;ch s&aacute;ch được nhiều cở sở Gi&aacute;o dục tr&ecirc;n cả nước lựa chọn để giảng dạy từ năm học 2022-2023.</p>\r\n', 1, 16),
(65, 'Tin Học Ứng Dụng Lập Trình VBA Trong Excel', '1', '150000', 1, '1685488907_1a4684c1535b6b2ac3d561cf6137022e.jpg', '<p>Tin Học Ứng Dụng Lập Tr&igrave;nh VBA Trong Excel</p>\r\n', '<p>Excel l&agrave; một chương tr&igrave;nh mạnh v&agrave; linh hoạt, bạn c&oacute; thể sử dụng Excel để nhập tất cả c&aacute;c loại dữ liệu v&agrave; thực hiện c&aacute;c t&iacute;nh to&aacute;n t&agrave;i ch&iacute;nh, to&aacute;n học hoặc thống k&ecirc;. Bạn c&oacute; thể sử dụng Excel để l&agrave;m cho bất kỳ loại dữ liệu n&agrave;o được ghi lại hợp l&yacute; v&agrave; hiệu quả hơn. Đối tượng ch&iacute;nh để học c&aacute;c chuy&ecirc;n đề n&agrave;y l&agrave;:</p>\r\n\r\n<p>Sinh vi&ecirc;n mới ra trường đang gấp r&uacute;t lấp đầy khoảng trống Excel, đặc biệt muốn tạo ấn tượng mạnh với nh&agrave; tuyển dụng bằng kỹ năng lập tr&igrave;nh VBA tr&ecirc;n Excel.</p>\r\n', 1, 26),
(66, 'Sách - Tin Học Văn Phòng - Tự Học Nhanh Microsoft Office', '12', '156000', 1, '1685488998_93059fefd323ffcdac5840e404effaa2.jpg', '<p>S&aacute;ch - Tin Học Văn Ph&ograve;ng - Tự Học Nhanh Microsoft Office</p>\r\n', '<p>S&aacute;ch - Tin Học Văn Ph&ograve;ng - Tự Học Nhanh Microsoft Office (Word - Excel - D&ugrave;ng Cho C&aacute;c Phi&ecirc;n Bản 2022-2019-2016-2013) ( Tặng Sổ Tay Xương Rồng )</p>\r\n', 1, 26),
(67, 'Sách Tin Học- Hướng Dẫn Lập Trình C#, C++', '14', '149000', 1, '1685489143_99dec90f316744bc623ccb4cea328178.jpg', '<p>S&aacute;ch Tin Học- Hướng Dẫn Lập Tr&igrave;nh C# ( B&agrave;i Tập Thực H&agrave;nh )- B&igrave;a mềm - STK- Tặng Sổ Tay Xương Rồng</p>\r\n', '<p>C# l&agrave; ng&ocirc;n ngữ lập tr&igrave;nh hướng đối tượng đơn giản, hiện đại đ&atilde; v&agrave; đang được c&aacute;c trường chuy&ecirc;n ng&agrave;nh tin học đưa v&agrave;o giảng dạy, v&igrave; thế, một khi bạn đọc đ&atilde; c&oacute; những kiến thức cơ bản về C hay C++, th&igrave; việc học v&agrave; khai th&aacute;c sử dụng C# trong c&ocirc;ng việc sẽ dễ d&agrave;ng hơn.</p>\r\n\r\n<p><strong>NỘI DUNG S&Aacute;CH</strong></p>\r\n\r\n<p>S&aacute;ch tr&igrave;nh b&agrave;y gồm 408 trang khổ 16 x 24 cm gồm 2 phần</p>\r\n', 1, 22),
(68, 'Sách - Hướng dẫn dạy học môn tin học THCS', '16', '70000', 1, '1685489234_ef6aa0fe500e26c862e832923d659ffe.png', '<p>S&aacute;ch - Hướng dẫn dạy học m&ocirc;n tin học THCS</p>\r\n', '<p>Chương tr&igrave;nh gi&aacute;o dục phổ th&ocirc;ng năm 2018 được triển khai từ năm học 2020 - 2021 đối với lớp đầu cấp tiểu học, từ năm học 2021 - 2022 đối với lớp đầu cấp của cấp trung học cơ sở v&agrave; từ năm học 2022 - 2023 đối với lớp đầu cấp của trung học phổ th&ocirc;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo quy định tại Nghị quyết số 88 của Quốc hội, lần đổi mới n&agrave;y sẽ &quot;Thực hiện x&atilde; hội h&oacute;a bi&ecirc;n soạn s&aacute;ch gi&aacute;o khoa; c&oacute; một số s&aacute;ch khoa cho mỗi m&ocirc;n học. C&aacute;c cơ sở gi&aacute;o dục phổ th&ocirc;ng lựa chọn s&aacute;ch gi&aacute;o khoa để sử dụng dựa tr&ecirc;n &yacute; kiến của gi&aacute;o vi&ecirc;n, học sinh v&agrave; cha mẹ học sinh theo hướng dẫn của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo&quot;. Theo định hướng một chương tr&igrave;nh nhiều bộ s&aacute;ch gi&aacute;o khoa cho mỗi m&ocirc;n học v&agrave; mỗi trường được quyền lựa chọn s&aacute;ch gi&aacute;o khoa cho mỗi m&ocirc;n học v&agrave; mỗi trường được quyền lựa chọn s&aacute;ch gi&aacute;o khoa ph&ugrave; hợp, việc nắm vững chương tr&igrave;nh l&agrave; yếu tố quan trọng nhất để bảo đảm chất lượng gi&aacute;o dục v&agrave; quản l&iacute; gi&aacute;o dục.</p>\r\n', 1, 22),
(69, 'Sách Hướng dẫn dạy học Môn Tin học THPT', '19', '75000', 1, '1685489299_0c0381743a2ebd5626a64f2e92f99ee7.png', '<p>S&aacute;ch Hướng dẫn dạy học M&ocirc;n Tin học THPT</p>\r\n', '<p>Nội dung gồm c&oacute;: Phần một. Những vấn đề chung I. Kh&aacute;i qu&aacute;t về chương tr&igrave;nh gi&aacute;o dục phổ th&ocirc;ng mới II. Kh&aacute;i qu&aacute;t về chương tr&igrave;nh m&ocirc;n Sinh học 1. Đặc điểm của m&ocirc;n học 2. Quan điểm x&acirc;y dựng chương tr&igrave;nh m&ocirc;n học 3. Mục ti&ecirc;u của chương tr&igrave;nh m&ocirc;n học 4. Y&ecirc;u cầu cần đạt về phẩm chất v&agrave; năng lực 5. Nội dung gi&aacute;o dục của chương tr&igrave;nh 6. Định hướng về phương ph&aacute;p gi&aacute;o dục 7. Định hướng về đ&aacute;nh gi&aacute; kết quả gi&aacute;o dục Phần hai. Thiết kế v&agrave; thực hiện gi&aacute;o &aacute;n I. Hướng dẫn chung II. Hướng dẫn thiết kế gi&aacute;o &aacute;n theo chủ đề / dạng b&agrave;i III. Một số gi&aacute;o &aacute;n minh hoạ Phần ba. Đ&aacute;nh gi&aacute; kết quả gi&aacute;o dục I. Mục ti&ecirc;u đ&aacute;nh gi&aacute; II. C&aacute;ch thức đ&aacute;nh gi&aacute;</p>\r\n', 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` varchar(255) NOT NULL,
  `id_dangki` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id_shipping`, `name`, `phone`, `address`, `note`, `id_dangki`) VALUES
(2, 'Lê hải Nam 10989', '  0328297517', '  đồng tháp', '  aaa', 100),
(3, 'Lê hải Nam 10989', '  0328297517', '  đồng tháp', '  aaa', 100),
(4, 'Lê hải Nam 10989', '  0328297517', '  đồng tháp', '  aaa', 100),
(5, 'Lê Phi Giao', ' 12333333', '  đt', '  aaaaaa', 101);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(1, '5/24/2022', 50, '150000', 25),
(7, '5/25/2022', 50, '150000', 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangki`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`in_danhmuc`);

--
-- Indexes for table `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Indexes for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`in_sanpham`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`);

--
-- Indexes for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `in_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `in_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
