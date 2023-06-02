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
-- Table structure for table `a_flight`
--

DROP TABLE IF EXISTS `a_flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_flight` (
  `ID` bigint NOT NULL,
  `flightNo` varchar(225) DEFAULT NULL,
  `fightName` varchar(225) DEFAULT NULL,
  `fromCity` varchar(225) DEFAULT NULL,
  `toCity` varchar(225) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(775) DEFAULT NULL,
  `time` varchar(225) DEFAULT NULL,
  `travelDuraion` varchar(225) DEFAULT NULL,
  `ticketPrice` bigint DEFAULT NULL,
  `airPortName` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_flight`
--

LOCK TABLES `a_flight` WRITE;
/*!40000 ALTER TABLE `a_flight` DISABLE KEYS */;
INSERT INTO `a_flight` VALUES (1,'5VJ52','AIR INDIA','Indore','Mumbai','2019-06-21','DG wr9f GIG isgifg','10:00 AM','60 Minute',1200,'Devi Ahilya InterNational','Admin@gmail.com','Admin@gmail.com','2019-06-20 04:39:27','2019-06-20 04:39:27'),(4,'5VJ54','ZAOD','Lucknow','Mumbai','2022-07-29','Flight Run always run on time','7 PM','4 Hours',4500,'Lucknow','Admin@gmail.com','Admin@gmail.com','2022-07-29 16:25:58','2022-07-29 16:32:06');
/*!40000 ALTER TABLE `a_flight` ENABLE KEYS */;
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
