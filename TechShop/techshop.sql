-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 07:52 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `delivered`
--

CREATE TABLE `delivered` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `manufacturer` varchar(45) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivered`
--

INSERT INTO `delivered` (`id`, `name`, `manufacturer`, `quantity`, `date`) VALUES
(1, 'TV', 'SAMSUNG', 1, '2021-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `ordered_tech`
--

CREATE TABLE `ordered_tech` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `mark` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` int(11) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordered_tech`
--

INSERT INTO `ordered_tech` (`id`, `name`, `manufacturer`, `mark`, `quantity`, `cost`, `date`) VALUES
(16, 'Washing machine', 'INDESIT', 'IWUB 4105 (CIS)', 2, 18250, '2021-12-23 00:00:00'),
(18, 'Fridge', 'BEKO', 'RCNK 400E 20ZGR', 2, 59433, '2021-12-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `technics`
--

CREATE TABLE `technics` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mark` varchar(45) DEFAULT NULL,
  `manufacturer` varchar(45) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technics`
--

INSERT INTO `technics` (`id`, `name`, `mark`, `manufacturer`, `quantity`, `cost`) VALUES
(1, 'Washing machine', 'IWUB 4105 (CIS)', 'INDESIT', 25, 18250),
(2, 'Washing machine', 'WRE 5411 BWW', 'BEKO', 5, 18840),
(3, 'Washing machine', 'F12U1HBS4', 'LG', 2, 67920),
(4, 'Washing machine', 'WW90K6414QW', 'SAMSUNG', 2, 67020),
(5, 'Washing machine', 'RSD 8229 ST X', 'ARISTON', 0, 40245),
(6, 'Fridge', 'RNV3610GCHB', 'DAEWOO', 1, 73187),
(7, 'Fridge', 'RCNK 400E 20ZGR', 'BEKO', 2, 59433),
(8, 'Fridge', 'KGE36XW20', 'BOSCH', 1, 42112),
(9, 'Fridge', 'GA-B409 UEDA', 'LG', 1, 43301),
(10, 'Fridge', 'DF 4180 W', 'INDESIT', 3, 29716),
(11, 'Vacuum Cleaner', 'SmartTouch Style', 'THOMAS', 2, 25047),
(12, 'Vacuum Cleaner', 'VC18M31C0HG', 'SAMSUNG', 1, 11462),
(13, 'Vacuum Cleaner', 'VT-1826', 'VITEK', 1, 5519),
(14, 'TV', '32/9000 TV LED SMART', 'ARTEL', 3, 15368),
(15, 'TV', '43E200A Smart TV Full HD 43', 'SKYWORTH', 3, 25896),
(16, 'TV', 'KDL-40WD653 LED', 'SONY', 2, 44490),
(17, 'TV', '55SJ930V', 'LG', 3, 123111),
(18, 'TV', 'UE49MU7000UXCE', 'SAMSUNG', 3, 953897);

-- --------------------------------------------------------

--
-- Table structure for table `technics_sold`
--

CREATE TABLE `technics_sold` (
  `id` int(10) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `mark` varchar(45) DEFAULT NULL,
  `manufacturer` varchar(45) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `cost` int(10) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technics_sold`
--

INSERT INTO `technics_sold` (`id`, `name`, `mark`, `manufacturer`, `quantity`, `cost`, `date`) VALUES
(1, 'Washing machine', 'F12U1HBS4', 'LG', 1, 67920, '2020-12-15'),
(2, 'Fridge', 'KGE36XW20', 'BOSCH', 1, 42112, '2021-12-04'),
(3, 'Vacuum Cleaner', 'VC18M31C0HG', 'SAMSUNG', 1, 11462, '2021-12-09'),
(4, 'TV', 'KDL-40WD653 LED', 'SONY', 1, 44490, '2021-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `account_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `account_type`) VALUES
(1, 'Atai', 'Amankulov', 'director', '1234', 'director'),
(2, 'Aibike', 'Maksutova', 'worker', '1234', 'worker'),
(3, 'Salmorbek', 'Salmorbekobi4', 'delivery', '1234', 'delivery');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delivered`
--
ALTER TABLE `delivered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordered_tech`
--
ALTER TABLE `ordered_tech`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technics`
--
ALTER TABLE `technics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technics_sold`
--
ALTER TABLE `technics_sold`
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
-- AUTO_INCREMENT for table `delivered`
--
ALTER TABLE `delivered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ordered_tech`
--
ALTER TABLE `ordered_tech`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `technics`
--
ALTER TABLE `technics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `technics_sold`
--
ALTER TABLE `technics_sold`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
