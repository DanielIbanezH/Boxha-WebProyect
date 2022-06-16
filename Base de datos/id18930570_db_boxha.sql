-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 23-05-2022 a las 20:09:52
-- Versión del servidor: 10.5.12-MariaDB
-- Versión de PHP: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id18930570_db_boxha`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodega`
--

CREATE TABLE `bodega` (
  `ID` int(11) NOT NULL,
  `Producto` varchar(30) NOT NULL,
  `Codigo_Producto` int(11) NOT NULL,
  `Precio` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Peso` varchar(20) NOT NULL,
  `Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bodega`
--

INSERT INTO `bodega` (`ID`, `Producto`, `Codigo_Producto`, `Precio`, `Cantidad`, `Peso`, `Stock`) VALUES
(1, 'Cafe en grano', 111111, 30, 20, '2 Kg', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id` int(11) NOT NULL,
  `id_cliente` int(9) NOT NULL,
  `harina_ac1` int(9) NOT NULL,
  `harina_ac3` int(9) NOT NULL,
  `harina_ac5` int(9) NOT NULL,
  `harina_qc1` int(9) NOT NULL,
  `harina_qc3` int(9) NOT NULL,
  `harina_qc5` int(9) NOT NULL,
  `total` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id`, `id_cliente`, `harina_ac1`, `harina_ac3`, `harina_ac5`, `harina_qc1`, `harina_qc3`, `harina_qc5`, `total`) VALUES
(21, 1, 0, 0, 0, 0, 0, 0, 0),
(22, 2, 0, 0, 0, 0, 0, 0, 0),
(23, 3, 0, 0, 0, 0, 0, 0, 0),
(24, 4, 0, 0, 0, 0, 0, 0, 0),
(25, 5, 0, 0, 0, 0, 0, 0, 0),
(26, 6, 0, 0, 0, 0, 0, 0, 0),
(27, 7, 0, 0, 0, 0, 0, 0, 0),
(28, 8, 0, 0, 0, 0, 0, 0, 0),
(29, 9, 0, 0, 0, 0, 0, 0, 0),
(30, 10, 0, 0, 0, 0, 0, 0, 0),
(31, 11, 0, 0, 0, 0, 0, 0, 0),
(32, 12, 0, 0, 0, 0, 0, 0, 0),
(33, 13, 0, 0, 0, 0, 0, 0, 0),
(34, 14, 0, 0, 0, 0, 0, 0, 0),
(35, 15, 0, 0, 0, 0, 0, 0, 0),
(36, 16, 0, 0, 0, 0, 0, 0, 0),
(37, 17, 0, 0, 0, 0, 0, 0, 0),
(38, 18, 0, 0, 0, 0, 0, 0, 0),
(39, 19, 0, 0, 0, 0, 0, 0, 0),
(40, 20, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `in_productos`
--

CREATE TABLE `in_productos` (
  `ID` int(11) NOT NULL,
  `Producto` varchar(50) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Codigo_Producto` varchar(50) NOT NULL,
  `Fecha_Caducidad` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `in_productos`
--

INSERT INTO `in_productos` (`ID`, `Producto`, `Cantidad`, `Codigo_Producto`, `Fecha_Caducidad`) VALUES
(1, 'Cafe en grano', 20, '31763176', '2023-05-31'),
(7, 'Harina de arroz', 30, '11818273', '2023-03-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `in_vent`
--

CREATE TABLE `in_vent` (
  `id` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `descripcion` varchar(75) NOT NULL,
  `precio` int(15) NOT NULL,
  `cantidad` int(15) NOT NULL,
  `codigo` int(15) NOT NULL,
  `fecha_cad` date NOT NULL,
  `stock` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `in_vent`
--

INSERT INTO `in_vent` (`id`, `producto`, `descripcion`, `precio`, `cantidad`, `codigo`, `fecha_cad`, `stock`) VALUES
(1, 'Harina arroz 1', 'Harina de arroz reforzada con reciduos de cafe, 1 kilo', 100, 480, 118182026, '2023-01-01', 'LLENO'),
(2, 'Harina arroz 3', 'Harina de arroz reforzada con reciduos de cafe, 3 kilos', 150, 500, 118182026, '2023-01-01', 'LLENO'),
(3, 'Harina arroz 5', 'Harina de arroz reforzada con reciduos de cafe, 5 kilos', 200, 495, 118182026, '2023-01-01', 'LLENO'),
(4, 'Harina quinoa 1', 'Harina de quinoa reforzada con reciduos de cafe', 150, 500, 118182035, '2023-01-01', 'LLENO'),
(5, 'Harina quinoa 3', 'Harina de quinoa reforzada con reciduos de cafe', 200, 500, 118182035, '2023-01-01', 'LLENO'),
(6, 'Harina quinoa 5', 'Harina de quinoa reforzada con reciduos de cafe', 250, 496, 118182035, '2023-01-01', 'LLENO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `in_ventas`
--

CREATE TABLE `in_ventas` (
  `id_inven` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `descripcion` text NOT NULL,
  `peso` int(5) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `precio` int(10) NOT NULL,
  `codigo_pro` varchar(50) NOT NULL,
  `fecha_cad` date NOT NULL,
  `stock` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `in_ventas`
--

INSERT INTO `in_ventas` (`id_inven`, `producto`, `descripcion`, `peso`, `cantidad`, `precio`, `codigo_pro`, `fecha_cad`, `stock`) VALUES
(1, 'cafe medio kilo', 'Harina elaborada con residuos de cafe de medio kilo', 1, 20, 50, 'cafe_MeKilo', '2023-09-09', 'LLENO'),
(2, 'cafe 1 kilo', 'Harina elaborada con residuos de cafe de un kilo', 1, 20, 100, 'cafe_1kilo', '2023-09-09', 'LLENO'),
(3, 'cafe 1 kilo medio', 'Harina elaborada con residuos de cafe de kilo y medio', 2, 20, 150, 'cafe_1Mkilo', '2023-09-09', 'LLENO'),
(4, 'cafe 2 kilos', 'Harina elaborada con residuos de cafe de dos kilos', 2, 20, 200, 'cafe_2kilo', '2023-09-09', 'LLENO'),
(5, 'cafe 3 kilos', 'Harina elaborada con residuos de cafe de tres kilos', 3, 20, 300, 'cafe_3kilo', '2023-09-09', 'LLENO'),
(6, 'cafe 5 kilos', 'Harina elaborada con residuos de cafe de cinco kilos', 5, 20, 500, 'cafe_5kilo', '2023-09-09', 'LLENO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nutrimental`
--

CREATE TABLE `nutrimental` (
  `id` int(11) NOT NULL,
  `proteina` int(15) NOT NULL,
  `grasa` int(15) NOT NULL,
  `h_carbono` int(10) DEFAULT NULL,
  `azucares` int(15) NOT NULL,
  `fibra` int(15) NOT NULL,
  `sodio` int(15) NOT NULL,
  `gluten` int(15) NOT NULL,
  `energia` int(10) DEFAULT NULL,
  `humedad` int(15) NOT NULL,
  `ceniza` int(15) NOT NULL,
  `producto` varchar(50) DEFAULT NULL,
  `codigo_pro` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nutrimental`
--

INSERT INTO `nutrimental` (`id`, `proteina`, `grasa`, `h_carbono`, `azucares`, `fibra`, `sodio`, `gluten`, `energia`, `humedad`, `ceniza`, `producto`, `codigo_pro`) VALUES
(0, 14, 7, 62, 4, 6, 15, 0, 0, 0, 0, 'arroz', '1181815260'),
(1, 7, 1, 80, 0, 1, 0, 0, 0, 0, 0, 'quinoa', '1721914151'),
(2, 14, 11, 0, 0, 37, 0, 0, 235, 5, 9, 'cafe', '3165316500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes`
--

CREATE TABLE `ordenes` (
  `id_cliente` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `producto` varchar(100) NOT NULL,
  `kilogramos` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `hora` time NOT NULL,
  `fecha` text NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ordenes`
--

INSERT INTO `ordenes` (`id_cliente`, `id_pedido`, `producto`, `kilogramos`, `cantidad`, `precio`, `direccion`, `hora`, `fecha`, `estado`) VALUES
(2, 10, 'cafe 1 kilo', 1, 6, 600, 'Callejon Alberto Cinta #87', '17:39:36', '2022-04-30', 'En almacen'),
(2, 11, 'cafe 3 kilos', 3, 5, 1500, 'Callejon Alberto Cinta #87', '19:31:29', '2022-04-30', 'Enviado'),
(2, 12, 'cafe 3 kilos', 3, 5, 1500, 'Callejon Alberto Cinta #87', '21:23:26', '2022-04-30', 'En almacen'),
(2, 13, 'cafe 3 kilos', 3, 9, 2700, 'Callejon Alberto Cinta #87', '22:54:20', '2022-05-08', 'ENTREGADO'),
(2, 17, 'cafe 1 kilo y medio', 1.5, 4, 600, 'Callejon Alberto Cinta #87', '17:02:40', '2022-05-13', 'ENTREGADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenes_new`
--

CREATE TABLE `ordenes_new` (
  `id` int(11) NOT NULL,
  `id_cliente` int(9) NOT NULL,
  `harina_ac1` int(9) NOT NULL,
  `harina_ac3` int(9) NOT NULL,
  `harina_ac5` int(9) NOT NULL,
  `harina_qc1` int(9) NOT NULL,
  `harina_qc3` int(9) NOT NULL,
  `harina_qc5` int(9) NOT NULL,
  `total` int(9) NOT NULL,
  `fecha` date NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `estado` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ordenes_new`
--

INSERT INTO `ordenes_new` (`id`, `id_cliente`, `harina_ac1`, `harina_ac3`, `harina_ac5`, `harina_qc1`, `harina_qc3`, `harina_qc5`, `total`, `fecha`, `direccion`, `estado`) VALUES
(1, 2, 3, 3, 3, 3, 3, 3, 3100, '2022-05-20', 'hacienda la llave 2333', 'EN ALMACEN'),
(2, 2, 3, 3, 3, 0, 0, 0, 1350, '2022-05-20', 'hacienda la llave 2333', 'ENVIADO'),
(3, 2, 0, 0, 0, 3, 3, 3, 1800, '2022-05-20', 'hacienda la llave 2333', 'ENTREGADO'),
(5, 2, 10, 0, 0, 0, 0, 4, 2000, '2022-05-21', 'hacienda san martin de las flores 2635', 'EN ALMACEN'),
(6, 2, 10, 0, 0, 0, 0, 4, 2000, '2022-05-22', 'hacienda san martin de las flores 2635', 'EN ALMACEN'),
(7, 2, 10, 0, 5, 0, 0, 0, 2000, '2022-05-22', 'hacienda san martin de las flores 2635', 'EN ALMACEN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina_web_clientes`
--

CREATE TABLE `pagina_web_clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `nivel` varchar(9) NOT NULL,
  `edad` varchar(9) NOT NULL,
  `fecha` datetime NOT NULL,
  `direccion` varchar(75) NOT NULL,
  `postal` int(6) NOT NULL,
  `tel1` int(14) NOT NULL,
  `tel2` int(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pagina_web_clientes`
--

INSERT INTO `pagina_web_clientes` (`id`, `nombre`, `correo`, `usuario`, `contraseña`, `nivel`, `edad`, `fecha`, `direccion`, `postal`, `tel1`, `tel2`) VALUES
(1, 'Eden Hernandez', 'cliente1@gmail.com', 'eden30', '12345', '1', '21', '2001-01-01 00:00:00', 'hacienda san martin de las flores 2635', 44700, 2147483647, 2147483647),
(2, 'diana ferrero', 'cliente2@gmail.com', 'Diana3', '12345', '1', '21', '2001-01-01 00:00:00', 'hacienda san martin de las flores 2635', 44700, 2147483647, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina_web_usuarios`
--

CREATE TABLE `pagina_web_usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `correo` varchar(60) NOT NULL,
  `contraseña` varchar(40) NOT NULL,
  `usuario` varchar(60) NOT NULL,
  `nivel` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pagina_web_usuarios`
--

INSERT INTO `pagina_web_usuarios` (`id`, `nombre`, `correo`, `contraseña`, `usuario`, `nivel`) VALUES
(1, 'Joshua Diaz Sanchez', 'agente@gmail.com', '12345', 'Josh25', 2),
(8, 'Eden Hernandez', 'cliente1@gmail.com', '12345', 'eden30', 1),
(9, 'diana ferrero', 'cliente2@gmail.com', '12345', 'loquendo', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedidos` int(11) NOT NULL,
  `id_cliente` int(10) NOT NULL,
  `cafe_MeKilo` int(10) NOT NULL,
  `cafe_1kilo` int(10) NOT NULL,
  `cafe_1Mkilo` int(10) NOT NULL,
  `cafe_2kilo` int(10) NOT NULL,
  `cafe_3kilo` int(10) NOT NULL,
  `cafe_5kilo` int(10) NOT NULL,
  `pre_MeKilo` int(10) NOT NULL,
  `pre_1kilo` int(10) NOT NULL,
  `pre_1Mkilo` int(10) NOT NULL,
  `pre_2kilo` int(10) NOT NULL,
  `pre_3kilo` int(10) NOT NULL,
  `pre_5kilo` int(10) NOT NULL,
  `pre_total` int(10) NOT NULL,
  `direccion_envio` varchar(75) NOT NULL,
  `hora_ade` time NOT NULL,
  `fecha_ade` date NOT NULL,
  `descripcion` varchar(250) NOT NULL,
  `nivel_envio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedidos`, `id_cliente`, `cafe_MeKilo`, `cafe_1kilo`, `cafe_1Mkilo`, `cafe_2kilo`, `cafe_3kilo`, `cafe_5kilo`, `pre_MeKilo`, `pre_1kilo`, `pre_1Mkilo`, `pre_2kilo`, `pre_3kilo`, `pre_5kilo`, `pre_total`, `direccion_envio`, `hora_ade`, `fecha_ade`, `descripcion`, `nivel_envio`) VALUES
(1, 3, 1, 1, 1, 1, 1, 1, 50, 100, 150, 200, 300, 500, 1300, 'hacienda la llave 2333', '17:30:00', '2022-05-25', 'en una casa antigua', 1),
(2, 1, 0, 3, 0, 0, 0, 1, 0, 100, 0, 0, 0, 500, 600, 'hacienda el cabezon 6969', '08:00:00', '2022-06-30', 'mamarre', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `produccion`
--

CREATE TABLE `produccion` (
  `ID_Pedido` int(11) NOT NULL,
  `Nombre_Comprador` varchar(70) NOT NULL,
  `Direccion_Comprador` varchar(100) NOT NULL,
  `Producto_Comprado` varchar(30) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Fecha_Pedido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `produccion`
--

INSERT INTO `produccion` (`ID_Pedido`, `Nombre_Comprador`, `Direccion_Comprador`, `Producto_Comprado`, `Cantidad`, `Fecha_Pedido`) VALUES
(1, 'Moises Echeverria Ortiz', 'Enrique segoviano #1234', 'Harina', 5, '2022-05-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Nombre(s)` varchar(70) NOT NULL,
  `Apellidos` varchar(100) NOT NULL,
  `Genero` varchar(10) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Contraseña` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nombre(s)`, `Apellidos`, `Genero`, `Correo`, `Contraseña`) VALUES
(1, 'Moises', 'Echeverria Ortiz', 'Masculino', 'moyses@gmail.com', '12345');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bodega`
--
ALTER TABLE `bodega`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `carrito`
--
ALTER TABLE `carrito`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `in_productos`
--
ALTER TABLE `in_productos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `in_vent`
--
ALTER TABLE `in_vent`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `in_ventas`
--
ALTER TABLE `in_ventas`
  ADD PRIMARY KEY (`id_inven`);

--
-- Indices de la tabla `nutrimental`
--
ALTER TABLE `nutrimental`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Indices de la tabla `ordenes_new`
--
ALTER TABLE `ordenes_new`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagina_web_clientes`
--
ALTER TABLE `pagina_web_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagina_web_usuarios`
--
ALTER TABLE `pagina_web_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedidos`);

--
-- Indices de la tabla `produccion`
--
ALTER TABLE `produccion`
  ADD PRIMARY KEY (`ID_Pedido`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bodega`
--
ALTER TABLE `bodega`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carrito`
--
ALTER TABLE `carrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `in_productos`
--
ALTER TABLE `in_productos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `in_vent`
--
ALTER TABLE `in_vent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `in_ventas`
--
ALTER TABLE `in_ventas`
  MODIFY `id_inven` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `nutrimental`
--
ALTER TABLE `nutrimental`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ordenes`
--
ALTER TABLE `ordenes`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `ordenes_new`
--
ALTER TABLE `ordenes_new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `pagina_web_clientes`
--
ALTER TABLE `pagina_web_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pagina_web_usuarios`
--
ALTER TABLE `pagina_web_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedidos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `produccion`
--
ALTER TABLE `produccion`
  MODIFY `ID_Pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
