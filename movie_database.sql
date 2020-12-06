-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2020 at 04:47 PM
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
(1, 'Baby Driver', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/babydriver.jpg\" alt=\"Card image cap\">', 'akció'),
(2, 'Casino Royale', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/casinoroyale.jpg\" alt=\"Card image cap\">', 'akció'),
(3, 'Dredd', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/dredd.jpg\" alt=\"Card image cap\">', 'akció'),
(4, 'John Wick', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/johnwick.jpg\" alt=\"Card image cap\">', 'akció'),
(5, 'Mad Max', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/madmax.jpg\" alt=\"Card image cap\">', 'akció');

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
(21, 'Madagascar', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/madagascar.jpeg\" alt=\"Card image cap\">', 'animáció'),
(22, 'Spiderman', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/spiderman.jpg\" alt=\"Card image cap\">', 'animáció'),
(23, 'The Little Mermaid', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/thelittlemermaid.jpeg\" alt=\"Card image cap\">', 'animáció'),
(24, 'The Princess and the Frog', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/theprincessandthefrog.jpeg\" alt=\"Card image cap\">', 'animáció'),
(25, 'Wall-E', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/walle.jpg\" alt=\"Card image cap\">', 'animáció');

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
(11, 'Australia', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/australia.jpg\" alt=\"Card image cap\">', 'dráma'),
(12, 'Denial', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/denial.jpeg\" alt=\"Card image cap\">', 'dráma'),
(13, 'Inception', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/inception.jpg\" alt=\"Card image cap\">', 'dráma'),
(14, 'Into the Sky', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/intothesky.jpeg\" alt=\"Card image cap\">', 'dráma'),
(15, 'Moonlight', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/moonlight.jpeg\" alt=\"Card image cap\">', 'dráma');

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
(16, 'Friday the 13th', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/fridaythe13th.jpeg\" alt=\"Card image cap\">', 'horror'),
(17, 'Poltergeist', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/poltergeist.jpg\" alt=\"Card image cap\">', 'horror'),
(18, 'The Descent', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/thedescent.jpeg\" alt=\"Card image cap\">', 'horror'),
(19, 'The Exorcist', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/theexorcist.jpeg\" alt=\"Card image cap\">', 'horror'),
(20, 'The Shining', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/theshining.jpeg\" alt=\"Card image cap\">', 'horror');

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
(6, 'Back to the Future', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/backtothefuture.jpg\" alt=\"Card image cap\">', 'kaland'),
(7, 'Inception', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/inception.jpg\" alt=\"Card image cap\">', 'kaland'),
(8, 'Interstellar', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/interstellar.jpg\" alt=\"Card image cap\">', 'kaland'),
(9, 'Lord of the Rings', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/lordoftherings.jpg\" alt=\"Card image cap\">', 'kaland'),
(10, 'Space Odyssey', 'Lorem ipsum', '<img class=\"card-img-top\" src=\"img/spaceodyssey.jpg\" alt=\"Card image cap\">', 'kaland');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
