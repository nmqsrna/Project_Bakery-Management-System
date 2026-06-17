-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2026 at 05:45 PM
-- Server version: 8.0.43
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imanina_bakery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(2, 'Breads'),
(5, 'Cookies'),
(3, 'Donuts'),
(4, 'Muffins'),
(1, 'Pastries');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `password`, `created_at`) VALUES
(1, 'NUR MAS QASRINA', 'nmqasrina@gmail.com', '011-28727642', 'cdjbcjbk3690DS', '2026-05-26 14:02:19'),
(2, 'NUR ALIAH', 'ali2220@gmail.com', '0123456789', 'ali1234', '2026-05-26 14:21:19'),
(3, 'Danny', 'danny@gmail.com', '0192233456', 'dan2027', '2026-05-26 14:35:13'),
(4, 'Aiman Afiq', 'aafiq@gmail.com', '01988776612', 'aafiq1234', '2026-05-26 15:10:15'),
(5, 'Kamal Adli', 'kamal@gmail.com', '011112349', 'ka1234', '2026-05-26 15:18:07'),
(6, 'Syukri Yahya', 'syuk@gmail.com', '012987654', 'syuk123', '2026-05-26 16:38:41'),
(7, 'Amelia ', 'amelia@gmail.com', '0182118096', 'amelia1234', '2026-06-08 06:08:40'),
(8, '123546', 'mas@gmail.com', '01111047124', 'qwert1234', '2026-06-13 15:59:28'),
(11, 'Mas Qasrina', 'masqas@gmail.com', '01934775824', 'Mdfbiow132', '2026-06-13 16:15:33'),
(12, 'alia karina', 'alia@gmail.com', '01345436533', 'Dbiakno13', '2026-06-13 16:18:19'),
(13, 'nur hazirah', 'nur@yahoo.com', '013899452', 'Fjinffwi924', '2026-06-13 16:20:09'),
(14, 'sofea', 'sofea@yahoo.com', '013953973', 'sfoihwfSFd1434', '2026-06-13 16:31:25'),
(15, 'Ain sufiah', 'ain@gmail.com', '0128438952', '.Fdsbijk238', '2026-06-14 05:35:59'),
(16, 'Arif Aiman', 'aa02@gmail.com', '0197385395', 'nksWe97032/a', '2026-06-14 08:10:31'),
(17, 'Nur Ashyikin', 'ikin@gmail.com', '019387543', 'hjfsb938@4', '2026-06-16 02:19:26'),
(18, 'ahmad danish', 'ad@yahoo.com', '0197489684', '@iDij498f', '2026-06-16 09:12:16'),
(19, 'Aina Syazana', 'aina@gmail.com', '0123849322', '@bisS94sd', '2026-06-17 00:57:47'),
(20, 'Wan Syarina', 'wan@gmail.com', '019874833', '$bifu249AF', '2026-06-17 01:34:28'),
(21, 'Ain Zulaikha', 'ainzu@gmail.com', '0123456789', '#dfviG9247', '2026-06-17 06:01:30'),
(22, 'Aina Nazirah', 'irah@gmail.com', '0197439592', '$bbs35GDF', '2026-06-17 13:57:57'),
(23, 'Siti Nur Fatin', 'snf@yahoo.com', '019738757', '@bfi9793HY', '2026-06-17 14:50:04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `pickup_date` date DEFAULT NULL,
  `pickup_time` time DEFAULT NULL,
  `special_notes` text,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `order_type` enum('WALKIN','PREORDER') NOT NULL DEFAULT 'WALKIN',
  `order_status` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_name`, `phone`, `email`, `pickup_date`, `pickup_time`, `special_notes`, `order_date`, `order_type`, `order_status`) VALUES
(23, 'Aiman Afiq', '01988776612', 'aafiq@gmail.com', '2026-06-07', '01:30:00', 'Happy Birthday', '2026-05-26 15:11:17', 'PREORDER', 'Pending'),
(24, 'Kamal Adli', '011112349', 'kamal@gmail.com', '2026-05-03', '02:31:00', NULL, '2026-05-26 15:18:42', 'PREORDER', 'Pending'),
(25, 'Syukri Yahya', '012987654', 'syuk@gmail.com', '2026-06-19', '09:40:00', NULL, '2026-05-26 16:39:28', 'PREORDER', 'Pending'),
(26, 'NUR MAS QASRINA', '011-28727642', 'nmqasrina@gmail.com', '2026-07-31', '01:45:00', NULL, '2026-05-26 16:44:38', 'PREORDER', 'Pending'),
(27, 'wan', 'POS-WALKIN', NULL, '2026-05-26', '01:18:00', 'Walk-in Order', '2026-05-26 17:18:17', 'WALKIN', 'Pending'),
(28, 'ali', 'POS-WALKIN', NULL, '2026-05-26', '01:18:00', 'Walk-in Order', '2026-05-26 17:18:54', 'WALKIN', 'Pending'),
(29, 'rina', 'POS-WALKIN', NULL, '2026-05-26', '01:19:00', 'Walk-in Order', '2026-05-26 17:19:18', 'WALKIN', 'Pending'),
(30, 'Amelia ', '0182118096', 'amelia@gmail.com', '2026-06-25', '17:15:00', NULL, '2026-06-08 06:09:22', 'PREORDER', 'Pending'),
(31, 'sofea', '013953973', 'sofea@yahoo.com', '2026-07-08', '02:40:00', NULL, '2026-06-13 16:37:48', 'PREORDER', 'Pending'),
(32, 'sofea', '013953973', 'sofea@yahoo.com', '2026-07-09', '04:30:00', 'test', '2026-06-13 17:25:35', 'PREORDER', 'Pending'),
(33, 'Amelia ', '0182118096', 'amelia@gmail.com', '2026-07-03', '07:49:00', 'test', '2026-06-13 17:43:21', 'PREORDER', 'Pending'),
(34, 'Ain sufiah', '0128438952', 'ain@gmail.com', '2026-07-11', '17:40:00', 'Happy Birthday', '2026-06-14 05:37:20', 'PREORDER', 'Pending'),
(35, 'Ain sufiah', '0128438952', 'ain@gmail.com', '2026-07-10', '19:00:00', NULL, '2026-06-14 05:54:33', 'PREORDER', 'Pending'),
(36, 'Arif Aiman', '0197385395', 'aa02@gmail.com', '2026-06-19', '20:11:00', NULL, '2026-06-14 08:11:13', 'PREORDER', 'Pending'),
(37, 'NUR MAS QASRINA', '011-28727642', 'nmqasrina@gmail.com', '2026-07-17', '20:48:00', NULL, '2026-06-14 08:44:42', 'PREORDER', 'Pending'),
(38, 'NUR MAS QASRINA', '011-28727642', 'nmqasrina@gmail.com', '2026-11-12', '19:53:00', NULL, '2026-06-14 08:50:49', 'PREORDER', 'Pending'),
(39, 'NUR MAS QASRINA', '011-28727642', 'nmqasrina@gmail.com', '2026-06-27', '20:57:00', 'happy', '2026-06-14 08:53:53', 'PREORDER', 'Pending'),
(40, 'NUR MAS QASRINA', '011-28727642', 'nmqasrina@gmail.com', '2026-06-27', '09:15:00', NULL, '2026-06-14 09:06:17', 'PREORDER', 'Pending'),
(41, 'Aliya', 'POS-WALKIN', NULL, '2026-06-14', '17:15:00', 'Walk-in Order', '2026-06-14 09:15:02', 'WALKIN', 'Pending'),
(42, 'qas', 'POS-WALKIN', NULL, '2026-06-14', '20:10:00', 'Walk-in Order', '2026-06-14 12:10:11', 'WALKIN', 'Pending'),
(43, '5786', 'POS-WALKIN', NULL, '2026-06-14', '20:22:00', 'Walk-in Order', '2026-06-14 12:22:49', 'WALKIN', 'Pending'),
(44, 'rina', 'POS-WALKIN', NULL, '2026-06-14', '20:53:00', 'Walk-in Order', '2026-06-14 12:53:42', 'WALKIN', 'Pending'),
(45, 'Mas', 'POS-WALKIN', NULL, '2026-06-14', '21:37:00', 'Walk-in Order', '2026-06-14 13:37:07', 'WALKIN', 'Pending'),
(46, 'mas', 'POS-WALKIN', NULL, '2026-06-14', '21:38:00', 'Walk-in Order', '2026-06-14 13:38:26', 'WALKIN', 'Pending'),
(47, 'ali', 'POS-WALKIN', NULL, '2026-06-14', '21:39:00', 'Walk-in Order', '2026-06-14 13:39:16', 'WALKIN', 'Pending'),
(48, 'abu', 'POS-WALKIN', NULL, '2026-06-14', '21:39:00', 'Walk-in Order', '2026-06-14 13:39:54', 'WALKIN', 'Pending'),
(49, 'Fatin', 'POS-WALKIN', NULL, '2026-06-14', '21:40:00', 'Walk-in Order', '2026-06-14 13:40:28', 'WALKIN', 'Pending'),
(50, 'Wani', 'POS-WALKIN', NULL, '2026-06-14', '22:47:00', 'Walk-in Order', '2026-06-14 14:47:25', 'WALKIN', 'Pending'),
(51, 'Abu', 'POS-WALKIN', NULL, '2026-06-14', '22:48:00', 'Walk-in Order', '2026-06-14 14:48:22', 'WALKIN', 'Pending'),
(52, 'Ina', 'POS-WALKIN', NULL, '2026-06-14', '22:53:00', 'Walk-in Order', '2026-06-14 14:53:33', 'WALKIN', 'Pending'),
(53, 'Aiman', 'POS-WALKIN', NULL, '2026-06-14', '23:15:00', 'Walk-in Order', '2026-06-14 15:15:32', 'WALKIN', 'Pending'),
(54, 'qas', 'POS-WALKIN', NULL, '2026-06-14', '23:16:00', 'Walk-in Order', '2026-06-14 15:16:20', 'WALKIN', 'Pending'),
(55, 'amad', 'POS-WALKIN', NULL, '2026-06-14', '23:40:00', 'Walk-in Order', '2026-06-14 15:40:22', 'WALKIN', 'Pending'),
(56, 'Hazirah', 'POS-WALKIN', NULL, '2026-06-15', '19:07:00', 'Walk-in Order', '2026-06-15 11:07:05', 'WALKIN', 'Pending'),
(57, 'ahmad danish', '0197489684', 'ad@yahoo.com', '2026-06-20', '14:12:00', NULL, '2026-06-16 09:13:03', 'PREORDER', 'Pending'),
(58, 'ahmad danish', '0197489684', 'ad@yahoo.com', '2026-07-05', '09:25:00', NULL, '2026-06-16 09:25:19', 'PREORDER', 'Pending'),
(59, 'Aina', 'POS-WALKIN', NULL, '2026-06-17', '08:18:00', 'Walk-in Order', '2026-06-17 00:18:52', 'WALKIN', 'Pending'),
(60, 'Aina Syazana', '0123849322', 'aina@gmail.com', '2026-07-12', '12:15:00', 'none', '2026-06-17 01:06:05', 'PREORDER', 'Pending'),
(61, 'Aina', 'POS-WALKIN', NULL, '2026-06-17', '09:19:00', 'Walk-in Order', '2026-06-17 01:19:02', 'WALKIN', 'Pending'),
(62, 'Wan Syarina', '019874833', 'wan@gmail.com', '2026-07-25', '08:00:00', NULL, '2026-06-17 02:08:07', 'PREORDER', 'Pending'),
(63, 'Wan Syarina', '019874833', 'wan@gmail.com', '2026-09-16', '15:55:00', 'none', '2026-06-17 02:56:07', 'PREORDER', 'Pending'),
(64, 'Ain Zulaikha', '0123456789', 'ainzu@gmail.com', '2026-08-08', '11:00:00', 'none', '2026-06-17 06:03:29', 'PREORDER', 'Pending'),
(65, 'Ain', 'POS-WALKIN', NULL, '2026-06-17', '14:08:00', 'Walk-in Order', '2026-06-17 06:08:50', 'WALKIN', 'Pending'),
(66, 'Umar', 'POS-WALKIN', NULL, '2026-06-17', '15:28:00', 'Walk-in Order', '2026-06-17 07:28:31', 'WALKIN', 'Pending'),
(67, 'Abu', 'POS-WALKIN', NULL, '2026-06-17', '20:31:00', 'Walk-in Order', '2026-06-17 12:31:21', 'WALKIN', 'Pending'),
(68, 'Atikah', 'POS-WALKIN', NULL, '2026-06-17', '20:41:00', 'Walk-in Order', '2026-06-17 12:41:08', 'WALKIN', 'Pending'),
(69, 'NUR MAS QASRINA', '011-28727642', 'nmqasrina@gmail.com', '2026-07-03', '10:47:00', NULL, '2026-06-17 13:47:15', 'PREORDER', 'Pending'),
(70, 'Aina Nazirah', '0197439592', 'irah@gmail.com', '2026-07-22', '10:05:00', 'Happy Birthday ', '2026-06-17 14:07:32', 'PREORDER', 'Pending'),
(71, 'Maryam', 'POS-WALKIN', NULL, '2026-06-17', '22:26:00', 'Walk-in Order', '2026-06-17 14:26:03', 'WALKIN', 'Pending'),
(72, 'Siti Nur Fatin', '019738757', 'snf@yahoo.com', '2026-06-21', '09:53:00', NULL, '2026-06-17 14:54:04', 'PREORDER', 'Pending'),
(73, 'Siti', 'POS-WALKIN', NULL, '2026-06-17', '22:56:00', 'Walk-in Order', '2026-06-17 14:56:08', 'WALKIN', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_name`, `quantity`, `price`) VALUES
(57, 23, 'Pain au Chocolat', 1, 4.50),
(58, 23, 'Blueberry Muffin', 2, 2.50),
(59, 23, 'Oatmeal Raisin Muffin', 1, 2.80),
(60, 24, 'Brioche Bun', 1, 2.50),
(61, 24, 'Strawberry Frosted', 1, 2.50),
(62, 25, 'Butter Croissant', 1, 3.00),
(63, 25, 'Almond Danish', 1, 5.00),
(64, 25, 'Sugar Raised Donut', 1, 1.50),
(65, 25, 'Mochi Donut', 1, 4.00),
(66, 26, 'Pain au Chocolat', 1, 4.50),
(67, 26, 'Peach Tart', 1, 5.50),
(68, 26, 'Classic Vanilla Muffin', 3, 2.20),
(69, 27, 'Pain au Chocolat', 1, 4.50),
(70, 27, 'Almond Danish', 1, 5.00),
(71, 27, 'Apple Turnover', 1, 4.00),
(72, 28, 'Sourdough Loaf', 1, 6.50),
(73, 28, 'Wholemeal Loaf', 1, 5.50),
(74, 29, 'Multigrain Bread', 1, 6.00),
(75, 29, 'Butter Croissant', 2, 3.00),
(76, 29, 'French Baguette', 1, 3.80),
(77, 29, 'Pain au Chocolat', 2, 4.50),
(78, 30, 'Butter Croissant', 1, 3.00),
(79, 30, 'Pain au Chocolat', 1, 4.50),
(80, 30, 'Peach Tart', 1, 5.50),
(81, 30, 'Mochi Donut', 1, 4.00),
(82, 31, 'Pain au Chocolat', 1, 4.50),
(83, 31, 'Chicken Mushroom Puff', 1, 4.80),
(84, 31, 'Peach Tart', 2, 5.50),
(85, 32, 'Brioche Bun', 1, 2.50),
(86, 32, 'Caramel Biscoff', 1, 4.50),
(87, 32, 'Classic Vanilla Muffin', 1, 2.20),
(88, 33, 'Almond Danish', 1, 5.00),
(89, 33, 'Chicken Mushroom Puff', 1, 4.80),
(90, 33, 'French Baguette', 3, 3.80),
(91, 33, 'Chocolate Donut', 1, 2.00),
(92, 34, 'Chocolate Donut', 2, 2.00),
(93, 34, 'Sugar Raised Donut', 1, 1.50),
(94, 35, 'Pain au Chocolat', 1, 4.50),
(95, 35, 'Almond Danish', 1, 5.00),
(96, 35, 'Peach Tart', 1, 5.50),
(97, 36, 'Sourdough Loaf', 2, 6.50),
(98, 37, 'Butter Croissant', 1, 3.00),
(99, 37, 'Pain au Chocolat', 1, 4.50),
(100, 37, 'Almond Danish', 1, 5.00),
(101, 37, 'Caramel Biscoff', 2, 4.50),
(102, 38, 'Brioche Bun', 1, 2.50),
(103, 38, 'Multigrain Bread', 1, 6.00),
(104, 39, 'Peach Tart', 3, 5.50),
(105, 40, 'Sourdough Loaf', 2, 6.50),
(106, 40, 'Chocolate Donut', 1, 2.00),
(107, 40, 'Mochi Donut', 1, 4.00),
(108, 41, 'Butter Croissant', 1, 3.00),
(109, 41, 'Sourdough Loaf', 1, 6.50),
(110, 41, 'Wholemeal Loaf', 1, 5.50),
(111, 42, 'Apple Turnover', 1, 4.00),
(112, 42, 'Wholemeal Loaf', 1, 5.50),
(113, 43, 'Sourdough Loaf', 3, 6.50),
(114, 43, 'Chocolate Donut', 1, 2.00),
(115, 43, 'Sugar Raised Donut', 1, 1.50),
(116, 43, 'Double Chocolate Muffin', 1, 3.00),
(117, 44, 'Apple Turnover', 2, 4.00),
(118, 44, 'Wholemeal Loaf', 1, 5.50),
(119, 44, 'Sourdough Loaf', 1, 6.50),
(120, 44, 'Almond Danish', 3, 5.00),
(121, 44, 'Brioche Bun', 3, 2.50),
(122, 44, 'Peach Tart', 4, 5.50),
(123, 44, 'Butter Croissant', 5, 3.00),
(124, 44, 'Pain au Chocolat', 2, 4.50),
(125, 44, 'Chicken Mushroom Puff', 1, 4.80),
(126, 45, 'Boston Cream Donut', 1, 3.50),
(127, 45, 'Butter Croissant', 1, 3.00),
(128, 45, 'Wholemeal Loaf', 1, 5.50),
(129, 45, 'Caramel Biscoff', 1, 4.50),
(130, 45, 'Banana Walnut Muffin', 1, 2.80),
(131, 46, 'Butter Croissant', 1, 3.00),
(132, 46, 'Wholemeal Loaf', 1, 5.50),
(133, 46, 'Chocolate Donut', 1, 2.00),
(134, 46, 'Double Chocolate Muffin', 1, 3.00),
(135, 47, 'Butter Croissant', 1, 3.00),
(136, 47, 'Sourdough Loaf', 1, 6.50),
(137, 47, 'Chocolate Donut', 1, 2.00),
(138, 47, 'Blueberry Muffin', 3, 2.50),
(139, 48, 'Butter Croissant', 3, 3.00),
(140, 48, 'Sourdough Loaf', 1, 6.50),
(141, 48, 'Chocolate Donut', 1, 2.00),
(142, 48, 'Blueberry Muffin', 1, 2.50),
(143, 49, 'Butter Croissant', 1, 3.00),
(144, 49, 'Sourdough Loaf', 1, 6.50),
(145, 49, 'Chocolate Donut', 3, 2.00),
(146, 49, 'Blueberry Muffin', 1, 2.50),
(147, 49, 'Wholemeal Loaf', 2, 5.50),
(148, 49, 'Sugar Raised Donut', 2, 1.50),
(149, 49, 'Strawberry Frosted', 2, 2.50),
(150, 49, 'Caramel Biscoff', 1, 4.50),
(151, 50, 'Butter Croissant', 1, 3.00),
(152, 50, 'Sourdough Loaf', 1, 6.50),
(153, 50, 'Chocolate Donut', 1, 2.00),
(154, 50, 'Blueberry Muffin', 1, 2.50),
(155, 51, 'Butter Croissant', 1, 3.00),
(156, 51, 'Sourdough Loaf', 3, 6.50),
(157, 51, 'Sugar Raised Donut', 1, 1.50),
(158, 51, 'Caramel Biscoff', 1, 4.50),
(159, 51, 'Red Velvet Muffin', 1, 3.50),
(160, 51, 'Banana Walnut Muffin', 1, 2.80),
(161, 51, 'Classic Vanilla Muffin', 1, 2.20),
(162, 52, 'Almond Danish', 1, 5.00),
(163, 52, 'Wholemeal Loaf', 1, 5.50),
(164, 52, 'Mochi Donut', 2, 4.00),
(165, 52, 'Banana Walnut Muffin', 1, 2.80),
(166, 52, 'Double Chocolate Muffin', 1, 3.00),
(167, 52, 'Pain au Chocolat', 1, 4.50),
(168, 53, 'Butter Croissant', 1, 3.00),
(169, 53, 'Pain au Chocolat', 1, 4.50),
(170, 53, 'Ciabatta', 1, 4.20),
(171, 53, 'French Baguette', 1, 3.80),
(172, 53, 'Chocolate Donut', 1, 2.00),
(173, 53, 'Strawberry Frosted', 1, 2.50),
(174, 53, 'Double Chocolate Muffin', 1, 3.00),
(175, 53, 'Oatmeal Raisin Muffin', 1, 2.80),
(176, 54, 'Blueberry Muffin', 6, 2.50),
(177, 55, 'Apple Turnover', 2, 4.00),
(178, 55, 'Almond Danish', 1, 5.00),
(179, 55, 'Pain au Chocolat', 1, 4.50),
(180, 56, 'Pain au Chocolat', 1, 4.50),
(181, 56, 'Wholemeal Loaf', 1, 5.50),
(182, 56, 'Chocolate Donut', 1, 2.00),
(183, 56, 'Double Chocolate Muffin', 1, 3.00),
(184, 56, 'Banana Walnut Muffin', 2, 2.80),
(185, 56, 'Oatmeal Raisin Muffin', 2, 2.80),
(186, 57, 'Butter Croissant', 1, 3.00),
(187, 57, 'Pain au Chocolat', 1, 4.50),
(188, 57, 'Almond Danish', 1, 5.00),
(189, 57, 'Mochi Donut', 1, 4.00),
(190, 57, 'Caramel Biscoff', 1, 4.50),
(191, 58, 'Butter Croissant', 1, 3.00),
(192, 58, 'Wholemeal Loaf', 1, 5.50),
(193, 58, 'Strawberry Frosted', 1, 2.50),
(194, 58, 'Double Chocolate Muffin', 1, 3.00),
(195, 59, 'Butter Croissant', 1, 3.00),
(196, 59, 'Pain au Chocolat', 2, 4.50),
(197, 59, 'Almond Danish', 1, 5.00),
(198, 59, 'Apple Turnover', 1, 4.00),
(199, 60, 'Butter Croissant', 2, 3.00),
(200, 60, 'Brioche Bun', 2, 2.50),
(201, 60, 'Mochi Donut', 1, 4.00),
(202, 60, 'Classic Vanilla Muffin', 1, 2.20),
(203, 61, 'Butter Croissant', 1, 3.00),
(204, 61, 'Wholemeal Loaf', 1, 5.50),
(205, 61, 'Caramel Biscoff', 1, 4.50),
(206, 61, 'Banana Walnut Muffin', 2, 2.80),
(207, 62, 'Butter Croissant', 1, 3.00),
(208, 62, 'Pain au Chocolat', 3, 4.50),
(209, 62, 'Almond Danish', 2, 5.00),
(210, 62, 'Apple Turnover', 1, 4.00),
(211, 63, 'Peach Tart', 3, 5.50),
(212, 64, 'Pain au Chocolat', 2, 4.50),
(213, 64, 'French Baguette', 2, 3.80),
(214, 64, 'Sugar Raised Donut', 2, 1.50),
(215, 65, 'Pain au Chocolat', 1, 4.50),
(216, 65, 'French Baguette', 2, 3.80),
(217, 65, 'Strawberry Frosted', 1, 2.50),
(218, 65, 'Blueberry Muffin', 3, 2.50),
(219, 66, 'Sourdough Loaf', 1, 6.50),
(220, 66, 'Butter Croissant', 1, 3.00),
(221, 66, 'Wholemeal Loaf', 1, 5.50),
(222, 66, 'Mochi Donut', 1, 4.00),
(223, 66, 'Banana Walnut Muffin', 1, 2.80),
(224, 67, 'Butter Croissant', 2, 3.00),
(225, 67, 'Wholemeal Loaf', 1, 5.50),
(226, 67, 'Sugar Raised Donut', 1, 1.50),
(227, 67, 'Banana Walnut Muffin', 1, 2.80),
(228, 68, 'Chocolate Chip', 2, 11.00),
(229, 69, 'Peach Tart', 1, 5.50),
(230, 69, 'Sourdough Loaf', 1, 6.50),
(231, 69, 'Sugar Raised Donut', 1, 1.50),
(232, 69, 'Double Chocolate Muffin', 1, 3.00),
(233, 69, 'Chocolate Chip', 1, 11.00),
(234, 70, 'Pain au Chocolat', 3, 4.50),
(235, 70, 'Chicken Mushroom Puff', 3, 4.80),
(236, 70, 'Ciabatta', 1, 4.20),
(237, 71, 'Almond Danish', 2, 5.00),
(238, 71, 'Wholemeal Loaf', 4, 5.50),
(239, 71, 'Pain au Chocolat', 1, 4.50),
(240, 71, 'Chocolate Chip', 1, 11.00),
(241, 72, 'Strawberry Frosted', 3, 2.50),
(242, 72, 'Boston Cream Donut', 1, 3.50),
(243, 72, 'Chocolate Chip', 1, 11.00),
(244, 73, 'Sourdough Loaf', 1, 6.50),
(245, 73, 'Oatmeal Raisin', 3, 9.00);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiry_time` datetime NOT NULL,
  `is_used` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `customer_id`, `token`, `expiry_time`, `is_used`, `created_at`) VALUES
(1, 16, '44b28332-54f5-4a1b-9764-cc358b141f2b', '2026-06-14 16:33:39', 0, '2026-06-14 08:18:39'),
(2, 1, '118f4e88-a760-4bb1-8f06-d864733d2ddf', '2026-06-14 16:39:31', 0, '2026-06-14 08:24:30'),
(3, 1, 'efd47a67-c6ca-4937-a343-49c350ab291d', '2026-06-14 16:43:36', 0, '2026-06-14 08:28:35'),
(4, 1, 'c6376bfb-4958-4a8a-86cc-47b0588d43b4', '2026-06-14 16:58:21', 1, '2026-06-14 08:43:20'),
(5, 17, '60ffca80-6025-4156-96ec-885e822dfd4f', '2026-06-16 10:50:24', 0, '2026-06-16 02:35:24'),
(6, 17, '2d171cac-f861-4c66-8f24-1c877dea4a42', '2026-06-16 10:51:03', 0, '2026-06-16 02:36:03'),
(7, 17, '8e224982-edb7-4af7-b256-36a850c09fa7', '2026-06-16 10:51:54', 1, '2026-06-16 02:36:54'),
(8, 1, 'e02bfb00-3026-4b26-8651-29648647444e', '2026-06-16 18:29:11', 1, '2026-06-16 10:14:10'),
(9, 20, '3c550bca-240b-4cf1-9b45-1b473c179726', '2026-06-17 09:49:59', 1, '2026-06-17 01:34:58'),
(10, 20, '6d28e778-45f6-4736-b27d-edca96c2bbc1', '2026-06-17 09:59:51', 1, '2026-06-17 01:44:50'),
(11, 20, '6dae229e-7f15-4a9a-8c48-9291e93180ce', '2026-06-17 10:05:18', 1, '2026-06-17 01:50:18'),
(12, 21, 'b5faab38-f4ad-4cba-8e10-f9de1bc4a1ef', '2026-06-17 14:18:56', 1, '2026-06-17 06:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int DEFAULT '10',
  `description` varchar(255) DEFAULT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `price`, `stock`, `description`, `category_id`) VALUES
(1, 'Butter Croissant', 3.00, 10, 'Flaky pastry', 1),
(2, 'Pain au Chocolat', 4.50, 10, 'Chocolate filled', 1),
(3, 'Almond Danish', 5.00, 10, 'Topped with almonds', 1),
(4, 'Apple Turnover', 4.00, 10, 'Sweet apple filling', 1),
(5, 'Chicken Mushroom Puff', 4.80, 10, 'Savory chicken', 1),
(6, 'Peach Tart', 5.50, 10, 'Fresh peach slices', 1),
(7, 'Sourdough Loaf', 6.50, 10, 'Crispy crust', 2),
(8, 'Wholemeal Loaf', 5.50, 10, 'High fiber', 2),
(9, 'French Baguette', 3.80, 10, 'Traditional crusty', 2),
(10, 'Brioche Bun', 2.50, 10, 'Buttery and soft', 2),
(11, 'Multigrain Bread', 6.00, 10, 'Healthy seeds', 2),
(12, 'Ciabatta', 4.20, 10, 'Italian sandwich bread', 2),
(13, 'Chocolate Donut', 2.00, 10, 'Glazed chocolate', 3),
(14, 'Sugar Raised Donut', 1.50, 10, 'Coated in sugar', 3),
(15, 'Strawberry Frosted', 2.50, 10, 'Pink strawberry glaze', 3),
(16, 'Boston Cream Donut', 3.50, 10, 'Custard filled', 3),
(17, 'Mochi Donut', 4.00, 10, 'Chewy texture', 3),
(18, 'Caramel Biscoff', 4.50, 10, 'Lotus Biscoff crumbs', 3),
(19, 'Blueberry Muffin', 2.50, 10, 'Fresh muffin', 4),
(20, 'Double Chocolate Muffin', 3.00, 10, 'Rich chocolate chips', 4),
(21, 'Banana Walnut Muffin', 2.80, 10, 'Real banana & nuts', 4),
(22, 'Classic Vanilla Muffin', 2.20, 10, 'Simple and sweet', 4),
(23, 'Red Velvet Muffin', 3.50, 10, 'Cocoa and cream cheese', 4),
(24, 'Oatmeal Raisin Muffin', 2.80, 10, 'Healthy oats & raisins', 4),
(25, 'Chocolate Chip', 11.00, 10, 'Chewy', 5),
(26, 'Oatmeal Raisin', 9.00, 10, 'hearty texture with the sweetness of dried fruit and cinnamon', 5);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `fullname`, `username`, `password`) VALUES
(1, 'Manager Ali', 'admin', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
