-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-03-2021 a las 12:11:56
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `camareros`
--

CREATE TABLE `camareros` (
  `id` int(11) NOT NULL,
  `dni` varchar(10) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `camareros`
--

INSERT INTO `camareros` (`id`, `dni`, `nombre`, `apellido`, `telefono`, `created`, `modified`) VALUES
(1, '878012', 'Pedro', 'Salazar', '6789982', '2021-03-13 11:23:05', NULL),
(3, '982312', 'Lucas', 'Zambrana Pereira', '873231', '2021-03-13 11:24:43', '2021-03-14 23:12:31'),
(4, '988732', 'Daniel', 'Morales', '983231', '2021-03-13 11:24:43', NULL),
(22, '988736', 'Lucha', 'Paredes', '9343431', '2021-03-14 18:45:14', '2021-03-14 18:45:14'),
(19, '98798', 'Raul', 'Gonzalez', '342342', '2021-03-14 17:41:57', '2021-03-14 17:41:57'),
(5, '98323', 'Rosita', 'Sanchez', '4567893', '2021-03-13 21:28:00', '2021-03-13 21:28:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id` int(11) NOT NULL,
  `serie` varchar(10) NOT NULL,
  `puestos` varchar(20) NOT NULL,
  `posicion` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `camarero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id`, `serie`, `puestos`, `posicion`, `created`, `modified`, `camarero_id`) VALUES
(1, '001', '14', 'Lado superior derecho', '2021-03-14 23:13:45', NULL, 3),
(2, '002', '3', 'Lado superior derecho', '2021-03-14 23:13:45', NULL, 3),
(3, '003', '6', 'Lado inferior izquierdo', '2021-03-14 23:15:19', NULL, 5),
(4, '004', '10', 'Lado inferior izquierdo', '2021-03-14 23:15:19', NULL, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camareros`
--
ALTER TABLE `camareros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `camareros`
--
ALTER TABLE `camareros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
