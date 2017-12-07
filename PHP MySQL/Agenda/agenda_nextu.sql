-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-12-2017 a las 16:53:02
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda_nextu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `fechaInicio` varchar(255) NOT NULL,
  `horaInicio` varchar(255) NOT NULL,
  `fechaFinal` varchar(255) NOT NULL,
  `horaFinal` varchar(255) NOT NULL,
  `diaCompleto` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `mail` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nacimiento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`mail`, `nombre`, `pass`, `nacimiento`) VALUES
('frank_santills@hotmail.com', 'Frank Santillan', '$2y$10$QKLOIEKIIQjboto8sIxE3OASPPJTy6cR5R0LDptCaZjf05UAe5XXC', '13-12-91'),
('jhon_doe@hotmail.com', 'John Doe', '$2y$10$jWSte69Sw7svBBjYWme5u.URJS33MS2kamF6Wz8fLzWx2ql.fFIwy', '12-01-75'),
('juan_perez@hotmail.com', 'Juan Perez', '$2y$10$BfMO0muITG3azO9.MnIFHejUAlR9KDW5ANN6NuX13S80oM03CZ0Rm', '15-09-85');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario` (`usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`mail`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`mail`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
