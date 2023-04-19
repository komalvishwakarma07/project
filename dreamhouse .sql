-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 11:14 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dreamhouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_area`
--

CREATE TABLE `db_area` (
  `id` int(11) NOT NULL,
  `areaname` varchar(30) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_area`
--

INSERT INTO `db_area` (`id`, `areaname`, `city_id`) VALUES
(2, 'Vesu', 3),
(3, 'HATHITAL', 4),
(5, 'vijay Nagar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_booking`
--

CREATE TABLE `db_booking` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `contactno` int(11) NOT NULL,
  `replay` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `enquiryd` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_booking`
--

INSERT INTO `db_booking` (`id`, `seller_id`, `buyer_id`, `property_id`, `contactno`, `replay`, `message`, `enquiryd`) VALUES
(1, 15, 22, 5, 2147483647, 'yes', 'test', '2023-04-17');

-- --------------------------------------------------------

--
-- Table structure for table `db_city`
--

CREATE TABLE `db_city` (
  `id` int(11) NOT NULL,
  `city_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_city`
--

INSERT INTO `db_city` (`id`, `city_name`) VALUES
(3, 'SURAT'),
(4, 'DELHI'),
(5, 'Mumbai'),
(6, 'Bhopal');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(40) NOT NULL,
  `first_name` varchar(40) NOT NULL,
  `last_name` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `first_name`, `last_name`, `email`, `message`) VALUES
(1, 'kashish', 'singh', 'kashish@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `db_properties`
--

CREATE TABLE `db_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `society_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `resident_id` int(11) NOT NULL,
  `properties_type_id` int(11) NOT NULL,
  `size` varchar(11) NOT NULL,
  `price` int(11) NOT NULL,
  `propertyimage` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL,
  `allowance` varchar(30) NOT NULL,
  `Beds` int(100) NOT NULL,
  `Baths` int(100) NOT NULL,
  `Garages` int(100) NOT NULL,
  `feature` varchar(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `property_des` varchar(2000) NOT NULL,
  `g1` varchar(1000) NOT NULL,
  `g2` varchar(1000) NOT NULL,
  `g3` varchar(1000) NOT NULL,
  `g4` varchar(1000) NOT NULL,
  `g5` varchar(1000) NOT NULL,
  `video` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_properties`
--

INSERT INTO `db_properties` (`id`, `user_id`, `society_id`, `city_id`, `area_id`, `resident_id`, `properties_type_id`, `size`, `price`, `propertyimage`, `status`, `allowance`, `Beds`, `Baths`, `Garages`, `feature`, `date`, `property_des`, `g1`, `g2`, `g3`, `g4`, `g5`, `video`) VALUES
(6, 25, 2, 4, 5, 3, 3, '350m', 15000, 'property-1.jpg', 'RENT', '', 3, 2, 2, '', '2023-04-09', '', '', '', '', '', '', ''),
(7, 10, 3, 3, 2, 1, 2, '450m', 100000, 'property-3.jpg', 'SELL', '', 2, 1, 1, '', '2023-04-09', '', '', '', '', '', '', ''),
(10, 27, 5, 6, 2, 1, 3, '600m', 30000, 'property-6.jpg', 'RENT', '', 3, 2, 2, '', '2023-04-09', '', '', '', '', '', '', ''),
(33, 15, 5, 3, 3, 1, 3, '450m', 30000, 'property-6.jpg', 'RENT', '', 3, 2, 1, 'Balcony,Pet Friendly,Barbeque,Fire Alarm,Modern Kitchen,Dryer,Heating,Pool,Elevator', '2023-04-11', 'hello', 'b-8.jpg', 'b-6.jpg', 'b-12.jpg', 'property-4.jpg', 'slide-1.jpg', 'pro1.mp4'),
(34, 15, 2, 4, 2, 1, 3, '450m', 30000, 'property-1.jpg', 'SELL', '', 3, 2, 2, 'center cooling,Pet Friendly,Barbeque,Fire Alarm,Modern Kitchen,Dryer,Heating,Pool,Elevator', '2023-04-11', 'hello', 'property-4.jpg', 'b-12.jpg', 'property-3.jpg', 'slide-3.jpg', 'property-8.jpg', 'pro1.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `db_properties_types`
--

CREATE TABLE `db_properties_types` (
  `id` int(11) NOT NULL,
  `property_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_properties_types`
--

INSERT INTO `db_properties_types` (`id`, `property_type`) VALUES
(1, '1BHK'),
(2, '2BHK'),
(3, '3BHK');

-- --------------------------------------------------------

--
-- Table structure for table `db_rating`
--

CREATE TABLE `db_rating` (
  `id` int(11) NOT NULL,
  `properties_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_rating`
--

INSERT INTO `db_rating` (`id`, `properties_id`, `rating`, `message`, `date`, `user_id`, `status`, `photo`) VALUES
(1, 5, 4, 'nhhggh nbgjbj xdxedsb xddxrd cffdt fctftgf', '2023-04-05 20:49:51', 22, 'approve', 'b-6.jpg'),
(2, 6, 3, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras aliquam, quam congue dictum luctus, la', '2023-04-05 20:49:51', 22, 'unapprove', 'b-8.jpg'),
(4, 10, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras aliquam, quam congue dictum luctus, lacus magna congue ante, in finibus dui sapien eu dolor. Integer tincidunt suscipit erat, nec laoreet ipsum vestibulum sed.', '2023-04-05 20:49:51', 14, 'approve', 'b-12.jpg'),
(8, 30, 5, 'good ', '2023-04-09 22:45:23', 22, '0', 'property-2.jpg'),
(9, 10, 3, 'goood', '2023-04-12 11:27:08', 22, 'approve', 'slide-3.jpg'),
(10, 33, 5, 'nice', '2023-04-12 20:40:30', 15, '0', 'b-12.jpg'),
(11, 33, 5, 'nice', '2023-04-12 20:54:40', 22, 'approve', 'property-8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `db_resident_types`
--

CREATE TABLE `db_resident_types` (
  `id` int(11) NOT NULL,
  `resident_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_resident_types`
--

INSERT INTO `db_resident_types` (`id`, `resident_type`) VALUES
(1, 'FARM_HOUSE'),
(3, 'ROW_HOUSE');

-- --------------------------------------------------------

--
-- Table structure for table `db_role`
--

CREATE TABLE `db_role` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_role`
--

INSERT INTO `db_role` (`id`, `name`) VALUES
(1, 'Buyer'),
(2, 'Seller');

-- --------------------------------------------------------

--
-- Table structure for table `db_society`
--

CREATE TABLE `db_society` (
  `id` int(11) NOT NULL,
  `society_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_society`
--

INSERT INTO `db_society` (`id`, `society_name`) VALUES
(1, 'kailsh nagar'),
(2, 'ganesh nagar'),
(3, 'Navacomplex'),
(5, 'Vijay nagar society');

-- --------------------------------------------------------

--
-- Table structure for table `db_users`
--

CREATE TABLE `db_users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `profile` varchar(30) NOT NULL,
  `pincode` int(11) NOT NULL,
  `conatct_no` int(100) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_users`
--

INSERT INTO `db_users` (`id`, `name`, `email`, `password`, `profile`, `pincode`, `conatct_no`, `role_id`) VALUES
(3, '', 'admin@gmail.com', '111', '', 0, 0, 0),
(9, 'anuj', 'anuj@gmail.com', '999', 'about-2.jpg', 111111, 2147483647, 2),
(10, 'kashish singh', 'kashishsb2000@gmail.com', '8', 'kashish.jpg', 39221, 2147483647, 2),
(12, 'chirag', 'chirag@gmail.com', '123', 'avatar1.jpg', 312233, 2147483647, 1),
(13, 'kashish singh', 'k@gmail.com', '123', 'avatar1.jpg', 998877, 2147483647, 1),
(14, 'komal', 'komal@gmail.com', '123', 'adminimg.jpg', 998877, 99889977, 1),
(15, 'Mayank Thakur', 'm@gmail.com', '888', 'agent-3.jpg', 324422, 2147483647, 2),
(22, 'Dimpi singh', 'dimpi@gmail.com', '333', 'agent-7.jpg', 75546, 675532334, 1),
(25, 'shailendra singh', 'sh@gmail.com', '444', 'agent-6.jpg', 43432, 567645355, 2),
(26, 'Ruju singh', 'ruju@gmail.com', '555', 'agent-4.jpg', 89876, 78653346, 2),
(27, 'kiran singh', 'kirna@gmail.com', '222', 'agent-7.jpg', 908777, 563327764, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_area`
--
ALTER TABLE `db_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_booking`
--
ALTER TABLE `db_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_city`
--
ALTER TABLE `db_city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_properties`
--
ALTER TABLE `db_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_properties_types`
--
ALTER TABLE `db_properties_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_rating`
--
ALTER TABLE `db_rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_resident_types`
--
ALTER TABLE `db_resident_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_role`
--
ALTER TABLE `db_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_society`
--
ALTER TABLE `db_society`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_users`
--
ALTER TABLE `db_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_area`
--
ALTER TABLE `db_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_booking`
--
ALTER TABLE `db_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_city`
--
ALTER TABLE `db_city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_properties`
--
ALTER TABLE `db_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `db_properties_types`
--
ALTER TABLE `db_properties_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_rating`
--
ALTER TABLE `db_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `db_resident_types`
--
ALTER TABLE `db_resident_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_role`
--
ALTER TABLE `db_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `db_society`
--
ALTER TABLE `db_society`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `db_users`
--
ALTER TABLE `db_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
