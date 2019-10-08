-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 08, 2019 at 01:50 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homeSecure_Features`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_colors`
--

CREATE TABLE `tbl_colors` (
  `ID` int(11) NOT NULL,
  `Variations` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_colors`
--

INSERT INTO `tbl_colors` (`ID`, `Variations`) VALUES
(1, 'White, Black'),
(2, 'Mat Black, Black'),
(3, 'Gray, Black');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE `tbl_languages` (
  `ID` int(11) NOT NULL,
  `Categories` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`ID`, `Categories`) VALUES
(1, 'English'),
(2, 'French'),
(3, 'Indian'),
(4, 'Korean'),
(5, 'Spanish');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sensors`
--

CREATE TABLE `tbl_sensors` (
  `ID` int(11) NOT NULL,
  `Functions` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_sensors`
--

INSERT INTO `tbl_sensors` (`ID`, `Functions`) VALUES
(1, 'Time'),
(2, 'Dates'),
(3, 'Temperature'),
(4, 'Humidity'),
(5, 'Occupancy'),
(6, 'Ambient Light');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specs`
--

CREATE TABLE `tbl_specs` (
  `ID` int(11) NOT NULL,
  `Height` varchar(10) COLLATE utf8_bin NOT NULL,
  `Weight` varchar(10) COLLATE utf8_bin NOT NULL,
  `Thickness` varchar(10) COLLATE utf8_bin NOT NULL,
  `ScreenWeight` varchar(10) COLLATE utf8_bin NOT NULL,
  `ScreenWideness` varchar(10) COLLATE utf8_bin NOT NULL,
  `Display` varchar(10) COLLATE utf8_bin NOT NULL,
  `Materials` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_specs`
--

INSERT INTO `tbl_specs` (`ID`, `Height`, `Weight`, `Thickness`, `ScreenWeight`, `ScreenWideness`, `Display`, `Materials`) VALUES
(1, '14cm', '180g', '2cm', '80g', '15cm', '24-bit LED', 'Plastic, Glass');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wireless`
--

CREATE TABLE `tbl_wireless` (
  `ID` int(11) NOT NULL,
  `Options` varchar(40) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_wireless`
--

INSERT INTO `tbl_wireless` (`ID`, `Options`) VALUES
(1, '802.11 a/b/g/n (2.4 GHz/ 5 GHz) Wi-Fi'),
(2, '802.15.4(2.4GHz)'),
(3, 'Bluetooth');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_colors`
--
ALTER TABLE `tbl_colors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_languages`
--
ALTER TABLE `tbl_languages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_sensors`
--
ALTER TABLE `tbl_sensors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_specs`
--
ALTER TABLE `tbl_specs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_wireless`
--
ALTER TABLE `tbl_wireless`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_colors`
--
ALTER TABLE `tbl_colors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_languages`
--
ALTER TABLE `tbl_languages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_sensors`
--
ALTER TABLE `tbl_sensors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_specs`
--
ALTER TABLE `tbl_specs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_wireless`
--
ALTER TABLE `tbl_wireless`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
