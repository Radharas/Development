-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: airlineticket
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `a_book`
--

DROP TABLE IF EXISTS `a_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_book` (
  `ID` bigint NOT NULL,
  `flightId` bigint DEFAULT NULL,
  `flightName` varchar(225) DEFAULT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `bookDate` date DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `address` varchar(755) DEFAULT NULL,
  `noOfPerson` bigint DEFAULT NULL,
  `price` bigint DEFAULT NULL,
  `finalPrice` bigint DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `FK_a_book` (`flightId`),
  CONSTRAINT `FK_a_book` FOREIGN KEY (`flightId`) REFERENCES `a_flight` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_book`
--

LOCK TABLES `a_book` WRITE;
/*!40000 ALTER TABLE `a_book` DISABLE KEYS */;
INSERT INTO `a_book` VALUES (1,1,'AIR INDIA','Hariom','Mukati','9165415598','2019-06-21','Shubham@gmail.com','BDGIGIGD',1,0,1200,'root','root','2019-06-20 13:02:53','2019-06-20 13:02:53'),(3,1,'AIR INDIA','Hariom','Mukati','9165415598','2019-06-21','guviq@mailinator.net','BDGIGIGD',1,1200,1200,'root','root','2019-06-20 13:07:37','2019-06-20 13:07:37'),(5,1,'AIR INDIA','SS','SS','9340691082','2022-07-26','A@gmail.com','Noida Delhi',1,1200,1200,'root','root','2022-07-26 16:17:52','2022-07-26 16:17:52'),(6,1,'AIR INDIA','Suraj','Singh','9340691082','2022-07-27','surajsingh9090@gmail.com','Natraja Layout  JP Nagar 7th Phase\r\n12th Main Road Dead End Building',1,1200,1200,'root','root','2022-07-27 12:06:45','2022-07-27 12:06:45'),(7,1,'AIR INDIA','Suraj','Singh','9340691082','2022-07-31','surajsingh9090@gmail.com','Natraja Layout  JP Nagar 7th Phase\r\n12th Main Road Dead End Building',1,1200,1200,'root','root','2022-07-31 08:52:50','2022-07-31 08:52:50'),(8,1,'AIR INDIA','Suraj','Singh','9340691082','2022-07-31','surajsingh9090@gmail.com','Natraja Layout  JP Nagar 7th Phase\r\n12th Main Road Dead End Building',2,1200,2400,'root','root','2022-07-31 09:22:22','2022-07-31 09:22:22');
/*!40000 ALTER TABLE `a_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-31 18:00:03
