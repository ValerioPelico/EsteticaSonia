-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 29-08-2021 a las 05:12:50
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `desarrollo_web`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE IF NOT EXISTS `tblproductos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Aceite Ajonjolin Extra Virgen Ines', '39.00', 'Aceite', 'https://latorremx.vteximg.com.br/arquivos/ids/166271/2007972-frontal.jpg?v=637279550882730000'),
(2, 'Café Instantáneo Clásico Nescafé', '27.00', 'Café', 'https://latorremx.vteximg.com.br/arquivos/ids/161141/114830-frontal.jpg?v=637193668877700000'),
(3, 'Azúcar Caña Real', '17.95', 'Azucar', 'https://latorremx.vteximg.com.br/arquivos/ids/164475/4758-frontal.jpg?v=637240658505700000'),
(4, 'Barras Cereal Peanut Special K', '34.90', 'Barras de Cereal', 'https://latorremx.vteximg.com.br/arquivos/ids/166185/119680-frontal.jpg?v=637279550337870000'),
(5, 'Frijoles Volteados Negros Del Monte Doypack', '7.90', 'Frijoles ', 'https://latorremx.vteximg.com.br/arquivos/ids/163074/90404-frontal.jpg?v=637240656595470000'),
(6, 'Gnocchi Papa Delverde', '32.00', 'Pastas', 'https://latorremx.vteximg.com.br/arquivos/ids/165576/41959-frontal.jpg?v=637240673615530000'),
(7, 'Canela Molida McCormick Frasco', '11.75', 'Condimentos', 'https://latorremx.vteximg.com.br/arquivos/ids/167209/8643-frontal.jpg?v=637292397154370000'),
(8, 'Kétchup Heinz', '11.90', 'Salsas y Aderezos', 'https://latorremx.vteximg.com.br/arquivos/ids/165901/88631-frontal.jpg?v=637240677838300000'),
(9, 'Mayonesa Hellmanns Tarro', '16.90', 'Salsas y Aderezos', 'https://latorremx.vteximg.com.br/arquivos/ids/156257/1202-frontal.jpg?v=637190477467800000'),
(10, 'Mostaza Dijon Roland', '31.55', 'Salsas y Aderezos', 'https://latorremx.vteximg.com.br/arquivos/ids/167065/115171-frontal.jpg?v=637292391266470000'),
(11, 'Camarón Bandeja Coctel Pescanova', '36.50', 'Pescados y Mariscos', 'https://latorremx.vteximg.com.br/arquivos/ids/168746/2013471-frontal.jpg?v=637365034324670000'),
(12, 'Carne Adobada Feso', '24.35', 'Cerdo', 'https://latorremx.vteximg.com.br/arquivos/ids/163081/90660-frontal.jpg?v=637240656607500000'),
(13, 'Chuletas Pechuga Pollo Pio Lindo 2Lb', '39.00', 'Pollo', 'https://latorremx.vteximg.com.br/arquivos/ids/171724/81190-frontal.jpg?v=637650724298070000'),
(14, 'Lomo Grande 1.50Lb', '61.23', 'Carne', 'https://latorremx.vteximg.com.br/arquivos/ids/169681/102323-frontal.jpg?v=637407965378800000'),
(15, 'Bebida Almendra Original Blue Diamond', '24.55', 'Lacteos', 'https://latorremx.vteximg.com.br/arquivos/ids/162686/83846-frontal.jpg?v=637240656036930000'),
(16, 'Leche UHT Descremada Delactomy', '15.55', 'Lacteos', 'https://latorremx.vteximg.com.br/arquivos/ids/163486/11097-frontal.jpg?v=637240657130230000'),
(17, 'Mantequilla Sin Sal Anchor', '33.05', 'Mantequillas y Margarinas', 'https://latorremx.vteximg.com.br/arquivos/ids/157117/11968-frontal.jpg?v=637190576955630000'),
(18, 'Flan Vainilla Caramelo Castilla', '6.80', 'Postres', 'https://latorremx.vteximg.com.br/arquivos/ids/168484/116192-frontal.jpg?v=637346595655700000'),
(19, 'Coca Cola Original', '17.50', 'Bebidas', 'https://latorremx.vteximg.com.br/arquivos/ids/163698/466-frontal.jpg?v=637240657378130000'),
(20, 'Altos Las Hormigas Malbec Clásico', '170.15', 'Bebidas', 'https://latorremx.vteximg.com.br/arquivos/ids/167532/82165-frontal.jpg?v=637302560760770000');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
