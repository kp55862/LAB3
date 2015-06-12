-- MySQL dump 10.13  Distrib 5.6.24, for osx10.10 (x86_64)
--
-- Host: localhost    Database: fruit
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Current Database: `fruit`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `fruit` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `fruit`;

--
-- Table structure for table `Future`
--

DROP TABLE IF EXISTS `Future`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Future` (
  `futureID` int(11) NOT NULL AUTO_INCREMENT,
  `futureName` varchar(55) DEFAULT NULL,
  `futureDescription` varchar(255) DEFAULT NULL,
  `futureExpireDate` date DEFAULT NULL,
  PRIMARY KEY (`futureID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Future`
--

LOCK TABLES `Future` WRITE;
/*!40000 ALTER TABLE `Future` DISABLE KEYS */;
INSERT INTO `Future` VALUES (1,'STYERS GALA','Lorem ipsum dolor sit amet consectetur adipiscing elit','2015-06-14'),(2,'STYERS GRANNIE SMITH','Lorem ipsum dolor sit amet consectetur adipiscing elit','2015-09-01'),(3,'STYERS HONEYCRISP','Lorem ipsum dolor sit amet consectetur adipiscing elit','2015-11-21'),(4,'SHADYBROOK RED DELICIOUS','Lorem ipsum dolor sit amet consectetur adipiscing elit','2016-04-23'),(5,'SOLEBURY GOLDEN DELICIOUS','Lorem ipsum dolor sit amet consectetur adipiscing elit','2016-07-05');
/*!40000 ALTER TABLE `Future` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apple`
--

DROP TABLE IF EXISTS `apple`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apple` (
  `fruitID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) DEFAULT NULL,
  `Description` varchar(225) DEFAULT NULL,
  `orchardID` int(1) DEFAULT NULL,
  PRIMARY KEY (`fruitID`),
  KEY `orchardID` (`orchardID`),
  CONSTRAINT `apple_ibfk_1` FOREIGN KEY (`orchardID`) REFERENCES `orchard` (`orchardID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apple`
--

LOCK TABLES `apple` WRITE;
/*!40000 ALTER TABLE `apple` DISABLE KEYS */;
INSERT INTO `apple` VALUES (1,'Gala','Pinkish-Orange',1),(2,'Grannie Smith','Green',1),(3,'Red Delicious','Bright Red',2),(4,'Honeycrisp','Bright red and pale green',1),(5,'Golden Delicious','Yellowish-Green',3);
/*!40000 ALTER TABLE `apple` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funding`
--

DROP TABLE IF EXISTS `funding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funding` (
  `orchardID` int(11) DEFAULT NULL,
  `futureID` int(11) DEFAULT NULL,
  `fundingMetadata` blob,
  UNIQUE KEY `pkFunding` (`orchardID`,`futureID`),
  KEY `futureID` (`futureID`),
  CONSTRAINT `funding_ibfk_1` FOREIGN KEY (`orchardID`) REFERENCES `Orchard` (`orchardID`),
  CONSTRAINT `funding_ibfk_2` FOREIGN KEY (`futureID`) REFERENCES `Future` (`futureID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funding`
--

LOCK TABLES `funding` WRITE;
/*!40000 ALTER TABLE `funding` DISABLE KEYS */;
INSERT INTO `funding` VALUES (1,1,'0100110101'),(1,2,'0000010110'),(1,3,'1010011110'),(1,4,'1011001011'),(1,5,'0101101101'),(2,1,'0011100100'),(2,2,'1011100100'),(2,3,'0011001111'),(2,4,'1010101111'),(2,5,'0011010101'),(3,1,'1100101011'),(3,2,'0101010111'),(3,3,'0001101100'),(3,4,'1010001101'),(3,5,'1101100100');
/*!40000 ALTER TABLE `funding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orchard`
--

DROP TABLE IF EXISTS `orchard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orchard` (
  `orchardID` int(11) NOT NULL AUTO_INCREMENT,
  `orchardName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`orchardID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orchard`
--

LOCK TABLES `orchard` WRITE;
/*!40000 ALTER TABLE `orchard` DISABLE KEYS */;
INSERT INTO `orchard` VALUES (1,'Styer Orchard'),(2,'Shady Brook Farm'),(3,'Solebury Orchards');
/*!40000 ALTER TABLE `orchard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Data1` varchar(25) DEFAULT NULL,
  `Data2` varchar(25) DEFAULT NULL,
  `Data3` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-12 13:05:43
