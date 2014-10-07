-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.32 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for servicios
CREATE DATABASE IF NOT EXISTS `servicios` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `servicios`;


-- Dumping structure for table servicios.centros
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

-- Dumping data for table servicios.centros: ~0 rows (approximately)
/*!40000 ALTER TABLE `centros` DISABLE KEYS */;
/*!40000 ALTER TABLE `centros` ENABLE KEYS */;


-- Dumping structure for table servicios.estudiante
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

-- Dumping data for table servicios.estudiante: ~0 rows (approximately)
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;


-- Dumping structure for table servicios.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `nomMenu` varchar(50) DEFAULT NULL,
  `costoDesayuno` float DEFAULT NULL,
  `costoComida` float DEFAULT NULL,
  PRIMARY KEY (`idMenu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.menu: ~0 rows (approximately)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


-- Dumping structure for table servicios.pagador
CREATE TABLE IF NOT EXISTS `pagador` (
  `idPagador` int(11) NOT NULL AUTO_INCREMENT,
  `ciPagador` int(11) DEFAULT NULL,
  `nomPagador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPagador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.pagador: ~0 rows (approximately)
/*!40000 ALTER TABLE `pagador` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagador` ENABLE KEYS */;


-- Dumping structure for table servicios.recibos
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

-- Dumping data for table servicios.recibos: ~0 rows (approximately)
/*!40000 ALTER TABLE `recibos` DISABLE KEYS */;
/*!40000 ALTER TABLE `recibos` ENABLE KEYS */;


-- Dumping structure for table servicios.tutor
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

-- Dumping data for table servicios.tutor: ~0 rows (approximately)
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutor` ENABLE KEYS */;


-- Dumping structure for table servicios.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nomUsuario` varchar(50) DEFAULT '0',
  `apellUsuario` varchar(50) DEFAULT '0',
  `apell2Usuario` varchar(50) DEFAULT '0',
  `login` varchar(50) DEFAULT '0',
  `password` varchar(50) DEFAULT '0',
  `nivel` int(11) DEFAULT '0',
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.usuarios: ~2 rows (approximately)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`idUsuario`, `nomUsuario`, `apellUsuario`, `apell2Usuario`, `login`, `password`, `nivel`) VALUES
	(1, 'admin', 'admin', 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 5);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
