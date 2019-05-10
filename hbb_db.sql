-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-05-2019 a las 10:21:03
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hbb_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ban`
--

CREATE TABLE `ban` (
  `id_ban` int(11) NOT NULL,
  `motivo_ban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_ban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ip` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `capitulo`
--

CREATE TABLE `capitulo` (
  `id_capitulo` int(11) NOT NULL,
  `imagen_capitulo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_capitulo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reparto_capitulo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `valoracion_capitulo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `estreno_capitulo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_temporada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `id_capitulo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario`
--

CREATE TABLE `comentario` (
  `id_comentario` int(11) NOT NULL,
  `titulo_comentario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_comentario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdr_comentario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `valoracion_comentario` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contrato`
--

CREATE TABLE `contrato` (
  `id_contrato` int(11) NOT NULL,
  `fechaInicio_contrato` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fechaFin_contrato` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_plan` int(11) NOT NULL,
  `id_extra` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extra`
--

CREATE TABLE `extra` (
  `id_extra` int(11) NOT NULL,
  `imagen_extra` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_extra` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_extra` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarifa_extra` double NOT NULL,
  `duracion_extra` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre_genero` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ip`
--

CREATE TABLE `ip` (
  `id_ip` int(11) NOT NULL,
  `numero_ip` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan`
--

CREATE TABLE `plan` (
  `id_plan` int(11) NOT NULL,
  `imagen_plan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_plan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_plan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tarifa_plan` double NOT NULL,
  `duracion_plan` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyeccion`
--

CREATE TABLE `proyeccion` (
  `id_proyeccion` int(11) NOT NULL,
  `fecha_proyeccion` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_capitulo` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_reserva` int(11) NOT NULL,
  `fecha_reserva` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_proyeccion` int(11) NOT NULL,
  `id_comentario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre_rol`) VALUES
(1, 'Admin'),
(2, 'Sala'),
(3, 'Espectador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `id_sala` int(11) NOT NULL,
  `nombre_sala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen_sala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `identificacion_sala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_sala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo_sala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion_sala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad_sala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia_sala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais_sala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitud_sala` float NOT NULL,
  `longitud_sala` float NOT NULL,
  `telefono_sala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `aforo_sala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado_sala` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serie`
--

CREATE TABLE `serie` (
  `id_serie` int(11) NOT NULL,
  `imagen_serie` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_serie` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_serie` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reparto_serie` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `valoracion_serie` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temporada`
--

CREATE TABLE `temporada` (
  `id_temporada` int(11) NOT NULL,
  `imagen_temporada` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion_temporada` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reparto_temporada` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `valoracion_temporada` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_serie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `imagen_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `genero_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdn_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pais_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fdr_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `privacidad_usuario` tinyint(1) NOT NULL,
  `info_usuario` tinyint(1) NOT NULL,
  `activo_usuario` tinyint(1) NOT NULL,
  `estado_usuario` tinyint(1) NOT NULL,
  `valoracion_usuario` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`id_ban`),
  ADD KEY `id_ip` (`id_ip`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `capitulo`
--
ALTER TABLE `capitulo`
  ADD PRIMARY KEY (`id_capitulo`),
  ADD KEY `id_temporada` (`id_temporada`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `id_genero` (`id_genero`),
  ADD KEY `id_capitulo` (`id_capitulo`);

--
-- Indices de la tabla `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id_comentario`);

--
-- Indices de la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD PRIMARY KEY (`id_contrato`),
  ADD KEY `id_plan` (`id_plan`),
  ADD KEY `id_extra` (`id_extra`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Indices de la tabla `extra`
--
ALTER TABLE `extra`
  ADD PRIMARY KEY (`id_extra`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `ip`
--
ALTER TABLE `ip`
  ADD PRIMARY KEY (`id_ip`);

--
-- Indices de la tabla `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id_plan`);

--
-- Indices de la tabla `proyeccion`
--
ALTER TABLE `proyeccion`
  ADD PRIMARY KEY (`id_proyeccion`),
  ADD KEY `id_capitulo` (`id_capitulo`),
  ADD KEY `id_sala` (`id_sala`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_proyeccion` (`id_proyeccion`),
  ADD KEY `id_comentario` (`id_comentario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id_sala`);

--
-- Indices de la tabla `serie`
--
ALTER TABLE `serie`
  ADD PRIMARY KEY (`id_serie`);

--
-- Indices de la tabla `temporada`
--
ALTER TABLE `temporada`
  ADD PRIMARY KEY (`id_temporada`),
  ADD KEY `id_serie` (`id_serie`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ban`
--
ALTER TABLE `ban`
  MODIFY `id_ban` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `capitulo`
--
ALTER TABLE `capitulo`
  MODIFY `id_capitulo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contrato`
--
ALTER TABLE `contrato`
  MODIFY `id_contrato` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `extra`
--
ALTER TABLE `extra`
  MODIFY `id_extra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ip`
--
ALTER TABLE `ip`
  MODIFY `id_ip` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `plan`
--
ALTER TABLE `plan`
  MODIFY `id_plan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyeccion`
--
ALTER TABLE `proyeccion`
  MODIFY `id_proyeccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sala`
--
ALTER TABLE `sala`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `serie`
--
ALTER TABLE `serie`
  MODIFY `id_serie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `temporada`
--
ALTER TABLE `temporada`
  MODIFY `id_temporada` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ban`
--
ALTER TABLE `ban`
  ADD CONSTRAINT `ban_ibfk_1` FOREIGN KEY (`id_ip`) REFERENCES `ip` (`id_ip`),
  ADD CONSTRAINT `ban_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `capitulo`
--
ALTER TABLE `capitulo`
  ADD CONSTRAINT `capitulo_ibfk_1` FOREIGN KEY (`id_temporada`) REFERENCES `temporada` (`id_temporada`);

--
-- Filtros para la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD CONSTRAINT `categoria_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `categoria_ibfk_2` FOREIGN KEY (`id_capitulo`) REFERENCES `capitulo` (`id_capitulo`);

--
-- Filtros para la tabla `contrato`
--
ALTER TABLE `contrato`
  ADD CONSTRAINT `contrato_ibfk_1` FOREIGN KEY (`id_plan`) REFERENCES `plan` (`id_plan`),
  ADD CONSTRAINT `contrato_ibfk_2` FOREIGN KEY (`id_extra`) REFERENCES `extra` (`id_extra`),
  ADD CONSTRAINT `contrato_ibfk_3` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`);

--
-- Filtros para la tabla `proyeccion`
--
ALTER TABLE `proyeccion`
  ADD CONSTRAINT `proyeccion_ibfk_1` FOREIGN KEY (`id_capitulo`) REFERENCES `capitulo` (`id_capitulo`),
  ADD CONSTRAINT `proyeccion_ibfk_2` FOREIGN KEY (`id_sala`) REFERENCES `sala` (`id_sala`);

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`id_proyeccion`) REFERENCES `proyeccion` (`id_proyeccion`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`id_comentario`) REFERENCES `comentario` (`id_comentario`),
  ADD CONSTRAINT `reserva_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `temporada`
--
ALTER TABLE `temporada`
  ADD CONSTRAINT `temporada_ibfk_1` FOREIGN KEY (`id_serie`) REFERENCES `serie` (`id_serie`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
