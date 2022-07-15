-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 01:05 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parthiv`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `advertisement_id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `image` longblob NOT NULL,
  `description` varchar(500) NOT NULL,
  `advertiser_id` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`advertisement_id`, `title`, `image`, `description`, `advertiser_id`) VALUES
(1, 'Firstadd', 0x696d616765732f38323631643338333334646330666362313631373030373731376632666535633733393737363131636535633235366131653038383763333638383165356535747261696e2e6a7067, 'Nothing', 'A9904091590'),
(2, 'Secondadd', 0x696d616765732f39343762336266643631616535666238376231363332643830376564343431613232346431323765343264613939383831633037343731383861323466343163655f6c6561726e2e6a7067, 'This is second adv.', 'A9904091590');

-- --------------------------------------------------------

--
-- Table structure for table `advertiser`
--

CREATE TABLE `advertiser` (
  `advertiser_id` varchar(500) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `mobile_no` varchar(500) NOT NULL,
  `Email_id` varchar(500) NOT NULL,
  `date_of_join` date NOT NULL,
  `city` varchar(500) NOT NULL,
  `society` varchar(500) NOT NULL,
  `taluka` varchar(500) NOT NULL,
  `district` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `house_no` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advertiser`
--

INSERT INTO `advertiser` (`advertiser_id`, `Name`, `mobile_no`, `Email_id`, `date_of_join`, `city`, `society`, `taluka`, `district`, `state`, `house_no`) VALUES
('A9904091590', 'Het Patel', '9904091590', 'hetpatel@gmail.com', '2022-07-08', 'lunawada', 'charel', 'lunawada', 'mahisagar', 'GUJARAT', '45');

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

CREATE TABLE `bank_details` (
  `account_no` varchar(500) NOT NULL,
  `bank_name` varchar(500) NOT NULL,
  `bank_branch` varchar(500) NOT NULL,
  `IFSC code` varchar(500) NOT NULL,
  `Person_id` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`account_no`, `bank_name`, `bank_branch`, `IFSC code`, `Person_id`) VALUES
('123', 'xyx', 'xyx', '12ifsc', 'F9904091587');

-- --------------------------------------------------------

--
-- Table structure for table `crop`
--

CREATE TABLE `crop` (
  `crop_id` int(11) NOT NULL,
  `C_name` varchar(500) NOT NULL,
  `C_image` longblob NOT NULL,
  `C_description` varchar(500) NOT NULL,
  `breed` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `cost_per_unit` varchar(500) NOT NULL,
  `Farmer_id` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `crop`
--

INSERT INTO `crop` (`crop_id`, `C_name`, `C_image`, `C_description`, `breed`, `quantity`, `date`, `cost_per_unit`, `Farmer_id`) VALUES
(1, 'Crop1', 0x696d616765732f653836343535376336316235323864643831636633373131363030336565393863726f70312e6a7067, 'We  provide good quality product.', 'Corn', '123', '2022-07-08', '200', 'F9904091587');

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `Farmer_id` varchar(500) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `mobile_no` varchar(500) NOT NULL,
  `Email_id` varchar(500) NOT NULL,
  `Date_of_join` date NOT NULL,
  `Subsidy` int(11) NOT NULL,
  `city` varchar(500) NOT NULL,
  `society` varchar(500) NOT NULL,
  `taluka` varchar(500) NOT NULL,
  `district` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `house_no` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`Farmer_id`, `Name`, `mobile_no`, `Email_id`, `Date_of_join`, `Subsidy`, `city`, `society`, `taluka`, `district`, `state`, `house_no`) VALUES
('F9904091587', 'Parhiv Patel', '9904091587', 'parthivpatel@gmail.com', '2022-07-08', 1, 'lunawada', 'charel', 'lunawada', 'mahisagar', 'GUJARAT', '45');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `mobile_no` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `last_visit` date NOT NULL,
  `Person_id` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`mobile_no`, `password`, `last_visit`, `Person_id`) VALUES
('9904091587', 'Parthiv12', '2022-07-10', 'F9904091587'),
('9904091588', 'Parthiv12', '2022-07-08', 'S9904091588'),
('9904091589', 'Parthiv12', '2022-07-08', 'W9904091589'),
('9904091590', 'Parthiv12', '2022-07-08', 'A9904091590');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` varchar(500) NOT NULL,
  `type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `type`) VALUES
('A9904091590', 'advertiser'),
('F9904091587', 'farmer'),
('S9904091588', 'seller'),
('W9904091589', 'whole seller');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_id` int(11) DEFAULT NULL,
  `P_name` varchar(500) NOT NULL,
  `P_image` longblob NOT NULL,
  `P_description` varchar(500) NOT NULL,
  `subsidy_rate` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `cost_per_unit` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `seller_id` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_id`, `P_name`, `P_image`, `P_description`, `subsidy_rate`, `quantity`, `cost_per_unit`, `date`, `seller_id`) VALUES
(0, 'Product1', 0x696d616765732f316263623662616432326263393462653861356232396463646664616266343363726f70322e6a7067, 'We provide our best.', '14', '88', '52', '2022-07-08', 'S9904091588');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `seller_id` varchar(500) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `mobile_no` varchar(500) NOT NULL,
  `Email_id` varchar(500) NOT NULL,
  `Date_of_join` date NOT NULL,
  `city` varchar(500) NOT NULL,
  `society` varchar(500) NOT NULL,
  `taluka` varchar(500) NOT NULL,
  `district` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `house_no` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`seller_id`, `Name`, `mobile_no`, `Email_id`, `Date_of_join`, `city`, `society`, `taluka`, `district`, `state`, `house_no`) VALUES
('S9904091588', 'Neel Patel', '9904091588', 'neelpatel@gmail.com', '2022-07-08', 'lunawada', 'charel', 'lunawada', 'mahisagar', 'GUJARAT', '45');

-- --------------------------------------------------------

--
-- Table structure for table `sell_crop`
--

CREATE TABLE `sell_crop` (
  `Farmer_id` varchar(500) NOT NULL,
  `whole_seller_id` varchar(500) NOT NULL,
  `crop_id` varchar(500) NOT NULL,
  `total_cost` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sell_crop`
--

INSERT INTO `sell_crop` (`Farmer_id`, `whole_seller_id`, `crop_id`, `total_cost`, `quantity`, `date`) VALUES
('F9904091587', 'W9904091589', '1', '15600', '78', '2022-07-08');

-- --------------------------------------------------------

--
-- Table structure for table `sell_prod`
--

CREATE TABLE `sell_prod` (
  `Farmer_id` varchar(500) NOT NULL,
  `seller_id` varchar(500) NOT NULL,
  `product_id` varchar(500) NOT NULL,
  `total_cost` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sell_prod`
--

INSERT INTO `sell_prod` (`Farmer_id`, `seller_id`, `product_id`, `total_cost`, `quantity`, `date`) VALUES
('F9904091587', 'S9904091588', '0', '536.64', '12', '2022-07-08');

-- --------------------------------------------------------

--
-- Table structure for table `whole_seller`
--

CREATE TABLE `whole_seller` (
  `Whole_seller_id` varchar(500) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `mobile_no` varchar(500) NOT NULL,
  `Email_id` varchar(500) NOT NULL,
  `Date_of_join` date NOT NULL,
  `city` varchar(500) NOT NULL,
  `society` varchar(500) NOT NULL,
  `taluka` varchar(500) NOT NULL,
  `district` varchar(500) NOT NULL,
  `state` varchar(500) NOT NULL,
  `house_no` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `whole_seller`
--

INSERT INTO `whole_seller` (`Whole_seller_id`, `Name`, `mobile_no`, `Email_id`, `Date_of_join`, `city`, `society`, `taluka`, `district`, `state`, `house_no`) VALUES
('W9904091589', 'Hrushi Patel', '9904091589', 'hrushipatel@gmail.com', '2022-07-08', 'lunawada', 'charel', 'lunawada', 'mahisagar', 'GUJARAT', '45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`advertisement_id`);

--
-- Indexes for table `advertiser`
--
ALTER TABLE `advertiser`
  ADD PRIMARY KEY (`advertiser_id`);

--
-- Indexes for table `bank_details`
--
ALTER TABLE `bank_details`
  ADD PRIMARY KEY (`account_no`);

--
-- Indexes for table `crop`
--
ALTER TABLE `crop`
  ADD PRIMARY KEY (`crop_id`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`Farmer_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`mobile_no`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `whole_seller`
--
ALTER TABLE `whole_seller`
  ADD PRIMARY KEY (`Whole_seller_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `advertisement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crop`
--
ALTER TABLE `crop`
  MODIFY `crop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
