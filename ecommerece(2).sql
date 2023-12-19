-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 26, 2020 at 07:40 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ecommerece`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE IF NOT EXISTS `admin_info` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=170 ;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(6, 26, '::1', 4, 1),
(9, 10, '::1', 7, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(46, 2, '::1', 3, 0),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(57, 2, '::1', 9, 1),
(159, 10, '127.0.0.1', 12, 1),
(161, 19, '127.0.0.1', 0, 1),
(163, 72, '127.0.0.1', 0, 1),
(168, 1, '127.0.0.1', 41, 1),
(169, 1, '127.0.0.1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Dogs'),
(2, 'Cats'),
(3, 'Birds'),
(4, 'Foods'),
(5, 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE IF NOT EXISTS `orders_info` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pin` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `pin`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(2, 31, 'Sree kanth', 'sree@gmail.com', 'Kollam', 'qwerty', 'kerala', 654324, 'kjdkjo', '1554988798798526', '12/22', 1, 15000, 123),
(5, 34, 'Don David', 'don@gmail.com', 'fs ahg bsdfg r', 'ae btrth se', 'fvewf re f', 564641, 'Don', '6435 5465 6085 3685', '12/23', 5, 88000, 558),
(6, 35, 'Sheela Raju', 'sheelaraju760@gmail.com', 'Padinjarekadvil cherumoodu', 'Kollam', 'Kerala', 691511, 'Sheela j', '4555 6458 2555 5222', '12/23', 1, 2500, 525),
(7, 40, 'akhil p', 'ak@gmail.com', 'akb bavan', 'klm', 'Kerala', 691111, 'akhil', '1233445555555555', '11/22', 1, 15000, 3333);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE IF NOT EXISTS `order_products` (
  `order_pro_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL,
  `orderdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_pro_id`),
  KEY `order_products` (`order_id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`, `orderdate`) VALUES
(113, 5, 1, 1, 15000, '2020-11-15 10:18:40'),
(114, 5, 3, 2, 60000, '2020-11-15 10:18:40'),
(115, 5, 11, 1, 20000, '2020-11-15 10:18:40'),
(116, 5, 13, 1, 10000, '2020-11-15 10:18:40'),
(117, 5, 26, 1, 13000, '2020-11-15 10:18:40'),
(119, 7, 1, 1, 15000, '2020-11-16 03:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=95 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 'Labrador Retriever', 15000, 'The Lab is a medium large breed of retriever-gun dog\r\nAge:6 months\r\nColor:brown', 'd1.jpeg', 'Dog'),
(3, 1, 'Pomeranian', 30000, 'The Pomeranian is a breed of dog of the Spitz type<br>Age:6 months<br>Color:white,brown,orange', 'd2.jpg', 'Dog'),
(5, 1, 'Golden Retriever', 10000, 'The Golden Retriever is a medium-large gun dog\r\nAge:4months\r\nColor:Cream,Golden', 'd4.jpg', 'Dogs'),
(8, 1, 'German Shepherd', 40000, 'The German Shepherd is a breed of medium to large-sized working dog\r\nAge:3months\r\nColor: Black, Black & Tan, Sable, Red & Black', 'd5.jpg', 'Dogs'),
(9, 1, 'Bulldog', 10000, 'The Bulldogis a medium-sized dog breed. It is a muscular.\r\nAge:4months\r\ncolor:White, Fawn, Piebald, Fawn & White', 'd6.jpg', 'Dogs'),
(10, 5, 'Cage for cats', 15000, 'Wooden cage', 'c8.jpg', 'cage'),
(11, 2, 'Persian cat', 20000, 'The Persian cat is a long-haired breed of cat characterized by its round face and short muzzle.\r\nAge:3months\r\nColor:silver,blue,slver,brown,cream', 'ca1.jpg', 'Cats'),
(13, 2, 'British Shorthair', 10000, 'The British Shorthair is the pedigreed version of the traditional British domestic cat\r\nAge:2months\r\nColor:grey-blue\r\n', 'ca2.jpg', 'Cats'),
(14, 1, 'American Bully', 45000, 'The American Bully is a recently formed companion dog breed\r\nAge:4months\r\nColor:All colors', 'd8.jpg', 'Dogs'),
(15, 5, 'Cage for Birds ', 2000, 'Steel cage', 'c10.jpg', 'cage'),
(16, 5, 'Cage for Birds', 5000, 'Advance steel', 'c12.jpg', 'Cage'),
(17, 2, 'Siamese cat', 10000, 'Siamese cat is one of the first distinctly recognized breeds of Asian cat\r\nAge:6months\r\nColor:Chocolate, Seal, Lilac, Blue', 'ca3.jpg', 'Cats'),
(19, 3, 'Budgerigar', 3000, 'The budgerigar is a long-tailed, seed-eating parrot usually nicknamed the budgie\r\nAge:2weeks\r\nColor:green,yellow,blue,white', 'b3.jpg', 'Birds'),
(20, 5, 'Cage for bird', 4500, 'Steel cage', 'c11.jpg', 'cage'),
(21, 3, 'Caique', 1000, 'The caiques are species of parrots in the genus Pionites\r\nAge:2weeks\r\nColor:black, green, yellow, orange', 'b4.jpg', 'Birds'),
(22, 2, 'Ragdoll', 15000, 'The Ragdoll is alarge and muscular semi-longhair cats \r\nAge:4months\r\nColor:silky', 'ca4.jpg', 'Cats'),
(24, 2, 'Scottish Fold', 700, 'The Scottish Fold is a breed of domestic cat with a natural dominant-gene mutation that affects cartilage throughout the body\r\nAge:2months\r\nColor:tabby,hite', 'ca7.jpg', 'Cats'),
(25, 3, 'Domestic canary', 1000, 'The domestic canary is a domesticated form of the wild canary, a small songbird\r\nAge:1weeks\r\nColor:light yellow, deep yellow, white, green, blue', 'b5.jpg', 'Birds'),
(26, 2, 'Russian Blue', 13000, 'he Russian Blue is a cat breed that comes in colors varying from a light shimmering silver to a darker\r\nAge:3months\r\nColor:Dark gray tipped with silver', 'ca5.jpg', 'Cats'),
(27, 4, 'Birds Food', 690, 'Hartz Parakeet, Canary, Finch Small Bird Food -4Lb', 'f7.jpg', 'Birds'),
(28, 2, 'Munchkin cat', 15000, 'The Munchkin cat is a newer breed of cat characterized by its very short legs\r\nAge:2months\r\nColor:All color', 'ca6.jpg', 'Cats'),
(29, 2, 'Himalayan Cat', 7000, 'The Himalayan, is a breed or sub-breed of long-haired cat similar in type to the Persian\r\nAge:1month\r\nColor:Cream,chocolate', 'ca9.png', 'Cats'),
(30, 5, 'Cage for bird', 3000, 'Steel cage', 'c9.jpg', 'cage'),
(31, 2, 'Siberian cat', 12000, 'The Siberian is a centuries-old landrace of domestic cat\r\nAge:2months\r\nColor:Black,white,grey', 'ca8.jpg', 'Cats'),
(33, 5, 'Dog cage', 3500, 'Steel cage ', 'c3.jpg', 'cage'),
(34, 5, 'Dog cage', 1000, 'Fully closed cage\r\nUsed for transpotation', 'c4.jpg', 'Cage'),
(35, 5, 'Cage for cats', 10000, 'Build for more cats', 'c5.jpg', 'cage'),
(36, 5, 'Cage for cats', 9000, 'Big cage for cats', 'c6.jpg', 'cage'),
(39, 5, 'Cat cage', 2500, 'Transportable', 'c7.jpg', 'cage'),
(58, 3, 'Grey parrot', 5000, 'Grey parrotis an Old World parrot in the family Psittacidae\r\nAge:1week\r\nColor:grey', 'b1.jpg', 'Birds'),
(59, 3, 'Amazon parrot', 6000, 'Amazon parrot are medium-sized parrots\r\nAge:2weeks\r\nColor:green', 'b2.jpg', 'Birds'),
(60, 3, 'Pigeon', 500, 'Pigeon are found in every part of the world; the exception being the Antarctic\r\nAge:2weeks\r\nColor:All Colors', 'b6.jpg', 'Birds'),
(61, 3, 'Eclectus parrot', 2000, 'The eclectus parrot is a parrot native to the Solomon Islands\r\nAge:2weeks\r\nColor:Green,Blue,Red', 'b7.jpg', 'Birds'),
(62, 3, 'Finch', 500, 'Finches are small to medium-sized passerine birds in the family Fringillidae.\r\nAge:1week\r\nColor:blue,yellow,silver', 'b8.jpg', 'Birds'),
(63, 4, 'Dog Food', 550, 'Purina Dog Chow Little Bites Small Breed Dog Food', 'f2.png', 'Dogs'),
(64, 4, 'Dog Food', 460, 'Kibbles ''n Bits Original Savory Beef & Chicken Flavors Dry Dog Food \r\n\r\n', 'f3.jpg', 'Dog'),
(65, 4, 'Cat Food', 470, 'Whiskas Kitten (2-12 months) Dry Cat Food, Ocean Fish, 450g Pack ', 'f4.jpg', 'Cats'),
(66, 4, 'Cat Food', 1200, 'Royal Canin Kitten 2 Kg/ 4 Kg Cat food', 'f5.jpg', 'Cats'),
(67, 4, 'Cat Food', 600, 'Kit Cat Classic 32 Dry Cat Food', 'f6.jpg', 'Cats'),
(68, 4, 'Birds Food', 700, 'Kaytee Wild Bird Food - 20 lb', 'f8.jpg', 'Birds'),
(69, 4, 'Birds Food', 700, 'Wagner''s 13008 Deluxe Wild Bird Food, 10-Pound Bag', 'f9.jpg', 'Birds'),
(72, 4, 'Dog Food', 3500, 'Pedigree Adult Complete Nutrition Roasted Chicken, Rice & Vegetable Flavor  Dry Dog Food, 17-lb bag', 'f1.jpg', 'dog food'),
(78, 3, 'American goldfinch', 10000, 'The American goldfinch (Spinus tristis) is a small North American bird in the finch family.\r\nAge:1week\r\nColor:Gold ,Yellow', 'd.jpg', 'Birds'),
(79, 5, 'Dog cage', 5000, 'Steel Cage for dogs', 'c1.jpg', 'cage'),
(82, 1, 'Rottweiler', 25000, 'The Rottweiler is a breed of domestic dog, regarded as medium-to-large or large.\r\nAge:2months\r\nColor:Black, Tan, Mahogany', 'd7.jpg', 'Dogs'),
(83, 1, 'Siberian Husky', 10000, 'The Siberian Husky is a medium-sized working dog breed\r\nAge:6months\r\nColor:hite, Black, Agouti, Piebald', 'd9.jpg', 'Dogs'),
(86, 5, 'Dog Cage', 2500, 'Steel cage with warranty', '1582454255_c2.jpg', 'Cage'),
(90, 1, 'Dog', 2500, 'sqdqwfq\r\nwfev\r\r\nwfewrg', '1583168750_2.jpg', 'Dog'),
(93, 1, 'pug', 10000, 'goog dod for childrens\r\nbrown color\r\n3 months age', '1605504064_d3.jpeg', 'dog'),
(94, 1, 'Dogs', 5000, 'Color:Brown', '1605508349_1583168521_1.jpg', 'Dogs');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Triggers `user_info`
--
DROP TRIGGER IF EXISTS `ecommerece`.`after_user_info_insert`;
DELIMITER //
CREATE TRIGGER `ecommerece`.`after_user_info_insert` AFTER INSERT ON `ecommerece`.`user_info`
 FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
//
DELIMITER ;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(28, 'Akhil', 'p', 'akhil@gmail.com', '123456789', '9876543210', 'Kollam', 'qqwerty'),
(29, 'John', 'kennedy', 'jo@gmail.com', '123456789', '9876543210', 'Kollam', 'qwerty'),
(31, 'Sree', 'kanth', 'sree@gmail.com', '123456789', '9876543210', 'Kollam', 'qwerty'),
(33, 'eqq', 'eqd', 'edwin@gmail.vom', 'uuu1234@11', '2312313131', '1313', 'eqeq'),
(34, 'Don', 'David', 'don@gmail.com', '0987654321', '1234567890', 'fs ahg bsdfg r', 'ae btrth se'),
(35, 'Sheela', 'Raju', 'sheelaraju760@gmail.com', '1234567890', '9048344556', 'Padinjarekadvil cherumoodu', 'Kollam'),
(40, 'akhil', 'p', 'ak@gmail.com', '123456789', '7786868683', 'akb bavan', 'klm'),
(41, 'arun', 'n', 'arun@gmail.com', '123456789', '6576787970', 'vrn', 'klm');

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE IF NOT EXISTS `user_info_backup` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(15, 'hemu', 'ajhgdg', 'keeru@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(20, 'pramod', 'vh', 'pramod@gmail.com', '124335353', '9767645653', 'ksbdfcdf', 'sjrgrevgsib'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(26, 'arun', 'uday', 'aru@gmail.com', '123456789', '9663576378', 'xgegxu', 'ghfhgfgh'),
(27, 'Akhil', 'p', 'akhil@gmail.com', '0987654321', '7894561230', 'qwert', 'Kollam'),
(28, 'Akhil', 'p', 'akhil@gmail.com', '123456789', '9876543210', 'Kollam', 'qqwerty'),
(29, 'John', 'kennedy', 'jo@gmail.com', '123456789', '9876543210', 'Kollam', 'qwerty'),
(30, 'Ram', 'n', 'ra@gmail.com', '5432167890', '0987654321', 'qwerty', 'Kollam'),
(31, 'Sree', 'kanth', 'sree@gmail.com', '123456789', '9876543210', 'Kollam', 'qwerty'),
(32, 'david', 'john', 'david@gmail.com', '789456123', '7412589630', 'kochi', 'poiuyt'),
(33, 'eqq', 'eqd', 'edwin@gmail.vom', 'uuu1234@11', '2312313131', '1313', 'eqeq'),
(34, 'Don', 'David', 'don@gmail.com', '0987654321', '1234567890', 'fs ahg bsdfg r', 'ae btrth se'),
(36, 'Aaron', 'David', 'aaron@gmail.com', '0987654321', '1234567890', 'fs ahg bsdfg r', 'eqeq'),
(37, 'Ajesh', 'Raj', 'ajesh@gmail.com', '0192837465', '1029384756', 'dfcre', 'rgergergerb'),
(38, 'aki', ' ', 'ak@gmail.com', 'ah123', '33344', 'klm', 'fff'),
(39, 'w ewqer', 'ef eewf ', 'rgygrt@gmail.com', '12345678765432', '1029384756', 'dfcre', 'rgergergerb'),
(40, 'akhil', 'p', 'ak@gmail.com', '123456789', '7786868683', 'akb bavan', 'klm'),
(41, 'arun', 'n', 'arun@gmail.com', '123456789', '6576787970', 'vrn', 'klm');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
