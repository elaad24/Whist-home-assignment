-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2021 at 12:59 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storeproducts`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_history`
--

CREATE TABLE `order_history` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_history`
--

INSERT INTO `order_history` (`id`, `order_id`, `qty`, `item_id`, `time`, `total_Price`) VALUES
(1, 1, 1, 1, '2021-09-12 15:36:37', 110),
(2, 1, 1, 2, '2021-09-12 15:36:37', 220),
(3, 1, 1, 3, '2021-09-12 15:36:37', 56),
(14, 2, 1, 1, '2021-09-12 15:44:11', 125),
(15, 2, 1, 3, '2021-09-12 15:44:11', 43),
(16, 2, 1, 6, '2021-09-12 15:44:11', 15),
(17, 3, 1, 2, '2021-09-12 21:03:47', 22),
(18, 3, 1, 1, '2021-09-10 21:03:48', 110),
(19, 4, 1, 2, '2021-09-10 21:05:56', 22),
(20, 4, 1, 1, '2021-09-10 21:05:56', 110),
(21, 4, 1, 3, '2021-09-10 21:05:56', 56),
(22, 4, 1, 4, '2021-09-10 21:05:56', 16),
(23, 4, 1, 5, '2021-09-10 21:05:56', 695),
(24, 5, 1, 5, '2021-09-09 21:08:25', 695),
(25, 5, 1, 4, '2021-09-09 21:08:25', 16),
(26, 5, 1, 3, '2021-09-09 21:08:25', 56),
(27, 6, 1, 10, '2021-09-09 21:08:50', 109),
(28, 6, 1, 9, '2021-09-09 21:08:50', 64),
(29, 7, 1, 11, '2021-09-08 21:09:26', 109),
(30, 7, 1, 10, '2021-09-08 21:09:26', 109),
(31, 7, 1, 9, '2021-09-08 21:09:26', 64),
(32, 7, 1, 13, '2021-09-08 21:09:26', 599),
(33, 7, 1, 34, '2021-09-08 21:09:26', 1198),
(34, 7, 1, 30, '2021-09-08 21:09:26', 200),
(35, 8, 1, 34, '2021-09-07 21:11:41', 1198),
(36, 8, 1, 30, '2021-09-07 21:11:41', 200),
(37, 8, 1, 20, '2021-09-07 21:11:41', 13),
(38, 8, 1, 19, '2021-09-07 21:11:41', 8),
(39, 8, 1, 18, '2021-09-07 21:11:42', 10),
(40, 9, 1, 3, '2021-09-12 22:40:31', 56),
(41, 9, 1, 3, '2021-09-12 22:40:31', 56),
(42, 9, 1, 3, '2021-09-12 22:40:31', 56),
(43, 9, 1, 2, '2021-09-12 22:40:31', 22),
(44, 9, 1, 2, '2021-09-12 22:40:31', 22),
(45, 9, 1, 1, '2021-09-12 22:40:32', 110),
(46, 9, 1, 1, '2021-09-12 22:40:32', 110),
(47, 10, 1, 4, '2021-09-13 15:30:51', 16),
(48, 10, 1, 3, '2021-09-13 15:30:51', 56),
(49, 10, 1, 2, '2021-09-13 15:30:51', 22),
(50, 10, 1, 1, '2021-09-13 15:30:51', 110),
(51, 10, 1, 5, '2021-09-13 15:30:51', 695),
(52, 11, 1, 8, '2021-09-13 15:30:57', 11),
(53, 11, 1, 7, '2021-09-13 15:30:57', 10),
(54, 11, 1, 6, '2021-09-13 15:30:57', 168),
(55, 11, 1, 9, '2021-09-13 15:30:57', 64),
(56, 11, 1, 10, '2021-09-13 15:30:57', 109),
(57, 11, 1, 11, '2021-09-13 15:30:57', 109),
(58, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(59, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(60, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(61, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(62, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(63, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(64, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(65, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(66, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(67, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(68, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(69, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(70, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(71, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(72, 12, 1, 34, '2021-09-13 15:31:08', 1198),
(73, 12, 1, 34, '2021-09-13 15:31:09', 1198),
(74, 12, 1, 34, '2021-09-13 15:31:09', 1198),
(75, 12, 1, 34, '2021-09-13 15:31:09', 1198),
(76, 12, 1, 34, '2021-09-13 15:31:09', 1198),
(77, 12, 1, 34, '2021-09-13 15:31:09', 1198),
(78, 12, 1, 34, '2021-09-13 15:31:09', 1198),
(79, 12, 1, 34, '2021-09-13 15:31:09', 1198),
(80, 12, 1, 34, '2021-09-13 15:31:09', 1198),
(81, 13, 1, 4, '2021-09-13 15:31:33', 16),
(82, 13, 1, 3, '2021-09-13 15:31:33', 56),
(83, 13, 1, 2, '2021-09-13 15:31:33', 22),
(84, 13, 1, 1, '2021-09-13 15:31:34', 110),
(85, 13, 1, 1, '2021-09-13 15:31:34', 110),
(86, 14, 1, 1, '2021-09-13 15:31:37', 110),
(87, 14, 1, 2, '2021-09-13 15:31:37', 22),
(88, 14, 1, 3, '2021-09-13 15:31:38', 56),
(89, 14, 1, 5, '2021-09-13 15:31:38', 695),
(90, 15, 1, 17, '2021-09-13 15:31:48', 40),
(91, 15, 1, 13, '2021-09-13 15:31:48', 599),
(92, 15, 1, 12, '2021-09-13 15:31:48', 114),
(93, 15, 1, 18, '2021-09-13 15:31:48', 10),
(94, 15, 1, 19, '2021-09-13 15:31:48', 8),
(95, 15, 1, 20, '2021-09-13 15:31:48', 13),
(96, 16, 1, 2, '2021-09-13 15:31:54', 22),
(97, 16, 1, 9, '2021-09-13 15:31:55', 64),
(98, 16, 1, 10, '2021-09-13 15:31:55', 109),
(99, 16, 1, 11, '2021-09-13 15:31:55', 109),
(100, 17, 1, 1, '2021-09-13 15:53:05', 110),
(101, 17, 1, 1, '2021-09-13 15:53:06', 110),
(102, 17, 1, 1, '2021-09-13 15:53:06', 110),
(103, 17, 1, 1, '2021-09-13 15:53:06', 110),
(104, 17, 1, 1, '2021-09-13 15:53:06', 110),
(105, 17, 1, 1, '2021-09-13 15:53:06', 110),
(106, 17, 1, 1, '2021-09-13 15:53:06', 110),
(107, 17, 1, 1, '2021-09-13 15:53:06', 110),
(108, 17, 1, 1, '2021-09-13 15:53:06', 110),
(109, 17, 1, 1, '2021-09-13 15:53:06', 110),
(110, 17, 1, 1, '2021-09-13 15:53:06', 110),
(111, 17, 1, 1, '2021-09-13 15:53:06', 110),
(112, 18, 1, 3, '2021-09-13 22:09:14', 56),
(113, 18, 1, 3, '2021-09-13 22:09:14', 56),
(114, 18, 1, 10, '2021-09-13 22:09:14', 109),
(115, 18, 1, 34, '2021-09-13 22:09:14', 1198),
(116, 18, 1, 30, '2021-09-13 22:09:15', 200),
(117, 18, 1, 20, '2021-09-13 22:09:15', 13),
(118, 18, 1, 19, '2021-09-13 22:09:15', 8),
(119, 18, 1, 18, '2021-09-13 22:09:15', 10),
(120, 19, 1, 2, '2021-09-13 22:10:05', 22),
(121, 19, 1, 4, '2021-09-13 22:10:05', 16),
(122, 19, 1, 34, '2021-09-13 22:10:05', 1198),
(123, 19, 1, 20, '2021-09-13 22:10:05', 13),
(124, 19, 1, 19, '2021-09-13 22:10:05', 8),
(125, 19, 1, 18, '2021-09-13 22:10:05', 10),
(126, 19, 1, 13, '2021-09-13 22:10:05', 599),
(127, 19, 1, 12, '2021-09-13 22:10:05', 114),
(128, 20, 1, 4, '2021-09-13 22:27:01', 16),
(129, 20, 1, 3, '2021-09-13 22:27:01', 56),
(130, 20, 1, 34, '2021-09-13 22:27:01', 1198),
(131, 21, 1, 12, '2021-09-13 22:27:07', 114),
(132, 21, 1, 10, '2021-09-13 22:27:07', 109),
(133, 21, 1, 7, '2021-09-13 22:27:07', 10),
(134, 22, 1, 2, '2021-09-13 22:27:18', 22),
(135, 22, 1, 6, '2021-09-13 22:27:18', 168),
(136, 22, 1, 14, '2021-09-13 22:27:18', 1000),
(137, 22, 1, 34, '2021-09-13 22:27:18', 1198),
(138, 23, 1, 9, '2021-09-13 22:27:24', 64),
(139, 23, 1, 10, '2021-09-13 22:27:24', 109),
(140, 23, 1, 9, '2021-09-13 22:27:24', 64),
(141, 23, 1, 9, '2021-09-13 22:27:25', 64),
(142, 24, 1, 4, '2021-09-13 22:47:43', 16),
(143, 24, 1, 3, '2021-09-13 22:47:44', 56),
(144, 24, 1, 2, '2021-09-13 22:47:44', 22),
(145, 24, 1, 1, '2021-09-13 22:47:44', 110),
(146, 24, 1, 2, '2021-09-13 22:47:45', 22),
(147, 25, 1, 5, '2021-09-13 22:48:20', 695),
(148, 25, 1, 3, '2021-09-13 22:48:20', 56),
(149, 25, 1, 2, '2021-09-13 22:48:20', 22),
(150, 25, 1, 34, '2021-09-13 22:48:20', 1198),
(151, 26, 1, 2, '2021-09-13 23:26:54', 22),
(152, 26, 1, 1, '2021-09-13 23:26:54', 110),
(153, 26, 1, 14, '2021-09-13 23:26:54', 1000),
(154, 27, 1, 13, '2021-09-13 23:27:03', 599),
(155, 27, 1, 30, '2021-09-13 23:27:03', 200),
(156, 27, 1, 20, '2021-09-13 23:27:03', 13),
(157, 28, 1, 3, '2021-09-14 11:50:36', 56),
(158, 28, 1, 2, '2021-09-14 11:50:36', 22),
(159, 28, 1, 1, '2021-09-14 11:50:36', 110),
(160, 28, 1, 4, '2021-09-14 11:50:36', 16),
(161, 28, 1, 5, '2021-09-14 11:50:36', 695),
(162, 28, 1, 9, '2021-09-14 11:50:37', 64),
(163, 28, 1, 10, '2021-09-14 11:50:37', 109),
(164, 28, 1, 11, '2021-09-14 11:50:37', 109),
(165, 29, 1, 1, '2021-09-18 14:47:02', 110),
(166, 29, 1, 1, '2021-09-18 14:47:02', 110),
(167, 29, 1, 2, '2021-09-18 14:47:02', 22),
(168, 29, 1, 3, '2021-09-18 14:47:02', 56),
(169, 29, 1, 4, '2021-09-18 14:47:02', 16),
(170, 29, 1, 5, '2021-09-18 14:47:02', 695),
(171, 30, 1, 2, '2021-09-18 15:11:12', 22),
(172, 30, 1, 1, '2021-09-18 15:11:13', 110),
(173, 30, 1, 1, '2021-09-18 15:11:13', 110),
(174, 31, 1, 3, '2021-09-18 15:11:35', 56),
(175, 31, 1, 3, '2021-09-18 15:11:35', 56),
(176, 31, 1, 4, '2021-09-18 15:11:35', 16),
(177, 31, 1, 5, '2021-09-18 15:11:35', 695),
(178, 31, 1, 2, '2021-09-18 15:11:35', 22),
(179, 31, 1, 9, '2021-09-18 15:11:35', 64),
(180, 31, 1, 8, '2021-09-18 15:11:35', 11),
(181, 32, 1, 17, '2021-09-18 15:11:42', 40),
(182, 32, 1, 30, '2021-09-18 15:11:42', 200),
(183, 32, 1, 20, '2021-09-18 15:11:42', 13),
(184, 33, 1, 5, '2021-09-18 15:41:08', 695),
(185, 33, 1, 3, '2021-09-18 15:41:08', 56),
(186, 33, 1, 2, '2021-09-18 15:41:08', 22),
(187, 33, 1, 1, '2021-09-18 15:41:08', 110),
(188, 33, 1, 7, '2021-09-18 15:41:08', 10),
(189, 33, 1, 6, '2021-09-18 15:41:08', 168),
(190, 33, 1, 30, '2021-09-18 15:41:08', 200),
(191, 33, 1, 20, '2021-09-18 15:41:08', 13),
(192, 34, 1, 34, '2021-09-18 20:00:32', 1200),
(193, 34, 1, 47, '2021-09-18 20:00:32', 480),
(194, 34, 1, 30, '2021-09-18 20:00:32', 200);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(55) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(772) DEFAULT NULL,
  `category` varchar(254) DEFAULT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `category`, `image`, `rate`, `amount`) VALUES
(1, 'Fjallraven - Foldsack No. 1 Backpack', 110, 'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday', 'men\'s clothing', 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg', 4, 120),
(2, 'Mens Casual Premium Slim Fit T-Shirts ', 22, 'Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.', 'men\'s clothing', 'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg', 4, 259),
(3, 'Mens Cotton Jacket', 56, 'great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.', 'men\'s clothing', 'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg', 5, 500),
(4, 'Mens Casual Slim Fit', 16, 'The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.', 'men\'s clothing', 'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg', 2, 430),
(5, 'John Hardy Women\'s Legends Naga Gold & Silve Bracelet', 695, 'From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean\'s pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.', 'jewelery', 'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg', 5, 400),
(6, 'Solid Gold Petite Micropave ', 168, 'Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.', 'jewelery', 'https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg', 4, 70),
(7, 'White Gold Plated Princess', 10, 'Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine\'s Day...', 'jewelery', 'https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg', 3, 400),
(8, 'Pierced Owl Rose Gold Plated Stainless Steel Double', 11, 'Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel', 'jewelery', 'https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg', 2, 100),
(9, 'WD 2TB Elements Portable External HDD', 64, 'USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system', 'electronics', 'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg', 3, 203),
(10, 'SanDisk SSD PLUS 1TB Internal SSD ', 109, 'Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)', 'electronics', 'https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg', 3, 470),
(11, 'Silicon Power 256GB SSD 3D NAND A55 SLC', 109, '3D NAND flash are applied to deliver high transfer speeds Remarkable transfer speeds that enable faster bootup and improved overall system performance. The advanced SLC Cache Technology allows performance boost and longer lifespan 7mm slim design suitable for Ultrabooks and Ultra-slim notebooks. Supports TRIM command, Garbage Collection technology, RAID, and ECC (Error Checking & Correction) to provide the optimized performance and enhanced reliability.', 'electronics', 'https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg', 5, 319),
(12, 'WD 4TB Gaming Drive Works with Playstation 4 ', 114, 'Expand your PS4 gaming experience, Play anywhere Fast and easy, setup Sleek design with high capacity, 3-year manufacturer\'s limited warranty', 'electronics', 'https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg', 5, 400),
(13, 'Acer SB220Q bi 21.5 inches Full HD', 599, '21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz', 'electronics', 'https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg', 3, 250),
(14, 'Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor ', 1000, '49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ultra fast response time work to eliminate motion blur, ghosting, and reduce input lag', 'electronics', 'https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg', 2, 140),
(15, 'BIYLACLESEN Women\'s 3-in-1 Snowboard Jacket', 57, 'Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates', 'women\'s clothing', 'https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg', 3, 235),
(16, 'Lock and Love Women\'s Removable Hooded Faux Leather ', 30, '100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON', 'women\'s clothing', 'https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg', 3, 340),
(17, 'Rain Jacket Women Windbreaker Striped', 40, 'Lightweight perfet for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, it covers the hips, and the hood is generous but doesn\'t overdo it.Attached Cotton Lined Hood with Adjustable Drawstrings give it a real styled look.', 'women\'s clothing', 'https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg', 4, 679),
(18, 'MBJ Women\'s Solid Short Sleeve Boat Neck V ', 10, '95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem', 'women\'s clothing', 'https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg', 5, 130),
(19, 'Opna Women\'s Short Sleeve Moisture', 8, '100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort', 'women\'s clothing', 'https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg', 5, 146),
(20, 'DANVOUY Womens T Shirt Casual Cotton Short', 13, '95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.', 'women\'s clothing', 'https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg', 4, 145),
(30, 'snow suit', 200, 'bad a** snow suit', 'snowbored gear', 'https://www.virtika.com/wp-content/uploads/2019/09/Virtika_Signature_jacket_palm-2.jpg', 5, 100),
(34, 'sony wh-1000xm4', 1200, 'best sound canseling headphones ', 'headphones - electronic', 'https://azcd.harveynorman.com.au/media/catalog/product/w/h/wh1000xm4-sony-noise-cancelling-wireless-headphones-hero_1.jpg', 5, 1000),
(47, 'Burton Snowboard', 480, '3D shaping brings power and third dimension magic to this big mountain .', 'Snowboard', 'https://www.burton.com/static/product/H21/22244101000158_1.png?impolicy=bglt&imwidth=486', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_history`
--
ALTER TABLE `order_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order_history`
--
ALTER TABLE `order_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
