-- MySQL dump 10.13  Distrib 5.7.24, for osx11.1 (x86_64)
--
-- Host: localhost    Database: upbPF
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `calificacion`
--

DROP TABLE IF EXISTS `calificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calificacion` (
  `curso_id` int NOT NULL,
  `estudiante_id` int NOT NULL,
  `nota` int DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`curso_id`,`estudiante_id`),
  KEY `estudiante_id` (`estudiante_id`),
  CONSTRAINT `calificacion_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`),
  CONSTRAINT `calificacion_ibfk_2` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificacion`
--

LOCK TABLES `calificacion` WRITE;
/*!40000 ALTER TABLE `calificacion` DISABLE KEYS */;
INSERT INTO `calificacion` VALUES (1,23,85,'2024-06-26',NULL),(1,243,97,'2024-06-26',NULL),(2,45,92,'2024-06-26',NULL),(2,265,68,'2024-06-26',NULL),(3,67,74,'2024-06-26',NULL),(3,287,79,'2024-06-26',NULL),(4,89,81,'2024-06-26',NULL),(4,309,87,'2024-06-26',NULL),(5,111,78,'2024-06-26',NULL),(5,331,64,'2024-06-26',NULL),(6,133,95,'2024-06-26',NULL),(6,353,99,'2024-06-26',NULL),(7,155,83,'2024-06-26',NULL),(7,375,72,'2024-06-26',NULL),(8,177,88,'2024-06-26',NULL),(8,397,86,'2024-06-26',NULL),(9,199,91,'2024-06-26',NULL),(9,419,80,'2024-06-26',NULL),(10,221,76,'2024-06-26',NULL),(10,441,77,'2024-06-26',NULL);
/*!40000 ALTER TABLE `calificacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `calificacionUpdatedAt` BEFORE UPDATE ON `calificacion` FOR EACH ROW begin
	SET NEW.updatedAt = NOW();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrera` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `jefeCarrera` int DEFAULT NULL,
  `sucursal` int DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jefeCarrera` (`jefeCarrera`),
  KEY `sucursal` (`sucursal`),
  CONSTRAINT `carrera_ibfk_1` FOREIGN KEY (`jefeCarrera`) REFERENCES `profesor` (`id`),
  CONSTRAINT `carrera_ibfk_2` FOREIGN KEY (`sucursal`) REFERENCES `sucursales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (1,'Ingenieria en Sistemas computacionales',405,1,'2024-06-25',NULL),(2,'Ingeniería Electrónica',406,1,'2024-01-01',NULL),(3,'Ingeniería Química',407,3,'2024-01-01',NULL),(4,'Ingeniería Biomédica',408,1,'2024-01-01',NULL),(5,'Ingeniería Civil',409,2,'2024-01-01',NULL),(6,'Ingeniería Ambiental',410,3,'2024-01-01',NULL),(7,'Ingeniería Industrial',411,1,'2024-01-01',NULL),(8,'Ingeniería Mecánica',412,2,'2024-01-01',NULL),(9,'Ingeniería en Software',413,3,'2024-01-01',NULL),(10,'Ingeniería en Telecomunicaciones',414,1,'2024-01-01',NULL),(11,'Ingeniería Ambiental',415,3,'2024-01-01',NULL),(12,'Ingeniería Electrónica',416,2,'2024-01-01',NULL),(13,'Ingeniería Química',417,1,'2024-01-01',NULL),(14,'Ingeniería Biomédica',418,3,'2024-01-01',NULL),(15,'Ingeniería Civil',419,1,'2024-01-01',NULL),(16,'Ingeniería en Sistemas Computacionales',420,2,'2024-01-01',NULL),(17,'Ingeniería Industrial',421,3,'2024-01-01',NULL),(18,'Ingeniería Mecánica',422,1,'2024-01-01',NULL),(19,'Ingeniería en Software',423,2,'2024-01-01',NULL),(20,'Ingeniería en Telecomunicaciones',424,3,'2024-01-01',NULL),(21,'Ingeniería Ambiental',425,1,'2024-01-01',NULL),(22,'Ingeniería Electrónica',426,3,'2024-01-01',NULL),(23,'Ingeniería Química',427,2,'2024-01-01',NULL),(24,'Ingeniería Biomédica',428,1,'2024-01-01',NULL),(25,'Ingeniería Civil',429,3,'2024-01-01',NULL),(26,'Ingeniería en Sistemas Computacionales',430,2,'2024-01-01',NULL),(27,'Ingeniería Industrial',431,1,'2024-01-01',NULL),(28,'Ingeniería Mecánica',432,3,'2024-01-01',NULL),(29,'Ingeniería en Software',433,2,'2024-01-01',NULL),(30,'Ingeniería en Telecomunicaciones',434,1,'2024-01-01',NULL);
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `carreraUpdatedAt` BEFORE UPDATE ON `carrera` FOR EACH ROW begin
	SET NEW.updatedAt = NOW();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `materia` int DEFAULT NULL,
  `profesor_id` int DEFAULT NULL,
  `FechaInicio` date DEFAULT NULL,
  `FechaFin` date DEFAULT NULL,
  `sucursal_id` int DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `materia` (`materia`),
  KEY `profesor_id` (`profesor_id`),
  KEY `sucursal_id` (`sucursal_id`),
  CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`materia`) REFERENCES `materia` (`id`),
  CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`),
  CONSTRAINT `curso_ibfk_3` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursales` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,1,501,'2024-02-01','2024-03-15',1,'2024-06-26',NULL),(2,15,401,'2024-02-02','2024-03-05',1,'2024-06-26',NULL),(3,8,402,'2024-02-12','2024-03-25',2,'2024-06-26',NULL),(4,45,403,'2024-02-18','2024-03-27',3,'2024-06-26',NULL),(5,29,404,'2024-03-01','2024-04-10',1,'2024-06-26',NULL),(6,33,405,'2024-03-07','2024-04-18',2,'2024-06-26',NULL),(7,47,406,'2024-03-09','2024-04-21',3,'2024-06-26',NULL),(8,22,407,'2024-03-15','2024-04-24',1,'2024-06-26',NULL),(9,17,408,'2024-03-21','2024-04-30',2,'2024-06-26',NULL),(10,26,409,'2024-03-28','2024-05-07',3,'2024-06-26',NULL),(11,31,410,'2024-04-01','2024-05-09',1,'2024-06-26',NULL),(12,9,411,'2024-04-10','2024-05-16',2,'2024-06-26',NULL),(13,5,412,'2024-04-13','2024-05-23',3,'2024-06-26',NULL),(14,19,413,'2024-04-17','2024-05-25',1,'2024-06-26',NULL),(15,23,414,'2024-04-21','2024-05-28',2,'2024-06-26',NULL),(16,12,415,'2024-04-26','2024-06-02',3,'2024-06-26',NULL),(17,30,416,'2024-05-01','2024-06-06',1,'2024-06-26',NULL),(18,3,417,'2024-05-08','2024-06-12',2,'2024-06-26',NULL),(19,41,418,'2024-05-15','2024-06-18',3,'2024-06-26',NULL),(20,38,419,'2024-05-20','2024-06-22',1,'2024-06-26',NULL),(21,36,420,'2024-05-25','2024-06-28',2,'2024-06-26',NULL),(22,20,421,'2024-06-01','2024-07-03',3,'2024-06-26',NULL),(23,16,422,'2024-06-07','2024-07-08',1,'2024-06-26',NULL),(24,1,423,'2024-06-11','2024-07-12',2,'2024-06-26',NULL),(25,35,424,'2024-06-16','2024-07-16',3,'2024-06-26',NULL),(26,24,425,'2024-06-20','2024-07-21',1,'2024-06-26',NULL),(27,27,426,'2024-06-26','2024-07-26',2,'2024-06-26',NULL),(28,14,427,'2024-07-02','2024-07-30',3,'2024-06-26',NULL),(29,10,428,'2024-07-08','2024-08-04',1,'2024-06-26',NULL),(30,6,429,'2024-07-13','2024-08-08',2,'2024-06-26',NULL),(31,32,430,'2024-07-18','2024-08-12',3,'2024-06-26',NULL),(32,21,431,'2024-07-25','2024-08-19',1,'2024-06-26',NULL),(33,39,432,'2024-07-29','2024-08-22',2,'2024-06-26',NULL),(34,18,433,'2024-08-03','2024-08-25',3,'2024-06-26',NULL),(35,11,434,'2024-08-09','2024-08-31',1,'2024-06-26',NULL),(36,2,435,'2024-08-13','2024-09-04',2,'2024-06-26',NULL),(37,37,436,'2024-08-18','2024-09-09',3,'2024-06-26',NULL),(38,13,437,'2024-08-22','2024-09-13',1,'2024-06-26',NULL),(39,4,438,'2024-08-27','2024-09-18',2,'2024-06-26',NULL),(40,48,439,'2024-09-01','2024-09-22',3,'2024-06-26',NULL),(41,28,440,'2024-09-06','2024-09-26',1,'2024-06-26',NULL),(42,50,441,'2024-09-10','2024-09-30',2,'2024-06-26',NULL),(43,34,442,'2024-09-15','2024-10-04',3,'2024-06-26',NULL),(44,25,443,'2024-09-20','2024-10-10',1,'2024-06-26',NULL),(45,7,444,'2024-09-24','2024-10-14',2,'2024-06-26',NULL),(46,40,445,'2024-09-30','2024-10-19',3,'2024-06-26',NULL),(47,42,446,'2024-10-05','2024-10-24',1,'2024-06-26',NULL),(48,43,447,'2024-10-09','2024-10-28',2,'2024-06-26',NULL),(49,69,443,'2024-02-01','2024-03-15',1,'2024-06-26',NULL),(50,33,445,'2024-02-02','2024-03-05',2,'2024-06-26',NULL);
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cursoUpdatedAt` BEFORE UPDATE ON `curso` FOR EACH ROW begin
	SET NEW.updatedAt = NOW();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `createdAt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Exactas','2024-06-25'),(2,'Humanidades','2024-06-25'),(3,'Ciencias Sociales','2024-06-25'),(4,'Ingeniería','2024-06-25'),(5,'Arquitectura','2024-06-25'),(6,'Medicina','2024-06-25'),(7,'Economía','2024-06-25'),(8,'Arte','2024-06-25'),(9,'Derecho','2024-06-25'),(10,'Educación','2024-06-25');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento_encargado`
--

DROP TABLE IF EXISTS `departamento_encargado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento_encargado` (
  `departamento_id` int NOT NULL,
  `profesor_id` int NOT NULL,
  `updatedAt` date DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  PRIMARY KEY (`departamento_id`,`profesor_id`),
  KEY `profesor_id` (`profesor_id`),
  CONSTRAINT `departamento_encargado_ibfk_1` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`id`),
  CONSTRAINT `departamento_encargado_ibfk_2` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento_encargado`
--

LOCK TABLES `departamento_encargado` WRITE;
/*!40000 ALTER TABLE `departamento_encargado` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento_encargado` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `departamentoEncargadoUpdatedAt` BEFORE UPDATE ON `departamento_encargado` FOR EACH ROW begin
	SET NEW.updatedAt = NOW();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiante` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL,
  `carrera_id` int DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  `matricula` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`),
  KEY `carrera_id` (`carrera_id`),
  CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`carrera_id`) REFERENCES `carrera` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'Jorge','Morales','jorge.morales0@upb.edu','Calle 649 #66','77782172',16,'2024-06-26','prefiero no decirlo','2002-03-16',NULL,'40C3MWVGSB'),(2,'Roberto','Sanchez','roberto.sanchez1@upb.edu','Calle 503 #25','10184940',9,'2024-06-26','femenino','2004-05-16',NULL,'0XWOJFVX11'),(3,'Andres','Mendoza','andres.mendoza2@upb.edu','Calle 331 #49','39184678',17,'2024-06-26','femenino','2005-03-20',NULL,'WH58OFI2WL'),(4,'Marta','Sanchez','marta.sanchez3@upb.edu','Calle 86 #13','49411117',26,'2024-06-26','femenino','2000-12-22',NULL,'E7OLMN2WHL'),(5,'Maria','Mendoza','maria.mendoza4@upb.edu','Calle 104 #53','81915933',25,'2024-06-26','femenino','2000-02-18',NULL,'K7I9HVA5NW'),(6,'Juan','Garcia','juan.garcia5@upb.edu','Calle 517 #21','80991817',26,'2024-06-26','masculino','2002-02-06',NULL,'7X6V9V4VUC'),(7,'Carlos','Ortega','carlos.ortega6@upb.edu','Calle 826 #13','10237328',29,'2024-06-26','prefiero no decirlo','2005-08-09',NULL,'HMRAESA59U'),(8,'Marta','Perez','marta.perez7@upb.edu','Calle 140 #74','65478707',5,'2024-06-26','femenino','2005-12-04',NULL,'3SULMTLSVA'),(9,'Marta','Gonzalez','marta.gonzalez8@upb.edu','Calle 8 #8','31181656',19,'2024-06-26','prefiero no decirlo','2000-08-23',NULL,'X28PSZP6PU'),(10,'Miguel','Perez','miguel.perez9@upb.edu','Calle 675 #10','14587666',21,'2024-06-26','masculino','2003-10-08',NULL,'XLDKDBN1U4'),(11,'Isabel','Vargas','isabel.vargas10@upb.edu','Calle 412 #24','11821457',20,'2024-06-26','masculino','2005-10-09',NULL,'V0TW5PVLEA'),(12,'Andres','Morales','andres.morales11@upb.edu','Calle 547 #62','92483130',24,'2024-06-26','masculino','2001-08-02',NULL,'H5JXXTWC9C'),(13,'Carlos','Ortega','carlos.ortega12@upb.edu','Calle 276 #50','74128465',28,'2024-06-26','masculino','2003-12-13',NULL,'XCWNRAQ9AL'),(14,'Lucia','Sanchez','lucia.sanchez13@upb.edu','Calle 176 #59','17384201',25,'2024-06-26','masculino','2004-11-17',NULL,'ZYIV8KXDZQ'),(15,'Carmen','Sanchez','carmen.sanchez14@upb.edu','Calle 172 #62','81994169',14,'2024-06-26','prefiero no decirlo','2001-01-08',NULL,'3W6BR6MV79'),(16,'Ana','Suarez','ana.suarez15@upb.edu','Calle 188 #14','14487371',12,'2024-06-26','masculino','2001-03-08',NULL,'E5XVJD8Z2A'),(17,'Roberto','Martinez','roberto.martinez16@upb.edu','Calle 550 #73','36952550',20,'2024-06-26','masculino','2004-05-10',NULL,'JD6MD82TD1'),(18,'Roberto','Mendoza','roberto.mendoza17@upb.edu','Calle 82 #58','20667731',26,'2024-06-26','masculino','2000-06-24',NULL,'0S6QXZ82SY'),(19,'Roberto','Perez','roberto.perez18@upb.edu','Calle 798 #73','06799148',4,'2024-06-26','prefiero no decirlo','2005-10-19',NULL,'CC1Y72BBRQ'),(20,'Angela','Castro','angela.castro19@upb.edu','Calle 226 #100','88119228',10,'2024-06-26','masculino','2003-11-26',NULL,'F0LCT0HKA8'),(21,'David','Mendoza','david.mendoza20@upb.edu','Calle 628 #5','01553441',9,'2024-06-26','masculino','2000-07-27',NULL,'5RRN1JS26O'),(22,'Maria','Suarez','maria.suarez21@upb.edu','Calle 151 #88','63569144',8,'2024-06-26','masculino','2000-07-27',NULL,'PJC8TF2LVG'),(23,'Juan','Rojas','juan.rojas22@upb.edu','Calle 90 #21','09450205',25,'2024-06-26','femenino','2005-01-05',NULL,'Z43LMEN0QO'),(24,'Maria','Navarro','maria.navarro23@upb.edu','Calle 139 #96','49710287',20,'2024-06-26','masculino','2002-04-30',NULL,'8MM5YAXY1X'),(25,'Miguel','Suarez','miguel.suarez24@upb.edu','Calle 601 #77','73177377',2,'2024-06-26','femenino','2000-11-09',NULL,'BXRTVP9PC6'),(26,'Pedro','Fernandez','pedro.fernandez25@upb.edu','Calle 357 #30','20021953',29,'2024-06-26','masculino','2002-03-02',NULL,'UTCNP1YINO'),(27,'Pedro','Ramirez','pedro.ramirez26@upb.edu','Calle 192 #35','17614305',28,'2024-06-26','masculino','2004-01-26',NULL,'HK362WZDF4'),(28,'Maria','Gonzalez','maria.gonzalez27@upb.edu','Calle 646 #60','44118664',1,'2024-06-26','femenino','2001-03-18',NULL,'WCZHCOBBCK'),(29,'Isabel','Hernandez','isabel.hernandez28@upb.edu','Calle 462 #68','54453643',7,'2024-06-26','prefiero no decirlo','2003-02-13',NULL,'80HCN97EYZ'),(30,'Laura','Ortega','laura.ortega29@upb.edu','Calle 488 #40','71708028',23,'2024-06-26','masculino','2000-02-05',NULL,'UAU6DVG599'),(31,'Elena','Fernandez','elena.fernandez30@upb.edu','Calle 773 #10','47661725',20,'2024-06-26','masculino','2001-01-04',NULL,'CRU4639IIL'),(32,'Pedro','Ortega','pedro.ortega31@upb.edu','Calle 487 #78','04469981',27,'2024-06-26','femenino','2004-02-29',NULL,'TAAJM76UKF'),(33,'Laura','Rojas','laura.rojas32@upb.edu','Calle 934 #74','30719764',17,'2024-06-26','prefiero no decirlo','2005-08-26',NULL,'LK133O81AI'),(34,'Jose','Morales','jose.morales33@upb.edu','Calle 210 #42','17315594',18,'2024-06-26','masculino','2005-10-17',NULL,'ULWDWNM2GA'),(35,'Juan','Perez','juan.perez34@upb.edu','Calle 388 #7','19117895',1,'2024-06-26','masculino','2005-04-19',NULL,'X58NMIAJ5Y'),(36,'Carlos','Romero','carlos.romero35@upb.edu','Calle 783 #28','81120381',3,'2024-06-26','masculino','2000-01-23',NULL,'C67I9R4CJY'),(37,'Jorge','Morales','jorge.morales36@upb.edu','Calle 283 #43','02982305',30,'2024-06-26','femenino','2004-07-09',NULL,'WFK130HPFB'),(38,'David','Morales','david.morales37@upb.edu','Calle 670 #35','18414287',26,'2024-06-26','prefiero no decirlo','2002-02-24',NULL,'OXN9PW25IR'),(39,'Lucia','Romero','lucia.romero38@upb.edu','Calle 999 #19','08356895',30,'2024-06-26','prefiero no decirlo','2005-07-05',NULL,'V57YER9THK'),(40,'David','Rojas','david.rojas39@upb.edu','Calle 733 #81','03688686',21,'2024-06-26','femenino','2000-02-09',NULL,'OXZC1SVFMR'),(41,'Elena','Vargas','elena.vargas40@upb.edu','Calle 719 #63','13477815',14,'2024-06-26','masculino','2000-05-23',NULL,'GI1HY5B4PT'),(42,'Andres','Ramirez','andres.ramirez41@upb.edu','Calle 782 #49','84384295',15,'2024-06-26','masculino','2001-10-16',NULL,'L3B952QXRF'),(43,'Roberto','Fernandez','roberto.fernandez42@upb.edu','Calle 841 #17','17528294',15,'2024-06-26','femenino','2001-09-28',NULL,'98OVXHJFHU'),(44,'Ana','Navarro','ana.navarro43@upb.edu','Calle 377 #5','56268329',8,'2024-06-26','prefiero no decirlo','2004-02-16',NULL,'2DY068AQDX'),(45,'Lucia','Hernandez','lucia.hernandez44@upb.edu','Calle 558 #83','50808496',9,'2024-06-26','masculino','2002-07-08',NULL,'N8G5YFZJ6V'),(46,'Angela','Castro','angela.castro45@upb.edu','Calle 818 #8','78943167',16,'2024-06-26','prefiero no decirlo','2002-04-11',NULL,'TO9D9C8MLS'),(47,'Carmen','Vargas','carmen.vargas46@upb.edu','Calle 28 #45','42263022',29,'2024-06-26','femenino','2001-05-14',NULL,'IUJ8D0TL3B'),(48,'Maria','Rodriguez','maria.rodriguez47@upb.edu','Calle 329 #49','51649800',20,'2024-06-26','femenino','2003-11-02',NULL,'OC9KMVN6Q8'),(49,'Ana','Vargas','ana.vargas48@upb.edu','Calle 481 #71','37212210',16,'2024-06-26','masculino','2002-12-10',NULL,'A84NQCFVNZ'),(50,'Juan','Morales','juan.morales49@upb.edu','Calle 938 #36','28588340',6,'2024-06-26','masculino','2004-10-09',NULL,'NQKWFI8AK8'),(51,'Jose','Lopez','jose.lopez50@upb.edu','Calle 69 #33','09996485',8,'2024-06-26','prefiero no decirlo','2001-04-13',NULL,'HSYJSYL8OY'),(52,'Maria','Rodriguez','maria.rodriguez51@upb.edu','Calle 260 #89','96313497',7,'2024-06-26','masculino','2005-10-06',NULL,'ND61SS1SWH'),(53,'Marta','Castro','marta.castro52@upb.edu','Calle 281 #100','87610392',28,'2024-06-26','prefiero no decirlo','2005-03-13',NULL,'8GEGP0ZPOM'),(54,'Elena','Mendoza','elena.mendoza53@upb.edu','Calle 58 #37','60358729',10,'2024-06-26','masculino','2003-06-22',NULL,'OBKK6A9PXQ'),(55,'Jorge','Vargas','jorge.vargas54@upb.edu','Calle 910 #79','78711504',18,'2024-06-26','prefiero no decirlo','2004-12-27',NULL,'R79XQHQYIV'),(56,'Pedro','Perez','pedro.perez55@upb.edu','Calle 231 #28','33796342',6,'2024-06-26','masculino','2001-03-16',NULL,'6LJN9LZ62T'),(57,'Laura','Hernandez','laura.hernandez56@upb.edu','Calle 144 #54','95717764',22,'2024-06-26','prefiero no decirlo','2003-06-01',NULL,'98S3IHXC64'),(58,'Ana','Martinez','ana.martinez57@upb.edu','Calle 514 #61','44523516',26,'2024-06-26','prefiero no decirlo','2000-12-15',NULL,'UZZO94OAU0'),(59,'Carlos','Rojas','carlos.rojas58@upb.edu','Calle 507 #74','16712684',18,'2024-06-26','femenino','2001-08-23',NULL,'JXPFP5JC50'),(60,'Miguel','Sanchez','miguel.sanchez59@upb.edu','Calle 410 #34','51790838',26,'2024-06-26','masculino','2005-04-21',NULL,'NJTVIU8ALA'),(61,'David','Rodriguez','david.rodriguez60@upb.edu','Calle 46 #54','77814300',30,'2024-06-26','prefiero no decirlo','2000-01-23',NULL,'X19W0B0HR2'),(62,'Jose','Fernandez','jose.fernandez61@upb.edu','Calle 134 #55','02311214',16,'2024-06-26','masculino','2001-06-09',NULL,'D3LEPIAG35'),(63,'Roberto','Mendoza','roberto.mendoza62@upb.edu','Calle 556 #50','76650828',17,'2024-06-26','femenino','2004-07-14',NULL,'7VNUTCHF4O'),(64,'Laura','Navarro','laura.navarro63@upb.edu','Calle 572 #17','70782222',22,'2024-06-26','prefiero no decirlo','2003-02-02',NULL,'XNYO7DTM5J'),(65,'Marta','Sanchez','marta.sanchez64@upb.edu','Calle 459 #65','69270813',25,'2024-06-26','masculino','2005-08-28',NULL,'5G5CIULSP0'),(66,'Jorge','Navarro','jorge.navarro65@upb.edu','Calle 866 #36','49334117',5,'2024-06-26','masculino','2005-03-31',NULL,'PSZK4YC7WL'),(67,'Ana','Hernandez','ana.hernandez66@upb.edu','Calle 971 #85','51105380',10,'2024-06-26','prefiero no decirlo','2003-03-17',NULL,'OY5V1LRNSK'),(68,'Ana','Lopez','ana.lopez67@upb.edu','Calle 682 #9','06987135',2,'2024-06-26','masculino','2000-02-06',NULL,'O9H1O5V0EK'),(69,'Carmen','Ortega','carmen.ortega68@upb.edu','Calle 481 #36','42491509',6,'2024-06-26','prefiero no decirlo','2000-12-13',NULL,'604OEEV2RZ'),(70,'Roberto','Ortega','roberto.ortega69@upb.edu','Calle 754 #50','93848086',6,'2024-06-26','masculino','2003-02-02',NULL,'39W4FWN9O1'),(71,'Pedro','Gonzalez','pedro.gonzalez70@upb.edu','Calle 441 #21','52553673',29,'2024-06-26','prefiero no decirlo','2000-01-27',NULL,'DAY2GMJD0I'),(72,'Jose','Ramirez','jose.ramirez71@upb.edu','Calle 492 #35','96963352',23,'2024-06-26','masculino','2002-08-05',NULL,'62JX6GH6PI'),(73,'Roberto','Suarez','roberto.suarez72@upb.edu','Calle 29 #47','10647025',6,'2024-06-26','femenino','2001-07-07',NULL,'507SUAPS7Z'),(74,'Angela','Navarro','angela.navarro73@upb.edu','Calle 42 #54','06867358',29,'2024-06-26','prefiero no decirlo','2002-09-16',NULL,'W3D885YLHM'),(75,'Carlos','Fernandez','carlos.fernandez74@upb.edu','Calle 357 #21','32814195',3,'2024-06-26','masculino','2001-07-05',NULL,'SE8ENKGBCB'),(76,'Jorge','Garcia','jorge.garcia75@upb.edu','Calle 765 #87','74247145',28,'2024-06-26','masculino','2001-01-25',NULL,'TVNEQO5V1M'),(77,'Luis','Suarez','luis.suarez76@upb.edu','Calle 527 #69','60186347',2,'2024-06-26','femenino','2001-02-14',NULL,'RRFSE2INLD'),(78,'David','Rodriguez','david.rodriguez77@upb.edu','Calle 117 #20','86078874',15,'2024-06-26','masculino','2002-10-19',NULL,'HHS6252OPE'),(79,'Pedro','Suarez','pedro.suarez78@upb.edu','Calle 780 #31','99148358',27,'2024-06-26','prefiero no decirlo','2000-05-27',NULL,'XY2LB2J91A'),(80,'Maria','Romero','maria.romero79@upb.edu','Calle 358 #96','03508779',30,'2024-06-26','femenino','2002-02-20',NULL,'9EUKBYHEBX'),(81,'Lucia','Fernandez','lucia.fernandez80@upb.edu','Calle 14 #55','54641792',14,'2024-06-26','prefiero no decirlo','2004-09-13',NULL,'8S6BXSVL8W'),(82,'Miguel','Garcia','miguel.garcia81@upb.edu','Calle 557 #47','41623326',17,'2024-06-26','masculino','2003-03-05',NULL,'VV25YIALQ7'),(83,'Roberto','Morales','roberto.morales82@upb.edu','Calle 162 #20','96209871',1,'2024-06-26','femenino','2000-01-29',NULL,'9RMP43ZUTV'),(84,'Angela','Morales','angela.morales83@upb.edu','Calle 681 #75','07417063',7,'2024-06-26','prefiero no decirlo','2005-09-24',NULL,'074I0IAUNI'),(85,'Maria','Navarro','maria.navarro84@upb.edu','Calle 868 #92','26835672',1,'2024-06-26','prefiero no decirlo','2001-05-24',NULL,'6J203WSMIV'),(86,'Miguel','Rojas','miguel.rojas85@upb.edu','Calle 565 #87','32401279',15,'2024-06-26','femenino','2005-02-02',NULL,'HMU17TP1KD'),(87,'Jorge','Rodriguez','jorge.rodriguez86@upb.edu','Calle 268 #97','55390070',17,'2024-06-26','masculino','2003-02-28',NULL,'QE143KDG5N'),(88,'Ana','Vargas','ana.vargas87@upb.edu','Calle 753 #58','04498889',23,'2024-06-26','femenino','2004-04-02',NULL,'A5EJ6ZOXOQ'),(89,'Juan','Sanchez','juan.sanchez88@upb.edu','Calle 851 #8','49679537',14,'2024-06-26','masculino','2005-06-19',NULL,'KMAK4LWW7X'),(90,'Elena','Sanchez','elena.sanchez89@upb.edu','Calle 572 #65','56128084',20,'2024-06-26','femenino','2002-12-18',NULL,'NSTGMQLMGN'),(91,'Luis','Martinez','luis.martinez90@upb.edu','Calle 704 #34','91765258',15,'2024-06-26','masculino','2000-07-13',NULL,'QLV52GIQ15'),(92,'Miguel','Perez','miguel.perez91@upb.edu','Calle 876 #14','76111422',29,'2024-06-26','masculino','2004-11-07',NULL,'UWWWMVKNLA'),(93,'Sofia','Navarro','sofia.navarro92@upb.edu','Calle 800 #19','40174255',24,'2024-06-26','prefiero no decirlo','2005-12-24',NULL,'P01TTL54A3'),(94,'Ana','Ortega','ana.ortega93@upb.edu','Calle 508 #38','82144919',1,'2024-06-26','masculino','2004-09-21',NULL,'OFMM21LA3Z'),(95,'Laura','Romero','laura.romero94@upb.edu','Calle 883 #3','40896858',19,'2024-06-26','femenino','2004-05-01',NULL,'TJJKI674YC'),(96,'Lucia','Rodriguez','lucia.rodriguez95@upb.edu','Calle 438 #85','06633175',30,'2024-06-26','masculino','2004-11-14',NULL,'BI4VYU8SEF'),(97,'Lucia','Suarez','lucia.suarez96@upb.edu','Calle 25 #32','96333710',13,'2024-06-26','prefiero no decirlo','2002-03-22',NULL,'KOAGM21CBQ'),(98,'Roberto','Suarez','roberto.suarez97@upb.edu','Calle 485 #59','74977953',15,'2024-06-26','prefiero no decirlo','2000-04-17',NULL,'XCNJT67SEG'),(99,'Carmen','Vargas','carmen.vargas98@upb.edu','Calle 623 #18','27964360',21,'2024-06-26','prefiero no decirlo','2005-11-03',NULL,'ANLLOEA5I0'),(100,'Isabel','Ramirez','isabel.ramirez99@upb.edu','Calle 967 #5','46453152',30,'2024-06-26','femenino','2001-10-27',NULL,'QQHULSLQME'),(101,'Jose','Mendoza','jose.mendoza100@upb.edu','Calle 23 #89','07092457',25,'2024-06-26','femenino','2002-10-18',NULL,'YL7STRQRJA'),(102,'Sofia','Rojas','sofia.rojas101@upb.edu','Calle 897 #42','38113243',23,'2024-06-26','femenino','2001-10-26',NULL,'UU33QSUTGB'),(103,'Lucia','Perez','lucia.perez102@upb.edu','Calle 859 #37','71836310',21,'2024-06-26','prefiero no decirlo','2000-01-25',NULL,'EQG6FX4GVG'),(104,'Carmen','Rodriguez','carmen.rodriguez103@upb.edu','Calle 46 #4','83759334',6,'2024-06-26','masculino','2002-12-22',NULL,'DVY7NEFI7F'),(105,'Carlos','Hernandez','carlos.hernandez104@upb.edu','Calle 723 #42','96877844',1,'2024-06-26','masculino','2000-06-04',NULL,'YLWQ63KLGV'),(106,'Laura','Reyes','laura.reyes105@upb.edu','Calle 324 #14','18070852',16,'2024-06-26','prefiero no decirlo','2002-12-02',NULL,'EO424XXPT9'),(107,'Andres','Mendoza','andres.mendoza106@upb.edu','Calle 592 #93','18341530',10,'2024-06-26','prefiero no decirlo','2002-04-03',NULL,'HOGOP0MV96'),(108,'Roberto','Rodriguez','roberto.rodriguez107@upb.edu','Calle 674 #78','06079440',26,'2024-06-26','femenino','2001-12-07',NULL,'5QV58U9KIR'),(109,'Jorge','Garcia','jorge.garcia108@upb.edu','Calle 506 #61','67046844',27,'2024-06-26','masculino','2000-07-14',NULL,'U5267ZKOL3'),(110,'Ana','Suarez','ana.suarez109@upb.edu','Calle 1 #6','67118277',17,'2024-06-26','femenino','2002-06-28',NULL,'KDY2BJJCX9'),(111,'Sofia','Castro','sofia.castro110@upb.edu','Calle 107 #91','92029447',27,'2024-06-26','prefiero no decirlo','2003-05-06',NULL,'347GQPNYAP'),(112,'Angela','Lopez','angela.lopez111@upb.edu','Calle 668 #32','68384264',19,'2024-06-26','prefiero no decirlo','2003-01-17',NULL,'O9K5EOI969'),(113,'Luis','Ortega','luis.ortega112@upb.edu','Calle 893 #31','39893647',14,'2024-06-26','prefiero no decirlo','2000-03-25',NULL,'3PUJ609B4A'),(114,'Lucia','Lopez','lucia.lopez113@upb.edu','Calle 132 #62','17275962',8,'2024-06-26','masculino','2001-11-28',NULL,'7DEF39I8CW'),(115,'Roberto','Reyes','roberto.reyes114@upb.edu','Calle 567 #58','86884865',5,'2024-06-26','femenino','2002-06-26',NULL,'BUT5KRUU9W'),(116,'Miguel','Hernandez','miguel.hernandez115@upb.edu','Calle 739 #27','47878036',4,'2024-06-26','femenino','2005-09-26',NULL,'BCRNVYZLYB'),(117,'Lucia','Martinez','lucia.martinez116@upb.edu','Calle 922 #12','40314447',28,'2024-06-26','femenino','2002-02-08',NULL,'BLQ5CW9ROC'),(118,'Ana','Garcia','ana.garcia117@upb.edu','Calle 542 #27','90986398',22,'2024-06-26','prefiero no decirlo','2005-12-04',NULL,'KEU3C8TEFZ'),(119,'David','Rodriguez','david.rodriguez118@upb.edu','Calle 780 #30','34733637',5,'2024-06-26','prefiero no decirlo','2004-07-25',NULL,'X6LV1M7CWD'),(120,'Elena','Mendoza','elena.mendoza119@upb.edu','Calle 8 #29','98344595',14,'2024-06-26','masculino','2001-08-18',NULL,'VGAF4RW5V3'),(121,'Carlos','Reyes','carlos.reyes120@upb.edu','Calle 390 #21','62588856',2,'2024-06-26','prefiero no decirlo','2001-02-18',NULL,'I9XKD1KXSM'),(122,'Jorge','Vargas','jorge.vargas121@upb.edu','Calle 108 #2','38120596',23,'2024-06-26','prefiero no decirlo','2004-07-05',NULL,'KLIRVD115X'),(123,'Jorge','Ramirez','jorge.ramirez122@upb.edu','Calle 472 #67','22046127',20,'2024-06-26','masculino','2001-06-24',NULL,'O0RAPZ75UY'),(124,'Ana','Mendoza','ana.mendoza123@upb.edu','Calle 245 #16','41052489',21,'2024-06-26','masculino','2000-04-13',NULL,'GH32PMBWTC'),(125,'Juan','Vargas','juan.vargas124@upb.edu','Calle 24 #88','48323348',18,'2024-06-26','masculino','2002-06-06',NULL,'N5TE3MFWTH'),(126,'Isabel','Fernandez','isabel.fernandez125@upb.edu','Calle 674 #90','49393838',28,'2024-06-26','prefiero no decirlo','2005-06-01',NULL,'5TCU08OCOU'),(127,'Juan','Rodriguez','juan.rodriguez126@upb.edu','Calle 903 #86','16339756',3,'2024-06-26','prefiero no decirlo','2004-04-09',NULL,'77J2EO92FF'),(128,'Elena','Ortega','elena.ortega127@upb.edu','Calle 547 #82','42866078',19,'2024-06-26','prefiero no decirlo','2000-08-07',NULL,'Z6TD8EFN3A'),(129,'Luis','Reyes','luis.reyes128@upb.edu','Calle 806 #12','05342271',26,'2024-06-26','femenino','2002-05-28',NULL,'7OG3S3VAT0'),(130,'David','Rodriguez','david.rodriguez129@upb.edu','Calle 279 #61','20730928',4,'2024-06-26','masculino','2002-03-15',NULL,'MY9XM9RF7R'),(131,'Carmen','Lopez','carmen.lopez130@upb.edu','Calle 999 #76','58705229',2,'2024-06-26','masculino','2000-04-13',NULL,'FMS7VYRT32'),(132,'Sofia','Romero','sofia.romero131@upb.edu','Calle 732 #91','85227666',1,'2024-06-26','masculino','2001-10-09',NULL,'AEFE09X9PF'),(133,'Carlos','Gonzalez','carlos.gonzalez132@upb.edu','Calle 676 #11','61559712',24,'2024-06-26','femenino','2002-10-23',NULL,'GKDNN5TYUI'),(134,'Andres','Rodriguez','andres.rodriguez133@upb.edu','Calle 876 #51','08490757',8,'2024-06-26','femenino','2003-03-07',NULL,'C1XPO8SU7E'),(135,'Jorge','Rojas','jorge.rojas134@upb.edu','Calle 55 #5','08185314',4,'2024-06-26','prefiero no decirlo','2001-03-29',NULL,'2A3FJB0JTW'),(136,'Maria','Navarro','maria.navarro135@upb.edu','Calle 242 #22','94343154',20,'2024-06-26','masculino','2001-06-22',NULL,'1LUYNTYA61'),(137,'Luis','Sanchez','luis.sanchez136@upb.edu','Calle 25 #43','53790467',11,'2024-06-26','masculino','2000-10-15',NULL,'KIRHQBW9V9'),(138,'Miguel','Suarez','miguel.suarez137@upb.edu','Calle 757 #75','51307268',3,'2024-06-26','prefiero no decirlo','2003-10-30',NULL,'7C5S30XIP8'),(139,'Andres','Perez','andres.perez138@upb.edu','Calle 173 #85','27544463',26,'2024-06-26','femenino','2003-03-29',NULL,'WB5FK9C87M'),(140,'Angela','Lopez','angela.lopez139@upb.edu','Calle 650 #68','82367713',23,'2024-06-26','prefiero no decirlo','2000-02-23',NULL,'I57U9NU8YJ'),(141,'Juan','Rojas','juan.rojas140@upb.edu','Calle 103 #48','45431785',4,'2024-06-26','femenino','2002-05-10',NULL,'EVESU8YQFZ'),(142,'Andres','Perez','andres.perez141@upb.edu','Calle 617 #40','42215855',7,'2024-06-26','masculino','2002-07-20',NULL,'QTEK6IKDGV'),(143,'Carlos','Rojas','carlos.rojas142@upb.edu','Calle 250 #90','41006152',4,'2024-06-26','femenino','2001-08-22',NULL,'KCYIQEYUYO'),(144,'Jose','Sanchez','jose.sanchez143@upb.edu','Calle 510 #62','26960281',4,'2024-06-26','prefiero no decirlo','2002-01-03',NULL,'QPOKI611MH'),(145,'Sofia','Mendoza','sofia.mendoza144@upb.edu','Calle 969 #30','01584360',17,'2024-06-26','femenino','2005-06-04',NULL,'91W10IOWZU'),(146,'Carmen','Rodriguez','carmen.rodriguez145@upb.edu','Calle 772 #82','82275781',21,'2024-06-26','femenino','2005-02-13',NULL,'V718Z10PAF'),(147,'David','Morales','david.morales146@upb.edu','Calle 610 #70','25221918',9,'2024-06-26','femenino','2003-06-21',NULL,'WTMY4M90K0'),(148,'Elena','Rojas','elena.rojas147@upb.edu','Calle 196 #51','29529719',9,'2024-06-26','masculino','2002-01-03',NULL,'XNZEVRQ6MH'),(149,'Ana','Suarez','ana.suarez148@upb.edu','Calle 652 #34','49805302',25,'2024-06-26','masculino','2003-08-21',NULL,'NFCI65PBGM'),(150,'Elena','Ortega','elena.ortega149@upb.edu','Calle 538 #15','92588764',28,'2024-06-26','prefiero no decirlo','2002-08-12',NULL,'8NO2EYANH9'),(151,'Luis','Hernandez','luis.hernandez150@upb.edu','Calle 115 #30','23714858',17,'2024-06-26','masculino','2004-03-07',NULL,'5USLCE8CS5'),(152,'Andres','Morales','andres.morales151@upb.edu','Calle 189 #68','40822926',3,'2024-06-26','masculino','2005-12-06',NULL,'FH1TN55DE6'),(153,'Jorge','Morales','jorge.morales152@upb.edu','Calle 963 #22','12957551',25,'2024-06-26','prefiero no decirlo','2005-01-03',NULL,'WYB6A67CDH'),(154,'Marta','Gonzalez','marta.gonzalez153@upb.edu','Calle 88 #17','91721374',6,'2024-06-26','masculino','2003-03-12',NULL,'8CZSZKR4DN'),(155,'Angela','Suarez','angela.suarez154@upb.edu','Calle 719 #66','60369640',5,'2024-06-26','masculino','2005-03-07',NULL,'WIWC4TYAY8'),(156,'Carmen','Vargas','carmen.vargas155@upb.edu','Calle 358 #46','86608607',21,'2024-06-26','masculino','2002-10-11',NULL,'JXJMDMG3GQ'),(157,'Laura','Perez','laura.perez156@upb.edu','Calle 220 #52','65011397',30,'2024-06-26','masculino','2003-02-03',NULL,'H3HDK9IHWG'),(158,'Miguel','Romero','miguel.romero157@upb.edu','Calle 89 #73','76192175',3,'2024-06-26','masculino','2002-12-25',NULL,'IRVPIHU2PP'),(159,'Isabel','Lopez','isabel.lopez158@upb.edu','Calle 555 #36','45832098',6,'2024-06-26','prefiero no decirlo','2000-06-24',NULL,'9QK1CVAE4N'),(160,'Maria','Mendoza','maria.mendoza159@upb.edu','Calle 206 #24','39829164',16,'2024-06-26','masculino','2000-01-24',NULL,'5YI1FBQTQG'),(161,'Jorge','Vargas','jorge.vargas160@upb.edu','Calle 361 #8','16027453',9,'2024-06-26','prefiero no decirlo','2001-06-01',NULL,'8ZZV7JJVR3'),(162,'Isabel','Fernandez','isabel.fernandez161@upb.edu','Calle 616 #69','66611439',20,'2024-06-26','femenino','2002-08-14',NULL,'7WPKNAPUC8'),(163,'Sofia','Rojas','sofia.rojas162@upb.edu','Calle 5 #57','54291048',28,'2024-06-26','masculino','2004-11-11',NULL,'IXG9AQCG2O'),(164,'Andres','Fernandez','andres.fernandez163@upb.edu','Calle 380 #69','03522002',9,'2024-06-26','masculino','2004-11-16',NULL,'9IEF479232'),(165,'Marta','Ramirez','marta.ramirez164@upb.edu','Calle 873 #23','77594918',13,'2024-06-26','masculino','2002-06-22',NULL,'KNMQ030Q2Q'),(166,'Angela','Vargas','angela.vargas165@upb.edu','Calle 367 #8','60678680',12,'2024-06-26','femenino','2000-07-18',NULL,'5T8P3Y4MHH'),(167,'Elena','Garcia','elena.garcia166@upb.edu','Calle 669 #81','35864345',15,'2024-06-26','femenino','2001-12-16',NULL,'4SXE0J959P'),(168,'Juan','Suarez','juan.suarez167@upb.edu','Calle 40 #22','76210664',4,'2024-06-26','masculino','2005-10-13',NULL,'YS7NVHP3V2'),(169,'Roberto','Martinez','roberto.martinez168@upb.edu','Calle 369 #11','06606173',19,'2024-06-26','masculino','2000-11-23',NULL,'PWQDBXK3LX'),(170,'Isabel','Martinez','isabel.martinez169@upb.edu','Calle 519 #100','49331906',20,'2024-06-26','masculino','2001-08-04',NULL,'F9NFU7AW8D'),(171,'Laura','Morales','laura.morales170@upb.edu','Calle 21 #38','62306607',3,'2024-06-26','prefiero no decirlo','2004-07-28',NULL,'O3RRJF3GCD'),(172,'Carmen','Martinez','carmen.martinez171@upb.edu','Calle 546 #62','95085947',3,'2024-06-26','prefiero no decirlo','2005-03-31',NULL,'1VOGQUZCSN'),(173,'Laura','Suarez','laura.suarez172@upb.edu','Calle 352 #29','64387859',30,'2024-06-26','femenino','2004-07-11',NULL,'BWCUIXN4N5'),(174,'Sofia','Hernandez','sofia.hernandez173@upb.edu','Calle 612 #57','85639963',15,'2024-06-26','femenino','2000-07-31',NULL,'QDI4R75GGH'),(175,'Juan','Ramirez','juan.ramirez174@upb.edu','Calle 663 #34','62411082',7,'2024-06-26','prefiero no decirlo','2000-03-31',NULL,'X4JF3GLHQ3'),(176,'Laura','Reyes','laura.reyes175@upb.edu','Calle 996 #84','17108119',4,'2024-06-26','masculino','2005-04-20',NULL,'MEU7UELJL3'),(177,'Pedro','Romero','pedro.romero176@upb.edu','Calle 581 #21','37274375',4,'2024-06-26','masculino','2001-01-27',NULL,'M0EPA0SV8K'),(178,'Jorge','Lopez','jorge.lopez177@upb.edu','Calle 876 #99','27790524',23,'2024-06-26','masculino','2003-01-11',NULL,'N8N4BMIYXB'),(179,'Carmen','Vargas','carmen.vargas178@upb.edu','Calle 327 #61','38688520',1,'2024-06-26','prefiero no decirlo','2004-08-09',NULL,'81URMB0OW0'),(180,'Luis','Ortega','luis.ortega179@upb.edu','Calle 5 #61','88433771',11,'2024-06-26','femenino','2005-03-06',NULL,'E8XI69S5SG'),(181,'Luis','Rojas','luis.rojas180@upb.edu','Calle 251 #64','13726431',21,'2024-06-26','prefiero no decirlo','2002-10-01',NULL,'A5SKNP47ZR'),(182,'Andres','Perez','andres.perez181@upb.edu','Calle 252 #6','01502541',27,'2024-06-26','prefiero no decirlo','2000-09-13',NULL,'N6H8A39IDZ'),(183,'Carlos','Rojas','carlos.rojas182@upb.edu','Calle 99 #41','04080702',28,'2024-06-26','prefiero no decirlo','2002-05-05',NULL,'3T0PCUSCQ7'),(184,'Andres','Hernandez','andres.hernandez183@upb.edu','Calle 48 #84','97253459',5,'2024-06-26','prefiero no decirlo','2001-01-09',NULL,'US3W7NS0Y4'),(185,'Isabel','Rodriguez','isabel.rodriguez184@upb.edu','Calle 981 #14','87559405',6,'2024-06-26','masculino','2005-04-09',NULL,'HI3GFR5L23'),(186,'Maria','Rodriguez','maria.rodriguez185@upb.edu','Calle 570 #25','91280850',11,'2024-06-26','prefiero no decirlo','2003-08-22',NULL,'QOMZOQU5B0'),(187,'Pedro','Rojas','pedro.rojas186@upb.edu','Calle 731 #68','36851981',22,'2024-06-26','femenino','2005-07-18',NULL,'C5PTPS0XGB'),(188,'Elena','Navarro','elena.navarro187@upb.edu','Calle 310 #16','82001891',30,'2024-06-26','masculino','2001-01-07',NULL,'TNWFCHVJYF'),(189,'Lucia','Garcia','lucia.garcia188@upb.edu','Calle 894 #87','75751981',3,'2024-06-26','prefiero no decirlo','2000-01-17',NULL,'KOI7SNYU4R'),(190,'Andres','Suarez','andres.suarez189@upb.edu','Calle 823 #80','64806972',12,'2024-06-26','femenino','2002-02-21',NULL,'7JPIGEBSX0'),(191,'Elena','Garcia','elena.garcia190@upb.edu','Calle 153 #28','36577214',28,'2024-06-26','femenino','2002-11-03',NULL,'763IRTLJ2A'),(192,'Laura','Ortega','laura.ortega191@upb.edu','Calle 212 #65','10452975',23,'2024-06-26','masculino','2003-03-24',NULL,'1RW9N2I8S5'),(193,'Luis','Vargas','luis.vargas192@upb.edu','Calle 506 #28','28322932',13,'2024-06-26','masculino','2005-06-16',NULL,'249MVHHTNM'),(194,'Elena','Navarro','elena.navarro193@upb.edu','Calle 218 #30','66528471',16,'2024-06-26','femenino','2004-02-11',NULL,'2RE5OMI5DH'),(195,'Maria','Perez','maria.perez194@upb.edu','Calle 349 #80','66262266',1,'2024-06-26','masculino','2005-10-25',NULL,'LJT54KX7JE'),(196,'Juan','Reyes','juan.reyes195@upb.edu','Calle 262 #54','18212370',4,'2024-06-26','prefiero no decirlo','2005-03-05',NULL,'JIZFSDYTEX'),(197,'Miguel','Perez','miguel.perez196@upb.edu','Calle 630 #91','46190868',19,'2024-06-26','masculino','2002-09-23',NULL,'U5Q57S2A6S'),(198,'Andres','Fernandez','andres.fernandez197@upb.edu','Calle 334 #76','64413058',21,'2024-06-26','prefiero no decirlo','2004-11-02',NULL,'31P7OUJKR6'),(199,'Andres','Reyes','andres.reyes198@upb.edu','Calle 371 #69','69151204',3,'2024-06-26','prefiero no decirlo','2000-11-18',NULL,'4NA97S9628'),(200,'Carmen','Fernandez','carmen.fernandez199@upb.edu','Calle 671 #41','69036587',8,'2024-06-26','femenino','2000-03-26',NULL,'OR9E28DOP9'),(201,'Luis','Romero','luis.romero200@upb.edu','Calle 610 #79','67720855',12,'2024-06-26','femenino','2003-03-14',NULL,'TI2RGKB4DS'),(202,'Angela','Navarro','angela.navarro201@upb.edu','Calle 902 #17','38595153',29,'2024-06-26','masculino','2004-02-07',NULL,'IP9Z74AKQY'),(203,'Ana','Romero','ana.romero202@upb.edu','Calle 469 #43','98394792',21,'2024-06-26','masculino','2001-11-07',NULL,'I9AVQMD3OH'),(204,'Sofia','Castro','sofia.castro203@upb.edu','Calle 849 #48','25475481',6,'2024-06-26','femenino','2002-04-08',NULL,'Z6RRX6ORHM'),(205,'Roberto','Morales','roberto.morales204@upb.edu','Calle 481 #34','10679381',3,'2024-06-26','prefiero no decirlo','2002-01-16',NULL,'Z83Z5O17RV'),(206,'Elena','Romero','elena.romero205@upb.edu','Calle 99 #82','72980825',7,'2024-06-26','femenino','2004-10-07',NULL,'PZXXAYDJB1'),(207,'Elena','Gonzalez','elena.gonzalez206@upb.edu','Calle 459 #90','66705903',13,'2024-06-26','femenino','2003-01-26',NULL,'15UFAQTT1H'),(208,'Carmen','Martinez','carmen.martinez207@upb.edu','Calle 546 #100','33568939',28,'2024-06-26','prefiero no decirlo','2001-09-12',NULL,'YGAFBIXM7P'),(209,'Maria','Mendoza','maria.mendoza208@upb.edu','Calle 809 #37','22648277',5,'2024-06-26','femenino','2001-10-14',NULL,'HKBLADEF6T'),(210,'Ana','Mendoza','ana.mendoza209@upb.edu','Calle 957 #76','12159061',17,'2024-06-26','femenino','2003-04-10',NULL,'9741E7LI4U'),(211,'Juan','Fernandez','juan.fernandez210@upb.edu','Calle 727 #80','37064076',3,'2024-06-26','femenino','2005-11-25',NULL,'ICX0HQRNIY'),(212,'Luis','Vargas','luis.vargas211@upb.edu','Calle 901 #22','34690124',22,'2024-06-26','femenino','2003-02-15',NULL,'QKWY2ULUHN'),(213,'Luis','Gonzalez','luis.gonzalez212@upb.edu','Calle 440 #35','26794285',17,'2024-06-26','prefiero no decirlo','2001-11-02',NULL,'7J146QP845'),(214,'Andres','Reyes','andres.reyes213@upb.edu','Calle 553 #77','60925818',5,'2024-06-26','masculino','2001-03-05',NULL,'FXN19BBGNZ'),(215,'Lucia','Suarez','lucia.suarez214@upb.edu','Calle 966 #3','32151068',23,'2024-06-26','femenino','2001-02-04',NULL,'GITG339IGU'),(216,'Miguel','Mendoza','miguel.mendoza215@upb.edu','Calle 389 #77','51297336',8,'2024-06-26','prefiero no decirlo','2003-11-14',NULL,'BKONU4XM28'),(217,'Andres','Ramirez','andres.ramirez216@upb.edu','Calle 871 #81','55173561',4,'2024-06-26','masculino','2004-09-21',NULL,'DMWJQ0WEM4'),(218,'Luis','Gonzalez','luis.gonzalez217@upb.edu','Calle 85 #27','37768434',26,'2024-06-26','prefiero no decirlo','2004-11-23',NULL,'I08UXMMAAC'),(219,'Carlos','Rojas','carlos.rojas218@upb.edu','Calle 191 #18','92481099',20,'2024-06-26','masculino','2003-04-10',NULL,'FLE4TU8DG4'),(220,'Angela','Fernandez','angela.fernandez219@upb.edu','Calle 102 #18','85557073',7,'2024-06-26','femenino','2001-04-05',NULL,'7VXR6L8EZU'),(221,'Luis','Fernandez','luis.fernandez220@upb.edu','Calle 979 #82','46926190',20,'2024-06-26','prefiero no decirlo','2004-11-06',NULL,'2QV9WJCVLI'),(222,'Sofia','Vargas','sofia.vargas221@upb.edu','Calle 705 #80','96506623',15,'2024-06-26','femenino','2000-11-19',NULL,'PGN4F8K909'),(223,'Jorge','Fernandez','jorge.fernandez222@upb.edu','Calle 268 #99','73640289',11,'2024-06-26','masculino','2004-03-03',NULL,'NU5SQLQ1J4'),(224,'Luis','Castro','luis.castro223@upb.edu','Calle 566 #8','47451901',14,'2024-06-26','masculino','2003-10-07',NULL,'L1QOUNZIW3'),(225,'Isabel','Reyes','isabel.reyes224@upb.edu','Calle 784 #49','01761799',7,'2024-06-26','masculino','2004-10-03',NULL,'XK8UX7CPE2'),(226,'Carlos','Ortega','carlos.ortega225@upb.edu','Calle 426 #33','85247213',26,'2024-06-26','femenino','2005-09-06',NULL,'0HYXSCYUIL'),(227,'Pedro','Garcia','pedro.garcia226@upb.edu','Calle 931 #58','29790092',24,'2024-06-26','femenino','2005-01-09',NULL,'X1556VDK0X'),(228,'Roberto','Martinez','roberto.martinez227@upb.edu','Calle 754 #93','66839098',20,'2024-06-26','masculino','2001-06-19',NULL,'4270CBFN5J'),(229,'Lucia','Perez','lucia.perez228@upb.edu','Calle 247 #68','04076224',18,'2024-06-26','femenino','2004-10-12',NULL,'SK345PV4YV'),(230,'Laura','Vargas','laura.vargas229@upb.edu','Calle 372 #85','45906843',1,'2024-06-26','femenino','2001-10-10',NULL,'Z21SC3YC2M'),(231,'Lucia','Ortega','lucia.ortega230@upb.edu','Calle 802 #51','04368078',21,'2024-06-26','masculino','2005-02-13',NULL,'AK7ZU8BJTR'),(232,'Isabel','Hernandez','isabel.hernandez231@upb.edu','Calle 720 #56','46991015',7,'2024-06-26','prefiero no decirlo','2003-05-04',NULL,'AQDZO0HCHJ'),(233,'Angela','Martinez','angela.martinez232@upb.edu','Calle 245 #31','31033692',6,'2024-06-26','prefiero no decirlo','2001-08-09',NULL,'016QO3J0KP'),(234,'Juan','Rojas','juan.rojas233@upb.edu','Calle 613 #75','32359434',11,'2024-06-26','prefiero no decirlo','2003-08-26',NULL,'SSV6R1599U'),(235,'Jose','Hernandez','jose.hernandez234@upb.edu','Calle 737 #52','05946953',5,'2024-06-26','femenino','2000-12-02',NULL,'4KX05E1GHG'),(236,'Sofia','Reyes','sofia.reyes235@upb.edu','Calle 718 #46','95044644',2,'2024-06-26','masculino','2001-08-26',NULL,'G4TZ7UZ63C'),(237,'Carlos','Suarez','carlos.suarez236@upb.edu','Calle 775 #59','52109075',28,'2024-06-26','prefiero no decirlo','2004-06-13',NULL,'80NVS4JTFP'),(238,'Isabel','Perez','isabel.perez237@upb.edu','Calle 852 #49','68472813',11,'2024-06-26','prefiero no decirlo','2003-12-14',NULL,'LES7Y913ON'),(239,'Pedro','Suarez','pedro.suarez238@upb.edu','Calle 188 #7','10366376',24,'2024-06-26','prefiero no decirlo','2000-01-02',NULL,'R4ZBQPF5HU'),(240,'Carlos','Navarro','carlos.navarro239@upb.edu','Calle 23 #6','26710525',1,'2024-06-26','masculino','2005-02-10',NULL,'LUK3N1UBI5'),(241,'Sofia','Fernandez','sofia.fernandez240@upb.edu','Calle 800 #52','39771584',22,'2024-06-26','prefiero no decirlo','2003-01-27',NULL,'0P0QWWN4D6'),(242,'Luis','Romero','luis.romero241@upb.edu','Calle 998 #96','12924833',26,'2024-06-26','masculino','2000-08-07',NULL,'F2OCI2AYWK'),(243,'David','Ramirez','david.ramirez242@upb.edu','Calle 978 #78','45091231',8,'2024-06-26','masculino','2003-10-22',NULL,'RUW8S59CNE'),(244,'Carlos','Garcia','carlos.garcia243@upb.edu','Calle 25 #73','72098130',16,'2024-06-26','masculino','2000-12-11',NULL,'VEVMOKCYII'),(245,'Laura','Rodriguez','laura.rodriguez244@upb.edu','Calle 194 #30','31883388',14,'2024-06-26','femenino','2004-10-16',NULL,'U8MMJYXHCY'),(246,'Sofia','Garcia','sofia.garcia245@upb.edu','Calle 357 #8','20862104',5,'2024-06-26','masculino','2000-09-01',NULL,'MOWP8W34M1'),(247,'Elena','Vargas','elena.vargas246@upb.edu','Calle 196 #21','46223526',2,'2024-06-26','masculino','2005-03-20',NULL,'210VXB9KLK'),(248,'Laura','Rojas','laura.rojas247@upb.edu','Calle 98 #37','42267511',20,'2024-06-26','masculino','2004-07-29',NULL,'VDKCBMU3OE'),(249,'Laura','Ramirez','laura.ramirez248@upb.edu','Calle 680 #41','55498468',29,'2024-06-26','femenino','2005-11-07',NULL,'LFR3UAQS9K'),(250,'Luis','Vargas','luis.vargas249@upb.edu','Calle 655 #31','42945824',29,'2024-06-26','masculino','2004-09-04',NULL,'R4V5PHQHN1'),(251,'Elena','Garcia','elena.garcia250@upb.edu','Calle 995 #98','88860926',2,'2024-06-26','masculino','2002-08-29',NULL,'S5C6ESMBN0'),(252,'Lucia','Sanchez','lucia.sanchez251@upb.edu','Calle 617 #19','02461669',25,'2024-06-26','prefiero no decirlo','2002-05-28',NULL,'7NL8IMWTX6'),(253,'Juan','Gonzalez','juan.gonzalez252@upb.edu','Calle 576 #22','72515866',23,'2024-06-26','femenino','2002-09-14',NULL,'PMZKEDXB95'),(254,'David','Sanchez','david.sanchez253@upb.edu','Calle 371 #12','20205598',3,'2024-06-26','prefiero no decirlo','2001-03-01',NULL,'LGAFC6TSHF'),(255,'Carmen','Castro','carmen.castro254@upb.edu','Calle 43 #79','90105642',19,'2024-06-26','masculino','2000-07-08',NULL,'2QTYU9NF30'),(256,'Lucia','Fernandez','lucia.fernandez255@upb.edu','Calle 276 #3','24495885',21,'2024-06-26','prefiero no decirlo','2005-03-09',NULL,'R8KHLGB2P8'),(257,'Isabel','Rojas','isabel.rojas256@upb.edu','Calle 229 #1','65690460',26,'2024-06-26','femenino','2000-08-10',NULL,'N9MKK9RY6B'),(258,'Juan','Morales','juan.morales257@upb.edu','Calle 944 #2','26189809',22,'2024-06-26','femenino','2000-08-31',NULL,'QWR33XJSLU'),(259,'Carlos','Rodriguez','carlos.rodriguez258@upb.edu','Calle 266 #96','82506246',12,'2024-06-26','prefiero no decirlo','2001-02-01',NULL,'QJIC61O02K'),(260,'Lucia','Rodriguez','lucia.rodriguez259@upb.edu','Calle 437 #74','13500545',25,'2024-06-26','prefiero no decirlo','2001-05-20',NULL,'TWO4RYYVTM'),(261,'Luis','Rojas','luis.rojas260@upb.edu','Calle 635 #82','26941120',24,'2024-06-26','prefiero no decirlo','2003-10-09',NULL,'B37AA362WE'),(262,'Miguel','Lopez','miguel.lopez261@upb.edu','Calle 618 #64','62683282',20,'2024-06-26','masculino','2000-07-14',NULL,'66X8BT56YP'),(263,'Jose','Suarez','jose.suarez262@upb.edu','Calle 34 #25','97087808',21,'2024-06-26','prefiero no decirlo','2002-05-12',NULL,'BM8IR7TTFP'),(264,'Carlos','Navarro','carlos.navarro263@upb.edu','Calle 751 #11','08838051',21,'2024-06-26','femenino','2003-04-21',NULL,'UATU3VGQ7J'),(265,'Laura','Fernandez','laura.fernandez264@upb.edu','Calle 700 #14','00393160',20,'2024-06-26','femenino','2004-11-24',NULL,'1VNRZ8E6QI'),(266,'Elena','Lopez','elena.lopez265@upb.edu','Calle 815 #11','83123940',13,'2024-06-26','masculino','2002-11-13',NULL,'1L3BKGX8KS'),(267,'David','Perez','david.perez266@upb.edu','Calle 362 #65','55898684',28,'2024-06-26','prefiero no decirlo','2002-12-14',NULL,'SM6J1R9QBA'),(268,'Roberto','Lopez','roberto.lopez267@upb.edu','Calle 568 #1','61947943',27,'2024-06-26','masculino','2000-10-03',NULL,'A4MLW20AD5'),(269,'Jose','Sanchez','jose.sanchez268@upb.edu','Calle 778 #79','22509879',4,'2024-06-26','femenino','2005-10-22',NULL,'S4BA216RLW'),(270,'Luis','Mendoza','luis.mendoza269@upb.edu','Calle 539 #96','49428765',18,'2024-06-26','masculino','2005-11-28',NULL,'KU3WDMMQBF'),(271,'Marta','Castro','marta.castro270@upb.edu','Calle 82 #82','93649992',14,'2024-06-26','femenino','2002-01-10',NULL,'LFOVW2QWJA'),(272,'Jorge','Garcia','jorge.garcia271@upb.edu','Calle 174 #93','90699964',5,'2024-06-26','masculino','2005-12-08',NULL,'A2UVQQ8BOL'),(273,'Laura','Navarro','laura.navarro272@upb.edu','Calle 378 #89','90856866',12,'2024-06-26','masculino','2005-07-09',NULL,'C9I0J4WBQ0'),(274,'Jorge','Garcia','jorge.garcia273@upb.edu','Calle 988 #61','34192759',6,'2024-06-26','femenino','2000-08-12',NULL,'7RLGR0A29F'),(275,'Jorge','Castro','jorge.castro274@upb.edu','Calle 97 #87','01142321',27,'2024-06-26','femenino','2003-08-03',NULL,'MJUZRMI6F7'),(276,'David','Castro','david.castro275@upb.edu','Calle 642 #100','99716685',6,'2024-06-26','masculino','2004-01-17',NULL,'X9320UAXKB'),(277,'Lucia','Suarez','lucia.suarez276@upb.edu','Calle 891 #45','79619056',19,'2024-06-26','femenino','2003-07-29',NULL,'BZCO7YAI8N'),(278,'Elena','Hernandez','elena.hernandez277@upb.edu','Calle 516 #34','38720534',4,'2024-06-26','masculino','2001-03-13',NULL,'UYKIAEVLJA'),(279,'Roberto','Martinez','roberto.martinez278@upb.edu','Calle 947 #74','50065583',18,'2024-06-26','prefiero no decirlo','2004-06-08',NULL,'E13C0S4K81'),(280,'Roberto','Morales','roberto.morales279@upb.edu','Calle 920 #2','41315390',6,'2024-06-26','femenino','2004-04-01',NULL,'98HK77RPNE'),(281,'Juan','Romero','juan.romero280@upb.edu','Calle 28 #89','77583866',22,'2024-06-26','prefiero no decirlo','2005-06-18',NULL,'QOX2XG2817'),(282,'Andres','Fernandez','andres.fernandez281@upb.edu','Calle 972 #88','21665604',5,'2024-06-26','prefiero no decirlo','2005-11-24',NULL,'9GJP899JB2'),(283,'David','Rodriguez','david.rodriguez282@upb.edu','Calle 165 #59','31872537',7,'2024-06-26','femenino','2001-11-04',NULL,'DQ6OCTTI4K'),(284,'Jose','Navarro','jose.navarro283@upb.edu','Calle 334 #81','71716703',6,'2024-06-26','masculino','2005-11-06',NULL,'7T0ZTXAQ8G'),(285,'Sofia','Morales','sofia.morales284@upb.edu','Calle 128 #1','50845320',24,'2024-06-26','masculino','2005-01-25',NULL,'2AB084B1QD'),(286,'Maria','Lopez','maria.lopez285@upb.edu','Calle 5 #60','57991153',26,'2024-06-26','prefiero no decirlo','2004-11-27',NULL,'7SFZHJBFY5'),(287,'Jose','Mendoza','jose.mendoza286@upb.edu','Calle 522 #29','10017128',1,'2024-06-26','masculino','2002-01-06',NULL,'UER0U2Z51I'),(288,'Andres','Martinez','andres.martinez287@upb.edu','Calle 227 #1','21542212',19,'2024-06-26','femenino','2004-06-22',NULL,'UDTPPINAHI'),(289,'Jose','Martinez','jose.martinez288@upb.edu','Calle 514 #2','07925408',15,'2024-06-26','femenino','2001-10-04',NULL,'HF5DVW94YW'),(290,'Jose','Reyes','jose.reyes289@upb.edu','Calle 429 #55','36701630',24,'2024-06-26','femenino','2004-12-19',NULL,'KUERSY2JGO'),(291,'Ana','Castro','ana.castro290@upb.edu','Calle 981 #30','34299431',3,'2024-06-26','femenino','2001-05-04',NULL,'JG9PTHE4NU'),(292,'Angela','Mendoza','angela.mendoza291@upb.edu','Calle 688 #19','55322111',18,'2024-06-26','femenino','2005-08-22',NULL,'TOC2JH6WW8'),(293,'Carmen','Ramirez','carmen.ramirez292@upb.edu','Calle 281 #44','91844760',28,'2024-06-26','femenino','2003-02-21',NULL,'7OY86JZQR3'),(294,'Miguel','Morales','miguel.morales293@upb.edu','Calle 427 #41','67185658',30,'2024-06-26','femenino','2000-09-28',NULL,'DJYKPZR6P0'),(295,'Elena','Martinez','elena.martinez294@upb.edu','Calle 999 #76','38454731',23,'2024-06-26','prefiero no decirlo','2002-09-28',NULL,'ZJSLG7MF39'),(296,'Pedro','Sanchez','pedro.sanchez295@upb.edu','Calle 438 #85','11433186',16,'2024-06-26','masculino','2002-06-24',NULL,'G34MW48A5N'),(297,'Juan','Martinez','juan.martinez296@upb.edu','Calle 282 #5','88252844',21,'2024-06-26','femenino','2004-02-06',NULL,'0MS1MT1DGU'),(298,'Carmen','Hernandez','carmen.hernandez297@upb.edu','Calle 216 #86','60734528',7,'2024-06-26','masculino','2001-08-25',NULL,'TXG0DOFG9K'),(299,'Elena','Reyes','elena.reyes298@upb.edu','Calle 298 #62','60953800',19,'2024-06-26','masculino','2005-11-10',NULL,'KQKT2TSIMT'),(300,'Carlos','Rodriguez','carlos.rodriguez299@upb.edu','Calle 957 #67','71035828',3,'2024-06-26','femenino','2002-06-25',NULL,'HTR2MZP5EK'),(301,'Carmen','Fernandez','carmen.fernandez300@upb.edu','Calle 304 #70','95670610',25,'2024-06-26','masculino','2000-07-27',NULL,'16VUEAVSKL'),(302,'Lucia','Lopez','lucia.lopez301@upb.edu','Calle 518 #79','43202511',26,'2024-06-26','prefiero no decirlo','2004-02-12',NULL,'SEYEMZ5OWC'),(303,'Carmen','Lopez','carmen.lopez302@upb.edu','Calle 858 #73','31956117',16,'2024-06-26','masculino','2000-10-26',NULL,'OOG8WCW523'),(304,'Maria','Rodriguez','maria.rodriguez303@upb.edu','Calle 122 #3','99348525',21,'2024-06-26','masculino','2004-11-19',NULL,'QQH71IHEO9'),(305,'Luis','Romero','luis.romero304@upb.edu','Calle 483 #78','86620325',7,'2024-06-26','prefiero no decirlo','2002-04-07',NULL,'3PYQ8O6RKR'),(306,'Carlos','Navarro','carlos.navarro305@upb.edu','Calle 443 #39','31059317',16,'2024-06-26','prefiero no decirlo','2002-04-27',NULL,'F3LGKCXL6M'),(307,'Marta','Garcia','marta.garcia306@upb.edu','Calle 229 #83','05817868',16,'2024-06-26','masculino','2002-03-18',NULL,'TBLCS0YX7M'),(308,'Angela','Ramirez','angela.ramirez307@upb.edu','Calle 935 #23','23924581',15,'2024-06-26','prefiero no decirlo','2000-12-28',NULL,'OP5A3E5UOP'),(309,'Juan','Gonzalez','juan.gonzalez308@upb.edu','Calle 14 #16','19713991',13,'2024-06-26','femenino','2005-09-04',NULL,'WZ12TDB1D3'),(310,'Maria','Morales','maria.morales309@upb.edu','Calle 921 #93','56353685',11,'2024-06-26','femenino','2001-02-19',NULL,'LZ5BPTJL08'),(311,'Jose','Rodriguez','jose.rodriguez310@upb.edu','Calle 906 #20','28513759',17,'2024-06-26','masculino','2004-01-30',NULL,'LW0BS7QTXO'),(312,'Lucia','Navarro','lucia.navarro311@upb.edu','Calle 267 #82','83150061',15,'2024-06-26','masculino','2004-09-24',NULL,'0HVWRHOVZA'),(313,'Laura','Castro','laura.castro312@upb.edu','Calle 42 #90','27931607',23,'2024-06-26','femenino','2003-04-06',NULL,'Y7HM2D9P6W'),(314,'Laura','Morales','laura.morales313@upb.edu','Calle 439 #57','06055746',4,'2024-06-26','masculino','2005-10-25',NULL,'CBE7TANLBQ'),(315,'Maria','Gonzalez','maria.gonzalez314@upb.edu','Calle 752 #97','45990470',4,'2024-06-26','prefiero no decirlo','2005-11-16',NULL,'M37DX3M6VG'),(316,'Roberto','Garcia','roberto.garcia315@upb.edu','Calle 834 #3','36709519',6,'2024-06-26','femenino','2004-02-20',NULL,'PT88HQQZVS'),(317,'Jorge','Rojas','jorge.rojas316@upb.edu','Calle 221 #25','65561211',21,'2024-06-26','masculino','2002-08-14',NULL,'TWEB1E5EOO'),(318,'Angela','Suarez','angela.suarez317@upb.edu','Calle 391 #56','76491915',17,'2024-06-26','masculino','2001-07-17',NULL,'3IOUNXWWJH'),(319,'Sofia','Mendoza','sofia.mendoza318@upb.edu','Calle 244 #82','24568538',24,'2024-06-26','prefiero no decirlo','2002-03-08',NULL,'H3NH60X3CT'),(320,'Jose','Rojas','jose.rojas319@upb.edu','Calle 260 #35','92256149',26,'2024-06-26','prefiero no decirlo','2000-04-22',NULL,'I0S9G7O3KN'),(321,'Ana','Ramirez','ana.ramirez320@upb.edu','Calle 861 #3','63695879',26,'2024-06-26','prefiero no decirlo','2005-02-12',NULL,'KHHWK3661Y'),(322,'Isabel','Suarez','isabel.suarez321@upb.edu','Calle 566 #45','72921225',30,'2024-06-26','masculino','2001-10-12',NULL,'H9Z89VN6AQ'),(323,'Lucia','Suarez','lucia.suarez322@upb.edu','Calle 893 #87','92853308',6,'2024-06-26','femenino','2003-07-20',NULL,'191DIZP0AQ'),(324,'Miguel','Lopez','miguel.lopez323@upb.edu','Calle 894 #28','01529216',3,'2024-06-26','prefiero no decirlo','2005-04-26',NULL,'RXPF1GL7RR'),(325,'Juan','Navarro','juan.navarro324@upb.edu','Calle 746 #37','57959168',27,'2024-06-26','masculino','2001-02-21',NULL,'FEYZKVHGO4'),(326,'Laura','Hernandez','laura.hernandez325@upb.edu','Calle 551 #53','61697700',23,'2024-06-26','prefiero no decirlo','2000-02-20',NULL,'U9QDBXP3MF'),(327,'Marta','Romero','marta.romero326@upb.edu','Calle 546 #71','83240142',1,'2024-06-26','prefiero no decirlo','2000-05-26',NULL,'SW2BJRLBSN'),(328,'Carmen','Lopez','carmen.lopez327@upb.edu','Calle 478 #41','22160173',26,'2024-06-26','prefiero no decirlo','2004-01-10',NULL,'V2CSFY29QJ'),(329,'Juan','Rodriguez','juan.rodriguez328@upb.edu','Calle 658 #22','69855141',23,'2024-06-26','femenino','2004-08-28',NULL,'DQX49ZFJL1'),(330,'Elena','Mendoza','elena.mendoza329@upb.edu','Calle 4 #50','85057643',24,'2024-06-26','femenino','2001-09-12',NULL,'F2LCRAEBDE'),(331,'Andres','Lopez','andres.lopez330@upb.edu','Calle 416 #94','14703058',23,'2024-06-26','masculino','2000-01-08',NULL,'60YTSROOAX'),(332,'Elena','Rodriguez','elena.rodriguez331@upb.edu','Calle 714 #15','44837564',2,'2024-06-26','femenino','2003-10-30',NULL,'9374F8NMZQ'),(333,'Isabel','Rojas','isabel.rojas332@upb.edu','Calle 321 #45','01873137',28,'2024-06-26','femenino','2005-10-11',NULL,'IEEG046WJ4'),(334,'Isabel','Ramirez','isabel.ramirez333@upb.edu','Calle 14 #11','91116263',22,'2024-06-26','masculino','2005-05-05',NULL,'YX33CIQGVO'),(335,'Jorge','Vargas','jorge.vargas334@upb.edu','Calle 923 #87','18235887',1,'2024-06-26','masculino','2004-10-31',NULL,'BDNYVT0HC2'),(336,'Jorge','Martinez','jorge.martinez335@upb.edu','Calle 396 #6','24190979',21,'2024-06-26','masculino','2005-12-01',NULL,'HI6KRT553M'),(337,'Roberto','Fernandez','roberto.fernandez336@upb.edu','Calle 525 #44','87597116',10,'2024-06-26','femenino','2003-08-09',NULL,'2R7DWPV0PA'),(338,'Carlos','Rojas','carlos.rojas337@upb.edu','Calle 503 #59','64832646',27,'2024-06-26','prefiero no decirlo','2001-03-15',NULL,'LC97FRRWMT'),(339,'Marta','Vargas','marta.vargas338@upb.edu','Calle 708 #29','34393428',13,'2024-06-26','masculino','2002-11-07',NULL,'1M3IAO6O65'),(340,'Marta','Garcia','marta.garcia339@upb.edu','Calle 39 #79','73545677',20,'2024-06-26','masculino','2003-06-04',NULL,'1DI6WR0R80'),(341,'Isabel','Martinez','isabel.martinez340@upb.edu','Calle 998 #6','53903412',15,'2024-06-26','prefiero no decirlo','2003-04-01',NULL,'XAL5VE01SG'),(342,'Angela','Rodriguez','angela.rodriguez341@upb.edu','Calle 461 #66','33690047',23,'2024-06-26','masculino','2001-03-14',NULL,'L63OFFRVJO'),(343,'Elena','Perez','elena.perez342@upb.edu','Calle 256 #76','09324059',14,'2024-06-26','femenino','2001-10-10',NULL,'ZS03PECHZ6'),(344,'Ana','Martinez','ana.martinez343@upb.edu','Calle 627 #64','13676160',7,'2024-06-26','masculino','2005-10-29',NULL,'VXSNEQHVJ7'),(345,'Luis','Navarro','luis.navarro344@upb.edu','Calle 291 #51','79199933',2,'2024-06-26','masculino','2001-12-06',NULL,'H7YHDP4FPU'),(346,'Isabel','Hernandez','isabel.hernandez345@upb.edu','Calle 612 #12','67564190',3,'2024-06-26','femenino','2004-06-25',NULL,'OEIJ9OIUEZ'),(347,'David','Rodriguez','david.rodriguez346@upb.edu','Calle 756 #57','52274583',6,'2024-06-26','masculino','2003-01-18',NULL,'AOWEQ1TG5L'),(348,'Jose','Castro','jose.castro347@upb.edu','Calle 680 #66','23722253',25,'2024-06-26','femenino','2001-03-03',NULL,'49PI1W44HK'),(349,'Sofia','Martinez','sofia.martinez348@upb.edu','Calle 279 #72','52417817',30,'2024-06-26','femenino','2004-02-03',NULL,'WU9VPMCI6E'),(350,'David','Morales','david.morales349@upb.edu','Calle 385 #25','14271933',18,'2024-06-26','femenino','2000-02-02',NULL,'AQEL26LIQO'),(351,'Elena','Lopez','elena.lopez350@upb.edu','Calle 196 #76','16272220',29,'2024-06-26','prefiero no decirlo','2000-08-22',NULL,'10WD8TNBD1'),(352,'Sofia','Gonzalez','sofia.gonzalez351@upb.edu','Calle 667 #34','08220077',9,'2024-06-26','femenino','2004-03-23',NULL,'CL2YBE60DF'),(353,'Elena','Garcia','elena.garcia352@upb.edu','Calle 267 #100','30339348',6,'2024-06-26','femenino','2002-08-02',NULL,'BDIC7QDUQ7'),(354,'David','Fernandez','david.fernandez353@upb.edu','Calle 950 #14','93713268',26,'2024-06-26','prefiero no decirlo','2005-04-15',NULL,'OHYH84RLKP'),(355,'Ana','Gonzalez','ana.gonzalez354@upb.edu','Calle 262 #34','61327498',28,'2024-06-26','femenino','2004-04-24',NULL,'C1IGX6S1HJ'),(356,'Sofia','Sanchez','sofia.sanchez355@upb.edu','Calle 299 #6','86025302',24,'2024-06-26','masculino','2003-06-11',NULL,'N8NW65SIE7'),(357,'Miguel','Mendoza','miguel.mendoza356@upb.edu','Calle 762 #13','39737741',18,'2024-06-26','masculino','2002-01-12',NULL,'W2BCZ4QVBT'),(358,'Isabel','Reyes','isabel.reyes357@upb.edu','Calle 896 #97','40437815',21,'2024-06-26','prefiero no decirlo','2005-11-04',NULL,'HFPO2RLO5F'),(359,'Angela','Gonzalez','angela.gonzalez358@upb.edu','Calle 342 #64','70576170',19,'2024-06-26','masculino','2005-12-06',NULL,'16LDI3QJII'),(360,'Lucia','Perez','lucia.perez359@upb.edu','Calle 671 #84','99499470',22,'2024-06-26','femenino','2003-12-24',NULL,'0YONUT1CXD'),(361,'Lucia','Garcia','lucia.garcia360@upb.edu','Calle 960 #71','51438285',23,'2024-06-26','prefiero no decirlo','2004-04-16',NULL,'LYO36WJWRN'),(362,'Carlos','Martinez','carlos.martinez361@upb.edu','Calle 450 #2','50006889',24,'2024-06-26','masculino','2005-07-12',NULL,'02UDJTFQCI'),(363,'Ana','Romero','ana.romero362@upb.edu','Calle 306 #4','37251341',15,'2024-06-26','masculino','2000-01-04',NULL,'3GMU0TDSZ2'),(364,'Ana','Vargas','ana.vargas363@upb.edu','Calle 565 #8','07641764',10,'2024-06-26','femenino','2002-01-17',NULL,'O9GKLQELWC'),(365,'Carmen','Morales','carmen.morales364@upb.edu','Calle 539 #3','11584752',15,'2024-06-26','masculino','2003-04-21',NULL,'LK9H4M33QK'),(366,'Luis','Romero','luis.romero365@upb.edu','Calle 799 #51','97708293',6,'2024-06-26','prefiero no decirlo','2000-12-23',NULL,'C21QA8BUMB'),(367,'Carlos','Lopez','carlos.lopez366@upb.edu','Calle 864 #76','17429716',5,'2024-06-26','prefiero no decirlo','2001-07-10',NULL,'NDNS3X6SE0'),(368,'Laura','Navarro','laura.navarro367@upb.edu','Calle 621 #20','61237717',7,'2024-06-26','prefiero no decirlo','2000-08-14',NULL,'OJHL58I3KD'),(369,'Jorge','Perez','jorge.perez368@upb.edu','Calle 62 #48','74090792',9,'2024-06-26','prefiero no decirlo','2003-03-21',NULL,'WDA2UGBR2I'),(370,'Ana','Perez','ana.perez369@upb.edu','Calle 958 #2','33858132',15,'2024-06-26','femenino','2001-04-02',NULL,'0DFG4MO3GW'),(371,'Laura','Castro','laura.castro370@upb.edu','Calle 810 #27','06331814',27,'2024-06-26','prefiero no decirlo','2005-04-21',NULL,'CPNZMX1REO'),(372,'Laura','Rojas','laura.rojas371@upb.edu','Calle 613 #3','69206013',22,'2024-06-26','prefiero no decirlo','2002-07-25',NULL,'UX382RHZ1S'),(373,'Angela','Lopez','angela.lopez372@upb.edu','Calle 884 #42','05112791',27,'2024-06-26','prefiero no decirlo','2002-11-07',NULL,'7FZN56VZMR'),(374,'Angela','Hernandez','angela.hernandez373@upb.edu','Calle 517 #42','94318600',1,'2024-06-26','masculino','2004-02-26',NULL,'L985MUGPCS'),(375,'Juan','Mendoza','juan.mendoza374@upb.edu','Calle 9 #38','28087824',30,'2024-06-26','masculino','2003-12-05',NULL,'KIJG1ZFLNC'),(376,'Sofia','Martinez','sofia.martinez375@upb.edu','Calle 580 #2','38467567',16,'2024-06-26','femenino','2003-11-27',NULL,'CWP6IE9EW5'),(377,'Isabel','Rodriguez','isabel.rodriguez376@upb.edu','Calle 375 #74','03296343',14,'2024-06-26','prefiero no decirlo','2005-10-03',NULL,'HOMTBGSH72'),(378,'Lucia','Gonzalez','lucia.gonzalez377@upb.edu','Calle 961 #9','56710536',8,'2024-06-26','femenino','2001-11-23',NULL,'MOI8521Z2H'),(379,'Luis','Sanchez','luis.sanchez378@upb.edu','Calle 267 #91','81463309',10,'2024-06-26','prefiero no decirlo','2000-09-09',NULL,'OA90D435SD'),(380,'Miguel','Garcia','miguel.garcia379@upb.edu','Calle 955 #60','75823151',27,'2024-06-26','masculino','2002-08-03',NULL,'HIOVO0Z9OA'),(381,'Maria','Suarez','maria.suarez380@upb.edu','Calle 758 #87','19769978',29,'2024-06-26','femenino','2001-11-19',NULL,'D9RY6RH6QO'),(382,'Ana','Romero','ana.romero381@upb.edu','Calle 696 #79','41234150',9,'2024-06-26','prefiero no decirlo','2004-06-14',NULL,'R23CAZ1POS'),(383,'Jorge','Martinez','jorge.martinez382@upb.edu','Calle 589 #58','84184726',13,'2024-06-26','femenino','2003-07-15',NULL,'3UY9VD7F5E'),(384,'Jose','Romero','jose.romero383@upb.edu','Calle 8 #26','61827566',3,'2024-06-26','prefiero no decirlo','2002-07-29',NULL,'MUGLMAEOMU'),(385,'Luis','Fernandez','luis.fernandez384@upb.edu','Calle 329 #14','24998655',13,'2024-06-26','masculino','2005-03-27',NULL,'J67B073ANW'),(386,'Laura','Morales','laura.morales385@upb.edu','Calle 16 #70','95501933',12,'2024-06-26','masculino','2004-10-27',NULL,'9E3NZKK4DX'),(387,'Isabel','Martinez','isabel.martinez386@upb.edu','Calle 68 #16','52978122',9,'2024-06-26','masculino','2003-04-05',NULL,'M11BD8ACCI'),(388,'Carmen','Garcia','carmen.garcia387@upb.edu','Calle 858 #45','60657252',21,'2024-06-26','prefiero no decirlo','2000-04-17',NULL,'MPFPKIKY7K'),(389,'Angela','Ramirez','angela.ramirez388@upb.edu','Calle 354 #89','21212370',11,'2024-06-26','femenino','2005-12-04',NULL,'OIHKJAE9IZ'),(390,'Lucia','Ortega','lucia.ortega389@upb.edu','Calle 600 #91','45979587',26,'2024-06-26','femenino','2005-07-22',NULL,'7PNMC8QW8F'),(391,'Andres','Rodriguez','andres.rodriguez390@upb.edu','Calle 807 #94','58035864',5,'2024-06-26','prefiero no decirlo','2000-08-24',NULL,'G3L7WIIKHN'),(392,'Maria','Lopez','maria.lopez391@upb.edu','Calle 478 #28','89314467',10,'2024-06-26','femenino','2004-09-04',NULL,'ZS89IXHFHO'),(393,'Andres','Hernandez','andres.hernandez392@upb.edu','Calle 29 #23','95938142',8,'2024-06-26','femenino','2005-10-01',NULL,'0VHEIIXKLQ'),(394,'Elena','Sanchez','elena.sanchez393@upb.edu','Calle 779 #7','08649400',28,'2024-06-26','prefiero no decirlo','2002-03-08',NULL,'SU6DILVIF6'),(395,'Carlos','Garcia','carlos.garcia394@upb.edu','Calle 52 #34','19915522',6,'2024-06-26','femenino','2004-06-18',NULL,'VIKWVT0HCY'),(396,'Sofia','Rodriguez','sofia.rodriguez395@upb.edu','Calle 647 #66','65171904',12,'2024-06-26','femenino','2005-02-03',NULL,'4RBA21UTXE'),(397,'David','Perez','david.perez396@upb.edu','Calle 932 #45','10036820',17,'2024-06-26','femenino','2002-07-06',NULL,'N0JGHC7TZV'),(398,'Andres','Fernandez','andres.fernandez397@upb.edu','Calle 896 #10','21340270',4,'2024-06-26','masculino','2001-05-14',NULL,'CVITK6TGW2'),(399,'Miguel','Suarez','miguel.suarez398@upb.edu','Calle 858 #67','70244785',10,'2024-06-26','masculino','2001-06-05',NULL,'8HFHVKMUAR'),(400,'Laura','Garcia','laura.garcia399@upb.edu','Calle 215 #86','35955779',27,'2024-06-26','masculino','2000-10-27',NULL,'2WWZPW1R1J'),(401,'Miguel','Mendoza','miguel.mendoza400@upb.edu','Calle 915 #35','84170284',3,'2024-06-26','masculino','2005-02-13',NULL,'AP357WTZ1X'),(402,'Carmen','Sanchez','carmen.sanchez401@upb.edu','Calle 373 #4','81902584',24,'2024-06-26','prefiero no decirlo','2002-10-08',NULL,'KFLCY52474'),(403,'Jose','Lopez','jose.lopez402@upb.edu','Calle 120 #9','45449738',2,'2024-06-26','masculino','2005-09-06',NULL,'F747VKGYR9'),(404,'Isabel','Gonzalez','isabel.gonzalez403@upb.edu','Calle 122 #88','81407635',12,'2024-06-26','femenino','2004-05-14',NULL,'I9M3A8KFTL'),(405,'Elena','Garcia','elena.garcia404@upb.edu','Calle 914 #80','52499977',1,'2024-06-26','prefiero no decirlo','2001-08-16',NULL,'XP9WS6VZH6'),(406,'Miguel','Sanchez','miguel.sanchez405@upb.edu','Calle 507 #21','03678199',29,'2024-06-26','masculino','2003-02-02',NULL,'R96C3M2F92'),(407,'Isabel','Suarez','isabel.suarez406@upb.edu','Calle 99 #47','94969732',9,'2024-06-26','femenino','2004-10-27',NULL,'E5A8VQJISJ'),(408,'Isabel','Morales','isabel.morales407@upb.edu','Calle 32 #88','02576898',5,'2024-06-26','masculino','2003-10-23',NULL,'XG6P4PVPM6'),(409,'Roberto','Lopez','roberto.lopez408@upb.edu','Calle 307 #8','52043123',21,'2024-06-26','prefiero no decirlo','2000-08-17',NULL,'S9WJFK96AL'),(410,'Miguel','Vargas','miguel.vargas409@upb.edu','Calle 651 #28','68329268',4,'2024-06-26','prefiero no decirlo','2000-09-20',NULL,'MLMQ6VIQN3'),(411,'Ana','Mendoza','ana.mendoza410@upb.edu','Calle 559 #30','47363832',19,'2024-06-26','masculino','2003-04-01',NULL,'DL25Z1CWKE'),(412,'Ana','Hernandez','ana.hernandez411@upb.edu','Calle 214 #67','82595233',8,'2024-06-26','femenino','2000-07-12',NULL,'ZAHZCCV8DR'),(413,'Angela','Martinez','angela.martinez412@upb.edu','Calle 85 #5','86269003',12,'2024-06-26','femenino','2000-06-23',NULL,'MWCFO0I3EX'),(414,'Roberto','Perez','roberto.perez413@upb.edu','Calle 661 #94','12383801',11,'2024-06-26','masculino','2000-03-12',NULL,'84BK8B3T0Y'),(415,'David','Ortega','david.ortega414@upb.edu','Calle 525 #15','85520314',25,'2024-06-26','femenino','2004-01-04',NULL,'GTX7ZUP2KI'),(416,'Carmen','Hernandez','carmen.hernandez415@upb.edu','Calle 265 #99','51749518',23,'2024-06-26','masculino','2005-03-15',NULL,'IQTFEONQ0J'),(417,'Lucia','Martinez','lucia.martinez416@upb.edu','Calle 554 #25','96824508',6,'2024-06-26','femenino','2005-06-10',NULL,'A3VZA6ZZEQ'),(418,'Lucia','Reyes','lucia.reyes417@upb.edu','Calle 275 #16','38505846',29,'2024-06-26','masculino','2002-11-05',NULL,'2SDLOJ6TV6'),(419,'Marta','Hernandez','marta.hernandez418@upb.edu','Calle 739 #11','84309902',9,'2024-06-26','masculino','2000-10-01',NULL,'7649AE04O5'),(420,'Ana','Ortega','ana.ortega419@upb.edu','Calle 17 #77','84815126',11,'2024-06-26','femenino','2001-01-11',NULL,'61OF12CQUK'),(421,'Pedro','Mendoza','pedro.mendoza420@upb.edu','Calle 472 #12','07715575',10,'2024-06-26','prefiero no decirlo','2000-02-18',NULL,'O5YACQEWMS'),(422,'Pedro','Castro','pedro.castro421@upb.edu','Calle 558 #61','54738939',29,'2024-06-26','prefiero no decirlo','2002-11-05',NULL,'8MP5F0N72Y'),(423,'Jose','Garcia','jose.garcia422@upb.edu','Calle 945 #51','78613944',25,'2024-06-26','prefiero no decirlo','2004-11-26',NULL,'ASEJFVPXZF'),(424,'Sofia','Lopez','sofia.lopez423@upb.edu','Calle 324 #20','20108717',30,'2024-06-26','prefiero no decirlo','2005-10-29',NULL,'RIG77B5N6M'),(425,'Laura','Gonzalez','laura.gonzalez424@upb.edu','Calle 118 #35','52551127',23,'2024-06-26','femenino','2005-05-12',NULL,'17RNM8OCOR'),(426,'Maria','Rojas','maria.rojas425@upb.edu','Calle 984 #20','64056673',15,'2024-06-26','masculino','2001-05-12',NULL,'9VDJL3DICT'),(427,'Luis','Fernandez','luis.fernandez426@upb.edu','Calle 146 #53','64167562',29,'2024-06-26','femenino','2003-01-23',NULL,'DG6FRVWSO3'),(428,'Lucia','Romero','lucia.romero427@upb.edu','Calle 243 #77','18942146',3,'2024-06-26','femenino','2001-05-14',NULL,'3GTWM92DWQ'),(429,'Luis','Rodriguez','luis.rodriguez428@upb.edu','Calle 644 #90','85603451',1,'2024-06-26','masculino','2000-09-20',NULL,'TQ0L4XL1WK'),(430,'Sofia','Fernandez','sofia.fernandez429@upb.edu','Calle 788 #12','43581215',19,'2024-06-26','prefiero no decirlo','2001-04-20',NULL,'ZGQMGRMDIB'),(431,'Sofia','Morales','sofia.morales430@upb.edu','Calle 39 #25','32731247',2,'2024-06-26','prefiero no decirlo','2000-02-26',NULL,'02VTCGUFYH'),(432,'Maria','Martinez','maria.martinez431@upb.edu','Calle 939 #68','91080070',27,'2024-06-26','masculino','2001-12-01',NULL,'WT3VWQLC3X'),(433,'Roberto','Suarez','roberto.suarez432@upb.edu','Calle 638 #39','74171720',13,'2024-06-26','prefiero no decirlo','2001-08-31',NULL,'6XAQXL9WN6'),(434,'Carlos','Romero','carlos.romero433@upb.edu','Calle 247 #77','73664646',5,'2024-06-26','prefiero no decirlo','2003-11-27',NULL,'5VV0JZYYBF'),(435,'Carlos','Fernandez','carlos.fernandez434@upb.edu','Calle 566 #39','98189916',16,'2024-06-26','masculino','2003-05-06',NULL,'IUIONT0CI5'),(436,'Andres','Rodriguez','andres.rodriguez435@upb.edu','Calle 269 #4','25860126',24,'2024-06-26','prefiero no decirlo','2003-11-26',NULL,'OJBZ3X0N41'),(437,'Carlos','Fernandez','carlos.fernandez436@upb.edu','Calle 821 #9','47327280',24,'2024-06-26','femenino','2004-02-21',NULL,'UQRVKO6U0Q'),(438,'Andres','Gonzalez','andres.gonzalez437@upb.edu','Calle 569 #99','39721703',7,'2024-06-26','femenino','2003-05-24',NULL,'TB1WXSDSDE'),(439,'Sofia','Lopez','sofia.lopez438@upb.edu','Calle 830 #43','26939019',24,'2024-06-26','prefiero no decirlo','2002-06-27',NULL,'YUTCJD5AXH'),(440,'Luis','Martinez','luis.martinez439@upb.edu','Calle 435 #5','58284577',9,'2024-06-26','masculino','2004-03-04',NULL,'A82MYKMTLA'),(441,'Luis','Gonzalez','luis.gonzalez440@upb.edu','Calle 935 #7','74951364',4,'2024-06-26','femenino','2004-12-29',NULL,'I8Q1QG4TO1'),(442,'Lucia','Fernandez','lucia.fernandez441@upb.edu','Calle 171 #69','63123484',25,'2024-06-26','femenino','2001-03-11',NULL,'YME13DXOKH'),(443,'Ana','Perez','ana.perez442@upb.edu','Calle 733 #49','24076023',9,'2024-06-26','femenino','2003-12-22',NULL,'0J5OD68LMS'),(444,'Marta','Hernandez','marta.hernandez443@upb.edu','Calle 328 #1','85020307',4,'2024-06-26','femenino','2002-06-12',NULL,'T47JWLA7IU'),(445,'Juan','Morales','juan.morales444@upb.edu','Calle 732 #3','02666416',28,'2024-06-26','femenino','2002-02-21',NULL,'P1KN2G7YNE'),(446,'Elena','Lopez','elena.lopez445@upb.edu','Calle 706 #39','63004720',12,'2024-06-26','femenino','2005-02-23',NULL,'PGWPHDKNH7'),(447,'Lucia','Navarro','lucia.navarro446@upb.edu','Calle 835 #49','34265280',28,'2024-06-26','prefiero no decirlo','2000-06-28',NULL,'3CBI06KFG8'),(448,'Andres','Romero','andres.romero447@upb.edu','Calle 936 #81','70271898',30,'2024-06-26','prefiero no decirlo','2004-08-20',NULL,'JMR3BYYDMJ'),(449,'Angela','Reyes','angela.reyes448@upb.edu','Calle 304 #76','70208598',11,'2024-06-26','prefiero no decirlo','2004-12-30',NULL,'NJ23AC0N0V'),(450,'Isabel','Romero','isabel.romero449@upb.edu','Calle 626 #13','46181477',9,'2024-06-26','prefiero no decirlo','2004-03-21',NULL,'O4KN4YI15Z'),(451,'Juan','Navarro','juan.navarro450@upb.edu','Calle 913 #36','24419945',3,'2024-06-26','femenino','2005-03-29',NULL,'IVHQW0PVVC'),(452,'Marta','Ortega','marta.ortega451@upb.edu','Calle 60 #98','00291503',16,'2024-06-26','masculino','2001-08-10',NULL,'F61B7IERXD'),(453,'Laura','Navarro','laura.navarro452@upb.edu','Calle 526 #84','46927537',8,'2024-06-26','femenino','2003-05-14',NULL,'J0KWEX5Z2X'),(454,'Jorge','Martinez','jorge.martinez453@upb.edu','Calle 355 #94','58938300',27,'2024-06-26','masculino','2002-10-15',NULL,'VZDVRFV45L'),(455,'Luis','Vargas','luis.vargas454@upb.edu','Calle 442 #73','35956321',18,'2024-06-26','prefiero no decirlo','2002-04-10',NULL,'YZ5Z5SMEJ2'),(456,'Carmen','Perez','carmen.perez455@upb.edu','Calle 789 #73','36460514',12,'2024-06-26','masculino','2000-07-19',NULL,'92DLFJKYZJ'),(457,'Lucia','Castro','lucia.castro456@upb.edu','Calle 28 #97','90554843',21,'2024-06-26','masculino','2002-06-06',NULL,'2HAKLLOZY5'),(458,'Jose','Sanchez','jose.sanchez457@upb.edu','Calle 829 #72','78216867',27,'2024-06-26','femenino','2002-05-25',NULL,'EWCA0MC3SW'),(459,'Carmen','Navarro','carmen.navarro458@upb.edu','Calle 230 #100','28058968',18,'2024-06-26','masculino','2002-05-21',NULL,'CIRN3O52V7'),(460,'Andres','Castro','andres.castro459@upb.edu','Calle 260 #34','11923574',18,'2024-06-26','femenino','2004-06-29',NULL,'GK81ZNXNHW'),(461,'Elena','Rojas','elena.rojas460@upb.edu','Calle 640 #85','64022146',16,'2024-06-26','femenino','2004-07-26',NULL,'V3ZW17VY7R'),(462,'David','Sanchez','david.sanchez461@upb.edu','Calle 937 #14','00494295',15,'2024-06-26','femenino','2004-02-08',NULL,'NPL31ZLQO3'),(463,'Maria','Martinez','maria.martinez462@upb.edu','Calle 765 #25','05370116',24,'2024-06-26','femenino','2004-03-06',NULL,'SBOWZYL1CM'),(464,'Marta','Ramirez','marta.ramirez463@upb.edu','Calle 42 #100','88451741',21,'2024-06-26','masculino','2005-02-27',NULL,'WYUNA0VYK7'),(465,'Sofia','Garcia','sofia.garcia464@upb.edu','Calle 920 #15','75825875',2,'2024-06-26','prefiero no decirlo','2004-01-24',NULL,'N4V0K7CJGC'),(466,'Marta','Reyes','marta.reyes465@upb.edu','Calle 177 #11','20870548',24,'2024-06-26','masculino','2001-10-01',NULL,'H0NJSOLCEL'),(467,'Isabel','Rojas','isabel.rojas466@upb.edu','Calle 228 #18','87305901',19,'2024-06-26','prefiero no decirlo','2000-04-05',NULL,'RPC32YCJ2R'),(468,'Jose','Morales','jose.morales467@upb.edu','Calle 562 #2','12684136',18,'2024-06-26','prefiero no decirlo','2002-09-08',NULL,'WP81K15RNI'),(469,'Lucia','Rodriguez','lucia.rodriguez468@upb.edu','Calle 982 #78','09427228',8,'2024-06-26','femenino','2000-01-16',NULL,'GYTBPMUU1X'),(470,'Miguel','Romero','miguel.romero469@upb.edu','Calle 948 #85','05789175',2,'2024-06-26','masculino','2004-11-04',NULL,'PNCTHLVVEE'),(471,'Juan','Rodriguez','juan.rodriguez470@upb.edu','Calle 839 #36','44678479',1,'2024-06-26','femenino','2002-10-21',NULL,'A2B0R56YZY'),(472,'Sofia','Hernandez','sofia.hernandez471@upb.edu','Calle 552 #64','17724298',13,'2024-06-26','prefiero no decirlo','2005-09-26',NULL,'0DGT3AAQTR'),(473,'Angela','Reyes','angela.reyes472@upb.edu','Calle 874 #98','78330300',19,'2024-06-26','prefiero no decirlo','2002-07-14',NULL,'U77BW3B66C'),(474,'Pedro','Fernandez','pedro.fernandez473@upb.edu','Calle 376 #70','94379743',10,'2024-06-26','prefiero no decirlo','2004-08-10',NULL,'X8XEV6PD1O'),(475,'Isabel','Sanchez','isabel.sanchez474@upb.edu','Calle 870 #65','11839035',1,'2024-06-26','prefiero no decirlo','2000-07-09',NULL,'CKEJLQJGYV'),(476,'Miguel','Romero','miguel.romero475@upb.edu','Calle 496 #41','34848651',28,'2024-06-26','femenino','2002-09-20',NULL,'SOUN713XZ7'),(477,'Carmen','Reyes','carmen.reyes476@upb.edu','Calle 303 #9','64207603',13,'2024-06-26','femenino','2002-03-15',NULL,'11XO7142KC'),(478,'Jose','Ortega','jose.ortega477@upb.edu','Calle 955 #24','61152870',22,'2024-06-26','prefiero no decirlo','2001-04-02',NULL,'87E36RC0EQ'),(479,'Elena','Garcia','elena.garcia478@upb.edu','Calle 771 #39','74686858',2,'2024-06-26','femenino','2003-11-28',NULL,'62KECYKDBU'),(480,'Roberto','Martinez','roberto.martinez479@upb.edu','Calle 870 #6','12968462',14,'2024-06-26','prefiero no decirlo','2004-10-17',NULL,'TJQXM05ZKS'),(481,'Luis','Perez','luis.perez480@upb.edu','Calle 666 #8','30716204',19,'2024-06-26','femenino','2003-03-12',NULL,'P0DBP51U3C'),(482,'Maria','Rodriguez','maria.rodriguez481@upb.edu','Calle 258 #2','91459091',11,'2024-06-26','masculino','2003-08-16',NULL,'PTFCXYCOY2'),(483,'Marta','Gonzalez','marta.gonzalez482@upb.edu','Calle 275 #26','14939972',27,'2024-06-26','femenino','2001-12-31',NULL,'DKSLSKRG43'),(484,'Marta','Lopez','marta.lopez483@upb.edu','Calle 15 #69','60101143',20,'2024-06-26','masculino','2002-03-28',NULL,'I95W3555A5'),(485,'Ana','Navarro','ana.navarro484@upb.edu','Calle 289 #65','77310941',23,'2024-06-26','masculino','2005-05-26',NULL,'2WHPNGU3PA'),(486,'Carmen','Vargas','carmen.vargas485@upb.edu','Calle 790 #40','06839993',7,'2024-06-26','masculino','2003-10-20',NULL,'CKT20CKJJL'),(487,'Ana','Rojas','ana.rojas486@upb.edu','Calle 92 #88','30506714',8,'2024-06-26','prefiero no decirlo','2005-04-20',NULL,'2B0U3DL7GH'),(488,'Pedro','Mendoza','pedro.mendoza487@upb.edu','Calle 992 #91','96097361',13,'2024-06-26','prefiero no decirlo','2003-09-03',NULL,'OKJSFYD8C3'),(489,'Carmen','Garcia','carmen.garcia488@upb.edu','Calle 540 #78','02593761',28,'2024-06-26','femenino','2004-03-01',NULL,'UJJ6I8PRJX'),(490,'David','Perez','david.perez489@upb.edu','Calle 363 #35','36473349',14,'2024-06-26','femenino','2001-06-21',NULL,'3FWQ306Y6E'),(491,'Elena','Garcia','elena.garcia490@upb.edu','Calle 571 #61','71502560',2,'2024-06-26','femenino','2004-07-25',NULL,'02HUEVF5YO'),(492,'Jorge','Gonzalez','jorge.gonzalez491@upb.edu','Calle 29 #25','51012336',30,'2024-06-26','prefiero no decirlo','2000-02-10',NULL,'22UHE03A7J'),(493,'Sofia','Reyes','sofia.reyes492@upb.edu','Calle 661 #86','14605559',20,'2024-06-26','masculino','2000-09-02',NULL,'Q9VI8U2P20'),(494,'Ana','Gonzalez','ana.gonzalez493@upb.edu','Calle 456 #4','81963638',11,'2024-06-26','prefiero no decirlo','2004-11-27',NULL,'8DV16R4RJE'),(495,'Juan','Lopez','juan.lopez494@upb.edu','Calle 486 #10','93719555',30,'2024-06-26','prefiero no decirlo','2005-09-24',NULL,'42TXF29W8M'),(496,'David','Mendoza','david.mendoza495@upb.edu','Calle 702 #53','74071754',9,'2024-06-26','prefiero no decirlo','2004-09-01',NULL,'2UH0EAI8UU'),(497,'Ana','Castro','ana.castro496@upb.edu','Calle 96 #34','35749215',22,'2024-06-26','masculino','2003-12-05',NULL,'3R16RJDNJZ'),(498,'Pedro','Rojas','pedro.rojas497@upb.edu','Calle 887 #32','46431370',21,'2024-06-26','femenino','2001-09-21',NULL,'A015MXIWOA'),(499,'Maria','Ramirez','maria.ramirez498@upb.edu','Calle 253 #84','48728721',15,'2024-06-26','femenino','2001-12-06',NULL,'K63FIYOUG9'),(500,'David','Perez','david.perez499@upb.edu','Calle 331 #75','46516641',19,'2024-06-26','femenino','2002-12-04',NULL,'UVPLAV49PK');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `estudianteUpdatedAt` BEFORE UPDATE ON `estudiante` FOR EACH ROW begin
	SET NEW.updatedAt = NOW();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscripcion` (
  `curso_id` int NOT NULL,
  `estudiante_id` int NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`curso_id`,`estudiante_id`),
  KEY `estudiante_id` (`estudiante_id`),
  CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`),
  CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
INSERT INTO `inscripcion` VALUES (1,23,'2024-06-26',NULL),(1,243,'2024-06-26',NULL),(1,463,'2024-06-26',NULL),(2,45,'2024-06-26',NULL),(2,265,'2024-06-26',NULL),(2,485,'2024-06-26',NULL),(3,21,'2024-06-26',NULL),(3,67,'2024-06-26',NULL),(3,287,'2024-06-26',NULL),(4,42,'2024-06-26',NULL),(4,89,'2024-06-26',NULL),(4,309,'2024-06-26',NULL),(5,84,'2024-06-26',NULL),(5,111,'2024-06-26',NULL),(5,331,'2024-06-26',NULL),(6,126,'2024-06-26',NULL),(6,133,'2024-06-26',NULL),(6,353,'2024-06-26',NULL),(7,155,'2024-06-26',NULL),(7,168,'2024-06-26',NULL),(7,375,'2024-06-26',NULL),(8,177,'2024-06-26',NULL),(8,210,'2024-06-26',NULL),(8,397,'2024-06-26',NULL),(9,199,'2024-06-26',NULL),(9,252,'2024-06-26',NULL),(9,419,'2024-06-26',NULL),(10,221,'2024-06-26',NULL),(10,294,'2024-06-26',NULL),(10,441,'2024-06-26',NULL);
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inscripcionUpdatedAt` BEFORE UPDATE ON `inscripcion` FOR EACH ROW begin
	SET NEW.updatedAt = NOW();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `creditos` int DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Calculo1',3,NULL,'2020-01-01'),(2,'Historia',3,NULL,'2020-01-01'),(3,'Literatura',3,NULL,'2020-01-01'),(4,'Agua1',3,NULL,'2020-01-01'),(5,'Inglés1',3,NULL,'2020-01-01'),(6,'Programación1',4,NULL,'2020-01-01'),(7,'Economía1',3,NULL,'2020-01-01'),(8,'Arte1',4,NULL,'2020-01-01'),(9,'Física1',4,NULL,'2020-01-01'),(10,'Química1',4,NULL,'2020-01-01'),(11,'Biología1',4,NULL,'2020-01-01'),(12,'Geografía1',3,NULL,'2020-01-01'),(13,'Filosofía1',4,NULL,'2020-01-01'),(14,'Psicología1',4,NULL,'2020-01-01'),(15,'Sociología1',4,NULL,'2020-01-01'),(16,'Álgebra1',4,NULL,'2020-01-01'),(17,'Cálculo2',3,NULL,'2020-01-01'),(18,'Estadística1',4,NULL,'2020-01-01'),(19,'Dibujo1',3,NULL,'2020-01-01'),(20,'Música1',4,NULL,'2020-01-01'),(21,'Teatro1',4,NULL,'2020-01-01'),(22,'Diseño Gráfico',4,NULL,'2020-01-01'),(23,'Nutrición',3,NULL,'2020-01-01'),(24,'Derecho Administrativo',3,NULL,'2020-01-01'),(25,'Administración de Empresas1',4,NULL,'2020-01-01'),(26,'Marketing1',4,NULL,'2020-01-01'),(27,'Comunicación1',4,NULL,'2020-01-01'),(28,'Relaciones Internacionales1',3,NULL,'2020-01-01'),(29,'Turismo1',4,NULL,'2020-01-01'),(30,'Gastronomía',3,NULL,'2020-01-01'),(31,'Ing. Civil1',4,NULL,'2020-01-01'),(32,'Ing. Mecánica1',3,NULL,'2020-01-01'),(33,'Ing. Eléctrica1',4,NULL,'2020-01-01'),(34,'Ing. Industrial1',4,NULL,'2020-01-01'),(35,'Ing. Química1',3,NULL,'2020-01-01'),(36,'Ing. de Sistemas1',3,NULL,'2020-01-01'),(37,'Arquitectura',3,NULL,'2020-01-01'),(38,'Psiquiatría',4,NULL,'2020-01-01'),(39,'Pediatría1',4,NULL,'2020-01-01'),(40,'Oftalmología1',3,NULL,'2020-01-01'),(41,'Cardiología1',4,NULL,'2020-01-01'),(42,'Neurología1',3,NULL,'2020-01-01'),(43,'Odontología1',4,NULL,'2020-01-01'),(44,'Veterinaria1',3,NULL,'2020-01-01'),(45,'Bellas Artes1',4,NULL,'2020-01-01'),(46,'Artes Marciales1',3,NULL,'2020-01-01'),(47,'Higiene y Seguridad1',3,NULL,'2020-01-01'),(48,'Teología1',4,NULL,'2020-01-01'),(49,'Antropología1',3,NULL,'2020-01-01'),(50,'Fotografía1',4,NULL,'2020-01-01'),(51,'Biografía1',4,NULL,'2020-01-01'),(52,'Psicoanalis',4,NULL,'2020-01-01'),(53,'Programación Web',4,NULL,'2020-01-01'),(54,'Inteligencia Artificial',4,NULL,'2020-01-01'),(55,'Realidad Aumentada',3,NULL,'2020-01-01'),(56,'Blockchain',4,NULL,'2020-01-01'),(57,'Criptografía',3,NULL,'2020-01-01'),(58,'Ciencia de Datos',4,NULL,'2020-01-01'),(59,'Machine Learning',4,NULL,'2020-01-01'),(60,'Deep Learning',3,NULL,'2020-01-01'),(61,'Redes Neuronales',4,NULL,'2020-01-01'),(62,'Desarrollo de Videojuegos',4,NULL,'2020-01-01'),(63,'Diseño UX/UI',3,NULL,'2020-01-01'),(64,'Marketing Digital',3,NULL,'2020-01-01'),(65,'SEO y SEM',4,NULL,'2020-01-01'),(66,'Redes Sociales',4,NULL,'2020-01-01'),(67,'Publicidad',3,NULL,'2020-01-01'),(68,'Periodismo',4,NULL,'2020-01-01'),(69,'Cine y Televisión',4,NULL,'2020-01-01'),(70,'Producción Audiovisual',3,NULL,'2020-01-01'),(71,'Animación 3D',3,NULL,'2020-01-01'),(72,'Diseño Industrial',3,NULL,'2020-01-01'),(73,'Ingeniería de Software',3,NULL,'2020-01-01'),(74,'Gestión de Proyectos',3,NULL,'2020-01-01'),(75,'Finanzas1',3,NULL,'2020-01-01'),(76,'Contabilidad1',4,NULL,'2020-01-01'),(77,'Economía Internacional',4,NULL,'2020-01-01'),(78,'Ciencias Políticas',4,NULL,'2020-01-01'),(79,'Derechos Humanos',4,NULL,'2020-01-01'),(80,'Medio Ambiente1',3,NULL,'2020-01-01'),(81,'Desarrollo Sostenible',3,NULL,'2020-01-01'),(82,'Bioquímica',4,NULL,'2020-01-01'),(83,'Geología',3,NULL,'2020-01-01'),(84,'Oceanografía',4,NULL,'2020-01-01'),(85,'Meteorología',3,NULL,'2020-01-01'),(86,'Astrofísica',3,NULL,'2020-01-01'),(87,'Cosmología',4,NULL,'2020-01-01'),(88,'Robótica',4,NULL,'2020-01-01'),(89,'Inteligencia Artificial',3,NULL,'2020-01-01'),(90,'Nanotecnología',4,NULL,'2020-01-01'),(91,'Biomedicina',3,NULL,'2020-01-01'),(92,'Genética',4,NULL,'2020-01-01'),(93,'Neurociencia',4,NULL,'2020-01-01'),(94,'Inmunología',3,NULL,'2020-01-01'),(95,'Microbiología',4,NULL,'2020-01-01'),(96,'Farmacología',4,NULL,'2020-01-01'),(97,'Toxicología',3,NULL,'2020-01-01'),(98,'Medicina Forense',3,NULL,'2020-01-01'),(99,'Psicología Forense',3,NULL,'2020-01-01'),(100,'Ciencias Forenses',4,NULL,'2020-01-01'),(101,'Criminología',3,NULL,'2020-01-01'),(102,'Investigación Criminal',3,NULL,'2020-01-01'),(103,'Tecnología Criminalística',3,NULL,'2020-01-01'),(104,'Teoría del Delito',3,NULL,'2020-01-01'),(105,'Prevención del Delito',4,NULL,'2020-01-01'),(106,'Justicia Penal',3,NULL,'2020-01-01');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `materiaUpdatedAt` BEFORE UPDATE ON `materia` FOR EACH ROW begin
	SET NEW.updatedAt = NOW();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `departamento` int DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `FechaNacimiento` date DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `telefono` (`telefono`),
  KEY `departamento` (`departamento`),
  CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (401,'Juan','González','juan@example.com','12345',1,'2024-06-25','1980-05-15','Masculino',NULL),(402,'María','López','maria@example.com','12356',2,'2024-06-25','1975-09-22','Femenino',NULL),(403,'Pedro','Martínez','pedro@example.com','555-9012',3,'2024-06-25','1982-11-30','Masculino',NULL),(404,'Ana','Pérez','ana@example.com','555-3456',4,'2024-06-25','1978-07-10','Femenino',NULL),(405,'Luis','Rodríguez','luis@example.com','555-7890',5,'2024-06-25','1985-03-25','Masculino',NULL),(406,'Laura','Sánchez','laura@example.com','555-2345',6,'2024-06-25','1987-02-18','Femenino',NULL),(407,'Carlos','Gómez','carlos@example.com','555-6789',7,'2024-06-25','1984-08-04','Masculino',NULL),(408,'Sofía','Díaz','sofia@example.com','555-0123',8,'2024-06-25','1983-06-12','Femenino',NULL),(409,'Javier','Hernández','javier@example.com','555-4567',9,'2024-06-25','1981-04-20','Masculino',NULL),(410,'Gabriela','Torres','gabriela@example.com','555-8901',10,'2024-06-25','1979-12-08','Femenino',NULL),(411,'Alejandro','Ruiz','alejandro@example.com','5525-1234',1,'2024-06-25','1986-10-05','Masculino',NULL),(412,'Paula','Ramírez','paula@example.com','5525-5678',2,'2024-06-25','1977-01-17','Femenino',NULL),(413,'Daniel','Flores','daniel@example.com','5525-9012',3,'2024-06-25','1980-09-03','Masculino',NULL),(414,'Verónica','Gutiérrez','veronica@example.com','5525-3456',4,'2024-06-25','1976-11-28','Femenino',NULL),(415,'Martín','Jiménez','martin@example.com','2555-71890',5,'2024-06-25','1989-07-14','Masculino',NULL),(416,'Valeria','Núñez','valeria@example.com','2555-2345',6,'2024-06-25','1990-04-02','Femenino',NULL),(417,'Roberto','Santos','roberto@example.com','2555-6789',7,'2024-06-25','1982-12-19','Masculino',NULL),(418,'Adriana','Mendoza','adriana@example.com','5525-0123',8,'2024-06-25','1984-08-21','Femenino',NULL),(419,'Raúl','Vargas','raul@example.com','555-45267',9,'2024-06-25','1978-03-07','Masculino',NULL),(420,'Natalia','Cabrera','natalia@example.com','5525-8901',10,'2024-06-25','1983-05-29','Femenino',NULL),(421,'Fernando','Ortega','fernando@example.com','5255-12324',1,'2024-06-25','1981-02-13','Masculino',NULL),(422,'Elena','Martell','elena@example.com','555-562728',2,'2024-06-25','1987-10-10','Femenino',NULL),(423,'José','Silva','jose@example.com','555-92012',3,'2024-06-25','1979-08-26','Masculino',NULL),(424,'Susana','Luna','susana@example.com','5552-3456',4,'2024-06-25','1985-06-04','Femenino',NULL),(425,'Miguel','Navarro','miguel@example.com','5255-783190',5,'2024-06-25','1986-04-15','Masculino',NULL),(426,'Paola','Valencia','paola@example.com','555-22345',6,'2024-06-25','1982-09-23','Femenino',NULL),(427,'Andrés','Paz','andres@example.com','555-67829',7,'2024-06-25','1980-01-30','Masculino',NULL),(428,'Carolina','Salazar','carolina@example.com','2555-0123',8,'2024-06-25','1989-11-11','Femenino',NULL),(429,'Roberto','Mora','roberto.m@example.com','555-24533367',9,'2024-06-25','1983-07-27','Masculino',NULL),(430,'Valentina','León','valentina@example.com','5552-8901',10,'2024-06-25','1984-03-09','Femenino',NULL),(431,'Diego','Flores','diego@example.com','555-12324',1,'2024-06-25','1977-09-18','Masculino',NULL),(432,'Camila','García','camila@example.com','555-56278',2,'2024-06-25','1978-11-14','Femenino',NULL),(433,'Felipe','Herrera','felipe@example.com','555-90212',3,'2024-06-25','1985-01-25','Masculino',NULL),(434,'Sara','Torres','sara@example.com','555-34526',4,'2024-06-25','1986-03-31','Femenino',NULL),(435,'Roberto','López','roberto.l@example.com','5255-7890',5,'2024-06-25','1980-07-07','Masculino',NULL),(436,'Julia','Cruz','julia@example.com','555-23425',6,'2024-06-25','1983-12-16','Femenino',NULL),(437,'Gonzalo','Aguilar','gonzalo@example.com','5255-6789',7,'2024-06-25','1989-02-24','Masculino',NULL),(438,'Lucía','Fuentes','lucia@example.com','555-01223',8,'2024-06-25','1982-06-28','Femenino',NULL),(439,'Eduardo','Castro','eduardo@example.com','555-24567',9,'2024-06-25','1979-04-03','Masculino',NULL),(440,'Alicia','Rojas','alicia@example.com','555-89021',10,'2024-06-25','1981-08-12','Femenino',NULL),(441,'Roberto','Morales','roberto.m@example.com','52525-1234',1,'2024-06-25','1984-10-29','Masculino',NULL),(442,'Gabriela','Muñoz','gabriela@example.com','555-52678',2,'2024-06-25','1988-12-07','Femenino',NULL),(443,'Martín','Fernández','martin@example.com','555-90123212',3,'2024-06-25','1982-02-19','Masculino',NULL),(444,'Florencia','Pérez','florencia@example.com','555-32456',4,'2024-06-25','1987-01-11','Femenino',NULL),(445,'Juan','Gómez','juan.g@example.com','555-71218920',5,'2024-06-25','1975-03-26','Masculino',NULL),(446,'Carla','Jiménez','carla@example.com','555-23212245',6,'2024-06-25','1986-09-14','Femenino',NULL),(447,'Andrea','Hernández','andrea@example.com','555542-6789',7,'2024-06-25','1983-07-22','Masculino',NULL),(448,'Mario','Sánchez','mario@example.com','55875-01223',8,'2024-06-25','1984-05-08','Masculino',NULL),(449,'Laura','Martínez','laura.m@example.com','55785-42567',9,'2024-06-25','1981-11-30','Femenino',NULL),(450,'Jorge','Castillo','jorge@example.com','55785-89012',10,'2024-06-25','1980-08-17','Masculino',NULL),(451,'David','Ruiz','david.ruiz0@ieee.edu','45349608',5,'2024-06-25','1985-05-10','masculino',NULL),(452,'Sofia','Martinez','sofia.martinez1@ieee.edu','99748338',3,'2024-06-25','1988-03-22','femenino',NULL),(453,'Carlos','Dominguez','carlos.dominguez2@ieee.edu','89858984',8,'2024-06-25','1982-07-14','masculino',NULL),(454,'Miguel','Dominguez','miguel.dominguez3@ieee.edu','61369533',4,'2024-06-25','1990-01-30','masculino',NULL),(455,'Isabel','Vega','isabel.vega4@ieee.edu','41324627',2,'2024-06-25','1987-09-05','femenino',NULL),(456,'David','Ruiz','david.ruiz5@ieee.edu','85363111',7,'2024-06-25','1989-11-21','masculino',NULL),(457,'Marta','Morales','marta.morales6@ieee.edu','15624758',1,'2024-06-25','1983-06-12','femenino',NULL),(458,'Marta','Ruiz','marta.ruiz7@ieee.edu','55631563',10,'2024-06-25','1991-08-19','femenino',NULL),(459,'Andres','Castro','andres.castro8@ieee.edu','40674879',6,'2024-06-25','1980-12-01','masculino',NULL),(460,'Isabel','Sanchez','isabel.sanchez9@ieee.edu','77092042',9,'2024-06-25','1986-04-25','femenino',NULL),(461,'Roberto','Sanchez','roberto.sanchez10@ieee.edu','76636697',5,'2024-06-25','1984-02-18','masculino',NULL),(462,'Juan','Lopez','juan.lopez11@ieee.edu','46716877',3,'2024-06-25','1981-03-15','masculino',NULL),(463,'Jorge','Martinez','jorge.martinez12@ieee.edu','87410742',7,'2024-06-25','1988-07-28','masculino',NULL),(464,'David','Guerrero','david.guerrero13@ieee.edu','95593842',6,'2024-06-25','1982-11-11','masculino',NULL),(465,'Carlos','Fernandez','carlos.fernandez14@ieee.edu','58738239',8,'2024-06-25','1989-05-02','masculino',NULL),(466,'Roberto','Morales','roberto.morales15@ieee.edu','93984440',1,'2024-06-25','1985-10-08','masculino',NULL),(467,'Juan','Ramos','juan.ramos16@ieee.edu','45549649',2,'2024-06-25','1990-12-17','masculino',NULL),(468,'Jorge','Fernandez','jorge.fernandez17@ieee.edu','03234049',9,'2024-06-25','1984-03-23','masculino',NULL),(469,'Luis','Ramos','luis.ramos18@ieee.edu','31382683',10,'2024-06-25','1987-08-16','masculino',NULL),(470,'Carlos','Perez','carlos.perez19@ieee.edu','52768019',4,'2024-06-25','1986-04-04','masculino',NULL),(471,'Angela','Castro','angela.castro20@ieee.edu','82284296',3,'2024-06-25','1983-06-30','femenino',NULL),(472,'Andres','Ramos','andres.ramos21@ieee.edu','47755924',8,'2024-06-25','1985-09-11','masculino',NULL),(473,'Sofia','Castro','sofia.castro22@ieee.edu','98997978',6,'2024-06-25','1991-02-13','femenino',NULL),(474,'Lucia','Guerrero','lucia.guerrero23@ieee.edu','99567755',10,'2024-06-25','1983-10-30','femenino',NULL),(475,'David','Ramos','david.ramos24@ieee.edu','26171496',2,'2024-06-25','1981-12-19','masculino',NULL),(476,'Andres','Guerrero','andres.guerrero25@ieee.edu','02759730',5,'2024-06-25','1980-04-26','masculino',NULL),(477,'Jorge','Morales','jorge.morales26@ieee.edu','65164245',7,'2024-06-25','1990-01-07','masculino',NULL),(478,'Angela','Cruz','angela.cruz27@ieee.edu','46095048',9,'2024-06-25','1982-08-05','femenino',NULL),(479,'Maria','Lopez','maria.lopez28@ieee.edu','86839008',1,'2024-06-25','1984-11-13','femenino',NULL),(480,'Andres','Dominguez','andres.dominguez29@ieee.edu','56491110',4,'2024-06-25','1985-07-08','masculino',NULL),(481,'Ana','Torres','ana.torres30@ieee.edu','31296694',8,'2024-06-25','1989-09-16','femenino',NULL),(482,'Carlos','Fernandez','carlos.fernandez31@ieee.edu','28707267',6,'2024-06-25','1981-05-21','masculino',NULL),(483,'Carlos','Torres','carlos.torres32@ieee.edu','11529371',10,'2024-06-25','1983-07-27','masculino',NULL),(484,'Lucia','Gomez','lucia.gomez33@ieee.edu','03579529',5,'2024-06-25','1990-06-03','femenino',NULL),(485,'Laura','Rodriguez','laura.rodriguez34@ieee.edu','73660427',2,'2024-06-25','1986-10-28','femenino',NULL),(486,'Luis','Perez','luis.perez35@ieee.edu','22042205',7,'2024-06-25','1987-11-09','masculino',NULL),(487,'Pedro','Torres','pedro.torres36@ieee.edu','11377813',3,'2024-06-25','1982-02-06','masculino',NULL),(488,'Sofia','Ramirez','sofia.ramirez37@ieee.edu','12668908',9,'2024-06-25','1991-05-18','femenino',NULL),(489,'Jorge','Garcia','jorge.garcia38@ieee.edu','10049467',10,'2024-06-25','1985-08-23','masculino',NULL),(490,'David','Cruz','david.cruz39@ieee.edu','02883884',4,'2024-06-25','1989-02-02','masculino',NULL),(491,'Luis','Dominguez','luis.dominguez40@ieee.edu','31963109',6,'2024-06-25','1982-12-09','masculino',NULL),(492,'Jorge','Fernandez','jorge.fernandez41@ieee.edu','08809594',1,'2024-06-25','1980-03-19','masculino',NULL),(493,'Ana','Guerrero','ana.guerrero42@ieee.edu','07740830',3,'2024-06-25','1987-11-24','femenino',NULL),(494,'Andres','Gomez','andres.gomez43@ieee.edu','70932999',2,'2024-06-25','1984-10-12','masculino',NULL),(495,'Miguel','Ortiz','miguel.ortiz44@ieee.edu','51634179',5,'2024-06-25','1983-04-30','masculino',NULL),(496,'Juan','Torres','juan.torres45@ieee.edu','50251454',7,'2024-06-25','1981-11-18','masculino',NULL),(497,'Juan','Ramos','juan.ramos46@ieee.edu','21094454',8,'2024-06-25','1988-06-06','masculino',NULL),(498,'Angela','Castro','angela.castro47@ieee.edu','98287824',10,'2024-06-25','1989-03-12','femenino',NULL),(499,'Andres','Ramos','andres.ramos48@ieee.edu','59548733',4,'2024-06-25','1986-09-29','masculino',NULL),(500,'Luis','Ruiz','luis.ruiz49@ieee.edu','13055042',9,'2024-06-25','1980-07-04','masculino',NULL),(501,'Luis','Torres','luis.torres50@upb.edu','02430660',1,'2024-06-25','1988-01-16','masculino',NULL);
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `profesorUpdatedAt` BEFORE UPDATE ON `profesor` FOR EACH ROW begin
	SET NEW.updatedAt = NOW();
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `createdAt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,'La Paz','2024-06-25'),(2,'Cochabamba','2024-06-25'),(3,'Santa Cruz','2024-06-25');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'upbPF'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddEstudiantes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddEstudiantes`(
in name varchar(255),
in lastname varchar(255),
in born date,
in email varchar(255),
in phone varchar(20),
in address text,
in matricule varchar(50),
in gender varchar(50),
in career int
)
begin
	declare exit handler for SQLEXCEPTION rollback;
	
	
	start transaction;
	
	INSERT INTO estudiante (nombre,apellido,FechaNacimiento ,correo,telefono,direccion,matricula,sexo ,carrera_id,createdAt,updatedAt)
	values (name,lastname,born,email,phone,address,matricule,gender, career,CURDATE(),null);
	
	commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddProfesores` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddProfesores`(
in name varchar(255),
in lastname varchar(255),
in email varchar(255),
in phone varchar(20),
in dept int,
in gender varchar(50),
in born date
)
begin
	declare exit handler for SQLEXCEPTION
	begin
		rollback;
	end;
	
	start transaction;
	
	INSERT INTO profesor (nombre,apellido ,correo,telefono,departamento,sexo,FechaNacimiento,createdAt,updatedAt)
	values (name,lastname,email,phone,dept,gender,born,curdate(),null);
	
	commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertarEstudiante` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertarEstudiante`(
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_correo VARCHAR(100),
    IN p_direccion VARCHAR(20),
    IN p_telefono VARCHAR(100),
    IN p_carrera_id INT,
    IN p_sexo VARCHAR(50),
    IN p_FechaNacimiento DATE
)
BEGIN
    DECLARE exit handler for sqLException
    rollback;

    START TRANSACTION;

    INSERT INTO Estudiante(nombre, apellido, correo, direccion, telefono, carrera_id,sexo,FechaNacimiento, createdAt)
    VALUES (p_nombre, p_apellido, p_correo, p_direccion, p_telefono, p_carrera_id,p_sexo,p_FechaNacimiento, CURDATE());

    COMMIT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26  1:44:20
