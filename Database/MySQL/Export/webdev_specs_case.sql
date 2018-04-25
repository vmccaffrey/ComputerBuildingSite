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
-- Table structure for table `specs_case`
--

DROP TABLE IF EXISTS `specs_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_case` (
  `model` varchar(32) NOT NULL,
  `bayHDD` varchar(16) DEFAULT NULL,
  `baySSD` varchar(16) DEFAULT NULL,
  `expansionSlots` varchar(8) DEFAULT NULL,
  `dimensions` varchar(32) DEFAULT NULL,
  `moboCompatibility` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_case`
--

LOCK TABLES `specs_case` WRITE;
/*!40000 ALTER TABLE `specs_case` DISABLE KEYS */;
INSERT INTO `specs_case` VALUES ('BARONKASE LIQUID','2 x 3.5\"/2.5\"','3','5','18.50\" x 8.46\" x 16.65\"','Micro ATX / ATX /  Mini-ITX'),('BLACKHAWK-ULTRA','10','5','10','25.00\" x 9.45\" x 25.99\"','ATX / SSI CEB / XL-ATX / E-ATX / HPTX'),('CA-S340MB-GR','2 + 1','2 + 1','7','17.52\" x 7.87\" x 17.00\"','Micro ATX / ATX / ITX'),('CA-S340W-B1','2 + 1','2 + 1','7','18.66\" x 7.99\" x 17.01\"','Micro ATX / ATX /  Mini-ITX'),('CA-S340W-W1','2 + 1','2 + 1','7','17.51\" x 7.87\" x 17.00\"','Micro ATX / ATX / ITX'),('CC-9011110-WW','2','2','7','20.16\" x 9.21\" x 18.90\"','Micro ATX / ATX (Up to 272mm) /  Mini-ITX'),('CC-9011120WW','3','2','7','20.31\" x 9.13\" x 19.49\"','Micro ATX / ATX /  Mini-ITX'),('CC-9011129-WW','2','3','7','18.27\" x 8.66\" x 17.32\"','Micro ATX / ATX /  Mini-ITX'),('CHALLENGER','5','2 + 1','7','17.08\" x 7.48\" x 18.50\"','Micro ATX / ATX'),('CULLINAN','2 (0)','3 (6)','7','19.57\" x 8.54\" x 18.78\"','Micro ATX / ATX / Extended ATX'),('DIY-Model X-RGB','2','2 (SSD)','7','18.12\" x 7.84\" x 16.92\"','Micro ATX / ATX'),('Gamemax-W','4','5','7','21.00\" x 9.00\" x 20.00\"','Micro ATX / ATX /  Mini-ITX'),('MCW-L3S3-KGNN-00','2','1','4','15.00\" x 8.23\" x 17.96\"','Micro-ATX / Mini-ITX'),('PH-EC300PTG_BR','2 (2 included)','2 (1 included)','7','17.70\" x 7.80\" x 15.70\"','Micro ATX / ATX / Mini ITX / E-ATX (E-ATX up to 275mm width)'),('PH-ES614PTG_SWT','6','4 (2x included)','8','21.10\" x 9.25\" x 21.70\"','Micro ATX / ATX / Mini ITX / E-ATX / SSICEB'),('Skyline-06-WB','3','3 ( SSD )','8','21.60\" x 9.00\" x 21.84\"','Micro ATX / ATX'),('Vanguard-RGB','3','6 (SSD)','8','20.20\" x 9.60\" x 19.78\"','Micro ATX / ATX /  Mini-ITX');
/*!40000 ALTER TABLE `specs_case` ENABLE KEYS */;
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
