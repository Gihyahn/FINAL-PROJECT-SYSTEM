-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql100.infinityfree.com
-- Generation Time: Nov 29, 2025 at 08:05 PM
-- Server version: 10.6.22-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_40389391_coffee_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Coffee'),
(2, 'Non-Coffee'),
(3, 'Matcha Series'),
(4, 'Mocktails'),
(5, 'Snacks');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_screenshot` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending_approval',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `subcategory` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `category`, `subcategory`, `created_at`) VALUES
(1, 'Barista\'s Drink', '75.00', 'Drinks/barista\'s drink.jpeg', 'drink', 'Coffee', '2025-11-23 06:46:00'),
(2, 'Caramel Macchiato', '75.00', 'Drinks/caramel macchiato.jpeg', 'drink', 'Coffee', '2025-11-23 06:46:00'),
(3, 'White Chocolate Mocha', '75.00', 'Drinks/white choco mocha.jpeg', 'drink', 'Coffee', '2025-11-23 06:46:00'),
(4, 'Iced Mocha', '70.00', 'Drinks/ice mocha latte.jpg', 'drink', 'Coffee', '2025-11-23 06:46:00'),
(5, 'Caramel Latte', '70.00', 'Drinks/caramel latte.jpeg', 'drink', 'Coffee', '2025-11-23 06:46:00'),
(6, 'Hazelnut Latte', '75.00', 'Drinks/hazelnut latte.jpg', 'drink', 'Coffee', '2025-11-23 06:46:00'),
(7, 'Iced Latte', '75.00', 'Drinks/iced latte.jpeg', 'drink', 'Coffee', '2025-11-23 06:46:00'),
(8, 'Spanish Latte', '80.00', 'Drinks/spanish latte.jpeg', 'drink', 'Coffee', '2025-11-23 06:46:00'),
(9, 'Chocolate Spanish Latte', '65.00', 'Drinks/chocolate spanish latte.jpeg', 'drink', 'Coffee', '2025-11-23 06:46:00'),
(10, 'Cappuccino', '65.00', 'Drinks/cappuccino.jpeg', 'drink', 'Coffee', '2025-11-23 06:46:00'),
(11, 'Americano', '65.00', 'Drinks/americano.jpeg', 'drink', 'Coffee', '2025-11-23 06:46:00'),
(12, 'Vanilla Milk', '65.00', 'Drinks/vanilla milk.jpg', 'drink', 'Non-Coffee', '2025-11-23 06:46:00'),
(13, 'Strawberry Milk', '65.00', 'Drinks/strawberry milk.jpg', 'drink', 'Non-Coffee', '2025-11-23 06:46:00'),
(14, 'Signature Chocolate', '75.00', 'Drinks/signature chocolate.jpeg', 'drink', 'Non-Coffee', '2025-11-23 06:46:00'),
(15, 'Matcha Latte', '80.00', 'Drinks/matcha latte.jpeg', 'drink', 'Matcha Series', '2025-11-23 06:46:00'),
(16, 'Matcha Creamy Latte', '80.00', 'Drinks/matcha creamy latte.jpeg', 'drink', 'Matcha Series', '2025-11-23 06:46:00'),
(17, 'Matcha Caramel', '80.00', 'Drinks/matcha caramel.jpeg', 'drink', 'Matcha Series', '2025-11-23 06:46:00'),
(18, 'Matcha Berry', '80.00', 'Drinks/matcha berry.jpeg', 'drink', 'Matcha Series', '2025-11-23 06:46:00'),
(19, 'Forest Matcha Oreo', '80.00', 'Drinks/forest matcha oreo.jpeg', 'drink', 'Matcha Series', '2025-11-23 06:46:00'),
(20, 'Matcha Coffee', '80.00', 'Drinks/matcha coffee.jpeg', 'drink', 'Matcha Series', '2025-11-23 06:46:00'),
(21, 'Blueberry', '35.00', 'Drinks/blueberry.jpeg', 'drink', 'Mocktails', '2025-11-23 06:46:00'),
(22, 'Strawberry', '35.00', 'Drinks/strawberry.jpeg', 'drink', 'Mocktails', '2025-11-23 06:46:00'),
(23, 'Green Apple', '35.00', 'Drinks/green apple.jpeg', 'drink', 'Mocktails', '2025-11-23 06:46:00'),
(24, 'Lemonade', '35.00', 'Drinks/lemonade.jpeg', 'drink', 'Mocktails', '2025-11-23 06:46:00'),
(25, 'Lychee', '35.00', 'Drinks/lychee.jpeg', 'drink', 'Mocktails', '2025-11-23 06:46:00'),
(26, 'Nachos', '39.00', 'https://w7.pngwing.com/pngs/617/606/png-transparent-nachos-with-cheese-nachos-chile-con-queso-taco-salsa-tostada-french-fries-food-recipe-cheese-thumbnail.png', 'pastry', 'Snacks', '2025-11-23 06:46:00'),
(27, 'Waffle', '30.00', 'https://w7.pngwing.com/pngs/559/5/png-transparent-belgian-waffle-chicken-and-waffles-corn-dog-belgian-cuisine-waffles-thumbnail.png', 'pastry', 'Snacks', '2025-11-23 06:46:00'),
(28, 'Churros', '39.00', 'https://w7.pngwing.com/pngs/679/451/png-transparent-churro-mexican-cuisine-spanish-cuisine-street-food-fast-food-churro-food-baking-recipe-thumbnail.png', 'pastry', 'Snacks', '2025-11-23 06:46:00'),
(29, 'Apple / Banana Cake', '30.00', 'https://w7.pngwing.com/pngs/186/667/png-transparent-banana-bread-loaf-pumpkin-bread-bara-brith-pineapple-slice-baked-goods-baking-whole-grain-thumbnail.png', 'pastry', 'Snacks', '2025-11-23 06:46:00'),
(30, 'Siomai (4 pcs)', '25.00', 'https://w7.pngwing.com/pngs/134/168/png-transparent-shumai-dim-sum-recipe-pork-siomai-food-recipe-cuisine-thumbnail.png', 'pastry', 'Snacks', '2025-11-23 06:46:00'),
(31, 'Cookies', '25.00', 'https://scontent.fdvo6-1.fna.fbcdn.net/v/t39.30808-6/577878611_122104549053093797_683314773288821584_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=101&ccb=1-7&_nc_sid=833d8c&_nc_ohc=6JjjOravTB8Q7kNvwGTcRpw&_nc_oc=AdnLq-WMHC0TlPWx2Rac03h3RTL8Wlw2PuMqqRp4_KhzMdZKy4LfOH', 'pastry', 'Snacks', '2025-11-23 06:46:00'),
(32, 'Overload Fries', '49.00', 'https://w7.pngwing.com/pngs/94/282/png-transparent-french-fries-fried-chicken-potato-chip-frying-fried-chicken-food-recipe-cooking-thumbnail.png', 'pastry', 'Snacks', '2025-11-23 06:46:00'),
(33, 'Cheesy Fries', '45.00', 'https://w7.pngwing.com/pngs/580/193/png-transparent-french-fries-with-cheese-french-fries-cheese-fries-chili-con-carne-hamburger-food-fries-cheese-recipe-american-food-thumbnail.png', 'pastry', 'Snacks', '2025-11-23 06:46:00'),
(34, 'Regular Fries', '29.00', 'https://w7.pngwing.com/pngs/363/16/png-transparent-fried-fries-illustration-hamburger-french-fries-fast-food-onion-ring-fried-chicken-hd-fries-food-cooking-american-food-thumbnail.png', 'pastry', 'Snacks', '2025-11-23 06:46:00'),
(35, 'Croissant', '35.00', 'https://w7.pngwing.com/pngs/979/375/png-transparent-croissant-french-cuisine-bagel-pain-au-chocolat-breakfast-croissant-baked-goods-food-breakfast-thumbnail.png', 'pastry', 'Snacks', '2025-11-23 06:46:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'gwapo', 'giangwpo@gmail.com', '$2y$10$rdfARUWwFNLEN2HPGKxoEOZloREG/BadtSSXorb2DO3G1e3KzLg6i'),
(2, 'cuties', 'cutieko@gmail.com', '$2y$10$9NkijIB/q.jZEYqpt73oe.Ivo0mc1EafYj5oH0xWVePEkuLPRIQR2'),
(3, 'hiro', 'hiro@gmail.com', '$2y$10$afpA.el0tsUSRdX1oJDIx.MAMtWBA9Q.hRA7/8NUF1ubcq1y9g/Ha'),
(4, 'gillo', 'gillogian@gmail.com', '$2y$10$QB9ghP7TIbihr5rc6bYTfuWjCx5p5x6sldBsBC218wdXrczfG5QOe'),
(5, 'admin', 'adminuser@gmail.com', '$2y$10$PYfoy0YcdgtCWP8TwX194.FYSkbetVF/3RHsnlhFwr42AclD5Qxi.'),
(6, 'giankieth', NULL, '$2y$10$5mDLrcZQkwbZdjSMTdUTq.wf1Di/ilynvHtiIQW2Gc3e1OTEZS1xu'),
(7, 'newaccount', NULL, '$2y$10$6mJmmIufuZkCdAnGGE8LA.9hbNcqDc8c4sPTPFS7TJtcp9InmGkMm'),
(8, 'owner', NULL, '$2y$10$WSaVJnM6LnvmlNkopeLnH.sHjtbcK2kaWgZabAEHmZc8knbB1g4m6'),
(9, 'steph', NULL, '$2y$10$pLHfuRpdoliVLJVQJc9VIev3..bdicW4mniA51mfHTUSETwgf665C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
