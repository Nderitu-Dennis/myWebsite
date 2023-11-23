-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 23, 2023 at 12:54 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Customer`
--

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `surname` text NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `radbtn` text NOT NULL,
  `region` tinytext NOT NULL,
  `textarea` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`firstname`, `lastname`, `surname`, `phone_number`, `email`, `radbtn`, `region`, `textarea`) VALUES
('jane', 'jan', 'ju', '00000000001', 'jane@gmail.com', 'Building/construction', 'Nairobi', '					\r\n					'),
('dennis', 'nderitu', ',maz', '0000000000123', 'kiokolacazete@gmail.com', 'Metal work', 'Western', '					\r\n					kj'),
('allan', 'turing', 'automata', '1122334455667788', 'allan@gmail.com', 'Building/construction', 'other', '					\r\n					niko majuu bana'),
('mazoluo', 'yeye', '', '333333333333', 'mazindere@gmail.com', 'Metal work', 'Nyanza', '					\r\n					omera'),
('janet', 'wairimu', 'ngure', '99999999977767600', 'nderitudenis87@gmail.com', 'Metal work', 'Central', '		yu'),
('janet', 'wairimu', 'ngure', '9999999999999', 'nderitudenis87@gmail.com', 'Metal work', 'Central', '					\r\n					bting teas'),
('janet', 'wairimu', 'ngure', '999999999999900', 'nderitudenis87@gmail.com', 'Metal work', 'Central', '					\r\nbting teas');

-- --------------------------------------------------------

--
-- Stand-in structure for view `replly`
-- (See below for the actual view)
--
CREATE TABLE `replly` (
`firstname` text
,`lastname` text
,`surname` text
,`phone_number` varchar(20)
,`email` varchar(50)
,`radbtn` text
,`region` tinytext
,`textarea` text
);

-- --------------------------------------------------------

--
-- Structure for view `replly`
--
DROP TABLE IF EXISTS `replly`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `replly`  AS SELECT `enquiry`.`firstname` AS `firstname`, `enquiry`.`lastname` AS `lastname`, `enquiry`.`surname` AS `surname`, `enquiry`.`phone_number` AS `phone_number`, `enquiry`.`email` AS `email`, `enquiry`.`radbtn` AS `radbtn`, `enquiry`.`region` AS `region`, `enquiry`.`textarea` AS `textarea` FROM `enquiry` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`phone_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
