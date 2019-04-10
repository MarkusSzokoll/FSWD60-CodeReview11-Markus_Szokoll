-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2019 at 06:08 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr11_markus-szokoll_travelmatic`
--

-- --------------------------------------------------------

--
-- Table structure for table `concert`
--

CREATE TABLE `concert` (
  `concert_id` int(11) NOT NULL,
  `concertName` varchar(55) DEFAULT NULL,
  `concertImage` varchar(500) DEFAULT NULL,
  `concertDate` date DEFAULT NULL,
  `concertLocation` varchar(100) DEFAULT NULL,
  `concertPrice` float DEFAULT NULL,
  `concertWebAddress` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `concert`
--

INSERT INTO `concert` (`concert_id`, `concertName`, `concertImage`, `concertDate`, `concertLocation`, `concertPrice`, `concertWebAddress`) VALUES
(1, 'Kris Kristofferson', 'https://lh4.googleusercontent.com/8B3Uvcit7tz1MnSCpV4OawMJpWrluMqWGd5dqDDivsab_w30GnSYrM0xd3O9wGF6deAMKvzI9D0ptptq8bGVm_o7Vk2Gt7ClukscE6bMw1mUYRcl1BcZ6tZQOqN5FNBcwMz4p9Ga', '2019-11-15', 'Wiener Stadthalle, Halle F, Roland Rainer Platz 1, 1150 Wien', 58.5, 'http://kriskristofferson.com/'),
(3, 'Lenny Kravitz', 'https://lh5.googleusercontent.com/74lQjmcgVjXOrimysU0h8OmxzHRcvwf01IzGsl1LwjKQtFVC5NKfuXDM2e6o1CsUFMhiSVhMGt1gRs6JD0C6Cd896ZA7NWOrXf0qzFs_CsVUXGyPEC97G06YV5GzdEu5bXyoFB-z', '2019-12-09', 'Wiener Stadthalle - Halle D, Roland Rainer Platz 1, 1150 Wien', 47.8, 'www.lennykravitz.com/');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `restaurant_id` int(11) NOT NULL,
  `restaurantName` varchar(55) DEFAULT NULL,
  `restaurantImage` varchar(500) DEFAULT NULL,
  `restaurantAddress` varchar(100) DEFAULT NULL,
  `restaurantType` varchar(55) DEFAULT NULL,
  `restaurantDesc` varchar(100) DEFAULT NULL,
  `restaurantNumber` varchar(20) DEFAULT NULL,
  `restaurantWebAddress` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`restaurant_id`, `restaurantName`, `restaurantImage`, `restaurantAddress`, `restaurantType`, `restaurantDesc`, `restaurantNumber`, `restaurantWebAddress`) VALUES
(1, 'Asia Jasmin', 'http://www.asia-jasmin.at/slides/IMG_11.jpg', 'Breitenleerstrasse 102, 1220 Wien', 'Asian', 'Best Asian food in Vienna.', '01/734 3550', 'http://www.asia-jasmin.at'),
(3, 'Lemon Leaf Thai', 'https://lh3.googleusercontent.com/wKFfCPloM-NbwSNPqmsR8TanW0l-yJVssaW-Z5JrWslCfk9lczUbFbWU567HIQAUDFBkW__54fo3H1GVVmRL0OPH6sJFM2zG4AUpKQYsZ6gIuV2XrSfZSA4KFKtDeWVI4YMmR-um', 'KettenbrÃ¼ckengasse 19, 1050 Vienna', 'Thai', 'Thai Food in KettenbrÃ¼ckengasse.', '+43(1)5812308', 'http://www.lemonleaf.at'),
(4, 'SIXTA', 'https://lh5.googleusercontent.com/KSjp-79rS7p6COzjpgPk3-vP4fpNwhk6i91qoZAdYIKd4nHJx8nGdyHg7my01ahEImfk64MgTdPlW-dDoJ_SryXbKpd5794QfJLi3JBfLRS4_BTtj-hLoD4csemw4q4FtmgrPhk-', '1050 Wien, SchÃ¶nbrunner StraÃŸe 21', 'Traditional', 'Good Food for Good People.', '+43 1 585 28 56', 'http://www.sixta-restaurant.at');

-- --------------------------------------------------------

--
-- Table structure for table `thingstodo`
--

CREATE TABLE `thingstodo` (
  `thingsToDo_id` int(11) NOT NULL,
  `thingsToDoName` varchar(55) DEFAULT NULL,
  `thingsToDoImage` varchar(500) DEFAULT NULL,
  `thingsToDoAddress` varchar(100) DEFAULT NULL,
  `thingsToDoType` varchar(55) DEFAULT NULL,
  `thingsToDoDesc` varchar(100) DEFAULT NULL,
  `thingsToDoWebAddress` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thingstodo`
--

INSERT INTO `thingstodo` (`thingsToDo_id`, `thingsToDoName`, `thingsToDoImage`, `thingsToDoAddress`, `thingsToDoType`, `thingsToDoDesc`, `thingsToDoWebAddress`) VALUES
(1, 'Zoo Schönbrunn', 'https://lh3.googleusercontent.com/hUognsXhKete6qQFjpdvVsKZ3nePIuS9AE05SZx_d9slg-Tc_khqUwFMVOMbQzZP3ITqqrRyJsDi43kQBuYKi954Ibhul07-Sqxg0Koc323AgGWJ-jszZUkO3MaYSiA3K9IKQ1_P', 'Maxingstraße 13b, 1130 Wien', 'Zoo', 'Zoo Vienna - A day trip worth for the whole family.', 'https://www.zoovienna.at/'),
(2, 'Prater', 'https://www.p.city-walks.info/Wien/Prater-Wien.jpg', '1020 Wien', 'Theme Park', 'Theme Park with Roller Coasters and restaurants.', 'http://www.prater.at/'),
(3, 'St. Charles Church', 'https://lh3.googleusercontent.com/Fej_3RXzGDHbGLb_v7n3-2FX6eFFXOBJot1vQdJgRvVJWnQzS5NhbwtkncAi9xCFa_t_btQKAoqYSDr-EE5rB6vthwOTPG9l_bFN0ljh-0tCb4EdW_EzTyhB7sk7MCTZD7ikJxVS', 'Karlsplatz 1, 1010 Vienna', 'Church', 'Church at Karlsplatz in Vienna.', 'http://www.karlskirche.at/'),
(7, 'Vienna City Park', 'https://www.theviennablog.com/wp-content/uploads/2017/11/StadtParkVienna_theviennablog-6.jpeg', 'Stadtpark, Parkring  1010 Wien ', 'Park', 'A nice place to relax and enjoy the sun.', 'https://www.wien.info/de/orte/stadtpark'),
(9, 'Vienna Donauzentrum', 'http://www.viennafashionnight.at/wp-content/uploads/2015/05/DZFassade_BT7_heller.jpg', 'Wagramer Straße 81, 1220 Wien', 'Shopping Mall', 'Big Shopping Mall in Viennas 22nd district.', 'https://www.donauzentrum.at/');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `userdata_id` int(11) NOT NULL,
  `userFirstName` varchar(55) DEFAULT NULL,
  `userLastName` varchar(55) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `userAdminRole` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`userdata_id`, `userFirstName`, `userLastName`, `userEmail`, `userPassword`, `userAdminRole`) VALUES
(5, 'Markus', 'Szokoll', 'markus.szokoll@gmx.at', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concert`
--
ALTER TABLE `concert`
  ADD PRIMARY KEY (`concert_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- Indexes for table `thingstodo`
--
ALTER TABLE `thingstodo`
  ADD PRIMARY KEY (`thingsToDo_id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`userdata_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concert`
--
ALTER TABLE `concert`
  MODIFY `concert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `restaurant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `thingstodo`
--
ALTER TABLE `thingstodo`
  MODIFY `thingsToDo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `userdata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
