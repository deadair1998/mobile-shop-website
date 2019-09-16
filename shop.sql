-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2018 at 11:56 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `date_order` date NOT NULL,
  `promt_price` double DEFAULT '0',
  `total` double NOT NULL,
  `payment_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_date` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `promt_price`, `total`, `payment_method`, `note`, `token`, `token_date`, `status`) VALUES
(28, 57, '2018-09-25', 0, 137367000, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date_order` date NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='chi_tiet_hoa_don' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `price`, `name`, `date_order`, `image`) VALUES
(30, 28, 4, 3, 25790000, 'iPhone 8 256GB', '2018-09-25', 'iphone8.jpg'),
(31, 28, 7, 3, 19999000, 'iPhone 7 Plus 32GB', '2018-09-25', 'iphone7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_url` int(11) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `id_parent`, `name`, `id_url`, `icon`) VALUES
(1, NULL, 'iPhone', 1, 'fa-mobile fa-2x'),
(2, NULL, 'iPad', 2, 'fa-tablet'),
(3, NULL, 'Macbook', 3, 'fa-laptop'),
(4, NULL, 'iMac - Mac Pro', 13, 'fa-desktop'),
(5, NULL, 'Apple Watch', 4, 'fa-clock-o'),
(7, 1, 'iPhone X', 6, NULL),
(8, 1, 'iPhone 8|8Plus', 7, NULL),
(9, 1, 'iPhone 7|7Plus', 8, NULL),
(10, 1, 'iPhone 6|6Plus', 9, NULL),
(11, 2, 'iPad Pro', 10, NULL),
(12, 2, 'iPad (New) 2017', 11, NULL),
(13, 2, 'iPad mini 4', 12, NULL),
(14, 3, 'Macbook 12 inch', 14, NULL),
(15, 3, 'Macbook Air', 15, NULL),
(16, 3, 'Macbook Pro Retina', 16, NULL),
(17, 4, 'iMAC', 17, NULL),
(18, 4, 'MacPro', 18, NULL),
(19, 4, 'Mac mini', 19, NULL),
(21, 5, 'apple watch series 3', NULL, NULL),
(22, 5, 'apple watch series 1', NULL, NULL),
(23, 1, 'iphone xs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `gender`, `email`, `address`, `phone`, `note`) VALUES
(57, 'Nam', NULL, 'trungnam2101998@gmail.com', 'Đà Nẵng', '0935496498', '');

-- --------------------------------------------------------

--
-- Table structure for table `page_url`
--

CREATE TABLE `page_url` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `page_url`
--

INSERT INTO `page_url` (`id`, `url`) VALUES
(54, 'apple-cap-apple-cap-ket-noi-30-pin-to-usb-cable'),
(50, 'apple-cap-chuyen-doi-lightning-to-35mm'),
(57, 'apple-cap-hdmi-to-hdmi-cable-18m'),
(61, 'apple-cap-ket-noi-apple-lightning-to-30-pin-adapter'),
(53, 'apple-cap-ket-noi-lightning-to-usb-cable'),
(56, 'apple-cap-lightning-to-usb-cable-(2m)'),
(64, 'apple-cap-lightning-to-usb-camera-adapter'),
(65, 'apple-cap-mini-displayport-to-vga-adapter'),
(66, 'apple-cap-thunderbolt-to-gigabit-ethernet-adapter'),
(58, 'apple-cap-usb-c-charge-cable-(2m)'),
(63, 'apple-cap-usb-c-to-usb'),
(76, 'apple-op-lung-iphone-66s-leather-red'),
(77, 'apple-op-lung-iphone-66s-plus-leather-midnight-blue'),
(79, 'apple-op-lung-iphone-7-plus8-plus-silicon-cocoa'),
(78, 'apple-op-lung-iphone-7-plus8-plus-silicon-pink-sand'),
(68, 'apple-op-lung-iphone-78-silicon-cocoa'),
(69, 'apple-op-lung-iphone-78-silicon-pink-sand'),
(71, 'apple-op-lung-iphone-78-silicon-red'),
(70, 'apple-op-lung-iphone-78-silicon-sea-blue'),
(72, 'apple-op-lung-iphone-87--silicon-rose-red'),
(73, 'apple-op-lung-iphone-87--silicon-white'),
(55, 'apple-sac-12w-usb-power-adapter'),
(51, 'apple-sac-magsafe-to-magsafe-2-converter'),
(52, 'apple-sac-nguon-5w-usb-power-adapter'),
(60, 'apple-tai-nghe-earpods-with-lightning-connection'),
(62, 'apple-tai-nghe-earpods-with-remote-and-mic'),
(4, 'apple-watch'),
(45, 'apple-watch-series-1-38mm,-vien-nhom,-day-mau-trang'),
(46, 'apple-watch-series-1-42mm,-vien-nhom,-day-mau-den'),
(48, 'apple-watch-series-3-gps-38mm,-vien-nhom,-day-mau-hong'),
(47, 'apple-watch-series-3-gps-38mm,-vien-nhom,-day-mau-trang-xam'),
(49, 'apple-watch-series-3-gps-42mm,-vien-nhom,-day-mau-den'),
(17, 'imac'),
(80, 'imac-2017-4k-retina-display-215-inch---mndy2---core-i5-30ghz-8gb-hdd-1tb'),
(82, 'imac-2017-4k-retina-display-215-inch---mne02---core-i5-34ghz-8gb-hdd-1tb'),
(81, 'imac-2017-5k-retina-display-27inch---mne92---core-i5-34ghz-8gb-fusion-drive-1tb'),
(83, 'imac-2017-5k-retina-display-27inch---mned2---core-i5-38ghz-8gb-fusion-drive-2tb'),
(85, 'imac-215-inch-2017---mmqa2---core-i5-23ghz-8gb-hdd-1tb'),
(13, 'imac-mac-pro'),
(87, 'imac-mk482-(retina-5k,-27-inch,-late-2015)---core-i5--33ghz-fursion-drive'),
(90, 'imac-pro-–-mq2y2-(8core32g1tbvega-56)-–-new'),
(93, 'imac-pro-–-mq2y2-option-(10core128gb2tbvega-64)-like-new-99%'),
(95, 'imac-pro-–-mq2y2-option-(14core64g2tbvega-64)'),
(2, 'ipad'),
(12, 'ipad-mini-4'),
(44, 'ipad-mini-4-wi-fi-4g-128gb'),
(11, 'ipad-new-2017'),
(10, 'ipad-pro'),
(34, 'ipad-pro-105-wi-fi-256gb-(2017)'),
(32, 'ipad-pro-105-wi-fi-4g-256gb-(2017)'),
(39, 'ipad-pro-105-wi-fi-4g-512gb-(2017)'),
(31, 'ipad-pro-105-wi-fi-4g-64gb-(2017)'),
(30, 'ipad-pro-105-wi-fi-64gb-(2017)'),
(35, 'ipad-pro-129--wi-fi-64gb-(2017)'),
(37, 'ipad-pro-129-wi-fi-256gb-(2017)'),
(38, 'ipad-pro-129-wi-fi-4g-256gb-(2017)'),
(33, 'ipad-pro-129-wi-fi-4g-512gb-(2017)'),
(36, 'ipad-pro-129-wi-fi-4g-64gb-(2017)'),
(41, 'ipad-wi-fi-128gb-(2017)'),
(40, 'ipad-wi-fi-32gb-(2017)'),
(43, 'ipad-wi-fi-4g-128gb-(2017)'),
(42, 'ipad-wi-fi-4g-32gb-(2017)'),
(1, 'iphone'),
(29, 'iphone-6-32gb-(2017)'),
(9, 'iphone-6-6plus'),
(28, 'iphone-6s-plus-32gb'),
(27, 'iphone-7-32gb'),
(8, 'iphone-7-7plus'),
(26, 'iphone-7-plus-32gb'),
(23, 'iphone-8-256gb'),
(25, 'iphone-8-64gb'),
(7, 'iphone-8-8plus'),
(22, 'iphone-8-plus-256gb'),
(24, 'iphone-8-plus-64gb'),
(125, 'iphone-9-16gb'),
(123, 'iphone-9-256gb'),
(124, 'iphone-9-64gb'),
(6, 'iphone-x'),
(20, 'iphone-x-256gb'),
(21, 'iphone-x-64gb'),
(19, 'mac-mini'),
(97, 'mac-mini-2014-core-i5-26ghz-8gb-1tb-new-99%'),
(18, 'mac-pro'),
(88, 'mac-pro-md878----6-core--dual-gpu-d700-12gb-new-99%--used'),
(91, 'mac-pro-me253----quad-core--256gb--dual-gpu-d300--new-99%--used'),
(3, 'macbook'),
(14, 'macbook-12-inch'),
(99, 'macbook-12-inch-2017-core-i5-8gb-512gb-(nhieu-mau)'),
(100, 'macbook-12-inch-2017-core-m3-8gb-256gb-(-nhieu-mau-)'),
(15, 'macbook-air'),
(102, 'macbook-air-2015--116-inch-mjvp2--max-option'),
(103, 'macbook-air-mjvm2-(116-inch,-early-2015)---core-i5--ram-4gb--ssd-128gb'),
(104, 'macbook-air-mqd32-(133-inch,-2017)---core-i5--ram-8gb--ssd-128gb'),
(105, 'macbook-air-mqd32-(133-inch,-2017)---core-i5--ram-8gb--ssd-128gb-new-99%'),
(106, 'macbook-air-mqd42-(133-inch,-2017)---core-i5--ram-8gb--ssd-256gb'),
(107, 'macbook-pro-133-2017-mpxq2-(core-i5--8gb--128gb)-(gray-space-)'),
(108, 'macbook-pro-133-2017-mpxt2-(core-i5--8gb--256gb)-new-100%'),
(16, 'macbook-pro-retina'),
(109, 'macbook-pro-retina-mjlq2-(154-inch,-mid-2015)---core-i7--ram-16gb--ssd-256gb'),
(110, 'mlh12-macbook-2016-touchbar-13-inch-16gb-256gb-touchbar-likenew-99%'),
(111, 'mnqf2-macbook-2016-touchbar-13-inch-16gb-used-new-97%'),
(112, 'mnqf2-macbook-2016-touchbar-13-inch-i5-16gb-512gb-ssd-touchbar'),
(113, 'mnqg2---macbook-pro-retina-2016-13inch-512gb-touch-bar-(silver)--new-99%'),
(114, 'mptr2---macbook-pro-2017-15-inch-ssd-256gb-touchbar-(-space-gray)'),
(115, 'mptt2---macbook-pro-2017-15-inch-quad-i7-31ghz-1tb-ssd-option-(space-gray)'),
(116, 'mptt2---macbook-pro-2017-15-inch-ssd-512gb-touchbar-(-space-gray)'),
(117, 'mptu2---macbook-pro-2017-15-inch-ssd-256gb-touchbar-(sliver)'),
(118, 'mptv2---macbook-pro-2017-15-inch-ssd-512gb-touchbar-(-silver-)'),
(119, 'mpxv2--macbook-pro-retina-2017-13-inch-256gb-touchbar-(-gray-space-)'),
(120, 'mpxw2---macbook-pro-retina-2017-13inch-ssd-512gb-touchbar-(gray-space-)'),
(121, 'mpxx2---macbook-pro-retina-2017-13inch-ssd-256gb-touchbar-(-silver-)'),
(122, 'mpxy2---macbook-pro-retina-2017-13inch-ssd-512gb-touchbar-(-silver-)'),
(5, 'phu-kien'),
(59, 'pknk-cap-ket-noi-lightning-to-usb-c-mk0x2zaa'),
(74, 'pknk-op-lung-iphone-87--silicon-dark-olive-mr3n2fea'),
(75, 'pknk-op-lung-iphone-87--silicon-ultra-violet-mqgr2fea'),
(136, 'test-5'),
(133, 'test3'),
(135, 'test4'),
(101, 'the-new-macbook-2016---mmgm2---12--core-m5--ram-8gb--ssd-512gb-(rose-gold)');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `promotion_price` float NOT NULL DEFAULT '0',
  `promotion` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: sp bình thường, 1: sp đặc biệt',
  `new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: old, 1:new',
  `update_at` date NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: chua xoa, 1: da xoa',
  `hot` tinyint(1) NOT NULL COMMENT '0: sp bt 1: hot deals'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_type`, `id_parent`, `name`, `detail`, `price`, `promotion_price`, `promotion`, `image`, `status`, `new`, `update_at`, `deleted`, `hot`) VALUES
(4, 8, 1, 'iPhone 8 256GB', '  Màn Hình: 4.7 inch\r\n	Camera: 12.0 MP/ 7.0 MP\r\n	Pin: 1821 mAh\r\n	Ram: 2 GB\r\n	CPU: Apple A11 Bionic\r\n	HĐH: iOS 11', 25790000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Giảm ngay 1,000,000đMua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không q', 'iphoneX2.jpg', 0, 1, '2018-02-16', 0, 0),
(7, 9, 1, 'iPhone 7 Plus 32GB', ' Màn Hình: 5.5 inch (1920 x 1080 pixels)\r\n	Camera: Chính: Dual Camera 12.0MP; Phụ: 7.0MP\r\n	Pin:  Li-Ion 11.1 Wh (2900 mAh)\r\n	Ram: 3 GB\r\n	CPU : Apple A10, 4 Nhân, Quad-core 2.3 GHz\r\n	HĐH: iOS', 19999000, 19909000, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'iphone7.jpg', 0, 1, '2018-02-16', 0, 0),
(23, 12, 2, 'iPad Wi-Fi4G 32GB ', '  Màn Hình : Retina display, , 9.7 inch(2048 x 1536 pixels)\r\n	Camera : 8.0 MP, /1.2 MP\r\n	Pin : 32.4 Wh Lithium - Ion\r\n	Ram : 2 GB\r\n	Kết Nối : Wi‑Fi,3G,4G\r\n	HĐH : iOS', 12999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%KM2:Giảm ngay 500,000đGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm ngay 2% và không quá 300,000đ k', 'ipad1.jpg', 0, 0, '2018-02-16', 0, 0),
(26, 22, 5, 'AppleWatch Series1 ', 'Dòng máy tương thích : iPhone\n	Hiển thị màn hình : OLED Retina display with Force Touch (450 nits)\n	Xử lý/ Bộ nhớ : S1P dual-core\n	Dung lượng Pin/Thời gian sử dụng : Lên đến 18h\n	Thông báo : Tin nhắn, cuộc gọi,...', 7999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'apple-watch-series-1-38mm,-vien-nhom,-day-mau-trang.png', 0, 0, '2018-02-16', 1, 0),
(28, 21, 5, 'AppleWatch Series3 ', 'Dòng máy tương thích : iPhone\n	Hiển thị màn hình : OLED Retina display with Force Touch\n	Xử lý/ Bộ nhớ : W2 chip\n	Dung lượng Pin/Thời gian sử dụng : Lên đến 18h\n	Thông báo : Tin nhắn, cuộc gọi,..\n ', 9999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'apple-watch-series-3-gps-38mm,-vien-nhom,-day-mau-trang-xam.png', 0, 0, '2018-02-16', 0, 0),
(64, 17, 4, 'iMac 2017 5K 27inch ', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 57500000, 0, '', 'imac-2017-5k-retina-display-27inch---mned2---core-i5-38ghz-8gb-fusion-drive-2tb.png', 0, 0, '2018-02-16', 0, 0),
(69, 18, 4, 'Mac Pro MD878  ', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 77000000, 0, '', 'mac-pro-md878----6-core--dual-gpu-d700-12gb-new-99--used.png', 0, 0, '2018-02-16', 0, 0),
(72, 18, 4, 'Mac Pro ME253  ', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 39000000, 0, '', 'mac-pro-me253----quad-core--256gb--dual-gpu-d300--new-99--used.png', 0, 0, '2018-02-16', 0, 0),
(78, 19, 4, 'Mac mini 2014 ', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 12500000, 0, '', 'mac-mini-2014-core-i5-26ghz-8gb-1tb-new-99.png', 0, 0, '2018-02-16', 0, 0),
(80, 14, 3, 'Macbook 12 inch 2017 ', '    - Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\r\n    - RAM: 16GB\r\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\r\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\r\n    - 6 cổng Thunderbolt 2\r\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\r\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\r\n    - Thiết kế độc đáo, nhỏ gọn\r\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 36500000, 36000000, '', 'macbook1.jpg', 0, 0, '2018-02-16', 0, 0),
(82, 16, 3, ' MacBook 2016 12 inch', ' - Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\r\n    - RAM: 16GB\r\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\r\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\r\n    - 6 cổng Thunderbolt 2\r\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\r\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\r\n    - Thiết kế độc đáo, nhỏ gọn\r\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 27900000, 0, '', 'macbookpro.jpg', 0, 0, '2018-09-26', 0, 0),
(83, 14, 3, 'Macbook Air 2015 -11.6 inch', ' - Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\r\n    - RAM: 16GB\r\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\r\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\r\n    - 6 cổng Thunderbolt 2\r\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\r\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\r\n    - Thiết kế độc đáo, nhỏ gọn\r\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 19500000, 0, '', 'macbookair.jpg', 0, 0, '2018-02-16', 0, 1),
(99, 7, 1, 'iPhone X 64GB', ' Chính hãng, Nguyên seal, Mới 100%, Chưa Active\r\n\r\nMiễn phí giao hàng toàn quốc\r\n\r\nThiết kế: Nguyên khối\r\n\r\nMàn hình: Super AMOLED capacitive touchscreen, 5.8 inch HD\r\n\r\nCamera Trước/Sau: 7MP/ 2 camera 12MP\r\n\r\nCPU: Apple A11 Bionic 6 nhân\r\n\r\nBộ Nhớ: 64GB\r\n\r\nRAM: 3GB\r\n\r\nSIM: 1 Nano SIM\r\n\r\nTính năng: Chống nước, chống bụi, Face ID', 24690000, 24000000, NULL, 'iphoneX1.jpg', 1, 0, '2018-09-26', 0, 0),
(100, 10, 1, 'iPhone 6 32GB ', ' Chính hãng, nguyên seal, mới 100%\r\n\r\nMiễn phí giao hàng toàn quốc\r\n\r\nThiết kế: Nguyên khối\r\n\r\nMàn hình: 4.7 inch, HD (1334 x 750 Pixels)\r\n\r\nCamera Trước/Sau: 8MP/ 1.2MP\r\n\r\nCPU: Apple A8 2 nhân 64-bit\r\n\r\nBộ Nhớ: 32GB\r\n\r\nRAM: 1GB', 6290000, 6000000, NULL, 'iphone61.jpg', 1, 0, '2018-09-26', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'staff'),
(3, 'guest');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: show , 0: hide',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `image`, `link`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'slider-img3.jpg', '', 'Slide  03', 1, '2018-07-04 13:52:08', '0000-00-00 00:00:00'),
(2, 'slider-img1.jpg', '', 'Slide 01', 1, '2018-07-04 13:52:08', '0000-00-00 00:00:00'),
(3, 'slider-img2.jpg', '', 'Slide  02', 1, '2018-07-04 13:52:08', '0000-00-00 00:00:00'),
(4, 'slider-img4.jpg', '', 'Slide 04', 0, '2018-07-04 13:52:08', '0000-00-00 00:00:00'),
(5, 'slider-img5.jpg', '', 'Slide 05', 0, '2018-07-04 13:52:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'guest',
  `remember_token` varchar(1000) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `birthdate`, `gender`, `address`, `email`, `phone`, `role`, `remember_token`, `updated_at`, `created_at`) VALUES
(1, 'user1', '123456789', 'Huong Hương', '2018-04-03', 'nữ', 'Quận 1', 'huongnguyenak96@gmail.com', '', 'guest', NULL, '2018-04-15 01:35:57', '2018-04-15 01:35:57'),
(2, 'user2', '$2y$10$VUzKYiO.2u2Xgqm9ve7CqeyyxSufM4LQTlKImXn576go7.DeeHvQC', NULL, NULL, NULL, NULL, 'huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:28:25', '2018-04-24 23:28:25'),
(4, 'user3', '$2y$10$u8e2QbsKypZ6.B5X7vANMO1dN0xjgaEGpZzqaB5hUDHDbvJ4YnqNm', NULL, NULL, NULL, NULL, '206154413404huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:31:01', '2018-04-24 23:31:01'),
(5, 'user4', '$2y$10$IOvA1jVv1tUrKY0bD8VyOe0bNCbIVMQKNX2.zkOyXZ0s1g9U4vt..', NULL, NULL, NULL, NULL, '400563674038huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:31:02', '2018-04-24 23:31:02'),
(6, 'user5', '$2y$10$86AhDsGbqaeNIRD1xiAfTuLuMHkcyzrtC09ieQNUIeniKCVheYJI.', NULL, NULL, NULL, NULL, '365431308610huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:35:26', '2018-04-24 23:35:26'),
(7, 'user6', '$2y$10$g1q9ZWlhsiO6xztfEEL.Wey5v7lKJoz6GtLWkoTZKolMpPk7Yctia', NULL, NULL, NULL, NULL, '520082013187huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:46:55', '2018-04-24 23:46:55'),
(8, 'user7', '$2y$10$m8RqEzvCT5kGMLsJwOu/aOgKwCpFLm8qCHlQDJXQTaQ6jZK23CyRy', NULL, NULL, NULL, NULL, '176387046602huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:47:06', '2018-04-24 23:47:06'),
(9, 'user8', '$2y$10$IHBNFF49q98SbU06dcB9AuTv9U9fkIVrUptBGKhMlDd8iTZXsFDcK', NULL, NULL, NULL, NULL, '554508995187huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:49:37', '2018-04-24 23:49:37'),
(10, 'user9', '$2y$10$Wed3VIJK0GUJi16md4FG3.cLrsN9PClpnykQPZrNbJvk7D3OOy552', NULL, NULL, NULL, NULL, '396956636862huong@gmail.com', NULL, 'guest', NULL, '2018-04-24 23:51:54', '2018-04-24 23:51:54'),
(11, 'truonguy123', '$2y$10$h07Mmrb8zGKzgnPaIE1fQerMOFOUkAm9tf6Gc1kNXvZD1WG/APjOC', 'Lý Trưởng Uyy', '1997-06-15', 'Nam', '57G Cư xá phú lâm D P10 Q6', 'lytruonguy97ic@gmail.com', '01868032498', 'admin', NULL, '2018-07-13 05:45:58', '2018-07-13 05:45:58'),
(12, 'truonguy1234', '$2y$10$Oj7EmwsVfrNHDm3MuulkJ.VHZY0sGL53hg86PNhJ1NGXdm90zsbJW', 'Lý Trưởng Uyyy', '1997-06-15', 'Nam', '57G Cư xá phú lâm D P10 Q8', 'lytruonguy98ic@gmail.com', '01868032499', 'admin', NULL, '2018-07-13 05:53:45', '2018-07-13 05:53:45'),
(13, 'uyly281297', '$2y$10$GOYkw2kabBIqo4oeajYYxO10963ClYE6TU8w2gD5S.5nLNJxf5eiO', 'Lý Trưởng Uyyyy', '1997-06-15', 'Nam', '57G Cư xá phú lâm D P10 Q8', 'lytruonguy99ic@gmail.com', '01868032499', 'admin', NULL, '2018-07-13 05:56:33', '2018-07-13 05:56:33'),
(14, 'huonghuóng', '$2y$10$n8qvhbOQ0e/xwzsPDDjzr.Wb9KyDo.DsEPXMCtaQGAyqdoxjwIKBi', 'Lý Trưởng Uy', '2018-07-07', 'Nữ', '15', 'lytruonguy12@gmail.com', '12342345678', 'admin', NULL, '2018-07-13 06:18:13', '2018-07-13 06:18:13'),
(15, 'hhhhhhhhhhhhhhhh', '$2y$10$zqph2XVLEgaxwpICfwhQe.BBu50Ma9tdrlQkINUFNIyjsbERBaYPy', 'Lý Trưởng Uy', '2018-06-29', 'Nam', '15', 'lytruonguy973132@gmail.com', '12312312', 'admin', '21LkZtGTzEcFE6NLOHermMU7B0uqFQ1bpveWIphxjYrE1sYC5w5NJB4JuPsb', '2018-07-13 06:27:05', '2018-07-13 06:27:05'),
(16, 'Steven Lee', '$2y$10$/VO4WLCRLl4cA.8ngUv7le1ExzNLcA.ODxEv3jcV1HvfAuJrGEz5y', 'Trưởng Uy Lý', '1997-07-13', 'Nam', '57G Cư xá phú lâm D P10 Q6', 'stevenlee97@gmail.com', '01864542198', 'admin', NULL, '2018-08-05 19:57:52', '2018-08-05 19:57:52'),
(17, 'nhocuy123456', '$2y$10$oziVv52qzjRrBXW/wPeVbOjgt5t5J0ILQB1VXiOCDBP63A9ItJKw2', 'Uy Lý Trưởngg', '1997-06-15', 'Nam', '57G Cư xá phú lâm D P10 Q6', 'nhocuy123456@gmail.com', '123456789', 'guest', NULL, '2018-08-05 20:38:14', '2018-08-05 20:38:14'),
(18, 'anhhoangng', '$2y$10$yUerPLTd5iPhhFmUTcitUuPxgj6qTqlK8kYWfW.rUMkwcQdgSnqgi', 'Anh Hoang', '1997-07-05', 'Nam', 'anascascasc', 'abc@gmail.com', '021021212121', 'admin', NULL, '2018-08-12 03:58:06', '2018-08-12 03:58:06'),
(19, 'nhocuy1234', '$2y$10$K0VVUwf04igmBUHcWBPKF..gyiQmFfl1lHB5Ln2lnZFKVXjRDZjy2', 'Lý Trưởng Uy', '1996-02-11', NULL, '15', 'admin@gmail.com', '12312312312313', 'guest', NULL, '2018-09-02 02:09:43', '2018-09-02 02:09:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1` (`id_customer`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `3` (`id_product`),
  ADD KEY `id_bill` (`id_bill`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_url` (`id_url`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_url`
--
ALTER TABLE `page_url`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_url` (`id_parent`);
ALTER TABLE `products` ADD FULLTEXT KEY `name_2` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `search1` (`name`,`detail`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `page_url`
--
ALTER TABLE `page_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
