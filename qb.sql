-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2020 at 07:43 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bno` int(11) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `amt` double NOT NULL,
  `pdate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bno`, `cname`, `amt`, `pdate`) VALUES
(1, 'sami', 54, '2020-02-27'),
(2, 'subha', 32, '2020-02-29'),
(3, 'raja', 24, '2020-02-29'),
(4, 'sita', 54, '2020-02-29'),
(5, 'tiger', 106, '2020-02-29');

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE `cash` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mno` bigint(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash`
--

INSERT INTO `cash` (`id`, `name`, `mno`, `address`, `email`, `password`) VALUES
(1, 'subhaa', 4845646546, 'ctc', 's@gmail.com', 'subha123'),
(7, 'ram12', 8796543210, 'bbsr', 'r@gmail.com', 'ram123');

-- --------------------------------------------------------

--
-- Table structure for table `customer_bill`
--

CREATE TABLE `customer_bill` (
  `sl_no` int(11) NOT NULL,
  `BILL_ID` int(50) NOT NULL,
  `C_NAME` varchar(255) NOT NULL,
  `PHONE` bigint(50) NOT NULL,
  `DRUG's_NAME` varchar(255) NOT NULL,
  `QUANTITY` int(50) NOT NULL,
  `PRICE` int(50) NOT NULL,
  `DATE` varchar(255) NOT NULL,
  `TIME` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_bill`
--

INSERT INTO `customer_bill` (`sl_no`, `BILL_ID`, `C_NAME`, `PHONE`, `DRUG's_NAME`, `QUANTITY`, `PRICE`, `DATE`, `TIME`) VALUES
(5, 1, 'sami', 9876543210, 'asd', 3, 30, '2020-02-27', '07:51:34 PM'),
(6, 1, 'sami', 9876543210, 'qw', 2, 24, '2020-02-27', '07:51:34 PM'),
(8, 2, 'subha', 8795462130, 'asd', 2, 20, '2020-02-29', '11:06:43 AM'),
(9, 2, 'subha', 8795462130, 'qw', 1, 12, '2020-02-29', '11:06:43 AM'),
(10, 3, 'raja', 4567891230, 'qw', 2, 24, '2020-02-29', '11:13:39 AM'),
(11, 4, 'sita', 9874123650, 'qw', 2, 24, '2020-02-29', '11:19:06 AM'),
(12, 4, 'sita', 9874123650, 'asd', 3, 30, '2020-02-29', '11:19:06 AM'),
(13, 5, 'tiger', 7504949787, 'nam cold', 2, 30, '2020-02-29', '12:15:34 PM'),
(14, 5, 'tiger', 7504949787, 'qw', 3, 36, '2020-02-29', '12:15:34 PM'),
(15, 5, 'tiger', 7504949787, 'asd', 4, 40, '2020-02-29', '12:15:34 PM');

-- --------------------------------------------------------

--
-- Table structure for table `drugs_stock`
--

CREATE TABLE `drugs_stock` (
  `ID` int(11) NOT NULL,
  `MED_NAME` varchar(255) NOT NULL,
  `MED_COMPANY` varchar(255) NOT NULL,
  `MED_TYPE` varchar(255) NOT NULL,
  `PRD_DATE` varchar(255) NOT NULL,
  `EXP_DATE` varchar(255) NOT NULL,
  `LOCATION` varchar(255) NOT NULL,
  `QUANTITY` int(50) NOT NULL,
  `PRICE` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drugs_stock`
--

INSERT INTO `drugs_stock` (`ID`, `MED_NAME`, `MED_COMPANY`, `MED_TYPE`, `PRD_DATE`, `EXP_DATE`, `LOCATION`, `QUANTITY`, `PRICE`) VALUES
(1, 'qw', 'as', 'Injection', '02-02-2019', '01-01-2020', 'B-Down', 20, 12),
(2, 'asd', 'zxcty', 'powder', '07-06-2019', '29-02-2020', 'D-Right', 87, 10),
(3, 'nam cold', 'wxyz', 'tablet', '03-03-2019', '03-06-2023', 'A-Right', 53, 15);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_stock`
--

CREATE TABLE `medicine_stock` (
  `m_id` int(11) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `m_company` varchar(255) NOT NULL,
  `m_unit` varchar(255) NOT NULL,
  `prd_date` varchar(255) NOT NULL,
  `exp_date` varchar(255) NOT NULL,
  `drugs_place` varchar(255) NOT NULL,
  `m_qunt` int(50) NOT NULL,
  `m_price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_stock`
--

INSERT INTO `medicine_stock` (`m_id`, `m_name`, `m_company`, `m_unit`, `prd_date`, `exp_date`, `drugs_place`, `m_qunt`, `m_price`) VALUES
(2, 'awerty', 'zxc', 'select', '23-02-2020', '24-08-2024', 'I-Up', 40, 15),
(3, 'tyui', 'jkl', '1', '26-01-2020', '28-02-2021', '', 30, 20),
(4, 'zz', 'xx', 'tablet', '07-06-2013', '22-03-2022', '', 90, 40),
(5, 'eee', 'rrrr', 'tablet', '04-06-2018', '05-06-2020', '', 60, 35),
(6, 'kul', 'lll', 'Injection', '03-04-2019', '22-04-2023', '', 55, 45),
(7, 'aaa', 'ssss', 'Injection', '03-11-2018', '29-10-2022', '', 20, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bno`);

--
-- Indexes for table `cash`
--
ALTER TABLE `cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_bill`
--
ALTER TABLE `customer_bill`
  ADD PRIMARY KEY (`sl_no`);

--
-- Indexes for table `drugs_stock`
--
ALTER TABLE `drugs_stock`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `medicine_stock`
--
ALTER TABLE `medicine_stock`
  ADD PRIMARY KEY (`m_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_bill`
--
ALTER TABLE `customer_bill`
  MODIFY `sl_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
