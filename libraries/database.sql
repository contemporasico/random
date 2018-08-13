-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 14-08-2018 a las 00:39:34
-- Versión del servidor: 5.7.22-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `random`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `boards`
--

CREATE TABLE `boards` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `boards`
--

INSERT INTO `boards` (`id`, `name`, `user_id`) VALUES
(1, 'board de prueba', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fields`
--

CREATE TABLE `fields` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` int(3) NOT NULL,
  `user_id` int(11) NOT NULL,
  `private` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fields`
--

INSERT INTO `fields` (`id`, `name`, `type`, `user_id`, `private`) VALUES
(1, 'sample', 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fields_type`
--

CREATE TABLE `fields_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fields_type`
--

INSERT INTO `fields_type` (`id`, `name`) VALUES
(1, 'images'),
(2, 'short text'),
(3, 'long text');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `panels`
--

CREATE TABLE `panels` (
  `id` int(10) NOT NULL,
  `board_id` int(10) NOT NULL,
  `field_id` int(10) NOT NULL,
  `xPos` float NOT NULL,
  `yRelWidth` float NOT NULL,
  `width` float NOT NULL,
  `mSize` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `panels`
--

INSERT INTO `panels` (`id`, `board_id`, `field_id`, `xPos`, `yRelWidth`, `width`, `mSize`) VALUES
(1, 1, 1, 0, 10, 50, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `text`
--

CREATE TABLE `text` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `field_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`) VALUES
(1, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `fields`
--
ALTER TABLE `fields`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `fields_type`
--
ALTER TABLE `fields_type`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `panels`
--
ALTER TABLE `panels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `field_id` (`field_id`),
  ADD UNIQUE KEY `board_id` (`board_id`);

--
-- Indices de la tabla `text`
--
ALTER TABLE `text`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `field_id` (`field_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `boards`
--
ALTER TABLE `boards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `fields`
--
ALTER TABLE `fields`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `fields_type`
--
ALTER TABLE `fields_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;