-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2019 at 10:30 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `khanstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(50, 'Mixer'),
(51, 'Bulldoser'),
(52, 'Crane');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(8, 2, '::1', 4, 1),
(12, 1, '::1', -1, 1),
(13, 4, '::1', -1, 1),
(14, 3, '::1', -1, 1),
(15, 5, '::1', -1, 1),
(16, 8, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Bricks'),
(2, 'Sand'),
(3, 'Rod'),
(4, 'Tiles');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 1, 'Brick', 10, 'Size(mm):92*57*194\r\nweight: 4.2 Ibs\r\nLocation:Khans Store,Dhanmondi 15', 'brick.jpg', 'Brick'),
(2, 50, 51, 'BUlldozer', 8000, 'Description:\r\nDimension:\r\nWeight:', 'bulldozer.jpg', 'Hyundai Bulldozer'),
(3, 2, 1, 'Sand', 50000, 'blablabla', 'sand.jpg', 'grey sand'),
(4, 1, 1, 'Bricks', 10, 'Size(mm):92*57*194\r\nweight: 4.2 Ibs\r\nLocation:Khans Store,Dhanmondi 15', 'bricks1.jpg', 'Brick'),
(5, 1, 1, 'Bricks', 15, 'Size(mm):92*57*194\r\nweight: 4.2 Ibs\r\nLocation:SS Store,Dhanmondi 27', 'bricks2.jpg', 'Brick'),
(6, 1, 1, 'Bricks', 11, 'Size(mm):92*57*194\r\nweight: 4.2 Ibs\r\nLocation:SS Store,Dhanmondi 27', 'bricks3.jpg', 'Brick'),
(7, 1, 1, 'brick', 9, 'Size(mm):92*57*194\r\nweight: 4.2 Ibs\r\nLocation:Khans Store,Dhanmondi 15', 'bricks4.jpg', 'Brick'),
(8, 1, 1, 'Brick', 7, 'Size(mm):92*57*194\r\nweight: 4.2 Ibs\r\nLocation:Khans Store,Dhanmondi 15', 'bricks6.jpg', 'Brick'),
(9, 2, 1, 'River Sand', 56000, 'This is generally gathered from the banks of the river. It has a fine quality unlike pit sand. This sand is usually whitish grey in color and has rounded particles. This sand is very much useful for the construction purpose such as plastering and so on.', 'sand2.jpg', 'river sand'),
(10, 2, 1, 'Coarse Sand', 60000, 'This is generally gathered from the banks of the river. It has a fine quality unlike pit sand. This sand is usually whitish grey in color and has rounded particles. This sand is very much useful for the construction purpose such as plastering and so on.', 'sand3.jpg', 'sand'),
(11, 2, 1, 'Limestone Sand', 65000, 'This is generally gathered from the banks of the river. It has a fine quality unlike pit sand. This sand is usually whitish grey in color and has rounded particles. This sand is very much useful for the construction purpose such as plastering and so on.', 'sand5.jpg\r\n', 'sand'),
(12, 52, 52, 'Crane', 400, 'hggahfakjfg', 'crane1.jpg', 'Crane'),
(13, 52, 52, 'Mobile Crane', 500, 'Mobile Cranes are the most standard and versatile type of crane used in construction today. The mobile hydraulic crane consists of a steel truss or telescopic boom mounted on a mobile platform, which could be a rail, wheeled, or even on a cat truck. The boom is hinged at the bottom and can be either raised or lowered by cables or hydraulic cylinders.\r\n\r\nWhat makes this construction crane so versatile is it’s footprint and mobility. In construction situations, it can sometimes be difficult to get close to where you need to hoist the materials. Moving a crane into a position that allows it to lift the material with the correct crane capacity is effected by the footprint of the crane. The foot print is the area required to have the crane set up it’s outriggers into position that allows it to hoist the material while inside the crane chart requirements.', 'crane2.jpg', 'crane'),
(14, 52, 52, 'Mobile Crane', 550, 'Mobile Cranes are the most standard and versatile type of crane used in construction today. The mobile hydraulic crane consists of a steel truss or telescopic boom mounted on a mobile platform, which could be a rail, wheeled, or even on a cat truck. The boom is hinged at the bottom and can be either raised or lowered by cables or hydraulic cylinders.\r\n\r\nWhat makes this construction crane so versatile is it’s footprint and mobility. In construction situations, it can sometimes be difficult to get close to where you need to hoist the materials. Moving a crane into a position that allows it to lift the material with the correct crane capacity is effected by the footprint of the crane. The foot print is the area required to have the crane set up it’s outriggers into position that allows it to hoist the material while inside the crane chart requirements.', 'crane3.jpg', 'crane');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(4, 'rifat alvi', 'habib', 'rifatalvihabib@gmail.com', '84ce7326976d7edae38dde33e880dbb4', '1671918085', 'J/7,kazi nazrul islam road', 'mohammadpur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
