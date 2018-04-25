-- MySQL dump 10.13  Distrib 5.7.22, for Win64 (x86_64)
--
-- Host: localhost    Database: webdev
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `specs_psu`
--

DROP TABLE IF EXISTS `specs_psu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_psu` (
  `model` varchar(32) NOT NULL,
  `dimensions` varchar(32) DEFAULT NULL,
  `efficiency` varchar(32) DEFAULT NULL,
  `watts` varchar(32) NOT NULL,
  `modular` varchar(32) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_psu`
--

LOCK TABLES `specs_psu` WRITE;
/*!40000 ALTER TABLE `specs_psu` DISABLE KEYS */;
INSERT INTO `specs_psu` VALUES ('100-BT-0450-K1','5.91\" x 5.59\" x 3.39\"','85% Typical','450W','Non-Modular'),('CAPSTONE 550M','5.91\" x 3.35\" x 6.42\"','> 87%, Up to 90%','550W','Semi-Modular'),('CX450','3.39\" x 5.91\" x 5.51\"','Up to 85%','450W','Non-Modular'),('CX550M (CP-9020102-NA)','5.91\" x 3.39\" x 5.51\"','Up to 85%','550W','Semi-Modular'),('CX650M (CP-9020103-NA)','3.39\" x 5.51\" x 5.91\"','Up to 85%','650W','Semi-Modular'),('HIVE-750S','3.36\" x 5.91\" x 6.30\"','> 85%','750W','Full Modular'),('RM750x (CP-9020179-NA)','6.30\" x 5.91\" x 3.39\"','80 PLUS GOLD Certified','750W','Full Modular'),('VTE600','5.91\" x 3.35\" x 6.42\"','up to 87%','600W','Semi-Modular');
/*!40000 ALTER TABLE `specs_psu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25 15:31:50
