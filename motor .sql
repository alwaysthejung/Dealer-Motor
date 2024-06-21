-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21 Jun 2024 pada 21.53
-- Versi Server: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `motor`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `motors`
--

CREATE TABLE `motors` (
  `MotorID` int(11) NOT NULL,
  `JenisMotor` varchar(255) NOT NULL,
  `Harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `motors`
--

INSERT INTO `motors` (`MotorID`, `JenisMotor`, `Harga`) VALUES
(1, 'Grand Filano Hybrid Connected', 'Rp. 36.573.000'),
(2, 'Aerox', 'Rp. 30.000.000'),
(3, 'Vino', 'Rp. 15.000.000'),
(4, 'beat', 'Rp. 6.000.000'),
(5, 'mio', 'Rp. 18.505.000'),
(6, 'Freego', 'Rp. 10.000.000'),
(7, 'beat street', 'Rp. 15.000.000'),
(8, 'Harpindo', 'Rp. 15.000.000'),
(9, 'Yamaha All New XSR 155', 'Rp. 40.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `NomorTelepon` varchar(255) NOT NULL,
  `JenisMotor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `NomorTelepon`, `JenisMotor`) VALUES
(2, 'nisa', '082113663390', 'Aerox'),
(3, 'distimun', '085319310175', 'Aerox'),
(4, 'nisa', '082113663390', 'Vino'),
(5, 'khairunnisa', '082113663390', 'Aerox'),
(6, 'khairunnisa', '082113663390', 'Aerox'),
(7, 'khairunnisa', '082113663390', 'Aerox'),
(8, 'khairunnisa', '082113663390', 'Grand Filano Hybrid Connected'),
(9, 'khairunnisa', '082113663390', 'beat street'),
(10, 'bombom', '0895358491285', 'Aerox'),
(11, 'nisa', '082113663390', 'Grand Filano Hybrid Connected'),
(12, 'nisa', '082113663390', 'Grand Filano Hybrid Connected'),
(13, 'nisa', '082113663390', 'Grand Filano Hybrid Connected'),
(14, 'nisa', '082113663390', 'Vino'),
(15, 'nisa', '082113663390', 'Aerox'),
(16, 'nisa', '082113663390', 'Aerox'),
(17, 'nisa', '082113663390', 'Aerox'),
(18, 'nisa', '082113663390', 'Aerox'),
(19, 'nisa', '082113663390', 'Aerox'),
(20, 'bu dinda', '082260060509', 'Freego'),
(21, 'nisa', '082113663390', 'Aerox'),
(22, 'nisa', '082113663390', 'Aerox'),
(23, 'nisa', '082113663390', 'Aerox'),
(24, 'nisa', '082113663390', 'Aerox'),
(25, 'nisa', '082113663390', 'Aerox'),
(26, 'nisa', '082113663390', 'Aerox'),
(27, 'nisa', '082113663390', 'Vino'),
(28, 'nisa', '085288377779', 'Aerox'),
(29, 'nisa', '085288377779', 'Aerox'),
(30, 'nisa', '085288377779', 'Aerox'),
(31, 'nisa', '082113663390', 'Aerox');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`Id`, `Username`, `Name`, `Password`) VALUES
(1, 'nisa', 'nisa', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `motors`
--
ALTER TABLE `motors`
  ADD PRIMARY KEY (`MotorID`),
  ADD KEY `JenisMotor` (`JenisMotor`) USING BTREE;

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`),
  ADD KEY `JenisRumah` (`JenisMotor`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `motors`
--
ALTER TABLE `motors`
  MODIFY `MotorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `PelangganID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD CONSTRAINT `pelanggan_ibfk_1` FOREIGN KEY (`JenisMotor`) REFERENCES `motors` (`JenisMotor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
