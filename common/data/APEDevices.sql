-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 17, 2015 at 06:50 PM
-- Server version: 5.5.35
-- PHP Version: 5.5.9-1+sury.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `APEDevices`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_brand`
--

CREATE TABLE IF NOT EXISTS `brand_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` text,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `short_description` text,
  `description` text,
  `name` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `brand_brand`
--

INSERT INTO `brand_brand` (`id`, `type`, `updated_at`, `created_at`, `short_description`, `description`, `name`) VALUES
(15, 'Samsung', '2015-08-17 11:49:34', '2015-08-10 16:12:55', 'Nullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,', 'Nullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,\nNullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,', 'Samsung'),
(16, 'Sharp', '2015-08-16 16:31:38', '2015-08-10 16:33:51', 'Nam lacus justo, sodales a odio id, lacinia vulputate purus', 'Nam lacus justo, sodales a odio id, lacinia vulputate purus. Donec eu nibh non metus condimentum semper a eu nulla. Donec posuere purus et nulla ornare tempus. Sed tristique ligula ut nulla lacinia semper. Fusce ac ullamcorper nunc. Donec vitae ante a velit sollicitudin dapibus porta interdum leo. Praesent et interdum lacus. Duis fringilla tortor vitae tempus aliquet. Sed eget leo justo. In a turpis mauris. Suspendisse potenti. Nunc lobortis nisi eget ipsum vulputate, eget pellentesque dui tempor. Quisque id ullamcorper neque. Integer lacinia congue nisl, volutpat ultricies ex. Etiam mauris odio, facilisis nec ipsum quis, venenatis volutpat diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 'Sharp'),
(24, 'nokia', '2015-08-17 11:49:34', '2015-08-11 11:52:25', 'nokia brand nokia brand', 'nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand \nnokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand \nnokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand nokia brand', 'Nokia'),
(25, 'Dell', '2015-08-17 11:49:34', '2015-08-11 14:46:38', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent placerat volutpat nisi id convallis. Pellentesque posuere libero vitae maximus aliquam. Quisque dapibus nibh vel ex lacinia lobortis. Integer tristique rhoncus lacus, quis viverra magna consequat sed. Nullam sit amet ex euismod, mollis metus ac, condimentum libero. Aenean faucibus eros nec urna molestie,', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent placerat volutpat nisi id convallis. Pellentesque posuere libero vitae maximus aliquam. Quisque dapibus nibh vel ex lacinia lobortis. Integer tristique rhoncus lacus, quis viverra magna consequat sed. Nullam sit amet ex euismod, mollis metus ac, condimentum libero. Aenean faucibus eros nec urna molestie, sit amet pharetra nibh accumsan. Morbi id sem pellentesque, consequat elit a, porta est. Donec consequat, augue ac placerat commodo, odio risus consequat mi, ac interdum mi mi et libero. Nam at porta eros, eget tincidunt est. Nam sit amet mollis ipsum. Pellentesque leo odio, dignissim ac velit vel, varius malesuada nibh. Nunc fermentum libero id massa eleifend suscipit. Phasellus posuere euismod hendrerit. Integer iaculis euismod lacus eu tincidunt.\n\nAenean viverra mattis elit. Praesent vehicula, orci vulputate luctus congue, arcu erat mollis ligula, ut rhoncus arcu justo nec ipsum. Etiam eros orci, laoreet quis erat id, mattis accumsan lorem. Vivamus in mattis eros. Donec mi quam, elementum sit amet malesuada at, vulputate vel nulla. Nullam turpis erat, ultricies at arcu nec, commodo ultricies felis. Sed at ultrices arcu. Morbi quis porta ex. Aliquam facilisis nunc sodales eros mattis dignissim. Nulla tellus quam, condimentum a maximus ultrices, egestas eget massa. Maecenas facilisis risus ac maximus aliquam. Etiam vulputate, leo vel mollis convallis, eros nulla porttitor ante, in elementum dui urna eget quam.\n\nNullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis, pretium augue vel, dictum dui. Nullam feugiat gravida nisi, sed viverra erat vulputate sed. Aenean ante lacus, condimentum ut dictum vitae, luctus ac orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi sit amet metus vitae sem aliquet vestibulum. Nulla pellentesque mauris eu porttitor luctus. Morbi id odio sit amet tortor euismod gravida sed eu diam. Fusce vitae dapibus tortor.\n\nAliquam sit amet sodales ante. Curabitur sed sollicitudin neque. Sed semper et est id sollicitudin. Suspendisse et eros nec tellus lobortis mollis sit amet eu ipsum. In a eleifend dui, et semper neque. Nulla facilisi. Pellentesque tempus tortor et aliquet mattis. Proin gravida tellus sit amet pretium venenatis. Morbi elementum nibh vel urna efficitur congue. Nulla sodales lectus ac placerat consectetur. Phasellus auctor dictum sapien id tincidunt. Nulla elementum rutrum finibus. Suspendisse hendrerit molestie mi, commodo vulputate quam.\n\nSed scelerisque eu tortor in finibus. Nam dictum posuere volutpat. Aliquam libero sem, maximus vitae lacinia ullamcorper, blandit quis metus. Praesent non odio iaculis, suscipit tortor vel, venenatis orci. Integer vel ligula pulvinar, hendrerit enim nec, ornare nunc. Ut finibus rutrum ligula nec sollicitudin. Vivamus purus purus, egestas sed sollicitudin a, tempus a magna. Cras rutrum commodo sagittis. Donec at facilisis orci. Vivamus rutrum vitae magna id ullamcorper. Suspendisse potenti. In hac habitasse platea dictumst. Proin interdum pretium massa quis lobortis. Proin eu sapien sed massa vehicula efficitur.', 'Dell'),
(26, 'Sony', '2015-08-17 11:49:34', '2015-08-11 14:47:21', 'Vestibulum commodo enim id velit bibendum, ut feugiat justo pretium. Praesent pulvinar mattis molestie. Vivamus rutrum dignissim sapien, eu porta odio iaculis a. Nunc vitae mattis sapien. Proin magna odio, condimentum sit amet magna eu, volutpat gravida turpis. Pellentesque scelerisque diam a diam lacinia, ut accumsan erat suscipit. Quisque convallis accumsan faucibus.', 'Vestibulum commodo enim id velit bibendum, ut feugiat justo pretium. Praesent pulvinar mattis molestie. Vivamus rutrum dignissim sapien, eu porta odio iaculis a. Nunc vitae mattis sapien. Proin magna odio, condimentum sit amet magna eu, volutpat gravida turpis. Pellentesque scelerisque diam a diam lacinia, ut accumsan erat suscipit. Quisque convallis accumsan faucibus.\nVestibulum commodo enim id velit bibendum, ut feugiat justo pretium. Praesent pulvinar mattis molestie. Vivamus rutrum dignissim sapien, eu porta odio iaculis a. Nunc vitae mattis sapien. Proin magna odio, condimentum sit amet magna eu, volutpat gravida turpis. Pellentesque scelerisque diam a diam lacinia, ut accumsan erat suscipit. Quisque convallis accumsan faucibus.', 'Sony'),
(27, 'HP', '2015-08-11 17:52:16', '2015-08-11 14:49:49', 'Duis orci ex, sollicitudin a velit eget, placerat tempor augue. Aenean at libero nec enim consequat fringilla elementum vel libero. Donec rhoncus mattis lectus id consequat. Maecenas sit amet ipsum vel quam gravida facilisis aliquam congue ipsum. Aenean aliquam consequat nunc ut pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce eu libero a enim semper scelerisque. Pellentesque aliquam magna id velit egestas vehicula. Vestibulum eu felis eu felis egestas luctus sit amet in justo. Vestibulum dignissim tellus', 'Duis orci ex, sollicitudin a velit eget, placerat tempor augue. Aenean at libero nec enim consequat fringilla elementum vel libero. Donec rhoncus mattis lectus id consequat. Maecenas sit amet ipsum vel quam gravida facilisis aliquam congue ipsum. Aenean aliquam consequat nunc ut pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce eu libero a enim semper scelerisque. Pellentesque aliquam magna id velit egestas vehicula. Vestibulum eu felis eu felis egestas luctus sit amet in justo. Vestibulum dignissim tellus\nDuis orci ex, sollicitudin a velit eget, placerat tempor augue. Aenean at libero nec enim consequat fringilla elementum vel libero. Donec rhoncus mattis lectus id consequat. Maecenas sit amet ipsum vel quam gravida facilisis aliquam congue ipsum. Aenean aliquam consequat nunc ut pretium. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce eu libero a enim semper scelerisque. Pellentesque aliquam magna id velit egestas vehicula. Vestibulum eu felis eu felis egestas luctus sit amet in justo. Vestibulum dignissim tellus', 'HP'),
(28, 'HTC', '2015-08-11 17:53:46', '2015-08-11 17:53:46', 'HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC', 'HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC HTC', 'HTC');

-- --------------------------------------------------------

--
-- Table structure for table `brand_category`
--

CREATE TABLE IF NOT EXISTS `brand_category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'simple',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `brand_category` (`category_id`),
  KEY `category_brand` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `brand_category`
--

INSERT INTO `brand_category` (`id`, `brand_id`, `category_id`, `type`, `params`) VALUES
(137, 16, 17, 'simple', NULL),
(138, 16, 18, 'simple', NULL),
(139, 25, 18, 'simple', NULL),
(140, 26, 18, 'simple', NULL),
(142, 15, 18, 'simple', NULL),
(143, 27, 19, 'simple', NULL),
(144, 28, 19, 'simple', NULL),
(145, 24, 18, 'simple', NULL),
(146, 26, 21, 'simple', NULL),
(147, 25, 21, 'simple', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brand_product`
--

CREATE TABLE IF NOT EXISTS `brand_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `brand_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'simple',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `brand_product` (`product_id`),
  KEY `product_brand` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=185 ;

--
-- Dumping data for table `brand_product`
--

INSERT INTO `brand_product` (`id`, `brand_id`, `product_id`, `type`, `params`) VALUES
(150, 15, 13, 'simple', NULL),
(151, 26, 13, 'simple', NULL),
(153, 25, 14, 'simple', NULL),
(154, 27, 14, 'simple', NULL),
(161, 16, 16, 'simple', NULL),
(166, 26, 19, 'simple', NULL),
(167, 24, 19, 'simple', NULL),
(168, 15, 19, 'simple', NULL),
(169, 16, 15, 'simple', NULL),
(170, 26, 15, 'simple', NULL),
(171, 16, 17, 'simple', NULL),
(179, 15, 18, 'simple', NULL),
(180, 16, 18, 'simple', NULL),
(181, 15, 12, 'simple', NULL),
(182, 24, 12, 'simple', NULL),
(183, 25, 12, 'simple', NULL),
(184, 26, 12, 'simple', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_category`
--

CREATE TABLE IF NOT EXISTS `category_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `slug` varchar(150) NOT NULL,
  `name` varchar(250) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `short_description` text,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `category_category`
--

INSERT INTO `category_category` (`id`, `parent_id`, `slug`, `name`, `image`, `short_description`, `description`, `status`, `created_at`, `updated_at`) VALUES
(17, NULL, 'Electronic Devices', 'Electronic Devices', NULL, 'Electronic Devices', 'Electronic Devices Electronic Devices Electronic Devices Electronic Devices Electronic Devices', 1, '2015-08-10 16:05:08', '2015-08-11 15:01:53'),
(18, 17, 'category E', 'category E', NULL, 'category E', 'category E category E category E category E category E category E category E category E category E category E category E category E', 1, '2015-08-10 16:12:41', '2015-08-14 14:08:56'),
(19, 17, 'category F', 'category F', NULL, 'category Fcategory Fcategory Fcategory F', 'category Fcategory Fcategory Fcategory F', 1, '2015-08-11 17:52:01', '2015-08-11 17:53:46'),
(20, 19, 'category D', 'category D', NULL, 'category D category D category D category D category D category D', 'category D category D category D category D category D category D category D category D category D category D category D category D category D category D', 1, '2015-08-13 18:01:07', '2015-08-13 18:01:07'),
(21, 20, 'Test Category', 'Test Category', NULL, 'Test Category Test Category Test Category', 'Test Category Test Category Test Category', 1, '2015-08-17 11:47:56', '2015-08-17 11:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `content_device`
--

CREATE TABLE IF NOT EXISTS `content_device` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `device_id` int(10) NOT NULL,
  `category_id` int(10) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `owner_id` int(10) NOT NULL,
  `brand_id` int(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `description` text,
  `short_description` text,
  `characters` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(25) DEFAULT NULL,
  `price` varchar(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `device_id` (`device_id`),
  KEY `owner_id` (`owner_id`),
  KEY `category_id` (`category_id`),
  KEY `product_id` (`product_id`),
  KEY `brand_id` (`brand_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `content_device`
--

INSERT INTO `content_device` (`id`, `device_id`, `category_id`, `product_id`, `owner_id`, `brand_id`, `created_at`, `updated_at`, `description`, `short_description`, `characters`, `published`, `enabled`, `name`, `price`) VALUES
(3, 6, NULL, NULL, 1, NULL, '2015-08-11 12:59:33', '2015-08-11 12:59:33', 'Nullam at tortor elit. In ut consequat risus. Nulla porttitor cursus ligula ac pulvinar. Proin a quam nibh. Donec gravida tortor in ligula tristique, efficitur dignissim mauris varius. Mauris eu odio urna. Vestibulum lacinia, enim sed faucibus semper, justo libero fermentum lorem, a lacinia purus lectus et lacus. Ut dictum ultrices nunc a maximus. Morbi id justo sit amet purus vestibulum imperdiet sed eget tortor. Pellentesque velit velit, consectetur vitae condimentum bibendum, sollicitudin non purus.', 'Nullam at tortor elit. In ut consequat risus. Nulla porttitor cursus ligula ac pulvinar. Proin a quam nibh. Donec gravida tortor in ligula tristique, efficitur dignissim mauris varius. Mauris eu odio urna. Vestibulum lacinia, enim sed faucibus semper, justo libero fermentum lorem.', NULL, 0, 0, 'PAOE', '230'),
(4, 6, NULL, NULL, 1, NULL, '2015-08-11 13:00:11', '2015-08-11 13:00:11', '321sdf2sd sdf32s1d sdfsdf', '321sd sd3f21s sd32f1', NULL, 0, 0, '321 daz21', '998556'),
(5, 8, NULL, NULL, 1, NULL, '2015-08-11 13:38:16', '2015-08-11 13:38:16', 'sdf sd sdfsdf sdfsdsf sdf sdsdf sd sdfsdf sdfsdsf sdf sdsdf sd sdfsdf sdfsdsf sdf sd', 'sdfsd sdf', NULL, 0, 0, 'dsqd', '960'),
(6, 6, NULL, NULL, 1, NULL, '2015-08-11 15:47:45', '2015-08-11 15:47:45', 'ertisements/_partial-templates/device_details.html\nertisements/_partial-templates/device_details.html\nertisements/_partial-templates/device_details.html', 'ertisements/_partial-templates/device_details.html', NULL, 0, 0, 'galaxy s6', '800'),
(7, 12, NULL, NULL, 1, NULL, '2015-08-11 16:04:30', '2015-08-11 16:04:30', 'sharp calculator  in good condition, properly adjusted, and well maintained.', 'sharp calculator  in good condition, properly adjusted, and well maintained.', NULL, 0, 0, 'sharp calculator', '750'),
(8, 9, NULL, NULL, 1, NULL, '2015-08-12 14:53:03', '2015-08-12 14:53:03', 'sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek', 'sNokiad kdazae zaek sNokiad kdazae zaek sNokiad kdazae zaek', NULL, 0, 0, 'aze azeaze', '626'),
(9, 17, NULL, NULL, 1, NULL, '2015-08-12 15:49:03', '2015-08-12 15:49:03', 'smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony smart watch sony', 'smart watch sony', NULL, 0, 0, 'smart watch sony', 'smart watch sony'),
(10, 22, NULL, NULL, 1, NULL, '2015-08-13 13:55:36', '2015-08-13 13:55:36', 'Vostro Pc  Vostro Pc 5230 Vostro Pc  Vostro Pc 5230 Vostro Pc  Vostro Pc 5230 Vostro Pc  Vostro Pc 5230 Vostro Pc  Vostro Pc 5230 Vostro Pc  Vostro Pc 5230', 'a good opportunity in good condition.', NULL, 0, 0, 'Vostro Pc', '532'),
(11, 10, NULL, NULL, 1, NULL, '2015-08-13 18:22:34', '2015-08-13 18:22:34', 'Lumia phone Lumia phone Lumia phone', 'Lumia phone  Lumia phone Lumia phone Lumia phone', NULL, 0, 0, 'Lumia phone', '856'),
(12, 13, NULL, NULL, 1, NULL, '2015-08-13 18:40:25', '2015-08-13 18:40:25', 'YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5', 'YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5 YUJI - TL18S8313Se42S5', NULL, 0, 0, 'sdfsdf sdfsdf', '8788'),
(13, 13, NULL, NULL, 1, NULL, '2015-08-13 19:44:14', '2015-08-13 19:44:14', 'aze azeae aze aze aez', 'azeaze', NULL, 0, 0, 'azeza', 'aze'),
(14, 15, NULL, NULL, 1, NULL, '2015-08-14 14:21:03', '2015-08-14 14:21:03', 'MGL 2003 MGL 2003 MGL 2003 MGL 2003 \nMGL 2003 MGL 2003 MGL 2003', 'MGL 2003', NULL, 0, 0, '362', '256'),
(15, 11, NULL, NULL, 1, NULL, '2015-08-14 14:26:34', '2015-08-14 14:26:34', 'Nokia Lumia 830Nokia Lumia 830Nokia Lumia 830Nokia Lumia 830Nokia Lumia 830', 'Nokia Lumia 830 Nokia Lumia 830', NULL, 0, 0, 'Nokia Lumia 830', '900'),
(16, 23, NULL, NULL, 1, NULL, '2015-08-14 18:16:11', '2015-08-14 18:16:11', 'KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B', 'KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B', NULL, 0, 0, 'KDL-42W800sony_B', '650'),
(17, 6, NULL, NULL, 1, NULL, '2015-08-15 12:02:06', '2015-08-15 12:02:06', 'KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B KD L- 4 2W800sony _ B', 'za4a 5z4aze45 a5z4eza6e 6az54ea a6z5e4a zaz65e4aze654 az6e54a 6az5e4', NULL, 0, 0, 'Content Test', '985'),
(18, 8, NULL, NULL, 1, NULL, '2015-08-15 17:18:51', '2015-08-15 17:18:51', 's3 galaxy s3 galaxy s3 galaxy v', 's3 galaxy  s3 galaxy s3 galaxy s3 galaxy', NULL, 0, 0, 's3 galaxy', '350'),
(19, 22, NULL, NULL, 1, NULL, '2015-08-17 12:12:52', '2015-08-17 12:12:52', 'dell vostro prodell vostro prodell vostro prodell vostro pro', 'dell vostro pro', NULL, 0, 0, 'dell vostro pro', '980');

-- --------------------------------------------------------

--
-- Table structure for table `device_device`
--

CREATE TABLE IF NOT EXISTS `device_device` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `device_brand_id` int(10) DEFAULT NULL,
  `device_category_id` int(10) DEFAULT NULL,
  `type` varchar(25) NOT NULL,
  `name` text,
  `description` text,
  `short_description` text,
  `weight` decimal(12,4) DEFAULT NULL,
  `width` decimal(12,4) DEFAULT NULL,
  `height` decimal(12,4) DEFAULT NULL,
  `depth` decimal(12,4) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `note` varchar(25) NOT NULL DEFAULT '0',
  `characters` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `device_product_id` int(10) DEFAULT NULL,
  `extra_fields` longtext,
  PRIMARY KEY (`id`),
  KEY `device_brand_id` (`device_brand_id`),
  KEY `device_category_id` (`device_category_id`),
  KEY `device_product_id` (`device_product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `device_device`
--

INSERT INTO `device_device` (`id`, `device_brand_id`, `device_category_id`, `type`, `name`, `description`, `short_description`, `weight`, `width`, `height`, `depth`, `price`, `note`, `characters`, `created_at`, `updated_at`, `device_product_id`, `extra_fields`) VALUES
(6, 15, 18, 'smart S600', 'Galaxy S6 edge', 'Reimagined Design Inside and Out\nInnovative Dual-Edge Screen\n5.1" Quad HD Super AMOLED® display\n16MP rear-facing camera', 'Samsung Galaxy S6 edge, 32GB†, (T-Mobile), Gold Platinum', 65652.0000, 3232.0000, 323.0000, 998.0000, 965.0000, '0', NULL, '2015-08-02 00:00:00', '2015-08-15 12:02:06', 12, NULL),
(7, 15, 18, 'Samsung Galaxy Note Edge', 'Samsung Galaxy Note Edge', 'Innovative Smart Edge Screen\n5.6-inch Quad HD Super AMOLED® display\nEnhanced S Pen™ with more precision and functions\n16MP rear camera with Optical Image Stabilization', 'Samsung Galaxy Note Edge (Verizon), Charcoal Black', 232.0000, 325.0000, 223.0000, 23.0000, 32566.0000, '0', NULL, '2015-08-11 12:23:11', '2015-08-11 15:05:56', 12, NULL),
(8, 15, 17, 'Galaxy S III', 'Galaxy S III', 'Sharing photos, music and video isn''t just better or easier–it''s almost instant\nNew ways to interact and simplify your life with your phone\nThe power you need, and the style you want', 'Samsung Galaxy S III, (Virgin Mobile), Marble White', 505.0000, 50.0000, 53.0000, 30.0000, 50.0000, '0', NULL, '2015-08-11 12:56:05', '2015-08-16 16:37:49', 12, 'a:2:{i:0;a:8:{s:2:"id";s:0:"";s:4:"name";s:7:"field 1";s:5:"field";s:6:"field1";s:7:"content";s:4:"9856";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:34;s:11:"description";s:10:"12 field 1";}i:1;a:8:{s:2:"id";s:0:"";s:4:"name";s:7:"field 2";s:5:"field";s:6:"field2";s:7:"content";s:4:"8895";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:150;s:11:"description";s:7:"320 323";}}'),
(9, 24, 18, 'Nokia 105', 'Nokia 105', 'LAUNCH	Announced	2015, June\nStatus	Available. Released 2015, June\nBODY	Dimensions	108.5 x 45.5 x 14.1 mm (4.27 x 1.79 x 0.56 in)\nWeight	69.6 g (2.47 oz)\nSIM	Dual SIM (Mini-SIM, dual stand-by)\n 	- Flashlight\nDISPLAY	Type	TFT, 65K colors\nSize	1.4 inches (~12.8% screen-to-body ratio)\nResolution	128 x 128 pixels (~129 ppi pixel density)\nMEMORY	Card slot	No\nPhonebook	2000 contacts\nCall records	Yes\nInternal	4 MB RAM\nCAMERA	 	No', 'BATTERY	 	Li-Ion 800 mAh battery\nStand-by	Up to 600 h\nTalk time	Up to 15 h\nMISC	Colors	Black, Cyan, White', 556.0000, 230.0000, 230.0000, 223.0000, 98.0000, '0', NULL, '2015-08-11 15:09:34', '2015-08-12 14:53:03', 12, NULL),
(10, 24, 18, 'Nokia Lumia 735', 'Nokia Lumia 735', 'NETWORK	Technology	\nGSM / HSPA / LTE\nLAUNCH	Announced	2014, September\nStatus	Available. Released 2014, September\nBODY	Dimensions	134.7 x 68.5 x 8.9 mm (5.30 x 2.70 x 0.35 in)\nWeight	134 g (4.73 oz)\nSIM	Nano-SIM\nDISPLAY	Type	OLED capacitive touchscreen, 16M colors\nSize	4.7 inches (~66.0% screen-to-body ratio)\nResolution	720 x 1280 pixels (~312 ppi pixel density)\nMultitouch	Yes\nProtection	Corning Gorilla Glass 3\n 	- ClearBlack display\nPLATFORM	OS	Microsoft Windows Phone 8.1, planned upgrade to Windows 10\nChipset	Qualcomm Snapdragon 400\nCPU	Quad-core 1.2 GHz Cortex-A7\nGPU	Adreno 305\nMEMORY	Card slot	microSD, up to 128 GB\nInternal	8 GB, 1 GB RAM\nCAMERA	Primary	6.7 MP (6.1 MP effective), 2848 x 2144 pixels, Carl Zeiss optics, autofocus, LED flash, check quality\nFeatures	1/3.4'''' sensor size, geo-tagging, face detection, panorama\nVideo	1080p@30fps, stereo sound rec., check quality\nSecondary	5 MP, 1080p\nSOUND	Alert types	Vibration; MP3, WAV ringtones\nLoudspeaker	Yes\n3.5mm jack	Yes\nCOMMS	WLAN	Wi-Fi 802.11 b/g/n, DLNA, hotspot\nBluetooth	v4.0, A2DP, LE/ apt-X after WP8 Denim update\nGPS	Yes, with A-GPS, GLONASS, Beidou\nNFC	Yes\nRadio	FM radio\nUSB	microUSB v2.0\nFEATURES	Sensors	Accelerometer, gyro, proximity, compass, sensor core\nMessaging	SMS (threaded view), MMS, Email, Push Email, IM\nBrowser	HTML5\nJava	No\n 	- Wireless Charging (Qi-enabled)\n- Active noise cancellation with dedicated mic\n- MP3/WAV/eAAC+/WMA player\n- MP4/H.264/WMV player\n- OneDrive (15 GB cloud storage)\n- Document viewer\n- Video/photo editor\nBATTERY	 	Li-Ion 2200 mAh battery (BV-T5A)\nStand-by	Up to 600 h\nTalk time	Up to 22 h (2G) / Up to 17 h (3G)\nMusic play	Up to 60 h\nMISC	Colors	Orange, green, white, black\nSAR US	 1.38 W/kg (head)     0.78 W/kg (body)    \nSAR EU	 0.80 W/kg (head)     0.48 W/kg (body)    \nPrice group	5/10\nTESTS	Performance	Basemark OS II: 435\nCamera	Photo / Video\nBattery life	\nEndurance rating 59h', 'TESTS	Performance	Basemark OS II: 435\nSAR EU	 0.80 W/kg (head)     0.48 W/kg (body)', 656.0000, 32.0000, 232.0000, 323.0000, 985.0000, '0', NULL, '2015-08-11 15:10:27', '2015-08-13 18:22:34', 12, NULL),
(11, 24, 18, 'Nokia Lumia 830', 'Nokia Lumia 830', 'BODY	Dimensions	139.4 x 70.7 x 8.5 mm (5.49 x 2.78 x 0.33 in)\nWeight	150 g (5.29 oz)\nSIM	Nano-SIM\nDISPLAY	Type	IPS LCD capacitive touchscreen, 16M colors\nSize	5.0 inches (~69.9% screen-to-body ratio)\nResolution	720 x 1280 pixels (~294 ppi pixel density)\nMultitouch	Yes\nProtection	Corning Gorilla Glass 3\n 	- ClearBlack display\nPLATFORM	OS	Microsoft Windows Phone 8.1\nChipset	Qualcomm Snapdragon 400\nCPU	Quad-core 1.2 GHz Cortex-A7\nGPU	Adreno 305\nMEMORY	Card slot	microSD, up to 128 GB\nInternal	16 GB, 1 GB RAM\nCAMERA	Primary	10 MP, 3520 x 2640 pixels, Carl Zeiss optics, optical image stabilization, autofocus, LED flash, check quality\nFeatures	1/3.4'''' sensor size, PureView technology, geo-tagging, face detection, panorama\nVideo	1080p@30fps, optical stabilization, stereo sound rec., check quality\nSecondary	0.9 MP, 720p\nSOUND	Alert types	Vibration; MP3, WAV ringtones\nLoudspeaker	Yes\n3.5mm jack	Yes\n 	- Dolby Digital Plus\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n, dual-band, DLNA, hotspot\nBluetooth	v4.0, A2DP, EDR, LE, apt-X\nGPS	Yes, with A-GPS, GLONASS, Beidou\nNFC	Yes\nRadio	FM radio\nUSB	microUSB v2.0\nFEATURES	Sensors	Accelerometer, gyro, proximity, compass\nMessaging	SMS (threaded view), MMS, Email, Push Email, IM\nBrowser	HTML5\nJava	No\n 	- Wireless charging (Qi-enabled)\n- Active noise cancellation with dedicated mic\n- MP3/WAV/eAAC+/WMA player\n- MP4/H.264/WMV player\n- OneDrive (15 GB cloud storage)\n- Document viewer\n- Video/photo editor\nBATTERY	 	Li-Ion 2200 mAh battery (BV-L4A)\nStand-by	Up to 528 h\nTalk time	Up to 12 h 54 min (2G) / Up to 14 h 48 min (3G)\nMusic play	Up to 78 h\nMISC	Colors	Orange, green, white, black, gold\nSAR US	 0.87 W/kg (head)     0.83 W/kg (body)    \nSAR EU	 0.46 W/kg (head)     0.59 W/kg (body)    \nPrice group	7/10\nTESTS	Performance	Basemark OS II: 478\nDisplay	Contrast ratio: 1078 (nominal), 1887 (sunlight)\nCamera	Photo / Video\nLoudspeaker	Voice 65dB / Noise 66dB / Ring 78dB\nAudio quality	Noise -89.7dB / Crosstalk -91.6dB\nBattery life	\nEndurance rating 68h', 'NETWORK	Technology	\nGSM / HSPA / LTE\nLAUNCH	Announced	2014, September', 6565.0000, 3233.0000, 232.0000, 223.0000, 89956.0000, '0', NULL, '2015-08-11 15:11:17', '2015-08-14 14:26:34', 12, NULL),
(12, 16, 18, 'EL-W506X', 'EL-W506X', 'sharp EL-W506X sharp EL-W506X sharp EL-W506X sharp EL-W506X sharp EL-W506X', '16 x 4\n	96 x 32', 65.0000, 656.0000, 6565.0000, 656.0000, 985.0000, '0', NULL, '2015-08-11 15:15:41', '2015-08-11 16:04:30', 15, NULL),
(13, 16, 18, 'YUJI - TL18S8313S24S5', 'YUJI - TL18S8313S24S5', 'Spot\n18 W / 1,300 lm / 3,000 K / white aluminium / 24° / switchable\nFlexible beam angles, colour temperatures and lumen packages combined with high efficiency /This is Why YUJI is the ideal luminaire for retail outlets, showrooms and supermarkets.\nSophisticated Sharp ZENIGATA technology with high efficiency (up to 89 lm/W) and CRI > 80\nEasy refurbishment inside all existing 3-phase tracks due to standardized adapter technology\n50.000 hrs. service life (L70/B50), no maintenance costs\nSubtle design\nMade in Europe', '18 W / 1,300 lm / 3,000 K / white aluminium / 24° / switchable', 6565.0000, 6565.0000, 656.0000, 565.0000, 986.0000, '0', NULL, '2015-08-11 15:16:27', '2015-08-13 19:44:14', 16, NULL),
(14, 16, 18, 'YUJI - TL28S8323S24S5', 'YUJI - TL28S8323S24S5', 'sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5 sharp spot YUJI - TL28S8323S24S5', 'sharp spot YUJI - TL28S8323S24S5', 652.0000, 32.0000, 322.0000, 3232.0000, 986.0000, '0', NULL, '2015-08-11 15:17:12', '2015-08-11 15:17:12', 16, NULL),
(15, 16, 18, 'Panel 06 - MGL2003', 'Panel 06 - MGL2003', 'Panel 06 - MGL2003', 'Panel 06 - MGL2003 Panel 06 - MGL2003', 223.0000, 22.0000, 2.0000, 20.0000, 52.0000, '0', NULL, '2015-08-11 15:18:49', '2015-08-14 14:21:03', 17, NULL),
(16, 26, 18, 'Xperia™ Z3 Compact', 'Xperia™ Z3 Compact', 'Xperia Z3 Compact review\n“Awesome phone!!!!! The design, the feel, the function, everything is spot on :) i come from samsung galaxy, iphone5&6 and microsoft lumia and for me this is such a great little masterpiece. My wife has iphone6 and she asked can we swap phones, guess what i answered? No THANKS!! :D”', 'Sony´s powerful new Xperia Z3 Compact is a 4.6” mobile to give the iPhone 6 nightmares” Stuff.tv on Twitter, 4th September 2014', 203.0000, 32.0000, 230.0000, 201.0000, 520.0000, '0', NULL, '2015-08-11 15:21:02', '2015-08-11 15:21:02', 12, NULL),
(17, 26, 18, 'SmartWatch 3 SWR50', 'SmartWatch 3 SWR50', 'Powered by Android Wear\n\nUseful information when you need it\n\nAvailable colors', 'Powered by Android Wear', 65.0000, 523.0000, 23.0000, 23.0000, 985.0000, '0', NULL, '2015-08-11 15:22:47', '2015-08-16 17:20:51', 18, 'a:2:{i:0;a:8:{s:2:"id";s:0:"";s:4:"name";s:7:"field 1";s:5:"field";s:7:"field 1";s:7:"content";s:3:"326";s:4:"type";s:3:"int";s:7:"enabled";s:0:"";s:6:"length";i:12;s:11:"description";s:7:"field 1";}i:1;a:7:{s:2:"id";s:0:"";s:4:"name";s:7:"field 2";s:5:"field";s:7:"field 2";s:7:"content";s:4:"2663";s:4:"type";s:3:"int";s:7:"enabled";s:0:"";s:11:"description";s:7:"field 2";}}'),
(18, 26, 18, 'MDR-XB950BT/B', 'MDR-XB950BT-B', 'Highlights View Specifications\nBluetooth® audio streaming with AAC and apt-X® support1\nElectronic Bass Boost circuitry for added bass emphasis\nPassive mode for normal, corded operation without battery\nComfortable around-the-ear design\n40mm drivers for wide frequency response (3 - 28 kHz, with cord)', 'Extra Bass Bluetooth Headset', 60.0000, 320.0000, 320.0000, 222.0000, 90.0000, '0', NULL, '2015-08-11 15:24:50', '2015-08-14 17:33:19', 19, NULL),
(19, 27, 19, 'pavilion', 'hp pavilion', 'hp pavilion hp pavilion hp pavilion hp pavilion hp pavilion hp pavilion', 'hp pavilion hp pavilion hp pavilion', 323.0000, 2330.0000, 32.0000, 125.0000, 120.0000, '0', NULL, '2015-08-12 17:34:23', '2015-08-12 17:34:23', 14, NULL),
(20, 27, 18, '6032', 'hp 6032', 'hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032 hp 6032', 'hp 6032 hp 6032 hp 6032 hp 6032 hp 6032', 50.0000, 30.0000, 30.0000, 30.0000, 50.0000, '0', NULL, '2015-08-12 17:35:00', '2015-08-12 17:35:00', 14, NULL),
(21, 25, 18, '5s', 'dell inspiron 5s', 'dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s dell inspiron 5s', 'dell inspiron 5s dell inspiron 5s dell inspiron 5s', 203.0000, 232.0000, 22.0000, 220.0000, 620.0000, '0', NULL, '2015-08-12 17:36:00', '2015-08-13 13:57:39', 14, NULL),
(22, 25, 18, 'vostro', 'dell vostro pro', 'dell vostro pro dell vostro pro dell vostro pro dell vostro pro \ndell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro dell vostro pro', 'dell vostro pro dell vostro pro dell vostro pro dell vostro pro', 233.0000, 232.0000, 222.0000, 22.0000, 532.0000, '0', NULL, '2015-08-12 17:37:37', '2015-08-17 12:12:52', 14, NULL),
(23, 26, 18, 'X950B', 'KDL-42W800sony_B', 'Model Features: 4K Ultra HD1, Motionflow™ XR 960, media up-scaled to 4K quality1, 2, wireless HD streaming with built-in Wi-Fi®5, X-tended Dynamic Range PRO with 3x brightness range3, TRILUMINOS™ display, HDMI support for next gen 4K players and services4', '84.6” (diag) X950B Flagship 4K Ultra HD TV', 2152.0000, 215.0000, 2123.0000, 2115.0000, 190.0000, '0', NULL, '2015-08-12 19:07:35', '2015-08-14 18:16:11', 13, NULL),
(24, 26, 18, 'calc', 'Sony calculator', 'Sony calculator Sony calculator Sony calculator Sony calculator Sony calculator Sony calculator', 'Sony calculator Sony calculator', 22.0000, 23.0000, 25.0000, 62.0000, 230.0000, '0', NULL, '2015-08-13 14:00:35', '2015-08-13 14:00:35', 15, NULL),
(25, 26, 18, 'Sony X Headphones', 'Sony_X', 'Sony X Headphones Sony X Headphones Sony X Headphones Sony X Headphones Sony X Headphones Sony X Headphones Sony X Headphones Sony X Headphones', 'Sony X Headphones Sony X Headphones', 23.0000, 223.0000, 32.0000, 32.0000, 299.0000, '0', NULL, '2015-08-14 17:36:11', '2015-08-14 17:37:43', 19, NULL),
(26, 26, 18, 'Bluetooth Headset for PS3', 'Bluetooth Headset for PS3', 'Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3 Bluetooth Headset for PS3', 'Bluetooth Headset for PS3  Bluetooth Headset for PS3  Bluetooth Headset for PS3', 21.0000, 212.0000, 212.0000, 12.0000, 210.0000, '0', NULL, '2015-08-14 17:37:01', '2015-08-14 17:37:01', 19, NULL),
(27, 26, 18, 'Sony-PS3-Bluetooth', 'Sony-PS3-Bluetooth', 'Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset', 'Sony-PS3-Bluetooth-Headset Sony-PS3-Bluetooth-Headset', 62.0000, 62.0000, 62.0000, 62.0000, 250.0000, '0', NULL, '2015-08-14 17:40:15', '2015-08-14 17:40:15', 19, NULL),
(28, 15, 18, 'EO-IG900', 'EO-IG900', 'EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900', 'EO-IG900 EO-IG900 EO-IG900 EO-IG900 EO-IG900', 65.0000, 65.0000, 65.0000, 65.0000, 75.0000, '0', NULL, '2015-08-14 17:44:41', '2015-08-14 17:44:41', 19, NULL),
(29, 15, 18, 'Samsung Bluetooth', 'Samsung Bluetooth', 'Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung', 'Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung Bluetooth Samsung', 56.0000, 2.0000, 23.0000, 23.0000, 88.0000, '0', NULL, '2015-08-14 17:46:06', '2015-08-14 18:11:14', 19, NULL),
(30, 24, 18, 'Bluetooth', 'BH-222', 'Nokia Bluetooth Headset BH-222 - Handsfree music and calls.Nokia Bluetooth Headset BH-222 - Handsfree music and calls.', 'Nokia Bluetooth Headset BH-222 - Handsfree music and calls.', 22.0000, 22.0000, 22.0000, 22.0000, 150.0000, '0', NULL, '2015-08-14 17:48:21', '2015-08-14 17:48:21', 19, NULL),
(31, 24, 18, 'WH-510', 'WH-510', 'The Coloud Pop for Nokia headphones are a great fit for an on-the-go lifestyle. They fit right in your pocket, and the angled earpieces make it really comfy on your ears.The Coloud Pop for Nokia headphones are a great fit for an on-the-go lifestyle. They fit right in your pocket, and the angled earpieces make it really comfy on your ears.', 'The Coloud Pop for Nokia headphones are a great fit for an on-the-go lifestyle. They fit right in your pocket, and the angled earpieces make it really comfy on your ears.', 323.0000, 2323.0000, 32.0000, 32.0000, 132.0000, '0', NULL, '2015-08-14 17:49:41', '2015-08-14 17:52:55', 19, NULL),
(32, 16, 18, 'KW ND-Q250F7', 'KW ND-Q250F7', 'System Components\n36 Sharp ND-Q250F7 solar modules\nFronius IG Plus 10 solar grid-tie inverter\nProsolar Rooftrac mounting rails and clamps\nProsolar 1.5" Tile Trac or 3.0" Fastjacks\nMC interconnect cables\nGrounding lugs\nArray combiners in larger systems\nAC/DC solar disconnect\nSite specific electrical single and three line schematics\nAll wire sizing/type are specified in our electrical schematics\nCA stamped structural testing reports mounting system\nComponent installation manuals\nFriendly knowledgeable technical assistance', 'Sharp 9 KW ND-Q250F7 Black Frame Solar Panel System', 320.0000, 320.0000, 322.0000, 232.0000, 600.0000, '0', NULL, '2015-08-16 17:14:57', '2015-08-16 17:16:44', 17, 'a:4:{i:0;a:7:{s:2:"id";s:0:"";s:4:"name";s:11:"System Part";s:5:"field";s:11:"System_part";s:7:"content";s:21:"SES-ND-Q250F7-9-IG-10";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:100;}i:1;a:8:{s:2:"id";s:0:"";s:4:"name";s:12:"System Power";s:5:"field";s:12:"System Power";s:7:"content";s:4:"9 KW";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:100;s:11:"description";s:12:"System Power";}i:2;a:8:{s:2:"id";s:0:"";s:4:"name";s:17:"Watts per Sq./Ft.";s:5:"field";s:17:"Watts per Sq./Ft.";s:7:"content";s:5:"14.25";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:230;s:11:"description";s:17:"Watts per Sq./Ft.";}i:3;a:8:{s:2:"id";s:0:"";s:4:"name";s:16:"Panel PTC Rating";s:5:"field";s:16:"Panel PTC Rating";s:7:"content";s:5:"223.6";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:100;s:11:"description";s:33:"Panel PTC Rating	Panel PTC Rating";}}');

-- --------------------------------------------------------

--
-- Table structure for table `device_product`
--

CREATE TABLE IF NOT EXISTS `device_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `device_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `type` varchar(25) NOT NULL DEFAULT 'simple',
  `params` text,
  PRIMARY KEY (`id`),
  KEY `device_product` (`product_id`),
  KEY `product_device` (`device_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=148 ;

--
-- Dumping data for table `device_product`
--

INSERT INTO `device_product` (`id`, `device_id`, `product_id`, `type`, `params`) VALUES
(145, 6, 12, 'simple', NULL),
(146, 7, 13, 'simple', NULL),
(147, 21, 14, 'simple', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `field_field`
--

CREATE TABLE IF NOT EXISTS `field_field` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `field` varchar(25) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `description` text,
  `short_description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `product_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `field_field`
--

INSERT INTO `field_field` (`id`, `name`, `field`, `type`, `description`, `short_description`, `created_at`, `updated_at`, `enabled`, `product_id`) VALUES
(19, 'Memory', 'memory', 'varchar', 'reference', 'reference', '2015-08-16 00:00:00', '2015-08-16 00:00:00', 1, 14),
(20, 'Mass storage device', 'mass_storage_device', 'int', 'Mass storage device', 'Mass storage device', '2015-08-16 00:00:00', '2015-08-16 00:00:00', 0, 14);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `subject` text COLLATE utf8_unicode_ci,
  `body` text COLLATE utf8_unicode_ci,
  `draft` tinyint(4) NOT NULL,
  `is_sent` tinyint(4) NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `last_read_at` datetime DEFAULT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `body`, `draft`, `is_sent`, `is_read`, `created_at`, `updated_at`, `deleted_at`, `last_read_at`, `type`) VALUES
(4, 1, 3, 'test subject', ' body test message  body test message  body test message  body test message ', 0, 1, 0, '2015-08-16 00:00:00', '2015-08-16 00:00:00', '0000-00-00 00:00:00', '2015-08-17 00:00:00', '1'),
(5, 3, 1, ' subject 2 test message2  ', ' body test message2  body test message 2 body test message  body test message ', 0, 1, 0, '2015-08-17 00:00:00', '2015-08-17 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
(6, 1, 3, 'Le Lorem Ipsum .', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l''imprimerie depuis les années 1500, quand un peintre anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n''a pas fait que survivre cinq siècles, mais s''est aussi adapté à la bureautique informatique, sans que son contenu n''en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.', 0, 1, 1, '2015-08-17 00:00:00', '2015-08-17 00:00:00', NULL, NULL, '1'),
(7, 1, 2, 'subject 3', 'subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 subject 3 body 3 ', 0, 1, 1, '2015-08-17 00:00:00', '2015-08-17 00:00:00', '2015-08-17 00:00:00', '2015-08-17 00:00:00', '2');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1437819140),
('m130524_201442_init', 1437819142),
('m150816_115333_product_add_fields_field', 1439730540),
('m150816_152118_device_add_extra_fields_field', 1439738678);

-- --------------------------------------------------------

--
-- Table structure for table `product_product`
--

CREATE TABLE IF NOT EXISTS `product_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product` varchar(25) NOT NULL,
  `short_description` text NOT NULL,
  `description` text NOT NULL,
  `params` text,
  `name` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `extra_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'DC2Type:array',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `product_product`
--

INSERT INTO `product_product` (`id`, `product`, `short_description`, `description`, `params`, `name`, `created_at`, `updated_at`, `extra_fields`) VALUES
(12, 'Phone ', 'Phone Phone ', 'Phone Phone Phone Phone Phone Phone Phone Phone ', NULL, 'Phone', '2015-08-11 00:00:00', '2015-08-17 11:49:34', 'a:1:{i:0;a:7:{s:2:"id";s:0:"";s:4:"name";s:6:"memory";s:5:"field";s:6:"memory";s:7:"content";s:2:"60";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:50;}}'),
(13, 'TV', 'Proin non sagittis eros, id pharetra mauris. Vestibulum eu ante ut justo finibus feugiat vitae quis mi. Phasellus efficitur finibus nisl, ac laoreet velit volutpat non. Praesent et odio turpis. Duis vestibulum turpis lectus, in consequat turpis porttitor vitae. Phasellus sit amet elementum sem. Duis auctor justo nec lectus sodales auctor. Nunc eget sapien magna.', 'Proin non sagittis eros, id pharetra mauris. Vestibulum eu ante ut justo finibus feugiat vitae quis mi. Phasellus efficitur finibus nisl, ac laoreet velit volutpat non. Praesent et odio turpis. Duis vestibulum turpis lectus, in consequat turpis porttitor vitae. Phasellus sit amet elementum sem. Duis auctor justo nec lectus sodales auctor. Nunc eget sapien magna.\n\nProin non sagittis eros, id pharetra mauris. Vestibulum eu ante ut justo finibus feugiat vitae quis mi. Phasellus efficitur finibus nisl, ac laoreet velit volutpat non. Praesent et odio turpis. Duis vestibulum turpis lectus, in consequat turpis porttitor vitae. Phasellus sit amet elementum sem. Duis auctor justo nec lectus sodales auctor. Nunc eget sapien magna.', NULL, 'TV', '2015-08-11 00:00:00', '2015-08-11 15:05:56', NULL),
(14, 'Computer', 'Nullam at tortor elit. In ut consequat risus. Nulla porttitor cursus ligula ac pulvinar. Proin a quam nibh. Donec gravida tortor in ligula tristique, efficitur dignissim mauris varius. Mauris eu odio urna. Vestibulum lacinia, enim sed faucibus semper, justo libero fermentum lorem, a lacinia purus lectus et lacus. Ut dictum ultrices nunc a maximus. Morbi id justo sit amet purus vestibulum imperdiet sed eget tortor. Pellentesque velit velit, consectetur vitae condimentum bibendum, sollicitudin non purus.', 'Nullam at tortor elit. In ut consequat risus. Nulla porttitor cursus ligula ac pulvinar. Proin a quam nibh. Donec gravida tortor in ligula tristique, efficitur dignissim mauris varius. Mauris eu odio urna. Vestibulum lacinia, enim sed faucibus semper, justo libero fermentum lorem, a lacinia purus lectus et lacus. Ut dictum ultrices nunc a maximus. Morbi id justo sit amet purus vestibulum imperdiet sed eget tortor. Pellentesque velit velit, consectetur vitae condimentum bibendum, sollicitudin non purus.\n\nNullam at tortor elit. In ut consequat risus. Nulla porttitor cursus ligula ac pulvinar. Proin a quam nibh. Donec gravida tortor in ligula tristique, efficitur dignissim mauris varius. Mauris eu odio urna. Vestibulum lacinia, enim sed faucibus semper, justo libero fermentum lorem, a lacinia purus lectus et lacus. Ut dictum ultrices nunc a maximus. Morbi id justo sit amet purus vestibulum imperdiet sed eget tortor. Pellentesque velit velit, consectetur vitae condimentum bibendum, sollicitudin non purus.', NULL, 'Computer', '2015-08-11 11:59:53', '2015-08-13 13:57:39', NULL),
(15, 'calculator', 'quis maximus mauris ullamcorper. Sed feugiat, eros in pulvinar mollis, diam ligula dapibus ante, in mattis ipsum ipsum a lectus. Mauris viverra consequat eleifend.', 'quis maximus mauris ullamcorper. Sed feugiat, eros in pulvinar mollis, diam ligula dapibus ante, in mattis ipsum ipsum a lectus. Mauris viverra consequat eleifend.\n quis maximus mauris ullamcorper. Sed feugiat, eros in pulvinar mollis, diam ligula dapibus ante, in mattis ipsum ipsum a lectus. Mauris viverra consequat eleifend quis maximus mauris ullamcorper. Sed feugiat, eros in pulvinar mollis, diam ligula dapibus ante, in mattis ipsum ipsum a lectus. Mauris viverra consequat eleifend.', NULL, 'Calculator', '2015-08-11 14:51:33', '2015-08-14 13:42:10', NULL),
(16, 'Spot', 'Spot Spot Spot Spot', 'Spot Spot Spot SpotSpot Spot Spot SpotSpot Spot Spot SpotSpot Spot Spot Spot\nSpot Spot Spot SpotSpot Spot Spot SpotSpot Spot Spot Spot', NULL, 'Spot', '2015-08-11 15:15:17', '2015-08-11 15:15:17', NULL),
(17, 'panel', 'Panel', 'Panel panel panel', NULL, 'Panel', '2015-08-11 15:18:17', '2015-08-14 13:42:21', NULL),
(18, 'watch', 'Nullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,', 'Nullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,\nNullam tempor ultricies purus, et rhoncus ex varius varius. Etiam scelerisque ac eros ut faucibus. Vestibulum vitae ante quis ipsum tincidunt pretium. Suspendisse venenatis rutrum felis, ut hendrerit est porta quis. Aenean volutpat suscipit quam, in sollicitudin nibh imperdiet eget. Sed tincidunt, metus sit amet aliquet viverra, enim quam interdum nisl, vel gravida est nulla in magna. In fringilla ac metus pharetra lacinia. Morbi tempus metus magna, faucibus sodales nisi euismod non. Etiam in nulla venenatis,', NULL, 'Watch', '2015-08-11 15:21:42', '2015-08-16 16:31:37', 'a:5:{i:0;a:8:{s:2:"id";s:1:"1";s:4:"name";s:6:"Memory";s:5:"field";s:6:"memory";s:7:"content";s:3:"232";s:4:"type";s:4:"text";s:7:"enabled";b:1;s:6:"length";i:333;s:11:"description";s:4:"2662";}i:1;a:8:{s:2:"id";s:1:"2";s:4:"name";s:19:"Mass storage device";s:5:"field";s:19:"mass_storage_device";s:7:"content";s:2:"20";s:4:"type";s:3:"int";s:7:"enabled";b:1;s:6:"length";i:999;s:11:"description";s:8:"99999999";}i:2;a:8:{s:2:"id";s:0:"";s:4:"name";s:5:"ameur";s:5:"field";s:5:"ameur";s:7:"content";s:3:"655";s:4:"type";s:3:"int";s:7:"enabled";s:0:"";s:6:"length";i:95;s:11:"description";s:4:"amer";}i:3;a:8:{s:2:"id";s:0:"";s:4:"name";s:5:"color";s:5:"field";s:5:"color";s:7:"content";s:3:"red";s:4:"type";s:4:"text";s:7:"enabled";s:0:"";s:6:"length";i:120;s:11:"description";s:4:"adaz";}i:4;a:8:{s:2:"id";s:0:"";s:4:"name";s:3:"zer";s:5:"field";s:3:"zer";s:7:"content";s:5:"dfgdg";s:4:"type";s:3:"int";s:7:"enabled";s:0:"";s:6:"length";i:32;s:11:"description";s:17:"3232 zefzff sdfsd";}}'),
(19, 'Headset', 'Headset Headset Headset Headset', 'Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset Headset', NULL, 'Headset', '2015-08-11 15:23:48', '2015-08-11 15:23:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `activated_at` datetime DEFAULT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `activation_code` text COLLATE utf8_unicode_ci,
  `blocked` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `activated_at`, `first_name`, `last_name`, `last_login`, `activation_code`, `blocked`) VALUES
(1, 'tchernobyl', 'eyb8_MAxnjuSTO-RlJ50TRZ2c85JOfHZ', '$2y$13$RWdHh8cP6XeFnwc9Qb03C.hazu5dwqAAXd6vyO3fL69FBM8re90TC', NULL, 'ameur.hamdouni@gmail.com', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'hamdouni', 'ameur', '2015-08-17 13:27:38', 'h8cP6XeFnwc9Qb03C.hazu5dwq', 0),
(2, 'pw2', 'eyb8_MAxnjuSTO-RlJ50TRZ2c85JOfHZ', '$2y$13$RWdHh8cP6XeFnwc9Qb03C.hazu5dwqAAXd6vyO3fL69FBM8re90TC', NULL, 'pw2@gmail.com', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'pw2', 'tchar', '2015-08-17 13:27:38', 'h8cP6XeFnwc9Qb03C.hazu5dwq', 0),
(3, 'Omar', 'eyb8_MAxnjuSTO-RlJ50TRZ2c85JOfHZ', '$2y$13$RWdHh8cP6XeFnwc9Qb03C.hazu5dwqAAXd6vyO3fL69FBM8re90TC', NULL, 'omar@gmail.com', 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'daly', 'omar', '2015-08-17 13:27:38', 'h8cP6XeFnwc9Qb03C.hazu5dwq', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `brand_category`
--
ALTER TABLE `brand_category`
  ADD CONSTRAINT `brand_category` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `brand_product`
--
ALTER TABLE `brand_product`
  ADD CONSTRAINT `brand_product` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_category`
--
ALTER TABLE `category_category`
  ADD CONSTRAINT `category_category_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `category_category` (`id`);

--
-- Constraints for table `content_device`
--
ALTER TABLE `content_device`
  ADD CONSTRAINT `brand_id` FOREIGN KEY (`brand_id`) REFERENCES `brand_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_id` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `device_id` FOREIGN KEY (`device_id`) REFERENCES `device_device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `owner_id` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `device_device`
--
ALTER TABLE `device_device`
  ADD CONSTRAINT `device_brand_id` FOREIGN KEY (`device_brand_id`) REFERENCES `brand_brand` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `device_category_id` FOREIGN KEY (`device_category_id`) REFERENCES `category_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `device_product_id` FOREIGN KEY (`device_product_id`) REFERENCES `product_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `device_product`
--
ALTER TABLE `device_product`
  ADD CONSTRAINT `device_product` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_device` FOREIGN KEY (`device_id`) REFERENCES `device_device` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `field_field`
--
ALTER TABLE `field_field`
  ADD CONSTRAINT `field_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `receiver_id` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sender_id` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;