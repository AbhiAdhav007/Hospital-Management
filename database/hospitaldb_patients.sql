-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitaldb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `psychiatrist_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `psychiatrist_id` (`psychiatrist_id`),
  CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`psychiatrist_id`) REFERENCES `psychiatrists` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Abhishek','A/P Shingnapur near ZP school','abhi@mail.com','+919011220414','Abhi!2843','#',1),(2,'Somenoe','A/P Shingnapur near ZP school','Somenoe@mail.com','+911234567890','Abhi!2843','#',1),(3,'Patient 01','A/P Shingnapur near ZP school','patient1@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',14),(4,'Patient 02','A/P Shingnapur near ZP school','patient2@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',14),(5,'Patient 03','A/P Shingnapur near ZP school','patient3@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',14),(6,'Patient 04','A/P Shingnapur near ZP school','patient4@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',16),(7,'Patient 05','A/P Shingnapur near ZP school','patient5@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',16),(8,'Patient 06','A/P Shingnapur near ZP school','patient6@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',15),(9,'Patient 07','A/P Shingnapur near ZP school','patient7@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',17),(10,'Patient 08','A/P Shingnapur near ZP school','patient8@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',17),(11,'Patient 09','A/P Shingnapur near ZP school','patient9@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',18),(12,'Patient 10','A/P Shingnapur near ZP school','patient9@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',18),(13,'Patient 11','A/P Shingnapur near ZP school','patient11@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',18),(14,'Patient 12','A/P Shingnapur near ZP school','patient12@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',18),(15,'Patient 13','A/P Shingnapur near ZP school','patient13@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',20),(16,'Patient 14','A/P Shingnapur near ZP school','patient14@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',20),(17,'Patient 15','A/P Shingnapur near ZP school','patient15@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',19),(18,'Patient 16','A/P Shingnapur near ZP school','patient16@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',3),(19,'Patient 17','A/P Shingnapur near ZP school','patient17@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',3),(20,'Patient 18','A/P Shingnapur near ZP school','patient18@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',3),(21,'Patient 19','A/P Shingnapur near ZP school','patient19@mail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',4),(22,'Patient 20','A/P Shingnapur near ZP school','patient20@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',4),(23,'Patient 21','A/P Shingnapur near ZP school','patient21@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',5),(24,'Patient 22','A/P Shingnapur near ZP school','patient22@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',5),(25,'Patient 23','A/P Shingnapur near ZP school','patient23@hotmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',5),(26,'Patient 24','A/P Shingnapur near ZP school','patient24@hotmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',6),(27,'Patient 25','A/P Shingnapur near ZP school','patient25@yahoo.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',7),(28,'Patient 26','A/P Shingnapur near ZP school','patient26@yahoo.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',7),(29,'Patient 27','A/P Shingnapur near ZP school','patient27@outlook.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',7),(30,'Patient 28','A/P Shingnapur near ZP school','patient28@outlook.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',8),(31,'Patient 29','A/P Shingnapur near ZP school','patient29@outlook.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',8),(32,'Patient 30','A/P Shingnapur near ZP school','patient30@outlook.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',8),(33,'Patient 31','A/P Shingnapur near ZP school','patient31@outlook.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',9),(34,'Patient 32','A/P Shingnapur near ZP school','patient32@outlook.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',9),(35,'Patient 33','A/P Shingnapur near ZP school','patient33@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',9),(36,'Patient 34','A/P Shingnapur near ZP school','patient34@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',10),(37,'Patient 35','A/P Shingnapur near ZP school','patient35@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',10),(38,'Patient 36','A/P Shingnapur near ZP school','patient36@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',11),(39,'Patient 37','A/P Shingnapur near ZP school','patient37@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',11),(40,'Patient 38','A/P Shingnapur near ZP school','patient38@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',12),(41,'Patient 39','A/P Shingnapur near ZP school','patient39@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',13),(42,'Patient 40','A/P Shingnapur near ZP school','patient40@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',13),(43,'Patient 41','A/P Shingnapur near ZP school','patient41@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',14),(44,'Patient 42','A/P Shingnapur near ZP school','patient42@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',15),(45,'Patient 42','A/P Shingnapur near ZP school','patient42@gmail.com','+911234567890','Abhi1234','https://www.cloud.com/photo_url',15);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 11:09:03
