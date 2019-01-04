-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2019 at 09:41 AM
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
-- Database: `sango`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `nhanvien` text COLLATE utf8_unicode_ci,
  `uytin` text COLLATE utf8_unicode_ci,
  `kinhnghiem` text COLLATE utf8_unicode_ci,
  `chatluong` text COLLATE utf8_unicode_ci,
  `muctieu` text COLLATE utf8_unicode_ci,
  `giaca` text COLLATE utf8_unicode_ci,
  `tantam` text COLLATE utf8_unicode_ci,
  `quytrinh` text COLLATE utf8_unicode_ci,
  `hotro` text COLLATE utf8_unicode_ci,
  `camket` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `nhanvien`, `uytin`, `kinhnghiem`, `chatluong`, `muctieu`, `giaca`, `tantam`, `quytrinh`, `hotro`, `camket`) VALUES
(1, 'TẠI SAO NÊN CHỌN ĐẲNG CẤP MỘC ?', '<p>Với kh&aacute;t vọng trở th&agrave;nh c&ocirc;ng ty h&agrave;ng đầu trong lĩnh vực s&agrave;n gỗ tại Việt Nam, ch&uacute;ng t&ocirc;i đ&atilde; v&agrave; đang tạo sự kh&aacute;c biệt với c&ocirc;ng ty kh&aacute;c để mang đến những sản phẩm chất lượng cao, dịch vụ ho&agrave;n hảo tới tay kh&aacute;ch h&agrave;ng. Dưới đ&acirc;y l&agrave; 10 điểm kh&aacute;c biệt của ch&uacute;ng t&ocirc;i:</p>\r\n', '<p><strong>Nh&acirc;n vi&ecirc;n:&nbsp;</strong>Đội ngũ nh&acirc;n sự hơn 20 người. Thuộc top những c&ocirc;ng ty h&agrave;ng đầu trong lĩnh vực s&agrave;n gỗ. Ch&uacute;ng t&ocirc;i c&oacute; đủ người để đ&aacute;p ưng c&aacute;c y&ecirc;u cầu của kh&aacute;ch h&agrave;ng một c&aacute;ch tốt nhất, nhanh nhất.</p>\r\n', '<p><strong>Uy t&iacute;n:&nbsp;</strong>Được sự đ&aacute;nh gi&aacute; cao từ kh&aacute;ch h&agrave;ng l&agrave; nguồn động lực to lớn gi&uacute;p ch&uacute;ng t&ocirc;i kh&ocirc;ng ngừng n&acirc;ng cao chất lượng sản phẩm dịch vụ. Đẳng cấp Mộc đ&atilde; nhận được rất nhiều &yacute; kiến đ&aacute;nh gi&aacute;, động vi&ecirc;n từ kh&aacute;ch h&agrave;ng. Qu&yacute; kh&aacute;ch c&oacute; thể xem chi tiết tại đ&acirc;y.</p>\r\n', '<p><strong>Kinh nghiệm:&nbsp;</strong>Đẳng Cấp Mộc đ&atilde; thực hiện c&ocirc;ng tr&igrave;nh s&agrave;n gỗ cho hơn 100 gia đ&igrave;nh, c&ocirc;ng ty, tổ chức,...<br />\r\nCh&uacute;ng t&ocirc;i đủ kinh nghiệm để thấu hiểu nhu cầu của kh&aacute;ch h&agrave;ng để l&agrave;m ra c&aacute;c sản phẩm tốt nhất.</p>\r\n', '<p><strong>Chất lượng:&nbsp;</strong>Đẳng Cấp Mộc đem đến cho kh&aacute;ch h&agrave;ng những sản phẩm ch&iacute;nh hiệu mang chất lượng tốt nhất, ph&ugrave; họp nhất cho ng&ocirc;i nh&agrave; th&acirc;n y&ecirc;u của bạn.</p>\r\n', '<p><strong>Mục ti&ecirc;u:&nbsp;</strong>Hiện tại đ&atilde; được những th&agrave;nh tựu nhất định trong lĩnh vực s&agrave;n gỗ. Nhưng ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng dừng lại m&agrave; sẽ li&ecirc;n tục ho&agrave;n thiện m&igrave;nh để cung cấp dịch vụ tốt nhất cho kh&aacute;ch h&agrave;ng.</p>\r\n', '<p><strong>Gi&aacute; cả:&nbsp;</strong>Với quan điểm l&agrave; một đơn vị &quot;h&agrave;o ph&oacute;ng cho đi v&agrave; đ&oacute;n nhận tuyệt vời&quot;. Ch&uacute;ng t&ocirc;i tin sẽ mang đến cho kh&aacute;ch h&agrave;ng một dịch vụ tuyệt hảo, một sản phẩm đẳng cấp nhưng bảo đảm tiết kiệm tối đa chi ph&iacute;.</p>\r\n', '<p><strong>Tận t&acirc;m:&nbsp;</strong>Với đội ngũ nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp, tận t&acirc;m, gi&agrave;u kinh nghiệm c&ugrave;ng phương ch&acirc;m &quot;kh&aacute;ch h&agrave;ng l&agrave; số 1&quot;, ch&uacute;ng t&ocirc;i sẽ mang đến cho kh&aacute;ch h&agrave;ng sự an t&acirc;m, h&agrave;i l&ograve;ng khi sử dụng sản phẩm tại Đẳng Cấp Mộc.</p>\r\n', '<p><strong>Quy tr&igrave;nh:&nbsp;</strong>Với quy tr&igrave;nh tư vấn, khảo s&aacute;t, lắp r&aacute;p chuy&ecirc;n nghiệp. Ch&uacute;ng t&ocirc;i tự tin gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; được những s&agrave;n gổ đẹp nhất, bền nhất, mang lại hiệu quả cao m&agrave; kh&ocirc;ng mất qu&aacute; nhiều thời gian trao đổi, l&agrave;m việc.</p>\r\n', '<p><strong>Hỗ trợ:&nbsp;</strong>Đẳng Cấp Mộc c&oacute; đội ngũ hỗ trợ kh&aacute;ch h&agrave;ng ri&ecirc;ng, kh&ocirc;ng ki&ecirc;m nhiệm với c&ocirc;ng việc kh&aacute;c. V&igrave; vậy, ch&uacute;ng t&ocirc;i sẵn s&agrave;ng hỗ trợ ngay khi kh&aacute;ch h&agrave;ng cần. Đ&acirc;y cũng l&agrave; sự kh&aacute;c biệt của Đẳng Cấp Mộc so với c&aacute;c c&ocirc;ng ty kh&aacute;c.</p>\r\n', '<p><strong>Cam kết:&nbsp;</strong>Đẳng Cấp Mộc cam kết đem lại những sản phẩm chất lượng tốt nhất, đẹp nhất. Ch&uacute;ng t&ocirc;i muốn kh&aacute;ch h&agrave;ng thấy rằng, Đẳng Cấp Mộc thấu hiểu nhu cầu của kh&aacute;ch h&agrave;ng khi đến với ch&uacute;ng t&ocirc;i.</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `status`) VALUES
('admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE `advertise` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`id`, `name`, `alias`, `image`, `url`, `cat_id`, `order`, `created`, `status`) VALUES
(1, 'Logo', 'logo', '1546571754logo.png', '', 1, 1, '2019-01-04 04:15:54', 1),
(21, 'Slide 2', 'slide-2', '1504841505slider2.jpg', NULL, 2, 2, '2017-09-08 05:31:45', 1),
(23, 'Slide 3', 'slide-3', '1504841522slider3.jpg', NULL, 2, 3, '2017-09-08 05:33:30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `alias`, `status`, `ordering`, `created`) VALUES
(1, 'Logo', 'logo', 1, NULL, '2015-04-20 13:31:49'),
(2, 'Slide', 'slide', 1, NULL, '2015-08-12 09:20:11'),
(3, 'Banner 1 [ Hình ảnh bên phải ]', 'banner-1-[-hinh-anh-ben-phai-]', 1, NULL, '2015-08-12 09:16:40'),
(4, 'Banner 2 [ Hình ảnh bên phải ]', 'banner-2-[-hinh-anh-ben-phai-]', 1, NULL, '2015-08-12 09:16:46'),
(5, 'Quảng cáo [ Hình ảnh chính giữa ]', 'quang-cao-[-hinh-anh-chinh-giua-]', 1, NULL, '2015-08-12 09:17:10'),
(6, 'Quảng cáo 2 [ Hình ảnh chính giữa 2]', 'quang-cao-2-[-hinh-anh-chinh-giua-2]', 1, NULL, '2019-01-04 04:50:09'),
(7, 'Logo_Footer', 'logo_footer', 1, NULL, '2019-01-04 08:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `category_pro`
--

CREATE TABLE `category_pro` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img_left` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_bottom` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_pro`
--

INSERT INTO `category_pro` (`id`, `parent_id`, `name`, `alias`, `img_left`, `img_bottom`, `hot`, `status`, `ordering`, `title`, `keyword`, `description`, `created`) VALUES
(1, 0, 'Sàn gỗ khuyến mãi', 'san-go-khuyen-mai', '1494051797banner-1.jpg', '14942243481494058009Banner-5.jpg', 0, 1, 1, 'Sàn gỗ khuyến mãi', 'san go khuyen mai', 'Sàn gỗ khuyến mãi', '2018-08-18 08:00:07'),
(2, 0, 'Sàn gỗ ngoài trời', 'san-go-ngoai-troi', '154562171515345710025.jpg', '15345710025.jpg', 1, 1, 2, 'Sàn gỗ ngoài trời', 'Sàn gỗ ngoài trời', 'Sàn gỗ ngoài trời', '2018-12-24 04:21:55'),
(3, 0, 'Sàn gỗ tự nhiên', 'san-go-tu-nhien', '15345708112.jpg', '15345708116.jpg', 1, 1, 2, 'Sàn gỗ tự nhiên', 'Sàn gỗ tự nhiên', 'Sàn gỗ tự nhiên', '2018-08-18 07:59:48'),
(4, 0, 'Sàn gỗ công nghiệp', 'san-go-cong-nghiep', '15345720903.jpg', '15345709807.jpg', 1, 1, 2, 'Sàn gỗ công nghiệp', 'Sàn gỗ công nghiệp', 'Sàn gỗ công nghiệp', '2018-08-18 08:01:30'),
(5, 0, 'Phụ kiện sàn gỗ', 'phu-kien-san-go', '1533732687703569837fea4a92834556bf_300x200.jpg', '', 0, 1, 6, 'Phụ kiện sàn gỗ', 'Phụ kiện sàn gỗ', 'Phụ kiện sàn gỗ', '2018-08-18 07:59:28'),
(9, 2, 'Sàn gỗ DCWood', 'san-go-dcwood', '', '', 0, 1, NULL, 'Sàn gỗ DCWood', 'Sàn gỗ DCWood', 'Sàn gỗ DCWood', '2018-07-05 12:07:50'),
(10, 2, 'Sàn gỗ hồ bơi', 'san-go-ho-boi', '', '', 0, 1, NULL, 'Sàn gỗ hồ bơi', 'Sàn gỗ hồ bơi', 'Sàn gỗ hồ bơi', '2018-07-05 12:08:12'),
(11, 2, 'Sàn gỗ sân thượng', 'san-go-san-thuong', '', '', 0, 1, NULL, 'Sàn gỗ sân thượng', 'Sàn gỗ sân thượng', 'Sàn gỗ sân thượng', '2018-07-05 12:08:36'),
(12, 3, 'Sàn gỗ Căm xe', 'san-go-cam-xe', '', '', 0, 1, NULL, 'Sàn gỗ căm xe', 'Sàn gỗ căm xe', 'Sàn gỗ căm xe', '2018-07-05 12:09:21'),
(13, 3, 'Sàn gỗ Giáng hương', 'san-go-giang-huong', '', '', 0, 1, NULL, 'Sàn gỗ Giáng hương', 'Sàn gỗ Giáng hương', 'Sàn gỗ Giáng hương', '2018-07-05 12:09:45'),
(14, 3, 'Sàn gỗ chiu liu', 'san-go-chiu-liu', '', '', 0, 1, NULL, 'Sàn gỗ chiu liu', 'Sàn gỗ chiu liu', 'Sàn gỗ chiu liu', '2018-07-05 12:10:14'),
(15, 4, 'Sàn gỗ Thái Lan', 'san-go-thai-lan', '', '', 0, 1, NULL, 'Sàn gỗ Thái Lan', 'Sàn gỗ Thái Lan', 'Sàn gỗ Thái Lan', '2018-07-05 12:10:46'),
(16, 4, 'Sàn gỗ Malaysia', 'san-go-malaysia', '', '', 0, 1, NULL, 'Sàn gỗ Malaysia', 'Sàn gỗ Malaysia', 'Sàn gỗ Malaysia', '2018-07-05 12:11:14'),
(17, 4, 'Sàn gỗ Đức', 'san-go-duc', '', '', 0, 1, NULL, 'Sàn gỗ Đức', 'Sàn gỗ Đức', 'Sàn gỗ Đức', '2018-07-05 12:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `nick` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `icon` int(11) DEFAULT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `lang` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `nick`, `icon`, `name`, `phone`, `lang`, `created`) VALUES
(10, 'ttvinh18', 1, 'Mr. Vinh', '0933607602', 0, '2015-08-24 13:50:25'),
(13, 'afuvietnamdisney9999', NULL, 'Mr.Phuc', '0128 6018640', 0, '2015-08-16 14:52:46');

-- --------------------------------------------------------

--
-- Table structure for table `congtrinh`
--

CREATE TABLE `congtrinh` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `cat1_id` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `congtrinh`
--

INSERT INTO `congtrinh` (`id`, `cat_id`, `cat1_id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `noibat`, `created`, `keyword`) VALUES
(1, 4, NULL, 'Sàn gỗ công nghiệp', 'san-go-cong-nghiep', 'Sàn gỗ công nghiệp', 'Sàn gỗ công nghiệp', '15349454197.jpg', NULL, 1, 0, '2018-08-22 15:43:39', NULL),
(2, 3, NULL, 'Sàn gỗ tự nhiên', 'san-go-tu-nhien', 'Sàn gỗ tự nhiên', '<p>S&agrave;n gỗ tự nhi&ecirc;n</p>\r\n', '15349455446.jpg', NULL, 1, 0, '2018-08-22 15:45:44', NULL),
(3, 2, NULL, 'Sàn gỗ hồ bơi DCWood HD 001 Cty TNHH ABC TNHH ABC TNHH ABC TNHH ABC', 'san-go-ho-boi-dcwood-hd-001-cty-tnhh-abc-tnhh-abc-tnhh-abc-tnhh-abc', 'Sàn gỗ ngoài trời', '<p>S&agrave;n gỗ ngo&agrave;i trời</p>\r\n', '15349455685.jpg', NULL, 1, 0, '2018-12-31 05:10:06', NULL),
(4, 3, NULL, 'Sàn gỗ hồ bơi DCWood HD 002 CTY TNHH BBF', 'san-go-ho-boi-dcwood-hd-002-cty-tnhh-bbf', 'Sàn gỗ hồ bơi DCWood HD 002 CTY TNHH BBF', '<p>S&agrave;n gỗ hồ bơi DCWood HD 002 CTY TNHH BBF</p>\r\n', '1546231333IMG_6818.jpg', NULL, 1, 0, '2018-12-31 05:42:13', NULL),
(5, 3, NULL, 'Sàn gỗ hồ bơi DCWood HD 003 CTY TNHH BBF', 'san-go-ho-boi-dcwood-hd-003-cty-tnhh-bbf', 'Sàn gỗ hồ bơi DCWood HD 003 CTY TNHH BBF', '<p>S&agrave;n gỗ hồ bơi DCWood HD 002 CTY TNHH BBF</p>\r\n', '1546231373IMG_6814.jpg', NULL, 1, 0, '2018-12-31 05:42:53', NULL),
(6, 2, NULL, 'Sàn gỗ hồ bơi DCWood HD 003 CTY TNHH BBF', 'san-go-ho-boi-dcwood-hd-003-cty-tnhh-bbf', 'Sàn gỗ hồ bơi DCWood HD 003 CTY TNHH BBF', '<p>S&agrave;n gỗ hồ bơi DCWood HD 002 CTY TNHH BBF</p>\r\n', '1546233875IMG_6817.jpg', NULL, 1, 0, '2018-12-31 06:24:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `subject`, `content`, `name`, `email`, `phone`, `address`, `created`, `status`) VALUES
(1, 'KHÁCH HÀNG LIÊN HỆ', 'test', 'Tam Pham', 'tam_duy24@yahoo.com', '0903527178', NULL, '2018-05-07 16:57:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` mediumtext COLLATE utf8_unicode_ci,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_cat`
--

CREATE TABLE `menu_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` mediumtext COLLATE utf8_unicode_ci,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `cat1_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `price` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `khuyenmai` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quycach` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chongtray` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `xuatxu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thuonghieu_id` int(11) DEFAULT NULL,
  `tinhtrang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ungdung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baohanh` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banchay` tinyint(1) NOT NULL DEFAULT '0',
  `noibat` tinyint(1) NOT NULL DEFAULT '0',
  `hot` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cat_id`, `cat1_id`, `tag_id`, `name`, `masp`, `alias`, `description`, `content`, `image`, `price`, `khuyenmai`, `color`, `quycach`, `chongtray`, `xuatxu`, `thuonghieu_id`, `tinhtrang`, `ungdung`, `baohanh`, `banchay`, `noibat`, `hot`, `order`, `status`, `created`) VALUES
(1, 3, 13, NULL, 'san pham 1', 'SP01', 'san-pham-1', '123', '<p>123</p>\r\n', '[\"1545642929IMG_6815.jpg\",\"1545642929IMG_6817.jpg\"]', '200000', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 0, 0, 0, NULL, 1, '2018-12-24 10:15:29'),
(2, 4, 17, NULL, 'san pham 2', 'SP02', 'san-pham-2', '', '<p>test</p>\r\n', '[\"1546249197IMG_6814.jpg\",\"1546249197IMG_6815.jpg\",\"1546249197IMG_6817.jpg\",\"1546249198IMG_6818.jpg\"]', '200000', '100000', 'do', '1.6 x 1.6', 'co', 'Sing', 1, 'Con hang', 'muon lam gi lam', '2 nam', 0, 0, 0, NULL, 1, '2018-12-31 10:39:57');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `created`) VALUES
(1, 'Hoa mai Bình Định', 'hoa-mai-binh-dinh', '', '<p>Hoa mai b&igrave;nh định</p>\r\n', '1403765873300x215-7.png', NULL, 1, '2014-06-26 13:58:07'),
(2, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765906300x215-7.png', NULL, 1, '2014-06-26 13:58:26'),
(3, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765977hoamai.jpg', NULL, 1, '2014-06-26 13:59:37'),
(4, 'Hoa mai Bình Định 2', 'hoa-mai-binh-dinh-2', '', '<p>Hoa mai b&igrave;nh định 2</p>\r\n', '1403765996300x215-7.png', NULL, 1, '2014-06-26 13:59:56'),
(5, 'b', 'b', 'a', '<p>a</p>\r\n', '1403766007hoamai.jpg', 3, 1, '2014-06-26 14:00:07'),
(6, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766016300x215-7.png', 1, 1, '2014-06-26 14:00:16'),
(7, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766031hoamai.jpg', 1, 1, '2014-06-26 14:00:31'),
(8, 'test 3', 'test-3', 'test 3', '<p>test 3</p>\r\n', '1403766043300x215-7.png', 1, 1, '2014-06-26 14:00:43'),
(9, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766058hoamai.jpg', NULL, 1, '2014-06-26 14:00:58'),
(10, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766070300x215-7.png', NULL, 1, '2014-06-26 14:01:10'),
(11, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766079hoamai.jpg', NULL, 1, '2014-06-26 14:01:19'),
(12, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766088300x215-7.png', NULL, 1, '2014-06-26 14:01:28'),
(13, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766099300x215-7.png', NULL, 1, '2014-06-26 14:01:39'),
(15, 'teaasdfasdf', 'teaasdfasdf', 'asdfasdf', '<p>asdf</p>\r\n', '1403766113300x215-7.png', NULL, 1, '2014-06-26 14:01:53'),
(16, 'Tam', 'tam', 'test', '<p><img alt=\"\" src=\"http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg\" style=\"height:340px; width:509px\" /></p>\r\n', '1403766124hoamai.jpg', NULL, 1, '2014-06-26 14:02:11'),
(17, 'Tam adf', 'tam-adf', 'test', '<p><img alt=\"\" src=\"http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg\" style=\"height:340px; width:509px\" /></p>\r\n', '1403766143300x215-7.png', NULL, 1, '2014-06-26 17:04:03'),
(18, 'test 1', 'test-1', 'asdf', '<p><img alt=\"\" src=\"http://hoamai.tam/admin/uploads/images/image1.jpeg\" style=\"height:177px; width:284px\" /></p>\r\n', '1403766152hoamai.jpg', NULL, 1, '2014-06-26 14:02:32'),
(19, 'Tu van hoa mai', 'tu-van-hoa-mai', 'tu van hoa mai', '<p>Tu van hoa mai</p>\r\n', '1403841463hoamai.jpg', 1, 1, '2014-06-27 10:57:43'),
(20, 'Dich Vu cham soc hoa mai', 'dich-vu-cham-soc-hoa-mai', 'cham soc hoa mai', '<p>Dich vu cham soc hoa mai</p>\r\n', '14121525371403765977hoamai.jpg', NULL, 1, '2014-10-01 15:35:37');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions_admin`
--

CREATE TABLE `sessions_admin` (
  `id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sessions_admin`
--

INSERT INTO `sessions_admin` (`id`, `expire`, `data`) VALUES
('e4i8bk8q54bmf7ct4etvpa222c', 1546591935, 0x63383162616461626632623364326466653765626264313736623163343163305f5f69647c733a353a2261646d696e223b63383162616461626632623364326466653765626264313736623163343163305f5f6e616d657c733a353a2261646d696e223b63383162616461626632623364326466653765626264313736623163343163306e616d657c733a353a2241646d696e223b63383162616461626632623364326466653765626264313736623163343163305f5f7374617465737c613a313a7b733a343a226e616d65223b623a313b7d);

-- --------------------------------------------------------

--
-- Table structure for table `static`
--

CREATE TABLE `static` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `selected` int(11) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `static`
--

INSERT INTO `static` (`id`, `name`, `alias`, `content`, `status`, `selected`, `created`, `keyword`, `description`) VALUES
(1, 'Liên hệ', 'lien-he', '<p>Hymarks&nbsp;Transfer Label Co,Ltd</p>\r\n\r\n<p>Lo I 7, Duong So 6, CCN Loi Binh Nhon, Xa Loi Binh Nhon, Tp. Tan An, Long An&nbsp;</p>\r\n\r\n<p>Hot line : Mr Ph&uacute;c (Mobile : 0128 601 8640 .&nbsp;Email : phuchoaduc@gmail.com)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Mr Vinh &nbsp;(Mobile : 0933 607 602 .&nbsp; &nbsp;Email : vinh.hoaduc@gmail.com)</p>\r\n', 1, 0, '2015-09-09 05:22:03', '', ''),
(2, 'Description', 'description', '<p>Heat Transfer Label</p>\r\n', 1, 0, '2015-08-16 13:28:27', '', ''),
(3, 'Keyword', 'keyword', '<p>heat transfer label</p>\r\n', 1, 0, '2015-08-16 13:28:47', '', ''),
(4, 'Giới thiệu', 'gioi-thieu', '<p style=\"text-align:justify\">Trang Web đang x&acirc;y dựng</p>\r\n', 1, 0, '2015-08-24 10:09:37', '', ''),
(5, 'Địa chỉ', 'dia-chi', '<p>59/4 Đường 38, P. Hiệp B&igrave;nh Ch&aacute;nh, Tp.Hồ Ch&iacute; Minh</p>\r\n', 1, 0, '2017-05-08 10:30:15', '', ''),
(6, 'Điện thoại', 'dien-thoai', '<p><strong>0123.601.0123 - 0984.80.45.81</strong></p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n', 1, 0, '2017-05-22 11:37:57', '', '  '),
(7, 'Email', 'email', '<p><span style=\"background-color:rgb(241, 240, 240); color:rgb(75, 79, 86); font-family:helvetica,arial,sans-serif; font-size:12px\">congtyductamvn@gmail.com</span></p>\r\n', 1, 0, '2017-05-06 09:12:26', '', ''),
(8, 'Google', 'google', '<p>http://google.com.vn</p>\r\n', 1, 0, '2015-05-05 15:30:32', NULL, NULL),
(9, 'Facebook', 'facebook', '<p>https://www.facebook.com</p>\r\n', 1, 0, '2015-09-09 06:16:46', '', ''),
(10, 'Twitter', 'twitter', '<p>http://twitter.com</p>\r\n', 1, 0, '2015-05-05 15:31:06', NULL, NULL),
(12, 'Khuyến mãi', 'khuyen-mai', '<p style=\"text-align:justify\">Th&ocirc;ng tin đang cập nhật</p>\r\n', 1, 1, '2017-05-07 09:29:46', '', ''),
(14, 'Tuyển dụng', 'tuyen-dung', '<p><font color=\"#222222\" face=\"arial, arial, helvetica, sans-serif\"><span style=\"font-size:12.8px\">Th&ocirc;ng tin đang cập nhật</span></font></p>\r\n', 1, 1, '2017-05-07 09:32:14', '', ''),
(15, 'Thông tin công ty', 'thong-tin-cong-ty', '<p><font face=\"arial, arial, helvetica, sans-serif\"><span style=\"font-size:12.8px\">Th&ocirc;ng tin đang cập nhật</span></font></p>\r\n', 1, 1, '2017-05-07 09:33:02', '', ''),
(16, 'Hệ thống các siêu thị', 'he-thong-cac-sieu-thi', '<p><span style=\"font-family:arial,arial,helvetica,sans-serif; font-size:12.8000001907349px\">Th&ocirc;ng tin đang cập nhật</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1, '2017-05-07 09:33:46', '', ''),
(17, 'Tư vấn bán hàng', 'tu-van-ban-hang', '<div class=\"sp_1\">\r\n<p>Tư vấn b&aacute;n h&agrave;ng 1</p>\r\n\r\n<p>Mrs. Dung: (04) 3786 8904</p>\r\n</div>\r\n\r\n<div class=\"sp_2\">\r\n<p>Tư vấn b&aacute;n h&agrave;ng 2</p>\r\n\r\n<p>Mr. Tuấn: (04) 3786 8904</p>\r\n</div>\r\n\r\n<div class=\"sp_mail\">\r\n<p>Email li&ecirc;n hệ</p>\r\n\r\n<p><a href=\"mailto:support@bizweb.vn\">support@bizweb.vn</a></p>\r\n</div>\r\n', 1, 1, '2018-04-21 11:34:53', '', ''),
(18, 'Hotline', 'hotline', '<p>0123.601.0123&nbsp;</p>\r\n', 1, 1, '2017-05-22 11:52:36', '', ''),
(19, 'Hướng dẫn mua hàng online', 'huong-dan-mua-hang-online', '<p>Th&ocirc;ng tin đang cập nhật</p>\r\n', 1, 1, '2017-05-07 09:34:25', '', ''),
(20, 'Hướng dẫn mua hàng trả góp', 'huong-dan-mua-hang-tra-gop', '<p>th&ocirc;ng tin đang cập nhật</p>\r\n', 1, 1, '2017-05-07 09:34:58', '', ''),
(21, 'Quy chế quản lý hoạt động', 'quy-che-quan-ly-hoat-dong', '<p>Th&ocirc;ng tin đang cập nhật</p>\r\n', 1, 1, '2017-05-07 09:35:25', '', ''),
(22, 'Quy định, chính sách', 'quy-dinh-chinh-sach', '<p><font><font>Information is updating</font></font></p>\r\n', 1, 1, '2017-05-07 09:35:50', '', ''),
(23, 'Chính sách bảo hành - Đổi trả', 'chinh-sach-bao-hanh-doi-tra', '<p>Th&ocirc;ng tin đang cập nhật</p>\r\n', 1, 1, '2017-05-07 09:36:18', '', ''),
(24, 'Chính sách hội viên', 'chinh-sach-hoi-vien', '<p>Th&ocirc;ng tin đang cập nhật</p>\r\n', 1, 1, '2017-05-07 09:36:42', '', ''),
(25, 'Giao hàng và lắp đặt', 'giao-hang-va-lap-dat', '<p>Th&ocirc;ng tin đang cập nhật</p>\r\n', 1, 1, '2017-05-07 09:37:09', '', ''),
(26, 'Điện thoại di động', 'dien-thoai-di-dong', '<p>098743</p>\r\n', 1, 0, '2018-04-30 16:56:40', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `selected` int(11) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `img_left` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_bottom` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hot` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `ordering` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`id`, `parent_id`, `name`, `alias`, `img_left`, `img_bottom`, `hot`, `status`, `ordering`, `title`, `keyword`, `description`, `created`) VALUES
(1, 0, 'Janmi', 'janmi', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2018-12-31 10:29:27'),
(2, 0, 'Wood', 'wood', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2018-12-31 10:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `noibat`, `created`, `keyword`) VALUES
(1, 'Chương trình \'\'GIÁ RẺ QUÀ HAY NHANH TAY TRÚNG LỚN\'\'', 'chuong-trinh-gia-re-qua-hay-nhanh-tay-trung-lon', 'Bốc thăm trúng thưởng tại huyện tân yên tỉnh bắc giang', '<div style=\"margin: 0px 0px 5px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: justify;\"><strong><strong>Bốc thăm tr&uacute;ng thưởng tại huyện t&acirc;n y&ecirc;n tỉnh bắc giang&nbsp;</strong>&nbsp;&nbsp;</strong></div>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><strong>Chương tr&igrave;nh được tổ chức tại huyện T&acirc;n Y&ecirc;n ,tỉnh Bắc Giang&nbsp;</strong></span></p>\r\n\r\n<p><br />\r\n<span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Tất cả c&aacute;c kh&aacute;ch h&agrave;ng đ&atilde; mua m&aacute;y lọc nước SAFURE trong khoảng thời gian từ ng&agrave;y 10/12 đến ng&agrave;y 13/12/2015 tr&ecirc;n địa b&agrave;n huyện T&acirc;n Y&ecirc;n ,đều nhận được một phiếu bốc thăm may mắn v&agrave; c&oacute; cơ hội sở hữu TI Vi SONY 48&#39; trị gi&aacute; 12,500,000đ v&agrave; c&acirc;y nước n&oacute;ng lạnh SAFURE trị gi&aacute; 3,000,000đ</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Chiều ng&agrave;y 13/12/2015 vừa qua C&ocirc;ng ty tnhh Điện M&aacute;y EMU Việt Nam phối hợp với Trung T&acirc;m Điện M&aacute;y TUẤN DŨNG đ&atilde; tổ chức th&agrave;nh c&ocirc;ng buổi lễ bốc thăm tr&uacute;ng thưởng chương tr&igrave;nh :&quot;GI&Aacute; RẺ QU&Agrave; HAY ,NHANH TAY TR&Uacute;NG LỚN&quot;.d&agrave;nh di&ecirc;ng cho kh&aacute;ch h&agrave;ng tại huyện T&acirc;n Y&ecirc;n ,Tỉnh Bắc Giang .</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Chương tr&igrave;nh thay lời cảm ơn ch&acirc;n th&agrave;nh của c&ocirc;ng ty tnhh Điện M&aacute;y EMU Việt Nam tới tất cả c&aacute;c qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; quan t&acirc;m v&agrave; sử dụng sản phẩm m&aacute;y lọc nước cao cấp SAFURE trong thời gian vừa qua .</span></p>\r\n\r\n<p><br />\r\n<span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><img alt=\"LÊ BỐC THĂM TRÚNG THƯỞNG NGÀY 13/12/2015\" src=\"http://safure.vn/files/editor/images/DSC_0100(3).JPG\" style=\"border:5px solid; height:281px; margin:0px; padding:0px; width:500px\" /></span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><img alt=\"\" src=\"http://safure.vn/files/editor/images/DSC_0091[1].JPG\" style=\"border:5px solid; height:281px; margin:0px; padding:0px; width:500px\" /></span></p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; line-height: 21px;\">\r\n<div style=\"margin: 0px; padding: 0px; line-height: 21px;\">\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Chương tr&igrave;nh bốc thăm diễn ra trong một kh&ocirc;ng&nbsp; gian ấm c&uacute;ng nhưng s&ocirc;i nổi .Những gi&acirc;y ph&uacute;t hồi hộp đến nghẹt thở ,c&ugrave;ng sự h&acirc;n hoan đến vỡ &ograve;a của kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng&nbsp; l&agrave;m cho bầu kh&ocirc;ng kh&iacute; ng&agrave;y đ&ocirc;ng trở n&ecirc;n rộn r&agrave;ng v&agrave; ấm c&uacute;ng hơn bao giờ &nbsp;hết .</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Chương tr&igrave;nh đẫ kết th&uacute;c trong niềm vui của to&agrave;n thể kh&aacute;ch h&agrave;ng&nbsp; tham ra buổi lễ .C&oacute; những kh&aacute;ch h&agrave;ng trở th&agrave;nh người may mắn,c&oacute; những kh&aacute;ch h&agrave;ng chưa &nbsp;may mắn trong dịp n&agrave;y ,nhưng tất cả đều rộn r&agrave;ng ,x&ocirc;n xao trong từng ng&otilde; nhỏ của người d&acirc;n T&acirc;n Y&ecirc;n .</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Một năm mới nữa đang đến rất gần tr&ecirc;n mọi nẻo đường qu&ecirc; hương Việt Nam v&agrave; SAFURE hứa hẹn sẽ mang niềm vui lại nơi n&agrave;y trong một ng&agrave;y kh&ocirc;ng xa ,để được tận hưởng những rộn r&agrave;ng v&agrave; nghe những c&acirc;u chuyện x&ocirc;n xao trong từng th&ocirc;n x&oacute;m .</span></p>\r\n</div>\r\n</div>\r\n', '1494141252DSC_0100(3).JPG', 1, 1, NULL, '2017-05-07 09:14:12', NULL),
(2, 'Thực trạng và giải pháp cứu nguồn nước sạch', 'thuc-trang-va-giai-phap-cuu-nguon-nuoc-sach', 'Gần 1 tỉ người không được tiếp xúc với nước sạch. Cứ 20s lại có một trẻ em tử vong vì tình trạng thiếu nước sạch và điều kiện không thích hợp.', '<div style=\"margin: 0px 0px 5px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: justify;\"><strong>Gần 1 tỉ người kh&ocirc;ng được tiếp x&uacute;c với nước sạch. Cứ 20s lại c&oacute; một trẻ em tử vong v&igrave; t&igrave;nh trạng thiếu nước sạch v&agrave; điều kiện kh&ocirc;ng th&iacute;ch hợp.</strong></div>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><strong>T&igrave;nh trạng nguồn nước hiện nay</strong></span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Nước chiếm &frac34; tr&aacute;i đất v&agrave; l&agrave; nguồn t&agrave;i nguy&ecirc;n qu&iacute; gi&aacute; đối với sự sống của con người. 70% diện t&iacute;ch Tr&aacute;i Đất được bao phủ bởi nước nhưng chỉ c&oacute; 2,5% nước tr&ecirc;n thế giới l&agrave; nước ngọt, trong khi 97,5% l&agrave; đại dương. Trong đ&oacute;, 0,3% nước ngọt của thế giới nằm trong c&aacute;c s&ocirc;ng, hồ; 30% l&agrave; nước ngầm, phần c&ograve;n lại nằm tr&ecirc;n c&aacute;c s&ocirc;ng băng, n&uacute;i băng. 70% lượng nước tr&ecirc;n thế giới được sử dụng cho n&ocirc;ng nghiệp, 22% cho c&ocirc;ng nghiệp v&agrave; 8% phục vụ sinh hoạt.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Theo ước t&iacute;nh, trung b&igrave;nh một người ở c&aacute;c nước ph&aacute;t triển sử dụng 500-800 l&iacute;t/ng&agrave;y so với 60-150 l&iacute;t/người/ng&agrave;y ở c&aacute;c nước đang ph&aacute;t triển. Hiện nay, c&aacute;c th&agrave;nh phố lớn, nhất l&agrave; ngay tại H&agrave; Nội, th&agrave;nh phố Hồ Ch&iacute; Minh, nhiều nơi vẫn đang thiếu nước sạch sinh hoạt. Nguồn nước ngầm đang bị khai th&aacute;c kh&ocirc;ng thể kiểm so&aacute;t. Việc khoan giếng lấy nước ngầm xảy ra tr&agrave;n lan, kh&ocirc;ng những g&acirc;y thất tho&aacute;t, l&atilde;ng ph&iacute; c&ograve;n c&oacute; nguy cơ l&agrave;m &ocirc; nhiễm nguồn nước đ&oacute;.Hơn nữa, do kh&ocirc;ng thấy hết vị tr&iacute; quan trọng của t&agrave;i nguy&ecirc;n nước, n&ecirc;n tr&ecirc;n khắp cả nước, đ&acirc;u đ&acirc;u cũng thấy c&oacute; những b&atilde;i r&aacute;c, nơi ch&ocirc;n cất, xử l&yacute; r&aacute;c thải kh&ocirc;ng được thực hiện theo đ&uacute;ng quy định v&agrave; quy tr&igrave;nh bảo vệ m&ocirc;i trường, để nước r&aacute;c r&ograve; rỉ ngấm xuống nguồn nước ngầm v&agrave; tr&agrave;n ra nguồn nước mặt.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Ri&ecirc;ng đối với cuộc sống của con người. nước c&oacute; một vai tr&ograve; hết sức đặc biệt.Đối với cơ thể con người nước kh&ocirc;ng phải l&agrave; một chất dinh dưỡng nhưng ch&uacute;ng ta c&oacute; thể nhịn ăn thậm ch&iacute; 1 tuần nhưng kh&ocirc;ng thể nhịn kh&ocirc;ng uống nước trong v&ograve;ng 3-5 ng&agrave;y được. Như ch&uacute;ng ta đ&atilde; biết, 70% cơ thể ch&uacute;ng ta l&agrave; nước, nước trong cơ thể ta ch&iacute;nh l&agrave; d&ograve;ng m&aacute;u đỏ chảy trong mỗi con người.C&aacute;c bạn h&atilde;y thử tưởng tưởng xem nếu kh&ocirc;ng c&oacute; d&ograve;ng m&aacute;u n&agrave;y liệu con người c&oacute; sống được kh&ocirc;ng??? Chỉ một v&iacute; dụ rất đơn giản cũng đủ để ch&uacute;ng ta thấy được tầm quan trọng của nước. Tất nhi&ecirc;n l&agrave; một việc l&agrave;m cần thiết của mọi con người ch&uacute;ng ta l&agrave; phải biết qu&yacute; trọng nguồn nước qu&yacute; b&aacute;u m&agrave; thi&ecirc;n nhi&ecirc;n đ&atilde; ban tặng cho ch&uacute;ng ta c&aacute;c bạn nh&eacute;!!! &nbsp; Kh&ocirc;ng c&oacute; nước sạch mọi sinh hoạt của con người sẽ bị ảnh hưởng nghi&ecirc;m trọng.Kh&ocirc;ng c&oacute; nước sạch sẽ sinh ra nhiều vấn đề đ&aacute;ng lo ngại cho sự sống của con người.L&uacute;c đ&oacute;: bệnh tật nảy sinh, m&ocirc;i trường cũng bị ảnh hưởng trầm trọng.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Nguồn nước ngầm bị &ocirc; nhiễm l&agrave; cả một hệ sinh th&aacute;i nước sạch bị mất c&acirc;n bằng, mất đi một nguồn cung cấp nước sạch tin cậy cho cuộc sống. C&oacute; l&yacute; khi c&aacute;c chuy&ecirc;n gia khuy&ecirc;n rằng, trước hết phải nhận thức s&acirc;u sắc sự quan trọng của t&agrave;i nguy&ecirc;n nước, c&oacute; &yacute; thức bảo vệ nguồn t&agrave;i nguy&ecirc;n nước v&agrave; những người c&oacute; tr&aacute;ch nhiệm c&oacute; thể từ chối những dự &aacute;n g&acirc;y &ocirc; nhiễm nguồn nước, d&ugrave; rằng dự &aacute;n đ&oacute; c&oacute; đem lại nguồn lợi lớn về kinh tế. Từ chối h&ocirc;m nay l&agrave; để đỡ tốn k&eacute;m v&agrave; g&igrave;n giữ cho mai sau.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><strong>Rừng-nguồn cất giữ nước sạch v&ocirc; tận</strong></span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Những rừng xanh bạt ng&agrave;n ở Trường Sơn, T&acirc;y Nguy&ecirc;n, v&ugrave;ng n&uacute;i ph&iacute;a Bắc đang bị chặt ph&aacute; để lại những n&uacute;i đồi trơ trọi, x&aacute;m ngắt, canh t&aacute;c n&ocirc;ng l&acirc;m nghiệp kh&ocirc;ng hợp l&yacute; v&agrave; thải chất thải bừa b&atilde;i v&agrave;o c&aacute;c thuỷ vực&hellip; đ&atilde; v&agrave; sẽ g&acirc;y n&ecirc;n những hậu quả rất nghi&ecirc;m trọng, l&agrave;m cho nguồn nước bị cạn kiệt, bị &ocirc; nhiễm, hạn h&aacute;n c&oacute; khả năng c&agrave;ng khốc liệt. Nguy cơ thiếu nước sạch c&agrave;ng trầm trọng, nhất l&agrave; v&agrave;o m&ugrave;a cạn ở c&aacute;c v&ugrave;ng mưa &iacute;t.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Nước ngọt l&agrave; nguồn t&agrave;i nguy&ecirc;n c&oacute; t&aacute;i tạo, nhưng việc sử dụng nguồn t&agrave;i nguy&ecirc;n n&agrave;y phải c&acirc;n bằng giữa nguồn dự trữ v&agrave; t&aacute;i tạo. Đ&oacute; cũng l&agrave; c&aacute;ch m&agrave; con người cần quan t&acirc;m, thực hiện để tồn tại v&agrave; ph&aacute;t triển sự sống ổn định, l&acirc;u bền.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Nguồn nước quan trọng như vậy, trong khi đ&oacute; ch&iacute;nh ch&uacute;ng ta lại kh&ocirc;ng biết giữ g&igrave;n. Cải tạo m&ocirc;i trường l&agrave; biện ph&aacute;p cấp b&aacute;ch để nguồn nước được bảo vệ. Kh&ocirc;ng chỉ dừng lại ở đ&oacute;, c&acirc;y xanh cũng l&agrave; m&ocirc;t bộ phận quan trọng gi&uacute;p cải thiện m&ocirc;i trường. Trồng c&acirc;y, trồng rừng để kh&ocirc;i phục m&ocirc;i trường, h&atilde;y để lại cuộc sống tốt đẹp cho tương lai mai sau của con em ch&uacute;ng ta.&nbsp;</span></p>\r\n', '1494141448Thuc-trang-nguon-nuoc-sach-va-giai-phap-may-loc-nuoc (2).jpg', 2, 1, 1, '2017-09-08 05:58:14', NULL),
(3, 'Máy lọc nước kết hợp máy tập thể dục', 'may-loc-nuoc-ket-hop-may-tap-the-duc', 'Ý tưởng về chiếc máy lọc nước kết hợp với tập thể dục đã được hiện thực hóa.Những ngày gần đây tại hồ Ngọc Khánh', '<div style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;\">\r\n<div style=\"margin: 0px; padding: 0px; line-height: 21px;\">\r\n<div style=\"margin: 0px 0px 5px; padding: 0px; line-height: 21px;\"><strong>&Yacute; tưởng về chiếc&nbsp;<a href=\"http://safure.vn/\" style=\"margin: 0px; padding: 0px; text-decoration-line: none;\">m&aacute;y lọc nước</a>&nbsp;kết hợp với tập thể dục đ&atilde; được hiện thực h&oacute;a.Những ng&agrave;y gần đ&acirc;y tại hồ Ngọc Kh&aacute;nh</strong></div>\r\n\r\n<p>Vấn nạn &ocirc; nhiễm m&ocirc;i trường nước tại c&aacute;c hồ ở H&agrave; Nội đang l&agrave; một thực trạng đ&aacute;ng b&aacute;o động, khi m&agrave; hầu hết c&aacute;c hồ ở nội th&agrave;nh đều &ocirc; nhiễm nặng. Những chương tr&igrave;nh cải tạo nguồn nước hồ được th&agrave;nh phố H&agrave; Nội tiến h&agrave;nh thường xuy&ecirc;n. Nhưng cũng cần phải c&oacute; sự chung tay bằng&nbsp;<a href=\"http://safure.vn/\" style=\"margin: 0px; padding: 0px; text-decoration-line: none;\">những h&agrave;nh động nhỏ để bảo vệ nguồn nước</a>&nbsp;của người d&acirc;n thủ đ&ocirc;.</p>\r\n\r\n<p><span style=\"font-size:12px\">Hai chiếc m&aacute;y lọc nước đặt tại ven hồ nh&igrave;n chẳng kh&aacute;c g&igrave; chiếc m&aacute;y chạy bộ c&aacute; nh&acirc;n. Cũng với những bộ phận, những động t&aacute;c bằng tay v&agrave; ch&acirc;n kết hợp</span></p>\r\n\r\n<p>Nguy&ecirc;n l&yacute; hoạt động của chiếc m&aacute;y dựa tr&ecirc;n lực đạp của người tập, nước trong hồ sẽ được h&uacute;t l&ecirc;n đổ v&agrave;o một bể lọc trồng thủy tr&uacute;c với c&aacute;c lớp c&aacute;t, c&aacute;c chất c&oacute; khả năng hấp thụ chất hữu cơ kh&aacute;c. Được thiết kế kh&aacute; nhỏ gọn, để nổi tr&ecirc;n mặt hồ n&ecirc;n kh&ocirc;ng l&agrave;m mất mỹ quan khu vực, kh&ocirc;ng chiếm diện t&iacute;ch ven hồ.</p>\r\n\r\n<p>Sauk hi được lọc v&agrave; lắng cặn, nước sẽ theo đường ống kh&aacute;c chảy ngược lại hồ. Với chiếc m&aacute;y n&agrave;y sẽ g&oacute;p phần tiết kiệm đ&aacute;ng kể chi ph&iacute; để cải tạo v&agrave; l&agrave;m sạch hồ. C&ugrave;ng với đ&oacute; tạo th&oacute;i quen bảo vệ m&ocirc;i trường cho mọi người.</p>\r\n\r\n<p>L&agrave; s&aacute;ng tạo của nh&oacute;m nghi&ecirc;n cứu Viện nước, tưới ti&ecirc;u m&ocirc;i trường. &Yacute; tưởng n&agrave;y đ&atilde; vượt qua hơn 90 &yacute; tưởng kh&aacute;c để gi&agrave;nh 1 trong 6 giải thưởng xuất sắc s&aacute;ng tạo v&igrave; m&ocirc;i trường do Hội đồng Anh tổ chức năm 2011 v&agrave; được lựa chọn ứng dụng v&agrave;o thực tiễn. Chiếc m&aacute;y l&uacute;c đầu được chế tạo v&agrave;o mục đ&iacute;ch ph&aacute;t điện nhưng sau đ&oacute; được cải tiến th&agrave;nh m&aacute;y lọc nước hồ.&nbsp;</p>\r\n\r\n<p>Chiếc m&aacute;y tập thể dục c&ocirc;ng cộng n&agrave;y thu h&uacute;t rất đ&ocirc;ng người d&acirc;n sinh sống quanh đ&acirc;y. C&oacute; những h&ocirc;m người d&acirc;n c&ograve;n phải&hellip; xếp h&agrave;ng để chờ được tập thể dục với m&aacute;y lọc nước. Những người d&acirc;n hay tập thể dục ở hồ Ngọc Kh&aacute;nh &ldquo;bật m&iacute;&rdquo;, so với m&aacute;y tập chạy bộ c&aacute; nh&acirc;n, tập với m&aacute;y lọc nước sẽ mệt hơn một ch&uacute;t, do phải &ldquo;guồng&rdquo; nước l&ecirc;n, nhưng ai cũng h&agrave;o hứng v&igrave; một c&ocirc;ng đ&ocirc;i việc.</p>\r\n\r\n<p><br />\r\nThời điểm hiện tại, m&ocirc; h&igrave;nh m&aacute;y lọc nước ki&ecirc;m tập thể dục mới chỉ được lắp đặt th&iacute; điểm tại 2 điểm hồ ở H&agrave; Nội l&agrave; hồ Ngọc Kh&aacute;nh v&agrave; hồ Thanh Nh&agrave;n.</p>\r\n\r\n<p>Hy vọng trong tương lai những chiếc m&aacute;y lọc nước đa năng như thế n&agrave;y sẽ c&ograve;n tiếp tục được nh&acirc;n rộng ra những khu vực kh&aacute;c tại H&agrave; Nội v&agrave; nhiều v&ugrave;ng kh&aacute;c. Thật l&agrave; một c&ocirc;ng đ&ocirc;i việc nếu ch&uacute;ng ta biết tự m&igrave;nh bảo vệ m&ocirc;i trường v&agrave; gi&aacute;o dục cho con ch&aacute;u sau n&agrave;y.</p>\r\n\r\n<p>Nguồn: Sưu tầm</p>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div style=\"margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;\">&nbsp;</div>\r\n', '1494141693dsc_0315_btpo.jpg', 3, 1, 1, '2017-09-08 05:58:05', NULL),
(4, 'Công nghệ lọc nước biển mới', 'cong-nghe-loc-nuoc-bien-moi', 'Phải hoạt động trên các vùng đất xa xôi, xa mạc hay phải di chuyển trên những chuyến hải trình hàng trăm ngày trên đại dương của quân đội Mỹ', '<div>\r\n<div style=\"margin: 0px 0px 5px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: justify;\"><strong>Phải hoạt động tr&ecirc;n c&aacute;c v&ugrave;ng đất xa x&ocirc;i, xa mạc hay phải di chuyển tr&ecirc;n những chuyến hải tr&igrave;nh h&agrave;ng trăm ng&agrave;y tr&ecirc;n đại dương của qu&acirc;n đội Mỹ...</strong></div>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><strong>Hệ thống lọc nước biển của qu&acirc;n đội Mỹ</strong></span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Qu&acirc;n đội Mỹ hiểu r&otilde; điều n&agrave;y v&agrave; ng&agrave;nh hậu cần của đội qu&acirc;n mạnh nhất thế giới cũng đang c&oacute; những kế hoạch đ&aacute;p ứng nhu cầu nước uống v&agrave; sinh hoạt tối thiểu cho mỗi l&iacute;nh Mỹ l&agrave; 3 gallon nước mỗi ng&agrave;y (mỗi gallon bằng 3,7 l&iacute;t), đặc biệt trong bối cảnh ng&acirc;n s&aacute;ch v&agrave; chi ti&ecirc;u quốc ph&ograve;ng của nước n&agrave;y đang bị cắt giảm mạnh.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Người ta t&iacute;nh to&aacute;n rằng để vận chuyển v&agrave; đ&aacute;p ứng nhu cầu nước uống cho l&iacute;nh Mỹ đ&oacute;ng ở địa b&agrave;n xa căn cứ c&oacute; chi ph&iacute; tốn k&eacute;m kh&ocirc;ng kh&aacute;c g&igrave; việc vận chuyển nhi&ecirc;n liệu cho c&aacute;c phương tiện qu&acirc;n sự hoạt động.<br />\r\n<br />\r\nHơn thế nữa, việc vận chuyển nước cũng nguy hiểm kh&ocirc;ng k&eacute;m vận chuyển nhi&ecirc;n liệu. C&aacute;i gi&aacute; phải trả đ&ocirc;i khi l&agrave; cả mạng sống của c&aacute;c binh sỹ l&agrave;m nhiệm vụ &aacute;p tải v&agrave; ph&acirc;n ph&aacute;t nước.<br />\r\n<br />\r\nHiện Bộ Quốc ph&ograve;ng Mỹ chủ yếu đang dựa v&agrave;o một số chủng loại m&aacute;y lọc nước để sản xuất nước sạch d&ugrave;ng cho sinh hoạt ngay tại c&aacute;c khu vực bản địa nơi c&oacute; đ&ocirc;ng binh sỹ Mỹ đ&oacute;ng qu&acirc;n v&agrave; ch&uacute;ng sử dụng c&aacute;c nguồn nước ngay tại những địa phương n&agrave;y.<br />\r\n<br />\r\nMặc d&ugrave; phần n&agrave;o c&oacute; thể hỗ trợ c&aacute;c đơn vị qu&acirc;n đội đ&oacute;ng qu&acirc;n tr&ecirc;n địa b&agrave;n xa căn cứ c&oacute; thể chủ động sản xuất nước sạch nhưng c&aacute;c hệ thống lọc n&agrave;y tồn tại nhiều yếu điểm, đặc biệt l&agrave; về k&iacute;ch thước, trọng lượng v&agrave; phải c&oacute; nguồn năng lượng mới hoạt động được.<br />\r\n<br />\r\nCh&iacute;nh v&igrave; thế n&ecirc;n vấn đề n&agrave;y ảnh hưởng đến qu&aacute; tr&igrave;nh ho&agrave;n th&agrave;nh sứ mệnh của c&aacute;c đơn vị qu&acirc;n đội Mỹ.</span></p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; line-height: 21px; clear: both;\"><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Hiện nay, qu&acirc;n đội Mỹ đ&atilde; bắt đầu thử nhiệm hệ thống lọc nước hạng nhẹ&nbsp; (Lightweight Water Purifier - LWP) d&ugrave;ng cho lục qu&acirc;n. Thiết bị n&agrave;y c&oacute; khả năng sản xuất được 75 gallon nước sạch mỗi giờ, trong đ&oacute; nước nguồn l&agrave; nước biển mặn.</span></div>\r\n\r\n<p><br />\r\n<span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Tuy nhi&ecirc;n, thiết bị n&agrave;y cũng vẫn c&oacute; những yếu điểm tương tư như k&iacute;ch thước nặng (2.000 pound), phải d&ugrave;ng m&aacute;y ph&aacute;t điện 3KW v&agrave; nếu tr&ecirc;n bộ cũng phải d&ugrave;ng một chiếc Humvee để chở to&agrave;n bộ hệ thống n&agrave;y.<br />\r\n<br />\r\nHiện Cơ quan nghi&ecirc;n cứu cải tiến quốc ph&ograve;ng Mỹ DARPA đ&atilde; c&oacute; s&aacute;ng kiến sử dụng c&aacute;c vật liệu v&agrave; c&ocirc;ng nghệ mới (MANTRA) để chế tạo c&aacute;c hệ thống lọc nước thế hệ mới để trang bị cho lực lượng hải v&agrave; lục qu&acirc;n Mỹ.<br />\r\n<br />\r\nMặc d&ugrave; chưa c&ocirc;ng bố chi tiết nhưng những tiết lộ đầu ti&ecirc;n cho biết hệ thống mới n&agrave;y chỉ nặng 400 pound (mỗi pound Mỹ nặng khoảng 0,45kg) với khả năng lọc nước biển si&ecirc;u khỏe cộng với việc ti&ecirc;u thụ năng lượng chỉ khoảng 1 nửa c&aacute;c hệ thống đang d&ugrave;ng của Lục qu&acirc;n Mỹ hiện nay.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><strong>Biển-Nguồn nước ngọt v&ocirc; tận</strong></span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Tuy nhi&ecirc;n, tr&ecirc;n Tr&aacute;i đất, nước biển ng&agrave;y c&agrave;ng đ&oacute;ng vai tr&ograve; quan trọng trong việc cung cấp nước uống do việc ph&aacute;t triển c&aacute;c nguồn nước ngọt tự nhi&ecirc;n bị hạn chế. Theo khảo s&aacute;t của c&aacute;c tổ chức quốc tế, 97,5% nước tr&ecirc;n Tr&aacute;i đất l&agrave; nước biển v&agrave; kh&ocirc;ng hơn 2,5% l&agrave; nước ngọt. Ngo&agrave;i ra, phần lớn nước ngọt được dự trữ trong c&aacute;c s&ocirc;ng băng, tảng băng v&agrave; dưới l&ograve;ng đất. Nước m&agrave; con người c&oacute; thể sử dụng dễ d&agrave;ng chẳng hạn như nước trong s&ocirc;ng v&agrave; hồ chỉ chiếm 0,01% tổng lượng nước ngọt. Trong khi đ&oacute;, d&acirc;n số to&agrave;n cầu tăng tới s&aacute;u tỷ người v&agrave;o năm 2000 v&agrave; sẽ đạt t&aacute;m tỷ v&agrave;o năm 2025. 3,5 tỷ người trong số n&agrave;y chắc chắn sẽ đối mặt với t&igrave;nh trạng thiếu nước.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Đ&atilde; c&oacute; nhiều nh&agrave; m&aacute;y biến nước biển th&agrave;nh nước ngọt tại Trung Đ&ocirc;ng (Israel, Ảrập X&ecirc;&uacute;t), Địa Trung Hải (Malta), ch&acirc;u Mỹ, Nam &Acirc;u, Caribbean, Nhật Bản, quần đảo Channel, đảo Tenerife v&agrave; Gran Canaria - nơi nguồn nước tự nhi&ecirc;n rất hiếm do lượng mưa thấp.&nbsp;Israel&nbsp;v&agrave; Ả-Rập X&ecirc;-&uacute;t phải phụ thuộc nhiều v&agrave;o những nh&agrave; m&aacute;y như vậy để cấp nước cho người d&acirc;n trong khi c&aacute;c bang&nbsp;Florida&nbsp;v&agrave;&nbsp;California&nbsp;của Mỹ cũng bắt đầu x&acirc;y dựng nh&agrave; m&aacute;y lọc nước biển. 18 nh&agrave; m&aacute;y kiểu n&agrave;y đang được xem x&eacute;t x&acirc;y dựng tại&nbsp;California.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Trong những thập kỷ 1960-1970, c&acirc;u trả lời cho t&igrave;nh trạng thiếu nước l&agrave; x&acirc;y dựng nhiều hồ chứa hơn. Tuy nhi&ecirc;n, gi&aacute; đất gia tăng đ&atilde; l&agrave;m cho c&aacute;c c&ocirc;ng ty nước thương mại kh&ocirc;ng thể lựa chọn giải ph&aacute;p n&agrave;y. Khử muối trong nước biển l&agrave; một giải ph&aacute;p tương đối mới. N&oacute; bắt nguồn từ Trung Đ&ocirc;ng v&agrave;o những năm 1980 v&agrave; 1990. Trong tổng số hơn 7.500 nh&agrave; m&aacute;y khử muối đang hoạt động tr&ecirc;n to&agrave;n thế giới, 60% nằm tại Trung Đ&ocirc;ng với tổng c&ocirc;ng suất 16 tỷ l&iacute;t nước mỗi ng&agrave;y.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><strong>Tr&iacute;ch: Sưu tầm</strong></span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><span style=\"font-size:12px\">Ch&uacute;ng ta c&oacute; thể thấy tầm quan trọng của nguồn nước với đời sống con người như thế n&agrave;o. Hơn ai hết ch&uacute;ng ta cần phải biết bảo vệ nguồn nước ch&uacute;ng ta đang sử dụng. Đừng qu&aacute; lạm dụng cũng như c&oacute; t&aacute;c động l&agrave;m ảnh hưởng tới nguồn nước. Chỉ c&oacute; thế ch&uacute;ng ta mới c&oacute; thể m&atilde;i y&ecirc;n t&acirc;m về sức khỏe của m&igrave;nh.</span></span></p>\r\n</div>\r\n', '1494141829Sorek-Overview-1440604845_680x0.jpg', 4, 1, NULL, '2017-05-07 09:23:49', NULL),
(5, 'Những hành động nhỏ để bảo vệ nguồn nước', 'nhung-hanh-dong-nho-de-bao-ve-nguon-nuoc', 'Lượng nước chiếm hơn 97 % bề mặt trái đất nhưng lượng nước có thể dùng cho sinh hoạt và sản xuất lại chỉ chiếm khoảng 3%', '<div>\r\n<div style=\"margin: 0px 0px 5px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: justify;\"><strong>Lượng nước chiếm hơn 97 % bề mặt tr&aacute;i đất nhưng lượng nước c&oacute; thể d&ugrave;ng cho sinh hoạt v&agrave; sản xuất lại chỉ chiếm khoảng 3%.</strong></div>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Nước l&agrave; nguồn t&agrave;i nguy&ecirc;n v&ocirc; gi&aacute; của nh&acirc;n loại, nhưng nguồn t&agrave;i nguy&ecirc;n n&agrave;y hiện đang bị t&aacute;c động nghi&ecirc;m trọng với t&igrave;nh trạng &ocirc; nhiễm nguồn nước đang ng&agrave;y c&agrave;ng gia tăng như hiện nay.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Thời gian qua, Việt Nam tham gia nhiều hoạt động quốc tế về bảo vệ nguồn t&agrave;i nguy&ecirc;n nước, ph&ograve;ng chống biến đổi kh&iacute; hậu v&agrave; nước biển d&acirc;ng. Mặc d&ugrave; vậy, &ocirc; nhiễm m&ocirc;i trường, gia tăng d&acirc;n số, ph&aacute;t triển n&oacute;ng kinh tế - x&atilde; hội đang khiến hệ thống s&ocirc;ng, hồ chứa nước nước ta suy kiệt.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Thuộc nh&oacute;m quốc gia thiếu nước</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">L&agrave; quốc gia c&oacute; mạng lưới s&ocirc;ng ng&ograve;i d&agrave;y đặc v&agrave; lượng mưa trung b&igrave;nh l&ecirc;n đến 1500 &ndash; 2000 mm/năm, tuy nhi&ecirc;n, Việt Nam vẫn thuộc nh&oacute;m quốc gia thiếu nước do lượng nước mặt b&igrave;nh qu&acirc;n đầu người thấp hơn chỉ ti&ecirc;u 4.000 m3/năm/người của Hội T&agrave;i nguy&ecirc;n nước quốc tế.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Theo một khảo s&aacute;t gần đ&acirc;y, hai x&atilde; Hưng Thạnh v&agrave; Thạnh T&acirc;n (T&acirc;n Phước, Tiền Giang) c&oacute; hơn 70% d&acirc;n cư (1.300 hộ) kh&ocirc;ng c&oacute; nước sạch d&ugrave;ng cho sinh hoạt h&agrave;ng ng&agrave;y. Do nguồn nước nhiễm ph&egrave;n v&agrave; vi sinh nặng, c&aacute;c giếng nước muốn sử dụng được phải s&acirc;u hơn 400 m&eacute;t, tốn nhiều kinh ph&iacute; n&ecirc;n người d&acirc;n buộc phải d&ugrave;ng nước s&ocirc;ng trong sinh hoạt &ocirc; nhiễm.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Thống k&ecirc; của Bộ Y tế v&agrave; Bộ TN&amp;MT cho thấy, trung b&igrave;nh mỗi năm nước ta c&oacute; khoảng 9.000 người tử vong v&igrave; nguồn nước v&agrave; điều kiện vệ sinh k&eacute;m.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Theo c&aacute;c tổ chức quốc tế, ngưỡng khai th&aacute;c t&agrave;i nguy&ecirc;n nước được ph&eacute;p giới hạn trong phạm vi 30% lượng d&ograve;ng chảy. Nhưng hiện nay, hầu hết c&aacute;c tỉnh miền Trung v&agrave; T&acirc;y Nguy&ecirc;n đ&atilde; v&agrave; đang khai th&aacute;c tr&ecirc;n 50% lượng d&ograve;ng chảy, l&agrave;m suy tho&aacute;i nghi&ecirc;m trọng nước tr&ecirc;n c&aacute;c lưu vực s&ocirc;ng lớn như s&ocirc;ng Hồng, Th&aacute;i B&igrave;nh v&agrave; s&ocirc;ng Đồng Nai.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">H&agrave;nh động đơn giản để g&igrave;n giữ nguồn nước</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Để giải quyết &ocirc; nhiễm nước, c&aacute;c chuy&ecirc;n gia nghi&ecirc;n cứu m&ocirc;i trường nước đề xuất cần lập h&agrave;nh lang bảo vệ nước, gồm hồ chứa thủy điện, thủy lợi; hồ tự nhi&ecirc;n, nh&acirc;n tạo ở c&aacute;c đ&ocirc; thị, khu d&acirc;n cư; hồ, ao lớn c&oacute; chức năng điều h&ograve;a; đầm, đầm ph&aacute;; s&ocirc;ng, suối, k&ecirc;nh, rạch l&agrave; nguồn cấp nước, trục ti&ecirc;u nước&hellip; Tại c&aacute;c địa phương, UBND tỉnh sẽ chịu tr&aacute;ch nhiệm cắm mốc chỉ giới v&agrave; quản l&yacute; h&agrave;nh lang bảo vệ nguồn nước, đồng thời quản l&yacute; chặt chẽ việc xả thải v&agrave;o nguồn nước.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Với c&aacute;c doanh nghiệp, c&aacute; nh&acirc;n, một h&agrave;nh động nhỏ cũng c&oacute; thể g&oacute;p phần l&agrave;m sạch nguồn nước. Bảo vệ s&ocirc;ng ng&ograve;i, k&ecirc;nh rạch, giảm thiểu &ocirc; nhiễm do r&aacute;c thải được xem l&agrave; h&agrave;nh động g&igrave;n giữ nguồn nước đơn giản nhưng chưa được cộng đồng quan t&acirc;m đ&uacute;ng mức.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">T&igrave;nh nguyện vi&ecirc;n nhặt r&aacute;c thải ở k&ecirc;nh, rạch</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">C&aacute;c t&igrave;nh nguyện vi&ecirc;n VBL nhặt r&aacute;c tại k&ecirc;nh, rạch</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Chương tr&igrave;nh &quot;1 ph&uacute;t tiết kiệm - triệu niềm vui&quot; do C&ocirc;ng ty TNHH Nh&agrave; m&aacute;y Bia Việt Nam (VBL) ph&aacute;t động tại Tiền Giang (ng&agrave;y 5/6) v&agrave; TP HCM (ng&agrave;y 11/6) vừa qua. Với 2 đợt triển khai chương tr&igrave;nh tại Tiền Giang v&agrave; TP HCM, đ&atilde; c&oacute; gần 200 nh&acirc;n vi&ecirc;n VBL tham gia với vai tr&ograve; t&igrave;nh nguyện vi&ecirc;n, c&ugrave;ng chung tay dọn dẹp vệ sinh dọc bờ k&ecirc;nh khu vực x&atilde; Thạnh T&acirc;n (huyện T&acirc;n Phước, Tiền Giang) v&agrave; phường Thạnh Xu&acirc;n (quận 12, TP HCM). Bảo vệ s&ocirc;ng ng&ograve;i, k&ecirc;nh rạch, giảm thiểu &ocirc; nhiễm do r&aacute;c thải được xem l&agrave; h&agrave;nh động g&igrave;n giữ nguồn nước đơn giản nhưng chưa được cộng đồng quan t&acirc;m đ&uacute;ng mức.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Những h&agrave;nh động đơn giản tưởng trừng như nhỏ b&eacute; nhưng lại c&oacute; t&aacute;c dụng lớn để c&ugrave;ng nhau tập hợp th&agrave;nh những biện ph&aacute;p bảo vệ nguồn nước của ch&uacute;ng ta.</span></p>\r\n</div>\r\n', '1525104100a5c04f69be6852360b79 (1).jpg', 5, 1, 0, '2018-04-30 18:01:40', NULL),
(6, 'Uống nước mưa có thực sự tốt', 'uong-nuoc-mua-co-thuc-su-tot', 'Nước mưa có thể được sử dụng như nước uống. Nước mưa cũng là nguồn cung cấp nước cho các loại cây trồng. Sau khi mưa, đa số người đều cảm thấy dễ chịu, hiện tượng này được giải thích là do lượng ion mang điện tích âm tăng lên, tuy vậy nếu mưa kéo dài', '<div>\r\n<div style=\"margin: 0px 0px 5px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: justify;\"><strong>Trong c&aacute;c loại nước lấy từ tự nhi&ecirc;n, ngo&agrave;i nước sạch đ&atilde; được xử l&yacute; ở c&aacute;c nh&agrave; m&aacute;y...</strong></div>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Nước mưa c&oacute; thể được sử dụng như nước uống. Nước mưa cũng l&agrave; nguồn cung cấp nước cho c&aacute;c loại c&acirc;y trồng. Sau khi mưa, đa số người đều cảm thấy dễ chịu, hiện tượng n&agrave;y được giải th&iacute;ch l&agrave; do lượng ion mang điện t&iacute;ch &acirc;m tăng l&ecirc;n, tuy vậy nếu mưa k&eacute;o d&agrave;i nhiều ng&agrave;y th&igrave; do độ ẩm tăng cao th&igrave; lại g&acirc;y cảm gi&aacute;c kh&oacute; chịu.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><strong>C&oacute; thể uống nước mưa?</strong></span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Theo c&aacute;c nghi&ecirc;n cứu đ&aacute;nh gi&aacute; những&nbsp;người bị gout, phong h&agrave;n thấp, suy tim, thiểu năng động mạch v&agrave;nh, xơ vữa động mạch, rối loạn ti&ecirc;u h&oacute;a th&igrave; kh&ocirc;ng n&ecirc;n uống nước qu&aacute; lạnh, nhất l&agrave; uống trong bữa ăn.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Nước c&oacute; vai tr&ograve; quan trọng trong cơ thể con người v&igrave; n&oacute; chiếm tới 45%-60% trọng lượng cơ thể. N&oacute; cũng l&agrave; th&agrave;nh phần chủ yếu của tế b&agrave;o v&agrave; c&aacute;c tổ chức kh&aacute;c, l&agrave;m m&ocirc;i trường trung gian cho c&aacute;c phản ứng h&oacute;a học diễn ra trong cơ thể con người trong qu&aacute; tr&igrave;nh sống.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><strong>Thừa thiếu đều kh&ocirc;ng tốt</strong></span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Mỗi ng&agrave;y ch&uacute;ng ta cần từ 40 đến 50 ml/kg c&acirc;n nặng. Do vậy h&agrave;ng ng&agrave;y ch&uacute;ng ta cần khoảng 2-3 l&iacute;t nước. Ch&uacute;ng được bổ xung từ c&aacute;c nguồn kh&aacute;c nhau như nước uống, từ thức ăn, từ c&aacute;c phản ứng chuyển h&oacute;a ở tế b&agrave;o. C&aacute;c nh&agrave; khoa học khuy&ecirc;n rằng h&agrave;ng ng&agrave;y cần bổ xung một lượng nước đủ b&ugrave; lượng nước b&agrave;i tiết để đảm bảo cần bằng trong trao đổi nước h&agrave;ng ng&agrave;y của cơ thể, duy tr&igrave; cuộc sống b&igrave;nh thường.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">V&agrave;o mỗi buổi s&aacute;ng sớm sau khi đ&aacute;nh răng n&ecirc;n uống chừng 0,3 l&iacute;t nước đun s&ocirc;i để nguội. Việc n&agrave;y gi&uacute;p tinh thần tỉnh t&aacute;o, k&iacute;ch hoạt c&aacute;c hoạt động của hệ tim mạch, hệ ti&ecirc;u h&oacute;a, hệ tiết niệu v&agrave; giống như một cơ chế lọc rửa cơ thể sau 1 đ&ecirc;m ngừng hoạt động để c&aacute;c bộ m&aacute;y hoạt động.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Trong cả ng&agrave;y n&ecirc;n uống nước thường xuy&ecirc;n v&agrave;o l&uacute;c l&agrave;m việc&nbsp; từ 1-1,5 l&iacute;t v&agrave; n&ecirc;n uống th&agrave;nh nhiều đợt kh&aacute;c nhau. &nbsp;C&oacute; thể d&ugrave;ng nước s&ocirc;i để nguội, nước lọc, nước kho&aacute;ng, nước tr&agrave;, nước &eacute;p tr&aacute;i c&acirc;y, c&aacute;c loại sữa... nhưng lưu &yacute; người c&oacute; thể tạng h&agrave;n hay lạnh bụng, dễ ti&ecirc;u chảy th&igrave; n&ecirc;n uống nước ấm, c&oacute; thể th&ecirc;m &iacute;t gừng để uống.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Nếu muốn giải nhiệt th&igrave; c&oacute; thể d&ugrave;ng nước m&aacute;t nhưng kh&ocirc;ng uống nước đ&aacute; lạnh v&igrave; sẽ g&acirc;y bất lợi cho răng, miệng, hầu họng, dạ d&agrave;y. Người bị bệnh gout, phong h&agrave;n thấp hay đau nhức c&aacute;c khớp, suy tim, thiểu năng động mạch v&agrave;nh, xơ vữa động mạch, rối loạn ti&ecirc;u h&oacute;a... th&igrave; kh&ocirc;ng n&ecirc;n uống nước qu&aacute; lạnh, nhất l&agrave; uống trong bữa ăn.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">V&agrave;o buổi chiều tối c&oacute; thể d&ugrave;ng nướcdưới dạng nước canh (rau, củ, quả), sữa c&aacute;c loại, ch&egrave; tr&aacute;i c&acirc;y... để gi&uacute;p dễngủ. Trước khi đi ngủ, n&ecirc;n uống 1/2 đến 1 ly nước (ngoại trừ những người hay bị tiểu đ&ecirc;m).</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Nếu uống kh&ocirc;ng đủ nước hoặc cơ thểv&igrave; một l&yacute; do n&agrave;o đ&oacute; m&agrave; bị mất nhiều nước (đổ nhiều mồ h&ocirc;i, n&ocirc;n mửa, ti&ecirc;u chảy,mất m&aacute;u...) m&agrave; kh&ocirc;ng kịp b&ugrave; đủ th&igrave; chức năng hoạt động của thận suy yếu, t&oacute;c dễbị g&atilde;y rụng, da kh&ocirc;, nhăn nheo, người mệt mỏi, nhức đầu, ch&oacute;ng mặt, giảm tr&iacute;nhớ, mất tập trung, dễ bị t&aacute;o b&oacute;n, sỏi thận, sỏi mật, đau nhức c&aacute;c khớp, ngườicao tuổi dễ bị cườm mắt. Ngược lại, nếu uống vượt xa y&ecirc;u cầu của cơ thể th&igrave; m&aacute;uv&agrave; c&aacute;c chất trung gian sẽ lo&atilde;ng dẫn tới hiện tượng ngộ độc nước g&acirc;y cho&aacute;ng,nhức đầu, thậm ch&iacute; c&oacute; thể h&ocirc;n m&ecirc;, với người cao huyết &aacute;p th&igrave; c&oacute; nguy cơ bị đột quỵ.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><strong>Nước mưa chưa chắc đ&atilde; tốt</strong></span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\"><span style=\"font-size:12px\">Nước sạch l&agrave; loại nước đảm bảo được c&aacute;c ti&ecirc;u chuẩn vệ &iacute;nh an to&agrave;n cần thiết: kh&ocirc;ng m&agrave;u, kh&ocirc;ng m&ugrave;i, kh&ocirc;ng vị, kh&ocirc;ng h&ograve;a lẫn được c&aacute;c tạp chất, c&aacute;c chất vi lượng độc hại.</span></span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Để đ&aacute;nh gi&aacute; một nguồn nước c&oacute; sạch hay kh&ocirc;ng th&igrave; cần dựa v&agrave;o c&aacute;c ti&ecirc;u chuẩn đ&aacute;nh gi&aacute; của c&aacute;c trung t&acirc;m kiểm định. Tuy nhi&ecirc;n kh&ocirc;ng phải l&uacute;c n&agrave;o cũng c&oacute; thể biết được ch&iacute;nh x&aacute;c kết quả. Trong tất cả c&aacute;c loại nước uống: Nước đun s&ocirc;i để nguội v&agrave; nước lọc vẫn được coi l&agrave; tốt nhất. C&oacute; rất nhiều loại m&aacute;y lọc nước hiện nay c&oacute; những chức năng lọc nước si&ecirc;u việt, lọc sạch vi khuẩn,vi rus, c&aacute;c h&oacute;a chất độc hại, asen, amip,&hellip;..</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Trước kia người ta thường cho rằng nước mưa l&agrave; một nguồn nước sạch, tuy nhi&ecirc;n đến thời điểm b&acirc;y giờ n&oacute; lại l&agrave; một trong những nguồn nước v&ocirc; c&ugrave;ng độc hại.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Bạn biết đ&oacute;, điều kiện m&ocirc;i trường kh&ocirc;ng kh&iacute; đang ng&agrave;y c&agrave;ng &ocirc; nhiễm bởi kh&oacute;i bụi từ c&aacute;c nh&agrave; m&aacute;y, khu c&ocirc;ng nghiệp, c&aacute;c h&oacute;a chất bay hơi. Gặp cơn mưa sẽ bị h&ograve;a tan v&agrave;o trong c&aacute;c giọt nước mưa v&igrave; vậy k&eacute;o theo mưa xuống l&agrave; h&agrave;ng ng&agrave;n chất độc hại, chất bụi bẩn.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">C&aacute;c nguồn bệnh nảy sinh từ việc sử dụng nguồn nước mưa bị &ocirc; nhiễm l&agrave; kết quả của việc sử dụng m&agrave; kh&ocirc;ng hay biết th&agrave;nh phần nước mưa c&oacute; những g&igrave;. Do đ&oacute;, để sử dụng nguồn nước mưa c&oacute; hiệu quả bạn n&ecirc;n hứng nước mưa sau 15p trời mưa v&agrave; kh&ocirc;ng hứng nước mưa dưới giọt tranh.</span></p>\r\n\r\n<p><span style=\"color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif\">Biết c&aacute;ch sử dụng nguồn nước mưa hợp l&yacute; sẽ gi&uacute;p ch&uacute;ng ta tr&aacute;nh được c&aacute;c nguy cơ bệnh.</span></p>\r\n</div>\r\n', '152510407098613ac7cbc627987ed7.jpg', 6, 1, 1, '2018-04-30 18:01:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tuvan`
--

CREATE TABLE `tuvan` (
  `id` int(11) NOT NULL,
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tuvan`
--

INSERT INTO `tuvan` (`id`, `name`, `alias`, `description`, `content`, `image`, `order`, `status`, `created`) VALUES
(1, 'Hoa mai Bình Định', 'hoa-mai-binh-dinh', '', '<p>Hoa mai b&igrave;nh định</p>\r\n', '1403765873300x215-7.png', NULL, 1, '2014-06-26 13:58:07'),
(2, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765906300x215-7.png', NULL, 1, '2014-06-26 13:58:26'),
(3, 'Hoa mai Bình Định 1', 'hoa-mai-binh-dinh-1', '', '<p>Hoa mai b&igrave;nh định 1</p>\r\n', '1403765977hoamai.jpg', NULL, 1, '2014-06-26 13:59:37'),
(4, 'Hoa mai Bình Định 2', 'hoa-mai-binh-dinh-2', '', '<p>Hoa mai b&igrave;nh định 2</p>\r\n', '1403765996300x215-7.png', NULL, 1, '2014-06-26 13:59:56'),
(5, 'b', 'b', 'a', '<p>a</p>\r\n', '1403766007hoamai.jpg', 3, 1, '2014-06-26 14:00:07'),
(6, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766016300x215-7.png', 1, 1, '2014-06-26 14:00:16'),
(7, 'test', 'test', 'abc', '<p>abc</p>\r\n', '1403766031hoamai.jpg', 1, 1, '2014-06-26 14:00:31'),
(8, 'test 3', 'test-3', 'test 3', '<p>test 3</p>\r\n', '1403766043300x215-7.png', 1, 1, '2014-06-26 14:00:43'),
(9, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766058hoamai.jpg', NULL, 1, '2014-06-26 14:00:58'),
(10, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766070300x215-7.png', NULL, 1, '2014-06-26 14:01:10'),
(11, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766079hoamai.jpg', NULL, 1, '2014-06-26 14:01:19'),
(12, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766088300x215-7.png', NULL, 1, '2014-06-26 14:01:28'),
(13, 'asdf', 'asdf', 'asdf', '<p>adf</p>\r\n', '1403766099300x215-7.png', NULL, 1, '2014-06-26 14:01:39'),
(15, 'teaasdfasdf', 'teaasdfasdf', 'asdfasdf', '<p>asdf</p>\r\n', '1403766113300x215-7.png', NULL, 1, '2014-06-26 14:01:53'),
(16, 'Tam', 'tam', 'test', '<p><img alt=\"\" src=\"http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg\" style=\"height:340px; width:509px\" /></p>\r\n', '1403766124hoamai.jpg', NULL, 1, '2014-06-26 14:02:11'),
(17, 'Tam adf', 'tam-adf', 'test', '<p><img alt=\"\" src=\"http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg\" style=\"height:340px; width:509px\" /></p>\r\n', '1403766143300x215-7.png', NULL, 1, '2014-06-26 17:04:03'),
(18, 'test 1', 'test-1', 'asdf', '<p><img alt=\"\" src=\"http://hoamai.tam/admin/uploads/images/image1.jpeg\" style=\"height:177px; width:284px\" /></p>\r\n', '1403766152hoamai.jpg', NULL, 1, '2014-06-26 14:02:32'),
(19, 'Tu van hoa mai', 'tu-van-hoa-mai', 'tu van hoa mai', '<p>Tu van hoa mai</p>\r\n', '1403841463hoamai.jpg', 1, 1, '2014-06-27 10:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `yii_app_cache`
--

CREATE TABLE `yii_app_cache` (
  `id` char(128) COLLATE utf8_unicode_ci NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `value` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yii_app_cache`
--

INSERT INTO `yii_app_cache` (`id`, `expire`, `value`) VALUES
('c129ca845132921fb63fe29af6e8c22e', 0, 0x613a323a7b693a303b733a38383a22613a313a7b733a33343a225969692e4353656375726974794d616e616765722e76616c69646174696f6e6b6579223b733a33323a223339666236323332343562323830636431626233326635663331363564303664223b7d223b693a313b4f3a32303a224346696c654361636865446570656e64656e6379223a363a7b733a383a2266696c654e616d65223b733a35363a222f4170706c69636174696f6e732f4d414d502f6874646f63732f686f616d61692f72756e74696d655f61646d696e2f73746174652e62696e223b733a31383a227265757365446570656e64656e7444617461223b623a303b733a32333a2200434361636865446570656e64656e6379005f68617368223b4e3b733a32333a2200434361636865446570656e64656e6379005f64617461223b693a313430323937343030333b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d7d),
('d0639903250639640a47e0cb7b97ac5b', 0, 0x613a323a7b693a303b613a323a7b693a303b613a31313a7b693a303b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a31303a22736974652f6c6f67696e223b733a31303a227265666572656e636573223b613a303a7b7d733a31323a22726f7574655061747465726e223b4e3b733a373a227061747465726e223b733a31323a222f5e6c6f67696e5c2f242f75223b733a383a2274656d706c617465223b733a353a226c6f67696e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a313b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a31323a227374617469632f696e646578223b733a31303a227265666572656e636573223b613a303a7b7d733a31323a22726f7574655061747465726e223b4e3b733a373a227061747465726e223b733a32333a222f5e735c2f283f503c766965773e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a383a22732f3c766965773e223b733a363a22706172616d73223b613a313a7b733a343a2276696577223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a323b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32353a226170695f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34353a222f5e6170695f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a3132333a222f5e6170695c2f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f283f503c70726d333e5c772b295c2f283f503c70726d343e5c772b295c2f283f503c70726d353e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a36303a226170692f3c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e2f3c70726d333e2f3c70726d343e2f3c70726d353e223b733a363a22706172616d73223b613a353a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b733a343a2270726d33223b733a333a225c772b223b733a343a2270726d34223b733a333a225c772b223b733a343a2270726d35223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a333b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32353a226170695f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34353a222f5e6170695f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a34383a222f5e6170695c2f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32353a226170692f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a343b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32393a22676174657761795f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34393a222f5e676174657761795f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a35323a222f5e676174657761795c2f283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32393a22676174657761792f3c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a353b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a31333a227370656369616c2f696e646578223b733a31303a227265666572656e636573223b613a303a7b7d733a31323a22726f7574655061747465726e223b4e3b733a373a227061747465726e223b733a32393a222f5e7370656369616c5c2f283f503c766965773e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a31343a227370656369616c2f3c766965773e223b733a363a22706172616d73223b613a313a7b733a343a2276696577223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a363b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a3130333a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f283f503c70726d333e5c772b295c2f283f503c70726d343e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a34393a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e2f3c70726d333e2f3c70726d343e223b733a363a22706172616d73223b613a343a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b733a343a2270726d33223b733a333a225c772b223b733a343a2270726d34223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a373b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a38383a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f283f503c70726d333e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a34323a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e2f3c70726d333e223b733a363a22706172616d73223b613a333a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b733a343a2270726d33223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a383b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a37333a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c70726d313e5c772b295c2f283f503c70726d323e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a33353a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c70726d313e2f3c70726d323e223b733a363a22706172616d73223b613a323a7b733a343a2270726d31223b733a333a225c772b223b733a343a2270726d32223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a393b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a35363a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f283f503c69643e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32363a223c636f6e74726f6c6c65723e2f3c616374696f6e3e2f3c69643e223b733a363a22706172616d73223b613a313a7b733a323a226964223b733a333a225c772b223b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d693a31303b4f3a383a224355726c52756c65223a31363a7b733a393a2275726c537566666978223b4e3b733a31333a226361736553656e736974697665223b4e3b733a31333a2264656661756c74506172616d73223b613a303a7b7d733a31303a226d6174636856616c7565223b4e3b733a343a2276657262223b4e3b733a31313a2270617273696e674f6e6c79223b623a303b733a353a22726f757465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a31303a227265666572656e636573223b613a323a7b733a31303a22636f6e74726f6c6c6572223b733a31323a223c636f6e74726f6c6c65723e223b733a363a22616374696f6e223b733a383a223c616374696f6e3e223b7d733a31323a22726f7574655061747465726e223b733a34313a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b29242f75223b733a373a227061747465726e223b733a34333a222f5e283f503c636f6e74726f6c6c65723e5c772b295c2f283f503c616374696f6e3e5c772b295c2f242f75223b733a383a2274656d706c617465223b733a32313a223c636f6e74726f6c6c65723e2f3c616374696f6e3e223b733a363a22706172616d73223b613a303a7b7d733a363a22617070656e64223b623a303b733a31313a22686173486f7374496e666f223b623a303b733a31343a220043436f6d706f6e656e74005f65223b4e3b733a31343a220043436f6d706f6e656e74005f6d223b4e3b7d7d693a313b733a33323a223538663630636433633666333031316435653138303835653266313764633161223b7d693a313b4e3b7d);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `advertise`
--
ALTER TABLE `advertise`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_pro`
--
ALTER TABLE `category_pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `congtrinh`
--
ALTER TABLE `congtrinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_cat`
--
ALTER TABLE `menu_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions_admin`
--
ALTER TABLE `sessions_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static`
--
ALTER TABLE `static`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuvan`
--
ALTER TABLE `tuvan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yii_app_cache`
--
ALTER TABLE `yii_app_cache`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertise`
--
ALTER TABLE `advertise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_pro`
--
ALTER TABLE `category_pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `congtrinh`
--
ALTER TABLE `congtrinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_cat`
--
ALTER TABLE `menu_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `static`
--
ALTER TABLE `static`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tuvan`
--
ALTER TABLE `tuvan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
