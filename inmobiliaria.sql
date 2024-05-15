-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2024 a las 20:22:56
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios`
--

CREATE TABLE `propietarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `propietarios`
--

INSERT INTO `propietarios` (`id`, `nombre`, `telefono`, `email`) VALUES
(1, 'María García', '123456789', 'maria@example.com'),
(2, 'Laura Rodríguez', '987654321', 'laura@example.com'),
(3, 'Ana López', '555555555', 'ana@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viviendas`
--

CREATE TABLE `viviendas` (
  `id` int(11) NOT NULL,
  `propietario_id` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `metros_cuadrados` decimal(10,2) DEFAULT NULL,
  `habitaciones` int(11) DEFAULT NULL,
  `fecha_construccion` date DEFAULT NULL,
  `amueblada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `viviendas`
--

INSERT INTO `viviendas` (`id`, `propietario_id`, `precio`, `metros_cuadrados`, `habitaciones`, `fecha_construccion`, `amueblada`) VALUES
(1, 1, 150000.00, 100.00, 3, '2020-01-01', 1),
(2, 1, 200000.00, 120.00, 4, '2018-05-15', 0),
(3, 2, 180000.00, 90.00, 2, '2019-07-20', 1),
(4, 2, 220000.00, 150.00, 5, '2015-03-10', 0),
(5, 3, 250000.00, 110.00, 3, '2017-11-30', 1),
(6, 1, 170000.00, 95.00, 3, '2016-08-25', 1),
(7, 2, 210000.00, 130.00, 4, '2014-10-12', 0),
(8, 3, 190000.00, 85.00, 2, '2019-04-18', 1),
(9, 1, 230000.00, 140.00, 5, '2013-06-29', 0),
(10, 2, 200000.00, 120.00, 3, '2018-02-14', 1),
(11, 3, 260000.00, 150.00, 4, '2015-09-03', 0),
(12, 1, 180000.00, 105.00, 3, '2016-12-20', 1),
(13, 2, 240000.00, 160.00, 5, '2012-07-08', 0),
(14, 3, 270000.00, 125.00, 3, '2018-11-15', 1),
(15, 1, 210000.00, 110.00, 4, '2017-05-22', 0),
(16, 2, 190000.00, 100.00, 3, '2019-08-10', 1),
(17, 3, 220000.00, 135.00, 4, '2016-04-05', 0),
(18, 1, 250000.00, 145.00, 5, '2014-01-17', 1),
(19, 2, 230000.00, 115.00, 3, '2015-10-30', 0),
(20, 3, 200000.00, 105.00, 2, '2018-03-25', 1),
(21, 1, 270000.00, 155.00, 4, '2013-09-12', 0),
(22, 2, 280000.00, 165.00, 5, '2011-05-28', 1),
(23, 3, 290000.00, 140.00, 4, '2017-07-19', 0),
(24, 1, 220000.00, 120.00, 3, '2016-02-02', 1),
(25, 2, 260000.00, 130.00, 4, '2014-04-24', 0),
(26, 3, 210000.00, 95.00, 3, '2018-10-08', 1),
(27, 1, 240000.00, 140.00, 4, '2015-11-23', 0),
(28, 2, 250000.00, 110.00, 3, '2019-01-06', 1),
(29, 3, 230000.00, 125.00, 4, '2016-06-15', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `viviendas`
--
ALTER TABLE `viviendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `propietario_id` (`propietario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `viviendas`
--
ALTER TABLE `viviendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `viviendas`
--
ALTER TABLE `viviendas`
  ADD CONSTRAINT `viviendas_ibfk_1` FOREIGN KEY (`propietario_id`) REFERENCES `propietarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
