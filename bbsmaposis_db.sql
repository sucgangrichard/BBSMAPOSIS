-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2025 at 07:54 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbsmaposis_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `notification_log`
--

CREATE TABLE `notification_log` (
  `id` int(11) NOT NULL,
  `last_notification` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL,
  `category` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `category`) VALUES
(2, 'Dry'),
(3, 'Wet -Chilled'),
(5, 'Wet - Freezer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_do_category`
--

CREATE TABLE `tbl_do_category` (
  `do_cat_id` int(11) NOT NULL,
  `do` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_do_category`
--

INSERT INTO `tbl_do_category` (`do_cat_id`, `do`) VALUES
(1, 'Dine In'),
(2, 'Take Out');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `invoice_id` int(11) NOT NULL,
  `total_due` double NOT NULL,
  `change_amount` double NOT NULL,
  `paid` double NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `vatable_sales` double NOT NULL,
  `vat_amount` double NOT NULL,
  `order_date` date NOT NULL,
  `table_number` int(11) NOT NULL,
  `dine_in` varchar(255) NOT NULL,
  `menu_category` varchar(255) NOT NULL,
  `time_value` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_details`
--

CREATE TABLE `tbl_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `qty` double NOT NULL,
  `total_per_qty` double NOT NULL,
  `table_number` int(11) NOT NULL,
  `dine_in` varchar(255) NOT NULL,
  `menu_category` varchar(255) NOT NULL,
  `order_date` date NOT NULL,
  `time_value` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_category`
--

CREATE TABLE `tbl_menu_category` (
  `menu_cat_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_menu_category`
--

INSERT INTO `tbl_menu_category` (`menu_cat_id`, `category`) VALUES
(10, 'Noodles Soup'),
(11, 'Chao Fan'),
(12, 'Drinks'),
(13, 'Siopao Dimsum'),
(14, 'Rice Meals'),
(15, 'Lauriat Family'),
(16, 'MilkSha'),
(17, 'BreakFast'),
(18, 'Sdish Dessert');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mmenu`
--

CREATE TABLE `tbl_mmenu` (
  `menu_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `available` int(11) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `updated_date` date NOT NULL,
  `approved_by` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_mmenu`
--

INSERT INTO `tbl_mmenu` (`menu_id`, `product_name`, `category`, `available`, `price`, `image`, `updated_date`, `approved_by`) VALUES
(39, 'BEEF MAMI', 'Noodles Soup', 23, 193, '', '2024-12-24', 'MOD'),
(40, 'BEEF WONTON MAMI', 'Noodles Soup', 19, 209, '', '2024-12-24', 'MOD'),
(41, 'LARGE WONTON MAMI', 'Noodles Soup', 19, 143, '', '2024-12-24', 'MOD'),
(42, 'PANCIT CANTON', 'Noodles Soup', 58, 83, '', '2024-12-24', 'MOD'),
(43, 'PANCIT CANTON WITH FRIED CHCIKEN', 'Noodles Soup', 25, 198, '', '2024-12-24', 'MOD'),
(44, 'REGULAR WONTON MAMI', 'Noodles Soup', 64, 98, '', '2024-12-24', 'MOD'),
(45, 'WONTON MAMI WITH ASADO SIOPAO', 'Noodles Soup', 31, 149, '', '2024-12-24', 'MOD'),
(46, 'BEEF CHAO FAN', 'Chao Fan', 15, 98, '6770edbcc1d9d.jpg', '2024-12-24', 'MOD'),
(47, 'CHAO FAN WITH 1 PC FRIED CHICKEN', 'Chao Fan', 29, 142, '', '2024-12-24', 'MOD'),
(48, 'CHAO FAN WITH 2pc FRIED CHICKEN', 'Chao Fan', 24, 231, '', '2024-12-24', 'MOD'),
(49, 'CHAO FAN WITH CHIX & SAUCE', 'Chao Fan', 35, 208, '', '2024-12-24', 'MOD'),
(50, 'CHAO FAN WITH SWEET & SOUR CHICKEN', 'Chao Fan', 25, 208, '', '2024-12-24', 'MOD'),
(51, 'CRISPY WONTON CHAO FAN', 'Chao Fan', 45, 120, '', '2024-12-24', 'MOD'),
(52, 'CRISPY WONTON SPICY CHAO FAN', 'Chao Fan', 50, 142, '', '2024-12-24', 'MOD'),
(53, 'PORK CHAO FAN', 'Chao Fan', 70, 55, '', '2024-12-24', 'MOD'),
(54, 'PORK CHAO FAN FRIED CHICKEN', 'Chao Fan', 35, 142, '', '2024-12-24', 'MOD'),
(55, 'SIOMAI BEEF CHAO FAN', 'Chao Fan', 40, 143, '', '2024-12-24', 'MOD'),
(56, 'SIOMAI CHAO FAN', 'Chao Fan', 60, 109, '', '2024-12-24', 'MOD'),
(57, 'SIOMAI SPICY CHAO FAN', 'Chao Fan', 45, 131, '', '2024-12-24', 'MOD'),
(58, 'SPICY CHAO FAN', 'Chao Fan', 65, 76, '', '2024-12-24', 'MOD'),
(59, 'SPICY CHAO FAN WITH FRIED CHICKEN', 'Chao Fan', 30, 164, '', '2024-12-24', 'MOD'),
(60, 'SPRITE', 'Drinks', 100, 72, '', '2024-12-24', 'MOD'),
(61, 'PINEAPPLE JUICE', 'Drinks', 90, 72, '', '2024-12-24', 'MOD'),
(62, 'PEPSI', 'Drinks', 106, 72, '', '2024-12-24', 'MOD'),
(63, 'MUG ROOTBEER', 'Drinks', 81, 72, '', '2024-12-24', 'MOD'),
(64, 'MOUNTAIN DEW', 'Drinks', 90, 72, '', '2024-12-24', 'MOD'),
(65, 'ICED TEA', 'Drinks', 120, 72, '', '2024-12-24', 'MOD'),
(66, 'COKE ZERO', 'Drinks', 80, 72, '', '2024-12-24', 'MOD'),
(67, 'COKE', 'Drinks', 114, 72, '', '2024-12-24', 'MOD'),
(76, '2PC FRIED ASADO SIOPAO', 'Siopao Dimsum', 50, 83, '', '2024-12-24', 'MOD'),
(77, '2PC SIOMAI', 'Siopao Dimsum', 58, 44, '', '2024-12-24', 'MOD'),
(78, '3PC SIOPAO BOX', 'Siopao Dimsum', 26, 162, '', '2024-12-24', 'MOD'),
(79, '4PC FRIED SIOPAO BOX', 'Siopao Dimsum', 38, 165, '', '2024-12-24', 'MOD'),
(80, '4PC LUMPIANG SHANGHAI', 'Siopao Dimsum', 61, 72, '', '2024-12-24', 'MOD'),
(81, '4PC SIOMAI', 'Siopao Dimsum', 65, 66, '', '2024-12-24', 'MOD'),
(82, '6PC SPICY WONTON', 'Siopao Dimsum', 50, 77, '', '2024-12-24', 'MOD'),
(83, '6PC CRISPY WONTON WITH SWEET CHILI', 'Siopao Dimsum', 45, 77, '', '2024-12-24', 'MOD'),
(84, 'BOLA-BOLA SIOPAO SUPREME', 'Siopao Dimsum', 55, 77, '', '2024-12-24', 'MOD'),
(85, 'CHUNKY ASADO SIOPAO', 'Siopao Dimsum', 70, 54, '', '2024-12-24', 'MOD'),
(86, 'DIMSUM MIX PLATTER', 'Siopao Dimsum', 25, 243, '', '2024-12-24', 'MOD'),
(87, 'FRIED PORK SIOMAI GROUP PLATTER', 'Siopao Dimsum', 30, 198, '', '2024-12-24', 'MOD'),
(88, 'LUMPIANG SHANGHAI GROUP PLATTER', 'Siopao Dimsum', 24, 215, '', '2024-12-24', 'MOD'),
(89, 'STEAMED PORK SIOMAI GROUP PLATTER', 'Siopao Dimsum', 30, 198, '', '2024-12-24', 'MOD'),
(90, 'CHIX & SAUCE RICE MEAL', 'Rice Meals', 27, 164, '', '2024-12-24', 'MOD'),
(91, 'IMPERIAL CHICKEN CHOP WITH EGG FRIED RICE', 'Rice Meals', 30, 98, '', '2024-12-24', 'MOD'),
(92, 'IMPERIAL CHICKEN CHOP WITH WHITE RICE', 'Rice Meals', 59, 83, '', '2024-12-24', 'MOD'),
(93, 'LUMPIANG SHANGHAI RICE MEAL', 'Rice Meals', 51, 83, '', '2024-12-24', 'MOD'),
(118, '3PC BUCHI', 'Sdish Dessert', 23, 86, '', '2024-12-24', 'MOD'),
(119, 'ASIAN SPICY SAUCE', 'Sdish Dessert', 19, 17, '677260b7d14dc.png', '2024-12-24', 'MOD'),
(120, 'CHICHARAP', 'Sdish Dessert', 31, 66, '', '2024-12-24', 'MOD'),
(121, 'EXTRA EGG FRIED RICE', 'Sdish Dessert', 29, 50, '', '2024-12-24', 'MOD'),
(122, 'EXTRA PLAIN RICE', 'Sdish Dessert', 30, 39, '', '2024-12-24', 'MOD'),
(123, 'KANGKONG WITH CHINESE BAGOONG', 'Sdish Dessert', 35, 77, '', '2024-12-24', 'MOD'),
(124, 'NEW! 3pc ASSORTED BUCHI', 'Sdish Dessert', 36, 97, '', '2024-12-24', 'MOD'),
(125, 'STIR FRIED BOK CHOY', 'Sdish Dessert', 36, 77, '', '2024-12-24', 'MOD'),
(126, 'WONTON SOUP', 'Sdish Dessert', 7, 55, '', '2024-12-24', 'MOD'),
(127, 'CHINESE STYLED FRIED CHICKEN LAURIAT', 'Lauriat Family', 23, 209, '', '2024-12-24', 'MOD'),
(128, 'CHIX & SAUCE LAURIAT', 'Lauriat Family', 14, 237, '', '2024-12-24', 'MOD'),
(129, 'SWEET & SOUR CHICKEN LAURIAT', 'Lauriat Family', 39, 237, '', '2024-12-24', 'MOD'),
(130, 'SWEET & SOUR FISH LAURIAT', 'Lauriat Family', 13, 243, '', '2024-12-24', 'MOD'),
(131, 'SWEET & SOUR PORK LAURIAT', 'Lauriat Family', 69, 237, '', '2024-12-24', 'MOD'),
(132, 'BEEF TAPA', 'BreakFast', 15, 176, '676d773f89c3c.jpg', '2024-12-24', 'MOD'),
(133, 'BREAKFAST BEEF CHAO FAN', 'BreakFast', 15, 131, '676d76f547669.jpg', '2024-12-24', 'MOD'),
(134, 'BREAKFAST CRISPY WONTON BEEF CHAO FAN', 'BreakFast', 17, 187, '6772598e4011c.jpg', '2024-12-24', 'MOD'),
(135, 'BREAKFAST CRISPY WONTON CHAO FAN', 'BreakFast', 14, 153, '', '2024-12-24', 'MOD'),
(136, 'BLACK TEA LATTE WITH PUDDING', 'MilkSha', 20, 132, '', '2024-12-24', 'MOD'),
(137, 'HONEY PEARL BLACK TEA LATTE', 'MilkSha', 13, 132, '', '2024-12-24', 'MOD'),
(138, 'LYCHEE FRUIT TEA WITH JELLY', 'MilkSha', 14, 109, '676d77510e9b1.jpg', '2024-12-24', 'MOD'),
(139, 'MILKSHA PERFECT PAIR good for 2', 'MilkSha', 15, 263, '676ef231488f1.jpg', '2024-12-24', 'MOD');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `barcode` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `expiration_date` date NOT NULL,
  `date_of_receipt` date NOT NULL,
  `received_by` varchar(255) NOT NULL,
  `condition_at_receipt` varchar(255) NOT NULL,
  `packaging_type` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_taxdis`
--

CREATE TABLE `tbl_taxdis` (
  `taxdis_id` int(11) NOT NULL,
  `vat` float NOT NULL,
  `seniordiscount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_taxdis`
--

INSERT INTO `tbl_taxdis` (`taxdis_id`, `vat`, `seniordiscount`) VALUES
(1, 12, 20);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `userpassword` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  `logintime` datetime NOT NULL,
  `logout` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `userpassword`, `role`, `logintime`, `logout`) VALUES
(1, 'admin', 'admin', 'Admin', '2025-01-02 01:56:18', '2025-01-02 01:55:25'),
(2, 'user', 'user', 'User', '2024-12-26 16:03:48', '2025-01-01 04:46:27');

-- --------------------------------------------------------

--
-- Table structure for table `time_records`
--

CREATE TABLE `time_records` (
  `id` int(11) NOT NULL,
  `time_value` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notification_log`
--
ALTER TABLE `notification_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `tbl_do_category`
--
ALTER TABLE `tbl_do_category`
  ADD PRIMARY KEY (`do_cat_id`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `tbl_invoice_details`
--
ALTER TABLE `tbl_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu_category`
--
ALTER TABLE `tbl_menu_category`
  ADD PRIMARY KEY (`menu_cat_id`);

--
-- Indexes for table `tbl_mmenu`
--
ALTER TABLE `tbl_mmenu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_taxdis`
--
ALTER TABLE `tbl_taxdis`
  ADD PRIMARY KEY (`taxdis_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `time_records`
--
ALTER TABLE `time_records`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notification_log`
--
ALTER TABLE `notification_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_do_category`
--
ALTER TABLE `tbl_do_category`
  MODIFY `do_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_invoice_details`
--
ALTER TABLE `tbl_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu_category`
--
ALTER TABLE `tbl_menu_category`
  MODIFY `menu_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_mmenu`
--
ALTER TABLE `tbl_mmenu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_taxdis`
--
ALTER TABLE `tbl_taxdis`
  MODIFY `taxdis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `time_records`
--
ALTER TABLE `time_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
