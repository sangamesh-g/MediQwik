-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: mediqwik
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `accounts_hospital`
--

DROP TABLE IF EXISTS `accounts_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_hospital` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `address` longtext NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `specialties` json NOT NULL,
  `rating` decimal(3,1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `has_emergency` tinyint(1) NOT NULL,
  `latitude` decimal(9,6) DEFAULT NULL,
  `longitude` decimal(9,6) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_hospital`
--

LOCK TABLES `accounts_hospital` WRITE;
/*!40000 ALTER TABLE `accounts_hospital` DISABLE KEYS */;
INSERT INTO `accounts_hospital` VALUES (1,'People\'s Hospital','Pragathi Nagar','7569543565','peoples@gmail.com','\"Cardiology, Dental, Dermatology, ENT, Eye, Gastrology, Greneral, Gynocology, Neuroloy, Orthopedics, Pediatrics, Physiotherapy, Plastic-Surgery, Pulmonology, Urology\"',4.1,1,1,17.518540,78.396920,'2025-03-07 19:01:01.714243','2025-03-08 00:41:51.648776'),(2,'Namasvi Clinics','Pragath Nagar','7330825959',NULL,'\"Neurology, Urology, Orthopedics, Pulmonology, General\"',4.9,1,1,17.522540,78.395910,'2025-03-08 00:29:03.258541','2025-03-08 00:31:41.127007'),(3,'My Med Hospitals','Pragathi Nagar','7013434718',NULL,'\"Cardiology, Dermatology,  Greneral,  Pediatrics, Physiotherapy, Pulmonology, \"',0.0,1,1,17.513720,78.397742,'2025-03-08 00:44:03.516067','2025-03-08 00:44:03.516112'),(4,'Prasads Hospitals','Pragathi Nagar','8121212707',NULL,'\"Cardiology, Dental, Dermatology, ENT, Eye, Gastrology, Greneral, Gynocology, Neuroloy, Orthopedics, Pediatrics, Physiotherapy, Plastic-Surgery, Pulmonology, Urology\"',4.6,1,1,17.505800,78.395620,'2025-03-08 00:46:16.782446','2025-03-08 00:46:16.782506'),(5,'Parindhevi Hospitals','kukatpally','7799222175',NULL,'\"Gastrology, Greneral, Gynocology, Neuroloy, Orthopedics, Physiotherapy,  Pulmonology, Urology\"',4.6,1,1,17.498680,78.410450,'2025-03-08 00:47:52.899916','2025-03-08 00:47:52.899997'),(6,'Remedy Hospitals','Kukatpally','9666363699',NULL,'\"Cardiology, Dental, Dermatology, ENT, Eye, Gastrology, Greneral, Gynocology, Neuroloy, Orthopedics, Pediatrics, Physiotherapy, Plastic-Surgery, Pulmonology, Urology\"',4.3,1,1,17.494880,78.398500,'2025-03-08 00:49:09.867830','2025-03-08 00:49:09.867878'),(7,'My Health Hospital','Kukatpally','9111674111',NULL,'\"Cardiology, Gastrology, Greneral, Gynocology, Neuroloy, Orthopedics, Pediatrics, Physiotherapy,\"',4.8,1,1,17.493130,78.402040,'2025-03-08 00:50:35.672190','2025-03-08 00:50:35.672232'),(8,'Ankura Hospitals','KPHB','9053108108',NULL,'\"Gynocology, Pediatrics, Physiotherapy, Pulmonology, Urology\"',3.8,1,0,17.473080,78.387170,'2025-03-08 00:52:12.283925','2025-03-08 00:52:12.283977'),(9,'Landmark Hospitals','JNTU','6303928640',NULL,'\"Cardiology, Dental, Dermatology, ENT, Eye, Gastrology, Greneral, Gynocology, Neuroloy, Orthopedics, Pediatrics, Physiotherapy, Plastic-Surgery, Pulmonology, Urology\"',4.5,1,1,17.499380,78.388050,'2025-03-08 00:53:18.434167','2025-03-08 00:53:18.434214'),(10,'Vasan Eye Care','Kukatpally','18005712222',NULL,'\"Eye\"',4.5,1,0,17.496370,78.399930,'2025-03-08 00:54:43.149556','2025-03-08 00:54:43.149602'),(11,'Omni Hospitals','Kukatpally','8880101000',NULL,'\"Cardiology, Dental, Dermatology, ENT, Eye, Gastrology, Greneral, Gynocology, Neuroloy, Orthopedics, Pediatrics, Physiotherapy, Plastic-Surgery, Pulmonology, Urology\"',4.5,1,1,17.485440,78.410890,'2025-03-08 00:56:03.272834','2025-03-08 00:56:03.272880'),(12,'Sidharth Hospitals','Miyapur','4020202000',NULL,'\"Cardiology, Gastrology, Greneral, Gynocology, Neuroloy, Orthopedics,\"',4.9,1,1,17.495320,78.347570,'2025-03-08 00:57:49.901451','2025-03-08 00:58:34.330452');
/*!40000 ALTER TABLE `accounts_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_login`
--

DROP TABLE IF EXISTS `accounts_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `login_time` datetime(6) NOT NULL,
  `logout_time` datetime(6) DEFAULT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_successful` tinyint(1) NOT NULL,
  `remember_me` tinyint(1) NOT NULL,
  `user_agent` longtext,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_login_user_id_46162ebd_fk_accounts_register_id` (`user_id`),
  CONSTRAINT `accounts_login_user_id_46162ebd_fk_accounts_register_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_register` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_login`
--

LOCK TABLES `accounts_login` WRITE;
/*!40000 ALTER TABLE `accounts_login` DISABLE KEYS */;
INSERT INTO `accounts_login` VALUES (8,'2025-03-07 07:19:02.877426',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(9,'2025-03-07 07:19:13.289617','2025-03-07 12:53:33.482652','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(10,'2025-03-07 07:35:08.751834','2025-03-07 13:05:51.741552','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(11,'2025-03-07 07:39:22.324625',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(12,'2025-03-07 09:42:03.807914',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(13,'2025-03-07 09:44:41.656393','2025-03-07 15:17:35.800696','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(14,'2025-03-07 09:47:47.898942',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(15,'2025-03-07 09:48:00.920613','2025-03-07 15:33:52.968795','127.0.0.1',1,1,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(16,'2025-03-07 10:48:51.569584','2025-03-07 19:01:38.012571','127.0.0.1',1,1,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(17,'2025-03-07 14:03:22.774367',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(18,'2025-03-07 14:03:31.128716',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(19,'2025-03-07 14:19:27.771163','2025-03-07 19:54:34.818193','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(20,'2025-03-07 14:25:10.980048','2025-03-07 20:36:57.617193','127.0.0.1',1,1,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(21,'2025-03-07 15:15:26.738036','2025-03-07 20:49:36.886244','127.0.0.1',1,1,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(22,'2025-03-07 15:20:03.797687',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(23,'2025-03-07 15:20:09.468346',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(24,'2025-03-07 15:20:16.065339','2025-03-07 23:33:01.842568','127.0.0.1',1,1,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(25,'2025-03-07 18:06:52.056448',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(26,'2025-03-07 18:06:53.956915',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(27,'2025-03-07 18:06:56.173318',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(28,'2025-03-07 18:07:03.817429',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(29,'2025-03-07 18:07:05.408719','2025-03-07 23:54:57.565013','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(30,'2025-03-07 18:25:09.411184',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(31,'2025-03-07 18:25:11.256373',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(32,'2025-03-07 19:01:36.355976',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(33,'2025-03-07 19:01:44.310051',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(34,'2025-03-07 19:01:50.744857',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(35,'2025-03-07 19:02:00.646435','2025-03-08 04:57:33.418749','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(36,'2025-03-07 23:32:09.140334','2025-03-08 05:06:50.385672','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(37,'2025-03-07 23:37:17.003500','2025-03-08 05:09:03.316714','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(38,'2025-03-07 23:43:28.040175','2025-03-08 05:19:22.494773','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(39,'2025-03-07 23:49:49.578008',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(40,'2025-03-07 23:49:51.306099','2025-03-08 05:23:56.804594','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(41,'2025-03-08 00:59:14.317703',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(42,'2025-03-08 00:59:16.304029',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(43,'2025-03-08 01:08:24.493056',NULL,'127.0.0.1',0,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(44,'2025-03-08 01:08:29.799714',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(45,'2025-03-08 02:14:51.213131',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(46,'2025-03-08 02:14:53.352515',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(47,'2025-03-08 02:20:49.536352',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(48,'2025-03-08 02:20:51.627791',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(49,'2025-03-08 02:36:30.590951',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(50,'2025-03-08 02:36:32.471815',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(51,'2025-03-08 11:16:07.833821','2025-03-08 16:46:43.025834','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(52,'2025-03-08 11:34:54.332659',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(53,'2025-03-08 12:16:32.096940',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(54,'2025-03-08 12:17:53.044846','2025-03-08 17:48:14.830152','127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3),(55,'2025-03-08 12:19:02.958448',NULL,'127.0.0.1',1,0,'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36',3);
/*!40000 ALTER TABLE `accounts_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_register`
--

DROP TABLE IF EXISTS `accounts_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_register` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `password` varchar(128) NOT NULL,
  `address` longtext,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `terms_accepted` tinyint(1) NOT NULL,
  `date_registered` datetime(6) NOT NULL,
  `last_updated` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_register`
--

LOCK TABLES `accounts_register` WRITE;
/*!40000 ALTER TABLE `accounts_register` DISABLE KEYS */;
INSERT INTO `accounts_register` VALUES (3,'GULLE','SANGAMESH','garuna217@gmail.com','7569543565','2005-10-26','male','pbkdf2_sha256$870000$YvIn8Qz7dn9kBBKzrThrDP$Bd+vCbaYE1ixJkgg7lNcbXipxRp1A3p1PVdftafD9gE=',NULL,NULL,NULL,NULL,1,1,'2025-03-06 14:53:51.191283','2025-03-06 14:53:51.191306');
/*!40000 ALTER TABLE `accounts_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add Registered User',1,'add_register'),(2,'Can change Registered User',1,'change_register'),(3,'Can delete Registered User',1,'delete_register'),(4,'Can view Registered User',1,'view_register'),(5,'Can add Login Session',2,'add_login'),(6,'Can change Login Session',2,'change_login'),(7,'Can delete Login Session',2,'delete_login'),(8,'Can view Login Session',2,'view_login'),(9,'Can add log entry',3,'add_logentry'),(10,'Can change log entry',3,'change_logentry'),(11,'Can delete log entry',3,'delete_logentry'),(12,'Can view log entry',3,'view_logentry'),(13,'Can add permission',4,'add_permission'),(14,'Can change permission',4,'change_permission'),(15,'Can delete permission',4,'delete_permission'),(16,'Can view permission',4,'view_permission'),(17,'Can add group',5,'add_group'),(18,'Can change group',5,'change_group'),(19,'Can delete group',5,'delete_group'),(20,'Can view group',5,'view_group'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add content type',7,'add_contenttype'),(26,'Can change content type',7,'change_contenttype'),(27,'Can delete content type',7,'delete_contenttype'),(28,'Can view content type',7,'view_contenttype'),(29,'Can add session',8,'add_session'),(30,'Can change session',8,'change_session'),(31,'Can delete session',8,'delete_session'),(32,'Can view session',8,'view_session'),(33,'Can add appointment',9,'add_appointment'),(34,'Can change appointment',9,'change_appointment'),(35,'Can delete appointment',9,'delete_appointment'),(36,'Can view appointment',9,'view_appointment'),(37,'Can add Hospital',10,'add_hospital'),(38,'Can change Hospital',10,'change_hospital'),(39,'Can delete Hospital',10,'delete_hospital'),(40,'Can view Hospital',10,'view_hospital'),(41,'Can add specialty',11,'add_specialty'),(42,'Can change specialty',11,'change_specialty'),(43,'Can delete specialty',11,'delete_specialty'),(44,'Can view specialty',11,'view_specialty');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$870000$YnbWnhxxv2ejIxWeFbDmvt$9VoTMT3ijHqoPPzNGSGZ771G9KeZecS35UyaFirl+2g=','2025-03-08 00:16:10.136171',1,'mediqwik','','','23q91a6785@gmail.com',1,1,'2025-03-06 14:42:52.561550');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-03-06 14:46:10.622912','2','GULLE SANGAMESH (garuna217@gmail.com)',3,'',1,1),(2,'2025-03-06 14:46:10.622973','1','GULLE SANGAMESH (garuna@gmail.com)',3,'',1,1),(3,'2025-03-07 07:16:23.379881','7','garuna217@gmail.com - 2025-03-07 07:14:39.896227+00:00 - 127.0.0.1',3,'',2,1),(4,'2025-03-07 07:16:23.379938','6','garuna217@gmail.com - 2025-03-06 16:43:20.124427+00:00 - 127.0.0.1',3,'',2,1),(5,'2025-03-07 07:16:23.379955','5','garuna217@gmail.com - 2025-03-06 16:31:21.540124+00:00 - 127.0.0.1',3,'',2,1),(6,'2025-03-07 07:16:23.379970','4','garuna217@gmail.com - 2025-03-06 14:59:12.079595+00:00 - 127.0.0.1',3,'',2,1),(7,'2025-03-07 07:16:23.379985','3','garuna217@gmail.com - 2025-03-06 14:59:01.278612+00:00 - 127.0.0.1',3,'',2,1),(8,'2025-03-07 07:16:23.379999','2','garuna217@gmail.com - 2025-03-06 14:54:04.187311+00:00 - 127.0.0.1',3,'',2,1),(9,'2025-03-07 19:01:01.723299','1','People\'s Hospital',1,'[{\"added\": {}}]',10,1),(10,'2025-03-08 00:29:03.267316','2','Namasvi Clinics',1,'[{\"added\": {}}]',10,1),(11,'2025-03-08 00:31:41.131535','2','Namasvi Clinics',2,'[{\"changed\": {\"fields\": [\"Specialties\"]}}]',10,1),(12,'2025-03-08 00:41:51.655384','1','People\'s Hospital',2,'[{\"changed\": {\"fields\": [\"Address\", \"Specialties\"]}}]',10,1),(13,'2025-03-08 00:44:03.519687','3','My Med Hospitals',1,'[{\"added\": {}}]',10,1),(14,'2025-03-08 00:46:16.785992','4','Prasads Hospitals',1,'[{\"added\": {}}]',10,1),(15,'2025-03-08 00:47:52.902573','5','Parindhevi Hospitals',1,'[{\"added\": {}}]',10,1),(16,'2025-03-08 00:49:09.872656','6','Remedy Hospitals',1,'[{\"added\": {}}]',10,1),(17,'2025-03-08 00:50:35.675784','7','My Health Hospital',1,'[{\"added\": {}}]',10,1),(18,'2025-03-08 00:52:12.288043','8','Ankura Hospitals',1,'[{\"added\": {}}]',10,1),(19,'2025-03-08 00:53:18.437571','9','Landmark Hospitals',1,'[{\"added\": {}}]',10,1),(20,'2025-03-08 00:54:43.152589','10','Vasan Eye Care',1,'[{\"added\": {}}]',10,1),(21,'2025-03-08 00:56:03.277790','11','Omni Hospitals',1,'[{\"added\": {}}]',10,1),(22,'2025-03-08 00:57:49.904955','12','Sidharth Hospitals',1,'[{\"added\": {}}]',10,1),(23,'2025-03-08 00:58:34.333943','12','Sidharth Hospitals',2,'[{\"changed\": {\"fields\": [\"Specialties\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (9,'accounts','appointment'),(10,'accounts','hospital'),(2,'accounts','login'),(1,'accounts','register'),(11,'accounts','specialty'),(3,'admin','logentry'),(5,'auth','group'),(4,'auth','permission'),(6,'auth','user'),(7,'contenttypes','contenttype'),(8,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'accounts','0001_initial','2025-03-06 13:18:26.136552'),(2,'contenttypes','0001_initial','2025-03-06 13:18:26.175085'),(3,'auth','0001_initial','2025-03-06 13:18:26.497144'),(4,'admin','0001_initial','2025-03-06 13:18:26.583686'),(5,'admin','0002_logentry_remove_auto_add','2025-03-06 13:18:26.589849'),(6,'admin','0003_logentry_add_action_flag_choices','2025-03-06 13:18:26.598888'),(7,'contenttypes','0002_remove_content_type_name','2025-03-06 13:18:26.665587'),(8,'auth','0002_alter_permission_name_max_length','2025-03-06 13:18:26.705615'),(9,'auth','0003_alter_user_email_max_length','2025-03-06 13:18:26.724222'),(10,'auth','0004_alter_user_username_opts','2025-03-06 13:18:26.729598'),(11,'auth','0005_alter_user_last_login_null','2025-03-06 13:18:26.765706'),(12,'auth','0006_require_contenttypes_0002','2025-03-06 13:18:26.768405'),(13,'auth','0007_alter_validators_add_error_messages','2025-03-06 13:18:26.774457'),(14,'auth','0008_alter_user_username_max_length','2025-03-06 13:18:26.814723'),(15,'auth','0009_alter_user_last_name_max_length','2025-03-06 13:18:26.854873'),(16,'auth','0010_alter_group_name_max_length','2025-03-06 13:18:26.871901'),(17,'auth','0011_update_proxy_permissions','2025-03-06 13:18:26.879337'),(18,'auth','0012_alter_user_first_name_max_length','2025-03-06 13:18:26.922512'),(19,'sessions','0001_initial','2025-03-06 13:18:26.945765'),(20,'accounts','0002_appointment','2025-03-07 10:36:50.534217'),(21,'accounts','0003_hospital_delete_appointment','2025-03-07 18:50:17.247904'),(22,'accounts','0004_alter_hospital_specialties','2025-03-07 23:45:52.550984');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('09qq50b3p3yc3yw0u96fm0dzp77jgug3','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqt6W:CRJeeMjlsABowaNePsSWwgVxTm90aVgDBrqq7r_cQFQ','2025-03-22 12:16:32.103153'),('1i3yot91k7051hh7c99uiqx356gbtvjj','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqsSE:HeL5OZQ5XKQL9KmkccqTQqxg4cYjhAvEVLCKYnOYOSI','2025-03-22 11:34:54.349670'),('2o0i5dx3lbqqik3twjw2o4rwixensrhq','.eJxVjMsOwiAQRf-FtSEyvF269xsIw4BUDU1KuzL-uzTpQrfnnnPfLMRtrWHreQkTsQsT7PTLMKZnbvtAj9juM09zW5cJ-a7wY-38NlN-XQ_376DGXkcNopBQ6Ml66ZPUtgBqQ0rac7EOVYlQfBZoaFDrMZEGSFK5bMCNkH2-3hc3tw:1tqVA5:XjJ3FL3A9xjWPEgE7bDedj_xUvcOqTwCZLd5-65RqFE','2025-03-21 10:42:37.394806'),('3ly309opofy5d3ytre3u5yl34c7yfavs','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqjo1:AYLQyQeDckh9Vl5ZqOlnuxfVqq7FXJVHbqAPY68FPZg','2025-03-22 02:20:49.546320'),('4lo68vshhf2hd2f19ptoel1bpzsfenh5','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqig1:afqld91NS2HG7RDUhx_b2tiPIH8OA6U49W4hqNVQw1Y','2025-03-22 01:08:29.805256'),('4r0xj7c8f7funntdpmx27mawv7986vau','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqc6B:Ljs9gq14xNCayo-pkWr8iX69Dj4uvdOv5zwot-ZlhJw','2025-03-21 18:07:03.850841'),('8i452p2k4m9dfo2diewmtt76mg26tbas','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqk3C:p5rv0kuzKutz9_XRVnpVHyj4xJGleVUyzYRMlwyb7aI','2025-03-22 02:36:30.636488'),('avyyaurxcetu5k7s1nawy28gm0uzsxxf','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqt8w:xPHfvoV_3X62lUvz-TqN8_JEaIOOBNI7az6E_AV0LYw','2025-03-22 12:19:02.965779'),('fqiy0jn45bgz4vxhzwemxxkot9w8r7ji','.eJxVjMsOwiAQRf-FtSEyvF269xsIw4BUDU1KuzL-uzTpQrfnnnPfLMRtrWHreQkTsQsT7PTLMKZnbvtAj9juM09zW5cJ-a7wY-38NlN-XQ_376DGXkcNopBQ6Ml66ZPUtgBqQ0rac7EOVYlQfBZoaFDrMZEGSFK5bMCNkH2-3hc3tw:1tqVA2:P-HXUWPezBz60dmuflmk1SWQo0RwFzO4rJUeXZA16Jo','2025-03-21 10:42:34.912549'),('h1bw9w3gamlyt7iuxv9mbe6xnzgvoo0b','.eJxVjMsOwiAQRf-FtSEyvF269xsIw4BUDU1KuzL-uzTpQrfnnnPfLMRtrWHreQkTsQsT7PTLMKZnbvtAj9juM09zW5cJ-a7wY-38NlN-XQ_376DGXkcNopBQ6Ml66ZPUtgBqQ0rac7EOVYlQfBZoaFDrMZEGSFK5bMCNkH2-3hc3tw:1tqVA1:dx92XNb7KoLhQnPomGLM3jQ7FtKk0VNmJhq9PGYB87U','2025-03-21 10:42:33.317243'),('m07zzn9zfrrgxh8xetm8if66ycqed5zv','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqhRt:TTf4HS26PjH21-5rnwRnMLh6PqyosZm-wDZ6ioMhGN8','2025-03-21 23:49:49.589731'),('mr90cu9awhrwxkhxhb4pkc7mpnkhgusm','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqiX6:zbOOWGxudLukaPCayY22JF-_maOzDtGB_dXh4E2QIHQ','2025-03-22 00:59:16.316239'),('myycb0h2cjim8sz96snd2w1pdnzrdskx','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqjiH:Ntpz4gxyr9duo9W3HlgvZkfD-S8Tz4_ayCUyrBM-5hk','2025-03-22 02:14:53.364269'),('npddv4waf8y0niexdu56bpql99zdaceq','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqk3E:_FBSnlUee0P8Ds-RXABU0kBXTq8PKKVYbok2DM0SY_8','2025-03-22 02:36:32.483055'),('p9rjrifg6md2rofbla3fvx0s6mvawtsc','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqEJc:Ozx7JO8HszuPFrez2JXpm1_jf-gfxMzX9oedN2ZksDo','2025-03-20 16:43:20.140342'),('sdow88eyv4y4hw6miq6q9lbgi8g3pei8','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqjo3:nFB98U8E7_1Xj7xuOZtu4Fe_-G5LojWKV3u4QQN1Tec','2025-03-22 02:20:51.636926'),('shgunbeqfbe5h74fqzx1cdtzigqfanrw','.eJxVjMsKgzAURH-l3LWIJmqMOwtiF9qNdC151vQRi1FoKf33KpWCu-HMmXnD5NTQGgkZ9n7ZsruCDMpTVRW7Jj-WeV00B_Cgdco509tWPR9meEEWzIxNY9f-PyCEDeNMXJVdCnlh9tz7orfjYLi_KP7aOr_upbrtV3dz0DHXzWsUahlGnEpCMRU4JhrxOJERJoEmKY80Q5qqkCdypoRyIWOEBI5SlaB0HsLnC6BtS5k:1tqhSw:NxQVWNmee7uY8ez-EOcfo_tdhMVHfEst0mfSiunG6ac','2025-03-21 23:50:54.004597'),('sxukrn3gn5wbcdfl41omcgjb7gitxey1','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqcNh:mfR-TfKspbbnmfsYvu4Fco97aXypUWKkGv0adSvvcEA','2025-03-21 18:25:09.421371'),('x6mzw8f6ppd5xmm3hh80s9k9fcu6ioh6','eyJ1c2VyX2lkIjozLCJ1c2VyX25hbWUiOiJHVUxMRSBTQU5HQU1FU0giLCJfc2Vzc2lvbl9leHBpcnkiOjB9:1tqYIV:5VzWG26OaewV6I-jIx3nzh2cMuCdfKFgmw93pQ9kY6E','2025-03-21 14:03:31.136628');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-08 17:58:15
