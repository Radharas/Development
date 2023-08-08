-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: phase5-kitchenstory
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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `pId` int NOT NULL AUTO_INCREMENT,
  `pDesc` varchar(3000) DEFAULT NULL,
  `pDiscount` int NOT NULL,
  `pName` varchar(255) DEFAULT NULL,
  `pPhoto` varchar(255) DEFAULT NULL,
  `pPrice` int NOT NULL,
  `pQuantity` int NOT NULL,
  `category_categoryId` int DEFAULT NULL,
  PRIMARY KEY (`pId`),
  KEY `FK825v7lftk50hyta3jlxerywcb` (`category_categoryId`),
  CONSTRAINT `FK825v7lftk50hyta3jlxerywcb` FOREIGN KEY (`category_categoryId`) REFERENCES `category` (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (6,'(Pack of 14, Blue)',10,'POLYSET Twisty','plastic5.jpg',440,20,1),(7,'Pack of 2, Clear)',20,'INAR Glass Bowl Set of 2 Pcs with Air Tight Lid','plastic6.jpg',270,10,1),(8,'Kitchen Storage | Bathroom Accessories Stainless Steel Wall Shelf  (Number of Shelves - 1, Silver)',19,'KEEPWELL Stainless steel Bin holder & Detergent Rack ','houseHold1.jpg',950,10,2),(9,'7-Tier Freestanding Clothes Storage Shelf with Suitcase Rack for Household Retail Wooden Wall Shelf  (Number of Shelves - 7, Brown)',12,'Naayaab Craft Bamboo Coat Clothing Garment Rack','household2.jpg',3900,20,2),(10,'Induction Bottom Pressure Cooker  (Aluminium)#JustHere',13,'Butterfly Friendly 2 L, 3 L, 5 L ','household3.jpg',8000,10,2),(11,'awa 25cm Dia + Fry Pan 23 cm+Kadahi 27 cm Cookware Set  (Iron, 3 - Piece)',10,'Navghar combo ','household4.jpg',1200,10,2),(12,'Everin Soya Chunk, Green Chilli Pickle, Spicy Snack Sauce, Vermicelli, Hing Combo  (Green Chilli Pickle 500g, Snack Sauce 200g, Hing 25gm, Soya Chunk 1kg, Vermicelli 350gm)',10,'Food Combo','Grocery1.jpg',450,20,3),(13,'(Broken Grain, Steam)  (5 kg)',12,'Fortune Hamesha Basmati Rice ','grocery2.jpg',440,10,3),(14,'Chakki Atta  (10 kg)',10,'Chakki Atta','Grocery3.jpg',450,10,3),(15,'Saffola Total Refined Cooking Oil Rice Bran & Safflower Safflower Oil Pouch  (4 x 1 L)',10,'Cooking Oil','Grocery4.jpg',900,10,3),(16,'Onion 2 kg',10,'Onion','vegetables1.jpg',70,5,4),(17,'AYODHYAvati potato (50 per packet)',10,'AYODHYAvati potato','vegetables2.jpg',320,10,4),(18,'Cauliflower 1 Units  (300  500 gm)',70,'Cauliflower 1 Units','vegetables3.jpg',100,10,4),(20,'Pigeon Favourite IC 1800 W Induction Cooktop  (Black, Push Button)',10,'Induction Cooktop','Electronic1.jpg',1700,10,5),(21,'mi star MG18H510 puls 750 Mixer Grinder (4 Jars, red white)',10,'Mixer Grinder','Electronic2.jpg',2000,10,5),(22,'Butterfly Rapid Kettle 1.5 Litre + Eco 750 Ml Water Bottle',10,'Butterfly Rapid Kettle','Electronic3.jpg',950,10,5),(23,'JKR Enterprise JKR-2019 260 W Electric Whisk  (White)',10,'JKR Enterprise','Electronic4.jpg',450,10,5),(24,'Dummy ',9,'Dummy ','bhindi.jpg',100,7,6);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-10 16:41:04
