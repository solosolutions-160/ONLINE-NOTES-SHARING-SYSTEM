-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 18, 2023 at 05:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `file_id` int(11) NOT NULL,
  `file_name` varchar(225) NOT NULL,
  `file_description` text NOT NULL,
  `file_type` varchar(225) NOT NULL,
  `file_uploader` varchar(225) NOT NULL,
  `file_uploaded_on` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file_uploaded_to` varchar(225) NOT NULL,
  `file` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL DEFAULT 'not approved yet'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`file_id`, `file_name`, `file_description`, `file_type`, `file_uploader`, `file_uploaded_on`, `file_uploaded_to`, `file`, `status`) VALUES
(72, 'DBMS PROGRAM', 'DBMS Slip Solutions For FYBBA[CA]', 'pdf', 'tejasshinde2803', '2023-03-05 19:46:00', 'SYBBA[CA]', '661319.pdf', 'approved'),
(73, 'java', 'Java', 'pdf', 'root', '2023-03-11 08:43:40', 'SYBBA[CA]', '845061.pdf', 'approved'),
(74, 'C++', 'Programs on c++', 'pdf', 'tejasshinde2803', '2023-03-16 10:21:46', 'FYBBA[CA]', '362695.pdf', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL,
  `about` varchar(300) NOT NULL DEFAULT 'N/A',
  `role` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `token` varchar(225) NOT NULL,
  `gender` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `course` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'profile.jpg',
  `joindate` varchar(225) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `about`, `role`, `email`, `token`, `gender`, `password`, `course`, `image`, `joindate`) VALUES
(1, 'root', 'ADMIN TEJAS', 'Student', 'admin', 'tejasshinde028@gmail.com', '', 'Male', '$2y$10$UExd.f8vQXogrZELXF8KGulQJKUn32p8x4B5SVQ7V/D6.mrSAkAjW', 'SYBBA[CA]', '786594.jpg', '27-02-2023'),
(46, 'tejasshinde2803', 'Tejas Shinde', 'N/A', 'teacher', 'shindetejas2803@gmail.com', '', 'Male', '$2y$10$c22B74bxjQCEFOHtYewGweJa.nOOO.16yAx9bYSIQAG0Mi0j2OsiS', 'FYBBA[CA]', 'profile.jpg', 'March 16, 2023'),
(43, 'omkar7057', 'OMKAR HOLE', 'N/A', 'student', 'omkarhole7057@gmail.com', '', 'Male', '$2y$10$10aLJ8CXWtzJ3ZNaZ14DkeeydjUIBmHE04h7YkkMZoJwRlZF9NBK.', 'SYBBA[CA]', 'profile.jpg', 'March 5, 2023'),
(44, 'nehashinde', 'NEHA RUPESH SHINDE', 'N/A', 'teacher', 'nehashinde420799@gmail.com', '', 'Female', '$2y$10$QIxWEZh8QH6zpWnibnJhVOCFZXvoMYHRu.EjXKH/SeUjW3.2SXuZa', 'FYBBA[CA]', 'profile.jpg', 'March 6, 2023'),
(45, 'root', 'mandhare vaishnavi mahesh', 'N/A', 'student', 'vaishnavi@gmail.com', '', 'Female', '$2y$10$Y0SPREQJUvNCU4C1R5MbqusjccrnrxagyiaTboSi90eLYf8cAXGoK', 'SYBBA[CA]', 'profile.jpg', 'March 11, 2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
