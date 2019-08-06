-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2019 at 10:49 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'rudra', 'admin123', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'Dentist', 1, 1, 500, '2016-12-31', '09:25', '2017-01-01 00:29:02', 1, 0, ''),
(2, 'Homeopath', 4, 5, 700, '2017-01-11', '14:10', '2017-01-07 08:02:58', 0, 1, ''),
(3, 'Homeopath', 4, 7, 700, '2019-03-26', '3:45 PM', '2019-03-25 09:11:49', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj@gmail.com', 'anuj@123', '2016-12-29 06:25:37', '04-01-2017 01:27:51 PM'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'saritha@123', '2016-12-29 06:51:51', ''),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'nitesh@123', '2017-01-07 07:43:35', ''),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'vijay@123', '2017-01-07 07:45:09', ''),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'sanjeev@123', '2017-01-07 07:47:07', ''),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'amrita@123', '2017-01-07 07:52:50', ''),
(7, 'Demo test', 'abc ', 'xyz', '200', 852888888, 'test@demo.com', 'abc@1234', '2017-01-07 08:08:58', ''),
(8, 'Gynecologist/Obstetrician', 'Suresha', 'Bangalore', '800', 7022014156, 'sureshallu52@gmail.com', 'suresh@123', '2019-03-25 09:16:56', ''),
(9, 'Dermatologist', 'Ajay Rao', 'Vijayanagara', '500', 8020505400, 'ajay@gmail.com', 'ajay@123', '2019-03-25 09:18:55', ''),
(10, 'Ear-Nose-Throat (Ent) Specialist', 'Althaf S', 'Channapattana', '1000', 9876543210, 'althaf@gmail.com', 'althaf@123', '2019-03-25 09:20:20', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'sarita@gmail.com', 0x30000000000000000000000000000000, '2017-01-06 05:53:31', '', 1),
(2, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:07', '', 0),
(3, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:37', '06/01/2017 07:36:45', 1),
(4, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:41:33', '12:11:46', 1),
(5, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:55:16', '06-01-2017 12:27:47 PM', 1),
(6, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:12', '', 0),
(7, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:42', '', 0),
(8, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:55', '', 0),
(9, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:05:54', '07-01-2017 01:36:28 PM', 1),
(10, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 07:08:37', '', 0),
(11, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:27:36', '', 0),
(12, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:30:58', '', 0),
(13, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:31:51', '', 0),
(14, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:33:32', '', 0),
(15, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:34:22', '', 0),
(16, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:35:17', '', 0),
(17, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:35:33', '', 0),
(18, 0, 'abc', 0x3a3a3100000000000000000000000000, '2019-03-25 08:37:24', '', 0),
(19, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:37:56', '', 0),
(20, 0, 'rudra', 0x3a3a3100000000000000000000000000, '2019-03-25 08:38:14', '', 0),
(21, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:38:32', '', 0),
(22, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:41:04', '25-03-2019 02:12:29 PM', 1),
(23, 0, 'wrfrf', 0x3a3a3100000000000000000000000000, '2019-03-25 08:43:15', '', 1),
(24, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:44:17', '', 0),
(25, 0, 'Anuj', 0x3a3a3100000000000000000000000000, '2019-03-25 08:46:06', '', 0),
(26, 1, 'anuj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 08:49:29', '25-03-2019 02:19:36 PM', 1),
(27, 1, 'anuj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 08:50:05', '25-03-2019 02:20:10 PM', 1),
(28, 1, 'anuj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 08:54:09', '25-03-2019 02:24:14 PM', 1),
(29, 1, 'anuj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 08:55:37', '25-03-2019 02:25:41 PM', 1),
(30, 1, 'anuj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 09:00:48', '25-03-2019 02:36:19 PM', 1),
(31, 0, 'pushpa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 09:06:30', '', 0),
(32, 0, 'pushpa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 09:06:47', '', 0),
(33, 1, 'anuj@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 09:07:03', '25-03-2019 02:38:01 PM', 1),
(34, 4, 'vijay@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 09:12:52', '25-03-2019 02:43:17 PM', 1),
(35, 4, 'vijay@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 09:21:27', '25-03-2019 02:51:47 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', ''),
(2, 'General Physician', '2016-12-28 06:38:12', ''),
(3, 'Dermatologist', '2016-12-28 06:38:48', ''),
(4, 'Homeopath', '2016-12-28 06:39:26', ''),
(5, 'Ayurveda', '2016-12-28 06:39:51', ''),
(6, 'Dentist', '2016-12-28 06:40:08', ''),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', ''),
(9, 'Demo test', '2016-12-28 07:37:39', '28-12-2016 01:28:42 PM'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '07-01-2017 01:38:04 PM');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(15, 0, 'rudra', 0x3a3a3100000000000000000000000000, '2019-03-25 07:47:54', '', 0),
(16, 7, 'pushpa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 08:52:30', '25-03-2019 02:22:45 PM', 1),
(17, 7, 'pushpa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 08:56:30', '', 1),
(18, 7, 'pushpa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 08:58:21', '', 1),
(19, 7, 'pushpa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 09:08:34', '25-03-2019 02:42:06 PM', 1),
(20, 0, 'pushpa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 09:22:12', '', 0),
(21, 7, 'pushpa@gmail.com', 0x3a3a3100000000000000000000000000, '2019-03-25 09:22:25', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(6, 'Suresh N', 'Mattikere', 'Bangalore', 'male', 'sureshallu52@gmail.com', 'd73a6b34231b19834c46c2a94d4cdab5', '2019-03-25 07:17:26', ''),
(7, 'Pushpa', 'Kamakshi Palya', 'Bangalore', 'female', 'pushpa@gmail.com', '4d664cdcb171ab7a5e518edd45886b0e', '2019-03-25 07:18:40', ''),
(8, 'Pooja', 'Deepanjalinagar', 'Bangalore', 'male', 'pooja@gmail.com', 'b566434df17d0662da5b99d24d060334', '2019-03-25 07:19:36', ''),
(9, 'Thipperudra B', 'Bukkasagar', 'Hospet', 'male', 'thipperudrab5@gmail.com', 'd4ab9053b37c02e58158b9b5ae0166b0', '2019-03-25 07:20:43', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
