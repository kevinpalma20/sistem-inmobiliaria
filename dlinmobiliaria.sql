-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-09-2021 a las 04:56:59
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dlinmobiliaria`
--
CREATE DATABASE IF NOT EXISTS `dlinmobiliaria` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dlinmobiliaria`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` varchar(10) NOT NULL,
  `firtsname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `customer`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detail`
--

DROP TABLE IF EXISTS `detail`;
CREATE TABLE IF NOT EXISTS `detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idsale` varchar(15) NOT NULL,
  `idpr` varchar(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idsale` (`idsale`),
  KEY `idpr` (`idpr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `detail`:
--   `idpr`
--       `property` -> `id`
--   `idsale`
--       `sale` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `id` varchar(5) NOT NULL,
  `firtsname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(13) NOT NULL,
  `photo` longtext DEFAULT NULL,
  `password` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `employee`:
--

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`id`, `firtsname`, `lastname`, `dni`, `email`, `number`, `photo`, `password`) VALUES
('E15FV', 'Andres', 'Urtado', '75395105', 'Andres@gmail.com', '951753029', '', 'd2e7a2105d0fb461fe6f2858cc33942f');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `property`
--

DROP TABLE IF EXISTS `property`;
CREATE TABLE IF NOT EXISTS `property` (
  `id` varchar(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  `description` varchar(25) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `idtype` varchar(5) NOT NULL,
  `photo` longtext DEFAULT NULL,
  `state` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idtype` (`idtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `property`:
--   `idtype`
--       `type_property` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale`
--

DROP TABLE IF EXISTS `sale`;
CREATE TABLE IF NOT EXISTS `sale` (
  `id` varchar(15) NOT NULL,
  `idc` varchar(10) NOT NULL,
  `ide` varchar(5) NOT NULL,
  `date` longtext NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idc` (`idc`),
  KEY `ide` (`ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `sale`:
--   `ide`
--       `employee` -> `id`
--   `idc`
--       `customer` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `type_property`
--

DROP TABLE IF EXISTS `type_property`;
CREATE TABLE IF NOT EXISTS `type_property` (
  `id` varchar(5) NOT NULL,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELACIONES PARA LA TABLA `type_property`:
--

--
-- Volcado de datos para la tabla `type_property`
--

INSERT INTO `type_property` (`id`, `name`) VALUES
('T85FV', 'Apartamento'),
('TDFG0', 'Estudio'),
('TDVU9', 'Familiar');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detail`
--
ALTER TABLE `detail`
  ADD CONSTRAINT `detail_ibfk_1` FOREIGN KEY (`idpr`) REFERENCES `property` (`id`),
  ADD CONSTRAINT `detail_ibfk_2` FOREIGN KEY (`idsale`) REFERENCES `sale` (`id`);

--
-- Filtros para la tabla `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_ibfk_1` FOREIGN KEY (`idtype`) REFERENCES `type_property` (`id`);

--
-- Filtros para la tabla `sale`
--
ALTER TABLE `sale`
  ADD CONSTRAINT `sale_ibfk_1` FOREIGN KEY (`ide`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `sale_ibfk_2` FOREIGN KEY (`idc`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
