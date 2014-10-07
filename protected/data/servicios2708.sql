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
DROP DATABASE IF EXISTS `servicios`;
CREATE DATABASE IF NOT EXISTS `servicios` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `servicios`;


-- Dumping structure for table servicios.asistencias
DROP TABLE IF EXISTS `asistencias`;
CREATE TABLE IF NOT EXISTS `asistencias` (
  `idAsistencia` int(11) NOT NULL AUTO_INCREMENT,
  `estudianteAsistencia` int(11) NOT NULL,
  `fechaAsistencia` date NOT NULL,
  `estadoAsistencia` int(11) NOT NULL,
  `servicioAsistencia` int(11) NOT NULL,
  PRIMARY KEY (`idAsistencia`),
  KEY `FK_asistencias_estudiante` (`estudianteAsistencia`) USING BTREE,
  CONSTRAINT `FK_asistencias_estudiante` FOREIGN KEY (`estudianteAsistencia`) REFERENCES `estudiante` (`idEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.asistencias: ~0 rows (approximately)
DELETE FROM `asistencias`;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;


-- Dumping structure for table servicios.becas
DROP TABLE IF EXISTS `becas`;
CREATE TABLE IF NOT EXISTS `becas` (
  `idBeca` int(11) NOT NULL AUTO_INCREMENT,
  `centroBeca` int(11) DEFAULT NULL,
  `gestionBeca` varchar(50) DEFAULT NULL,
  `servicioBeca` varchar(50) DEFAULT NULL,
  `valorBeca` float(12,0) DEFAULT NULL,
  `tipoCoberBeca` int(11) DEFAULT NULL,
  `confirBeca` tinyint(4) DEFAULT NULL,
  `inicioBeca` date DEFAULT NULL,
  `finBeca` date DEFAULT NULL,
  `respBeca` int(11) DEFAULT NULL,
  PRIMARY KEY (`idBeca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.becas: ~0 rows (approximately)
DELETE FROM `becas`;
/*!40000 ALTER TABLE `becas` DISABLE KEYS */;
/*!40000 ALTER TABLE `becas` ENABLE KEYS */;


-- Dumping structure for table servicios.calendario
DROP TABLE IF EXISTS `calendario`;
CREATE TABLE IF NOT EXISTS `calendario` (
  `idCalendario` int(11) NOT NULL AUTO_INCREMENT,
  `servicioCal` int(11) DEFAULT NULL,
  `inicioCal` date DEFAULT NULL,
  `finCal` date DEFAULT NULL,
  `diasCal` varchar(250) DEFAULT NULL,
  `centroCal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCalendario`),
  KEY `FK_calendario_centros` (`centroCal`) USING BTREE,
  CONSTRAINT `FK_calendario_centros` FOREIGN KEY (`centroCal`) REFERENCES `centros` (`idCentro`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.calendario: ~0 rows (approximately)
DELETE FROM `calendario`;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;


-- Dumping structure for table servicios.centros
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.centros: ~1 rows (approximately)
DELETE FROM `centros`;
/*!40000 ALTER TABLE `centros` DISABLE KEYS */;
INSERT INTO `centros` (`idCentro`, `nomCentro`, `calleCentro`, `numDomCentro`, `pisoCentro`, `telfCentro`, `faxCentro`, `emailCentro`, `expedienteCentro`, `loteCentro`, `provCentro`, `localidadCentro`, `personalCentro`, `codPostalCentro`, `cifCentro`, `codigoCentro`, `respCreacionCentro`) VALUES
	(1, 'Colegio 1', 'calle 1', '12', NULL, 1213313, 123123, 'as@as.com', '123321', NULL, 'Provincia 1', 'Localidad1', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `centros` ENABLE KEYS */;


-- Dumping structure for table servicios.estudiante
DROP TABLE IF EXISTS `estudiante`;
CREATE TABLE IF NOT EXISTS `estudiante` (
  `idEstudiante` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
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
  `descuentoEst` float(12,0) DEFAULT NULL,
  `diasEstudiante` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idEstudiante`),
  KEY `FK_estudiante_centros` (`idCentroEst`) USING BTREE,
  KEY `idTutor` (`idTutor`) USING BTREE,
  CONSTRAINT `FK_estudiante_centros` FOREIGN KEY (`idCentroEst`) REFERENCES `centros` (`idCentro`),
  CONSTRAINT `FK__tutor` FOREIGN KEY (`idTutor`) REFERENCES `tutor` (`idTutor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.estudiante: ~1 rows (approximately)
DELETE FROM `estudiante`;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` (`idEstudiante`, `idUsuario`, `nomEstudiante`, `apellEstudiante`, `secApellEstudante`, `ciEstudiante`, `idTutor`, `sexEstudiante`, `nacEstudiante`, `cursoEstudiante`, `etapaEstudiante`, `numCasaEstudiante`, `pisoEstudiante`, `provinciaEstudiante`, `LocalidadEst`, `calleEstudiante`, `codPostalEst`, `paisEst`, `idCentroEst`, `telEstudiante`, `emailEstudiante`, `nroCuentaEst`, `dietaEstudiante`, `nutricionEst`, `tel2Estudiante`, `menuEst`, `comidaEst`, `desayunoEst`, `becaEst`, `descuentoEst`, `diasEstudiante`) VALUES
	(1, 9, 'estNom', 'estApell', 'Est2Apell', '1212', 5, 1, '0000-00-00', '', '', '', '', '', '', '', NULL, 'España', 1, NULL, 'es@es.com', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;


-- Dumping structure for table servicios.forum
DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL,
  `is_locked` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_forum_forum` (`parent_id`) USING BTREE,
  CONSTRAINT `FK_forum_forum` FOREIGN KEY (`parent_id`) REFERENCES `forum` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table servicios.forum: ~6 rows (approximately)
DELETE FROM `forum`;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` (`id`, `parent_id`, `title`, `description`, `listorder`, `is_locked`) VALUES
	(1, NULL, 'Announcements', 'Announcements', 0, 1),
	(2, 1, 'New releases', 'Announcements about new releases', 10, 0),
	(3, NULL, 'Support', '', 20, 0),
	(4, 3, 'Installation and configuration', 'Problems with installation and/or configuration, incompatibility issues, etc.', 10, 0),
	(5, 3, 'Bugs', 'Things not working at all, or not as they should', 20, 0),
	(6, 3, 'Missing features', 'Fetures you think should be included in a future release', 30, 0);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;


-- Dumping structure for table servicios.forumuser
DROP TABLE IF EXISTS `forumuser`;
CREATE TABLE IF NOT EXISTS `forumuser` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `signature` text,
  `firstseen` int(10) unsigned NOT NULL,
  `lastseen` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `siteid` (`siteid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table servicios.forumuser: ~3 rows (approximately)
DELETE FROM `forumuser`;
/*!40000 ALTER TABLE `forumuser` DISABLE KEYS */;
INSERT INTO `forumuser` (`id`, `siteid`, `name`, `signature`, `firstseen`, `lastseen`) VALUES
	(1, 'admin', 'admin', NULL, 0, 0),
	(2, 'demo', 'demo', NULL, 0, 0),
	(3, '1', 'admin', NULL, 1408942778, 1408942778);
/*!40000 ALTER TABLE `forumuser` ENABLE KEYS */;


-- Dumping structure for table servicios.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `nomMenu` varchar(50) DEFAULT NULL,
  `costoDesayuno` float(12,0) DEFAULT NULL,
  `costoComida` float(12,0) DEFAULT NULL,
  PRIMARY KEY (`idMenu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.menu: ~0 rows (approximately)
DELETE FROM `menu`;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


-- Dumping structure for table servicios.pagador
DROP TABLE IF EXISTS `pagador`;
CREATE TABLE IF NOT EXISTS `pagador` (
  `idPagador` int(11) NOT NULL AUTO_INCREMENT,
  `ciPagador` int(11) DEFAULT NULL,
  `nomPagador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPagador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.pagador: ~0 rows (approximately)
DELETE FROM `pagador`;
/*!40000 ALTER TABLE `pagador` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagador` ENABLE KEYS */;


-- Dumping structure for table servicios.post
DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(10) unsigned NOT NULL,
  `thread_id` int(10) unsigned NOT NULL,
  `editor_id` int(10) unsigned DEFAULT NULL,
  `content` text NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `updated` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_post_author` (`author_id`) USING BTREE,
  KEY `FK_post_editor` (`editor_id`) USING BTREE,
  KEY `FK_post_thread` (`thread_id`) USING BTREE,
  CONSTRAINT `FK_post_author` FOREIGN KEY (`author_id`) REFERENCES `forumuser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_post_editor` FOREIGN KEY (`editor_id`) REFERENCES `forumuser` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_post_thread` FOREIGN KEY (`thread_id`) REFERENCES `thread` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table servicios.post: ~14 rows (approximately)
DELETE FROM `post`;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` (`id`, `author_id`, `thread_id`, `editor_id`, `content`, `created`, `updated`) VALUES
	(1, 1, 1, NULL, 'The first release is a fact!', 0, 0),
	(2, 2, 2, NULL, 'This obviously can\'t be right.', 0, 0),
	(3, 2, 3, NULL, 'When posting a new thread, the creation date is set to Jan 1, 1970 01:00:00 AM...', 0, 0),
	(4, 2, 3, NULL, 'This should be fixed now!', 2012, 2012),
	(5, 2, 3, NULL, 'Oops! Let\'s try that again...\r\nThis should be fixed now!', 1349540442, 1349540442),
	(6, 2, 4, NULL, 'I believe it shows the the last thread instead...', 1349540563, 1349540563),
	(7, 2, 4, NULL, 'Fixed!', 1349561144, 1349561144),
	(8, 1, 4, NULL, 'Test reply', 1349563344, 1349563344),
	(9, 1, 4, NULL, 'Another test reply, locking thread', 1349563360, 1349563360),
	(10, 1, 4, NULL, 'Opps. Locking thread for real now', 1349564868, 1349564868),
	(11, 1, 3, NULL, 'Thread locked, maybe', 1349564945, 1349632036),
	(12, 1, 5, NULL, 'Allow users to define a signature, and add this to posts by them.', 1349570366, 1349570366),
	(13, 1, 6, NULL, 'Add BB code support, and some sort of wysiwyg editor', 1349570413, 1349570413),
	(14, 1, 7, NULL, 'Allow attachments to be added to posts\r\n\r\nSome *examples* of **markup**\r\n\r\ninline use of `code` is possible too!\r\n\r\nLet\'s see what a\r\n> blockquote looks like\r\nwithin a pargraph\r\n\r\n    [php showLineNumbers=1]\r\n    echo \'It can highlight code too!\';\r\n', 1349578699, 1349578699);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;


-- Dumping structure for table servicios.recibos
DROP TABLE IF EXISTS `recibos`;
CREATE TABLE IF NOT EXISTS `recibos` (
  `idRecibos` int(11) NOT NULL AUTO_INCREMENT,
  `colegioRecibo` varchar(50) NOT NULL DEFAULT '0',
  `alumnoRecibo` int(11) NOT NULL DEFAULT '0',
  `fechEmisionRecibo` date DEFAULT NULL,
  `estadoRecibo` varchar(50) DEFAULT NULL,
  `conceptoRecibo` varchar(50) DEFAULT NULL,
  `importeRecibo` float(12,0) DEFAULT NULL,
  PRIMARY KEY (`idRecibos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.recibos: ~0 rows (approximately)
DELETE FROM `recibos`;
/*!40000 ALTER TABLE `recibos` DISABLE KEYS */;
/*!40000 ALTER TABLE `recibos` ENABLE KEYS */;


-- Dumping structure for table servicios.thread
DROP TABLE IF EXISTS `thread`;
CREATE TABLE IF NOT EXISTS `thread` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` int(10) unsigned NOT NULL,
  `subject` varchar(120) NOT NULL,
  `is_sticky` tinyint(1) unsigned NOT NULL,
  `is_locked` tinyint(1) unsigned NOT NULL,
  `view_count` bigint(20) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_thread_forum` (`forum_id`) USING BTREE,
  CONSTRAINT `FK_thread_forum` FOREIGN KEY (`forum_id`) REFERENCES `forum` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table servicios.thread: ~7 rows (approximately)
DELETE FROM `thread`;
/*!40000 ALTER TABLE `thread` DISABLE KEYS */;
INSERT INTO `thread` (`id`, `forum_id`, `subject`, `is_sticky`, `is_locked`, `view_count`, `created`) VALUES
	(1, 2, 'First release', 1, 0, 27, 0),
	(2, 5, 'Subject is allowed to be blank when creating a new thread', 0, 0, 4, 0),
	(3, 5, 'Post date is not set', 0, 1, 16, 0),
	(4, 5, 'Forum view does not show correct last post', 0, 1, 10, 1349540563),
	(5, 6, 'User signatures', 0, 0, 1, 1349570366),
	(6, 6, 'BB Code', 0, 0, 1, 1349570413),
	(7, 5, 'Attachments', 0, 0, 21, 1349578699);
/*!40000 ALTER TABLE `thread` ENABLE KEYS */;


-- Dumping structure for table servicios.tutor
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.tutor: ~3 rows (approximately)
DELETE FROM `tutor`;
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
INSERT INTO `tutor` (`idTutor`, `idUsuario`, `nomTutor`, `apellTutor`, `apell2Tutor`, `direcTutor`, `dniTutor`, `sexoTutor`, `relAlumTutor`, `principalTutor`, `calleTutor`, `numCasaTutor`, `pisoTutor`, `provinciaTutor`, `localidadTutor`, `codPostalTutor`, `telfTutor`, `telf2Tutor`, `emailTutor`) VALUES
	(1, 0, 'Tutor1', 'Tutor1', 'Tutor1', 'ads asd asd', '12312312', 1, 'Padre', 1, 'ca', '12', '12', 'sdad', 'adsdas', '3432423', 2147483647, 32423423, 'das@ads.cov'),
	(4, 0, 'tutor3', 'Tutor3', 'Tutor3', '', '121212', 1, 'qeweqw', 1, 'qew', 'qew', 'qew', 'qew', 'qweeqw', '243342234', 342434, 234234243, 'qw@qw.com'),
	(5, 6, 'Thomas', 'Pitt', 'Novel', 'Rutland Place', '131313', 1, 'Padre', 1, 'adsfadf', '', '', '', '', '', 0, 0, 'qa@qa.com');
/*!40000 ALTER TABLE `tutor` ENABLE KEYS */;


-- Dumping structure for table servicios.usuarios
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Dumping data for table servicios.usuarios: ~8 rows (approximately)
DELETE FROM `usuarios`;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`idUsuario`, `nomUsuario`, `apellUsuario`, `apell2Usuario`, `login`, `password`, `nivel`) VALUES
	(1, 'Admin', 'Admin', '0', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 5),
	(2, 'Admin', 'Admin', '0', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 5),
	(4, 'tutor3', 'Tutor3', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2),
	(5, 'tutor3', 'Tutor3', 'Tutor3', 'qw@qw.com', '48058e0c99bf7d689ce71c360699a14ce2f99774', 2),
	(6, 'Tutor4', 'Tutor4', 'Tutor4', 'qa@qa.com', 'f4ee7415066b23ed0c5555e3a10aa76726a995d7', 2),
	(7, 'estNom', 'estApell', 'Est2Apell', 'es@es.com', '618dcdfb0cd9ae4481164961c4796dd8e3930c8d', 1),
	(8, 'estNom', 'estApell', 'Est2Apell', 'es@es.com', '618dcdfb0cd9ae4481164961c4796dd8e3930c8d', 1),
	(9, 'estNom', 'estApell', 'Est2Apell', 'es@es.com', '618dcdfb0cd9ae4481164961c4796dd8e3930c8d', 1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
