-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 03, 2023 at 04:46 AM
-- Server version: 10.3.38-MariaDB-log
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caringsoulshomec_sgbv`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(11) NOT NULL,
  `name_initials` varchar(50) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `uic` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age_group` varchar(10) NOT NULL,
  `duty_station` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `is_referred` int(11) NOT NULL DEFAULT 0,
  `service_given` varchar(100) NOT NULL,
  `referral` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `name_initials`, `dob`, `uic`, `gender`, `age_group`, `duty_station`, `district`, `user_id`, `remark`, `is_referred`, `service_given`, `referral`, `status`, `created_at`, `updated_at`) VALUES
(1, '', '', '', 'Female', '30-35', 'MASAKA POLICE II', 'MASAKA', 1, 'Test Data', 1, 'EC', 'KAKO POLICE STATION', 1, '2023-02-15 17:03:13', '2023-03-02 06:12:08'),
(2, '', '', '', 'Female', '20-25', 'KYANAMUKAAKA H/C IV', 'Masaka', 2, 'Test', 1, 'HTS testing', 'KAKO POLICE STATION', 1, '2023-02-16 11:15:10', '2023-02-28 10:40:43'),
(3, '', '', '', 'Male', '15 -19', 'KYANAMUKAAKA H/C IV', 'MASAKA', 2, 'testing ', 1, 'HTS testing', 'MASAKA POLICE STATION', 0, '2023-02-21 01:58:40', '0000-00-00 00:00:00'),
(4, '', '', '', 'Male', '15 -19', 'KYANAMUKAAKA H/C IV', 'MASAKA', 2, '', 1, 'Emergency Contraceptives', 'BUKOTO POLICE STATION', 0, '2023-02-21 02:00:10', '0000-00-00 00:00:00'),
(5, '', '', '', 'Male', '20 - 24', 'KYANAMUKAAKA H/C IV', 'MASAKA', 2, '', 1, 'Emergency Contraceptives', 'BUKOTO POLICE STATION', 0, '2023-02-21 02:05:01', '0000-00-00 00:00:00'),
(6, '', '', '', 'Female', '20 - 24', 'KYANAMUKAAKA H/C IV', 'MASAKA', 2, '', 1, 'PEP', 'BUKOTO POLICE STATION', 0, '2023-02-21 02:05:33', '0000-00-00 00:00:00'),
(7, '', '', '', 'Male', '20 -25', 'Kawala HC IV', 'Kampala', 3, 'na', 1, 'EC', 'Masaka', 0, '2023-02-23 13:20:23', '0000-00-00 00:00:00'),
(8, 'HT', '1987-07-27', 'HT/1987-07-27', 'Female', '45 -49', 'KAKO POLICE STATION', 'MASAKA', 3, '', 1, 'Emergency Contraceptives', 'MASAKA POLICE II', 1, '2023-02-23 13:33:25', '2023-03-02 13:04:45'),
(9, '', '', '', 'Male', '50 ', 'KAKO POLICE STATION', 'MASAKA', 3, 'na', 1, 'Trama Counseling', 'KYANAMUKAAKA H/C IV', 0, '2023-02-23 13:38:57', '0000-00-00 00:00:00'),
(10, '', '', '', 'Male', '25 - 29', 'Luweero Hospital', 'Mubende', 16, '', 1, 'PEP', 'Kasambya Police Station', 0, '2023-02-23 14:06:22', '0000-00-00 00:00:00'),
(11, '', '', '', 'Female', '15 -19', 'Kassanda Health Centre 1V', 'Mubende', 14, '', 1, 'Trama Counseling', 'Kasambya Police Station', 1, '2023-02-23 14:07:39', '2023-02-23 14:09:05'),
(12, '', '', '', 'Female', '35 -39', 'KAKO POLICE STATION', 'MASAKA', 3, 'na', 1, 'Emergency Contraceptives', 'KAMULEGU H/CIII', 0, '2023-02-28 10:37:43', '0000-00-00 00:00:00'),
(13, '', '', '', 'Male', '30 - 34', 'MASAKA POLICE II', 'MASAKA', 1, 'na', 1, 'HTS testing', 'KYANAMUKAAKA H/C IV', 0, '2023-03-02 06:10:34', '0000-00-00 00:00:00'),
(14, '', '', '', 'Female', '20 - 24', 'KAKO POLICE STATION', 'MASAKA', 3, '', 1, 'HTS testing', 'KYANAMUKAAKA H/C IV', 0, '2023-03-02 06:25:26', '0000-00-00 00:00:00'),
(15, 'MS', '2015-01-30', 'na', 'Male', '10 -14', 'MASAKA POLICE II', 'MASAKA', 1, 'na', 1, 'PEP', 'MASAKA POLICE STATION', 0, '2023-03-02 12:37:20', '0000-00-00 00:00:00'),
(16, 'FG', '1983-07-15', 'FG/1983-07-15', 'Female', '30 - 34', 'MASAKA POLICE II', 'MASAKA', 1, '', 1, 'Emergency Contraceptives', 'KYESIIGA POLICE', 0, '2023-03-02 12:43:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `code`, `created_at`) VALUES
(1, 'Masaka', 'MAK', '2023-02-15 06:58:23'),
(2, 'Kampala', 'MAK', '2023-02-15 06:59:30'),
(3, 'Wakiso', 'WAK', '2023-02-15 06:59:30');

-- --------------------------------------------------------

--
-- Table structure for table `duty_station`
--

CREATE TABLE `duty_station` (
  `id` int(11) NOT NULL,
  `station_name` varchar(100) NOT NULL,
  `station_type` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `duty_station`
--

INSERT INTO `duty_station` (`id`, `station_name`, `station_type`, `district_id`) VALUES
(1, 'MASAKA POLICE II', 'Facility', 1),
(2, 'BUKOTO H/C III', 'Facility', 1),
(3, 'KYESIIGA POLICE', 'Police', 1),
(4, 'KYESIIGA POLICE', 'Police', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sgbv_case`
--

CREATE TABLE `sgbv_case` (
  `id` int(11) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age_group` varchar(10) NOT NULL,
  `duty_station_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `is_referred` int(11) NOT NULL DEFAULT 0,
  `service_given` varchar(100) NOT NULL,
  `referral` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sgbv_case`
--

INSERT INTO `sgbv_case` (`id`, `gender`, `age_group`, `duty_station_id`, `district_id`, `user_id`, `remark`, `is_referred`, `service_given`, `referral`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Female', '30-35', 1, 1, 1, 'Test Data', 1, 'EC', 'Masaka', 0, '2023-02-15 17:03:13', '0000-00-00'),
(2, 'Female', '20-25', 1, 1, 1, 'Test', 1, 'HTS testing', 'KAKO POLICE STATION', 0, '2023-02-16 11:15:10', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `duty_station` varchar(100) NOT NULL,
  `duty_station_type` int(11) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `district` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `contact`, `duty_station`, `duty_station_type`, `designation`, `username`, `password`, `district`, `is_active`, `created_at`, `created_by`) VALUES
(1, 'AYO BOB', '256701146796', 'MASAKA POLICE II', 0, 'SGBV FOCAL PERSON', 'abob', 'Admin123', 'MASAKA', 1, '2023-02-15 06:53:27', 1),
(2, 'Mwanje Musa', '256773146796', 'KYANAMUKAAKA H/C IV', 0, 'SGBV FOCAL PERSON', 'musa', 'Admin123', 'MASAKA', 0, '2023-02-17 04:00:48', 1),
(3, 'Semujju David', '256773146796', 'KAKO POLICE STATION', 1, 'SGBV FOCAL PERSON', 'dsemujju', 'Admin123', 'MASAKA', 1, '2023-02-17 14:22:11', 1),
(4, 'Ajilo Getrude', '784372970', 'Kisenyi HC', 0, 'Counselor', 'agetrude', 'Admin123', 'Kampala', 0, '2023-02-20 23:48:01', 1),
(5, 'Fred Mbuga', '753983343', 'Kawaala HC', 0, 'Counselor', 'fmbuga', 'Admin123', 'Kampala', 0, '2023-02-20 15:53:14', 1),
(6, 'Sarah Kamya', '772485989', 'Kawempe NRH', 0, 'Nursing Officer', 'skamya', 'Admin123', 'Kampala', 0, '2023-02-20 16:06:42', 1),
(7, 'Agabo Harriet', '785671391', 'Old Kampala Police Post', 1, 'ASP Police', 'aherriet', 'Admin123', 'Kampala', 0, '2023-02-20 16:06:42', 1),
(8, 'Kyatuhaire Betty', '0772605842/0752605842', 'Kawaala Police Post', 1, 'OC CID', 'bkyatuhaire', 'Admin123', 'Kamapala', 0, '2023-02-20 16:10:16', 1),
(9, 'Sophie Nambaa', '782308866', 'Kawempe Police Station', 1, 'CFPU ', 'snambaa', 'Admin123', 'Kampala', 0, '2023-02-20 16:10:16', 1),
(10, 'Daisy Kisakye Nakiyimba', '752222244', 'Nsangi HC ', 0, 'Counselor', 'dkisakye', 'Admin123', 'Wakiso', 0, '2023-02-20 16:13:02', 1),
(11, 'Nabakka Edith', '703259139', 'Kirra HC', 0, 'Counselor', 'enabakka', 'Admin123', 'Wakiso', 0, '2023-02-20 16:13:02', 1),
(12, 'Agaba Tonny Gibson', '701227566', 'Nsangi Police Station', 1, 'OC CID', 'agibson', 'Admin123', 'Wakiso', 0, '2023-02-20 16:15:56', 1),
(13, 'Alupo ', '782396391', 'Kira Police', 1, 'CFPU', 'alupo', 'Admin123', 'Wakiso', 0, '2023-02-20 16:15:56', 1),
(14, 'Sentongo Emanuel', '700321255', 'Kassanda Health Centre 1V', 0, 'SGBV FOCAL PERSON', 'esentongo', 'Admin123', 'Mubende', 0, '2023-02-20 16:20:23', 1),
(15, 'Gwaliwa Wilbroad', '759730099', 'Kasambya Health Centre 1V', 0, 'SGBV FOCAL PERSON', 'wgwaliwa', 'Admin123', 'Mubende', 0, '2023-02-20 16:20:23', 1),
(16, 'Nalugo Christine', '776445766', 'Luweero Hospital', 0, 'SGBV FOCAL PERSON', 'cnalugo', 'Admin123', 'Mubende', 0, '2023-02-20 16:22:16', 1),
(17, 'Dr Mukaasa Wilson', '776223388', 'Kalangala Health Centre IV', 0, 'SGBV FOCAL PERSON', 'wmukaasa', 'Admin123', 'Mubende', 0, '2023-02-20 16:22:16', 1),
(18, 'Nakibuuka Joweria', '702373498', 'Kassanda Health Centre 1V', 0, 'SGBV FOCAL PERSON', 'jnakibuuka', 'Admin123', 'Mubende', 0, '2023-02-20 16:24:14', 1),
(19, 'Nakibuuka Joweria', '702373498', 'Kasambya Police Station', 1, 'ASP Police', 'jnaki', 'Admin123', 'Mubende', 0, '2023-02-20 16:24:14', 1),
(20, 'Mary Taani', '782339104', 'Luweero Police Station', 1, 'ASP Police', 'mtaani', 'Admin123', 'Mubende', 0, '2023-02-20 16:26:11', 1),
(21, 'Nabiryo Robinah', '778843334', 'Kalagala Police Station', 1, 'ASP Police', 'rnabiryo', 'Admin123', 'Mubende', 0, '2023-02-20 16:26:11', 1),
(22, 'Faith Nantongo', '704985937', 'GBV Shelter', 2, 'Legal cousel', 'fnantongo', 'Admin123', 'Wakiso', 0, '2023-02-20 16:29:34', 1),
(23, 'Aine Mbabazi Maria', '700321255', 'Kassanda Health Centre 1V', 0, 'GBV FOCAL PERSON', 'ambabazi', 'Admin123', 'Wakiso', 0, '2023-02-20 16:29:34', 1),
(24, 'Nabuma Norah', '0706900649', 'Kibalinga HC III ', 0, 'SGBV FOCAL PERSON', 'nnorah', 'Admin123', 'Mubende', 1, '2023-02-23 14:32:14', 1),
(25, 'Asasira Juliet', '0706103231', 'Nabingola HC III', 0, 'SGBV FOCAL PERSON', 'jasasira', 'Admin123', 'Mubende', 1, '2023-02-23 14:32:14', 1),
(26, 'Getrude Nabakembo', '0754409469', 'Madudu HC III', 0, 'SGBV FOCAL PERSON', 'gnabakembo', 'Admin123', 'Mubende', 1, '2023-02-23 14:37:29', 1),
(27, 'Omoding Sam', '0773810311', 'Kitenga Police Station', 1, 'SGBV FOCAL PERSON', 'somoding', 'Admin123', 'Mubende', 1, '2023-02-23 15:04:44', 1),
(28, 'Majembere Gerald', '078888992', 'Kibalinga Police Station', 1, 'SGBV FOCAL PERSON', 'gmajembere', 'Admin123', 'Mubende', 1, '2023-02-23 15:04:44', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `duty_station`
--
ALTER TABLE `duty_station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sgbv_case`
--
ALTER TABLE `sgbv_case`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `duty_station`
--
ALTER TABLE `duty_station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sgbv_case`
--
ALTER TABLE `sgbv_case`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
