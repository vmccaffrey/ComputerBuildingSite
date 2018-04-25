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
-- Table structure for table `specs_motherboard`
--

DROP TABLE IF EXISTS `specs_motherboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_motherboard` (
  `model` varchar(32) NOT NULL,
  `cpuSocket` varchar(32) NOT NULL,
  `formFactor` varchar(32) NOT NULL,
  `ramSlots` varchar(32) NOT NULL,
  `maxRAM` varchar(8) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_motherboard`
--

LOCK TABLES `specs_motherboard` WRITE;
/*!40000 ALTER TABLE `specs_motherboard` DISABLE KEYS */;
INSERT INTO `specs_motherboard` VALUES ('AB350 Gaming-ITX/ac','AM4','Mini ITX','2×288pin','32GB*'),('AB350M-DS3H','AM4','Micro ATX','4×288pin','64GB'),('B350 TOMAHAWK','AM4','ATX','4×288pin','64GB'),('B360 GAMING PLUS','LGA 1151 (300 Series)','ATX','4×288pin','64GB'),('B360M DS3H','LGA 1151 (300 Series)','Micro ATX','4×288pin','64GB'),('B360M-ITX/ac','LGA 1151 (300 Series)','Mini ITX','2×288pin','32GB'),('Crosshair VII Hero (Wi-Fi)','AM4','ATX','4×288pin','64GB'),('GA-AB350-GAMING 3 (rev. 1.0)','AM4','ATX','4×288pin','64GB'),('STRIX B350-F GAMING','AM4','ATX','4×288pin','64GB'),('STRIX B360-G GAMING','LGA 1151 (300 Series)','Micro ATX','4×288pin','64GB'),('X470 AORUS GAMING 7 WIFI','AM4','ATX','4×288pin','64GB'),('X470 GAMING M7 AC','AM4','ATX','4×288pin','64GB'),('X470 Master SLI/AC','AM4','ATX','4×288pin','64GB'),('Z270 KILLER SLI/AC','LGA 1151','ATX','4×288pin','64GB'),('Z370 SLI PLUS','LGA 1151 (300 Series)','ATX','4×288pin','64GB'),('Z370 Taichi','LGA 1151 (300 Series)','ATX','4×288pin','64GB');
/*!40000 ALTER TABLE `specs_motherboard` ENABLE KEYS */;
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
