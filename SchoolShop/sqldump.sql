-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: shutrin_schoolshop
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

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
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add provider',9,'add_provider'),(34,'Can change provider',9,'change_provider'),(35,'Can delete provider',9,'delete_provider'),(36,'Can view provider',9,'view_provider'),(37,'Can add product image',10,'add_productimage'),(38,'Can change product image',10,'change_productimage'),(39,'Can delete product image',10,'delete_productimage'),(40,'Can view product image',10,'view_productimage'),(41,'Can add detail',11,'add_detail'),(42,'Can change detail',11,'change_detail'),(43,'Can delete detail',11,'delete_detail'),(44,'Can view detail',11,'view_detail');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$pjGhDNF5wdJ32BseCmZRmX$LeaA01IZmt+a6JaadGJEDALgVmMfSygH8KSUon+WFEw=','2023-12-21 10:08:10.794731',1,'root','','','dshutrin@mail.ru',1,1,'2023-12-18 09:32:59.630815');
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-19 06:41:35.836397','1','Кроссовки',1,'[{\"added\": {}}]',7,1),(2,'2023-12-19 06:41:45.098294','1','Nile',1,'[{\"added\": {}}]',9,1),(3,'2023-12-19 06:41:50.147836','1','Nike',2,'[{\"changed\": {\"fields\": [\"\\u041f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0449\\u0438\\u043a\"]}}]',9,1),(4,'2023-12-19 06:42:13.822405','1','Nike Air',1,'[{\"added\": {}}]',8,1),(5,'2023-12-19 06:42:56.645138','1','ProductImage object (1)',1,'[{\"added\": {}}]',10,1),(6,'2023-12-19 07:17:31.242998','2','AIR Jordan',1,'[{\"added\": {}}]',8,1),(7,'2023-12-19 07:17:47.156625','2','ProductImage object (2)',1,'[{\"added\": {}}]',10,1),(8,'2023-12-19 07:18:38.959584','3','Forse',1,'[{\"added\": {}}]',8,1),(9,'2023-12-19 07:18:47.753244','3','ProductImage object (3)',1,'[{\"added\": {}}]',10,1),(10,'2023-12-19 07:22:46.998784','4','Super',1,'[{\"added\": {}}]',8,1),(11,'2023-12-19 07:22:56.875161','4','ProductImage object (4)',1,'[{\"added\": {}}]',10,1),(12,'2023-12-19 08:57:46.846484','2','Ковты',1,'[{\"added\": {}}]',7,1),(13,'2023-12-19 09:05:30.917546','2','Abibas',1,'[{\"added\": {}}]',9,1),(14,'2023-12-19 09:05:54.415308','5','Abibas Super Slim',1,'[{\"added\": {}}]',8,1),(15,'2023-12-19 09:06:28.910672','5','ProductImage object (5)',1,'[{\"added\": {}}]',10,1),(16,'2023-12-21 00:44:43.833746','3','Футболки',1,'[{\"added\": {}}]',7,1),(17,'2023-12-21 00:44:49.437990','2','Кофты',2,'[{\"changed\": {\"fields\": [\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435\"]}}]',7,1),(18,'2023-12-21 00:54:09.656749','6','Jordan Courtside Tee',1,'[{\"added\": {}}]',8,1),(19,'2023-12-21 00:57:20.040409','6','ProductImage object (6)',1,'[{\"added\": {}}]',10,1),(20,'2023-12-21 01:10:07.780174','7','Nike Air Tee',1,'[{\"added\": {}}]',8,1),(21,'2023-12-21 01:10:36.036417','7','ProductImage object (7)',1,'[{\"added\": {}}]',10,1),(22,'2023-12-21 07:02:24.256271','3','Forсe',2,'[{\"changed\": {\"fields\": [\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435\"]}}]',8,1),(23,'2023-12-21 07:08:34.713679','5','Adidas Super Slim',2,'[{\"changed\": {\"fields\": [\"\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435\"]}}]',8,1),(24,'2023-12-21 08:18:51.896131','4','Носки',1,'[{\"added\": {}}]',7,1),(25,'2023-12-21 08:36:08.947023','4','Носки',3,'',7,1),(26,'2023-12-21 08:36:23.736667','5','Брюки',1,'[{\"added\": {}}]',7,1),(27,'2023-12-21 08:44:30.322743','2','Adidas',2,'[{\"changed\": {\"fields\": [\"\\u041f\\u043e\\u0441\\u0442\\u0430\\u0432\\u0449\\u0438\\u043a\"]}}]',9,1),(28,'2023-12-21 08:44:51.325106','6','Шорты',1,'[{\"added\": {}}]',7,1),(29,'2023-12-21 08:44:55.921457','7','Куртки',1,'[{\"added\": {}}]',7,1),(30,'2023-12-21 08:57:21.629975','3','STREETBEAT',1,'[{\"added\": {}}]',9,1),(31,'2023-12-21 08:57:40.107155','8','Женский джемпер STREETBEAT Polo',1,'[{\"added\": {}}]',8,1),(32,'2023-12-21 08:58:03.630916','8','ProductImage object (8)',1,'[{\"added\": {}}]',10,1),(33,'2023-12-21 09:00:04.962133','4','Timberland',1,'[{\"added\": {}}]',9,1),(34,'2023-12-21 09:00:08.077246','9','Женские кроссовки Timberland Motion 6 Low',1,'[{\"added\": {}}]',8,1),(35,'2023-12-21 09:00:28.081158','9','ProductImage object (9)',1,'[{\"added\": {}}]',10,1),(36,'2023-12-21 09:01:55.874597','10','STREETBEAT x Space Jam: A New Legacy',1,'[{\"added\": {}}]',8,1),(37,'2023-12-21 09:02:12.559705','10','ProductImage object (10)',1,'[{\"added\": {}}]',10,1),(38,'2023-12-21 09:03:35.568280','11','Женская футболка STREETBEAT & The Batman',1,'[{\"added\": {}}]',8,1),(39,'2023-12-21 09:03:49.228185','11','ProductImage object (11)',1,'[{\"added\": {}}]',10,1),(40,'2023-12-21 09:05:23.376712','5','Napapijri',1,'[{\"added\": {}}]',9,1),(41,'2023-12-21 09:05:26.679947','12','Худи Napapijri B-Ayas',1,'[{\"added\": {}}]',8,1),(42,'2023-12-21 09:05:48.938231','12','ProductImage object (12)',1,'[{\"added\": {}}]',10,1),(43,'2023-12-21 09:08:13.794338','6','Champion',1,'[{\"added\": {}}]',9,1),(44,'2023-12-21 09:08:15.611033','13','Толстовка Champion Hooded Sweatshirt',1,'[{\"added\": {}}]',8,1),(45,'2023-12-21 09:08:37.998068','13','ProductImage object (13)',1,'[{\"added\": {}}]',10,1),(46,'2023-12-21 09:10:24.863193','7','The North Face',1,'[{\"added\": {}}]',9,1),(47,'2023-12-21 09:10:27.133665','14','Мужская куртка The North Face Himalayan Down Parka',1,'[{\"added\": {}}]',8,1),(48,'2023-12-21 09:10:45.688151','14','ProductImage object (14)',1,'[{\"added\": {}}]',10,1),(49,'2023-12-21 09:13:42.061779','15','Женские кроссовки Nike Daybreak',1,'[{\"added\": {}}]',8,1),(50,'2023-12-21 09:14:03.298323','15','ProductImage object (15)',1,'[{\"added\": {}}]',10,1),(51,'2023-12-21 09:17:10.437965','16','Мужская футболка adidas Yung Z Tee 2',1,'[{\"added\": {}}]',8,1),(52,'2023-12-21 09:17:40.977802','16','ProductImage object (16)',1,'[{\"added\": {}}]',10,1),(53,'2023-12-21 09:19:14.403020','17','Женская худи adidas Short Hoodie',1,'[{\"added\": {}}]',8,1),(54,'2023-12-21 09:19:44.100768','17','ProductImage object (17)',1,'[{\"added\": {}}]',10,1),(55,'2023-12-21 09:21:37.163495','18','Мужские шорты Napapijri Nalis',1,'[{\"added\": {}}]',8,1),(56,'2023-12-21 09:21:57.278042','18','ProductImage object (18)',1,'[{\"added\": {}}]',10,1),(57,'2023-12-21 09:24:04.638920','19','Женские кроссовки STREETBEAT Aurora',1,'[{\"added\": {}}]',8,1),(58,'2023-12-21 09:24:42.044013','19','ProductImage object (19)',1,'[{\"added\": {}}]',10,1),(59,'2023-12-21 09:28:03.466097','20','Мужская футболка Napapijri S-Racing',1,'[{\"added\": {}}]',8,1),(60,'2023-12-21 09:28:28.978010','20','ProductImage object (20)',1,'[{\"added\": {}}]',10,1),(61,'2023-12-21 09:30:15.803430','21','Мужская куртка The North Face Dryvent Bio Jacket',1,'[{\"added\": {}}]',8,1),(62,'2023-12-21 09:30:33.572116','21','ProductImage object (21)',1,'[{\"added\": {}}]',10,1),(63,'2023-12-21 09:31:56.206973','8','Tommy Jeans',1,'[{\"added\": {}}]',9,1),(64,'2023-12-21 09:31:59.073640','22','Женская худи Tommy Jeans Oversize Signature Hoodie',1,'[{\"added\": {}}]',8,1),(65,'2023-12-21 09:32:20.018869','22','ProductImage object (22)',1,'[{\"added\": {}}]',10,1),(66,'2023-12-21 09:33:56.624578','9','PUMA',1,'[{\"added\": {}}]',9,1),(67,'2023-12-21 09:33:59.302975','23','Мужские шорты PUMA Hill Camp Knit Shorts',1,'[{\"added\": {}}]',8,1),(68,'2023-12-21 09:35:23.547267','10','Alpha Industries',1,'[{\"added\": {}}]',9,1),(69,'2023-12-21 09:35:29.616730','24','Мужская парка Alpha Industries N-3B Altitude Mod Parka',1,'[{\"added\": {}}]',8,1),(70,'2023-12-21 09:35:54.783176','23','ProductImage object (23)',1,'[{\"added\": {}}]',10,1),(71,'2023-12-21 09:36:38.240906','25','Мужская футболка adidas Moscow Sports in the City Tee',1,'[{\"added\": {}}]',8,1),(72,'2023-12-21 09:36:53.699208','24','ProductImage object (24)',1,'[{\"added\": {}}]',10,1),(73,'2023-12-21 09:40:25.922838','26','Женская толстовка STREETBEAT Half Zip Crew',1,'[{\"added\": {}}]',8,1),(74,'2023-12-21 09:40:44.215238','25','ProductImage object (25)',1,'[{\"added\": {}}]',10,1),(75,'2023-12-21 09:42:01.171541','11','Reebok',1,'[{\"added\": {}}]',9,1),(76,'2023-12-21 09:42:02.842170','27','Женские кроссовки Reebok Club C Revenge',1,'[{\"added\": {}}]',8,1),(77,'2023-12-21 09:42:21.161361','26','ProductImage object (26)',1,'[{\"added\": {}}]',10,1),(78,'2023-12-21 09:42:57.284059','28','Худи adidas Shmoo Hoodie',1,'[{\"added\": {}}]',8,1),(79,'2023-12-21 09:43:12.178747','27','ProductImage object (27)',1,'[{\"added\": {}}]',10,1),(80,'2023-12-21 09:46:03.286447','28','ProductImage object (28)',1,'[{\"added\": {}}]',10,1),(81,'2023-12-21 09:54:25.314712','29','Мужская куртка PUMA Classics Utility Jacket',1,'[{\"added\": {}}]',8,1),(82,'2023-12-21 09:54:43.439504','29','ProductImage object (29)',1,'[{\"added\": {}}]',10,1),(83,'2023-12-21 09:56:13.246458','30','Мужская футболка adidas Sport Summer Tee',1,'[{\"added\": {}}]',8,1),(84,'2023-12-21 09:56:34.198716','30','ProductImage object (30)',1,'[{\"added\": {}}]',10,1),(85,'2023-12-21 09:57:26.199234','31','Женская толстовка Champion Hooded Full Zip Sweatshirt',1,'[{\"added\": {}}]',8,1),(86,'2023-12-21 09:57:45.892582','31','ProductImage object (31)',1,'[{\"added\": {}}]',10,1),(87,'2023-12-21 09:58:56.641949','32','Мужские шорты PUMA First Mile Cargo Shorts',1,'[{\"added\": {}}]',8,1),(88,'2023-12-21 09:59:24.662279','32','ProductImage object (32)',1,'[{\"added\": {}}]',10,1),(89,'2023-12-21 10:00:31.274175','33','Мужская футболка The North Face Simple Dome Tee',1,'[{\"added\": {}}]',8,1),(90,'2023-12-21 10:00:55.365139','33','ProductImage object (33)',1,'[{\"added\": {}}]',10,1),(91,'2023-12-22 01:00:38.130303','34','ProductImage object (34)',1,'[{\"added\": {}}]',10,1),(92,'2023-12-22 01:17:58.437222','35','ProductImage object (35)',1,'[{\"added\": {}}]',10,1),(93,'2023-12-22 01:18:10.887407','36','ProductImage object (36)',1,'[{\"added\": {}}]',10,1),(94,'2023-12-22 17:21:32.289642','2','AIR Jordan',2,'[{\"changed\": {\"fields\": [\"\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435\"]}}]',8,1),(95,'2023-12-25 12:50:32.430488','23','Мужские шорты PUMA Hill Camp Knit Shorts',2,'[{\"changed\": {\"fields\": [\"\\u041a\\u0430\\u0442\\u0435\\u0433\\u043e\\u0440\\u0438\\u044f\"]}}]',8,1);
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
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'shop','category'),(11,'shop','detail'),(8,'shop','product'),(10,'shop','productimage'),(9,'shop','provider');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-12-18 09:31:12.816140'),(2,'auth','0001_initial','2023-12-18 09:31:17.870923'),(3,'admin','0001_initial','2023-12-18 09:31:18.948227'),(4,'admin','0002_logentry_remove_auto_add','2023-12-18 09:31:19.083953'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-18 09:31:19.182227'),(6,'contenttypes','0002_remove_content_type_name','2023-12-18 09:31:19.914082'),(7,'auth','0002_alter_permission_name_max_length','2023-12-18 09:31:20.795387'),(8,'auth','0003_alter_user_email_max_length','2023-12-18 09:31:21.065533'),(9,'auth','0004_alter_user_username_opts','2023-12-18 09:31:21.195054'),(10,'auth','0005_alter_user_last_login_null','2023-12-18 09:31:21.885411'),(11,'auth','0006_require_contenttypes_0002','2023-12-18 09:31:22.310584'),(12,'auth','0007_alter_validators_add_error_messages','2023-12-18 09:31:22.579298'),(13,'auth','0008_alter_user_username_max_length','2023-12-18 09:31:23.264136'),(14,'auth','0009_alter_user_last_name_max_length','2023-12-18 09:31:24.163380'),(15,'auth','0010_alter_group_name_max_length','2023-12-18 09:31:24.716520'),(16,'auth','0011_update_proxy_permissions','2023-12-18 09:31:24.855234'),(17,'auth','0012_alter_user_first_name_max_length','2023-12-18 09:31:26.048713'),(18,'sessions','0001_initial','2023-12-18 09:31:27.779393'),(19,'shop','0001_initial','2023-12-18 09:31:38.369388'),(20,'shop','0002_product_views','2023-12-22 06:09:58.593269');
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
INSERT INTO `django_session` VALUES ('u5z11t8qktbhpb9m8nr8ytnttx84r7jl','.eJxVjMsOwiAQRf-FtSEzPFpw6d5vIDBDpWogKe3K-O_apAvd3nPOfYkQt7WEreclzCzOAsXpd0uRHrnugO-x3pqkVtdlTnJX5EG7vDbOz8vh_h2U2Mu39gkNwQQJWXvSkSwpBKemwZEe2eIYM4IyxnvQTDYlh25gDZARMzvx_gDVWDdW:1rGFyM:4QN_ivYUFA0uJj_kueb_ZlRRVmjUpo9VemmjNVNw_B0','2024-01-04 10:08:10.834626');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_category`
--

DROP TABLE IF EXISTS `shop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_category`
--

LOCK TABLES `shop_category` WRITE;
/*!40000 ALTER TABLE `shop_category` DISABLE KEYS */;
INSERT INTO `shop_category` VALUES (1,'Кроссовки'),(2,'Кофты'),(3,'Футболки'),(5,'Брюки'),(6,'Шорты'),(7,'Куртки');
/*!40000 ALTER TABLE `shop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_detail`
--

DROP TABLE IF EXISTS `shop_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_detail` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `value` varchar(500) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_detail_product_id_1b276117_fk_shop_product_id` (`product_id`),
  CONSTRAINT `shop_detail_product_id_1b276117_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_detail`
--

LOCK TABLES `shop_detail` WRITE;
/*!40000 ALTER TABLE `shop_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_product`
--

DROP TABLE IF EXISTS `shop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `price` double NOT NULL,
  `description` longtext NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `provider_id` bigint NOT NULL,
  `views` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_product_provider_id_a0f81e03_fk_shop_provider_id` (`provider_id`),
  KEY `shop_product_category_id_14d7eea8_fk_shop_category_id` (`category_id`),
  CONSTRAINT `shop_product_category_id_14d7eea8_fk_shop_category_id` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`id`),
  CONSTRAINT `shop_product_provider_id_a0f81e03_fk_shop_provider_id` FOREIGN KEY (`provider_id`) REFERENCES `shop_provider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` VALUES (1,'Nike Air',3400,'Супер кроссовки',1,1,45),(2,'AIR Jordan',7600,'Кроссовки Air Jordan 1 Mid созданы на основе первой модели AJ1. Фанаты OG оценят легендарный дизайн, который напоминает о пути развития бренда Jordan с 1985 года. Прочный кожаный верх отвечает за эстетику пары и ее долговечность. Специальная вставка Air-Sole обеспечивает легкость и усиленную амортизацию. Подошва изготовлена из резины и дополнена вариативными протекторами для надежного сцепления с любой поверхностью.',1,1,3),(3,'Forсe',4800,'Forses',1,1,12),(4,'Super',8900,'Super',1,1,9),(5,'Adidas Super Slim',45700,'Opopop',2,2,3),(6,'Jordan Courtside Tee',3999,'Футболка',3,1,71),(7,'Nike Air Tee',1999,'Футболка',3,1,7),(8,'Женский джемпер STREETBEAT Polo',7999,'Женский джемпер',2,3,8),(9,'Женские кроссовки Timberland Motion 6 Low',18199,'В ботинках Timberland Motion 6 Low встречать смену сезонов вместе с переменчивой погодой особенно комфортно.',1,4,1),(10,'STREETBEAT x Space Jam: A New Legacy',1699,'Повседневная футболка Space Jam x Street Beat.',3,3,0),(11,'Женская футболка STREETBEAT & The Batman',2199,'Женская футболка из коллекции Street Beat & The Batman: I Am The Night.',3,3,2),(12,'Худи Napapijri B-Ayas',5499,'.',2,5,2),(13,'Толстовка Champion Hooded Sweatshirt',4399,'Универсальная толстовка Champion Hooded Sweatshirt. Традиционный силуэт вместе с вместительными карманами-кенгуру позволяет носить модель с особым комфортом каждый день. Оригинальные принты и фирменный брендинг отлично вписываются в городской стиль.',2,6,84),(14,'Мужская куртка The North Face Himalayan Down Parka',31499,'Прототипом мужскому пуховику The North Face Himalayan Down Parka послужила настоящая альпинистская куртка для покорения горных вершин.',7,7,0),(15,'Женские кроссовки Nike Daybreak',4599,'Модель Nike Daybreak, впервые выпущенная в 1979 году, - это взрыв из прошлого.',1,1,10),(16,'Мужская футболка adidas Yung Z Tee 2',3199,'привет из прошлого.',3,2,0),(17,'Женская худи adidas Short Hoodie',6599,'Укороченный силуэт худи adidas Short Hoodie позволяет стилизовать его с брюками и джинсами с высокой посадкой.',2,2,0),(18,'Мужские шорты Napapijri Nalis',7599,'Для искателей приключений, которым не сидится дома даже в знойный день, подойдет легкий аутфит, например, шорты Napapijri Nalis.',6,5,7),(19,'Женские кроссовки STREETBEAT Aurora',4899,'Монохромные оттенки и правильно подобранные материалы делают модель Street Beat Aurora отличным вариантом для ежедневных аутфитов.',1,3,3),(20,'Мужская футболка Napapijri S-Racing',2499,'В футболке Napapijri S-Racing сочетаются универсальность и стиль. За универсальность отвечает мягкий хлопковый материал, который циркулирует воздух и впитывает лишнюю влагу, а за стиль - \r\nграфический принт в виде горных вершин, которые бросают вызов многим путешественникам.',3,5,4),(21,'Мужская куртка The North Face Dryvent Bio Jacket',22199,'Единение с природой и заботу об окружающей среде бренд The North Face воплощает в каждой коллекции.',7,7,1),(22,'Женская худи Tommy Jeans Oversize Signature Hoodie',6999,'.',2,8,1),(23,'Мужские шорты PUMA Hill Camp Knit Shorts',3599,'...',6,9,1),(24,'Мужская парка Alpha Industries N-3B Altitude Mod Parka',20999,'...',7,10,3),(25,'Мужская футболка adidas Moscow Sports in the City Tee',2999,'...',3,2,16),(26,'Женская толстовка STREETBEAT Half Zip Crew',7299,'...',2,3,2),(27,'Женские кроссовки Reebok Club C Revenge',5999,'....',1,11,3),(28,'Худи adidas Shmoo Hoodie',5999,'...',2,2,34),(29,'Мужская куртка PUMA Classics Utility Jacket',10499,'...',7,9,15),(30,'Мужская футболка adidas Sport Summer Tee',3499,'...',3,2,0),(31,'Женская толстовка Champion Hooded Full Zip Sweatshirt',7999,'...',2,6,1),(32,'Мужские шорты PUMA First Mile Cargo Shorts',3899,'...',6,9,0),(33,'Мужская футболка The North Face Simple Dome Tee',3499,'...',3,7,17);
/*!40000 ALTER TABLE `shop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_productimage`
--

DROP TABLE IF EXISTS `shop_productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_productimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_productimage_product_id_65b3b20c_fk_shop_product_id` (`product_id`),
  CONSTRAINT `shop_productimage_product_id_65b3b20c_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_productimage`
--

LOCK TABLES `shop_productimage` WRITE;
/*!40000 ALTER TABLE `shop_productimage` DISABLE KEYS */;
INSERT INTO `shop_productimage` VALUES (1,'products_images/nikes.png',1),(2,'products_images/zdpoloqvcc6skr61k7xj9d5bxzm96clt.png',2),(3,'products_images/nike-id-air-force-1-low-force-is-female-3.png',3),(4,'products_images/587d82a229ceba80432497d594206c06.png',4),(5,'products_images/ac16e63e-ddfa-37a6-8437-eeca81edd63b.png',5),(6,'products_images/289d8861ef010a009193f9c875fdf5d7.png',6),(7,'products_images/cdd86842ee618c9c11da0e5e3e5aa31d.png',7),(8,'products_images/lxjc2tq3gpmcwj2aw9za6o7wmia609gk.png',8),(9,'products_images/Pasted-20231221-175911_2.png',9),(10,'products_images/Pasted-20231221-172810_2.png',10),(11,'products_images/Pasted-20231221-175626_2.png',11),(12,'products_images/Pasted-20231221-172922_2.png',12),(13,'products_images/Pasted-20231221-173939_2.png',13),(14,'products_images/Pasted-20231221-173202_2.png',14),(15,'products_images/Pasted-20231221-171807_2.png',15),(16,'products_images/Pasted-20231221-174845_2.png',16),(17,'products_images/Pasted-20231221-173638_2.png',17),(18,'products_images/Pasted-20231221-174316_2.png',18),(19,'products_images/Pasted-20231221-172525_2.png',19),(20,'products_images/Pasted-20231221-175002_2.png',20),(21,'products_images/Pasted-20231221-173446_2.png',21),(22,'products_images/Pasted-20231221-171639_2.png',22),(23,'products_images/Pasted-20231221-175144_2.png',24),(24,'products_images/Pasted-20231221-175025_2.png',25),(25,'products_images/Pasted-20231221-173702_2.png',26),(26,'products_images/Pasted-20231221-175411_2.png',27),(27,'products_images/Pasted-20231221-173739_2.png',28),(28,'products_images/Pasted-20231221-175444.png',23),(29,'products_images/Pasted-20231221-174518_2.png',29),(30,'products_images/Pasted-20231221-174937_2.png',30),(31,'products_images/Pasted-20231221-174230_2.png',31),(32,'products_images/Pasted-20231221-174354_2.png',32),(33,'products_images/Pasted-20231221-172559_2.png',33),(34,'products_images/Pasted-20231221-174845_2_LponYzF.png',6),(35,'products_images/Pasted-20231221-175259_2.png',6),(36,'products_images/Pasted-20231221-174937_2_9UKaRh6.png',6);
/*!40000 ALTER TABLE `shop_productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_provider`
--

DROP TABLE IF EXISTS `shop_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_provider` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_provider`
--

LOCK TABLES `shop_provider` WRITE;
/*!40000 ALTER TABLE `shop_provider` DISABLE KEYS */;
INSERT INTO `shop_provider` VALUES (1,'Nike'),(2,'Adidas'),(3,'STREETBEAT'),(4,'Timberland'),(5,'Napapijri'),(6,'Champion'),(7,'The North Face'),(8,'Tommy Jeans'),(9,'PUMA'),(10,'Alpha Industries'),(11,'Reebok');
/*!40000 ALTER TABLE `shop_provider` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-26 19:20:08
