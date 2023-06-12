-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-05-2023 a las 06:28:31
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tyw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_tbl`
--

CREATE TABLE `category_tbl` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `category_tbl`
--

INSERT INTO `category_tbl` (`category_id`, `category_name`) VALUES
(1, NULL),
(2, 'DFSDFSDF'),
(3, 'DFSDFSDF'),
(4, 'NIÑAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_tbl`
--

CREATE TABLE `product_tbl` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_value` float DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product_tbl`
--

INSERT INTO `product_tbl` (`product_id`, `product_name`, `product_value`, `category_id`) VALUES
(1, 'BLUSA ROJA', 5000, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_tbl`
--

CREATE TABLE `users_tbl` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(40) NOT NULL,
  `user_lastname` varchar(40) NOT NULL,
  `user_email` varchar(60) NOT NULL,
  `user_password` varbinary(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users_tbl`
--

INSERT INTO `users_tbl` (`user_id`, `user_firstname`, `user_lastname`, `user_email`, `user_password`) VALUES
(1, 'DANIEL', 'AVILA', 'avila@gmail.com', 0xa48207ac765141738f7268ea6470817c),
(2, 'LUIS', 'DIAZ', 'luchogod@gmail.com', 0xa48207ac765141738f7268ea6470817c),
(3, 'JUAN', 'VALDEZ', 'ZZZZ@GMAIL.COM', 0x94d64dad70bbd2b3a12ee91eec823545);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `category_tbl`
--
ALTER TABLE `category_tbl`
  ADD PRIMARY KEY (`category_id`);

--
-- Indices de la tabla `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indices de la tabla `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category_tbl`
--
ALTER TABLE `category_tbl`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `product_tbl`
--
ALTER TABLE `product_tbl`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `product_tbl`
--
ALTER TABLE `product_tbl`
  ADD CONSTRAINT `product_tbl_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_tbl` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
