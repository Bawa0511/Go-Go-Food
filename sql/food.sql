-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2021 at 11:23 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT 0,
  `category` varchar(30) NOT NULL,
  `imagename` varchar(20) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `deleted`, `category`, `imagename`) VALUES
(1, 'Breakfast', 40, 0, 'Specials', '1556382194.JPG'),
(2, 'Lunch', 80, 0, 'Specials', '1627586059.png'),
(3, 'Dinner', 100, 0, 'Specials', '1556382182.jpg'),
(4, 'Indian Special Thali', 75, 0, 'Special Offer', '1627586160.jpg'),
(5, 'Dal Makhani', 60, 0, 'Indian Main Course', '1556383357.jpg'),
(6, 'Mixed Veg', 65, 0, 'Indian Main Course', '1556382516.jpg'),
(7, 'Rajma', 55, 0, 'Indian Main Course', '1556382817.JPG'),
(8, 'Jalfrezi', 65, 0, 'Indian Main Course', '1556382981.jpg'),
(9, 'Chana Masala', 65, 0, 'Indian Main Course', '1556383053.jpg'),
(10, 'Spl Chana Pindi', 65, 0, 'Indian Main Course', '1556383079.jpg'),
(11, 'Spl Palak Chana', 65, 0, 'Indian Main Course', '1556383162.jpg'),
(12, 'Gobi Masala', 65, 0, 'Indian Main Course', '1556383212.jpg'),
(13, 'Aloo Jeera', 50, 0, 'Indian Main Course', '1556383268.jpg'),
(14, 'Spl Yellow Dal', 60, 0, 'Indian Main Course', '1556383317.jpg'),
(15, 'Kadai Paneer', 110, 0, 'Indian Vegetable', '1556383847.jpg'),
(16, 'Shahi Paneer', 110, 0, 'Indian Vegetable', '1556383900.jpg'),
(17, 'Cheese Tomato', 110, 0, 'Indian Vegetable', '1556383998.jpg'),
(18, 'Paneer Butter Masala', 110, 0, 'Indian Vegetable', '1627586160.jpg'),
(19, 'Paneer Tikka', 120, 0, 'Indian Vegetable', '1556384124.jpg'),
(20, 'Paneer Handi', 110, 0, 'Indian Vegetable', '1627586160.jpg'),
(21, 'Malai Kofta', 100, 0, 'Indian Vegetable', '1556384793.jpg'),
(22, 'Mushroom do pyaza', 100, 0, 'Indian Vegetable', '1556384895.jpg'),
(23, 'Veg Manchurian', 60, 0, 'Chinese Items', '1556385033.jpg'),
(24, 'Cheese Kabab Roll', 110, 0, 'Chinese Items', '1556385061.jpg'),
(25, 'Cheese Chilli', 120, 0, 'Chinese Items', '1556385147.jpg'),
(26, 'Cheese Garlic', 120, 0, 'Chinese Items', '1556385181.jpg'),
(27, 'Spring Roll', 60, 0, 'Chinese Items', '1556385225.jpg'),
(28, 'French Fries', 60, 0, 'Chinese Items', '1556385275.jpg'),
(29, 'Veg Noodles', 60, 0, 'Chinese Items', '1556385330.jpg'),
(30, 'Fried Rice', 60, 0, 'Chinese Items', '1556385383.jpg'),
(31, 'Veg Cheese Grilled', 70, 0, 'Sandwich', '1556385455.jpg'),
(32, 'Paneer Grilled ', 70, 0, 'Sandwich', '1556385517.jpg'),
(33, 'Mushroom Grilled ', 70, 0, 'Sandwich', '1556385598.jpg'),
(34, 'Veg Corn Seekh Kabab', 110, 0, 'Tandoor Se', '1556385686.jpg'),
(35, 'Paneer Tikka Irani', 130, 0, 'Tandoor Se', '1556385753.jpg'),
(36, 'Spl Afghani Chap', 70, 0, 'Tandoor Se', '1556385860.png'),
(37, 'Mixed Raita', 45, 0, 'Raita', '1556385984.jpg'),
(38, 'Boondi Raita', 45, 0, 'Raita', '1556386002.jpg'),
(39, 'Pine Apple Raita', 50, 0, 'Raita', '1556386034.jpg'),
(40, 'Steam Rice', 40, 0, 'Basmati Ki Mehak', '1627586160.jpg'),
(41, 'Zeera Rice', 60, 0, 'Basmati Ki Mehak', '1556386210.jpg'),
(42, 'Spl Veg Biryani', 90, 0, 'Basmati Ki Mehak', '1556386243.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `address` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `payment_type` varchar(16) NOT NULL DEFAULT 'Wallet',
  `total` int(11) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Yet to be delivered',
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `address`, `description`, `date`, `payment_type`, `total`, `status`, `deleted`) VALUES
(1, 2, 'Kiran kumar near LPU\r\nPhagwara', '', '2019-04-15 20:06:17', 'Cash On Delivery', 140, 'Cancelled by Customer', 1),
(2, 2, 'sasasa', '', '2021-07-30 00:58:08', 'Pay With Paytm', 60, 'Delivered', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`) VALUES
(3, 2, 41, 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `special_items`
--

CREATE TABLE `special_items` (
  `id` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_items`
--

INSERT INTO `special_items` (`id`, `description`) VALUES
(1, 'NONE'),
(2, 'NONE'),
(3, 'Dal + Sabzi  +  Rice + 4 Roti +  Salad + Raita'),
(4, 'Dal + Sabzi + Paneer +  Rice + 4 Roti +  Salad + Raita');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'Open',
  `type` varchar(30) NOT NULL DEFAULT 'Others',
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

CREATE TABLE `ticket_details` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL DEFAULT 'Customer',
  `name` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `contact` bigint(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `password`, `email`, `address`, `contact`, `verified`, `deleted`) VALUES
(1, 'Administrator', 'Admin', 'Root', 'admin', '', '', 0, 1, 0),
(2, 'Customer', 'Kiran Kumar', 'kenny', 'zxcvbnm', NULL, NULL, 98, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `customer_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_details`
--

CREATE TABLE `wallet_details` (
  `id` int(11) NOT NULL,
  `wallet_id` int(11) NOT NULL,
  `number` varchar(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 2000
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_details`
--

INSERT INTO `wallet_details` (`id`, `wallet_id`, `number`, `cvv`, `balance`) VALUES
(1, 1, '8556433232201446', 792, 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `special_items`
--
ALTER TABLE `special_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poster_id` (`poster_id`);

--
-- Indexes for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_id` (`wallet_id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_details`
--
ALTER TABLE `ticket_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wallet_details`
--
ALTER TABLE `wallet_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `special_items`
--
ALTER TABLE `special_items`
  ADD CONSTRAINT `special_items_ibfk_1` FOREIGN KEY (`id`) REFERENCES `items` (`id`);

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD CONSTRAINT `ticket_details_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `ticket_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `wallet_details`
--
ALTER TABLE `wallet_details`
  ADD CONSTRAINT `wallet_details_ibfk_1` FOREIGN KEY (`wallet_id`) REFERENCES `wallet` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
