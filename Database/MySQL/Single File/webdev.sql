-- MySQL dump 10.13  Distrib 5.7.21, for Win64 (x86_64)
--
-- Host: localhost    Database: webdev
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `access_level`
--

DROP TABLE IF EXISTS `access_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_level` (
  `accessID` int(1) NOT NULL AUTO_INCREMENT,
  `accessName` varchar(16) NOT NULL,
  PRIMARY KEY (`accessID`),
  UNIQUE KEY `accessName` (`accessName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_level`
--

LOCK TABLES `access_level` WRITE;
/*!40000 ALTER TABLE `access_level` DISABLE KEYS */;
INSERT INTO `access_level` VALUES (2,'Administrator'),(6,'Banned'),(3,'Moderator'),(1,'Owner'),(5,'Restricted'),(4,'User');
/*!40000 ALTER TABLE `access_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `builds`
--

DROP TABLE IF EXISTS `builds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `builds` (
  `buildID` int(16) NOT NULL,
  `buildURL` varchar(100) NOT NULL,
  `buildBody` text NOT NULL,
  PRIMARY KEY (`buildID`),
  UNIQUE KEY `buildURL` (`buildURL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `builds`
--

LOCK TABLES `builds` WRITE;
/*!40000 ALTER TABLE `builds` DISABLE KEYS */;
/*!40000 ALTER TABLE `builds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component` (
  `model` varchar(32) NOT NULL,
  `componentType` int(2) DEFAULT NULL,
  `brand` varchar(32) NOT NULL,
  `series` varchar(32) DEFAULT NULL,
  `componentName` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component`
--

LOCK TABLES `component` WRITE;
/*!40000 ALTER TABLE `component` DISABLE KEYS */;
/*!40000 ALTER TABLE `component` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `component_type`
--

DROP TABLE IF EXISTS `component_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component_type` (
  `typeID` int(2) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(32) NOT NULL,
  PRIMARY KEY (`typeID`),
  UNIQUE KEY `typeName` (`typeName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `component_type`
--

LOCK TABLES `component_type` WRITE;
/*!40000 ALTER TABLE `component_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `component_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `forumID` int(16) NOT NULL AUTO_INCREMENT,
  `forumTopic` varchar(32) NOT NULL,
  `forumName` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`forumID`),
  UNIQUE KEY `forumName` (`forumName`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1,'Hardware','CPUs'),(2,'Hardware','CPU Coolers'),(3,'Hardware','Motherboards'),(4,'Hardware','Memory'),(5,'Hardware','Storage'),(6,'Hardware','Video Cards'),(7,'Hardware','Power Supplies'),(8,'Hardware','Cases'),(9,'General','System Builds'),(10,'General','General Discussion');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guides`
--

DROP TABLE IF EXISTS `guides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guides` (
  `guideID` int(16) NOT NULL,
  `guideURL` varchar(100) NOT NULL,
  `guideBody` text NOT NULL,
  PRIMARY KEY (`guideID`),
  UNIQUE KEY `guideURL` (`guideURL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guides`
--

LOCK TABLES `guides` WRITE;
/*!40000 ALTER TABLE `guides` DISABLE KEYS */;
/*!40000 ALTER TABLE `guides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `postID` int(32) NOT NULL AUTO_INCREMENT,
  `parentThread` int(16) DEFAULT NULL,
  `postCreator` int(16) DEFAULT NULL,
  `postMessage` varchar(10000) NOT NULL,
  `postDate` datetime NOT NULL,
  PRIMARY KEY (`postID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

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
  `height` varchar(8) DEFAULT NULL,
  `width` varchar(8) DEFAULT NULL,
  `depth` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_case`
--

LOCK TABLES `specs_case` WRITE;
/*!40000 ALTER TABLE `specs_case` DISABLE KEYS */;
/*!40000 ALTER TABLE `specs_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specs_cooler`
--

DROP TABLE IF EXISTS `specs_cooler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_cooler` (
  `model` varchar(32) NOT NULL,
  `coolerType` varchar(16) NOT NULL,
  `fanRPM` varchar(16) NOT NULL,
  `noiseLevel` varchar(16) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_cooler`
--

LOCK TABLES `specs_cooler` WRITE;
/*!40000 ALTER TABLE `specs_cooler` DISABLE KEYS */;
/*!40000 ALTER TABLE `specs_cooler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specs_cpu`
--

DROP TABLE IF EXISTS `specs_cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_cpu` (
  `model` varchar(32) NOT NULL,
  `cpuSocket` varchar(16) NOT NULL,
  `coreName` varchar(16) NOT NULL,
  `coreCount` int(2) NOT NULL,
  `threadCount` int(2) NOT NULL,
  `speed` varchar(8) NOT NULL,
  `TDP` varchar(4) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_cpu`
--

LOCK TABLES `specs_cpu` WRITE;
/*!40000 ALTER TABLE `specs_cpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `specs_cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specs_gpu`
--

DROP TABLE IF EXISTS `specs_gpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_gpu` (
  `model` varchar(32) NOT NULL,
  `gpuMemory` varchar(4) NOT NULL,
  `gpuSpeed` varchar(8) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_gpu`
--

LOCK TABLES `specs_gpu` WRITE;
/*!40000 ALTER TABLE `specs_gpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `specs_gpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specs_motherboard`
--

DROP TABLE IF EXISTS `specs_motherboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_motherboard` (
  `model` varchar(32) NOT NULL,
  `cpuSocket` varchar(16) NOT NULL,
  `formFactor` varchar(8) NOT NULL,
  `ramSlots` int(2) NOT NULL,
  `maxRAM` varchar(8) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_motherboard`
--

LOCK TABLES `specs_motherboard` WRITE;
/*!40000 ALTER TABLE `specs_motherboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `specs_motherboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specs_psu`
--

DROP TABLE IF EXISTS `specs_psu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_psu` (
  `model` varchar(32) NOT NULL,
  `formFactor` varchar(8) NOT NULL,
  `efficiency` varchar(16) NOT NULL,
  `watts` varchar(6) NOT NULL,
  `modular` varchar(6) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_psu`
--

LOCK TABLES `specs_psu` WRITE;
/*!40000 ALTER TABLE `specs_psu` DISABLE KEYS */;
/*!40000 ALTER TABLE `specs_psu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specs_ram`
--

DROP TABLE IF EXISTS `specs_ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_ram` (
  `model` varchar(32) NOT NULL,
  `ramType` varchar(32) NOT NULL,
  `speed` varchar(32) NOT NULL,
  `capacity` varchar(16) NOT NULL,
  `casLatency` int(2) NOT NULL,
  `ecc` tinyint(1) NOT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_ram`
--

LOCK TABLES `specs_ram` WRITE;
/*!40000 ALTER TABLE `specs_ram` DISABLE KEYS */;
/*!40000 ALTER TABLE `specs_ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specs_storage`
--

DROP TABLE IF EXISTS `specs_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specs_storage` (
  `model` varchar(32) NOT NULL,
  `formFactor` varchar(8) NOT NULL,
  `storageType` varchar(8) NOT NULL,
  `capacity` varchar(8) NOT NULL,
  `storageCache` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specs_storage`
--

LOCK TABLES `specs_storage` WRITE;
/*!40000 ALTER TABLE `specs_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `specs_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thread`
--

DROP TABLE IF EXISTS `thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thread` (
  `threadID` int(32) NOT NULL AUTO_INCREMENT,
  `parentForum` int(16) DEFAULT NULL,
  `threadCreator` int(16) DEFAULT NULL,
  `threadSubject` varchar(128) NOT NULL,
  PRIMARY KEY (`threadID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread`
--

LOCK TABLES `thread` WRITE;
/*!40000 ALTER TABLE `thread` DISABLE KEYS */;
/*!40000 ALTER TABLE `thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_account` (
  `userID` int(16) NOT NULL AUTO_INCREMENT,
  `userAccessLevel` int(1) DEFAULT NULL,
  `userName` varchar(64) NOT NULL,
  `userPassword` varchar(256) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-20 22:13:40
