-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: guldbar
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bar_plans`
--

DROP TABLE IF EXISTS `bar_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bar_plans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bar_plans`
--

LOCK TABLES `bar_plans` WRITE;
/*!40000 ALTER TABLE `bar_plans` DISABLE KEYS */;
INSERT INTO `bar_plans` VALUES (1,'Vinter 2024','2024-02-02','2024-06-14','vinter-2024','2024-02-10 19:29:58','2024-02-10 19:29:58');
/*!40000 ALTER TABLE `bar_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bars`
--

DROP TABLE IF EXISTS `bars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `theme` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `bar_plan_id` bigint(20) unsigned DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timeslot_from` time DEFAULT NULL,
  `timeslot_to` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bars_bar_plan_id_index` (`bar_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bars`
--

LOCK TABLES `bars` WRITE;
/*!40000 ALTER TABLE `bars` DISABLE KEYS */;
INSERT INTO `bars` VALUES (1,'Fredagsbar',NULL,'2024-02-02',1,'2024-02-02-000000','2024-02-10 19:29:58','2024-02-10 19:29:58','14:00:00','22:00:00'),(2,'Fredagsbar',NULL,'2024-02-09',1,'2024-02-09-000000','2024-02-10 19:29:58','2024-02-10 19:29:58','14:00:00','22:00:00'),(3,'Fredagsbar',NULL,'2024-02-16',1,'2024-02-16-000000','2024-02-10 19:29:58','2024-02-10 19:29:58','14:00:00','22:00:00'),(4,'Fredagsbar',NULL,'2024-02-23',1,'2024-02-23-000000','2024-02-10 19:29:58','2024-02-10 19:29:58','14:00:00','22:00:00'),(5,'Fredagsbar',NULL,'2024-03-01',1,'2024-03-01-000000','2024-02-10 19:29:59','2024-02-10 19:29:59','14:00:00','22:00:00'),(6,'Fredagsbar',NULL,'2024-03-08',1,'2024-03-08-000000','2024-02-10 19:29:59','2024-02-10 19:29:59','14:00:00','22:00:00'),(7,'Fredagsbar',NULL,'2024-03-15',1,'2024-03-15-000000','2024-02-10 19:29:59','2024-02-10 19:29:59','14:00:00','22:00:00'),(8,'Fredagsbar',NULL,'2024-03-22',1,'2024-03-22-000000','2024-02-10 19:29:59','2024-02-10 19:29:59','14:00:00','22:00:00'),(9,'Fredagsbar',NULL,'2024-03-29',1,'2024-03-29-000000','2024-02-10 19:29:59','2024-02-10 19:29:59','14:00:00','22:00:00'),(10,'Fredagsbar',NULL,'2024-04-05',1,'2024-04-05-000000','2024-02-10 19:29:59','2024-02-10 19:29:59','14:00:00','22:00:00'),(11,'Fredagsbar',NULL,'2024-04-12',1,'2024-04-12-000000','2024-02-10 19:30:00','2024-02-10 19:30:00','14:00:00','22:00:00'),(12,'Fredagsbar',NULL,'2024-04-19',1,'2024-04-19-000000','2024-02-10 19:30:00','2024-02-10 19:30:00','14:00:00','22:00:00'),(13,'Fredagsbar',NULL,'2024-04-26',1,'2024-04-26-000000','2024-02-10 19:30:00','2024-02-10 19:30:00','14:00:00','22:00:00'),(14,'Fredagsbar',NULL,'2024-05-03',1,'2024-05-03-000000','2024-02-10 19:30:00','2024-02-10 19:30:00','14:00:00','22:00:00'),(15,'Fredagsbar',NULL,'2024-05-10',1,'2024-05-10-000000','2024-02-10 19:30:00','2024-02-10 19:30:00','14:00:00','22:00:00'),(16,'Fredagsbar',NULL,'2024-05-17',1,'2024-05-17-000000','2024-02-10 19:30:00','2024-02-10 19:30:00','14:00:00','22:00:00'),(17,'Fredagsbar',NULL,'2024-05-24',1,'2024-05-24-000000','2024-02-10 19:30:00','2024-02-10 19:30:00','14:00:00','22:00:00'),(18,'Fredagsbar',NULL,'2024-05-31',1,'2024-05-31-000000','2024-02-10 19:30:01','2024-02-10 19:30:01','14:00:00','22:00:00'),(19,'Fredagsbar',NULL,'2024-06-07',1,'2024-06-07-000000','2024-02-10 19:30:01','2024-02-10 19:30:01','14:00:00','22:00:00'),(20,'Fredagsbar',NULL,'2024-06-14',1,'2024-06-14-000000','2024-02-10 19:30:01','2024-02-10 19:30:01','14:00:00','22:00:00');
/*!40000 ALTER TABLE `bars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_09_09_200334_create_roles_table',1),(6,'2023_09_09_201635_create_users_roles_table',1),(7,'2023_09_24_183759_create_bar_plans_table',1),(8,'2023_09_24_184729_create_bars_table',1),(9,'2023_09_24_185343_create_shifts_table',1),(10,'2024_01_16_113751_add_timeslot_columns_to_bars_table',1),(11,'2024_01_16_144908_add_location_columns_to_shifts_table',1),(12,'2024_02_10_195800_add_approved_at_to_users_table',1),(13,'2024_02_19_144300_add_access_level_to_roles_table',2),(14,'2024_04_16_121924_add_checklist_to_shifts',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1,1,NULL,NULL),(2,2,4,NULL,NULL),(3,3,4,NULL,NULL),(4,4,4,NULL,NULL),(5,5,4,NULL,NULL),(6,1,3,NULL,NULL),(7,3,3,NULL,NULL),(8,6,4,NULL,NULL),(9,6,3,NULL,NULL),(10,7,4,NULL,NULL);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `access_level` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','2024-02-10 19:29:57','2024-02-10 19:29:57',1),(2,'Formand','2024-02-10 19:29:57','2024-02-10 19:29:57',1),(3,'Baransvarlig','2024-02-10 19:29:57','2024-02-10 19:29:57',2),(4,'Frivillig','2024-02-10 19:29:57','2024-02-10 19:29:57',2),(5,'Udvikler','2024-02-10 19:29:58','2024-02-10 19:29:58',1);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shifts`
--

DROP TABLE IF EXISTS `shifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shifts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `timeslot_from` time NOT NULL,
  `timeslot_to` time NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `bar_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `checklist` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`checklist`)),
  PRIMARY KEY (`id`),
  KEY `shifts_user_id_index` (`user_id`),
  KEY `shifts_bar_id_index` (`bar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shifts`
--

LOCK TABLES `shifts` WRITE;
/*!40000 ALTER TABLE `shifts` DISABLE KEYS */;
INSERT INTO `shifts` VALUES (1,'baransvarlig','13:30:00','22:00:00',NULL,1,NULL,NULL,NULL,NULL),(2,'bartender','13:30:00','17:00:00',1,1,NULL,'2024-05-08 12:25:54',NULL,NULL),(3,'bartender','13:30:00','17:00:00',NULL,1,NULL,NULL,NULL,NULL),(4,'bartender','13:30:00','17:00:00',NULL,1,NULL,NULL,NULL,NULL),(5,'bartender','13:30:00','17:00:00',NULL,1,NULL,NULL,NULL,NULL),(6,'bartender','17:00:00','20:00:00',NULL,1,NULL,NULL,NULL,NULL),(7,'bartender','17:00:00','20:00:00',NULL,1,NULL,NULL,NULL,NULL),(8,'bartender','17:00:00','20:00:00',NULL,1,NULL,NULL,NULL,NULL),(9,'bartender','17:00:00','20:00:00',NULL,1,NULL,NULL,NULL,NULL),(10,'bartender','20:00:00','22:00:00',NULL,1,NULL,NULL,NULL,NULL),(11,'bartender','20:00:00','22:00:00',NULL,1,NULL,NULL,NULL,NULL),(12,'bartender','20:00:00','22:00:00',NULL,1,NULL,NULL,NULL,NULL),(13,'bartender','20:00:00','22:00:00',NULL,1,NULL,NULL,NULL,NULL),(14,'baransvarlig','13:30:00','22:00:00',NULL,2,NULL,NULL,NULL,NULL),(15,'bartender','13:30:00','17:00:00',NULL,2,NULL,NULL,NULL,NULL),(16,'bartender','13:30:00','17:00:00',NULL,2,NULL,NULL,NULL,NULL),(17,'bartender','13:30:00','17:00:00',NULL,2,NULL,NULL,NULL,NULL),(18,'bartender','13:30:00','17:00:00',NULL,2,NULL,NULL,NULL,NULL),(19,'bartender','17:00:00','20:00:00',NULL,2,NULL,NULL,NULL,NULL),(20,'bartender','17:00:00','20:00:00',NULL,2,NULL,NULL,NULL,NULL),(21,'bartender','17:00:00','20:00:00',NULL,2,NULL,NULL,NULL,NULL),(22,'bartender','17:00:00','20:00:00',NULL,2,NULL,NULL,NULL,NULL),(23,'bartender','20:00:00','22:00:00',NULL,2,NULL,NULL,NULL,NULL),(24,'bartender','20:00:00','22:00:00',NULL,2,NULL,NULL,NULL,NULL),(25,'bartender','20:00:00','22:00:00',NULL,2,NULL,NULL,NULL,NULL),(26,'bartender','20:00:00','22:00:00',NULL,2,NULL,NULL,NULL,NULL),(27,'baransvarlig','13:30:00','22:00:00',NULL,3,NULL,NULL,NULL,NULL),(28,'bartender','13:30:00','17:00:00',NULL,3,NULL,NULL,NULL,NULL),(29,'bartender','13:30:00','17:00:00',NULL,3,NULL,NULL,NULL,NULL),(30,'bartender','13:30:00','17:00:00',NULL,3,NULL,NULL,NULL,NULL),(31,'bartender','13:30:00','17:00:00',NULL,3,NULL,NULL,NULL,NULL),(32,'bartender','17:00:00','20:00:00',NULL,3,NULL,NULL,NULL,NULL),(33,'bartender','17:00:00','20:00:00',NULL,3,NULL,NULL,NULL,NULL),(34,'bartender','17:00:00','20:00:00',NULL,3,NULL,NULL,NULL,NULL),(35,'bartender','17:00:00','20:00:00',NULL,3,NULL,NULL,NULL,NULL),(36,'bartender','20:00:00','22:00:00',NULL,3,NULL,NULL,NULL,NULL),(37,'bartender','20:00:00','22:00:00',NULL,3,NULL,NULL,NULL,NULL),(38,'bartender','20:00:00','22:00:00',NULL,3,NULL,NULL,NULL,NULL),(39,'bartender','20:00:00','22:00:00',NULL,3,NULL,NULL,NULL,NULL),(40,'baransvarlig','13:30:00','22:00:00',NULL,4,NULL,NULL,NULL,NULL),(41,'bartender','13:30:00','17:00:00',NULL,4,NULL,NULL,NULL,NULL),(42,'bartender','13:30:00','17:00:00',NULL,4,NULL,NULL,NULL,NULL),(43,'bartender','13:30:00','17:00:00',NULL,4,NULL,NULL,NULL,NULL),(44,'bartender','13:30:00','17:00:00',NULL,4,NULL,NULL,NULL,NULL),(45,'bartender','17:00:00','20:00:00',NULL,4,NULL,NULL,NULL,NULL),(46,'bartender','17:00:00','20:00:00',NULL,4,NULL,NULL,NULL,NULL),(47,'bartender','17:00:00','20:00:00',NULL,4,NULL,NULL,NULL,NULL),(48,'bartender','17:00:00','20:00:00',NULL,4,NULL,NULL,NULL,NULL),(49,'bartender','20:00:00','22:00:00',NULL,4,NULL,NULL,NULL,NULL),(50,'bartender','20:00:00','22:00:00',NULL,4,NULL,NULL,NULL,NULL),(51,'bartender','20:00:00','22:00:00',NULL,4,NULL,NULL,NULL,NULL),(52,'bartender','20:00:00','22:00:00',NULL,4,NULL,NULL,NULL,NULL),(53,'baransvarlig','13:30:00','22:00:00',NULL,5,NULL,NULL,NULL,NULL),(54,'bartender','13:30:00','17:00:00',NULL,5,NULL,NULL,NULL,NULL),(55,'bartender','13:30:00','17:00:00',NULL,5,NULL,NULL,NULL,NULL),(56,'bartender','13:30:00','17:00:00',NULL,5,NULL,NULL,NULL,NULL),(57,'bartender','13:30:00','17:00:00',NULL,5,NULL,NULL,NULL,NULL),(58,'bartender','17:00:00','20:00:00',NULL,5,NULL,NULL,NULL,NULL),(59,'bartender','17:00:00','20:00:00',NULL,5,NULL,NULL,NULL,NULL),(60,'bartender','17:00:00','20:00:00',NULL,5,NULL,NULL,NULL,NULL),(61,'bartender','17:00:00','20:00:00',NULL,5,NULL,NULL,NULL,NULL),(62,'bartender','20:00:00','22:00:00',NULL,5,NULL,NULL,NULL,NULL),(63,'bartender','20:00:00','22:00:00',NULL,5,NULL,NULL,NULL,NULL),(64,'bartender','20:00:00','22:00:00',NULL,5,NULL,NULL,NULL,NULL),(65,'bartender','20:00:00','22:00:00',NULL,5,NULL,NULL,NULL,NULL),(66,'baransvarlig','13:30:00','22:00:00',NULL,6,NULL,NULL,NULL,NULL),(67,'bartender','13:30:00','17:00:00',NULL,6,NULL,NULL,NULL,NULL),(68,'bartender','13:30:00','17:00:00',NULL,6,NULL,NULL,NULL,NULL),(69,'bartender','13:30:00','17:00:00',NULL,6,NULL,NULL,NULL,NULL),(70,'bartender','13:30:00','17:00:00',NULL,6,NULL,NULL,NULL,NULL),(71,'bartender','17:00:00','20:00:00',NULL,6,NULL,NULL,NULL,NULL),(72,'bartender','17:00:00','20:00:00',NULL,6,NULL,NULL,NULL,NULL),(73,'bartender','17:00:00','20:00:00',NULL,6,NULL,NULL,NULL,NULL),(74,'bartender','17:00:00','20:00:00',NULL,6,NULL,NULL,NULL,NULL),(75,'bartender','20:00:00','22:00:00',NULL,6,NULL,NULL,NULL,NULL),(76,'bartender','20:00:00','22:00:00',NULL,6,NULL,NULL,NULL,NULL),(77,'bartender','20:00:00','22:00:00',NULL,6,NULL,NULL,NULL,NULL),(78,'bartender','20:00:00','22:00:00',NULL,6,NULL,NULL,NULL,NULL),(79,'baransvarlig','13:30:00','22:00:00',NULL,7,NULL,NULL,NULL,NULL),(80,'bartender','13:30:00','17:00:00',NULL,7,NULL,NULL,NULL,NULL),(81,'bartender','13:30:00','17:00:00',NULL,7,NULL,NULL,NULL,NULL),(82,'bartender','13:30:00','17:00:00',NULL,7,NULL,NULL,NULL,NULL),(83,'bartender','13:30:00','17:00:00',NULL,7,NULL,NULL,NULL,NULL),(84,'bartender','17:00:00','20:00:00',NULL,7,NULL,NULL,NULL,NULL),(85,'bartender','17:00:00','20:00:00',NULL,7,NULL,NULL,NULL,NULL),(86,'bartender','17:00:00','20:00:00',NULL,7,NULL,NULL,NULL,NULL),(87,'bartender','17:00:00','20:00:00',NULL,7,NULL,NULL,NULL,NULL),(88,'bartender','20:00:00','22:00:00',NULL,7,NULL,NULL,NULL,NULL),(89,'bartender','20:00:00','22:00:00',NULL,7,NULL,NULL,NULL,NULL),(90,'bartender','20:00:00','22:00:00',NULL,7,NULL,NULL,NULL,NULL),(91,'bartender','20:00:00','22:00:00',NULL,7,NULL,NULL,NULL,NULL),(92,'baransvarlig','13:30:00','22:00:00',NULL,8,NULL,NULL,NULL,NULL),(93,'bartender','13:30:00','17:00:00',NULL,8,NULL,NULL,NULL,NULL),(94,'bartender','13:30:00','17:00:00',NULL,8,NULL,NULL,NULL,NULL),(95,'bartender','13:30:00','17:00:00',NULL,8,NULL,NULL,NULL,NULL),(96,'bartender','13:30:00','17:00:00',NULL,8,NULL,NULL,NULL,NULL),(97,'bartender','17:00:00','20:00:00',NULL,8,NULL,NULL,NULL,NULL),(98,'bartender','17:00:00','20:00:00',NULL,8,NULL,NULL,NULL,NULL),(99,'bartender','17:00:00','20:00:00',NULL,8,NULL,NULL,NULL,NULL),(100,'bartender','17:00:00','20:00:00',NULL,8,NULL,NULL,NULL,NULL),(101,'bartender','20:00:00','22:00:00',NULL,8,NULL,NULL,NULL,NULL),(102,'bartender','20:00:00','22:00:00',NULL,8,NULL,NULL,NULL,NULL),(103,'bartender','20:00:00','22:00:00',NULL,8,NULL,NULL,NULL,NULL),(104,'bartender','20:00:00','22:00:00',NULL,8,NULL,NULL,NULL,NULL),(105,'baransvarlig','13:30:00','22:00:00',NULL,9,NULL,NULL,NULL,NULL),(106,'bartender','13:30:00','17:00:00',NULL,9,NULL,NULL,NULL,NULL),(107,'bartender','13:30:00','17:00:00',NULL,9,NULL,NULL,NULL,NULL),(108,'bartender','13:30:00','17:00:00',NULL,9,NULL,NULL,NULL,NULL),(109,'bartender','13:30:00','17:00:00',NULL,9,NULL,NULL,NULL,NULL),(110,'bartender','17:00:00','20:00:00',NULL,9,NULL,NULL,NULL,NULL),(111,'bartender','17:00:00','20:00:00',NULL,9,NULL,NULL,NULL,NULL),(112,'bartender','17:00:00','20:00:00',NULL,9,NULL,NULL,NULL,NULL),(113,'bartender','17:00:00','20:00:00',NULL,9,NULL,NULL,NULL,NULL),(114,'bartender','20:00:00','22:00:00',NULL,9,NULL,NULL,NULL,NULL),(115,'bartender','20:00:00','22:00:00',NULL,9,NULL,NULL,NULL,NULL),(116,'bartender','20:00:00','22:00:00',NULL,9,NULL,NULL,NULL,NULL),(117,'bartender','20:00:00','22:00:00',NULL,9,NULL,NULL,NULL,NULL),(118,'baransvarlig','13:30:00','22:00:00',NULL,10,NULL,NULL,NULL,NULL),(119,'bartender','13:30:00','17:00:00',NULL,10,NULL,NULL,NULL,NULL),(120,'bartender','13:30:00','17:00:00',NULL,10,NULL,NULL,NULL,NULL),(121,'bartender','13:30:00','17:00:00',NULL,10,NULL,NULL,NULL,NULL),(122,'bartender','13:30:00','17:00:00',NULL,10,NULL,NULL,NULL,NULL),(123,'bartender','17:00:00','20:00:00',NULL,10,NULL,NULL,NULL,NULL),(124,'bartender','17:00:00','20:00:00',NULL,10,NULL,NULL,NULL,NULL),(125,'bartender','17:00:00','20:00:00',NULL,10,NULL,NULL,NULL,NULL),(126,'bartender','17:00:00','20:00:00',NULL,10,NULL,NULL,NULL,NULL),(127,'bartender','20:00:00','22:00:00',NULL,10,NULL,NULL,NULL,NULL),(128,'bartender','20:00:00','22:00:00',NULL,10,NULL,NULL,NULL,NULL),(129,'bartender','20:00:00','22:00:00',NULL,10,NULL,NULL,NULL,NULL),(130,'bartender','20:00:00','22:00:00',NULL,10,NULL,NULL,NULL,NULL),(131,'baransvarlig','13:30:00','22:00:00',NULL,11,NULL,NULL,NULL,NULL),(132,'bartender','13:30:00','17:00:00',NULL,11,NULL,NULL,NULL,NULL),(133,'bartender','13:30:00','17:00:00',NULL,11,NULL,NULL,NULL,NULL),(134,'bartender','13:30:00','17:00:00',NULL,11,NULL,NULL,NULL,NULL),(135,'bartender','13:30:00','17:00:00',NULL,11,NULL,NULL,NULL,NULL),(136,'bartender','17:00:00','20:00:00',NULL,11,NULL,NULL,NULL,NULL),(137,'bartender','17:00:00','20:00:00',NULL,11,NULL,NULL,NULL,NULL),(138,'bartender','17:00:00','20:00:00',NULL,11,NULL,NULL,NULL,NULL),(139,'bartender','17:00:00','20:00:00',NULL,11,NULL,NULL,NULL,NULL),(140,'bartender','20:00:00','22:00:00',NULL,11,NULL,NULL,NULL,NULL),(141,'bartender','20:00:00','22:00:00',NULL,11,NULL,NULL,NULL,NULL),(142,'bartender','20:00:00','22:00:00',NULL,11,NULL,NULL,NULL,NULL),(143,'bartender','20:00:00','22:00:00',NULL,11,NULL,NULL,NULL,NULL),(144,'baransvarlig','13:30:00','22:00:00',NULL,12,NULL,'2024-04-16 14:45:31',NULL,'{\"opening\":[{\"task\":\"Stole, borde og resten af inventaret s\\u00e6ttes op.\",\"completed\":true},{\"task\":\"Udskiftning af skraldeposer (sorte s\\u00e6kke til regul\\u00e6re skraldespande, klare s\\u00e6kke udelukkende til tomme fustager).\",\"completed\":false},{\"task\":\"Baren ryddes for ting og t\\u00f8rres af.\",\"completed\":false},{\"task\":\"K\\u00f8kken reng\\u00f8res.\",\"completed\":false},{\"task\":\"Klarg\\u00f8ring af bar\",\"completed\":false},{\"task\":\"Ops\\u00e6tning og testning af fustager.\",\"completed\":false},{\"task\":\"Udsmykning af bar samt lokale (Hvis vi har et tema).\",\"completed\":false},{\"task\":\"Hvis det ikke er gjort  T\\u00e6nd musik \",\"completed\":true}],\"closing\":[{\"task\":\"Oprydning af skrald fra alle overflader. (Borde, b\\u00e6nke, stole, gulv og udenfor)\",\"completed\":true},{\"task\":\"Borde, b\\u00e6nke og stole t\\u00f8rres af og stables.\",\"completed\":false},{\"task\":\"Fulde \\u00f8lkasser med tomme flasker s\\u00e6ttes p\\u00e5 pallen til venstre for baren.\",\"completed\":true},{\"task\":\"T\\u00f8mning af monterede fustager  Det skal h\\u00e6ldes ud eller drikkes.\",\"completed\":false},{\"task\":\"iPads og Zettles t\\u00f8rres af med en klud og reng\\u00f8res  Placeres i skabet under lyden.\",\"completed\":false},{\"task\":\"Fad\\u00f8lsanl\\u00e6ggets taphane t\\u00f8rres af og spildebakken vaskes op.\",\"completed\":false},{\"task\":\"Barens areal t\\u00f8rres af, b\\u00e5de selve baren og bord ved v\\u00e6ggen.\",\"completed\":false},{\"task\":\"Tomme fustage puttes i klar plastpose (MAX 5 i hver). Poserne placeres p\\u00e5 pallen med \\u00f8lkasser.\",\"completed\":true},{\"task\":\"Returpant d\\u00e5ser og flasker t\\u00f8mmes og s\\u00e6ttes ud i depotet.\",\"completed\":false},{\"task\":\"Glasflasker som ikke har pantm\\u00e6rker p\\u00e5, kan afleveres p\\u00e5 bagsiden af kantinen. I en r\\u00f8d container.\",\"completed\":false},{\"task\":\"Sorte s\\u00e6kke smides i affaldsskakten, n\\u00f8glen h\\u00e6nger KEA k\\u00e6de i depotet  N\\u00f8glen m\\u00e5 p\\u00e5 ingen m\\u00e5de mistes.\",\"completed\":false},{\"task\":\"Alt pap samles og stilles ved pappresser i affaldsrummet i cykelk\\u00e6lderen.\",\"completed\":true}]}'),(145,'bartender','13:30:00','17:00:00',NULL,12,NULL,NULL,NULL,NULL),(146,'bartender','13:30:00','17:00:00',NULL,12,NULL,NULL,NULL,NULL),(147,'bartender','13:30:00','17:00:00',NULL,12,NULL,NULL,NULL,NULL),(148,'bartender','13:30:00','17:00:00',NULL,12,NULL,NULL,NULL,NULL),(149,'bartender','17:00:00','20:00:00',NULL,12,NULL,NULL,NULL,NULL),(150,'bartender','17:00:00','20:00:00',NULL,12,NULL,NULL,NULL,NULL),(151,'bartender','17:00:00','20:00:00',NULL,12,NULL,NULL,NULL,NULL),(152,'bartender','17:00:00','20:00:00',NULL,12,NULL,NULL,NULL,NULL),(153,'bartender','20:00:00','22:00:00',NULL,12,NULL,NULL,NULL,NULL),(154,'bartender','20:00:00','22:00:00',NULL,12,NULL,NULL,NULL,NULL),(155,'bartender','20:00:00','22:00:00',NULL,12,NULL,NULL,NULL,NULL),(156,'bartender','20:00:00','22:00:00',NULL,12,NULL,NULL,NULL,NULL),(157,'baransvarlig','13:30:00','22:00:00',NULL,13,NULL,NULL,NULL,NULL),(158,'bartender','13:30:00','17:00:00',NULL,13,NULL,NULL,NULL,NULL),(159,'bartender','13:30:00','17:00:00',NULL,13,NULL,NULL,NULL,NULL),(160,'bartender','13:30:00','17:00:00',NULL,13,NULL,NULL,NULL,NULL),(161,'bartender','13:30:00','17:00:00',NULL,13,NULL,NULL,NULL,NULL),(162,'bartender','17:00:00','20:00:00',NULL,13,NULL,NULL,NULL,NULL),(163,'bartender','17:00:00','20:00:00',NULL,13,NULL,NULL,NULL,NULL),(164,'bartender','17:00:00','20:00:00',NULL,13,NULL,NULL,NULL,NULL),(165,'bartender','17:00:00','20:00:00',NULL,13,NULL,NULL,NULL,NULL),(166,'bartender','20:00:00','22:00:00',NULL,13,NULL,NULL,NULL,NULL),(167,'bartender','20:00:00','22:00:00',NULL,13,NULL,NULL,NULL,NULL),(168,'bartender','20:00:00','22:00:00',NULL,13,NULL,NULL,NULL,NULL),(169,'bartender','20:00:00','22:00:00',NULL,13,NULL,NULL,NULL,NULL),(170,'baransvarlig','13:30:00','22:00:00',NULL,14,NULL,NULL,NULL,NULL),(171,'bartender','13:30:00','17:00:00',NULL,14,NULL,NULL,NULL,NULL),(172,'bartender','13:30:00','17:00:00',NULL,14,NULL,NULL,NULL,NULL),(173,'bartender','13:30:00','17:00:00',NULL,14,NULL,NULL,NULL,NULL),(174,'bartender','13:30:00','17:00:00',NULL,14,NULL,NULL,NULL,NULL),(175,'bartender','17:00:00','20:00:00',NULL,14,NULL,NULL,NULL,NULL),(176,'bartender','17:00:00','20:00:00',NULL,14,NULL,NULL,NULL,NULL),(177,'bartender','17:00:00','20:00:00',NULL,14,NULL,NULL,NULL,NULL),(178,'bartender','17:00:00','20:00:00',NULL,14,NULL,NULL,NULL,NULL),(179,'bartender','20:00:00','22:00:00',NULL,14,NULL,NULL,NULL,NULL),(180,'bartender','20:00:00','22:00:00',NULL,14,NULL,NULL,NULL,NULL),(181,'bartender','20:00:00','22:00:00',NULL,14,NULL,NULL,NULL,NULL),(182,'bartender','20:00:00','22:00:00',NULL,14,NULL,NULL,NULL,NULL),(183,'baransvarlig','13:30:00','22:00:00',NULL,15,NULL,'2024-05-08 10:47:33',NULL,NULL),(184,'bartender','13:30:00','17:00:00',NULL,15,NULL,NULL,NULL,NULL),(185,'bartender','13:30:00','17:00:00',NULL,15,NULL,NULL,NULL,NULL),(186,'bartender','13:30:00','17:00:00',NULL,15,NULL,NULL,NULL,NULL),(187,'bartender','13:30:00','17:00:00',NULL,15,NULL,'2024-05-08 10:47:28',NULL,NULL),(188,'bartender','17:00:00','20:00:00',NULL,15,NULL,NULL,NULL,NULL),(189,'bartender','17:00:00','20:00:00',NULL,15,NULL,NULL,NULL,NULL),(190,'bartender','17:00:00','20:00:00',NULL,15,NULL,NULL,NULL,NULL),(191,'bartender','17:00:00','20:00:00',NULL,15,NULL,NULL,NULL,NULL),(192,'bartender','20:00:00','22:00:00',NULL,15,NULL,NULL,NULL,NULL),(193,'bartender','20:00:00','22:00:00',NULL,15,NULL,NULL,NULL,NULL),(194,'bartender','20:00:00','22:00:00',NULL,15,NULL,NULL,NULL,NULL),(195,'bartender','20:00:00','22:00:00',NULL,15,NULL,NULL,NULL,NULL),(196,'baransvarlig','13:30:00','22:00:00',NULL,16,NULL,NULL,NULL,NULL),(197,'bartender','13:30:00','17:00:00',NULL,16,NULL,NULL,NULL,NULL),(198,'bartender','13:30:00','17:00:00',NULL,16,NULL,NULL,NULL,NULL),(199,'bartender','13:30:00','17:00:00',NULL,16,NULL,NULL,NULL,NULL),(200,'bartender','13:30:00','17:00:00',NULL,16,NULL,NULL,NULL,NULL),(201,'bartender','17:00:00','20:00:00',NULL,16,NULL,NULL,NULL,NULL),(202,'bartender','17:00:00','20:00:00',NULL,16,NULL,NULL,NULL,NULL),(203,'bartender','17:00:00','20:00:00',NULL,16,NULL,NULL,NULL,NULL),(204,'bartender','17:00:00','20:00:00',NULL,16,NULL,NULL,NULL,NULL),(205,'bartender','20:00:00','22:00:00',NULL,16,NULL,NULL,NULL,NULL),(206,'bartender','20:00:00','22:00:00',NULL,16,NULL,NULL,NULL,NULL),(207,'bartender','20:00:00','22:00:00',NULL,16,NULL,NULL,NULL,NULL),(208,'bartender','20:00:00','22:00:00',NULL,16,NULL,NULL,NULL,NULL),(209,'baransvarlig','13:30:00','22:00:00',NULL,17,NULL,NULL,NULL,NULL),(210,'bartender','13:30:00','17:00:00',NULL,17,NULL,NULL,NULL,NULL),(211,'bartender','13:30:00','17:00:00',NULL,17,NULL,NULL,NULL,NULL),(212,'bartender','13:30:00','17:00:00',NULL,17,NULL,NULL,NULL,NULL),(213,'bartender','13:30:00','17:00:00',NULL,17,NULL,NULL,NULL,NULL),(214,'bartender','17:00:00','20:00:00',NULL,17,NULL,NULL,NULL,NULL),(215,'bartender','17:00:00','20:00:00',NULL,17,NULL,NULL,NULL,NULL),(216,'bartender','17:00:00','20:00:00',NULL,17,NULL,NULL,NULL,NULL),(217,'bartender','17:00:00','20:00:00',NULL,17,NULL,NULL,NULL,NULL),(218,'bartender','20:00:00','22:00:00',NULL,17,NULL,NULL,NULL,NULL),(219,'bartender','20:00:00','22:00:00',NULL,17,NULL,NULL,NULL,NULL),(220,'bartender','20:00:00','22:00:00',NULL,17,NULL,NULL,NULL,NULL),(221,'bartender','20:00:00','22:00:00',NULL,17,NULL,NULL,NULL,NULL),(222,'baransvarlig','13:30:00','22:00:00',NULL,18,NULL,NULL,NULL,NULL),(223,'bartender','13:30:00','17:00:00',NULL,18,NULL,NULL,NULL,NULL),(224,'bartender','13:30:00','17:00:00',NULL,18,NULL,NULL,NULL,NULL),(225,'bartender','13:30:00','17:00:00',NULL,18,NULL,NULL,NULL,NULL),(226,'bartender','13:30:00','17:00:00',NULL,18,NULL,NULL,NULL,NULL),(227,'bartender','17:00:00','20:00:00',NULL,18,NULL,NULL,NULL,NULL),(228,'bartender','17:00:00','20:00:00',NULL,18,NULL,NULL,NULL,NULL),(229,'bartender','17:00:00','20:00:00',NULL,18,NULL,NULL,NULL,NULL),(230,'bartender','17:00:00','20:00:00',NULL,18,NULL,NULL,NULL,NULL),(231,'bartender','20:00:00','22:00:00',NULL,18,NULL,NULL,NULL,NULL),(232,'bartender','20:00:00','22:00:00',NULL,18,NULL,NULL,NULL,NULL),(233,'bartender','20:00:00','22:00:00',NULL,18,NULL,NULL,NULL,NULL),(234,'bartender','20:00:00','22:00:00',NULL,18,NULL,NULL,NULL,NULL),(235,'baransvarlig','13:30:00','22:00:00',NULL,19,NULL,NULL,NULL,NULL),(236,'bartender','13:30:00','17:00:00',NULL,19,NULL,NULL,NULL,NULL),(237,'bartender','13:30:00','17:00:00',NULL,19,NULL,NULL,NULL,NULL),(238,'bartender','13:30:00','17:00:00',NULL,19,NULL,NULL,NULL,NULL),(239,'bartender','13:30:00','17:00:00',NULL,19,NULL,NULL,NULL,NULL),(240,'bartender','17:00:00','20:00:00',NULL,19,NULL,NULL,NULL,NULL),(241,'bartender','17:00:00','20:00:00',NULL,19,NULL,NULL,NULL,NULL),(242,'bartender','17:00:00','20:00:00',NULL,19,NULL,NULL,NULL,NULL),(243,'bartender','17:00:00','20:00:00',NULL,19,NULL,NULL,NULL,NULL),(244,'bartender','20:00:00','22:00:00',NULL,19,NULL,NULL,NULL,NULL),(245,'bartender','20:00:00','22:00:00',NULL,19,NULL,NULL,NULL,NULL),(246,'bartender','20:00:00','22:00:00',NULL,19,NULL,NULL,NULL,NULL),(247,'bartender','20:00:00','22:00:00',NULL,19,NULL,NULL,NULL,NULL),(248,'baransvarlig','13:30:00','22:00:00',NULL,20,NULL,NULL,NULL,NULL),(249,'bartender','13:30:00','17:00:00',NULL,20,NULL,NULL,NULL,NULL),(250,'bartender','13:30:00','17:00:00',NULL,20,NULL,NULL,NULL,NULL),(251,'bartender','13:30:00','17:00:00',NULL,20,NULL,NULL,NULL,NULL),(252,'bartender','13:30:00','17:00:00',NULL,20,NULL,NULL,NULL,NULL),(253,'bartender','17:00:00','20:00:00',NULL,20,NULL,NULL,NULL,NULL),(254,'bartender','17:00:00','20:00:00',NULL,20,NULL,NULL,NULL,NULL),(255,'bartender','17:00:00','20:00:00',NULL,20,NULL,NULL,NULL,NULL),(256,'bartender','17:00:00','20:00:00',NULL,20,NULL,NULL,NULL,NULL),(257,'bartender','20:00:00','22:00:00',NULL,20,NULL,NULL,NULL,NULL),(258,'bartender','20:00:00','22:00:00',NULL,20,NULL,NULL,NULL,NULL),(259,'bartender','20:00:00','22:00:00',NULL,20,NULL,NULL,NULL,NULL),(260,'bartender','20:00:00','22:00:00',NULL,20,NULL,NULL,NULL,NULL),(261,'baransvarlig','13:30:00','22:00:00',NULL,12,'2024-04-16 11:54:25','2024-04-16 14:45:31',NULL,'{\"opening\":[{\"task\":\"Stole, borde og resten af inventaret s\\u00e6ttes op.\",\"completed\":true},{\"task\":\"Udskiftning af skraldeposer (sorte s\\u00e6kke til regul\\u00e6re skraldespande, klare s\\u00e6kke udelukkende til tomme fustager).\",\"completed\":false},{\"task\":\"Baren ryddes for ting og t\\u00f8rres af.\",\"completed\":false},{\"task\":\"K\\u00f8kken reng\\u00f8res.\",\"completed\":false},{\"task\":\"Klarg\\u00f8ring af bar\",\"completed\":false},{\"task\":\"Ops\\u00e6tning og testning af fustager.\",\"completed\":false},{\"task\":\"Udsmykning af bar samt lokale (Hvis vi har et tema).\",\"completed\":false},{\"task\":\"Hvis det ikke er gjort  T\\u00e6nd musik \",\"completed\":true}],\"closing\":[{\"task\":\"Oprydning af skrald fra alle overflader. (Borde, b\\u00e6nke, stole, gulv og udenfor)\",\"completed\":true},{\"task\":\"Borde, b\\u00e6nke og stole t\\u00f8rres af og stables.\",\"completed\":false},{\"task\":\"Fulde \\u00f8lkasser med tomme flasker s\\u00e6ttes p\\u00e5 pallen til venstre for baren.\",\"completed\":true},{\"task\":\"T\\u00f8mning af monterede fustager  Det skal h\\u00e6ldes ud eller drikkes.\",\"completed\":false},{\"task\":\"iPads og Zettles t\\u00f8rres af med en klud og reng\\u00f8res  Placeres i skabet under lyden.\",\"completed\":false},{\"task\":\"Fad\\u00f8lsanl\\u00e6ggets taphane t\\u00f8rres af og spildebakken vaskes op.\",\"completed\":false},{\"task\":\"Barens areal t\\u00f8rres af, b\\u00e5de selve baren og bord ved v\\u00e6ggen.\",\"completed\":false},{\"task\":\"Tomme fustage puttes i klar plastpose (MAX 5 i hver). Poserne placeres p\\u00e5 pallen med \\u00f8lkasser.\",\"completed\":true},{\"task\":\"Returpant d\\u00e5ser og flasker t\\u00f8mmes og s\\u00e6ttes ud i depotet.\",\"completed\":false},{\"task\":\"Glasflasker som ikke har pantm\\u00e6rker p\\u00e5, kan afleveres p\\u00e5 bagsiden af kantinen. I en r\\u00f8d container.\",\"completed\":false},{\"task\":\"Sorte s\\u00e6kke smides i affaldsskakten, n\\u00f8glen h\\u00e6nger KEA k\\u00e6de i depotet  N\\u00f8glen m\\u00e5 p\\u00e5 ingen m\\u00e5de mistes.\",\"completed\":false},{\"task\":\"Alt pap samles og stilles ved pappresser i affaldsrummet i cykelk\\u00e6lderen.\",\"completed\":true}]}');
/*!40000 ALTER TABLE `shifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 0,
  `subject` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@stud.kea.dk','$2y$10$EE52cLghBFabztO2LqFDG.hdlNTe9FS/5IPwPCPEFDhkNM9uFdLqO','6637aaca62034_Photo_2Mb.jpg',1,NULL,'00000000','admin',NULL,'2024-02-10 19:29:58','2024-05-05 13:50:35','2024-02-10 19:29:58'),(2,'Emil Vinther','studieliv@kea.dk','$2y$10$TfH/KvyqmQrRZRv1KgGb8.vp2YacBBx8SVAXCbHzkZMt4vIuwBNCK','images/rh5jwE0OJzHPzHaS6PihQCP3HDPptX6H7d2zmzTw.png',0,'Multimediedesign','61461766','studieliv',NULL,'2024-02-10 19:34:44','2024-02-10 20:16:48','2024-02-10 20:16:48'),(4,'trap','trap@kea.dk','$2y$10$oMBAA1WYwti8.TOUGzc8Z.XbErsGkUYPPDDJn/7uwcnLNAuBT0XmO','images/ugdgzIMDgxzxT4gDpzPfBwhw03QdHLpPEbJXsxAM.png',0,'Multimediedesign','222222222','trap',NULL,'2024-02-10 20:14:49','2024-02-10 20:14:49',NULL),(5,'Emil Vinther','testemil@stud.kea.dk','$2y$10$Gy.PEsIUC/PIwA1eLeaPGe/PpWSZK2vtdgd6pghoyqBwIko/ai1n2','65dcfb5f7a2d7_94673136.jpg',0,'Multimediedesign','12345678','testemil',NULL,'2024-02-26 19:58:08','2024-02-26 19:58:08',NULL),(6,'Emil Vinther','emil11m8@stud.kea.dk','$2y$10$zk/a8VpdgLt.10MH1yohlubeRw/kGlz6hPc9uv5IJJxQbpV12fWJ6',NULL,0,'Multimediedesign','12345566','emil11m8',NULL,'2024-04-16 14:42:53','2024-04-16 14:42:59','2024-04-16 14:42:59'),(7,'Emil VBinther','test@stud.kea.dk','$2y$10$qUdRdbeE/bx/3vas1R.eSego07DSpDIxG8tRis0qWPgNJB8VHuQa2',NULL,0,'It-Arkitektur','61461766','test',NULL,'2024-05-05 13:32:23','2024-05-05 13:32:23',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-05 18:34:15
