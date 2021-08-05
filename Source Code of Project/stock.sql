-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2012 at 06:07 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_details`
--

CREATE TABLE IF NOT EXISTS `category_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(120) NOT NULL,
  `category_description` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `category_details`
--

INSERT INTO `category_details` (`id`, `category_name`, `category_description`) VALUES
(20, 'Malaria', ''),
(21, 'Cold', ''),
(22, 'Chest', ''),
(23, 'Anti Arsice', ''),
(24, 'Heart Diesease', ''),
(25, 'Liver', ''),
(26, 'Eyes', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE IF NOT EXISTS `customer_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(200) NOT NULL,
  `customer_address` varchar(500) NOT NULL,
  `customer_contact1` varchar(100) NOT NULL,
  `customer_contact2` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `customer_name`, `customer_address`, `customer_contact1`, `customer_contact2`, `balance`) VALUES
(1, 'Arif Medical Store', 'Hafiz Jamal, Multan', '9348948', '93849348', 1570),
(2, 'Mughal Medical ', 'Ghanta Ghar Multan', '09343849349', '90384948390', 0),
(3, 'Ahsan Medical Store', 'Hafiz Jamal Multan', '938493849', '039489384', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock_avail`
--

CREATE TABLE IF NOT EXISTS `stock_avail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `stock_avail`
--

INSERT INTO `stock_avail` (`id`, `name`, `quantity`) VALUES
(1, 'Dispreen', 0),
(2, 'Arcia', 34),
(3, 'Fasidar', 0),
(4, 'Nivacine', 0),
(5, 'Artium', 22),
(6, 'Maladar', 0),
(7, 'Besoqine', 0),
(8, 'Neaucuf', 0),
(9, 'Neaucuf', 0),
(10, 'Klurcid', 0),
(11, 'Aus mention', 0),
(12, '24trec', 0),
(13, 'Risix', 0),
(14, 'Anticel', 0),
(15, 'T-day', 0),
(16, 'Xy2al', 0),
(17, 'SKAB', 200),
(18, 'Suprax', 0),
(19, 'SKILAX', 370),
(20, 'Noviclar', 23),
(21, 'Cedrox', 88),
(22, 'ORIBRO', 0),
(23, 'optiZinc', 0),
(24, 'optiZinc', 0),
(25, 'Ventomax', 0),
(26, 'Ecotec', 0),
(27, 'Enervit', 0),
(28, 'ponstan', 0),
(29, 'sfd', 3),
(30, 'sdf', 9),
(31, 'ponstan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stock_details`
--

CREATE TABLE IF NOT EXISTS `stock_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(120) NOT NULL,
  `stock_name` varchar(120) NOT NULL,
  `stock_quatity` int(11) NOT NULL,
  `supplier_id` varchar(250) NOT NULL,
  `company_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `category` varchar(120) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expire_date` datetime NOT NULL,
  `uom` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `stock_details`
--

INSERT INTO `stock_details` (`id`, `stock_id`, `stock_name`, `stock_quatity`, `supplier_id`, `company_price`, `selling_price`, `category`, `date`, `expire_date`, `uom`) VALUES
(2, 'SD1', 'Arcia', 0, 'peer sons pharma', '88.00', '99.00', 'malaria', '2011-11-07 17:40:14', '0000-00-00 00:00:00', ''),
(3, 'SD3', 'Fasidar', 0, 'peer sons pharma', '33.00', '50.00', 'malaria', '2011-11-07 17:40:51', '0000-00-00 00:00:00', ''),
(4, 'SD4', 'Nivacine', 0, 'haris', '66.00', '89.00', 'malaria', '2011-11-07 17:41:12', '0000-00-00 00:00:00', ''),
(5, 'SD5', 'Artium', 0, 'haris', '53.00', '99.00', 'malaria', '2011-11-07 17:41:34', '0000-00-00 00:00:00', ''),
(6, 'SD6', 'Maladar', 0, 'Sami', '23.00', '40.00', 'malaria', '2011-11-07 17:42:09', '0000-00-00 00:00:00', ''),
(7, 'SD7', 'Besoqine', 0, 'peer sons pharma', '150.00', '200.00', 'malaria', '2011-11-07 17:42:34', '0000-00-00 00:00:00', ''),
(8, 'SD8', 'Neaucuf', 0, 'sami', '22.00', '30.00', 'cold', '2011-11-07 17:43:42', '0000-00-00 00:00:00', ''),
(9, 'SD9', 'Neaucuf', 0, 'peer sons pharma', '55.00', '70.00', 'cold', '2011-11-07 17:44:22', '0000-00-00 00:00:00', ''),
(10, 'SD10', 'Klurcid', 0, 'haris', '34.00', '99.00', 'cold', '2011-11-07 17:44:47', '0000-00-00 00:00:00', ''),
(11, 'SD11', 'Aus mention', 0, 'haris', '93.00', '193.00', 'cold', '2011-11-07 17:45:19', '0000-00-00 00:00:00', ''),
(12, 'SD12', '24trec', 0, 'sami', '70.00', '99.00', 'anti Arsice', '2011-11-07 17:45:48', '0000-00-00 00:00:00', ''),
(13, 'SD13', 'Risix', 0, 'peer sons pharma', '34.00', '98.00', 'Anti Arsice', '2011-11-07 17:46:12', '0000-00-00 00:00:00', ''),
(14, 'SD14', 'Anticel', 0, 'Haris', '99.00', '193.00', 'Anti Arsice', '2011-11-07 17:46:53', '0000-00-00 00:00:00', ''),
(15, 'SD15', 'T-day', 0, 'Haris', '88.00', '100.00', 'Anti Arsice', '2011-11-07 17:47:28', '0000-00-00 00:00:00', ''),
(16, 'SD16', 'Xy2al', 0, 'Sami', '88.00', '100.00', 'Anti Arsice', '2011-11-07 17:48:02', '0000-00-00 00:00:00', ''),
(17, 'SD17', 'SKAB', 0, 'Sami', '33.00', '66.00', 'Chest', '2011-11-07 17:48:43', '0000-00-00 00:00:00', ''),
(18, 'SD18', 'Suprax', 0, 'Haris', '88.00', '120.00', 'Chest', '2011-11-07 17:49:35', '0000-00-00 00:00:00', ''),
(19, 'SD19', 'SKILAX', 0, 'Sami', '200.00', '300.00', 'Chest', '2011-11-07 17:50:01', '0000-00-00 00:00:00', ''),
(20, 'SD20', 'Noviclar', 0, 'Haris', '45.00', '60.00', 'Chest', '2011-11-07 17:50:33', '0000-00-00 00:00:00', ''),
(21, 'SD21', 'Cedrox', 0, 'Peer sons pharma', '58.00', '99.00', 'Chest', '2011-11-07 17:50:52', '0000-00-00 00:00:00', ''),
(22, 'SD22', 'ORIBRO', 0, 'Sami', '600.00', '650.00', 'Heart Diesease', '2011-11-07 17:51:30', '0000-00-00 00:00:00', ''),
(23, 'SD23', 'optiZinc', 0, 'Haris', '200.00', '260.00', 'Heart Diesease', '2011-11-07 17:52:04', '0000-00-00 00:00:00', ''),
(24, 'SD24', 'optiZinc', 0, 'Peer sons pharma', '34.00', '56.00', 'Heart Diesease', '2011-11-07 17:53:09', '0000-00-00 00:00:00', ''),
(25, 'SD25', 'Ventomax', 0, 'Haris', '65.00', '78.00', 'Heart Diesease', '2011-11-07 17:53:34', '0000-00-00 00:00:00', ''),
(26, 'SD26', 'Ecotec', 0, 'Haris', '22.00', '44.00', 'Liver', '2011-11-07 18:00:10', '0000-00-00 00:00:00', ''),
(27, 'SD27', 'Enervit', 0, 'Baloch', '98.00', '109.00', 'Liver', '2011-11-07 18:01:13', '0000-00-00 00:00:00', ''),
(28, 'SD28', 'ponstan', 0, 'Haris', '75.00', '93.00', 'Chest', '2012-01-30 11:48:24', '0000-00-00 00:00:00', ''),
(29, 'SD29', 'sfd', 0, '', '74.00', '99.00', '', '2012-01-30 11:54:18', '0000-00-00 00:00:00', ''),
(30, 'SD30', 'sdf', 0, '', '44.00', '55.00', '', '2012-01-30 12:36:32', '0000-00-00 00:00:00', ''),
(31, 'SD31', 'ponstan', 0, 'Haris', '99.00', '83.00', 'Malaria', '2012-01-30 12:44:39', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `stock_entries`
--

CREATE TABLE IF NOT EXISTS `stock_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` varchar(120) NOT NULL,
  `stock_name` varchar(260) NOT NULL,
  `stock_supplier_name` varchar(200) NOT NULL,
  `category` varchar(120) NOT NULL,
  `quantity` int(11) NOT NULL,
  `company_price` decimal(10,2) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `opening_stock` int(11) NOT NULL,
  `closing_stock` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `username` varchar(120) NOT NULL,
  `type` varchar(50) NOT NULL,
  `salesid` varchar(120) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `mode` varchar(150) NOT NULL,
  `description` varchar(500) NOT NULL,
  `due` datetime NOT NULL,
  `subtotal` int(11) NOT NULL,
  `count1` int(11) NOT NULL,
  `billnumber` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `stock_entries`
--

INSERT INTO `stock_entries` (`id`, `stock_id`, `stock_name`, `stock_supplier_name`, `category`, `quantity`, `company_price`, `selling_price`, `opening_stock`, `closing_stock`, `date`, `username`, `type`, `salesid`, `total`, `payment`, `balance`, `mode`, `description`, `due`, `subtotal`, `count1`, `billnumber`) VALUES
(1, 'SE1', 'Artium', 'Haris', '', 22, '53.00', '99.00', 0, 22, '2011-11-07 00:00:00', 'admin', 'entry', '', '1166.00', '1166.00', '0.00', 'cash', 'Payment on Cash', '2011-11-08 00:00:00', 1166, 1, '1'),
(2, 'SE2', 'Arcia', 'Peer sons pharma', '', 44, '88.00', '99.00', 0, 44, '2011-11-08 00:00:00', 'admin', 'entry', '', '3872.00', '3000.00', '872.00', 'cheque', 'on check', '2011-11-08 00:00:00', 3872, 1, '3'),
(3, 'SE3', 'Cedrox', 'Peer sons pharma', '', 88, '58.00', '99.00', 0, 88, '2011-11-08 00:00:00', 'admin', 'entry', '', '5104.00', '5104.00', '0.00', 'cash', 'Cash', '2011-11-08 00:00:00', 5104, 1, '4'),
(4, 'SE4', 'Noviclar', 'Haris', '', 23, '45.00', '60.00', 0, 23, '2011-11-08 00:00:00', 'admin', 'entry', '', '1035.00', '500.00', '535.00', 'cash', 'cash', '2011-11-08 00:00:00', 1035, 1, '6'),
(5, 'SE5', 'SKAB', 'Sami', '', 200, '33.00', '66.00', 0, 200, '2011-11-08 00:00:00', 'admin', 'entry', '', '6600.00', '4500.00', '2100.00', 'cash', 'cash\r\n', '2011-11-08 00:00:00', 6600, 1, '7'),
(6, 'SE6', 'skilax', 'Sami', '', 400, '200.00', '300.00', 0, 400, '2011-11-08 00:00:00', 'admin', 'entry', '', '80000.00', '60000.00', '20000.00', 'cash', '', '2011-11-08 00:00:00', 80000, 1, '8'),
(7, 'SA1', 'Arcia', '', '', 10, '0.00', '99.00', 44, 34, '2011-11-08 00:00:00', 'admin', 'sales', 'SA1', '990.00', '0.00', '0.00', '', '', '0000-00-00 00:00:00', 0, 0, '1'),
(8, 'SA2', 'skilax', '', '', 30, '0.00', '300.00', 400, 370, '2011-11-08 00:00:00', 'admin', 'sales', 'SA2', '9000.00', '0.00', '0.00', '', '', '0000-00-00 00:00:00', 0, 0, '2'),
(9, 'SE9', 'sfd', 'Peer sons pharma', '', 3, '74.00', '99.00', 0, 3, '2012-01-30 00:00:00', 'admin', 'entry', '', '222.00', '33.00', '189.00', 'cash', '', '2012-01-30 00:00:00', 222, 1, '33'),
(10, 'SE10', 'sdf', 'Sami', '', 3, '44.00', '55.00', 0, 3, '2012-01-30 00:00:00', 'admin', 'entry', '', '132.00', '12.00', '120.00', 'cash', '', '2012-01-30 00:00:00', 132, 1, '111'),
(11, 'SE11', 'sdf', 'Sami', '', 3, '44.00', '55.00', 3, 6, '2012-01-30 00:00:00', 'admin', 'entry', '', '132.00', '12.00', '120.00', 'cash', '', '2012-01-30 00:00:00', 132, 1, '111'),
(12, 'SE12', 'sdf', 'Sami', '', 3, '44.00', '55.00', 6, 9, '2012-01-30 00:00:00', 'admin', 'entry', '', '132.00', '12.00', '120.00', 'cash', '', '2012-01-30 00:00:00', 132, 1, '111');

-- --------------------------------------------------------

--
-- Table structure for table `stock_sales`
--

CREATE TABLE IF NOT EXISTS `stock_sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transactionid` varchar(250) NOT NULL,
  `stock_name` varchar(200) NOT NULL,
  `category` varchar(120) NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` datetime NOT NULL,
  `username` varchar(120) NOT NULL,
  `customer_id` varchar(120) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `due` datetime NOT NULL,
  `mode` varchar(250) NOT NULL,
  `description` varchar(500) NOT NULL,
  `count1` int(11) NOT NULL,
  `billnumber` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stock_sales`
--

INSERT INTO `stock_sales` (`id`, `transactionid`, `stock_name`, `category`, `supplier_name`, `selling_price`, `quantity`, `amount`, `date`, `username`, `customer_id`, `subtotal`, `payment`, `balance`, `due`, `mode`, `description`, `count1`, `billnumber`) VALUES
(1, 'SA1', 'Arcia', '', '', '99.00', '10.00', '990.00', '2011-11-08 00:00:00', 'admin', 'Arif Medical Store', '990.00', '990.00', '0.00', '2011-11-08 00:00:00', 'cash', '', 1, '1'),
(2, 'SA2', 'skilax', '', '', '300.00', '30.00', '9000.00', '2011-11-08 00:00:00', 'admin', 'Arif Medical Store', '9000.00', '8050.00', '950.00', '2011-11-08 00:00:00', 'cash', '', 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `stock_user`
--

CREATE TABLE IF NOT EXISTS `stock_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `stock_user`
--

INSERT INTO `stock_user` (`id`, `username`, `password`, `user_type`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'Ubaid', 'Medical', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_details`
--

CREATE TABLE IF NOT EXISTS `supplier_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(200) NOT NULL,
  `supplier_address` varchar(500) NOT NULL,
  `supplier_contact1` varchar(100) NOT NULL,
  `supplier_contact2` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `supplier_details`
--

INSERT INTO `supplier_details` (`id`, `supplier_name`, `supplier_address`, `supplier_contact1`, `supplier_contact2`, `balance`) VALUES
(1, 'Sami', 'Lahore', '043987535', '349843934', 22460),
(2, 'Sami', 'Lahore', '04234345973', '042397593498', 22460),
(3, 'Haris', 'Multan', '03335349859', '032139849953', 535),
(4, 'Peer sons pharma', 'Multan', '0336908394894', '0344934908090', 4165),
(5, 'Abott', 'Rawalpindi', '09348378347', '3948909384', 0),
(6, 'Baloch', 'Multan', '938493849', '38743478', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `customer` varchar(250) NOT NULL,
  `supplier` varchar(250) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `payment` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `due` datetime NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rid` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `type`, `customer`, `supplier`, `subtotal`, `payment`, `balance`, `due`, `date`, `rid`) VALUES
(9, 'entry', '', 'Peer sons pharma', '5104.00', '3104.00', '0.00', '2011-11-08 00:00:00', '2012-01-30 11:51:11', 'SE3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
