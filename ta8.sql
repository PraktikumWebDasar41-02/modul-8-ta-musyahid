-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2018 at 03:25 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta8`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(100) NOT NULL,
  `nama_belakang` varchar(100) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `hobi` varchar(50) NOT NULL,
  `genre_film` varchar(50) NOT NULL,
  `tempat_wisata` varchar(50) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `nama_depan`, `nama_belakang`, `nim`, `kelas`, `hobi`, `genre_film`, `tempat_wisata`, `tanggal_lahir`, `gambar`) VALUES
(1, 'M. MUSYAHID', 'ABROR', '6701174119', 'D3MI-41-02', 'BERMAIN DAN BERLARI', 'Horor, Anime', 'Bali, Lombok', '1998-12-28', 'IMG_9051 2 - Copy.jpg'),
(2, 'RIZSA EL ', 'AKBAR', '6701174115', 'D3MI-41-02', 'MAKAN DAN MINUM', 'Horor, Drama', 'Tanjung Selor, Jakarta', '1999-11-23', '1519233266796.jpg'),
(3, 'EMA', 'KUSWARI', '6701174133', 'D3IF-40-03', 'NGODING', 'Horor', 'Bali', '1997-12-23', 'WhatsApp Image 2018-10-10 at 15.42.011.jpg'),
(4, 'ABDURRAHMAN', 'WAHID', '9827272', 'D3IF-40-03', 'MANCING', 'Horor, Anime', 'Tanjung Selor', '1997-10-06', 'abror.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(6) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`) VALUES
(1, 'musyahid', 'androm', 'musyahid4@gmail.com'),
(2, 'emakuswari', 'ema123', 'emakuswari@gmail.com'),
(3, 'rizsa_el', 'risza1', 'rizsa@gmail.com'),
(4, 'abdurrahman', 'abdurr', 'abdurrahman@gmail.co');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data`
--
ALTER TABLE `data`
  ADD CONSTRAINT `fk_data` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
