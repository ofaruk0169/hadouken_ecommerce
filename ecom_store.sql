-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 25, 2020 at 08:54 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE IF NOT EXISTS `about_us` (
  `about_id` int(10) NOT NULL AUTO_INCREMENT,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us', 'This website was partly inspired by my love for fighting games. I started playing fighting games with Street Fighter 4 and just enjoy the one on one experience they create. Predicting the opponents moves, learning combos and testing your skills against your friends. Fighting games are awesome.&nbsp;', '<p>As a result I decided to combine my two interests of fighting games and programming to create this cool ecommerce shop filled with clothing from various fighting game franchises. This website is primarily made with Php and Bootstrap. If you are reading this please employ me thanks :)&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(1, 'Omar Faruk', 'admin.ecom@gmail.com', 'admin123', 'about-img2.jpg', '1723795078', 'England', 'Web Developer', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');

-- --------------------------------------------------------

--
-- Table structure for table `boxes_section`
--

DROP TABLE IF EXISTS `boxes_section`;
CREATE TABLE IF NOT EXISTS `boxes_section` (
  `box_id` int(10) NOT NULL AUTO_INCREMENT,
  `box_title` varchar(100) NOT NULL,
  `box_desc` text NOT NULL,
  PRIMARY KEY (`box_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(1, 'WE LOVE OUR CUSTOMERS', 'Customers are at the forefront of what we do. If you would like to contact us about a certain FGC item you would like available do not hesitate to get in touch! '),
(2, 'BEST PRICES', 'We offer competitive prices with our bundles and sale items. Get value for your buck! Hadouken! '),
(3, '100% SATISFACTION  GUARANTEED', ' From official retailers so you know it\'s the best. ');

-- --------------------------------------------------------

--
-- Table structure for table `bundle_product_relation`
--

DROP TABLE IF EXISTS `bundle_product_relation`;
CREATE TABLE IF NOT EXISTS `bundle_product_relation` (
  `rel_id` int(10) NOT NULL AUTO_INCREMENT,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL,
  PRIMARY KEY (`rel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(1, 'Relation 1', 1, 15),
(2, 'Relation 2', 2, 15),
(3, 'Relation 3', 4, 15),
(4, 'Relation 4', 10, 15),
(5, 'Test Relation', 2, 1),
(6, 'Test Relation 2', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`, `product_price`, `size`) VALUES
(16, '::1', 1, '32', 'large');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(100) NOT NULL,
  `cat_top` varchar(100) NOT NULL,
  `cat_image` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, 'Men', 'Yes', 'image1.jpg'),
(2, 'Women', 'No', 'image2.jpg'),
(3, 'Kids', 'No', 'image3.jpg'),
(4, 'Others', 'No', 'image4.jpg'),
(5, 'Female', 'No', 'image5.jpg'),
(6, '3rd Gender', 'No', 'may.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `contact_id` int(10) NOT NULL AUTO_INCREMENT,
  `contact_email` varchar(100) NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'ofaruk0169@gmail.com', 'Contact Us ', 'If you have any questions, please feel free to <a href=\"http://localhost/ecommerce/contact.php\" target=\"_blank\">contact us</a>. Our customer service is working for you 24/7');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
CREATE TABLE IF NOT EXISTS `coupons` (
  `coupon_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(10) NOT NULL,
  `coupon_used` int(10) NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(1, 1, 'New T-Shirt Coupon Code', '20', 'NEWCOUPON1', 5, 0),
(2, 15, 'Test Coupon', '55', 'NEW55', 6, 2),
(3, 13, 'Dynamic Test Coupon', '70', 'LARAVEL70', 10, 1),
(4, 12, 'Test 1', '65', 'NEW65', 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_city` varchar(100) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(4, 'Shishir Sarder', 'shishir.srdr16@gmail.com', '123456', 'Bangladesh', 'Savar', '01723795078', 'RTH', 'mee.jpg', '::1', ''),
(5, 'Jarin Ritu', 'jarin.ritu@gmail.com', 'jarin123', 'Bangladesh', 'Dhaka', '01841795079', 'Fajilatunnessa Hall', 'ritu.jpg', '2', '54345367867'),
(7, 'Maruf Hossain', 'maruf@gmail.com', '12345', 'Bangladesh', 'Savar', '01723795045', 'RTH', 'sam.jpg', '::1', '24234365678'),
(8, 'Rimon Rana', 'rimon.rana@gmail.com', '123456', 'Bangladesh', 'Savar', '01723795078', 'RTH, 503', '61YDYbR5w2L._UX385_.jpg', '::1', '45787524575'),
(9, 'Manun Sarder', 'mamun.srdr@gmail.com', '1234567890', 'India', 'Kolkata', '10258225741', 'Koklata -2345', '119566765lblackgymlegoriginalimaeryjghpnfqeym1495278822.jpg', '::1', '24532453434'),
(12, 'Demo User', 'rimonmon10@gmail.com', '123456', 'Bangladesh', 'Savar', '01723795078', 'RTH, 503', '6420282559364.jpg', '::1', ''),
(13, 'omar', 'ofaruk0169@gmail.com', 'test123', 'England', 'mancheser', '07542616771', '169 waterton lane ', 'bd90ca03aefe831bcf009da1dd0c53ca--centenarian-aging-gracefully.jpg', '::1', '881936532');

-- --------------------------------------------------------

--
-- Table structure for table `customer_orders`
--

DROP TABLE IF EXISTS `customer_orders`;
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` varchar(100) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` varchar(100) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(1, 5, 68, 679423457, 2, 'medium', '2018-10-07 18:25:38', 'Complete'),
(2, 5, 12, 679423457, 1, 'large', '2018-10-07 14:24:28', 'pending'),
(3, 4, 24, 72826274, 2, 'medium', '2018-10-23 07:00:46', 'pending'),
(4, 4, 240, 72826274, 2, 'small', '2018-10-23 07:00:47', 'pending'),
(5, 4, 100, 72826274, 1, 'medium', '2018-10-23 07:00:47', 'pending'),
(6, 4, 50, 72826274, 1, 'medium', '2018-10-23 07:00:47', 'pending'),
(7, 4, 75, 72826274, 1, 'small', '2018-10-23 07:00:48', 'pending'),
(8, 4, 70, 1039424096, 1, 'large', '2018-10-23 14:23:36', 'pending'),
(9, 4, 90, 1178884563, 1, 'small', '2018-10-25 17:09:31', 'Complete'),
(10, 4, 10, 795767235, 1, 'medium', '2018-10-25 17:16:08', 'Complete'),
(11, 4, 34, 795767235, 1, 'large', '2018-10-25 17:16:08', 'Complete'),
(12, 13, 3, 1104157469, 1, 'medium', '2020-03-02 13:26:13', 'Complete'),
(13, 13, 32, 1222316392, 1, 'medium', '2020-03-05 14:21:40', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_type`
--

DROP TABLE IF EXISTS `enquiry_type`;
CREATE TABLE IF NOT EXISTS `enquiry_type` (
  `enquiry_id` int(10) NOT NULL AUTO_INCREMENT,
  `enquiry_title` varchar(100) NOT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_type`
--

INSERT INTO `enquiry_type` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order Support'),
(2, 'Technical Supports'),
(3, 'Price Concern'),
(4, 'Delivery Problems');

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

DROP TABLE IF EXISTS `icons`;
CREATE TABLE IF NOT EXISTS `icons` (
  `icon_id` int(10) NOT NULL AUTO_INCREMENT,
  `icon_product` int(10) NOT NULL,
  `icon_title` varchar(255) NOT NULL,
  `icon_image` varchar(255) NOT NULL,
  PRIMARY KEY (`icon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`icon_id`, `icon_product`, `icon_title`, `icon_image`) VALUES
(1, 15, 'Icon 1', 'icon1.png'),
(2, 14, 'Icon 2', 'icon2.png'),
(3, 13, 'Icon 3', 'icon3.png'),
(4, 12, 'Icon 4', 'icon4.png'),
(5, 1, 'New Icon', '-_SEO_-_Webmarketing_-_Code_-_Developer_-_Web_-_Development-512.png'),
(7, 13, 'New Icon', '-_SEO_-_Webmarketing_-_Code_-_Developer_-_Web_-_Development-512.png');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT,
  `manufacturer_title` varchar(100) NOT NULL,
  `manufacturer_top` varchar(100) NOT NULL,
  `manufacturer_image` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'Capcom', 'Yes', 'e4eb0d78fe6a4713b5ac5ec79b705247.jpeg'),
(2, 'Bandai', 'Yes', 'bandai.jpg'),
(3, 'WB Media', 'No', 'wb.jpg'),
(4, 'Joy Peg', 'Yes', 'image4.jpg'),
(5, 'Kane Blende', 'No', 'image5.jpg'),
(6, 'S.M Group', 'Yes', '-_SEO_-_Webmarketing_-_Code_-_Developer_-_Web_-_Development-512.png');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(3, 358702546, 120, 'UBL/Omni Paisa', 32423423, 3432535, '2018-10-02'),
(4, 358702546, 248, 'Bank Code', 12345, 32145656, '2018-10-03'),
(6, 1998298965, 98, 'Bank Code', 4345654, 4564567, '2018-10-08'),
(7, 624563821, 100, 'Uestern Union', 4235325, 43534646, '2018-10-05'),
(8, 1862962682, 300, 'Bank Code', 2147483647, 3423424, '2018-10-07'),
(9, 1650288053, 360, 'Bank Code', 646554, 0, '2018-10-11'),
(10, 696263413, 100, 'Uestern Union', 21234325, 0, '2018-10-16'),
(11, 679423457, 68, 'Bank Code', 324235435, 2535345, '2018-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

DROP TABLE IF EXISTS `pending_orders`;
CREATE TABLE IF NOT EXISTS `pending_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `product_id` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(1, 5, 679423457, 4, 2, 'medium', 'Complete'),
(2, 5, 679423457, 10, 1, 'large', 'pending'),
(3, 4, 72826274, 10, 2, 'medium', 'pending'),
(4, 4, 72826274, 13, 2, 'small', 'pending'),
(5, 4, 72826274, 12, 1, 'medium', 'pending'),
(6, 4, 72826274, 14, 1, 'medium', 'pending'),
(7, 4, 72826274, 15, 1, 'small', 'pending'),
(8, 4, 1039424096, 11, 1, 'large', 'pending'),
(9, 4, 1178884563, 13, 1, 'small', 'Complete'),
(10, 4, 795767235, 10, 1, 'medium', 'Complete'),
(11, 4, 795767235, 4, 1, 'large', 'Complete'),
(12, 13, 1104157469, 16, 1, 'medium', 'Complete'),
(13, 13, 1222316392, 16, 1, 'medium', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` varchar(255) NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` varchar(100) NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `add_date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(1, 5, 2, 2, '2020-03-02 12:47:57', 'MARVEL Black Kids POLO T-Shirt', 'product_url1', 'maska.jpg', 'maska.jpg', 'maska.jpg', 56, 45, '<p><span style=\"color: #333333; font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">With supporting text below as a natural lead-in to additional content. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus neque nisi cupiditate, eligendi molestias corporis nihil ipsa distinctio in repellendus!</span></p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/kEDreWE7YrM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'T-Shirts', 'Sale', 'product'),
(2, 4, 1, 1, '2020-03-04 22:27:37', 'Akuma Immortal 10 Hoody ', 'product_url2', 'akkkuma.jpg', 'akuma.jpg', 'akumaaa.jpg', 100, 50, 'Strike the raging demon with this cool hoody&nbsp;', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/K3UUw3DByhc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Hoody', 'Gift', 'product'),
(4, 5, 2, 3, '2020-03-02 12:49:41', 'Joker Cartoon Parody Shirt ', 'product_url3', '6388488_1.jpg', '6388488_1.jpg', '6388488_1.jpg', 34, 10, '<p><strong style=\"margin: 0px; padding: 0px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Lorem Ipsum</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Â is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p><strong style=\"margin: 0px; padding: 0px; color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial;\">Lorem Ipsum</strong><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Â is\r\n simply dummy text of the printing and typesetting industry. Lorem Ipsum\r\n has been the industry\'s standard dummy text ever since the 1500s, when \r\nan unknown printer took a galley of type and scrambled it to make a type\r\n specimen book.</span></p><p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"><b>Quality :</b></span></p><ul><li><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Best Kapor</span></li><li><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Low Price</span></li><li><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Easy to Wash<br><b></b><br></span></li></ul><p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\"></span></p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. </p><p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p><p><br></p><ul><li>LIst 1</li><li>List 2</li><li>List 3</li><li>List 4<br></li></ul>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/CxI0uf0AS7M\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'shirt', 'Sale', 'product'),
(10, 1, 1, 1, '2020-03-02 12:39:13', 'Akuma Jacket Bait', 'product_url4', 'aaaaaaaaaaaaa.jpg', 'akum.jpg', 'akummma.jpg', 30, 26, '<p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Lorem Ipsum</strong><span style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; float: none; display: inline !important;\">Â is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1rem; color: rgb(0, 0, 0); font-family: Roboto, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial;\"><strong style=\"box-sizing: border-box; font-weight: bolder; margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial;\">Lorem Ipsum</strong><span style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: \"Open Sans\", Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; float: none; display: inline !important;\">Â is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</span></p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. </p><p>Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. </p>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9Xv5M7Gwt4o\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Jackets', 'Sale', 'product'),
(11, 3, 4, 3, '2020-03-02 12:31:03', 'MK 11 Accessory Pack ', 'product_url5', 'mk.jpg', '674396_9.jpg', 'mask.jpg', 98, 70, '<p>Get over here</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/xSPMCAa09lE\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'MK11, mortal, kombat, fighting, game', 'Gift', 'bundle'),
(12, 2, 2, 1, '2020-03-04 22:28:38', 'Chun Li Cosplay ', 'product_url6', 'chun.jpg', 'cccc.jfif', 'chun-li-juliana-lopez.jpg', 100, 39, '<p>Cosplay for the Street Fighter character Chun Li&nbsp;</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rO4Nu92KxNU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'Chun Li', 'New', 'bundle'),
(13, 1, 4, 2, '2020-03-02 13:55:55', 'Goku jacket', 'product_url7', 'Dragon_Ball_Goku_Mandarin_Collar_Orange_Autumn_Baseball_Varsity_Jacket_1024x1024.jpg', 'dragon-ball-z-goku-jacket-800x800.jpg', 'Dragon-Ball-Z-Jacket.jpg', 120, 90, '<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/rO4Nu92KxNU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'dbz', 'Sale', 'product'),
(14, 3, 1, 2, '2020-03-02 03:43:40', 'DBZF Shenron Pack ', 'product_url8', 'dbz.jpg', 'balls.jpg', 'shenron.jpg', 120, 39, '<p>Lorem Ipsum<span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Â is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </span></p>\r\n<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GDYJO-1IhN8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'game, shenron, dragon, ball, fighterz, fighter ', 'Gift', 'bundle'),
(15, 5, 6, 1, '2020-03-02 03:20:48', 'Limited Edition Combo Pack ', 'product_url9', 'shirthadou.jpg', 'street-fighter-arcade-sticks.original.jpg', 'figure.jpg', 75, 60, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. </span></p>\r\n<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like</span></p>', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. ', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/LQpW-garsfc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'figure', 'Bundle', 'bundle'),
(16, 1, 1, 1, '2020-03-02 03:32:36', 'Street Fighter II Bundle', 'gdggfgfgf', 'hoody.jpg', '71nzf9iJMtL._SY355_.jpg', 'streetfighter_cableguy_2.jpg', 32, 23, '33333', '3333', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/t5DYrdMQ_Rc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'hats, ryu, street, fighter ', 'New', 'bundle');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `p_cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_title` varchar(100) NOT NULL,
  `p_cat_top` varchar(100) NOT NULL,
  `p_cat_image` text NOT NULL,
  PRIMARY KEY (`p_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, 'Jackets', 'Yes', '666823-01-2.jpg'),
(2, 'Accessories', 'No', 'image2.jpg'),
(3, 'Video Games', 'No', 'xbox-one-microsoft.jpg'),
(4, 'Hoodys', 'No', 'download.jfif'),
(5, 'T-Shirts', 'Yes', 'image5.jpg'),
(6, 'Shoes', 'Yes', '91bQYhS1yQL._AC_UX500_.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `service_id` int(10) NOT NULL AUTO_INCREMENT,
  `service_title` varchar(255) NOT NULL,
  `service_image` varchar(255) NOT NULL,
  `service_desc` text NOT NULL,
  `service_button` varchar(255) NOT NULL,
  `service_url` varchar(255) NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_title`, `service_image`, `service_desc`, `service_button`, `service_url`) VALUES
(1, 'Gift Package', 'download.jfif', '<p>Send your package to your friends direct! We have a great selection of gifts for you to choose from, we package them in a unque box that any fighting game fan will be over the moon to recieve.Â </p>', 'Contact for Details', 'contact.php'),
(2, 'App coming soon', 'service2.jpg', '<p>Soon you will be able to view and shop for our products with our new app! This app is currently being built for Android, but OS support will be available in the near future. We aim to connect our products to anyone regardless of platform. We look forward to seeing you again soon.Â </p>', 'Contact for Details &amp; Rates', 'contact.php'),
(7, 'Stay subscribed for new coupon codes!', 'Coupons.jpg', '<p>Who doesn\'t like free stuff right? Well you are not going to get it here, but if you stay up to date withÂ  us and get the latest news you could see a sneaky coupon enter your emails soon. Stay subscribed!Â </p>', 'Contact for More', 'contact.php');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slide_id` int(10) NOT NULL AUTO_INCREMENT,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_title` varchar(255) NOT NULL,
  `slide_text` varchar(255) NOT NULL,
  `slide_url` varchar(255) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_title`, `slide_text`, `slide_url`) VALUES
(1, 'Welcome to Hadouken!', 'slide1.jpg', 'Official Merch', 'Love fighting games!', 'https://www.youtube.com/watch?v=JzS96auqau0'),
(3, 'Slide Name 3', 'slide22.jpg', 'All Franchises!', 'Tekken, SFV and more!', 'https://www.youtube.com/watch?v=2nGTZrPWBt8'),
(16, 'Slide 4', 'slide3.jpg', 'Order online!', 'We accept PayPal ', 'https://www.youtube.com/watch?v=lrMT_x5WGRQ&feature=youtu.be'),
(17, 'Slide Number 5', '2019-05-11_Ponyo_B.jpg', 'Join the gang', 'We love our fans', 'https://www.youtube.com/watch?v=t5DYrdMQ_Rc&t=22s');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
CREATE TABLE IF NOT EXISTS `terms` (
  `term_id` int(10) NOT NULL AUTO_INCREMENT,
  `term_title` varchar(150) NOT NULL,
  `term_link` varchar(255) NOT NULL,
  `term_desc` text NOT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Terms & Conditions', 'Link1', '<blockquote class=\"templatequote\" style=\"overflow: hidden; margin: 1em 0px; padding: 0px 40px; color: #222222; font-family: sans-serif;\">\r\n<p style=\"margin: 0.5em 0px;\">Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui do<u>lorem ipsum</u>, quia&nbsp;<u>dolor sit amet consectetur adipisci[ng]</u>v<u>elit, sed</u>&nbsp;quia non-numquam&nbsp;<u>[do] eius mod</u>i&nbsp;<u>tempor</u>a&nbsp;<u>inci[di]dunt, ut labore et dolore magna</u>m&nbsp;<u>aliqua</u>m quaerat voluptatem.&nbsp;<u>Ut enim ad minim</u>a&nbsp;<u>veniam, quis nostru</u>m<u>[d] exercitation</u>em&nbsp;<u>ullam co</u>rporis suscipit<u>labori</u>o<u>s</u>am,&nbsp;<u>nisi ut aliquid ex ea commod</u>i&nbsp;<u>consequat</u>ur?&nbsp;<u>Quis aute</u>m vel eum&nbsp;<u>iure reprehenderit,</u>&nbsp;qui&nbsp;<u>in</u>ea&nbsp;<u>voluptate velit esse</u>, quam nihil molestiae&nbsp;<u>c</u>onsequatur, vel&nbsp;<u>illum</u>, qui&nbsp;<u>dolore</u>m&nbsp;<u>eu</u>m&nbsp;<u>fugiat</u>, quo voluptas&nbsp;<u>nulla pariatur</u>?&nbsp;[33] At vero eos et accusamus et iusto odio dignissimos ducimus, qui blanditiis praesentium voluptatum deleniti atque corrupti, quos dolores et quas molestias&nbsp;<u>exceptur</u>i&nbsp;<u>sint, obcaecat</u>i&nbsp;<u>cupiditat</u>e&nbsp;<u>non-pro</u>v<u>ident</u>, similique&nbsp;<u>sunt in culpa</u>,&nbsp;<u>qui officia deserunt mollit</u>ia&nbsp;<u>anim</u>i,&nbsp;<u>id est laborum</u>&nbsp;et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non-recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat&hellip;</p>\r\n</blockquote>\r\n<p style=\"margin: 0.5em 0px; color: #222222; font-family: sans-serif;\">This is H. Rackham\'s translation as printed in the Loeb Classical Library edition with underlining added for the translation of the text found in the example of the&nbsp;<em>Lorem ipsum</em><sup id=\"cite_ref-cicero_archive_org_2-1\" class=\"reference\" style=\"line-height: 1; unicode-bidi: isolate; white-space: nowrap; font-size: 11.2px;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#cite_note-cicero_archive_org-2\">[2]</a></sup>:</p>\r\n<blockquote class=\"templatequote\" style=\"overflow: hidden; margin: 1em 0px; padding: 0px 40px; color: #222222; font-family: sans-serif;\">\r\n<p style=\"margin: 0.5em 0px;\">[32] But I must explain to you how all this mistaken idea of denouncing of a pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who&nbsp;<u>loves or pursues or desires to obtain pain of itself, because it is pain, but</u>&nbsp;occasionally&nbsp;<u>circumstances occur in which toil and pain can procure him some great</u>&nbsp;pleasure.&nbsp;<u>To take a trivial example, which of us ever</u>&nbsp;undertakes&nbsp;<u>laborious physical exercise, except to obtain some advantage from it? But who</u>&nbsp;has any right to&nbsp;<u>find fault</u>&nbsp;with a man who&nbsp;<u>chooses to enjoy a pleasure</u>&nbsp;that has no annoying consequences, or&nbsp;<u>one</u>&nbsp;who&nbsp;<u>avoids a pain</u>&nbsp;that&nbsp;<u>produces no</u>&nbsp;resultant pleasure? [33] On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so&nbsp;<u>blinded by desire, that they cannot foresee</u>&nbsp;the pain and trouble that are bound to ensue; and equal&nbsp;<u>blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil</u>&nbsp;and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammeled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse.</p>\r\n</blockquote>'),
(2, 'Refund Policy', 'Link2', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, corporis ad inventore ullam amet. Hic, nobis enim quaerat perspiciatis temporibus quia commodi, doloremque neque corrupti dolore facilis quo veritatis, laboriosam in voluptatibus illo! Sapiente, sit, minima? Debitis odio nisi at optio incidunt ex, esse nam, dignissimos non modi temporibus beatae, velit libero aliquam totam nemo est tempore quod. Ab saepe, molestiae mollitia non quisquam.</p>\r\n<p>Ut saepe facilis sunt tenetur rerum nihil exercitationem deleniti dignissimos est odit, neque iste unde aliquam minima minus maiores quam alias pariatur id mollitia quas quisquam. Laudantium animi praesentium repellendus officia a repudiandae et quaerat libero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, corporis ad inventore ullam amet. Hic, nobis enim quaerat perspiciatis temporibus quia commodi, doloremque neque corrupti dolore facilis quo veritatis, laboriosam in voluptatibus illo! Sapiente, sit, minima? Debitis odio nisi at optio incidunt ex, esse nam, dignissimos non modi temporibus beatae, velit libero aliquam totam nemo est tempore quod.</p>\r\n<p>Ab saepe, molestiae mollitia non quisquam. Ut saepe facilis sunt tenetur rerum nihil exercitationem deleniti dignissimos est odit, neque iste unde aliquam minima minus maiores quam alias pariatur id mollitia quas quisquam. Laudantium animi praesentium repellendus officia a repudiandae et quaerat libero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, corporis ad inventore ullam amet. Hic, nobis enim quaerat perspiciatis temporibus quia commodi, doloremque neque corrupti dolore facilis quo veritatis, laboriosam in voluptatibus illo! Sapiente, sit, minima?</p>\r\n<p>Debitis odio nisi at optio incidunt ex, esse nam, dignissimos non modi temporibus beatae, velit libero aliquam totam nemo est tempore quod. Ab saepe, molestiae mollitia non quisquam. Ut saepe facilis sunt tenetur rerum nihil exercitationem deleniti dignissimos est odit, neque iste unde aliquam minima minus maiores quam alias pariatur id mollitia quas quisquam. Laudantium animi praesentium repellendus officia a repudiandae et quaerat libero. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus, corporis ad inventore ullam amet.</p>\r\n<p>Hic, nobis enim quaerat perspiciatis temporibus quia commodi, doloremque neque corrupti dolore facilis quo veritatis, laboriosam in voluptatibus illo! Sapiente, sit, minima? Debitis odio nisi at optio incidunt ex, esse nam, dignissimos non modi temporibus beatae, velit libero aliquam totam nemo est tempore quod. Ab saepe, molestiae mollitia non quisquam. Ut saepe facilis sunt tenetur rerum nihil exercitationem deleniti dignissimos est odit, neque iste unde aliquam minima minus maiores quam alias pariatur id mollitia quas quisquam. Laudantium animi praesentium repellendus officia a repudiandae et quaerat libero.</p>'),
(3, 'Pricing & Promotions Policy', 'Link3', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati! Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n<p>Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati! Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati!</p>\r\n<p>Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati!</p>\r\n<p>Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati! Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis. Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>\r\n<p>Quae nulla nostrum consequatur exercitationem eaque nam quibusdam laborum officiis quis laboriosam, hic libero dolor fugiat facere porro architecto impedit debitis possimus dicta aperiam obcaecati! Fuga odio vel quia molestias, officia? Iste explicabo adipisci maiores ex quae quidem ullam repellendus repellat quis.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  PRIMARY KEY (`wishlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(3, 4, 13),
(4, 13, 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
