-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2021 at 03:06 PM
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
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `title` varchar(70) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `filePath` varchar(250) NOT NULL,
  `isMovie` tinyint(1) NOT NULL,
  `uploadDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `releaseDate` date NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `duration` varchar(10) NOT NULL,
  `season` int(11) DEFAULT '0',
  `episode` int(11) DEFAULT '0',
  `entityId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `title`, `description`, `filePath`, `isMovie`, `uploadDate`, `releaseDate`, `views`, `duration`, `season`, `episode`, `entityId`) VALUES
(1, 'The Batman', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'entities/videos/1.mp4', 1, '2021-10-12 22:07:53', '2006-02-10', 0, '47:13', 1, 1, 1),
(2, 'DareDevil', 'Adipiscing id est porttitor vivamus nostra magna porta potenti accumsan eros. Sit nullam dictumst libero sociosqu accumsan sem. Interdum egestas apten', 'entities/videos/2.mp4', 1, '2021-10-12 22:07:53', '2002-12-09', 0, '41:46', 1, 2, 2),
(3, 'Spiderverse', 'Fusce et eu, at auctor hendrerit pharetra aptent himenaeos nisl. Placerat at ultrices habitasse rhoncus eros dignissim senectus. A vivamus fermentum p', 'entities/videos/3.mp4',1, '2021-10-12 22:07:53', '2014-10-17', 0, '22:31', 1, 3, 3),
(4, 'Spiderman 3', 'Dolor maecenas mauris massa et augue litora. Maecenas commodo donec potenti sodales sem. Malesuada tincidunt a integer nullam euismod pretium vulputat', 'entities/videos/4.mp4', 1, '2021-10-12 22:07:53', '2014-05-14', 0, '31:24', 1, 4, 4),
(5, 'Tenet', 'Interdum etiam finibus facilisis pulvinar venenatis pharetra class ad litora duis diam ullamcorper senectus cras. Non eleifend tempor nisi primis phar', 'entities/videos/5.mp4', 1, '2021-10-12 22:07:53', '2001-05-11', 0, '30:13', 1, 5, 5),
(6, 'Justice League', 'Lacus tellus felis curae ornare euismod pretium inceptos sodales congue eros risus. Amet non nulla volutpat metus molestie urna tempus vivamus rhoncus', 'entities/videos/6.mp4', 1, '2021-10-12 22:07:53', '2002-07-19', 0, '28:47', 1, 6, 6),
(7, 'Dunkirk', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'entities/videos/7.mp4', 1, '2021-10-12 22:07:53', '2007-06-03', 0, '39:26', 1, 7, 7),
(8, 'Interstellar', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'entities/videos/8.mp4', 1, '2021-10-12 22:07:53', '2007-06-03', 0, '39:26', 1, 7, 8),
(9, 'Mine Craft 1', 'Malesuada mauris hac taciti. Dictum egestas molestie et pharetra maximus taciti litora porta blandit sem ullamcorper. Interdum nulla velit metus nibh ', 'entities/videos/9.mp4', 1, '2021-10-12 22:07:53', '2018-04-08', 0, '40:55', 1, 9, 9),
(10, 'MineCraft 2', 'Elit justo vestibulum feugiat lacinia suspendisse semper quis ultrices primis commodo libero sodales suscipit. Adipiscing erat velit mauris efficitur ', 'entities/videos/10.mp4', 1, '2021-10-12 22:07:53', '2000-05-29', 0, '37:33', 1, 10, 10),
(11, 'MineCraft 3', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'entities/videos/11.mp4', 1, '2021-10-12 22:07:53', '2014-01-13', 0, '32:10', 1, 11, 11),
(12, 'Goodfellas', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'entities/videos/12.mp4', 1, '2021-10-12 22:07:53', '2010-10-28', 0, '35:57', 1, 12, 12),
(13, 'Fight Club', 'Lorem viverra vitae venenatis posuere ornare sagittis enim laoreet vehicula nam imperdiet habitant, sit mattis tellus posuere pretium ad odio accumsan', 'entities/videos/12.mp4', 1, '2021-10-12 22:07:53', '2014-06-11', 0, '34:56', 2, 1, 13),
(14, 'Inception', 'Pulvinar dui lectus per sem. Elit id volutpat tincidunt est tellus massa faucibus primis eget habitasse taciti odio morbi, id ligula mollis cubilia li', 'entities/videos/14.mp4', 1, '2021-10-12 22:07:53', '2018-02-26', 0, '32:42', 2, 2, 14),
(15, 'Doctor Strange', 'Lorem nibh integer commodo inceptos himenaeos. Amet interdum sed justo lobortis eleifend nisi molestie massa primis dictumst pellentesque torquent inc', 'entities/videos/15.mp4', 1, '2021-10-12 22:07:53', '2007-06-25', 0, '40:33', 2, 3, 15),
(16, 'Good Will Hunting', 'Metus tincidunt tellus primis augue consequat sagittis congue. Sit erat metus auctor massa posuere porta rhoncus blandit laoreet. Praesent a integer n', 'entities/videos/16.mp4', 1, '2021-10-12 22:07:53', '2010-07-06', 0, '43:53', 2, 4, 16),
(17, 'The Father', 'Egestas leo ligula est donec ullamcorper netus. Nibh nec tortor fusce et eu libero per accumsan habitant. Lobortis luctus quis risus senectus iaculis,', 'entities/videos/12.mp4', 1, '2021-10-12 22:07:53', '2007-04-18', 0, '25:39', 2, 5, 17),
(18, 'The Truman Show', 'Mattis vivamus libero conubia neque, dolor non feugiat nibh tincidunt aliquam pretium turpis rhoncus. In cursus nullam arcu dictumst diam. Egestas lac', 'entities/videos/13.mp4', 1, '2021-10-12 22:07:53', '2008-08-26', 0, '45:27', 2, 6, 18),
(19, 'Jojo Rabbit', 'Elit sed metus urna sociosqu himenaeos. Leo semper tempor, dictum etiam leo cursus libero maximus nostra. Viverra mattis venenatis convallis varius cu', 'entities/videos/10.mp4', 1, '2021-10-12 22:07:53', '2013-04-04', 0, '24:59', 2, 9, 19),
(20, 'Catch Me if You Can', 'Viverra maecenas quisque ut fringilla condimentum elementum. Egestas ac ut fusce augue nullam dictumst lectus maximus torquent per fames. Dolor erat m', 'entities/videos/16.mp4', 1, '2021-10-12 22:07:53', '2013-09-11', 0, '31:59', 2, 7, 20),
(21, 'The Prestige', 'Sapien porttitor sociosqu diam aliquet. Elit egestas auctor faucibus dictumst rhoncus. Lorem in ligula scelerisque venenatis porttitor aptent porta po', 'entities/videos/14.mp4', 1, '2021-10-12 22:07:53', '2008-07-24', 0, '47:28', 2, 8, 21),
(22, 'Ford Vs Ferrari', 'Elit sed metus urna sociosqu himenaeos. Leo semper tempor, dictum etiam leo cursus libero maximus nostra. Viverra mattis venenatis convallis varius cu', 'entities/videos/22.mp4', 1, '2021-10-12 22:07:53', '2013-04-04', 0, '24:59', 2, 9, 22),
(23, 'The Batman', 'Interdum nulla at quis phasellus ornare habitasse dictumst vehicula aliquet senectus. Dolor vestibulum luctus feugiat tincidunt facilisis nunc quisque', 'entities/videos/1.mp4', 1, '2021-10-12 22:07:53', '2006-02-10', 0, '47:13', 1, 1, 1),
(24, 'DareDevil', 'Adipiscing id est porttitor vivamus nostra magna porta potenti accumsan eros. Sit nullam dictumst libero sociosqu accumsan sem. Interdum egestas apten', 'entities/videos/2.mp4', 1, '2021-10-12 22:07:53', '2002-12-09', 0, '41:46', 1, 2, 2),
(25, 'Spiderverse', 'Fusce et eu, at auctor hendrerit pharetra aptent himenaeos nisl. Placerat at ultrices habitasse rhoncus eros dignissim senectus. A vivamus fermentum p', 'entities/videos/3.mp4', 1, '2021-10-12 22:07:53', '2014-10-17', 0, '22:31', 1, 3, 3),
(26, 'Spiderman 3', 'Dolor maecenas mauris massa et augue litora. Maecenas commodo donec potenti sodales sem. Malesuada tincidunt a integer nullam euismod pretium vulputat', 'entities/videos/4.mp4', 1, '2021-10-12 22:07:53', '2014-05-14', 0, '31:24', 1, 4, 4),
(27, 'Tenet', 'Interdum etiam finibus facilisis pulvinar venenatis pharetra class ad litora duis diam ullamcorper senectus cras. Non eleifend tempor nisi primis phar', 'entities/videos/5.mp4', 1, '2021-10-12 22:07:53', '2001-05-11', 0, '30:13', 1, 5, 5),
(28, 'Justice League', 'Lacus tellus felis curae ornare euismod pretium inceptos sodales congue eros risus. Amet non nulla volutpat metus molestie urna tempus vivamus rhoncus', 'entities/videos/6.mp4', 1, '2021-10-12 22:07:53', '2002-07-19', 0, '28:47', 1, 6, 6),
(29, 'Dunkirk', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'entities/videos/7.mp4', 1, '2021-10-12 22:07:53',1, '2007-06-03', '39:26', 1, 7, 7),
(30, 'Interstellar', 'Suspendisse eget curabitur sodales. Malesuada lobortis dui fermentum dignissim nisl, non sed a gravida. Dictum phasellus quam libero.', 'entities/videos/7.mp4', 1, '2021-10-12 22:07:53', '2007-06-03', 0, '39:26', 1, 7, 8),
(31, 'Mine Craft 1', 'Malesuada mauris hac taciti. Dictum egestas molestie et pharetra maximus taciti litora porta blandit sem ullamcorper. Interdum nulla velit metus nibh ', 'entities/videos/9.mp4', 1, '2021-10-12 22:07:53', '2018-04-08', 0, '40:55', 1, 9, 9),
(32, 'MineCraft 2', 'Elit justo vestibulum feugiat lacinia suspendisse semper quis ultrices primis commodo libero sodales suscipit. Adipiscing erat velit mauris efficitur ', 'entities/videos/10.mp4', 1, '2021-10-12 22:07:53', '2000-05-29', 0, '37:33', 1, 10, 10),
(33, 'MineCraft 3', 'Amet sed at metus mollis phasellus cursus massa faucibus gravida vel maximus torquent turpis. Eleifend quisque pretium, felis pharetra class dignissim', 'entities/videos/11.mp4', 1, '2021-10-12 22:07:53', '2014-01-13', 0, '32:10', 1, 11, 11),
(34, 'Goodfellas', 'Ligula tellus nisi convallis suscipit fames aenean, lorem non nibh nisi orci curae sollicitudin taciti ad turpis nam imperdiet. Egestas a tortor conva', 'entities/videos/12.mp4', 1, '2021-10-12 22:07:53', '2010-10-28', 0, '35:57', 1, 12, 12),
(35, 'Fight Club', 'Lorem viverra vitae venenatis posuere ornare sagittis enim laoreet vehicula nam imperdiet habitant, sit mattis tellus posuere pretium ad odio accumsan', 'entities/videos/12.mp4', 1, '2021-10-12 22:07:53', '2014-06-11', 0, '34:56', 2, 1, 13),
(36, 'Inception', 'Pulvinar dui lectus per sem. Elit id volutpat tincidunt est tellus massa faucibus primis eget habitasse taciti odio morbi, id ligula mollis cubilia li', 'entities/videos/14.mp4', 1, '2021-10-12 22:07:53', '2018-02-26', 0, '32:42', 2, 2, 14),
(37, 'Doctor Strange', 'Lorem nibh integer commodo inceptos himenaeos. Amet interdum sed justo lobortis eleifend nisi molestie massa primis dictumst pellentesque torquent inc', 'entities/videos/15.mp4', 1, '2021-10-12 22:07:53', '2007-06-25', 0, '40:33', 2, 3, 15),
(38, 'Good Will Hunting', 'Metus tincidunt tellus primis augue consequat sagittis congue. Sit erat metus auctor massa posuere porta rhoncus blandit laoreet. Praesent a integer n', 'entities/videos/16.mp4', 1, '2021-10-12 22:07:53', '2010-07-06', 0, '43:53', 2, 4, 16),
(39, 'The Father', 'Egestas leo ligula est donec ullamcorper netus. Nibh nec tortor fusce et eu libero per accumsan habitant. Lobortis luctus quis risus senectus iaculis,', 'entities/videos/15.mp4', 1, '2021-10-12 22:07:53', '2007-04-18', 0, '25:39', 2, 5, 17),
(40, 'The Truman Show', 'Mattis vivamus libero conubia neque, dolor non feugiat nibh tincidunt aliquam pretium turpis rhoncus. In cursus nullam arcu dictumst diam. Egestas lac', 'entities/videos/12.mp4', 1, '2021-10-12 22:07:53', '2008-08-26', 0, '45:27', 2, 6, 18),
(41, 'Jojo Rabbit', 'Elit sed metus urna sociosqu himenaeos. Leo semper tempor, dictum etiam leo cursus libero maximus nostra. Viverra mattis venenatis convallis varius cu', 'entities/videos/19.mp4', 1, '2021-10-12 22:07:53', '2013-04-04', 0, '24:59', 2, 9, 19),
(42, 'Catch Me if You Can', 'Viverra maecenas quisque ut fringilla condimentum elementum. Egestas ac ut fusce augue nullam dictumst lectus maximus torquent per fames. Dolor erat m', 'entities/videos/14.mp4', 1, '2021-10-12 22:07:53', '2013-09-11', 0, '31:59', 2, 7, 20),
(43, 'The Prestige', 'Sapien porttitor sociosqu diam aliquet. Elit egestas auctor faucibus dictumst rhoncus. Lorem in ligula scelerisque venenatis porttitor aptent porta po', 'entities/videos/16.mp4', 1, '2021-10-12 22:07:53', '2008-07-24', 0, '47:28', 2, 8, 21),
(44, 'Ford Vs Ferrari', 'Elit sed metus urna sociosqu himenaeos. Leo semper tempor, dictum etiam leo cursus libero maximus nostra. Viverra mattis venenatis convallis varius cu', 'entities/videos/22.mp4', 1, '2021-10-12 22:07:53', '2013-04-04', 0, '24:59', 2, 9, 22);


-- Indexes for dumped tables
--

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entityId` (`entityId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`entityId`) REFERENCES `entities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
