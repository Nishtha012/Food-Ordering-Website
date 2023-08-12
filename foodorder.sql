-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2023 at 07:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('Nishtha', 'nis@gmail.com', '1233456', 'greetings', 'hello, Bv eats'),
('Shruti', 'shr@gmail.com', '23456444', 'appreciation', 'Hello, Your food id good'),
('Shristhi', 'shrishti@gmail.com', '2343234', 'Thank you', 'I liked your food'),
('Richa', 'richa@gmail.com', '8765678', 'Good Food', 'the food is healthy and tasty'),
('Rashi', 'Rashi@gmail.com', '987667789', 'Good service', 'The service is good '),
('Rashi', 'Rashi@gmail.com', '987667789', 'Good service', 'The service is good '),
('Resham', 'resh@gmail.com', '76767676', 'greetings', 'Loved your food and service');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('nis', 'nishtha', 'nis@gmail.com', '12345', '189,nimri', '123'),
('shr', 'shruti', 'shr@gmail.com', '1234', '189,tonk', '1234'),
('shrish', 'shrishthi', 'shrish@gmail.com', '998696572', 'Madhya pradesh', '111');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Juicy Masala Paneer Kathi Roll', 100, '', 1, 'images/Masala_Paneer_Kathi_Roll.jpg', 'ENABLE'),
(60, 'Chocolate', 120, 'placeholder=\"Your', 1, 'images/Chocolate_Hazelnut_Truffle.jpg', 'ENABLE'),
(61, 'Happy Happy Choco Chip Shake', 80, '', 1, 'images/Happy_Happy_Choco_Chip_Shake.jpg', 'ENABLE'),
(62, 'Spring Rolls', 65, '', 2, 'images/Veg-Spring-Rolls.jpg', 'ENABLE'),
(63, 'White Sauce Paste', 150, '', 2, 'images/White-Sauce-Paste.jpg', 'ENABLE'),
(69, 'Coffee', 25, '', 2, 'images/coffee.jpg', 'ENABLE'),
(70, 'Tea', 20, '', 3, 'images/tea.jpg', 'ENABLE'),
(71, 'Samosa', 40, '', 3, 'images/samosa.jpg', 'ENABLE'),
(72, 'Paneer Tikka', 45, '', 3, 'images/paneer-tikka.jpg', 'ENABLE'),
(73, 'Puff', 35, '', 4, 'images/puff.jpg', 'ENABLE'),
(77, 'Pizza', 200, '', 4, 'images/Pizza.jpg', 'ENABLE'),
(78, 'French Fries', 75, '', 4, 'images/frenchfries.jpg', 'ENABLE'),
(80, 'Poha', 50, 'placeholder=\"Your', 1, 'C:\\xampp\\htdocs\\Online-Food-Order\\images', 'DISABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('nis', 'nishtha', 'nis@gmail.com', '12345', '189,nimri', '123'),
('rashi', 'rashi', 'rashi@gmail.com', '878996545', 'delhi', '444'),
('shrish', 'Shrishti', 'shrishti@gmail.com', '98765432', 'khandwa, Madhya Pradesh', '999'),
('shru', 'Shruti', 'shru@gmail.com', '98876656', 'Patna,Bihar', '000');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(52, 70, 'Tea', 20, 1, '2023-03-23', 'shr', 2),
(53, 60, 'Chocolate Hazelnut Truffle', 99, 5, '2023-03-30', 'shr', 3),
(54, 69, 'Coffee', 25, 7, '2023-03-30', 'nis', 2),
(55, 62, 'Spring Rolls', 65, 1, '2023-04-01', 'shrish', 2),
(56, 70, 'Tea', 20, 4, '2023-04-01', 'nis', 2),
(57, 70, 'Tea', 20, 1, '2023-04-01', 'nis', 2),
(58, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2023-04-01', 'shr', 3),
(60, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2023-04-02', 'nis', 1),
(61, 71, 'Samosa', 40, 3, '2023-04-17', 'shrish', 1),
(62, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(63, 72, 'Paneer Tikka', 45, 2, '2023-04-14', 'shr', 3),
(64, 71, 'Samosa', 40, 3, '2023-04-11', 'shr', 3),
(65, 70, 'Tea', 20, 4, '2019-04-17', 'ckumar', 2),
(66, 72, 'Paneer Pakora', 45, 2, '2019-04-17', 'ckumar', 2),
(67, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2019-04-18', 'ckumar', 3),
(68, 71, 'Samosa', 40, 1, '2023-04-01', 'ckumar', 2),
(69, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2023-04-12', 'nis', 3),
(70, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2023-04-12', 'nis', 3),
(71, 73, 'Puff', 35, 1, '2023-04-12', 'shr', 2),
(72, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2023-04-12', 'nis', 1),
(73, 70, 'Tea', 60, 1, '2023-04-12', 'shrish', 4),
(74, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2023-04-12', 'nis', 1),
(75, 58, 'Juicy Masala Paneer Kathi Roll', 40, 1, '2023-04-13', 'nis', 1),
(76, 69, 'Coffee', 25, 1, '2023-04-13', 'nis', 2),
(77, 62, 'Spring Rolls', 65, 1, '2023-04-13', 'nis', 2),
(78, 71, 'Samosa', 40, 1, '2023-04-13', 'nis', 2),
(79, 62, 'Spring Rolls', 65, 1, '2023-04-13', 'nis', 2),
(80, 60, 'Chocolate Truffle', 120, 1, '2023-04-13', 'nis', 1),
(81, 70, 'Tea', 20, 1, '2023-04-13', 'nis', 3),
(82, 60, 'Chocolate Truffle', 120, 1, '2023-04-13', 'nis', 1),
(83, 70, 'Tea', 20, 1, '2023-04-13', 'nis', 3),
(84, 77, 'Pizza', 200, 1, '2023-04-13', 'nis', 4),
(85, 78, 'French Fries', 75, 1, '2023-04-13', 'nis', 4),
(86, 60, 'Chocolate Truffle', 120, 1, '2023-04-25', 'nis', 1);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Fun&Frolic', 'F&F@gmail.com', '7998562145', 'delhi', 'nis'),
(2, 'Mukteshwari', 'muku@restaurant.com', '9887546821', 'Tonk,jaipur', 'shru'),
(3, 'Shanu', 'Shanu@restaurant.com', '7778564231', 'Jaipur', 'shrish'),
(4, 'Spicy Bite', 'spicy@gmail.com', '09487810674', 'Tonk,jaipur', 'rashi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;