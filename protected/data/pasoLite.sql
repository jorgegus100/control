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
CREATE DATABASE IF NOT EXISTS `servicios` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `servicios`;


-- Volcando estructura para tabla servicios.asistencias
CREATE TABLE IF NOT EXISTS `asistencias` (
  `idAsistencia` int(11) NOT NULL AUTO_INCREMENT,
  `estudianteAsistencia` int(11) NOT NULL,
  `fechaAsistencia` date NOT NULL,
  `estadoAsistencia` int(11) NOT NULL,
  `servicioAsistencia` int(11) NOT NULL,
  PRIMARY KEY (`idAsistencia`),
  KEY `FK_asistencias_estudiante` (`estudianteAsistencia`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla servicios.asistencias: ~0 rows (aproximadamente)
DELETE FROM `asistencias`;
/*!40000 ALTER TABLE `asistencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `asistencias` ENABLE KEYS */;


-- Volcando estructura para tabla servicios.becas
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

-- Volcando datos para la tabla servicios.becas: ~0 rows (aproximadamente)
DELETE FROM `becas`;
/*!40000 ALTER TABLE `becas` DISABLE KEYS */;
/*!40000 ALTER TABLE `becas` ENABLE KEYS */;


-- Volcando estructura para tabla servicios.calendario
CREATE TABLE IF NOT EXISTS `calendario` (
  `idCalendario` int(11) NOT NULL AUTO_INCREMENT,
  `servicioCal` int(11) DEFAULT NULL,
  `inicioCal` date DEFAULT NULL,
  `finCal` date DEFAULT NULL,
  `diasCal` varchar(250) DEFAULT NULL,
  `centroCal` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCalendario`),
  KEY `FK_calendario_centros` (`centroCal`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla servicios.calendario: ~0 rows (aproximadamente)
DELETE FROM `calendario`;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;


-- Volcando estructura para tabla servicios.centros
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla servicios.centros: ~3 rows (aproximadamente)
DELETE FROM `centros`;
/*!40000 ALTER TABLE `centros` DISABLE KEYS */;
INSERT INTO `centros` (`idCentro`, `nomCentro`, `calleCentro`, `numDomCentro`, `pisoCentro`, `telfCentro`, `faxCentro`, `emailCentro`, `expedienteCentro`, `loteCentro`, `provCentro`, `localidadCentro`, `personalCentro`, `codPostalCentro`, `cifCentro`, `codigoCentro`, `respCreacionCentro`) VALUES
	(1, 'Colegio 1', 'calle 1', '12', NULL, 1213313, 123123, 'as@as.com', '123321', NULL, 'Provincia 1', 'Localidad1', NULL, NULL, NULL, NULL, NULL),
	(2, 'Bolognesi', 'huhiu', '3443', 'kjb78', NULL, NULL, '', '', '', '', '', '', NULL, '', '', NULL),
	(3, 'Fe y Alegria', 'Cochabamba', '68768', '', NULL, NULL, '', '', '', '', '', '', NULL, '', '', NULL);
/*!40000 ALTER TABLE `centros` ENABLE KEYS */;


-- Volcando estructura para tabla servicios.estudiante
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
  `diasEstComida` varchar(255) NOT NULL,
  PRIMARY KEY (`idEstudiante`),
  KEY `FK_estudiante_centros` (`idCentroEst`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla servicios.estudiante: ~14 rows (aproximadamente)
DELETE FROM `estudiante`;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` (`idEstudiante`, `idUsuario`, `nomEstudiante`, `apellEstudiante`, `secApellEstudante`, `ciEstudiante`, `idTutor`, `sexEstudiante`, `nacEstudiante`, `cursoEstudiante`, `etapaEstudiante`, `numCasaEstudiante`, `pisoEstudiante`, `provinciaEstudiante`, `LocalidadEst`, `calleEstudiante`, `codPostalEst`, `paisEst`, `idCentroEst`, `telEstudiante`, `emailEstudiante`, `nroCuentaEst`, `dietaEstudiante`, `nutricionEst`, `tel2Estudiante`, `menuEst`, `comidaEst`, `desayunoEst`, `becaEst`, `descuentoEst`, `diasEstudiante`, `diasEstComida`) VALUES
	(1, 9, 'estNom', 'estApell', 'Est2Apell', '1212', 5, 1, '0000-00-00', '', '', '', '', '', '', '', NULL, 'España', 1, NULL, 'es@es.com', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
	(2, 14, 'Eduardo', 'Avaroa', 'Avaroa', '45668465', 0, 0, '0000-00-00', '', '', '', '', '', '', '', NULL, 'Peru', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
	(3, 0, 'Arturo', 'Pen', 'Dragon', '25452345', 5, 2, '0000-00-00', '', '', 'dsafsadf', '', 'sdfsadf', '', 'dsfasf', NULL, 'adfadf', 1, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(4, 16, 'aFDSF', 'DFsafsadf', 'sdfsda', 'sdfsd', 0, 2, '0000-00-00', '', '', '', '', '', '', '', NULL, 'dsfsdaf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(5, 17, 'Antonio', 'Arias', 'Andrade', '789070980', 0, 0, '0000-00-00', '', '', '', '', '', '', '', NULL, 'hkjhkjhkj', 3, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(6, 18, 'Evo', 'Morales', 'Ayma', '24234', 0, 2, '0000-00-00', '', '', 'sd234', 'dfsd', 'sdfsd', '', 'sdfsdf', NULL, 'fsdfsdf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(7, 19, 'dsfasdf', 'sadfsdaf', 'dsafsdaf', 'asdfads', 0, 2, '0000-00-00', '', '', '', '', '', '', '', NULL, 'sdfsd', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(8, 21, 'asdfadsf', 'sdaf', 'sdafsdaf', 'sadf', 0, 2, '0000-00-00', '', '', '', '', 'sdafsdf', '', 'sdfsdaf', NULL, 'sdfsadf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(9, 22, 'asdfadsf', 'sdaf', 'sdafsdaf', 'sadf', 0, 2, '0000-00-00', '', '', '', '', 'sdafsdf', '', 'sdfsdaf', NULL, 'sdfsadf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(10, 23, 'asdfadsf', 'sdaf', 'sdafsdaf', 'sadf', 0, 2, '0000-00-00', '', '', '', '', 'sdafsdf', '', 'sdfsdaf', NULL, 'sdfsadf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(11, 24, 'werwqer', 'werrwe', 'werweqr', 'werweqr', 0, 2, '0000-00-00', '', '', '', '', '', '', '', NULL, 'weqrwer', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(12, 26, 'sadfsdaf', 'sadfsdf', 'sadfsdaf', 'asdf', 0, 0, '0000-00-00', '', '', '', '', '', '', '', NULL, 'sdfsdf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(13, 27, 'Atahualpa', 'Yupanqui', 'Willians', '465654654', 0, 2, '0000-00-00', '', '', '', '', '', '', '', NULL, 'Peru', 3, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
	(14, 0, '', '', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;


-- Volcando estructura para tabla servicios.forum
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL,
  `is_locked` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_forum_forum` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla servicios.forum: ~6 rows (aproximadamente)
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


-- Volcando estructura para tabla servicios.forumuser
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

-- Volcando datos para la tabla servicios.forumuser: ~3 rows (aproximadamente)
DELETE FROM `forumuser`;
/*!40000 ALTER TABLE `forumuser` DISABLE KEYS */;
INSERT INTO `forumuser` (`id`, `siteid`, `name`, `signature`, `firstseen`, `lastseen`) VALUES
	(1, 'admin', 'admin', NULL, 0, 0),
	(2, 'demo', 'demo', NULL, 0, 0),
	(3, '1', 'admin', NULL, 1408942778, 1408942778);
/*!40000 ALTER TABLE `forumuser` ENABLE KEYS */;


-- Volcando estructura para tabla servicios.menu
CREATE TABLE IF NOT EXISTS `menu` (
  `idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `nomMenu` varchar(50) DEFAULT NULL,
  `costoDesayuno` float(12,0) DEFAULT NULL,
  `costoComida` float(12,0) DEFAULT NULL,
  PRIMARY KEY (`idMenu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla servicios.menu: ~0 rows (aproximadamente)
DELETE FROM `menu`;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


-- Volcando estructura para tabla servicios.pagador
CREATE TABLE IF NOT EXISTS `pagador` (
  `idPagador` int(11) NOT NULL AUTO_INCREMENT,
  `ciPagador` int(11) DEFAULT NULL,
  `nomPagador` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idPagador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla servicios.pagador: ~0 rows (aproximadamente)
DELETE FROM `pagador`;
/*!40000 ALTER TABLE `pagador` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagador` ENABLE KEYS */;


-- Volcando estructura para tabla servicios.post
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
  KEY `FK_post_thread` (`thread_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla servicios.post: ~14 rows (aproximadamente)
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


-- Volcando estructura para tabla servicios.recibos
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

-- Volcando datos para la tabla servicios.recibos: ~0 rows (aproximadamente)
DELETE FROM `recibos`;
/*!40000 ALTER TABLE `recibos` DISABLE KEYS */;
/*!40000 ALTER TABLE `recibos` ENABLE KEYS */;


-- Volcando estructura para tabla servicios.reltutorest
CREATE TABLE IF NOT EXISTS `reltutorest` (
  `idRelTutorEst` int(255) NOT NULL AUTO_INCREMENT,
  `idTutor` int(255) NOT NULL,
  `idEstudiante` int(255) NOT NULL,
  `principalTutor` tinyint(255) NOT NULL,
  PRIMARY KEY (`idRelTutorEst`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla servicios.reltutorest: ~17 rows (aproximadamente)
DELETE FROM `reltutorest`;
/*!40000 ALTER TABLE `reltutorest` DISABLE KEYS */;
INSERT INTO `reltutorest` (`idRelTutorEst`, `idTutor`, `idEstudiante`, `principalTutor`) VALUES
	(1, 1, 1, 0),
	(2, 4, 1, 1),
	(3, 4, 1, 1),
	(4, 5, 1, 1),
	(5, 5, 1, 1),
	(6, 1, 1, 0),
	(7, 1, 2, 1),
	(8, 1, 2, 1),
	(9, 1, 2, 1),
	(10, 1, 2, 1),
	(11, 6, 2, 0),
	(12, 6, 2, 0),
	(13, 5, 2, 0),
	(14, 7, 2, 1),
	(15, 7, 2, 1),
	(16, 5, 2, 0),
	(17, 4, 4, 0);
/*!40000 ALTER TABLE `reltutorest` ENABLE KEYS */;


-- Volcando estructura para tabla servicios.thread
CREATE TABLE IF NOT EXISTS `thread` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` int(10) unsigned NOT NULL,
  `subject` varchar(120) NOT NULL,
  `is_sticky` tinyint(1) unsigned NOT NULL,
  `is_locked` tinyint(1) unsigned NOT NULL,
  `view_count` bigint(20) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_thread_forum` (`forum_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla servicios.thread: ~7 rows (aproximadamente)
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


-- Volcando estructura para tabla servicios.tutor
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla servicios.tutor: ~5 rows (aproximadamente)
DELETE FROM `tutor`;
/*!40000 ALTER TABLE `tutor` DISABLE KEYS */;
INSERT INTO `tutor` (`idTutor`, `idUsuario`, `nomTutor`, `apellTutor`, `apell2Tutor`, `direcTutor`, `dniTutor`, `sexoTutor`, `relAlumTutor`, `principalTutor`, `calleTutor`, `numCasaTutor`, `pisoTutor`, `provinciaTutor`, `localidadTutor`, `codPostalTutor`, `telfTutor`, `telf2Tutor`, `emailTutor`) VALUES
	(1, 0, 'Tutor1', 'Tutor1', 'Tutor1', 'ads asd asd', '12312312', 0, 'Padre', 1, 'calle1', '12', '12', 'sdad', 'adsdas', '3432423', 2147483647, 32423423, 'das@ads.cov'),
	(4, 0, 'tutor3', 'Tutor3', 'Tutor3', '', '121212', 0, 'qeweqw', 1, 'qew', 'qew', 'qew', 'qew', 'qweeqw', '243342234', 342434, 234234243, 'qw@qw.com'),
	(5, 6, 'Thomas', 'Pitt', 'Novel', 'Rutland Place', '131313', 0, 'Padre', 1, 'adsfadf', '', '', '', '', '', 0, 0, 'qa@qa.com'),
	(6, 11, 'Andres', 'Mamani', 'Pacaya', '', '456321684654', 1, 'Padre', 1, 'calle 7', '12', '1', 'Alicante', 'sadasd', '133212', 2342423, 234234234, 'as@as.asd'),
	(7, 15, 'Pablo', 'Arce', 'Torrico', '', '4654165165', 1, 'Padre', 0, 'hkjhkkjh', '4654', '635465', 'hkhkjhkjh', 'ughiuhuih', '498465', 6546546, 465465, 'sa@asd.as');
/*!40000 ALTER TABLE `tutor` ENABLE KEYS */;


-- Volcando estructura para tabla servicios.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nomUsuario` varchar(50) DEFAULT '0',
  `apellUsuario` varchar(50) DEFAULT '0',
  `apell2Usuario` varchar(50) DEFAULT '0',
  `login` varchar(50) DEFAULT '0',
  `password` varchar(50) DEFAULT '0',
  `nivel` int(11) DEFAULT '0',
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla servicios.usuarios: ~29 rows (aproximadamente)
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
	(9, 'estNom', 'estApell', 'Est2Apell', 'es@es.com', '618dcdfb0cd9ae4481164961c4796dd8e3930c8d', 1),
	(10, 'Andrade', 'Ser', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 2),
	(11, 'Andres', 'Mamani', 'Pacaya', 'as@as.asd', 'ae86795d1e1d37d89d33d6634cfc92d7c2da31d4', 2),
	(12, 'Eduardo', 'Avaroa', 'Avaroa', '', '0cea63273202adb5347f9882b06fec160a7276e0', 1),
	(13, 'Eduardo', 'Avaroa', 'Avaroa', '', '0cea63273202adb5347f9882b06fec160a7276e0', 1),
	(14, 'Eduardo', 'Avaroa', 'Avaroa', '', '0cea63273202adb5347f9882b06fec160a7276e0', 1),
	(15, 'Pablo', 'Arce', 'Torrico', 'sa@asd.as', '2eba9e6868a487e45c7cdb4ea246087f4e0f8be4', 2),
	(16, 'aFDSF', 'DFsafsadf', 'sdfsda', '', '9b1549d8fc9fa1fdf68430e6bf0db5094151c168', 1),
	(17, 'Antonio', 'Arias', 'Andrade', '', '8d522a967e40d892be61f185acd165bae34d032a', 1),
	(18, 'Evo', 'Morales', 'Ayma', '', 'd8a60875d9e41cc54a5a05d47d67dd0f2e16ffea', 1),
	(19, 'dsfasdf', 'sadfsdaf', 'dsafsdaf', '', 'c767e7f200dfe4c78f6297867c7f51c9a75aae6c', 1),
	(20, '', '', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 1),
	(21, 'asdfadsf', 'sdaf', 'sdafsdaf', '', '19791d9c7d235a1353531b6a9a98098e740f0430', 1),
	(22, 'asdfadsf', 'sdaf', 'sdafsdaf', '', '19791d9c7d235a1353531b6a9a98098e740f0430', 1),
	(23, 'asdfadsf', 'sdaf', 'sdafsdaf', '', '19791d9c7d235a1353531b6a9a98098e740f0430', 1),
	(24, 'werwqer', 'werrwe', 'werweqr', '', 'adb0065771c92b32a7d8cfd2e992e1f04df655d6', 1),
	(25, 'sadfsdaf', 'sadfsdf', 'sadfsdaf', '', '3da541559918a808c2402bba5012f6c60b27661c', 1),
	(26, 'sadfsdaf', 'sadfsdf', 'sadfsdaf', '', '3da541559918a808c2402bba5012f6c60b27661c', 1),
	(27, 'Atahualpa', 'Yupanqui', 'Willians', '', 'edadb74f837576d7fa78a62613b27d70daf55091', 1),
	(28, '', '', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 1),
	(29, 'sfasdf', 'sadfsda', 'fsadf', '', '44cef431f67acb94eea6b80b7160b5e9d82e0bcc', 1),
	(30, 'sfasdf', 'sadfsda', 'fsadf', '', '4bf503b901b467f325f9338d1c5a02ad7c5625fc', 1);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
