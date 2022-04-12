-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para convocatoria
CREATE DATABASE IF NOT EXISTS `convocatoria` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;
USE `convocatoria`;

-- Volcando estructura para tabla convocatoria.administracion
CREATE TABLE IF NOT EXISTS `administracion` (
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `administracion` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `contraseña` int(11) DEFAULT NULL,
  PRIMARY KEY (`administracion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla convocatoria.autoridad
CREATE TABLE IF NOT EXISTS `autoridad` (
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `autoridad` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `contraseña` int(11) DEFAULT NULL,
  PRIMARY KEY (`autoridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla convocatoria.calificacion_meritos_pi
CREATE TABLE IF NOT EXISTS `calificacion_meritos_pi` (
  `prom_aprobacion` int(11) DEFAULT NULL,
  `prom_general` int(11) DEFAULT NULL,
  `auxiliar_docente` int(11) DEFAULT NULL,
  `auxiliar_otros` int(11) DEFAULT NULL,
  `cursos_participacion` int(11) DEFAULT NULL,
  `experiencia_operador` int(11) DEFAULT NULL,
  `cod_SIS_mer` int(11) NOT NULL,
  `experiencia_docente` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_SIS_mer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla convocatoria.documentos_pizarra
CREATE TABLE IF NOT EXISTS `documentos_pizarra` (
  `solicitud` bit(1) DEFAULT NULL,
  `certificado_de_condicion` bit(1) DEFAULT NULL,
  `certificado_de_rendimiento` bit(1) DEFAULT NULL,
  `certificado_sin_titulo` bit(1) DEFAULT NULL,
  `carnet_identidad` bit(1) DEFAULT NULL,
  `certificado_biblioteca` bit(1) DEFAULT NULL,
  `resumen_CV` bit(1) DEFAULT NULL,
  `respaldo_CV` bit(1) DEFAULT NULL,
  `kardex` bit(1) DEFAULT NULL,
  `cod_SIS_doc` int(11) NOT NULL,
  PRIMARY KEY (`cod_SIS_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla convocatoria.estudiante
CREATE TABLE IF NOT EXISTS `estudiante` (
  `codigo_SIS` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `correo_Institucional` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `contraseña` int(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_SIS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla convocatoria.laboratorio
CREATE TABLE IF NOT EXISTS `laboratorio` (
  `item` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `hrs_academicas` int(11) DEFAULT NULL,
  `auxiliatura` int(11) DEFAULT NULL,
  `codigo_aux` int(11) DEFAULT NULL,
  `cod_SIS_lab` int(11) NOT NULL,
  `habilitado` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_SIS_lab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla convocatoria.pizarron
CREATE TABLE IF NOT EXISTS `pizarron` (
  `item` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `hrs_academicas` int(11) DEFAULT NULL,
  `destino` int(11) DEFAULT NULL,
  `cod_SIS_pizarra` int(11) NOT NULL,
  `habilitado` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_SIS_pizarra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla convocatoria.secretaria
CREATE TABLE IF NOT EXISTS `secretaria` (
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `secretaria` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `contraseña` int(11) DEFAULT NULL,
  PRIMARY KEY (`secretaria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- La exportación de datos fue deseleccionada.

-- Volcando estructura para tabla convocatoria.tribunal
CREATE TABLE IF NOT EXISTS `tribunal` (
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `tribunal` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `contraseña` int(11) DEFAULT NULL,
  PRIMARY KEY (`tribunal`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- La exportación de datos fue deseleccionada.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
