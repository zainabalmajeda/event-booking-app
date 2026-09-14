-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2025 at 08:37 PM
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
-- Database: `ticket_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `username` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`) VALUES
(1, 'almaliki');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `seat_id` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `event_id`, `seat_id`, `total_price`) VALUES
(81, 1, 12, '500.00');

-- --------------------------------------------------------

--
-- Table structure for table `concerts`
--

CREATE TABLE `concerts` (
  `concert_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `music_genre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `concerts`
--

INSERT INTO `concerts` (`concert_id`, `event_id`, `duration`, `music_genre`) VALUES
(1, 9, 12, 'dance');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_ID` int(11) NOT NULL,
  `username` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_ID`, `username`) VALUES
(1, 'hasan'),
(2, 'Zahyah');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `event_type` varchar(50) NOT NULL,
  `venue` varchar(100) NOT NULL,
  `event_date` datetime NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `available_seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `title`, `description`, `event_type`, `venue`, `event_date`, `image_path`, `price`, `available_seats`) VALUES
(1, 'Captain America', '\'As Steve Rogers \nstruggles to embrace \nhis role in the modern\n world, he teams up \nwith a fellow Avenger \nand S.H.I.E.L.D agent, \nBlack Widow, to battle a \nnew threat from history:\n an assassin known as the\n Winter Soldier.', 'movie', 'Cinema Hall B', '2023-12-16 20:30:00', 'F:\\works\\project\\EventProject\\src\\images\\download (2).jfif', '120.00', 24),
(2, 'Spider-Man', 'Peter Parker struggles\n with his dual life \nas a superhero \nand a college student. \nWhen a new villain, \nDoctor Octopus, emerges, \nSpider-Man must \nconfront his greatest \nchallenge yet', 'movie', 'Cinema Hall C', '2023-12-20 19:00:00', 'F:\\works\\project\\EventProject\\src\\images\\Spider-Man.jfif', '80.00', 200),
(3, 'Mockingjay', 'Katniss Everdeen \nbecomes the symbol \nof rebellion against\n the oppressive \nCapitol as District 13 \nrallies the other districts \nfor revolution', 'movie', 'Cinema Hall A', '2023-12-25 18:30:00', 'F:\\works\\project\\EventProject\\src\\images\\mockingjay.jpg', '85.00', 175),
(4, 'Venom poster', 'As Steve Rogers struggles\n to embrace his role in the modern\n world,', 'movie', 'Cinema Hall D', '2023-12-16 20:30:00', 'F:\\works\\project\\EventProject\\src\\images\\Venom_poster.jpg', '85.00', 150),
(5, 'fghhj', 'fghjk', 'movie', 'Cinema B', '2025-06-01 00:00:00', 'F:\\works\\project\\EventProject\\src\\images\\download (1).jfif', '50.00', 500),
(6, 'stories', 'hmcabhjka', 'movie', 'Cinema B', '2025-06-01 00:00:00', 'F:\\works\\project\\EventProject\\src\\images\\mockingjay.jpg', '50.00', 500),
(7, 'Exhibition', 'kfjhklsf', 'hghjv', 'Cinema B', '2025-06-01 00:00:00', 'F:\\works\\project\\EventProject\\src\\images\\Venom_poster.jpg', '50.00', 300),
(8, 'jfjsk', 'cnbj,', 'movie', 'Cinema Hall', '2025-06-01 00:00:00', 'D:\\photos\\jakob-rosen-HZXUBrOv8Ag-unsplash.jpg', '50.00', 200),
(9, 'nice music', 'vrey good lisetn', 'Concert', 'Concert Hall', '2025-06-01 00:00:00', 'D:\\photos\\william-daigneault-GAF48XT3yn8-unsplash.jpg', '75.00', 300),
(10, 'good man', 'good man is good man', 'movie', 'Cinema Hall', '2025-06-01 00:00:00', 'D:\\photos\\marcel-strauss-1lG6SHTzUeY-unsplash - نسخة - نسخة (2).jpg', '50.00', 200),
(15, 'captain Amrica', 'cghvahcgv', 'movie', 'Cinema Hall', '2025-06-01 00:00:00', NULL, '50.00', 200);

-- --------------------------------------------------------

--
-- Table structure for table `exhibitions`
--

CREATE TABLE `exhibitions` (
  `exhibition_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `theme` varchar(100) DEFAULT NULL,
  `organizer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exhibitions`
--

INSERT INTO `exhibitions` (`exhibition_id`, `event_id`, `theme`, `organizer`) VALUES
(1, 7, 'sdg', 'fsfff');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_ID` int(11) NOT NULL,
  `Fdate` varchar(120) NOT NULL,
  `rating` int(11) NOT NULL,
  `commeent` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `festivals`
--

CREATE TABLE `festivals` (
  `festival_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `festival_type` varchar(100) DEFAULT NULL,
  `number_of_performers` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `festivals`
--

INSERT INTO `festivals` (`festival_id`, `event_id`, `festival_type`, `number_of_performers`) VALUES
(1, 5, 'jhgj', 50),
(2, 6, 'ksmk,', 12);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `event_id`, `director`, `duration`) VALUES
(1, 10, 'hasan', 42),
(2, 8, 'BJJbcJ', 45);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `seat_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `seat_number` varchar(10) NOT NULL,
  `row_number` varchar(5) NOT NULL,
  `section` varchar(20) NOT NULL,
  `status` enum('available','booked','reserved') DEFAULT 'available',
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`seat_id`, `event_id`, `seat_number`, `row_number`, `section`, `status`, `price`) VALUES
(10, 1, '1', 'A', 'VIP', 'available', '500.00'),
(11, 1, '2', 'A', 'VIP', 'available', '500.00'),
(12, 1, '3', 'A', 'VIP', 'booked', '500.00'),
(13, 1, '1', 'B', 'Premium', 'available', '300.00'),
(14, 1, '2', 'B', 'Premium', 'available', '300.00'),
(15, 1, '3', 'B', 'Premium', 'available', '300.00'),
(16, 1, '1', 'C', 'Regular', 'available', '150.00'),
(17, 1, '2', 'C', 'Regular', 'available', '150.00'),
(18, 1, '3', 'C', 'Regular', 'available', '150.00'),
(19, 2, '1', 'A', 'VIP', 'available', '500.00'),
(20, 2, '2', 'A', 'VIP', 'available', '500.00'),
(21, 2, '3', 'A', 'VIP', 'available', '500.00'),
(22, 2, '4', 'A', 'VIP', 'available', '500.00'),
(23, 2, '5', 'A', 'VIP', 'available', '500.00'),
(24, 2, '6', 'A', 'VIP', 'available', '500.00'),
(25, 2, '1', 'B', 'Premium', 'available', '300.00'),
(26, 2, '2', 'B', 'Premium', 'available', '300.00'),
(27, 2, '3', 'B', 'Premium', 'available', '300.00'),
(28, 2, '4', 'B', 'Premium', 'available', '300.00'),
(29, 2, '5', 'B', 'Premium', 'available', '300.00'),
(30, 2, '6', 'B', 'Premium', 'available', '300.00'),
(31, 2, '1', 'C', 'Regular', 'available', '150.00'),
(32, 2, '2', 'C', 'Regular', 'available', '150.00'),
(33, 2, '3', 'C', 'Regular', 'available', '150.00'),
(34, 2, '4', 'C', 'Regular', 'available', '150.00'),
(35, 2, '5', 'C', 'Regular', 'available', '150.00'),
(36, 2, '6', 'C', 'Regular', 'available', '150.00'),
(37, 2, '1', 'A', 'VIP', 'available', '500.00'),
(38, 2, '2', 'A', 'VIP', 'available', '500.00'),
(39, 2, '3', 'A', 'VIP', 'available', '500.00'),
(40, 2, '4', 'A', 'VIP', 'available', '500.00'),
(41, 2, '5', 'A', 'VIP', 'available', '500.00'),
(42, 2, '6', 'A', 'VIP', 'available', '500.00'),
(43, 2, '1', 'B', 'Premium', 'available', '300.00'),
(44, 2, '2', 'B', 'Premium', 'available', '300.00'),
(45, 2, '3', 'B', 'Premium', 'available', '300.00'),
(46, 2, '4', 'B', 'Premium', 'available', '300.00'),
(47, 2, '5', 'B', 'Premium', 'available', '300.00'),
(48, 2, '6', 'B', 'Premium', 'available', '300.00'),
(49, 2, '1', 'C', 'Regular', 'available', '150.00'),
(50, 2, '2', 'C', 'Regular', 'available', '150.00'),
(51, 2, '3', 'C', 'Regular', 'available', '150.00'),
(52, 2, '4', 'C', 'Regular', 'available', '150.00'),
(53, 2, '5', 'C', 'Regular', 'available', '150.00'),
(54, 2, '6', 'C', 'Regular', 'available', '150.00'),
(55, 3, '1', 'A', 'VIP', 'available', '500.00'),
(56, 3, '2', 'A', 'VIP', 'available', '500.00'),
(57, 3, '3', 'A', 'VIP', 'available', '500.00'),
(58, 3, '4', 'A', 'VIP', 'available', '500.00'),
(59, 3, '5', 'A', 'VIP', 'available', '500.00'),
(60, 3, '6', 'A', 'VIP', 'available', '500.00'),
(61, 3, '1', 'B', 'Premium', 'available', '300.00'),
(62, 3, '2', 'B', 'Premium', 'available', '300.00'),
(63, 3, '3', 'B', 'Premium', 'available', '300.00'),
(64, 3, '4', 'B', 'Premium', 'available', '300.00'),
(65, 3, '5', 'B', 'Premium', 'available', '300.00'),
(66, 3, '6', 'B', 'Premium', 'available', '300.00'),
(67, 3, '1', 'C', 'Regular', 'available', '150.00'),
(68, 3, '2', 'C', 'Regular', 'available', '150.00'),
(69, 3, '3', 'C', 'Regular', 'available', '150.00'),
(70, 3, '4', 'C', 'Regular', 'available', '150.00'),
(71, 3, '5', 'C', 'Regular', 'available', '150.00'),
(72, 3, '6', 'C', 'Regular', 'available', '150.00'),
(73, 4, '1', 'A', 'VIP', 'available', '500.00'),
(74, 4, '2', 'A', 'VIP', 'available', '500.00'),
(75, 4, '3', 'A', 'VIP', 'available', '500.00'),
(76, 4, '4', 'A', 'VIP', 'available', '500.00'),
(77, 4, '5', 'A', 'VIP', 'available', '500.00'),
(78, 4, '6', 'A', 'VIP', 'available', '500.00'),
(79, 4, '1', 'B', 'Premium', 'available', '300.00'),
(80, 4, '2', 'B', 'Premium', 'available', '300.00'),
(81, 4, '3', 'B', 'Premium', 'available', '300.00'),
(82, 4, '4', 'B', 'Premium', 'available', '300.00'),
(83, 4, '5', 'B', 'Premium', 'available', '300.00'),
(84, 4, '6', 'B', 'Premium', 'available', '300.00'),
(85, 4, '1', 'C', 'Regular', 'available', '150.00'),
(86, 4, '2', 'C', 'Regular', 'available', '150.00'),
(87, 4, '3', 'C', 'Regular', 'available', '150.00'),
(88, 4, '4', 'C', 'Regular', 'available', '150.00'),
(89, 4, '5', 'C', 'Regular', 'available', '150.00'),
(90, 4, '6', 'C', 'Regular', 'available', '150.00'),
(91, 5, '1', 'A', 'VIP', 'available', '500.00'),
(92, 5, '2', 'A', 'VIP', 'available', '500.00'),
(93, 5, '3', 'A', 'VIP', 'available', '500.00'),
(94, 5, '4', 'A', 'VIP', 'available', '500.00'),
(95, 5, '5', 'A', 'VIP', 'available', '500.00'),
(96, 5, '6', 'A', 'VIP', 'available', '500.00'),
(97, 5, '1', 'B', 'Premium', 'available', '300.00'),
(98, 5, '2', 'B', 'Premium', 'available', '300.00'),
(99, 5, '3', 'B', 'Premium', 'available', '300.00'),
(100, 5, '4', 'B', 'Premium', 'available', '300.00'),
(101, 5, '5', 'B', 'Premium', 'available', '300.00'),
(102, 5, '6', 'B', 'Premium', 'available', '300.00'),
(103, 5, '1', 'C', 'Regular', 'available', '150.00'),
(104, 5, '2', 'C', 'Regular', 'available', '150.00'),
(105, 5, '3', 'C', 'Regular', 'available', '150.00'),
(106, 5, '4', 'C', 'Regular', 'available', '150.00'),
(107, 5, '5', 'C', 'Regular', 'available', '150.00'),
(108, 5, '6', 'C', 'Regular', 'available', '150.00'),
(109, 6, '1', 'A', 'VIP', 'available', '500.00'),
(110, 6, '2', 'A', 'VIP', 'available', '500.00'),
(111, 6, '3', 'A', 'VIP', 'available', '500.00'),
(112, 6, '4', 'A', 'VIP', 'available', '500.00'),
(113, 6, '5', 'A', 'VIP', 'available', '500.00'),
(114, 6, '6', 'A', 'VIP', 'available', '500.00'),
(115, 6, '1', 'B', 'Premium', 'available', '300.00'),
(116, 6, '2', 'B', 'Premium', 'available', '300.00'),
(117, 6, '3', 'B', 'Premium', 'available', '300.00'),
(118, 6, '4', 'B', 'Premium', 'available', '300.00'),
(119, 6, '5', 'B', 'Premium', 'available', '300.00'),
(120, 6, '6', 'B', 'Premium', 'available', '300.00'),
(121, 6, '1', 'C', 'Regular', 'available', '150.00'),
(122, 6, '2', 'C', 'Regular', 'available', '150.00'),
(123, 6, '3', 'C', 'Regular', 'available', '150.00'),
(124, 6, '4', 'C', 'Regular', 'available', '150.00'),
(125, 6, '5', 'C', 'Regular', 'available', '150.00'),
(126, 6, '6', 'C', 'Regular', 'available', '150.00'),
(127, 7, '1', 'A', 'VIP', 'available', '500.00'),
(128, 7, '2', 'A', 'VIP', 'available', '500.00'),
(129, 7, '3', 'A', 'VIP', 'available', '500.00'),
(130, 7, '4', 'A', 'VIP', 'available', '500.00'),
(131, 7, '5', 'A', 'VIP', 'available', '500.00'),
(132, 7, '6', 'A', 'VIP', 'available', '500.00'),
(133, 7, '1', 'B', 'Premium', 'available', '300.00'),
(134, 7, '2', 'B', 'Premium', 'available', '300.00'),
(135, 7, '3', 'B', 'Premium', 'available', '300.00'),
(136, 7, '4', 'B', 'Premium', 'available', '300.00'),
(137, 7, '5', 'B', 'Premium', 'available', '300.00'),
(138, 7, '6', 'B', 'Premium', 'available', '300.00'),
(139, 7, '1', 'C', 'Regular', 'available', '150.00'),
(140, 7, '2', 'C', 'Regular', 'available', '150.00'),
(141, 7, '3', 'C', 'Regular', 'available', '150.00'),
(142, 7, '4', 'C', 'Regular', 'available', '150.00'),
(143, 7, '5', 'C', 'Regular', 'available', '150.00'),
(144, 7, '6', 'C', 'Regular', 'available', '150.00'),
(145, 8, '1', 'A', 'VIP', 'available', '500.00'),
(146, 8, '2', 'A', 'VIP', 'available', '500.00'),
(147, 8, '3', 'A', 'VIP', 'available', '500.00'),
(148, 8, '4', 'A', 'VIP', 'available', '500.00'),
(149, 8, '5', 'A', 'VIP', 'available', '500.00'),
(150, 8, '6', 'A', 'VIP', 'available', '500.00'),
(151, 8, '1', 'B', 'Premium', 'available', '300.00'),
(152, 8, '2', 'B', 'Premium', 'available', '300.00'),
(153, 8, '3', 'B', 'Premium', 'available', '300.00'),
(154, 8, '4', 'B', 'Premium', 'available', '300.00'),
(155, 8, '5', 'B', 'Premium', 'available', '300.00'),
(156, 8, '6', 'B', 'Premium', 'available', '300.00'),
(157, 8, '1', 'C', 'Regular', 'available', '150.00'),
(158, 8, '2', 'C', 'Regular', 'available', '150.00'),
(159, 8, '3', 'C', 'Regular', 'available', '150.00'),
(160, 8, '4', 'C', 'Regular', 'available', '150.00'),
(161, 8, '5', 'C', 'Regular', 'available', '150.00'),
(162, 8, '6', 'C', 'Regular', 'available', '150.00'),
(163, 8, '1', 'A', 'VIP', 'available', '500.00'),
(164, 8, '2', 'A', 'VIP', 'available', '500.00'),
(165, 8, '3', 'A', 'VIP', 'available', '500.00'),
(166, 8, '4', 'A', 'VIP', 'available', '500.00'),
(167, 8, '5', 'A', 'VIP', 'available', '500.00'),
(168, 8, '6', 'A', 'VIP', 'available', '500.00'),
(169, 8, '1', 'B', 'Premium', 'available', '300.00'),
(170, 8, '2', 'B', 'Premium', 'available', '300.00'),
(171, 8, '3', 'B', 'Premium', 'available', '300.00'),
(172, 8, '4', 'B', 'Premium', 'available', '300.00'),
(173, 8, '5', 'B', 'Premium', 'available', '300.00'),
(174, 8, '6', 'B', 'Premium', 'available', '300.00'),
(175, 8, '1', 'C', 'Regular', 'available', '150.00'),
(176, 8, '2', 'C', 'Regular', 'available', '150.00'),
(177, 8, '3', 'C', 'Regular', 'available', '150.00'),
(178, 8, '4', 'C', 'Regular', 'available', '150.00'),
(179, 8, '5', 'C', 'Regular', 'available', '150.00'),
(180, 8, '6', 'C', 'Regular', 'available', '150.00'),
(181, 8, '1', 'A', 'VIP', 'available', '500.00'),
(182, 8, '2', 'A', 'VIP', 'available', '500.00'),
(183, 8, '3', 'A', 'VIP', 'available', '500.00'),
(184, 8, '4', 'A', 'VIP', 'available', '500.00'),
(185, 8, '5', 'A', 'VIP', 'available', '500.00'),
(186, 8, '6', 'A', 'VIP', 'available', '500.00'),
(187, 8, '1', 'B', 'Premium', 'available', '300.00'),
(188, 8, '2', 'B', 'Premium', 'available', '300.00'),
(189, 8, '3', 'B', 'Premium', 'available', '300.00'),
(190, 8, '4', 'B', 'Premium', 'available', '300.00'),
(191, 8, '5', 'B', 'Premium', 'available', '300.00'),
(192, 8, '6', 'B', 'Premium', 'available', '300.00'),
(193, 8, '1', 'C', 'Regular', 'available', '150.00'),
(194, 8, '2', 'C', 'Regular', 'available', '150.00'),
(195, 8, '3', 'C', 'Regular', 'available', '150.00'),
(196, 8, '4', 'C', 'Regular', 'available', '150.00'),
(197, 8, '5', 'C', 'Regular', 'available', '150.00'),
(198, 8, '6', 'C', 'Regular', 'available', '150.00'),
(199, 9, '1', 'A', 'VIP', 'available', '500.00'),
(200, 9, '2', 'A', 'VIP', 'available', '500.00'),
(201, 9, '3', 'A', 'VIP', 'available', '500.00'),
(202, 9, '4', 'A', 'VIP', 'available', '500.00'),
(203, 9, '5', 'A', 'VIP', 'available', '500.00'),
(204, 9, '6', 'A', 'VIP', 'available', '500.00'),
(205, 9, '1', 'B', 'Premium', 'available', '300.00'),
(206, 9, '2', 'B', 'Premium', 'available', '300.00'),
(207, 9, '3', 'B', 'Premium', 'available', '300.00'),
(208, 9, '4', 'B', 'Premium', 'available', '300.00'),
(209, 9, '5', 'B', 'Premium', 'available', '300.00'),
(210, 9, '6', 'B', 'Premium', 'available', '300.00'),
(211, 9, '1', 'C', 'Regular', 'available', '150.00'),
(212, 9, '2', 'C', 'Regular', 'available', '150.00'),
(213, 9, '3', 'C', 'Regular', 'available', '150.00'),
(214, 9, '4', 'C', 'Regular', 'available', '150.00'),
(215, 9, '5', 'C', 'Regular', 'available', '150.00'),
(216, 9, '6', 'C', 'Regular', 'available', '150.00'),
(217, 9, '1', 'A', 'VIP', 'available', '500.00'),
(218, 9, '2', 'A', 'VIP', 'available', '500.00'),
(219, 9, '3', 'A', 'VIP', 'available', '500.00'),
(220, 9, '4', 'A', 'VIP', 'available', '500.00'),
(221, 9, '5', 'A', 'VIP', 'available', '500.00'),
(222, 9, '6', 'A', 'VIP', 'available', '500.00'),
(223, 9, '1', 'B', 'Premium', 'available', '300.00'),
(224, 9, '2', 'B', 'Premium', 'available', '300.00'),
(225, 9, '3', 'B', 'Premium', 'available', '300.00'),
(226, 9, '4', 'B', 'Premium', 'available', '300.00'),
(227, 9, '5', 'B', 'Premium', 'available', '300.00'),
(228, 9, '6', 'B', 'Premium', 'available', '300.00'),
(229, 9, '1', 'C', 'Regular', 'available', '150.00'),
(230, 9, '2', 'C', 'Regular', 'available', '150.00'),
(231, 9, '3', 'C', 'Regular', 'available', '150.00'),
(232, 9, '4', 'C', 'Regular', 'available', '150.00'),
(233, 9, '5', 'C', 'Regular', 'available', '150.00'),
(234, 9, '6', 'C', 'Regular', 'available', '150.00'),
(235, 10, '1', 'A', 'VIP', 'available', '500.00'),
(236, 10, '2', 'A', 'VIP', 'available', '500.00'),
(237, 10, '3', 'A', 'VIP', 'available', '500.00'),
(238, 10, '4', 'A', 'VIP', 'available', '500.00'),
(239, 10, '5', 'A', 'VIP', 'available', '500.00'),
(240, 10, '6', 'A', 'VIP', 'available', '500.00'),
(241, 10, '1', 'B', 'Premium', 'available', '300.00'),
(242, 10, '2', 'B', 'Premium', 'available', '300.00'),
(243, 10, '3', 'B', 'Premium', 'available', '300.00'),
(244, 10, '4', 'B', 'Premium', 'available', '300.00'),
(245, 10, '5', 'B', 'Premium', 'available', '300.00'),
(246, 10, '6', 'B', 'Premium', 'available', '300.00'),
(247, 10, '1', 'C', 'Regular', 'available', '150.00'),
(248, 10, '2', 'C', 'Regular', 'available', '150.00'),
(249, 10, '3', 'C', 'Regular', 'available', '150.00'),
(250, 10, '4', 'C', 'Regular', 'available', '150.00'),
(251, 10, '5', 'C', 'Regular', 'available', '150.00'),
(252, 10, '6', 'C', 'Regular', 'available', '150.00'),
(253, 15, '1', 'A', 'VIP', 'available', '500.00'),
(254, 15, '2', 'A', 'VIP', 'available', '500.00'),
(255, 15, '3', 'A', 'VIP', 'available', '500.00'),
(256, 15, '4', 'A', 'VIP', 'available', '500.00'),
(257, 15, '5', 'A', 'VIP', 'available', '500.00'),
(258, 15, '6', 'A', 'VIP', 'available', '500.00'),
(259, 15, '1', 'B', 'Premium', 'available', '300.00'),
(260, 15, '2', 'B', 'Premium', 'available', '300.00'),
(261, 15, '3', 'B', 'Premium', 'available', '300.00'),
(262, 15, '4', 'B', 'Premium', 'available', '300.00'),
(263, 15, '5', 'B', 'Premium', 'available', '300.00'),
(264, 15, '6', 'B', 'Premium', 'available', '300.00'),
(265, 15, '1', 'C', 'Regular', 'available', '150.00'),
(266, 15, '2', 'C', 'Regular', 'available', '150.00'),
(267, 15, '3', 'C', 'Regular', 'available', '150.00'),
(268, 15, '4', 'C', 'Regular', 'available', '150.00'),
(269, 15, '5', 'C', 'Regular', 'available', '150.00'),
(270, 15, '6', 'C', 'Regular', 'available', '150.00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_type` enum('admin','customer') DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `user_type`) VALUES
('aborkan', '123', 'abo@gmail.com', 'admin'),
('almaliki', '123', 'alm@gmail.com', 'admin'),
('hasan', '123', 'h@gmail.com', 'customer'),
('Zahyah', '223', 'Zahyah@gmail.com', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `seat_id` (`seat_id`);

--
-- Indexes for table `concerts`
--
ALTER TABLE `concerts`
  ADD PRIMARY KEY (`concert_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_ID`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `event_type` (`event_type`);

--
-- Indexes for table `exhibitions`
--
ALTER TABLE `exhibitions`
  ADD PRIMARY KEY (`exhibition_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_ID`);

--
-- Indexes for table `festivals`
--
ALTER TABLE `festivals`
  ADD PRIMARY KEY (`festival_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `concerts`
--
ALTER TABLE `concerts`
  MODIFY `concert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `exhibitions`
--
ALTER TABLE `exhibitions`
  MODIFY `exhibition_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `festivals`
--
ALTER TABLE `festivals`
  MODIFY `festival_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`seat_id`) REFERENCES `seats` (`seat_id`);

--
-- Constraints for table `concerts`
--
ALTER TABLE `concerts`
  ADD CONSTRAINT `concerts_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`);

--
-- Constraints for table `exhibitions`
--
ALTER TABLE `exhibitions`
  ADD CONSTRAINT `exhibitions_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`);

--
-- Constraints for table `festivals`
--
ALTER TABLE `festivals`
  ADD CONSTRAINT `festivals_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`);

--
-- Constraints for table `seats`
--
ALTER TABLE `seats`
  ADD CONSTRAINT `seats_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
