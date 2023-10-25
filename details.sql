-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 11:03 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `reg_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `name`, `email`, `reg_date`) VALUES
(1, 'Akanksha Jain', 'akankshajain@gmail.com', '2022-04-01'),
(2, 'Anjali Kulshreshtha', 'anjalikul@gmail.com', '2022-04-02'),
(3, 'Sunil Maurya', 'sunil@gmail.com', '2022-04-03'),
(4, 'Keerti Sharma', 'keerti@gmail.com', '2022-04-04'),
(5, 'Anurag Srivastva', 'anusri@gmail.com', '2022-04-05'),
(6, 'Shivam Kumar', 'shivam@gmail.com', '2022-04-06'),
(7, 'Sunil Kumar', 'sunilk@gmail.com', '2022-04-07'),
(8, 'Anurag Gupta', 'anug@gmail.com', '2022-04-07'),
(9, 'Vishal Gupta', 'vishalg@gmail.com', '2022-04-08'),
(10, 'Akash Sharma', 'akash@gmail.com', '2022-04-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
