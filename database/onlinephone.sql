-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 14, 2019 at 06:43 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinephone`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `UserName` varchar(150) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `UpdatingDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `adming` varchar(40) NOT NULL,
  `astatus` int(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `contactno` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `UpdatingDate`, `adming`, `astatus`, `address`, `emailid`, `contactno`) VALUES
(7, 'ved', '29e0461b02c078c89c7b2ac0b29fbfaf', '2019-11-09 06:09:56', '', 1, 'Mapusa Goa', 'ved@g.com', '99999999'),
(8, 'Mandar', 'dd29b8cb089a56606fca480e137c27c4', '0000-00-00 00:00:00', '', 0, 'Goa', 'mandar@gmail.com', '987654321'),
(9, 'Vijendra', '8996f461559d5eb9f1f66ed4a9938102', '0000-00-00 00:00:00', '', 0, 'Goa', 'vijendra@gmail.com', '987654321');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `bid` varchar(5) NOT NULL,
  `bname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatID` int(20) NOT NULL,
  `admin` varchar(200) NOT NULL,
  `User` varchar(200) NOT NULL,
  `chat` longtext NOT NULL,
  `sendingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatID`, `admin`, `User`, `chat`, `sendingDate`) VALUES
(25, '5', '13', 'hi', '2018-03-07 18:33:53'),
(26, '13', '5', 'hi how are you', '2018-03-07 18:34:31'),
(28, '5', '13', 'hi janan', '2018-03-08 17:29:53'),
(29, '5', '16', 'hi jawad from qudrat', '2018-03-08 17:30:14'),
(30, '5', '14', 'hi lala from qudrat', '2018-03-08 17:30:33'),
(31, '5', '15', 'hello ahmad from qudrat', '2018-03-08 17:30:49'),
(32, '13', '16', 'hi jaawad from janan', '2018-03-08 17:32:56'),
(33, '13', '15', 'heloo ahmad from janan', '2018-03-09 05:13:44'),
(34, '5', '13', 'hi janan from qudrat', '2018-03-09 05:19:04'),
(35, '5', '6', 'hi', '2018-03-15 15:34:39'),
(36, '5', '6', 'hello', '2019-10-19 04:51:04');

-- --------------------------------------------------------

--
-- Table structure for table `contactusquery`
--

CREATE TABLE `contactusquery` (
  `queryid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `aid` varchar(20) NOT NULL,
  `manreply` longtext NOT NULL,
  `uquery` longtext NOT NULL,
  `messagedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `replydate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactusquery`
--

INSERT INTO `contactusquery` (`queryid`, `userid`, `aid`, `manreply`, `uquery`, `messagedate`, `replydate`) VALUES
(4, 10, '', 'hi', 'hello', '2019-11-09 12:54:59', '2019-11-09 13:19:25'),
(5, 10, '', 'good', 'how are you', '2019-11-09 13:50:27', '2019-11-09 13:51:06'),
(6, 10, '', '', 'hi', '2019-11-13 11:26:52', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pid` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(10) NOT NULL,
  `userid` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`pid`, `date`, `status`, `userid`) VALUES
(1, '2018-02-25 10:44:09', 1, 1),
(2, '2018-02-25 10:44:37', 0, 2),
(4, '2018-02-25 10:45:34', 0, 4),
(5, '2018-02-25 11:34:59', 0, 5),
(6, '2018-02-25 11:34:59', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `procategory`
--

CREATE TABLE `procategory` (
  `catid` int(11) NOT NULL,
  `procatname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `procategory`
--

INSERT INTO `procategory` (`catid`, `procatname`) VALUES
(1, 'Phones'),
(2, 'HeadPhones'),
(3, 'Cases'),
(4, 'PowerBanks'),
(5, 'Chargers'),
(6, 'Speakers');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(20) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `productdescription` varchar(200) NOT NULL,
  `price` int(10) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `picture1` varchar(200) NOT NULL,
  `picture2` varchar(200) NOT NULL,
  `catid` int(11) NOT NULL,
  `stock` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `productname`, `productdescription`, `price`, `picture`, `picture1`, `picture2`, `catid`, `stock`) VALUES
(33, 'Iphone 11 Pro', 'SIM Type - Dual Sim\r\nDisplay Size - 14.73 cm (5.8 inch)\r\nResolution- 2436 x 1125 Pixels Super Retina XDR Display\r\nOperating System- iOS 13\r\nProcessor Type- A13 Bionic Chip\r\nInternal Storage- 64 GB\r\nPr', 99000, 'apple-iphone-11-pro.jpeg', 'apple-iphone-11-pro-mwc62hn-a-original-imafkg2ftc5cze5n.jpeg', 'apple-iphone-11-prowhite.jpeg', 1, 20),
(34, 'iphone X', '\r\n256 GB ROM |\r\n14.73 cm (5.8 inch) Super Retina HD Display\r\n12MP + 12MP | 7MP Front Camera\r\nA11 Bionic Chip with 64-bit Architecture, Neural Engine, Embedded M11 Motion Coprocessor Processor', 79000, 'apple-iphone-x-mqa62hn-a-original-imaeyzyfdzhfckef.jpeg', 'apple-iphone-x-mqa92hn-a-original-imaeyzzvaqggkygg.jpeg', 'apple-iphone-x-mqa62hn-a-original-imaeyysgjbe3qzwz.jpeg', 1, 10),
(35, 'samsung s10 plus', '8 GB RAM | 512 GB ROM | Expandable Upto 512 GB\r\n16.26 cm (6.4 inch) Quad HD+ Display\r\n16MP + 12MP | 10MP + 8MP Dual Front Camera\r\n4100 mAh Lithium-ion Battery\r\nExynos 9 9820 Processor', 87000, 'samsung-galaxy-s10-plus-sm-g975fckgins-original-imafdys4d6h8phu6.jpeg', 'samsung-galaxy-s10-plus-sm-g975fckgins-original-imafdys4e9mgrkxf.jpeg', 'samsung-galaxy-s10-plus-sm-g975fckgins-original-imafdys4uyzvpggy.jpeg', 1, 20),
(36, 'Samsung note 10 plus', '\r\n12 GB RAM | 512 GB ROM | Expandable Upto 1 TB\r\n17.27 cm (6.8 inch) Display\r\n12MP (Dual Aperture) + 12MP + 16MP + TOF | 10MP Front Camera\r\n4300 mAh Battery', 89, 'samsung-galaxy-note-10-plus-sm-n975fzkgins-original-imafj58jterypsdq.jpeg', 'samsung-galaxy-note-10-plus-sm-n975fzkgins-original-imafj58j4huvagbd.jpeg', 'samsung-galaxy-note-10-plus-sm-n975fzkgins-original-imafj58jqyyhtzzj.jpeg', 1, 20),
(39, 'Nokia 9', '6 GB RAM | 128 GB ROM |\r\n15.21 cm (5.99 inch) QHD+ Display\r\n5 x 12MP | 20MP Front Camera\r\n3320 mAh Battery\r\nQualcomm Snapdragon 845 Processor', 49999, 'nokia-9-ta-1087-ds-original-imafg98ny4rn7gcq.jpeg', 'nokia-9-ta-1087-ds-original-imafg98nken2dhmh.jpeg', 'nokia-9-ta-1087-ds-original-imafg98nn9f3tykq.jpeg', 1, 20),
(40, 'Nokia 6.1', '6 GB RAM | 64 GB ROM | Expandable Upto 400 GB\r\n14.73 cm (5.8 inch) FHD+ Display\r\n16MP + 5MP | 16MP Front Camera\r\n3060 mAh Battery\r\nQualcomm Snapdragon 636 Octacore Processor', 11999, 'nokia-6-1-na-original-imaf892ev4nr8mps.jpeg', 'nokia-6-1-na-original-imaf892exbgttdpe.jpeg', 'nokia-6-1-plus-na-original-imaf892egmfsuzz7.jpeg', 1, 20),
(41, 'Redmi K20 pro', '\r\n6 GB RAM | 128 GB ROM |\r\n16.23 cm (6.39 inch) FHD+ Display\r\n48MP + 13MP + 8MP | 20MP Front Camera\r\n4000 mAh Li-polymer Battery\r\nQualcomm Snapdragon 855 Processor', 25999, 'redmi-k20-pro-mzb7749in-original-imafghynfg4hvywn.jpeg', 'redmi-k20-pro-mzb7749in-original-imafghynfxsxtvd4.jpeg', 'redmi-k20-pro-na-original-imafgb4ydbdgu7pm.jpeg', 1, 20),
(43, 'Bose Headphone', 'With Mic:Yes\r\nBluetooth version: 4.1\r\nWireless range: 9 m\r\nBattery life: 15 hrs | Charging time: 3 hrs\r\nHigh audio quality at both lower and higher volumes', 9999, 'bose-soundlink-around-ear-ii-original-imaefjsqwhfvvcsm.jpeg', 'bose-soundlink-around-ear-ii-original-imaefy4cskkkj9dh.jpeg', 'bose-soundlink-around-ear-ii-original-imafkn7cfpchrbfu.jpeg', 2, 10),
(44, 'Skullcandy  Bluetooth Headset ', 'With Mic:Yes\r\nBluetooth version: 4.1\r\nWireless range: 33 Feet\r\nBattery life: 8 hrs | Charging time: 2 hrs\r\nFoldable/ Collapsible: Designed for people always on the move, easy storage and easy to carry', 2099, 'skullcandy-s2ikw-j509-original-imaf97gxddnknjkh.jpeg', 'skullcandy-s2ikw-j509-original-imaf9n9gfwfhyxeh.jpeg', 'skullcandy-s2ikw-j509-original-imaf9n9grbgwsfxh.jpeg', 2, 10),
(45, 'Apple airpods', '\r\nWith Mic:Yes\r\nConnector type: No\r\nQuick access to Siri by saying \"Hey Siri\"\r\nEasy setup for all your Apple devices\r\nRich, high-quality audio and voice', 11000, 'apple-mv7n2hn-a-original-imaff78z59efb54q.jpeg', 'apple-mv7n2hn-a-original-imaff78zpgffkkxj.jpeg', 'techobucks-i12s-tws-pro-plus-touch-sensor-bt-5-0-earphone-original-imafkqhzfbca7w3k.jpeg', 2, 10),
(46, 'samsung note 10 plus case', '\r\nSuitable For: Mobile\r\nMaterial: Plastic, Rubber, Fiber, Silicon, Polycarbonate\r\nTheme: No Theme\r\nType: Back Cover', 300, 'cellcampus-aft-14398-original-imafkfwp3dsjbmng.jpeg', 'cellcampus-aft-14395-original-imafcrm7ykcnbqyz.jpeg', 'cellcampus-aft-14393-original-imafkfwpwyvgesep.jpeg', 3, 10),
(48, 'boAt BassHeads 220 Super Extra', 'With Mic:Yes\r\nConnector type: 3.5mm headphone jack\r\nFlatwire: Stays tangle free even in your pocket\r\nExtra bass: Add extra thump to your music\r\nOne button universal remote to answer and manage your ca', 500, 'boat-bassheads-220-super-extra-bass-original-imaf52pyuyqabbuh.jpeg', 'boat-bassheads-220-super-extra-bass-original-imafj4f5gkefjsnh.jpeg', 'boat-bassheads-220-super-extra-bass-original-imafj4f6yfbmfbb9.jpeg', 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(20) NOT NULL,
  `SubscriberEmail` varchar(100) NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `userid` int(20) NOT NULL,
  `uname` varchar(150) NOT NULL,
  `uemailid` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `ucontactno` varchar(15) NOT NULL,
  `uaddress` varchar(300) NOT NULL,
  `uimage` varchar(200) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`userid`, `uname`, `uemailid`, `password`, `ucontactno`, `uaddress`, `uimage`, `RegDate`) VALUES
(8, 'ved', 'ved@g.com', '136f951362dab62e64eb8e841183c2a9', '987654321', '', 'user.png', '2019-08-14 13:43:37'),
(10, 'ved', 'v@g.com', '29e0461b02c078c89c7b2ac0b29fbfaf', '987653321', 'Mapusa,Goa', 'user.png', '2019-10-18 04:39:20'),
(21, 'bb', 'b@b.c', '21ad0bd836b90d08f4cf640b4c298e7c', '7', '', 'user.png', '2019-11-13 11:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `cartid` int(11) NOT NULL,
  `userid` int(20) NOT NULL,
  `pid` int(20) NOT NULL,
  `quantity` int(20) NOT NULL,
  `dateofdelivery` varchar(50) NOT NULL,
  `cartstatus` int(20) NOT NULL,
  `deliverystatus` int(10) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_cart`
--

INSERT INTO `user_cart` (`cartid`, `userid`, `pid`, `quantity`, `dateofdelivery`, `cartstatus`, `deliverystatus`, `total`) VALUES
(71, 10, 35, 1, '17/10/2019', 1, 0, 87),
(72, 10, 41, 1, '16/10/2019', 1, 0, 25999);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatID`);

--
-- Indexes for table `contactusquery`
--
ALTER TABLE `contactusquery`
  ADD PRIMARY KEY (`queryid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `procategory`
--
ALTER TABLE `procategory`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`cartid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `contactusquery`
--
ALTER TABLE `contactusquery`
  MODIFY `queryid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `procategory`
--
ALTER TABLE `procategory`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `userid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
