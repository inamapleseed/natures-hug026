-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 12, 2022 at 04:45 PM
-- Server version: 5.7.37-log
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blueaqua_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `unit_no` varchar(64) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `unit_no`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(1, 2, 'jielyn', 'oliveros', '', '2D UPPER BOON KENG ROAD', 'KALLANG HEIGHTS', '12', '', '384002', 188, 0, '[]'),
(2, 3, 'Pui', 'Boonchuay', '', '31 HARRISON ROAD', 'FOOD EMPIRE BUILDING', '04-02', 'Singapore', '369649', 188, 0, ''),
(3, 4, 'Shi Yu', 'Low', '', '308 WOODLANDS AVENUE 1', 'NIL', '', '', '730308', 188, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `affiliate_activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'OaaDpXlLmOvNvgvk2RIR6xcTbVw8fb5RDiN6MPXZ7wTAdJgXALShfXAexlboO67LqenUCCMKQDA7d6uQCCX6wmaaAR4gA05Il0LKt36ZYB5wxbwQZFQzKJs40zCR4IMbGJhukaeJt3ED68InBod2NaUXFFXXiTRdawk8VIqMNwTPVbeUnWNx7tIF0XNLrW3G3LooYowypfVHkn6vh4eoEpIflX10rkuptGlMud6B9psX9FlOcZaKUYyoZkJ7mpJx', 1, '2020-08-15 11:38:30', '2020-08-15 11:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '119.93.199.222'),
(2, 1, '129.126.68.102'),
(3, 1, '136.158.30.245');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `token`, `session_id`, `session_name`, `ip`, `date_added`, `date_modified`) VALUES
(3, 1, 'CUOFwQNqs7fyS6385pDJaEx35KCVhATt', 'm4e68i419tvfhce49tu2tn2pl5', '', '129.126.68.102', '2021-03-31 15:26:21', '2021-03-31 15:26:21'),
(4, 1, 'zAeHJ9iztBrFUaKJIdlYQMJlUxlKjHhW', 'cmoav0gkilucatobjf5nk5hj73', '', '129.126.68.102', '2021-03-31 15:26:25', '2021-03-31 15:26:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 1, 0),
(2, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Test'),
(2, 1, 'Delivery Information');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(1, 0),
(2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(1, 1, 'More Informations'),
(2, 1, 'Delivery Information');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(1, 'Home page Slide Show', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `link_text` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `mobile_image` varchar(255) NOT NULL,
  `color_theme` varchar(32) NOT NULL,
  `mobile_color_theme` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `description`, `link_text`, `link`, `image`, `mobile_image`, `color_theme`, `mobile_color_theme`, `sort_order`) VALUES
(36, 1, 1, 'Slider 1', '', 'Click Here', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/index.php?route=product/product&amp;product_id=1', 'catalog/BA 01.JPG', 'catalog/BA 01.JPG', 'dark_image', 'dark_image', 1),
(37, 1, 1, 'Slider 2', '', '', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/index.php?route=information/information&amp;information_id=7', 'catalog/EP 01.JPG', 'catalog/banner1.jpg', 'dark_image', 'dark_image', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo1`
--

CREATE TABLE `oc_cartbindercombo1` (
  `order_offer_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `primarypids` text NOT NULL,
  `secondarypids` text NOT NULL,
  `discount` float NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo1a`
--

CREATE TABLE `oc_cartbindercombo1a` (
  `order_offer_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `primarypids` text NOT NULL,
  `secondarypids` text NOT NULL,
  `discount` float NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo1a_setting`
--

CREATE TABLE `oc_cartbindercombo1a_setting` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `primarypids` text NOT NULL,
  `type` int(11) NOT NULL,
  `autoadd` tinyint(1) NOT NULL,
  `datestart` date NOT NULL DEFAULT '0000-00-00',
  `dateend` date NOT NULL DEFAULT '0000-00-00',
  `discount` float NOT NULL,
  `cids` text NOT NULL,
  `primaryquant` float NOT NULL,
  `sales_offer_id` int(11) NOT NULL,
  `variation` int(11) NOT NULL DEFAULT '3',
  `secondaryquant` float NOT NULL,
  `multidiscount` varchar(512) NOT NULL,
  `showoffer` tinyint(1) NOT NULL,
  `displaylocation` tinyint(1) NOT NULL,
  `bundle` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo1b`
--

CREATE TABLE `oc_cartbindercombo1b` (
  `order_offer_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `primarypids` text NOT NULL,
  `secondarycids` text NOT NULL,
  `discount` float NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo1b_setting`
--

CREATE TABLE `oc_cartbindercombo1b_setting` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `primarypids` text NOT NULL,
  `type` int(11) NOT NULL,
  `datestart` date NOT NULL DEFAULT '0000-00-00',
  `dateend` date NOT NULL DEFAULT '0000-00-00',
  `cids` text NOT NULL,
  `discount` float NOT NULL,
  `anyorall` int(11) NOT NULL,
  `sales_offer_id` int(11) NOT NULL,
  `primaryquant` float NOT NULL,
  `variation` int(11) NOT NULL DEFAULT '5',
  `secondarycids` text NOT NULL,
  `secondaryquant` float NOT NULL,
  `showoffer` tinyint(1) NOT NULL,
  `displaylocation` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo1c`
--

CREATE TABLE `oc_cartbindercombo1c` (
  `order_offer_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `primarypids` text NOT NULL,
  `optionids` text NOT NULL,
  `discount` float NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo1c_setting`
--

CREATE TABLE `oc_cartbindercombo1c_setting` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `primarypids` text NOT NULL,
  `type` int(11) NOT NULL,
  `autoadd` tinyint(1) NOT NULL,
  `discount` float NOT NULL,
  `anyorall` int(11) NOT NULL,
  `cids` text NOT NULL,
  `datestart` date NOT NULL DEFAULT '0000-00-00',
  `dateend` date NOT NULL DEFAULT '0000-00-00',
  `sales_offer_id` int(11) NOT NULL,
  `primaryquant` float NOT NULL,
  `variation` int(11) NOT NULL DEFAULT '6',
  `optionidarray` text NOT NULL,
  `optionids` text NOT NULL,
  `secondaryquant` float NOT NULL,
  `showoffer` tinyint(1) NOT NULL,
  `displaylocation` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo1_setting`
--

CREATE TABLE `oc_cartbindercombo1_setting` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `primarypids` text NOT NULL,
  `cids` text NOT NULL,
  `datestart` date NOT NULL DEFAULT '0000-00-00',
  `dateend` date NOT NULL DEFAULT '0000-00-00',
  `type` int(11) NOT NULL,
  `autoadd` tinyint(1) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `discount` float NOT NULL,
  `primaryquant` float NOT NULL,
  `variation` int(11) NOT NULL DEFAULT '1',
  `secondarypids` text NOT NULL,
  `secondaryquant` float NOT NULL,
  `sales_offer_id` int(11) NOT NULL,
  `showoffer` tinyint(1) NOT NULL,
  `displaylocation` tinyint(1) NOT NULL,
  `bundle` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo2`
--

CREATE TABLE `oc_cartbindercombo2` (
  `order_offer_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `primarycids` text NOT NULL,
  `secondarypids` text NOT NULL,
  `secondarycids` text NOT NULL,
  `discount` float NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo2a`
--

CREATE TABLE `oc_cartbindercombo2a` (
  `order_offer_id` int(11) NOT NULL,
  `offer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `primarycids` text NOT NULL,
  `discount` float NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo2a_setting`
--

CREATE TABLE `oc_cartbindercombo2a_setting` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `primarycids` text NOT NULL,
  `type` int(11) NOT NULL,
  `variation` int(11) NOT NULL DEFAULT '4',
  `discount` float NOT NULL,
  `datestart` date NOT NULL DEFAULT '0000-00-00',
  `dateend` date NOT NULL DEFAULT '0000-00-00',
  `cids` text NOT NULL,
  `anyorall` int(11) NOT NULL,
  `sales_offer_id` int(11) DEFAULT NULL,
  `primaryquant` float NOT NULL,
  `secondaryquant` float NOT NULL,
  `multidiscount` varchar(512) NOT NULL,
  `excludeproducts` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_cartbindercombo2_setting`
--

CREATE TABLE `oc_cartbindercombo2_setting` (
  `id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  `primarycids` text NOT NULL,
  `type` int(11) NOT NULL,
  `autoadd` tinyint(1) NOT NULL,
  `cids` text NOT NULL,
  `variation` int(11) NOT NULL DEFAULT '2',
  `datestart` date NOT NULL DEFAULT '0000-00-00',
  `dateend` date NOT NULL DEFAULT '0000-00-00',
  `discount` float NOT NULL,
  `anyorall` int(11) NOT NULL,
  `primaryquant` float NOT NULL,
  `sales_offer_id` int(11) DEFAULT NULL,
  `secondarypids` text NOT NULL,
  `secondarycids` text NOT NULL,
  `secondaryquant` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `backend_only` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `backend_only`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, 0, 'catalog/slicing/homepage/20201204_095006-2.jpg', 0, 0, 1, 1, 1, '2020-08-18 01:29:48', '2021-01-15 10:06:15'),
(4, 0, 'catalog/slicing/homepage/20201204_095358 copy-2.jpg', 0, 0, 1, 4, 1, '2020-08-18 14:36:18', '2021-01-15 10:07:11'),
(5, 0, 'catalog/slicing/homepage/20201204_095127 _1_ copy-2.jpg', 0, 0, 1, 2, 1, '2020-08-18 14:36:57', '2021-01-15 10:05:36'),
(6, 0, 'catalog/Wines.jpg', 0, 0, 1, 5, 1, '2020-08-18 14:37:13', '2021-02-26 10:22:58'),
(7, 0, 'catalog/iStock-157531690.jpg', 0, 0, 1, 3, 1, '2020-11-12 09:50:05', '2021-02-09 14:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(1, 1, 'Shrimp', '', 'Shrimp', '', ''),
(4, 1, 'Tilapia', '', 'Tilapia', '', ''),
(5, 1, 'Jade Perch', '', 'Jade Perch', '', ''),
(6, 1, 'Wine', '', 'Wine', '', ''),
(7, 1, 'Persian saffron', '', 'Persian saffron', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_discount`
--

CREATE TABLE `oc_category_discount` (
  `category_discount_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `percentage` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `affect` int(1) NOT NULL DEFAULT '0',
  `qty` int(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(1, 1, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(1, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(1, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 0),
(2, 'Albania', 'AL', 'ALB', '', 0, 0),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 0),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 0),
(5, 'Andorra', 'AD', 'AND', '', 0, 0),
(6, 'Angola', 'AO', 'AGO', '', 0, 0),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 0),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 0),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 0),
(10, 'Argentina', 'AR', 'ARG', '', 0, 0),
(11, 'Armenia', 'AM', 'ARM', '', 0, 0),
(12, 'Aruba', 'AW', 'ABW', '', 0, 0),
(13, 'Australia', 'AU', 'AUS', '', 0, 0),
(14, 'Austria', 'AT', 'AUT', '', 0, 0),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 0),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 0),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 0),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 0),
(19, 'Barbados', 'BB', 'BRB', '', 0, 0),
(20, 'Belarus', 'BY', 'BLR', '', 0, 0),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 0),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 0),
(23, 'Benin', 'BJ', 'BEN', '', 0, 0),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 0),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 0),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 0),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 0),
(28, 'Botswana', 'BW', 'BWA', '', 0, 0),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 0),
(30, 'Brazil', 'BR', 'BRA', '', 0, 0),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 0),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 0),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 0),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 0),
(35, 'Burundi', 'BI', 'BDI', '', 0, 0),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 0),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 0),
(38, 'Canada', 'CA', 'CAN', '', 0, 0),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 0),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 0),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 0),
(42, 'Chad', 'TD', 'TCD', '', 0, 0),
(43, 'Chile', 'CL', 'CHL', '', 0, 0),
(44, 'China', 'CN', 'CHN', '', 0, 0),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 0),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 0),
(47, 'Colombia', 'CO', 'COL', '', 0, 0),
(48, 'Comoros', 'KM', 'COM', '', 0, 0),
(49, 'Congo', 'CG', 'COG', '', 0, 0),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 0),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 0),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 0),
(53, 'Croatia', 'HR', 'HRV', '', 0, 0),
(54, 'Cuba', 'CU', 'CUB', '', 0, 0),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 0),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 0),
(57, 'Denmark', 'DK', 'DNK', '', 0, 0),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 0),
(59, 'Dominica', 'DM', 'DMA', '', 0, 0),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 0),
(61, 'East Timor', 'TL', 'TLS', '', 0, 0),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 0),
(63, 'Egypt', 'EG', 'EGY', '', 0, 0),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 0),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 0),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 0),
(67, 'Estonia', 'EE', 'EST', '', 0, 0),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 0),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 0),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 0),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 0),
(72, 'Finland', 'FI', 'FIN', '', 0, 0),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 0),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 0),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 0),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 0),
(78, 'Gabon', 'GA', 'GAB', '', 0, 0),
(79, 'Gambia', 'GM', 'GMB', '', 0, 0),
(80, 'Georgia', 'GE', 'GEO', '', 0, 0),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 0),
(82, 'Ghana', 'GH', 'GHA', '', 0, 0),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 0),
(84, 'Greece', 'GR', 'GRC', '', 0, 0),
(85, 'Greenland', 'GL', 'GRL', '', 0, 0),
(86, 'Grenada', 'GD', 'GRD', '', 0, 0),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 0),
(88, 'Guam', 'GU', 'GUM', '', 0, 0),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 0),
(90, 'Guinea', 'GN', 'GIN', '', 0, 0),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 0),
(92, 'Guyana', 'GY', 'GUY', '', 0, 0),
(93, 'Haiti', 'HT', 'HTI', '', 0, 0),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 0),
(95, 'Honduras', 'HN', 'HND', '', 0, 0),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 0),
(97, 'Hungary', 'HU', 'HUN', '', 0, 0),
(98, 'Iceland', 'IS', 'ISL', '', 0, 0),
(99, 'India', 'IN', 'IND', '', 0, 0),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 0),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 0),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 0),
(103, 'Ireland', 'IE', 'IRL', '', 0, 0),
(104, 'Israel', 'IL', 'ISR', '', 0, 0),
(105, 'Italy', 'IT', 'ITA', '', 0, 0),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 0),
(107, 'Japan', 'JP', 'JPN', '', 0, 0),
(108, 'Jordan', 'JO', 'JOR', '', 0, 0),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 0),
(110, 'Kenya', 'KE', 'KEN', '', 0, 0),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 0),
(112, 'North Korea', 'KP', 'PRK', '', 0, 0),
(113, 'South Korea', 'KR', 'KOR', '', 0, 0),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 0),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 0),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 0),
(117, 'Latvia', 'LV', 'LVA', '', 0, 0),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 0),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 0),
(120, 'Liberia', 'LR', 'LBR', '', 0, 0),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 0),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 0),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 0),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 0),
(125, 'Macau', 'MO', 'MAC', '', 0, 0),
(126, 'FYROM', 'MK', 'MKD', '', 0, 0),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 0),
(128, 'Malawi', 'MW', 'MWI', '', 0, 0),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 0),
(130, 'Maldives', 'MV', 'MDV', '', 0, 0),
(131, 'Mali', 'ML', 'MLI', '', 0, 0),
(132, 'Malta', 'MT', 'MLT', '', 0, 0),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 0),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 0),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 0),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 0),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 0),
(138, 'Mexico', 'MX', 'MEX', '', 0, 0),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 0),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 0),
(141, 'Monaco', 'MC', 'MCO', '', 0, 0),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 0),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 0),
(144, 'Morocco', 'MA', 'MAR', '', 0, 0),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 0),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 0),
(147, 'Namibia', 'NA', 'NAM', '', 0, 0),
(148, 'Nauru', 'NR', 'NRU', '', 0, 0),
(149, 'Nepal', 'NP', 'NPL', '', 0, 0),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 0),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 0),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 0),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 0),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 0),
(155, 'Niger', 'NE', 'NER', '', 0, 0),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 0),
(157, 'Niue', 'NU', 'NIU', '', 0, 0),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 0),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 0),
(160, 'Norway', 'NO', 'NOR', '', 0, 0),
(161, 'Oman', 'OM', 'OMN', '', 0, 0),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 0),
(163, 'Palau', 'PW', 'PLW', '', 0, 0),
(164, 'Panama', 'PA', 'PAN', '', 0, 0),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 0),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 0),
(167, 'Peru', 'PE', 'PER', '', 0, 0),
(168, 'Philippines', 'PH', 'PHL', '', 0, 0),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 0),
(170, 'Poland', 'PL', 'POL', '', 0, 0),
(171, 'Portugal', 'PT', 'PRT', '', 0, 0),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 0),
(173, 'Qatar', 'QA', 'QAT', '', 0, 0),
(174, 'Reunion', 'RE', 'REU', '', 0, 0),
(175, 'Romania', 'RO', 'ROM', '', 0, 0),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 0),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 0),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 0),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 0),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 0),
(181, 'Samoa', 'WS', 'WSM', '', 0, 0),
(182, 'San Marino', 'SM', 'SMR', '', 0, 0),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 0),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 0),
(185, 'Senegal', 'SN', 'SEN', '', 0, 0),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 0),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 0),
(188, 'Singapore', 'SG', 'SGP', '', 1, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 0),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 0),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 0),
(192, 'Somalia', 'SO', 'SOM', '', 0, 0),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 0),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 0),
(195, 'Spain', 'ES', 'ESP', '', 0, 0),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 0),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 0),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 0),
(199, 'Sudan', 'SD', 'SDN', '', 0, 0),
(200, 'Suriname', 'SR', 'SUR', '', 0, 0),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 0),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 0),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 0),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 0),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 0),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 0),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 0),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 0),
(209, 'Thailand', 'TH', 'THA', '', 0, 0),
(210, 'Togo', 'TG', 'TGO', '', 0, 0),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 0),
(212, 'Tonga', 'TO', 'TON', '', 0, 0),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 0),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 0),
(215, 'Turkey', 'TR', 'TUR', '', 0, 0),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 0),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 0),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 0),
(219, 'Uganda', 'UG', 'UGA', '', 0, 0),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 0),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 0),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 0),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 0),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 0),
(225, 'Uruguay', 'UY', 'URY', '', 0, 0),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 0),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 0),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 0),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 0),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 0),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 0),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 0),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 0),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 0),
(235, 'Yemen', 'YE', 'YEM', '', 0, 0),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 0),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 0),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 0),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 0),
(243, 'Serbia', 'RS', 'SRB', '', 0, 0),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 0),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 0),
(246, 'Curacao', 'CW', 'CUW', '', 0, 0),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 0),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 0),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 0),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 0),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 0),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 0),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 0),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 0),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 0),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 0),
(257, 'Jersey', 'JE', 'JEY', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_manufacturer`
--

CREATE TABLE `oc_coupon_manufacturer` (
  `coupon_brand_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(4, 'Singapore Dollar', 'SGD', '$', '', '2', 1.00000000, 1, '2015-10-01 15:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `total_success_login` int(11) NOT NULL DEFAULT '0',
  `total_failed_login` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `code`, `date_added`, `total_success_login`, `total_failed_login`, `last_login`) VALUES
(1, 1, 0, 1, 'test', 'test', 'test@test.com', '12341234', '', '1cebd5e02909246adeb2bdf41f78c73df8fb6a60', 'e1ef6c809', 'a:0:{}', '', 0, 1, 'a:0:{}', '::1', 1, 1, 0, '', '', '2015-11-16 11:43:26', 0, 0, '0000-00-00 00:00:00'),
(2, 2, 0, 1, 'jielyn', 'oliveros', 'jielynoliveros@firstcom.asia', '123321nmghg', '', '881830479e1e51c9f4c72b28f0ec1fbd704ff3a6', 'C4kAmNRZn', NULL, NULL, 1, 1, '[]', '110.54.159.159', 1, 1, 0, '', '', '2020-09-01 17:45:40', 3, 0, '2020-09-02 11:56:57'),
(3, 1, 0, 1, 'Pui', 'Boonchuay', 'info@blueaquaint.com', '87866556', '', 'f45d91a53608f513e244bb50fbc77bad44e6375b', 'lC6O6I7kQ', NULL, NULL, 0, 2, '', '111.223.84.114', 1, 1, 0, '', '', '2021-01-07 11:35:37', 1, 0, '2021-01-07 11:35:37'),
(4, 1, 0, 1, 'Shi Yu', 'Low', 'shiyu@blueaquaint.com', '90616757', '', '355d48d3ebdf8f2d19b15f1c3682123461c9b1a7', '1lIWNiZSA', NULL, NULL, 1, 3, '', '183.90.36.150', 1, 1, 0, '', '', '2021-02-01 16:55:54', 11, 0, '2021-02-17 08:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_authentication`
--

CREATE TABLE `oc_customer_authentication` (
  `customer_authentication_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `provider` varchar(55) NOT NULL,
  `identifier` varchar(200) NOT NULL,
  `web_site_url` varchar(255) NOT NULL,
  `profile_url` varchar(255) NOT NULL,
  `photo_url` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `birth_day` varchar(255) NOT NULL,
  `birth_month` varchar(255) NOT NULL,
  `birth_year` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `reward_point_earn_rate` float(15,2) NOT NULL,
  `reward_point_step_spend` int(11) NOT NULL,
  `reward_point_spend_rate` float(15,2) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `reward_point_earn_rate`, `reward_point_step_spend`, `reward_point_spend_rate`, `approval`, `sort_order`) VALUES
(1, 100.00, 100, 5.00, 0, 1),
(2, 1.00, 100, 5.00, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test'),
(2, 1, 'Company A', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_discount`
--

CREATE TABLE `oc_customer_group_discount` (
  `customer_group_discount_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `type` char(1) NOT NULL,
  `percentage` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `status` int(11) NOT NULL DEFAULT '1',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_reward_dates`
--

CREATE TABLE `oc_customer_group_reward_dates` (
  `customer_group_reward_dates_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `clear_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 1, '::1', '2020-08-16 00:05:13'),
(2, 2, '119.93.199.222', '2020-09-01 17:45:48'),
(3, 3, '111.223.84.114', '2021-01-07 11:35:37'),
(4, 4, '183.90.37.68', '2021-02-01 16:55:55'),
(5, 4, '111.223.84.114', '2021-02-01 17:00:13'),
(6, 4, '222.164.170.169', '2021-02-02 21:39:50'),
(7, 2, '112.198.65.232', '2021-02-04 15:20:02'),
(8, 2, '110.54.208.105', '2021-02-04 15:59:55'),
(9, 4, '222.164.161.132', '2021-02-05 00:02:35'),
(10, 4, '183.90.37.156', '2021-02-08 10:05:17'),
(11, 2, '110.54.149.73', '2021-02-09 22:31:35'),
(12, 4, '183.90.36.150', '2021-02-17 08:14:59'),
(13, 2, '110.54.159.159', '2021-03-24 09:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_reward`
--

INSERT INTO `oc_customer_reward` (`customer_reward_id`, `customer_id`, `order_id`, `description`, `points`, `date_added`) VALUES
(1, 2, 1, 'Order ID: #1', 39, '2020-09-02 12:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_search`
--

INSERT INTO `oc_customer_search` (`customer_search_id`, `store_id`, `language_id`, `customer_id`, `keyword`, `category_id`, `sub_category`, `description`, `products`, `ip`, `date_added`) VALUES
(1, 0, 1, 0, 'fish', 0, 1, 1, 0, '111.223.84.114', '2021-02-01 16:40:09'),
(2, 0, 1, 0, 'fish', 4, 1, 1, 0, '111.223.84.114', '2021-02-01 16:40:18'),
(3, 0, 1, 0, 'tilapia', 0, 1, 1, 1, '111.223.84.114', '2021-02-01 16:40:28'),
(4, 0, 1, 0, 'wine', 0, 1, 1, 9, '111.223.84.114', '2021-02-01 16:48:15'),
(5, 0, 1, 0, 'fish', 0, 1, 1, 0, '111.223.84.114', '2021-02-02 17:41:05'),
(6, 0, 1, 0, 'jade perch', 0, 1, 1, 1, '111.223.84.114', '2021-02-02 17:41:28'),
(7, 0, 1, 0, 'fish', 0, 1, 1, 0, '111.223.84.114', '2021-02-02 17:41:37'),
(8, 0, 1, 0, 'prawn', 0, 1, 1, 0, '111.223.84.114', '2021-02-02 17:41:44'),
(9, 0, 1, 4, 'fish', 0, 1, 1, 0, '111.223.84.114', '2021-02-02 18:01:13'),
(10, 0, 1, 4, 'fish', 0, 1, 1, 0, '111.223.84.114', '2021-02-02 18:01:16'),
(11, 0, 1, 0, 'fish', 0, 1, 1, 0, '110.54.162.222', '2021-02-04 12:00:29'),
(12, 0, 1, 0, 'fish', 0, 1, 1, 0, '110.54.162.222', '2021-02-04 12:01:46'),
(13, 0, 1, 0, 'fish', 0, 1, 1, 0, '110.54.162.222', '2021-02-04 12:01:57'),
(14, 0, 1, 0, 'fish', 0, 1, 1, 0, '110.54.162.222', '2021-02-04 12:02:04'),
(15, 0, 1, 0, 'fish', 0, 1, 1, 0, '110.54.162.222', '2021-02-04 12:02:49'),
(16, 0, 1, 4, 'fish', 0, 1, 1, 0, '111.223.84.114', '2021-02-04 12:53:28'),
(17, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:28:59'),
(18, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:29:07'),
(19, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:29:13'),
(20, 0, 1, 2, 'legitime', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:30:54'),
(21, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:32:16'),
(22, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:48:06'),
(23, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:48:06'),
(24, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:48:07'),
(25, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:48:07'),
(26, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:48:07'),
(27, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:48:07'),
(28, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:48:07'),
(29, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:48:07'),
(30, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:48:08'),
(31, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:48:08'),
(32, 0, 1, 2, 'test', 0, 1, 1, 0, '112.198.65.232', '2021-02-04 15:48:08'),
(33, 0, 1, 2, 'test', 0, 1, 1, 0, '110.54.208.105', '2021-02-04 16:05:30'),
(34, 0, 1, 2, 'fish', 0, 1, 1, 1, '110.54.208.105', '2021-02-04 16:05:35'),
(35, 0, 1, 2, 'test', 0, 1, 1, 1, '110.54.208.105', '2021-02-04 16:06:16'),
(36, 0, 1, 0, 'Fish', 0, 1, 1, 2, '183.90.37.68', '2021-02-04 17:57:54'),
(37, 0, 1, 0, 'fish', 0, 1, 1, 0, '116.15.135.146', '2021-02-04 23:09:40'),
(38, 0, 1, 0, 'fish', 0, 1, 1, 0, '116.15.135.146', '2021-02-04 23:09:44'),
(39, 0, 1, 0, 'fish', 4, 1, 1, 1, '116.15.135.146', '2021-02-04 23:09:48'),
(40, 0, 1, 0, 'fish', 4, 1, 1, 1, '116.15.135.146', '2021-02-04 23:10:03'),
(41, 0, 1, 0, 'fish', 0, 1, 1, 2, '116.15.135.146', '2021-02-04 23:10:05'),
(42, 0, 1, 0, 'tilapia', 0, 1, 1, 1, '116.15.135.146', '2021-02-04 23:10:09'),
(43, 0, 1, 0, 'wine', 0, 1, 1, 9, '116.15.135.146', '2021-02-04 23:10:14'),
(44, 0, 1, 0, 'Blue Shrimp', 0, 1, 1, 1, '119.74.140.91', '2021-05-25 09:56:37'),
(45, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:37:44'),
(46, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:38:36'),
(47, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:38:46'),
(48, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:40:06'),
(49, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:44:45'),
(50, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:45:00'),
(51, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:45:24'),
(52, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:46:35'),
(53, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:48:46'),
(54, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:49:16'),
(55, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:49:36'),
(56, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:50:08'),
(57, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:50:26'),
(58, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:51:02'),
(59, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:53:21'),
(60, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:55:13'),
(61, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:55:33'),
(62, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:56:08'),
(63, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:56:39'),
(64, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:57:10'),
(65, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:58:59'),
(66, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:59:13'),
(67, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:59:30'),
(68, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 18:59:55'),
(69, 0, 1, 0, 'blue shrimp', 0, 1, 1, 1, '130.105.154.62', '2022-06-22 19:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_enquiry`
--

CREATE TABLE `oc_enquiry` (
  `enquiry_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_enquiry_order`
--

CREATE TABLE `oc_enquiry_order` (
  `enquiry_order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_unit_no` varchar(64) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_unit_no` varchar(64) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `enquiry_order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `reward_earn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_enquiry_order_custom_field`
--

CREATE TABLE `oc_enquiry_order_custom_field` (
  `enquiry_order_custom_field_id` int(11) NOT NULL,
  `enquiry_order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_enquiry_order_history`
--

CREATE TABLE `oc_enquiry_order_history` (
  `enquiry_order_history_id` int(11) NOT NULL,
  `enquiry_order_id` int(11) NOT NULL,
  `enquiry_order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_enquiry_order_option`
--

CREATE TABLE `oc_enquiry_order_option` (
  `enquiry_order_option_id` int(11) NOT NULL,
  `enquiry_order_id` int(11) NOT NULL,
  `enquiry_order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_enquiry_order_product`
--

CREATE TABLE `oc_enquiry_order_product` (
  `enquiry_order_product_id` int(11) NOT NULL,
  `enquiry_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_enquiry_order_recurring`
--

CREATE TABLE `oc_enquiry_order_recurring` (
  `enquiry_order_recurring_id` int(11) NOT NULL,
  `enquiry_order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_enquiry_order_recurring_transaction`
--

CREATE TABLE `oc_enquiry_order_recurring_transaction` (
  `enquiry_order_recurring_transaction_id` int(11) NOT NULL,
  `enquiry_order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_enquiry_order_total`
--

CREATE TABLE `oc_enquiry_order_total` (
  `enquiry_order_total_id` int(10) NOT NULL,
  `enquiry_order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_enquiry_order_voucher`
--

CREATE TABLE `oc_enquiry_order_voucher` (
  `enquiry_order_voucher_id` int(11) NOT NULL,
  `enquiry_order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `delivery_date` varchar(10) NOT NULL,
  `headerline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `date_added`) VALUES
(1, 'sb_news', 'admin/view/common/column_left/before', 'event/sb_news/menu', 1, '2017-12-29 11:06:46'),
(2, 'sb_news', 'catalog/view/common/header/before', 'event/sb_news/menu', 1, '2017-12-29 11:06:46');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'theme_default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'captcha', 'google_captcha'),
(30, 'module', 'quickcheckout'),
(31, 'analytics', 'google_analytics'),
(32, 'payment', 'pp_express'),
(33, 'module', 'mailchimp_integration'),
(37, 'feed', 'google_sitemap'),
(43, 'module', 'd_social_login'),
(63, 'module', 'pro_email'),
(64, 'enquiry_total', 'product_count'),
(65, 'module', 'faq_manager'),
(66, 'module', 'update_price'),
(67, 'module', 'waiting_list'),
(68, 'module', 'module_helper'),
(69, 'module', 'product_sort_orders'),
(70, 'module', 'discounts'),
(71, 'total', 'category_discount'),
(72, 'total', 'customer_group_discount'),
(73, 'total', 'manufacturer_discount'),
(74, 'module', 'news_archive'),
(75, 'total', 'salescombo'),
(76, 'module', 'ncategory'),
(77, 'module', 'news_latest'),
(78, 'module', 'custom'),
(79, 'module', 'custom2'),
(80, 'module', 'fcategory'),
(81, 'module', 'custom3'),
(82, 'module', 'instagram'),
(83, 'module', 'custom4'),
(84, 'payment', 'omise'),
(85, 'payment', 'omise_paynow'),
(86, 'shipping', 'formula_based'),
(87, 'shipping', 'flat'),
(88, 'shipping', 'category_product_based'),
(89, 'shipping', 'free'),
(90, 'shipping', 'pickup'),
(91, 'payment', 'hitpay');

-- --------------------------------------------------------

--
-- Table structure for table `oc_facebook_product`
--

CREATE TABLE `oc_facebook_product` (
  `product_id` int(11) NOT NULL,
  `facebook_product_id` varchar(20) NOT NULL,
  `facebook_product_group_id` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(1, 1, 0),
(2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(1, 1, 1, 'Shrimp'),
(2, 1, 1, 'Fish');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'Seafood');

-- --------------------------------------------------------

--
-- Table structure for table `oc_gallery_to_category`
--

CREATE TABLE `oc_gallery_to_category` (
  `gallery_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_gallimage`
--

CREATE TABLE `oc_gallimage` (
  `gallimage_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `gwidth` int(11) DEFAULT NULL,
  `gheight` int(11) DEFAULT NULL,
  `pwidth` int(11) DEFAULT NULL,
  `pheight` int(11) DEFAULT NULL,
  `awidth` int(11) DEFAULT NULL,
  `aheight` int(11) DEFAULT NULL,
  `position` varchar(11) NOT NULL,
  `resize` tinyint(1) NOT NULL,
  `imgperrow` int(11) NOT NULL,
  `thumbstyle` varchar(11) NOT NULL,
  `popstyle` varchar(11) NOT NULL,
  `gallpage` int(11) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_gallimage`
--

INSERT INTO `oc_gallimage` (`gallimage_id`, `image`, `sort_order`, `status`, `gwidth`, `gheight`, `pwidth`, `pheight`, `awidth`, `aheight`, `position`, `resize`, `imgperrow`, `thumbstyle`, `popstyle`, `gallpage`, `date_added`, `date_modified`) VALUES
(10, 'catalog/Farmers_Market/Tampines_Hub_2020/_DSC8429-min.JPG', 0, 1, 0, 0, 500, 500, 0, 0, 'left', 0, 6, 'style1', 'default', 0, '2021-01-05 11:53:43', '2021-04-27 19:24:05'),
(11, 'catalog/Farmers_Market/Bishan_CC/_DSC8193-min.jpg', 0, 1, 0, 0, 500, 500, 0, 0, 'left', 0, 6, 'style1', 'default', 0, '2021-01-05 11:56:33', '2021-01-12 12:51:09'),
(8, 'catalog/Farmers_Market/Aug_2019/DSC00008-min.jpg', 0, 1, 0, 0, 500, 500, 0, 0, 'left', 0, 6, 'style1', 'default', 0, '2020-08-18 22:13:05', '2021-01-22 10:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `oc_gallimage_description`
--

CREATE TABLE `oc_gallimage_description` (
  `gallimage_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_gallimage_description`
--

INSERT INTO `oc_gallimage_description` (`gallimage_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(10, 1, 'Tampines Hub Farmer\'s Market', '', '', '', ''),
(11, 1, 'Bishan CC Farmer\'s Market', '', '', '', ''),
(8, 1, 'Hillion Mall Farmer\'s Market', '', 'Farmer\'s Market August 2019', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_gallimage_image`
--

CREATE TABLE `oc_gallimage_image` (
  `gallimage_image_id` int(11) NOT NULL,
  `gallimage_id` int(11) NOT NULL,
  `link` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_gallimage_image`
--

INSERT INTO `oc_gallimage_image` (`gallimage_image_id`, `gallimage_id`, `link`, `image`, `sort_order`) VALUES
(532, 10, '', 'catalog/Christmas Donation/c47e2aee-eb03-4f3a-89bc-0f07363d1046.JPG', 0),
(492, 8, '', 'catalog/Farmers_Market/Aug_2019/DSC00019-min.jpg', 0),
(493, 8, '', 'catalog/Farmers_Market/Aug_2019/DSC00008-min.jpg', 0),
(491, 8, '', 'catalog/Farmers_Market/Aug_2019/DSC00016-min.jpg', 0),
(490, 8, '', 'catalog/Farmers_Market/Aug_2019/DSC00022-min.jpg', 0),
(488, 8, '', 'catalog/Farmers_Market/Aug_2019/DSC00028-min.jpg', 0),
(448, 11, '', 'catalog/Farmers_Market/Bishan_CC/_DSC8193-min.jpg', 0),
(447, 11, '', 'catalog/Farmers_Market/Bishan_CC/_DSC8175-min.jpg', 0),
(446, 11, '', 'catalog/Farmers_Market/Bishan_CC/_DSC8136-min.jpg', 0),
(445, 11, '', 'catalog/Farmers_Market/Bishan_CC/_DSC8135-min.jpg', 0),
(489, 8, '', 'catalog/Farmers_Market/Aug_2019/DSC00026-min.jpg', 0),
(486, 8, '', 'catalog/Farmers_Market/Aug_2019/DSC00053-min.jpg', 0),
(487, 8, '', 'catalog/Farmers_Market/Aug_2019/DSC00043-min.jpg', 0),
(485, 8, '', 'catalog/Farmers_Market/Aug_2019/DSC00055-min.jpg', 0),
(444, 11, '', 'catalog/Farmers_Market/Bishan_CC/_DSC8133-min.jpg', 0),
(443, 11, '', 'catalog/Farmers_Market/Bishan_CC/_DSC8125-min.jpg', 0),
(442, 11, '', 'catalog/Farmers_Market/Bishan_CC/_DSC8124-min.jpg', 0),
(441, 11, '', 'catalog/Farmers_Market/Bishan_CC/_DSC8103-min.jpg', 0),
(531, 10, '', 'catalog/EP 45.JPG', 0),
(530, 10, '', 'catalog/Farmers_Market/Tampines_Hub_2020/SGFT112059-min.jpg', 0),
(529, 10, '', 'catalog/Farmers_Market/Tampines_Hub_2020/SGFT112058-min.jpg', 0),
(528, 10, '', 'catalog/Farmers_Market/Tampines_Hub_2020/_DSC8544-min.JPG', 0),
(527, 10, '', 'catalog/Farmers_Market/Tampines_Hub_2020/_DSC8523-min.JPG', 0),
(526, 10, '', 'catalog/Farmers_Market/Tampines_Hub_2020/_DSC8507-min.JPG', 0),
(525, 10, '', 'catalog/Farmers_Market/Tampines_Hub_2020/_DSC8497-min.JPG', 0),
(524, 10, '', 'catalog/Farmers_Market/Tampines_Hub_2020/_DSC8399-min.JPG', 0),
(523, 10, '', 'catalog/Farmers_Market/Tampines_Hub_2020/_DSC8564-min.JPG', 0),
(522, 10, '', 'catalog/Farmers_Market/Tampines_Hub_2020/_DSC8429-min.JPG', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_gallimage_image_description`
--

CREATE TABLE `oc_gallimage_image_description` (
  `gallimage_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `gallimage_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_gallimage_image_description`
--

INSERT INTO `oc_gallimage_image_description` (`gallimage_image_id`, `language_id`, `gallimage_id`, `title`) VALUES
(532, 1, 10, ''),
(531, 1, 10, ''),
(493, 1, 8, ''),
(492, 1, 8, ''),
(491, 1, 8, ''),
(490, 1, 8, ''),
(489, 1, 8, ''),
(488, 1, 8, ''),
(487, 1, 8, ''),
(485, 1, 8, ''),
(486, 1, 8, ''),
(448, 1, 11, ''),
(447, 1, 11, ''),
(446, 1, 11, ''),
(445, 1, 11, ''),
(444, 1, 11, ''),
(443, 1, 11, ''),
(442, 1, 11, ''),
(441, 1, 11, ''),
(530, 1, 10, ''),
(529, 1, 10, ''),
(528, 1, 10, ''),
(527, 1, 10, ''),
(526, 1, 10, ''),
(525, 1, 10, ''),
(524, 1, 10, ''),
(523, 1, 10, ''),
(522, 1, 10, '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_gallimage_to_store`
--

CREATE TABLE `oc_gallimage_to_store` (
  `gallimage_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_gallimage_to_store`
--

INSERT INTO `oc_gallimage_to_store` (`gallimage_id`, `store_id`) VALUES
(8, 0),
(10, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_gall_category`
--

CREATE TABLE `oc_gall_category` (
  `gall_cat_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_gall_category`
--

INSERT INTO `oc_gall_category` (`gall_cat_id`, `name`, `description`, `sort_order`) VALUES
(8, 'Farmer\'s Market', '&lt;p&gt;lorem ipsum dolor sit amet&lt;/p&gt;', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(5, 'Singapore', 'Singapore Shipping Zones', '0000-00-00 00:00:00', '2015-09-29 16:39:40'),
(6, 'Overseas', 'Besides Singapore Shipping Zones', '0000-00-00 00:00:00', '2015-09-29 16:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(3, 1, 'Privacy Policy', '&lt;p&gt;This Privacy Policy (the “Policy”) applies to the collection, use and disclosure of an individual customer’s Personal Data (hereinafter defined) arising from goods and/or services offered by Nature\'s Hug.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;1. What information do we collect?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;1.1. We collect information from you when you register on our site, place an order or subscribe to our newsletter.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;1.2. When ordering or registering on our site, as appropriate, you may be asked to enter your: name, e-mail address, mailing address or phone number. You may, however, visit our site anonymously.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;strong&gt;2. What do we use your information for?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;2.1 Any of the information we collect from you may be used in one of the following ways:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;2.1.1. To personalize your experience (your information helps us to better respond to your individual needs)&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;2.1.2. To improve our website (we continually strive to improve our website offerings based on the information and feedback we receive from you)&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;2.1.3. To improve customer service (your information helps us to more effectively respond to your customer service requests and support needs)&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;2.1.4. To process transactions (Your information, whether public or private, will not be sold, exchanged, transferred, or given to any other company for any reason whatsoever, without your consent, other than for the express purpose of delivering the purchased product or service requested).&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;2.1.5. To send periodic emails (The email address you provide for order processing, will only be used to send you information and updates pertaining to your order).&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;3. How do we protect your information?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;3.1. We implement a variety of security measures to maintain the safety of your personal information when you place an order or enter, submit, or access your personal information.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;3.2. We offer the use of a secure server. All supplied sensitive/credit information is transmitted via Secure Socket Layer (SSL) technology and then encrypted into our Payment gateway providers database only to be accessible by those authorized with special access rights to such systems, and are required to keep the information confidential.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;3.3. After a transaction, your private information (credit cards, social security numbers, financials, etc.) will not be stored on our servers.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;4. Do we use cookies?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;4.1. Yes (Cookies are small files that a site or its service provider transfers to your computer’s hard drive through your Web browser (if you allow) that enables the sites or service providers systems to recognize your browser and capture and remember certain information.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;4.2. We use cookies to help us remember and process the items in your shopping cart and understand and save your preferences for future visits.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;4.3. If you prefer, you can choose to have your computer warn you each time a cookie is being sent, or you can choose to turn off all cookies via your browser settings. Like most websites, if you turn your cookies off, some of our services may not function properly. However, you can still place orders over the telephone or by contacting customer service.&lt;br /&gt;\r\n &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;5. Do we disclose any information to outside parties?&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;5.1. We do not sell, trade, or otherwise transfer to outside parties your personally identifiable information. This does not include trusted third parties who assist us in operating our website, conducting our business, or servicing you, so long as those parties agree to keep this information confidential. We may also release your information when we believe release is appropriate to comply with the law, enforce our site policies, or protect ours or others rights, property, or safety. However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;strong&gt;6. Third party links&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;6.1. Occasionally, at our discretion, we may include or offer third party products or services on our website. These third party sites have separate and independent privacy policies. We therefore have no responsibility or liability for the content and activities of these linked sites. Nonetheless, we seek to protect the integrity of our site and welcome any feedback about these sites.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;strong&gt;7. Personal Data Protection Act (Singapore)&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;7.1. By using this site, you agree to allow us to collect or use your information in an appropriate manner in accordance to the Personal Data Protection Act of Singapore.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;strong&gt;8. Online Privacy Policy Only&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;8.1. This online privacy policy applies only to information collected through our website and not to information collected offline.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;strong&gt;9. Terms and Conditions&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;9.1. Please also visit our Terms and Conditions section establishing the use, disclaimers, and limitations of liability governing the use of our website.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;10. Your Consent&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;10.1. By using our site, you consent to our website’s Privacy Policy.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;11. Changes to our Privacy Policy&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;11.1. If we decide to change our privacy policy, we will post those changes on this page, and/or update the Privacy Policy modification date below.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\n&lt;strong&gt;12. Contacting Us&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;12.1. If there are any questions regarding this Privacy Policy you may contact us using the contact form.&lt;/p&gt;', 'Privacy Policy', '', ''),
(4, 1, 'Our Brand', '', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;&lt;strong&gt;1. Information About Us&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;1.1 &lt;a href=&quot;http://www.natureshug.sg&quot;&gt;www.natureshug.sg&lt;/a&gt; is a site operated by Blue Aqua Food Supply Pte. Ltd. We are registered in Singapore under the Business Registration Number 201904098D and with our registered office at 31 Harrison Road, #04-02 Food Empire Building, Singapore 369649.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;2. Service Availability&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;2.1 Our site is only intended for use by people residing, businesses, and companies in Singapore (&quot;the Serviced Country&quot;). We do not accept orders from individuals outside of the Serviced Country.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;3. Your Status&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;3.1 By placing an order through our site or on the telephone, you warrant that:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;3.1.1 You are legally capable of entering into binding contracts;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;3.1.2 You are resident in the Serviced Country.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;4. How the Contract is formed between You and Us&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;4.1 After placing an online order, you will receive an e-mail from us acknowledging that we have received your order. Please note that this does not mean that your order has been accepted. Your order constitutes an offer to us to buy a Product. All telephone and on-line orders are subject to acceptance by us, and we will confirm such acceptance to you either during our telephone conversation or email. The contract between us (“the Contract”) will only be formed when we deliver the items to you.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;4.2 Subjected to actual stock availability, item orders may be replaced with alternatives subjected to a verbal or written confirmation with you. For items that cannot be replaced, we will contact you to give you the option to cancel. If payment has been made, you will be refunded of the amount paid. &lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;4.3 All orders placed online will be fulfilled within 3 business days unless otherwise advised. Business days exclude Saturday, Sunday and Public Holidays.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;4.4 You are obliged to make payment in FULL by the payment option you select when you check out your orders.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;4.5 Each batch of goods may differ due to manufacturing contraints. In the event if you are not satisfied with any products, you may contact us within 2 days after delivery. We will exchange the products if it is not up to standard. The Product must be unused in the Original condition and it must not be pre-order product. Please refer to our refund policy stated under &quot;Our Refunds Policy&quot; below.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;5. Our Status&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;5.1 We may provide links on our site to the websites of other companies, whether affiliated with us or not. We cannot give any undertaking that the products you purchase from companies to whose website we have provided a link will be of satisfactory quality.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;6. Price and Payment&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;6.1 The price of any Products will be as quoted on our site from time to time, except in cases of obvious error.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;6.2 Our site contains a large number of Products and it is always possible that, despite our best efforts, some of the Products listed on our site may be incorrectly priced. We will normally verify prices as part of our dispatch procedures so that, where a Product\'s correct price is less than our stated price, we will charge the lower amount when dispatching the Product to you. If a Product’s correct price is higher than the price stated on our site we might at our discretion decide to honour the lower (incorrect) price or either contact you for instructions before dispatching the Product, or reject your order and notify you of such rejection.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;6.3 We are under no obligation to provide the Product to you at the incorrect (lower) price even after we have provided you with an email confirmation.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;7. Our Refunds Policy&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;7.1 When you return a Product to us (for instance, because you have cancelled the Contract between us, or have notified us that you do not agree to any change in these Terms and Conditions or in any of our Policies, or because you claim that the Product is defective, or you are not satisfied with the Product), we will examine the returned Product. Provided we are satisfied with the condition of the Product following our examination, we will either replace the item (if returned owing to a defect) or provide you with a refund. If you have requested a refund we will usually refund any money received from you using the same method originally used to pay. We will process the refund as soon as possible.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;7.2 Products returned by you because of a defect or within the two-day cooling-off period will be refunded in full after delivery costs have been deducted.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;7.3 A claim by you that the quantity of the Products delivered falls short of the quantity ordered shall be notified to us within 2 days from the date of delivery. If you do not notify us accordingly, we shall have no liability in respect of such shortfall and you shall be bound to pay the price as if the Products had been delivered in accordance with the Contract.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;7.4 The cost of return transportation is at your expense.&lt;/p&gt;\r\n\r\n&lt;p&gt;    &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;8. Our Liability&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;8.1 We warrant to you that any Product purchased from us through our site is of satisfactory quality.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;8.2 Our liability in connection with any Product purchased through our site is strictly limited to the purchase price of that Product.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;8.3 Unless otherwise stated, all products warranty will be covered by the respective brand owner.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;9. Notices&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;9.1 All notices given by you to us must be given to Nature\'s Hug at 31 Harrison Road, #04-02 Food Empire Building, Singapore 369649. We may give notice to you either via an e-mail or postal address that you provided to us when placing an order.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;10. Events Outside our Control&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;10.1 We will not be liable or responsible for any failure to perform, or delay in performance of, any of our obligations under a Contract that is caused by events outside our reasonable control (“Force Majeure Event”).&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;10.2 A Force Majeure Event includes any act, event, non-happening, omission or accident beyond our reasonable control and includes in particular (without limitation) the following:&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;10.2.1 strikes, lock-outs or other industrial action;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;10.2.2 civil commotion, riot, invasion, terrorist attack or threat of terrorist attack, war (whether declared or not) or threat or preparation for war;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;10.2.3 fire, explosion, storm, flood, earthquake, subsidence, epidemic or other natural disaster;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;10.2.4 impossibility of the use of railways, shipping, aircraft, motor transport or other means of public or private transport;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;10.2.5 impossibility of the use of public or private telecommunications networks; or&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 80px;&quot;&gt;10.2.6 the acts, decrees, legislation, regulations or restrictions of any government.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;10.3 Our performance under any Contract is deemed to be suspended for the period that the Force Majeure Event continues, and we will have an extension of time for performance for the duration of that period. We will use our reasonable endeavours to bring the Force Majeure Event to a close or to find a solution by which our obligations under the Contract may be performed despite the Force Majeure Event.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;11. Waiver&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;11.1 If we fail, at any time during the term of a Contract, to insist upon the strict performance of any of your obligations under the Contract or any of these Terms and Conditions, or if we fail to exercise any of the rights or remedies to which we are entitled under the Contract, this shall not constitute a waiver of such rights or remedies and shall not relieve you from compliance with such obligations.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;11.2 A waiver by us of any default shall not constitute a waiver of any subsequent default.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;11.3 No waiver by us of any of these Terms and Conditions shall be effective unless it is expressly stated to be a waiver and is communicated to you in writing.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;12. Severability&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;12.1 If any of these Terms and Conditions or any provisions of a Contract are determined by any competent authority to be invalid, unlawful or unenforceable to any extent, such term, condition or provision will to that extent be severed from the remaining terms, conditions and provisions which will continue to be valid to the fullest extent permitted by law.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;13. Entire Agreement&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;13.1 These Terms and Conditions and any document expressly referred to in them represent the entire agreement between us in relation to the subject matter of any Contract and supersede any prior agreement, understanding or arrangement between us, whether oral or in writing.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;13.2 We each acknowledge that, in entering into a Contract, neither of us has relied on any representation, undertaking or promise given by the other and that nothing may be implied from anything said or written in negotiations between us prior to such Contract except as expressly stated in these Terms and Conditions.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;13.3 Neither of us shall have any remedy in respect of any untrue statement made by the other, whether orally or in writing, prior to the date of any Contract (unless such untrue statement was made fraudulently) and the other party’s only remedy shall be for breach of contract as provided in these Terms and Conditions.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;14. Our Right to Vary these Terms and Conditions&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;14.1 We have the right to revise and amend these Terms and Conditions from time to time.&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;14.2 You will be subject to the Policies and Terms and Conditions in force at the time that you order Products from us, unless any change to those Policies or these Terms and Conditions is required to be made by law or governmental authority (in which case it will apply to orders previously placed by you), or if we notify you of the change to those Policies or these Terms and Conditions before we provide you with the Dispatch Confirmation (in which case we have the right to assume that you have accepted the change to the Terms and Conditions, unless you notify us to the contrary within seven working days of receipt by you of the Products).&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;15. Law and Jurisdiction&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;margin-left: 40px;&quot;&gt;15.1 Contracts for the purchase of Products through our site will be governed by the Law of Singapore. Any dispute arising from, or related to, such Contracts shall be subject to the non-exclusive jurisdiction of the Courts of The Republic of Singapore.&lt;/p&gt;', 'Terms &amp; Conditions', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;Please allow us some time to update the delivery information, thank you.&lt;/p&gt;', 'Delivery Information', '', ''),
(7, 1, 'Our Tale', '', 'Our Tale', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(3, 0, 0),
(4, 0, 20),
(5, 0, 0),
(6, 0, 0),
(7, 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'Special'),
(15, 'All Layout'),
(16, 'Login'),
(17, 'FAQ'),
(18, 'News Category'),
(19, 'Quickcheckout'),
(20, 'About Us'),
(21, 'Our Tale');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `mode` varchar(64) NOT NULL,
  `background` text NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `mode`, `background`, `sort_order`) VALUES
(2, 16, 'd_social_login', 'column_left', '', '', 0),
(3, 17, 'faq_manager', 'content_top', '', '', 0),
(5, 19, 'd_social_login', 'column_left', '', '', 0),
(6, 18, 'news_archive', 'column_left', '', '', 0),
(7, 18, 'news_latest.28', 'column_left', '', '', 1),
(10, 20, 'custom', 'content_top', 'full-width', '', 0),
(11, 21, 'custom2', 'content_top', 'full-width', '', 0),
(12, 3, 'category', 'column_left', '', '', 0),
(25, 1, 'slideshow.27', 'content_top', 'full-width', '', 0),
(26, 1, 'fcategory.29', 'content_top', 'full-width', '', 1),
(27, 1, 'featured.30', 'content_top', 'full-width', '', 2),
(28, 1, 'news_latest.31', 'content_top', 'full-width', '', 3),
(29, 1, 'custom3', 'content_top', 'full-width', '', 4),
(30, 15, 'instagram.33', 'content_bottom', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(17, 10, 0, 'affiliate/%'),
(20, 2, 0, 'product/product'),
(23, 7, 0, 'checkout/%'),
(24, 11, 0, 'information/information'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(38, 6, 0, 'account/%'),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search'),
(54, 14, 0, 'product/special'),
(57, 16, 0, 'account/login'),
(59, 17, 0, 'information/faq'),
(66, 19, 0, 'quickcheckout/%'),
(67, 18, 0, 'news/ncategory'),
(69, 3, 0, 'product/category'),
(73, 1, 0, 'common/home'),
(75, 15, 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 10.00000000),
(3, 0.39370000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  `gmap_iframe` text NOT NULL,
  `email` text NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_discount`
--

CREATE TABLE `oc_manufacturer_discount` (
  `manufacturer_discount_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `percentage` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `qty` int(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_menus`
--

CREATE TABLE `oc_menus` (
  `menu_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_menus`
--

INSERT INTO `oc_menus` (`menu_id`, `title`, `status`, `list`) VALUES
(1, 'Default Header', 1, '[{&quot;level&quot;:&quot;0&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Our Brand&quot;,&quot;name&quot;:[&quot;L1-Our Brand&quot;],&quot;query&quot;:&quot;information/information&amp;information_id=4&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;0&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Our Tale&quot;,&quot;name&quot;:[&quot;L1-Our Tale&quot;],&quot;query&quot;:&quot;information/information&amp;information_id=7&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;0&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Shop&quot;,&quot;name&quot;:[&quot;L1-Shop&quot;],&quot;query&quot;:&quot;product/category&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;0&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Gallery&quot;,&quot;name&quot;:[&quot;L1-Gallery&quot;],&quot;query&quot;:&quot;gallery/album&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;0&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Blog&quot;,&quot;name&quot;:[&quot;L1-Blog&quot;],&quot;query&quot;:&quot;news/ncategory&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;0&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Contact Us&quot;,&quot;name&quot;:[&quot;L1-Contact Us&quot;],&quot;query&quot;:&quot;information/contact&quot;,&quot;new_tab&quot;:&quot;0&quot;}]'),
(2, 'Default Footer', 1, '[{&quot;level&quot;:&quot;0&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Information&quot;,&quot;name&quot;:[&quot;L1-Information&quot;],&quot;query&quot;:&quot;#&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;1&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Our Tale&quot;,&quot;name&quot;:[&quot;L1-Our Tale&quot;],&quot;query&quot;:&quot;information/information&amp;information_id=7&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;1&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Our Brand&quot;,&quot;name&quot;:[&quot;L1-Our Brand&quot;],&quot;query&quot;:&quot;information/information&amp;information_id=4&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;1&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Shop&quot;,&quot;name&quot;:[&quot;L1-Shop&quot;],&quot;query&quot;:&quot;product/category&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;1&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Blog&quot;,&quot;name&quot;:[&quot;L1-Blog&quot;],&quot;query&quot;:&quot;news/ncategory&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;1&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Gallery&quot;,&quot;name&quot;:[&quot;L1-Gallery&quot;],&quot;query&quot;:&quot;gallery/album&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;1&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Contact Us&quot;,&quot;name&quot;:[&quot;L1-Contact Us&quot;],&quot;query&quot;:&quot;information/contact&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;0&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Account&quot;,&quot;name&quot;:[&quot;L1-Account&quot;],&quot;query&quot;:&quot;account/account&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;1&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Privacy Policy&quot;,&quot;name&quot;:[&quot;L1-Privacy Policy&quot;],&quot;query&quot;:&quot;information/information&amp;information_id=3&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;1&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Delivery Information&quot;,&quot;name&quot;:[&quot;L1-Delivery Information&quot;],&quot;query&quot;:&quot;information/information&amp;information_id=6&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;1&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;Terms &amp; Conditions&quot;,&quot;name&quot;:[&quot;L1-Terms &amp; Conditions&quot;],&quot;query&quot;:&quot;information/information&amp;information_id=5&quot;,&quot;new_tab&quot;:&quot;0&quot;},{&quot;level&quot;:&quot;1&quot;,&quot;img&quot;:&quot;&quot;,&quot;label&quot;:&quot;FAQs&quot;,&quot;name&quot;:[&quot;L1-FAQs&quot;],&quot;query&quot;:&quot;information/faq&quot;,&quot;new_tab&quot;:&quot;0&quot;}]');

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 'd_twig_manager', 'd_twig_manager', 'Dreamvention', '1.0.0', 'http://dreamvention.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<modification>\n    <name>d_twig_manager</name>\n    <code>d_twig_manager</code>\n    <description>Adds support for twig templating engine</description>\n    <version>1.0.0</version>\n    <author>Dreamvention</author>\n    <link>http://dreamvention.com</link>\n    <file path=\"system/engine/loader.php\">\n        <operation error=\"skip\" info=\"add event support for 2.1.0.0 and below\">\n            <search><![CDATA[$file = DIR_TEMPLATE . $template;]]></search>\n            <add position=\"before\"><![CDATA[\n            //d_twig_manager.xml 1\n            $output = $this->controller(\'event/d_twig_manager/support\', array(\'route\' => $template, \'data\' => $data));\n            if($output || !file_exists( DIR_TEMPLATE . $template)){\n                return $output;\n            }\n            ]]></add>\n        </operation>\n        <operation error=\"skip\" info=\"add event support for 2.2.0.0 and above\">\n            <search><![CDATA[$output = $template->render($route . \'.tpl\']]></search>\n            <add position=\"before\"><![CDATA[\n            //d_twig.xml 2\n\n            $output = $this->controller(\'event/d_twig_manager/support\', array(\'route\' => $route, \'data\' => $data));\n            if(!$output && file_exists( DIR_TEMPLATE . $route . \'.tpl\'))\n            ]]></add>\n        </operation>\n    </file>\n</modification>', 1, '2020-09-15 15:42:56');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(27, 'Slideshow - Home Page', 'slideshow', '{\"name\":\"Slideshow - Home Page\",\"banner_id\":\"1\",\"width\":\"1920\",\"height\":\"900\",\"mobile_width\":\"767\",\"mobile_height\":\"900\",\"arrows\":\"true\",\"dots\":\"true\",\"autoplayspeed\":\"2000\",\"status\":\"1\"}'),
(28, 'Featured Blog Post', 'news_latest', '{\"name\":\"Featured Blog Post\",\"news_limit\":\"5\",\"ncategory_id\":\"all\",\"status\":\"1\"}'),
(29, 'Wholesome local food supplier', 'fcategory', '{\"name\":\"Wholesome local food supplier\",\"category\":[\"5\",\"1\",\"6\",\"4\",\"7\"],\"limit\":\"5\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(30, 'Best Sellers', 'featured', '{\"name\":\"Best Sellers\",\"title\":{\"1\":\"Best Sellers\"},\"product_name\":\"\",\"product\":[\"20\",\"22\",\"11\"],\"status\":\"1\"}'),
(31, 'Our Blog', 'news_latest', '{\"name\":\"Our Blog\",\"news_limit\":\"3\",\"ncategory_id\":\"all\",\"status\":\"1\"}'),
(33, 'Nature\'s Hug Instagram', 'instagram', '{\"name\":\"Nature\'s Hug Instagram\",\"status\":\"1\",\"instagram_user_id\":\"17841415948168343\",\"instagram_module_name\":\"Instagram\",\"instagram_text_align\":\"left\",\"instagram_hover_heart\":\"0\",\"instagram_heart_color\":\"rgba(255, 255, 255, 0.9)\",\"instagram_text_heart_color\":\"#333333\",\"instagram_photo_amount\":\"6\",\"instagram_use_plugin\":\"true\",\"instagram_plugin_slide_show\":\"4\",\"instagram_plugin_slide_scroll\":\"2\",\"instagram_plugin_slide_show_tablet\":\"3\",\"instagram_plugin_slide_scroll_tablet\":\"3\",\"instagram_plugin_slide_show_celphone\":\"1\",\"instagram_plugin_slide_scroll_celphone\":\"1\",\"instagram_plugin_auto_play\":\"0\",\"instagram_plugin_dots\":\"0\",\"instagram_center_mode\":\"0\",\"instagram_plugin_arrows\":\"0\",\"instagram_arrow_color\":\"#2096C3\",\"instagram_plugin_auto_play_speed\":\"2000\",\"instagram_access_token\":\"IGQVJXQ1BBbGZAhLUE0YTVkcFcxcU54R0xSUGdlVGFyaWtsbHdTTHpTeFA2UjVjLWY3amxReE96dllLVjMwUTdKUERranltdTFicFY3el9tYnYzdk12VVR2enZAERnAxdk1fVDdrci1R\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_omise_charge`
--

CREATE TABLE `oc_omise_charge` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `omise_charge_id` char(45) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_omise_customer`
--

CREATE TABLE `oc_omise_customer` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `omise_customer_id` char(45) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'select', 0),
(2, 'select', 0),
(3, 'select', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Size'),
(2, 1, 'Weight'),
(3, 1, 'testdate');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(1, 1, '', 0),
(2, 1, '', 0),
(3, 1, '', 0),
(4, 1, '', 0),
(5, 1, '', 0),
(6, 1, '', 0),
(7, 1, '', 0),
(8, 2, '', 0),
(9, 2, '', 0),
(10, 2, '', 0),
(11, 3, '', 0),
(12, 3, '', 0),
(13, 3, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(1, 1, 1, 'Small'),
(2, 1, 1, 'Medium'),
(3, 1, 1, 'Large'),
(4, 1, 1, '500ml'),
(5, 1, 1, '800ml'),
(6, 1, 1, '1L'),
(7, 1, 1, '1.5L'),
(8, 1, 2, '250g'),
(9, 1, 2, '500g'),
(10, 1, 2, '1kg'),
(11, 1, 3, 'test1'),
(12, 1, 3, 'test2'),
(13, 1, 3, 'test3');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_unit_no` varchar(64) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_unit_no` varchar(64) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `reward_earn` int(11) NOT NULL,
  `delivery_date` date NOT NULL,
  `delivery_time` text NOT NULL,
  `date_invoice` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_unit_no`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_unit_no`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`, `reward_earn`, `delivery_date`, `delivery_time`, `date_invoice`) VALUES
(1002, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'https://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Pamela', 'P.', 'pampajarillo@gmail.com', '09274970732', '', '[]', 'Pamela', 'P.', '', 'Asian Mansion II, Dela Rosa St.', '7890', '221b', '', '1223', 'Singapore', 188, '', 0, '', '[]', 'Cash On Delivery', 'cod', 'Pamela', 'P.', '', 'Asian Mansion II, Dela Rosa St.', '7890', '221b', '', '1223', 'Singapore', 188, '', 0, '', '[]', 'Standard Delivery', 'formula_based.formula_based_0', 'Delivery Date: 2021-02-17', 61.3800, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '110.54.162.222', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', 'en-US,en;q=0.9', '2021-02-04 12:11:49', '2021-02-04 12:11:49', 36, '2021-02-17', '', NULL),
(1003, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'https://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Pamela', 'P.', 'pampajarillo@gmail.com', '09274970732', '', '[]', 'Pamela', 'P.', '', 'Asian Mansion II, Dela Rosa St.', '7890', '221b', '', '1223', 'Singapore', 188, '', 0, '', '[]', 'Cash On Delivery', 'cod', 'Pamela', 'P.', '', 'Asian Mansion II, Dela Rosa St.', '7890', '221b', '', '1223', 'Singapore', 188, '', 0, '', '[]', 'Standard Delivery', 'formula_based.formula_based_0', 'Delivery Date: 2021-02-17', 61.3800, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '110.54.162.222', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1', 'en-US,en;q=0.9', '2021-02-04 12:16:05', '2021-02-04 12:16:05', 36, '2021-02-17', '', NULL),
(1004, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 4, 1, 'Shi Yu', 'Low', 'shiyu@blueaquaint.com', '90616757', '', '', 'Shi Yu', 'Low', '', '308 WOODLANDS AVENUE 1', 'NIL', '', '', '730308', 'Singapore', 188, '', 0, '', '', 'Cash On Delivery', 'cod', 'Shi Yu', 'Low', '', '308 WOODLANDS AVENUE 1', 'NIL', '', '', '730308', 'Singapore', 188, '', 0, '', '', 'Standard Delivery', 'formula_based.formula_based_0', 'Delivery Date: 2021-02-08', 72.0800, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '183.90.37.68', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Mobile/15E148 Safari/604.1', 'en-sg', '2021-02-04 12:58:22', '2021-02-04 12:58:22', 47, '2021-02-08', '', NULL),
(1005, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 4, 1, 'Shi Yu', 'Low', 'shiyu@blueaquaint.com', '90616757', '', '', 'Shi Yu', 'Low', '', '308 WOODLANDS AVENUE 1', 'NIL', '', '', '730308', 'Singapore', 188, '', 0, '', '', 'Cash On Delivery', 'cod', 'Shi Yu', 'Low', '', '308 WOODLANDS AVENUE 1', 'NIL', '', '', '730308', 'Singapore', 188, '', 0, '', '', 'Standard Delivery', 'formula_based.formula_based_0', 'Delivery Date: 2021-02-07', 72.0800, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '222.164.161.132', '', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.2 Mobile/15E148 Safari/604.1', 'en-sg', '2021-02-05 00:03:04', '2021-02-05 00:03:04', 47, '2021-02-07', '', NULL),
(1006, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'test', 'test', 'test@test.com', '123456', '', '[]', 'test', 'test', '', '123', '', '123', '', '123345', 'Singapore', 188, '', 0, '', '[]', 'Credit Card', 'omise', 'test', 'test', '', '123', '', '123', '', '123345', 'Singapore', 188, '', 0, '', '[]', 'Free Express Delivery', 'formula_based.formula_based_2', 'Delivery Date: 2021-03-11', 188.3200, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '111.223.84.114', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8', '2021-02-22 10:08:25', '2021-02-22 10:08:25', 188, '2021-03-11', '', NULL),
(1007, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'test', 'test', 'test@email.com', '1234', '', '[]', 'test', 'test', '', '12122333', '12', '12', '', '12345', 'Singapore', 188, '', 0, '', '[]', 'PayPal Express Checkout', 'pp_express', 'test', 'test', '', '12122333', '12', '12', '', '12345', 'Singapore', 188, '', 0, '', '[]', 'Free Standard Delivery', 'formula_based.formula_based_1', 'Delivery Date: 2021-02-25', 393.7600, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '111.223.84.114', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8', '2021-02-22 15:41:37', '2021-02-22 15:41:37', 393, '2021-02-25', '', NULL),
(1008, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'test', 'test', 'test@email.com', '1234', '', '[]', 'test', 'test', '', '12122333', '12', '12', '', '12345', 'Singapore', 188, '', 0, '', '[]', 'PayPal Express Checkout', 'pp_express', 'test', 'test', '', '12122333', '12', '12', '', '12345', 'Singapore', 188, '', 0, '', '[]', 'Free Standard Delivery', 'formula_based.formula_based_1', 'Delivery Date: 2021-02-25', 393.7600, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '111.223.84.114', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8', '2021-02-22 15:41:50', '2021-02-22 15:41:50', 393, '2021-02-25', '', NULL),
(1009, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'test', 'test', 'test@email.com', '1234', '', '[]', 'test', 'test', '', '12122333', '12', '12', '', '12345', 'Singapore', 188, '', 0, '', '[]', 'Credit Card', 'omise', 'test', 'test', '', '12122333', '12', '12', '', '12345', 'Singapore', 188, '', 0, '', '[]', 'Free Standard Delivery', 'formula_based.formula_based_1', 'Delivery Date: 2021-02-25', 393.7600, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '111.223.84.114', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.150 Safari/537.36', 'en-GB,en-US;q=0.9,en;q=0.8', '2021-02-22 15:42:17', '2021-02-22 15:42:17', 393, '2021-02-25', '', NULL),
(1010, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Delivery Date: 2021-04-02', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 12:00:56', '2021-03-31 12:00:56', 85, '2021-04-02', '', NULL),
(1011, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing Purpose\n\nDelivery Date: 2021-04-02', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 12:02:12', '2021-03-31 12:02:12', 85, '2021-04-02', '', NULL),
(1012, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing Purpose\n\nDelivery Date: 2021-04-02', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 12:13:16', '2021-03-31 12:13:16', 85, '2021-04-02', '', NULL),
(1013, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing Purpose\n\nDelivery Date: 2021-04-02', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 12:17:00', '2021-03-31 12:17:00', 85, '2021-04-02', '', NULL),
(1014, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing Purpose\n\nDelivery Date: 2021-04-02', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 12:23:59', '2021-03-31 12:23:59', 85, '2021-04-02', '', NULL),
(1015, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing Purpose\n\nDelivery Date: 2021-04-02', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 12:25:33', '2021-03-31 12:25:33', 85, '2021-04-02', '', NULL),
(1016, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'https://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing Purpose\n\nDelivery Date: 2021-04-02', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 12:26:09', '2021-03-31 12:26:09', 85, '2021-04-02', '', NULL),
(1017, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'https://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing Purpose\n\nDelivery Date: 2021-04-02', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 14:05:35', '2021-03-31 14:05:35', 85, '2021-04-02', '', NULL),
(1018, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'https://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmond_kai@hotmail.com', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Delivery Date: 2021-04-03', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 14:14:58', '2021-03-31 14:14:58', 85, '2021-04-03', '', NULL),
(1019, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'https://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmond_kai@hotmail.com', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing\n\nDelivery Date: 2021-04-09', 77.0400, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 14:17:19', '2021-03-31 14:17:19', 77, '2021-04-09', '', NULL),
(1020, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'https://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '12', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Delivery Date: 2021-04-03', 80.2500, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 14:24:57', '2021-03-31 14:24:57', 80, '2021-04-03', '', NULL),
(1021, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'https://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmond_kai@hotmail.com', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Credit Card', 'omise', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing Purpose\n\nDelivery Date: 2021-04-08', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36', 'en-US,en;q=0.9', '2021-03-31 15:21:45', '2021-03-31 15:21:45', 85, '2021-04-08', '', NULL),
(1024, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Akina', 'Ong', 'akinaong@firstcom.com.sg', '82028113', '', '[]', 'Akina', 'Ong', '', '158 KALLANG WAY', 'PERFORMANCE BUILDING', '03-05', '', '349245', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Akina', 'Ong', '', '158 KALLANG WAY', 'PERFORMANCE BUILDING', '03-05', '', '349245', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Delivery Date: 2021-04-12', 107.0000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.154', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'en-US,en;q=0.9', '2021-04-08 11:44:04', '2021-04-08 11:44:04', 107, '2021-04-12', '', NULL),
(1025, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Bahar', 'Shishechian', 'baharsh07@gmail.com', '+6586876556', '', '[]', 'Bahar', 'Shishechian', '', '12 TAI KENG GARDENS', 'NIL', '12', '', '535294', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Bahar', 'Shishechian', '', '12 TAI KENG GARDENS', 'NIL', '12', '', '535294', 'Singapore', 188, '', 0, '', '[]', 'Standard Delivery', 'formula_based.formula_based_1', 'Delivery Date: 2021-04-14', 127.7200, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '111.223.84.114', '', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'en-US,en;q=0.9', '2021-04-09 10:01:19', '2021-04-09 10:01:19', 102, '2021-04-14', '', NULL),
(1026, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing\n\nDelivery Date: 2021-04-14', 128.4000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '119.74.164.163', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'en-US,en;q=0.9', '2021-04-09 17:16:28', '2021-04-09 17:16:28', 128, '2021-04-14', '', NULL),
(1027, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing\n\nDelivery Date: 2021-04-14', 128.4000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '119.74.164.163', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'en-US,en;q=0.9', '2021-04-09 17:35:27', '2021-04-09 17:35:27', 128, '2021-04-14', '', NULL),
(1029, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Credit Card', 'omise', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Standard Delivery', 'formula_based.formula_based_1', 'Order Comments: test test\n\nDelivery Date: 2021-04-15', 102.0400, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.154', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'en-US,en;q=0.9', '2021-04-12 10:29:20', '2021-04-12 10:29:20', 77, '2021-04-15', '', NULL),
(1030, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'PayPal Express Checkout', 'pp_express', 'Desmond', 'Loh', '', '123213123123123', '', '11', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Standard Delivery', 'formula_based.formula_based_1', 'Order Comments: test test\n\nDelivery Date: 2021-04-15', 102.0400, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.154', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'en-US,en;q=0.9', '2021-04-12 10:31:20', '2021-04-12 10:31:20', 77, '2021-04-15', '', NULL),
(1031, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'https://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '01', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '01', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Test\n\nDelivery Date: 2021-04-24', 85.6000, 7, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.154', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'en-US,en;q=0.9', '2021-04-22 14:18:04', '2021-04-22 14:18:37', 85, '2021-04-24', '', NULL),
(1032, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'https://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '01', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '01', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Test\n\nDelivery Date: 2021-04-24', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.154', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'en-US,en;q=0.9', '2021-04-22 14:19:57', '2021-04-22 14:19:57', 85, '2021-04-24', '', NULL),
(1033, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '01', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '01', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Test\n\nDelivery Date: 2021-04-24', 85.6000, 7, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.154', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'en-US,en;q=0.9', '2021-04-22 14:31:30', '2021-04-22 14:32:21', 85, '2021-04-24', '', NULL),
(1034, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '01', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '01', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Test\n\nDelivery Date: 2021-04-24', 85.6000, 0, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.154', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.128 Safari/537.36', 'en-US,en;q=0.9', '2021-04-22 14:32:30', '2021-04-22 14:32:30', 85, '2021-04-24', '', NULL),
(1035, 0, 'INV-2020-00', 0, 'Nature\'s Hug', 'http://blueaquaseafood2104.firstcomdemo.com/demo-natureshug/', 0, 1, 'Desmond', 'Loh', 'desmondloh@firstcom.com.sg', '12345678', '', '[]', 'Desmond', 'Loh', '', '123213123123123', '', '01', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'HitPay', 'hitpay', 'Desmond', 'Loh', '', '123213123123123', '', '01', '', '123456', 'Singapore', 188, '', 0, '', '[]', 'Your Preferred Delivery Fleet', 'formula_based.formula_based_0', 'Order Comments: Testing\n\nDelivery Date: 2021-04-28', 89.8800, 1, 0, 0.0000, 0, '', 1, 4, 'SGD', 1.00000000, '129.126.68.102', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.85 Safari/537.36', 'en-US,en;q=0.9', '2021-04-26 14:26:51', '2021-04-26 14:27:06', 89, '2021-04-28', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1031, 7, 0, '', '2021-04-22 14:18:37'),
(2, 1033, 7, 0, '', '2021-04-22 14:32:21'),
(3, 1035, 1, 0, '', '2021-04-26 14:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`, `price`, `price_prefix`) VALUES
(3, 1002, 3, 12, 24, 'Weight', '250g', 'select', 4.0000, '+'),
(4, 1003, 4, 12, 24, 'Weight', '250g', 'select', 4.0000, '+'),
(5, 1004, 5, 12, 25, 'Weight', '500g', 'select', 2.0000, '+'),
(6, 1005, 7, 12, 25, 'Weight', '500g', 'select', 2.0000, '+'),
(7, 1006, 9, 12, 24, 'Weight', '250g', 'select', 4.0000, '+'),
(8, 1024, 36, 12, 24, 'Weight', '250g', 'select', 4.0000, '+'),
(9, 1024, 37, 12, 25, 'Weight', '500g', 'select', 2.0000, '+'),
(10, 1025, 38, 12, 25, 'Weight', '500g', 'select', 2.0000, '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `sku`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(3, 1002, 20, 'Vannamei Shrimp 25 - 30 grams', 'shrimp', '', 1, 34.0000, 34.0000, 2.3800, 0),
(4, 1003, 20, 'Vannamei Shrimp 25 - 30 grams', 'shrimp', '', 1, 34.0000, 34.0000, 2.3800, 0),
(5, 1004, 20, 'Vannamei Shrimp 25 - 30 grams', 'shrimp', '', 1, 32.0000, 32.0000, 2.2400, 0),
(6, 1004, 22, 'Jade Perch 500 - 600 grams', 'Jade Perch', '', 1, 12.0000, 12.0000, 0.8400, 0),
(7, 1005, 20, 'Vannamei Shrimp 25 - 30 grams', 'shrimp', '', 1, 32.0000, 32.0000, 2.2400, 0),
(8, 1005, 22, 'Jade Perch 500 - 600 grams', 'Jade Perch', '', 1, 12.0000, 12.0000, 0.8400, 0),
(9, 1006, 20, 'Blue Shrimp', 'shrimp', '', 1, 34.0000, 34.0000, 2.3800, 0),
(10, 1006, 24, 'Persian saffron', 'Persian saffron', '', 1, 80.0000, 80.0000, 5.6000, 0),
(11, 1006, 22, 'Jade Perch', 'Jade Perch', '', 1, 12.0000, 12.0000, 0.8400, 0),
(12, 1006, 13, 'Fortanina Grand Cru', 'B4', 'B4', 2, 25.0000, 50.0000, 1.7500, 0),
(13, 1007, 22, 'Jade Perch', 'Jade Perch', '', 3, 12.0000, 36.0000, 0.8400, 0),
(14, 1007, 23, 'Red Tilapia', 'Tilapia', '', 3, 4.0000, 12.0000, 0.2800, 0),
(15, 1007, 24, 'Persian saffron', 'Persian saffron', '', 4, 80.0000, 320.0000, 5.6000, 0),
(16, 1008, 22, 'Jade Perch', 'Jade Perch', '', 3, 12.0000, 36.0000, 0.8400, 0),
(17, 1008, 23, 'Red Tilapia', 'Tilapia', '', 3, 4.0000, 12.0000, 0.2800, 0),
(18, 1008, 24, 'Persian saffron', 'Persian saffron', '', 4, 80.0000, 320.0000, 5.6000, 0),
(19, 1009, 22, 'Jade Perch', 'Jade Perch', '', 3, 12.0000, 36.0000, 0.8400, 0),
(20, 1009, 23, 'Red Tilapia', 'Tilapia', '', 3, 4.0000, 12.0000, 0.2800, 0),
(21, 1009, 24, 'Persian saffron', 'Persian saffron', '', 4, 80.0000, 320.0000, 5.6000, 0),
(22, 1010, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(23, 1011, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(24, 1012, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(25, 1013, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(26, 1014, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(27, 1015, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(28, 1016, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(29, 1017, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(30, 1018, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(31, 1019, 22, 'Jade Perch', 'Jade Perch', '', 6, 12.0000, 72.0000, 0.8400, 0),
(32, 1020, 11, 'Marcello Lambrusco Grand Cru', 'A1', 'A1', 3, 25.0000, 75.0000, 1.7500, 0),
(33, 1021, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(36, 1024, 20, 'Blue Shrimp', 'shrimp', '', 2, 34.0000, 68.0000, 2.3800, 0),
(37, 1024, 20, 'Blue Shrimp', 'shrimp', '', 1, 32.0000, 32.0000, 2.2400, 0),
(38, 1025, 20, 'Blue Shrimp', 'shrimp', '', 3, 32.0000, 96.0000, 2.2400, 0),
(39, 1026, 22, 'Jade Perch', 'Jade Perch', '', 10, 12.0000, 120.0000, 0.8400, 0),
(40, 1027, 22, 'Jade Perch', 'Jade Perch', '', 10, 12.0000, 120.0000, 0.8400, 0),
(42, 1029, 22, 'Jade Perch', 'Jade Perch', '', 6, 12.0000, 72.0000, 0.8400, 0),
(43, 1030, 22, 'Jade Perch', 'Jade Perch', '', 6, 12.0000, 72.0000, 0.8400, 0),
(44, 1031, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(45, 1032, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(46, 1033, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(47, 1034, 23, 'Red Tilapia', 'Tilapia', '', 20, 4.0000, 80.0000, 0.2800, 0),
(48, 1035, 22, 'Jade Perch', 'Jade Perch', '', 7, 12.0000, 84.0000, 0.8400, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Order Received'),
(2, 1, 'Order Confirmed'),
(5, 1, 'Order Completed'),
(7, 1, 'Order Cancelled'),
(15, 1, 'Order Shipped'),
(17, 1, 'Payment Received'),
(18, 1, 'Payment Pending');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(9, 1002, 'sub_total', 'Sub-Total', 34.0000, 1),
(10, 1002, 'shipping', 'Standard Delivery', 25.0000, 3),
(11, 1002, 'tax', 'GST (7%)', 2.3800, 5),
(12, 1002, 'total', 'Total', 61.3800, 99),
(13, 1003, 'sub_total', 'Sub-Total', 34.0000, 1),
(14, 1003, 'shipping', 'Standard Delivery', 25.0000, 3),
(15, 1003, 'tax', 'GST (7%)', 2.3800, 5),
(16, 1003, 'total', 'Total', 61.3800, 99),
(17, 1004, 'sub_total', 'Sub-Total', 44.0000, 1),
(18, 1004, 'shipping', 'Standard Delivery', 25.0000, 3),
(19, 1004, 'tax', 'GST (7%)', 3.0800, 5),
(20, 1004, 'total', 'Total', 72.0800, 99),
(21, 1005, 'sub_total', 'Sub-Total', 44.0000, 1),
(22, 1005, 'shipping', 'Standard Delivery', 25.0000, 3),
(23, 1005, 'tax', 'GST (7%)', 3.0800, 5),
(24, 1005, 'total', 'Total', 72.0800, 99),
(25, 1006, 'sub_total', 'Sub-Total', 176.0000, 1),
(26, 1006, 'shipping', 'Free Express Delivery', 0.0000, 3),
(27, 1006, 'tax', 'GST (7%)', 12.3200, 5),
(28, 1006, 'total', 'Total', 188.3200, 99),
(29, 1007, 'sub_total', 'Sub-Total', 368.0000, 1),
(30, 1007, 'shipping', 'Free Standard Delivery', 0.0000, 3),
(31, 1007, 'tax', 'GST (7%)', 25.7600, 5),
(32, 1007, 'total', 'Total', 393.7600, 99),
(33, 1008, 'sub_total', 'Sub-Total', 368.0000, 1),
(34, 1008, 'shipping', 'Free Standard Delivery', 0.0000, 3),
(35, 1008, 'tax', 'GST (7%)', 25.7600, 5),
(36, 1008, 'total', 'Total', 393.7600, 99),
(37, 1009, 'sub_total', 'Sub-Total', 368.0000, 1),
(38, 1009, 'shipping', 'Free Standard Delivery', 0.0000, 3),
(39, 1009, 'tax', 'GST (7%)', 25.7600, 5),
(40, 1009, 'total', 'Total', 393.7600, 99),
(41, 1010, 'sub_total', 'Sub-Total', 80.0000, 1),
(42, 1010, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(43, 1010, 'tax', 'GST (7%)', 5.6000, 5),
(44, 1010, 'total', 'Total', 85.6000, 99),
(45, 1011, 'sub_total', 'Sub-Total', 80.0000, 1),
(46, 1011, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(47, 1011, 'tax', 'GST (7%)', 5.6000, 5),
(48, 1011, 'total', 'Total', 85.6000, 99),
(49, 1012, 'sub_total', 'Sub-Total', 80.0000, 1),
(50, 1012, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(51, 1012, 'tax', 'GST (7%)', 5.6000, 5),
(52, 1012, 'total', 'Total', 85.6000, 99),
(53, 1013, 'sub_total', 'Sub-Total', 80.0000, 1),
(54, 1013, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(55, 1013, 'tax', 'GST (7%)', 5.6000, 5),
(56, 1013, 'total', 'Total', 85.6000, 99),
(57, 1014, 'sub_total', 'Sub-Total', 80.0000, 1),
(58, 1014, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(59, 1014, 'tax', 'GST (7%)', 5.6000, 5),
(60, 1014, 'total', 'Total', 85.6000, 99),
(61, 1015, 'sub_total', 'Sub-Total', 80.0000, 1),
(62, 1015, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(63, 1015, 'tax', 'GST (7%)', 5.6000, 5),
(64, 1015, 'total', 'Total', 85.6000, 99),
(65, 1016, 'sub_total', 'Sub-Total', 80.0000, 1),
(66, 1016, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(67, 1016, 'tax', 'GST (7%)', 5.6000, 5),
(68, 1016, 'total', 'Total', 85.6000, 99),
(69, 1017, 'sub_total', 'Sub-Total', 80.0000, 1),
(70, 1017, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(71, 1017, 'tax', 'GST (7%)', 5.6000, 5),
(72, 1017, 'total', 'Total', 85.6000, 99),
(73, 1018, 'sub_total', 'Sub-Total', 80.0000, 1),
(74, 1018, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(75, 1018, 'tax', 'GST (7%)', 5.6000, 5),
(76, 1018, 'total', 'Total', 85.6000, 99),
(77, 1019, 'sub_total', 'Sub-Total', 72.0000, 1),
(78, 1019, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(79, 1019, 'tax', 'GST (7%)', 5.0400, 5),
(80, 1019, 'total', 'Total', 77.0400, 99),
(81, 1020, 'sub_total', 'Sub-Total', 75.0000, 1),
(82, 1020, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(83, 1020, 'tax', 'GST (7%)', 5.2500, 5),
(84, 1020, 'total', 'Total', 80.2500, 99),
(85, 1021, 'sub_total', 'Sub-Total', 80.0000, 1),
(86, 1021, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(87, 1021, 'tax', 'GST (7%)', 5.6000, 5),
(88, 1021, 'total', 'Total', 85.6000, 99),
(97, 1024, 'sub_total', 'Sub-Total', 100.0000, 1),
(98, 1024, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(99, 1024, 'tax', 'GST (7%)', 7.0000, 5),
(100, 1024, 'total', 'Total', 107.0000, 99),
(101, 1025, 'sub_total', 'Sub-Total', 96.0000, 1),
(102, 1025, 'shipping', 'Standard Delivery', 25.0000, 3),
(103, 1025, 'tax', 'GST (7%)', 6.7200, 5),
(104, 1025, 'total', 'Total', 127.7200, 99),
(105, 1026, 'sub_total', 'Sub-Total', 120.0000, 1),
(106, 1026, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(107, 1026, 'tax', 'GST (7%)', 8.4000, 5),
(108, 1026, 'total', 'Total', 128.4000, 99),
(109, 1027, 'sub_total', 'Sub-Total', 120.0000, 1),
(110, 1027, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(111, 1027, 'tax', 'GST (7%)', 8.4000, 5),
(112, 1027, 'total', 'Total', 128.4000, 99),
(117, 1029, 'sub_total', 'Sub-Total', 72.0000, 1),
(118, 1029, 'shipping', 'Standard Delivery', 25.0000, 3),
(119, 1029, 'tax', 'GST (7%)', 5.0400, 5),
(120, 1029, 'total', 'Total', 102.0400, 99),
(121, 1030, 'sub_total', 'Sub-Total', 72.0000, 1),
(122, 1030, 'shipping', 'Standard Delivery', 25.0000, 3),
(123, 1030, 'tax', 'GST (7%)', 5.0400, 5),
(124, 1030, 'total', 'Total', 102.0400, 99),
(125, 1031, 'sub_total', 'Sub-Total', 80.0000, 1),
(126, 1031, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(127, 1031, 'tax', 'GST (7%)', 5.6000, 5),
(128, 1031, 'total', 'Total', 85.6000, 99),
(129, 1032, 'sub_total', 'Sub-Total', 80.0000, 1),
(130, 1032, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(131, 1032, 'tax', 'GST (7%)', 5.6000, 5),
(132, 1032, 'total', 'Total', 85.6000, 99),
(133, 1033, 'sub_total', 'Sub-Total', 80.0000, 1),
(134, 1033, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(135, 1033, 'tax', 'GST (7%)', 5.6000, 5),
(136, 1033, 'total', 'Total', 85.6000, 99),
(137, 1034, 'sub_total', 'Sub-Total', 80.0000, 1),
(138, 1034, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(139, 1034, 'tax', 'GST (7%)', 5.6000, 5),
(140, 1034, 'total', 'Total', 85.6000, 99),
(141, 1035, 'sub_total', 'Sub-Total', 84.0000, 1),
(142, 1035, 'shipping', 'Your Preferred Delivery Fleet', 0.0000, 3),
(143, 1035, 'tax', 'GST (7%)', 5.8800, 5),
(144, 1035, 'total', 'Total', 89.8800, 99);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `delivery_date` varchar(10) NOT NULL,
  `headerline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_page_banner`
--

CREATE TABLE `oc_page_banner` (
  `pb_id` int(11) NOT NULL,
  `page_name` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `query` varchar(64) NOT NULL,
  `image` text NOT NULL,
  `mobile_image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_paypal_order`
--

CREATE TABLE `oc_paypal_order` (
  `paypal_order_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `capture_status` enum('Complete','NotComplete') DEFAULT NULL,
  `currency_code` char(3) NOT NULL,
  `authorization_id` varchar(30) NOT NULL,
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_paypal_order_transaction`
--

CREATE TABLE `oc_paypal_order_transaction` (
  `paypal_order_transaction_id` int(11) NOT NULL,
  `paypal_order_id` int(11) NOT NULL,
  `transaction_id` char(20) NOT NULL,
  `parent_id` char(20) NOT NULL,
  `date_added` datetime NOT NULL,
  `note` varchar(255) NOT NULL,
  `msgsubid` char(38) NOT NULL,
  `receipt_id` char(20) NOT NULL,
  `payment_type` enum('none','echeck','instant','refund','void') DEFAULT NULL,
  `payment_status` char(20) NOT NULL,
  `pending_reason` char(50) NOT NULL,
  `transaction_entity` char(50) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `debug_data` text NOT NULL,
  `call_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `product_type` varchar(64) NOT NULL DEFAULT 'product',
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `product_type`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(11, 'product', 'A1', 'A1', '', '', '', '', '', '', 999, 6, 'catalog/slicing/homepage/P-A1. revised  _1_.jpg', 0, 1, 25.0000, 0, 3, '2020-12-01', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 4, 1, 15, '2020-12-01 17:00:15', '2021-04-12 13:50:18'),
(12, 'product', 'A2', 'A2', '', '', '', '', '', '', 999, 6, 'catalog/A-2.jpg', 0, 1, 25.0000, 0, 3, '2020-12-02', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 5, 1, 4, '2020-12-02 16:52:54', '2021-02-04 16:30:50'),
(13, 'product', 'B4', 'B4', '', '', '', '', '', '', 999, 6, 'catalog/B-4.jpg', 0, 1, 25.0000, 0, 3, '2020-12-02', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 7, 1, 23, '2020-12-02 17:01:47', '2021-02-04 16:30:58'),
(14, 'product', 'D4B', 'D4B', '', '', '', '', '', '', 999, 6, 'catalog/D4B.jpg', 0, 1, 25.0000, 0, 3, '2020-12-02', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 6, 1, 2, '2020-12-02 18:07:50', '2021-02-04 16:29:30'),
(15, 'product', 'PC 12', 'PC 12', '', '', '', '', '', '', 999, 6, 'catalog/slicing/homepage/PC12.jpg', 0, 1, 25.0000, 0, 3, '2020-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 7, 1, 4, '2020-12-03 11:51:14', '2021-02-04 16:30:13'),
(16, 'product', 'D18', 'D18', '', '', '', '', '', '', 999, 6, 'catalog/slicing/homepage/D-18.jpg', 0, 1, 25.0000, 0, 3, '2020-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 8, 1, 3, '2020-12-03 12:00:04', '2021-02-04 16:30:03'),
(17, 'product', 'D17', 'D17', '', '', '', '', '', '', 999, 6, 'catalog/slicing/homepage/D-17.jpg', 0, 1, 25.0000, 0, 3, '2020-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 9, 1, 5, '2020-12-03 14:20:57', '2021-02-04 16:29:55'),
(18, 'product', 'C2', 'C2', '', '', '', '', '', '', 999, 6, 'catalog/slicing/homepage/C2.jpg', 0, 1, 25.0000, 0, 3, '2020-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 10, 1, 2, '2020-12-03 14:43:41', '2021-02-04 16:29:37'),
(19, 'product', 'C3', 'C3', '', '', '', '', '', '', 998, 6, 'catalog/slicing/homepage/C3.jpg', 0, 1, 25.0000, 0, 3, '2020-12-03', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 9, 1, 5, '2020-12-03 15:08:10', '2021-02-04 16:29:16'),
(20, 'product', 'shrimp', '', '', '', '', '', '', '', 1996, 6, 'catalog/slicing/homepage/20201204_095006-1.jpg', 0, 1, 30.0000, 0, 0, '2020-12-15', 1.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 0, 1, 75, '2020-12-03 15:50:05', '2022-06-22 18:37:29'),
(22, 'product', 'Jade Perch', '', '', '', '', '', '', '', 984, 6, 'catalog/slicing/homepage/20201204_095127 _1_ copy-1.jpg', 0, 1, 12.0000, 0, 3, '2020-12-15', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 1, 1, 81, '2020-12-15 13:00:31', '2021-02-16 14:36:01'),
(23, 'product', 'Tilapia', '', '', '', '', '', '', '', 979, 6, 'catalog/slicing/homepage/20201204_095358 copy.jpg', 0, 1, 4.0000, 0, 3, '2020-12-15', 0.00000000, 1, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 2, 1, 12, '2020-12-15 13:05:16', '2021-02-16 17:07:05'),
(24, 'product', 'Persian saffron', '', '', '', '', '', '', '', 999, 6, 'catalog/WhatsApp Image 2021-01-31 at 16.01.55.jpeg', 0, 1, 8.0000, 0, 3, '2020-12-15', 0.00000000, 2, 0.00000000, 0.00000000, 0.00000000, 1, 1, 1, 3, 1, 17, '2020-12-15 16:57:20', '2021-04-12 11:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(11, 1, 'Marcello Lambrusco Grand Cru', '&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Lambrusco Emilia IGP&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Red Dry Sparkling Wine&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Grape&lt;/u&gt;: &lt;/strong&gt;Lambrusco&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Taste&lt;/u&gt;&lt;/strong&gt;: Wrapping, growing on volume closing again on the fruit, the final is memorable&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Colour&lt;/u&gt;&lt;/strong&gt;: Intense ruby red with violet hues, soft foam, and evanescent&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;&lt;u&gt;Bouquet&lt;/u&gt;: &lt;/b&gt;Aromatic smoothing timbre, fragrant and fruity with hints of cherries, berries, and hints of rose hips&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Alcohol&lt;/strong&gt;&lt;/u&gt;: 10.5% vol.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Format&lt;/u&gt;&lt;/strong&gt;: 750ML&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;', 'Marcello Lambrusco Grand Cru,Wine', 'Marcello Lambrusco Grand Cru', '', ''),
(12, 1, 'Forte Rigoni Grand Cru', '&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Malvasia Emilia IGP&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;White Sparkling Wine&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Grape&lt;/u&gt;&lt;/strong&gt;: Malvasia Di Candia&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Taste&lt;/strong&gt;&lt;/u&gt;: Fresh, long and pleasant aftertaste&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Colour&lt;/strong&gt;&lt;/u&gt;: Straw yellow, persistent perlage&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Bouquet&lt;/u&gt;&lt;/strong&gt;: Varietal character and intense&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Alcohol&lt;/strong&gt;&lt;/u&gt;: 10.5% vol.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Format&lt;/u&gt;&lt;/strong&gt;: 750ML&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;', 'Forte Rigoni Grand Cru,Wine', 'Forte Rigoni Grand Cru', '', ''),
(13, 1, 'Fortanina Grand Cru', '&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Emilia IGP&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Red Sparkling Wine&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Grape&lt;/u&gt;&lt;/strong&gt;: Fortana&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Taste&lt;/u&gt;&lt;/strong&gt;: Pleasant, lively with fruit flavour&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Colour&lt;/strong&gt;&lt;/u&gt;: Intense ruby red with violet hues&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Bouquet&lt;/strong&gt;&lt;/u&gt;: Intense with berries hints&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Alcohol&lt;/strong&gt;&lt;/u&gt;: 7% vol. &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Format&lt;/strong&gt;&lt;/u&gt;: 750ML&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;', 'Fortanina Grand Cru,Wine', 'Fortanina Grand Cru', '', ''),
(14, 1, 'Marcello Blanc de Blancs', '&lt;p&gt;&lt;span style=&quot;font-size:14px;&quot;&gt;&lt;strong&gt;Spumante Bianco&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;White Sparkling Wine&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Grape&lt;/u&gt;&lt;/strong&gt;: Chardonnay&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Taste&lt;/strong&gt;&lt;/u&gt;: Dense and smooth, balanced acidity, tasty ending&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Colour&lt;/strong&gt;&lt;/u&gt;: Pale yellow, with fine and persistent perlage&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Bouquet&lt;/strong&gt;&lt;/u&gt;: Good olfactory amplitude, fragrant and floral with hints of toast, honey and citrus tones&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Alcohol&lt;/u&gt;&lt;/strong&gt;: 12.5%&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Format&lt;/u&gt;&lt;/strong&gt;: 750ML&lt;/p&gt;', 'Marcello Blanc de Blancs,Wine', 'Marcello Blanc de Blancs', '', ''),
(15, 1, 'Lambrusco Calicella', '&lt;p&gt;&lt;strong&gt;Emilia IGP&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Red Sparkling Wine&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Grape&lt;/u&gt;&lt;/strong&gt;: Lambrusco&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Taste&lt;/strong&gt;&lt;/u&gt;: Dry and intense&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Colour&lt;/u&gt;&lt;/strong&gt;: Intense ruby red&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Bouquet&lt;/strong&gt;&lt;/u&gt;: Wild berries with hints of cherry and raspberry&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Alcohol&lt;/u&gt;&lt;/strong&gt;: 10.5% vol.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Format&lt;/u&gt;&lt;/strong&gt;: 750ML&lt;/p&gt;', 'Lambrusco Calicella,Wine', 'Lambrusco Calicella', '', ''),
(16, 1, 'Lintrigo Cuvée', '&lt;p&gt;&lt;strong&gt;Spumante Bianco&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Extra Dry Sparkling Wine&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Grape&lt;/u&gt;&lt;/strong&gt;: Chardonnay &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Taste&lt;/u&gt;&lt;/strong&gt;: Pleasantly dry and harmonic taste&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Colour&lt;/u&gt;&lt;/strong&gt;: Light yellow&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Bouquet&lt;/strong&gt;&lt;/u&gt;: Intense, fragnant &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Alcohol&lt;/u&gt;&lt;/strong&gt;: 11% vol.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Format&lt;/u&gt;&lt;/strong&gt;: 750ML&lt;/p&gt;', 'Lintrigo Cuvée,Wine', 'Lintrigo Cuvée', '', ''),
(17, 1, 'Lintrigo Rosé', '&lt;p&gt;&lt;strong&gt;Spumante Rosé&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Rosé Sparkling Wine&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Grapes&lt;/u&gt;&lt;/strong&gt;: 10% Chardonnay, 90% Barbera&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Taste&lt;/strong&gt;&lt;/u&gt;: Pleasantly dry and harmonic taste&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Bouquet&lt;/u&gt;&lt;/strong&gt;: Intense smell, fragrant and fruity&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Alcohol&lt;/u&gt;&lt;/strong&gt;: 11% vol.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Format&lt;/u&gt;&lt;/strong&gt;: 750ML &lt;/p&gt;', 'Lintrigo Rosé,WIne', 'Lintrigo Rosé', '', ''),
(18, 1, 'Malvasia Secca', '&lt;p&gt;&lt;strong&gt;Emilia IGP&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;White Sparkling Wine&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Grape&lt;/strong&gt;&lt;/u&gt;: Malvasia Di Candia&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Taste&lt;/u&gt;&lt;/strong&gt;: Aromatic, well-marked&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Colour&lt;/strong&gt;&lt;/u&gt;: Straw yellow &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Bouquet&lt;/u&gt;&lt;/strong&gt;: Intense and fruity&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Alcohol&lt;/u&gt;&lt;/strong&gt;: 10.5% vol.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Format&lt;/u&gt;&lt;/strong&gt;: 750ML&lt;/p&gt;', 'Malvasia Secca,Wine', 'Malvasia Secca', '', ''),
(19, 1, 'Malvasia DOP', '&lt;p&gt;&lt;strong&gt;Colli Di Parma DOP&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;White Sparkling Wine&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Grape&lt;/u&gt;&lt;/strong&gt;: Malvasia Di Candia&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Taste&lt;/strong&gt;&lt;/u&gt;: Lively and aromatic &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Colour&lt;/strong&gt;&lt;/u&gt;: Straw yellow&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;u&gt;&lt;strong&gt;Bouquet:&lt;/strong&gt;&lt;/u&gt; Persistent, fragrant, intense, and fruity&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Alcohol&lt;/u&gt;&lt;/strong&gt;: 10.5% vol.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;u&gt;Format&lt;/u&gt;&lt;/strong&gt;: 750ML&lt;/p&gt;', 'Malvasia DOP,Wine', 'Malvasia DOP', '', ''),
(20, 1, 'Blue Shrimp', '&lt;p&gt;&lt;em&gt;Vannamei&lt;/em&gt; shrimp is considered a good source of fatty acid and protein. Shrimp improves bone and brain health, weight management and lowers the risk of cardiovascular disease. Shrimp has anti-inflammatory and anti-aging properties that can reduce the risk of various health ailments. Overall, shrimp can be highly beneficial to improving your health in a delicious way.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Weigh: 20 - 25 grams&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Naturally farmed in Singapore&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;No antibiotics, chemicals, or additives&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cooking styles: pan-fry, bake, deep-fry, boil, grill&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;', 'Shrimp', 'Vannamei Shrimp', '', ''),
(22, 1, 'Jade Perch', '&lt;p&gt;Jade Perch, is an Australian native fish species that has the highest natural levels of Omega-3 oil in its flesh and carries stomach sacs of Omega-3 oil. &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Weigh: 500 - 600 grams&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Naturally farmed in Singapore&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;No antibiotics, chemicals, or additives&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cooking styles: bake, grill, steam, pan-fry&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;', 'fish,Jade Perch', 'Jade Perch 500 - 600 Grams', '', ''),
(23, 1, 'Red Tilapia', '&lt;p&gt;Tilapia is a source of protein and is relatively low in fat. and saturated fat. The fish contains the essential fatty acids Omega-3 and Omega-6. It has a mild taste and it\'s easy to prepare and cook.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Weigh: 500 - 600 grams&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Naturally farmed in Singapore&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;No antibiotics, chemicals, or additives&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Cooking styles: pan-fry, broiled, baked, braised, grilled&lt;/strong&gt;&lt;/p&gt;', 'Tilapia,Red Tilapia,Fish', 'Red Tilapia', '', ''),
(24, 1, 'Persian saffron', '&lt;p&gt;Saffron is a spice from the &lt;em&gt;Crocus sativus &lt;/em&gt;flower, which is a cousin of the lily. The saffron derives from threads within the flower itself. Saffron is very expensive because it is difficult to harvest it as farmers must harvest the delicate threads from each flower by hand. Farmers then heat and cure the threads to bring out the flavor of the saffron and this extra labor is why saffron is one of the most expensive spices in the world. &lt;/p&gt;\r\n\r\n&lt;p&gt;The main active antioxidant in saffron is crocin, picrocrocin, and safranal. These antioxidants fight against oxidative stress and free radicals in the body. Here are some of the benefits of saffron:&lt;br /&gt;\r\n1) Protects against cancer&lt;/p&gt;\r\n\r\n&lt;p&gt;2) Promotes learning and memory retention&lt;/p&gt;\r\n\r\n&lt;p&gt;3) Treats mood disorders&lt;/p&gt;\r\n\r\n&lt;p&gt;4) Weight-loss aid&lt;/p&gt;\r\n\r\n&lt;p&gt;5) Helps in Age-Related Macular Degeneration (AMD) &lt;/p&gt;\r\n\r\n&lt;p&gt;6) Inhibit Alzheimer\'s Disease&lt;/p&gt;\r\n\r\n&lt;p&gt;7) Relieve symptoms of premenstrual syndrome &lt;/p&gt;\r\n\r\n&lt;p&gt;8) Anti-tumor &lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;', 'Persian Saffron', 'Persian saffron', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(20, 1),
(22, 2),
(23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(131, 13, 'catalog/slicing/20201204_095006 _1_.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(12, 20, 2, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_image`
--

CREATE TABLE `oc_product_option_image` (
  `product_id` int(11) NOT NULL,
  `product_image_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `sku` text,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `sku`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(24, 12, 20, 2, 8, '', 0, 1, 4.0000, '+', 0, '+', 0.00000000, '-'),
(25, 12, 20, 2, 9, '', 1997, 1, 2.0000, '+', 0, '+', 0.00000000, '+'),
(26, 12, 20, 2, 10, '', 2000, 0, 0.0000, '-', 0, '+', 0.00000000, '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_pdf`
--

CREATE TABLE `oc_product_pdf` (
  `product_pdf_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(11, 13),
(11, 15),
(11, 17),
(12, 14),
(12, 16),
(12, 18),
(12, 19),
(13, 11),
(13, 13),
(13, 15),
(14, 12),
(14, 16),
(14, 19),
(15, 11),
(15, 13),
(15, 17),
(16, 12),
(16, 14),
(16, 17),
(16, 18),
(16, 19),
(17, 11),
(17, 15),
(17, 16),
(18, 12),
(18, 16),
(18, 19),
(19, 12),
(19, 14),
(19, 16),
(19, 18),
(20, 22),
(20, 23),
(20, 24),
(22, 20),
(22, 23),
(22, 24),
(23, 20),
(23, 22),
(23, 24),
(24, 20),
(24, 22),
(24, 23);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(20, 1),
(23, 4),
(22, 5),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(11, 7),
(24, 7);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category_order`
--

CREATE TABLE `oc_product_to_category_order` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(22, 0),
(23, 0),
(24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_waiting_list`
--

CREATE TABLE `oc_product_waiting_list` (
  `waiting_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `email` text NOT NULL,
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` date NOT NULL,
  `date_notified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_waiting_list`
--

INSERT INTO `oc_product_waiting_list` (`waiting_id`, `product_id`, `email`, `notified`, `date_added`, `date_notified`) VALUES
(1, 6, 'jielynoliveros@firstcom.asia', 0, '2020-09-02', '0000-00-00'),
(2, 1, 'bahar@blueaquaint.com', 0, '2020-11-05', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_proemail_content`
--

CREATE TABLE `oc_proemail_content` (
  `content_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `from_name` varchar(255) NOT NULL DEFAULT '',
  `from_email` varchar(255) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `template` varchar(32) NOT NULL DEFAULT '',
  `file` varchar(255) NOT NULL DEFAULT '',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `store` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_proemail_content`
--

INSERT INTO `oc_proemail_content` (`content_id`, `type`, `from_name`, `from_email`, `to`, `subject`, `content`, `template`, `file`, `language_id`, `store`) VALUES
(920, 'customer.approve', '', '', '', '{store_name} - Your Account has been activated!', '&lt;p&gt;Hi {firstname},&lt;/p&gt;\r\n\r\n&lt;p&gt;Welcome and thank you for registering at {store_name}!&lt;/p&gt;\r\n\r\n&lt;p&gt;Your account has now been created and you can log in by using your email address and password by visiting our website or at the following URL:&lt;/p&gt;\r\n\r\n&lt;p&gt;[button={account_url}]My account[/button]&lt;/p&gt;\r\n\r\n&lt;p&gt;Upon logging in, you will be able to access other services including reviewing past orders, printing invoices and editing your account information.&lt;/p&gt;\r\n\r\n&lt;p&gt;Best regards,&lt;br /&gt;\r\n{store_name} team&lt;/p&gt;', '', '', 1, 0),
(921, 'customer.credit', '', '', '', '{store_name} - Account Credit', '&lt;p&gt;Hi {firstname},&lt;/p&gt; &lt;p&gt;You have received {amount} credit!&lt;/p&gt; &lt;p&gt;Your total amount of credit is now {total}.&lt;/p&gt; &lt;p&gt;Your account credit will be automatically deducted from your next purchase.&lt;/p&gt; &lt;p&gt;[button={account_url}]My account[/button]&lt;/p&gt; &lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(922, 'customer.forgotten', '', '', '', '{store_name} - New Password', '&lt;p&gt;Dear customer,&lt;/p&gt; &lt;p&gt;A new password was requested for {store_name} customer account.&lt;/p&gt; &lt;p&gt;To reset your password click on the button below:&lt;/p&gt; &lt;p&gt;[button={reset_link}]Reset my password[/button]&lt;/p&gt; &lt;p&gt;The IP used to make this request was: {ip}&lt;/p&gt; &lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(923, 'customer.register', '', '', '', '{store_name} - Thank you for registering', '&lt;p&gt;Welcome and thank you for registering at {store_name}!&lt;/p&gt;\r\n\r\n[if_approval]\r\n&lt;p&gt;Your account must be approved before you can login. Once approved you can log in by using your email address and password by visiting our website:&lt;/p&gt;\r\n[/if_approval]\r\n\r\n[if_not_approval]\r\n&lt;p&gt;Your account has now been created and you can log in by using your email address and password by visiting our website:&lt;/p&gt;\r\n[/if_not_approval]\r\n\r\n&lt;p&gt;[button={account_url}]My account[/button]&lt;/p&gt; &lt;p&gt;Upon logging in, you will be able to access other services including reviewing past orders, printing invoices and editing your account information.&lt;/p&gt; &lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(924, 'customer.reward', '', '', '', '{store_name} - Reward Points', '&lt;p&gt;Hi {firstname},&lt;/p&gt; &lt;p&gt;You have received {amount} Reward Points!&lt;/p&gt; &lt;p&gt;Your total number of reward points is now {total}.&lt;/p&gt; &lt;p&gt;[button={account_url}]My account[/button]&lt;/p&gt; &lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(925, 'customer.voucher', '', '', '', 'You have been sent a gift card from {from}', '&lt;p&gt;[if_image]&lt;/p&gt;\r\n\r\n&lt;p&gt;{image}&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_image]&lt;/p&gt;\r\n\r\n&lt;p&gt;Congratulations, You have received a Gift Card worth &lt;b&gt;{amount}&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;This Gift Card has been sent to you by &lt;b&gt;{from}&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;[if_message]&lt;/p&gt;\r\n\r\n&lt;p&gt;With a message saying:&lt;br /&gt;\r\n{message}&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_message]&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Redemption code:&lt;/b&gt; &lt;b&gt;{code}&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;To redeem this Gift Card, write down the redemption code then click on the the link below and purchase the product you wish to use this gift voucher on. You can enter the gift voucher code on the shopping cart page before you click checkout.&lt;/p&gt;\r\n\r\n&lt;p&gt;[button={store_url}]{store_name}[/button]&lt;/p&gt;\r\n\r\n&lt;p&gt;Best regards,&lt;br /&gt;\r\n{store_name} team&lt;/p&gt;', '', '', 1, 0),
(926, 'enquiry.confirm', '', '', '', '{store_name} - Enquiry {enquiry_order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Thank you for your interest in {store_name} products. Your enquiry has been received.&lt;/p&gt;\r\n\r\n&lt;p&gt;We will get back to you shortly.&lt;/p&gt;\r\n\r\n&lt;p&gt;[if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;To view your enquiry click on the link below:&lt;/p&gt;\r\n\r\n&lt;p&gt;[button={enquiry_order_url}]My Enquiry[/button]&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_customer] [if_download]&lt;/p&gt;\r\n\r\n&lt;p&gt;[text_download_link]&lt;/p&gt;\r\n\r\n&lt;p&gt;[button={download_url}]My downloads[/button]&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_download]&lt;/p&gt;\r\n\r\n&lt;p&gt;{invoice}&lt;/p&gt;\r\n\r\n&lt;p&gt;Best regards,&lt;br /&gt;\r\n{store_name} team&lt;/p&gt;', '', '', 1, 0),
(927, 'order.confirm', '', '', '', '{store_name} - Order {order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Thank you for your interest in {store_name} products. Your order has been received and will be processed once payment has been confirmed.&lt;/p&gt;\r\n\r\n&lt;p&gt;[if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;To view your order click on the link below:&lt;/p&gt;\r\n\r\n&lt;p&gt;[button={order_url}]My order[/button]&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_customer] [if_download]&lt;/p&gt;\r\n\r\n&lt;p&gt;[text_download_link]&lt;/p&gt;\r\n\r\n&lt;p&gt;[button={download_url}]My downloads[/button]&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_download]&lt;/p&gt;\r\n\r\n&lt;p&gt;{invoice}&lt;/p&gt;\r\n\r\n&lt;p&gt;Best regards,&lt;br /&gt;\r\n{store_name} team&lt;/p&gt;', '', '', 1, 0),
(928, 'order.return', '', '', '', '{store_name} - Return Update {return_id}', '&lt;p&gt;&lt;strong&gt;Dear customer,&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;Your return &lt;b&gt;#{return_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n[if_message]\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt; &lt;p&gt;{message}&lt;/p&gt;\r\n[/if_message]\r\n\r\n&lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(929, 'admin.customer.register', '', '', '', 'New customer', '&lt;p&gt;A new customer has signed up:&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;table&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td style=&quot;width:43%&quot;&gt;Web Site:&lt;/td&gt;\r\n			&lt;td&gt;&lt;b&gt;{store_url}&lt;/b&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;Customer Group: &lt;/td&gt;\r\n			&lt;td&gt;&lt;b&gt;{customer_group}&lt;/b&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;First Name:&lt;/td&gt;\r\n			&lt;td&gt;&lt;b&gt;{firstname}&lt;/b&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;Last Name:&lt;/td&gt;\r\n			&lt;td&gt;&lt;b&gt;{lastname}&lt;/b&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;E-Mail:&lt;/td&gt;\r\n			&lt;td&gt;&lt;b&gt;{email}&lt;/b&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td&gt;Telephone:&lt;/td&gt;\r\n			&lt;td&gt;&lt;b&gt;{telephone}&lt;/b&gt;&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;', '', '', 1, 0),
(930, 'admin.enquiry.confirm', '', '', '', '{store_name} - Enquiry {enquiry_order_id}', '&lt;p&gt;You have received an Enquiry.&lt;/p&gt;\r\n\r\n&lt;p&gt;Enquiry Status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;{invoice}&lt;/p&gt;', '', '', 1, 0),
(931, 'admin.information.contact', '', '', '', 'Enquiry - {enquiry_subject}', '&lt;p&gt;You received a new enquiry.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Name:&lt;/b&gt; {enquiry_name}&lt;br /&gt;\r\n&lt;b&gt;Email:&lt;/b&gt; {enquiry_mail}&lt;br /&gt;\r\n&lt;b&gt;Telephone:&lt;/b&gt; {enquiry_telephone}&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;Message:&lt;/b&gt;&lt;br /&gt;\r\n{enquiry_message}&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Company Name: &lt;/strong&gt;{enquiry_company}&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Company Description: &lt;/strong&gt;{enquiry_companydesc}&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Product Name&lt;/strong&gt;: {enquiry_productname}&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Item List: &lt;/strong&gt;{enquiry_itemlist}&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;SRP:&lt;/strong&gt; {enquiry_srp}&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Selling Price:&lt;/strong&gt; {enquiry_sp}&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Qty available for sale:&lt;/strong&gt; {enquiry_avail}&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Origin: &lt;/strong&gt;{enquiry_origin}&lt;/p&gt;', '', '', 1, 0),
(932, 'admin.order.confirm', '', '', '', '{store_name} - Order {order_id}', '&lt;p&gt;You have received an order.&lt;/p&gt;\r\n\r\n&lt;p&gt;Order Status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;{invoice}&lt;/p&gt;', '', '', 1, 0),
(933, 'admin.stock', '', '', '', 'subject_admin.stock', '&lt;style type=&quot;text/css&quot;&gt;.invoice {\r\n	border-collapse: collapse;\r\n	width: 100%;\r\n	margin: 15px 0;\r\n}\r\n.invoice td {\r\n  	line-height:16px;\r\n  	font-size:12px;\r\n	padding: 7px;\r\n	border: 1px solid #ddd;\r\n}\r\n.invoice thead td {\r\n	background-color: #efefef;\r\n	color: #444;\r\n	font-weight: bold;\r\n}\r\n.invoice tbody td {\r\n	vertical-align: top;\r\n}\r\n&lt;/style&gt;\r\n&lt;p&gt;Good day!&lt;/p&gt;\r\n\r\n&lt;p&gt;Below are the inventory count updates:&lt;/p&gt;\r\n\r\n&lt;p&gt;{product_table}&lt;/p&gt;', '', '', 1, 0),
(934, 'common.top', '', '', '', '', '', '', '', 1, 0),
(935, 'common.header', '', '', '', '', '', '', '', 1, 0),
(936, 'common.footer', '', '', '', '', '', '', '', 1, 0),
(937, 'common.bottom', '', '', '', '', '', '', '', 1, 0),
(938, 'order.update.7', '', '', '', '{store_name} - Order Update {order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Your order &lt;b&gt;#{order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}.&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;[if_message]&lt;/p&gt;\r\n\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt;\r\n\r\n&lt;p&gt;{message}&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_message] [if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;To view your order click on the link below:&lt;/p&gt;\r\n\r\n&lt;p&gt;[button={order_url}]My order[/button]&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;Best regards,&lt;br /&gt;\r\n{store_name} team&lt;/p&gt;', '', '', 1, 0),
(939, 'order.update.5', '', '', '', '{store_name} - Order Update {order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;Your order &lt;b&gt;#{order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n[if_message]\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt; &lt;p&gt;{message}&lt;/p&gt;\r\n[/if_message]\r\n\r\n[if_customer]\r\n  &lt;p&gt;To view your order click on the link below:&lt;/p&gt; &lt;p&gt;[button={order_url}]My order[/button]&lt;/p&gt;\r\n[/if_customer]\r\n\r\n&lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(940, 'order.update.2', '', '', '', '{store_name} - Order Update {order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;Your order &lt;b&gt;#{order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n[if_message]\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt; &lt;p&gt;{message}&lt;/p&gt;\r\n[/if_message]\r\n\r\n[if_customer]\r\n  &lt;p&gt;To view your order click on the link below:&lt;/p&gt; &lt;p&gt;[button={order_url}]My order[/button]&lt;/p&gt;\r\n[/if_customer]\r\n\r\n&lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(941, 'order.update.1', '', '', '', '{store_name} - Order Update {order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;Your order &lt;b&gt;#{order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n[if_message]\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt; &lt;p&gt;{message}&lt;/p&gt;\r\n[/if_message]\r\n\r\n[if_customer]\r\n  &lt;p&gt;To view your order click on the link below:&lt;/p&gt; &lt;p&gt;[button={order_url}]My order[/button]&lt;/p&gt;\r\n[/if_customer]\r\n\r\n&lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(942, 'order.update.15', '', '', '', '{store_name} - Order Update {order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;Your order &lt;b&gt;#{order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n[if_message]\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt; &lt;p&gt;{message}&lt;/p&gt;\r\n[/if_message]\r\n\r\n[if_customer]\r\n  &lt;p&gt;To view your order click on the link below:&lt;/p&gt; &lt;p&gt;[button={order_url}]My order[/button]&lt;/p&gt;\r\n[/if_customer]\r\n\r\n&lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(943, 'order.update.18', '', '', '', '{store_name} - Order Update {order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;Your order &lt;b&gt;#{order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n[if_message]\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt; &lt;p&gt;{message}&lt;/p&gt;\r\n[/if_message]\r\n\r\n[if_customer]\r\n  &lt;p&gt;To view your order click on the link below:&lt;/p&gt; &lt;p&gt;[button={order_url}]My order[/button]&lt;/p&gt;\r\n[/if_customer]\r\n\r\n&lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(944, 'order.update.17', '', '', '', '{store_name} - Order Update {order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;Your order &lt;b&gt;#{order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n[if_message]\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt; &lt;p&gt;{message}&lt;/p&gt;\r\n[/if_message]\r\n\r\n[if_customer]\r\n  &lt;p&gt;To view your order click on the link below:&lt;/p&gt; &lt;p&gt;[button={order_url}]My order[/button]&lt;/p&gt;\r\n[/if_customer]\r\n\r\n&lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(945, 'enquiry.update.7', '', '', '', '{store_name} - Order Enquiry {enquiry_order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Your order &lt;b&gt;#{enquiry_order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;[if_message]&lt;/p&gt;\r\n\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt;\r\n\r\n&lt;p&gt;{message}&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_message] [if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;To view your order click on the link below:&lt;/p&gt;\r\n\r\n&lt;p&gt;[button={enquiry_order_url}]My Enquiry[/button]&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;Best regards,&lt;br /&gt;\r\n{store_name} team&lt;/p&gt;', '', '', 1, 0),
(946, 'enquiry.update.5', '', '', '', '{store_name} - Order Enquiry {enquiry_order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Your enquiry &lt;b&gt;#{enquiry_order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;[if_message]&lt;/p&gt;\r\n\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt;\r\n\r\n&lt;p&gt;{message}&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_message] [if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;To view your order click on the link below:&lt;/p&gt;\r\n\r\n&lt;p&gt;[button={enquiry_order_url}]My Enquiry[/button]&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;Best regards,&lt;br /&gt;\r\n{store_name} team&lt;/p&gt;', '', '', 1, 0),
(947, 'enquiry.update.2', '', '', '', '{store_name} - Order Enquiry {enquiry_order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;Your enquiry&amp;nbsp;&lt;b&gt;#{enquiry_order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n[if_message]\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt; &lt;p&gt;{message}&lt;/p&gt;\r\n[/if_message]\r\n\r\n[if_customer]\r\n  &lt;p&gt;To view your order click on the link below:&lt;/p&gt; &lt;p&gt;[button={enquiry_order_url}]My Enquiry[/button]&lt;/p&gt;\r\n[/if_customer]\r\n\r\n&lt;p&gt;Best regards,&lt;br&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(948, 'enquiry.update.1', '', '', '', '{store_name} - Order Enquiry {enquiry_order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Your enquiry &lt;b&gt;#{enquiry_order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;[if_message]&lt;/p&gt;\r\n\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt;\r\n\r\n&lt;p&gt;{message}&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_message] [if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;To view your order click on the link below:&lt;/p&gt;\r\n\r\n&lt;p&gt;[button={enquiry_order_url}]My Enquiry[/button]&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;Best regards,&lt;br /&gt;\r\n{store_name} team&lt;/p&gt;', '', '', 1, 0),
(949, 'enquiry.update.15', '', '', '', '{store_name} - Order Enquiry {enquiry_order_id}', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Your enquiry &lt;b&gt;#{enquiry_order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;[if_message]&lt;/p&gt;\r\n\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt;\r\n\r\n&lt;p&gt;{message}&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_message] [if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;To view your order click on the link below:&lt;/p&gt;\r\n\r\n&lt;p&gt;[button={enquiry_order_url}]My Enquiry[/button]&lt;/p&gt;\r\n\r\n&lt;p&gt;[/if_customer]&lt;/p&gt;\r\n\r\n&lt;p&gt;Best regards,&lt;br /&gt;\r\n{store_name} team&lt;/p&gt;', '', '', 1, 0),
(950, 'enquiry.update.18', '', '', '', 'subject_enquiry.update', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;Your order &lt;b&gt;#{order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n[if_message]\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt; &lt;p&gt;{message}&lt;/p&gt;\r\n[/if_message]\r\n\r\n[if_customer]\r\n  &lt;p&gt;To view your order click on the link below:&lt;/p&gt; &lt;p&gt;[button={order_url}]My order[/button]&lt;/p&gt;\r\n[/if_customer]\r\n\r\n&lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0),
(951, 'enquiry.update.17', '', '', '', 'subject_enquiry.update', '&lt;p&gt;&lt;strong&gt;Hi {firstname},&lt;/strong&gt;&lt;/p&gt; &lt;p&gt;Your order &lt;b&gt;#{order_id}&lt;/b&gt; has been updated to the following status: &lt;b&gt;{order_status}&lt;/b&gt;&lt;/p&gt;\r\n\r\n[if_message]\r\n&lt;p&gt;The comments for your order are:&lt;/p&gt; &lt;p&gt;{message}&lt;/p&gt;\r\n[/if_message]\r\n\r\n[if_customer]\r\n  &lt;p&gt;To view your order click on the link below:&lt;/p&gt; &lt;p&gt;[button={order_url}]My order[/button]&lt;/p&gt;\r\n[/if_customer]\r\n\r\n&lt;p&gt;Best regards,&lt;br/&gt;{store_name} team&lt;/p&gt;', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_relatedoptions`
--

CREATE TABLE `oc_relatedoptions` (
  `relatedoptions_id` int(11) NOT NULL,
  `relatedoptions_variant_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `location` varchar(128) NOT NULL,
  `stock_status_id` int(11) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `defaultselect` tinyint(11) NOT NULL,
  `defaultselectpriority` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_relatedoptions_discount`
--

CREATE TABLE `oc_relatedoptions_discount` (
  `relatedoptions_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL,
  `priority` int(5) NOT NULL,
  `price` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_relatedoptions_option`
--

CREATE TABLE `oc_relatedoptions_option` (
  `relatedoptions_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_relatedoptions_search`
--

CREATE TABLE `oc_relatedoptions_search` (
  `product_id` int(11) NOT NULL,
  `ro_ids` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_relatedoptions_special`
--

CREATE TABLE `oc_relatedoptions_special` (
  `relatedoptions_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL,
  `price` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_relatedoptions_to_char`
--

CREATE TABLE `oc_relatedoptions_to_char` (
  `relatedoptions_id` int(11) NOT NULL,
  `char_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_relatedoptions_variant`
--

CREATE TABLE `oc_relatedoptions_variant` (
  `relatedoptions_variant_id` int(11) NOT NULL,
  `relatedoptions_variant_name` char(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_relatedoptions_variant_option`
--

CREATE TABLE `oc_relatedoptions_variant_option` (
  `relatedoptions_variant_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_relatedoptions_variant_product`
--

CREATE TABLE `oc_relatedoptions_variant_product` (
  `relatedoptions_variant_product_id` int(11) NOT NULL,
  `relatedoptions_variant_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `relatedoptions_use` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(2, 1, 'Awaiting Products'),
(3, 1, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `image` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_salescombopge`
--

CREATE TABLE `oc_salescombopge` (
  `salescombopge_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `backgroundcolor` varchar(64) NOT NULL,
  `fontcolor` varchar(64) NOT NULL,
  `image` varchar(256) NOT NULL,
  `top` int(1) NOT NULL DEFAULT '0',
  `autopopup` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_salescombopge_customer`
--

CREATE TABLE `oc_salescombopge_customer` (
  `salescombopge_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_salescombopge_customer_group`
--

CREATE TABLE `oc_salescombopge_customer_group` (
  `salescombopge_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_salescombopge_description`
--

CREATE TABLE `oc_salescombopge_description` (
  `salescombopge_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `rules` text NOT NULL,
  `message` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_salescombopge_offertag`
--

CREATE TABLE `oc_salescombopge_offertag` (
  `salescombopge_offertag_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `offertag` varchar(255) NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_salescombopge_offertag`
--

INSERT INTO `oc_salescombopge_offertag` (`salescombopge_offertag_id`, `product_id`, `offertag`, `language_id`) VALUES
(150, 12, '', 1),
(154, 22, '', 1),
(145, 17, '', 1),
(156, 23, '', 1),
(144, 18, '', 1),
(146, 16, '', 1),
(147, 15, '', 1),
(143, 14, '', 1),
(151, 13, '', 1),
(163, 11, '', 1),
(141, 19, '', 1),
(166, 20, '', 1),
(162, 24, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_salescombopge_product`
--

CREATE TABLE `oc_salescombopge_product` (
  `salescombopge_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_salescombopge_to_category`
--

CREATE TABLE `oc_salescombopge_to_category` (
  `salescombopge_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_salescombopge_to_layout`
--

CREATE TABLE `oc_salescombopge_to_layout` (
  `salescombopge_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_salescombopge_to_store`
--

CREATE TABLE `oc_salescombopge_to_store` (
  `salescombopge_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_nauthor`
--

CREATE TABLE `oc_sb_nauthor` (
  `nauthor_id` int(11) NOT NULL,
  `adminid` varchar(64) COLLATE utf8_bin NOT NULL,
  `name` varchar(64) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_nauthor_description`
--

CREATE TABLE `oc_sb_nauthor_description` (
  `nauthor_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `ctitle` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_ncategory`
--

CREATE TABLE `oc_sb_ncategory` (
  `ncategory_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_sb_ncategory`
--

INSERT INTO `oc_sb_ncategory` (`ncategory_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(59, '', 0, 0, 10, 0, 1, '2020-08-15 12:10:37', '2020-08-15 12:10:37'),
(60, '', 0, 0, 10, 0, 1, '2020-08-15 12:10:44', '2020-08-15 12:10:44');

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_ncategory_description`
--

CREATE TABLE `oc_sb_ncategory_description` (
  `ncategory_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` text COLLATE utf8_bin NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_sb_ncategory_description`
--

INSERT INTO `oc_sb_ncategory_description` (`ncategory_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(59, 1, '2020', '', '', ''),
(60, 1, '2019', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_ncategory_to_group`
--

CREATE TABLE `oc_sb_ncategory_to_group` (
  `ncategory_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_sb_ncategory_to_group`
--

INSERT INTO `oc_sb_ncategory_to_group` (`ncategory_id`, `group_id`) VALUES
(59, 1),
(60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_ncategory_to_layout`
--

CREATE TABLE `oc_sb_ncategory_to_layout` (
  `ncategory_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_sb_ncategory_to_layout`
--

INSERT INTO `oc_sb_ncategory_to_layout` (`ncategory_id`, `store_id`, `layout_id`) VALUES
(59, 0, 0),
(60, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_ncategory_to_store`
--

CREATE TABLE `oc_sb_ncategory_to_store` (
  `ncategory_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_sb_ncategory_to_store`
--

INSERT INTO `oc_sb_ncategory_to_store` (`ncategory_id`, `store_id`) VALUES
(59, 0),
(60, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_ncomments`
--

CREATE TABLE `oc_sb_ncomments` (
  `ncomment_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `language_id` int(2) NOT NULL,
  `reply_id` int(11) NOT NULL DEFAULT '0',
  `author` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` text COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_news`
--

CREATE TABLE `oc_sb_news` (
  `news_id` int(11) NOT NULL,
  `nauthor_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `acom` int(1) NOT NULL DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  `image2` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `gal_thumb_w` int(5) NOT NULL,
  `gal_thumb_h` int(5) NOT NULL,
  `gal_popup_w` int(5) NOT NULL,
  `gal_popup_h` int(5) NOT NULL,
  `gal_slider_h` int(4) NOT NULL,
  `gal_slider_t` int(1) NOT NULL,
  `date_pub` datetime DEFAULT NULL,
  `gal_slider_w` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_sb_news`
--

INSERT INTO `oc_sb_news` (`news_id`, `nauthor_id`, `status`, `image`, `acom`, `date_added`, `date_updated`, `image2`, `sort_order`, `gal_thumb_w`, `gal_thumb_h`, `gal_popup_w`, `gal_popup_h`, `gal_slider_h`, `gal_slider_t`, `date_pub`, `gal_slider_w`) VALUES
(6, 0, 1, '', 0, '2020-12-30 12:01:00', '2021-01-05 11:38:36', 'catalog/Christmas Donation/food.jpg', 1, 150, 150, 700, 700, 400, 1, '2020-12-30 12:01:00', 980),
(7, 0, 1, '', 0, '2021-01-12 18:04:20', '2021-01-12 18:22:51', 'catalog/3.png', 1, 150, 150, 700, 700, 400, 1, '2021-01-11 18:04:20', 980);

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_news_archive`
--

CREATE TABLE `oc_sb_news_archive` (
  `news_archive_id` int(11) NOT NULL,
  `store_id` int(3) NOT NULL,
  `year` int(4) NOT NULL,
  `months` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_sb_news_archive`
--

INSERT INTO `oc_sb_news_archive` (`news_archive_id`, `store_id`, `year`, `months`) VALUES
(74, 0, 2020, 'a:1:{i:12;i:1;}'),
(75, 0, 2021, 'a:1:{i:1;i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_news_description`
--

CREATE TABLE `oc_sb_news_description` (
  `news_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ctitle` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description2` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `meta_desc` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_bin NOT NULL,
  `ntags` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cfield1` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cfield2` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cfield3` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cfield4` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_sb_news_description`
--

INSERT INTO `oc_sb_news_description` (`news_id`, `language_id`, `title`, `ctitle`, `description`, `description2`, `meta_desc`, `meta_key`, `ntags`, `cfield1`, `cfield2`, `cfield3`, `cfield4`) VALUES
(6, 1, 'A Christmas Donation', '', '&lt;p style=&quot;text-align: justify;&quot;&gt; &lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt;This year\'s Christmas has been made special with the organisation of a hearwarming christmas meal donation to multiple beneficiaries - &lt;a href=&quot;http://ntuchealth.sg/henderson-home/&quot;&gt;Henderson Home&lt;/a&gt;, &lt;a href=&quot;http://www.instagram.com/bffrescuedogs/?hl=en&quot;&gt;BFF Rescue Dogs&lt;/a&gt;,  and &lt;a href=&quot;http://www.animalloversleague.com/&quot;&gt;Animal Lovers League&lt;/a&gt;. All thanks to the dedicated team at &lt;a href=&quot;http://www.majulahmovement.com/&quot;&gt;Majulah Movement&lt;/a&gt; and &lt;a href=&quot;http://www.facebook.com/goodyearseafood/&quot;&gt;Good Year Seafood Village&lt;/a&gt; for helping with the tilapia filleting and whipping up the delicious healthy meals. Through Paul Foster, we\'ve managed to donate our locally farmed Tilapia fish to the people and even to furry animals this Christmas. &lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: justify;&quot;&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;Good Year Restaurant&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/0F1FE616-BC6F-4435-B85D-DB1B5BE7FCF1.JPG&quot; style=&quot;width: 500px; height: 667px; float: left;&quot; /&gt;&lt;img alt=&quot;12e617ba-7da9-4801-83d4-a8fd26754050&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/12e617ba-7da9-4801-83d4-a8fd26754050.JPG&quot; style=&quot;width: 500px; height: 667px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;746b3b07-604b-4760-8063-5fe24345bef8&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/746b3b07-604b-4760-8063-5fe24345bef8.JPG&quot; style=&quot;width: 500px; height: 375px;&quot; /&gt;&lt;img alt=&quot;4757b618-a1a7-4c96-b4a0-822a53809e56&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/4757b618-a1a7-4c96-b4a0-822a53809e56.JPG&quot; style=&quot;width: 500px; height: 375px;&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;em&gt;Tilapia Fish Soup for the folks at Henderson Home&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;img alt=&quot;2e4077e2-1616-4d78-b8ec-003278776722&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/2e4077e2-1616-4d78-b8ec-003278776722.JPG&quot; style=&quot;width: 500px; height: 667px;&quot; /&gt;&lt;img alt=&quot;695b6b9a-a7b1-42d5-a7e0-074619b9aa5c&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/695b6b9a-a7b1-42d5-a7e0-074619b9aa5c.JPG&quot; style=&quot;width: 500px; height: 667px;&quot; /&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;img alt=&quot;aa35a43f-bedf-403d-9b36-9fd1388a6be1&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/aa35a43f-bedf-403d-9b36-9fd1388a6be1.JPG&quot; style=&quot;width: 500px; height: 667px;&quot; /&gt;&lt;img alt=&quot;e1f375d4-a0c0-4117-b786-044e779f0b6a&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/e1f375d4-a0c0-4117-b786-044e779f0b6a.JPG&quot; style=&quot;width: 500px; height: 667px;&quot; /&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;img alt=&quot;29A19B1A-639E-43B6-A59D-068A942B880B&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/29A19B1A-639E-43B6-A59D-068A942B880B.JPG&quot; style=&quot;width: 500px; height: 667px;&quot; /&gt;&lt;img alt=&quot;41DE9976-D41F-4176-A7D0-008422EB9AD5&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/d15c9554-64ab-4b1f-b063-ae155fad1d68.JPG&quot; style=&quot;width: 500px; height: 667px;&quot; /&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;img alt=&quot;A8251D57-41E3-449C-AE78-470E007367DB&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/A8251D57-41E3-449C-AE78-470E007367DB.JPG&quot; style=&quot;width: 500px; height: 1030px;&quot; /&gt;&lt;img alt=&quot;41DE9976-D41F-4176-A7D0-008422EB9AD5&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/41DE9976-D41F-4176-A7D0-008422EB9AD5.JPG&quot; style=&quot;width: 500px; height: 1030px;&quot; /&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;em&gt;&lt;img alt=&quot;6F7E2482-0268-49DC-AAE9-BDB26B4DBAB1&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/Christmas Donation/6F7E2482-0268-49DC-AAE9-BDB26B4DBAB1.JPG&quot; style=&quot;width: 1000px; height: 486px;&quot; /&gt;&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: center;&quot;&gt;&lt;em&gt;Fresh Tilapia for the animal shelters and the kind working staff.&lt;/em&gt;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: center;&quot;&gt; &lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align: center;&quot;&gt;Christmas is most truly Christmas when we celebrate it by giving the light of love to those who need it most.&lt;/p&gt;', '&lt;p&gt;A Christmas Donation - organised by Majulah Movement.&lt;/p&gt;', '', 'Paul Foster, Donation, Majulah Movement, Tilapia, Nature\'s hug, Henderson Home, Christmas, Animal Shelter', 'Paul Foster, Donation, Majulah Movement, Tilapia, Nature\'s hug, Henderson Home, Christmas, Animal Shelter', '', '', '', ''),
(7, 1, '30 Minute Meals! Shrimp Pad Thai', '', '&lt;p&gt;We try our hands at the traditional thai classic dish for a quick 30 minute meal prep!&lt;/p&gt;\r\n\r\n&lt;p&gt;Using mostly locally sourced ingredients, we wanderlust to the land of smiles in a jiffy.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Ingredients&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;4 ounces uncooked thick rice noodles&lt;/li&gt;\r\n	&lt;li&gt;1/2 pound uncooked small shrimp, peeled and deveined&lt;/li&gt;\r\n	&lt;li&gt;2 teaspoons canola oil&lt;/li&gt;\r\n	&lt;li&gt;1 large onion, chopped&lt;/li&gt;\r\n	&lt;li&gt;1 garlic clove, minced&lt;/li&gt;\r\n	&lt;li&gt;1 large egg, lightly beaten&lt;/li&gt;\r\n	&lt;li&gt;80 g tofu, cut into bite size&lt;/li&gt;\r\n	&lt;li&gt;4 green onions, thinly sliced&lt;/li&gt;\r\n	&lt;li&gt;1/3 cup rice vinegar&lt;/li&gt;\r\n	&lt;li&gt;1/4 cup sugar&lt;/li&gt;\r\n	&lt;li&gt;3 tablespoons reduced-sodium soy sauce&lt;/li&gt;\r\n	&lt;li&gt;2 tablespoons fish sauce or additional reduced-sodium soy sauce&lt;/li&gt;\r\n	&lt;li&gt;2 to 3 teaspoons chili garlic sauce&lt;/li&gt;\r\n	&lt;li&gt;2 tablespoons chopped salted peanuts&lt;/li&gt;\r\n	&lt;li&gt;Chopped fresh cilantro leaves&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Directions&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;Cook noodles according to package directions.&lt;/li&gt;\r\n	&lt;li&gt;In a large nonstick skillet or wok, stir-fry shrimp in oil until shrimp turn pink; remove and set aside.&lt;/li&gt;\r\n	&lt;li&gt;Add onion and garlic to the pan. Make a well in the center of the onion mixture; add egg. Stir-fry for 2-3 minutes or until egg is completely set.&lt;/li&gt;\r\n	&lt;li&gt;Add the green onions, mungbeans, tofu cubes, soy sauce, fish sauce, Cayenne pepper and peanuts; heat through.&lt;/li&gt;\r\n	&lt;li&gt;Return shrimp to the pan and heat through. Drain noodles; toss with shrimp mixture. Garnish with lime and cilantro.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;2&quot; class=&quot;img-responsive &quot; src=&quot;image/catalog/2.png&quot; style=&quot;width: 800px; height: 800px;&quot; /&gt;&lt;/p&gt;', '&lt;p&gt;We try our hands at the traditional thai classic dish for a quick 30 minute meal prep!&lt;/p&gt;\r\n\r\n&lt;p&gt;Using mostly locally sourced ingredients, we wanderlust to the land of smiles in a jiffy.&lt;/p&gt;', 'padthai, shrimp recipe, home cooking', 'padthai, shrimp recipe, home cooking', 'padthai, recipe, home cooking, shrimp', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_news_gallery`
--

CREATE TABLE `oc_sb_news_gallery` (
  `news_image_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `text` text NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_news_related`
--

CREATE TABLE `oc_sb_news_related` (
  `news_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_news_to_group`
--

CREATE TABLE `oc_sb_news_to_group` (
  `news_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_sb_news_to_group`
--

INSERT INTO `oc_sb_news_to_group` (`news_id`, `group_id`) VALUES
(6, 1),
(6, 2),
(7, 1),
(7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_news_to_layout`
--

CREATE TABLE `oc_sb_news_to_layout` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_sb_news_to_layout`
--

INSERT INTO `oc_sb_news_to_layout` (`news_id`, `store_id`, `layout_id`) VALUES
(6, 0, 0),
(7, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_news_to_ncategory`
--

CREATE TABLE `oc_sb_news_to_ncategory` (
  `news_id` int(11) NOT NULL,
  `ncategory_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_sb_news_to_ncategory`
--

INSERT INTO `oc_sb_news_to_ncategory` (`news_id`, `ncategory_id`) VALUES
(6, 59);

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_news_to_store`
--

CREATE TABLE `oc_sb_news_to_store` (
  `news_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `oc_sb_news_to_store`
--

INSERT INTO `oc_sb_news_to_store` (`news_id`, `store_id`) VALUES
(6, 0),
(7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_sb_news_video`
--

CREATE TABLE `oc_sb_news_video` (
  `news_video_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `text` text COLLATE utf8_bin NOT NULL,
  `video` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `id` int(11) UNSIGNED NOT NULL,
  `query` varchar(255) NOT NULL DEFAULT '',
  `keyword` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`id`, `query`, `keyword`) VALUES
(1, 'product/search', 'search'),
(2, 'product/special', 'special'),
(3, 'product/manufacturer', 'manufacturer'),
(4, 'product/compare', 'compare'),
(5, 'information/contact', 'contact'),
(6, 'information/sitemap', 'sitemap'),
(7, 'checkout/cart', 'cart'),
(8, 'checkout/checkout', 'checkout'),
(9, 'checkout/success', 'checkout-success'),
(10, 'affiliate/tracking', 'affiliate-tracking'),
(11, 'affiliate/transaction', 'affiliate-transaction'),
(12, 'affiliate/success', 'affiliate-success'),
(13, 'affiliate/register', 'affiliate-register'),
(14, 'affiliate/payment', 'affiliate-payment'),
(15, 'affiliate/password', 'affiliate-password'),
(16, 'affiliate/login', 'affiliate-login'),
(17, 'affiliate/forgotten', 'affiliate-forgotten'),
(18, 'affiliate/edit', 'affiliate-edit'),
(19, 'affiliate/account', 'affiliate-account'),
(20, 'account/wishlist', 'wishlist'),
(21, 'account/transaction', 'transaction'),
(22, 'account/voucher', 'voucher'),
(23, 'account/success', 'success'),
(24, 'account/reward', 'reward'),
(25, 'account/return', 'return'),
(26, 'account/return/add', 'return-add'),
(27, 'account/recurring', 'recurring'),
(28, 'account/register', 'register'),
(29, 'account/password', 'password'),
(30, 'account/order', 'order'),
(31, 'account/order/info', 'order-info'),
(32, 'account/newsletter', 'newsletter'),
(33, 'account/login', 'login'),
(34, 'account/logout', 'logout'),
(35, 'account/edit', 'edit'),
(36, 'account/forgotten', 'forgotten'),
(37, 'account/download', 'download'),
(38, 'account/account', 'account'),
(39, 'account/address', 'address');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` longtext NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(5, 0, 'voucher', 'voucher_sort_order', '8', 0),
(6, 0, 'voucher', 'voucher_status', '1', 0),
(107, 0, 'product_count', 'product_count_status', '1', 0),
(108, 0, 'product_count', 'product_count_sort_order', '1', 0),
(109, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(110, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(111, 0, 'shipping', 'shipping_sort_order', '3', 0),
(112, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(113, 0, 'sub_total', 'sub_total_status', '1', 0),
(114, 0, 'timeslot_surcharge', 'timeslot_surcharge_sort_order', '1', 0),
(115, 0, 'timeslot_surcharge', 'timeslot_surcharge_status', '1', 0),
(116, 0, 'tax', 'tax_status', '1', 0),
(117, 0, 'total', 'total_sort_order', '99', 0),
(118, 0, 'total', 'total_status', '1', 0),
(119, 0, 'tax', 'tax_sort_order', '5', 0),
(120, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(126, 0, 'shipping', 'shipping_status', '1', 0),
(127, 0, 'shipping', 'shipping_estimator', '1', 0),
(128, 0, 'coupon', 'coupon_sort_order', '4', 0),
(129, 0, 'coupon', 'coupon_status', '1', 0),
(135, 0, 'credit', 'credit_sort_order', '7', 0),
(136, 0, 'credit', 'credit_status', '1', 0),
(137, 0, 'reward', 'reward_sort_order', '2', 0),
(138, 0, 'reward', 'reward_status', '1', 0),
(143, 0, 'account', 'account_status', '1', 0),
(144, 0, 'affiliate', 'affiliate_status', '0', 0),
(175, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(176, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(177, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(178, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(179, 0, 'dashboard_chart', 'dashboard_chart_width', '9', 0),
(180, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(181, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(182, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(183, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(184, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(185, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(186, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(187, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(188, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(189, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(190, 0, 'ea_cke', 'ea_cke_enable_ckeditor', '1', 0),
(191, 0, 'ea_cke', 'ea_cke_ckeditor_mode', 'advanced', 0),
(192, 0, 'ea_cke', 'ea_cke_ckeditor_skin', 'moono-lisa', 0),
(193, 0, 'ea_cke', 'ea_cke_codemirror_skin', 'base16-dark', 0),
(194, 0, 'pim_modules', 'pim_modules', '{\"Sanitizer\":{\"name\":\"Sanitizer\"}}', 1),
(195, 0, 'pim', 'pim_status', '1', 0),
(196, 0, 'pim', 'pim_miu', '0', 0),
(197, 0, 'pim', 'pim_deletedef', '0', 0),
(198, 0, 'pim', 'pim_copyOverwrite', '0', 0),
(199, 0, 'pim', 'pim_uploadOverwrite', '0', 0),
(200, 0, 'pim', 'pim_uploadMaxSize', '999', 0),
(201, 0, 'pim', 'pim_uploadMaxType', 'M', 0),
(202, 0, 'pim', 'pim_language', '', 0),
(203, 0, 'pim', 'pim_width', '1000', 0),
(204, 0, 'pim', 'pim_height', '600', 0),
(205, 0, 'pro_email_template', 'pro_email_template_status', '1', 0),
(216, 0, 'google_captcha', 'google_captcha_key', '6LfLxn0UAAAAAEq0FxFbiLL4XbaZsVy7S_AkLwe_', 0),
(217, 0, 'google_captcha', 'google_captcha_secret', '6LfLxn0UAAAAAG4KwPWXtTZC24QSzNmgeLzcfRcD', 0),
(218, 0, 'google_captcha', 'google_captcha_firstcomdemolinks_key', '6LdFvxkTAAAAABR99eSYNj161DG8227WuN1T1-AH', 0),
(219, 0, 'google_captcha', 'google_captcha_firstcomdemolinks_secret', '6LdFvxkTAAAAAJ-H3pDxtlCfgQFMZ-pWTuIwaaUU', 0),
(220, 0, 'google_captcha', 'google_captcha_localhost_key', '6Lcbjj4UAAAAABT2X4B_ypLVWOdge29bya4w_8He', 0),
(221, 0, 'google_captcha', 'google_captcha_localhost_secret', '6Lcbjj4UAAAAALuizo8cNcSoeaa1NZ46K4iHvRey', 0),
(222, 0, 'google_captcha', 'google_captcha_status', '1', 0),
(224, 0, 'google_analytics', 'google_analytics_status', '1', 0),
(225, 0, 'google_analytics', 'google_analytics_code', '', 0),
(226, 0, 'google_sitemap', 'google_sitemap_status', '1', 0),
(227, 0, 'pp_express', 'pp_express_status', '1', 0),
(228, 0, 'pp_express', 'pp_express_username', 'sandbox-facilitator_api1.firstcom.com.sg', 0),
(229, 0, 'pp_express', 'pp_express_password', '1406873466', 0),
(230, 0, 'pp_express', 'pp_express_signature', 'ADWDE8isW6OZGdTinj7mkL-ozroWAMpcC38pnT6Mc.vvCBCSXvmKClo.', 0),
(231, 0, 'pp_express', 'pp_express_sandbox_username', 'sandbox-facilitator_api1.firstcom.com.sg', 0),
(232, 0, 'pp_express', 'pp_express_sandbox_password', '1406873466', 0),
(233, 0, 'pp_express', 'pp_express_sandbox_signature', 'ADWDE8isW6OZGdTinj7mkL-ozroWAMpcC38pnT6Mc.vvCBCSXvmKClo.', 0),
(234, 0, 'pp_express', 'pp_express_test', '1', 0),
(235, 0, 'pp_express', 'pp_express_currency', 'SGD', 0),
(236, 0, 'pp_express', 'pp_express_canceled_reversal_status_id', '9', 0),
(237, 0, 'pp_express', 'pp_express_completed_status_id', '1', 0),
(238, 0, 'pp_express', 'pp_express_denied_status_id', '8', 0),
(239, 0, 'pp_express', 'pp_express_expired_status_id', '14', 0),
(240, 0, 'pp_express', 'pp_express_failed_status_id', '10', 0),
(241, 0, 'pp_express', 'pp_express_pending_status_id', '1', 0),
(242, 0, 'pp_express', 'pp_express_processed_status_id', '1', 0),
(243, 0, 'pp_express', 'pp_express_refunded_status_id', '11', 0),
(244, 0, 'pp_express', 'pp_express_reversed_status_id', '12', 0),
(245, 0, 'pp_express', 'pp_express_voided_status_id', '16', 0),
(246, 0, 'pp_express', 'pp_express_total', '0.01', 0),
(258, 0, 'd_social_login', 'd_social_login_status', '1', 0),
(259, 0, 'd_social_login', 'd_social_login_setting', '{\"size\":\"huge\",\"customer_group\":\"1\",\"newsletter\":\"1\",\"return_page_url\":\"\",\"iframe\":\"1\",\"background_img\":\"catalog/d_social_login/bg.png\",\"debug_mode\":\"0\",\"providers\":{\"Google\":{\"id\":\"google\",\"enabled\":\"0\",\"sort_order\":\"1\",\"background_color\":\"#dd4b39\",\"background_color_active\":\"#be3e2e\",\"background_color_hover\":\"#be3e2e\",\"keys\":{\"id\":\"\",\"secret\":\"\"},\"scope\":\"http://www.googleapis.com/auth/userinfo.email\"},\"Facebook\":{\"id\":\"facebook\",\"enabled\":\"1\",\"sort_order\":\"2\",\"background_color\":\"#4864b4\",\"background_color_active\":\"#3a5192\",\"background_color_hover\":\"#7c3232\",\"keys\":{\"id\":\"\",\"secret\":\"\"},\"scope\":\"email\"},\"LinkedIn\":{\"id\":\"linkedin\",\"enabled\":\"0\",\"sort_order\":\"5\",\"background_color\":\"#2a72b6\",\"background_color_active\":\"#21588d\",\"background_color_hover\":\"#21588d\",\"keys\":{\"key\":\"\",\"secret\":\"\"}},\"Yahoo\":{\"id\":\"yahoo\",\"enabled\":\"0\",\"sort_order\":\"11\",\"background_color\":\"#500095\",\"background_color_active\":\"#3d026f\",\"background_color_hover\":\"#3d026f\",\"keys\":{\"id\":\"\",\"secret\":\"\"}}},\"sizes\":{\"icons\":{\"padding\":\"11px 4px\",\"font-size\":\"20px\",\"width\":\"40px\",\"border-radius\":\"3px\"},\"small\":{\"padding\":\"3px\",\"font-size\":\"10px\",\"width\":\"25px\"},\"medium\":{\"padding\":\"6px 4px\",\"font-size\":\"12px\",\"width\":\"30px\"},\"large\":{\"padding\":\"7px 5px\",\"font-size\":\"13px\",\"width\":\"35px\"},\"huge\":{\"padding\":\"12px 20px 11px 20px\",\"font-size\":\"15px\",\"width\":\"40px\"}},\"fields\":{\"email\":{\"enabled\":\"1\",\"required\":\"1\",\"sort_order\":\"0\",\"type\":\"email\",\"id\":\"email\"},\"firstname\":{\"enabled\":\"1\",\"required\":\"1\",\"sort_order\":\"1\",\"type\":\"text\",\"id\":\"firstname\"},\"lastname\":{\"enabled\":\"1\",\"required\":\"1\",\"sort_order\":\"2\",\"type\":\"text\",\"id\":\"lastname\"},\"telephone\":{\"enabled\":\"0\",\"required\":\"0\",\"sort_order\":\"3\",\"type\":\"text\",\"id\":\"telephone\",\"mask\":\"9(999) 9999-9999?9\"},\"address_1\":{\"enabled\":\"0\",\"required\":\"0\",\"sort_order\":\"4\",\"type\":\"text\",\"id\":\"address_1\"},\"address_2\":{\"enabled\":\"0\",\"required\":\"0\",\"sort_order\":\"5\",\"type\":\"text\",\"id\":\"address_2\"},\"city\":{\"enabled\":\"0\",\"required\":\"0\",\"sort_order\":\"6\",\"type\":\"text\",\"id\":\"city\"},\"postcode\":{\"enabled\":\"0\",\"required\":\"0\",\"sort_order\":\"7\",\"type\":\"text\",\"id\":\"postcode\"},\"country_id\":{\"enabled\":\"0\",\"required\":\"0\",\"sort_order\":\"8\",\"type\":\"select\",\"id\":\"country_id\"},\"zone_id\":{\"enabled\":\"0\",\"required\":\"0\",\"sort_order\":\"9\",\"type\":\"select\",\"id\":\"zone_id\"},\"company\":{\"enabled\":\"0\",\"required\":\"0\",\"sort_order\":\"10\",\"type\":\"text\",\"id\":\"company\"},\"password\":{\"enabled\":\"0\",\"required\":\"0\",\"sort_order\":\"13\",\"type\":\"password\",\"id\":\"password\"},\"confirm\":{\"enabled\":\"0\",\"required\":\"0\",\"sort_order\":\"14\",\"type\":\"password\",\"id\":\"confirm\"}},\"debug_file\":\"d_social_login.txt\"}', 1),
(310, 0, 'waiting_msg', 'waiting_msg_title', 'Waiting List Title', 0),
(311, 0, 'waiting_msg', 'waiting_msg_description', 'Hi,\n\nThanks for the wait.\nWe have restocked these products that you have requested.\n[PRODUCTS]\nThank you for supporting our products.', 0),
(411, 0, 'update_price', 'update_price_status', '1', 0),
(412, 0, 'product_category_sort_order', 'product_category_sort_order_status', '1', 0),
(413, 0, 'discounts', 'discounts_status', '1', 0),
(414, 0, 'discounts', 'discounts_override_discount_price', 'default', 0),
(415, 0, 'discounts', 'discounts_override_special_price', 'default', 0),
(416, 0, 'category_discount', 'category_discount_sort_order', '2', 0),
(417, 0, 'category_discount', 'category_discount_status', '1', 0),
(418, 0, 'customer_group_discount', 'customer_group_discount_sort_order', '3', 0),
(419, 0, 'customer_group_discount', 'customer_group_discount_status', '1', 0),
(420, 0, 'manufacturer_discount', 'manufacturer_discount_sort_order', '4', 0),
(421, 0, 'manufacturer_discount', 'manufacturer_discount_status', '1', 0),
(422, 0, 'news_archive', 'news_archive_status', '1', 0),
(423, 0, 'news_archive', 'news_archive_build', '1', 0),
(424, 0, 'news_archive', 'news_archive_date', 'da', 0),
(425, 0, 'news_archive', 'news_archive_months', '{\"jan\":{\"1\":\"January\"},\"feb\":{\"1\":\"February\"},\"march\":{\"1\":\"March\"},\"april\":{\"1\":\"April\"},\"may\":{\"1\":\"May\"},\"june\":{\"1\":\"June\"},\"july\":{\"1\":\"July\"},\"aug\":{\"1\":\"August\"},\"sep\":{\"1\":\"September\"},\"oct\":{\"1\":\"October\"},\"nov\":{\"1\":\"November\"},\"dec\":{\"1\":\"December\"}}', 1),
(426, 0, 'offerpage', 'offerpage_installed', '1', 0),
(427, 0, 'salescombo', 'salescombo_status', '1', 0),
(428, 0, 'salescombo', 'salescombo_sort_order', '4', 0),
(679, 0, 'ncategory', 'ncategory_status', '1', 0),
(680, 0, 'ncategory', 'ncategory_bnews_order', '0', 0),
(681, 0, 'ncategory', 'ncategory_bnews_display_style', '0', 0),
(682, 0, 'ncategory', 'ncategory_bnews_tplpick', '0', 0),
(683, 0, 'ncategory', 'ncategory_bnews_display_elements', '[\"name\",\"image\",\"da\",\"du\",\"author\",\"category\",\"desc\",\"button\",\"com\",\"custom1\",\"custom2\",\"custom3\",\"custom4\"]', 1),
(684, 0, 'ncategory', 'ncategory_bnews_image_width', '80', 0),
(685, 0, 'ncategory', 'ncategory_bnews_image_height', '80', 0),
(686, 0, 'ncategory', 'ncategory_bnews_thumb_width', '230', 0),
(687, 0, 'ncategory', 'ncategory_bnews_thumb_height', '230', 0),
(688, 0, 'ncategory', 'ncategory_bnews_catalog_limit', '3', 0),
(689, 0, 'ncategory', 'ncategory_bnews_admin_limit', '20', 0),
(690, 0, 'ncategory', 'ncategory_bnews_headlines_url', 'blog', 0),
(691, 0, 'ncategory', 'ncategory_bnews_desc_length', '450', 0),
(692, 0, 'ncategory', 'ncategory_bnews_restrictgroup', '0', 0),
(693, 0, 'ncategory', 'ncategory_bnews_date_format', 'd M Y', 0),
(694, 0, 'ncategory', 'ncategory_bnews_top_link', '0', 0),
(695, 0, 'ncategory', 'ncategory_bnews_html_editor', 'summernote', 0),
(696, 0, 'ncategory', 'ncategory_bnews_disqus_status', '0', 0),
(697, 0, 'ncategory', 'ncategory_bnews_disqus_sname', 'short_name', 0),
(698, 0, 'ncategory', 'ncategory_bnews_fbcom_status', '0', 0),
(699, 0, 'ncategory', 'ncategory_bnews_fbcom_appid', '', 0),
(700, 0, 'ncategory', 'ncategory_bnews_fbcom_posts', '10', 0),
(701, 0, 'ncategory', 'ncategory_bnews_fbcom_theme', 'dark', 0),
(702, 0, 'ncategory', 'ncategory_bnews_facebook_tags', '0', 0),
(703, 0, 'ncategory', 'ncategory_bnews_twitter_tags', '0', 0),
(1129, 0, 'category', 'category_text_status', '1', 0),
(1130, 0, 'category', 'category_ctgrs_status', '1', 0),
(1131, 0, 'category', 'category_brand_status', '1', 0),
(1132, 0, 'category', 'category_length_status', '0', 0),
(1133, 0, 'category', 'category_filter_status', '1', 0),
(1134, 0, 'category', 'category_price_status', '1', 0),
(1135, 0, 'category', 'category_status', '1', 0),
(1169, 0, 'waiting_list', 'waiting_list_status', '1', 0),
(1170, 0, 'waiting_list', 'waiting_list_success', 'Your email, [EMAIL] has been added into our waiting list. We email you once we restock. Thank you', 0),
(1171, 0, 'waiting_list', 'waiting_list_error', 'Your email, [EMAIL] has already been in our waiting list. Please do give us some time to restock.', 0),
(1172, 0, 'waiting_list', 'waiting_list_description', '&lt;p&gt;Notify me once this product is available.&lt;/p&gt;', 0),
(1173, 0, 'custom3', 'custom3_title_1', '', 0),
(1174, 0, 'custom3', 'custom3_text_1', '', 0),
(1175, 0, 'custom3', 'custom3_status', '1', 0),
(2480, 0, 'proemail', 'proemail_seourl', '', 0),
(2481, 0, 'proemail', 'proemail_layout', 'simple_clean', 0),
(2482, 0, 'proemail', 'proemail_color_scheme', '', 0),
(2483, 0, 'proemail', 'proemail_theme', '{\"width\":\"\",\"width_unit\":\"px\",\"logo\":\"catalog\\/slicing\\/general\\/logo-min.png\",\"logo_width\":\"\",\"bg_page\":\"catalog\\/slicing\\/general\\/logo-min.png\",\"bg_page_repeat\":\"\",\"bg_top\":\"\",\"bg_top_repeat\":\"\",\"bg_header\":\"\",\"bg_header_repeat\":\"\",\"bg_body\":\"\",\"bg_body_repeat\":\"\",\"bg_footer\":\"\",\"bg_footer_repeat\":\"\",\"bg_bottom\":\"\",\"bg_bottom_repeat\":\"\"}', 1),
(2484, 0, 'proemail', 'proemail_color', '{\"btn\":\"#2dc4f0\",\"btn_text\":\"#ffffff\",\"bg_page\":\"#e3e3e3\",\"text_top\":\"#444444\",\"link_top\":\"#2dc4f0\",\"bg_top\":\"\",\"text_head\":\"#ffffff\",\"link_head\":\"#2dc4f0\",\"bg_header\":\"#444444\",\"text\":\"#444444\",\"link\":\"#2dc4f0\",\"bg_body\":\"#ffffff\",\"text_foot\":\"#444444\",\"link_foot\":\"#2dc4f0\",\"bg_footer\":\"#d1d1d1\",\"text_bottom\":\"#444444\",\"link_bottom\":\"#2dc4f0\",\"bg_bottom\":\"\"}', 1),
(2485, 0, 'proemail', 'proemail_customer_comment', '1', 0),
(2486, 0, 'proemail', 'proemail_mod_product', '{\"latest\":{\"width\":\"\",\"height\":\"\",\"limit\":\"\",\"per_row\":\"\"},\"featured\":{\"width\":\"\",\"height\":\"\",\"limit\":\"\",\"per_row\":\"\"}}', 1),
(2487, 0, 'proemail', 'proemail_from_name', '{\"1\":\"\"}', 1),
(2488, 0, 'proemail', 'proemail_from_email', '{\"1\":\"\"}', 1),
(2489, 0, 'proemail', 'proemail_admin_layout', '', 0),
(3126, 0, 'custom4', 'custom4_image_1', 'catalog/slicing/homepage/Untitled design _8_.png', 0),
(3127, 0, 'custom4', 'custom4_status', '1', 0),
(3263, 0, 'mailchimp_integration', 'mailchimp_integration_status', '1', 0),
(3264, 0, 'mailchimp_integration', 'mailchimp_integration_testing_mode', '0', 0),
(3265, 0, 'mailchimp_integration', 'mailchimp_integration_apikey', '0f3124574eacd50758b8e59f14b50b6d-us11', 0),
(3266, 0, 'mailchimp_integration', 'mailchimp_integration_double_optin', '1', 0),
(3267, 0, 'mailchimp_integration', 'mailchimp_integration_webhooks', 'subscribe', 0),
(3268, 0, 'mailchimp_integration', 'mailchimp_integration_subscribed_group', '0', 0),
(3269, 0, 'mailchimp_integration', 'mailchimp_integration_unsubscribed_group', '0', 0),
(3270, 0, 'mailchimp_integration', 'mailchimp_integration_autocreate', '0', 0),
(3271, 0, 'mailchimp_integration', 'mailchimp_integration_email_password', '0', 0),
(3272, 0, 'mailchimp_integration', 'mailchimp_integration_emailtext_subject_en-gb', '[store]: Customer Account Created', 0),
(3273, 0, 'mailchimp_integration', 'mailchimp_integration_emailtext_body_en-gb', 'Your customer account has been successfully created. Your new password is:\n&lt;br /&gt;&lt;br /&gt;\n[password]\n&lt;br /&gt;&lt;br /&gt;\nThanks for choosing [store]!', 0),
(3274, 0, 'mailchimp_integration', 'mailchimp_integration_listid', '25b93f0a49', 0),
(3275, 0, 'mailchimp_integration', 'mailchimp_integration_mapping_1_list', '25b93f0a49', 0),
(3276, 0, 'mailchimp_integration', 'mailchimp_integration_25b93f0a49_FNAME', 'customer:firstname', 0),
(3277, 0, 'mailchimp_integration', 'mailchimp_integration_25b93f0a49_LNAME', 'customer:lastname', 0),
(3278, 0, 'mailchimp_integration', 'mailchimp_integration_interest_groups', '0', 0),
(3279, 0, 'mailchimp_integration', 'mailchimp_integration_display_routes', '', 0),
(3280, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_interestgroups_en-gb', 'Please choose your interests below', 0),
(3281, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_updatebutton_en-gb', 'Update', 0),
(3282, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_updated_en-gb', 'Your interests have been successfully updated.', 0),
(3283, 0, 'mailchimp_integration', 'mailchimp_integration_ecommerce360', '0', 0),
(3284, 0, 'mailchimp_integration', 'mailchimp_integration_sendcarts', '0', 0),
(3285, 0, 'mailchimp_integration', 'mailchimp_integration_ordertype', 'all', 0),
(3286, 0, 'mailchimp_integration', 'mailchimp_integration_orderstatus', '5', 0),
(3287, 0, 'mailchimp_integration', 'mailchimp_integration_cookietime', '30', 0),
(3288, 0, 'mailchimp_integration', 'mailchimp_integration_store-0-list', '0', 0),
(3289, 0, 'mailchimp_integration', 'mailchimp_integration_modules_firstname', 'hide', 0),
(3290, 0, 'mailchimp_integration', 'mailchimp_integration_modules_lastname', 'hide', 0),
(3291, 0, 'mailchimp_integration', 'mailchimp_integration_modules_telephone', 'hide', 0),
(3292, 0, 'mailchimp_integration', 'mailchimp_integration_modules_address', 'hide', 0),
(3293, 0, 'mailchimp_integration', 'mailchimp_integration_modules_city', 'hide', 0),
(3294, 0, 'mailchimp_integration', 'mailchimp_integration_modules_postcode', 'hide', 0),
(3295, 0, 'mailchimp_integration', 'mailchimp_integration_modules_zone', 'hide', 0),
(3296, 0, 'mailchimp_integration', 'mailchimp_integration_modules_country', 'hide', 0),
(3297, 0, 'mailchimp_integration', 'mailchimp_integration_modules_redirect', '', 0),
(3298, 0, 'mailchimp_integration', 'mailchimp_integration_modules_popup', '0', 0),
(3299, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_heading_en-gb', 'Subscribe to Our Newsletter!', 0),
(3300, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_top_en-gb', 'Live on the healthier side of life', 0),
(3301, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_list_en-gb', 'List:', 0),
(3302, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_button_en-gb', 'Submit', 0),
(3303, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_emptyfield_en-gb', 'Please fill in the required fields!', 0),
(3304, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_invalidemail_en-gb', 'Please use a valid email address!', 0),
(3305, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_success_en-gb', 'Success! Please click the confirmation link in the e-mail sent to you.', 0),
(3306, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_error_en-gb', '', 0),
(3307, 0, 'mailchimp_integration', 'mailchimp_integration_moduletext_subscribed_en-gb', 'You are subscribed as [email]. Edit your newsletter preferences &lt;a href=&quot;index.php?route=account/newsletter&quot;&gt;here&lt;/a&gt;.', 0),
(3317, 0, 'omise', 'omise_status', '1', 0),
(3318, 0, 'omise', 'omise_payment_title', 'Credit Card', 0),
(3319, 0, 'omise', 'omise_test_mode', '0', 0),
(3320, 0, 'omise', 'omise_pkey_test', '', 0),
(3321, 0, 'omise', 'omise_skey_test', '', 0),
(3322, 0, 'omise', 'omise_pkey', 'pkey_5m9vum3hqw5mq62rg2f', 0),
(3323, 0, 'omise', 'omise_skey', 'skey_5mcxtplraiirmby8qkz', 0),
(3324, 0, 'omise', 'omise_3ds', '1', 0),
(3325, 0, 'omise', 'omise_auto_capture', '1', 0),
(4815, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(4816, 0, 'theme_default', 'theme_default_header', '1', 0),
(4817, 0, 'theme_default', 'theme_default_footer', '2', 0),
(4818, 0, 'theme_default', 'theme_default_status', '1', 0),
(4819, 0, 'theme_default', 'theme_default_mobile_menu_background_color1', '85C440', 0),
(4820, 0, 'theme_default', 'theme_default_mobile_menu_background_color2', '85C440', 0),
(4821, 0, 'theme_default', 'theme_default_testimonial_limit', '12', 0),
(4822, 0, 'theme_default', 'theme_default_product_option_image_mode', '0', 0),
(4823, 0, 'theme_default', 'theme_default_vertical_thumbnails', '0', 0),
(4824, 0, 'theme_default', 'theme_default_product_search_limit', '12', 0),
(4825, 0, 'theme_default', 'theme_default_product_special_limit', '12', 0),
(4826, 0, 'theme_default', 'theme_default_product_limit', '12', 0),
(4827, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(4828, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(4829, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(4830, 0, 'theme_default', 'theme_default_image_thumb_width', '360', 0),
(4831, 0, 'theme_default', 'theme_default_image_thumb_height', '360', 0),
(4832, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(4833, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(4834, 0, 'theme_default', 'theme_default_image_product_width', '360', 0),
(4835, 0, 'theme_default', 'theme_default_image_product_height', '360', 0),
(4836, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(4837, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(4838, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(4839, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(4840, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(4841, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(4842, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(4843, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(4844, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(4845, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(4846, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(4847, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(4978, 0, 'faq_manager', 'faq_manager_status', '0', 0),
(4979, 0, 'faq_manager', 'faq_manager_sections', '[{\"title\":{\"1\":\"Products Related\"},\"groups\":[{\"question\":{\"1\":\"FAQ Question 1.\"},\"answer\":{\"1\":\"&lt;p&gt;FAQ Answer 1.&lt;\\/p&gt;\\r\\n\"}}]},{\"title\":{\"1\":\"Delivery Related\"},\"groups\":[{\"question\":{\"1\":\"How long will the delivery be fulfilled?\"},\"answer\":{\"1\":\"&lt;p&gt;We will deliver the products to you within 3 business days.&lt;\\/p&gt;\\r\\n\"}}]}]', 1),
(4980, 0, 'custom2', 'custom2_title_1', 'Our Tale', 0),
(4981, 0, 'custom2', 'custom2_timage_1', 'catalog/slicing/ourtale/deco-min.png', 0),
(4982, 0, 'custom2', 'custom2_text_1', '&lt;p&gt;&lt;strong&gt;What is nature’s hug?&lt;/strong&gt;&lt;br /&gt;\r\nNature’s hug is a wholesome local food supplier.&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;strong&gt;What we believe in?&lt;/strong&gt;&lt;br /&gt;\r\nWe are passionate about sustainable and traceable produce. Being farmers ourselves, we take special pride in farming and distributing directly from our farms right here in Singapore. &lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;strong&gt;A hug symbolises love &amp; trust&lt;/strong&gt;&lt;br /&gt;\r\nAt nature\'s hug, we aspire to emanate the same sentiment of love &amp; trust in our natural products. They are picked fresh and wholesome from our local farms &amp; traceable from our network of trusted food suppliers.&lt;br /&gt;\r\n&lt;br /&gt;\r\n&lt;strong&gt;A sustainable farming system&lt;/strong&gt; &lt;br /&gt;\r\nBeing a leader in shrimp farming, our parent company -&lt;a href=&quot;http://www.blueaquaint.com&quot;&gt; Blue Aqua&lt;/a&gt; - developed an energy efficient, zero-waste, zero-water exchange and sustainable recirculating aquaculture system that is capable of producing multi-species products sustainably. Our rationale for farming is to create a circular economy in aquaculture where waste is transformed into other forms of food and energy and byproducts for the next consumer.&lt;/p&gt;\r\n\r\n&lt;p&gt; &lt;/p&gt;', 0),
(4983, 0, 'custom2', 'custom2_main_1', '[{\"mainimage\":\"catalog\\/slicing\\/homepage\\/SGFT1120 59.jpg\"}]', 1),
(4984, 0, 'custom2', 'custom2_bottombg_1', 'catalog/slicing/ourtale/bg-min.jpg', 0),
(4985, 0, 'custom2', 'custom2_slicktitle_1', 'Our Milestones', 0),
(4986, 0, 'custom2', 'custom2_stimage_1', 'catalog/slicing/ourtale/deco2-min.png', 0),
(4987, 0, 'custom2', 'custom2_bottom_1', '[{\"bimage\":\"catalog\\/Milestones\\/Untitled design.png\",\"btitle\":\"2009\",\"description\":\"The founding of Blue Aqua International - Pioneers in water quality management and super-intensive shrimp farming\"},{\"bimage\":\"catalog\\/Milestones\\/IMG_3411.jpg\",\"btitle\":\"2012\",\"description\":\"The start of our own farming efforts in Sumbawa, Indonesia. Specialising in white shrimp culture.\"},{\"bimage\":\"catalog\\/Milestones\\/BA Breeding Center-01.png\",\"btitle\":\"2017\",\"description\":\"Inauguration of Blue Aqua Breeding Center - a Shrimp Broodstock facility with a production capacity of 70,000 pieces of shrimp broodstock annually.\"},{\"bimage\":\"catalog\\/Milestones\\/IMG_3336.jpg\",\"btitle\":\"2018\",\"description\":\"Development and operation of the Blue Aqua Shrimp Farm. A zero-waste, green and sustainable operation in Neo Tiew Lane 1.\"},{\"bimage\":\"catalog\\/Milestones\\/DSC01128.JPG\",\"btitle\":\"2019\",\"description\":\"The launch of Nature\\u2019s hug. We started selling our locally produced fish and shrimp under the sustainable brand to restaurants and supermarkets across the island.\"},{\"bimage\":\"catalog\\/Milestones\\/nature\'s hug O_Nature\'s hug.png\",\"btitle\":\"2020\",\"description\":\"E-commerce launch to supply our trusted, quality and fresh seafood produce directly to our customers .\"}]', 1),
(4988, 0, 'custom2', 'custom2_status', '1', 0),
(4989, 0, 'cod', 'cod_total', '0.01', 0),
(4990, 0, 'cod', 'cod_order_status_id', '1', 0),
(4991, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(4992, 0, 'cod', 'cod_status', '0', 0),
(4993, 0, 'cod', 'cod_sort_order', '5', 0),
(4994, 0, 'quickcheckout', 'quickcheckout_status', '1', 0),
(4995, 0, 'quickcheckout', 'quickcheckout_minimum_order', '65', 0),
(4996, 0, 'quickcheckout', 'quickcheckout_debug', '0', 0),
(4997, 0, 'quickcheckout', 'quickcheckout_confirmation_page', '1', 0),
(4998, 0, 'quickcheckout', 'quickcheckout_save_data', '0', 0),
(4999, 0, 'quickcheckout', 'quickcheckout_edit_cart', '0', 0),
(5000, 0, 'quickcheckout', 'quickcheckout_highlight_error', '1', 0),
(5001, 0, 'quickcheckout', 'quickcheckout_text_error', '1', 0),
(5002, 0, 'quickcheckout', 'quickcheckout_auto_submit', '0', 0),
(5003, 0, 'quickcheckout', 'quickcheckout_payment_target', '#button-confirm, .button, .btn', 0),
(5004, 0, 'quickcheckout', 'quickcheckout_proceed_button_text', '{\"1\":\"Continue\"}', 1),
(5005, 0, 'quickcheckout', 'quickcheckout_load_screen', '1', 0),
(5006, 0, 'quickcheckout', 'quickcheckout_loading_display', '0', 0),
(5007, 0, 'quickcheckout', 'quickcheckout_layout', '2', 0),
(5008, 0, 'quickcheckout', 'quickcheckout_responsive', '1', 0),
(5009, 0, 'quickcheckout', 'quickcheckout_slide_effect', '0', 0),
(5010, 0, 'quickcheckout', 'quickcheckout_custom_css', '', 0),
(5011, 0, 'quickcheckout', 'quickcheckout_field_firstname', '{\"display\":\"on\",\"required\":\"on\",\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"First Name\"},\"sort_order\":\"1\"}', 1),
(5012, 0, 'quickcheckout', 'quickcheckout_field_lastname', '{\"display\":\"on\",\"required\":\"on\",\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"Last Name\"},\"sort_order\":\"2\"}', 1),
(5013, 0, 'quickcheckout', 'quickcheckout_field_email', '{\"display\":\"on\",\"required\":\"on\",\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"Email\"},\"sort_order\":\"3\"}', 1),
(5014, 0, 'quickcheckout', 'quickcheckout_field_telephone', '{\"display\":\"on\",\"required\":\"on\",\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"Telephone\"},\"sort_order\":\"4\"}', 1),
(5015, 0, 'quickcheckout', 'quickcheckout_field_fax', '{\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"Fax\"},\"sort_order\":\"5\"}', 1),
(5016, 0, 'quickcheckout', 'quickcheckout_field_company', '{\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"Company\"},\"sort_order\":\"6\"}', 1),
(5017, 0, 'quickcheckout', 'quickcheckout_field_customer_group', '{\"display\":\"on\",\"sort_order\":\"7\"}', 1),
(5018, 0, 'quickcheckout', 'quickcheckout_field_address_1', '{\"display\":\"on\",\"required\":\"on\",\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"Address 1\"},\"sort_order\":\"9\"}', 1),
(5019, 0, 'quickcheckout', 'quickcheckout_field_address_2', '{\"display\":\"on\",\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"Address 2\"},\"sort_order\":\"10\"}', 1),
(5020, 0, 'quickcheckout', 'quickcheckout_field_unit_no', '{\"display\":\"on\",\"required\":\"on\",\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"Unit No.\"},\"sort_order\":\"11\"}', 1),
(5021, 0, 'quickcheckout', 'quickcheckout_field_city', '{\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"City\"},\"sort_order\":\"12\"}', 1),
(5022, 0, 'quickcheckout', 'quickcheckout_field_postcode', '{\"display\":\"on\",\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"Postcode\"},\"sort_order\":\"8\"}', 1),
(5023, 0, 'quickcheckout', 'quickcheckout_field_country', '{\"display\":\"on\",\"required\":\"on\",\"default\":\"188\",\"sort_order\":\"13\"}', 1),
(5024, 0, 'quickcheckout', 'quickcheckout_field_zone', '{\"default\":\"0\",\"sort_order\":\"14\"}', 1),
(5025, 0, 'quickcheckout', 'quickcheckout_field_newsletter', '{\"display\":\"on\",\"default\":\"on\",\"sort_order\":\"\"}', 1),
(5026, 0, 'quickcheckout', 'quickcheckout_field_register', '{\"display\":\"on\",\"sort_order\":\"\"}', 1),
(5027, 0, 'quickcheckout', 'quickcheckout_field_comment', '{\"display\":\"on\",\"default\":{\"1\":\"\"},\"placeholder\":{\"1\":\"Example: Deliver via the back door\"}}', 1),
(5028, 0, 'quickcheckout', 'quickcheckout_coupon', '1', 0),
(5029, 0, 'quickcheckout', 'quickcheckout_voucher', '0', 0),
(5030, 0, 'quickcheckout', 'quickcheckout_reward', '1', 0),
(5031, 0, 'quickcheckout', 'quickcheckout_cart', '1', 0),
(5032, 0, 'quickcheckout', 'quickcheckout_login_module', '1', 0),
(5033, 0, 'quickcheckout', 'quickcheckout_html_header', '{\"1\":\"\"}', 1),
(5034, 0, 'quickcheckout', 'quickcheckout_html_footer', '{\"1\":\"\"}', 1),
(5035, 0, 'quickcheckout', 'quickcheckout_payment_module', '1', 0),
(5036, 0, 'quickcheckout', 'quickcheckout_payment_reload', '0', 0),
(5037, 0, 'quickcheckout', 'quickcheckout_payment', '1', 0),
(5038, 0, 'quickcheckout', 'quickcheckout_payment_default', 'free_checkout', 0),
(5039, 0, 'quickcheckout', 'quickcheckout_payment_logo', '{\"free_checkout\":\"\",\"omise\":\"\",\"pp_express\":\"\"}', 1),
(5040, 0, 'quickcheckout', 'quickcheckout_shipping_module', '1', 0),
(5041, 0, 'quickcheckout', 'quickcheckout_shipping_reload', '1', 0),
(5042, 0, 'quickcheckout', 'quickcheckout_shipping', '1', 0),
(5043, 0, 'quickcheckout', 'quickcheckout_shipping_default', 'formula_based', 0),
(5044, 0, 'quickcheckout', 'quickcheckout_shipping_general_notice', '{\"1\":\"\"}', 1),
(5045, 0, 'quickcheckout', 'quickcheckout_shipping_logo', '{\"formula_based\":\"\"}', 1),
(5046, 0, 'quickcheckout', 'quickcheckout_shipping_individual_shipping_notice', '{\"formula_based\":{\"1\":\"\"}}', 1),
(5047, 0, 'quickcheckout', 'quickcheckout_survey', '0', 0),
(5048, 0, 'quickcheckout', 'quickcheckout_survey_required', '0', 0),
(5049, 0, 'quickcheckout', 'quickcheckout_survey_text', '{\"1\":\"\"}', 1),
(5050, 0, 'quickcheckout', 'quickcheckout_survey_type', '0', 0),
(5051, 0, 'quickcheckout', 'quickcheckout_delivery', '1', 0),
(5052, 0, 'quickcheckout', 'quickcheckout_delivery_time', '0', 0),
(5053, 0, 'quickcheckout', 'quickcheckout_delivery_date', '1', 0),
(5054, 0, 'quickcheckout', 'quickcheckout_delivery_required', '1', 0),
(5055, 0, 'quickcheckout', 'quickcheckout_delivery_unavailable', '', 0),
(5056, 0, 'quickcheckout', 'quickcheckout_delivery_min', '2', 0),
(5057, 0, 'quickcheckout', 'quickcheckout_delivery_max', '17', 0),
(5058, 0, 'quickcheckout', 'quickcheckout_delivery_min_hour', '11', 0),
(5059, 0, 'quickcheckout', 'quickcheckout_delivery_max_hour', '21', 0),
(5060, 0, 'quickcheckout', 'quickcheckout_delivery_days_of_week', '', 0),
(5061, 0, 'quickcheckout', 'quickcheckout_countdown', '0', 0),
(5062, 0, 'quickcheckout', 'quickcheckout_countdown_start', '0', 0),
(5063, 0, 'quickcheckout', 'quickcheckout_countdown_date_start', '', 0),
(5064, 0, 'quickcheckout', 'quickcheckout_countdown_date_end', '', 0),
(5065, 0, 'quickcheckout', 'quickcheckout_countdown_time', '00:00', 0),
(5066, 0, 'quickcheckout', 'quickcheckout_countdown_text', '{\"1\":\"\"}', 1),
(5186, 0, 'custom', 'custom_title_1', 'About Nature\'s Hug', 0),
(5187, 0, 'custom', 'custom_timage_1', 'catalog/slicing/about/title-deco-min.png', 0),
(5188, 0, 'custom', 'custom_text_1', '&lt;p&gt;We are passionate about sustainable and traceable produce. Being farmers ourselves, we take special pride in farming and distributing directly from our farms right here in Singapore.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;br /&gt;\r\nOur purpose is simple - to produce, source for and introduce the very best produce. We aim to be the primary supplier of traceable products that are&lt;strong&gt; free from chemicals, additives, and genetic modification. &lt;/strong&gt;&lt;/p&gt;', 0),
(5189, 0, 'custom', 'custom_main_1', '[{\"mainimage\":\"catalog\\/EP 45.JPG\"}]', 1),
(5190, 0, 'custom', 'custom_bottombg_1', 'catalog/slicing/about/bg-min.jpg', 0),
(5191, 0, 'custom', 'custom_bottom_1', '[{\"bimage\":\"catalog\\/slicing\\/about\\/vision-min.png\",\"btitle\":\"Vision\",\"description\":\"To secure Singapore\'s food security and safety\"},{\"bimage\":\"catalog\\/slicing\\/about\\/mission-min.png\",\"btitle\":\"Mission\",\"description\":\"We vouch to raise awareness on food quality and wellness while protecting the environment\"}]', 1),
(5192, 0, 'custom', 'custom_homemain_1', '[{\"homemainimage\":\"catalog\\/slicing\\/homepage\\/shutterstock_1486287521.jpg\"},{\"homemainimage\":\"\"}]', 1),
(5193, 0, 'custom', 'custom_status', '1', 0),
(5194, 0, 'formula_based', 'formula_based_status', '1', 0),
(5195, 0, 'formula_based', 'formula_based_heading_en-gb', 'Formula-Based Shipping', 0),
(5196, 0, 'formula_based', 'formula_based_sort_order', '1', 0),
(5197, 0, 'formula_based', 'formula_based_tax_class_id', '0', 0),
(5198, 0, 'formula_based', 'formula_based_distance_calculation', 'driving', 0),
(5199, 0, 'formula_based', 'formula_based_distance_units', 'mi', 0),
(5200, 0, 'formula_based', 'formula_based_autosave', '0', 0),
(5201, 0, 'formula_based', 'formula_based_display', 'expanded', 0),
(5202, 0, 'formula_based', 'formula_based_tooltips', '1', 0),
(5203, 0, 'formula_based', 'formula_based_charge_1_group', '', 0),
(5204, 0, 'formula_based', 'formula_based_charge_1_title_admin', 'Express Delivery', 0),
(5205, 0, 'formula_based', 'formula_based_charge_1_title_en-gb', 'Express Delivery', 0),
(5206, 0, 'formula_based', 'formula_based_charge_1_type', 'flat', 0),
(5207, 0, 'formula_based', 'formula_based_charge_1_charges', '30', 0),
(5208, 0, 'formula_based', 'formula_based_charge_1_rule_1_type', 'time', 0),
(5209, 0, 'formula_based', 'formula_based_charge_1_rule_1_comparison', 'before', 0),
(5210, 0, 'formula_based', 'formula_based_charge_1_rule_1_value', '12:00', 0),
(5211, 0, 'formula_based', 'formula_based_charge_1_rule_2_type', 'total', 0),
(5212, 0, 'formula_based', 'formula_based_charge_1_rule_2_comparison', 'entire_cart', 0),
(5213, 0, 'formula_based', 'formula_based_charge_1_rule_2_value', '.1-9999999', 0),
(5214, 0, 'formula_based', 'formula_based_charge_2_group', '', 0),
(5215, 0, 'formula_based', 'formula_based_charge_2_title_admin', 'Free Express Delivery', 0),
(5216, 0, 'formula_based', 'formula_based_charge_2_title_en-gb', 'Free Express Delivery', 0),
(5217, 0, 'formula_based', 'formula_based_charge_2_type', 'flat', 0),
(5218, 0, 'formula_based', 'formula_based_charge_2_charges', '0', 0),
(5219, 0, 'formula_based', 'formula_based_charge_2_rule_1_type', 'total', 0),
(5220, 0, 'formula_based', 'formula_based_charge_2_rule_1_comparison', 'entire_cart', 0),
(5221, 0, 'formula_based', 'formula_based_charge_2_rule_1_value', '120-99999999', 0),
(5222, 0, 'formula_based', 'formula_based_charge_2_rule_2_type', 'time', 0),
(5223, 0, 'formula_based', 'formula_based_charge_2_rule_2_comparison', 'before', 0),
(5224, 0, 'formula_based', 'formula_based_charge_2_rule_2_value', '12:00', 0),
(5225, 0, 'formula_based', 'formula_based_charge_3_group', '', 0),
(5226, 0, 'formula_based', 'formula_based_charge_3_title_admin', 'Free Standard Delivery', 0),
(5227, 0, 'formula_based', 'formula_based_charge_3_title_en-gb', 'Free Standard Delivery', 0),
(5228, 0, 'formula_based', 'formula_based_charge_3_type', 'flat', 0),
(5229, 0, 'formula_based', 'formula_based_charge_3_charges', '0', 0),
(5230, 0, 'formula_based', 'formula_based_charge_3_rule_1_type', 'total', 0),
(5231, 0, 'formula_based', 'formula_based_charge_3_rule_1_comparison', 'entire_cart', 0),
(5232, 0, 'formula_based', 'formula_based_charge_3_rule_1_value', '100-99999999', 0),
(5233, 0, 'formula_based', 'formula_based_charge_3_rule_2_type', 'time', 0),
(5234, 0, 'formula_based', 'formula_based_charge_3_rule_2_comparison', 'before', 0),
(5235, 0, 'formula_based', 'formula_based_charge_3_rule_2_value', '17:00', 0),
(5236, 0, 'formula_based', 'formula_based_charge_4_group', '', 0),
(5237, 0, 'formula_based', 'formula_based_charge_4_title_admin', 'Minimum spending', 0),
(5238, 0, 'formula_based', 'formula_based_charge_4_title_en-gb', 'Your Preferred Delivery Fleet', 0),
(5239, 0, 'formula_based', 'formula_based_charge_4_type', 'flat', 0),
(5240, 0, 'formula_based', 'formula_based_charge_4_charges', '0', 0),
(5241, 0, 'formula_based', 'formula_based_charge_4_rule_1_type', 'total', 0),
(5242, 0, 'formula_based', 'formula_based_charge_4_rule_1_comparison', 'entire_cart', 0),
(5243, 0, 'formula_based', 'formula_based_charge_4_rule_1_value', '65-99999999999', 0),
(5244, 0, 'formula_based', 'formula_based_charge_5_group', '', 0),
(5245, 0, 'formula_based', 'formula_based_charge_5_title_admin', 'Standard Delivery', 0),
(5246, 0, 'formula_based', 'formula_based_charge_5_title_en-gb', 'Standard Delivery', 0),
(5247, 0, 'formula_based', 'formula_based_charge_5_type', 'flat', 0),
(5248, 0, 'formula_based', 'formula_based_charge_5_charges', '25', 0),
(5249, 0, 'formula_based', 'formula_based_charge_5_rule_1_type', 'time', 0),
(5250, 0, 'formula_based', 'formula_based_charge_5_rule_1_comparison', 'before', 0),
(5251, 0, 'formula_based', 'formula_based_charge_5_rule_1_value', '17:00', 0),
(5252, 0, 'formula_based', 'formula_based_charge_5_rule_2_type', 'total', 0),
(5253, 0, 'formula_based', 'formula_based_charge_5_rule_2_comparison', 'entire_cart', 0),
(5254, 0, 'formula_based', 'formula_based_charge_5_rule_2_value', '.1-9999999', 0),
(5255, 0, 'formula_based', 'formula_based_combination_1_sort_order', '', 0),
(5256, 0, 'formula_based', 'formula_based_combination_1_title', 'single', 0),
(5257, 0, 'formula_based', 'formula_based_combination_1_groups_required', '', 0),
(5258, 0, 'formula_based', 'formula_based_combination_1_formula', '', 0),
(5259, 0, 'formula_based', 'formula_based_rule_set_1_name', '', 0),
(5260, 0, 'formula_based', 'formula_based_testing_mode', '0', 0),
(6108, 0, 'hitpay', 'hitpay_api_key', 'fc61a0a2929c9f667a146168ff88a0cb1caa01c7960fcc5de170af2aeb7e849b', 0),
(6109, 0, 'hitpay', 'hitpay_signature', 'YScLBXmm8dkQg7KgUHPMrBwTx9c8fss83nASWIav9GfNwylgXaSPeZG3Hwum0ZCW', 0),
(6110, 0, 'hitpay', 'hitpay_mode', 'sandbox', 0),
(6111, 0, 'hitpay', 'hitpay_total', '0.01', 0),
(6112, 0, 'hitpay', 'hitpay_title', 'HitPay', 0),
(6113, 0, 'hitpay', 'hitpay_order_status_id', '1', 0),
(6114, 0, 'hitpay', 'hitpay_geo_zone_id', '0', 0),
(6115, 0, 'hitpay', 'hitpay_status', '1', 0),
(6116, 0, 'hitpay', 'hitpay_logging', '1', 0),
(6117, 0, 'hitpay', 'hitpay_sort_order', '1', 0),
(6118, 0, 'config', 'config_social', '[{\"title\":\"Facebook\",\"icon\":\"catalog\\/slicing\\/general\\/fb2-min.png\",\"code\":\"\",\"link\":\"https:\\/\\/www.facebook.com\\/natureshugsg\",\"status\":\"1\"},{\"title\":\"Instagram\",\"icon\":\"catalog\\/slicing\\/general\\/ig2-min.png\",\"code\":\"\",\"link\":\"https:\\/\\/www.instagram.com\\/natures.hug\\/?hl=en\",\"status\":\"1\"}]', 1),
(6119, 0, 'config', 'config_meta_title', 'Nature\'s Hug', 0),
(6120, 0, 'config', 'config_meta_description', 'Nature\'s Hug', 0),
(6121, 0, 'config', 'config_meta_keyword', '', 0),
(6122, 0, 'config', 'config_addthis', '&lt;!-- Go to www.addthis.com/dashboard to customize your tools --&gt; &lt;script type=&quot;text/javascript&quot; src=&quot;//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5dbfaf9350f74974&quot;&gt;&lt;/script&gt; \r\n&lt;!-- Go to www.addthis.com/dashboard to customize your tools --&gt; &lt;div class=&quot;addthis_inline_share_toolbox_50eq&quot;&gt;&lt;/div&gt;', 0),
(6123, 0, 'config', 'config_schema', '', 0),
(6124, 0, 'config', 'config_theme', 'theme_default', 0),
(6125, 0, 'config', 'config_layout_id', '4', 0),
(6126, 0, 'config', 'config_google_api', 'AIzaSyBqADYO4kEYe36M6ouMGFI-Afse5ip75C8', 0),
(6127, 0, 'config', 'config_name', 'Nature\'s Hug', 0),
(6128, 0, 'config', 'config_owner', 'Nature\'s Hug', 0),
(6129, 0, 'config', 'config_address', '31 Harrison Road,\r\n#04-02 Food Empire Building,\r\nSingapore 369649.', 0),
(6130, 0, 'config', 'config_geocode', 'sales@natureshug.sg', 0),
(6131, 0, 'config', 'config_email', 'noreply@blueaquaseafood2104.firstcomdemo.com', 0),
(6132, 0, 'config', 'config_telephone', '+65 8800 6556', 0),
(6133, 0, 'config', 'config_fax', '', 0),
(6134, 0, 'config', 'config_image', '', 0),
(6135, 0, 'config', 'config_open', '', 0),
(6136, 0, 'config', 'config_comment', 'LOCAL farm to table!  NO antibiotics, chemicals, or additives! FRESH from the farm!', 0),
(6137, 0, 'config', 'config_gmap_iframe', '&lt;iframe src=&quot;https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7324322922896!2d103.88305351475402!3d1.336790799025024!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31da1791f5271c5d%3A0xf4b5aa2e3980ec73!2s31%20Harrison%20Rd%2C%20Singapore%20369649!5e0!3m2!1sen!2ssg!4v1609986200891!5m2!1sen!2ssg&quot; width=&quot;600&quot; height=&quot;450&quot; frameborder=&quot;0&quot; style=&quot;border:0;&quot; allowfullscreen=&quot;&quot; aria-hidden=&quot;false&quot; tabindex=&quot;0&quot;&gt;&lt;/iframe&gt;', 0),
(6138, 0, 'config', 'config_country_id', '188', 0),
(6139, 0, 'config', 'config_zone_id', '0', 0),
(6140, 0, 'config', 'config_language', 'en-gb', 0),
(6141, 0, 'config', 'config_admin_language', 'en-gb', 0),
(6142, 0, 'config', 'config_currency', 'SGD', 0),
(6143, 0, 'config', 'config_currency_auto', '1', 0),
(6144, 0, 'config', 'config_length_class_id', '1', 0),
(6145, 0, 'config', 'config_weight_class_id', '1', 0),
(6146, 0, 'config', 'config_product_count', '1', 0),
(6147, 0, 'config', 'config_product_decimal_places', '1', 0),
(6148, 0, 'config', 'config_display_option_product_list', '1', 0),
(6149, 0, 'config', 'config_dependent_option', '0', 0),
(6150, 0, 'config', 'config_hover_image_change', '0', 0),
(6151, 0, 'config', 'config_product_next_previous', '1', 0),
(6152, 0, 'config', 'config_limit_admin', '20', 0),
(6153, 0, 'config', 'config_review_status', '0', 0),
(6154, 0, 'config', 'config_review_after_purchase', '0', 0),
(6155, 0, 'config', 'config_review_guest', '0', 0),
(6156, 0, 'config', 'config_voucher_min', '1', 0),
(6157, 0, 'config', 'config_voucher_max', '1000', 0),
(6158, 0, 'config', 'config_tax', '0', 0),
(6159, 0, 'config', 'config_tax_default', 'shipping', 0),
(6160, 0, 'config', 'config_tax_customer', 'shipping', 0),
(6161, 0, 'config', 'config_customer_online', '0', 0),
(6162, 0, 'config', 'config_customer_activity', '0', 0),
(6163, 0, 'config', 'config_customer_search', '1', 0),
(6164, 0, 'config', 'config_customer_group_id', '1', 0),
(6165, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(6166, 0, 'config', 'config_customer_price', '0', 0),
(6167, 0, 'config', 'config_login_attempts', '5', 0),
(6168, 0, 'config', 'config_account_id', '3', 0),
(6169, 0, 'config', 'config_invoice_prefix', 'INV-2020-00', 0),
(6170, 0, 'config', 'config_edit_cart', '1', 0),
(6171, 0, 'config', 'config_cart_weight', '0', 0),
(6172, 0, 'config', 'config_checkout_guest', '1', 0),
(6173, 0, 'config', 'config_checkout_id', '5', 0),
(6174, 0, 'config', 'config_order_status_id', '1', 0),
(6175, 0, 'config', 'config_processing_status', '[\"5\",\"2\",\"1\",\"15\",\"17\"]', 1),
(6176, 0, 'config', 'config_complete_status', '[\"5\",\"2\",\"1\",\"15\",\"17\"]', 1),
(6177, 0, 'config', 'config_reward_status', '[\"5\"]', 1),
(6178, 0, 'config', 'config_cancel_status', '[\"7\"]', 1),
(6179, 0, 'config', 'config_payment_received_status', '17', 0),
(6180, 0, 'config', 'config_fraud_status_id', '7', 0),
(6181, 0, 'config', 'config_api_id', '1', 0),
(6182, 0, 'config', 'config_stock_display', '0', 0),
(6183, 0, 'config', 'config_stock_warning', '0', 0),
(6184, 0, 'config', 'config_stock_checkout', '0', 0),
(6185, 0, 'config', 'config_low_stock_quantity', '5', 0),
(6186, 0, 'config', 'config_low_stock_notify', '0', 0),
(6187, 0, 'config', 'config_affiliate_approval', '0', 0),
(6188, 0, 'config', 'config_affiliate_auto', '0', 0),
(6189, 0, 'config', 'config_affiliate_commission', '5', 0),
(6190, 0, 'config', 'config_affiliate_id', '4', 0),
(6191, 0, 'config', 'config_return_id', '0', 0),
(6192, 0, 'config', 'config_return_status_id', '2', 0),
(6193, 0, 'config', 'config_captcha', 'google_captcha', 0),
(6194, 0, 'config', 'config_captcha_page', '[\"register\",\"review\",\"return\",\"contact\"]', 1),
(6195, 0, 'config', 'config_logo', 'catalog/slicing/general/logo-min.png', 0),
(6196, 0, 'config', 'config_icon', 'catalog/slicing/general/logo-min.png', 0),
(6197, 0, 'config', 'config_admin_logo', 'catalog/slicing/general/logo2-min.png', 0),
(6198, 0, 'config', 'config_admin_icon', 'catalog/slicing/general/logo-min.png', 0),
(6199, 0, 'config', 'config_ftp_hostname', 'localhost', 0),
(6200, 0, 'config', 'config_ftp_port', '21', 0),
(6201, 0, 'config', 'config_ftp_username', '', 0),
(6202, 0, 'config', 'config_ftp_password', '', 0),
(6203, 0, 'config', 'config_ftp_root', '', 0),
(6204, 0, 'config', 'config_ftp_status', '0', 0),
(6205, 0, 'config', 'config_mail_protocol', 'smtp', 0),
(6206, 0, 'config', 'config_mail_parameter', '', 0),
(6207, 0, 'config', 'config_mail_smtp_hostname', 'blueaquaseafood2104.firstcomdemo.com', 0),
(6208, 0, 'config', 'config_mail_smtp_username', 'noreply@blueaquaseafood2104.firstcomdemo.com', 0),
(6209, 0, 'config', 'config_mail_smtp_password', 'p@ssword1236', 0),
(6210, 0, 'config', 'config_mail_smtp_port', '587', 0),
(6211, 0, 'config', 'config_mail_smtp_timeout', '30', 0),
(6212, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(6213, 0, 'config', 'config_alert_email', '', 0),
(6214, 0, 'config', 'config_maintenance', '0', 0),
(6215, 0, 'config', 'config_seo_url', '0', 0);
INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(6216, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(6217, 0, 'config', 'config_compression', '0', 0),
(6218, 0, 'config', 'config_secure', '0', 0),
(6219, 0, 'config', 'config_password', '1', 0),
(6220, 0, 'config', 'config_shared', '0', 0),
(6221, 0, 'config', 'config_timezone', 'Asia/Singapore', 0),
(6222, 0, 'config', 'config_encryption', 'IXanOTjDh66rB5Wga5PDPB51RQ0uApciuuPi3sqqIqKGFc5pZRrsdQdz6Lm7ZFt9wjuKWqCw6gW8RVGl6p08shFtHV82tahyhzD7Y3Sdi7TTthJo5OS0TrmElgA8eY3It4ZD2P4HHoW8zOUOj5lRcqfuyT8aXIWl0IxyJrH2XgRY1gNiAJrlO3iXQ4YMaFxdumlnB3lN0KtFFBu2ILJWaDVC4si991BKsCeTzWh0lMdaEMIJIPIGMo14fKNoqbjFbSG22RiRV0nVQSAKp57O2QJwNucLMsqL0P1EDBrZcewZGqGA6CB6RzqD01vJymC9GNZqujrIEe8ioSYa8E29OiuCTRGbgne2Twv1027kckdtQZJmPvhOPGLOqgfvPoqfL311MrLZYjYIMEUwt8QG5sWdskvgUW0bPbkgsAaghg8bYvsQ0me4CDVoHW3E2XoC73suZ4XS0Dqiv5xM33t240MvzLVTX8fOQKgxBZnUSEWpNPUDi1CCLxDTW0VYDWDbTK8ofTIjr0BCUsi0OyT2fTPgl3iTynl3DIwEv8syIcyQxued6mbpEtrZubipt40YJCeI25NMOE8zQfzKQrOHHi8UCxVfWOh2OAG8s8FBob5Qz3jnDs0Osv7hvuNKoOiEP8ABTlWbvjXdvZgmLR9d7Yx1n6uQCR7dPWxJW0CwXhKyF2AfJ4tt9sZQ1lAgXSCYhi2cGP46WYDD3w5FMdMPYQHGejdSgwpv2UasyIV7CvDvKwm0nAVSOOGH925QcB5Ttw4EHRsJP393fzoK738CxaRzgIbvWn62ahRAQNEfJdKhXf2CLdvWJp0H4JVkN9GBMQPSVjms7lHvO3Wap1fPc0ZJNuYImNVx1ypC7wI63cRghc9SVJ6ay7NBZcqVB8auUW5e9VqYrGqfc35H8e6U89dE5D9308OHlHEzEK3TbSAwIL7NtgbO2w2QamgaMDvwLNmq5QbkEwwloZ1MU1ziWQtlXWrJkkw3dU1xtD4MfeCX8Y6hNACvbMNHQLLl5iXs', 0),
(6223, 0, 'config', 'config_file_max_size', '300000000', 0),
(6224, 0, 'config', 'config_file_ext_allowed', 'xlsx\r\nzip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(6225, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\napplication/vnd.openxmlformats-officedocument.spreadsheetml.sheet\r\napplication/vnd.openxmlformats-officedocument.spreadsheetml.template', 0),
(6226, 0, 'config', 'config_error_display', '1', 0),
(6227, 0, 'config', 'config_error_log', '1', 0),
(6228, 0, 'config', 'config_error_filename', 'error.log', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(3, 'GST', 'Government Service Tax', '2009-01-06 23:21:53', '2011-09-23 14:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 5, 'GST (7%)', 7.0000, 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 3, 86, 'shipping', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_timeslot`
--

CREATE TABLE `oc_timeslot` (
  `timeslot_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `delivery_time` time NOT NULL,
  `hours_before_delivery_time` int(11) NOT NULL,
  `displayed_delivery_time` varchar(255) NOT NULL,
  `additional_cost` float(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(844, 'information_id=4', 'our-brand'),
(845, 'information_id=7', 'our-tale'),
(1019, 'news_id=6', 'Paul Foster'),
(1030, 'news_id=7', 'padthai, recipe, shrimp recipe,'),
(1031, 'category_id=5', 'Spices'),
(1032, 'category_id=1', 'seafood'),
(1033, 'category_id=4', 'superfoods'),
(1046, 'information_id=3', 'privacy'),
(1048, 'information_id=6', 'delivery'),
(1059, 'product_id=19', 'MALVASIA DOP'),
(1061, 'product_id=14', 'MARCELLO BLANC DE BLANCS'),
(1062, 'product_id=18', 'malvasia-secca'),
(1063, 'product_id=17', 'lintrigo-rose'),
(1064, 'product_id=16', 'LINTRIGO CUVÉE'),
(1065, 'product_id=15', 'LAMBRUSCO CALICELLA'),
(1068, 'product_id=12', 'FORTE RIGONI GRAND CRU'),
(1069, 'product_id=13', 'FORTANINA GRAND CRU'),
(1070, 'category_id=7', 'Persian saffron'),
(1072, 'information_id=5', 'terms'),
(1075, 'product_id=22', 'Jade Perch'),
(1077, 'product_id=23', 'red-tilapia-500-600-grams'),
(1083, 'category_id=6', 'wine'),
(1084, 'product_id=24', 'persian-saffron'),
(1085, 'product_id=11', 'marcello-grand-cru'),
(1088, 'product_id=20', 'vannamei-shrimp');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'firstcom', '28d4e38a82808e9885586cd64815f3f125f454e3', 'j7TwdTjEG', 'Developer', '', 'pampajarillo@gmail.com', '', '', '130.105.154.62', 1, '2020-08-15 11:38:29'),
(2, 2, 'admin', 'f6a2381d6749808510acf85feb58989ca99a7fa0', 'b91bd8a12', 'Website', 'Admin', '', '', '', '::1', 1, '2019-03-09 17:07:00'),
(3, 1, 'imba', '127b2b2f34076dca270b0b677ef455cc', '', '', '', '', '', '', '136.158.30.185', 1, '2020-08-15 11:38:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  `is_dev` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`, `is_dev`) VALUES
(1, 'Developer', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/discount_category\",\"catalog\\/discount_customer_group\",\"catalog\\/discount_manufacturer\",\"catalog\\/discount_product\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/gallimage\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/menu\",\"catalog\\/nauthor\",\"catalog\\/ncategory\",\"catalog\\/ncomments\",\"catalog\\/news\",\"catalog\\/option\",\"catalog\\/page_banner\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/newspanel\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"enhancement\\/enhanced_ckeditor\",\"event\\/compatibility\",\"event\\/sb_news\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/enquiry_total\\/product_count\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/enquiry_total\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/articles_google_base\",\"extension\\/feed\\/articles_google_sitemap\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/CachedImages\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/custom\",\"extension\\/module\\/custom2\",\"extension\\/module\\/custom3\",\"extension\\/module\\/d_social_login\",\"extension\\/module\\/discounts\",\"extension\\/module\\/excelport\",\"extension\\/module\\/faq_manager\",\"extension\\/module\\/fcategory\",\"extension\\/module\\/featured\",\"extension\\/module\\/html\",\"extension\\/module\\/latest\",\"extension\\/module\\/module_helper\",\"extension\\/module\\/ncategory\",\"extension\\/module\\/news_archive\",\"extension\\/module\\/news_latest\",\"extension\\/module\\/product_sort_orders\",\"extension\\/module\\/quickcheckout\",\"extension\\/module\\/related_options\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/update_price\",\"extension\\/module\\/waiting_list\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/cybersource_sop\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/omise\",\"extension\\/payment\\/omise_paynow\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/category_product_based\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/formula_based\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/category_discount\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/customer_group_discount\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/manufacturer_discount\",\"extension\\/total\\/reward\",\"extension\\/total\\/salescombo\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"facebook\\/ControllerFacebookFacebookProductTrait\",\"facebook\\/facebookadsextension\",\"facebook\\/facebookproduct\",\"facebook\\/facebookproductfeed\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/instagram\",\"module\\/mailchimp_integration\",\"module\\/pro_email\",\"module\\/related_options\",\"report\\/customer_engagement\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/enquiry\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"testimonial\\/testimonial\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/custom4\",\"extension\\/payment\\/omise\",\"extension\\/payment\\/omise_paynow\",\"extension\\/shipping\\/formula_based\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/category_product_based\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/pickup\",\"extension\\/payment\\/hitpay\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/discount_category\",\"catalog\\/discount_customer_group\",\"catalog\\/discount_manufacturer\",\"catalog\\/discount_product\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/gallimage\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/menu\",\"catalog\\/nauthor\",\"catalog\\/ncategory\",\"catalog\\/ncomments\",\"catalog\\/news\",\"catalog\\/option\",\"catalog\\/page_banner\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/newspanel\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"enhancement\\/enhanced_ckeditor\",\"event\\/compatibility\",\"event\\/sb_news\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/enquiry_total\\/product_count\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/enquiry_total\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/articles_google_base\",\"extension\\/feed\\/articles_google_sitemap\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/CachedImages\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/custom\",\"extension\\/module\\/custom2\",\"extension\\/module\\/custom3\",\"extension\\/module\\/d_social_login\",\"extension\\/module\\/discounts\",\"extension\\/module\\/excelport\",\"extension\\/module\\/faq_manager\",\"extension\\/module\\/fcategory\",\"extension\\/module\\/featured\",\"extension\\/module\\/html\",\"extension\\/module\\/latest\",\"extension\\/module\\/module_helper\",\"extension\\/module\\/ncategory\",\"extension\\/module\\/news_archive\",\"extension\\/module\\/news_latest\",\"extension\\/module\\/product_sort_orders\",\"extension\\/module\\/quickcheckout\",\"extension\\/module\\/related_options\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/update_price\",\"extension\\/module\\/waiting_list\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/cybersource_sop\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/omise\",\"extension\\/payment\\/omise_paynow\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/category_product_based\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/formula_based\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/category_discount\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/customer_group_discount\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/manufacturer_discount\",\"extension\\/total\\/reward\",\"extension\\/total\\/salescombo\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"facebook\\/ControllerFacebookFacebookProductTrait\",\"facebook\\/facebookadsextension\",\"facebook\\/facebookproduct\",\"facebook\\/facebookproductfeed\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/instagram\",\"module\\/mailchimp_integration\",\"module\\/pro_email\",\"module\\/related_options\",\"report\\/customer_engagement\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/enquiry\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"testimonial\\/testimonial\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/custom4\",\"extension\\/payment\\/omise\",\"extension\\/payment\\/omise_paynow\",\"extension\\/shipping\\/formula_based\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/category_product_based\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/pickup\",\"extension\\/payment\\/hitpay\"]}', 1),
(2, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/discount_category\",\"catalog\\/discount_customer_group\",\"catalog\\/discount_manufacturer\",\"catalog\\/discount_product\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/gallimage\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/menu\",\"catalog\\/nauthor\",\"catalog\\/ncategory\",\"catalog\\/ncomments\",\"catalog\\/news\",\"catalog\\/option\",\"catalog\\/page_banner\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/newspanel\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"enhancement\\/enhanced_ckeditor\",\"event\\/compatibility\",\"event\\/sb_news\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/enquiry_total\\/product_count\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/enquiry_total\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/articles_google_base\",\"extension\\/feed\\/articles_google_sitemap\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/CachedImages\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/d_social_login\",\"extension\\/module\\/discounts\",\"extension\\/module\\/excelport\",\"extension\\/module\\/fcategory\",\"extension\\/module\\/featured\",\"extension\\/module\\/html\",\"extension\\/module\\/latest\",\"extension\\/module\\/ncategory\",\"extension\\/module\\/news_archive\",\"extension\\/module\\/news_latest\",\"extension\\/module\\/product_sort_orders\",\"extension\\/module\\/quickcheckout\",\"extension\\/module\\/related_options\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/waiting_list\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/cybersource_sop\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/omise\",\"extension\\/payment\\/omise_paynow\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/category_product_based\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/formula_based\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/category_discount\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/customer_group_discount\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/manufacturer_discount\",\"extension\\/total\\/reward\",\"extension\\/total\\/salescombo\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"facebook\\/ControllerFacebookFacebookProductTrait\",\"facebook\\/facebookadsextension\",\"facebook\\/facebookproduct\",\"facebook\\/facebookproductfeed\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/instagram\",\"module\\/mailchimp_integration\",\"module\\/pro_email\",\"module\\/related_options\",\"report\\/customer_engagement\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/enquiry\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"testimonial\\/testimonial\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/discount_category\",\"catalog\\/discount_customer_group\",\"catalog\\/discount_manufacturer\",\"catalog\\/discount_product\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/gallimage\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/menu\",\"catalog\\/nauthor\",\"catalog\\/ncategory\",\"catalog\\/ncomments\",\"catalog\\/news\",\"catalog\\/option\",\"catalog\\/page_banner\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/newspanel\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/menu\",\"design\\/theme\",\"design\\/translation\",\"enhancement\\/enhanced_ckeditor\",\"event\\/compatibility\",\"event\\/sb_news\",\"event\\/theme\",\"extension\\/analytics\\/google_analytics\",\"extension\\/captcha\\/basic_captcha\",\"extension\\/captcha\\/google_captcha\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/enquiry_total\\/product_count\",\"extension\\/event\",\"extension\\/extension\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/enquiry_total\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/articles_google_base\",\"extension\\/feed\\/articles_google_sitemap\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\\/CachedImages\",\"extension\\/module\\/account\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/d_social_login\",\"extension\\/module\\/discounts\",\"extension\\/module\\/excelport\",\"extension\\/module\\/fcategory\",\"extension\\/module\\/featured\",\"extension\\/module\\/html\",\"extension\\/module\\/latest\",\"extension\\/module\\/ncategory\",\"extension\\/module\\/news_archive\",\"extension\\/module\\/news_latest\",\"extension\\/module\\/product_sort_orders\",\"extension\\/module\\/quickcheckout\",\"extension\\/module\\/related_options\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/waiting_list\",\"extension\\/openbay\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/cybersource_sop\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/omise\",\"extension\\/payment\\/omise_paynow\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/category_product_based\",\"extension\\/shipping\\/citylink\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/formula_based\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/store\",\"extension\\/theme\\/theme_default\",\"extension\\/total\\/category_discount\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/customer_group_discount\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/manufacturer_discount\",\"extension\\/total\\/reward\",\"extension\\/total\\/salescombo\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"facebook\\/ControllerFacebookFacebookProductTrait\",\"facebook\\/facebookadsextension\",\"facebook\\/facebookproduct\",\"facebook\\/facebookproductfeed\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/instagram\",\"module\\/mailchimp_integration\",\"module\\/pro_email\",\"module\\/related_options\",\"report\\/customer_engagement\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/customer_search\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/enquiry\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/compatibility\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"testimonial\\/testimonial\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `headerline` text NOT NULL,
  `delivery_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `seo_keyword` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, 1.00000000),
(2, 1000.00000000),
(5, 2.20460000),
(6, 35.27400000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 188, 0, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`affiliate_activity_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_cartbindercombo1`
--
ALTER TABLE `oc_cartbindercombo1`
  ADD PRIMARY KEY (`order_offer_id`);

--
-- Indexes for table `oc_cartbindercombo1a`
--
ALTER TABLE `oc_cartbindercombo1a`
  ADD PRIMARY KEY (`order_offer_id`);

--
-- Indexes for table `oc_cartbindercombo1a_setting`
--
ALTER TABLE `oc_cartbindercombo1a_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_cartbindercombo1b`
--
ALTER TABLE `oc_cartbindercombo1b`
  ADD PRIMARY KEY (`order_offer_id`);

--
-- Indexes for table `oc_cartbindercombo1b_setting`
--
ALTER TABLE `oc_cartbindercombo1b_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_cartbindercombo1c`
--
ALTER TABLE `oc_cartbindercombo1c`
  ADD PRIMARY KEY (`order_offer_id`);

--
-- Indexes for table `oc_cartbindercombo1c_setting`
--
ALTER TABLE `oc_cartbindercombo1c_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_cartbindercombo1_setting`
--
ALTER TABLE `oc_cartbindercombo1_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_cartbindercombo2`
--
ALTER TABLE `oc_cartbindercombo2`
  ADD PRIMARY KEY (`order_offer_id`);

--
-- Indexes for table `oc_cartbindercombo2a`
--
ALTER TABLE `oc_cartbindercombo2a`
  ADD PRIMARY KEY (`order_offer_id`);

--
-- Indexes for table `oc_cartbindercombo2a_setting`
--
ALTER TABLE `oc_cartbindercombo2a_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_cartbindercombo2_setting`
--
ALTER TABLE `oc_cartbindercombo2_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_discount`
--
ALTER TABLE `oc_category_discount`
  ADD PRIMARY KEY (`category_discount_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_manufacturer`
--
ALTER TABLE `oc_coupon_manufacturer`
  ADD PRIMARY KEY (`coupon_brand_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_authentication`
--
ALTER TABLE `oc_customer_authentication`
  ADD PRIMARY KEY (`customer_authentication_id`),
  ADD UNIQUE KEY `identifier` (`identifier`,`provider`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_group_discount`
--
ALTER TABLE `oc_customer_group_discount`
  ADD PRIMARY KEY (`customer_group_discount_id`),
  ADD KEY `customer_group_id` (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_reward_dates`
--
ALTER TABLE `oc_customer_group_reward_dates`
  ADD PRIMARY KEY (`customer_group_reward_dates_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_enquiry`
--
ALTER TABLE `oc_enquiry`
  ADD PRIMARY KEY (`enquiry_id`),
  ADD KEY `enquiry_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_enquiry_order`
--
ALTER TABLE `oc_enquiry_order`
  ADD PRIMARY KEY (`enquiry_order_id`);

--
-- Indexes for table `oc_enquiry_order_custom_field`
--
ALTER TABLE `oc_enquiry_order_custom_field`
  ADD PRIMARY KEY (`enquiry_order_custom_field_id`);

--
-- Indexes for table `oc_enquiry_order_history`
--
ALTER TABLE `oc_enquiry_order_history`
  ADD PRIMARY KEY (`enquiry_order_history_id`);

--
-- Indexes for table `oc_enquiry_order_option`
--
ALTER TABLE `oc_enquiry_order_option`
  ADD PRIMARY KEY (`enquiry_order_option_id`);

--
-- Indexes for table `oc_enquiry_order_product`
--
ALTER TABLE `oc_enquiry_order_product`
  ADD PRIMARY KEY (`enquiry_order_product_id`);

--
-- Indexes for table `oc_enquiry_order_recurring`
--
ALTER TABLE `oc_enquiry_order_recurring`
  ADD PRIMARY KEY (`enquiry_order_recurring_id`);

--
-- Indexes for table `oc_enquiry_order_recurring_transaction`
--
ALTER TABLE `oc_enquiry_order_recurring_transaction`
  ADD PRIMARY KEY (`enquiry_order_recurring_transaction_id`);

--
-- Indexes for table `oc_enquiry_order_total`
--
ALTER TABLE `oc_enquiry_order_total`
  ADD PRIMARY KEY (`enquiry_order_total_id`),
  ADD KEY `enquiry_order_id` (`enquiry_order_id`);

--
-- Indexes for table `oc_enquiry_order_voucher`
--
ALTER TABLE `oc_enquiry_order_voucher`
  ADD PRIMARY KEY (`enquiry_order_voucher_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_facebook_product`
--
ALTER TABLE `oc_facebook_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_gallimage`
--
ALTER TABLE `oc_gallimage`
  ADD PRIMARY KEY (`gallimage_id`);

--
-- Indexes for table `oc_gallimage_description`
--
ALTER TABLE `oc_gallimage_description`
  ADD PRIMARY KEY (`gallimage_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_gallimage_image`
--
ALTER TABLE `oc_gallimage_image`
  ADD PRIMARY KEY (`gallimage_image_id`);

--
-- Indexes for table `oc_gallimage_image_description`
--
ALTER TABLE `oc_gallimage_image_description`
  ADD PRIMARY KEY (`gallimage_image_id`,`language_id`);

--
-- Indexes for table `oc_gallimage_to_store`
--
ALTER TABLE `oc_gallimage_to_store`
  ADD PRIMARY KEY (`gallimage_id`,`store_id`);

--
-- Indexes for table `oc_gall_category`
--
ALTER TABLE `oc_gall_category`
  ADD PRIMARY KEY (`gall_cat_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_discount`
--
ALTER TABLE `oc_manufacturer_discount`
  ADD PRIMARY KEY (`manufacturer_discount_id`),
  ADD KEY `manufacturer_id` (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_menus`
--
ALTER TABLE `oc_menus`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_omise_charge`
--
ALTER TABLE `oc_omise_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_omise_customer`
--
ALTER TABLE `oc_omise_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_page_banner`
--
ALTER TABLE `oc_page_banner`
  ADD PRIMARY KEY (`pb_id`);

--
-- Indexes for table `oc_paypal_order`
--
ALTER TABLE `oc_paypal_order`
  ADD PRIMARY KEY (`paypal_order_id`);

--
-- Indexes for table `oc_paypal_order_transaction`
--
ALTER TABLE `oc_paypal_order_transaction`
  ADD PRIMARY KEY (`paypal_order_transaction_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_pdf`
--
ALTER TABLE `oc_product_pdf`
  ADD PRIMARY KEY (`product_pdf_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_category_order`
--
ALTER TABLE `oc_product_to_category_order`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_waiting_list`
--
ALTER TABLE `oc_product_waiting_list`
  ADD PRIMARY KEY (`waiting_id`);

--
-- Indexes for table `oc_proemail_content`
--
ALTER TABLE `oc_proemail_content`
  ADD PRIMARY KEY (`content_id`,`language_id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_relatedoptions`
--
ALTER TABLE `oc_relatedoptions`
  ADD PRIMARY KEY (`relatedoptions_id`),
  ADD KEY `relatedoptions_variant_product_id` (`relatedoptions_variant_product_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `quantity` (`quantity`);

--
-- Indexes for table `oc_relatedoptions_discount`
--
ALTER TABLE `oc_relatedoptions_discount`
  ADD KEY `relatedoptions_id` (`relatedoptions_id`),
  ADD KEY `customer_group_id` (`customer_group_id`),
  ADD KEY `quantity` (`quantity`);

--
-- Indexes for table `oc_relatedoptions_option`
--
ALTER TABLE `oc_relatedoptions_option`
  ADD KEY `relatedoptions_id` (`relatedoptions_id`),
  ADD KEY `option_value_id` (`option_value_id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_relatedoptions_search`
--
ALTER TABLE `oc_relatedoptions_search`
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_relatedoptions_special`
--
ALTER TABLE `oc_relatedoptions_special`
  ADD KEY `relatedoptions_id` (`relatedoptions_id`),
  ADD KEY `customer_group_id` (`customer_group_id`);

--
-- Indexes for table `oc_relatedoptions_to_char`
--
ALTER TABLE `oc_relatedoptions_to_char`
  ADD KEY `relatedoptions_id` (`relatedoptions_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `oc_relatedoptions_variant`
--
ALTER TABLE `oc_relatedoptions_variant`
  ADD PRIMARY KEY (`relatedoptions_variant_id`);

--
-- Indexes for table `oc_relatedoptions_variant_option`
--
ALTER TABLE `oc_relatedoptions_variant_option`
  ADD KEY `option_id` (`option_id`),
  ADD KEY `relatedoptions_variant_id` (`relatedoptions_variant_id`);

--
-- Indexes for table `oc_relatedoptions_variant_product`
--
ALTER TABLE `oc_relatedoptions_variant_product`
  ADD PRIMARY KEY (`relatedoptions_variant_product_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `relatedoptions_variant_id` (`relatedoptions_variant_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_salescombopge`
--
ALTER TABLE `oc_salescombopge`
  ADD PRIMARY KEY (`salescombopge_id`);

--
-- Indexes for table `oc_salescombopge_customer`
--
ALTER TABLE `oc_salescombopge_customer`
  ADD PRIMARY KEY (`salescombopge_id`,`customer_id`);

--
-- Indexes for table `oc_salescombopge_customer_group`
--
ALTER TABLE `oc_salescombopge_customer_group`
  ADD PRIMARY KEY (`salescombopge_id`,`customer_group_id`);

--
-- Indexes for table `oc_salescombopge_description`
--
ALTER TABLE `oc_salescombopge_description`
  ADD PRIMARY KEY (`salescombopge_id`,`language_id`);

--
-- Indexes for table `oc_salescombopge_offertag`
--
ALTER TABLE `oc_salescombopge_offertag`
  ADD PRIMARY KEY (`salescombopge_offertag_id`);

--
-- Indexes for table `oc_salescombopge_product`
--
ALTER TABLE `oc_salescombopge_product`
  ADD PRIMARY KEY (`salescombopge_id`,`product_id`);

--
-- Indexes for table `oc_salescombopge_to_category`
--
ALTER TABLE `oc_salescombopge_to_category`
  ADD PRIMARY KEY (`salescombopge_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_salescombopge_to_layout`
--
ALTER TABLE `oc_salescombopge_to_layout`
  ADD PRIMARY KEY (`salescombopge_id`,`store_id`);

--
-- Indexes for table `oc_salescombopge_to_store`
--
ALTER TABLE `oc_salescombopge_to_store`
  ADD PRIMARY KEY (`salescombopge_id`,`store_id`);

--
-- Indexes for table `oc_sb_nauthor`
--
ALTER TABLE `oc_sb_nauthor`
  ADD PRIMARY KEY (`nauthor_id`);

--
-- Indexes for table `oc_sb_nauthor_description`
--
ALTER TABLE `oc_sb_nauthor_description`
  ADD PRIMARY KEY (`nauthor_id`,`language_id`);

--
-- Indexes for table `oc_sb_ncategory`
--
ALTER TABLE `oc_sb_ncategory`
  ADD PRIMARY KEY (`ncategory_id`);

--
-- Indexes for table `oc_sb_ncategory_description`
--
ALTER TABLE `oc_sb_ncategory_description`
  ADD PRIMARY KEY (`ncategory_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_sb_ncategory_to_group`
--
ALTER TABLE `oc_sb_ncategory_to_group`
  ADD PRIMARY KEY (`ncategory_id`,`group_id`);

--
-- Indexes for table `oc_sb_ncategory_to_layout`
--
ALTER TABLE `oc_sb_ncategory_to_layout`
  ADD PRIMARY KEY (`ncategory_id`,`store_id`);

--
-- Indexes for table `oc_sb_ncategory_to_store`
--
ALTER TABLE `oc_sb_ncategory_to_store`
  ADD PRIMARY KEY (`ncategory_id`,`store_id`);

--
-- Indexes for table `oc_sb_ncomments`
--
ALTER TABLE `oc_sb_ncomments`
  ADD PRIMARY KEY (`ncomment_id`),
  ADD KEY `news_id` (`news_id`);

--
-- Indexes for table `oc_sb_news`
--
ALTER TABLE `oc_sb_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `oc_sb_news_archive`
--
ALTER TABLE `oc_sb_news_archive`
  ADD PRIMARY KEY (`news_archive_id`);

--
-- Indexes for table `oc_sb_news_description`
--
ALTER TABLE `oc_sb_news_description`
  ADD PRIMARY KEY (`news_id`,`language_id`);

--
-- Indexes for table `oc_sb_news_gallery`
--
ALTER TABLE `oc_sb_news_gallery`
  ADD PRIMARY KEY (`news_image_id`);

--
-- Indexes for table `oc_sb_news_related`
--
ALTER TABLE `oc_sb_news_related`
  ADD PRIMARY KEY (`news_id`,`product_id`);

--
-- Indexes for table `oc_sb_news_to_group`
--
ALTER TABLE `oc_sb_news_to_group`
  ADD PRIMARY KEY (`news_id`,`group_id`);

--
-- Indexes for table `oc_sb_news_to_layout`
--
ALTER TABLE `oc_sb_news_to_layout`
  ADD PRIMARY KEY (`news_id`,`store_id`);

--
-- Indexes for table `oc_sb_news_to_ncategory`
--
ALTER TABLE `oc_sb_news_to_ncategory`
  ADD PRIMARY KEY (`news_id`,`ncategory_id`);

--
-- Indexes for table `oc_sb_news_to_store`
--
ALTER TABLE `oc_sb_news_to_store`
  ADD PRIMARY KEY (`news_id`,`store_id`);

--
-- Indexes for table `oc_sb_news_video`
--
ALTER TABLE `oc_sb_news_video`
  ADD PRIMARY KEY (`news_video_id`);

--
-- Indexes for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_timeslot`
--
ALTER TABLE `oc_timeslot`
  ADD PRIMARY KEY (`timeslot_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `affiliate_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo1`
--
ALTER TABLE `oc_cartbindercombo1`
  MODIFY `order_offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo1a`
--
ALTER TABLE `oc_cartbindercombo1a`
  MODIFY `order_offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo1a_setting`
--
ALTER TABLE `oc_cartbindercombo1a_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo1b`
--
ALTER TABLE `oc_cartbindercombo1b`
  MODIFY `order_offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo1b_setting`
--
ALTER TABLE `oc_cartbindercombo1b_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo1c`
--
ALTER TABLE `oc_cartbindercombo1c`
  MODIFY `order_offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo1c_setting`
--
ALTER TABLE `oc_cartbindercombo1c_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo1_setting`
--
ALTER TABLE `oc_cartbindercombo1_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo2`
--
ALTER TABLE `oc_cartbindercombo2`
  MODIFY `order_offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo2a`
--
ALTER TABLE `oc_cartbindercombo2a`
  MODIFY `order_offer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo2a_setting`
--
ALTER TABLE `oc_cartbindercombo2a_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_cartbindercombo2_setting`
--
ALTER TABLE `oc_cartbindercombo2_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_category_discount`
--
ALTER TABLE `oc_category_discount`
  MODIFY `category_discount_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_manufacturer`
--
ALTER TABLE `oc_coupon_manufacturer`
  MODIFY `coupon_brand_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_authentication`
--
ALTER TABLE `oc_customer_authentication`
  MODIFY `customer_authentication_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_customer_group_discount`
--
ALTER TABLE `oc_customer_group_discount`
  MODIFY `customer_group_discount_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group_reward_dates`
--
ALTER TABLE `oc_customer_group_reward_dates`
  MODIFY `customer_group_reward_dates_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_enquiry`
--
ALTER TABLE `oc_enquiry`
  MODIFY `enquiry_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_enquiry_order`
--
ALTER TABLE `oc_enquiry_order`
  MODIFY `enquiry_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_enquiry_order_custom_field`
--
ALTER TABLE `oc_enquiry_order_custom_field`
  MODIFY `enquiry_order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_enquiry_order_history`
--
ALTER TABLE `oc_enquiry_order_history`
  MODIFY `enquiry_order_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_enquiry_order_option`
--
ALTER TABLE `oc_enquiry_order_option`
  MODIFY `enquiry_order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_enquiry_order_product`
--
ALTER TABLE `oc_enquiry_order_product`
  MODIFY `enquiry_order_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_enquiry_order_recurring`
--
ALTER TABLE `oc_enquiry_order_recurring`
  MODIFY `enquiry_order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_enquiry_order_recurring_transaction`
--
ALTER TABLE `oc_enquiry_order_recurring_transaction`
  MODIFY `enquiry_order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_enquiry_order_total`
--
ALTER TABLE `oc_enquiry_order_total`
  MODIFY `enquiry_order_total_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_enquiry_order_voucher`
--
ALTER TABLE `oc_enquiry_order_voucher`
  MODIFY `enquiry_order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_gallimage`
--
ALTER TABLE `oc_gallimage`
  MODIFY `gallimage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_gallimage_image`
--
ALTER TABLE `oc_gallimage_image`
  MODIFY `gallimage_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=533;

--
-- AUTO_INCREMENT for table `oc_gall_category`
--
ALTER TABLE `oc_gall_category`
  MODIFY `gall_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_manufacturer_discount`
--
ALTER TABLE `oc_manufacturer_discount`
  MODIFY `manufacturer_discount_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_menus`
--
ALTER TABLE `oc_menus`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `oc_omise_charge`
--
ALTER TABLE `oc_omise_charge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_omise_customer`
--
ALTER TABLE `oc_omise_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;

--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_page_banner`
--
ALTER TABLE `oc_page_banner`
  MODIFY `pb_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_paypal_order`
--
ALTER TABLE `oc_paypal_order`
  MODIFY `paypal_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_paypal_order_transaction`
--
ALTER TABLE `oc_paypal_order_transaction`
  MODIFY `paypal_order_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `oc_product_pdf`
--
ALTER TABLE `oc_product_pdf`
  MODIFY `product_pdf_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product_waiting_list`
--
ALTER TABLE `oc_product_waiting_list`
  MODIFY `waiting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_proemail_content`
--
ALTER TABLE `oc_proemail_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=952;

--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_relatedoptions`
--
ALTER TABLE `oc_relatedoptions`
  MODIFY `relatedoptions_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_relatedoptions_variant`
--
ALTER TABLE `oc_relatedoptions_variant`
  MODIFY `relatedoptions_variant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_relatedoptions_variant_product`
--
ALTER TABLE `oc_relatedoptions_variant_product`
  MODIFY `relatedoptions_variant_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_salescombopge`
--
ALTER TABLE `oc_salescombopge`
  MODIFY `salescombopge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_salescombopge_offertag`
--
ALTER TABLE `oc_salescombopge_offertag`
  MODIFY `salescombopge_offertag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `oc_sb_nauthor`
--
ALTER TABLE `oc_sb_nauthor`
  MODIFY `nauthor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_sb_ncategory`
--
ALTER TABLE `oc_sb_ncategory`
  MODIFY `ncategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `oc_sb_ncomments`
--
ALTER TABLE `oc_sb_ncomments`
  MODIFY `ncomment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_sb_news`
--
ALTER TABLE `oc_sb_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_sb_news_archive`
--
ALTER TABLE `oc_sb_news_archive`
  MODIFY `news_archive_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `oc_sb_news_gallery`
--
ALTER TABLE `oc_sb_news_gallery`
  MODIFY `news_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_sb_news_video`
--
ALTER TABLE `oc_sb_news_video`
  MODIFY `news_video_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6229;

--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1089;

--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4236;

--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
