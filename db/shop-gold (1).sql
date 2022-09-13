-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 07:37 AM
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
-- Database: `shop-gold`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` bigint(20) NOT NULL,
  `user` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `comment` varchar(10000) COLLATE utf8_polish_ci NOT NULL,
  `creat_add` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user`, `product`, `comment`, `creat_add`) VALUES
(1, 1, 1, 'fd', '2021/06/29'),
(2, 12, 4, '', '2021/07/12'),
(3, 12, 2, '', '2021/07/12'),
(4, 12, 6, 'ddd', '2021/07/12'),
(5, 17, 7, 'سیسسی', '2021/07/18'),
(6, 17, 18, 'kkkkkk', '2021/07/18');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` bigint(11) NOT NULL,
  `user` bigint(11) NOT NULL,
  `product` bigint(11) NOT NULL,
  `creat_add` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user`, `product`, `creat_add`) VALUES
(2, 11, 6, '2021/06/29'),
(3, 12, 2, '2021/07/12'),
(4, 12, 6, '2021/07/12'),
(5, 17, 7, '2021/07/18'),
(6, 17, 18, '2021/07/18'),
(7, 17, 18, '2021/07/18');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` bigint(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `category` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `image` varchar(500) COLLATE utf8_polish_ci NOT NULL,
  `number` int(11) NOT NULL,
  `creat_add` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `category`, `price`, `image`, `number`, `creat_add`) VALUES
(20, 'گوشواره2', 1, 3000000, '16267087374940g2.jpg', 3, '2021/07/19'),
(21, 'گوشواره 3', 1, 2000000, '16267087666067g3.jpg', 2, '2021/07/19'),
(22, 'النگو 1', 2, 6000000, '16267090503014al8.jpg', 5, '2021/07/19'),
(23, 'النگو 2', 2, 3000000, '16267090756219al2.jpg', 3, '2021/07/19'),
(24, 'النگو 3', 2, 3, '16267091031749al4.jpg', 5000000, '2021/07/19'),
(25, 'انگشتر 1', 3, 2000000, '16267091538276an4.jpg', 1, '2021/07/19'),
(26, 'انگشتر 2', 3, 3000000, '1626709194250almas.jpg', 1, '2021/07/19'),
(27, 'انگشتر 3', 3, 1000000, '16267092286993an5.jpg', 2, '2021/07/19'),
(28, 'سرویس طلا 1', 4, 55000000, '16267092573297ser2.jpg', 1, '2021/07/19'),
(29, 'سرویس طلا 2', 4, 70000000, '16267092898027ser7.jpg', 1, '2021/07/19'),
(30, 'سرویس طلا 3', 4, 80000000, '16267093185744ser8.jpeg', 1, '2021/07/19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `type_access` int(11) NOT NULL DEFAULT 0,
  `first_name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(500) COLLATE utf8_polish_ci NOT NULL,
  `creat_add` varchar(50) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `type_access`, `first_name`, `last_name`, `phone`, `password`, `creat_add`) VALUES
(2, 0, 'elahe', 'maghooli', '09121995390', '827ccb0eea8a706c4c34a16891f84e7b', '2021/06/02'),
(4, 0, 'زهرا', 'رحیمی', '09036599211', '81dc9bdb52d04dc20036dbd8313ed055', '2021/06/25'),
(5, 1, 'fg', 'dfgd23', '123', '123', '2021/06/29'),
(6, 0, 'erer', 'ee', '123', '123', '2021/06/29'),
(7, 0, 'ewrwe', 'wer', '123', '123', '2021/06/29'),
(8, 0, 'ewrwe', 'wer', '123', '123', '2021/06/29'),
(9, 0, 'erre', 'rere', '099', '099', '2021/06/29'),
(10, 0, 'erre', 'rere', '099', '099', '2021/06/29'),
(11, 0, 'dsdfs', 'dssf', '0966', '123', '2021/06/29'),
(12, 0, 'ddd', 'ddd', '0915', '12', '2021/07/12'),
(15, 1, 'arezoo', 'k', '0915', '0915', '2021/07/18'),
(16, 0, 'as', 'as', '12', 'c20ad4d76fe97759aa27a0c99bff6710', '2021/07/18'),
(17, 0, 'ارز.', 'کشاورز', '0918', '921e691f871caa6e729d47babff8ead6', '2021/07/18'),
(18, 0, 'ali', 'molaie', '09922270728', '79931b02a1c1e6208a988ec6fc74424a', '2022/08/20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
