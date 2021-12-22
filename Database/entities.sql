-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 14, 2019 at 07:57 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 
--

-- --------------------------------------------------------

--
-- Table structure for table `entities`
--

CREATE TABLE `entities` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `preview` varchar(250) NOT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entities`
--

INSERT INTO `entities` (`id`, `name`, `thumbnail`, `preview`, `categoryId`) VALUES
(1, 'The Batman', 'entities/thumbnails/1.jpg', 'entities/previews/1.mp4',1),
(2,'DareDevil', 'entities/thumbnails/2.jpg', 'entities/previews/2.mp4', 1),
(3, 'Spiderverse', 'entities/thumbnails/3.png', 'entities/previews/3.mp4', 1),
(4, 'Spiderman 3', 'entities/thumbnails/4.jpeg', 'entities/previews/4.mp4', 1),
(5, 'Tenet', 'entities/thumbnails/5.jpg', 'entities/previews/5.mp4', 4),
(6, 'Justice League', 'entities/thumbnails/6.jpg', 'entities/previews/6.mp4', 1),
(7, 'Dunkirk', 'entities/thumbnails/7.jpg', 'entities/previews/7.mp4', 4),
(8, 'Interstellar', 'entities/thumbnails/8.jpg', 'entities/previews/8.mp4', 4),
(9, 'Mine Craft 1', 'entities/thumbnails/9.jpg', 'entities/previews/9.mp4', 7),
(10, 'MineCraft 2', 'entities/thumbnails/10.jpg', 'entities/previews/10.mp4', 7),
(11, 'MineCraft 3', 'entities/thumbnails/11.jpg', 'entities/previews/11.mp4', 7),
(12, 'Goodfellas', 'entities/thumbnails/12.jpg', 'entities/previews/12.mp4', 3),
(13, 'Fight Club', 'entities/thumbnails/13.jpeg', 'entities/previews/13.mp4', 5),
(14, 'Inception', 'entities/thumbnails/14.jpg', 'entities/previews/14.mp4', 5),
(15, 'Doctor Strange', 'entities/thumbnails/15.jpg', 'entities/previews/15.mp4', 4),
(16, 'Good Will Hunting', 'entities/thumbnails/16.jpg', 'entities/previews/16.mp4', 3),
(17, 'The Father', 'entities/thumbnails/17.jpg', 'entities/previews/17.mp4', 3),
(18, 'The Truman Show', 'entities/thumbnails/18.jpg', 'entities/previews/14.mp4', 2),
(19, 'Jojo Rabbit', 'entities/thumbnails/19.jpg', 'entities/previews/19.mp4', 3),
(20, 'Catch Me if You Can', 'entities/thumbnails/20.jpg', 'entities/previews/16.mp4', 2),
(21, 'The Prestige', 'entities/thumbnails/21.jpg', 'entities/previews/19.mp4', 24),
(22, 'Ford Vs Ferrari', 'entities/thumbnails/22.jpg', 'entities/previews/22.mp4', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entities`
--
ALTER TABLE `entities`
  ADD CONSTRAINT `entities_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
