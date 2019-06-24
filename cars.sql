-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2019 at 01:32 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_models`
--

CREATE TABLE `car_models` (
  `model_id` int(250) NOT NULL,
  `id` int(250) NOT NULL,
  `model_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_models`
--

INSERT INTO `car_models` (`model_id`, `id`, `model_name`) VALUES
(1, 1, 'WagonR'),
(2, 1, 'Dezire'),
(3, 1, 'Belano'),
(4, 1, 'Brezza'),
(5, 1, 'Aulto'),
(6, 2, 'Indica'),
(7, 2, 'Tiago'),
(8, 2, 'Aria'),
(9, 3, 'Fabia'),
(10, 3, 'Rapid'),
(11, 3, 'Octavia'),
(12, 3, 'Elantra'),
(13, 4, 'Polo'),
(14, 4, 'Jetta'),
(15, 4, 'Corrado'),
(16, 4, 'Golf'),
(17, 5, 'Accent'),
(18, 5, 'Sonata'),
(19, 5, 'I10'),
(20, 5, 'Atos');

-- --------------------------------------------------------

--
-- Table structure for table `car_variants`
--

CREATE TABLE `car_variants` (
  `variant_id` int(250) NOT NULL,
  `model_id` int(250) NOT NULL,
  `variants_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_variants`
--

INSERT INTO `car_variants` (`variant_id`, `model_id`, `variants_name`) VALUES
(1, 1, 'VDI'),
(2, 1, 'ZXI'),
(3, 2, 'One Year'),
(4, 2, 'Two Year');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` int(250) NOT NULL,
  `company_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `company_name`) VALUES
(1, 'Maruti'),
(2, 'Tata'),
(3, 'Skoda'),
(4, 'volkswagen'),
(5, 'Hyundai');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_models`
--
ALTER TABLE `car_models`
  ADD PRIMARY KEY (`model_id`);

--
-- Indexes for table `car_variants`
--
ALTER TABLE `car_variants`
  ADD PRIMARY KEY (`variant_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_models`
--
ALTER TABLE `car_models`
  MODIFY `model_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `car_variants`
--
ALTER TABLE `car_variants`
  MODIFY `variant_id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
