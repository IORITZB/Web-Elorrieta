-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-04-2020 a las 14:28:59
-- Versión del servidor: 10.1.40-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `web_elorrieta`
--
CREATE DATABASE IF NOT EXISTS `web_elorrieta` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `web_elorrieta`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ciclos`
--

CREATE TABLE `Ciclos` (
  `nom_ciclo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `cod_ciclo` int(11) NOT NULL,
  `tipo_ciclo` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Ciclos`
--

INSERT INTO `Ciclos` (`nom_ciclo`, `cod_ciclo`, `tipo_ciclo`) VALUES
('Desarrollo Aplicaciones Web', 1, 'Superior'),
('Desarrollo Aplicaciones Multiplataforma', 2, 'Superior'),
('ASIR', 3, 'Superior'),
('MiniInformatica jeje', 4, 'Medio');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Ciclos`
--
ALTER TABLE `Ciclos`
  ADD PRIMARY KEY (`cod_ciclo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Ciclos`
--
ALTER TABLE `Ciclos`
  MODIFY `cod_ciclo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
