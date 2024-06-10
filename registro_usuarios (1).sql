-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 02:19 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registro_usuarios`
--

-- --------------------------------------------------------

--
-- Table structure for table `registro_usuarios`
--

CREATE TABLE `registro_usuarios` (
  `iD` int(11) NOT NULL COMMENT '10 DEL 1 DEL USUARIO',
  `nombre` varchar(50) NOT NULL COMMENT 'nombre del usuario',
  `email` varchar(100) NOT NULL COMMENT 'email del usuario',
  `contraseña` varchar(100) NOT NULL COMMENT 'contraseña del usuario',
  `confirmar contraseña` varchar(100) NOT NULL COMMENT ' confirmacion de contraseña del usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registro_usuarios`
--
ALTER TABLE `registro_usuarios`
  ADD PRIMARY KEY (`iD`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registro_usuarios`
--
ALTER TABLE `registro_usuarios`
  MODIFY `iD` int(11) NOT NULL AUTO_INCREMENT COMMENT '10 DEL 1 DEL USUARIO';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
