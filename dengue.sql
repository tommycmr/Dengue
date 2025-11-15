-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2024 a las 01:33:33
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dengue`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `ID_Paciente` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `DNI` varchar(10) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Barrio` varchar(100) NOT NULL,
  `Telefono` varchar(100) NOT NULL,
  `Genero` varchar(12) NOT NULL,
  `tipo_Dengue` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`ID_Paciente`, `Nombre`, `DNI`, `Direccion`, `Barrio`, `Telefono`, `Genero`, `tipo_Dengue`) VALUES
(8, 'damaris', 'dd', 'dasdasd', 'El Carmen', '52154040', 'Femenino', 'A'),
(9, 'Martin', 'asds', 'dsad', 'La Finca', 'asd', 'Masculino', 'A'),
(11, 'Melisa', 'asdss', 'ddd', 'El Carmen', 'asdasd', 'Femenino', 'B'),
(12, 'gabi', 'asdadasd', 'asdasdasdad', 'San Francisco', 'dsasdasdasd', 'Masculino', 'A'),
(13, 'damarisdad', 'asdasddasd', 'asdasdasdasdas', 'La Finca', 'dsdd', 'Masculino', 'C'),
(14, 'asda', 'dsdsdsd', 'dsdsdsds', 'La Finca', 'sddsdsd', 'Masculino', 'B'),
(15, 'asdasd', 'asdasd', 'asdasda', 'San Francisco', 'adsadasdads', 'Masculino', 'B');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes2`
--

CREATE TABLE `pacientes2` (
  `ID_Paciente` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `DNI` varchar(13) NOT NULL,
  `Direccion` varchar(150) NOT NULL,
  `Barrio` varchar(100) NOT NULL,
  `Telefono` varchar(100) NOT NULL,
  `Genero` varchar(12) NOT NULL,
  `tipo_Dengue` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `Nombre`, `Correo`, `contraseña`) VALUES
(1, 'Martin', 'martinmamani05@gmail.com', 'contraseña');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`ID_Paciente`),
  ADD UNIQUE KEY `DNI` (`DNI`);

--
-- Indices de la tabla `pacientes2`
--
ALTER TABLE `pacientes2`
  ADD PRIMARY KEY (`ID_Paciente`),
  ADD UNIQUE KEY `DNI` (`DNI`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `Correo` (`Correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `ID_Paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `pacientes2`
--
ALTER TABLE `pacientes2`
  MODIFY `ID_Paciente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
