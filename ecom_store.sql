-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 05, 2020 at 06:03 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

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
(1, 'About Us - Our Story', '\r\n\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n\r\n', '<p>The Cake Carnival was the collective vision of a small group of weekday warriors. For years, we were frustrated by the lack of activewear designed for men and wanted something better. With that in mind, we set out to design premium apparel that is made for motion and engineered to endure. Advanced materials and state of the art technology are combined with heritage craftsmanship to create a new standard in activewear. Every product tells a story of premium performance, reminding its wearer to push themselves physically without having to sacrifice comfort and style. Beyond our product offering, Rhone is founded on principles of progress and integrity. Just as we aim to become better as a company, we invite men everywhere to raise the bar and join us as we move Forever Forward.</p>');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Rachit', 'admin@ave.com', '123', 'adminnnn.jfif', '8747854120', 'India', 'Front-End Developer', '   Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical   ');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bundle_product_relation`
--

INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
(8, 'jacket bundle relation -1', 4, 11),
(9, 'jacket bundle relation -2', 5, 11),
(10, 'jacket bundle relation -3', 6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Regular Cakes', 'no', 'rg1-strawberry-royal.jpg'),
(3, 'Kids Cakes', 'no', 'kid1-mini_mouse_theme_cake.jpg'),
(4, 'Others', 'yes', 'ac1-pink-heart-smallhamper.jpg'),
(5, 'Premium Cakes', 'yes', 'pkb1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

DROP TABLE IF EXISTS `contact_us`;
CREATE TABLE IF NOT EXISTS `contact_us` (
  `contact_id` int(10) NOT NULL AUTO_INCREMENT,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'nikhilgupta8822@gmail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');

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
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(3, 9, 'Cake coupun', '40', '333444 ', 5, 1);

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
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'user', 'user@ave.com', '123', 'India', 'Pune', '0092334566931', 'Pune', 'user.jpg', '::1', '');

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
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(16, 2, 207, 1715523401, 3, 'Small', '2017-02-20 08:21:42', 'pending'),
(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 08:21:42', 'pending'),
(18, 2, 300, 1715523401, 1, 'Medium', '2017-02-20 08:21:42', 'pending'),
(19, 2, 150, 1068059025, 1, 'Medium', '2017-02-20 08:26:47', 'pending'),
(20, 2, 288, 909940689, 3, 'Large', '2017-02-27 11:06:32', 'complete'),
(21, 2, 400, 909940689, 2, 'Meduim', '2017-02-27 11:06:37', 'complete'),
(22, 2, 300, 1898455304, 1, 'Small', '2020-09-26 05:49:54', 'pending'),
(23, 2, 400, 1630727718, 1, 'Small', '2020-09-27 06:19:10', 'pending'),
(24, 2, 200, 744853445, 1, 'Small', '2020-09-29 13:33:04', 'pending'),
(25, 2, 200, 634859701, 1, 'Small', '2020-09-29 14:08:16', 'pending'),
(26, 2, 200, 1339903337, 1, 'Small', '2020-09-29 14:17:02', 'pending'),
(27, 2, 400, 1695921141, 1, 'Small', '2020-10-03 14:40:37', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_types`
--

DROP TABLE IF EXISTS `enquiry_types`;
CREATE TABLE IF NOT EXISTS `enquiry_types` (
  `enquiry_id` int(10) NOT NULL AUTO_INCREMENT,
  `enquiry_title` varchar(255) NOT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_types`
--

INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
(1, 'Order and Delivery Support'),
(2, 'Technical Support'),
(3, 'Price Concern'),
(4, 'Defective Product');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'New Poona Bakery', 'no', 'manu1.png'),
(3, 'Kraks N Burns', 'no', 'manu2-kraks-and-bruns_1.png'),
(4, 'Monginis', 'no', 'manu3-monginis-logo.png'),
(5, 'Bakers Basket', 'no', 'manu4-bakers-basket_1.png'),
(6, 'Chocolate Biclate', 'yes', 'manu5-chocolate-biclate_1_.png');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(2, 1607603019, 447, 'UBL/Omni Paisa', 5678, 33, '11/1/2016'),
(3, 314788500, 345, 'UBL/Omni Paisa', 443, 865, '11/1/2016');

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

DROP TABLE IF EXISTS `pending_orders`;
CREATE TABLE IF NOT EXISTS `pending_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(16, 2, 1715523401, '2', 3, 'Small', 'pending'),
(17, 2, 1715523401, '9', 2, 'Large', 'pending'),
(18, 2, 1715523401, '11', 1, 'Medium', 'pending'),
(19, 2, 1068059025, '7', 1, 'Medium', 'pending'),
(20, 2, 909940689, '6', 3, 'Large', 'complete'),
(21, 2, 909940689, '11', 2, 'Meduim', 'complete'),
(22, 2, 1898455304, '11', 1, 'Small', 'pending'),
(23, 2, 1630727718, '9', 1, 'Small', 'pending'),
(24, 2, 1695921141, '9', 1, 'Small', 'pending');

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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL,
  `rateing` int(1) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`, `rateing`) VALUES
(1, 4, 5, 3, '2020-10-03 18:16:50', 'Dutch Truffle ', 'product-url-1', 'pkb2.jpg', 'pkb2.jpg', 'pkb2.jpg', 300, 250, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '\r\n\r\n\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/BxjtpdWeGtI\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n\r\n\r\n', 'Premium-Cake', 'Sale', 'product', 5),
(2, 4, 5, 5, '2020-10-03 15:05:00', 'Three Tier Cake', 'there-tier-cake', 'pc4-three_tier_cake.jpg', 'pc4-three_tier_cake.jpg', 'pc4-three_tier_cake.jpg', 10000, 8000, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '\r\n\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n\r\n', 'Premium-Cake', 'Gift', 'product', 3),
(3, 4, 5, 6, '2020-10-03 15:05:11', 'Barbie Doll Cake', 'product-url-3', 'pc5-barbie_doll_cake_1.jpg', 'pc5-barbie_doll_cake_1.jpg', 'pc5-barbie_doll_cake_1.jpg', 1600, 1000, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n', 'Premium-Cake', 'New', 'product', 3),
(4, 4, 2, 3, '2020-10-03 15:05:18', 'Pineapple Cake', 'product-url-4', 'rg2-pineapple-std.jpg', 'rg2-pineapple-std.jpg', 'rg2-pineapple-std.jpg', 230, 150, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n', 'Regular-Cake', 'Sale', 'product', 1),
(5, 4, 2, 4, '2020-10-03 15:05:24', 'Black Forest Cake', 'product-url-5', 'rc3-black-forest-std.jpg', 'rc3-black-forest-std.jpg', 'rc3-black-forest-std.jpg', 259, 100, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n', 'Regular-Cake', 'Gift', 'product', 5),
(6, 4, 3, 6, '2020-10-03 15:05:36', 'Angry Bird Cake', 'product-url-6', 'kc1.2012-09-17-20.26.jpg', 'kc1.2012-09-17-20.26.jpg', 'kc1.2012-09-17-20.26.jpg', 300, 250, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n', 'Kids-Cake', 'New', 'product', 5),
(7, 4, 3, 6, '2020-10-03 15:05:43', 'Mini-Mouse', 'product-url-7', 'kid1-mini_mouse_theme_cake.jpg', 'kid1-mini_mouse_theme_cake.jpg', 'kid1-mini_mouse_theme_cake.jpg', 200, 150, '<p>Video provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document. kingVideo provides a powerful way to help you prove your point. When you click Online Video, you can paste in the embed code for the video you want to add. You can also type a keyword to search online for the video that best fits your document</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n', 'Kids-Cake', 'Sale', 'product', 2),
(8, 4, 2, 2, '2020-10-03 15:05:53', 'Doreamon Photo Cake', 'product-url-8', 'photo1-5_22.jpg', 'photo1-5_22.jpg', 'photo1-5_22.jpg', 245, 100, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n', 'Photo-Cake', 'Gift', 'product', 4),
(9, 5, 2, 2, '2020-10-03 15:05:57', 'Car Photo Cake', 'product-url-9', 'car2-2_28.jpg', 'car2-2_28.jpg', 'car2-2_28.jpg', 400, 300, '<p>Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.Integer tristique dictum sapien et lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed imperdiet magna, at rhoncus arcu. Cras tincidunt felis eu vehicula consequat. Proin vel gravida quam. In tincidunt aliquam nisl. Sed velit erat, aliquam sit amet metus eget, molestie auctor nulla.</p>', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,</p>', '\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/qRswlmADRa8\" frameborder=\"0\" allowfullscreen></iframe>\r\n', 'T-Shirt', 'New', 'product', 3),
(11, 4, 5, 2, '2020-10-03 15:06:03', 'cake bundle', 'cake-bundle', 'pkb1.jpg', 'pkb2.jpg', 'pkb3.jpg', 300, 200, '<p><strong style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">Red velvet cake</strong><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">&nbsp;is traditionally a&nbsp;</span><strong style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">red</strong><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">,&nbsp;</span><strong style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">red</strong><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">-brown, crimson or scarlet-colored chocolate layer&nbsp;</span><strong style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">cake</strong><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">, layered with ermine icing. Traditional recipes do not use food coloring, with the&nbsp;</span><strong style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">red</strong><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">&nbsp;color due to non-Dutched, anthocyanin-rich cocoa. Common ingredients include buttermilk, butter, cocoa, vinegar, and flour.</span></p>', '<p><strong style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">Red velvet cake</strong><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">&nbsp;is traditionally a&nbsp;</span><strong style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">red</strong><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">,&nbsp;</span><strong style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">red</strong><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">-brown, crimson or scarlet-colored chocolate layer&nbsp;</span><strong style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">cake</strong><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">, layered with ermine icing. Traditional recipes do not use food coloring, with the&nbsp;</span><strong style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">red</strong><span style=\"color: #222222; font-family: arial, sans-serif; font-size: 16px;\">&nbsp;color due to non-Dutched, anthocyanin-rich cocoa. Common ingredients include buttermilk, butter, cocoa, vinegar, and flour.</span></p>', '\r\n\r\n\r\n\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/embed/vGE-RfP6KRE\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n\r\n\r\n\r\n', 'jacket bundle', 'Sale', 'bundle', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `p_cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL,
  PRIMARY KEY (`p_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Cakes', 'no', 'pkb1.jpg'),
(5, 'Pastery/Cupcake', 'no', 'pas1-choco-Truffle.jpg'),
(6, 'Accessories', 'no', 'ac1-pink-heart-smallhamper.jpg'),
(7, 'Snacks', 'yes', 'sn1_butterchickencroisant.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(10) NOT NULL AUTO_INCREMENT,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
(4, 'Pune Store', 'store1.jpg', '<p style=\"text-align: center;\"><strong>180-182 RECENTS STREET, PUNE, W1B 5BT</strong></p>\r\n<p><span style=\"color: #333333; font-family: Roboto;\">One of the key factors in The &lsquo;Organization Name&rsquo; Bakery&rsquo;s prosperity has been its ethos that cakes taste best when they&rsquo;ve been naturally heated utilizing the very same fixings and methods as those utilized in home preparing.</span></p>', 'View Map', 'https://g.page/thecakecarnival?share'),
(5, 'Mumbai Store', 'store2.jpg', '<p style=\"text-align: center;\"><strong>109 COLUMBUS CIRCLE, MUMBAI, MY10023</strong></p>\r\n<p><span style=\"color: #333333; font-family: Roboto;\">One of the key factors in The &lsquo;Organization Name&rsquo; Bakery&rsquo;s prosperity has been its ethos that cakes taste best when they&rsquo;ve been naturally heated utilizing the very same fixings and methods as those utilized in home preparing.&nbsp;</span><span style=\"font-family: Roboto; font-size: 10.5pt;\">Consequently, every single &lsquo;Organization Name&rsquo; Bakery branch has its own kitchen and a group of occupant master pastry specialists and cake decorators</span></p>', 'View Map', 'https://g.page/softezi?share'),
(6, 'Goa Store', 'store3.jpg', '<p style=\"text-align: center;\"><strong>2133 RUE SAINT-HONORE, 75001 GOA&nbsp;</strong></p>\r\n<p><span style=\"color: #333333; font-family: Roboto;\">One of the key factors in The &lsquo;Organization Name&rsquo; Bakery&rsquo;s prosperity has been its ethos that cakes taste best when they&rsquo;ve been naturally heated utilizing the very same fixings and methods as those utilized in home preparing.&nbsp;</span></p>', 'View Map', 'https://goo.gl/maps/Ss1QNpBi2xxKFMky8');

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

DROP TABLE IF EXISTS `terms`;
CREATE TABLE IF NOT EXISTS `terms` (
  `term_id` int(10) NOT NULL AUTO_INCREMENT,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
(3, 2, 11);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
