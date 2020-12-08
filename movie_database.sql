-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 06:44 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `akcio`
--

CREATE TABLE `akcio` (
  `movieid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akcio`
--

INSERT INTO `akcio` (`movieid`, `name`, `description`, `img`, `category`) VALUES
(1, 'Baby Driver', 'Lorem ipsum', 'babydriver.jpg', 'akció'),
(2, 'Casino Royale', 'Lorem ipsum', 'casinoroyale.jpg', 'akció'),
(3, 'Dredd', 'Lorem ipsum', 'dredd.jpg', 'akció'),
(4, 'John Wick', 'Lorem ipsum', 'johnwick.jpg', 'akció'),
(5, 'Mad Max', 'Lorem ipsum', 'madmax.jpg', 'akció');

-- --------------------------------------------------------

--
-- Table structure for table `animacio`
--

CREATE TABLE `animacio` (
  `movieid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `animacio`
--

INSERT INTO `animacio` (`movieid`, `name`, `description`, `img`, `category`) VALUES
(21, 'Madagascar', 'Lorem ipsum', 'madagascar.jpeg', 'animáció'),
(22, 'Spiderman', 'Lorem ipsum', 'spiderman.jpg', 'animáció'),
(23, 'The Little Mermaid', 'Lorem ipsum', 'thelittlemermaid.jpeg', 'animáció'),
(24, 'The Princess and the Frog', 'Lorem ipsum', 'theprincessandthefrog.jpeg', 'animáció'),
(25, 'Wall-E', 'Lorem ipsum', 'walle.jpg', 'animáció');

-- --------------------------------------------------------

--
-- Table structure for table `drama`
--

CREATE TABLE `drama` (
  `movieid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drama`
--

INSERT INTO `drama` (`movieid`, `name`, `description`, `img`, `category`) VALUES
(11, 'Australia', 'Lorem ipsum', 'australia.jpg', 'dráma'),
(12, 'Denial', 'Lorem ipsum', 'denial.jpeg', 'dráma'),
(13, 'Inception', 'Lorem ipsum', 'inception.jpg', 'dráma'),
(14, 'Into the Sky', 'Lorem ipsum', 'intothesky.jpeg', 'dráma'),
(15, 'Moonlight', 'Lorem ipsum', 'moonlight.jpeg', 'dráma');

-- --------------------------------------------------------

--
-- Table structure for table `horror`
--

CREATE TABLE `horror` (
  `movieid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `horror`
--

INSERT INTO `horror` (`movieid`, `name`, `description`, `img`, `category`) VALUES
(16, 'Friday the 13th', 'Lorem ipsum', 'fridaythe13th.jpeg', 'horror'),
(17, 'Poltergeist', 'Lorem ipsum', 'poltergeist.jpg', 'horror'),
(18, 'The Descent', 'Lorem ipsum', 'thedescent.jpeg', 'horror'),
(19, 'The Exorcist', 'Lorem ipsum', 'theexorcist.jpeg', 'horror'),
(20, 'The Shining', 'Lorem ipsum', 'theshining.jpeg', 'horror');

-- --------------------------------------------------------

--
-- Table structure for table `kaland`
--

CREATE TABLE `kaland` (
  `movieid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kaland`
--

INSERT INTO `kaland` (`movieid`, `name`, `description`, `img`, `category`) VALUES
(6, 'Back to the Future', 'Lorem ipsum', 'backtothefuture.jpg', 'kaland'),
(7, 'Inception', 'Lorem ipsum', 'inception.jpg', 'kaland'),
(8, 'Interstellar', 'Lorem ipsum', 'interstellar.jpg', 'kaland'),
(9, 'Lord of the Rings', 'Lorem ipsum', 'lordoftherings.jpg', 'kaland'),
(10, 'Space Odyssey', 'Lorem ipsum', 'spaceodyssey.jpg', 'kaland');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieid`, `name`, `description`, `img`, `category`) VALUES
(1, 'Baby Driver', 'Lorem ipsum', 'babydriver.jpg', 'akció'),
(2, 'Casino Royale', 'Lorem ipsum', 'casinoroyale.jpg', 'akció'),
(3, 'Dredd', 'Lorem ipsum', 'dredd.jpg', 'akció'),
(4, 'John Wick', 'Lorem ipsum', 'johnwick.jpg', 'akció'),
(5, 'Mad Max', 'Lorem ipsum', 'madmax.jpg', 'akció'),
(6, 'Back to the Future', 'Lorem ipsum', 'backtothefuture.jpg', 'kaland'),
(7, 'Inception', 'Lorem ipsum', 'inception.jpg', 'kaland'),
(8, 'Interstellar', 'Lorem ipsum', 'interstellar.jpg', 'kaland'),
(9, 'Lord of the Rings', 'Lorem ipsum', 'lordoftherings.jpg', 'kaland'),
(10, 'Space Odyssey', 'Lorem ipsum', 'spaceodyssey.jpg', 'kaland'),
(11, 'Australia', 'Lorem ipsum', 'australia.jpg', 'dráma'),
(12, 'Denial', 'Lorem ipsum', 'denial.jpeg', 'dráma'),
(13, 'Inception', 'Lorem ipsum', 'inception.jpg', 'dráma'),
(14, 'Into the Sky', 'Lorem ipsum', 'intothesky.jpeg', 'dráma'),
(15, 'Moonlight', 'Lorem ipsum', 'moonlight.jpeg', 'dráma'),
(16, 'Friday the 13th', 'Lorem ipsum', 'fridaythe13th.jpeg', 'horror'),
(17, 'Poltergeist', 'Lorem ipsum', 'poltergeist.jpg', 'horror'),
(18, 'The Descent', 'Lorem ipsum', 'thedescent.jpeg', 'horror'),
(19, 'The Exorcist', 'Lorem ipsum', 'theexorcist.jpeg', 'horror'),
(20, 'The Shining', 'Lorem ipsum', 'theshining.jpeg', 'horror'),
(21, 'Madagascar', 'Lorem ipsum', 'madagascar.jpeg', 'animáció'),
(22, 'Spiderman', 'Lorem ipsum', 'spiderman.jpg', 'animáció'),
(23, 'The Little Mermaid', 'Lorem ipsum', 'thelittlemermaid.jpeg', 'animáció'),
(24, 'The Princess and the Frog', 'Lorem ipsum', 'theprincessandthefrog.jpeg', 'animáció'),
(25, 'Wall-E', 'Lorem ipsum', 'walle.jpg', 'animáció');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(11) NOT NULL,
  `usersName` varchar(128) NOT NULL,
  `usersEmail` varchar(128) NOT NULL,
  `userUid` varchar(128) NOT NULL,
  `usersPwd` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `userUid`, `usersPwd`) VALUES
(1, 'asdad', 'birovivien95@gmail.com', 'birovivien', '$2y$10$CgEUuWRm/SE26IWRI/G2ouR3yq0NWypEnEf57gdg0lsOTQLv8CVD2'),
(2, '123123', 'valami@gmail.com', 'asdfsdf', '$2y$10$BfQ0vB4eX6B2ehcj746Jv.5BbmMWbL1sqzSozBLxnwSqHs1yWGI/e'),
(3, 'something', 'someting@gmail.com', 'asdasd', '$2y$10$V7c4Xr6aTLG2jUanBeHHW.ij3KrK36bRsCtG59TBmvfrh4vtRlUwq'),
(4, 'valakivalaki', 'igen@gmail.com', 'igen', '$2y$10$ukBDtLobYt8gEu889aE4YueoMzVRUGgaBPcq0H4d.k/iAQEcgaRem'),
(5, 'Vivien Bíró', 'aaaa@aaa.hu', 'aaa', '$2y$10$6PGPTHnG8qqlszR5hRLF4edmaquTANYDARaDfTczS4.NeewONFSn6'),
(6, 'Vivien Bíró', 'asdasd@gmail.com', 'asdasdasd', '$2y$10$DTQ1q12/loHFKTyLghXihOkkUbnL8IZb7F667oiJnd3BNiuQu/qzW'),
(7, 'admin admin', 'admin@admin.hu', 'admin', '$2y$10$aeiSYHrzGz8W5A9z25wsq.xGRtu7Jx3eew.kBfojI6H.OYoqr9vFi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
