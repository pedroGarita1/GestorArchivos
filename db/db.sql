-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2021 a las 01:59:42
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gestor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_archivos`
--

CREATE TABLE `t_archivos` (
  `id_archivo` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `ruta` text DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `t_archivos`
--

INSERT INTO `t_archivos` (`id_archivo`, `id_usuario`, `id_categoria`, `nombre`, `tipo`, `ruta`, `fecha`) VALUES
(2, 1, 6, '5b4b7d0cd0230.jpeg', 'jpeg', '../../archivos/1/5b4b7d0cd0230.jpeg', '2021-05-05 06:27:11'),
(3, 1, 9, '3bdeb1b5cec588c513a2de5cec024b63.png', 'png', '../../archivos/1/3bdeb1b5cec588c513a2de5cec024b63.png', '2021-05-05 06:29:30'),
(4, 1, 7, 'jquery.dataTables.min (1).js', 'js', '../../archivos/1/jquery.dataTables.min (1).js', '2021-05-05 06:31:47'),
(5, 1, 5, 'examen unidad 2.pdf', 'pdf', '../../archivos/1/examen unidad 2.pdf', '2021-05-05 07:13:59'),
(6, 1, 5, 'Mi video3.mp4', 'mp4', '../../archivos/1/Mi video3.mp4', '2021-05-05 07:16:25'),
(7, 1, 5, 'Men At Work - Who Can It Be Now (Video Version) (GRATIS-MP3S.NET).mp3', 'mp3', '../../archivos/1/Men At Work - Who Can It Be Now (Video Version) (GRATIS-MP3S.NET).mp3', '2021-05-05 07:22:29'),
(8, 1, 5, 'images (14).jpeg', 'jpeg', '../../archivos/1/images (14).jpeg', '2021-05-05 07:47:43'),
(9, 10, 10, 'OLDNU9.png', 'png', '../../archivos/10/OLDNU9.png', '2021-05-05 18:58:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_categorias`
--

CREATE TABLE `t_categorias` (
  `id_categoria` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fechaInsert` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `t_categorias`
--

INSERT INTO `t_categorias` (`id_categoria`, `id_usuario`, `nombre`, `fechaInsert`) VALUES
(5, 1, '', '2021-05-04 22:49:35'),
(6, 1, 'peliculas', '2021-05-05 01:07:00'),
(7, 1, 'Musica', '2021-05-05 01:08:01'),
(8, 9, 'categoria', '2021-05-05 05:12:19'),
(9, 1, 'pdf', '2021-05-05 06:29:11'),
(10, 10, 'nueva', '2021-05-05 18:58:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuarios`
--

CREATE TABLE `t_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `insert` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `t_usuarios`
--

INSERT INTO `t_usuarios` (`id_usuario`, `nombre`, `fechaNacimiento`, `email`, `usuario`, `password`, `insert`) VALUES
(1, 'Perez', '1999-08-11', 'ejemplo@gmail.com', 'usuario1', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2021-05-04 04:09:43'),
(2, 'Mario', '1999-08-11', 'ejemplo@gmail.com', 'ioiadmfio', 'f11a58ab3ab7770f7e0a30772dc8636f0dfb87aa', '2021-05-04 04:10:41'),
(5, 'Perez', '1999-08-11', 'ejemplo@gmail.com', 'usuario1n', '29816eae8e9b31173d5c1db098a84eb53fdf1e74', '2021-05-04 04:12:44'),
(8, 'Perez', '2021-05-11', 'ejemplo@gmail.com', 'ioiadmfio nuu', '8729dcb51f9aac9206dff1bcb6229c9fc4173b82', '2021-05-04 04:49:15'),
(9, 'Segura', '2021-05-12', 'ejemplo@gmail.com', 'usuario5', '8cb2237d0679ca88db6464eac60da96345513964', '2021-05-05 05:11:58'),
(10, 'yakumo', '2021-05-05', 'yakumo@mail.com', 'yaku', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2021-05-05 18:58:02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_archivos`
--
ALTER TABLE `t_archivos`
  ADD PRIMARY KEY (`id_archivo`),
  ADD KEY `fkArchivosCategorias_idx` (`id_categoria`),
  ADD KEY `fkUsuariosArchivos_idx` (`id_usuario`);

--
-- Indices de la tabla `t_categorias`
--
ALTER TABLE `t_categorias`
  ADD PRIMARY KEY (`id_categoria`),
  ADD KEY `fkCategoriaUsuario_idx` (`id_usuario`);

--
-- Indices de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_archivos`
--
ALTER TABLE `t_archivos`
  MODIFY `id_archivo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `t_categorias`
--
ALTER TABLE `t_categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_archivos`
--
ALTER TABLE `t_archivos`
  ADD CONSTRAINT `fkArchivosCategorias` FOREIGN KEY (`id_categoria`) REFERENCES `t_categorias` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkUsuariosArchivos` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `t_categorias`
--
ALTER TABLE `t_categorias`
  ADD CONSTRAINT `fkCategoriaUsuario` FOREIGN KEY (`id_usuario`) REFERENCES `t_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
