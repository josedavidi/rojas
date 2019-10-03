-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-10-2019 a las 23:35:17
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rojas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda_procesos`
--

DROP TABLE IF EXISTS `agenda_procesos`;
CREATE TABLE IF NOT EXISTS `agenda_procesos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipo_id` int(11) NOT NULL,
  `mes_id` int(11) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `age` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `agenda_procesos`
--

INSERT INTO `agenda_procesos` (`id`, `equipo_id`, `mes_id`, `proceso_id`, `age`) VALUES
(30, 34, 10, 65, '2019'),
(29, 34, 10, 61, '2019'),
(28, 34, 10, 60, '2019'),
(27, 32, 10, 55, '2019'),
(26, 32, 10, 52, '2019');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

DROP TABLE IF EXISTS `equipos`;
CREATE TABLE IF NOT EXISTS `equipos` (
  `id` int(3) DEFAULT NULL,
  `id_sistema` int(1) DEFAULT NULL,
  `id_subsistema` int(2) DEFAULT NULL,
  `nombre` varchar(64) DEFAULT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `id_sistema`, `id_subsistema`, `nombre`, `foto`) VALUES
(1, 1, 1, 'FM-S4-BC-1 FLACSO MATRIZ BOMBA CONTRAINCENDIO 1', '../images/equipos/avatar_equipo.png'),
(2, 1, 1, 'FM-S4-BJ-1 FLACSO MATRIZ BOMBA JOCKEY 1', '../images/equipos/avatar_equipo.png'),
(3, 3, 11, 'FM-S4-BP-1 FLACSO MATRIZ BOMBA AGUA POTABLE 1', '../images/equipos/avatar_equipo.png'),
(4, 3, 11, 'FM-S4-BP-2 FLACSO MATRIZ BOMBA AGUA POTABLE 2', '../images/equipos/avatar_equipo.png'),
(5, 3, 11, 'FM-S4-BP-3 FLACSO MATRIZ BOMBA AGUA POTABLE 3', '../images/equipos/avatar_equipo.png'),
(6, 3, 9, 'FM-S4-BLL-1 FLACSO MATRIZ BOMBA AGUAS LLUVIAS 1', '../images/equipos/avatar_equipo.png'),
(7, 3, 9, 'FM-S4-BLL-2 FLACSO MATRIZ BOMBA AGUAS LLUVIAS 2', '../images/equipos/avatar_equipo.png'),
(8, 3, 9, 'FM-S4-BLL-3 FLACSO MATRIZ BOMBA AGUAS LLUVIAS 3', '../images/equipos/avatar_equipo.png'),
(9, 3, 8, 'FM-S4-BS-1 FLACSO MATRIZ BOMBA AGUAS SERVIDAS 1', '../images/equipos/avatar_equipo.png'),
(10, 3, 8, 'FM-S4-BS-2 FLACSO MATRIZ BOMBA AGUAS SERVIDAS 2', '../images/equipos/avatar_equipo.png'),
(11, 3, 10, 'FM-S4-BNF-1 FLACSO MATRIZ BOMBA NIVEL FREATICO 1', '../images/equipos/avatar_equipo.png'),
(12, 3, 10, 'FM-S4-BNF-2 FLACSO MATRIZ BOMBA NIVEL FREATICO 2', '../images/equipos/avatar_equipo.png'),
(13, 3, 10, 'FM-S4-BNF-3 FLACSO MATRIZ BOMBA NIVEL FREATICO 3', '../images/equipos/avatar_equipo.png'),
(14, 3, 10, 'FM-S4-BNF-4 FLACSO MATRIZ BOMBA NIVEL FREATICO 4', '../images/equipos/avatar_equipo.png'),
(15, 1, 2, 'FM-S4-BPR-1 FLACSO MATRIZ BANCO DE PRUEBAS ROCIADORES 1', '../images/equipos/avatar_equipo.png'),
(16, 1, 2, 'FM-S3-BPR-2 FLACSO MATRIZ BANCO DE PRUEBAS ROCIADORES 2', '../images/equipos/avatar_equipo.png'),
(17, 1, 2, 'FM-S2-BPR-3 FLACSO MATRIZ BANCO DE PRUEBAS ROCIADORES 3', '../images/equipos/avatar_equipo.png'),
(18, 1, 2, 'FM-S1-BPR-4 FLACSO MATRIZ BANCO DE PRUEBAS ROCIADORES 4', '../images/equipos/avatar_equipo.png'),
(19, 1, 2, 'T1-PB-BPR-5 TORRE 1 BANCO DE PRUEBAS ROCIADORES 5', '../images/equipos/avatar_equipo.png'),
(20, 1, 2, 'T1-P1-BPR-6 TORRE 1 BANCO DE PRUEBAS ROCIADORES 6', '../images/equipos/avatar_equipo.png'),
(21, 1, 2, 'T1-P2-BPR-7 TORRE 1 BANCO DE PRUEBAS ROCIADORES 7', '../images/equipos/avatar_equipo.png'),
(22, 1, 2, 'T1-P3-BPR-8 TORRE 1 BANCO DE PRUEBAS ROCIADORES 8', '../images/equipos/avatar_equipo.png'),
(23, 1, 2, 'T1-P4-BPR-9 TORRE 1 BANCO DE PRUEBAS ROCIADORES 9', '../images/equipos/avatar_equipo.png'),
(24, 1, 2, 'T1-P5-BPR-10 TORRE 1 BANCO DE PRUEBAS ROCIADORES 10', '../images/equipos/avatar_equipo.png'),
(25, 1, 2, 'T1-P5-BPR-11 TORRE 1 BANCO DE PRUEBAS ROCIADORES 11', '../images/equipos/avatar_equipo.png'),
(26, 1, 2, 'T1-P7-BPR-12 TORRE 1 BANCO DE PRUEBAS ROCIADORES 12', '../images/equipos/avatar_equipo.png'),
(27, 1, 2, 'T1-P8-BPR-13 TORRE 1 BANCO DE PRUEBAS ROCIADORES 13', '../images/equipos/avatar_equipo.png'),
(28, 1, 2, 'T1-P9-BPR-14 TORRE 1 BANCO DE PRUEBAS ROCIADORES 14', '../images/equipos/avatar_equipo.png'),
(29, 1, 2, 'T1-P10-BPR-15 TORRE 1 BANCO DE PRUEBAS ROCIADORES 15', '../images/equipos/avatar_equipo.png'),
(30, 2, 7, 'FM-S2-SE-1 FLACSO MATRIZ SISTEMA DE EXTRACCION 1', '../images/equipos/avatar_equipo.png'),
(31, 2, 12, 'FM-S2-SV-1 FLACSO MATRIZ SISTEMA DE VENTILACION 1', '../images/equipos/avatar_equipo.png'),
(32, 2, 5, 'FM-S2-UC-1 FLACSO MATRIZ UNIDAD CONDENSADORA 1', '../images/equipos/avatar_equipo.png'),
(33, 2, 6, 'T2-P9-EV-1 TORRE 2 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(34, 2, 6, 'T2-P9-EV-2 TORRE 2 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(35, 2, 6, 'T2-P9-EV-3 TORRE 2 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(36, 2, 6, 'T2-P9-EV-4 TORRE 2 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(37, 2, 7, 'T2-P9-SE-1 TORRE 2 SISTEMA DE EXTRACCION 1', '../images/equipos/avatar_equipo.png'),
(38, 2, 7, 'T2-P9-SE-2 TORRE 2 SISTEMA DE EXTRACCION 2', '../images/equipos/avatar_equipo.png'),
(39, 2, 12, 'T2-P9-SP-1 TORRE 2 P9 SISTEMA DE PRESURIZACION 1', '../images/equipos/avatar_equipo.png'),
(40, 2, 12, 'T2-P9-SG-1 TORRE 2 P9 SUMINISTRO A GRADAS ', '../images/equipos/avatar_equipo.png'),
(41, 2, 7, 'T2-P9-SE-3 TORRE 2 SISTEMA DE EXTRACCION', '../images/equipos/avatar_equipo.png'),
(42, 2, 12, 'T1-P9-SA-1 TORRE 1 SUMINISTRO DE AIRE', '../images/equipos/avatar_equipo.png'),
(43, 2, 7, 'T1-P9-SE-4 TORRE 1 SISTEMA DE ESTRACCION 4', '../images/equipos/avatar_equipo.png'),
(44, 2, 12, 'T1-P9-SE-5 TORRE 1 SISTEMA DE SUMINISTRO DE AIRE 5', '../images/equipos/avatar_equipo.png'),
(45, 2, 6, 'T1-P9-EV-1 TORRE 1 EVAPORADOR  1', '../images/equipos/avatar_equipo.png'),
(46, 2, 6, 'T1-P9-EV-2 TORRE 1 EVAPORADOR  2', '../images/equipos/avatar_equipo.png'),
(47, 2, 6, 'T1-P9-EV-3 TORRE 1 EVAPORADOR  3', '../images/equipos/avatar_equipo.png'),
(48, 2, 6, 'T1-P9-EV-4 TORRE 1 EVAPORADOR  4', '../images/equipos/avatar_equipo.png'),
(49, 2, 6, 'T1-P9-EV-5 TORRE 1 EVAPORADOR  5', '../images/equipos/avatar_equipo.png'),
(50, 2, 6, 'T1-P9-EV-6 TORRE 1 EVAPORADOR  6', '../images/equipos/avatar_equipo.png'),
(51, 2, 12, 'T1-G-SP-2 TORRE 1 SISTEMA DE PRESURIZACION GRADAS 2', '../images/equipos/avatar_equipo.png'),
(52, 2, 5, 'T1-PB-UC-1 TORRE 1 UNIDAD CONDENSADORA 1', '../images/equipos/avatar_equipo.png'),
(53, 2, 5, 'FM-S1-UC-2 FLACSO MATRIZ UNIDAD CONDENSADORA 2', '../images/equipos/avatar_equipo.png'),
(54, 2, 12, 'FM-S1-SA-2 FLACSO MATRIZ SUMINISTRO DE AIRE HALL ASCENSORES 2', '../images/equipos/avatar_equipo.png'),
(55, 2, 12, 'T1-P1-SA-3 TORRE 1 SUMINISTRO DE AIRE COMEDOR 3', '../images/equipos/avatar_equipo.png'),
(56, 2, 7, 'T1-P1-SE-6 TORRE 1 SISTEMA DE EXTRACCION AIRE COMEDOR 6', '../images/equipos/avatar_equipo.png'),
(57, 2, 6, 'FM-S1-EV-1 FLACSO MATRIZ EVAPORADOR AUDITORIO 1', '../images/equipos/avatar_equipo.png'),
(58, 2, 6, 'FM-S1-EV-2 FLACSO MATRIZ EVAPORADOR AUDITORIO 2', '../images/equipos/avatar_equipo.png'),
(59, 1, 1, 'FB-S3-BC-1 FLACSO BIBLIOTECA BOMBA CONTRAINCENDIOS 1', '../images/equipos/avatar_equipo.png'),
(60, 1, 1, 'FB-S3-BJ-1 FLACSO BIBLIOTECA BOMBA JOCKEY 1', '../images/equipos/avatar_equipo.png'),
(61, 3, 11, 'FB-S3-BP-1 FLACSO BIBLIOTECA BOMBA AGUA POTABLE 1', '../images/equipos/avatar_equipo.png'),
(62, 3, 11, 'FB-S3-BP-2 FLACSO BIBLIOTECA BOMBA AGUA POTABLE 2', '../images/equipos/avatar_equipo.png'),
(63, 1, 2, 'FB-S3-BPR-1 FLACSO BIBLIOTECA BANCO DE PRUEBA  ROCIDADORES 1', '../images/equipos/avatar_equipo.png'),
(64, 1, 2, 'FB-S2-BPR-2 FLACSO BIBLIOTECA BANCO DE PRUEBA  ROCIADORES 2', '../images/equipos/avatar_equipo.png'),
(65, 1, 2, 'FB-S3-BPR-3 FLACSO BIBLIOTECA BANCO DE PRUEBA  ROCIDADORES 3', '../images/equipos/avatar_equipo.png'),
(66, 1, 2, 'FB-S2-BPR-4 FLACSO BIBLIOTECA BANCO DE PRUEBA  ROCIADORES 4', '../images/equipos/avatar_equipo.png'),
(67, 1, 2, 'FB-S3-BPR-5 FLACSO BIBLIOTECA BANCO DE PRUEBA  ROCIDADORES 5', '../images/equipos/avatar_equipo.png'),
(68, 1, 2, 'FB-S2-BPR-6 FLACSO BIBLIOTECA BANCO DE PRUEBA  ROCIADORES 6', '../images/equipos/avatar_equipo.png'),
(69, 1, 2, 'FB-S3-BPR-7 FLACSO BIBLIOTECA BANCO DE PRUEBA  ROCIDADORES 7', '../images/equipos/avatar_equipo.png'),
(70, 3, 10, 'FB-S3-BNF-1 FLACSO BIBLIOTECA BOMBA NIVEL FREATICO 1', '../images/equipos/avatar_equipo.png'),
(71, 3, 10, 'FB-S3-BNF-2 FLACSO BIBLIOTECA BOMBA NIVEL FREATICO 2', '../images/equipos/avatar_equipo.png'),
(72, 2, 7, 'FB-S1-SE-1 FLACSO BIBLIOTECA SISTEMA DE EXTRACCION 1', '../images/equipos/avatar_equipo.png'),
(73, 2, 7, 'FB-S2-SE-2 FLACSO BIBLIOTECA SISTEMA DE EXTRACCION 2', '../images/equipos/avatar_equipo.png'),
(74, 2, 7, 'FB-S3-SE-3 FLACSO BIBLIOTECA SISTEMA DE EXTRACCION 3', '../images/equipos/avatar_equipo.png'),
(75, 2, 5, 'FB-T-UC-1 FLACSO BIBLIOTECA UNIDAD DE CONDENSACION 1', '../images/equipos/avatar_equipo.png'),
(76, 2, 5, 'FB-T-UC-2 FLACSO BIBLIOTECA UNIDAD DE CONDENSACION 2', '../images/equipos/avatar_equipo.png'),
(77, 2, 5, 'FB-T-UC-3 FLACSO BIBLIOTECA UNIDAD DE CONDENSACION 3', '../images/equipos/avatar_equipo.png'),
(78, 2, 5, 'FB-T-UC-4 FLACSO BIBLIOTECA UNIDAD DE CONDENSACION 4', '../images/equipos/avatar_equipo.png'),
(79, 2, 5, 'FB-T-UC-5 FLACSO BIBLIOTECA UNIDAD DE CONDENSACION 5', '../images/equipos/avatar_equipo.png'),
(80, 2, 5, 'FB-T-UC-6 FLACSO BIBLIOTECA UNIDAD DE CONDENSACION 6', '../images/equipos/avatar_equipo.png'),
(81, 2, 5, 'FB-T-UC-7 FLACSO BIBLIOTECA UNIDAD DE CONDENSACION 7', '../images/equipos/avatar_equipo.png'),
(82, 2, 5, 'FB-T-UC-8 FLACSO BIBLIOTECA UNIDAD DE CONDENSACION 8', '../images/equipos/avatar_equipo.png'),
(83, 2, 5, 'FB-T-UC-9 FLACSO BIBLIOTECA UNIDAD DE CONDENSACION 9', '../images/equipos/avatar_equipo.png'),
(84, 2, 7, 'FB-T-SE-4 FLACSO BIBLOTECA SISTEMA DE EXTRACCION BA?OS 4', '../images/equipos/avatar_equipo.png'),
(85, 2, 12, 'FB-G-SP-1 FLACSO BIBLIOTECA SISTEMA DE PRESURIZACION DE GRADAS 1', '../images/equipos/avatar_equipo.png'),
(86, 2, 12, 'FB-S1-SA-1 FLACSO BIBLIOTECA SUMINISTRO DE AIRE 1', '../images/equipos/avatar_equipo.png'),
(87, 2, 6, 'FB-PB-AC-3 FLACSO BIBLIOTECA EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(88, 2, 13, 'FB-PB-UP-1 FLACSO BIBLIOTECA UNIDAD TIPO PAQUETE 48000 1', '../images/equipos/avatar_equipo.png'),
(89, 2, 13, 'FB-PB-US-1 FLACSO BIBLIOTECA UNIDAD SPLIT DE PARED 16000', '../images/equipos/avatar_equipo.png'),
(90, 2, 12, 'FB-PB-SA-2 FLACSO BIBLIOTECA SUMINISTRO DE AIRE 2', '../images/equipos/avatar_equipo.png'),
(91, 2, 5, 'FB-PB-UC-10 FLACSO BIBLIOTECA UNIDAD CONDENSADOR CINE 10', '../images/equipos/avatar_equipo.png'),
(92, 1, 1, 'FD-S1-BC-1 FLACSO DOCTORADO BOMBA CONTRAINCENDIO 1', '../images/equipos/avatar_equipo.png'),
(93, 3, 11, 'FD-S1-BP-1 FLACSO DOCTORADO BOMBA DE AGUA POTABLE 1', '../images/equipos/avatar_equipo.png'),
(94, 2, 13, 'FD-S1-US-1 FLACSO DOCTORADO UNIDAD TIPO SPLIT 16000 1', '../images/equipos/avatar_equipo.png'),
(95, 2, 6, 'T2-S1-EV1 TORRE 2 SUBSUELO 1 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(96, 2, 6, 'T2-S1-EV2 TORRE 2 SUBSUELO 1 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(97, 2, 6, 'T2-S1-EV3 TORRE 2 SUBSUELO 1 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(98, 2, 6, 'T2-S1-EV4  TORRE 2 SUBSUELO 1 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(99, 2, 6, 'T2-S1-EV5 TORRE 2 SUBSUELO 1 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(100, 2, 6, 'T2-S1-EV6 TORRE 2 SUBSUELO 1 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(101, 2, 6, 'T2-S1-EV7 TORRE 2 SUBSUELO 1 EVAPORADOR 7', '../images/equipos/avatar_equipo.png'),
(102, 2, 6, 'T2-S1-EV8 TORRE 2 SUBSUELO 1 EVAPORADOR 8', '../images/equipos/avatar_equipo.png'),
(103, 2, 6, 'T2-S1-EV9 TORRE 2 SUBSUELO 1 EVAPORADOR 9', '../images/equipos/avatar_equipo.png'),
(104, 2, 6, 'T2-S1-EV10 TORRE 2 SUBSUELO 1 EVAPORADOR 10', '../images/equipos/avatar_equipo.png'),
(105, 2, 6, 'T2-S1-EV11 TORRE 2 SUBSUELO 1 EVAPORADOR 11', '../images/equipos/avatar_equipo.png'),
(106, 2, 6, 'T2-S1-EV12 TORRE 2 SUBSUELO 1 EVAPORADOR 12', '../images/equipos/avatar_equipo.png'),
(107, 2, 6, 'T1-S1-EV1 TORRE 1 SUBSUELO 1 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(108, 2, 6, 'T1-S1-EV2 TORRE 1 SUBSUELO 1 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(109, 2, 6, 'T1-S1-EV3 TORRE 1 SUBSUELO 1 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(110, 2, 6, 'T1-S1-EV4 TORRE 1 SUBSUELO 1 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(111, 2, 6, 'T1-S1-EV5 TORRE 1 SUBSUELO 1 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(112, 2, 6, 'T1-S1-EV6 TORRE 1 SUBSUELO 1 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(113, 2, 6, 'T1-S1-EV7 TORRE 1 SUBSUELO 1 EVAPORADOR 7', '../images/equipos/avatar_equipo.png'),
(114, 2, 6, 'T1-S1-EV8 TORRE 1 SUBSUELO 1 EVAPORADOR 8', '../images/equipos/avatar_equipo.png'),
(115, 2, 6, 'T1-S1-EV9 TORRE 1 SUBSUELO 1 EVAPORADOR 9', '../images/equipos/avatar_equipo.png'),
(116, 2, 6, 'T1-S1-EV10 TORRE 1 SUBSUELO 1 EVAPORADOR 10', '../images/equipos/avatar_equipo.png'),
(117, 2, 6, 'T2-PB-EV1 TORRE 2 PLANTA BAJA EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(118, 2, 6, 'T2-PB-EV2 TORRE 2 PLANTA BAJA EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(119, 2, 6, 'T2-P1-EV1 TORRE 2 PLANTA 1 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(120, 2, 6, 'T2-P1-EV2 TORRE 2 PLANTA 1 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(121, 2, 6, 'T2-P1-EV3 TORRE 2 PLANTA 1 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(122, 2, 6, 'T2-P1-EV4 TORRE 2 PLANTA 1 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(123, 2, 6, 'T2-P1-EV5 TORRE 2 PLANTA 1 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(124, 2, 6, 'T2-P1-EV6 TORRE 2 PLANTA 1 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(125, 2, 6, 'T1-P1-EV1 TORRE 1 PLANTA 1 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(126, 2, 6, 'T1-P1-EV2 TORRE 1 PLANTA 1 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(127, 2, 6, 'T1-P1-EV3 TORRE 1 PLANTA 1 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(128, 2, 6, 'T1-P1-EV4 TORRE 1 PLANTA 1 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(129, 2, 6, 'T1-P1-EV5 TORRE 1 PLANTA 1 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(130, 2, 6, 'T1-P1-EV6 TORRE 1 PLANTA 1 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(131, 2, 6, 'T1-P1-EV7 TORRE 1 PLANTA 1 EVAPORADOR 7', '../images/equipos/avatar_equipo.png'),
(132, 2, 14, 'T2-P2-FC1 TORRE 2 PLANTA 2 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(133, 2, 14, 'T2-P2-FC2 TORRE 2 PLANTA 2 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(134, 2, 14, 'T2-P2-FC3 TORRE 2 PLANTA 2 FAN COIL 3', '../images/equipos/avatar_equipo.png'),
(135, 2, 14, 'T2-P2-FC4 TORRE 2 PLANTA 2 FAN COIL 4', '../images/equipos/avatar_equipo.png'),
(136, 2, 14, 'T2-P2-FC5 TORRE 2 PLANTA 2 FAN COIL 5', '../images/equipos/avatar_equipo.png'),
(137, 2, 14, 'T2-P2-FC6 TORRE 2 PLANTA 2 FAN COIL 6', '../images/equipos/avatar_equipo.png'),
(138, 2, 6, 'T1-P2-EV1 TORRE 1 PISO 2 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(139, 2, 6, 'T1-P2-EV2 TORRE 1 PISO 2 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(140, 2, 6, 'T1-P2-EV3TORRE 1 PISO 2 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(141, 2, 6, 'T1-P2-EV4 TORRE 1 PISO 2 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(142, 2, 6, 'T1-P2-EV5 TORRE 1 PISO 2 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(143, 2, 6, 'T1-P2-EV6 TORRE 1 PISO 2 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(144, 2, 6, 'T1-P2-EV7TORRE 1 PISO 2 EVAPORADOR 7', '../images/equipos/avatar_equipo.png'),
(145, 2, 14, 'T2-P3-FC1 TORRE 2 PISO 3 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(146, 2, 14, 'T2-P3-FC2 TORRE 2 PISO 3 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(147, 2, 14, 'T2-P3-FC3 TORRE 2 PISO 3 FAN COIL 3', '../images/equipos/avatar_equipo.png'),
(148, 2, 14, 'T2-P3-FC4 TORRE 2 PISO 3 FAN COIL 4', '../images/equipos/avatar_equipo.png'),
(149, 2, 14, 'T2-P3-FC5 TORRE 2 PISO 3 FAN COIL 5', '../images/equipos/avatar_equipo.png'),
(150, 2, 14, 'T2-P3-FC6 TORRE 2 PISO 3 FAN COIL 6', '../images/equipos/avatar_equipo.png'),
(151, 2, 6, 'T1-P3-EV1 TORRE 1 PISO 3 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(152, 2, 6, 'T1-P3-EV2 TORRE 1 PISO 3 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(153, 2, 6, 'T1-P3-EV3 TORRE 1 PISO 3 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(154, 2, 6, 'T1-P3-EV4 TORRE 1 PISO 3 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(155, 2, 6, 'T1-P3-EV5 TORRE 1 PISO 3 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(156, 2, 6, 'T1-P3-EV6 TORRE 1 PISO 3 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(157, 2, 6, 'T1-P3-EV7 TORRE 1 PISO 3 EVAPORADOR 7', '../images/equipos/avatar_equipo.png'),
(158, 2, 6, 'T1-P3-EV8 TORRE 1 PISO 3 EVAPORADOR 8', '../images/equipos/avatar_equipo.png'),
(159, 2, 6, 'T1-P3-EV9 TORRE 1 PISO 3 EVAPORADOR 9', '../images/equipos/avatar_equipo.png'),
(160, 2, 14, 'T2-P4-FC1 TORRE 2 PISO 4 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(161, 2, 14, 'T2-P4-FC2 TORRE 2 PISO 4 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(162, 2, 14, 'T2-P4-FC3 TORRE 2 PISO 4 FAN COIL 3', '../images/equipos/avatar_equipo.png'),
(163, 2, 14, 'T2-P4-FC4 TORRE 2 PISO 4 FAN COIL 4', '../images/equipos/avatar_equipo.png'),
(164, 2, 14, 'T2-P4-FC5 TORRE 2 PISO 4 FAN COIL 5', '../images/equipos/avatar_equipo.png'),
(165, 2, 14, 'T2-P4-FC6 TORRE 2 PISO 4 FAN COIL 6', '../images/equipos/avatar_equipo.png'),
(166, 2, 6, 'T1-P4-EV1 TORRE 1 PISO 4 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(167, 2, 6, 'T1-P4-EV2 TORRE 1 PISO 4 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(168, 2, 6, 'T1-P4-EV3 TORRE 1 PISO 4 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(169, 2, 6, 'T1-P4-EV4 TORRE 1 PISO 4 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(170, 2, 6, 'T1-P4-EV5 TORRE 1 PISO 4 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(171, 2, 6, 'T1-P4-EV6 TORRE 1 PISO 4 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(172, 2, 14, 'T2-P5-FC1 TORRE 2 PISO 5 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(173, 2, 14, 'T2-P5-FC2 TORRE 2 PISO 5 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(174, 2, 14, 'T2-P5-FC3 TORRE 2 PISO 5 FAN COIL 3', '../images/equipos/avatar_equipo.png'),
(175, 2, 14, 'T2-P5-FC4 TORRE 2 PISO 5 FAN COIL 4', '../images/equipos/avatar_equipo.png'),
(176, 2, 6, 'T1-P5-EV1 TORRE 1 PISO 5 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(177, 2, 6, 'T1-P5-EV2 TORRE 1 PISO 5 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(178, 2, 6, 'T1-P5-EV3 TORRE 1 PISO 5 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(179, 2, 6, 'T1-P5-EV4 TORRE 1 PISO 5 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(180, 2, 6, 'T1-P5-EV5 TORRE 1 PISO 5 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(181, 2, 6, 'T1-P5-EV6 TORRE 1 PISO 5 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(182, 2, 14, 'T2-P6-FC1 TORRE 2 PISO 6 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(183, 2, 14, 'T2-P6-FC2 TORRE 2 PISO 6 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(184, 2, 14, 'T2-P6-FC3 TORRE 2 PISO 6 FAN COIL 3', '../images/equipos/avatar_equipo.png'),
(185, 2, 14, 'T2-P6-FC4 TORRE 2 PISO 6 FAN COIL 4', '../images/equipos/avatar_equipo.png'),
(186, 2, 6, 'T2-P6-EV1 TORRE 2 PISO 6 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(187, 2, 6, 'T2-P6-EV2 TORRE 2 PISO 6 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(188, 2, 6, 'T1-P6-EV1 TORRE 1 PISO 6 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(189, 2, 6, 'T1-P6-EV2 TORRE 1 PISO 6 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(190, 2, 6, 'T1-P6-EV3 TORRE 1 PISO 6 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(191, 2, 6, 'T1-P6-EV4 TORRE 1 PISO 6 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(192, 2, 6, 'T1-P6-EV5 TORRE 1 PISO 6 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(193, 2, 6, 'T1-P6-EV6 TORRE 1 PISO 6 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(194, 2, 6, 'T1-P6-EV7 TORRE 1 PISO 6 EVAPORADOR 7', '../images/equipos/avatar_equipo.png'),
(195, 2, 6, 'T1-P6-EV8 TORRE 1 PISO 6 EVAPORADOR 8', '../images/equipos/avatar_equipo.png'),
(196, 2, 14, 'T2-P7-FC1 TORRE 2 PISO 7 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(197, 2, 14, 'T2-P7-FC2 TORRE 2 PISO 7 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(198, 2, 14, 'T2-P7-FC3 TORRE 2 PISO 7 FAN COIL 3', '../images/equipos/avatar_equipo.png'),
(199, 2, 14, 'T2-P7-FC4 TORRE 2 PISO 7 FAN COIL 4', '../images/equipos/avatar_equipo.png'),
(200, 2, 6, 'T2-P7-EV1 TORRE 2 PISO 7 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(201, 2, 6, 'T2-P7-EV2 TORRE 2 PISO 7 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(202, 2, 6, 'T2-P7-EV3 TORRE 2 PISO 7 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(203, 2, 6, 'T1-P7-EV1 TORRE 1 PISO 7 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(204, 2, 6, 'T1-P7-EV2 TORRE 1 PISO 7 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(205, 2, 6, 'T1-P7-EV3 TORRE 1 PISO 7 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(206, 2, 6, 'T1-P7-EV4 TORRE 1 PISO 7 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(207, 2, 6, 'T1-P7-EV5 TORRE 1 PISO 7 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(208, 2, 6, 'T1-P7-EV6 TORRE 1 PISO 7 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(209, 2, 6, 'T1-P7-EV7 TORRE 1 PISO 7 EVAPORADOR 7', '../images/equipos/avatar_equipo.png'),
(210, 2, 6, 'T1-P7-EV8 TORRE 1 PISO 7 EVAPORADOR 8', '../images/equipos/avatar_equipo.png'),
(211, 2, 14, 'T2-P8-FC1 TORRE 2 PISO 8 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(212, 2, 6, 'T2-P8-EV1TORRE 2 PISO 8 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(213, 2, 14, 'T2-P8-FC2 TORRE 2 PISO 8 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(214, 2, 14, 'T2-P8-FC3 TORRE 2 PISO 8 FAN COIL 3', '../images/equipos/avatar_equipo.png'),
(215, 2, 14, 'T2-P8-FC4 TORRE 2 PISO 8 FAN COIL 4', '../images/equipos/avatar_equipo.png'),
(216, 2, 6, 'T2-P8-EV1 TORRE 2 PISO 8 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(217, 2, 6, 'T2-P8-EV2 TORRE 2 PISO 8 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(218, 2, 6, 'T1-P8-EV1 TORRE 1 PISO 8 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(219, 2, 6, 'T1-P8-EV2 TORRE 1 PISO 8 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(220, 2, 6, 'T1-P8-EV3 TORRE 1 PISO 8 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(221, 2, 6, 'T1-P8-EV4 TORRE 1 PISO 8 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(222, 2, 6, 'T1-P8-EV5 TORRE 1 PISO 8 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(223, 2, 6, 'T1-P8-EV6 TORRE 1 PISO 8 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(224, 2, 6, 'T1-P8-EV7 TORRE 1 PISO 8 EVAPORADOR 7', '../images/equipos/avatar_equipo.png'),
(225, 2, 6, 'T1-P8-EV8 TORRE 1 PISO 8 EVAPORADOR 8', '../images/equipos/avatar_equipo.png'),
(226, 2, 14, 'T2-P9-FC1 TORRE 2 PISO 9 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(227, 2, 14, 'T2-P9-FC2 TORRE 2 PISO 9 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(228, 2, 14, 'T2-P9-FC3 TORRE 2 PISO 9 FAN COIL 3', '../images/equipos/avatar_equipo.png'),
(229, 2, 14, 'T2-P9-FC4 TORRE 2 PISO 9 FAN COIL 4', '../images/equipos/avatar_equipo.png'),
(230, 2, 6, 'T2-P9-EV1 TORRE 2 PISO 9 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(231, 2, 6, 'T2-P9-EV2 TORRE 2 PISO 9 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(232, 2, 6, 'T1-P9-EV1 TORRE 1 PISO 9 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(233, 2, 6, 'T1-P9-EV2 TORRE 1 PISO 9 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(234, 2, 6, 'T1-P9-EV3 TORRE 1 PISO 9 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(235, 2, 6, 'T1-P9-EV4 TORRE 1 PISO 9 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(236, 2, 6, 'T1-P9-EV5 TORRE 1 PISO 9 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(237, 2, 6, 'T1-P9-EV6 TORRE 1 PISO 9 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(238, 2, 6, 'FB-S2-EV1 FLACSO BIBLIOTECA SUBSUELO 2 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(239, 2, 6, 'FB-S2-EV2 FLACSO BIBLIOTECA SUBSUELO 2 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(240, 2, 6, 'FB-S1-EV1 FLACSO BIBLIOTECA SUBSUELO 1 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(241, 2, 6, 'FB-S1-EV2 FLACSO BIBLIOTECA SUBSUELO 1 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(242, 2, 6, 'FB-S1-EV3 FLACSO BIBLIOTECA SUBSUELO 1 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(243, 2, 6, 'FB-S1-EV4 FLACSO BIBLIOTECA SUBSUELO 1 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(244, 2, 6, 'FB-S1-EV5 FLACSO BIBLIOTECA SUBSUELO 1 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(245, 2, 14, 'FB-S1-FC1 FLACSO BIBLIOTECA SUBSUELO 1 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(246, 2, 14, 'FB-S1-FC2 FLACSO BIBLIOTECA SUBSUELO 1 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(247, 2, 14, 'FB-S1-FC3 FLACSO BIBLIOTECA SUBSUELO 1 FAN COIL 3', '../images/equipos/avatar_equipo.png'),
(248, 2, 14, 'FB-PB-FC1 FLACSO BIBLIOTECA PLANTA BAJA FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(249, 2, 14, 'FB-PB-FC2 FLACSO BIBLIOTECA PLANTA BAJA FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(250, 2, 14, 'FB-PB-FC3 FLACSO BIBLIOTECA PLANTA BAJA FAN COIL 3', '../images/equipos/avatar_equipo.png'),
(251, 2, 14, 'FB-PB-FC4 FLACSO BIBLIOTECA PLANTA BAJA FAN COIL 4', '../images/equipos/avatar_equipo.png'),
(252, 2, 6, 'FB-P1-EV1 FLACSO BIBLIOTECA PISO 1 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(253, 2, 6, 'FB-P1-EV2 FLACSO BIBLIOTECA PISO 1 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(254, 2, 6, 'FB-P1-EV3 FLACSO BIBLIOTECA PISO 1 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(255, 2, 6, 'FB-P1-EV4 FLACSO BIBLIOTECA PISO 1 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(256, 2, 6, 'FB-P1-EV5 FLACSO BIBLIOTECA PISO 1 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(257, 2, 14, 'FB-P1-FC1 FLACSO BIBLIOTECA PISO 1 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(258, 2, 14, 'FB-P1-FC2 FLACSO BIBLIOTECA PISO 1 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(259, 2, 14, 'FB-P1-FC3 FLACSO BIBLIOTECA PISO 1 FAN COIL 3', '../images/equipos/avatar_equipo.png'),
(260, 2, 6, 'FB-P2-EV1 FLACSO BIBLIOTECA PISO 2 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(261, 2, 6, 'FB-P2-EV2 FLACSO BIBLIOTECA PISO 2 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(262, 2, 14, 'FB-P2-FC1 FLACSO BIBLIOTECA PISO 2 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(263, 2, 6, 'FB-P3-EV1 FLACSO BIBLIOTECA PISO 3 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(264, 2, 6, 'FB-P3-EV2 FLACSO BIBLIOTECA PISO 3 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(265, 2, 14, 'FB-P3-FC1 FLACSO BIBLIOTECA PISO 3 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(266, 2, 14, 'FB-P3-FC2 FLACSO BIBLIOTECA PISO 3 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(267, 2, 6, 'FB-P4-EV1 FLACSO BIBLIOTECA PISO 4 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(268, 2, 6, 'FB-P4-EV2 FLACSO BIBLIOTECA PISO 4 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(269, 2, 14, 'FB-P4-FC1 FLACSO BIBLIOTECA PISO 4 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(270, 2, 14, 'FB-P4-FC2 FLACSO BIBLIOTECA PISO 4 FAN COIL 2', '../images/equipos/avatar_equipo.png'),
(271, 2, 6, 'FB-P5-EV1 FLACSO BIBLIOTECA PISO 5 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(272, 2, 6, 'FB-P5-EV2 FLACSO BIBLIOTECA PISO 5 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(273, 2, 6, 'FB-P5-EV3 FLACSO BIBLIOTECA PISO 5 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(274, 2, 6, 'FB-P5-EV4 FLACSO BIBLIOTECA PISO 5 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(275, 2, 6, 'FB-P5-EV5 FLACSO BIBLIOTECA PISO 5 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(276, 2, 6, 'FB-P5-EV6 FLACSO BIBLIOTECA PISO 5 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(277, 2, 6, 'FB-P5-EV7 FLACSO BIBLIOTECA PISO 5 EVAPORADOR 7', '../images/equipos/avatar_equipo.png'),
(278, 2, 6, 'FB-P5-EV8 FLACSO BIBLIOTECA PISO 5 EVAPORADOR 8', '../images/equipos/avatar_equipo.png'),
(279, 2, 6, 'FB-P5-EV9 FLACSO BIBLIOTECA PISO 5 EVAPORADOR 9', '../images/equipos/avatar_equipo.png'),
(280, 2, 6, 'FB-P5-EV10 FLACSO BIBLIOTECA PISO 5 EVAPORADOR 10', '../images/equipos/avatar_equipo.png'),
(281, 2, 6, 'FB-P5-EV11 FLACSO BIBLIOTECA PISO 5 EVAPORADOR 11', '../images/equipos/avatar_equipo.png'),
(282, 2, 14, 'FB-P5-FC1 FLACSO BIBLIOTECA PISO 5 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(283, 2, 6, 'FB-P6-EV1 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(284, 2, 6, 'FB-P6-EV2 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(285, 2, 6, 'FB-P6-EV3 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(286, 2, 6, 'FB-P6-EV4 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(287, 2, 6, 'FB-P6-EV5 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(288, 2, 6, 'FB-P6-EV6 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(289, 2, 6, 'FB-P6-EV7 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 7', '../images/equipos/avatar_equipo.png'),
(290, 2, 6, 'FB-P6-EV8 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 8', '../images/equipos/avatar_equipo.png'),
(291, 2, 6, 'FB-P6-EV9 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 9', '../images/equipos/avatar_equipo.png'),
(292, 2, 6, 'FB-P6-EV10 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 10', '../images/equipos/avatar_equipo.png'),
(293, 2, 6, 'FB-P6-EV11 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 11', '../images/equipos/avatar_equipo.png'),
(294, 2, 6, 'FB-P6-EV12 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 12', '../images/equipos/avatar_equipo.png'),
(295, 2, 6, 'FB-P6-EV13 FLACSO BIBLIOTECA PISO 6 EVAPORADOR 13', '../images/equipos/avatar_equipo.png'),
(296, 2, 14, 'FB-P6-FC1 FLACSO BIBLIOTECA PISO 6 FAN COIL 1', '../images/equipos/avatar_equipo.png'),
(297, 2, 6, 'FB-P7-EV1 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 1', '../images/equipos/avatar_equipo.png'),
(298, 2, 6, 'FB-P7-EV2 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 2', '../images/equipos/avatar_equipo.png'),
(299, 2, 6, 'FB-P7-EV3 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 3', '../images/equipos/avatar_equipo.png'),
(300, 2, 6, 'FB-P7-EV4 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 4', '../images/equipos/avatar_equipo.png'),
(301, 2, 6, 'FB-P7-EV5 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 5', '../images/equipos/avatar_equipo.png'),
(302, 2, 6, 'FB-P7-EV6 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 6', '../images/equipos/avatar_equipo.png'),
(303, 2, 6, 'FB-P7-EV7 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 7', '../images/equipos/avatar_equipo.png'),
(304, 2, 6, 'FB-P7-EV8 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 8', '../images/equipos/avatar_equipo.png'),
(305, 2, 6, 'FB-P7-EV9 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 9', '../images/equipos/avatar_equipo.png'),
(306, 2, 6, 'FB-P7-EV10 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 10', '../images/equipos/avatar_equipo.png'),
(307, 2, 6, 'FB-P7-EV11 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 11', '../images/equipos/avatar_equipo.png'),
(308, 2, 6, 'FB-P7-EV12 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 12', '../images/equipos/avatar_equipo.png'),
(309, 2, 6, 'FB-P7-EV13 FLACSO BIBLIOTECA PISO 7 EVAPORADOR 13', '../images/equipos/avatar_equipo.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_fotos`
--

DROP TABLE IF EXISTS `equipo_fotos`;
CREATE TABLE IF NOT EXISTS `equipo_fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `eti` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_tareas`
--

DROP TABLE IF EXISTS `equipo_tareas`;
CREATE TABLE IF NOT EXISTS `equipo_tareas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipo_id` int(11) NOT NULL,
  `proceso_id` int(11) NOT NULL,
  `eti` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipo_tareas`
--

INSERT INTO `equipo_tareas` (`id`, `equipo_id`, `proceso_id`, `eti`) VALUES
(19, 34, 30, 2670),
(18, 34, 29, 2670),
(17, 34, 28, 2670),
(16, 32, 27, 7656),
(15, 32, 26, 7656);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo_tareas_informe`
--

DROP TABLE IF EXISTS `equipo_tareas_informe`;
CREATE TABLE IF NOT EXISTS `equipo_tareas_informe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  `mes_id` varchar(10) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `observacion` text NOT NULL,
  `age` varchar(10) NOT NULL,
  `eti` varchar(10) NOT NULL,
  `created_at` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipo_tareas_informe`
--

INSERT INTO `equipo_tareas_informe` (`id`, `user_id`, `fecha`, `mes_id`, `estado`, `imagen`, `observacion`, `age`, `eti`, `created_at`) VALUES
(14, 1, '2019-10-02', '10', 'funcionando', '../images/equipos/tarejta.jpg', 'todo esta funcionando correctamente', '2019', '7656', '02/10/19 22:42 pm'),
(15, 1, '2019-10-03', '10', 'mantenimiento', '../images/equipos/tarjeta2.jpg', 'faltan algunas piezas ', '2019', '2670', '02/10/19 22:44 pm');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meses`
--

DROP TABLE IF EXISTS `meses`;
CREATE TABLE IF NOT EXISTS `meses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `meses`
--

INSERT INTO `meses` (`id`, `nombre`) VALUES
(1, 'Enero'),
(2, 'Febrero '),
(3, 'Marzo '),
(4, 'Abril'),
(5, 'Mayo'),
(6, 'Junio'),
(7, 'Julio'),
(8, 'Agosto'),
(9, 'Septiembre'),
(10, 'Octubre'),
(11, 'Noviembre'),
(12, 'Diciembre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesos`
--

DROP TABLE IF EXISTS `procesos`;
CREATE TABLE IF NOT EXISTS `procesos` (
  `id` int(3) DEFAULT NULL,
  `id_sistema` int(1) DEFAULT NULL,
  `id_subsistema` int(2) DEFAULT NULL,
  `tipo` varchar(26) DEFAULT NULL,
  `nombre` varchar(94) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `procesos`
--

INSERT INTO `procesos` (`id`, `id_sistema`, `id_subsistema`, `tipo`, `nombre`) VALUES
(1, 1, 1, 'INSPECCION', 'CALOR ADECUADO DE LA CASETA DE LA BOMBA'),
(2, 1, 1, 'INSPECCION', 'LECTURA DE MANOMETROS DE PRESION EN LA LINEA DE SUCCION.'),
(3, 1, 1, 'INSPECCION', 'LA SUCCION Y DESCARGA DE LAS BOMBAS Y VALVULAS DE PASO ESTAN TOTALMENTE ABIERTAS.'),
(4, 1, 1, 'INSPECCION', 'LA TUBERIA ESTA LIBRE DE FILTRACIONES.'),
(5, 1, 1, 'INSPECCION', 'LA LECTURA DEL MANOMETRO EN LA LINEA DEL SISTEMA ES NORMAL.'),
(6, 1, 1, 'INSPECCION', 'EL DEPOSITO DE SUCCION TIENE EL NIVEL DE AGUA REQUERIDO.'),
(7, 1, 1, 'INSPECCION', 'LAS VALVULAS DE PRUEBA DE FLUJO DE AGUA EN POSICION CERRADA.'),
(8, 1, 1, 'INSPECCION', 'LA LUZ PILOTO DEL REGULADOR DE ENCENDIDO ESTA ILUMINADA.'),
(9, 1, 1, 'PRUEBA', 'REGISTRAR LA PRESION DE ARRANQUE DE LA BOMBA'),
(10, 1, 1, 'PRUEBA', 'REGISTRAR LAS LECTURAS DEL MANOMETRO DE PRESION DE SUCCION Y DE DESCARGA DEL SISTEMA.'),
(11, 1, 1, 'PRUEBA', 'INSPECCIONAR POR RUIDOS O VIBRACIONES INUSUALES.'),
(12, 1, 1, 'PRUEBA', 'AJUSTAR LAS TUERCAS DE LOS SELLOS DE EMPAQUETADURA SI ES NECESARIO.'),
(13, 1, 1, 'PRUEBA', 'OBSERVAR EL TIEMPO QUE TOMA EL MOTOR PARA ACELERAR A VELOCIDAD PLENA.'),
(14, 1, 1, 'PRUEBA', 'PRUEBA DE FUNCIONAMIENTO'),
(15, 1, 2, 'INSPECCION', 'VALVULAS DE CONTROL'),
(16, 1, 2, 'INSPECCION', 'MANOMETROS'),
(17, 1, 2, 'INSPECCION', 'DISPOSITIVOS DE ALARMA DE FLUJO DE AGUA'),
(18, 1, 2, 'INSPECCION', 'DISPOSITIVOS DE ALARMA DE SUPERVISION DE VALVULA'),
(19, 1, 2, 'INSPECCION', 'CONEXIONES DEL CUERPO DE BOMBEROS'),
(20, 1, 2, 'INSPECCION', 'ROCIADORES'),
(21, 1, 2, 'PRUEBA', 'DISPOSITIVOS DE ALARMA DE FLUJO DE AGUA.'),
(22, 1, 2, 'PRUEBA', 'DISPOSITIVO DE SENAL SUPERVISION DE VALVULAS.'),
(23, 1, 2, 'PRUEBA', 'DRENAJE PRINCIPAL.'),
(24, 1, 2, 'PRUEBA', 'PRUEBA DEL ESTADO DE LA VALVULA.'),
(25, 1, 2, 'PRUEBA', 'MANOMETROS.'),
(26, 1, 3, 'INSPECCION', 'GABINETES.'),
(27, 1, 3, 'INSPECCION', 'VALVULAS PARA MANGUERAS.'),
(28, 1, 3, 'INSPECCION', 'TUBERIAS.'),
(29, 1, 3, 'INSPECCION', 'CONEXIONES DE MANGUERAS.'),
(30, 1, 3, 'INSPECCION', 'BOQUILLAS DE MANGUERAS.'),
(31, 1, 3, 'INSPECCION', 'AVISO DE INFORMACION DE DISENO HIDRAULICO.'),
(32, 1, 3, 'PRUEBA', 'DISPOSITIVOS DE ALARMA DE FLUJO DE AGUA.'),
(33, 1, 3, 'PRUEBA', 'DISPOSITIVO DE SENAL SUPERVISI?N DE VALVULAS.'),
(34, 1, 3, 'PRUEBA', 'DISPOSITIVO DE ALMACENAMIENTO DE MANGUERAS.'),
(35, 1, 3, 'PRUEBA', 'PRUEBA DEL ESTADO DE LA VALVULA.'),
(36, 1, 3, 'PRUEBA', 'PRUEBA DEL DRENAJE PRINCIPAL.'),
(37, 1, 4, 'INSPECCION', 'EQUIPO DE CONTROL FUSIBLES.'),
(38, 1, 4, 'INSPECCION', 'EQUIPOS DE INTERFAZ.'),
(39, 1, 4, 'INSPECCION', 'SUMINISTRO DE ENERGIA PRINCIPAL.'),
(40, 1, 4, 'INSPECCION', 'BATERIAS '),
(41, 1, 4, 'INSPECCION', 'SENALES DE FALLA DE UNIDAD DE CONTROL DE ALARMA DE INCENDIOS.'),
(42, 1, 4, 'INSPECCION', 'DISPOSITIVOS INICIADORES, DETECTORES DE HUMO.'),
(43, 1, 4, 'INSPECCION', 'DISPOSITIVOS DE FLUJO DE AGUA.'),
(44, 1, 4, 'INSPECCION', 'APARATOS DE NOTIFICACION DE ALARMA.'),
(45, 1, 4, 'INSPECCION', 'APARATOS DE NOTIFICACION AUDIBLE INDICADORES DE SALIDA.'),
(46, 1, 4, 'PRUEBA', 'FUSIBLES.'),
(47, 1, 4, 'PRUEBA', 'EQUIPOS DE INTERFAZ.'),
(48, 1, 4, 'PRUEBA', 'SUMINISTRO DE ENERGIA PRINCIPAL.'),
(49, 1, 4, 'PRUEBA', 'BATERIAS'),
(50, 1, 4, 'PRUEBA', 'DISPOSITIVOS INICIADORES, DETECTORES DE HUMO.'),
(51, 1, 4, 'PRUEBA', 'APARATOS DE NOTIFICACION AUDIBLE INDICADORES DE SALIDA.'),
(52, 2, 5, 'INSPECCION Y MANTENIMIENTO', 'TARJETAS DE CONTROL.'),
(53, 2, 5, 'INSPECCION Y MANTENIMIENTO', 'MEDICION DE CARGA DE GAS REFRIGERANTE.'),
(54, 2, 5, 'INSPECCION Y MANTENIMIENTO', 'CONDICIONES AMBIENTALES EN LA QUE SE ENCUENTRA EL EQUIPO.'),
(55, 2, 5, 'INSPECCION Y MANTENIMIENTO', 'CONTROL DE NIVEL DE ACEITE.'),
(56, 2, 5, 'INSPECCION Y MANTENIMIENTO', 'TABLERO ELECTRICO Y MEDICION DE CARGA ELECTRICA.'),
(57, 2, 5, 'INSPECCION Y MANTENIMIENTO', 'REVISION DE COMPONENTES DE CONTROL: VaLVULAS DE EXPANSION, SOLENOIDES, PRESOSTATOS, TERMOSTATO'),
(58, 2, 5, 'INSPECCION Y MANTENIMIENTO', 'FUNCIONAMIENTO DE MOTOR VENTILADOR.'),
(59, 2, 5, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DE SERPENTIN DEL CONDENSADOR.'),
(60, 2, 6, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE TERMOSTATOS.'),
(61, 2, 6, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DE FILTROS DE AIRE.'),
(62, 2, 6, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE FUNCIONAMIENTO DEL BLOWER.'),
(63, 2, 6, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION Y LIMPIEZA DE SERPENTIN DEL EVAPORADOR.'),
(64, 2, 6, 'INSPECCION Y MANTENIMIENTO', 'REVISION DEL FUNCIONAMIENTO DEL CONTROL MAESTRO.'),
(65, 2, 6, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE DESAGUE DE LAS UNIDADES.'),
(66, 2, 7, 'INSPECCION Y MANTENIMIENTO', 'REVISION LIMPIEZA CAMBIO FILTROS DE SUMINISTRO DE AIRE'),
(67, 2, 7, 'INSPECCION Y MANTENIMIENTO', 'ENGRASE DE CHUMASERAS '),
(68, 2, 7, 'INSPECCION Y MANTENIMIENTO', 'REVISION DE BANDAS DE TRANSMISION.'),
(69, 2, 7, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE TABLEROS ELECTRICOS '),
(70, 2, 7, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DEL AREA  DE EQUIPOS.'),
(71, 2, 7, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DE REJILLAS DE SUMINISTRO Y DE EXTRACCION.'),
(72, 2, 7, 'INSPECCION Y MANTENIMIENTO', 'REVISION PROGRAMACION  PLC '),
(73, 3, 8, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DE BOMBAS.'),
(74, 3, 8, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE TUBERIAS'),
(75, 3, 8, 'INSPECCION Y MANTENIMIENTO', 'INPECCION DE TABLERO EL?CTRICO.'),
(76, 3, 8, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE CONTROLES AUTOMATICOS (FLOTADORES).'),
(77, 3, 8, 'INSPECCION Y MANTENIMIENTO', 'MEDICION DE CARGA ELECTRICA.'),
(78, 3, 9, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DE BOMBAS.'),
(79, 3, 9, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE TUBERIAS'),
(80, 3, 9, 'INSPECCION Y MANTENIMIENTO', 'INPECCION DE TABLERO ELECTRICO.'),
(81, 3, 9, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE CONTROLES AUTOMATICOS (FLOTADORES).'),
(82, 3, 9, 'INSPECCION Y MANTENIMIENTO', 'MEDICION DE CARGA ELECTRICA.'),
(83, 3, 10, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DE BOMBAS.'),
(84, 3, 10, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE TUBERIAS'),
(85, 3, 10, 'INSPECCION Y MANTENIMIENTO', 'INPECCION DE TABLERO ELECTRICO.'),
(86, 3, 10, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE CONTROLES AUTOMATICOS (FLOTADORES).'),
(87, 3, 10, 'INSPECCION Y MANTENIMIENTO', 'MANTENIMIENTO DE VALVULAS DE CONTROL'),
(88, 3, 10, 'INSPECCION Y MANTENIMIENTO', 'MEDICION DE CARGA ELECTRICA.'),
(89, 3, 11, 'INSPECCION Y MANTENIMIENTO', 'REVISION Y CONTROL DE FUGAS'),
(90, 3, 11, 'INSPECCION Y MANTENIMIENTO', 'AJUSTE DE PIEZAS '),
(91, 3, 11, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE TUBERIAS DE EVACUACION'),
(92, 3, 11, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE TABLERO ELECTRICO DE BOMBAS '),
(93, 3, 11, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE CISTERNA'),
(94, 3, 11, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE LAS VALVULAS DE CONTROL DE CISTERNA.'),
(95, 3, 11, 'INSPECCION Y MANTENIMIENTO', 'CALIBRACION DE PLC'),
(96, 2, 12, 'INSPECCION Y MANTENIMIENTO', 'REVISION LIMPIEZA CAMBIO FILTROS DE SUMINISTRO DE AIRE'),
(97, 2, 12, 'INSPECCION Y MANTENIMIENTO', 'ENGRASE DE CHUMASERAS '),
(98, 2, 12, 'INSPECCION Y MANTENIMIENTO', 'REVISION DE BANDAS DE TRANSMISION.'),
(99, 2, 12, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE TABLEROS ELECTRICOS '),
(100, 2, 12, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DEL AREA  DE EQUIPOS.'),
(101, 2, 12, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DE REJILLAS DE SUMINISTRO Y DE EXTRACCION.'),
(102, 2, 12, 'INSPECCION Y MANTENIMIENTO', 'REVISION PROGRAMACION  PLC '),
(103, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'TARJETAS DE CONTROL.'),
(104, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'MEDICION DE CARGA DE GAS REFRIGERANTE.'),
(105, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'CONDICIONES AMBIENTALES EN LA QUE SE ENCUENTRA EL EQUIPO.'),
(106, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'CONTROL DE NIVEL DE ACEITE.'),
(107, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'TABLERO ELECTRICO Y MEDICION DE CARGA ELECTRICA.'),
(108, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'REVISION DE COMPONENTES DE CONTROL: VaLVULAS DE EXPANSION, SOLENOIDES, PRESOSTATOS, TERMOSTATO'),
(109, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'FUNCIONAMIENTO DE MOTOR VENTILADOR.'),
(110, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DE SERPENTIN DEL CONDENSADOR.'),
(111, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE TERMOSTATOS.'),
(112, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DE FILTROS DE AIRE.'),
(113, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE FUNCIONAMIENTO DEL BLOWER.'),
(114, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION Y LIMPIEZA DE SERPENTIN DEL EVAPORADOR.'),
(115, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'REVISION DEL FUNCIONAMIENTO DEL CONTROL MAESTRO.'),
(116, 2, 13, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE DESAGUE DE LAS UNIDADES.'),
(117, 2, 14, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE TERMOSTATOS.'),
(118, 2, 14, 'INSPECCION Y MANTENIMIENTO', 'LIMPIEZA DE FILTROS DE AIRE.'),
(119, 2, 14, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE FUNCIONAMIENTO DEL BLOWER.'),
(120, 2, 14, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION Y LIMPIEZA DE SERPENTIN DEL EVAPORADOR.'),
(121, 2, 14, 'INSPECCION Y MANTENIMIENTO', 'REVISION DEL FUNCIONAMIENTO DEL CONTROL MAESTRO.'),
(122, 2, 14, 'INSPECCION Y MANTENIMIENTO', 'INSPECCION DE DESAGUE DE LAS UNIDADES.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistemas`
--

DROP TABLE IF EXISTS `sistemas`;
CREATE TABLE IF NOT EXISTS `sistemas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sistemas`
--

INSERT INTO `sistemas` (`id`, `nombre`) VALUES
(1, 'Sistema Contra Incendios'),
(2, 'Ventilacion y Aire Acondicionado'),
(3, 'Hidrosanitarios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subsistemas`
--

DROP TABLE IF EXISTS `subsistemas`;
CREATE TABLE IF NOT EXISTS `subsistemas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_sistema` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subsistemas`
--

INSERT INTO `subsistemas` (`id`, `id_sistema`, `nombre`) VALUES
(1, 1, 'Bombas'),
(2, 1, 'Rociadores'),
(3, 1, 'Tuberias'),
(4, 1, 'Alarmas'),
(5, 2, 'Condensador'),
(6, 2, 'Evaporador'),
(7, 2, 'Extraccion'),
(8, 3, 'Aguas Albanal'),
(9, 3, 'Agua Lluvia'),
(10, 3, 'Nivel Freatico'),
(11, 3, 'Agua potable'),
(12, 2, 'Suministro'),
(13, 2, 'Unidades de Aire acondicionado'),
(14, 2, 'Fan Coil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `clave` varchar(30) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `rol` varchar(20) NOT NULL,
  `estado` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `telefono`, `correo`, `clave`, `foto`, `rol`, `estado`) VALUES
(1, 'David', 'Isama', '0992190334', 'david@gmail.com', '1234', 'avatar.png', 'admin', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
