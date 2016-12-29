-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: transporte
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `calle`
--

DROP TABLE IF EXISTS `calle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calle` (
  `id_calle` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_calle` char(25) DEFAULT NULL,
  PRIMARY KEY (`id_calle`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calle`
--

LOCK TABLES `calle` WRITE;
/*!40000 ALTER TABLE `calle` DISABLE KEYS */;
INSERT INTO `calle` VALUES (1,'Ramon Picarte'),(2,'Pedro Aguirre Cerda'),(3,'Sedeño'),(4,'Pje.Uno'),(5,'Iquique'),(6,'Calama'),(7,'Pje.Dos'),(8,'Bombero Hernandez'),(9,'Bombero R Eckahardt'),(10,'Av.Alemania'),(11,'Carampangue'),(12,'Carampangue2'),(13,'Lord Cochrane'),(14,'Goycolea'),(15,'Coronel Santiago Bueras'),(16,'Antofagasta'),(17,'Volcan Puyehue'),(18,'Volcan Villarrica'),(19,'Principe Felipe'),(20,'Don Juan Carlos'),(21,'Errazuriz'),(22,'Los Corregidores'),(23,'Ignacio de la Carrera'),(24,'Donald Canter'),(25,'Alfonso Villanueva'),(26,'Balmaceda'),(27,'Circunvalacion'),(28,'Uruguay'),(29,'Colombia'),(30,'Los Girasoles'),(31,'Bolivia'),(32,'Las Camelias'),(33,'Viña del Mar'),(34,'Patricio Lynch'),(35,'Simpson'),(36,'Garcia Reyes'),(37,'Chacabuco'),(38,'Independencia'),(39,'Maipu'),(40,'Yungay'),(41,'General Lagos'),(42,'Bilbao'),(43,'Arica'),(44,'Angachilla'),(45,'Guacamayo'),(46,'Luis Damann Asenjo'),(47,'Ing. Federico Wiese'),(48,'Ing Raúl Sáez Sáez'),(49,'Rio Cau Cau'),(50,'Ruben Dario'),(51,'Circunvalacion Sur'),(52,'Martinez de Rozas'),(53,'Rene Shneider'),(54,'Alcande Manuel Lorca'),(55,'Regidor Roberto Fernandez'),(56,'Av. Pedro Montt'),(57,'Arturo Godoy'),(58,'Pje.1-f'),(59,'Oscar Cristi Gallo'),(60,' Gral. Montecino'),(61,'Francia'),(62,'Italia'),(63,'Haverbeck'),(64,'Los Robles'),(65,'Los Laureles'),(66,'Jasmines'),(67,'Argentina'),(68,'Holzapfel'),(69,'Calafquen'),(70,'Jose Victorino Lastarrias'),(71,'C Barrientos'),(72,'Anibal Pinto'),(73,'Perez Rosales'),(74,'Arauco'),(75,'Alcalde Jorge Bustos'),(76,'Alberto Blest Gana'),(77,'Volcan Tolhuaca'),(78,'Volcan Puntiagudo'),(79,'Alcalde Jose Maria'),(80,'Alcalde Ricardo Barahona'),(81,'Beauchef'),(82,'t-352'),(83,'t-350'),(84,'Los Lingues'),(85,'Esmeralda'),(86,'Caupolican'),(87,'Pje. Doce'),(88,'Pedro Montoya'),(89,'Gral Mackena'),(90,'Pablo Neruda'),(91,'Gabriela Mistral'),(92,'Baquedano');
/*!40000 ALTER TABLE `calle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colectivo`
--

DROP TABLE IF EXISTS `colectivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colectivo` (
  `patente_col` char(10) NOT NULL,
  `año_colectivo` int(10) DEFAULT NULL,
  `capacidad` int(10) DEFAULT NULL,
  `rut_persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`patente_col`),
  KEY `rut_persona` (`rut_persona`),
  CONSTRAINT `colectivo_ibfk_1` FOREIGN KEY (`rut_persona`) REFERENCES `persona` (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colectivo`
--

LOCK TABLES `colectivo` WRITE;
/*!40000 ALTER TABLE `colectivo` DISABLE KEYS */;
INSERT INTO `colectivo` VALUES ('cv-20-10',2010,4,185413337),('pp-11-22',2012,4,155554444),('sx-13-13',2017,4,177891332),('tb-22-55',1990,4,202014321),('tb-44-00',1999,4,184772222),('zz-19-95',2001,4,166544782);
/*!40000 ALTER TABLE `colectivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linea_col`
--

DROP TABLE IF EXISTS `linea_col`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linea_col` (
  `id_linea` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_linea` char(25) DEFAULT NULL,
  `color_linea` char(25) DEFAULT NULL,
  `pasaje_estudiante` int(10) DEFAULT NULL,
  `pasaje_adulto` int(10) DEFAULT NULL,
  `horario_inicio` char(20) DEFAULT NULL,
  `horario_fin` char(20) DEFAULT NULL,
  PRIMARY KEY (`id_linea`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linea_col`
--

LOCK TABLES `linea_col` WRITE;
/*!40000 ALTER TABLE `linea_col` DISABLE KEYS */;
INSERT INTO `linea_col` VALUES (115,'Linea 115','Naranjo',500,500,'06:00','03:00'),(145,'Linea 145','Azul',500,500,'06:00','03:00'),(150,'Linea 150','Verde',500,500,'06:00','03:00');
/*!40000 ALTER TABLE `linea_col` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linea_micro`
--

DROP TABLE IF EXISTS `linea_micro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linea_micro` (
  `id_linea` int(11) NOT NULL,
  `nombre_micro` char(25) DEFAULT NULL,
  `color_micro` char(25) DEFAULT NULL,
  `pasaje_estudiante` int(10) DEFAULT NULL,
  `horario_fin` char(20) DEFAULT NULL,
  `horario_inicio` char(20) DEFAULT NULL,
  `pasaje_adulto` int(20) DEFAULT NULL,
  PRIMARY KEY (`id_linea`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linea_micro`
--

LOCK TABLES `linea_micro` WRITE;
/*!40000 ALTER TABLE `linea_micro` DISABLE KEYS */;
INSERT INTO `linea_micro` VALUES (1,'Linea1','rojo',150,'20:30','06:30',450),(2,'linea2','verde',150,'20:30','06:30',450),(3,'linea3','Amarillo',150,'20:30','06:30',450),(4,'linea4','Naranjo',150,'20:00','06:30',450),(5,'linea5','Verde/Blanco',150,'20:00','06:30',450),(9,'linea9','Azul/Blanco',150,'21:00','06:00',450),(11,'linea11','Rojo/Blanco',150,'22:00','06:00',450),(20,'linea20','Naranjo/Amarillo',150,'20:30','06.00',450);
/*!40000 ALTER TABLE `linea_micro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `microbus`
--

DROP TABLE IF EXISTS `microbus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `microbus` (
  `patente_microbus` char(25) NOT NULL,
  `año_microbus` int(10) DEFAULT NULL,
  `capacidad` int(10) DEFAULT NULL,
  `rut_persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`patente_microbus`),
  KEY `rut_persona` (`rut_persona`),
  CONSTRAINT `microbus_ibfk_1` FOREIGN KEY (`rut_persona`) REFERENCES `persona` (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `microbus`
--

LOCK TABLES `microbus` WRITE;
/*!40000 ALTER TABLE `microbus` DISABLE KEYS */;
INSERT INTO `microbus` VALUES ('as-32-45',1993,24,184598159),('cv-12-34',1999,26,189876557),('fq-79-10',2002,28,129435711),('hi-65-89',1994,23,155554442),('jj-44-55',2001,30,86579432),('ky-66-04',2004,27,181122778),('lx-43-67',1994,19,96554139),('ol-07-38',2008,28,139134121),('rx-22-22',1990,4,176936101),('st-91-29',2005,25,118771117),('tc-22-22',2000,20,196936103),('tx-44-44',1999,27,97228213),('ty-99-01',1995,23,176326100),('ww-85-31',2003,28,181741744),('xx-22-22',2002,21,165665665),('zz-01-02',2007,26,147133418);
/*!40000 ALTER TABLE `microbus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasa_por`
--

DROP TABLE IF EXISTS `pasa_por`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasa_por` (
  `inicio` char(25) DEFAULT NULL,
  `fin` char(25) DEFAULT NULL,
  `id_recorrido` int(11) DEFAULT NULL,
  `id_calle` int(11) DEFAULT NULL,
  KEY `id_recorrido` (`id_recorrido`),
  KEY `id_calle` (`id_calle`),
  CONSTRAINT `pasa_por_ibfk_1` FOREIGN KEY (`id_recorrido`) REFERENCES `recorrido` (`id_recorrido`),
  CONSTRAINT `pasa_por_ibfk_2` FOREIGN KEY (`id_calle`) REFERENCES `calle` (`id_calle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasa_por`
--

LOCK TABLES `pasa_por` WRITE;
/*!40000 ALTER TABLE `pasa_por` DISABLE KEYS */;
INSERT INTO `pasa_por` VALUES ('Balmaceda','Circunvalacion',1,26),('Circunvalacion','Uruguay',1,27),('Uruguay','Colombia',1,28),('Colombia','Los Girasoles',1,29),('Los Girasoles','Bolivia',1,30),('Bolivia','Las Camelias',1,31),('Las Camelias','Viña del Mar',1,32),('Viña del Mar','Patricio Lynch',1,33),('Patricio Lynch','Simpson',1,34),('Simpson','Ramon Picarte',1,35),('Ramon Picarte','Garcia Reyes',1,1),('Garcia Reyes','Chacabuco',1,36),('Chacabuco','Independecia',1,37),('Independencia','Maipu',1,38),('Maipu','Yungay',1,39),('Yungay','General Lagos',1,40),('General Lagos','Bilbao',1,41),('Bilbao','Arica',1,42),('Arica','Angachilla',1,43),('Angachilla','Guacamayo',1,44),('Guacamayo','Luis Damann Asenjo',1,45),('Luis Damann Asenjo','Ing Federico Wiese',1,46),('Ing Federico Wiese','Ing Raul Saez Saez',1,47),('Ing Raul Saez Saez','*',1,48),('Pedro Aguirre Cerda','Sedeño',2,2),('Sedeño','Pje.Uno',2,3),('Pje.Uno','Antofagasta',2,4),('Antofagasta','Iquique',2,16),('Iquique','Calama',2,5),('Calama','Pje.Dos',2,6),('Pje.Dos','Bombero Hernandez',2,7),('Bombero Hernandez','Bombero Reckhardt',2,8),('Bombero Reckhardt','Pedro Aguirre Cerda',2,9),('Pedro Aguirre Cerda','Ramon Picarte',2,2),('Ramon Picarte','Av. Alemania',2,1),('Av. Alemania','Carampangue',2,10),('Carampangue','Carampangue2',2,11),('Carampangue2','Chacabuco',2,12),('Chacabuco','Independencia',2,37),('Independencia','Maipu',2,38),('Maipu','Yungay',2,39),('Yungay','General Lagos',2,40),('General Lagos','Lord Cochrane',2,41),('Lord Cochrane','Goycolea',2,13),('Goycolea','Coronel Santiago Bueras',2,14),('Coronel Santiago Bueras','General Lagos',2,15),('General Lagos','Bilbao',2,41),('Bilbao','Arica',2,42),('Arica','*Arica/Miraflores*',2,43),('Ramon Picarte','Circunvalacion Sur',3,1),('Circunvalacion Sur','Volcan Puyehue',3,27),('Volcan Puyehue','Volcan Villarrica',3,17),('Volcan Villarrica','Principe Felipe',3,18),('Principe Felipe','Don Juan Carlos',3,19),('Don Juan Carlos','Errazuriz',3,20),('Errazuriz','Los corregidores',3,21),('Los corregidores','Ramon Picarte',3,22),('Ramon Picarte','Ignacio de la Carrera',3,1),('Ignacio de la Carrera','Donald Canter',3,23),('Donald Canter','Alfonso Villanueva',3,24),('Alfonso Villanueva','Rio Cau Cau',3,25),('Rio Cau Cau','Ruben Dario',3,49),('Ruben Dario','Ramon Picarte',3,50),('Ramon Picarte','Av. Alemania',3,1),('Av. Alemania','Carampangue',3,10),('Carampangue','Carampangue2',3,11),('Carampangue2','Chacabuco',3,12),('Chacabuco','Independencia',3,37),('Independencia','Maipu',3,38),('Maipu','Yungay',3,39),('Yungay','General Lagos',3,40),('General Lagos','Bilbao',3,41),('Bilbao','Arica',3,42),('Arica','Angachilla',3,43),('Angachilla','Guacamayo',3,44),('Guacamayo','Luis Damann Asenjo',3,45),('Luis Damann Asenjo','Federico Wiese',3,46),('Federico Wiese','Ing Raúl Saez Saez',3,47),('Ing Raúl Saez Saez','*',3,48),('Picarte','Ignacio de la Carrera',4,1),('Ignacio de la Carrera','Donald Canter',4,23),('Donald Canter','Alfonso Villanueva',4,24),('Alfonso Villanueva','Martinez de Rozas',4,25),('Martinez de Rozas','Ruben Dario',4,52),('Ruben Dario','Rene Shneider',4,50),('Rene Shneider','Luis Damann Asenjo',4,53),('Luis Damann Asenjo','Alcalde Manuel Lorca',4,46),('Alcalde Manuel Lorca','Regidor Roberto Fernandez',4,54),('Regidor Roberto Fernandez','Av. Pedro Montt',4,55),('Av. Pedro Montt','Circunvalacion Sur',4,56),('Circunvalacion Sur','Arturo Godoy',4,51),('Arturo Godoy','Pje.1-f',4,57),('Pje.1-f','Oscar Cristi Gallo',4,58),('Oscar Cristi Gallo','Gral. Montecino',4,59),('Gral. Montecino','Francia',4,60),('Francia','Italia',4,61),('Italia','Simpson',4,62),('Simpson','Haverbeck',4,35),('Haverbeck','Coronol Santiago Bueras',4,63),('Coronel Santiago Bueras','Ramon Picarte',4,15),('Ramon Picarte','Av. Alemania',4,1),('Av. Alemania','Carampangue',4,10),('Carampangue','Los Robles',4,11),('Los Robles','Los Laureles',4,64),('Los Laureles','*',4,65),('Balmaceda','Circunvalacion',5,26),('Circunvalacion','Uruguay',5,27),('Uruguay','Colombia',5,28),('Colombia','Jasmines',5,29),('Jasmines','Las Camelias',5,66),('Las Camelias','Argentina',5,32),('Argentina','Holzapfel',5,67),('Holzapfel','Calafquen',5,68),('Calafquen','Jose Victorino Lastarrias',5,69),('Jose Victorino Lastarrias','Martinez de Rozas',5,70),('Martinez de Rozas','Ruben Dario',5,52),('Ruben Dario','Rene Shneider',5,50),('Rene Shneider','Francia',5,53),('Francia','Gral. Montecino',5,61),('Gral. Montecino','Oscar Cristi Gallo',5,60),('Oscar Cristi Gallo','C Barrientos',5,59),('C Barrientos','Arturo Godoy',5,71),('Arturo Godoy','Circunvalacion Sur',5,57),('Circunvalacion Sur','Av. Pedro Montt',5,51),('Av. Pedro Montt','Francia',5,56),('Francia','Italia',5,61),('Italia','Simpson',5,62),('Simpson','Haverbeck',5,35),('Haverbeck','Anibal Pinto',5,63),('Anibal Pinto','Lord Cochrane',5,72),('Lord Cochrane','Perez Rosales',5,13),('Perez Rosales','Arauco',5,73),('Arauco','Garcia Reyes',5,74),('Garcia Reyes','Carampangue',5,36),('Carampangue','Av. Alemania',5,11),('Av. Alemania','Los Robles',5,10),('Los Robles','Los Laureles',5,64),('Los Laureles','*',5,65),('Angachilla','Ing Raul Saez Saez',9,44),('Ing Raul Saez Saez','Ing. Federico Wiese',9,48),('Ing. Federico Wiese','Luis Damann Asenjo',9,47),('Luis Damann Asenjo','Alcalde Jorge Bustos',9,46),('Alcalde Jorge Bustos','Rene Shneider',9,75),('Rene Shneider','Circunvalacion Sur',9,53),('Circunvalacion Sur','Alberto Blest Gana',9,51),('Alberto Blest Gana','Volcan Tolhuaca',9,76),('Volcan Tolhuaca','Volcan Puntiagudo',9,77),('Volcan Puntiagudo','Principe Felipe',9,78),('Principe Felipe','Don Juan Carlos',9,19),('Don Juan Carlos','Errazuriz',9,20),('Errazuriz','Los Correguidores',9,21),('Los Corregidores','Ramon Picarte',9,22),('Ramon Picarte','Ignacio de la Carrera',9,1),('Ignacio de la Carrera','Martinez de Rozas',9,23),('Martinez de Rozas','Jose Victorino Lastarrias',9,52),('Jose Victorino Lastarrias','Calafquen',9,70),('Calafquen','Holzapfel',9,69),('Holzapfel','Argentina',9,68),('Argentina','Patricio Lynch',9,67),('Patricio Lynch','Ramon Picarte',9,34),('Ramon Picarte','Av. Alemania',9,1),('Av. Alemania','Garcia Reyes',9,10),('Garcia Reyes','Chacabuco',9,36),('Chacabuco','Carampangue2',9,37),('Carampangue2','Carampangue',9,12),('Carampangue','Av. Alemania',9,11),('Av. Alemania','Los Robles',9,10),('Los Robles','Los Laureles',9,64),('Los Laureles','Los Robles',9,65),('Los Robles','*',9,64),(NULL,NULL,NULL,NULL),('Luis Damann Asenjo','Alcande Jose Maria',11,46),('Alcande Jose Maria','Alcalde Ricardo Barahona',11,79),('Alcalde Ricardo Barahona','Av. Pedro Montt',11,80),('Av. Pedro Montt','Regidor Roberto Fernandez',11,56),('Regidor Roberto Fernandez','Alcalde Manuel Lorca',11,55),('Alcalde Manuel Lorca','Luis Damann Asenjo',11,54),('Luis Damann Asenjo','Alcalde Jorge Bustos',11,46),('Alcalde Jorge Bustos','Rene Schneider',11,75),('Rene Schneider','Ruben Dario',11,53),('Ruben Dario','Ramon Picarte',11,50),('Ramon Picarte','Garcia Reyes',11,1),('Garcia Reyes','Chacabuco',11,36),('Chacabuco','Independencia',11,37),('Independencia','Arauco',11,38),('Arauco','Beauchef',11,74),('Beauchef','*',11,81),('t-352','t-350',20,82),('t-350','Los Lingues',20,83),('Los Lingues','Los Robles',20,84),('Los Robles','Yungay',20,64),('Yungay','Independencia',20,40),('Independencia','Arauco',20,38),('Arauco','Beauchef',20,74),('Beauchef','Ramon Picarte',20,81),('Ramon Picarte','Francia',20,1),('Francia','Gral. Montecino',20,61),('Gral. Montecino','Oscar Cristi Gallo',20,60),('Oscar Cristi Gallo','C Barrientos',20,59),('C Barrientos','Arturo Godoy',20,71),('Arturo Godoy','Circunvalacion Sur',20,57),('Circunvalacion Sur','Av. Pedro Montt',20,51),('Av. Pedro Mont','Luis Damann Asenjo',20,56),('Luis Damann Asenjo','Angachilla',20,46),('Angachilla','Ing Raul Saez Saez',20,44),('Ing Raul Saez Saez','Ing. Federico Wiese',20,48),('Ing. Federico Wiese','Luis Damann Asenjo',20,47),('Luis Damann Asenjo','Av. Pedro Montt',20,46),('Av. Pedro Montt','Circunvalacion Sur',20,56),('Circunvalacion Sur','Simpson',20,51),('Simpson','Haverbeck',20,35),('Haverceck','Anibal Pinto',20,63),('Anibal Pinto','Beauchef',20,72),('Beauchef','Esmeralda',20,81),('Esmeralda','Caupolican',20,85),('Caupolican','Arauco',20,86),('Arauco','Garcia Reyes',20,74),('Garcia Reyes','Chacabuco',20,36),('Chacabuco','Carampangue2',20,37),('Carampangue2','Carampangue',20,12),('Carampangue','Los Robles',20,11),('Los Robles','Los Laureles',20,64),('Los Laureles','*',20,65),('Pje. Doce','Jose Victorino Lastarria',145,87),('Jose Victorino Lastarria','Donald Canter',145,70),('Donald Canter','Pedro Montoya',145,24),('Pedro Montoya','Ramon Picarte',145,88),('Ramon Picarte','Garcia Reyes',145,1),('Garcia Reyes','Chacabuco',145,36),('Chacabuco','Independencia',145,37),('Independencia','Arauco',145,38),('Arauco','Beauchef',145,74),('Beauchef','Ramon Picarte',145,81),('Ramon Picarte','Simpson',145,35),('Simpson','Patricio Lynch',145,35),('Patricio Lynch','Argentina',145,34),('Argentina','Holzapfel',145,67),('Holfapfel','Gral Mackena',145,68),('Gral Mackena','*',145,89),('Pablo Neruda','Gabriela Mistral',150,90),('Gabriela Mistral','Rene Schneider',150,91),('Rene Schneider','Ruben Dario',150,53),('Ruben Dario','Rio Cau Cau',150,50),('Rio Cau Cau','Alfonso Villanueva',150,49),('Alfonso Villanueva','Martinez de Rozas',150,25),('Martinez de Rozas','Jose Victorino Lastarrias',150,52),('Jose Victorino Lastarrias','Donald Canter',150,70),('Donald Canter','Argentina',150,24),('Argentina','Patricio Lynch',150,67),('Patricio Lynch','Simpson',150,34),('Simpson','Ramon Picarte',150,35),('Ramon Picarte','Garcia Reyes',150,1),('Garcia Reyes','Chacabuco',150,36),('Chacabuco','Independencia',150,37),('Independencia','Maipu',150,38),('Maipu','Yungay',150,39),('Yungay','General Lagos',150,40),('General Lagos','Baquedano',150,41),('Baquedano','Av. Pedro Montt',150,92),('Av. Pedro Montt','Alcalde Jorge Bustos',150,56),('Alcalde Jorge Bustos','Rene Schneider',150,75),('Rene Schneider','Pje.Uno',150,53),('Pje.Uno','*',150,4),('Pablo Neruda','Gabriela Mistral',115,90),('Gabriela Mistral','Rene Schneider',115,91),('Rene Schneider','Ruben Dario',115,53),('Ruben Dario','Rio Cau Cau',115,50),('Rio Cau Cau','Alfonso Villanueva',115,49),('Alfonso Villanueva','Martinez de Rozas',115,25),('Martinez de Rozas','Jose Victorino Lastarrias',115,52),('Jose Victorino Lastarrias','Donald Canter',115,70),('Donald Canter','Argentina',115,24),('Argentina','Patricio Lynch',115,67),('Patricio Lynch','Simpson',115,34),('Simpson','Ramon Picarte',115,35),('Ramon Picarte','Garcia Reyes',115,1),('Garcia Reyes','Chacabuco',115,36),('Chacabuco','Independencia',115,37),('Independencia','Maipu',115,38),('Maipu','Yungay',115,39),('Yungay','General Lagos',115,40),('General Lagos','Baquedano',115,41),('Baquedano','Av. Pedro Montt',115,92),('Av. Pedro Montt','Alcalde Jorge Bustos',115,56),('Alcalde Jorge Bustos','Rene Schneider',115,75),('Rene Schneider','Pje.Uno',115,53),('Pje.Uno','*',115,4);
/*!40000 ALTER TABLE `pasa_por` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persona` (
  `rut` int(11) NOT NULL,
  `nombre` char(25) DEFAULT NULL,
  `apellido` char(25) DEFAULT NULL,
  PRIMARY KEY (`rut`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (86579432,'Eugenio','Romero'),(96554139,'Maurio','Romero'),(97228213,'Victor','Reyes'),(118771117,'Leon','De la Maza'),(129435711,'Fabian','Romero'),(139134121,'Felipe','Camiroaga'),(144598159,'fernandito','thel flow'),(147133418,'Camilo','Hernandez'),(155554442,'Graciela','Guerrero'),(155554444,'Francisco','Almonacid'),(165665665,'Horacio','Ramirez'),(166544782,'Vanesa','Correa'),(167936108,'penelope','del *'),(176326100,'Camila','Reyes'),(176936101,'JORGE','OBANDO'),(177891332,'Jaime','Bueras'),(181122778,'Lucas','Garcia'),(181741744,'Cristian','Contreras'),(184598159,'fernando','andres'),(184772222,'Yoselyn','Barrales'),(185413337,'Felipe','Osses'),(189876557,'Elard','Ramirez'),(196936103,'pancracia','george'),(202014321,'Gabriela','Hidalgo');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pertenece_col_linea`
--

DROP TABLE IF EXISTS `pertenece_col_linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pertenece_col_linea` (
  `id_linea` int(11) NOT NULL,
  `patente_col` char(25) NOT NULL,
  PRIMARY KEY (`id_linea`,`patente_col`),
  KEY `patente_col` (`patente_col`),
  CONSTRAINT `pertenece_col_linea_ibfk_1` FOREIGN KEY (`id_linea`) REFERENCES `linea_col` (`id_linea`),
  CONSTRAINT `pertenece_col_linea_ibfk_2` FOREIGN KEY (`patente_col`) REFERENCES `colectivo` (`patente_col`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertenece_col_linea`
--

LOCK TABLES `pertenece_col_linea` WRITE;
/*!40000 ALTER TABLE `pertenece_col_linea` DISABLE KEYS */;
INSERT INTO `pertenece_col_linea` VALUES (145,'cv-20-10'),(115,'pp-11-22'),(145,'sx-13-13'),(150,'tb-22-55'),(150,'tb-44-00'),(115,'zz-19-95');
/*!40000 ALTER TABLE `pertenece_col_linea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pertenece_micro_linea`
--

DROP TABLE IF EXISTS `pertenece_micro_linea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pertenece_micro_linea` (
  `id_linea` int(11) NOT NULL,
  `patente_microbus` char(25) NOT NULL,
  PRIMARY KEY (`id_linea`,`patente_microbus`),
  KEY `patente_microbus` (`patente_microbus`),
  CONSTRAINT `pertenece_micro_linea_ibfk_1` FOREIGN KEY (`id_linea`) REFERENCES `linea_micro` (`id_linea`),
  CONSTRAINT `pertenece_micro_linea_ibfk_2` FOREIGN KEY (`patente_microbus`) REFERENCES `microbus` (`patente_microbus`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertenece_micro_linea`
--

LOCK TABLES `pertenece_micro_linea` WRITE;
/*!40000 ALTER TABLE `pertenece_micro_linea` DISABLE KEYS */;
INSERT INTO `pertenece_micro_linea` VALUES (1,'as-32-45'),(5,'cv-12-34'),(20,'fq-79-10'),(5,'hi-65-89'),(4,'jj-44-55'),(11,'ky-66-04'),(4,'lx-43-67'),(9,'ol-07-38'),(1,'rx-22-22'),(11,'st-91-29'),(2,'tc-22-22'),(2,'tx-44-44'),(3,'ty-99-01'),(20,'ww-85-31'),(3,'xx-22-22'),(9,'zz-01-02');
/*!40000 ALTER TABLE `pertenece_micro_linea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recorrido`
--

DROP TABLE IF EXISTS `recorrido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recorrido` (
  `id_recorrido` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_recorrido` char(25) DEFAULT NULL,
  PRIMARY KEY (`id_recorrido`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recorrido`
--

LOCK TABLES `recorrido` WRITE;
/*!40000 ALTER TABLE `recorrido` DISABLE KEYS */;
INSERT INTO `recorrido` VALUES (1,'balmaceda/raul saez saez'),(2,'Pedro Aguirre Cerda/Arica'),(3,'Ramon Picarte/Raul Saez'),(4,'Picarte/Los Laureles'),(5,'Balmaceda/Los Laureles'),(9,'Angachilla/Los Robles'),(11,'Luis Damann/Beuchef'),(20,'Los Laureles/t-352'),(115,'Rene Schneider/Arauco'),(145,'Pje. 12/Caupolican'),(150,'Independ/Pablo Neruda');
/*!40000 ALTER TABLE `recorrido` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-19 19:36:43
