-- MySQL dump 10.13  Distrib 5.6.13, for Linux (x86_64)
--
-- Host: localhost    Database: c9
-- ------------------------------------------------------
-- Server version	5.6.13

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetable_id` int(11) DEFAULT NULL,
  `targetable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_activities_on_user_id` (`user_id`),
  KEY `index_activities_on_targetable_id_and_targetable_type` (`targetable_id`,`targetable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,1,'destroyed',2,'Finding','2014-01-13 13:49:20','2014-01-13 13:49:20'),(2,1,'updated',1,'Finding','2014-01-13 13:52:50','2014-01-13 13:52:50'),(3,1,'updated',3,'Finding','2014-01-13 13:54:03','2014-01-13 13:54:03'),(4,1,'updated',4,'Finding','2014-01-14 06:31:32','2014-01-14 06:31:32'),(5,1,'updated',5,'Finding','2014-01-14 07:03:31','2014-01-14 07:03:31'),(6,2,'updated',9,'Finding','2014-01-14 09:31:51','2014-01-14 09:31:51'),(7,2,'updated',10,'Finding','2014-01-14 09:35:02','2014-01-14 09:35:02'),(8,2,'updated',10,'Finding','2014-01-14 09:44:55','2014-01-14 09:44:55'),(9,2,'updated',10,'Finding','2014-01-14 09:45:39','2014-01-14 09:45:39'),(10,1,'updated',12,'Finding','2014-01-15 04:39:11','2014-01-15 04:39:11'),(11,2,'updated',12,'Finding','2014-01-15 07:00:57','2014-01-15 07:00:57'),(12,1,'updated',11,'Finding','2014-01-15 13:14:17','2014-01-15 13:14:17'),(13,1,'updated',8,'Finding','2014-01-15 13:14:44','2014-01-15 13:14:44'),(14,1,'updated',13,'Finding','2014-01-15 13:15:39','2014-01-15 13:15:39'),(15,1,'destroyed',21,'Finding','2014-01-21 09:08:19','2014-01-21 09:08:19'),(16,1,'destroyed',19,'Finding','2014-01-21 09:08:25','2014-01-21 09:08:25'),(17,1,'destroyed',18,'Finding','2014-01-21 09:08:30','2014-01-21 09:08:30'),(18,1,'updated',22,'Finding','2014-01-21 13:43:56','2014-01-21 13:43:56'),(19,1,'destroyed',23,'Finding','2014-01-21 13:46:05','2014-01-21 13:46:05'),(20,1,'destroyed',24,'Finding','2014-01-21 13:50:21','2014-01-21 13:50:21'),(21,2,'destroyed',25,'Finding','2014-01-24 13:47:01','2014-01-24 13:47:01'),(22,2,'destroyed',24,'Finding','2014-01-24 13:47:21','2014-01-24 13:47:21'),(23,2,'destroyed',38,'Finding','2014-01-27 08:50:13','2014-01-27 08:50:13'),(24,1,'destroyed',60,'Finding','2014-02-03 06:34:55','2014-02-03 06:34:55'),(25,1,'updated',62,'Finding','2014-02-03 06:43:31','2014-02-03 06:43:31'),(26,1,'updated',63,'Finding','2014-02-03 06:44:44','2014-02-03 06:44:44'),(27,1,'destroyed',61,'Finding','2014-02-03 06:48:33','2014-02-03 06:48:33'),(28,2,'updated',73,'Finding','2014-02-03 12:37:37','2014-02-03 12:37:37'),(29,2,'updated',73,'Finding','2014-02-03 12:40:13','2014-02-03 12:40:13'),(30,2,'updated',72,'Finding','2014-02-03 12:52:31','2014-02-03 12:52:31'),(31,2,'updated',73,'Finding','2014-02-03 12:53:38','2014-02-03 12:53:38'),(32,2,'updated',72,'Finding','2014-02-03 12:54:06','2014-02-03 12:54:06'),(33,2,'updated',71,'Finding','2014-02-03 12:55:24','2014-02-03 12:55:24'),(34,2,'updated',71,'Finding','2014-02-03 12:55:39','2014-02-03 12:55:39'),(35,2,'updated',71,'Finding','2014-02-03 12:56:00','2014-02-03 12:56:00'),(36,2,'updated',71,'Finding','2014-02-03 12:56:14','2014-02-03 12:56:14'),(37,2,'updated',71,'Finding','2014-02-03 12:56:38','2014-02-03 12:56:38'),(38,2,'updated',71,'Finding','2014-02-03 12:58:51','2014-02-03 12:58:51'),(39,2,'updated',70,'Finding','2014-02-03 13:02:05','2014-02-03 13:02:05'),(40,1,'updated',77,'Finding','2014-02-04 08:35:04','2014-02-04 08:35:04'),(41,2,'destroyed',76,'Finding','2014-02-04 12:46:12','2014-02-04 12:46:12'),(42,2,'destroyed',75,'Finding','2014-02-04 12:46:41','2014-02-04 12:46:41'),(43,2,'destroyed',74,'Finding','2014-02-04 12:46:48','2014-02-04 12:46:48'),(44,8,'updated',79,'Finding','2014-02-04 13:30:35','2014-02-04 13:30:35'),(45,8,'destroyed',78,'Finding','2014-02-04 13:50:06','2014-02-04 13:50:06'),(46,8,'destroyed',79,'Finding','2014-02-04 13:52:07','2014-02-04 13:52:07'),(47,8,'destroyed',81,'Finding','2014-02-05 05:51:42','2014-02-05 05:51:42'),(48,8,'updated',80,'Finding','2014-02-05 06:07:41','2014-02-05 06:07:41'),(49,10,'destroyed',89,'Finding','2014-02-09 13:48:42','2014-02-09 13:48:42'),(50,10,'destroyed',88,'Finding','2014-02-09 13:50:04','2014-02-09 13:50:04'),(51,10,'destroyed',87,'Finding','2014-02-09 13:50:36','2014-02-09 13:50:36'),(52,9,'updated',97,'Finding','2014-02-12 08:59:02','2014-02-12 08:59:02'),(53,10,'updated',98,'Finding','2014-02-12 09:26:58','2014-02-12 09:26:58'),(54,10,'updated',98,'Finding','2014-02-12 09:27:48','2014-02-12 09:27:48'),(55,10,'updated',99,'Finding','2014-02-12 13:30:25','2014-02-12 13:30:25'),(56,10,'updated',102,'Finding','2014-02-13 08:38:36','2014-02-13 08:38:36'),(57,10,'updated',102,'Finding','2014-02-13 08:39:24','2014-02-13 08:39:24'),(58,11,'updated',104,'Finding','2014-02-13 09:41:04','2014-02-13 09:41:04'),(59,11,'updated',104,'Finding','2014-02-13 09:42:18','2014-02-13 09:42:18'),(60,11,'updated',107,'Finding','2014-02-13 09:55:27','2014-02-13 09:55:27'),(61,9,'updated',97,'Finding','2014-02-13 14:06:04','2014-02-13 14:06:04'),(62,9,'updated',97,'Finding','2014-02-13 14:10:45','2014-02-13 14:10:45'),(63,9,'updated',97,'Finding','2014-02-17 11:41:55','2014-02-17 11:41:55'),(64,9,'updated',97,'Finding','2014-02-17 11:46:18','2014-02-17 11:46:18'),(65,9,'updated',97,'Finding','2014-02-17 11:46:39','2014-02-17 11:46:39'),(66,9,'updated',97,'Finding','2014-02-17 11:50:20','2014-02-17 11:50:20'),(67,9,'updated',97,'Finding','2014-02-17 11:50:39','2014-02-17 11:50:39'),(68,9,'updated',97,'Finding','2014-02-17 11:52:20','2014-02-17 11:52:20'),(69,9,'updated',97,'Finding','2014-02-17 12:00:29','2014-02-17 12:00:29'),(70,9,'updated',97,'Finding','2014-02-17 12:02:24','2014-02-17 12:02:24'),(71,9,'updated',113,'Finding','2014-02-17 12:04:03','2014-02-17 12:04:03'),(72,9,'updated',113,'Finding','2014-02-17 12:04:43','2014-02-17 12:04:43'),(73,9,'updated',113,'Finding','2014-02-17 12:05:09','2014-02-17 12:05:09'),(74,9,'updated',113,'Finding','2014-02-17 12:05:31','2014-02-17 12:05:31'),(75,9,'updated',113,'Finding','2014-02-17 12:06:20','2014-02-17 12:06:20'),(76,9,'updated',113,'Finding','2014-02-17 12:06:34','2014-02-17 12:06:34'),(77,9,'updated',113,'Finding','2014-02-17 12:07:16','2014-02-17 12:07:16'),(78,9,'updated',113,'Finding','2014-02-17 12:11:15','2014-02-17 12:11:15'),(79,9,'updated',113,'Finding','2014-02-17 12:11:39','2014-02-17 12:11:39'),(80,9,'updated',113,'Finding','2014-02-17 12:13:53','2014-02-17 12:13:53'),(81,9,'updated',113,'Finding','2014-02-17 12:19:53','2014-02-17 12:19:53'),(82,9,'updated',113,'Finding','2014-02-17 12:21:00','2014-02-17 12:21:00'),(83,9,'updated',113,'Finding','2014-02-17 12:21:30','2014-02-17 12:21:30'),(84,9,'updated',113,'Finding','2014-02-17 12:25:16','2014-02-17 12:25:16'),(85,9,'updated',113,'Finding','2014-02-17 13:35:54','2014-02-17 13:35:54'),(86,9,'updated',114,'Finding','2014-02-17 13:41:30','2014-02-17 13:41:30'),(87,9,'updated',114,'Finding','2014-02-17 13:43:43','2014-02-17 13:43:43'),(88,9,'updated',114,'Finding','2014-02-17 13:44:29','2014-02-17 13:44:29'),(89,9,'updated',114,'Finding','2014-02-17 13:47:12','2014-02-17 13:47:12'),(90,9,'updated',114,'Finding','2014-02-17 13:49:14','2014-02-17 13:49:14'),(91,9,'updated',114,'Finding','2014-02-17 13:55:01','2014-02-17 13:55:01'),(92,9,'updated',114,'Finding','2014-02-17 14:00:16','2014-02-17 14:00:16'),(93,9,'updated',114,'Finding','2014-02-17 14:02:00','2014-02-17 14:02:00'),(94,9,'updated',114,'Finding','2014-02-17 14:05:54','2014-02-17 14:05:54'),(95,9,'updated',114,'Finding','2014-02-17 14:06:48','2014-02-17 14:06:48'),(96,9,'updated',114,'Finding','2014-02-17 14:10:13','2014-02-17 14:10:13'),(97,9,'updated',114,'Finding','2014-02-17 14:10:37','2014-02-17 14:10:37'),(98,9,'updated',114,'Finding','2014-02-17 14:11:08','2014-02-17 14:11:08'),(99,9,'updated',114,'Finding','2014-02-17 14:22:19','2014-02-17 14:22:19'),(100,9,'updated',114,'Finding','2014-02-17 14:22:32','2014-02-17 14:22:32'),(101,9,'updated',115,'Finding','2014-02-17 14:26:16','2014-02-17 14:26:16'),(102,9,'updated',97,'Finding','2014-02-17 14:26:53','2014-02-17 14:26:53'),(103,9,'updated',114,'Finding','2014-02-17 14:27:21','2014-02-17 14:27:21'),(104,9,'updated',115,'Finding','2014-02-17 14:27:38','2014-02-17 14:27:38'),(105,9,'updated',115,'Finding','2014-02-17 14:27:50','2014-02-17 14:27:50'),(106,9,'updated',115,'Finding','2014-02-17 14:28:01','2014-02-17 14:28:01'),(107,9,'updated',113,'Finding','2014-02-17 14:28:24','2014-02-17 14:28:24'),(108,9,'updated',113,'Finding','2014-02-17 14:28:56','2014-02-17 14:28:56'),(109,9,'updated',113,'Finding','2014-02-17 14:29:31','2014-02-17 14:29:31'),(110,9,'updated',115,'Finding','2014-02-17 14:36:36','2014-02-17 14:36:36'),(111,9,'updated',115,'Finding','2014-02-17 14:36:54','2014-02-17 14:36:54'),(112,9,'updated',115,'Finding','2014-02-17 14:37:03','2014-02-17 14:37:03'),(113,9,'updated',115,'Finding','2014-02-17 19:53:03','2014-02-17 19:53:03'),(114,9,'updated',115,'Finding','2014-02-18 12:19:59','2014-02-18 12:19:59'),(115,9,'updated',115,'Finding','2014-02-18 12:21:31','2014-02-18 12:21:31'),(116,9,'updated',115,'Finding','2014-02-18 12:22:00','2014-02-18 12:22:00'),(117,9,'updated',115,'Finding','2014-02-18 12:23:27','2014-02-18 12:23:27'),(118,9,'updated',115,'Finding','2014-02-18 12:23:54','2014-02-18 12:23:54'),(119,9,'updated',115,'Finding','2014-02-18 12:25:01','2014-02-18 12:25:01'),(120,9,'updated',115,'Finding','2014-02-18 12:27:11','2014-02-18 12:27:11'),(121,9,'updated',115,'Finding','2014-02-18 12:28:39','2014-02-18 12:28:39'),(122,9,'updated',114,'Finding','2014-02-18 12:28:44','2014-02-18 12:28:44'),(123,9,'updated',113,'Finding','2014-02-18 12:28:50','2014-02-18 12:28:50'),(124,9,'updated',95,'Finding','2014-02-18 12:29:02','2014-02-18 12:29:02'),(125,9,'updated',97,'Finding','2014-02-18 13:48:33','2014-02-18 13:48:33'),(126,10,'updated',112,'Finding','2014-02-19 05:39:33','2014-02-19 05:39:33'),(127,10,'updated',116,'Finding','2014-02-19 05:39:50','2014-02-19 05:39:50'),(128,9,'updated',119,'Finding','2014-02-19 09:19:13','2014-02-19 09:19:13'),(129,9,'updated',118,'Finding','2014-02-19 09:19:27','2014-02-19 09:19:27'),(130,9,'destroyed',120,'Finding','2014-02-19 13:10:14','2014-02-19 13:10:14'),(131,9,'destroyed',119,'Finding','2014-02-19 13:11:41','2014-02-19 13:11:41'),(132,10,'updated',118,'Finding','2014-02-20 13:15:34','2014-02-20 13:15:34'),(133,9,'updated',119,'Finding','2014-02-21 14:37:07','2014-02-21 14:37:07'),(134,9,'updated',119,'Finding','2014-02-24 10:39:55','2014-02-24 10:39:55'),(135,10,'updated',122,'Finding','2014-02-25 04:51:09','2014-02-25 04:51:09'),(136,10,'updated',120,'Finding','2014-02-25 05:21:46','2014-02-25 05:21:46'),(137,10,'updated',125,'Finding','2014-02-28 07:23:32','2014-02-28 07:23:32'),(138,10,'updated',117,'Finding','2014-03-03 06:11:20','2014-03-03 06:11:20'),(139,10,'updated',118,'Finding','2014-03-03 06:13:44','2014-03-03 06:13:44'),(140,9,'updated',127,'Finding','2014-03-03 07:49:51','2014-03-03 07:49:51'),(141,10,'updated',129,'Finding','2014-03-03 14:24:55','2014-03-03 14:24:55'),(142,10,'updated',129,'Finding','2014-03-03 14:25:24','2014-03-03 14:25:24'),(143,10,'updated',129,'Finding','2014-03-03 14:25:53','2014-03-03 14:25:53'),(144,10,'updated',129,'Finding','2014-03-03 14:26:43','2014-03-03 14:26:43'),(145,10,'updated',129,'Finding','2014-03-03 15:21:19','2014-03-03 15:21:19'),(146,9,'updated',133,'Finding','2014-03-05 10:19:20','2014-03-05 10:19:20'),(147,9,'updated',132,'Finding','2014-03-05 10:20:05','2014-03-05 10:20:05'),(148,9,'updated',133,'Finding','2014-03-05 10:26:37','2014-03-05 10:26:37'),(149,10,'updated',134,'Finding','2014-03-05 12:51:05','2014-03-05 12:51:05'),(150,10,'updated',134,'Finding','2014-03-05 12:51:44','2014-03-05 12:51:44'),(151,9,'updated',136,'Finding','2014-03-05 14:21:12','2014-03-05 14:21:12'),(152,9,'updated',136,'Finding','2014-03-05 14:21:26','2014-03-05 14:21:26'),(153,9,'updated',136,'Finding','2014-03-05 14:22:53','2014-03-05 14:22:53'),(154,9,'updated',136,'Finding','2014-03-05 14:23:08','2014-03-05 14:23:08'),(155,9,'updated',136,'Finding','2014-03-05 14:23:58','2014-03-05 14:23:58'),(156,10,'updated',138,'Finding','2014-03-06 05:21:10','2014-03-06 05:21:10'),(157,10,'updated',138,'Finding','2014-03-06 05:22:43','2014-03-06 05:22:43'),(158,10,'updated',140,'Finding','2014-03-06 05:45:44','2014-03-06 05:45:44'),(159,10,'updated',140,'Finding','2014-03-06 05:46:19','2014-03-06 05:46:19'),(160,9,'updated',148,'Finding','2014-03-06 10:12:06','2014-03-06 10:12:06'),(161,9,'updated',149,'Finding','2014-03-06 12:28:45','2014-03-06 12:28:45'),(162,9,'updated',149,'Finding','2014-03-06 12:32:07','2014-03-06 12:32:07'),(163,9,'updated',149,'Finding','2014-03-06 12:33:03','2014-03-06 12:33:03'),(164,9,'updated',149,'Finding','2014-03-06 12:33:12','2014-03-06 12:33:12'),(165,9,'updated',149,'Finding','2014-03-06 12:33:24','2014-03-06 12:33:24'),(166,9,'updated',149,'Finding','2014-03-06 12:33:57','2014-03-06 12:33:57'),(167,9,'updated',149,'Finding','2014-03-06 13:34:01','2014-03-06 13:34:01'),(168,9,'updated',149,'Finding','2014-03-06 13:34:43','2014-03-06 13:34:43'),(169,9,'updated',149,'Finding','2014-03-06 13:40:43','2014-03-06 13:40:43'),(170,9,'updated',148,'Finding','2014-03-06 14:07:57','2014-03-06 14:07:57'),(171,9,'updated',148,'Finding','2014-03-06 14:14:16','2014-03-06 14:14:16'),(172,9,'updated',148,'Finding','2014-03-06 14:17:57','2014-03-06 14:17:57'),(173,9,'updated',148,'Finding','2014-03-06 14:18:55','2014-03-06 14:18:55'),(174,9,'updated',148,'Finding','2014-03-06 14:19:13','2014-03-06 14:19:13'),(175,9,'updated',148,'Finding','2014-03-06 14:23:09','2014-03-06 14:23:09'),(176,10,'updated',146,'Finding','2014-03-07 07:50:28','2014-03-07 07:50:28'),(177,10,'updated',146,'Finding','2014-03-07 07:50:50','2014-03-07 07:50:50'),(178,10,'updated',146,'Finding','2014-03-07 07:51:03','2014-03-07 07:51:03'),(179,9,'updated',148,'Finding','2014-03-07 20:56:22','2014-03-07 20:56:22'),(180,9,'updated',148,'Finding','2014-03-07 20:58:27','2014-03-07 20:58:27'),(181,10,'updated',156,'Finding','2014-03-10 03:35:23','2014-03-10 03:35:23'),(182,10,'updated',156,'Finding','2014-03-10 03:36:34','2014-03-10 03:36:34'),(183,10,'updated',145,'Finding','2014-03-10 13:49:15','2014-03-10 13:49:15'),(184,10,'updated',157,'Finding','2014-03-11 14:04:27','2014-03-11 14:04:27'),(185,10,'updated',160,'Finding','2014-03-25 06:07:29','2014-03-25 06:07:29'),(186,10,'updated',160,'Finding','2014-03-25 06:08:02','2014-03-25 06:08:02'),(187,10,'updated',160,'Finding','2014-03-25 06:08:43','2014-03-25 06:08:43'),(188,10,'updated',160,'Finding','2014-03-25 06:09:29','2014-03-25 06:09:29'),(189,10,'updated',146,'Finding','2014-03-25 12:02:10','2014-03-25 12:02:10'),(190,10,'updated',144,'Finding','2014-03-25 12:04:19','2014-03-25 12:04:19'),(191,10,'updated',155,'Finding','2014-03-27 13:06:58','2014-03-27 13:06:58'),(192,10,'updated',156,'Finding','2014-03-27 13:08:19','2014-03-27 13:08:19'),(193,10,'updated',161,'Finding','2014-03-27 13:09:15','2014-03-27 13:09:15'),(194,10,'updated',159,'Finding','2014-03-27 13:09:38','2014-03-27 13:09:38'),(195,10,'updated',159,'Finding','2014-03-27 13:10:06','2014-03-27 13:10:06'),(196,10,'updated',161,'Finding','2014-03-28 07:44:04','2014-03-28 07:44:04'),(197,10,'updated',161,'Finding','2014-03-28 07:44:24','2014-03-28 07:44:24'),(198,10,'updated',160,'Finding','2014-03-28 07:45:47','2014-03-28 07:45:47'),(199,10,'updated',161,'Finding','2014-03-29 15:52:07','2014-03-29 15:52:07'),(200,10,'updated',166,'Finding','2014-04-03 07:24:26','2014-04-03 07:24:26'),(201,10,'updated',166,'Finding','2014-04-03 07:25:02','2014-04-03 07:25:02'),(202,10,'updated',166,'Finding','2014-04-03 07:26:03','2014-04-03 07:26:03');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditors`
--

DROP TABLE IF EXISTS `auditors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auditors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `audit_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditors`
--

LOCK TABLES `auditors` WRITE;
/*!40000 ALTER TABLE `auditors` DISABLE KEYS */;
/*!40000 ALTER TABLE `auditors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auditee_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auditee_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auditor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auditor_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `audit_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondry_auditor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secondry_auditor_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organiation_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `representative_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `representative_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_audits_on_user_id` (`user_id`),
  KEY `index_audits_on_audit_type` (`audit_type`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
INSERT INTO `audits` VALUES (75,'Engineering','Chetan Korpe','vishant.pai@netmagicsolutions.com','Vishant Pai','vishant.pai@gmail.com','2014-03-07 18:29:00','2014-03-08 18:29:00','2014-03-06 05:19:19','2014-03-06 05:19:19',10,'','Vikhroli','','',NULL,NULL,NULL,NULL,NULL),(76,'test','test@gmail.com','vishal@gmail.com','vishal','vishalagr2008@gmail.com','2014-03-06 10:03:00','2014-03-07 18:29:00','2014-03-06 10:00:27','2014-03-06 10:00:27',9,'test','pune','','',NULL,NULL,NULL,NULL,NULL),(77,'test','vishal','vishal@gmail.com','vishal','vishalagr2008@gmail.com','2014-03-08 20:29:00','2014-03-10 18:29:00','2014-03-08 20:42:17','2014-03-08 20:43:24',9,'','pune','vsihal','',NULL,NULL,NULL,NULL,NULL),(79,'Software Engg','Vishant','vishant.pai@netmagicsolutions.com','Vishant Pai','vishant.pai@gmail.com','2014-03-21 04:29:00','2014-03-21 18:29:00','2014-03-18 10:30:46','2014-03-18 11:20:30',10,'','Vikhroli','','','Netmagic Solutions','Goregoan','9930900749','',''),(80,'Procurement','Vijay Pathak','vishant.pai@netmagicsolutions.com','Vishant Pai','vishant.pai@gmail.com','2014-03-20 04:29:00','2014-03-20 18:29:00','2014-03-19 10:35:20','2014-03-19 10:35:20',10,'','Hibiya','','','NTT Communications','Japan, Tokyo','9930900749','Ramesh Raj','ramesh@gmail.com'),(81,'test','vishal','vishal@vishal.cm','changedtotest','vishalagr2008@gmail.com','2014-03-23 18:29:00','2014-03-24 18:29:00','2014-03-23 05:51:03','2014-03-23 05:51:03',9,'','pune','','','test','pune','90289576622','vishal','vishal'),(82,'Finance','Ganesh','vishant.pai@gmail.com','Vishant Pai','vishant.pai@icloud.com','2014-03-28 04:29:00','2014-03-28 18:29:00','2014-03-27 07:33:08','2014-03-27 07:33:08',15,'','Nirlon','','','Wipro','Calcutta','3456789982','Bloom','bloom@gmail.com'),(83,'Product Dev','vishant pai','vishant.pai@gmail.com','Vishant Pai','vishant.pai@icloud.com','2014-03-31 04:29:00','2014-03-31 13:29:00','2014-03-29 15:59:09','2014-03-29 15:59:09',10,'','Daman','','','Parksons','Daman','9714593349','Manish Tawde','manish@gmail.com'),(84,'ESS','Rahul Chaudhary','rahul@nm.com','Vishant Pai','vishant.pai@gmail.com','2014-04-02 03:29:00','2014-04-02 12:29:00','2014-04-01 09:10:19','2014-04-01 09:10:19',10,'','Nirlon','','','Netmagic Solutions','Vikhroli','9714593943','Shailesh','shailesh@mr.com'),(85,'Order Management','Vishant','vishant.pai@netmagicsolutions.com','Vishant Pai','vishant.pai@gmail.com','2014-04-01 04:29:00','2014-04-01 18:29:00','2014-04-01 09:13:14','2014-04-01 09:13:14',10,'','Nirlon','','','Netmagic Solutions','Vikhroli','9714593943','Shailesh','shailesh@mr.com');
/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboards`
--

DROP TABLE IF EXISTS `dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboards`
--

LOCK TABLES `dashboards` WRITE;
/*!40000 ALTER TABLE `dashboards` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `finding_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `attachment_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_file_size` int(11) DEFAULT NULL,
  `attachment_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_documents_on_finding_id` (`finding_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
INSERT INTO `documents` VALUES (1,1,'2014-01-13 07:22:34','2014-01-13 07:22:34','Capture_error.PNG','image/png',17777,'2014-01-13 07:22:34'),(2,1,'2014-01-13 07:22:34','2014-01-13 07:22:34','KPI_Review_Chetan.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',25456,'2014-01-13 07:22:34'),(3,10,'2014-01-14 09:34:20','2014-01-14 09:35:02','Tulips.jpg','image/jpeg',620888,'2014-01-14 09:35:02'),(4,11,'2014-01-14 13:17:33','2014-01-14 13:17:33','Tulips.jpg','image/jpeg',620888,'2014-01-14 13:17:32'),(5,11,'2014-01-14 13:17:33','2014-01-14 13:17:33','Tulips.jpg','image/jpeg',620888,'2014-01-14 13:17:32'),(6,26,'2014-01-24 13:44:47','2014-01-24 13:44:47','Lighthouse.jpg','image/jpeg',561276,'2014-01-24 13:44:47'),(7,27,'2014-01-24 13:49:53','2014-01-24 13:49:53','Penguins.jpg','image/jpeg',777835,'2014-01-24 13:49:53'),(8,27,'2014-01-24 13:49:53','2014-01-24 13:49:53','Tulips.jpg','image/jpeg',620888,'2014-01-24 13:49:53'),(9,27,'2014-01-24 13:49:53','2014-01-24 13:49:53','Jellyfish.jpg','image/jpeg',775702,'2014-01-24 13:49:53'),(10,28,'2014-01-24 14:35:06','2014-01-24 14:35:06',NULL,NULL,NULL,NULL),(11,28,'2014-01-24 14:35:06','2014-01-24 14:35:06',NULL,NULL,NULL,NULL),(12,28,'2014-01-24 14:35:06','2014-01-24 14:35:06',NULL,NULL,NULL,NULL),(13,28,'2014-01-24 14:35:06','2014-01-24 14:35:06',NULL,NULL,NULL,NULL),(14,28,'2014-01-24 14:35:06','2014-01-24 14:35:06',NULL,NULL,NULL,NULL),(15,28,'2014-01-24 14:35:06','2014-01-24 14:35:06',NULL,NULL,NULL,NULL),(16,29,'2014-01-24 14:35:11','2014-01-24 14:35:11',NULL,NULL,NULL,NULL),(17,29,'2014-01-24 14:35:11','2014-01-24 14:35:11',NULL,NULL,NULL,NULL),(18,29,'2014-01-24 14:35:11','2014-01-24 14:35:11',NULL,NULL,NULL,NULL),(19,29,'2014-01-24 14:35:11','2014-01-24 14:35:11',NULL,NULL,NULL,NULL),(20,29,'2014-01-24 14:35:11','2014-01-24 14:35:11',NULL,NULL,NULL,NULL),(21,29,'2014-01-24 14:35:11','2014-01-24 14:35:11',NULL,NULL,NULL,NULL),(22,30,'2014-01-24 14:35:14','2014-01-24 14:35:14',NULL,NULL,NULL,NULL),(23,30,'2014-01-24 14:35:14','2014-01-24 14:35:14',NULL,NULL,NULL,NULL),(24,30,'2014-01-24 14:35:14','2014-01-24 14:35:14',NULL,NULL,NULL,NULL),(25,30,'2014-01-24 14:35:14','2014-01-24 14:35:14',NULL,NULL,NULL,NULL),(26,30,'2014-01-24 14:35:14','2014-01-24 14:35:14',NULL,NULL,NULL,NULL),(27,30,'2014-01-24 14:35:14','2014-01-24 14:35:14',NULL,NULL,NULL,NULL),(28,38,'2014-01-25 09:16:24','2014-01-25 09:16:24',NULL,NULL,NULL,NULL),(29,38,'2014-01-25 09:16:24','2014-01-25 09:16:24',NULL,NULL,NULL,NULL),(30,38,'2014-01-25 09:16:24','2014-01-25 09:16:24',NULL,NULL,NULL,NULL),(31,38,'2014-01-25 09:16:24','2014-01-25 09:16:24',NULL,NULL,NULL,NULL),(32,38,'2014-01-25 09:16:24','2014-01-25 09:16:24',NULL,NULL,NULL,NULL),(33,87,'2014-02-10 17:00:05','2014-02-10 17:00:05','normal.png','image/png',173434,'2014-02-10 17:00:05'),(34,88,'2014-02-10 18:16:30','2014-02-10 18:16:30','edit_widget.png','image/png',123625,'2014-02-10 18:16:30'),(35,88,'2014-02-10 18:16:30','2014-02-10 18:16:30',NULL,NULL,NULL,NULL),(36,89,'2014-02-10 18:23:46','2014-02-10 18:23:46','widgets','application/octet-stream',129716,'2014-02-10 18:23:46'),(37,89,'2014-02-10 18:23:46','2014-02-10 18:23:46',NULL,NULL,NULL,NULL),(38,90,'2014-02-11 08:37:20','2014-02-11 08:37:20','Chrysanthemum.jpg','image/jpeg',879394,'2014-02-11 08:37:20'),(39,90,'2014-02-11 08:37:20','2014-02-11 08:37:20',NULL,NULL,NULL,NULL),(40,91,'2014-02-11 08:43:19','2014-02-11 08:43:19','Koala.jpg','image/jpeg',780831,'2014-02-11 08:43:19'),(41,91,'2014-02-11 08:43:19','2014-02-11 08:43:19',NULL,NULL,NULL,NULL),(42,92,'2014-02-11 13:18:56','2014-02-11 13:18:56','Hydrangeas.jpg','image/jpeg',595284,'2014-02-11 13:18:56'),(43,92,'2014-02-11 13:18:56','2014-02-11 13:18:56',NULL,NULL,NULL,NULL),(44,93,'2014-02-11 13:34:21','2014-02-11 13:34:21',NULL,NULL,NULL,NULL),(45,94,'2014-02-11 13:48:59','2014-02-11 13:48:59',NULL,NULL,NULL,NULL),(46,95,'2014-02-12 08:42:28','2014-02-12 08:42:28','Jellyfish.jpg','image/jpeg',775702,'2014-02-12 08:42:28'),(47,95,'2014-02-12 08:42:28','2014-02-12 08:42:28','Penguins_-_Copy.jpg','image/jpeg',777835,'2014-02-12 08:42:28'),(48,95,'2014-02-12 08:42:28','2014-02-12 08:42:28',NULL,NULL,NULL,NULL),(49,96,'2014-02-12 08:45:18','2014-02-12 08:45:18','Jellyfish.jpg','image/jpeg',775702,'2014-02-12 08:45:18'),(50,96,'2014-02-12 08:45:18','2014-02-12 08:45:18','Desert.jpg','image/jpeg',845941,'2014-02-12 08:45:18'),(52,97,'2014-02-12 08:57:55','2014-02-12 08:57:55','Desert.jpg','image/jpeg',845941,'2014-02-12 08:57:55'),(53,98,'2014-02-12 09:26:16','2014-02-12 09:26:16','Holiday_List-_2014_FINAL.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',51078,'2014-02-12 09:26:16'),(54,98,'2014-02-12 09:26:16','2014-02-12 09:26:16','Holiday_List_2013.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',41432,'2014-02-12 09:26:16'),(55,99,'2014-02-12 13:29:24','2014-02-12 13:29:24','PPD_exit_strategy_-_PPD_Product.pdf','application/pdf',388439,'2014-02-12 13:29:24'),(56,100,'2014-02-12 13:38:50','2014-02-12 13:38:50','image.jpg','image/jpeg',103225,'2014-02-12 13:38:50'),(57,101,'2014-02-13 06:18:40','2014-02-13 06:18:40','Holiday_List-_2014_FINAL.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',51078,'2014-02-13 06:18:40'),(58,102,'2014-02-13 08:37:25','2014-02-13 08:37:25','Holiday_List-_2014_FINAL.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',51078,'2014-02-13 08:37:25'),(59,102,'2014-02-13 08:37:25','2014-02-13 08:37:25','Report_design_with_effort.pptx','application/vnd.openxmlformats-officedocument.presentationml.presentation',65147,'2014-02-13 08:37:25'),(60,104,'2014-02-13 09:40:06','2014-02-13 09:40:06','Hospital_Names.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',10678,'2014-02-13 09:40:06'),(61,105,'2014-02-13 09:45:30','2014-02-13 09:45:30','77.docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document',12894,'2014-02-13 09:45:30'),(62,112,'2014-02-17 05:41:05','2014-02-17 05:41:05','Report_design_with_effort.pptx','application/vnd.openxmlformats-officedocument.presentationml.presentation',65147,'2014-02-17 05:41:05'),(63,112,'2014-02-17 05:41:06','2014-02-17 05:41:06','ntt.txt','text/plain',138,'2014-02-17 05:41:05'),(67,113,'2014-02-17 12:07:16','2014-02-17 12:07:16','Hydrangeas.jpg','image/jpeg',595284,'2014-02-17 12:07:16'),(68,114,'2014-02-17 13:41:01','2014-02-17 13:41:01','Desert.jpg','image/jpeg',845941,'2014-02-17 13:41:01'),(72,115,'2014-02-17 14:22:58','2014-02-17 14:22:58','Penguins_-_Copy.jpg','image/jpeg',777835,'2014-02-17 14:22:58'),(73,116,'2014-02-19 05:39:13','2014-02-19 05:39:13','Job_Description_Process_Compliance_manager.docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document',281980,'2014-02-19 05:39:13'),(74,117,'2014-02-19 07:49:36','2014-02-19 07:49:36','error1.PNG','image/png',9644,'2014-02-19 07:49:36'),(75,118,'2014-02-19 09:17:34','2014-02-19 09:17:34','Desert.jpg','image/jpeg',845941,'2014-02-19 09:17:34'),(76,119,'2014-02-19 09:18:53','2014-02-19 09:18:53','hadoop.pdf','application/pdf',6636479,'2014-02-19 09:18:53'),(77,120,'2014-02-19 09:20:49','2014-02-19 09:20:49','10946467.pdf','application/pdf',31304,'2014-02-19 09:20:49'),(79,118,'2014-02-20 13:14:50','2014-02-20 13:14:50','Netmagic.pcf','application/octet-stream',654,'2014-02-20 13:14:50'),(80,119,'2014-02-21 14:25:55','2014-02-21 14:25:55','Desert_-_Copy.jpg','image/jpeg',845941,'2014-02-21 14:25:55'),(81,137,'2014-03-06 05:11:59','2014-03-06 05:11:59',NULL,NULL,NULL,NULL),(82,147,'2014-03-06 10:03:45','2014-03-06 10:03:45','system.properties.xml','text/xml',2894,'2014-03-06 10:03:45'),(83,148,'2014-03-06 10:06:08','2014-03-06 10:06:08','form.html.erb','application/octet-stream',4215,'2014-03-06 10:06:08'),(84,149,'2014-03-06 10:09:46','2014-03-06 10:09:46','Flat_to_XML_file_conversion_2013-12-24_17.00.20.048.log.xml','text/xml',67,'2014-03-06 10:09:46'),(85,157,'2014-03-11 13:55:05','2014-03-11 13:55:05','flat.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',9922,'2014-03-11 13:55:05'),(86,158,'2014-03-17 02:20:21','2014-03-17 02:20:21','Paws_Brochure_Feb13_proof_v2.pdf','application/pdf',1169560,'2014-03-17 02:20:21'),(87,159,'2014-03-20 13:36:07','2014-03-20 13:36:07','Holiday_List-_2014_FINAL.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',51078,'2014-03-20 13:36:07'),(88,160,'2014-03-25 06:07:04','2014-03-25 06:07:04','Capture.PNG','image/png',4059,'2014-03-25 06:07:04'),(89,160,'2014-03-25 06:08:02','2014-03-25 06:08:02','Communication_Plan.docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document',267181,'2014-03-25 06:08:02'),(90,160,'2014-03-25 06:08:42','2014-03-25 06:08:42','Microsoft_Check_List.xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',18385,'2014-03-25 06:08:42'),(91,160,'2014-03-25 06:08:42','2014-03-25 06:08:42','P3070274.JPG','image/jpeg',36018,'2014-03-25 06:08:42'),(92,160,'2014-03-25 06:09:29','2014-03-25 06:09:29','Resource_Hiring.docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document',266918,'2014-03-25 06:09:29'),(93,160,'2014-03-25 06:09:29','2014-03-25 06:09:29','Risk_Register.docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document',268085,'2014-03-25 06:09:29');
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finding_statuses`
--

DROP TABLE IF EXISTS `finding_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finding_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finding_statuses`
--

LOCK TABLES `finding_statuses` WRITE;
/*!40000 ALTER TABLE `finding_statuses` DISABLE KEYS */;
INSERT INTO `finding_statuses` VALUES (1,'CAPA Pending',NULL,'2014-01-13 13:52:09','2014-01-13 13:52:09'),(2,'Under review',NULL,'2014-01-13 13:52:09','2014-02-18 14:47:06'),(3,'Closed',NULL,'2014-01-13 13:52:09','2014-01-13 13:52:09');
/*!40000 ALTER TABLE `finding_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `finding_types`
--

DROP TABLE IF EXISTS `finding_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `finding_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `finding_types`
--

LOCK TABLES `finding_types` WRITE;
/*!40000 ALTER TABLE `finding_types` DISABLE KEYS */;
INSERT INTO `finding_types` VALUES (1,'Non-Conformity','2014-01-13 13:52:08','2014-01-13 13:52:08'),(2,'Non-Compliance','2014-01-13 13:52:09','2014-01-13 13:52:09'),(3,'Major Non Conformity','2014-01-13 13:52:09','2014-01-13 13:52:09'),(4,'Minor Non Conformity','2014-01-13 13:52:09','2014-01-13 13:52:09'),(5,'Scope for improvement','2014-01-13 13:52:09','2014-01-13 13:52:09');
/*!40000 ALTER TABLE `finding_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `findings`
--

DROP TABLE IF EXISTS `findings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `findings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `risk_rating` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `corrective_action` text COLLATE utf8_unicode_ci,
  `preventive_action` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `audit_id` int(11) DEFAULT NULL,
  `status_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_id` int(11) DEFAULT NULL,
  `iso_clause` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_file_size` int(11) DEFAULT NULL,
  `avatar_updated_at` datetime DEFAULT NULL,
  `closure_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_findings_on_audit_id` (`audit_id`),
  KEY `index_findings_on_status_id` (`status_id`),
  KEY `index_findings_on_iso_clause` (`iso_clause`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `findings`
--

LOCK TABLES `findings` WRITE;
/*!40000 ALTER TABLE `findings` DISABLE KEYS */;
INSERT INTO `findings` VALUES (137,'This is to test the new finding','Major Non Conformity','Low',NULL,'',NULL,'2014-03-06 05:11:59','2014-03-06 05:11:59',0,'CAPA Pending',NULL,'',NULL,NULL,NULL,NULL,'2014-04-07 05:10:00'),(138,'This is to test a new finding','Non-Compliance','Medium',NULL,'i tried to modify the status to under review but it prevented me to do so.. good',NULL,'2014-03-06 05:12:44','2014-03-06 05:21:10',0,'Under review',NULL,'',NULL,NULL,NULL,NULL,NULL),(139,'Trying to work again with findings','Major Non Conformity','Critical',NULL,'',NULL,'2014-03-06 05:42:59','2014-03-06 05:42:59',74,'CAPA Pending',NULL,'',NULL,NULL,NULL,NULL,NULL),(140,'This one is another test','Non-Conformity','Medium',NULL,'this oe is aniother test',NULL,'2014-03-06 05:43:50','2014-03-06 05:46:19',74,'Under review',NULL,'',NULL,NULL,NULL,NULL,NULL),(141,'this is another test','','',NULL,'',NULL,'2014-03-06 06:50:18','2014-03-06 06:50:18',74,'',NULL,'',NULL,NULL,NULL,NULL,NULL),(142,'this is another test 2','','',NULL,'',NULL,'2014-03-06 06:50:34','2014-03-06 06:50:34',74,'',NULL,'',NULL,NULL,NULL,NULL,NULL),(143,'this is another test 4','','',NULL,'',NULL,'2014-03-06 06:50:45','2014-03-06 06:50:45',74,'',NULL,'',NULL,NULL,NULL,NULL,NULL),(144,'this is another test 5','','',NULL,'capa entered',NULL,'2014-03-06 06:51:08','2014-03-25 12:04:19',74,'Closed',NULL,'',NULL,NULL,NULL,NULL,'2014-03-25 12:04:19'),(145,'this is another test 6','','',NULL,'entering capa babab',NULL,'2014-03-06 06:51:19','2014-03-10 13:49:15',74,'Closed',NULL,'',NULL,NULL,NULL,NULL,'2014-03-10 13:49:15'),(146,'this is another test 7','Major Non Conformity','High',NULL,'entering CAPA',NULL,'2014-03-06 06:51:30','2014-03-25 12:02:10',74,'Closed',NULL,'',NULL,NULL,NULL,NULL,'2014-03-25 12:02:10'),(147,'','','',NULL,'',NULL,'2014-03-06 10:03:45','2014-03-06 10:03:45',76,'',NULL,'',NULL,NULL,NULL,NULL,NULL),(148,'','','',NULL,'aaaaa',NULL,'2014-03-06 10:06:08','2014-03-07 20:58:27',76,'CAPA Pending',NULL,'',NULL,NULL,NULL,NULL,'2014-04-14 20:56:00'),(149,'dfdsf','','',NULL,'dfsdf',NULL,'2014-03-06 10:09:46','2014-03-06 13:40:43',0,'Under review',NULL,'',NULL,NULL,NULL,NULL,NULL),(150,'','','',NULL,'',NULL,'2014-03-07 20:55:51','2014-03-07 20:55:51',NULL,'',NULL,'',NULL,NULL,NULL,NULL,'2014-03-15 02:25:00'),(151,'','','',NULL,'',NULL,'2014-03-07 20:57:13','2014-03-07 20:57:13',NULL,'',NULL,'',NULL,NULL,NULL,NULL,'2014-03-14 20:57:00'),(152,'','','',NULL,'',NULL,'2014-03-07 20:57:50','2014-03-07 20:57:50',NULL,'',NULL,'',NULL,NULL,NULL,NULL,'2014-03-09 20:57:00'),(153,'','','',NULL,'',NULL,'2014-03-07 20:59:01','2014-03-07 20:59:01',NULL,'',NULL,'',NULL,NULL,NULL,NULL,'2014-03-14 20:58:00'),(154,'yrdydrytrdydgfdgfdgfdgfd','Non-Compliance','Critical',NULL,'fdsfdsf',NULL,'2014-03-07 21:01:58','2014-03-07 21:01:58',NULL,'CAPA Pending',NULL,'',NULL,NULL,NULL,NULL,'2014-03-14 21:01:00'),(155,'testing for closure date ','','',NULL,'entering capa',NULL,'2014-03-08 08:48:58','2014-03-27 13:06:58',NULL,'Under review',NULL,'',NULL,NULL,NULL,NULL,'2014-03-28 08:23:00'),(156,'this is to test the closing feature','Non-Compliance','Medium',NULL,'entering capa',NULL,'2014-03-10 03:29:11','2014-03-27 13:08:19',75,'Under review',NULL,'',NULL,NULL,NULL,NULL,'2014-03-31 03:36:00'),(157,'trying to see if the alert box looks fine???','Non-Conformity','Low',NULL,'',NULL,'2014-03-11 13:55:05','2014-03-11 13:55:05',75,'CAPA Pending',NULL,'',NULL,NULL,NULL,NULL,'2014-03-18 13:54:00'),(158,'This is mandatory field','Non conformity','High',NULL,'',NULL,'2014-03-17 02:20:21','2014-03-17 02:20:21',75,'CAPA Pending',NULL,'',NULL,NULL,NULL,NULL,'2014-03-24 02:18:00'),(159,'Dear All,\r\n\r\nThis is a new finding','Non Compliance','High',NULL,'No CAPA submitted',NULL,'2014-03-20 13:36:07','2014-03-27 13:10:06',80,'Closed',NULL,'',NULL,NULL,NULL,NULL,'2014-03-27 13:10:06'),(160,'Tryin  to check how findings are working','Non Compliance','Low',NULL,'have entered CAPA right now now lets c if things work',NULL,'2014-03-25 06:07:04','2014-03-28 07:45:47',80,'Under review',NULL,'',NULL,NULL,NULL,NULL,'2014-04-01 06:06:00'),(161,'Trying to check in internet explorer if things work','Non Compliance','High',NULL,'We have entered CAPA',NULL,'2014-03-25 08:31:25','2014-03-29 15:52:07',80,'Closed',NULL,'',NULL,NULL,NULL,NULL,'2014-03-29 15:52:07'),(162,'Verification of Education (From SSC to Second Highest education level) and Employment (First employment to Second last employment) though screened by Screening Agency (CRP) was not reflected in any of the screening reports assessed.','Observation','High',NULL,'',NULL,'2014-04-01 09:14:33','2014-04-01 09:14:33',85,'CAPA Pending',NULL,'',NULL,NULL,NULL,NULL,'2014-04-08 09:14:00'),(163,'Screening report of Employee NM790 was marked as GREEN by CRP though the report was insufficient due to pending documents of earlier employments. Suggest CRP to submit interim reports if the same is pending for Information or documents. After receipt of complete information and documents and after screening of the candidate Final report is submitted.','Observation','High',NULL,'',NULL,'2014-04-01 09:15:11','2014-04-01 09:15:11',85,'CAPA Pending',NULL,'',NULL,NULL,NULL,NULL,'2014-04-08 09:14:00'),(164,'It is suggested that Screening reports are stored in KnowledgeTree instead of Personal email inbox and as backup measures alternatively to be filed along with the Personal Files of an employee','Observation','Medium',NULL,'',NULL,'2014-04-01 09:15:39','2014-04-01 09:15:39',85,'CAPA Pending',NULL,'',NULL,NULL,NULL,NULL,'2014-04-08 09:15:00'),(165,'It was observed that declarations were not collected for the employees in the event of Late submission of documents or information. Secondly, it was further observed that Follow-ups made on such cases were verbal. \r\n\r\nSuggest a declaration to be collected from such employees and stringent follow-ups to be done to collect missing documents and information. There should be minimum time to be given to revert on the missing information and documents.\r\nRefer Employee ID: NM790, NM759, NM776, NM762,NM777','Observation','High',NULL,'',NULL,'2014-04-01 09:16:10','2014-04-01 09:16:10',85,'CAPA Pending',NULL,'',NULL,NULL,NULL,NULL,'2014-04-08 09:15:00'),(166,'As per process it is mandated to check for Past 2 employers, however only 1 employer (Lionsbridge) was screened in case of Employee – Ravindra Poojary (EID: 776).\r\n\r\nSuggest both his past employers to be screened as per process\r\n','Non Conformity','Critical',NULL,'We have entered CAPA now lets see what happens',NULL,'2014-04-01 09:16:52','2014-04-03 07:26:03',85,'Under review',NULL,'',NULL,NULL,NULL,NULL,'2014-04-15 09:16:00');
/*!40000 ALTER TABLE `findings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `report_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `report_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `audit_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reports`
--

LOCK TABLES `reports` WRITE;
/*!40000 ALTER TABLE `reports` DISABLE KEYS */;
INSERT INTO `reports` VALUES (1,'Vishant','iso','draft','2014-03-06 10:40:14','2014-03-06 11:35:14',NULL),(2,'Gartner 2020','iso, 9001','Draft','2014-03-06 12:11:35','2014-03-06 12:11:35',NULL),(3,'New report','statutory','Final','2014-03-06 12:30:52','2014-03-06 12:30:52',NULL),(5,'','','','2014-03-19 19:37:16','2014-03-19 19:37:16',NULL),(6,'2013_Engg_draft2','','Draft','2014-03-20 05:06:35','2014-03-25 08:39:55',NULL),(7,'23_Procurment draft','iso, 9001, 27001','Final','2014-03-28 07:27:25','2014-03-28 07:27:25',NULL);
/*!40000 ALTER TABLE `reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `risks`
--

DROP TABLE IF EXISTS `risks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `risks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `risk_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `risks`
--

LOCK TABLES `risks` WRITE;
/*!40000 ALTER TABLE `risks` DISABLE KEYS */;
INSERT INTO `risks` VALUES (1,'Critical','2014-01-13 13:52:09','2014-01-13 13:52:09'),(2,'High','2014-01-13 13:52:09','2014-01-13 13:52:09'),(3,'Medium','2014-01-13 13:52:09','2014-01-13 13:52:09'),(4,'Low','2014-01-13 13:52:09','2014-01-13 13:52:09'),(5,'No Risk','2014-01-13 13:52:09','2014-01-13 13:52:09');
/*!40000 ALTER TABLE `risks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20131130032814'),('20131130040130'),('20131130141600'),('20131203121905'),('20131203124644'),('20131209132914'),('20131215045943'),('20131215103500'),('20131215113307'),('20131215120000'),('20131216173039'),('20131224034745'),('20140103093229'),('20140106085626'),('20140108095823'),('20140110094940'),('20140127194730'),('20140127195049'),('20140207140721'),('20140211145524'),('20140212092608'),('20140306085748'),('20140315203117'),('20140406133308');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profile_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `mobile_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,'changedtotest','vishalagr2008@gmail.com','$2a$10$aTUXE8eHb.IJjcFkUHImz.kGJCMeyygl7Sqrf7ew7PdrDQXHHOzgG',NULL,NULL,NULL,37,'2014-04-07 07:25:13','2014-04-06 13:22:53','125.17.117.126','114.143.33.174','2014-02-04 13:44:19','2014-04-07 07:25:14','9028957987'),(10,'Vishant Pai','vishant.pai@gmail.com','$2a$10$AFB0GYRvpCMxHg4Q31MZ7OdM6rJziseJuFduR9V30Gq2ui5FnmXUO','96006156f488d98dfef24a5f6f95de68924f11263c46347363fcdb98b71eff27','2014-03-20 05:22:12',NULL,69,'2014-04-05 18:04:29','2014-04-03 07:01:20','180.215.174.58','202.87.39.242','2014-02-05 07:49:06','2014-04-05 18:04:29','9930900749'),(11,'chetan','chetank.korpe@gmail.com','$2a$10$WjGDzvPsjEzv4FodEW0ZEenl8fz5p3dDj2rAeK5j.mKc1qNwEBg8i',NULL,NULL,NULL,1,'2014-02-13 08:51:36','2014-02-13 08:51:36','202.87.39.242','202.87.39.242','2014-02-13 08:51:33','2014-02-13 08:51:36','9773393789'),(12,'Vishant Pai','vishant.pai@netmagicsolutions.com','$2a$10$Ftuvmfi74u0NIGR0vR4GluigPznkxE/5sfCKkh0gyGGAak7sRGU3u',NULL,NULL,NULL,2,'2014-02-28 07:27:46','2014-02-24 05:35:00','124.153.90.220','106.217.61.82','2014-02-24 05:34:54','2014-02-28 07:27:46','9930900749'),(15,NULL,'vishant.pai@icloud.com','$2a$10$v/JCiU8GRWUo7K3r/bRjUul.f7zZ9KiqOzYeRP3OS1REQuwdHZCLi',NULL,NULL,NULL,2,'2014-03-27 12:04:19','2014-03-27 07:31:06','202.87.39.242','202.87.39.242','2014-03-27 07:31:02','2014-03-27 12:04:19',NULL);
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

-- Dump completed on 2014-04-07  7:32:27
