-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2026 at 07:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinestore`
--
CREATE DATABASE IF NOT EXISTS `onlinestore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onlinestore`;

-- --------------------------------------------------------

--
-- Table structure for table `bronzecustomers`
--

CREATE TABLE IF NOT EXISTS `bronzecustomers` (
  `customerId` int(11) NOT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bronzecustomers`
--

INSERT INTO `bronzecustomers` (`customerId`, `fullName`, `email`, `city`) VALUES
(1, 'Juan Dela Cruz', 'juan@gmail.com', 'Quezon City'),
(2, 'Maria Santos', 'maria@gmail.com', 'Manila'),
(3, 'Pedro Reyes', 'pedro@gmail.com', 'Cebu'),
(4, '', 'ana@gmail.com', 'Cebu'),
(5, 'maria santos', 'MARIA@GMAIL.COM', 'manila');

-- --------------------------------------------------------

--
-- Table structure for table `bronzeorderitems`
--

CREATE TABLE IF NOT EXISTS `bronzeorderitems` (
  `orderItemId` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `orderId` (`orderId`),
  KEY `productId` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bronzeorderitems`
--

INSERT INTO `bronzeorderitems` (`orderItemId`, `orderId`, `productId`, `quantity`) VALUES
(9001, 5001, 101, 2),
(9002, 5002, 102, 1),
(9003, 5003, 103, 1),
(9004, 5004, 104, 0),
(9005, 5005, 105, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bronzeorders`
--

CREATE TABLE IF NOT EXISTS `bronzeorders` (
  `orderId` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `customerId` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bronzeorders`
--

INSERT INTO `bronzeorders` (`orderId`, `customerId`, `orderDate`) VALUES
(5001, 1, '2026-01-10'),
(5002, 2, '2026-01-15'),
(5003, 3, '2026-01-20'),
(5004, 1, NULL),
(5005, 2, '2026-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `bronzeproducts`
--

CREATE TABLE IF NOT EXISTS `bronzeproducts` (
  `productId` int(11) NOT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bronzeproducts`
--

INSERT INTO `bronzeproducts` (`productId`, `productName`, `category`, `price`) VALUES
(101, 'Wireless Mouse', 'Electronics', 599.99),
(102, 'Keyboard', 'Electronics', 899.50),
(103, 'Monitor', 'Electronics', 1200.00),
(104, 'wireless keyboard', 'electronics', 600.00),
(105, 'Headset', NULL, 799.00);

-- --------------------------------------------------------

--
-- Table structure for table `golddimcustomer`
--

CREATE TABLE IF NOT EXISTS `golddimcustomer` (
  `customerKey` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customerKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `golddimcustomer`
--

INSERT INTO `golddimcustomer` (`customerKey`, `customerId`, `fullName`, `city`) VALUES
(1, 1, 'Juan Dela Cruz', 'Quezon City'),
(2, 2, 'Maria Santos', 'Manila'),
(3, 3, 'Pedro Reyes', 'Cebu'),
(4, 4, 'Ana Makapagal', 'Cebu '),
(5, 5, 'Maria Santos', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `golddimdate`
--

CREATE TABLE IF NOT EXISTS `golddimdate` (
  `dateKey` int(11) NOT NULL,
  `fullDate` date DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `monthName` varchar(20) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  PRIMARY KEY (`dateKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `golddimdate`
--

INSERT INTO `golddimdate` (`dateKey`, `fullDate`, `year`, `month`, `monthName`, `day`) VALUES
(20260110, '2026-01-10', 2026, 1, 'January', 10),
(20260115, '2026-01-15', 2026, 1, 'January', 15),
(20260120, '2026-01-20', 2026, 1, 'January', 20),
(20260201, '2026-02-01', 2026, 2, 'February', 1),
(20260205, '2026-02-05', 2026, 2, 'February', 5);

-- --------------------------------------------------------

--
-- Table structure for table `golddimproduct`
--

CREATE TABLE IF NOT EXISTS `golddimproduct` (
  `productKey` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`productKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `golddimproduct`
--

INSERT INTO `golddimproduct` (`productKey`, `productId`, `productName`, `category`, `price`) VALUES
(101, 101, 'Wireless Mouse', 'Electronics', 599.99),
(102, 102, 'Keyboard', 'Electronics', 899.50),
(103, 103, 'Monitor', 'Electronics', 1200.00),
(104, 104, 'Wireless Keyboard', 'Electronics', 600.00),
(105, 105, 'Headset', 'Electronics', 799.00);

-- --------------------------------------------------------

--
-- Table structure for table `goldfactsales`
--

CREATE TABLE IF NOT EXISTS `goldfactsales` (
  `salesKey` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `customerKey` int(11) DEFAULT NULL,
  `productKey` int(11) DEFAULT NULL,
  `dateKey` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitPrice` decimal(10,2) DEFAULT NULL,
  `totalAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`salesKey`),
  KEY `customerKey` (`customerKey`),
  KEY `productKey` (`productKey`),
  KEY `dateKey` (`dateKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goldfactsales`
--

INSERT INTO `goldfactsales` (`salesKey`, `orderId`, `customerKey`, `productKey`, `dateKey`, `quantity`, `unitPrice`, `totalAmount`) VALUES
(9001, 5001, 1, 101, 20260110, 2, 599.99, 1199.98),
(9002, 5002, 2, 102, 20260115, 1, 899.50, 899.50),
(9003, 5003, 3, 103, 20260120, 1, 1200.00, 1200.00),
(9004, 5004, 1, 104, 20260201, 1, 600.00, 600.00),
(9005, 5005, 2, 105, 20260205, 3, 799.00, 2397.00);

-- --------------------------------------------------------

--
-- Table structure for table `oltpcustomers`
--

CREATE TABLE IF NOT EXISTS `oltpcustomers` (
  `customerId` int(11) NOT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oltpcustomers`
--

INSERT INTO `oltpcustomers` (`customerId`, `fullName`, `email`, `city`) VALUES
(1, 'Juan Dela Cruz', 'juan@gmail.com', 'Quezon City'),
(2, 'Maria Santos', 'maria@gmail.com', 'Manila'),
(3, 'Pedro Reyes', 'pedro@gmail.com', 'Cebu'),
(4, '', 'ana@gmail.com', 'Cebu'),
(5, 'maria santos', 'MARIA@GMAIL.COM', 'manila');

-- --------------------------------------------------------

--
-- Table structure for table `oltporderitems`
--

CREATE TABLE IF NOT EXISTS `oltporderitems` (
  `orderItemId` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `orderId` (`orderId`),
  KEY `productId` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oltporderitems`
--

INSERT INTO `oltporderitems` (`orderItemId`, `orderId`, `productId`, `quantity`) VALUES
(9001, 5001, 101, 2),
(9002, 5002, 102, 1),
(9003, 5003, 103, 1),
(9004, 5004, 104, 0),
(9005, 5005, 105, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oltporders`
--

CREATE TABLE IF NOT EXISTS `oltporders` (
  `orderId` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `customerId` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oltporders`
--

INSERT INTO `oltporders` (`orderId`, `customerId`, `orderDate`) VALUES
(5001, 1, '2026-01-10'),
(5002, 2, '2026-01-15'),
(5003, 3, '2026-01-20'),
(5004, 1, NULL),
(5005, 2, '2026-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `oltpproducts`
--

CREATE TABLE IF NOT EXISTS `oltpproducts` (
  `productId` int(11) NOT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oltpproducts`
--

INSERT INTO `oltpproducts` (`productId`, `productName`, `category`, `price`) VALUES
(101, 'Wireless Mouse', 'Electronics', 599.99),
(102, 'Keyboard', 'Electronics', 899.50),
(103, 'Monitor', 'Electronics', 1200.00),
(104, 'wireless keyboard', 'electronics', 600.00),
(105, 'Headset', NULL, 799.00);

-- --------------------------------------------------------

--
-- Table structure for table `silvercustomers`
--

CREATE TABLE IF NOT EXISTS `silvercustomers` (
  `customerId` int(11) NOT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `silvercustomers`
--

INSERT INTO `silvercustomers` (`customerId`, `fullName`, `email`, `city`) VALUES
(1, 'Juan Dela Cruz', 'juan@gmail.com', 'Quezon City'),
(2, 'Maria Santos', 'maria@gmail.com', 'Manila'),
(3, 'Pedro Reyes', 'pedro@gmail.com', 'Cebu'),
(4, 'Ana Makapagal', 'ana@gmail.com', 'Cebu '),
(5, 'Maria Santos', 'maria@gmail.com', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `silverorderitems`
--

CREATE TABLE IF NOT EXISTS `silverorderitems` (
  `orderItemId` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `orderId` (`orderId`),
  KEY `productId` (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `silverorderitems`
--

INSERT INTO `silverorderitems` (`orderItemId`, `orderId`, `productId`, `quantity`) VALUES
(9001, 5001, 101, 2),
(9002, 5002, 102, 1),
(9003, 5003, 103, 1),
(9004, 5004, 104, 1),
(9005, 5005, 105, 3);

-- --------------------------------------------------------

--
-- Table structure for table `silverorders`
--

CREATE TABLE IF NOT EXISTS `silverorders` (
  `orderId` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `customerId` (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `silverorders`
--

INSERT INTO `silverorders` (`orderId`, `customerId`, `orderDate`) VALUES
(5001, 1, '2026-01-10'),
(5002, 2, '2026-01-15'),
(5003, 3, '2026-01-20'),
(5004, 1, '2026-02-01'),
(5005, 2, '2026-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `silverproducts`
--

CREATE TABLE IF NOT EXISTS `silverproducts` (
  `productId` int(11) NOT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `silverproducts`
--

INSERT INTO `silverproducts` (`productId`, `productName`, `category`, `price`) VALUES
(101, 'Wireless Mouse', 'Electronics', 599.99),
(102, 'Keyboard', 'Electronics', 899.50),
(103, 'Monitor', 'Electronics', 1200.00),
(104, 'Wireless Keyboard', 'Electronics', 600.00),
(105, 'Headset', 'Electronics', 799.00);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bronzeorderitems`
--
ALTER TABLE `bronzeorderitems`
  ADD CONSTRAINT `bronzeorderitems_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `bronzeorders` (`orderId`),
  ADD CONSTRAINT `bronzeorderitems_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `bronzeproducts` (`productId`);

--
-- Constraints for table `bronzeorders`
--
ALTER TABLE `bronzeorders`
  ADD CONSTRAINT `bronzeorders_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `bronzecustomers` (`customerId`);

--
-- Constraints for table `goldfactsales`
--
ALTER TABLE `goldfactsales`
  ADD CONSTRAINT `goldfactsales_ibfk_1` FOREIGN KEY (`customerKey`) REFERENCES `golddimcustomer` (`customerKey`),
  ADD CONSTRAINT `goldfactsales_ibfk_2` FOREIGN KEY (`productKey`) REFERENCES `golddimproduct` (`productKey`),
  ADD CONSTRAINT `goldfactsales_ibfk_3` FOREIGN KEY (`dateKey`) REFERENCES `golddimdate` (`dateKey`);

--
-- Constraints for table `oltporderitems`
--
ALTER TABLE `oltporderitems`
  ADD CONSTRAINT `oltporderitems_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `oltporders` (`orderId`),
  ADD CONSTRAINT `oltporderitems_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `oltpproducts` (`productId`);

--
-- Constraints for table `oltporders`
--
ALTER TABLE `oltporders`
  ADD CONSTRAINT `oltporders_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `oltpcustomers` (`customerId`);

--
-- Constraints for table `silverorderitems`
--
ALTER TABLE `silverorderitems`
  ADD CONSTRAINT `silverorderitems_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `silverorders` (`orderId`),
  ADD CONSTRAINT `silverorderitems_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `silverproducts` (`productId`);

--
-- Constraints for table `silverorders`
--
ALTER TABLE `silverorders`
  ADD CONSTRAINT `silverorders_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `silvercustomers` (`customerId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
