-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `fine`
--

DROP TABLE IF EXISTS `fine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fine` (
  `fine_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `number_plate` varchar(6) NOT NULL,
  `violation` varchar(50) NOT NULL,
  `sum_fine` decimal(8,2) NOT NULL,
  `data_violation` date NOT NULL,
  `date_payment` date NOT NULL,
  PRIMARY KEY (`fine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fine`
--

LOCK TABLES `fine` WRITE;
/*!40000 ALTER TABLE `fine` DISABLE KEYS */;
INSERT INTO `fine` VALUES (1,'Баранов П.Е.','Р523ВТ','Превышение скорости от 40 до 60',500.00,'2020-01-12','2020-01-17'),(2,'Баранов П.Е.','Р523ВТ','Превышение скорости от 40 до 60',500.00,'2020-01-12','2020-01-17'),(3,'Баранов П.Е.','Р523ВТ','Превышение скорости от 40 до 60',500.00,'2020-01-12','2020-01-17'),(4,'Абрамова К.А.','О111АВ','Проезд назапрещающий сигнал',1000.00,'2020-01-14','2020-02-27'),(5,'Яковлев Г.Р.','Т330ТТ','Превышение скорости(от 20 до 40)',500.00,'2020-01-23','2020-02-23'),(6,'Абрамова К.А.','О111АВ','Проезд назапрещающий сигнал',1000.00,'2020-01-14','2020-02-27'),(7,'Яковлев Г.Р.','Т330ТТ','Превышение скорости(от 20 до 40)',500.00,'2020-01-23','2020-02-23');
/*!40000 ALTER TABLE `fine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply` (
  `supply_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`supply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES (1,'Лирика','Пастернак Б.Л.',518.99,2),(2,'Черный человек','Есенин С.А.',570.20,6),(3,'Белая гвардия','Булгаков М.А.',540.50,7),(4,'Идиот','Достоевский Ф.М.',360.80,3);
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trip`
--

DROP TABLE IF EXISTS `trip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trip` (
  `trip_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `city` varchar(25) NOT NULL,
  `per_diem` decimal(8,2) NOT NULL,
  `date_first` date NOT NULL,
  `date_last` date NOT NULL,
  PRIMARY KEY (`trip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trip`
--

LOCK TABLES `trip` WRITE;
/*!40000 ALTER TABLE `trip` DISABLE KEYS */;
INSERT INTO `trip` VALUES (1,'Баранов П.Е.','Москва',700.00,'2020-01-12','2020-01-17'),(2,'Абрамова К.А.','Владивосток',450.00,'2020-01-14','2020-01-27'),(3,'Семенов И.В.','Москва',700.00,'2020-01-23','2020-01-21'),(4,'Ильиных Г.Р.','Владивосток',450.00,'2020-01-12','2020-02-02'),(5,'Колесов С.П.','Москва',700.00,'2020-02-14','2020-02-22'),(6,'Колесов С.П.','Москва',700.00,'2020-02-14','2020-02-22'),(7,'Баранов П.Е.','Москва',700.00,'2020-02-23','2020-03-01'),(8,'Абрамова К.А.','Москва',700.00,'2020-03-03','2020-03-06'),(9,'Лебедев Т.К.','Новосибирск',450.00,'2020-02-27','2020-03-12'),(10,'Колесов С.П.','Санкт-Петербург',700.00,'2020-03-29','2020-04-05'),(11,'Семенов И.В.','Москва',700.00,'2020-04-06','2020-04-14'),(12,'Абрамова К.А.','Новосибирск',450.00,'2020-04-18','2020-05-04'),(13,'Баранов П.Е.','Томск',450.00,'2020-05-20','2020-05-31'),(14,'Лебедев Т.К.','Санкт-Петербург',700.00,'2020-06-01','2020-06-03'),(15,'Семенов И.В.','Санкт-Петербург',700.00,'2020-05-28','2020-06-04'),(16,'Абрамова К.А.','Новосибирск',450.00,'2020-05-25','2020-06-04'),(17,'Федерова А.Ю.','Новосибирск',450.00,'2020-06-03','2020-06-12'),(18,'Колесов С.П.','Томск',450.00,'2020-06-20','2020-06-26'),(19,'Федорова А.Ю.','Владивосток',450.00,'2020-07-02','2020-07-13'),(20,'Абрамова К.А.','Воронеж',450.00,'2020-07-19','2020-07-25'),(21,'Абрамова К.А.','Воронеж',450.00,'2020-07-19','2020-07-25');
/*!40000 ALTER TABLE `trip` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 13:10:49
