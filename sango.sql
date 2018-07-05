-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2018 at 04:38 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(1, 'Logo', 'logo', '1504931514logo_mocstyle.png', '', 1, 1, '2017-09-09 06:31:54', 1),
(12, 'Thương hiệu 1', 'thuong-hieu-1', '1494050411001.jpg', '', 7, 1, '2017-05-06 08:00:11', 1),
(13, 'Thương hiệu 2', 'thuong-hieu-2', '1494050399002.jpg', '', 7, 2, '2017-05-06 07:59:59', 1),
(14, 'Thương hiệu 3', 'thuong-hieu-3', '1494050389004.jpg', '', 7, 4, '2017-05-06 08:03:04', 1),
(15, 'Thương hiệu 4', 'thuong-hieu-4', '1494050377005.jpg', '', 7, 5, '2017-05-06 08:03:14', 1),
(16, 'Thương hiệu 5', 'thuong-hieu-5', '1494050366006.jpg', '', 7, 6, '2017-05-06 08:03:24', 1),
(21, 'Slide 2', 'slide-2', '1504841505slider2.jpg', NULL, 2, 2, '2017-09-08 05:31:45', 1),
(22, 'Thuong Hieu 6', 'thuong-hieu-6', '1494050559003.jpg', NULL, 7, 3, '2017-05-06 08:02:39', 1),
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
(6, 'Quảng cáo 2 [ Hình ảnh bên trái ]', 'quang-cao-2-[-hinh-anh-ben-trai-]', 1, NULL, '2015-08-12 09:17:23'),
(7, '[ Thương hiệu nỗi bật ]', '[-thuong-hieu-noi-bat-]', 1, NULL, '2015-08-12 09:17:49');

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
(1, 0, 'Sàn gỗ khuyến mãi', 'san-go-khuyen-mai', '1494051797banner-1.jpg', '14942243481494058009Banner-5.jpg', 1, 1, 1, 'Sàn gỗ khuyến mãi', 'san go khuyen mai', 'Sàn gỗ khuyến mãi', '2018-07-05 12:03:52'),
(2, 0, 'Sàn gỗ ngoài trời', 'san-go-ngoai-troi', '1494051812banner2.jpg', '14942241641494058009Banner-5.jpg', 0, 1, 2, 'Sàn gỗ ngoài trời', 'Sàn gỗ ngoài trời', 'Sàn gỗ ngoài trời', '2018-07-05 12:04:19'),
(3, 0, 'Sàn gỗ tự nhiên', 'san-go-tu-nhien', '1493966701banner-left3.png', '1493966702tainghe.png', 0, 1, 2, 'Sàn gỗ tự nhiên', 'Sàn gỗ tự nhiên', 'Sàn gỗ tự nhiên', '2018-07-05 12:04:45'),
(4, 0, 'Sàn gỗ công nghiệp', 'san-go-cong-nghiep', '1494051848banner3.jpg', '', 0, 1, 2, 'Sàn gỗ công nghiệp', 'Sàn gỗ công nghiệp', 'Sàn gỗ công nghiệp', '2018-07-05 12:05:49'),
(5, 0, 'Phụ kiện sàn gỗ', 'phu-kien-san-go', '1494057882banner3.jpg', '', 1, 1, 6, 'Phụ kiện sàn gỗ', 'Phụ kiện sàn gỗ', 'Phụ kiện sàn gỗ', '2018-07-05 12:06:45'),
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
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
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

INSERT INTO `product` (`id`, `cat_id`, `cat1_id`, `tag_id`, `name`, `masp`, `alias`, `description`, `content`, `image`, `price`, `baohanh`, `banchay`, `noibat`, `hot`, `order`, `status`, `created`) VALUES
(1, 1, 0, NULL, 'Xốp đá dán tường màu trắng', '003', 'xop-da-dan-tuong-mau-trang', 'Xốp đá dán tường màu trắng\r\nSử dụng được cho tườngbị bong tróc,ẩm mốc,tường xấu mà không cần xử lí hoặc sơn lại tường.', '<p>Sử dụng được cho tườngbị bong tr&oacute;c,ẩm mốc,tường xấu m&agrave; kh&ocirc;ng cần xử l&iacute; hoặc sơn lại tường.<br />\r\nXốp đ&aacute; d&aacute;n tường c&oacute; thể&nbsp;d&aacute;n được tr&ecirc;n: bề mặt tường, k&iacute;nh, gỗ, kim loại, inox, tường v&ocirc;i, tường m&oacute;c bẩn... Độ bền của sản phẩm cao v&igrave; sử dụng keo chuy&ecirc;n dụng của H&agrave;n Quốc n&ecirc;n rất chắc chắn</p>\r\n\r\n<p>Thi c&ocirc;ng đơn giản, bạn chỉ cần vệ sinh bề mặt bong tr&oacute;c v&agrave; d&aacute;n l&ecirc;n theo &yacute; th&iacute;ch của m&igrave;nh. Hoặc c&oacute; thể kết hợp với decal d&aacute;n tường để nh&agrave; th&ecirc;m đẹp nh&eacute;.</p>\r\n', '15049325643021d8852984c5da9c95.jpg', '85.000 VND', '2 NĂM', 1, 1, 1, NULL, 1, '2017-09-09 06:49:24'),
(2, 1, 0, NULL, 'Xốp đá dán tường màu hồng', '009', 'xop-da-dan-tuong-mau-hong', 'Xốp đá dán tường màu hồng', '<p>Sử dụng được cho tườngbị bong tr&oacute;c,ẩm mốc,tường xấu m&agrave; kh&ocirc;ng cần xử l&iacute; hoặc sơn lại tường.<br />\r\nXốp đ&aacute; d&aacute;n tường c&oacute; thể&nbsp;d&aacute;n được tr&ecirc;n: bề mặt tường, k&iacute;nh, gỗ, kim loại, inox, tường v&ocirc;i, tường m&oacute;c bẩn... Độ bền của sản phẩm cao v&igrave; sử dụng keo chuy&ecirc;n dụng của H&agrave;n Quốc n&ecirc;n rất chắc chắn</p>\r\n\r\n<p>Thi c&ocirc;ng đơn giản, bạn chỉ cần vệ sinh bề mặt bong tr&oacute;c v&agrave; d&aacute;n l&ecirc;n theo &yacute; th&iacute;ch của m&igrave;nh. Hoặc c&oacute; thể kết hợp với decal d&aacute;n tường để nh&agrave; th&ecirc;m đẹp nh&eacute;.</p>\r\n', '15049339827e99773386326a6c3323.jpg', '85.000 VND', ' 2 NĂM', 1, 1, 1, NULL, 1, '2017-09-09 07:13:02'),
(3, 1, 0, NULL, 'Xốp đá dán tường màu tím', '004', 'xop-da-dan-tuong-mau-tim', 'Xốp đá dán tường màu tím ', '<p>Sử dụng được cho tườngbị bong tr&oacute;c,ẩm mốc,tường xấu m&agrave; kh&ocirc;ng cần xử l&iacute; hoặc sơn lại tường.<br />\r\nXốp đ&aacute; d&aacute;n tường c&oacute; thể&nbsp;d&aacute;n được tr&ecirc;n: bề mặt tường, k&iacute;nh, gỗ, kim loại, inox, tường v&ocirc;i, tường m&oacute;c bẩn... Độ bền của sản phẩm cao v&igrave; sử dụng keo chuy&ecirc;n dụng của H&agrave;n Quốc n&ecirc;n rất chắc chắn</p>\r\n\r\n<p>Thi c&ocirc;ng đơn giản, bạn chỉ cần vệ sinh bề mặt bong tr&oacute;c v&agrave; d&aacute;n l&ecirc;n theo &yacute; th&iacute;ch của m&igrave;nh. Hoặc c&oacute; thể kết hợp với decal d&aacute;n tường để nh&agrave; th&ecirc;m đẹp nh&eacute;.</p>\r\n', '15049341546da04c0bbd0a5154081b.jpg', '85.000 VND', '2 NĂM', 1, 1, 0, NULL, 1, '2017-09-09 07:15:54'),
(4, 1, 0, NULL, 'Xốp đá dán tường màu đỏ', '002', 'xop-da-dan-tuong-mau-do', 'Xốp đá dán tường màu đỏ', '<p>Sử dụng được cho tườngbị bong tr&oacute;c,ẩm mốc,tường xấu m&agrave; kh&ocirc;ng cần xử l&iacute; hoặc sơn lại tường.<br />\r\nXốp đ&aacute; d&aacute;n tường c&oacute; thể&nbsp;d&aacute;n được tr&ecirc;n: bề mặt tường, k&iacute;nh, gỗ, kim loại, inox, tường v&ocirc;i, tường m&oacute;c bẩn... Độ bền của sản phẩm cao v&igrave; sử dụng keo chuy&ecirc;n dụng của H&agrave;n Quốc n&ecirc;n rất chắc chắn</p>\r\n\r\n<p>Thi c&ocirc;ng đơn giản, bạn chỉ cần vệ sinh bề mặt bong tr&oacute;c v&agrave; d&aacute;n l&ecirc;n theo &yacute; th&iacute;ch của m&igrave;nh. Hoặc c&oacute; thể kết hợp với decal d&aacute;n tường để nh&agrave; th&ecirc;m đẹp nh&eacute;.</p>\r\n', '1504934450cf5bcdfd3cfcd0a289ed.jpg', '85.000 VND', '2 NĂM', 0, 1, 0, NULL, 1, '2017-09-09 07:20:50'),
(5, 1, 0, NULL, 'Xốp đá dán tường màu xanh lá', '019', 'xop-da-dan-tuong-mau-xanh-la', 'Xốp đá dán tường màu xanh lá', '<p>Sử dụng được cho tườngbị bong tr&oacute;c,ẩm mốc,tường xấu m&agrave; kh&ocirc;ng cần xử l&iacute; hoặc sơn lại tường.<br />\r\nXốp đ&aacute; d&aacute;n tường c&oacute; thể&nbsp;d&aacute;n được tr&ecirc;n: bề mặt tường, k&iacute;nh, gỗ, kim loại, inox, tường v&ocirc;i, tường m&oacute;c bẩn... Độ bền của sản phẩm cao v&igrave; sử dụng keo chuy&ecirc;n dụng của H&agrave;n Quốc n&ecirc;n rất chắc chắn</p>\r\n\r\n<p>Thi c&ocirc;ng đơn giản, bạn chỉ cần vệ sinh bề mặt bong tr&oacute;c v&agrave; d&aacute;n l&ecirc;n theo &yacute; th&iacute;ch của m&igrave;nh. Hoặc c&oacute; thể kết hợp với decal d&aacute;n tường để nh&agrave; th&ecirc;m đẹp nh&eacute;.</p>\r\n', '15049345802ff673ef8dee61b038ff.jpg', '85.000 VND', '2 NĂM', 1, 0, 0, NULL, 1, '2017-09-09 07:23:00'),
(6, 1, 0, NULL, 'Xốp đá dán tường màu xanh dương', '001', 'xop-da-dan-tuong-mau-xanh-duong', 'Xốp đá dán tường màu xanh dương', '<p>Sử dụng được cho tườngbị bong tr&oacute;c,ẩm mốc,tường xấu m&agrave; kh&ocirc;ng cần xử l&iacute; hoặc sơn lại tường.<br />\r\nXốp đ&aacute; d&aacute;n tường c&oacute; thể&nbsp;d&aacute;n được tr&ecirc;n: bề mặt tường, k&iacute;nh, gỗ, kim loại, inox, tường v&ocirc;i, tường m&oacute;c bẩn... Độ bền của sản phẩm cao v&igrave; sử dụng keo chuy&ecirc;n dụng của H&agrave;n Quốc n&ecirc;n rất chắc chắn</p>\r\n\r\n<p>Thi c&ocirc;ng đơn giản, bạn chỉ cần vệ sinh bề mặt bong tr&oacute;c v&agrave; d&aacute;n l&ecirc;n theo &yacute; th&iacute;ch của m&igrave;nh. Hoặc c&oacute; thể kết hợp với decal d&aacute;n tường để nh&agrave; th&ecirc;m đẹp nh&eacute;.</p>\r\n', '150493477998613ac7cbc627987ed7.jpg', '85.000 VND', '2 NĂM', 1, 0, 0, NULL, 1, '2017-09-09 07:26:19'),
(7, 1, 0, NULL, 'Máy lọc nước safure 8 cấp lọc vỏ IQ', 'SE-108-IQ', 'may-loc-nuoc-safure-8-cap-loc-vo-iq', 'Máy lọc nước safure 8 cấp lọc vỏ IQ', '<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">\r\n<div style="margin: 0px 0px 0px auto; padding: 0px; line-height: 21px; clear: both;">\r\n<div id="ctl00_divcontent" style="margin: 0px 0px 0px auto; padding: 0px; line-height: 21px; clear: both;">\r\n<div style="margin: 0px; padding: 0px; line-height: 21px;">\r\n<p>H&atilde;ng sản xuất: SAFURE<br />\r\nModel: SE- 108-IQ</p>\r\n\r\n<p>Type: M&aacute;y lọc nước tinh khiết Si&ecirc;u Cao cấp R.O &nbsp;l&otilde;i, 7 cấp lọc,c&oacute; đồng hồ dầu to&nbsp;<br />\r\nM&agrave;ng R.O: 50 GDP (10-15 l&iacute;t/giờ)<br />\r\nNguồn điện: 220 Volt (50/60Hz).<br />\r\n&Aacute;p lực hoạt động: 5 -125 PSI<br />\r\nK&iacute;ch thước (mm): 440 x 330 x 250&nbsp;<br />\r\nThời hạn bảo h&agrave;nh: 02 năm theo Ti&ecirc;u chuẩn của ch&iacute;nh H&atilde;ng</p>\r\n&nbsp;\r\n\r\n<p>M&aacute;y lọc nước si&ecirc;u cao cấp&nbsp; R.O&nbsp;&nbsp;với cột tạo kho&aacute;ng cung cấp nước uống an to&agrave;n, tinh khiết với c&ocirc;ng nghệ thẩm thấu ngược R.O với chi ph&iacute; thấp m&agrave; hiệu quả cao. Đ&acirc;y l&agrave; loại m&aacute;y si&ecirc;u cao cấp được sử dụng trong c&aacute;c gia đ&igrave;nh. Nước sau khi lọc qua m&aacute;y R.O&nbsp; c&oacute; tỷ lệ c&acirc;n bằng ho&agrave;n hảo của c&aacute;c kho&aacute;ng chất cần thiết cho sự ph&aacute;t triển l&agrave;nh mạnh của cơ thể con người.<br />\r\n<br />\r\nM&aacute;y lọc nước tinh khiết si&ecirc;u cao cấp RO&nbsp;08 l&otilde;i, 08 cấp lọc&nbsp;gồm L&otilde;i Nanosilver&nbsp;với c&ocirc;ng nghệ tr&aacute;ng bạc, k&iacute;ch thước nanomet cực mạnh trong t&aacute;c dụng diệt khuẩn.&nbsp;Vật liệu bạc c&oacute; khả năng kh&aacute;ng khuẩn tự nhi&ecirc;n v&agrave; khả năng kh&aacute;ng nấm, n&oacute; hoạt động như một chất x&uacute;c t&aacute;c v&ocirc; hiệu ho&aacute; chức năng của c&aacute;c loại vi sinh vật g&acirc;y hại như vi r&uacute;t, vi khuẩn v&agrave; nấm; cần thiết cho qu&aacute; tr&igrave;nh trao đổi chất oxy v&agrave; ngăn chặn việc g&acirc;y hại đối với cơ thể con ngừơi.&nbsp;C&oacute; t&aacute;c dụng l&agrave;m cho nguồn nước của bạn sạch v&agrave; v&ocirc; tr&ugrave;ng,&nbsp;cung cấp nước uống an to&agrave;n, tinh khiết&nbsp;<br />\r\nNgo&agrave;i ra, c&ocirc;ng nghệ ti&ecirc;n tiến của cột Alkaline&nbsp;hiệu quả gấp 6+ lần so với cột Alkaline th&ocirc;ng thường. M&aacute;y lọc nước tinh khiết 08 l&otilde;i lọc l&agrave; một hệ thống lọc chất lượng cao c&acirc;p 08 giai đoạn lọc vượt trội đi k&egrave;m với l&otilde;i tạo kiềm Alkaline, để cung cấp tốt nhất trong phương ph&aacute;p lọc nước v&agrave; l&agrave;m c&acirc;n bằng độ pH cho nước uống. Sử dụng c&ocirc;ng nghệ thẩm thấu ngược RO với l&otilde;i tạo kiềm Alkaline thực sự c&oacute; thể loại bỏ 99,99% c&aacute;c chất g&acirc;y &ocirc; nhiễm v&agrave; cung cấp cho con người với nước uống kiềm c&oacute; lợi cho sức khỏe. C&acirc;n bằng độ PH với gi&aacute; trị 8,0 ~ 9,5, nước Kiềm (Alkaline) tốt hơn cho sức khỏe<br />\r\nMột cơ thể kiềm l&agrave; khi cơ thể bạn đang trong trạng th&aacute;i khỏe mạnh do đ&oacute; cho ph&eacute;p cơ thể để chống bệnh truyền nhiễm do vi khuẩn v&agrave; cũng như nhiều bệnh tật kh&aacute;c.</p>\r\n\r\n<p><strong><em>C&aacute;c t&iacute;nh năng v&agrave; thiết bị k&egrave;m theo</em></strong>:<br />\r\n- C&ocirc;ng suất lọc 10-15 l/giờ (50 GPD).<br />\r\n- B&igrave;nh &aacute;p ti&ecirc;u chuẩn NSF 12 L&iacute;t (3,2 gallon).<br />\r\n- Van b&igrave;nh &aacute;p.<br />\r\n- Cốc lọc ti&ecirc;u chuẩn 10&rdquo; (01 cốc trong suốt v&agrave; 02 cốc m&agrave;u xanh hoặc m&agrave;u trắng).<br />\r\n- Tay vặn cốc lọc.<br />\r\n- M&aacute;y bơm 125 PSI v&agrave; Adaptor.<br />\r\n- Van đ&oacute;ng ngắt tự động, van nước thải, van &aacute;p thấp, van &aacute;p cao.&nbsp;</p>\r\n\r\n<p>- V&ograve;i nước 03 c&aacute;nh.<br />\r\n- C&uacute;t nối ống dẫn nước đầu v&agrave;o.<br />\r\n- Van kh&oacute;a ống dẫn nước.<br />\r\n- D&acirc;y cấp v&agrave; dẫn nước.<br />\r\n- Hướng dẫn sử dụng, phiếu bảo h&agrave;nh ch&iacute;nh H&atilde;ng.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">&nbsp;</div>\r\n', '1494085449fuc4517_26.jpg', '4.450.000 VND', '2 NĂM', 0, 0, 0, NULL, 1, '2017-05-06 17:44:09'),
(8, 1, 0, NULL, 'Máy lọc nước thông minh 9 cấp lọc vỏ IQ', 'IRO-SE-109 IQ', 'may-loc-nuoc-thong-minh-9-cap-loc-vo-iq', 'Máy lọc nước thông minh 9 cấp lọc vỏ IQ', '<p>M&aacute;y lọc nước &nbsp;th&ocirc;ng minh c&oacute; chức năng tự b&aacute;o thay l&otilde;i lọc khi l&otilde;i bẩn ,tự vệ sinh m&agrave;ng lọc RO ,tự b&aacute;o c&aacute;c chế độ chạy của m&aacute;y .</p>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; clear: both;">\r\n<div style="margin: 0px; padding: 0px; line-height: 21px;">\r\n<div style="margin: 0px 0px 0px auto; padding: 0px; line-height: 21px; clear: both;">\r\n<div id="ctl00_divcontent" style="margin: 0px 0px 0px auto; padding: 0px; line-height: 21px; clear: both;">\r\n<div style="margin: 0px; padding: 0px; line-height: 21px;">\r\n<p>H&atilde;ng sản xuất:SAFURE&nbsp;<br />\r\nModel: IRO-SE-109</p>\r\n\r\n<p>Type: M&aacute;y lọc nước tinh khiết Si&ecirc;u Cao cấp R.O 8 l&otilde;i, 10 cấp lọc<br />\r\nM&agrave;ng R.O: 50 GDP (10-15 l&iacute;t/giờ)<br />\r\nNguồn điện: 220 Volt (50/60Hz).<br />\r\n&Aacute;p lực hoạt động: 5 -125 PSI<br />\r\nK&iacute;ch thước (mm): 440 x 330 x 250&nbsp;<br />\r\nThời hạn bảo h&agrave;nh: 30 th&aacute;ng &nbsp;theo Ti&ecirc;u chuẩn của ch&iacute;nh H&atilde;ng</p>\r\n&nbsp;\r\n\r\n<p>M&aacute;y lọc nước si&ecirc;u cao cấp&nbsp; R.O&nbsp;&nbsp;với cột tạo kho&aacute;ng cung cấp nước uống an to&agrave;n, tinh khiết với c&ocirc;ng nghệ thẩm thấu ngược R.O với chi ph&iacute; thấp m&agrave; hiệu quả cao. Đ&acirc;y l&agrave; loại m&aacute;y si&ecirc;u cao cấp được sử dụng trong c&aacute;c gia đ&igrave;nh. Nước sau khi lọc qua m&aacute;y R.O&nbsp; c&oacute; tỷ lệ c&acirc;n bằng ho&agrave;n hảo của c&aacute;c kho&aacute;ng chất cần thiết cho sự ph&aacute;t triển l&agrave;nh mạnh của cơ thể con người.<br />\r\n<br />\r\nM&aacute;y lọc nước tinh khiết si&ecirc;u cao cấp RO&nbsp;08 l&otilde;i, 10 cấp lọc&nbsp;gồm L&otilde;i Nanosilver&nbsp;với c&ocirc;ng nghệ tr&aacute;ng bạc, k&iacute;ch thước nanomet cực mạnh trong t&aacute;c dụng diệt khuẩn.&nbsp;Vật liệu bạc c&oacute; khả năng kh&aacute;ng khuẩn tự nhi&ecirc;n v&agrave; khả năng kh&aacute;ng nấm, n&oacute; hoạt động như một chất x&uacute;c t&aacute;c v&ocirc; hiệu ho&aacute; chức năng của c&aacute;c loại vi sinh vật g&acirc;y hại như vi r&uacute;t, vi khuẩn v&agrave; nấm; cần thiết cho qu&aacute; tr&igrave;nh trao đổi chất oxy v&agrave; ngăn chặn việc g&acirc;y hại đối với cơ thể con ngừơi.&nbsp;C&oacute; t&aacute;c dụng l&agrave;m cho nguồn nước của bạn sạch v&agrave; v&ocirc; tr&ugrave;ng,&nbsp;cung cấp nước uống an to&agrave;n, tinh khiết&nbsp;<br />\r\nNgo&agrave;i ra, c&ocirc;ng nghệ ti&ecirc;n tiến của cột Alkaline&nbsp;hiệu quả gấp 6+ lần so với cột Alkaline th&ocirc;ng thường. M&aacute;y lọc nước tinh khiết 08 l&otilde;i lọc l&agrave; một hệ thống lọc chất lượng cao c&acirc;p 07 giai đoạn lọc vượt trội đi k&egrave;m với l&otilde;i tạo kiềm Alkaline, để cung cấp tốt nhất trong phương ph&aacute;p lọc nước v&agrave; l&agrave;m c&acirc;n bằng độ pH cho nước uống. Sử dụng c&ocirc;ng nghệ thẩm thấu ngược RO với l&otilde;i tạo kiềm Alkaline thực sự c&oacute; thể loại bỏ 99,99% c&aacute;c chất g&acirc;y &ocirc; nhiễm v&agrave; cung cấp cho con người với nước uống kiềm c&oacute; lợi cho sức khỏe. C&acirc;n bằng độ PH với gi&aacute; trị 8,0 ~ 9,5, nước Kiềm (Alkaline) tốt hơn cho sức khỏe<br />\r\nMột cơ thể kiềm l&agrave; khi cơ thể bạn đang trong trạng th&aacute;i khỏe mạnh do đ&oacute; cho ph&eacute;p cơ thể để chống bệnh truyền nhiễm do vi khuẩn v&agrave; cũng như nhiều bệnh tật kh&aacute;c.</p>\r\n<strong><em>C&aacute;c t&iacute;nh năng v&agrave; thiết bị k&egrave;m theo</em></strong>:<br />\r\n- C&ocirc;ng suất lọc 10-15 l/giờ (50 GPD).<br />\r\n- B&igrave;nh &aacute;p ti&ecirc;u chuẩn NSF 12 L&iacute;t (3,2 gallon).<br />\r\n- Van b&igrave;nh &aacute;p.<br />\r\n- Cốc lọc ti&ecirc;u chuẩn 10&rdquo; (01 cốc trong suốt v&agrave; 02 cốc m&agrave;u xanh hoặc m&agrave;u trắng).<br />\r\n- Tay vặn cốc lọc.<br />\r\n- M&aacute;y bơm 125 PSI v&agrave; Adaptor.<br />\r\n- Van đ&oacute;ng ngắt tự động, van nước thải, van &aacute;p thấp, van &aacute;p cao.&nbsp;<br />\r\n- V&ograve;i nước 03 c&aacute;nh.<br />\r\n- C&uacute;t nối ống dẫn nước đầu v&agrave;o.<br />\r\n- Van kh&oacute;a ống dẫn nước.<br />\r\n- D&acirc;y cấp v&agrave; dẫn nước.<br />\r\n- Hướng dẫn sử dụng, phiếu bảo h&agrave;nh ch&iacute;nh H&atilde;ng.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n', '1494085513fuc4521_93.jpg', ' 5.150.000 VND', '2 NĂM', 0, 1, 0, NULL, 1, '2017-05-06 21:35:29'),
(9, 1, 0, NULL, 'Máy lọc nước SAFURE 7 cấp vỏ inox', 'SE-107 A', 'may-loc-nuoc-safure-7-cap-vo-inox', 'Máy lọc nước SAFURE 7 cấp vỏ inox', '<p>&nbsp;H&atilde;ng sản xuất: SAFURE</p>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; clear: both;">\r\n<div style="margin: 0px; padding: 0px; line-height: 21px;">\r\n<div style="margin: 0px 0px 0px auto; padding: 0px; line-height: 21px; clear: both;">\r\n<div id="ctl00_divcontent" style="margin: 0px 0px 0px auto; padding: 0px; line-height: 21px; clear: both;">\r\n<div style="margin: 0px; padding: 0px; line-height: 21px;">\r\n<p>Model: SE-107 A</p>\r\n\r\n<p>Type: M&aacute;y lọc nước tinh khiết Si&ecirc;u Cao cấp R.O 7 l&otilde;i, 7 cấp lọc<br />\r\nM&agrave;ng R.O: 50 GDP (10-15 l&iacute;t/giờ)<br />\r\nNguồn điện: 220 Volt (50/60Hz).<br />\r\n&Aacute;p lực hoạt động: 5 -125 PSI<br />\r\nK&iacute;ch thước (mm): 440 x 330 x 250&nbsp;<br />\r\nThời hạn bảo h&agrave;nh: 02 năm theo Ti&ecirc;u chuẩn của ch&iacute;nh H&atilde;ng</p>\r\n&nbsp;\r\n\r\n<p>M&aacute;y lọc nước si&ecirc;u cao cấp&nbsp; R.O&nbsp;&nbsp;với cột tạo kho&aacute;ng cung cấp nước uống an to&agrave;n, tinh khiết với c&ocirc;ng nghệ thẩm thấu ngược R.O với chi ph&iacute; thấp m&agrave; hiệu quả cao. Đ&acirc;y l&agrave; loại m&aacute;y si&ecirc;u cao cấp được sử dụng trong c&aacute;c gia đ&igrave;nh. Nước sau khi lọc qua m&aacute;y R.O&nbsp; c&oacute; tỷ lệ c&acirc;n bằng ho&agrave;n hảo của c&aacute;c kho&aacute;ng chất cần thiết cho sự ph&aacute;t triển l&agrave;nh mạnh của cơ thể con người.<br />\r\n<br />\r\nM&aacute;y lọc nước tinh khiết si&ecirc;u cao cấp RO&nbsp;07 l&otilde;i, 10 cấp lọc&nbsp;gồm L&otilde;i Nanosilver&nbsp;với c&ocirc;ng nghệ tr&aacute;ng bạc, k&iacute;ch thước nanomet cực mạnh trong t&aacute;c dụng diệt khuẩn.&nbsp;Vật liệu bạc c&oacute; khả năng kh&aacute;ng khuẩn tự nhi&ecirc;n v&agrave; khả năng kh&aacute;ng nấm, n&oacute; hoạt động như một chất x&uacute;c t&aacute;c v&ocirc; hiệu ho&aacute; chức năng của c&aacute;c loại vi sinh vật g&acirc;y hại như vi r&uacute;t, vi khuẩn v&agrave; nấm; cần thiết cho qu&aacute; tr&igrave;nh trao đổi chất oxy v&agrave; ngăn chặn việc g&acirc;y hại đối với cơ thể con ngừơi.&nbsp;C&oacute; t&aacute;c dụng l&agrave;m cho nguồn nước của bạn sạch v&agrave; v&ocirc; tr&ugrave;ng,&nbsp;cung cấp nước uống an to&agrave;n, tinh khiết&nbsp;<br />\r\nNgo&agrave;i ra, c&ocirc;ng nghệ ti&ecirc;n tiến của cột Alkaline&nbsp;hiệu quả gấp 6+ lần so với cột Alkaline th&ocirc;ng thường. M&aacute;y lọc nước tinh khiết 07 l&otilde;i lọc l&agrave; một hệ thống lọc chất lượng cao c&acirc;p 07 giai đoạn lọc vượt trội đi k&egrave;m với l&otilde;i tạo kiềm Alkaline, để cung cấp tốt nhất trong phương ph&aacute;p lọc nước v&agrave; l&agrave;m c&acirc;n bằng độ pH cho nước uống. Sử dụng c&ocirc;ng nghệ thẩm thấu ngược RO với l&otilde;i tạo kiềm Alkaline thực sự c&oacute; thể loại bỏ 99,99% c&aacute;c chất g&acirc;y &ocirc; nhiễm v&agrave; cung cấp cho con người với nước uống kiềm c&oacute; lợi cho sức khỏe. C&acirc;n bằng độ PH với gi&aacute; trị 8,0 ~ 9,5, nước Kiềm (Alkaline) tốt hơn cho sức khỏe<br />\r\nMột cơ thể kiềm l&agrave; khi cơ thể bạn đang trong trạng th&aacute;i khỏe mạnh do đ&oacute; cho ph&eacute;p cơ thể để chống bệnh truyền nhiễm do vi khuẩn v&agrave; cũng như nhiều bệnh tật kh&aacute;c.</p>\r\n<strong><em>C&aacute;c t&iacute;nh năng v&agrave; thiết bị k&egrave;m theo</em></strong>:<br />\r\n- C&ocirc;ng suất lọc 10-15 l/giờ (50 GPD).<br />\r\n- B&igrave;nh &aacute;p ti&ecirc;u chuẩn NSF 12 L&iacute;t (3,2 gallon).<br />\r\n- Van b&igrave;nh &aacute;p.<br />\r\n- Cốc lọc ti&ecirc;u chuẩn 10&rdquo; (01 cốc trong suốt v&agrave; 02 cốc m&agrave;u xanh hoặc m&agrave;u trắng).<br />\r\n- Tay vặn cốc lọc.<br />\r\n- M&aacute;y bơm 125 PSI v&agrave; Adaptor.<br />\r\n- Van đ&oacute;ng ngắt tự động, van nước thải, van &aacute;p thấp, van &aacute;p cao.&nbsp;<br />\r\n- V&ograve;i nước 03 c&aacute;nh.<br />\r\n- C&uacute;t nối ống dẫn nước đầu v&agrave;o.<br />\r\n- Van kh&oacute;a ống dẫn nước.<br />\r\n- D&acirc;y cấp v&agrave; dẫn nước.<br />\r\n- Hướng dẫn sử dụng, phiếu bảo h&agrave;nh ch&iacute;nh H&atilde;ng.</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; line-height: 21px;">&nbsp;</div>\r\n</div>\r\n', '14940856803_45.jpg', '3.850.000 VND', '2 NĂM', 0, 0, 0, NULL, 1, '2017-05-06 17:48:00'),
(10, 1, 0, NULL, 'Máy lọc nước CleveRO-01A', ' CleveRO-01A', 'may-loc-nuoc-clevero-01a', 'Máy lọc nước CleveRO-01A', '<p><span style="font-family:consolas,lucida console,monospace">D&ograve;ng sản phẩm m&aacute;y lọc nước&nbsp;cao cấp&nbsp;với thiết kế tinh tế, sang trọng, đẳng cấp v&agrave; rất nhỏ gọn. Đ&aacute;p ứng nhu cầu cơ bản về nước ăn uống tinh khiết theo ti&ecirc;u chuẩn cho mỗi hộ gia đ&igrave;nh.</span></p>\r\n\r\n<p><span style="font-family:consolas,lucida console,monospace">M&aacute;y lọc nước th&ocirc;ng minh&nbsp;CleveRO-01A c&oacute; t&iacute;nh năng kiểm so&aacute;t v&agrave; b&aacute;o t&iacute;n hiệu th&ocirc;ng minh qua m&agrave;n h&igrave;nh LCD v&agrave; LED hiển thị:</span></p>\r\n\r\n<p>+ B&aacute;o thay l&otilde;i bằng t&iacute;n hiệu đ&egrave;n</p>\r\n\r\n<p>+ B&aacute;o thay m&agrave;ng th&ocirc;ng qua chỉ số TDS</p>\r\n\r\n<p>+ Tự động b&aacute;o chỉ số TDS tại mọi thời điểm</p>\r\n\r\n<p>+ Tự động sục rửa m&agrave;ng RO trước v&agrave; sau khi lọc</p>\r\n\r\n<p>Chức năng:</p>\r\n\r\n<p>Lọc lấy nước tinh khiết &nbsp;từ nguồn nước gia đ&igrave;nh</p>\r\n\r\n<p>Loại bỏ mọi độc tố c&oacute; trong nước</p>\r\n\r\n<p>Loại bỏ amip, virus v&agrave; vi khuẩn</p>\r\n\r\n<p>Loại bỏ thuốc trừ s&acirc;u v&agrave; c&aacute;c chất hứu cơ độc hại.</p>\r\n', '14940857451_96.jpg', '11.500.000 VND', '', 1, 1, 0, NULL, 1, '2017-05-06 21:37:08'),
(11, 2, 0, NULL, 'Cây nóng lạnh HC-203 HÚT BÌNH', 'HC-203', 'cay-nong-lanh-hc-203-hut-binh', 'Cây nóng lạnh HC-203 HÚT BÌNH', '<p>kh&ocirc;ng c&oacute;</p>\r\n', '1494085819fuc8324_61.jpg', '3.500.000 VND', '2 NĂM', 0, 0, 1, NULL, 1, '2017-05-09 13:47:32'),
(12, 2, 0, NULL, 'Cây nóng lạnh HC-03', ' HC-03', 'cay-nong-lanh-hc-03', 'Cây nóng lạnh HC-03', '<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">M&aacute;y lọc nước trường học cỡ vừa, nhỏ</span></p>\r\n', '1494085906fuc8312_60.jpg', '2.850.000 VND', '2 NĂM', 0, 0, 1, NULL, 1, '2017-05-09 13:46:19'),
(13, 2, 0, NULL, 'Máy lọc nước 50 lit/h', 'se-50', 'may-loc-nuoc-50-lit-h', 'Máy lọc nước 50 lit/h', '<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">M&aacute;y lọc nước trường học</span></p>\r\n', '1494086000untitled-1-640x1024_93.jpg', '13.000.000 VND', '', 0, 0, 0, NULL, 1, '2017-05-06 17:53:20'),
(14, 2, 0, NULL, 'Máy lọc nước cao cấp SAFURE 7 cấp lọc vỏ IQ', ' SAFURE 7', 'may-loc-nuoc-cao-cap-safure-7-cap-loc-vo-iq', 'Máy lọc nước cao cấp SAFURE 7 cấp lọc vỏ IQ', '<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">M&aacute;y lọc nước cao cấp SAFURE 7 cấp &nbsp;c&oacute; vỏ IQ</span></p>\r\n', '1494086072fuc4515_95.jpg', '4.450.000 VND', '30 tháng', 0, 0, 0, 1, 1, '2017-05-08 13:20:35'),
(15, 3, 0, NULL, 'Máy lọc nước 50 lít/h', 'SE-50', 'may-loc-nuoc-50-lit-h', 'Máy lọc nước 50 lít/h', '<p>KH&Ocirc;NG C&Oacute;</p>\r\n', '1494086178untitled-1-640x1024_97.jpg', '13.000.000 VND', '', 0, 0, 1, NULL, 1, '2017-05-09 13:46:44'),
(16, 0, 0, NULL, 'Máy lọc nước 30 lit/h', 'SE-30', 'may-loc-nuoc-30-lit-h', 'Máy lọc nước 30 lit/h', '<p>kh&ocirc;ng c&oacute;</p>\r\n', '1494086264img-0765_34.jpg', '11.000.000 VND', '', 1, 0, 1, NULL, 1, '2017-05-12 21:00:27'),
(17, 4, 0, NULL, 'Máy lọc nước 30 l/h', ' Se-30', 'may-loc-nuoc-30-l-h', 'Máy lọc nước 30 l/h', '<p>kh&ocirc;ng c&oacute;</p>\r\n', '1494086319img-0765_21.jpg', '11.000.000 VND', '', 0, 0, 0, NULL, 1, '2017-05-06 17:58:39'),
(18, 4, 0, NULL, 'Máy lọc nước 50 l/h', ' Se-50', 'may-loc-nuoc-50-l-h', 'Máy lọc nước 50 l/h', '<p>Sản phẩm đang cập nhật th&ocirc;ng tin</p>\r\n', '1494312515untitled-1-640x1024_51.jpg', '13.000.000 VND', '', 0, 0, 1, NULL, 1, '2017-05-12 21:01:08'),
(19, 5, 0, NULL, 'Dây chuyền sản xuất nước tinh khiết 250 - 5000 lít/h', 'SE-5000', 'day-chuyen-san-xuat-nuoc-tinh-khiet-250-5000-lit-h', 'Dây chuyền sản xuất nước tinh khiết 250 - 5000 lít/h', '<p><span style="color:rgb(51, 153, 102)"><strong>Nguy&ecirc;n l&yacute; hoạt động:</strong><strong>&nbsp;</strong></span></p>\r\n\r\n<p style="text-align:justify">- Bơm đẩy tạo &aacute;p lực để đưa nước v&agrave;o bộ sơ cấp. Hệ thống n&agrave;y c&oacute; chức năng loại bỏ ho&agrave;n to&agrave;n c&aacute;c tạp chất c&oacute; trong nguồn nước như: B&ugrave;n, đất, cặn lơ lửng c&aacute;c rỉ s&eacute;t&hellip;. C&oacute; k&iacute;ch thước &gt;= 5&micro;m</p>\r\n\r\n<p style="text-align:justify">- Nước được đưa v&agrave;o cột lọc&nbsp;đầu ti&ecirc;n&nbsp;để&nbsp;loại bỏ c&aacute;c th&agrave;nh phần kim loại nặng c&oacute; như Fe+, Mn+, Cu, Zn, điều chỉnh độ PH MT, giảm độ bền vững trong li&ecirc;n kết.</p>\r\n\r\n<p style="text-align:justify">- Sau đ&oacute; được chuyển sang cột hấp thụ Cacbon lọc tạp chất hữu cơ nước ở đ&acirc;y sẽ được lọc khử c&aacute;c kho&aacute;ng chất độc hại, khử m&ugrave;i clo, khử c&aacute;c m&ugrave;i lạ c&oacute; trong nước, hấp thụ amoniac, giải ph&oacute;ng Hyđrocacbon thơm v&agrave; đa v&ograve;ng&hellip;</p>\r\n\r\n<p style="text-align:justify">- Tiếp đ&oacute; nước được đưa qua cột trao đổi Catrion&nbsp; kết hợp c&ugrave;ng vale 5 cửa lọc trao đổi c&aacute;c ION l&agrave; c&aacute;c hạt cation c&ocirc;ng đoạn đ&oacute; c&oacute; t&aacute;c dụng loại bỏ th&agrave;nh phần l&agrave;m tăng độ cứng của nước như: Ca, Mg, c&aacute;c chất &ocirc; nhiễm c&oacute; trong nước, c&aacute;c kim loại nhẹ kh&aacute;c v&agrave; l&agrave;m mềm nước, l&agrave;m tan vỡ c&aacute;c li&ecirc;n kết c&aacute;c gốc, loại bỏ h&agrave;m lượng selen, giảm c&aacute;c gốc muối Cl- ( clorua ).</p>\r\n\r\n<p style="text-align:justify">Th&ugrave;ng triệt ti&ecirc;u trao đổi chứa c&aacute;c muối c&oacute; chức năng ho&agrave;n nguy&ecirc;n c&aacute;c nguy&ecirc;n liệu lọc trao đổi.</p>\r\n\r\n<p style="text-align:justify">- Sau khi đi qua c&aacute;c c&ocirc;ng đoạn lọc tr&ecirc;n, nước sạch sẽ được chuyển qua bồn trung chuyển hệ thống n&agrave;y c&oacute; chức năng loại bỏ c&aacute;c loại cặn v&agrave; tạp chất bẩn c&ograve;n lại trong nước m&agrave; c&aacute;c c&ocirc;ng đoạn lọc ở tr&ecirc;n kh&ocirc;ng lọc được v&agrave; loại bỏ th&agrave;nh phần cặn hoặc nguy&ecirc;n liệu bị ph&aacute; vỡ c&aacute;c lien kết sinh ra trong c&ocirc;ng đoạn tr&ecirc;n ( nếu c&oacute; ).</p>\r\n\r\n<p style="text-align:justify">- Sau khi đi qua c&aacute;c c&ocirc;ng đoạn lọc tr&ecirc;n, nước sẽ được đưa v&agrave;o bơm tăng &aacute;p v&agrave; đẩy qua bộ lọc an to&agrave;n ( 01&micro;m ), sau đ&oacute; qua hệ thống lọc thẩm thấu ngược R.O.</p>\r\n\r\n<p style="text-align:justify">- Khi nước được đưa v&agrave;o hệ thống lọc RO điều khiển tự động ở đ&acirc;y nước được đi qua c&aacute;c m&agrave;ng lọc thẩm thấu ngược RO với k&iacute;ch thước lỗ lọc 0.001&micro;m= 1 Nanomet với k&iacute;ch thước lỗ lọc nhỏ như vậy m&agrave;ng lọc RO chỉ cho ph&eacute;p những ph&acirc;n tử nước đi qua v&agrave; mang theo một th&agrave;nh phần chất kho&aacute;ng c&oacute; lợi. Nước ở đ&acirc;y đ&atilde; đạt ti&ecirc;u chuẩn về phương diện ho&aacute; học theo ti&ecirc;u chuẩn của Bộ y tế ( VN ).</p>\r\n\r\n<p style="text-align:justify">- Sau đ&oacute; nước tinh khiết được chứa ở bồn Inox, tại bồn chứa nước tinh khiết được sục O3 bằng m&aacute;y Ozone để tiệt khuẩn lần thứ nhất.</p>\r\n', '14940865197_07.jpg', 'Liên hệ', '', 0, 0, 0, NULL, 1, '2017-05-06 18:01:59'),
(20, 5, 0, NULL, 'Dây chuyền sản xuất nước tinh khiết 500 Lít/h', 'SE-500', 'day-chuyen-san-xuat-nuoc-tinh-khiet-500-lit-h', 'Dây chuyền sản xuất nước tinh khiết 500 Lít/h', '<p><span style="color:rgb(51, 153, 102)"><strong>Nguy&ecirc;n l&yacute; hoạt động:</strong><strong>&nbsp;d&acirc;y chuyền lọc nước tinh khiết 350lit</strong></span></p>\r\n\r\n<p style="text-align:justify">- Bơm đẩy tạo &aacute;p lực để đưa nước v&agrave;o bộ sơ cấp. Hệ thống n&agrave;y c&oacute; chức năng loại bỏ ho&agrave;n to&agrave;n c&aacute;c tạp chất c&oacute; trong nguồn nước như: B&ugrave;n, đất, cặn lơ lửng c&aacute;c rỉ s&eacute;t&hellip;. C&oacute; k&iacute;ch thước &gt;= 5&micro;m</p>\r\n\r\n<p style="text-align:justify">- Nước được đưa v&agrave;o cột lọc&nbsp;đầu ti&ecirc;n&nbsp;để&nbsp;loại bỏ c&aacute;c th&agrave;nh phần kim loại nặng c&oacute; như Fe+, Mn+, Cu, Zn, điều chỉnh độ PH MT, giảm độ bền vững trong li&ecirc;n kết.</p>\r\n\r\n<p style="text-align:justify">- Sau đ&oacute; được chuyển sang cột hấp thụ Cacbon lọc tạp chất hữu cơ nước ở đ&acirc;y sẽ được lọc khử c&aacute;c kho&aacute;ng chất độc hại, khử m&ugrave;i clo, khử c&aacute;c m&ugrave;i lạ c&oacute; trong nước, hấp thụ amoniac, giải ph&oacute;ng Hyđrocacbon thơm v&agrave; đa v&ograve;ng&hellip;</p>\r\n\r\n<p style="text-align:justify">- Tiếp đ&oacute; nước được đưa qua cột trao đổi Catrion&nbsp; kết hợp c&ugrave;ng vale 5 cửa lọc trao đổi c&aacute;c ION l&agrave; c&aacute;c hạt cation c&ocirc;ng đoạn đ&oacute; c&oacute; t&aacute;c dụng loại bỏ th&agrave;nh phần l&agrave;m tăng độ cứng của nước như: Ca, Mg, c&aacute;c chất &ocirc; nhiễm c&oacute; trong nước, c&aacute;c kim loại nhẹ kh&aacute;c v&agrave; l&agrave;m mềm nước, l&agrave;m tan vỡ c&aacute;c li&ecirc;n kết c&aacute;c gốc, loại bỏ h&agrave;m lượng selen, giảm c&aacute;c gốc muối Cl- ( clorua ).</p>\r\n\r\n<p style="text-align:justify">Th&ugrave;ng triệt ti&ecirc;u trao đổi chứa c&aacute;c muối c&oacute; chức năng ho&agrave;n nguy&ecirc;n c&aacute;c nguy&ecirc;n liệu lọc trao đổi.</p>\r\n\r\n<p style="text-align:justify">- Sau khi đi qua c&aacute;c c&ocirc;ng đoạn lọc tr&ecirc;n, nước sạch sẽ được chuyển qua bồn trung chuyển hệ thống n&agrave;y c&oacute; chức năng loại bỏ c&aacute;c loại cặn v&agrave; tạp chất bẩn c&ograve;n lại trong nước m&agrave; c&aacute;c c&ocirc;ng đoạn lọc ở tr&ecirc;n kh&ocirc;ng lọc được v&agrave; loại bỏ th&agrave;nh phần cặn hoặc nguy&ecirc;n liệu bị ph&aacute; vỡ c&aacute;c lien kết sinh ra trong c&ocirc;ng đoạn tr&ecirc;n ( nếu c&oacute; ).</p>\r\n\r\n<p style="text-align:justify">- Sau khi đi qua c&aacute;c c&ocirc;ng đoạn lọc tr&ecirc;n, nước sẽ được đưa v&agrave;o bơm tăng &aacute;p v&agrave; đẩy qua bộ lọc an to&agrave;n ( 01&micro;m ), sau đ&oacute; qua hệ thống lọc thẩm thấu ngược R.O.</p>\r\n\r\n<p style="text-align:justify">- Khi nước được đưa v&agrave;o hệ thống lọc RO điều khiển tự động ở đ&acirc;y nước được đi qua c&aacute;c m&agrave;ng lọc thẩm thấu ngược RO với k&iacute;ch thước lỗ lọc 0.001&micro;m= 1 Nanomet với k&iacute;ch thước lỗ lọc nhỏ như vậy m&agrave;ng lọc RO chỉ cho ph&eacute;p những ph&acirc;n tử nước đi qua v&agrave; mang theo một th&agrave;nh phần chất kho&aacute;ng c&oacute; lợi. Nước ở đ&acirc;y đ&atilde; đạt ti&ecirc;u chuẩn về phương diện ho&aacute; học theo ti&ecirc;u chuẩn của Bộ y tế ( VN ).</p>\r\n\r\n<p style="text-align:justify">- Sau đ&oacute; nước tinh khiết được chứa ở bồn Inox, tại bồn chứa nước tinh khiết được sục O3 bằng m&aacute;y Ozone để tiệt khuẩn lần thứ nhất.</p>\r\n\r\n<p style="text-align:justify">- Nước tinh&nbsp; khiết được bơm &aacute;p lực Inox tự động chuyển tiếp sang hệ thống lọc x&aacute;c khuẩn. Tại đ&acirc;y nước sẽ được lọc bỏ ho&agrave;n to&agrave;n c&aacute;c th&agrave;nh phần chất tạp, chất lạ c&oacute; trong nước v&agrave; x&aacute;c vi khuẩn chết trong qu&aacute; tr&igrave;nh khử tr&ugrave;ng lần thứ nhất.</p>\r\n\r\n<p style="text-align:justify">- Nước tinh khiết&nbsp;được&nbsp;chuyển qua hệ thống đ&egrave;n tiệt tr&ugrave;ng UV tại đ&acirc;y nước được tiệt tr&ugrave;ng to&agrave;n bộ vi khuẩn, đạt phương diện vi sinh.</p>\r\n\r\n<p style="text-align:justify">- Dậy chuyền sản xuất nước tinh khiết 350 l&iacute;t/h sử dụng c&ocirc;ng nghệ Ozone tiệt tr&ugrave;ng, khử độc c&ocirc;ng nghệ ti&ecirc;n tiến nhất của h&atilde;ng&nbsp;<strong>Ozone Maxx</strong>. Với c&ocirc;ng suất 350 l&iacute;t/h th&igrave; n&ecirc;n sử dụng&nbsp;<strong>m&aacute;y Ozone</strong>&nbsp;loại 1-2g l&agrave; vừa đủ.</p>\r\n\r\n<p style="text-align:justify">Sau đ&oacute; nước được chuyển c&ocirc;ng đoạn tr&aacute;ng v&agrave; chiết b&igrave;nh hoặc chai.</p>\r\n', '14940866406_26.jpg', 'Liên hệ', '', 0, 0, 0, NULL, 1, '2017-05-06 18:04:00'),
(21, 6, 0, NULL, 'Lõi lọc 3', 'lõi 1 micron', 'loi-loc-3', 'Lõi lọc 3', '<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">L&Otilde;I LỌC CIF-ĐỘT PH&Aacute; MỚI VỀ C&Ocirc;NG NGHỆ &nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">KH&Acirc;U TIỀN XỬ L&Yacute; TRONG M&Aacute;Y LỌC NƯỚC TINH KHIẾT</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Gần đ&acirc;y trong giới kỹ thuật l&agrave;m về lọc nước ở Mỹ, Ch&acirc;u &Acirc;u v&agrave; một số nước Ch&acirc;u &Aacute; x&ocirc;n xao b&agrave;n t&aacute;n về c&ocirc;ng nghệ mới đột ph&aacute; về l&otilde;i lọc</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">tiền xử l&yacute; CIF. Vậy CIF l&agrave; g&igrave;? Nh&acirc;n chuyến viếng thăm trụ sở c&ocirc;ng ty BIBUS tại Thụy Sỹ ch&uacute;ng t&ocirc;i c&oacute; cơ hội t&igrave;m hiểu điều n&agrave;y.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Trong hệ thống m&aacute;y lọc nước d&ugrave;ng m&agrave;ng lọc RO, việc xử l&yacute; trước m&agrave;ng l&agrave; y&ecirc;u cầu quan trọng quyết định chất lượng nước sau lọc v&agrave; tuổi</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">tho m&agrave;ng RO. M&ocirc; h&igrave;nh truyền thống thường sử dụng 3 cấp lọc tiền xử l&yacute; bao gồm: l&otilde;i số 1 PP nhằm loại cặn bẩn c&oacute; k&iacute;ch thước lơn hơn 5</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">micron, l&otilde;i 2 carbon dạng hạt (GAC) nhằm loại c&aacute;c hợp chất hữu cơ, hấp thụ c&aacute;c kim loại nặng v&agrave; độc tố. Với carbon dạng hạt c&oacute; bề mặt tiếp</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">x&uacute;c lớn &nbsp;GAC được coi l&agrave; l&otilde;i quan trọng nhất khử clo dư trong nước v&agrave; c&aacute;c chất độc hại. L&otilde;i số 3 CTO l&agrave; carbon được &eacute;p chặt nhằm loại 1</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">lần nữa c&aacute;c độc tố v&agrave; chặn hạt carbon từ l&otilde;i số 2 kh&ocirc;ng cho l&ecirc;n m&agrave;ng RO. Như vậy l&otilde;i 2 v&agrave; 3 trong m&aacute;y truyền thống c&oacute; ưu nhược điểm như</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">sau:</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Ưu điểm Nhược điểm</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">L&otilde;i GAC</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Bề mặt Tx lớn, hấp phụ tốt</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Hạt &nbsp;dễ &nbsp;tr&ocirc;i &nbsp;ra &nbsp;l&agrave;m &nbsp;đen</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">nước</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Loại được hầu hết tạp chất hữu cơ</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Nhanh &nbsp;phải &nbsp;thay &nbsp;thế, &nbsp;Dễ</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">g&acirc;y e kh&iacute; hoặc tắc</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">L&otilde;i CTO K&iacute;ch thước 1 micron chặn được hạt carbon Khả năng hấp phụ k&eacute;m</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Tuổi thọ d&agrave;i Dễ tắc</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">C&acirc;u hỏi đặt ra cho c&aacute;c nh&agrave; l&agrave;m l&otilde;i lọc: một loại l&otilde;i kết hợp được ưu điểm v&agrave; tr&aacute;nh được c&aacute;c nhược điểm của 2 loại l&otilde;i tr&ecirc;n?</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Từ những nhu cầu tr&ecirc;n, năm 2010 l&otilde;i CIF (Carbon In Filter) ra đời v&agrave; được BIBUS ph&aacute;t triển ở thị trường c&aacute;c nước Ch&acirc;u &Acirc;u. Từ đầu năm</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">2011, CIF được BIBUS Việt Nam nhập khẩu nguy&ecirc;n kiện v&agrave; ph&acirc;n phối tại thị trường Việt Nam.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Cấu tạo l&otilde;i CIF (xem h&igrave;nh tr&ecirc;n): &nbsp;lớp ngo&agrave;i c&ugrave;ng l&agrave; PP 5 micron, lớp ở giữa l&agrave; hạt c&aacute;c bon rất mịn c&oacute; k&iacute;ch thước bằng 1/10 k&iacute;ch thước carbon</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">trong l&otilde;i GAC, c&ograve;n lớp l&otilde;i trong c&ugrave;ng l&agrave; PP 1 micron c&oacute; t&aacute;c dụng chặn hạt carbon v&agrave; tinh lọc.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Với cấu tạo như vậy l&otilde;i CIF c&oacute; khả năng lọc v&agrave; hấp thụ tốt hơn rất nhiều so với l&otilde;i GAC bởi lớp ngo&agrave;i c&ugrave;ng của GAC l&agrave; nhựa n&ecirc;n nước</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">kh&ocirc;ng thể thấm qua m&agrave; chỉ c&oacute; hướng lọc duy nhất từ dưới l&ecirc;n, trong khi nước c&oacute; thể thấm qua mọi hướng của l&otilde;i CIF. Ch&iacute;nh nhờ cấu tạo đặc</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">biệt n&agrave;y l&otilde;i CIF gi&uacute;p nước lọc th&ocirc;ng tho&aacute;ng hơn v&agrave; tr&aacute;ch được lỗi e kh&iacute; v&agrave; tr&aacute;nh được khả năng tắc so với l&otilde;i GAC. Hơn nữa c&aacute;c bon hạt của</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">GAC to n&ecirc;n bề mặt tiếp x&uacute;c nước k&eacute;m hơn dạng c&aacute;c bon được xay rất mịn của CIF. &nbsp;Ngo&agrave;i ra CIF cũng c&oacute; điểm giống l&otilde;i GAC l&agrave; l&otilde;i CIF c&oacute;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">khả năng hấp thụ c&aacute;c hợp chất hưu cơ, độc tố tốt hơn l&otilde;i CTO do tận dụng hết 100% bề mặt xốp của hạt m&agrave; kh&ocirc;ng cần phải d&ugrave;ng chất kết</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">d&iacute;nh như l&otilde;i CTO.</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Th&ocirc;ng số kỹ thuật:</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Chiều d&agrave;i: 10&rdquo;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Tuổi thọ trung b&igrave;nh: 1 năm</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">K&iacute;ch thước hạt carbon: 0,17mm&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">(Carbon trong l&otilde;i GAC 2mm)</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">Ứng dụng: D&ugrave;ng thay thế cho cả GAC v&agrave; CTO</div>\r\n', '1494086722fuc4528_73.jpg', ' 100.000 VND', '', 0, 0, 0, NULL, 1, '2017-05-06 18:05:22'),
(22, 6, 0, NULL, 'Lõi lọc PP 5 Micron( lõi 1)', 'PP 5 micron', 'loi-loc-pp-5-micron(-loi-1)', 'Lõi lọc PP 5 Micron( lõi 1)', '<p>Chức năng :lọc c&aacute;c cặn bẩn (rong ,r&ecirc;u,gỉ sắt,bọ gậy....)c&oacute; k&iacute;ch thước lớn hơn 5 micron</p>\r\n\r\n<p>Thời gian thay thế :3-6 th&aacute;ng /lần t&ugrave;y thuộc v&agrave;o nguồn nước v&agrave; lượng nước sử dụng .</p>\r\n', '1494086783fuc4527_57.jpg', '60.000 VND', '', 0, 0, 0, NULL, 1, '2017-05-06 18:06:23'),
(23, 6, 0, NULL, 'Than hoạt tính hạt( Lõi 2)', ' OCB', 'than-hoat-tinh-hat(-loi-2)', 'Than hoạt tính hạt( Lõi 2)', '<p>Than hoạt t&iacute;nh hạt( l&otilde;i 2)</p>\r\n\r\n<p>Chức năng:Lọc c&aacute;c chất hữu cơ độc hại,chlorine,một phần m&ugrave;i vị lạ của nước .</p>\r\n\r\n<p>Thời gian thay thế :6-12 th&aacute;ng &nbsp;t&ugrave;y thuộc v&agrave;o nguồn nước v&agrave; lượng nước sử dụng .</p>\r\n', '1494086874fuc4531_04.jpg', '80.000 VND', '', 0, 0, 0, NULL, 1, '2017-05-06 18:07:54'),
(24, 6, 0, NULL, 'Màng RO DOW MỸ', ' RO-Made in USA', 'mang-ro-dow-my', 'Màng RO DOW MỸ', '<p>Sản phẩm được nhập khẩu trực tiếp từ DOW USA</p>\r\n\r\n<p>*Chức năng :Lọc sạch cấp độ ph&acirc;n tử c&aacute;c inon kim loại nặng ,amoni,asen ,c&aacute;c hợp chất hữu cơ nhỏ nhất .</p>\r\n\r\n<p>*Thời gian thay thế :2-5 năm/lần .</p>\r\n', '1494086958fuc8435_94.jpg', '500.000 VND', '', 1, 0, 0, NULL, 1, '2017-05-06 21:36:34'),
(25, 6, 0, NULL, 'Lõi tạo vị', 'TV', 'loi-tao-vi', 'Lõi tạo vị', '<p>*Chức năng :C&acirc;n bằng độ PH v&agrave; ổn định lại vị ngọt tự nhi&ecirc;n cho nước&nbsp;</p>\r\n\r\n<p>*Thời gian thay thế :6-12 th&aacute;ng /lần t&ugrave;y thuộc v&agrave;o lượng nước sử dụng .</p>\r\n', '1494087042fuc4541_69.jpg', '200.000 VND', '', 0, 0, 0, NULL, 1, '2017-05-06 18:10:42'),
(26, 6, 0, NULL, 'Lõi tạo khoáng', 'SF2', 'loi-tao-khoang', 'Lõi tạo khoáng', '<p>*Chức năng:Tăng th&ecirc;m kho&aacute;n chất c&oacute; lượi cho cơ thể,c&acirc;n băng độ PH .</p>\r\n\r\n<p>*Thời gian thay thế :6-12 th&aacute;ng t&ugrave;y thuộc v&agrave;o lượng nước sử dụng .</p>\r\n', '1494087168fuc4538_04.jpg', '200.000 VND', '', 0, 0, 0, NULL, 1, '2017-05-06 18:12:48'),
(27, 6, 0, NULL, 'Lõi lọc Alkaline', 'Alkaline', 'loi-loc-alkaline', 'Lõi lọc Alkaline', '<p>*Chức năng:Tăng PH cho nước ,bổ sung th&ecirc;m một phần kho&aacute;ng chất .</p>\r\n\r\n<p>*Thời gian thay thế :6-12 th&aacute;ng t&ugrave;y theo lượng nước sử dụng .</p>\r\n', '1494087272fuc4543_00.jpg', ' 250.000 VND', '', 0, 0, 0, NULL, 1, '2017-05-06 18:14:32'),
(28, 6, 0, NULL, 'Lõi T33', 'T33', 'loi-t33', 'Lõi T33', '<p>*Chức năng ổn định lại vị ngọt m&aacute;t tự nhi&ecirc;n của nước ,b&ugrave; lại một phần vi kho&aacute;ng .</p>\r\n\r\n<p>*Thờ gian thay thế :6-12 th&aacute;ng /lần t&ugrave;y thuộc v&agrave;o lượng nước sử dụng .</p>\r\n', '1494087349fuc4535_86.jpg', '200.000 VND', '', 0, 0, 0, NULL, 1, '2017-05-06 18:15:49'),
(29, 6, 0, NULL, 'Lõi hồng ngoại', ' HH', 'loi-hong-ngoai', 'Lõi hồng ngoại', '<p>*Chức năng:Chia c&aacute;c nh&oacute;m ph&acirc;n tử nước nhỏ hơn để cơ thể c&oacute; thể hấp thụ dễ d&agrave;n hơn .</p>\r\n\r\n<p>*Thời gian thay thế :12-18 th&aacute;ng /lần &nbsp;t&ugrave;y thuộc v&agrave;o lượng nước sử dụng .</p>\r\n', '1494087401fuc8424_15.jpg', '250.000 VND', '', 1, 0, 0, NULL, 1, '2017-05-06 21:36:14');

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
(16, 'Tam', 'tam', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766124hoamai.jpg', NULL, 1, '2014-06-26 14:02:11'),
(17, 'Tam adf', 'tam-adf', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766143300x215-7.png', NULL, 1, '2014-06-26 17:04:03'),
(18, 'test 1', 'test-1', 'asdf', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/image1.jpeg" style="height:177px; width:284px" /></p>\r\n', '1403766152hoamai.jpg', NULL, 1, '2014-06-26 14:02:32'),
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
('8dtup2fmkcgiiuamv5tcvo7ma4', 1530790675, 0x65353264656639646133303366376465643737613731313836613062313531315f5f69647c733a353a2261646d696e223b65353264656639646133303366376465643737613731313836613062313531315f5f6e616d657c733a353a2261646d696e223b65353264656639646133303366376465643737613731313836613062313531316e616d657c733a353a2241646d696e223b65353264656639646133303366376465643737613731313836613062313531315f5f7374617465737c613a313a7b733a343a226e616d65223b623a313b7d);

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
(4, 'Giới thiệu', 'gioi-thieu', '<p style="text-align:justify">Trang Web đang x&acirc;y dựng</p>\r\n', 1, 0, '2015-08-24 10:09:37', '', ''),
(5, 'Địa chỉ', 'dia-chi', '<p>59/4 Đường 38, P. Hiệp B&igrave;nh Ch&aacute;nh, Tp.Hồ Ch&iacute; Minh</p>\r\n', 1, 0, '2017-05-08 10:30:15', '', ''),
(6, 'Điện thoại', 'dien-thoai', '<p><strong>0123.601.0123 - 0984.80.45.81</strong></p>\r\n\r\n<p style="text-align:justify">&nbsp;</p>\r\n\r\n<p style="text-align:justify"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</strong></p>\r\n', 1, 0, '2017-05-22 11:37:57', '', '  '),
(7, 'Email', 'email', '<p><span style="background-color:rgb(241, 240, 240); color:rgb(75, 79, 86); font-family:helvetica,arial,sans-serif; font-size:12px">congtyductamvn@gmail.com</span></p>\r\n', 1, 0, '2017-05-06 09:12:26', '', ''),
(8, 'Google', 'google', '<p>http://google.com.vn</p>\r\n', 1, 0, '2015-05-05 15:30:32', NULL, NULL),
(9, 'Facebook', 'facebook', '<p>https://www.facebook.com</p>\r\n', 1, 0, '2015-09-09 06:16:46', '', ''),
(10, 'Twitter', 'twitter', '<p>http://twitter.com</p>\r\n', 1, 0, '2015-05-05 15:31:06', NULL, NULL),
(12, 'Khuyến mãi', 'khuyen-mai', '<p style="text-align:justify">Th&ocirc;ng tin đang cập nhật</p>\r\n', 1, 1, '2017-05-07 09:29:46', '', ''),
(14, 'Tuyển dụng', 'tuyen-dung', '<p><font color="#222222" face="arial, arial, helvetica, sans-serif"><span style="font-size:12.8px">Th&ocirc;ng tin đang cập nhật</span></font></p>\r\n', 1, 1, '2017-05-07 09:32:14', '', ''),
(15, 'Thông tin công ty', 'thong-tin-cong-ty', '<p><font face="arial, arial, helvetica, sans-serif"><span style="font-size:12.8px">Th&ocirc;ng tin đang cập nhật</span></font></p>\r\n', 1, 1, '2017-05-07 09:33:02', '', ''),
(16, 'Hệ thống các siêu thị', 'he-thong-cac-sieu-thi', '<p><span style="font-family:arial,arial,helvetica,sans-serif; font-size:12.8000001907349px">Th&ocirc;ng tin đang cập nhật</span></p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1, '2017-05-07 09:33:46', '', ''),
(17, 'Tư vấn bán hàng', 'tu-van-ban-hang', '<div class="sp_1">\r\n<p>Tư vấn b&aacute;n h&agrave;ng 1</p>\r\n\r\n<p>Mrs. Dung: (04) 3786 8904</p>\r\n</div>\r\n\r\n<div class="sp_2">\r\n<p>Tư vấn b&aacute;n h&agrave;ng 2</p>\r\n\r\n<p>Mr. Tuấn: (04) 3786 8904</p>\r\n</div>\r\n\r\n<div class="sp_mail">\r\n<p>Email li&ecirc;n hệ</p>\r\n\r\n<p><a href="mailto:support@bizweb.vn">support@bizweb.vn</a></p>\r\n</div>\r\n', 1, 1, '2018-04-21 11:34:53', '', ''),
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
(1, 'Chương trình ''''GIÁ RẺ QUÀ HAY NHANH TAY TRÚNG LỚN''''', 'chuong-trinh-gia-re-qua-hay-nhanh-tay-trung-lon', 'Bốc thăm trúng thưởng tại huyện tân yên tỉnh bắc giang', '<div style="margin: 0px 0px 5px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: justify;"><strong><strong>Bốc thăm tr&uacute;ng thưởng tại huyện t&acirc;n y&ecirc;n tỉnh bắc giang&nbsp;</strong>&nbsp;&nbsp;</strong></div>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><strong>Chương tr&igrave;nh được tổ chức tại huyện T&acirc;n Y&ecirc;n ,tỉnh Bắc Giang&nbsp;</strong></span></p>\r\n\r\n<p><br />\r\n<span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Tất cả c&aacute;c kh&aacute;ch h&agrave;ng đ&atilde; mua m&aacute;y lọc nước SAFURE trong khoảng thời gian từ ng&agrave;y 10/12 đến ng&agrave;y 13/12/2015 tr&ecirc;n địa b&agrave;n huyện T&acirc;n Y&ecirc;n ,đều nhận được một phiếu bốc thăm may mắn v&agrave; c&oacute; cơ hội sở hữu TI Vi SONY 48&#39; trị gi&aacute; 12,500,000đ v&agrave; c&acirc;y nước n&oacute;ng lạnh SAFURE trị gi&aacute; 3,000,000đ</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Chiều ng&agrave;y 13/12/2015 vừa qua C&ocirc;ng ty tnhh Điện M&aacute;y EMU Việt Nam phối hợp với Trung T&acirc;m Điện M&aacute;y TUẤN DŨNG đ&atilde; tổ chức th&agrave;nh c&ocirc;ng buổi lễ bốc thăm tr&uacute;ng thưởng chương tr&igrave;nh :&quot;GI&Aacute; RẺ QU&Agrave; HAY ,NHANH TAY TR&Uacute;NG LỚN&quot;.d&agrave;nh di&ecirc;ng cho kh&aacute;ch h&agrave;ng tại huyện T&acirc;n Y&ecirc;n ,Tỉnh Bắc Giang .</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Chương tr&igrave;nh thay lời cảm ơn ch&acirc;n th&agrave;nh của c&ocirc;ng ty tnhh Điện M&aacute;y EMU Việt Nam tới tất cả c&aacute;c qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; quan t&acirc;m v&agrave; sử dụng sản phẩm m&aacute;y lọc nước cao cấp SAFURE trong thời gian vừa qua .</span></p>\r\n\r\n<p><br />\r\n<span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><img alt="LÊ BỐC THĂM TRÚNG THƯỞNG NGÀY 13/12/2015" src="http://safure.vn/files/editor/images/DSC_0100(3).JPG" style="border:5px solid; height:281px; margin:0px; padding:0px; width:500px" /></span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><img alt="" src="http://safure.vn/files/editor/images/DSC_0091[1].JPG" style="border:5px solid; height:281px; margin:0px; padding:0px; width:500px" /></span></p>\r\n\r\n<div style="margin: 0px; padding: 0px; line-height: 21px;">\r\n<div style="margin: 0px; padding: 0px; line-height: 21px;">\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Chương tr&igrave;nh bốc thăm diễn ra trong một kh&ocirc;ng&nbsp; gian ấm c&uacute;ng nhưng s&ocirc;i nổi .Những gi&acirc;y ph&uacute;t hồi hộp đến nghẹt thở ,c&ugrave;ng sự h&acirc;n hoan đến vỡ &ograve;a của kh&aacute;ch h&agrave;ng tr&uacute;ng thưởng&nbsp; l&agrave;m cho bầu kh&ocirc;ng kh&iacute; ng&agrave;y đ&ocirc;ng trở n&ecirc;n rộn r&agrave;ng v&agrave; ấm c&uacute;ng hơn bao giờ &nbsp;hết .</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Chương tr&igrave;nh đẫ kết th&uacute;c trong niềm vui của to&agrave;n thể kh&aacute;ch h&agrave;ng&nbsp; tham ra buổi lễ .C&oacute; những kh&aacute;ch h&agrave;ng trở th&agrave;nh người may mắn,c&oacute; những kh&aacute;ch h&agrave;ng chưa &nbsp;may mắn trong dịp n&agrave;y ,nhưng tất cả đều rộn r&agrave;ng ,x&ocirc;n xao trong từng ng&otilde; nhỏ của người d&acirc;n T&acirc;n Y&ecirc;n .</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Một năm mới nữa đang đến rất gần tr&ecirc;n mọi nẻo đường qu&ecirc; hương Việt Nam v&agrave; SAFURE hứa hẹn sẽ mang niềm vui lại nơi n&agrave;y trong một ng&agrave;y kh&ocirc;ng xa ,để được tận hưởng những rộn r&agrave;ng v&agrave; nghe những c&acirc;u chuyện x&ocirc;n xao trong từng th&ocirc;n x&oacute;m .</span></p>\r\n</div>\r\n</div>\r\n', '1494141252DSC_0100(3).JPG', 1, 1, NULL, '2017-05-07 09:14:12', NULL),
(2, 'Thực trạng và giải pháp cứu nguồn nước sạch', 'thuc-trang-va-giai-phap-cuu-nguon-nuoc-sach', 'Gần 1 tỉ người không được tiếp xúc với nước sạch. Cứ 20s lại có một trẻ em tử vong vì tình trạng thiếu nước sạch và điều kiện không thích hợp.', '<div style="margin: 0px 0px 5px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: justify;"><strong>Gần 1 tỉ người kh&ocirc;ng được tiếp x&uacute;c với nước sạch. Cứ 20s lại c&oacute; một trẻ em tử vong v&igrave; t&igrave;nh trạng thiếu nước sạch v&agrave; điều kiện kh&ocirc;ng th&iacute;ch hợp.</strong></div>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><strong>T&igrave;nh trạng nguồn nước hiện nay</strong></span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Nước chiếm &frac34; tr&aacute;i đất v&agrave; l&agrave; nguồn t&agrave;i nguy&ecirc;n qu&iacute; gi&aacute; đối với sự sống của con người. 70% diện t&iacute;ch Tr&aacute;i Đất được bao phủ bởi nước nhưng chỉ c&oacute; 2,5% nước tr&ecirc;n thế giới l&agrave; nước ngọt, trong khi 97,5% l&agrave; đại dương. Trong đ&oacute;, 0,3% nước ngọt của thế giới nằm trong c&aacute;c s&ocirc;ng, hồ; 30% l&agrave; nước ngầm, phần c&ograve;n lại nằm tr&ecirc;n c&aacute;c s&ocirc;ng băng, n&uacute;i băng. 70% lượng nước tr&ecirc;n thế giới được sử dụng cho n&ocirc;ng nghiệp, 22% cho c&ocirc;ng nghiệp v&agrave; 8% phục vụ sinh hoạt.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Theo ước t&iacute;nh, trung b&igrave;nh một người ở c&aacute;c nước ph&aacute;t triển sử dụng 500-800 l&iacute;t/ng&agrave;y so với 60-150 l&iacute;t/người/ng&agrave;y ở c&aacute;c nước đang ph&aacute;t triển. Hiện nay, c&aacute;c th&agrave;nh phố lớn, nhất l&agrave; ngay tại H&agrave; Nội, th&agrave;nh phố Hồ Ch&iacute; Minh, nhiều nơi vẫn đang thiếu nước sạch sinh hoạt. Nguồn nước ngầm đang bị khai th&aacute;c kh&ocirc;ng thể kiểm so&aacute;t. Việc khoan giếng lấy nước ngầm xảy ra tr&agrave;n lan, kh&ocirc;ng những g&acirc;y thất tho&aacute;t, l&atilde;ng ph&iacute; c&ograve;n c&oacute; nguy cơ l&agrave;m &ocirc; nhiễm nguồn nước đ&oacute;.Hơn nữa, do kh&ocirc;ng thấy hết vị tr&iacute; quan trọng của t&agrave;i nguy&ecirc;n nước, n&ecirc;n tr&ecirc;n khắp cả nước, đ&acirc;u đ&acirc;u cũng thấy c&oacute; những b&atilde;i r&aacute;c, nơi ch&ocirc;n cất, xử l&yacute; r&aacute;c thải kh&ocirc;ng được thực hiện theo đ&uacute;ng quy định v&agrave; quy tr&igrave;nh bảo vệ m&ocirc;i trường, để nước r&aacute;c r&ograve; rỉ ngấm xuống nguồn nước ngầm v&agrave; tr&agrave;n ra nguồn nước mặt.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Ri&ecirc;ng đối với cuộc sống của con người. nước c&oacute; một vai tr&ograve; hết sức đặc biệt.Đối với cơ thể con người nước kh&ocirc;ng phải l&agrave; một chất dinh dưỡng nhưng ch&uacute;ng ta c&oacute; thể nhịn ăn thậm ch&iacute; 1 tuần nhưng kh&ocirc;ng thể nhịn kh&ocirc;ng uống nước trong v&ograve;ng 3-5 ng&agrave;y được. Như ch&uacute;ng ta đ&atilde; biết, 70% cơ thể ch&uacute;ng ta l&agrave; nước, nước trong cơ thể ta ch&iacute;nh l&agrave; d&ograve;ng m&aacute;u đỏ chảy trong mỗi con người.C&aacute;c bạn h&atilde;y thử tưởng tưởng xem nếu kh&ocirc;ng c&oacute; d&ograve;ng m&aacute;u n&agrave;y liệu con người c&oacute; sống được kh&ocirc;ng??? Chỉ một v&iacute; dụ rất đơn giản cũng đủ để ch&uacute;ng ta thấy được tầm quan trọng của nước. Tất nhi&ecirc;n l&agrave; một việc l&agrave;m cần thiết của mọi con người ch&uacute;ng ta l&agrave; phải biết qu&yacute; trọng nguồn nước qu&yacute; b&aacute;u m&agrave; thi&ecirc;n nhi&ecirc;n đ&atilde; ban tặng cho ch&uacute;ng ta c&aacute;c bạn nh&eacute;!!! &nbsp; Kh&ocirc;ng c&oacute; nước sạch mọi sinh hoạt của con người sẽ bị ảnh hưởng nghi&ecirc;m trọng.Kh&ocirc;ng c&oacute; nước sạch sẽ sinh ra nhiều vấn đề đ&aacute;ng lo ngại cho sự sống của con người.L&uacute;c đ&oacute;: bệnh tật nảy sinh, m&ocirc;i trường cũng bị ảnh hưởng trầm trọng.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Nguồn nước ngầm bị &ocirc; nhiễm l&agrave; cả một hệ sinh th&aacute;i nước sạch bị mất c&acirc;n bằng, mất đi một nguồn cung cấp nước sạch tin cậy cho cuộc sống. C&oacute; l&yacute; khi c&aacute;c chuy&ecirc;n gia khuy&ecirc;n rằng, trước hết phải nhận thức s&acirc;u sắc sự quan trọng của t&agrave;i nguy&ecirc;n nước, c&oacute; &yacute; thức bảo vệ nguồn t&agrave;i nguy&ecirc;n nước v&agrave; những người c&oacute; tr&aacute;ch nhiệm c&oacute; thể từ chối những dự &aacute;n g&acirc;y &ocirc; nhiễm nguồn nước, d&ugrave; rằng dự &aacute;n đ&oacute; c&oacute; đem lại nguồn lợi lớn về kinh tế. Từ chối h&ocirc;m nay l&agrave; để đỡ tốn k&eacute;m v&agrave; g&igrave;n giữ cho mai sau.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><strong>Rừng-nguồn cất giữ nước sạch v&ocirc; tận</strong></span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Những rừng xanh bạt ng&agrave;n ở Trường Sơn, T&acirc;y Nguy&ecirc;n, v&ugrave;ng n&uacute;i ph&iacute;a Bắc đang bị chặt ph&aacute; để lại những n&uacute;i đồi trơ trọi, x&aacute;m ngắt, canh t&aacute;c n&ocirc;ng l&acirc;m nghiệp kh&ocirc;ng hợp l&yacute; v&agrave; thải chất thải bừa b&atilde;i v&agrave;o c&aacute;c thuỷ vực&hellip; đ&atilde; v&agrave; sẽ g&acirc;y n&ecirc;n những hậu quả rất nghi&ecirc;m trọng, l&agrave;m cho nguồn nước bị cạn kiệt, bị &ocirc; nhiễm, hạn h&aacute;n c&oacute; khả năng c&agrave;ng khốc liệt. Nguy cơ thiếu nước sạch c&agrave;ng trầm trọng, nhất l&agrave; v&agrave;o m&ugrave;a cạn ở c&aacute;c v&ugrave;ng mưa &iacute;t.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Nước ngọt l&agrave; nguồn t&agrave;i nguy&ecirc;n c&oacute; t&aacute;i tạo, nhưng việc sử dụng nguồn t&agrave;i nguy&ecirc;n n&agrave;y phải c&acirc;n bằng giữa nguồn dự trữ v&agrave; t&aacute;i tạo. Đ&oacute; cũng l&agrave; c&aacute;ch m&agrave; con người cần quan t&acirc;m, thực hiện để tồn tại v&agrave; ph&aacute;t triển sự sống ổn định, l&acirc;u bền.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Nguồn nước quan trọng như vậy, trong khi đ&oacute; ch&iacute;nh ch&uacute;ng ta lại kh&ocirc;ng biết giữ g&igrave;n. Cải tạo m&ocirc;i trường l&agrave; biện ph&aacute;p cấp b&aacute;ch để nguồn nước được bảo vệ. Kh&ocirc;ng chỉ dừng lại ở đ&oacute;, c&acirc;y xanh cũng l&agrave; m&ocirc;t bộ phận quan trọng gi&uacute;p cải thiện m&ocirc;i trường. Trồng c&acirc;y, trồng rừng để kh&ocirc;i phục m&ocirc;i trường, h&atilde;y để lại cuộc sống tốt đẹp cho tương lai mai sau của con em ch&uacute;ng ta.&nbsp;</span></p>\r\n', '1494141448Thuc-trang-nguon-nuoc-sach-va-giai-phap-may-loc-nuoc (2).jpg', 2, 1, 1, '2017-09-08 05:58:14', NULL),
(3, 'Máy lọc nước kết hợp máy tập thể dục', 'may-loc-nuoc-ket-hop-may-tap-the-duc', 'Ý tưởng về chiếc máy lọc nước kết hợp với tập thể dục đã được hiện thực hóa.Những ngày gần đây tại hồ Ngọc Khánh', '<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">\r\n<div style="margin: 0px; padding: 0px; line-height: 21px;">\r\n<div style="margin: 0px 0px 5px; padding: 0px; line-height: 21px;"><strong>&Yacute; tưởng về chiếc&nbsp;<a href="http://safure.vn/" style="margin: 0px; padding: 0px; text-decoration-line: none;">m&aacute;y lọc nước</a>&nbsp;kết hợp với tập thể dục đ&atilde; được hiện thực h&oacute;a.Những ng&agrave;y gần đ&acirc;y tại hồ Ngọc Kh&aacute;nh</strong></div>\r\n\r\n<p>Vấn nạn &ocirc; nhiễm m&ocirc;i trường nước tại c&aacute;c hồ ở H&agrave; Nội đang l&agrave; một thực trạng đ&aacute;ng b&aacute;o động, khi m&agrave; hầu hết c&aacute;c hồ ở nội th&agrave;nh đều &ocirc; nhiễm nặng. Những chương tr&igrave;nh cải tạo nguồn nước hồ được th&agrave;nh phố H&agrave; Nội tiến h&agrave;nh thường xuy&ecirc;n. Nhưng cũng cần phải c&oacute; sự chung tay bằng&nbsp;<a href="http://safure.vn/" style="margin: 0px; padding: 0px; text-decoration-line: none;">những h&agrave;nh động nhỏ để bảo vệ nguồn nước</a>&nbsp;của người d&acirc;n thủ đ&ocirc;.</p>\r\n\r\n<p><span style="font-size:12px">Hai chiếc m&aacute;y lọc nước đặt tại ven hồ nh&igrave;n chẳng kh&aacute;c g&igrave; chiếc m&aacute;y chạy bộ c&aacute; nh&acirc;n. Cũng với những bộ phận, những động t&aacute;c bằng tay v&agrave; ch&acirc;n kết hợp</span></p>\r\n\r\n<p>Nguy&ecirc;n l&yacute; hoạt động của chiếc m&aacute;y dựa tr&ecirc;n lực đạp của người tập, nước trong hồ sẽ được h&uacute;t l&ecirc;n đổ v&agrave;o một bể lọc trồng thủy tr&uacute;c với c&aacute;c lớp c&aacute;t, c&aacute;c chất c&oacute; khả năng hấp thụ chất hữu cơ kh&aacute;c. Được thiết kế kh&aacute; nhỏ gọn, để nổi tr&ecirc;n mặt hồ n&ecirc;n kh&ocirc;ng l&agrave;m mất mỹ quan khu vực, kh&ocirc;ng chiếm diện t&iacute;ch ven hồ.</p>\r\n\r\n<p>Sauk hi được lọc v&agrave; lắng cặn, nước sẽ theo đường ống kh&aacute;c chảy ngược lại hồ. Với chiếc m&aacute;y n&agrave;y sẽ g&oacute;p phần tiết kiệm đ&aacute;ng kể chi ph&iacute; để cải tạo v&agrave; l&agrave;m sạch hồ. C&ugrave;ng với đ&oacute; tạo th&oacute;i quen bảo vệ m&ocirc;i trường cho mọi người.</p>\r\n\r\n<p>L&agrave; s&aacute;ng tạo của nh&oacute;m nghi&ecirc;n cứu Viện nước, tưới ti&ecirc;u m&ocirc;i trường. &Yacute; tưởng n&agrave;y đ&atilde; vượt qua hơn 90 &yacute; tưởng kh&aacute;c để gi&agrave;nh 1 trong 6 giải thưởng xuất sắc s&aacute;ng tạo v&igrave; m&ocirc;i trường do Hội đồng Anh tổ chức năm 2011 v&agrave; được lựa chọn ứng dụng v&agrave;o thực tiễn. Chiếc m&aacute;y l&uacute;c đầu được chế tạo v&agrave;o mục đ&iacute;ch ph&aacute;t điện nhưng sau đ&oacute; được cải tiến th&agrave;nh m&aacute;y lọc nước hồ.&nbsp;</p>\r\n\r\n<p>Chiếc m&aacute;y tập thể dục c&ocirc;ng cộng n&agrave;y thu h&uacute;t rất đ&ocirc;ng người d&acirc;n sinh sống quanh đ&acirc;y. C&oacute; những h&ocirc;m người d&acirc;n c&ograve;n phải&hellip; xếp h&agrave;ng để chờ được tập thể dục với m&aacute;y lọc nước. Những người d&acirc;n hay tập thể dục ở hồ Ngọc Kh&aacute;nh &ldquo;bật m&iacute;&rdquo;, so với m&aacute;y tập chạy bộ c&aacute; nh&acirc;n, tập với m&aacute;y lọc nước sẽ mệt hơn một ch&uacute;t, do phải &ldquo;guồng&rdquo; nước l&ecirc;n, nhưng ai cũng h&agrave;o hứng v&igrave; một c&ocirc;ng đ&ocirc;i việc.</p>\r\n\r\n<p><br />\r\nThời điểm hiện tại, m&ocirc; h&igrave;nh m&aacute;y lọc nước ki&ecirc;m tập thể dục mới chỉ được lắp đặt th&iacute; điểm tại 2 điểm hồ ở H&agrave; Nội l&agrave; hồ Ngọc Kh&aacute;nh v&agrave; hồ Thanh Nh&agrave;n.</p>\r\n\r\n<p>Hy vọng trong tương lai những chiếc m&aacute;y lọc nước đa năng như thế n&agrave;y sẽ c&ograve;n tiếp tục được nh&acirc;n rộng ra những khu vực kh&aacute;c tại H&agrave; Nội v&agrave; nhiều v&ugrave;ng kh&aacute;c. Thật l&agrave; một c&ocirc;ng đ&ocirc;i việc nếu ch&uacute;ng ta biết tự m&igrave;nh bảo vệ m&ocirc;i trường v&agrave; gi&aacute;o dục cho con ch&aacute;u sau n&agrave;y.</p>\r\n\r\n<p>Nguồn: Sưu tầm</p>\r\n\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div style="margin: 0px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px;">&nbsp;</div>\r\n', '1494141693dsc_0315_btpo.jpg', 3, 1, 1, '2017-09-08 05:58:05', NULL),
(4, 'Công nghệ lọc nước biển mới', 'cong-nghe-loc-nuoc-bien-moi', 'Phải hoạt động trên các vùng đất xa xôi, xa mạc hay phải di chuyển trên những chuyến hải trình hàng trăm ngày trên đại dương của quân đội Mỹ', '<div>\r\n<div style="margin: 0px 0px 5px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: justify;"><strong>Phải hoạt động tr&ecirc;n c&aacute;c v&ugrave;ng đất xa x&ocirc;i, xa mạc hay phải di chuyển tr&ecirc;n những chuyến hải tr&igrave;nh h&agrave;ng trăm ng&agrave;y tr&ecirc;n đại dương của qu&acirc;n đội Mỹ...</strong></div>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><strong>Hệ thống lọc nước biển của qu&acirc;n đội Mỹ</strong></span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Qu&acirc;n đội Mỹ hiểu r&otilde; điều n&agrave;y v&agrave; ng&agrave;nh hậu cần của đội qu&acirc;n mạnh nhất thế giới cũng đang c&oacute; những kế hoạch đ&aacute;p ứng nhu cầu nước uống v&agrave; sinh hoạt tối thiểu cho mỗi l&iacute;nh Mỹ l&agrave; 3 gallon nước mỗi ng&agrave;y (mỗi gallon bằng 3,7 l&iacute;t), đặc biệt trong bối cảnh ng&acirc;n s&aacute;ch v&agrave; chi ti&ecirc;u quốc ph&ograve;ng của nước n&agrave;y đang bị cắt giảm mạnh.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Người ta t&iacute;nh to&aacute;n rằng để vận chuyển v&agrave; đ&aacute;p ứng nhu cầu nước uống cho l&iacute;nh Mỹ đ&oacute;ng ở địa b&agrave;n xa căn cứ c&oacute; chi ph&iacute; tốn k&eacute;m kh&ocirc;ng kh&aacute;c g&igrave; việc vận chuyển nhi&ecirc;n liệu cho c&aacute;c phương tiện qu&acirc;n sự hoạt động.<br />\r\n<br />\r\nHơn thế nữa, việc vận chuyển nước cũng nguy hiểm kh&ocirc;ng k&eacute;m vận chuyển nhi&ecirc;n liệu. C&aacute;i gi&aacute; phải trả đ&ocirc;i khi l&agrave; cả mạng sống của c&aacute;c binh sỹ l&agrave;m nhiệm vụ &aacute;p tải v&agrave; ph&acirc;n ph&aacute;t nước.<br />\r\n<br />\r\nHiện Bộ Quốc ph&ograve;ng Mỹ chủ yếu đang dựa v&agrave;o một số chủng loại m&aacute;y lọc nước để sản xuất nước sạch d&ugrave;ng cho sinh hoạt ngay tại c&aacute;c khu vực bản địa nơi c&oacute; đ&ocirc;ng binh sỹ Mỹ đ&oacute;ng qu&acirc;n v&agrave; ch&uacute;ng sử dụng c&aacute;c nguồn nước ngay tại những địa phương n&agrave;y.<br />\r\n<br />\r\nMặc d&ugrave; phần n&agrave;o c&oacute; thể hỗ trợ c&aacute;c đơn vị qu&acirc;n đội đ&oacute;ng qu&acirc;n tr&ecirc;n địa b&agrave;n xa căn cứ c&oacute; thể chủ động sản xuất nước sạch nhưng c&aacute;c hệ thống lọc n&agrave;y tồn tại nhiều yếu điểm, đặc biệt l&agrave; về k&iacute;ch thước, trọng lượng v&agrave; phải c&oacute; nguồn năng lượng mới hoạt động được.<br />\r\n<br />\r\nCh&iacute;nh v&igrave; thế n&ecirc;n vấn đề n&agrave;y ảnh hưởng đến qu&aacute; tr&igrave;nh ho&agrave;n th&agrave;nh sứ mệnh của c&aacute;c đơn vị qu&acirc;n đội Mỹ.</span></p>\r\n\r\n<div style="margin: 0px; padding: 0px; line-height: 21px; clear: both;"><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Hiện nay, qu&acirc;n đội Mỹ đ&atilde; bắt đầu thử nhiệm hệ thống lọc nước hạng nhẹ&nbsp; (Lightweight Water Purifier - LWP) d&ugrave;ng cho lục qu&acirc;n. Thiết bị n&agrave;y c&oacute; khả năng sản xuất được 75 gallon nước sạch mỗi giờ, trong đ&oacute; nước nguồn l&agrave; nước biển mặn.</span></div>\r\n\r\n<p><br />\r\n<span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Tuy nhi&ecirc;n, thiết bị n&agrave;y cũng vẫn c&oacute; những yếu điểm tương tư như k&iacute;ch thước nặng (2.000 pound), phải d&ugrave;ng m&aacute;y ph&aacute;t điện 3KW v&agrave; nếu tr&ecirc;n bộ cũng phải d&ugrave;ng một chiếc Humvee để chở to&agrave;n bộ hệ thống n&agrave;y.<br />\r\n<br />\r\nHiện Cơ quan nghi&ecirc;n cứu cải tiến quốc ph&ograve;ng Mỹ DARPA đ&atilde; c&oacute; s&aacute;ng kiến sử dụng c&aacute;c vật liệu v&agrave; c&ocirc;ng nghệ mới (MANTRA) để chế tạo c&aacute;c hệ thống lọc nước thế hệ mới để trang bị cho lực lượng hải v&agrave; lục qu&acirc;n Mỹ.<br />\r\n<br />\r\nMặc d&ugrave; chưa c&ocirc;ng bố chi tiết nhưng những tiết lộ đầu ti&ecirc;n cho biết hệ thống mới n&agrave;y chỉ nặng 400 pound (mỗi pound Mỹ nặng khoảng 0,45kg) với khả năng lọc nước biển si&ecirc;u khỏe cộng với việc ti&ecirc;u thụ năng lượng chỉ khoảng 1 nửa c&aacute;c hệ thống đang d&ugrave;ng của Lục qu&acirc;n Mỹ hiện nay.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><strong>Biển-Nguồn nước ngọt v&ocirc; tận</strong></span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Tuy nhi&ecirc;n, tr&ecirc;n Tr&aacute;i đất, nước biển ng&agrave;y c&agrave;ng đ&oacute;ng vai tr&ograve; quan trọng trong việc cung cấp nước uống do việc ph&aacute;t triển c&aacute;c nguồn nước ngọt tự nhi&ecirc;n bị hạn chế. Theo khảo s&aacute;t của c&aacute;c tổ chức quốc tế, 97,5% nước tr&ecirc;n Tr&aacute;i đất l&agrave; nước biển v&agrave; kh&ocirc;ng hơn 2,5% l&agrave; nước ngọt. Ngo&agrave;i ra, phần lớn nước ngọt được dự trữ trong c&aacute;c s&ocirc;ng băng, tảng băng v&agrave; dưới l&ograve;ng đất. Nước m&agrave; con người c&oacute; thể sử dụng dễ d&agrave;ng chẳng hạn như nước trong s&ocirc;ng v&agrave; hồ chỉ chiếm 0,01% tổng lượng nước ngọt. Trong khi đ&oacute;, d&acirc;n số to&agrave;n cầu tăng tới s&aacute;u tỷ người v&agrave;o năm 2000 v&agrave; sẽ đạt t&aacute;m tỷ v&agrave;o năm 2025. 3,5 tỷ người trong số n&agrave;y chắc chắn sẽ đối mặt với t&igrave;nh trạng thiếu nước.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Đ&atilde; c&oacute; nhiều nh&agrave; m&aacute;y biến nước biển th&agrave;nh nước ngọt tại Trung Đ&ocirc;ng (Israel, Ảrập X&ecirc;&uacute;t), Địa Trung Hải (Malta), ch&acirc;u Mỹ, Nam &Acirc;u, Caribbean, Nhật Bản, quần đảo Channel, đảo Tenerife v&agrave; Gran Canaria - nơi nguồn nước tự nhi&ecirc;n rất hiếm do lượng mưa thấp.&nbsp;Israel&nbsp;v&agrave; Ả-Rập X&ecirc;-&uacute;t phải phụ thuộc nhiều v&agrave;o những nh&agrave; m&aacute;y như vậy để cấp nước cho người d&acirc;n trong khi c&aacute;c bang&nbsp;Florida&nbsp;v&agrave;&nbsp;California&nbsp;của Mỹ cũng bắt đầu x&acirc;y dựng nh&agrave; m&aacute;y lọc nước biển. 18 nh&agrave; m&aacute;y kiểu n&agrave;y đang được xem x&eacute;t x&acirc;y dựng tại&nbsp;California.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Trong những thập kỷ 1960-1970, c&acirc;u trả lời cho t&igrave;nh trạng thiếu nước l&agrave; x&acirc;y dựng nhiều hồ chứa hơn. Tuy nhi&ecirc;n, gi&aacute; đất gia tăng đ&atilde; l&agrave;m cho c&aacute;c c&ocirc;ng ty nước thương mại kh&ocirc;ng thể lựa chọn giải ph&aacute;p n&agrave;y. Khử muối trong nước biển l&agrave; một giải ph&aacute;p tương đối mới. N&oacute; bắt nguồn từ Trung Đ&ocirc;ng v&agrave;o những năm 1980 v&agrave; 1990. Trong tổng số hơn 7.500 nh&agrave; m&aacute;y khử muối đang hoạt động tr&ecirc;n to&agrave;n thế giới, 60% nằm tại Trung Đ&ocirc;ng với tổng c&ocirc;ng suất 16 tỷ l&iacute;t nước mỗi ng&agrave;y.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><strong>Tr&iacute;ch: Sưu tầm</strong></span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><span style="font-size:12px">Ch&uacute;ng ta c&oacute; thể thấy tầm quan trọng của nguồn nước với đời sống con người như thế n&agrave;o. Hơn ai hết ch&uacute;ng ta cần phải biết bảo vệ nguồn nước ch&uacute;ng ta đang sử dụng. Đừng qu&aacute; lạm dụng cũng như c&oacute; t&aacute;c động l&agrave;m ảnh hưởng tới nguồn nước. Chỉ c&oacute; thế ch&uacute;ng ta mới c&oacute; thể m&atilde;i y&ecirc;n t&acirc;m về sức khỏe của m&igrave;nh.</span></span></p>\r\n</div>\r\n', '1494141829Sorek-Overview-1440604845_680x0.jpg', 4, 1, NULL, '2017-05-07 09:23:49', NULL),
(5, 'Những hành động nhỏ để bảo vệ nguồn nước', 'nhung-hanh-dong-nho-de-bao-ve-nguon-nuoc', 'Lượng nước chiếm hơn 97 % bề mặt trái đất nhưng lượng nước có thể dùng cho sinh hoạt và sản xuất lại chỉ chiếm khoảng 3%', '<div>\r\n<div style="margin: 0px 0px 5px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: justify;"><strong>Lượng nước chiếm hơn 97 % bề mặt tr&aacute;i đất nhưng lượng nước c&oacute; thể d&ugrave;ng cho sinh hoạt v&agrave; sản xuất lại chỉ chiếm khoảng 3%.</strong></div>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Nước l&agrave; nguồn t&agrave;i nguy&ecirc;n v&ocirc; gi&aacute; của nh&acirc;n loại, nhưng nguồn t&agrave;i nguy&ecirc;n n&agrave;y hiện đang bị t&aacute;c động nghi&ecirc;m trọng với t&igrave;nh trạng &ocirc; nhiễm nguồn nước đang ng&agrave;y c&agrave;ng gia tăng như hiện nay.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Thời gian qua, Việt Nam tham gia nhiều hoạt động quốc tế về bảo vệ nguồn t&agrave;i nguy&ecirc;n nước, ph&ograve;ng chống biến đổi kh&iacute; hậu v&agrave; nước biển d&acirc;ng. Mặc d&ugrave; vậy, &ocirc; nhiễm m&ocirc;i trường, gia tăng d&acirc;n số, ph&aacute;t triển n&oacute;ng kinh tế - x&atilde; hội đang khiến hệ thống s&ocirc;ng, hồ chứa nước nước ta suy kiệt.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Thuộc nh&oacute;m quốc gia thiếu nước</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">L&agrave; quốc gia c&oacute; mạng lưới s&ocirc;ng ng&ograve;i d&agrave;y đặc v&agrave; lượng mưa trung b&igrave;nh l&ecirc;n đến 1500 &ndash; 2000 mm/năm, tuy nhi&ecirc;n, Việt Nam vẫn thuộc nh&oacute;m quốc gia thiếu nước do lượng nước mặt b&igrave;nh qu&acirc;n đầu người thấp hơn chỉ ti&ecirc;u 4.000 m3/năm/người của Hội T&agrave;i nguy&ecirc;n nước quốc tế.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Theo một khảo s&aacute;t gần đ&acirc;y, hai x&atilde; Hưng Thạnh v&agrave; Thạnh T&acirc;n (T&acirc;n Phước, Tiền Giang) c&oacute; hơn 70% d&acirc;n cư (1.300 hộ) kh&ocirc;ng c&oacute; nước sạch d&ugrave;ng cho sinh hoạt h&agrave;ng ng&agrave;y. Do nguồn nước nhiễm ph&egrave;n v&agrave; vi sinh nặng, c&aacute;c giếng nước muốn sử dụng được phải s&acirc;u hơn 400 m&eacute;t, tốn nhiều kinh ph&iacute; n&ecirc;n người d&acirc;n buộc phải d&ugrave;ng nước s&ocirc;ng trong sinh hoạt &ocirc; nhiễm.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Thống k&ecirc; của Bộ Y tế v&agrave; Bộ TN&amp;MT cho thấy, trung b&igrave;nh mỗi năm nước ta c&oacute; khoảng 9.000 người tử vong v&igrave; nguồn nước v&agrave; điều kiện vệ sinh k&eacute;m.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Theo c&aacute;c tổ chức quốc tế, ngưỡng khai th&aacute;c t&agrave;i nguy&ecirc;n nước được ph&eacute;p giới hạn trong phạm vi 30% lượng d&ograve;ng chảy. Nhưng hiện nay, hầu hết c&aacute;c tỉnh miền Trung v&agrave; T&acirc;y Nguy&ecirc;n đ&atilde; v&agrave; đang khai th&aacute;c tr&ecirc;n 50% lượng d&ograve;ng chảy, l&agrave;m suy tho&aacute;i nghi&ecirc;m trọng nước tr&ecirc;n c&aacute;c lưu vực s&ocirc;ng lớn như s&ocirc;ng Hồng, Th&aacute;i B&igrave;nh v&agrave; s&ocirc;ng Đồng Nai.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">H&agrave;nh động đơn giản để g&igrave;n giữ nguồn nước</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Để giải quyết &ocirc; nhiễm nước, c&aacute;c chuy&ecirc;n gia nghi&ecirc;n cứu m&ocirc;i trường nước đề xuất cần lập h&agrave;nh lang bảo vệ nước, gồm hồ chứa thủy điện, thủy lợi; hồ tự nhi&ecirc;n, nh&acirc;n tạo ở c&aacute;c đ&ocirc; thị, khu d&acirc;n cư; hồ, ao lớn c&oacute; chức năng điều h&ograve;a; đầm, đầm ph&aacute;; s&ocirc;ng, suối, k&ecirc;nh, rạch l&agrave; nguồn cấp nước, trục ti&ecirc;u nước&hellip; Tại c&aacute;c địa phương, UBND tỉnh sẽ chịu tr&aacute;ch nhiệm cắm mốc chỉ giới v&agrave; quản l&yacute; h&agrave;nh lang bảo vệ nguồn nước, đồng thời quản l&yacute; chặt chẽ việc xả thải v&agrave;o nguồn nước.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Với c&aacute;c doanh nghiệp, c&aacute; nh&acirc;n, một h&agrave;nh động nhỏ cũng c&oacute; thể g&oacute;p phần l&agrave;m sạch nguồn nước. Bảo vệ s&ocirc;ng ng&ograve;i, k&ecirc;nh rạch, giảm thiểu &ocirc; nhiễm do r&aacute;c thải được xem l&agrave; h&agrave;nh động g&igrave;n giữ nguồn nước đơn giản nhưng chưa được cộng đồng quan t&acirc;m đ&uacute;ng mức.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">T&igrave;nh nguyện vi&ecirc;n nhặt r&aacute;c thải ở k&ecirc;nh, rạch</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">C&aacute;c t&igrave;nh nguyện vi&ecirc;n VBL nhặt r&aacute;c tại k&ecirc;nh, rạch</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Chương tr&igrave;nh &quot;1 ph&uacute;t tiết kiệm - triệu niềm vui&quot; do C&ocirc;ng ty TNHH Nh&agrave; m&aacute;y Bia Việt Nam (VBL) ph&aacute;t động tại Tiền Giang (ng&agrave;y 5/6) v&agrave; TP HCM (ng&agrave;y 11/6) vừa qua. Với 2 đợt triển khai chương tr&igrave;nh tại Tiền Giang v&agrave; TP HCM, đ&atilde; c&oacute; gần 200 nh&acirc;n vi&ecirc;n VBL tham gia với vai tr&ograve; t&igrave;nh nguyện vi&ecirc;n, c&ugrave;ng chung tay dọn dẹp vệ sinh dọc bờ k&ecirc;nh khu vực x&atilde; Thạnh T&acirc;n (huyện T&acirc;n Phước, Tiền Giang) v&agrave; phường Thạnh Xu&acirc;n (quận 12, TP HCM). Bảo vệ s&ocirc;ng ng&ograve;i, k&ecirc;nh rạch, giảm thiểu &ocirc; nhiễm do r&aacute;c thải được xem l&agrave; h&agrave;nh động g&igrave;n giữ nguồn nước đơn giản nhưng chưa được cộng đồng quan t&acirc;m đ&uacute;ng mức.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Những h&agrave;nh động đơn giản tưởng trừng như nhỏ b&eacute; nhưng lại c&oacute; t&aacute;c dụng lớn để c&ugrave;ng nhau tập hợp th&agrave;nh những biện ph&aacute;p bảo vệ nguồn nước của ch&uacute;ng ta.</span></p>\r\n</div>\r\n', '1525104100a5c04f69be6852360b79 (1).jpg', 5, 1, 0, '2018-04-30 18:01:40', NULL),
(6, 'Uống nước mưa có thực sự tốt', 'uong-nuoc-mua-co-thuc-su-tot', 'Nước mưa có thể được sử dụng như nước uống. Nước mưa cũng là nguồn cung cấp nước cho các loại cây trồng. Sau khi mưa, đa số người đều cảm thấy dễ chịu, hiện tượng này được giải thích là do lượng ion mang điện tích âm tăng lên, tuy vậy nếu mưa kéo dài', '<div>\r\n<div style="margin: 0px 0px 5px; padding: 0px; font-family: Arial, Helvetica, sans-serif; color: rgb(53, 53, 53); line-height: 21px; text-align: justify;"><strong>Trong c&aacute;c loại nước lấy từ tự nhi&ecirc;n, ngo&agrave;i nước sạch đ&atilde; được xử l&yacute; ở c&aacute;c nh&agrave; m&aacute;y...</strong></div>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Nước mưa c&oacute; thể được sử dụng như nước uống. Nước mưa cũng l&agrave; nguồn cung cấp nước cho c&aacute;c loại c&acirc;y trồng. Sau khi mưa, đa số người đều cảm thấy dễ chịu, hiện tượng n&agrave;y được giải th&iacute;ch l&agrave; do lượng ion mang điện t&iacute;ch &acirc;m tăng l&ecirc;n, tuy vậy nếu mưa k&eacute;o d&agrave;i nhiều ng&agrave;y th&igrave; do độ ẩm tăng cao th&igrave; lại g&acirc;y cảm gi&aacute;c kh&oacute; chịu.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><strong>C&oacute; thể uống nước mưa?</strong></span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Theo c&aacute;c nghi&ecirc;n cứu đ&aacute;nh gi&aacute; những&nbsp;người bị gout, phong h&agrave;n thấp, suy tim, thiểu năng động mạch v&agrave;nh, xơ vữa động mạch, rối loạn ti&ecirc;u h&oacute;a th&igrave; kh&ocirc;ng n&ecirc;n uống nước qu&aacute; lạnh, nhất l&agrave; uống trong bữa ăn.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Nước c&oacute; vai tr&ograve; quan trọng trong cơ thể con người v&igrave; n&oacute; chiếm tới 45%-60% trọng lượng cơ thể. N&oacute; cũng l&agrave; th&agrave;nh phần chủ yếu của tế b&agrave;o v&agrave; c&aacute;c tổ chức kh&aacute;c, l&agrave;m m&ocirc;i trường trung gian cho c&aacute;c phản ứng h&oacute;a học diễn ra trong cơ thể con người trong qu&aacute; tr&igrave;nh sống.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><strong>Thừa thiếu đều kh&ocirc;ng tốt</strong></span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Mỗi ng&agrave;y ch&uacute;ng ta cần từ 40 đến 50 ml/kg c&acirc;n nặng. Do vậy h&agrave;ng ng&agrave;y ch&uacute;ng ta cần khoảng 2-3 l&iacute;t nước. Ch&uacute;ng được bổ xung từ c&aacute;c nguồn kh&aacute;c nhau như nước uống, từ thức ăn, từ c&aacute;c phản ứng chuyển h&oacute;a ở tế b&agrave;o. C&aacute;c nh&agrave; khoa học khuy&ecirc;n rằng h&agrave;ng ng&agrave;y cần bổ xung một lượng nước đủ b&ugrave; lượng nước b&agrave;i tiết để đảm bảo cần bằng trong trao đổi nước h&agrave;ng ng&agrave;y của cơ thể, duy tr&igrave; cuộc sống b&igrave;nh thường.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">V&agrave;o mỗi buổi s&aacute;ng sớm sau khi đ&aacute;nh răng n&ecirc;n uống chừng 0,3 l&iacute;t nước đun s&ocirc;i để nguội. Việc n&agrave;y gi&uacute;p tinh thần tỉnh t&aacute;o, k&iacute;ch hoạt c&aacute;c hoạt động của hệ tim mạch, hệ ti&ecirc;u h&oacute;a, hệ tiết niệu v&agrave; giống như một cơ chế lọc rửa cơ thể sau 1 đ&ecirc;m ngừng hoạt động để c&aacute;c bộ m&aacute;y hoạt động.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Trong cả ng&agrave;y n&ecirc;n uống nước thường xuy&ecirc;n v&agrave;o l&uacute;c l&agrave;m việc&nbsp; từ 1-1,5 l&iacute;t v&agrave; n&ecirc;n uống th&agrave;nh nhiều đợt kh&aacute;c nhau. &nbsp;C&oacute; thể d&ugrave;ng nước s&ocirc;i để nguội, nước lọc, nước kho&aacute;ng, nước tr&agrave;, nước &eacute;p tr&aacute;i c&acirc;y, c&aacute;c loại sữa... nhưng lưu &yacute; người c&oacute; thể tạng h&agrave;n hay lạnh bụng, dễ ti&ecirc;u chảy th&igrave; n&ecirc;n uống nước ấm, c&oacute; thể th&ecirc;m &iacute;t gừng để uống.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Nếu muốn giải nhiệt th&igrave; c&oacute; thể d&ugrave;ng nước m&aacute;t nhưng kh&ocirc;ng uống nước đ&aacute; lạnh v&igrave; sẽ g&acirc;y bất lợi cho răng, miệng, hầu họng, dạ d&agrave;y. Người bị bệnh gout, phong h&agrave;n thấp hay đau nhức c&aacute;c khớp, suy tim, thiểu năng động mạch v&agrave;nh, xơ vữa động mạch, rối loạn ti&ecirc;u h&oacute;a... th&igrave; kh&ocirc;ng n&ecirc;n uống nước qu&aacute; lạnh, nhất l&agrave; uống trong bữa ăn.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">V&agrave;o buổi chiều tối c&oacute; thể d&ugrave;ng nướcdưới dạng nước canh (rau, củ, quả), sữa c&aacute;c loại, ch&egrave; tr&aacute;i c&acirc;y... để gi&uacute;p dễngủ. Trước khi đi ngủ, n&ecirc;n uống 1/2 đến 1 ly nước (ngoại trừ những người hay bị tiểu đ&ecirc;m).</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Nếu uống kh&ocirc;ng đủ nước hoặc cơ thểv&igrave; một l&yacute; do n&agrave;o đ&oacute; m&agrave; bị mất nhiều nước (đổ nhiều mồ h&ocirc;i, n&ocirc;n mửa, ti&ecirc;u chảy,mất m&aacute;u...) m&agrave; kh&ocirc;ng kịp b&ugrave; đủ th&igrave; chức năng hoạt động của thận suy yếu, t&oacute;c dễbị g&atilde;y rụng, da kh&ocirc;, nhăn nheo, người mệt mỏi, nhức đầu, ch&oacute;ng mặt, giảm tr&iacute;nhớ, mất tập trung, dễ bị t&aacute;o b&oacute;n, sỏi thận, sỏi mật, đau nhức c&aacute;c khớp, ngườicao tuổi dễ bị cườm mắt. Ngược lại, nếu uống vượt xa y&ecirc;u cầu của cơ thể th&igrave; m&aacute;uv&agrave; c&aacute;c chất trung gian sẽ lo&atilde;ng dẫn tới hiện tượng ngộ độc nước g&acirc;y cho&aacute;ng,nhức đầu, thậm ch&iacute; c&oacute; thể h&ocirc;n m&ecirc;, với người cao huyết &aacute;p th&igrave; c&oacute; nguy cơ bị đột quỵ.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><strong>Nước mưa chưa chắc đ&atilde; tốt</strong></span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif"><span style="font-size:12px">Nước sạch l&agrave; loại nước đảm bảo được c&aacute;c ti&ecirc;u chuẩn vệ &iacute;nh an to&agrave;n cần thiết: kh&ocirc;ng m&agrave;u, kh&ocirc;ng m&ugrave;i, kh&ocirc;ng vị, kh&ocirc;ng h&ograve;a lẫn được c&aacute;c tạp chất, c&aacute;c chất vi lượng độc hại.</span></span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Để đ&aacute;nh gi&aacute; một nguồn nước c&oacute; sạch hay kh&ocirc;ng th&igrave; cần dựa v&agrave;o c&aacute;c ti&ecirc;u chuẩn đ&aacute;nh gi&aacute; của c&aacute;c trung t&acirc;m kiểm định. Tuy nhi&ecirc;n kh&ocirc;ng phải l&uacute;c n&agrave;o cũng c&oacute; thể biết được ch&iacute;nh x&aacute;c kết quả. Trong tất cả c&aacute;c loại nước uống: Nước đun s&ocirc;i để nguội v&agrave; nước lọc vẫn được coi l&agrave; tốt nhất. C&oacute; rất nhiều loại m&aacute;y lọc nước hiện nay c&oacute; những chức năng lọc nước si&ecirc;u việt, lọc sạch vi khuẩn,vi rus, c&aacute;c h&oacute;a chất độc hại, asen, amip,&hellip;..</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Trước kia người ta thường cho rằng nước mưa l&agrave; một nguồn nước sạch, tuy nhi&ecirc;n đến thời điểm b&acirc;y giờ n&oacute; lại l&agrave; một trong những nguồn nước v&ocirc; c&ugrave;ng độc hại.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Bạn biết đ&oacute;, điều kiện m&ocirc;i trường kh&ocirc;ng kh&iacute; đang ng&agrave;y c&agrave;ng &ocirc; nhiễm bởi kh&oacute;i bụi từ c&aacute;c nh&agrave; m&aacute;y, khu c&ocirc;ng nghiệp, c&aacute;c h&oacute;a chất bay hơi. Gặp cơn mưa sẽ bị h&ograve;a tan v&agrave;o trong c&aacute;c giọt nước mưa v&igrave; vậy k&eacute;o theo mưa xuống l&agrave; h&agrave;ng ng&agrave;n chất độc hại, chất bụi bẩn.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">C&aacute;c nguồn bệnh nảy sinh từ việc sử dụng nguồn nước mưa bị &ocirc; nhiễm l&agrave; kết quả của việc sử dụng m&agrave; kh&ocirc;ng hay biết th&agrave;nh phần nước mưa c&oacute; những g&igrave;. Do đ&oacute;, để sử dụng nguồn nước mưa c&oacute; hiệu quả bạn n&ecirc;n hứng nước mưa sau 15p trời mưa v&agrave; kh&ocirc;ng hứng nước mưa dưới giọt tranh.</span></p>\r\n\r\n<p><span style="color:rgb(53, 53, 53); font-family:arial,helvetica,sans-serif">Biết c&aacute;ch sử dụng nguồn nước mưa hợp l&yacute; sẽ gi&uacute;p ch&uacute;ng ta tr&aacute;nh được c&aacute;c nguy cơ bệnh.</span></p>\r\n</div>\r\n', '152510407098613ac7cbc627987ed7.jpg', 6, 1, 1, '2018-04-30 18:01:10', NULL);

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
(16, 'Tam', 'tam', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766124hoamai.jpg', NULL, 1, '2014-06-26 14:02:11'),
(17, 'Tam adf', 'tam-adf', 'test', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/969086_606407099378205_1312607361_n.jpg" style="height:340px; width:509px" /></p>\r\n', '1403766143300x215-7.png', NULL, 1, '2014-06-26 17:04:03'),
(18, 'test 1', 'test-1', 'asdf', '<p><img alt="" src="http://hoamai.tam/admin/uploads/images/image1.jpeg" style="height:177px; width:284px" /></p>\r\n', '1403766152hoamai.jpg', NULL, 1, '2014-06-26 14:02:32'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
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
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tuvan`
--
ALTER TABLE `tuvan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
