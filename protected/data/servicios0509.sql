-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "asistencias" ------------------------------
DROP TABLE IF EXISTS `asistencias` CASCADE;

CREATE TABLE `asistencias` ( 
	`idAsistencia` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`estudianteAsistencia` Int( 11 ) NOT NULL, 
	`fechaAsistencia` Date NOT NULL, 
	`estadoAsistencia` Int( 11 ) NOT NULL, 
	`servicioAsistencia` Int( 11 ) NOT NULL,
	 PRIMARY KEY ( `idAsistencia` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "becas" ------------------------------------
DROP TABLE IF EXISTS `becas` CASCADE;

CREATE TABLE `becas` ( 
	`idBeca` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`centroBeca` Int( 11 ) NULL, 
	`gestionBeca` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`servicioBeca` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`valorBeca` Float( 12, 0 ) NULL, 
	`tipoCoberBeca` Int( 11 ) NULL, 
	`confirBeca` TinyInt( 4 ) NULL, 
	`inicioBeca` Date NULL, 
	`finBeca` Date NULL, 
	`respBeca` Int( 11 ) NULL,
	 PRIMARY KEY ( `idBeca` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "calendario" -------------------------------
DROP TABLE IF EXISTS `calendario` CASCADE;

CREATE TABLE `calendario` ( 
	`idCalendario` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`servicioCal` Int( 11 ) NULL, 
	`inicioCal` Date NULL, 
	`finCal` Date NULL, 
	`diasCal` VarChar( 250 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`centroCal` Int( 11 ) NULL,
	 PRIMARY KEY ( `idCalendario` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "centros" ----------------------------------
DROP TABLE IF EXISTS `centros` CASCADE;

CREATE TABLE `centros` ( 
	`idCentro` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`nomCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`calleCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`numDomCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`pisoCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`telfCentro` Int( 11 ) NULL, 
	`faxCentro` Int( 11 ) NULL, 
	`emailCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`expedienteCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`loteCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`provCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`localidadCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`personalCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`codPostalCentro` Int( 11 ) NULL, 
	`cifCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`codigoCentro` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`respCreacionCentro` Int( 11 ) NULL,
	 PRIMARY KEY ( `idCentro` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- ---------------------------------------------------------


-- CREATE TABLE "estudiante" -------------------------------
DROP TABLE IF EXISTS `estudiante` CASCADE;

CREATE TABLE `estudiante` ( 
	`idEstudiante` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`idUsuario` Int( 11 ) NOT NULL, 
	`nomEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`apellEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`secApellEstudante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`ciEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`idTutor` Int( 11 ) NOT NULL, 
	`sexEstudiante` TinyInt( 4 ) NULL, 
	`nacEstudiante` Date NULL, 
	`cursoEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`etapaEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`numCasaEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`pisoEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`provinciaEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`LocalidadEst` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`calleEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`codPostalEst` Int( 11 ) NULL, 
	`paisEst` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`idCentroEst` Int( 11 ) NULL, 
	`telEstudiante` Int( 11 ) NULL, 
	`emailEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`nroCuentaEst` Int( 11 ) NULL, 
	`dietaEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`nutricionEst` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`tel2Estudiante` Int( 11 ) NULL, 
	`menuEst` Int( 11 ) NULL, 
	`comidaEst` TinyInt( 4 ) NULL, 
	`desayunoEst` TinyInt( 4 ) NULL, 
	`becaEst` TinyInt( 4 ) NULL, 
	`descuentoEst` Float( 12, 0 ) NULL, 
	`diasEstudiante` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	 PRIMARY KEY ( `idEstudiante` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 13;
-- ---------------------------------------------------------


-- CREATE TABLE "forum" ------------------------------------
DROP TABLE IF EXISTS `forum` CASCADE;

CREATE TABLE `forum` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`parent_id` Int( 10 ) UNSIGNED NULL, 
	`title` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`description` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`listorder` Smallint( 5 ) UNSIGNED NOT NULL, 
	`is_locked` TinyInt( 1 ) UNSIGNED NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 7;
-- ---------------------------------------------------------


-- CREATE TABLE "forumuser" --------------------------------
DROP TABLE IF EXISTS `forumuser` CASCADE;

CREATE TABLE `forumuser` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`siteid` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`name` VarChar( 200 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`signature` Text CHARACTER SET utf8 COLLATE utf8_general_ci NULL, 
	`firstseen` Int( 10 ) UNSIGNED NOT NULL, 
	`lastseen` Int( 10 ) UNSIGNED NOT NULL,
	 PRIMARY KEY ( `id` )
, 
	CONSTRAINT `siteid` UNIQUE( `siteid` ) )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 4;
-- ---------------------------------------------------------


-- CREATE TABLE "menu" -------------------------------------
DROP TABLE IF EXISTS `menu` CASCADE;

CREATE TABLE `menu` ( 
	`idMenu` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`nomMenu` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`costoDesayuno` Float( 12, 0 ) NULL, 
	`costoComida` Float( 12, 0 ) NULL,
	 PRIMARY KEY ( `idMenu` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "pagador" ----------------------------------
DROP TABLE IF EXISTS `pagador` CASCADE;

CREATE TABLE `pagador` ( 
	`idPagador` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`ciPagador` Int( 11 ) NULL, 
	`nomPagador` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	 PRIMARY KEY ( `idPagador` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "post" -------------------------------------
DROP TABLE IF EXISTS `post` CASCADE;

CREATE TABLE `post` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`author_id` Int( 10 ) UNSIGNED NOT NULL, 
	`thread_id` Int( 10 ) UNSIGNED NOT NULL, 
	`editor_id` Int( 10 ) UNSIGNED NULL, 
	`content` Text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`created` Int( 10 ) UNSIGNED NOT NULL, 
	`updated` Int( 10 ) UNSIGNED NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 15;
-- ---------------------------------------------------------


-- CREATE TABLE "recibos" ----------------------------------
DROP TABLE IF EXISTS `recibos` CASCADE;

CREATE TABLE `recibos` ( 
	`idRecibos` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`colegioRecibo` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0', 
	`alumnoRecibo` Int( 11 ) NOT NULL DEFAULT '0', 
	`fechEmisionRecibo` Date NULL, 
	`estadoRecibo` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`conceptoRecibo` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL, 
	`importeRecibo` Float( 12, 0 ) NULL,
	 PRIMARY KEY ( `idRecibos` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- ---------------------------------------------------------


-- CREATE TABLE "reltutorest" ------------------------------
DROP TABLE IF EXISTS `reltutorest` CASCADE;

CREATE TABLE `reltutorest` ( 
	`idRelTutorEst` Int( 255 ) AUTO_INCREMENT NOT NULL, 
	`idTutor` Int( 255 ) NOT NULL, 
	`idEstudiante` Int( 255 ) NOT NULL, 
	`principalTutor` TinyInt( 255 ) NOT NULL,
	 PRIMARY KEY ( `idRelTutorEst` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 18;
-- ---------------------------------------------------------


-- CREATE TABLE "thread" -----------------------------------
DROP TABLE IF EXISTS `thread` CASCADE;

CREATE TABLE `thread` ( 
	`id` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL, 
	`forum_id` Int( 10 ) UNSIGNED NOT NULL, 
	`subject` VarChar( 120 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL, 
	`is_sticky` TinyInt( 1 ) UNSIGNED NOT NULL, 
	`is_locked` TinyInt( 1 ) UNSIGNED NOT NULL, 
	`view_count` BigInt( 20 ) UNSIGNED NOT NULL, 
	`created` Int( 10 ) UNSIGNED NOT NULL,
	 PRIMARY KEY ( `id` )
 )
CHARACTER SET = utf8
COLLATE = utf8_general_ci
ENGINE = InnoDB
AUTO_INCREMENT = 8;
-- ---------------------------------------------------------


-- CREATE TABLE "tutor" ------------------------------------
DROP TABLE IF EXISTS `tutor` CASCADE;

CREATE TABLE `tutor` ( 
	`idTutor` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`idUsuario` Int( 11 ) NOT NULL DEFAULT '0', 
	`nomTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`apellTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`apell2Tutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`direcTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`dniTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`sexoTutor` Int( 11 ) NOT NULL, 
	`relAlumTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`principalTutor` TinyInt( 4 ) NOT NULL, 
	`calleTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`numCasaTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`pisoTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`provinciaTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`localidadTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`codPostalTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL, 
	`telfTutor` Int( 11 ) NOT NULL, 
	`telf2Tutor` Int( 11 ) NOT NULL, 
	`emailTutor` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	 PRIMARY KEY ( `idTutor` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 8;
-- ---------------------------------------------------------


-- CREATE TABLE "usuarios" ---------------------------------
DROP TABLE IF EXISTS `usuarios` CASCADE;

CREATE TABLE `usuarios` ( 
	`idUsuario` Int( 11 ) AUTO_INCREMENT NOT NULL, 
	`nomUsuario` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0', 
	`apellUsuario` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0', 
	`apell2Usuario` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0', 
	`login` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0', 
	`password` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0', 
	`nivel` Int( 11 ) NULL DEFAULT '0',
	 PRIMARY KEY ( `idUsuario` )
 )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 27;
-- ---------------------------------------------------------


-- Dump data of "asistencias" ------------------------------
-- ---------------------------------------------------------


-- Dump data of "becas" ------------------------------------
-- ---------------------------------------------------------


-- Dump data of "calendario" -------------------------------
-- ---------------------------------------------------------


-- Dump data of "centros" ----------------------------------
INSERT INTO `centros`(`idCentro`,`nomCentro`,`calleCentro`,`numDomCentro`,`pisoCentro`,`telfCentro`,`faxCentro`,`emailCentro`,`expedienteCentro`,`loteCentro`,`provCentro`,`localidadCentro`,`personalCentro`,`codPostalCentro`,`cifCentro`,`codigoCentro`,`respCreacionCentro`) VALUES ( '1', 'Colegio 1', 'calle 1', '12', NULL, '1213313', '123123', 'as@as.com', '123321', NULL, 'Provincia 1', 'Localidad1', NULL, NULL, NULL, NULL, NULL );
INSERT INTO `centros`(`idCentro`,`nomCentro`,`calleCentro`,`numDomCentro`,`pisoCentro`,`telfCentro`,`faxCentro`,`emailCentro`,`expedienteCentro`,`loteCentro`,`provCentro`,`localidadCentro`,`personalCentro`,`codPostalCentro`,`cifCentro`,`codigoCentro`,`respCreacionCentro`) VALUES ( '2', 'Bolognesi', 'huhiu', '3443', 'kjb78', NULL, NULL, '', '', '', '', '', '', NULL, '', '', NULL );
INSERT INTO `centros`(`idCentro`,`nomCentro`,`calleCentro`,`numDomCentro`,`pisoCentro`,`telfCentro`,`faxCentro`,`emailCentro`,`expedienteCentro`,`loteCentro`,`provCentro`,`localidadCentro`,`personalCentro`,`codPostalCentro`,`cifCentro`,`codigoCentro`,`respCreacionCentro`) VALUES ( '3', 'Fe y Alegria', 'Cochabamba', '68768', '', NULL, NULL, '', '', '', '', '', '', NULL, '', '', NULL );
-- ---------------------------------------------------------


-- Dump data of "estudiante" -------------------------------
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '1', '9', 'estNom', 'estApell', 'Est2Apell', '1212', '5', '1', '0000-00-00', '', '', '', '', '', '', '', NULL, 'España', '1', NULL, 'es@es.com', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '' );
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '2', '14', 'Eduardo', 'Avaroa', 'Avaroa', '45668465', '0', '0', '0000-00-00', '', '', '', '', '', '', '', NULL, 'Peru', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '' );
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '3', '0', 'Arturo', 'Pen', 'Dragon', '25452345', '5', '2', '0000-00-00', '', '', 'dsafsadf', '', 'sdfsadf', '', 'dsfasf', NULL, 'adfadf', '1', NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL );
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '4', '16', 'aFDSF', 'DFsafsadf', 'sdfsda', 'sdfsd', '0', '2', '0000-00-00', '', '', '', '', '', '', '', NULL, 'dsfsdaf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL );
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '5', '17', 'Antonio', 'Arias', 'Andrade', '789070980', '0', '2', '0000-00-00', '', '', '', '', '', '', '', NULL, 'hkjhkjhkj', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL );
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '6', '18', 'Evo', 'Morales', 'Ayma', '24234', '0', '2', '0000-00-00', '', '', 'sd234', 'dfsd', 'sdfsd', '', 'sdfsdf', NULL, 'fsdfsdf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL );
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '7', '19', 'dsfasdf', 'sadfsdaf', 'dsafsdaf', 'asdfads', '0', '2', '0000-00-00', '', '', '', '', '', '', '', NULL, 'sdfsd', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL );
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '8', '21', 'asdfadsf', 'sdaf', 'sdafsdaf', 'sadf', '0', '2', '0000-00-00', '', '', '', '', 'sdafsdf', '', 'sdfsdaf', NULL, 'sdfsadf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL );
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '9', '22', 'asdfadsf', 'sdaf', 'sdafsdaf', 'sadf', '0', '2', '0000-00-00', '', '', '', '', 'sdafsdf', '', 'sdfsdaf', NULL, 'sdfsadf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL );
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '10', '23', 'asdfadsf', 'sdaf', 'sdafsdaf', 'sadf', '0', '2', '0000-00-00', '', '', '', '', 'sdafsdf', '', 'sdfsdaf', NULL, 'sdfsadf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL );
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '11', '24', 'werwqer', 'werrwe', 'werweqr', 'werweqr', '0', '2', '0000-00-00', '', '', '', '', '', '', '', NULL, 'weqrwer', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL );
INSERT INTO `estudiante`(`idEstudiante`,`idUsuario`,`nomEstudiante`,`apellEstudiante`,`secApellEstudante`,`ciEstudiante`,`idTutor`,`sexEstudiante`,`nacEstudiante`,`cursoEstudiante`,`etapaEstudiante`,`numCasaEstudiante`,`pisoEstudiante`,`provinciaEstudiante`,`LocalidadEst`,`calleEstudiante`,`codPostalEst`,`paisEst`,`idCentroEst`,`telEstudiante`,`emailEstudiante`,`nroCuentaEst`,`dietaEstudiante`,`nutricionEst`,`tel2Estudiante`,`menuEst`,`comidaEst`,`desayunoEst`,`becaEst`,`descuentoEst`,`diasEstudiante`) VALUES ( '12', '26', 'sadfsdaf', 'sadfsdf', 'sadfsdaf', 'asdf', '0', '0', '0000-00-00', '', '', '', '', '', '', '', NULL, 'sdfsdf', NULL, NULL, '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL );
-- ---------------------------------------------------------


-- Dump data of "forum" ------------------------------------
INSERT INTO `forum`(`id`,`parent_id`,`title`,`description`,`listorder`,`is_locked`) VALUES ( '1', NULL, 'Announcements', 'Announcements', '0', '1' );
INSERT INTO `forum`(`id`,`parent_id`,`title`,`description`,`listorder`,`is_locked`) VALUES ( '2', '1', 'New releases', 'Announcements about new releases', '10', '0' );
INSERT INTO `forum`(`id`,`parent_id`,`title`,`description`,`listorder`,`is_locked`) VALUES ( '3', NULL, 'Support', '', '20', '0' );
INSERT INTO `forum`(`id`,`parent_id`,`title`,`description`,`listorder`,`is_locked`) VALUES ( '4', '3', 'Installation and configuration', 'Problems with installation and/or configuration, incompatibility issues, etc.', '10', '0' );
INSERT INTO `forum`(`id`,`parent_id`,`title`,`description`,`listorder`,`is_locked`) VALUES ( '5', '3', 'Bugs', 'Things not working at all, or not as they should', '20', '0' );
INSERT INTO `forum`(`id`,`parent_id`,`title`,`description`,`listorder`,`is_locked`) VALUES ( '6', '3', 'Missing features', 'Fetures you think should be included in a future release', '30', '0' );
-- ---------------------------------------------------------


-- Dump data of "forumuser" --------------------------------
INSERT INTO `forumuser`(`id`,`siteid`,`name`,`signature`,`firstseen`,`lastseen`) VALUES ( '1', 'admin', 'admin', NULL, '0', '0' );
INSERT INTO `forumuser`(`id`,`siteid`,`name`,`signature`,`firstseen`,`lastseen`) VALUES ( '2', 'demo', 'demo', NULL, '0', '0' );
INSERT INTO `forumuser`(`id`,`siteid`,`name`,`signature`,`firstseen`,`lastseen`) VALUES ( '3', '1', 'admin', NULL, '1408942778', '1408942778' );
-- ---------------------------------------------------------


-- Dump data of "menu" -------------------------------------
-- ---------------------------------------------------------


-- Dump data of "pagador" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "post" -------------------------------------
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '1', '1', '1', NULL, 'The first release is a fact!', '0', '0' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '2', '2', '2', NULL, 'This obviously can\'t be right.', '0', '0' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '3', '2', '3', NULL, 'When posting a new thread, the creation date is set to Jan 1, 1970 01:00:00 AM...', '0', '0' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '4', '2', '3', NULL, 'This should be fixed now!', '2012', '2012' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '5', '2', '3', NULL, 'Oops! Let\'s try that again...
This should be fixed now!', '1349540442', '1349540442' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '6', '2', '4', NULL, 'I believe it shows the the last thread instead...', '1349540563', '1349540563' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '7', '2', '4', NULL, 'Fixed!', '1349561144', '1349561144' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '8', '1', '4', NULL, 'Test reply', '1349563344', '1349563344' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '9', '1', '4', NULL, 'Another test reply, locking thread', '1349563360', '1349563360' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '10', '1', '4', NULL, 'Opps. Locking thread for real now', '1349564868', '1349564868' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '11', '1', '3', NULL, 'Thread locked, maybe', '1349564945', '1349632036' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '12', '1', '5', NULL, 'Allow users to define a signature, and add this to posts by them.', '1349570366', '1349570366' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '13', '1', '6', NULL, 'Add BB code support, and some sort of wysiwyg editor', '1349570413', '1349570413' );
INSERT INTO `post`(`id`,`author_id`,`thread_id`,`editor_id`,`content`,`created`,`updated`) VALUES ( '14', '1', '7', NULL, 'Allow attachments to be added to posts

Some *examples* of **markup**

inline use of `code` is possible too!

Let\'s see what a
> blockquote looks like
within a pargraph

    [php showLineNumbers=1]
    echo \'It can highlight code too!\';
', '1349578699', '1349578699' );
-- ---------------------------------------------------------


-- Dump data of "recibos" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "reltutorest" ------------------------------
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '1', '1', '1', '0' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '2', '4', '1', '1' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '3', '4', '1', '1' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '4', '5', '1', '1' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '5', '5', '1', '1' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '6', '1', '1', '0' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '7', '1', '2', '1' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '8', '1', '2', '1' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '9', '1', '2', '1' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '10', '1', '2', '1' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '11', '6', '2', '0' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '12', '6', '2', '0' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '13', '5', '2', '0' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '14', '7', '2', '1' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '15', '7', '2', '1' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '16', '5', '2', '0' );
INSERT INTO `reltutorest`(`idRelTutorEst`,`idTutor`,`idEstudiante`,`principalTutor`) VALUES ( '17', '4', '4', '0' );
-- ---------------------------------------------------------


-- Dump data of "thread" -----------------------------------
INSERT INTO `thread`(`id`,`forum_id`,`subject`,`is_sticky`,`is_locked`,`view_count`,`created`) VALUES ( '1', '2', 'First release', '1', '0', '27', '0' );
INSERT INTO `thread`(`id`,`forum_id`,`subject`,`is_sticky`,`is_locked`,`view_count`,`created`) VALUES ( '2', '5', 'Subject is allowed to be blank when creating a new thread', '0', '0', '4', '0' );
INSERT INTO `thread`(`id`,`forum_id`,`subject`,`is_sticky`,`is_locked`,`view_count`,`created`) VALUES ( '3', '5', 'Post date is not set', '0', '1', '16', '0' );
INSERT INTO `thread`(`id`,`forum_id`,`subject`,`is_sticky`,`is_locked`,`view_count`,`created`) VALUES ( '4', '5', 'Forum view does not show correct last post', '0', '1', '10', '1349540563' );
INSERT INTO `thread`(`id`,`forum_id`,`subject`,`is_sticky`,`is_locked`,`view_count`,`created`) VALUES ( '5', '6', 'User signatures', '0', '0', '1', '1349570366' );
INSERT INTO `thread`(`id`,`forum_id`,`subject`,`is_sticky`,`is_locked`,`view_count`,`created`) VALUES ( '6', '6', 'BB Code', '0', '0', '1', '1349570413' );
INSERT INTO `thread`(`id`,`forum_id`,`subject`,`is_sticky`,`is_locked`,`view_count`,`created`) VALUES ( '7', '5', 'Attachments', '0', '0', '21', '1349578699' );
-- ---------------------------------------------------------


-- Dump data of "tutor" ------------------------------------
INSERT INTO `tutor`(`idTutor`,`idUsuario`,`nomTutor`,`apellTutor`,`apell2Tutor`,`direcTutor`,`dniTutor`,`sexoTutor`,`relAlumTutor`,`principalTutor`,`calleTutor`,`numCasaTutor`,`pisoTutor`,`provinciaTutor`,`localidadTutor`,`codPostalTutor`,`telfTutor`,`telf2Tutor`,`emailTutor`) VALUES ( '1', '0', 'Tutor1', 'Tutor1', 'Tutor1', 'ads asd asd', '12312312', '0', 'Padre', '1', 'calle1', '12', '12', 'sdad', 'adsdas', '3432423', '2147483647', '32423423', 'das@ads.cov' );
INSERT INTO `tutor`(`idTutor`,`idUsuario`,`nomTutor`,`apellTutor`,`apell2Tutor`,`direcTutor`,`dniTutor`,`sexoTutor`,`relAlumTutor`,`principalTutor`,`calleTutor`,`numCasaTutor`,`pisoTutor`,`provinciaTutor`,`localidadTutor`,`codPostalTutor`,`telfTutor`,`telf2Tutor`,`emailTutor`) VALUES ( '4', '0', 'tutor3', 'Tutor3', 'Tutor3', '', '121212', '0', 'qeweqw', '1', 'qew', 'qew', 'qew', 'qew', 'qweeqw', '243342234', '342434', '234234243', 'qw@qw.com' );
INSERT INTO `tutor`(`idTutor`,`idUsuario`,`nomTutor`,`apellTutor`,`apell2Tutor`,`direcTutor`,`dniTutor`,`sexoTutor`,`relAlumTutor`,`principalTutor`,`calleTutor`,`numCasaTutor`,`pisoTutor`,`provinciaTutor`,`localidadTutor`,`codPostalTutor`,`telfTutor`,`telf2Tutor`,`emailTutor`) VALUES ( '5', '6', 'Thomas', 'Pitt', 'Novel', 'Rutland Place', '131313', '0', 'Padre', '1', 'adsfadf', '', '', '', '', '', '0', '0', 'qa@qa.com' );
INSERT INTO `tutor`(`idTutor`,`idUsuario`,`nomTutor`,`apellTutor`,`apell2Tutor`,`direcTutor`,`dniTutor`,`sexoTutor`,`relAlumTutor`,`principalTutor`,`calleTutor`,`numCasaTutor`,`pisoTutor`,`provinciaTutor`,`localidadTutor`,`codPostalTutor`,`telfTutor`,`telf2Tutor`,`emailTutor`) VALUES ( '6', '11', 'Andres', 'Mamani', 'Pacaya', '', '456321684654', '1', 'Padre', '1', 'calle 7', '12', '1', 'Alicante', 'sadasd', '133212', '2342423', '234234234', 'as@as.asd' );
INSERT INTO `tutor`(`idTutor`,`idUsuario`,`nomTutor`,`apellTutor`,`apell2Tutor`,`direcTutor`,`dniTutor`,`sexoTutor`,`relAlumTutor`,`principalTutor`,`calleTutor`,`numCasaTutor`,`pisoTutor`,`provinciaTutor`,`localidadTutor`,`codPostalTutor`,`telfTutor`,`telf2Tutor`,`emailTutor`) VALUES ( '7', '15', 'Pablo', 'Arce', 'Torrico', '', '4654165165', '1', 'Padre', '0', 'hkjhkkjh', '4654', '635465', 'hkhkjhkjh', 'ughiuhuih', '498465', '6546546', '465465', 'sa@asd.as' );
-- ---------------------------------------------------------


-- Dump data of "usuarios" ---------------------------------
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '1', 'Admin', 'Admin', '0', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '5' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '2', 'Admin', 'Admin', '0', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '5' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '4', 'tutor3', 'Tutor3', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '5', 'tutor3', 'Tutor3', 'Tutor3', 'qw@qw.com', '48058e0c99bf7d689ce71c360699a14ce2f99774', '2' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '6', 'Tutor4', 'Tutor4', 'Tutor4', 'qa@qa.com', 'f4ee7415066b23ed0c5555e3a10aa76726a995d7', '2' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '7', 'estNom', 'estApell', 'Est2Apell', 'es@es.com', '618dcdfb0cd9ae4481164961c4796dd8e3930c8d', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '8', 'estNom', 'estApell', 'Est2Apell', 'es@es.com', '618dcdfb0cd9ae4481164961c4796dd8e3930c8d', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '9', 'estNom', 'estApell', 'Est2Apell', 'es@es.com', '618dcdfb0cd9ae4481164961c4796dd8e3930c8d', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '10', 'Andrade', 'Ser', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '2' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '11', 'Andres', 'Mamani', 'Pacaya', 'as@as.asd', 'ae86795d1e1d37d89d33d6634cfc92d7c2da31d4', '2' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '12', 'Eduardo', 'Avaroa', 'Avaroa', '', '0cea63273202adb5347f9882b06fec160a7276e0', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '13', 'Eduardo', 'Avaroa', 'Avaroa', '', '0cea63273202adb5347f9882b06fec160a7276e0', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '14', 'Eduardo', 'Avaroa', 'Avaroa', '', '0cea63273202adb5347f9882b06fec160a7276e0', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '15', 'Pablo', 'Arce', 'Torrico', 'sa@asd.as', '2eba9e6868a487e45c7cdb4ea246087f4e0f8be4', '2' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '16', 'aFDSF', 'DFsafsadf', 'sdfsda', '', '9b1549d8fc9fa1fdf68430e6bf0db5094151c168', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '17', 'Antonio', 'Arias', 'Andrade', '', '8d522a967e40d892be61f185acd165bae34d032a', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '18', 'Evo', 'Morales', 'Ayma', '', 'd8a60875d9e41cc54a5a05d47d67dd0f2e16ffea', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '19', 'dsfasdf', 'sadfsdaf', 'dsafsdaf', '', 'c767e7f200dfe4c78f6297867c7f51c9a75aae6c', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '20', '', '', '', '', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '21', 'asdfadsf', 'sdaf', 'sdafsdaf', '', '19791d9c7d235a1353531b6a9a98098e740f0430', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '22', 'asdfadsf', 'sdaf', 'sdafsdaf', '', '19791d9c7d235a1353531b6a9a98098e740f0430', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '23', 'asdfadsf', 'sdaf', 'sdafsdaf', '', '19791d9c7d235a1353531b6a9a98098e740f0430', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '24', 'werwqer', 'werrwe', 'werweqr', '', 'adb0065771c92b32a7d8cfd2e992e1f04df655d6', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '25', 'sadfsdaf', 'sadfsdf', 'sadfsdaf', '', '3da541559918a808c2402bba5012f6c60b27661c', '1' );
INSERT INTO `usuarios`(`idUsuario`,`nomUsuario`,`apellUsuario`,`apell2Usuario`,`login`,`password`,`nivel`) VALUES ( '26', 'sadfsdaf', 'sadfsdf', 'sadfsdaf', '', '3da541559918a808c2402bba5012f6c60b27661c', '1' );
-- ---------------------------------------------------------


-- CREATE INDEX "FK_asistencias_estudiante" ----------------
CREATE INDEX `FK_asistencias_estudiante` USING BTREE ON `asistencias`( `estudianteAsistencia` );
-- ---------------------------------------------------------


-- CREATE INDEX "FK_calendario_centros" --------------------
CREATE INDEX `FK_calendario_centros` USING BTREE ON `calendario`( `centroCal` );
-- ---------------------------------------------------------


-- CREATE INDEX "FK_estudiante_centros" --------------------
CREATE INDEX `FK_estudiante_centros` USING BTREE ON `estudiante`( `idCentroEst` );
-- ---------------------------------------------------------


-- CREATE INDEX "FK_forum_forum" ---------------------------
CREATE INDEX `FK_forum_forum` USING BTREE ON `forum`( `parent_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "FK_post_author" ---------------------------
CREATE INDEX `FK_post_author` USING BTREE ON `post`( `author_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "FK_post_editor" ---------------------------
CREATE INDEX `FK_post_editor` USING BTREE ON `post`( `editor_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "FK_post_thread" ---------------------------
CREATE INDEX `FK_post_thread` USING BTREE ON `post`( `thread_id` );
-- ---------------------------------------------------------


-- CREATE INDEX "FK_thread_forum" --------------------------
CREATE INDEX `FK_thread_forum` USING BTREE ON `thread`( `forum_id` );
-- ---------------------------------------------------------


-- CREATE LINK "FK_asistencias_estudiante" -----------------
ALTER TABLE `asistencias` DROP FOREIGN KEY `FK_asistencias_estudiante`;


ALTER TABLE `asistencias` ADD CONSTRAINT `FK_asistencias_estudiante` FOREIGN KEY ( `estudianteAsistencia` ) REFERENCES `estudiante`( `idEstudiante` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "FK_calendario_centros" ---------------------
ALTER TABLE `calendario` DROP FOREIGN KEY `FK_calendario_centros`;


ALTER TABLE `calendario` ADD CONSTRAINT `FK_calendario_centros` FOREIGN KEY ( `centroCal` ) REFERENCES `centros`( `idCentro` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "FK_estudiante_centros" ---------------------
ALTER TABLE `estudiante` DROP FOREIGN KEY `FK_estudiante_centros`;


ALTER TABLE `estudiante` ADD CONSTRAINT `FK_estudiante_centros` FOREIGN KEY ( `idCentroEst` ) REFERENCES `centros`( `idCentro` ) ON DELETE Restrict ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "FK_forum_forum" ----------------------------
ALTER TABLE `forum` DROP FOREIGN KEY `FK_forum_forum`;


ALTER TABLE `forum` ADD CONSTRAINT `FK_forum_forum` FOREIGN KEY ( `parent_id` ) REFERENCES `forum`( `id` ) ON DELETE Cascade ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "FK_post_author" ----------------------------
ALTER TABLE `post` DROP FOREIGN KEY `FK_post_author`;


ALTER TABLE `post` ADD CONSTRAINT `FK_post_author` FOREIGN KEY ( `author_id` ) REFERENCES `forumuser`( `id` ) ON DELETE Cascade ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "FK_post_editor" ----------------------------
ALTER TABLE `post` DROP FOREIGN KEY `FK_post_editor`;


ALTER TABLE `post` ADD CONSTRAINT `FK_post_editor` FOREIGN KEY ( `editor_id` ) REFERENCES `forumuser`( `id` ) ON DELETE Cascade ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "FK_post_thread" ----------------------------
ALTER TABLE `post` DROP FOREIGN KEY `FK_post_thread`;


ALTER TABLE `post` ADD CONSTRAINT `FK_post_thread` FOREIGN KEY ( `thread_id` ) REFERENCES `thread`( `id` ) ON DELETE Cascade ON UPDATE Restrict;
-- ---------------------------------------------------------


-- CREATE LINK "FK_thread_forum" ---------------------------
ALTER TABLE `thread` DROP FOREIGN KEY `FK_thread_forum`;


ALTER TABLE `thread` ADD CONSTRAINT `FK_thread_forum` FOREIGN KEY ( `forum_id` ) REFERENCES `forum`( `id` ) ON DELETE Cascade ON UPDATE Restrict;
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


