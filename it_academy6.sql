CREATE DATABASE  IF NOT EXISTS `it_academy6` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `it_academy6`;
-- MariaDB dump 10.17  Distrib 10.4.6-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: it_academy6
-- ------------------------------------------------------
-- Server version	10.5.4-MariaDB

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(15) NOT NULL,
  `number` varchar(5) NOT NULL,
  `floor` int(11) NOT NULL,
  `door` varchar(5) NOT NULL,
  `city` varchar(15) NOT NULL,
  `country` varchar(15) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'trz','43',4,'a','frd','frds'),(2,'gdxf','4',1,'d','sff','asdf'),(3,'sts','23',2,'1','safa','dsf'),(4,'dsavd','3',3,'3','ASD','eahr');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `registration_date` datetime NOT NULL,
  `employee_who_attended` varchar(10) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`client_id`),
  KEY `fk_address_clients_idx` (`address_id`),
  CONSTRAINT `fk_address_clients` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'nojoi','8765','uyftdte','2000-12-12 00:00:00','dftwyrs',2),(2,'sdav','2334','sqc','2020-12-10 00:00:00','wascdqc',4);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_recomended`
--

DROP TABLE IF EXISTS `clients_recomended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients_recomended` (
  `Clients_id` int(11) NOT NULL,
  `Clients_id1` int(11) DEFAULT NULL,
  PRIMARY KEY (`Clients_id`),
  KEY `fk_clients_cr1_idx` (`Clients_id1`),
  CONSTRAINT `fk_clients_cr` FOREIGN KEY (`Clients_id`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_clients_cr1` FOREIGN KEY (`Clients_id1`) REFERENCES `clients` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_recomended`
--

LOCK TABLES `clients_recomended` WRITE;
/*!40000 ALTER TABLE `clients_recomended` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients_recomended` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frames`
--

DROP TABLE IF EXISTS `frames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frames` (
  `frames_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `color` varchar(10) NOT NULL,
  PRIMARY KEY (`frames_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frames`
--

LOCK TABLES `frames` WRITE;
/*!40000 ALTER TABLE `frames` DISABLE KEYS */;
INSERT INTO `frames` VALUES (1,'sdf','sdf'),(2,'awe','arQW');
/*!40000 ALTER TABLE `frames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `glasses`
--

DROP TABLE IF EXISTS `glasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glasses` (
  `glasses_id` int(11) NOT NULL AUTO_INCREMENT,
  `graduation` decimal(10,0) NOT NULL,
  `color` varchar(10) NOT NULL,
  PRIMARY KEY (`glasses_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glasses`
--

LOCK TABLES `glasses` WRITE;
/*!40000 ALTER TABLE `glasses` DISABLE KEYS */;
INSERT INTO `glasses` VALUES (1,3,'asa'),(2,2,'AETQE');
/*!40000 ALTER TABLE `glasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `provider_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(45) NOT NULL,
  `fax` varchar(45) NOT NULL,
  `nif` varchar(10) NOT NULL,
  `address_id` int(11) NOT NULL,
  PRIMARY KEY (`provider_id`),
  KEY `fk_address_providers_idx` (`address_id`),
  CONSTRAINT `fk_address_providers` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'2345','345','dd34',1),(2,'7654','765','765',3);
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sunglases`
--

DROP TABLE IF EXISTS `sunglases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sunglases` (
  `Sunglases_id` int(11) NOT NULL AUTO_INCREMENT,
  `Brand` varchar(15) NOT NULL,
  `Price` float NOT NULL,
  `glasses_id` int(11) NOT NULL,
  `frames_id` int(11) NOT NULL,
  `providers_id` int(11) NOT NULL,
  PRIMARY KEY (`Sunglases_id`),
  KEY `fk_glasses_sunglasses_idx` (`glasses_id`),
  KEY `fk_frames_sunglasses_idx` (`frames_id`),
  KEY `fk_providers_sunglasses_idx` (`providers_id`),
  CONSTRAINT `fk_frames_sunglasses` FOREIGN KEY (`frames_id`) REFERENCES `frames` (`frames_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_glasses_sunglasses` FOREIGN KEY (`glasses_id`) REFERENCES `glasses` (`glasses_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_providers_sunglasses` FOREIGN KEY (`providers_id`) REFERENCES `providers` (`provider_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sunglases`
--

LOCK TABLES `sunglases` WRITE;
/*!40000 ALTER TABLE `sunglases` DISABLE KEYS */;
INSERT INTO `sunglases` VALUES (1,'rft',23,1,1,1),(2,'wer',12,2,2,2);
/*!40000 ALTER TABLE `sunglases` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-10 17:26:46
