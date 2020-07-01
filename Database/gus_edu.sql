-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2020 at 07:51 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gus_edu`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `eid` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `enq_comment` text NOT NULL,
  `enquired_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiries`
--

INSERT INTO `enquiries` (`eid`, `first_name`, `last_name`, `email`, `enq_comment`, `enquired_on`) VALUES
(1, 'priyatam', 'annam', 'priyatamannam@yahoo.com', 'Hi this is just an enquiry', '2020-07-01 05:44:42'),
(2, 'priya', 'annam', 'priya@gmail.com', 'Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing Testing ', '2020-07-01 05:44:42'),
(3, 'test', 'testing', 'testing@gmail.com', 'Hi testing', '2020-07-01 05:46:08'),
(4, 'lorem', 'ipsum', 'lorem@ipsum.com', ' is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ', '2020-07-01 05:46:08'),
(5, 'sample', 'text', 'sample@text.com', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', '2020-07-01 05:47:40'),
(6, 'test1', 'testing1', 'testing1@gmail.com', 'Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia', '2020-07-01 05:47:40'),
(7, 'GUS', 'Education', 'gus@education.com', 'It is expected that you would create a single PHP file for this hypothetical example (i.e. not install a full CMS/framework). It is also expected that you will be mindful that the page looks nice on a mobile as well as desktop as well as avoiding page bloat where possible (i.e. an appreciation of web page speed).', '2020-07-01 05:49:44'),
(8, 'madhuri', 'singh', 'madhuri.singh@guseducationindia.com', 'Imagine the following hypothetical example. The University you work for have just released a new MBA course and the Admissions team want you to create a web page where they can see details of the enquiries they have received for the course. The Marketing team provide you with the PDF file to replicate in HTML and CSS. You should use PHP and MySQL to retrieve and display the enquiries. The Admissions team member should be able to click on a user name in the table to then read the users enquiry. The enquiries should be ordered by newest first.\r\n\r\n', '2020-07-01 05:50:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`eid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
