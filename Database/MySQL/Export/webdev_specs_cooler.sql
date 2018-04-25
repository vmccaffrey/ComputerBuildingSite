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
-- Table structure for table `specs_cooler`
--

DROP TABLE IF EXISTS `specs_cooler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_cooler` (
  `model` varchar(32) NOT NULL,
  `coolerType` varchar(32) NOT NULL,
  `fanRPM` varchar(32) DEFAULT NULL,
  `noiseLevel` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_cooler`
--

LOCK TABLES `specs_cooler` WRITE;
/*!40000 ALTER TABLE `specs_cooler` DISABLE KEYS */;
INSERT INTO `specs_cooler` VALUES ('CAPTAIN120EX','Liquid Cooling System','500 +/- 200 - 1800 +/- 10% RPM','?'),('CW-9060006-WW','CPU Block','1700 RPM +/- 10%','?'),('ELC-LMR240-BS','Liquid Cooling System','500 - 1200/1600/2000 RPM +/- 10%','?'),('ELC-LTTR360-TBP','Liquid Cooling System','500 - 2300 RPM','?'),('ETS-T40F-BK','Fan & Heatsinks',NULL,'?'),('GAMMAXX 400','Fan & Heatsinks','500 - 2300 RPM','?'),('H100i V2','Liquid Cooling System','2435 +/- 10% RPM','?'),('NEPTWIN V2.0','Fan & Heatsinks','1700 RPM +/- 10%','?'),('NH-D15','Fan & Heatsinks','500 - 2300 RPM','?'),('PH-GB1080FE_CBKLD_01','VGA Block & Cooler','1700 RPM +/- 10%','?'),('R4-L2R-20AC-GP','Case Fan','1700 RPM +/- 10%','?'),('ROCF-11003','Case Fan','500 +/- 200 - 1800 +/- 10% RPM','?'),('RR-212E-20PK-R2','Fan & Heatsinks','500 - 1200/1600/2000 RPM +/- 10%','?'),('RR-T4-18PK-R1','Fan & Heatsinks','500 - 2300 RPM','?'),('RR-V8VC-16PR-R1','Fan & Heatsinks','500 - 2300 RPM','?');
/*!40000 ALTER TABLE `specs_cooler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25 15:31:48
