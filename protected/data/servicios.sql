-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         5.5.32 - MySQL Community Server (GPL)
-- SO del servidor:              Win32
-- HeidiSQL Versión:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura de base de datos para servicios
DROP DATABASE IF EXISTS `servicios`;
CREATE DATABASE IF NOT EXISTS `servicios` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `servicios`;


-- Volcando estructura para tabla servicios.asistencias
DROP TABLE IF EXISTS `asistencias`;
CREATE TABLE IF NOT EXISTS `asistencias` (
  `idAsistencia` int(11) NOT NULL AUTO_INCREMENT,
  `estudianteAsistencia` int(11) NOT NULL,
  `fechaAsistencia` date NOT NULL,
  `estadoAsistencia` int(11) NOT NULL,
  `servicioAsistencia` int(11) NOT NULL,
  PRIMARY KEY (`idAsistencia`),
  KEY `FK_asistencias_estudiante` (`estudianteAsistencia`),
  CONSTRAINT `FK_asistencias_estudiante` FOREIGN KEY (`estudianteAsistencia`) REFERENCES `estudiante` (`idEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla servicios.becas
DROP TABLE IF EXISTS `becas`;
CREATE TABLE IF NOT EXISTS `becas` (
  `idBeca` int(11) NOT NULL AUTO_INCREMENT,
  `centroBeca` int(11) DEFAULT NULL,
  `gestionBeca` varchar(50) DEFAULT NULL,
  `servicioBeca` varchar(50) DEFAULT NULL,
  `valorBeca` float DEFAULT NULL,
  `tipoCoberBeca` int(11) DEFAULT NULL,
  `confirBeca` tinyint(4) DEFAULT NULL,
  `inicioBeca` date DEFAULT NULL,
  `finBeca` date DEFAULT NULL,
  `respBeca` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBeca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla servicios.calendario
DROP TABLE IF EXISTS `calendario`;
CREATE TABLE IF NOT EXISTS `calendario` (
  `idCalendario` int(11) NOT NULL AUTO_INCREMENT,
  `servicioCal` int(11) DEFAULT NULL,
  `inicioCal` date DEFAULT NULL,
  `finCal` date DEFAULT NULL,
  `diasCal` varchar(250) DEFAULT NULL,
  `centroCal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCalendario`),
  KEY `FK_calendario_centros` (`centroCal`),
  CONSTRAINT `FK_calendario_centros` FOREIGN KEY (`centroCal`) REFERENCES `centros` (`idCentro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla servicios.centros
DROP TABLE IF EXISTS `centros`;
CREATE TABLE IF NOT EXISTS `centros` (
  `idCentro` int(11) NOT NULL AUTO_INCREMENT,
  `nomCentro` varchar(50) DEFAULT NULL,
  `calleCentro` varchar(50) DEFAULT NULL,
  `numDomCentro` varchar(50) DEFAULT NULL,
  `pisoCentro` varchar(50) DEFAULT NULL,
  `telfCentro` int(11) DEFAULT NULL,
  `faxCentro` int(11) DEFAULT NULL,
  `emailCentro` varchar(50) DEFAULT NULL,
  `expedienteCentro` varchar(50) DEFAULT NULL,
  `loteCentro` varchar(50) DEFAULT NULL,
  `provCentro` varchar(50) DEFAULT NULL,
  `localidadCentro` varchar(50) DEFAULT NULL,
  `personalCentro` varchar(50) DEFAULT NULL,
  `codPostalCentro` int(11) DEFAULT NULL,
  `cifCentro` varchar(50) DEFAULT NULL,
  `codigoCentro` varchar(50) DEFAULT NULL,
  `respCreacionCentro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCentro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla servicios.estudiante
DROP TABLE IF EXISTS `estudiante`;
CREATE TABLE IF NOT EXISTS `estudiante` (
  `idEstudiante` int(11) NOT NULL AUTO_INCREMENT,
  `nomEstudiante` varchar(50) NOT NULL,
  `apellEstudiante` varchar(50) NOT NULL,
  `secApellEstudante` varchar(50) DEFAULT NULL,
  `ciEstudiante` varchar(50) NOT NULL,
  `idTutor` int(11) NOT NULL,
  `sexEstudiante` tinyint(4) DEFAULT NULL,
  `nacEstudiante` date DEFAULT NULL,
  `cursoEstudiante` varchar(50) DEFAULT NULL,
  `etapaEstudiante` varchar(50) DEFAULT NULL,
  `numCasaEstudiante` varchar(50) DEFAULT NULL,
  `pisoEstudiante` varchar(50) DEFAULT NULL,
  `provinciaEstudiante` varchar(50) DEFAULT NULL,
  `LocalidadEst` varchar(50) DEFAULT NULL,
  `calleEstudiante` varchar(50) DEFAULT NULL,
  `codPostalEst` int(11) DEFAULT NULL,
  `paisEst` varchar(50) NOT NULL,
  `idCentroEst` int(11) DEFAULT NULL,
  `telEstudiante` int(11) DEFAULT NULL,
  `emailEstudiante` varchar(50) DEFAULT NULL,
  `nroCuentaEst` int(11) DEFAULT NULL,
  `dietaEstudiante` varchar(50) DEFAULT NULL,
  `nutricionEst` varchar(50) DEFAULT NULL,
  `tel2Estudiante` int(11) DEFAULT NULL,
  `menuEst` int(11) DEFAULT NULL,
  `comidaEst` tinyint(4) DEFAULT NULL,
  `desayunoEst` tinyint(4) DEFAULT NULL,
  `becaEst` tinyint(4) DEFAULT NULL,
  `descuentoEst` float DEFAULT NULL,
  `diasEstudiante` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idEstudiante`),
  KEY `idTutor` (`idTutor`),
  KEY `FK_estudiante_centros` (`idCentroEst`),
  CONSTRAINT `FK_estudiante_centros` FOREIGN KEY (`idCentroEst`) REFERENCES `centros` (`idCentro`),
  CONSTRAINT `FK__tutor` FOREIGN KEY (`idTutor`) REFERENCES `tutor` (`idTutor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla servicios.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `nomMenu` varchar(50) DEFAULT NULL,
  `costoDesayuno` float DEFAULT NULL,
  `costoComida` float DEFAULT NULL,
  PRIMARY KEY (`idMenu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla servicios.pagador
DROP TABLE IF EXISTS `pagador`;
CREATE TABLE IF NOT EXISTS `pagador` (
  `idPagador` int(11) NOT NULL AUTO_INCREMENT,
  `ciPagador` int(11) DEFAULT NULL,
  `nomPagador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPagador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla servicios.recibos
DROP TABLE IF EXISTS `recibos`;
CREATE TABLE IF NOT EXISTS `recibos` (
  `idRecibos` int(11) NOT NULL AUTO_INCREMENT,
  `colegioRecibo` varchar(50) NOT NULL DEFAULT '0',
  `alumnoRecibo` int(11) NOT NULL DEFAULT '0',
  `fechEmisionRecibo` date DEFAULT NULL,
  `estadoRecibo` varchar(50) DEFAULT NULL,
  `conceptoRecibo` varchar(50) DEFAULT NULL,
  `importeRecibo` float DEFAULT NULL,
  PRIMARY KEY (`idRecibos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla servicios.tutor
DROP TABLE IF EXISTS `tutor`;
CREATE TABLE IF NOT EXISTS `tutor` (
  `idTutor` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL DEFAULT '0',
  `nomTutor` varchar(50) NOT NULL,
  `apellTutor` varchar(50) NOT NULL,
  `apell2Tutor` varchar(50) NOT NULL,
  `direcTutor` varchar(50) NOT NULL,
  `dniTutor` varchar(50) NOT NULL,
  `sexoTutor` int(11) NOT NULL,
  `relAlumTutor` varchar(50) NOT NULL,
  `principalTutor` tinyint(4) NOT NULL,
  `calleTutor` varchar(50) NOT NULL,
  `numCasaTutor` varchar(50) NOT NULL,
  `pisoTutor` varchar(50) NOT NULL,
  `provinciaTutor` varchar(50) NOT NULL,
  `localidadTutor` varchar(50) NOT NULL,
  `codPostalTutor` varchar(50) NOT NULL,
  `telfTutor` int(11) NOT NULL,
  `telf2Tutor` int(11) NOT NULL,
  `emailTutor` varchar(50) NOT NULL,
  PRIMARY KEY (`idTutor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.


-- Volcando estructura para tabla servicios.usuarios
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nomUsuario` varchar(50) DEFAULT '0',
  `apellUsuario` varchar(50) DEFAULT '0',
  `apell2Usuario` varchar(50) DEFAULT '0',
  `login` varchar(50) DEFAULT '0',
  `password` varchar(50) DEFAULT '0',
  `nivel` int(11) DEFAULT '0',
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- La exportación de datos fue deseleccionada.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
