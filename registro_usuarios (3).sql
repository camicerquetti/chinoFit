-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 08:21 PM
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
-- Table structure for table `ejercicios`
--

CREATE TABLE `ejercicios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `objetivo_id` int(11) DEFAULT NULL,
  `repeticiones_recomendadas` varchar(20) NOT NULL,
  `grupo_muscular` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ejercicios`
--

INSERT INTO `ejercicios` (`id`, `nombre`, `descripcion`, `objetivo_id`, `repeticiones_recomendadas`, `grupo_muscular`) VALUES
(1, 'Sentadilla libre', NULL, NULL, '8-12', 'Cuádriceps '),
(2, ' Sentadilla hack', NULL, NULL, '8-12', 'Cuádriceps'),
(3, 'Cuádriceps Prensa', NULL, NULL, '8-12', 'Cuádriceps'),
(4, ' Estocada en el lugar', NULL, NULL, '8-12', 'Cuádriceps'),
(5, ' Estocadas caminando', NULL, NULL, '8-12', 'Cuádriceps'),
(6, ' Sillon cuádriceps', NULL, NULL, '8-12', 'Cuádriceps'),
(7, 'Sentadilla búlgara paso corto', NULL, NULL, '8-12', 'Cuádriceps '),
(8, 'Sentadilla con mancuerna', NULL, NULL, '8-12', 'Cuádriceps '),
(9, ' Sentadilla isométrica', NULL, NULL, '8-12', 'Cuádriceps'),
(10, ' Sentadilla Smith', NULL, NULL, '8-12', 'Cuádriceps'),
(11, ' Peso muerto barra', NULL, NULL, '6-10', 'Femorales'),
(12, '¿ Peso muerto 1 pierna', NULL, NULL, '6-10', 'Femorales'),
(13, ' Peso muerto mancuerna', NULL, NULL, '6-10', 'Femorales'),
(14, ' Sentadilla sumo barra', NULL, NULL, '8-12', 'Femorales'),
(15, ' Sentadilla sumo mancuerna', NULL, NULL, '8-12', 'Femorales'),
(16, 'Prensa', NULL, NULL, '8-12', 'Femorales '),
(17, ' Sentadilla búlgara paso largo', NULL, NULL, '8-12', 'Femorales'),
(18, ' Camilla femorales', NULL, NULL, '10-15', 'Femorales'),
(19, ' Camilla femorales con mancuerna', NULL, NULL, '10-15', 'Femorales'),
(20, ' Press militar máquina Smith', NULL, NULL, '8-12', 'Hombros'),
(21, ' Press militar mancuernas', NULL, NULL, '8-12', 'Hombros'),
(22, ' Press militar barra', NULL, NULL, '8-12', 'Hombros'),
(23, ' Vuelos laterales mancuernas', NULL, NULL, '10-15', 'Hombros'),
(24, ' Vuelos frontal mancuernas', NULL, NULL, '10-15', 'Hombros'),
(25, ' Vuelos posteriores mancuernas', NULL, NULL, '10-15', 'Hombros'),
(26, ' Vuelos posteriores en polea', NULL, NULL, '10-15', 'Hombros'),
(27, ' Vuelos laterales en polea', NULL, NULL, '10-15', 'Hombros'),
(28, ' Vuelos frontales en polea', NULL, NULL, '10-15', 'Hombros'),
(29, ' Vuelos frontales disco', NULL, NULL, '10-15', 'Hombros'),
(30, ' Vuelos laterales en banco inclinado', NULL, NULL, '10-15', 'Hombros'),
(31, 'Pecho Press banco plano barra', NULL, NULL, '8-12', 'pecho'),
(32, ' Press banco plano mancuernas', NULL, NULL, '8-12', 'pecho'),
(33, ' Press banco inclinado barra', NULL, NULL, '8-12', 'pecho'),
(34, ' Press banco inclinado mancuerna', NULL, NULL, '8-12', 'Pecho'),
(35, 'Press superior en polea', NULL, NULL, '8-12', 'Pecho '),
(36, 'Press inferior en polea', NULL, NULL, '8-12', 'Pecho '),
(37, ' Fondo en paralelas', NULL, NULL, 'Al fallo muscular', 'Pecho'),
(38, 'Pecho Peck deck', NULL, NULL, '8-12', 'Pecho'),
(39, 'Remo prono barra', NULL, NULL, '8-12', 'Espalda '),
(40, 'Remo supino barra', NULL, NULL, '8-12', 'Espalda '),
(41, ' Remo 1 mano mancuerna', NULL, NULL, '8-12', 'Espalda '),
(42, ' Remo 1 mano polea baja', NULL, NULL, '8-12', 'Espalda '),
(43, ' Remo 1 mano pelea alta', NULL, NULL, '8-12', 'Espalda '),
(44, ' Remo polea alta al pecho agarre prono', NULL, NULL, '8-12', 'Espalda '),
(45, 'Remo bajo polea agarre prono', NULL, NULL, '8-12', 'Espalda '),
(46, ' Remo polea baja soga', NULL, NULL, '8-12', 'Espalda '),
(47, ' Remo polea alta agarre neutro', NULL, NULL, '8-12', 'Espalda '),
(48, ' Remo polea alta agarre supino', NULL, NULL, '8-12', 'Espalda '),
(49, ' Pullover mancuerna', NULL, NULL, '8-12', 'Espalda '),
(50, ' Pullover polea alta', NULL, NULL, '8-12', 'Espalda '),
(51, ' Remo en T', NULL, NULL, '8-12', 'Espalda'),
(52, 'Curl biceps barra', NULL, NULL, '8-12', 'Biceps '),
(53, 'Curl bíceps polea', NULL, NULL, '8-12', 'Biceps '),
(54, ' Curl bíceps mancuerna', NULL, NULL, '8-12', 'Biceps '),
(55, ' Curl bíceps mesero', NULL, NULL, '8-12', 'Biceps '),
(56, ' Doble biceps polea', NULL, NULL, '8-12', 'Biceps '),
(57, ' Curl bíceps banco escott', NULL, NULL, '8-12', 'Biceps '),
(58, ' Curl de bíceps 21', NULL, NULL, '8-12', 'Biceps '),
(59, ' Patada tríceps mancuerna', NULL, NULL, '8-12', 'Tríceps'),
(60, 'Jalon tríceps polea soga', NULL, NULL, '8-12', 'Tríceps'),
(61, ' Jalon tríceps agarre recto', NULL, NULL, '8-12', 'Tríceps'),
(62, ' Jalon tríceps agarre prono', NULL, NULL, '8-12', 'Tríceps'),
(63, ' Press frances en banco', NULL, NULL, '8-12', 'Tríceps'),
(64, ' Fondo paralelas', NULL, NULL, 'Al fallo muscular', 'Tríceps'),
(65, 'Fondo con peso', NULL, NULL, 'Al fallo muscular', 'Tríceps'),
(66, ' Gemelos en prensa', NULL, NULL, '12-15', 'Gemelos'),
(67, 'Gemelos Gemelos en maquina Smith', NULL, NULL, '12-15', 'Gemelos'),
(68, 'Gemelos con propio peso', NULL, NULL, 'Al fallo muscular', 'Gemelos'),
(69, ' Hip thrust libre', NULL, NULL, '10-15', 'Gluteos'),
(70, ' Hip thrust máquina', NULL, NULL, '10-15', 'Gluteos'),
(71, ' Gluteo máquina sentado', NULL, NULL, '10-15', 'Gluteos'),
(72, 'Patada lateral cruzada', NULL, NULL, '10-15', 'Gluteos'),
(73, ' Patada pierna flexionada', NULL, NULL, '10-15', 'Gluteos'),
(74, 'Gluteos Patada recta', NULL, NULL, '10-15', 'Gluteos'),
(75, ' Subida al cajón', NULL, NULL, '8-12', 'Gluteos'),
(76, ' Prensa', NULL, NULL, '8-12', 'Gluteos'),
(77, ' Bueno días', NULL, NULL, '8-12', 'Gluteos'),
(78, ' Sumo con mancuerna', NULL, NULL, '8-12', 'Gluteos'),
(79, ' Puente 1 pierna', NULL, NULL, '8-12', 'Gluteos'),
(80, ' Puente normal', NULL, NULL, '8-12', 'Gluteos'),
(81, ' Crunches', NULL, NULL, '15-20', ' ABS'),
(82, 'Plancha', NULL, NULL, '30-60 segundos', ' ABS'),
(83, ' ABS Elevaciones de piernas colgado', NULL, NULL, '15-20', ' ABS'),
(84, ' Rotación de torso con mancuerna', NULL, NULL, '10-15 (cada lado)', ' ABS'),
(85, ' Curl bíceps mancuerna', NULL, NULL, '8-12', 'Biceps');

-- --------------------------------------------------------

--
-- Table structure for table `formulario`
--

CREATE TABLE `formulario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `mensaje` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `objetivos`
--

CREATE TABLE `objetivos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `objetivos`
--

INSERT INTO `objetivos` (`id`, `nombre`) VALUES
(1, 'ganancia_musculo'),
(2, 'Perdida_peso'),
(4, 'resistencia'),
(3, 'tonificar');

-- --------------------------------------------------------

--
-- Table structure for table `password`
--

CREATE TABLE `password` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` varchar(200) NOT NULL,
  `codigo` int(5) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiration_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `password`
--

INSERT INTO `password` (`id`, `email`, `token`, `codigo`, `fecha`, `expiration_time`) VALUES
(1, '', '?\0>i\"', 3859, '2024-06-09 03:29:48', NULL),
(2, 'camilacerquetti18@gmail.com', 'K??K9', 1870, '2024-06-09 03:29:51', NULL),
(3, '', '	H?<?', 8440, '2024-06-09 03:29:58', NULL),
(4, 'camilacerquetti18@gmail.com', '?/^', 5789, '2024-06-09 03:30:27', NULL),
(5, 'camilacerquetti18@gmail.com', '???2?', 9192, '2024-06-09 03:31:45', NULL),
(6, 'camilacerquetti18@gmail.com', '12i?', 8691, '2024-06-09 03:34:09', NULL),
(7, 'camilacerquetti18@gmail.com', 'L<?e?', 4846, '2024-06-09 03:35:07', NULL),
(8, 'camilacerquetti18@gmail.com', ';e?	?', 1598, '2024-06-09 03:37:28', NULL),
(9, 'camilacerquetti@abc.gob.ar', 'eT\Zh?', 8218, '2024-06-09 03:37:48', NULL),
(10, 'camilacerquetti@abc.gob.ar', '??0a', 9768, '2024-06-09 03:38:38', NULL),
(11, 'camilacerquetti@abc.gob.ar', 'UÜ??', 4574, '2024-06-09 03:40:44', NULL),
(12, '', '????', 0, '2024-06-09 03:41:13', NULL),
(13, 'camilacerquetti@abc.gob.ar', 'D???', 8266, '2024-06-09 03:41:57', NULL),
(14, 'camilacerquetti@abc.gob.ar', '?L]?s', 7054, '2024-06-09 04:07:20', NULL),
(15, '', '.Z??\0', 0, '2024-06-09 04:07:32', NULL),
(16, '', '?R?r\r', 0, '2024-06-09 04:08:16', NULL),
(17, '', 'I	???', 0, '2024-06-09 04:08:38', NULL),
(18, '', '?f??', 0, '2024-06-09 04:16:45', NULL),
(19, 'camilacerquetti@abc.gob.ar', '?b4', 3405, '2024-06-09 04:16:50', NULL),
(20, 'camilacerquetti@abc.gob.ar', 'd????', 4464, '2024-06-09 04:30:30', NULL),
(21, 'camilacerquetti@abc.gob.ar', '????', 7794, '2024-06-09 04:31:58', NULL),
(22, 'camilacerquetti18@gmail.com', '?[??', 1490, '2024-06-09 18:19:14', NULL),
(23, 'camilacerquetti18@gmail.com', '????', 9742, '2024-06-09 18:20:01', NULL),
(24, 'camilacerquetti18@gmail.com', ')??D?', 7379, '2024-06-09 18:23:45', NULL),
(25, 'camilacerquetti18@gmail.com', '?M?|', 1387, '2024-06-09 18:35:34', NULL),
(26, 'camilacerquetti18@gmail.com', '?!???', 6623, '2024-06-09 18:58:01', NULL),
(27, 'camilacerquetti18@gmail.com', '9cc40ea88b', 1753, '2024-06-09 19:10:34', NULL),
(28, 'camilacerquetti18@gmail.com', 'f2a174cd3d', 9400, '2024-06-09 19:16:44', NULL),
(29, 'camilacerquetti@abc.gob.ar', 'acbfdd7b0b', 6425, '2024-06-09 19:19:12', NULL),
(30, 'camilacerquetti18@gmail.com', '1753', 0, '2024-06-09 19:21:57', NULL),
(31, 'camilacerquetti18@gmail.com', '1753', 0, '2024-06-09 19:24:24', NULL),
(32, 'camilacerquetti18@gmail.com', '1753', 0, '2024-06-09 19:25:06', NULL),
(33, 'camilacerquetti@abc.gob.ar', '0452d3aef3', 1598, '2024-06-09 19:25:13', NULL),
(34, 'camilacerquetti@abc.gob.ar', '5860', 0, '2024-06-09 19:25:35', NULL),
(35, 'camilacerquetti@abc.gob.ar', '7304', 0, '2024-06-09 19:28:09', NULL),
(36, 'camilacerquetti@abc.gob.ar', '7304', 0, '2024-06-09 19:28:54', NULL),
(37, 'camilacerquetti@abc.gob.ar', '7304', 0, '2024-06-09 19:31:21', NULL),
(38, 'camilacerquetti@abc.gob.ar', '7304', 0, '2024-06-09 19:32:30', NULL),
(39, 'camilacerquetti@abc.gob.ar', '7304', 0, '2024-06-09 19:35:42', NULL),
(40, 'camilacerquetti@abc.gob.ar', '7304', 0, '2024-06-09 19:37:48', NULL),
(41, 'camilacerquetti@abc.gob.ar', '7304', 0, '2024-06-09 19:38:11', NULL),
(42, 'camilacerquetti@abc.gob.ar', '7304', 0, '2024-06-09 19:41:42', NULL),
(43, 'camilacerquetti@abc.gob.ar', '5860', 0, '2024-06-09 19:46:19', NULL),
(44, 'camilacerquetti@abc.gob.ar', '7304', 0, '2024-06-09 19:57:46', NULL),
(45, 'camilacerquetti@abc.gob.ar', '', 0, '2024-06-09 19:57:48', NULL),
(46, 'camilacerquetti@abc.gob.ar', '', 0, '2024-06-09 19:57:50', NULL),
(47, 'camilacerquetti@abc.gob.ar', '7304', 0, '2024-06-09 19:58:31', NULL),
(48, 'camilacerquetti@abc.gob.ar', '73046', 0, '2024-06-09 19:58:43', NULL),
(49, 'camilacerquetti@abc.gob.ar', '73046', 0, '2024-06-09 19:59:16', NULL),
(50, 'camilacerquetti@abc.gob.ar', '', 0, '2024-06-09 20:01:38', NULL),
(51, 'camilacerquetti@abc.gob.ar', '', 0, '2024-06-09 20:01:41', NULL),
(52, 'camilacerquetti@abc.gob.ar', '', 0, '2024-06-09 20:01:41', NULL),
(53, 'camilacerquetti@abc.gob.ar', '', 0, '2024-06-09 20:01:52', NULL),
(54, 'camilacerquetti@abc.gob.ar', '', 0, '2024-06-09 20:01:53', NULL),
(55, 'camilacerquetti@abc.gob.ar', '', 0, '2024-06-09 20:01:53', NULL),
(56, 'camilacerquetti@abc.gob.ar', '', 0, '2024-06-09 20:02:20', NULL),
(57, 'camilacerquetti@abc.gob.ar', '73046', 0, '2024-06-09 20:02:39', NULL),
(58, 'camilacerquetti@abc.gob.ar', '73046------', 0, '2024-06-09 20:02:51', NULL),
(59, 'camilacerquetti@abc.gob.ar', '9999', 0, '2024-06-09 20:05:29', NULL),
(60, 'camilacerquetti@abc.gob.ar', '77deb17f7a', 4408, '2024-06-09 20:05:40', NULL),
(61, 'camilacerquetti@abc.gob.ar', '8888', 0, '2024-06-09 20:06:24', NULL),
(62, 'camilacerquetti@abc.gob.ar', '8888', 0, '2024-06-09 20:08:13', NULL),
(63, 'camilacerquetti@abc.gob.ar', '1ce15a03a0', 1035, '2024-06-09 20:08:30', NULL),
(64, 'camilacerquetti@abc.gob.ar', '9252', 0, '2024-06-09 20:08:52', NULL),
(65, 'camilacerquetti@abc.gob.ar', '9252', 0, '2024-06-09 20:09:20', NULL),
(66, 'camilacerquetti@abc.gob.ar', '9252', 0, '2024-06-09 20:10:43', NULL),
(67, 'camilacerquetti@abc.gob.ar', '9252', 0, '2024-06-09 20:11:12', NULL),
(68, 'camilacerquetti@abc.gob.ar', '8888', 0, '2024-06-09 20:12:55', NULL),
(69, 'camilacerquetti@abc.gob.ar', '9252', 0, '2024-06-09 20:13:05', NULL),
(70, 'camilacerquetti@abc.gob.ar', '33c876a426', 2561, '2024-06-09 20:13:09', NULL),
(71, 'camilacerquetti@abc.gob.ar', '1937', 0, '2024-06-09 20:13:36', NULL),
(72, 'camilacerquetti@abc.gob.ar', '1937', 0, '2024-06-09 20:14:12', NULL),
(73, 'camilacerquetti@abc.gob.ar', '1937', 0, '2024-06-09 20:14:25', NULL),
(74, 'camilacerquetti@abc.gob.ar', '1937', 0, '2024-06-09 20:14:42', NULL),
(75, 'camilacerquetti@abc.gob.ar', '1937', 0, '2024-06-09 20:14:46', NULL),
(76, 'camilacerquetti@abc.gob.ar', '1937', 0, '2024-06-09 20:16:02', NULL),
(77, 'camilacerquetti@abc.gob.ar', '1937', 0, '2024-06-09 20:17:18', NULL),
(78, 'camilacerquetti@abc.gob.ar', '1937', 0, '2024-06-09 20:17:37', NULL),
(79, 'camilacerquetti@abc.gob.ar', '1e8c4dbd00', 7210, '2024-06-09 20:17:42', NULL),
(80, 'camilacerquetti@abc.gob.ar', '9859', 0, '2024-06-09 20:18:00', NULL),
(81, 'camilacerquetti@abc.gob.ar', '9252', 0, '2024-06-09 20:22:43', NULL),
(82, 'camilacerquetti@abc.gob.ar', '9252', 0, '2024-06-09 20:22:56', NULL),
(83, 'camilacerquetti@abc.gob.ar', '9859', 0, '2024-06-09 20:25:11', NULL),
(84, 'camilacerquetti@abc.gob.ar', '8474ca2ad3', 7425, '2024-06-09 20:25:17', NULL),
(85, 'camilacerquetti@abc.gob.ar', '6559', 0, '2024-06-09 20:25:46', NULL),
(86, 'camilacerquetti@abc.gob.ar', '6559', 0, '2024-06-09 20:26:23', NULL),
(87, 'camilacerquetti@abc.gob.ar', '7425', 0, '2024-06-09 20:26:35', NULL),
(88, 'camilacerquetti18@gmail.com', '7379', 0, '2024-06-09 20:31:45', NULL),
(89, 'camilacerquetti18@gmail.com', '7379', 0, '2024-06-09 20:31:47', NULL),
(90, 'camilacerquetti@abc.gob.ar', '44817bf04e', 4151, '2024-06-09 20:36:01', NULL),
(91, 'camilacerquetti@abc.gob.ar', '942aff0e05', 2931, '2024-06-09 20:36:03', NULL),
(92, 'camilacerquetti@abc.gob.ar', '6f6dc8d75f', 9580, '2024-06-09 20:36:11', NULL),
(93, 'camilacerquetti@abc.gob.ar', '1181', 0, '2024-06-09 20:36:37', NULL),
(94, 'camilacerquetti@abc.gob.ar', '1181', 0, '2024-06-09 20:36:44', NULL),
(95, 'camilacerquetti@abc.gob.ar', '8a9bac5316', 6227, '2024-06-09 20:44:33', NULL),
(96, 'camilacerquetti@abc.gob.ar', '9ddd5753e5', 4291, '2024-06-09 20:48:06', NULL),
(97, 'camilacerquetti@abc.gob.ar', 'e50f37f661', 6104, '2024-06-09 20:54:06', NULL),
(98, 'camilacerquetti18@gmail.com', '9615118ec0', 3509, '2024-06-12 21:07:58', NULL),
(99, 'camilacerquetti18@gmail.com', '04df06d513', 2519, '2024-06-12 21:08:00', NULL),
(100, 'camilacerquetti18@gmail.com', 'ea7c612161', 2577, '2024-06-12 21:08:02', NULL),
(101, 'camilacerquetti18@gmail.com', 'c6fcc5e3b2', 1636, '2024-06-12 21:08:03', NULL),
(102, 'camilacerquetti18@gmail.com', 'a842f2d3a6', 4546, '2024-06-12 21:08:03', NULL),
(103, 'camilacerquetti18@gmail.com', '2ee288b43b', 6840, '2024-06-12 21:11:00', NULL),
(104, 'camilacerquetti18@gmail.com', '4b481efe88', 8029, '2024-06-12 21:21:26', NULL),
(105, 'camilacerquetti18@gmail.com', '24a01ba163', 6108, '2024-06-12 21:32:55', NULL),
(106, 'camilacerquetti18@gmail.com', '2d3ed8ab3a', 3546, '2024-06-12 21:56:50', NULL),
(107, 'camilacerquetti18@gmail.com', 'ec8c9a7b66', 9820, '2024-06-12 22:18:15', NULL),
(108, 'camilacerquetti18@gmail.com', '46195eff4a', 4973, '2024-06-12 22:44:18', NULL),
(109, 'camilacerquetti18@gmail.com', 'd6741e2e95', 1174, '2024-06-12 22:47:06', NULL),
(110, 'camilacerquetti18@gmail.com', 'd64481a3f3', 4067, '2024-06-12 22:58:25', NULL),
(111, 'camilacerquetti18@gmail.com', '4d64de7c48', 9541, '2024-06-13 14:20:15', NULL),
(112, 'camilacerquetti18@gmail.com', '638d2c476c', 4317, '2024-06-13 14:20:32', NULL),
(113, 'camilacerquetti18@gmail.com', '4095517418', 9486, '2024-06-13 14:31:48', NULL),
(114, 'camilacerquetti18@gmail.com', '73f19dfdb2', 8359, '2024-06-13 14:36:56', NULL),
(115, 'camilacerquetti18@gmail.com', '0c6d206e8c', 8218, '2024-06-13 14:50:24', NULL),
(116, 'camilacerquetti18@gmail.com', 'e30a70f15e', 7181, '2024-06-13 15:03:29', NULL),
(117, 'camilacerquetti18@gmail.com', 'b2d9e036da', 7711, '2024-06-13 15:10:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `registro_usuarios`
--

CREATE TABLE `registro_usuarios` (
  `iD` int(11) NOT NULL COMMENT '10 DEL 1 DEL USUARIO',
  `nombre` varchar(50) NOT NULL COMMENT 'nombre del usuario',
  `email` varchar(100) NOT NULL COMMENT 'email del usuario',
  `contraseña` varchar(100) NOT NULL COMMENT 'contraseña del usuario',
  `confirmar_contraseña` varchar(100) NOT NULL COMMENT ' confirmacion de contraseña del usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registro_usuarios`
--

INSERT INTO `registro_usuarios` (`iD`, `nombre`, `email`, `contraseña`, `confirmar_contraseña`) VALUES
(1, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'camila123'),
(2, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'camila123'),
(3, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(4, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(5, '', '', '', ''),
(6, '', '', '', ''),
(7, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(8, '', '', '', ''),
(9, '', '', '', ''),
(10, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(11, '', '', '', ''),
(12, '', '', '', ''),
(13, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(14, '', '', '', ''),
(15, '', '', '', ''),
(16, '', '', '', ''),
(17, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(18, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(19, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(20, '', '', '', ''),
(21, '', '', '', ''),
(22, '', '', '', ''),
(23, '', '', '', ''),
(24, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(25, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(26, 'cami', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(27, 'cami', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(28, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(29, '', '', '', ''),
(30, '', '', '', ''),
(31, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(32, '', '', '', ''),
(33, '', '', '', ''),
(34, 'chino', 'ybarradaniel@gmail.com', 'kkkk', 'kkkk'),
(35, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(36, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(37, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(38, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(39, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(40, '', '', '', ''),
(41, '', '', '', ''),
(42, '', '', '', ''),
(43, '', '', '', ''),
(44, '', '', '', ''),
(45, '', '', '', ''),
(46, '', '', '', ''),
(47, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(48, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(49, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(50, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(51, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(52, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(53, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(54, 'cami', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(55, 'cami', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(56, 'cami', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(57, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(58, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(59, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(60, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(61, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(62, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(63, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(64, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(65, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(66, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(67, '', '', '', ''),
(68, '', '', '', ''),
(69, '', '', '', ''),
(70, '', '', '', ''),
(71, '', '', '', ''),
(72, '', '', '', ''),
(73, '', '', '', ''),
(74, '', '', '', ''),
(75, '', '', '', ''),
(76, '', '', '', ''),
(77, '', '', '', ''),
(78, '', '', '', ''),
(79, '', '', '', ''),
(80, '', '', '', ''),
(81, '', '', '', ''),
(82, '', '', '', ''),
(83, '', '', '', ''),
(84, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(85, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(86, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(87, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(88, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(89, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(90, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(91, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(92, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(93, '', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(94, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(95, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'kkkk'),
(96, 'cami', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'cami123'),
(97, 'cami', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', 'cami123'),
(98, '', '', '$2y$10$UFLLqmH3b5I6iTjZFLvYT.Kitc.k24OZ.s7AlqdcNX2E/xzsdcWzS', ''),
(99, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(100, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(101, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(102, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(103, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(104, 'camila', 'camilacerquetti18@gmail.com', '$2y$10$OnFpae85tBv1VRARbXiigOyx4GenZiyL4icu296uC3VJ/YydXaya.', ''),
(105, 'lucas', 'caboluKas688@gmail.com', '$2y$10$iLYftaWMCPnSFj/oZietyeGLjEEkx9EqlmLAjiDw4F.vUHUPvthDC', ''),
(106, 'cam', 'camilacerquetti@abc.gob.ar', '$2y$10$R3YtLw3Ay.NspbcwJsktoO8V8DvbkNIKDenP4m7oa6.I2huQdLa9m', ''),
(107, 'kam', 'camila@gmail.com', '$2y$10$WvCcEO7PrQamKeyfRECXBOf2rka47by23IxZUt4MxhNE9ldnUG3gG', ''),
(108, 'kam', 'camila@hotmail.com.ar', '$2y$10$okOBNmciJED1hAdtTZzpVeH95VELlBEcl0ryWDphMqDcG8v2HoGJ2', ''),
(109, 'na', 'nathalia@gamil.com', '$2y$10$Km1c3bWQOejS0LCIitcex.Vj.kaimtQ3wqL0yWp0t134suRldbg8m', ''),
(110, 'na', 'nathalia17@gamil.com', '$2y$10$70jg/tQ.f2xJ67F5sBKYEO0vYIaAkxKW00/XRY2INIZwsA255VLFi', ''),
(111, 'na', 'nathalia15@gamil.com', '$2y$10$8wR12zIYHsqEFqukHKK9nOMwRzZ4vWvWWNbfsfTpYjFk8OMS8hGq6', ''),
(112, 'na', 'nathalia20@gamil.com', '$2y$10$Tsl4dTFnbq1sUT8N2pl4q.NJMQ/7/b/OshOAPv8Kl5pyO8Tp24f/e', ''),
(113, 'na', 'nathalia21@gamil.com', '$2y$10$r6redSwnApNN/m61lE5ek.dihXx8xIh8VbSybA5Grj0xOl1Za3v2u', ''),
(114, 'na', 'nathalia22@gamil.com', '$2y$10$VB3bmQiTA5knOxCFSieVkOskusUFhgY2/IptI9/rLjKPvqOLR0PUK', ''),
(115, 'na', 'nathalia23@gamil.com', '$2y$10$EGKEGX.djVqTV2vtESYvAeVS.hQuvP7NByfuUmfoJIonyyW/71RMu', ''),
(116, 'na', 'nathalia24@gamil.com', '$2y$10$m9djOYRCxVbb4U2N524iyeHBhcwnnp6dZ4/9Ds8ImBWb9hEHJgYhG', ''),
(117, 'na', 'nathalia25@gamil.com', '$2y$10$E553qGD3KjxBMSATsbekjujt8GXr7T.0eISygk1oOCljfKqu1KKDK', '');

-- --------------------------------------------------------

--
-- Table structure for table `rutinas`
--

CREATE TABLE `rutinas` (
  `id` int(11) NOT NULL,
  `objetivo_id` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `ejercicio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rutinas`
--

INSERT INTO `rutinas` (`id`, `objetivo_id`, `dia`, `ejercicio_id`) VALUES
(1, NULL, 0, NULL),
(2, NULL, 0, NULL),
(3, NULL, 0, NULL),
(4, NULL, 0, NULL),
(5, NULL, 0, NULL),
(6, NULL, 0, NULL),
(7, NULL, 0, NULL),
(8, NULL, 0, NULL),
(9, NULL, 0, NULL),
(10, NULL, 0, NULL),
(11, NULL, 0, NULL),
(12, NULL, 0, NULL),
(13, NULL, 0, NULL),
(14, NULL, 0, NULL),
(15, NULL, 0, NULL),
(16, NULL, 0, NULL),
(17, NULL, 0, NULL),
(18, NULL, 0, NULL),
(19, NULL, 0, NULL),
(20, NULL, 0, NULL),
(21, NULL, 0, NULL),
(22, NULL, 0, NULL),
(23, NULL, 0, NULL),
(24, NULL, 0, NULL),
(25, NULL, 0, NULL),
(26, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `objetivo_id` (`objetivo_id`);

--
-- Indexes for table `formulario`
--
ALTER TABLE `formulario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objetivos`
--
ALTER TABLE `objetivos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indexes for table `password`
--
ALTER TABLE `password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registro_usuarios`
--
ALTER TABLE `registro_usuarios`
  ADD PRIMARY KEY (`iD`);

--
-- Indexes for table `rutinas`
--
ALTER TABLE `rutinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_rutinas_objetivos` (`objetivo_id`),
  ADD KEY `fk_rutinas_ejercicios` (`ejercicio_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ejercicios`
--
ALTER TABLE `ejercicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `formulario`
--
ALTER TABLE `formulario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `objetivos`
--
ALTER TABLE `objetivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `password`
--
ALTER TABLE `password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `registro_usuarios`
--
ALTER TABLE `registro_usuarios`
  MODIFY `iD` int(11) NOT NULL AUTO_INCREMENT COMMENT '10 DEL 1 DEL USUARIO', AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `rutinas`
--
ALTER TABLE `rutinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ejercicios`
--
ALTER TABLE `ejercicios`
  ADD CONSTRAINT `ejercicios_ibfk_1` FOREIGN KEY (`objetivo_id`) REFERENCES `objetivos` (`id`);

--
-- Constraints for table `rutinas`
--
ALTER TABLE `rutinas`
  ADD CONSTRAINT `fk_rutinas_ejercicios` FOREIGN KEY (`ejercicio_id`) REFERENCES `ejercicios` (`id`),
  ADD CONSTRAINT `fk_rutinas_objetivos` FOREIGN KEY (`objetivo_id`) REFERENCES `objetivos` (`id`),
  ADD CONSTRAINT `rutinas_ibfk_1` FOREIGN KEY (`objetivo_id`) REFERENCES `objetivos` (`id`),
  ADD CONSTRAINT `rutinas_ibfk_2` FOREIGN KEY (`ejercicio_id`) REFERENCES `ejercicios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
