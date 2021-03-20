-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2021 a las 18:22:27
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
(4, '988731', 'Daniel', 'Morales', '983231', '2021-03-13 11:24:43', '2021-03-19 01:00:25'),
(22, '988736', 'Lucha', 'Paredes', '9343431', '2021-03-14 18:45:14', '2021-03-14 18:45:14'),
(19, '98798', 'Raul', 'Gonzalez', '342342', '2021-03-14 17:41:57', '2021-03-14 17:41:57'),
(5, '98323', 'Rosita', 'Sanchez', '4567893', '2021-03-13 21:28:00', '2021-03-13 21:28:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_platillos`
--

CREATE TABLE `categoria_platillos` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoria` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_platillos`
--

INSERT INTO `categoria_platillos` (`id`, `categoria`) VALUES
(1, 'Pastas'),
(2, 'Sopas'),
(3, 'Postres'),
(4, 'Mariscos'),
(5, 'Entrantes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cocineros`
--

CREATE TABLE `cocineros` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cocineros`
--

INSERT INTO `cocineros` (`id`, `nombre`, `apellido`, `created`, `modified`) VALUES
(1, 'Juan ', 'Peres ', '2021-03-17 09:44:19', '2021-03-17 10:51:18'),
(2, 'Maria', 'Lozada', '2021-03-17 09:51:54', '2021-03-17 09:51:54'),
(3, 'Lucio', 'Fernandez', '2021-03-17 10:53:22', '2021-03-17 10:53:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cocineros_platillos`
--

CREATE TABLE `cocineros_platillos` (
  `id` int(10) UNSIGNED NOT NULL,
  `cocinero_id` int(11) NOT NULL,
  `platillo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cocineros_platillos`
--

INSERT INTO `cocineros_platillos` (`id`, `cocinero_id`, `platillo_id`) VALUES
(15, 2, 4),
(17, 2, 6),
(18, 1, 7),
(19, 2, 7),
(20, 3, 8),
(21, 1, 9),
(22, 3, 10);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `platillo_id` int(11) NOT NULL,
  `cantidad` decimal(6,2) NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `platillo_id`, `cantidad`, `subtotal`, `created`, `modified`) VALUES
(1, 4, '1.00', '25', '2021-03-20 17:38:57', '2021-03-20 17:38:57'),
(2, 9, '1.00', '16', '2021-03-20 17:50:42', '2021-03-20 17:50:42'),
(3, 8, '1.00', '12', '2021-03-20 17:50:48', '2021-03-20 17:50:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `platillos`
--

CREATE TABLE `platillos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(200) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `precio` float(6,2) NOT NULL,
  `foto` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `foto_dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `categoria_platillo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `platillos`
--

INSERT INTO `platillos` (`id`, `nombre`, `descripcion`, `precio`, `foto`, `foto_dir`, `created`, `modified`, `categoria_platillo_id`) VALUES
(4, 'LazaÃ±a con pollo', 'DescripciÃ³n de LazaÃ±a con pollo.', 25.00, 'pastas3.jpg', '4', '2021-03-18 09:51:42', '2021-03-18 13:21:20', 1),
(6, 'Sopa de verduras', 'DescripciÃ³n de sopa de verduras', 20.00, 'platillo-de-pescado20130212.jpg', '6', '2021-03-18 12:04:28', '2021-03-18 12:52:33', 2),
(7, 'Torta helada', 'Torta helada DescripciÃ³n.', 15.00, 'postres1.jpg', '7', '2021-03-18 13:00:28', '2021-03-18 13:07:02', 3),
(8, 'Sopa de legumbres', 'DescripciÃ³n de Sopa de legumbres', 12.00, 'sopas4.jpg', '8', '2021-03-18 14:14:52', '2021-03-18 14:14:52', 2),
(9, 'Tomates rellenos', 'DescripciÃ³n de Tomates rellenos.', 16.00, 'entrada1.jpg', '9', '2021-03-18 14:17:38', '2021-03-18 14:17:38', 5),
(10, 'Postre de helado', 'DescripciÃ³n de postre de helado.', 8.00, 'postres2.jpg', '10', '2021-03-20 00:32:22', '2021-03-20 00:32:22', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `camareros`
--
ALTER TABLE `camareros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria_platillos`
--
ALTER TABLE `categoria_platillos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cocineros`
--
ALTER TABLE `cocineros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cocineros_platillos`
--
ALTER TABLE `cocineros_platillos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `platillos`
--
ALTER TABLE `platillos`
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
-- AUTO_INCREMENT de la tabla `categoria_platillos`
--
ALTER TABLE `categoria_platillos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `cocineros`
--
ALTER TABLE `cocineros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cocineros_platillos`
--
ALTER TABLE `cocineros_platillos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `platillos`
--
ALTER TABLE `platillos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
