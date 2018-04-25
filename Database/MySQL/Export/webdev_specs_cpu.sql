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
-- Table structure for table `specs_cpu`
--

DROP TABLE IF EXISTS `specs_cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_cpu` (
  `model` varchar(32) NOT NULL,
  `cpuSocket` varchar(32) NOT NULL,
  `coreName` varchar(32) NOT NULL,
  `coreCount` varchar(16) NOT NULL,
  `threadCount` varchar(16) NOT NULL,
  `speed` varchar(16) NOT NULL,
  `TDP` varchar(8) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_cpu`
--

LOCK TABLES `specs_cpu` WRITE;
/*!40000 ALTER TABLE `specs_cpu` DISABLE KEYS */;
INSERT INTO `specs_cpu` VALUES ('BX80673I77820X','LGA 2066','Skylake X','8-Core','16','3.6 GHz','140W'),('BX80673I97980X','LGA 2066','Skylake X','18-Core','36','2.6 GHz','165W'),('BX80677I37100','LGA 1151','Kaby Lake','Dual-Core','4','3.9 GHz','51W'),('BX80677I57500','LGA 1151','Kaby Lake','Quad-Core','4','3.4 GHz','65W'),('BX80677I57600K','LGA 1151','Kaby Lake','Quad-Core','4','3.8 GHz','91W'),('BX80677I77700','LGA 1151','Kaby Lake','Quad-Core','8','3.6 GHz','65W'),('BX80677I77700K','LGA 1151','Kaby Lake','Quad-Core','8','4.2 GHz','91W'),('BX80684I38100','LGA 1151 (300 Series)','Coffee Lake','Quad-Core','4','3.6 GHz','65W'),('BX80684I58600K','LGA 1151 (300 Series)','Coffee Lake','6-Core','6','3.6 GHz','95W'),('BX80684I78700K','LGA 1151 (300 Series)','Coffee Lake','6-Core','12','3.7 GHz','95W'),('YD1200BBAEBOX','Socket AM4','Summit Ridge','Quad-Core','4','3.1 GHz','65W'),('YD160XBCAEWOF','Socket AM4','Summit Ridge','6-Core','12','3.6 GHz','95W'),('YD1700BBAEBOX','Socket AM4','Summit Ridge','8-Core','16','3.0 GHz','65W'),('YD170XBCAEWOF','Socket AM4','Summit Ridge','8-Core','16','3.4 GHz','95W'),('YD180XBCAEWOF','Socket AM4','Summit Ridge','8-Core','16','3.6 GHz','95W');
/*!40000 ALTER TABLE `specs_cpu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-25 15:31:51
