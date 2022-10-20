-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 06:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `main`
--

-- --------------------------------------------------------

--
-- Table structure for table `dep`
--

CREATE TABLE `dep` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dep`
--

INSERT INTO `dep` (`id`, `name`, `date_create`) VALUES
(1, 'พนักงานคอมพิวเตอร์', '2019-08-10 17:45:49'),
(2, 'นักวิชาการคอมพิวเตอร์', '2019-08-10 17:45:49'),
(3, 'เจ้าหน้าที่ศาลยุติธรรมปฏิบัติงาน', '2019-08-10 17:45:49'),
(4, 'เจ้าหน้าที่ศาลยุติธรรมชำนาญงาน', '2019-08-10 17:45:49'),
(5, 'นักจิตวิทยาปฏิบัติการ', '2019-08-10 17:45:49'),
(6, 'พนักงานสถานที่', '2019-08-10 17:45:49'),
(7, 'พนักงานขับรถยนต์', '2019-08-10 17:45:49'),
(8, 'เจ้าหน้าที่ศาลยุติธรรม', '2019-08-10 17:45:49'),
(9, 'เจ้าพนักงานศาลยุติธรรมปฏิบัติการ', '2019-08-10 17:45:49'),
(10, 'นิติกรชำนาญการ', '2019-08-10 17:45:49'),
(11, 'เจ้าพนักงานศาลยุติธรรมชำนาญการ', '2019-08-10 17:45:49'),
(12, 'นักวิชาการเงินและบัญชีปฏิบัติการ', '2019-08-10 17:45:49'),
(13, 'เจ้าพนักงานศาลยุติธรรมชำนาญการพิเศษ', '2019-08-10 17:45:49'),
(14, 'นิติกร', '2019-08-10 17:45:49'),
(15, 'ผู้อำนวยการฯ', '2019-08-10 17:45:49'),
(16, 'เจ้าพนักงานการเงินและบัญชีปฏิบัติงาน', NULL),
(17, 'พนักงานขับรถยนต์(จ้างเหมา)', NULL),
(18, 'ผู้พิพากษาศาลเยาวชนและครอบครัวจังหวัดประจวบคีรีขันธ์', NULL),
(19, 'นิติกรชำนาญการพิเศษ', NULL),
(20, 'ผู้พิพากษาหัวหน้าศาลเยาวชนและครอบครัวจังหวัดประจวบคีรีขันธ์', NULL),
(21, 'ผู้พิพากษาหัวหน้าคณะชั้นต้นในศาลเยาวชนและครอบครัวจังหวัดประจวบคีรีขันธ์', NULL),
(22, 'นักจิตวิทยาชำนาญการ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fname`
--

CREATE TABLE `fname` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fname`
--

INSERT INTO `fname` (`id`, `name`, `date_create`) VALUES
(1, 'นาย', '2019-08-10 17:45:49'),
(2, 'นาง', '2019-08-10 17:45:50'),
(3, 'นางสาว', '2019-08-10 17:45:50'),
(4, 'พันจ่าเอก', NULL),
(5, 'พ.ต.อ.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `name`, `date_create`) VALUES
(1, 'ผู้อำนวยการฯ', '2019-10-06 18:49:32'),
(2, 'กลุ่มช่วยอำนวยการ', '2019-10-06 18:49:32'),
(3, 'กลุ่มงานช่วยพิจารณาคดี', '2019-10-06 18:49:32'),
(4, 'กลุ่มงานคดี', '2019-10-06 18:49:32'),
(5, 'กลุ่มงานคลัง', '2019-10-06 18:49:32'),
(6, 'กลุ่มงานปริการประชาชนและประชาสัมพันธ์', '2019-10-06 18:49:32'),
(7, 'กลุ่มงานไกล่เกลี่ยและประนอมข้อพิพาท', '2019-10-06 18:49:32'),
(8, 'ผู้พิพากษา', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `line`
--

CREATE TABLE `line` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `line`
--

INSERT INTO `line` (`id`, `name`, `token`, `status`) VALUES
(23, 'ven', 'on2isqp1dpGKDoknsAVBCY3aIrhH5CBLPXPykujzUkq', 1),
(31, 'admin', 'on2isqp1dpGKDoknsAVBCY3aIrhH5CBLPXPykujzUkq', 1),
(41, 'ven_admin', 'on2isqp1dpGKDoknsAVBCY3aIrhH5CBLPXPykujzUkq', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `bloodtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dep` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `workgroup` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_account` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_comment` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) DEFAULT 10,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `st` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `id_card`, `fname`, `name`, `sname`, `img`, `birthday`, `bloodtype`, `dep`, `workgroup`, `address`, `phone`, `bank_account`, `bank_comment`, `status`, `created_at`, `updated_at`, `st`) VALUES
(1566445991, '1566445991', NULL, 'นาย', 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, '2022-10-12 10:29:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` smallint(6) NOT NULL DEFAULT 1,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1566445991, 'admin', 'qdYs15wrU3R7ghAuAuXNMc-fFxlZ8QyT', '$2y$10$Qu3WyTQeq88ZEjej.4gdOe6jNbIQSBmJZiFYYgrWXkyjFzxlH38Wy', 'VSorsXwWyDjK0WwK76PNqcdsextFlwai_1566445992', NULL, 9, 10, '2000-01-01 00:00:00', '2022-10-12 10:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `ven`
--

CREATE TABLE `ven` (
  `id` int(11) NOT NULL,
  `user_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `u_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_com_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_com_idb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_date` date NOT NULL,
  `ven_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ven_month` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DN` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_com_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_com_num_all` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gcal_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ven_change`
--

CREATE TABLE `ven_change` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ven_month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_date1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_date2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_com_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_com_num_all` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `u_role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_id1` int(11) DEFAULT NULL,
  `ven_id2` int(11) DEFAULT NULL,
  `ven_id1_old` int(11) DEFAULT NULL,
  `ven_id2_old` int(11) DEFAULT NULL,
  `user_id1` int(11) DEFAULT NULL,
  `user_id2` int(11) DEFAULT NULL,
  `s_po` int(11) DEFAULT NULL,
  `s_bb` int(11) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ven_com`
--

CREATE TABLE `ven_com` (
  `id` int(11) NOT NULL,
  `ven_com_num` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_com_date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_com_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_name_id` int(11) DEFAULT NULL,
  `u_role` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `color` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ven_name`
--

CREATE TABLE `ven_name` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `DN` varchar(255) DEFAULT NULL,
  `srt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ven_name_sub`
--

CREATE TABLE `ven_name_sub` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ven_name_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `srt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ven_user`
--

CREATE TABLE `ven_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `u_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(2) DEFAULT NULL,
  `ven_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uvn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `v_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dep`
--
ALTER TABLE `dep`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fname`
--
ALTER TABLE `fname`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `line`
--
ALTER TABLE `line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `ven`
--
ALTER TABLE `ven`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ven_change`
--
ALTER TABLE `ven_change`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ven_com`
--
ALTER TABLE `ven_com`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ven_name`
--
ALTER TABLE `ven_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ven_name_sub`
--
ALTER TABLE `ven_name_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ven_user`
--
ALTER TABLE `ven_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dep`
--
ALTER TABLE `dep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `fname`
--
ALTER TABLE `fname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `line`
--
ALTER TABLE `line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665475628;

--
-- AUTO_INCREMENT for table `ven`
--
ALTER TABLE `ven`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1666084299;

--
-- AUTO_INCREMENT for table `ven_com`
--
ALTER TABLE `ven_com`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665561717;

--
-- AUTO_INCREMENT for table `ven_name`
--
ALTER TABLE `ven_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ven_name_sub`
--
ALTER TABLE `ven_name_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `ven_user`
--
ALTER TABLE `ven_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
