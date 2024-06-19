-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: company
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Adress` varchar(100) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `NIP` varchar(13) NOT NULL,
  `Contact` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'WSB','39-050, Chorzów, ul.Sportowa 23','Poland','111-222-33-44','WSB@wuesbe.pl, 111-222-333'),(2,'Merito','40-007, Katowice, Rynek 2','Poland','000-999-88-7','Merito@kce-pl, 222-333-111'),(3,'IKEA','105 35 Stockholm Svenssongrand 38','Sweden','333-444-55-66','IKEA@Ikea.swe, +48-222-09-00'),(4,'McDonalds','Detroit, Burger street 4','United States','098-098-00-99','MCD@burgers.com, 456-555-665');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `Id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Menager` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'CEO','Arya Stark'),(2,'Accountancy','Grzegorz Brzęczyszczykiewicz'),(3,'Storehouse','Gerald Witcher'),(4,'Serivce','Mickey Mouse');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `Id` int NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `Menager` int DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` int NOT NULL,
  PRIMARY KEY (`Id`),
  CONSTRAINT `CHK_Employees_FirstName` CHECK ((char_length(`FirstName`) > 2)),
  CONSTRAINT `CHK_Employees_LastName` CHECK ((char_length(`LastName`) > 3)),
  CONSTRAINT `CHK_Employees_Phone` CHECK ((char_length(`Phone`) = 9))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Arya','Stark','CEO',NULL,'AStark@company.com',123456789),(2,'Grzegorz','Brzęczyszczykiewicz','Chief Accountant',1,'GBrzeczyszczykiewicz@company.com',234567890),(3,'Gerald','Witcher','Storehouse Manager',1,'GWithcer@company.com',111222333),(4,'Mickey','Mouse','Serivce Manager',1,'MMouse@company.com',222333444),(5,'Donald','Duck','Storekeeper',3,'DDuck@company.com',333444555),(6,'Pete','Black','Storekeeper',3,'PBlack@company.com',444555666),(7,'Harry','Potter','Storekeeper',3,'HPotter@company.com',555666777),(8,'Minnie','Mice','Accountant',2,'MMice@company.com',666777888),(9,'Daisy','Ducky','Accountant',2,'DDucky@company.com',777888999),(10,'Shrek','Ogre','Techniiam',4,'SOgre@company.com',888999000),(11,'Jon','Snow','Techniciac',4,'JSnow@company.com',100999888),(12,'Henryk','Kwinto','Techniciacn',4,'HKwinto@company.com',999888777);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Stock` int DEFAULT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Delivery_date` varchar(12) DEFAULT NULL,
  `selling_date` varchar(12) DEFAULT NULL,
  `withdraw_date` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'ASRock Radeon RX 6600 Challenger D 8GB PCI-E GDDR6','Graphic card',4,800,'2024-06-01',NULL,NULL),(2,'ASRock Radeon RX 7700 XT Challenger OC 12GB PCI-E GDDR6','Graphic card',1,1000,'2024-05-24','2024-06-15',NULL),(3,'Asus GeForce RTX 4070 SUPER PROART OC 12GB GDDR6X','Graphic card',0,850,'2024-04-30',NULL,'2024-05-30'),(4,'Procesor AMD Ryzen 5 5500 AM4','CPU',2,460,'2024-06-15',NULL,'2024-06-15'),(5,'Procesor Intel Core i5-14400 Raptor Lake Refresh LGA1700 Box','CPU',6,1000,'2024-05-28','2024-06-16','2024-06-10'),(6,'Procesor AMD Ryzen 9 7950X3D AM5','CPU',0,900,'2024-05-04','2024-05-05',NULL),(7,'ASRock B550M-HDV AM4','Motherboard',3,250,'2024-06-08',NULL,NULL),(8,'Asus PRIME B550M-K AM4','Motherboard',0,300,'2024-06-10',NULL,'2024-06-15'),(9,'Gigabyte B650 EAGLE AX AM5','Motherboard',5,460,'2024-05-31','2024-06-03',NULL),(10,'ADATA Ultimate SU800 SSD 2,5\" 1TB SATA 560/520MBs TLC 3D ASU800SS-1TT-C','SSD',1,150,'2024-04-29','2024-05-22',NULL),(11,'Kingston SSD SKC600 2.5\" 256GB SATA 7mm SKC600/256G','SSD',5,200,'2024-06-01',NULL,'2024-06-02'),(12,'Lexar SSD NM800 PRO 2TB M.2 PCIe NVMe Gen4 LNM800P002T-RNNNG','SSD',4,340,'2024-06-17',NULL,NULL);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `Id` int NOT NULL,
  `Filing_date` varchar(100) NOT NULL,
  `Start_date` varchar(100) DEFAULT NULL,
  `Completion_date` varchar(100) DEFAULT NULL,
  `Status` varchar(100) NOT NULL,
  `Commentary` varchar(100) DEFAULT NULL,
  `Rate` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'2024-05-02','2024-05-03','2024-05-15','Received','Will be done',5),(2,'2024-06-16',NULL,NULL,'Waiting','Waiting for components',NULL),(3,'2024-06-01','2024-06-02','null','In progress','Unprofitable repair',NULL),(4,'2024-05-12','2024-05-13','2024-05-13','Done','Waiting for client',NULL),(5,'2024-05-01','2024-05-06','2024-06-04','Received','Lont time untill parts arrived',1);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `Id` int NOT NULL,
  `Invoice_Number` int NOT NULL,
  `Invoice_Date` varchar(100) NOT NULL,
  `Selliing_Date` varchar(100) DEFAULT NULL,
  `Payment_termin` varchar(100) DEFAULT NULL,
  `Contracts_name` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1234,'2024-05-31','2024-05-31','Two weeks after receiving the invoice','WSB'),(2,987,'2024-06-03','2024-06-06','Two weeks after receiving the invoice','Merito'),(3,1122,'2024-06-17','2024-06-20','Month after receiving the invoice','IKEA'),(4,99,'2024-06-06','2024-06-06','Two weeks after receiving the invoice','McDonalds');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-19 20:22:00
