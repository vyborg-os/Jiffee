-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 01:04 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jiffee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindb`
--

CREATE TABLE `admindb` (
  `a_id` int(11) NOT NULL,
  `admin_id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `access` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admindb`
--

INSERT INTO `admindb` (`a_id`, `admin_id`, `password`, `access`, `date`) VALUES
(1, 'vyborg', 'c15498ee22590aef7312236fa6c32fa8', '1', '2020-04-15 12:17:21'),
(2, 'ericko', '6de4659459c90eb26d7fc4e7f307055f', '0', '2020-04-19 10:06:05'),
(4, 'testing', 'c15498ee22590aef7312236fa6c32fa8', '1', '2020-04-19 10:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `auth_otp`
--

CREATE TABLE `auth_otp` (
  `id` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `otp` int(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `id` int(11) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `message` varchar(1500) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`id`, `phone`, `email`, `subject`, `message`, `date`) VALUES
(7, '08169421019', 'otokitivictor@gmail.com', 'transaction error', 'please my name is alabi, i made a transaction last week and i was deducted. i was unable to make use of the money due to lack of network and unavailability of my funds. thanks kindly help me resolve this with immediate effect', '2020-04-15 15:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `transact`
--

CREATE TABLE `transact` (
  `id` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `transaction` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `receipent` int(5) NOT NULL,
  `rwallet` varchar(20) NOT NULL,
  `track_id` varchar(150) NOT NULL,
  `action` int(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transact`
--

INSERT INTO `transact` (`id`, `phone`, `amount`, `transaction`, `description`, `receipent`, `rwallet`, `track_id`, `action`, `date`) VALUES
(127, '08169421019', 3000, 'You sucessfully sent <span>&#8358</span>3,000 to IX5PjskKo', 'cnjgjgg fhhfh', 2, 'DmXuf1Sna', 'JIF3195204867', 1, '2020-04-12 21:05:20'),
(128, '08169421019', 3000, 'You successfully received <span>&#8358</span>3,000 from DmXuf1Sna', 'cnjgjgg fhhfh', 3, 'IX5PjskKo', 'JIF5234861097', 1, '2020-04-12 21:05:20'),
(129, '08169421019', 1500, 'You sucessfully withdraw <span>&#8358</span>1,500', 'cashout', 1, 'DmXuf1Sna', 'JIF3508271946', 1, '2020-04-12 21:07:18'),
(130, '08169421019', 5000, 'You sucessfully withdraw <span>&#8358</span>5,000', 'cashout', 1, 'DmXuf1Sna', 'JIF7652480391', 1, '2020-04-14 12:12:33'),
(131, '07032736739', 250000, 'You sucessfully sent <span>&#8358</span>250,000 to DmXuf1Sna', 'payment for freelance', 2, 'IX5PjskKo', 'JIF1038457692', 1, '2020-04-14 12:26:47'),
(132, '07032736739', 250000, 'You successfully received <span>&#8358</span>250,000 from IX5PjskKo', 'payment for freelance', 3, 'DmXuf1Sna', 'JIF9610782435', 1, '2020-04-14 12:26:47'),
(133, '08169421019', 389500, 'You sucessfully sent <span>&#8358</span>389,500 to IX5PjskKo ', 'testing my funds', 2, 'DmXuf1Sna', 'JIF1360759248', 1, '2020-04-14 13:39:57'),
(134, '08169421019', 389500, 'You successfully received <span>&#8358</span>389,500 from DmXuf1Sna', 'testing my funds', 3, 'IX5PjskKo ', 'JIF4930765812', 1, '2020-04-14 13:39:58'),
(135, '07032736739', 5000000, 'You sucessfully sent <span>&#8358</span>5,000,000 to DmXuf1Sna', 'refund', 2, 'IX5PjskKo', 'JIF3812569407', 1, '2020-04-14 13:43:16'),
(136, '07032736739', 5000000, 'You successfully received <span>&#8358</span>5,000,000 from IX5PjskKo', 'refund', 3, 'DmXuf1Sna', 'JIF9401752386', 1, '2020-04-14 13:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `image` varchar(150) NOT NULL,
  `image_id` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `wallet_id` varchar(50) NOT NULL,
  `pin` int(100) NOT NULL,
  `access` int(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `phone`, `image`, `image_id`, `password`, `wallet_id`, `pin`, `access`, `date`) VALUES
(13, 'Vyborg', 'otokitivictor@gmail.com', '08169421019', 'maxresdefault (1).jpg', 'img/Profile08169421019NO53717041', 'c15498ee22590aef7312236fa6c32fa8', 'DmXuf1Sna', 8456, 1, '2020-04-16 19:22:23'),
(14, 'spider', 'lilvhik@yahoo.com', '07032736739', '', '', '6de4659459c90eb26d7fc4e7f307055f', 'IX5PjskKo', 1234, 1, '2020-04-19 10:26:18'),
(15, 'way4ward', 'supersondultimate@gmail.com', '09010101010', '6 - Copy - Copy.jpg', 'img/Profile09010101010NO72033692', '21661093e56e24cd60b10092005c4ac7', 'rKQVpko43', 8456, 0, '2020-04-19 10:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `wallet_id` varchar(12) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `bank_name` varchar(150) NOT NULL,
  `bank_account` varchar(50) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id`, `wallet_id`, `phone`, `amount`, `bank_name`, `bank_account`, `action`, `date`) VALUES
(10, 'DmXuf1Sna', '08169421019', 5000000, 'Polaris Bank', '3021252455', '', '2020-04-14 13:43:16'),
(11, 'IX5PjskKo', '07032736739', 51047857, 'Polaris Bank', '3245258952', '', '2020-04-14 13:43:16'),
(12, 'rKQVpko43', '09010101010', 0, '', '', '', '2020-04-14 16:19:56'),
(13, '9wvY0Lsq4', '09057648733', 0, '', '', '', '2020-04-19 10:31:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindb`
--
ALTER TABLE `admindb`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `auth_otp`
--
ALTER TABLE `auth_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transact`
--
ALTER TABLE `transact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admindb`
--
ALTER TABLE `admindb`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `auth_otp`
--
ALTER TABLE `auth_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transact`
--
ALTER TABLE `transact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
