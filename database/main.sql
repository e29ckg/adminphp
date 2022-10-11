-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2022 at 11:33 AM
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
-- Table structure for table `bila`
--

CREATE TABLE `bila` (
  `id` int(11) NOT NULL,
  `running` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `p2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_begin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_end` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_total` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `due` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateO_begin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateO_end` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateO_total` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `po` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bigboss` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bila`
--

INSERT INTO `bila` (`id`, `running`, `user_id`, `cat`, `p1`, `p2`, `date_begin`, `date_end`, `date_total`, `due`, `dateO_begin`, `dateO_end`, `dateO_total`, `address`, `t1`, `t2`, `t3`, `comment`, `file`, `po`, `bigboss`, `date_create`, `status`) VALUES
(1663163149, '65001', 1566445991, 'ลาพักผ่อน', '10', '20', '2022-09-23', '2022-09-30', '8', NULL, NULL, NULL, NULL, '-', '8', '8', '16', '', NULL, '14', '14', '2022-09-14', '4'),
(1663437266, '65002', 1566445991, 'ลาป่วย', NULL, NULL, '2022-09-15', '2022-09-16', '2', '', '2022-09-01', '2022-09-02', '2', '-', '0', '2', '2', '', NULL, '14', '11', '2022-09-18', '1'),
(1664644743, '65003', 1566445991, 'ลาพักผ่อน', '0', '10', '2022-10-03', '2022-10-07', '5', NULL, NULL, NULL, NULL, '-', '5', '5', '10', '', NULL, '', '', '2022-10-02', '1'),
(1664644834, '65004', 1566445991, 'ลาพักผ่อน', '0', '10', '2022-10-26', '2022-10-27', '2', NULL, NULL, NULL, NULL, '-', '10', '2', '12', '', NULL, '', '', '2022-10-02', '1');

-- --------------------------------------------------------

--
-- Table structure for table `blueshirt`
--

CREATE TABLE `blueshirt` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line_alert` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(8, 'ผู้พิพากษา', NULL),
(9, 'ผู้พิพากษาหัวหน้าศาลฯ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `law_ban`
--

CREATE TABLE `law_ban` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legal_c`
--

CREATE TABLE `legal_c` (
  `id` int(11) NOT NULL,
  `id_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fname` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `legal_c_ven`
--

CREATE TABLE `legal_c_ven` (
  `id` int(11) NOT NULL,
  `ven_date` date NOT NULL,
  `legal_c_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(20, 'bila_admin', '', 1),
(23, 'ven', 'on2isqp1dpGKDoknsAVBCY3aIrhH5CBLPXPykujzUkq', 1),
(27, 'blueshirt', '', 1),
(28, 'ที่ปรึกษากฎหมาย', '', 1),
(31, 'admin', 'on2isqp1dpGKDoknsAVBCY3aIrhH5CBLPXPykujzUkq', 1),
(39, 'LineGroup', '', 1),
(41, 'ven_admin', 'on2isqp1dpGKDoknsAVBCY3aIrhH5CBLPXPykujzUkq', 1);

-- --------------------------------------------------------

--
-- Table structure for table `line_home`
--

CREATE TABLE `line_home` (
  `id` int(11) NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_ser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `api_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callback_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `line_home`
--

INSERT INTO `line_home` (`id`, `client_id`, `client_secret`, `name_ser`, `api_url`, `callback_url`) VALUES
(1, 'JtRAgPTreLiGpyGWFuWj1S', 'QK5yEVct0oCxhD7JIWgh0fyYJ6UJkPxcBrRROs4EQSK', 'webPk', 'http://127.0.0.1/main/line/line_index', 'http://127.0.0.1/main/line/callback'),
(2, 'JtRAgPTreLiGpyGWFuWj1S', 'QK5yEVct0oCxhD7JIWgh0fyYJ6UJkPxcBrRROs4EQSK', 'webPk_user', 'http://127.0.0.1/main/user/line_index', 'http://127.0.0.1/main/user/callback'),
(4, '', '', 'googleCal', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `manager` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(9, '9', '3779900104062', 'นางสาว', 'สุทธินี', 'ตรงชิต', 'a646991171ead3ed21147413e089c57c.jpg', NULL, 'A', 'เจ้าพนักงานศาลยุติธรรมชำนาญการพิเศษ', 'กลุ่มงานคดี', NULL, '0909804895', NULL, NULL, 1, '2017-06-12 08:01:03', '2022-10-11 02:35:39', 3),
(12, '12', '3860200299155', 'นางสาว', 'ดลยา', 'เยาวหลี', '6338e23012b9b65c0836a0e0a978a950.jpg', NULL, 'A', 'เจ้าพนักงานศาลยุติธรรมชำนาญการ', 'กลุ่มงานคดี', '-', '0895213842', '7150349579', 'กรุงไทย/ประจวบฯ', 10, '2017-06-12 08:11:15', '2018-11-10 13:49:31', 7),
(13, '13', '3770700042944', 'นาย', 'เอกชวัทธน์ ', 'สาระเกตุ', 'ca0517232b57be6ab4ded30684190030.jpg', '1978-09-23', 'A', 'เจ้าพนักงานศาลยุติธรรมชำนาญการ', 'กลุ่มงานช่วยพิจารณาคดี', '50 หมู่ 12 ต.หินเหล็กไฟ  อ.หัวหิน จ.ประจวบคีรีขันธ์ 77110', '0867526064', '7150328105', 'กรุงไทย/ประจวบฯ', 10, '2017-06-12 08:11:46', '2022-10-11 02:32:17', 8),
(14, '14', '1739900030097', 'นางสาว', 'อภิญญา', 'ท้วมจุ้ย', '28bb4b90a9d7ae05d821145adbaaba32.jpg', NULL, 'A', 'นักจิตวิทยาปฏิบัติการ', 'กลุ่มงานช่วยพิจารณาคดี', NULL, '0848014396', '9840902989', 'กรุงไทย/โลตัส ประจวบฯ', 10, '2017-05-18 06:18:21', '2018-11-10 13:49:31', 9),
(15, '15', '3860100826536', 'นางสาว', 'วาสินี ', 'กมลกุล', 'c6c3aaa27c6d828083e8756754d3d19e.jpg', NULL, 'A', 'เจ้าพนักงานศาลยุติธรรมปฏิบัติการ', NULL, NULL, '0862699405', NULL, NULL, 1, '2017-06-12 08:12:44', '2022-10-11 02:30:02', 11),
(16, '16', '3809900198848', 'นางสาว', 'โชติกา', 'ดีดอนกลาย ', 'b5e5862aba6b6a22880462586c976c24.jpg', NULL, 'A', 'เจ้าหน้าที่ศาลยุติธรรมชำนาญงาน', 'กลุ่มช่วยอำนวยการ', NULL, '0868862701', '7151521359', 'กรุงไทย/ประจวบฯ', 10, '2017-06-12 08:15:03', '2018-11-10 13:49:31', 13),
(18, '18', '3909900266419', 'นางสาว', 'พิมพ์พร ', 'สาตร์สาคร ', 'da69ae14a5dd358df3e72dff55fdf0e5.jpg', NULL, 'A', 'เจ้าหน้าที่ศาลยุติธรรมชำนาญงาน', 'กลุ่มงานช่วยพิจารณาคดี', NULL, '0926040588', '9856890454', 'กรุงไทย/โลตัส ประจวบฯ', 10, '2017-05-18 06:22:49', '2018-11-10 13:49:31', 16),
(19, '19', '5770100017457', 'นาง', 'วลัยพร ', 'สายทอง ', '658b5b6deb927f9debd0da9ed1cc9e89.jpg', NULL, 'A', 'เจ้าหน้าที่ศาลยุติธรรมชำนาญงาน', 'กลุ่มงานคดี', '183  หมู่บ้านหญ้าแก้ว  ตำบลประจวบฯ  อำเภอเมือง  จังหวัดประจวบคีรีขันธ์', '0949159694', '7151456735', 'กรุงไทย/ประจวบฯ', 10, '2018-01-31 02:37:05', '2018-11-10 13:49:31', 14),
(20, '20', '3779900157913', 'นาง', 'นุจรีย์', 'สุขจินดา', '02832a8e70f87998dd3e6d7c2192fed7.jpg', '2017-10-10', 'B', 'เจ้าหน้าที่ศาลยุติธรรมชำนาญงาน', 'กลุ่มงานคดี', '173  ถนนเลียบทางรถไฟ-คลองวาฬ อำเภอเมือง จังหวัดประจวบคีรีขันธ์', '0910100159', '7150084656', 'กรุงไทย/ประจวบฯ', 10, '2018-01-31 02:38:08', '2018-11-10 13:49:31', 15),
(21, '21', '3770100008346', 'นางสาว', 'นงนุช ', 'ใจเสงี่ยม', 'c1d1619884de01b799700c2c0a648bfd.jpg', NULL, 'A', 'เจ้าหน้าที่ศาลยุติธรรมชำนาญงาน', 'กลุ่มงานช่วยพิจารณาคดี', '-', '0649509388', '7150283748', 'กรุงไทย/ประจวบฯ', 10, '2018-01-31 02:40:10', '2018-11-10 13:49:31', 17),
(22, '22', '3779900035532', 'นาย', 'วิชาญ', 'วุฒิชาติวิจิตรกุล ', 'ea725a66e44012ed15c32d11df4784c6.jpg', NULL, 'A', 'พนักงานขับรถยนต์', 'กลุ่มงานคลัง', NULL, '0844124141', '7151440367', 'กรุงไทย/ประจวบฯ', 10, '2017-06-12 08:14:22', '2018-11-10 13:49:31', 19),
(23, '23', '3-7601-00601-15-2', 'นาย', 'พเยาว์', 'สนพลาย', 'ad4cf49b9a315243f9de153145d6b197.jpg', '1981-02-12', 'A', 'พนักงานคอมพิวเตอร์', 'กลุ่มช่วยอำนวยการ', '41 หมู่ 3 ต.นาพันสาม อ.เมือง จ.เพชรบุรี ', '0623984242', '7150288685', 'กรุงไทย/ประจวบฯ', 10, '2017-06-15 02:56:52', '2018-11-10 13:49:31', 20),
(24, '24', '3770100564028', 'นาย', 'ฐานัน ', 'อยู่หนุน', '2ebf9295e7a9865a3e4ca85e94276b24.jpg', NULL, 'A', 'พนักงานสถานที่', NULL, NULL, '0610096020', '7150136508', 'กรุงไทย/ประจวบฯ', 10, '2017-05-18 06:24:14', '2018-11-10 13:49:31', 21),
(35, '35', '3770200243606', 'นางสาว', 'เนตรนภา ', 'เกิดเปี่ยม', 'f766627d1896adf8cfd7498f320bb38a.jpg', '1980-09-17', 'A', 'เจ้าพนักงานศาลยุติธรรมชำนาญการพิเศษ', 'กลุ่มงานช่วยพิจารณาคดี', '711 ม.7 ต.กุยบุรี จ.ประจวบฯ ', '0812340291', '8600015030', 'กรุงไทย/ศาลอาญา', 10, '2017-11-22 04:48:58', '2018-11-10 13:49:31', 5),
(36, '36', '1869900059884', 'นางสาว', 'วิชชุดา ', 'ศุภวิมุติ', 'b6c14438687cf5236c9a5268baa8dcc9.jpg', '1986-10-30', 'O', 'เจ้าพนักงานการเงินและบัญชีปฏิบัติงาน', 'กลุ่มงานคลัง', '2/1 หมู่ 4 ต.นาทุ่ง อ.เมือง จ.ชุมพร ', '0887687703', NULL, NULL, 1, '2017-06-12 06:30:27', '2022-10-11 02:29:45', 17),
(37, '37', '1-2408-00136-63-9', 'นางสาว', 'อรณี ', 'คะสุระ', '537fe94df5bc30bcb4e57413b0c13bde.jpg', '1994-01-01', 'O', 'นิติกร', NULL, '42 ซ.3 สุขสมบูรณ์ ถ.ดอนเหียง ต.ประจวบคีรีขันธ์ อ.ประจวบคีรีขันธ์ จ.ประจวบคีรีขันธ์ ,ที่อยู่ปัจจุบัน สำนักสงฆ์พุทธสิงขร หมู่ 6 บ้านด่านสิงขร ต.คลองวาฬ อ.เมือง จ.ประจวบคีรีขันธ์ 77000', '09-2534-6272', NULL, NULL, 1, '2017-08-03 04:24:59', '2022-10-11 02:29:30', 22),
(38, '38', '3451100016903', 'นาง', 'แววตา', 'พรมบุตร', 'd2713155a53eefdb996bac3c3c9dbc32.jpg', '1973-09-21', 'O', 'นิติกรชำนาญการ', 'กลุ่มงานปริการประชาชนและประชาสัมพันธ์', '529/228 หมู่ 22 บ้านแก่นทองธานี ซ.12 ตำบลบ้านเป็ด อ.เมือง จ.ขอนแก่น 40000', '0982607761', '3073029990', 'กรุงไทย/ชัยภูมิ', 1, '2018-01-09 03:10:58', '2022-10-11 02:32:23', 6),
(39, '39', '3409900634986', 'นางสาว', 'ฐิตาภา', 'เชื้อทอง', '2a68ce751ceed5ee6e71739e83539ca6.jpg', '1974-06-07', 'A', 'นิติกรชำนาญการ', 'กลุ่มงานไกล่เกลี่ยและประนอมข้อพิพาท', '160/169 หมู่ 2 ถนน ชาตะผดุง ตำบล ในเมือง อำเภอเมือง จ.ขอนแก่น', '08-1380-7313', NULL, NULL, 1, '2017-11-30 02:40:03', '2022-10-11 02:32:20', 7),
(40, '40', '3-7701-00076-61-9', 'นางสาว', 'ดวงกมล', 'กลัดสมบูรณ์', '1112e3df928c996f9c85bed469fe52fb.jpg', '1968-12-07', 'A', 'เจ้าพนักงานศาลยุติธรรมชำนาญการ', NULL, '543/25 หมู่ 2 ถ.เพชรเกษม ต.เกาะหลัก อ.เมือง จ.ประจวบคีรีขันธ์', '08-1946-4369', NULL, NULL, 1, '2017-12-04 04:11:11', '2022-10-11 02:32:38', 2),
(41, '41', '1539900203252', 'นางสาว', 'พรพรรณ', 'น้อยขัน', 'bd0e63e2e7f4ab6a476d3898db20667a.jpg', NULL, NULL, 'นักวิชาการเงินและบัญชีปฏิบัติการ', NULL, NULL, '0890058211', NULL, NULL, 10, '2018-12-19 14:23:29', '2020-03-17 13:55:19', 5),
(42, '42', '3100100254334', 'นางสาว', 'สิริลักษณ์', 'จานุกิจ', '6771491982e40c12ba966f0ff1e78294.jpg', NULL, NULL, 'ผู้อำนวยการฯ', NULL, NULL, '0645859868', NULL, NULL, 1, '2019-01-22 13:35:34', '2022-10-11 02:33:24', NULL),
(43, '43', '3860100349371', 'นางสาว', 'ศตพร', 'ชิตรัตฐา', 'cda89340dc24d058d0e75bd1a7754e3b.jpg', NULL, NULL, 'เจ้าหน้าที่ศาลยุติธรรม', NULL, '61/1 ม.9 ต.หาดพันไกร อ.เมือง จ.ชุมพร', '0658855172', NULL, NULL, 1, '2019-01-24 15:35:00', '2022-10-11 02:33:22', NULL),
(44, '44', '3801000248272', 'นาง', 'อาภาพร', 'จินา', '9d8a8a00f8c8bf6de94532c597401c61.jpg', NULL, NULL, 'เจ้าพนักงานศาลยุติธรรมชำนาญการพิเศษ', 'กลุ่มช่วยอำนวยการ', NULL, '0862787942', NULL, NULL, 1, NULL, '2022-10-11 02:32:46', 1),
(45, '45', '1209700564891', 'นางสาว', 'ธนวรรณ', 'วัดวิไล', '9c49d11ebb94b88df0f533a521240cf1.jpg', NULL, NULL, 'นิติกร', 'กลุ่มงานปริการประชาชนและประชาสัมพันธ์', NULL, '0999137055', NULL, NULL, 1, NULL, '2022-10-11 02:29:32', 22),
(49, '49', '1100700990426', 'นาย', 'ศิรสิทธิ์', 'ศรีเสาวนันท์', '74b2d7e459b5e30f9d02e9f8972a4d80.jpg', NULL, NULL, 'นักจิตวิทยาปฏิบัติการ', 'กลุ่มงานช่วยพิจารณาคดี', '193/12 ม.1 ถ.บางกรวย-ไทรน้อย ต.บางรักพัฒนา อ.บางบัวทอง จ.นนทบุรี 11110', '0909789580', '0510080723', 'กรุงไทย/วรจักร', 10, NULL, NULL, 10),
(1565684760, '1565684760', NULL, 'นาย', 'us', 'er', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-11 02:27:03', NULL),
(1565791672, '1565791672', NULL, 'นาย', 'u', 'u', '04b80cd1b6909e3652b043d3cefded39.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-11 02:27:34', NULL),
(1566445991, '1566445991', NULL, 'นาย', 'admin', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, '2020-03-23 13:47:00', NULL),
(1569480008, '1569480008', '3120101002126', 'นาง', 'สุรารักษ์', 'กิจสโชค', 'e8ca89ac1baa3dd62852e845592e7528.jpg', '1964-06-25', NULL, 'ผู้อำนวยการฯ', NULL, NULL, '0649340361', NULL, NULL, 1, NULL, '2022-10-11 02:33:12', NULL),
(1570435393, '1570435393', '17107700004647', 'นางสาว', 'อุบลกาญจน์', 'ปานแดง', 'cbda14cb18e236aee1fd3648a25a12b2.jpg', '1985-04-27', NULL, 'เจ้าพนักงานศาลยุติธรรมปฏิบัติการ', 'กลุ่มช่วยอำนวยการ', '177 หมู่ 1 ต.ท่าขนุน อ.ทองภาภูมิ จ.กาญจนบุรี 71180', '0922945693', NULL, NULL, 1, NULL, '2022-10-11 02:33:16', NULL),
(1570438297, '1570438297', '1930400036711', 'นางสาว', 'จุฑามาศ ', 'ขาวทอง', '6c73e516f872c8902e2181259bf68222.jpg', '1987-04-27', NULL, 'นักวิชาการเงินและบัญชีปฏิบัติการ', 'กลุ่มงานคลัง', '365 ต.ป่าบอน อ.ป่าบอน จ.พัทลุง 93170', '0939042198', '7150502695', 'กรุงไทย/ประจวบฯ', 1, NULL, '2022-10-11 02:29:59', 12),
(1572237346, '1572237346', NULL, 'นาย', 'อนุสรณ์', 'นันทกิจโกศล', 'a5f22c7436a4a45563ba8b4be9e81f61.jpg', NULL, NULL, 'พนักงานขับรถยนต์(จ้างเหมา)', 'กลุ่มงานปริการประชาชนและประชาสัมพันธ์', NULL, '0830689035', NULL, NULL, 1, NULL, '2022-10-11 02:29:38', 24),
(1577326133, '1577326133', NULL, 'นาง', 'รัชดาวดี ', 'กาญจนขจิต', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-11 02:33:20', NULL),
(1577326188, '1577326188', NULL, 'นาย', 'เมธี', 'วรรณวีระ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-11 02:33:03', NULL),
(1577326247, '1577326247', '1-8013-00015-86-2', 'นาย', 'จิรวัฒน์', 'จันทร์สงแก้ว', 'c6b54ae263f55191cdacf97279c02515.jpg', NULL, NULL, NULL, NULL, NULL, '0868862701', NULL, NULL, 1, NULL, '2022-10-11 02:32:52', NULL),
(1584069733, '1584069733', NULL, 'นาย', 'ธรัชต์', 'จีระตระกูล', '1c415e83fc2e4524a86ae4e797b79b9c.jpg', '1958-01-31', NULL, 'ผู้พิพากษา', NULL, NULL, '0982800286', NULL, NULL, 1, NULL, '2022-10-11 02:33:05', NULL),
(1584069861, '1584069861', '3-1020-01864-20-9', 'นางสาว', 'กชมน', 'ทิพยรัตน์', 'fcdac52e4f7d488d232dfbd3b48750bf.jpg', NULL, NULL, 'ผู้พิพากษา', NULL, NULL, '0922596920', NULL, NULL, 1, NULL, '2022-10-11 02:33:43', NULL),
(1584946173, '1584946173', '3770100342688', 'นางสาว', 'ไพเราะ', 'สุภาภา', 'dec0b5248bd842bd3824074aebf1b474.jpg', NULL, NULL, 'เจ้าพนักงานศาลยุติธรรมชำนาญการพิเศษ', 'กลุ่มช่วยอำนวยการ', NULL, '0953651866', NULL, NULL, 1, NULL, '2022-10-11 02:32:42', NULL),
(1585798864, '1585798864', NULL, 'นางสาว', 'วรรณพร', 'โพธิ์อำไพ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2022-10-11 02:29:22', 25),
(1600744872, '1600744872', '3700100097721', 'นาย', 'ชาญเดช', 'งามทรัพย์', '2f062e39e29ba5c210aa83c5a06a493e.jpg', NULL, NULL, 'นิติกรชำนาญการพิเศษ', 'กลุ่มงานไกล่เกลี่ยและประนอมข้อพิพาท', NULL, '0841639079', '6797562708', 'กรุงไทย/เทสโก้โลตัสประจวบฯ', 10, NULL, NULL, 4),
(1600744923, '1600744923', '3770600519757', 'นางสาว', 'บุญญาพร', 'บุญแท้', '382925619a11916ec50fec19efeb4f4f.jpg', NULL, NULL, 'เจ้าพนักงานศาลยุติธรรมปฏิบัติการ', 'กลุ่มช่วยอำนวยการ', NULL, '0812340245', '7150130127', 'กรุงไทย/ประจวบฯ', 10, NULL, NULL, 11),
(1615861935, '1615861935', '5-1015-99033-79-8', 'นางสาว', 'วราภรณ์', 'คริศณุ', NULL, NULL, NULL, 'ผู้พิพากษา', NULL, NULL, '0922593946', '0071270523', 'กรุงไทย/อนุเสาวรีย์ชัยสมรภูมิ', 10, NULL, NULL, 30),
(1633006816, '1633006816', '3769900033131', 'นาง', 'นัยนา', 'นาคชู', '106e53906f9150a53d2fe0eb734ce950.jpg', NULL, NULL, 'เจ้าพนักงานศาลยุติธรรมชำนาญการพิเศษ', 'กลุ่มช่วยอำนวยการ', NULL, '0614354419', '7150055125', 'กรุงไทย/ประจวบ', 1, NULL, '2022-10-11 02:32:31', 3),
(1633007273, '1633007273', '3101203014515', 'นางสาว', 'วนิดา', 'พิพัฒน์นภาพร', NULL, NULL, NULL, 'ผู้อำนวยการฯ', NULL, NULL, '0953643116', '-', '-', 10, NULL, NULL, 1),
(1633007481, '1633007481', '3940400164104', 'นาง', 'วัลภา', 'สุภาภา', '926cf6b74087a0265366e5415fbaf256.jpg', NULL, NULL, 'เจ้าพนักงานศาลยุติธรรมชำนาญการพิเศษ', 'กลุ่มงานคดี', NULL, '095-093-8222', '7151528973', 'กรุงไทย/ประจวบ', 1, NULL, '2022-10-11 02:32:34', 2),
(1649532480, '1649532480', NULL, 'นาย', 'อุเทน', 'บัวอ่อน', NULL, NULL, NULL, 'ผู้พิพากษา', NULL, NULL, '0655170460', '0540173533', 'กรุงไทย/บางขุนเทียน', 10, NULL, NULL, 30),
(1649532712, '1649532712', NULL, 'นาย', 'ณัฐวุฒิ', 'ทุติยาภรณ์', NULL, NULL, NULL, 'ผู้พิพากษา', NULL, NULL, '0926585145', '9839809733', 'กรุงไทย/เพลินนารี', 10, NULL, NULL, 33),
(1649645620, '1649645620', '1102002652861', 'นางสาว', 'กาญจนา', 'กิจสินธุ', '27f40f607bee60dc4315b3f904ececbd.jpg', NULL, NULL, 'เจ้าพนักงานการเงินและบัญชีปฏิบัติงาน', 'กลุ่มงานคลัง', NULL, '082-2529782', '4800357500', 'กรุงไทย/รังสิต-นครนายก คลอง 4', 10, NULL, NULL, 18),
(1649657669, '1649657669', '1100801243731', 'นาย', 'ไกรสิทธ์', 'เกิดพงษ์', '0dcd6806d84c1c2eb8b2858798ace426.jpg', NULL, NULL, 'เจ้าหน้าที่ศาลยุติธรรม', 'กลุ่มงานปริการประชาชนและประชาสัมพันธ์', NULL, '0926507602', NULL, NULL, 1, NULL, '2022-10-11 02:29:36', 23),
(1663916960, '1663916960', '3779900117075', 'นาง', 'สายฝน', 'กุญชร ณ อยุธยา', '51d20f49994c58827380bdc093dadddf.jpg', NULL, NULL, 'นิติกรชำนาญการพิเศษ', 'กลุ่มงานปริการประชาชนและประชาสัมพันธ์', NULL, '843609069', NULL, NULL, 10, NULL, NULL, NULL),
(1663917084, '1663917084', '3779900144889', 'นาง', 'อุไร', 'เทพบัณฑิต', '749cae5786ccf4cdc13ebe49b06fb2a8.jpg', NULL, NULL, 'เจ้าพนักงานศาลยุติธรรมชำนาญการพิเศษ', 'กลุ่มช่วยอำนวยการ', NULL, '0800116464', NULL, NULL, 10, NULL, NULL, NULL),
(1663917187, '1663917187', '3770200119085', 'นางสาว', 'พจนา', 'เทพพิชิตสมุทร', '5b30ae2631206df868b00038dfd4bbc1.jpg', '1980-07-18', NULL, 'นักวิชาการเงินและบัญชีปฏิบัติการ', NULL, '15 ม.2 ต.เขาแดง อ.กุยบุรี จ.ประจวบคีรีขันธ์ 77150', '0952726734', NULL, NULL, 10, NULL, NULL, 12),
(1665475541, '1665475541', NULL, 'นาย', 'admin2', 'sadmin', NULL, NULL, NULL, 'นิติกร', 'กลุ่มช่วยอำนวยการ', NULL, '', '', '', 10, '2022-10-11 03:05:41', '2022-10-11 03:05:41', NULL),
(1665475627, '1665475627', NULL, 'นาย', 'อัครวัฒน์', 'เทพบัณฑิต', NULL, NULL, NULL, 'พนักงานคอมพิวเตอร์', 'กลุ่มช่วยอำนวยการ', NULL, '0891056464', '', '', 10, '2022-10-11 03:07:07', '2022-10-11 03:07:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `running`
--

CREATE TABLE `running` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `r` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `running`
--

INSERT INTO `running` (`id`, `name`, `y`, `r`) VALUES
(1, 'bila', 2565, 65004);

-- --------------------------------------------------------

--
-- Table structure for table `sign_boss_name`
--

CREATE TABLE `sign_boss_name` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dep1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dep2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dep3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 1,
  `date_create` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sign_boss_name`
--

INSERT INTO `sign_boss_name` (`id`, `name`, `dep1`, `dep2`, `dep3`, `status`, `date_create`) VALUES
(11, 'นางสาววราภรณ์  คริศณุ', 'ผู้พิพากษาหัวหน้าศาลเยาวชนและครอบครัว', 'จังหวัดประจวบคีรีขันธ์', '', 1, '2021-06-09 13:47:45'),
(14, 'นางสาววนิดา พิพัฒน์นภาพร', 'ผู้อำนวยการสำนักงานประจำศาลเยาวชนและครอบครัว', 'ประจวบคีรีขันธ์', '', 1, '2021-10-03 21:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `somtop`
--

CREATE TABLE `somtop` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `st` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `somtop_v`
--

CREATE TABLE `somtop_v` (
  `id` int(11) NOT NULL,
  `ven_date` date NOT NULL,
  `somtop_id` int(11) NOT NULL,
  `comment` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(9, 'boom', 'x44Q-Hm3bXo2WxHl2qMBe1NDmbPU6Fn3', '$2y$13$D/KmYOo0wE/TUTugOU3/R.ImmdU2mJWAx9tgYgfpli4/u4LUFENku', '1', 'sutthinee2523@hotmail.com', 1, 1, NULL, '2022-10-11 02:35:39'),
(12, '4565', '48JMqpoYsGXe0Fv3_blAwrROX1pQVnlG', '$2y$13$3IobWJTpkUfbYiyBsmr5Wut8A/x8kc3RM5m1ZMsrrsMWyYQGLkryW', '2', 'donlaya.y@coj.go.th', 2, 10, NULL, '2000-01-01 00:00:00'),
(13, '5971', 'RZI3Bo5mKGJNrnESu87ljwSNHDWMnuwJ', '$2y$13$NmWazAcGEYx5LLclTVWLmO1sDKEBEarMCdojdICRzJNYSCPvrnLzy', '3', 'roopoopoop@gmail.com', 1, 10, NULL, '2022-10-11 02:32:17'),
(14, 'b48080626', 'x2JTP3iWHBd4_Xsh2Fg1KYA22_IL5IVp', '$2y$13$lKU2SWznigLYyxVAFV9pguJwcXbgUux1ZFDOb0VnbU.v.w5uzs.te', '4', 't.apinya@hotmail.com', 1, 10, NULL, '2000-01-01 00:00:00'),
(15, '10015', 'm5LDWGeBUNa9QzUtLNmNim6wK_6nr3Pt', '$2y$13$6tR4figfNJPBanqz/jQ7..HUvZEgL022ulHW6gtSKwWhqPACddGzC', '5', 'wasiee2522.k@gmail.com', 1, 1, NULL, '2022-10-11 02:30:02'),
(16, 'id1817', 'LG1b7thpFM8AQGAnP6XSQHx24tG5JAts', '$2y$13$Ne/g.lNnrMNSpkD/19Dx9ugTy.Sq/uoBmy/lacUQcHO2PcVL8e0Ya', '6', 'chotikar.d@gmail.com', 1, 10, NULL, '2000-01-01 00:00:00'),
(18, '10020', '1WFkt1tzmcUFFOi8yVMarD0vKsRJw6kE', '$2y$13$A1X/Qtn35MyQEbgq5pJyiucgST.lhdIPW.x/hYddry9t9KJkZRzgi', '7', 'Pimporn.toom@gmail.com', 1, 10, NULL, '2000-01-01 00:00:00'),
(19, 'id08', '2jIzMJZ6fv1ACe18KT9jYgDhqVeB-fkD', '$2y$13$c3P0telPZE4gqjm7a3cNeO7cf08Ne.w6Tc.Pu.M4PRtFpw5yaRAyi', '8', 'fhon66@hotmail.com', 1, 10, NULL, '2000-01-01 00:00:00'),
(20, 'kung7', 'c6EbBdKccIHEiDvbkEJnRgoXt8GB2qPW', '$2y$13$k.BQPsSh1RJ9J8mx8e8qeulz9SQ1H4gg.zR3egtn2De.CbhRNBDmK', '9', 'prosper9929@gmail.com', 1, 10, NULL, '2000-01-01 00:00:00'),
(21, '1122', 'P_3GxGt7QwBgF1KKjW6YNr2b_LBPedTg', '$2y$13$7WaaOqH6RSVIQjEw5FJnGOPf0fS5uV0UZl8cQbyqLj2wBEm2d2ycq', '10', 'name022552@gmail.com', 1, 10, NULL, '2000-01-01 00:00:00'),
(22, '500', 'qApleICEH1NIIhgY4a5xcSYsyhSWDYkK', '$2y$13$n/lL83anhSs86cbl4ziRoeGCBFcZHqzVtdfDFpZEaiEdBolS3OVba', '11', 'eagleray38@gmail.com', 1, 10, NULL, '2000-01-01 00:00:00'),
(23, '9929', 'eo7pTV5Iv04eOMqJwUi__vceB8Mbt1NJ', '$2y$13$zR0VJEgM7O/4n0xt5kDZFuvD7bltXYoMlkyQz24oWWdU/JcGL6M6W', '12', 'phayao.s@coj.go.th', 9, 10, NULL, '2000-01-01 00:00:00'),
(24, 'id2323', 'vaTRyUB1QZ7YUssfnJj-3Xfg9R1Am9lC', '$2y$13$7qXxumHLHZKF39XqNO/XtOJwBjfW8OSICTwIFHx6iqKLiBAin6KB2', '13', '2323@pkkjc.org', 1, 10, NULL, '2000-01-01 00:00:00'),
(35, 'nate', 'VIhUFhMuHuT259IEJboigwLn63Br3CKr', '$2y$13$Yo.5GK/5yCBlejbVvXdA2euJ4UsmlUYR9oBww00dXdNguRixrbYOe', '19', 'natenapa171980@gmail.com', 1, 10, NULL, '2000-01-01 00:00:00'),
(36, 'kaew', 'm9YhFxT6xS8giorwD8iORKPNlE07zf_b', '$2y$13$nRs6w6ltK2lQt9NLGMlXru7D5pR/rWc5ZhAhuCU.TvbLa4uaxsWjO', '20', 'korkaew2529@gmail.com', 9, 1, NULL, '2022-10-11 02:29:45'),
(37, 'jane', 'vHORjcDJr84WD60P9Lp8C-VoM0fup8Vc', '$2y$13$JSv46P0pTVS11g0y3pnSxufhtsWqz7pYBI0I3zBkFebCont1Mn4Oy', '121', '123orranee@gmail.com', 1, 1, NULL, '2022-10-11 02:29:30'),
(38, 'waww', 'qCpOFTuPFdbF1IT8F7Fzf3YUcyAGDu46', '$2y$13$PQExiZQOv.vKLIIyqrXWtO0LWz8txXr2hmgCsYvnAYWLufkLbzxTm', '22', 'weawtaphum@gmail.com', 1, 1, NULL, '2022-10-11 02:32:23'),
(39, 'ouii', 'We6N4xsyoTCtoivxejDir_Bjyz49xYhq', '$2y$13$ehHT/mqtLFcR4sdEnjPDUuXtmDKTpsdYmgR0Zxz8sM/Se4cetsHsG', '23', 'oui.251761@gmail.com', 1, 1, NULL, '2022-10-11 02:32:20'),
(40, 'tuk', 'iYpLCflNPBT6Dxsqf8pfw4ZZO4CuzoIM', '$2y$13$2QIn5PtVQH8DmLgP0yVUNOsH8tHVj1RzTpwoj82sqCV510Xjo14Gu', '24', 'tuk3057@gmail.com', 1, 1, NULL, '2022-10-11 02:32:38'),
(41, 'ponphan1831', NULL, '$2y$13$G.o2Y9I9V3DPed4AIPp/Nu0KpzqUGcTw8GX27obzWTAZY9Ir.x4Ly', '25', 'ponphan68@gmail.com', 9, 10, NULL, '2000-01-01 00:00:00'),
(42, '8', NULL, '$2y$13$13VjD4L4PSZGQqnA/Hen4u7AVuGSKbspPV0MCui5Fh.lJKnjW6pa.', '26', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:33:24'),
(43, 'sataporn', NULL, '$2y$13$2Q5DWBTz4/.8Rx48i3aDkOaxUN1TXdqlJCwcK3Ry1PBMaIaxFxNsi', '27', 'mon_pricemoc@hotmail.com', 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:33:22'),
(44, 'arpaporn', NULL, '$2y$13$WrTPTnlABDkL.C8AeIicb.X1NeOZzV6hI9XgnR3ojI6AUmbqOpn52', '28', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:32:46'),
(45, 'nayy', NULL, '$2y$13$rYSRNejN1F4IHn7rGDcXQu2IR/ZKwBNMuHbNerpGVlAdFKEPb7qqG', '29', NULL, 2, 1, '2000-01-01 00:00:00', '2022-10-11 02:29:32'),
(49, 'prizekumu', NULL, '$2y$13$LDy6EI6B0M8SAIdF/5i.ceWqVrmiLJl9mJ1T7g5rna6b15.dpURP6', '-sNX9H_YxX7LJQnahYSjVEa-lkzW7mCm_1561367130', 'animalprize@gmail.com', 1, 10, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(1565684760, 'u1', 'dTybVW9bkfZMFwpa2tdyTsl3zuwjWtr0', '$2y$13$9kGhudNJy/5QPrkbqTtK/upNcrVwtrEcNYHryFL.PLN8TUsgMHFI2', '3Gwh4XzvWLzAW06qeapfVLAF5BnV3uCJ_1565684761', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:27:03'),
(1565791672, 'u', '_XAT-9PQwocCpHOd0Mvqse1tMCy5hPw8', '$2y$13$iZk0KxE4a4s8GRlrSjiaXefszrJ/iixVm0fPSqxMO/PJDP87Px7k.', '_0LgQ6zru0lHDxv7v4b0Nv8TAn4DY7l__1565791672', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:27:34'),
(1566445991, 'admin', 'qdYs15wrU3R7ghAuAuXNMc-fFxlZ8QyT', '$2y$13$X8fjfC.cwDL7t.xkgjI24uLCA5oUz336AVcRaXx.as9KpeFiqQfLe', 'VSorsXwWyDjK0WwK76PNqcdsextFlwai_1566445992', NULL, 2, 10, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(1569480008, 'koi', 'SaeKXASy-OEtg3IjBnnCXMwjD8VtZrTt', '$2y$13$I3Y5zQ7v7/xvlvoQ8rdLVO0oG130ZgQc.mvTVJN.R9hxcjJHoLWba', 'LCCUQiONJnW_PhXZBn1dz-8YyByEXMSy_1569480009', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:33:12'),
(1570435393, '888899', 'z8c0teaFr0eDLQSFqe5BLjCUW9WSKuEE', '$2y$13$yhcc7YEs5XrY28EpZdxw6esPB.UW4hHHD7g2tqiZbTRquJbzfoB9a', 'hnq7XB94iHHCqgapybx14pqOd19J_czi_1570435394', 'sanookerjang2528@gmail.com', 2, 1, '2000-01-01 00:00:00', '2022-10-11 02:33:16'),
(1570438297, 'jutamas', '7hAtLr2FYrQuo9aOeZPORa_neWcA1DmA', '$2y$13$wMdGT4Lf9g7QI0rOeRqGRe1fjCftWCFfPP8yNL2L9wom5J5IhEt6u', 'Kk2OgiECdvPa4pd58Raod5KPylu8gy7X_1570438297', 'noobeau97@gmail.com', 9, 1, '2000-01-01 00:00:00', '2022-10-11 02:29:59'),
(1572237346, 'sorn27033', 'Mj9Pfhl1sRsYBNEYG0rhN541ci9eMRxD', '$2y$13$BPSLGAuYAdMIcWcPXMxCMut97oPWG/q/3IDF7jRWsJW0yTIedotIy', 'HXie-Yz2MoJoJPKDV5eIul1HKg4lDnqr_1572237346', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:29:38'),
(1577326133, '111', '70GEWBWGaMBVydrwljRdhRlUYs_X7Pv0', '$2y$13$WCW6Lmoo55esGSIosJorY.anmDJ766l.DILwQekOhJQPOLf0Rz76O', 'hspEN3xdCkU5Xch4fxx9wSizhHCJm2qZ_1577326134', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:33:20'),
(1577326188, '222', '6TwunyGKM0kcDoBYYdpd1fpz1x-vorTv', '$2y$13$GJ1TK5dFgbbzi6tz0Ua6nOmMzyYFzVmJvnGaWZ0oqDx.qv07rjnDS', 'ujHHXNst9gvjCYxyG-ljJ3a9JDPtfcok_1577326188', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:33:03'),
(1577326247, '333', 'BkQAEOBbx6U68Y7mC4btaNW6TLyhfhef', '$2y$13$OXSiIUgG/fWFVCKNRE1ulOTxgcqUV.6jv5LVjL27tCi27j0YcLmiO', 'VO9F-kNJ-OMy1Qjpf4nzo3qyPtexsGgO_1577326247', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:32:52'),
(1584069733, 'tarat', 'Wh_66tnwwfNLXTb47f4WJDwCXSnrhNuG', '$2y$13$fuqnH7v7.KPyr4lVEdpzlefpz0StYoq8mV5BSyua0efw5L683bhau', 'b0gCk3lh2MXjea4VRTfcJ7btSa_J12-g_1584069734', 'tarat.coj@gmail.com', 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:33:05'),
(1584069861, 'b02', 'augpJM3j9CN-QtvT4nAVzXbYzPN1sqF7', '$2y$13$BoPebpnxOOnaEX//b6.b7eCa453UqmBEJrN5SZ4wLKiR0TcvYEcs2', 'DFPY1efMq29JXooruOYwvww7OmpCjShJ_1584069861', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:33:43'),
(1584946173, 'pai2514ror', 'RaBOwzpzNvigZKH4HisO7AxvUonFK1A3', '$2y$13$VvBEjbH7EIvUhyXtLziMCe/sC03sm/f6XoRNfB/RmCyCaV4CbbySW', '7e8VchVxMFVHOf_0ZUQrckIr-Oesd7iD_1584946173', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:32:42'),
(1585798864, '33', 'Fm7JBw_VHZxAVoZlh4rT_NUbX7JOua9-', '$2y$13$yDvp4Ri/z9SLuR7DCFvTl.juXACk5tGInmDD6XuZfK2GtfZuBPxa2', '9gDvm0twWcFfGLF9_nYcbx_gSvkh3XMu_1585798864', NULL, 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:29:22'),
(1600744872, '1112', NULL, '$2y$13$rEyJggLhkrhhRH5dnHE/puyEmApBKIRvEw7wOAHdnL2JW6plNCUB2', NULL, 'Chandech82188@gmail.com', 1, 10, NULL, '2000-01-01 00:00:00'),
(1600744923, '88', 'EJQlrdtfJ52MldDKn83hYb3TEr-nz1pz', '$2y$13$KpnzhHZotdKtGOZVzoKjhOOcYmWwG4o.m8J2bl23GOrwWoiQ1fwT2', 'gOIqtkambCsViOxK8UJ_7x8kPP2lDrpk_1649532910', 'boonyapornboontae@gmail.com', 9, 10, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(1615861935, 'j6401', NULL, '$2y$13$NAHbwGc.HRGjx8mN5duzeuGx5gVHmkNxWCVOdGH0rlL6Z6XhlSzGa', NULL, NULL, 1, 10, NULL, '2000-01-01 00:00:00'),
(1633006816, 'naiyana', 'JmgTksfEENRV7GYl6kGQi0eZp-pmXh2k', '$2y$13$zeDsLRtbM1zHTCFtfETF5.jZEg8h3QlbKl1hpZ1May6ss/F1QI1cC', 'YGJCbOdAFA0mTYUDao7v7F3h38Cu8SDv_1649532840', 'naiyana182518@icloud.com', 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:32:31'),
(1633007273, '201007', 'mbzujZnElNhyFalvxLYFfO42F79fYYCD', '$2y$13$UH6QLuGAxhZkJ5NnspgJOOZ4WMb7JOeN9uJA45GUjh3sbu6ObkuQu', 'bjBFVkox_BlJvW0NGeMtf2punbSDWZXS_1650426903', NULL, 1, 10, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(1633007481, '3474', NULL, '$2y$13$faBL/nApuyPk7QvTq38.nO/yl6LOSs8X1oY0AkM8udDAny2lxTywu', NULL, 'wallapa.supapa@gmail.com', 1, 1, NULL, '2022-10-11 02:32:34'),
(1649532480, 'j6502', 'dccx2Ig000fsG4ZnMvg7xmbV_qnl2-jE', '$2y$13$Q0fqb1.Yw1cqLIWx4fyw2Oi8sCkFgRF/0nE2RuNNSuOgSLTjf3yvG', 'BMIoXaF25mWF0GVpOU9wzPriRu4jp66A_1649532480', NULL, 1, 10, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(1649532712, 'j6403', 'KQJ801hcLrnHi7c8sszRtne4Mk7gIkZB', '$2y$13$1IC42pIlWhszfc/G0WBL5e3jPSwiKZcIgzFCG29ORFsAZ87ujGbuG', 'bUxtagziyGQpX3hPuGeIy9UJw1BkhqUf_1649532713', NULL, 1, 10, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(1649645620, 'kanchana28', 'NGFMSc4AXTJC9tJD3L9gaBWEhbDTRhRU', '$2y$13$Gi3wBvsJiKKnCA5PBJrBQuNtIHyBv4D201tzIez971WiJAaHVs.2C', '_XjpruvYCFafiIjpwdAnWwOCGbMnb0t0_1649645621', 'Kanchana.kst28@gmail.com', 1, 10, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(1649657669, 'pai', 'mxaSbs6ZdeeQh2xoioGV5rAU3Phn8TUw', '$2y$13$z36bEe.Ymk03jT28ze217etg5PY15mI9utTLLyawcGviEstxovYRG', 'NttCfoGdY-kcqG8LFdFrWl0dmWh0-4_7_1649657670', 'silov5577@gmail.com', 1, 1, '2000-01-01 00:00:00', '2022-10-11 02:29:36'),
(1663916960, '1234', 'dM5DSd8ETG2kSXOg-zzKx7tbs0li-Dlo', '$2y$13$n5DAi.v1qaiH760b8FZBJuOZpACgVjSOWkmurgVgbn.vE8L8JCWkK', 'O1CXhuTsEyY6CKarxy-8PhDDHPGzWgfM_1663916961', NULL, 1, 10, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(1663917084, '6464', 'jOGa_B4UCaNVUSZtZVEugH2Xf9wtnS6C', '$2y$13$dTz99wqWlf/oev4JywoAUeauyFJDsz6bz/O9g1dqitDgrJovDIu/a', 'uS8XfhLPTObJcxjs0B0W9QtE5HQP_PFh_1663917084', NULL, 1, 10, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(1663917187, '731', 'WHNTYsGxJCUjdsioR8_mB8m66tNScbzn', '$2y$13$7Owqw06V6MZozVQESDuxCO3Tf/JD3dQBYNrMaWbdl0FMhYC9dyccW', 'J9mP3-nXBeiYpnEBPmnn_HWs3gqMSqta_1663917188', 'photchana11@gmail.com', 1, 10, '2000-01-01 00:00:00', '2000-01-01 00:00:00'),
(1665475541, 'admin2', NULL, '$2y$10$ZQObxbk51QjtGtPtwSLqG.CWL6v.sdrtMb4hUA39kVGjJmPkvMhme', NULL, NULL, 1, 10, '2022-10-11 03:05:41', '2022-10-11 03:05:41'),
(1665475627, 'pkkc', NULL, '$2y$10$sebHCd4tx4D3f0sZLFsQ7uGsLSGEDVKGOYrpwasuibPqM2uY55/WC', NULL, NULL, 1, 10, '2022-10-11 03:07:07', '2022-10-11 03:07:07');

-- --------------------------------------------------------

--
-- Table structure for table `ven`
--

CREATE TABLE `ven` (
  `id` int(11) NOT NULL,
  `user_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `u_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_com_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ven`
--

INSERT INTO `ven` (`id`, `user_id`, `u_name`, `ven_com_id`, `ven_date`, `ven_time`, `ven_month`, `DN`, `ven_com_name`, `ven_com_num_all`, `ven_name`, `u_role`, `ref1`, `ref2`, `price`, `file`, `comment`, `gcal_id`, `status`, `create_at`) VALUES
(1665476579, '1649532712', 'นายณัฐวุฒิ ทุติยาภรณ์', '[1665420515]', '2022-12-01', '08:30:11', '2022-12', 'กลางวัน', 'แขวง ธค', '234/65', 'เวรแขวง', 'ผู้พิพากษา', 'sZTir3GNQOUB6uPSmlHY', '3oci9vHhN6ug1qUwGExl', '3500.00', NULL, NULL, NULL, 2, '2022-10-11 03:22:59'),
(1665476582, '1649532480', 'นายอุเทน บัวอ่อน', '[1665420515]', '2022-12-02', '08:30:11', '2022-12', 'กลางวัน', 'แขวง ธค', '234/65', 'เวรแขวง', 'ผู้พิพากษา', 'fX2nhoT6jbyci7Aq1zRO', '3oci9vHhN6ug1qUwGExl', '3500.00', NULL, NULL, NULL, 2, '2022-10-11 03:23:02'),
(1665476585, '1615861935', 'นางสาววราภรณ์ คริศณุ', '[1665420515]', '2022-12-03', '08:30:11', '2022-12', 'กลางวัน', 'แขวง ธค', '234/65', 'เวรแขวง', 'ผู้พิพากษา', 'nyBOqCTFP07tuYKsxDV5', '3oci9vHhN6ug1qUwGExl', '3500.00', NULL, NULL, NULL, 2, '2022-10-11 03:23:05'),
(1665476591, '1615861935', 'นางสาววราภรณ์ คริศณุ', '[1665420515]', '2022-12-05', '08:30:11', '2022-12', 'กลางวัน', 'แขวง ธค', '234/65', 'เวรแขวง', 'ผู้พิพากษา', 'DoPmEsThiSu9Z4Y5q06B', '3oci9vHhN6ug1qUwGExl', '3500.00', NULL, NULL, NULL, 2, '2022-10-11 03:23:11'),
(1665476593, '1615861935', 'นางสาววราภรณ์ คริศณุ', '[1665420515]', '2022-12-06', '08:30:11', '2022-12', 'กลางวัน', 'แขวง ธค', '234/65', 'เวรแขวง', 'ผู้พิพากษา', 'v5PnQOUr4x0EMNw9tdup', '3oci9vHhN6ug1qUwGExl', '3500.00', NULL, NULL, NULL, 2, '2022-10-11 03:23:13'),
(1665476595, '1615861935', 'นางสาววราภรณ์ คริศณุ', '[1665420515]', '2022-12-07', '08:30:11', '2022-12', 'กลางวัน', 'แขวง ธค', '234/65', 'เวรแขวง', 'ผู้พิพากษา', 'Gmvo4bxV35BM6I9yaURr', '3oci9vHhN6ug1qUwGExl', '3500.00', NULL, NULL, NULL, 2, '2022-10-11 03:23:15'),
(1665476597, '1615861935', 'นางสาววราภรณ์ คริศณุ', '[1665420515]', '2022-12-08', '08:30:11', '2022-12', 'กลางวัน', 'แขวง ธค', '234/65', 'เวรแขวง', 'ผู้พิพากษา', 'pdYF96W5tyfogheSAJ3s', '3oci9vHhN6ug1qUwGExl', '3500.00', NULL, NULL, NULL, 2, '2022-10-11 03:23:17'),
(1665476600, '1615861935', 'นางสาววราภรณ์ คริศณุ', '[1665420515]', '2022-12-09', '08:30:11', '2022-12', 'กลางวัน', 'แขวง ธค', '234/65', 'เวรแขวง', 'ผู้พิพากษา', '0hErS7gbXd9spxq8AwfG', '3oci9vHhN6ug1qUwGExl', '3500.00', NULL, NULL, NULL, 2, '2022-10-11 03:23:20'),
(1665476662, '1615861935', 'นางสาววราภรณ์ คริศณุ', '[1665360756]', '2022-11-05', '08:30:11', '2022-11', 'กลางวัน', 'แขวง', '245/2565', 'เวรแขวง', 'ผู้พิพากษา', 'oyPJ7T0vHA9q6SNwkesX', 'HaFpLB0fOu8cxIPUMnAR', '3500.00', NULL, NULL, NULL, 2, '2022-10-11 03:24:22'),
(1665476709, '1649532480', 'นายอุเทน บัวอ่อน', '[1665360756]', '2022-11-05', '08:30:11', '2022-11', 'กลางวัน', 'แขวง', '245/2565', 'เวรแขวง', 'ผู้พิพากษา', 'QLpCEGXZHnFcWIaOhDg2', 'HaFpLB0fOu8cxIPUMnAR', '3500.00', NULL, NULL, NULL, 2, '2022-10-11 03:25:09'),
(1665476717, '1600744872', 'นายชาญเดช งามทรัพย์', '[1665360756]', '2022-11-05', '08:30:13', '2022-11', 'กลางวัน', 'แขวง', '245/2565', 'เวรแขวง', 'หน.กลุ่มงาน', 'dkQG1FsXm9SJejN8M4cp', 'HaFpLB0fOu8cxIPUMnAR', '1500.00', NULL, NULL, NULL, 2, '2022-10-11 03:25:17'),
(1665476724, '1649532712', 'นายณัฐวุฒิ ทุติยาภรณ์', '[1665360756]', '2022-11-05', '08:30:14', '2022-11', 'กลางวัน', 'แขวง', '245/2565', 'เวรแขวง', 'ปชส.', 'wH6O93rNV8ZUYAjoeXmD', 'HaFpLB0fOu8cxIPUMnAR', '1500.00', NULL, NULL, NULL, 2, '2022-10-11 03:25:24'),
(1665476729, '1633007273', 'นางสาววนิดา พิพัฒน์นภาพร', '[1665360756]', '2022-11-05', '08:30:15', '2022-11', 'กลางวัน', 'แขวง', '245/2565', 'เวรแขวง', 'การเงิน ', 'z6cYGB0hyKRUboLesHWJ', 'HaFpLB0fOu8cxIPUMnAR', '1500.00', NULL, NULL, NULL, 2, '2022-10-11 03:25:29'),
(1665476961, '16', 'นางสาวโชติกา ดีดอนกลาย ', '[1665360756]', '2022-11-05', '08:30:16', '2022-11', 'กลางวัน', 'แขวง', '245/2565', 'เวรแขวง', 'หมาย', '0Slsak9zoFvMQCePuIcr', 'HaFpLB0fOu8cxIPUMnAR', '1500.00', NULL, NULL, NULL, 2, '2022-10-11 03:29:21'),
(1665476967, '35', 'นางสาวเนตรนภา  เกิดเปี่ยม', '[1665360756]', '2022-11-05', '08:30:17', '2022-11', 'กลางวัน', 'แขวง', '245/2565', 'เวรแขวง', 'รับฟ้อง/บัลลังก์', 'HZlzDA0vcEuk63IxysNM', 'HaFpLB0fOu8cxIPUMnAR', '1500.00', NULL, NULL, NULL, 2, '2022-10-11 03:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `ven_change`
--

CREATE TABLE `ven_change` (
  `id` int(11) NOT NULL,
  `ven_month` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ven_com_id` int(11) DEFAULT NULL,
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

--
-- Dumping data for table `ven_change`
--

INSERT INTO `ven_change` (`id`, `ven_month`, `ven_com_id`, `ven_id1`, `ven_id2`, `ven_id1_old`, `ven_id2_old`, `user_id1`, `user_id2`, `s_po`, `s_bb`, `file`, `status`, `ref1`, `ref2`, `comment`, `create_at`) VALUES
(1664464192, '2022-10', 1663173998, 1664464192, NULL, NULL, 1664464119, 1566445991, 1663280470, NULL, NULL, '8270069f8b1eaafc8837b103b70ec694.jpg', '5', '1WT-U7A7P_J0nRGK6Vuh_6uSd9nL09ls', NULL, '', '2022-09-29 22:09:52'),
(1664464391, '2022-10', 1663173998, 1664464391, 1664464392, 1664464141, 1664464357, 1566445991, 1663280470, NULL, NULL, '353902e8e8e1dfd40acebc2f8b541d0a.pdf', '5', 'uXmSkuYNvB0erw20OCojTMLJXZJRJ-h1', NULL, '', '2022-09-29 22:13:11'),
(1664465511, '2022-10', 1663173998, 1664465511, NULL, NULL, 1664464391, 1566445991, 9, NULL, NULL, NULL, '2', 'kK_BJMCNG9q_HUMd9062GqgrLdX4s1S5', NULL, '', '2022-09-29 22:31:51');

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

--
-- Dumping data for table `ven_com`
--

INSERT INTO `ven_com` (`id`, `ven_com_num`, `ven_com_date`, `ven_month`, `ven_com_name`, `status`, `ven_name`, `ven_name_id`, `u_role`, `price`, `color`, `comment`, `file`, `ref`, `create_at`) VALUES
(1665333907, '122/2565', '2022-10-09', '2022-11', 'ฟื้นฟู', '1', 'ฟื้นฟู/ปล่อยตัวชั่วคราว', NULL, NULL, NULL, NULL, NULL, NULL, 'oCEVAQtdf23HiZUypLMW', NULL),
(1665333961, '12455', '2022-10-09', '2022-11', 'ค้น จับ', '1', 'ค้น จับ', NULL, NULL, NULL, NULL, NULL, NULL, '7qOu6tChsFQDcewZAlmf', NULL),
(1665360756, '245/2565', '2022-10-10', '2022-11', 'แขวง', '1', 'เวรแขวง', NULL, NULL, NULL, NULL, NULL, NULL, 'HaFpLB0fOu8cxIPUMnAR', NULL),
(1665420515, '234/65', '2022-10-10', '2022-12', 'แขวง ธค', '1', 'เวรแขวง', NULL, NULL, NULL, NULL, NULL, NULL, '3oci9vHhN6ug1qUwGExl', NULL),
(1665420616, 'ๅ/ฝถุ', '2022-10-10', '2022-12', 'ฟูกกก ธค', '1', 'ฟื้นฟู/ปล่อยตัวชั่วคราว', NULL, NULL, NULL, NULL, NULL, NULL, 'eCxEzXRtIDB5Mg4s8haT', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ven_com_panten`
--

CREATE TABLE `ven_com_panten` (
  `id` int(13) NOT NULL,
  `DN` varchar(250) NOT NULL COMMENT 'กลางวัน/กลางคืน',
  `u_role` varchar(250) NOT NULL COMMENT 'ผู้ปฏิบัติหน้าที่',
  `name_role` varchar(250) NOT NULL COMMENT 'ชื่อเวร',
  `price` int(10) NOT NULL,
  `color` varchar(250) NOT NULL,
  `ord` int(5) NOT NULL COMMENT 'ลำดับ',
  `ven_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ven_com_panten`
--

INSERT INTO `ven_com_panten` (`id`, `DN`, `u_role`, `name_role`, `price`, `color`, `ord`, `ven_time`) VALUES
(1, 'กลางวัน', 'ผู้พิพากษา', 'หมายจับ-ค้น', 3500, 'yellow', 1, '08:30:01'),
(3, 'กลางวัน', 'ผอ/หัวหน้าเวร', 'แขวง', 2500, 'yellow', 2, '08:30:02'),
(4, 'กลางวัน', 'เจ้าหน้าที่', 'จับ-ค้น', 1500, 'yellowgreen', 3, '08:30:03'),
(6, 'กลางวัน', 'ผู้พิพากษา', 'หมายจับ-ค้น', 1500, 'gray', 4, '08:30:04'),
(7, 'กลางวัน', 'ผู้พิพากษา', 'rrr', 1300, 'gray', 5, '08:30:05'),
(8, 'กลางคืน', 'ผู้พิพากษา', 'จับค้น', 2500, 'yellowgreen', 1, '16:30:01');

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

--
-- Dumping data for table `ven_name`
--

INSERT INTO `ven_name` (`id`, `name`, `DN`, `srt`) VALUES
(13, 'ค้น จับ', 'กลางคืน', 4),
(14, 'เวรแขวง', 'กลางวัน', 1),
(15, 'ฟื้นฟู/ปล่อยตัวชั่วคราว', 'กลางวัน', 2),
(16, 'ค้น จับ.', 'กลางวัน', 3);

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

--
-- Dumping data for table `ven_name_sub`
--

INSERT INTO `ven_name_sub` (`id`, `name`, `ven_name_id`, `price`, `color`, `srt`) VALUES
(55, 'รับฟ้อง/บัลลังก์', 14, 1500, NULL, 7),
(56, 'ผู้พิพากษา', 14, 3500, NULL, 1),
(57, 'ผู้พิพากษา2', 14, 3500, NULL, 2),
(59, 'ปชส.', 14, 1500, NULL, 4),
(60, 'การเงิน ', 14, 1500, NULL, 5),
(61, 'หมาย', 14, 1500, NULL, 6),
(66, 'ผู้พิพากษา', 13, 2500, NULL, 1),
(67, 'จนท.', 13, 1500, NULL, 2),
(68, 'ผู้พิพากษา', 15, 3500, NULL, 1),
(69, 'ผู้พิพากษา2', 15, 3500, NULL, 2),
(70, 'ปชส.', 15, 1500, NULL, 3),
(71, 'การเงิน', 15, 1500, NULL, 4),
(72, 'หมาย ', 15, 1500, NULL, 5),
(73, 'หน้าบัลลังก์', 15, 1500, NULL, 6),
(80, 'ผู้พิพากษา', 16, 3500, 'red', 1),
(81, 'จนท.', 16, 1500, 'blue', 2),
(83, 'หน.ส่วนงาน', 14, 1500, '', 3);

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
-- Dumping data for table `ven_user`
--

INSERT INTO `ven_user` (`id`, `user_id`, `u_name`, `order`, `ven_name`, `uvn`, `DN`, `v_time`, `price`, `color`, `comment`, `create_at`) VALUES
(23, 1649532712, 'นายณัฐวุฒิ ทุติยาภรณ์', 3, 'เวรแขวง', 'ผู้พิพากษา', 'กลางวัน', '08:30:11', '3500', NULL, NULL, '2022-10-11 03:10:34'),
(24, 1649532480, 'นายอุเทน บัวอ่อน', 2, 'เวรแขวง', 'ผู้พิพากษา', 'กลางวัน', '08:30:11', '3500', NULL, NULL, '2022-10-11 03:10:52'),
(25, 1615861935, 'นางสาววราภรณ์ คริศณุ', 1, 'เวรแขวง', 'ผู้พิพากษา', 'กลางวัน', '08:30:11', '3500', NULL, NULL, '2022-10-11 03:11:22'),
(26, 24, 'นายฐานัน  อยู่หนุน', 1, 'เวรแขวง', 'ผู้พิพากษา2', 'กลางวัน', '08:30:12', '3500', NULL, NULL, '2022-10-11 03:14:18'),
(27, 1600744923, 'นางสาวบุญญาพร บุญแท้', 2, 'เวรแขวง', 'ผู้พิพากษา2', 'กลางวัน', '08:30:12', '3500', NULL, NULL, '2022-10-11 03:19:02'),
(28, 21, 'นางสาวนงนุช  ใจเสงี่ยม', 1, 'เวรแขวง', 'ผู้พิพากษา2', 'กลางวัน', '08:30:12', '3500', NULL, NULL, '2022-10-11 03:19:12'),
(29, 1600744872, 'นายชาญเดช งามทรัพย์', 1, 'เวรแขวง', 'หน.กลุ่มงาน', 'กลางวัน', '08:30:13', '1500', NULL, NULL, '2022-10-11 03:19:28'),
(30, 12, 'นางสาวดลยา เยาวหลี', 2, 'เวรแขวง', 'หน.กลุ่มงาน', 'กลางวัน', '08:30:13', '1500', NULL, NULL, '2022-10-11 03:19:42'),
(31, 19, 'นางวลัยพร  สายทอง ', 3, 'เวรแขวง', 'หน.กลุ่มงาน', 'กลางวัน', '08:30:13', '1500', NULL, NULL, '2022-10-11 03:19:53'),
(32, 20, 'นางนุจรีย์ สุขจินดา', 4, 'เวรแขวง', 'หน.กลุ่มงาน', 'กลางวัน', '08:30:13', '1500', NULL, NULL, '2022-10-11 03:20:04'),
(33, 1649532712, 'นายณัฐวุฒิ ทุติยาภรณ์', 1, 'เวรแขวง', 'ปชส.', 'กลางวัน', '08:30:14', '1500', NULL, NULL, '2022-10-11 03:20:20'),
(34, 1649645620, 'นางสาวกาญจนา กิจสินธุ', 2, 'เวรแขวง', 'ปชส.', 'กลางวัน', '08:30:14', '1500', NULL, NULL, '2022-10-11 03:20:39'),
(35, 1663917187, 'นางสาวพจนา เทพพิชิตสมุทร', 3, 'เวรแขวง', 'ปชส.', 'กลางวัน', '08:30:14', '1500', NULL, NULL, '2022-10-11 03:20:51'),
(36, 49, 'นายศิรสิทธิ์ ศรีเสาวนันท์', 4, 'เวรแขวง', 'ปชส.', 'กลางวัน', '08:30:14', '1500', NULL, NULL, '2022-10-11 03:21:15'),
(37, 1633007273, 'นางสาววนิดา พิพัฒน์นภาพร', 1, 'เวรแขวง', 'การเงิน ', 'กลางวัน', '08:30:15', '1500', NULL, NULL, '2022-10-11 03:21:33'),
(38, 14, 'นางสาวอภิญญา ท้วมจุ้ย', 2, 'เวรแขวง', 'การเงิน ', 'กลางวัน', '08:30:15', '1500', NULL, NULL, '2022-10-11 03:22:10'),
(40, 16, 'นางสาวโชติกา ดีดอนกลาย ', 1, 'เวรแขวง', 'หมาย', 'กลางวัน', '08:30:16', '1500', NULL, NULL, '2022-10-11 03:22:38'),
(42, 35, 'นางสาวเนตรนภา  เกิดเปี่ยม', 2, 'เวรแขวง', 'รับฟ้อง/บัลลังก์', 'กลางวัน', '08:30:17', '1500', NULL, NULL, '2022-10-11 03:23:10'),
(44, 1663916960, 'นางสายฝน กุญชร ณ อยุธยา', 5, 'เวรแขวง', 'ผู้พิพากษา', 'กลางวัน', '08:30:11', '3500', NULL, NULL, '2022-10-11 03:55:16'),
(45, 1600744872, 'นายชาญเดช งามทรัพย์', 0, 'เวรแขวง', 'ผู้พิพากษา', 'กลางวัน', '08:30:11', '3500', NULL, NULL, '2022-10-11 04:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `web_link`
--

CREATE TABLE `web_link` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `web_link`
--

INSERT INTO `web_link` (`id`, `name`, `link`, `img`, `create_at`, `update_at`) VALUES
(1, 'Network Studio --', 'http://cbooking.coj.intra/', '39b0ccc77a60bab868d70f61531d6e72.jpg', '2019-01-24 09:24:17', '2019-02-26 19:34:33'),
(3, 'ระบบบริการข้อมูลคดีศาลยุติธรรม - Case Information Online Service (CIOS) --เจ้าหน้าที่--', 'http://cios.coj.intra/', '0418d82fe2dbb8b1875fe76b6cf6c2d7.jpg', '2019-01-24 09:26:39', '2020-03-30 14:01:03'),
(4, 'ระบบการจัดการงานล่ามศาลยุติธรรม (Court Interpreter Service and Management System : CISMS)', 'http://cisms.coj.intra/index.php', '716e9f8dbbb59d4f4c45557ac4d53078.jpg', '2019-01-24 09:27:16', '2019-02-22 10:48:24'),
(5, 'โปรแกรมระบบจัดเก็บข้อมูลสถิติคดี ของศาลยุติธรรม ระยะที่ 2', 'http://10.1.2.9/court_stat_program/', '3d3938d99fccc4ce1679af86c4935532.jpg', '2019-01-28 11:39:36', '2019-02-22 10:47:32'),
(6, 'ระบบการส่งเอกสารและการประกาศนัดไต่สวนโดยวิธีการลงโฆษณาทางสื่อเทคโนโลยีสารสนเทศ e-notice (enotice)', 'https://enotice.coj.go.th/login', '4d7f52b2665abe5e99e018f6f98c9771.jpg', '2019-01-28 15:02:30', '2021-02-08 14:59:47'),
(7, 'ที่ปรึกษากฎหมาย ศาลเยาวชนฯกลาง', 'http://10.25.0.115/lcon/', 'd533fa6ff0a1832a46164dcf71402b22.jpg', '2019-01-29 08:53:04', '2019-02-22 10:19:06'),
(8, 'ระบบสืบค้นคำพิพากษาชั้นต้น', 'https://decision.coj.go.th/admin', '5937775d969f086eade58217719c0f71.jpg', '2019-01-29 13:57:04', '2019-02-28 14:27:00'),
(9, 'ระบบการจัดเก็บและให้บริการคัดสำเนาคำพิพากษาระหว่างศาล DSS-Decision System ', 'http://dss.coj.intra/', '8444c083d7d6f6477aaf6763e316dfd4.jpg', '2019-01-30 09:58:35', '2019-02-22 13:44:26'),
(10, 'สมุดโทรศัพท์ศาลยุติธรรม E-Phonebook', 'https://phonebook.coj.go.th', 'ff4119231e7631a10719b6fb8125070e.jpg', '2019-02-04 09:11:38', '2019-02-22 10:14:34'),
(11, 'ระบบตรวจสอบรายชื่อผู้กระทำผิดในงานคุมประพฤติ (คดีสอดส่อง) กรมคุมประพฤติ', 'http://203.113.100.106/dopcheck/index.php', '372604ce9f3969cabc212f0d22e355c6.jpg', '2019-02-04 10:29:56', '2019-02-22 10:13:14'),
(12, 'ระบบสารสนเทศสำนักงานศาลยุติธรรมข้าราชการตุลาการและดะโต๊ะยุติธรรม', 'http://esv-ojc.coj.go.th/index.php', '740552c3866b2f138a077e5508435611.jpg', '2019-02-06 09:05:53', '2019-02-22 10:11:55'),
(13, 'การแจ้งการอ่านคำพิพากษาศาลฎีกาทางอิเล็กทรอนิกส์', 'http://read.supremecourt.or.th/index.php', '8055bd73c87ad9c9b4928ac2fc5376b5.jpg', '2019-02-06 10:15:31', '2019-02-22 10:09:32'),
(14, 'ระบบบริหารจัดการเนื้อหาเว็บไซต์ (CMS 4.0) เก่า', 'http://cms.coj.intra/gadmin', 'c4be9b47307415ceced9f18415ea150b.jpg', '2019-02-07 11:09:17', '2019-02-22 10:05:04'),
(15, 'ระบบจัดการเนื้อหาเว็บไซต์ (CMS) ใหม่', 'http://pkkjc.coj.go.th/admin/auth/login', '4fe99d410032fc3bfde136b3050f281a.jpg', '2019-02-07 11:17:49', '2019-02-22 10:04:54'),
(16, 'ระบบส่งข้อมูล คพ.', 'http://compensation.coj.intra/login.php', '158b91a92b24d5c87f3fcc16518244b4.jpg', '2019-02-21 14:19:09', '2019-09-02 08:55:36'),
(18, 'E-Mail (อีเมล์)', 'https://accounts.mail.go.th/', 'ef992e7765e1c48a22d93b4d1e96d16a.jpg', '2019-02-25 09:31:04', '2019-03-11 10:59:46'),
(19, 'ระบบคำนวณอัตราค่าขึ้นศาล', 'https://fees.coj.go.th/', '64df6f2a0373b58ce14a4efeea8d4669.png', '2019-02-26 16:32:23', '2019-02-28 14:57:59'),
(20, 'COJ Video ตารางถ่ายทอด สัญญาณ ภาพเสียง Streamingชมเทปบันทึกภาพย้อนหลัง', 'http://video.coj.go.th/', 'f41daa2e1a18a90062e0c3d8f544c294.jpg', '2019-02-26 18:46:54', '2019-02-28 14:58:57'),
(21, 'ระบบค้นหาเขตอำนาจศาล.', 'https://pubdata.coj.go.th/jurisdiction/', 'dd2cd809bf608626ed8472bf66168b6c.jpg', '2019-02-26 18:47:21', '2019-02-28 15:03:57'),
(22, 'ระบบค้นหาอัตราค่า นำหมาย', 'http://exp.coj.go.th/sentnotice/', '93470837c27fa39e2a866a092fa01906.jpg', '2019-02-26 18:47:53', '2019-04-18 11:28:27'),
(23, 'แอปพลิเคชันสโตร์ ศาลยุติธรรม - App Store COJ', 'https://appstore.coj.go.th/', '39afae1c6ce2bcd3c64a45fce9c9f7a1.jpg', '2019-02-26 18:48:29', '2019-04-18 11:29:50'),
(24, 'โปรแกรมสำรวจข้อมูลอาคารที่ทำการศาลและบ้านพัก', 'http://jws.coj.intra/bds/views/frm_login.php', '84a5629c0fdcfaf8fe771059d0c5c5f9.jpg', '2019-02-26 18:49:06', '2019-02-28 15:05:42'),
(25, 'โปรแกรมรายงานผลการใช้จ่ายเงินสำนักงานศาลยุติธรร', 'http://jws.coj.intra/fris/', '0ce15f5be5b5c3665d8b6bf7a3f94a65.jpg', '2019-02-26 18:49:24', '2019-02-28 15:12:40'),
(26, 'โปรแกรมพิมพ์หนังสือรับรองการหักภาษี ณ ที่จ่าย', 'http://apps.coj.go.th/tax50/login.php', 'dd3ab04cd6b2c8fe48adcd71b8a9bfd7.jpg', '2019-02-26 18:49:43', '2019-04-18 11:27:41'),
(28, 'รายงานและติดตามผลการดำเนินงานตามนโยบายประธานศาลฎีกา', 'http://policy.coj.intra/', '800658fe98a10e3ff4a0f19ec523e6df.jpg', '2019-02-26 18:50:22', '2019-04-18 11:20:06'),
(29, 'ระบบรายงานการสืบหาหลักทรัพย์และการผ่อนชำระหนี้ของลูกหนี้ตามคำพิพากษา', 'http://jws.coj.intra/aiq/views/login.php', 'cc511f079a54a00344cbedb112562017.jpg', '2019-02-26 18:51:10', '2019-04-18 11:28:55'),
(31, 'ระบบค้นหาทะเบียนนิติบุคคล', 'http://jws.coj.intra/cojws/', 'fa98b995c4427f90b5fd7b30ac84118c.jpg', '2019-02-26 18:51:45', '2019-04-18 11:25:00'),
(32, 'ระบบรับส่งเอกสารศาลฎีกา', 'http://senddoc.supremecourt.or.th', '5f5259d60d408d4e35fa86cfffe9797d.jpg', '2019-02-26 18:53:45', '2019-04-18 11:24:31'),
(33, 'การใช้ประโยชน์ข้อมูลทะเบียนราษฎร', 'http://10.100.76.4/ami/authen/authen_start.php', 'b31da5b073be30e56fb72a81f6f98206.jpg', '2019-02-26 18:54:11', '2019-03-11 14:43:58'),
(34, 'ระบบพิมพ์สลิปเงินเดือนข้าราชการตุลาการศาลยุติธรรม', 'http://www.psis.e-service.coj.go.th', '1fe8ab89687583bd5cc85d1986877ac4.jpg', '2019-02-26 18:54:28', '2019-04-03 14:29:28'),
(35, 'ระบบฐานข้อมูลกลาง', 'http://10.100.76.4/itdb/index.php/authentication', '9eb66664ab917ea6c547dcec5b3fe1f0.jpg', '2019-02-26 18:54:41', '2019-04-18 11:23:43'),
(36, 'ระบบรายงานสถิติการใช้งานระบบสื่อสารทางไกลผ่านจอภาพ conf', 'http://10.100.76.4/vcs/', 'b56fed33ef779b14d440127b6236fd3e.jpg', '2019-02-26 18:54:59', '2020-05-07 15:18:45'),
(37, 'โปรแกรมตรวจสอบนายประกันผิดสัญญา', 'http://jws.coj.intra/insurance/views/login.php', '8d21e8d911028e649cab370590d59a8c.jpg', '2019-02-26 18:55:13', '2019-02-28 14:57:15'),
(38, 'เข้าใช้งานระบบ ต่างๆ ของสำนักงานศาล', 'https://it.coj.go.th/Authen/', '0b0150da846030837d2240c8cca2a5db.jpg', '2019-02-26 18:55:33', '2019-03-11 14:42:38'),
(39, 'โปรแกรมระบบสารสนเทศทรัพยากรบุคคล (DPIS)', 'http://10.1.2.101:8080/', '2f8fa9e4d45dfd22160c5c3a62e5479d.jpg', '2019-02-26 18:55:47', '2019-03-11 14:41:48'),
(40, 'ระบบแจ้งการอ่านศาลฎีกา senddoc', 'http://read.supremecourt.or.th/', '1cdc742352a0acccd144c0cb88264f81.jpg', '2019-02-26 18:56:28', '2021-01-08 15:13:05'),
(41, 'บันทึกข้อมูลเพื่อการตรวจราชการ ประจำปีงบประมาณ', 'http://jws.coj.intra/iss/views/frm_login.php', '333478e7be168fbda28f08dba7fc915b.jpg', '2019-02-26 18:56:47', '2020-10-16 10:11:05'),
(42, 'ระบบสารบรรณอิเล็กทรอนิกส์ ระยะ 2', 'http://e-office.coj.intra/ESB/', '5c31ba2c7340ac856fc46528eaf251d9.jpg', '2019-02-26 18:57:03', '2019-06-28 14:48:34'),
(44, 'โปรแกรมระบบงานฐานข้อมูลหมายจับ(AWIS)', 'http://sso.coj.intra/', 'f80cc7a2f8a21cca7450702f7edfb9d3.jpg', '2019-02-27 09:33:53', '2019-02-27 09:38:33'),
(45, 'Disk Error', 'https://www.partitionwizard.com/partitionmagic/disk-read-error.html', '', '2019-02-27 09:40:27', '2019-02-27 09:40:27'),
(46, 'ระบบติดตามสำนวนคดี Tracking System', 'https://cios.coj.go.th/tracking/index.php?page=form&host=pkkjc', '9f2e45da07c0a8283ea951951a7b1349.jpg', '2019-02-27 16:28:09', '2019-07-24 14:04:52'),
(47, 'ระบบบริหารจัดการลูกจ้างชั่วคราวและพนักงานราชการ Employee Management System', 'http://ems.coj.go.th/ems/index.php', 'ed2e9867dd002b0adb46ce5b818af61d.jpg', '2019-02-28 10:16:25', '2019-02-28 14:55:48'),
(48, 'ระบบรายงานคดีของศาลในภาค 7 (คดีค้าง)', 'http://10.37.0.1/intranet/clogin.php', 'a43c94ee4a497e389df743bdefaec95d.jpg', '2019-03-01 12:06:02', '2019-03-18 16:36:57'),
(49, 'intranet.coj.go.th', 'https://intranet.coj.go.th/', '726872bd4eacdea29ad8bc874da4dfc1.jpg', '2019-03-06 11:17:26', '2019-03-11 14:36:57'),
(50, 'GIN Conference สถานพินิจ ศูนย์ฝึก', 'https://www.ginconference.com/', '5f37e17b2105bf8df74e1fc75a8b5f2f.jpg', '2019-03-11 14:10:09', '2019-03-18 16:36:28'),
(51, 'ระยะทาง กรมทางหลวง (เบิกค่าเดินทาง)', 'http://dohgis.doh.go.th/dohtotravel/', '679275a7dd36016fbfe34ae3bb0d25ef.jpg', '2019-03-18 09:15:28', '2019-03-18 16:35:51'),
(52, 'สื่อศาล facebook', 'https://www.facebook.com/pr.coj/', '75315b082cd0087649b2fefc855a7729.jpg', '2019-03-20 13:22:05', '2019-03-20 13:22:31'),
(53, 'โปรแกรมการติดตามและรายงานผลหมายข้ามเขตทางอิเล็กทรอนิกส์', 'http://summons.coj.intra', '3feacd92238ab212f35d8f533f4525e6.jpg', '2019-03-21 12:46:21', '2019-03-21 12:46:21'),
(54, 'โปรแกรมบัญชีสำนักงานศาลยุติธรรม v.3', 'https://ac.coj.go.th/', '104408561949b3f14fb8100f71075f0a.jpg', '2019-04-01 13:46:20', '2019-04-18 09:32:24'),
(55, 'โปรแกรมทะเบียนทรัพย์สิน', 'https://assetws.coj.go.th/assetCoj/', 'df5c36224e4b9d91861398384a928c51.jpg', '2019-04-03 14:26:38', '2019-04-18 11:22:34'),
(56, 'ระบบสืบค้นข้อมูลคดีล้มละลายโดยระบบอิเล็กทรอนิคส์', 'http://www.cbc.e-service.coj.go.th/service', '3c74b28de0cd518dc0efb219c18c1ef8.jpg', '2019-04-03 14:27:00', '2019-04-18 11:22:03'),
(57, 'ตรวจสอบบุลคลล้มละลาย กรมบังคับคี', 'http://ledwebsite.led.go.th/ledweb/led/web/system/WEB1I010Action.do', '497478f0c949f7ec9bbf2dc2224c699a.jpg', '2019-04-03 14:27:19', '2019-04-18 11:21:20'),
(59, 'คำนวณระยะทาง GIS', 'http://gisweb.doh.go.th/doh/download/', '60f507123eb12118eb5927c96902444d.jpg', '2019-04-03 14:28:26', '2019-04-18 11:17:33'),
(61, 'โปรแกรมข้อมูลเงินฝาก', 'http://bookbank.coj.intra/login.php', '18f249caf387ee5df649c797eda135d2.jpg', '2019-04-05 10:47:16', '2019-04-18 11:16:58'),
(62, 'โปรแกรมบริหารจัดการฐานข้อมูลกลางคอมพิวเตอร์ ', 'http://10.100.76.4/itdb/index.php/', '2b8fb4aab9c24a438c68cd91d8654cb6.jpg', '2019-04-05 10:49:23', '2019-04-18 11:16:22'),
(63, 'ระบบรายงานสถิติ 7 วันอันตราย 2562', 'https://report.coj.go.th/', '5f5a8ef127c2c35e956d5888ba2b2cb9.jpg', '2019-04-10 15:18:44', '2019-04-18 11:15:44'),
(64, 'ระบบรายงานผลการให้บริการ ข้อมูลข่าวสารของหน่วยงานในสังกัด สำนักงานศาลยุติธรรม', 'http://cicsystem.coj.intra/infocenter/loginform.php', '4187a074b601ef84bea8528297a61017.jpg', '2019-04-23 10:30:26', '2019-04-23 10:30:26'),
(65, 'หนังสือเวียนสำนักงานศาลยุติธรรม', 'http://e-office.coj.intra/Circular', 'ee4d33f8a72098c7995fae5ac26eeea7.jpg', '2019-04-30 15:42:00', '2019-04-30 15:43:09'),
(66, 'แบบรายงานสถิติประจำเดือน ศูนย์รักษาความปลอดภัย www.ojso.coj.co.th', 'http://10.1.41.5/ojso/login.php', '039b8a4d53bdbd151eec7488f4d66c18.jpg', '2019-05-07 16:04:56', '2019-05-07 16:05:33'),
(67, 'ระบบฐานข้อมูลการประเมินผล การปฏิบัติราชการของศาลยุติธรรม (มิติ)', 'https://asm.coj.go.th/', '7235da9716d79c4e7e915271945b0e3f.jpg', '2019-05-22 11:27:38', '2019-05-22 13:17:51'),
(1561022564, 'การสมัครใช้งานระบบจดหมายอิเล็กทรอนิกส์ (e-Mail) สำนักงานศาลยุติธรรม (name@coj.go.th)', 'https://intranet.coj.go.th/email/', '7b574158255e75e007a664d6c144b869.jpg', '2019-06-20 16:22:44', '2019-06-20 16:22:44'),
(1561605936, 'gfmis online', 'https://webonlineinter.gfmis.go.th/', '6163cfd0eff3d60cc7b927aa17fee566.jpg', '2019-06-27 10:25:36', '2019-06-28 09:57:32'),
(1562130135, 'การรายงานผลตามแนวทางบริหารจัดการลดใช้กระดาษในหน่วยงาน', 'https://docs.google.com/forms/d/e/1FAIpQLSfEE8H64ongfP0579Bwoiyyn_y6c30PoUmDagYkAhn-B6na4Q/viewform', 'f25a3517a9238765132b2f8b0cd59dda.jpg', '2019-07-03 12:02:15', '2019-07-03 12:02:15'),
(1562552234, 'สมัครที่ปรึกษากฎหมาย จดแจ้ง', 'http://10.25.0.115/lcon/index.php', '08cef975523ddafa4b8a7707dea077c7.jpg', '2019-07-08 09:17:14', '2019-07-08 09:17:14'),
(1562658983, 'การพัฒนาทักษะด้านดิจิทัลของข้าราชการ ด้วยเครื่องมือประเมิน', 'https://www.ocsc.go.th/DLProject/dev-skill-dlp', 'e0eecebc4fbdf2ae9ac3f7f88c7d6abd.png', '2019-07-09 14:56:23', '2019-07-09 15:00:09'),
(1563166948, 'สถาบันพัฒนาข้าราชการฝ่ายตุลาการศาลยุติธรรม  e-learning ', 'http://elearning.coj.intra/', '7f13144254d12de00f1eb708909f4051.jpg', '2019-07-15 12:02:28', '2019-07-24 11:40:30'),
(1563521158, 'การรายงานแผนพัฒนารายบุคคล IDP รอบ 25 สิงหาคม 2562', 'https://goo.gl/forms/SxeCv9etO7IL7ApI3', '', '2019-07-19 14:25:58', '2019-07-19 14:25:58'),
(1563869824, 'Streaming Coj ดูสดและดูย้อนหลังได้นะ', 'http://live.coj.intra', 'f2628172fa2dfc286fa6a1639ec750b3.png', '2019-07-23 15:17:04', '2019-08-26 11:39:51'),
(1567045964, 'โปรแกรมบังคับคดีนายประกัน สท', 'http://beds.coj.intra/BEDS', '904b7ccd038a4aa31a012e423404bcca.png', '2019-08-29 09:32:44', '2019-11-25 13:28:01'),
(1567389318, 'ระบบจัดเก็บข้อมูลค่าตอบแทนพิเศษข้าราชการศาลยุติธรรม (สำหรับหน่วยงาน)', 'http://compensation.coj.intra/organite/login.php', '85b14757cd69897236015fa3db82d125.png', '2019-09-02 08:55:18', '2019-09-02 08:55:18'),
(1568172199, 'ระบบบริหารสัญญาจ้างพนักงานจ้างเหมาบริการรายบุคคล Service Contractor Management System สำนักงานศาลยุติธรรม', 'http://ems.coj.go.th/scms/', '0c6b76e48b0ffa3ebc728ecadf7e16e7.jpg', '2019-09-11 10:23:19', '2019-09-11 10:23:19'),
(1569486513, 'แจ้งชำระเงิน EDC', 'https://docs.google.com/forms/d/1GRYSgGQNqomqgIGoz7dwRXjr_-aiNm7w-3ERoK6ohYw/edit#responses', '', '2019-09-26 15:28:33', '2019-09-26 16:08:12'),
(1573786768, 'ระบบบริหารงานการเลื่อนและการโยกย้ายตำแหน่งข้าราชการตุลาการ', 'http://e-appointment.coj.go.th/', '6b8ed7b0727eee29e3eda5d34ae0cdfc.jpg', '2019-11-15 09:59:28', '2019-11-15 10:00:54'),
(1575337456, 'โปรแกรมระบบฐานข้อมูลคำสั่งห้ามออกนอกประเทศ', 'http://git.coj.intra/chalermchon.s/wlis_manual', '', '2019-12-03 08:44:16', '2019-12-03 08:44:16'),
(1575357791, 'ระบบสารสนเทศสำหรับผู้พิพากษา - Judicial Information System (JIS)', 'https://jis.coj.go.th/', 'e9099b658872cf2b467cfcbd4ae80477.png', '2019-12-03 14:23:11', '2019-12-03 14:23:11'),
(1576035096, 'หนังสือคู่มือมาตรฐานการใช้งานระบบอัตลักษณ์แบรนด์ศาลยุติธรรม และ Template สำหรับใช้งานโปรแกรม Presentation', 'https://iprd.coj.go.th/th/content/category/detail/id/8/iid/172706', '', '2019-12-11 10:31:36', '2019-12-11 10:31:36'),
(1576207374, 'โปรแกรมบันทึกข้อมูลแบบแจ้งรายการเพื่อการหักลดหย่อนภาษี(ล.ย.01) (สำหรับผู้พิพากษา)', 'https://das.coj.go.th/ly/', '3d435a448e5a60395a09cee04ecda1ac.jpg', '2019-12-13 10:22:54', '2019-12-13 10:23:25'),
(1578034774, 'ระบบบันทึกข้อมูลคดีสำคัญ', 'http://cdc.coj.intra/', '', '2020-01-03 13:59:34', '2020-01-03 13:59:34'),
(1578898514, 'โปรแกรมระบบสารสนเทศทรัพยากรบุคล DPIS', 'http://dpis.coj.intra:8080/', '', '2020-01-13 13:55:14', '2020-01-13 13:55:30'),
(1580178502, 'โปรแกรมให้บริการคัดถ่ายสำเนาคำพิพากษาผ่านเครื่องอัตโนมัติด้วยตัวเอง', 'https://drive.google.com/drive/u/0/mobile/folders/1Nf_As4HW62AhT26atbX2dcHzwJDkiPWZ?usp=sharing', '', '2020-01-28 09:28:22', '2020-01-28 09:28:22'),
(1583892730, 'ระบบประเมินบุคคลและรายงานการปฏิบัติราชการของข้าราชการตุลาการ', 'http://evaluation.coj.go.th/', '95939af6f95d2b800c709bc8c751800f.jpg', '2020-03-11 09:12:10', '2020-03-11 09:12:10'),
(1584339965, 'โปรแกรมส่งไฟส์เอกสาร ศาลอุทธรณ์คดีชำนัญพิเศษ', 'http://10.20.80.99/sharedoc/', '', '2020-03-16 13:26:05', '2021-10-14 21:36:38'),
(1584590004, 'บัญชีนัดพิจารณาคดีผ่านระบบ google Sheet', 'https://docs.google.com/spreadsheets/d/1pVZSO60EI71MDP7u382Tg4LOowwx9EidDLIXhh-zKBI/edit?usp=sharing', '', '2020-03-19 10:53:24', '2020-03-19 10:53:24'),
(1584679211, 'ระบบจัดเก็บข้อมูลในการบริหารสัญญาณเกี่ยวกับงานก่อสร้างหรืองานปรับปรุง', 'https://pms.coj.go.th/index.php?module=users/login', '0a2270eeeb46a10145f13756f8583010.jpg', '2020-03-20 11:40:11', '2020-03-20 11:40:11'),
(1585708211, 'รายงานปัญหาการออกหมายจับ', 'https://forms.gle/8VNibEKnM4mf1Kmy5', '', '2020-04-01 09:30:11', '2020-04-01 09:30:55'),
(1586399167, 'ระบบรายงานสถิติ ( สถานการณ์ฉุกเฉิน )', 'https://report.coj.go.th/emergency/', '', '2020-04-09 09:26:07', '2020-04-09 09:26:07'),
(1588147462, 'ระบบบัญชีวันทำการและวันหยุดราชการของข้าราชการตุลาการ ', 'http://jpis.coj.intra/worktime', '', '2020-04-29 15:04:22', '2021-10-14 21:36:56'),
(1588305269, 'รายงายสถิติ e-notice ประจำเดือน ', 'https://goo.gl/forms/slSqaX6M0v18cKT82', '', '2020-05-01 10:54:29', '2020-05-01 10:54:29'),
(1590388518, 'การพิมพ์สลิปเงินเดือนสำหรับพนักงาน', 'http://of.coj.intra/hr/', '3e943aa1ffe63b8ae887b40d4ab2d47e.jpg', '2020-05-25 13:35:18', '2020-05-25 13:35:18'),
(1600659309, 'ประเมินผู้พิพากษา', 'http://evaluation.coj.go.th/login', 'c21d1cfa214b5ec4bd658cbd5fd0e27e.png', '2020-09-21 10:35:09', '2020-11-06 13:24:21'),
(1604027637, 'โปรแกรม Venngage (ทำInfographic และ Poster สำเร็จรูป)', 'https://venngage.com', '', '2020-10-30 10:13:57', '2020-10-30 10:13:57'),
(1604643053, 'LineBot ศาลเยาวชนฯ ประจวบ', 'https://lin.ee/Vs4rR4I', 'da5f80744e58864b528a103cdcd7854c.png', '2020-11-06 13:10:53', '2020-11-06 13:18:40'),
(1606703915, 'ย้ายข้าราชการศาลยุติธรรม', 'http://dpis.coj.intra:8080', 'cb837f4f69ce8916ab57b8d4d9f4d040.jpg', '2020-11-30 09:38:35', '2020-12-02 12:04:11'),
(1608526352, 'ระบบตรวจสอบข้อมูลรายบุคคล (WSRS)  SSO', 'http://arch.coj.intra/wsrs/party', '', '2020-12-21 11:52:32', '2020-12-21 11:55:14'),
(1610598462, 'ระบบพิมพ์หนังสือรับรองการหักภาษี ณ ที่จ่าย ตามมาตรา 50 ทวิ', 'http://50tavi.coj.go.th/', '98290edb032698ed62c8d47d01e59387.jpg', '2021-01-14 11:27:42', '2021-01-14 11:27:42'),
(1613639371, 'คัดทะเบียนราชฎร+คู่มือ', 'http://git.coj.intra/techno.app/coj_ami_manual.git', '', '2021-02-18 16:09:31', '2021-04-30 16:06:27'),
(1619579860, 'เคาน์เตอร์เซอร์วิส', 'https://counterservice.co.th/ticketnet/clients/login_ftp.asp', '', '2021-04-28 10:17:40', '2021-04-28 10:18:08'),
(1620030476, 'ระบบสำนวนบังคับคดีผู้ประกันในคดีอาญา', 'http://10.100.76.243/beis/login', 'c9dc83994021f75f08d4c21fa1b62e64.jpg', '2021-05-03 15:27:56', '2021-05-03 15:27:56'),
(1620958258, 'จำหน่ายคดีชั่วคราว K.บุ๋ม', 'http://10.37.64.1/work_case/index.php', '', '2021-05-14 09:10:58', '2021-05-18 14:23:07'),
(1622091669, 'โปรแกรมรายงานคดีและส่งสำนวนและร่างคำพิพากษาหรือคำสั่งเพื่อตรวจด้วยระบบอิเล็กทรอนิกส์(ECRM) ภาค7', 'http://10.37.0.1:8080/casereport116/', '424ad36e70c40c82fbd6f195b6a0d4ff.jpg', '2021-05-27 12:01:09', '2021-05-27 12:01:09'),
(1630399573, 'รายงานสถิติคดีไกล่เกลี่ยประจำเดือน', 'https://bit.ly/3fKHx8e', '5015f2fdad77bca39a20a690deff3934.jpg', '2021-08-31 15:46:13', '2021-08-31 15:47:37'),
(1631980239, 'เซ็นเอกสารออนไลน์ https://varias.co.th/', 'https://varias.co.th/', '', '2021-09-18 22:50:39', '2021-09-18 22:50:39'),
(1633415561, 'Zoom conf', 'https://zoom.us/', '40a6e09190b7e2a93e6ef05e9f64a045.jpg', '2021-10-05 13:32:41', '2021-10-05 13:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `web_link_file`
--

CREATE TABLE `web_link_file` (
  `id` int(11) NOT NULL,
  `web_link_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bila`
--
ALTER TABLE `bila`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blueshirt`
--
ALTER TABLE `blueshirt`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `law_ban`
--
ALTER TABLE `law_ban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal_c`
--
ALTER TABLE `legal_c`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal_c_ven`
--
ALTER TABLE `legal_c_ven`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `line`
--
ALTER TABLE `line`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `line_home`
--
ALTER TABLE `line_home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `running`
--
ALTER TABLE `running`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sign_boss_name`
--
ALTER TABLE `sign_boss_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `somtop`
--
ALTER TABLE `somtop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `somtop_v`
--
ALTER TABLE `somtop_v`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `ven_com_panten`
--
ALTER TABLE `ven_com_panten`
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
-- Indexes for table `web_link`
--
ALTER TABLE `web_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_link_file`
--
ALTER TABLE `web_link_file`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bila`
--
ALTER TABLE `bila`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1664644835;

--
-- AUTO_INCREMENT for table `blueshirt`
--
ALTER TABLE `blueshirt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `law_ban`
--
ALTER TABLE `law_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `legal_c`
--
ALTER TABLE `legal_c`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1634231162;

--
-- AUTO_INCREMENT for table `legal_c_ven`
--
ALTER TABLE `legal_c_ven`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1634231170;

--
-- AUTO_INCREMENT for table `line`
--
ALTER TABLE `line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `line_home`
--
ALTER TABLE `line_home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `running`
--
ALTER TABLE `running`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sign_boss_name`
--
ALTER TABLE `sign_boss_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `somtop`
--
ALTER TABLE `somtop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1634230419;

--
-- AUTO_INCREMENT for table `somtop_v`
--
ALTER TABLE `somtop_v`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1634230998;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665475628;

--
-- AUTO_INCREMENT for table `ven`
--
ALTER TABLE `ven`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665476968;

--
-- AUTO_INCREMENT for table `ven_change`
--
ALTER TABLE `ven_change`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1664465512;

--
-- AUTO_INCREMENT for table `ven_com`
--
ALTER TABLE `ven_com`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1665420617;

--
-- AUTO_INCREMENT for table `ven_com_panten`
--
ALTER TABLE `ven_com_panten`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ven_name`
--
ALTER TABLE `ven_name`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ven_name_sub`
--
ALTER TABLE `ven_name_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `ven_user`
--
ALTER TABLE `ven_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `web_link`
--
ALTER TABLE `web_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1633415562;

--
-- AUTO_INCREMENT for table `web_link_file`
--
ALTER TABLE `web_link_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
