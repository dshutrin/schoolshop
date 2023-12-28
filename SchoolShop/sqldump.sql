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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add custom user',6,'add_customuser'),(22,'Can change custom user',6,'change_customuser'),(23,'Can delete custom user',6,'delete_customuser'),(24,'Can view custom user',6,'view_customuser'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add provider',9,'add_provider'),(34,'Can change provider',9,'change_provider'),(35,'Can delete provider',9,'delete_provider'),(36,'Can view provider',9,'view_provider'),(37,'Can add product image',10,'add_productimage'),(38,'Can change product image',10,'change_productimage'),(39,'Can delete product image',10,'delete_productimage'),(40,'Can view product image',10,'view_productimage'),(41,'Can add detail',11,'add_detail'),(42,'Can change detail',11,'change_detail'),(43,'Can delete detail',11,'delete_detail'),(44,'Can view detail',11,'view_detail'),(45,'Can add trash',12,'add_trash'),(46,'Can change trash',12,'change_trash'),(47,'Can delete trash',12,'delete_trash'),(48,'Can view trash',12,'view_trash');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `balance` double NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `trash_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `auth_user_trash_id_71f03181_fk_shop_trash_id` (`trash_id`),
  CONSTRAINT `auth_user_trash_id_71f03181_fk_shop_trash_id` FOREIGN KEY (`trash_id`) REFERENCES `shop_trash` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$7MzRPd7ctr5Skk5NzpRgBC$1T4TxuhZcJUzGOJ8WrL3016FEFkCKNf0vbbus4L773A=','2023-12-28 01:01:44.197675','root','dshutrin@mail.ru',1,1,'2023-12-28 00:23:49.000000',0,1,1);
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
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
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-27 23:30:31.556320','1','root',2,'[{\"changed\": {\"fields\": [\"Email\"]}}]',6,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session'),(7,'shop','category'),(6,'shop','customuser'),(11,'shop','detail'),(8,'shop','product'),(10,'shop','productimage'),(9,'shop','provider'),(12,'shop','trash');
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
INSERT INTO `django_migrations` VALUES (1,'shop','0001_initial','2023-12-27 14:20:32.753740'),(2,'contenttypes','0001_initial','2023-12-27 14:20:32.786220'),(3,'admin','0001_initial','2023-12-27 14:20:32.951585'),(4,'admin','0002_logentry_remove_auto_add','2023-12-27 14:20:32.963756'),(5,'admin','0003_logentry_add_action_flag_choices','2023-12-27 14:20:32.973085'),(6,'contenttypes','0002_remove_content_type_name','2023-12-27 14:20:33.040202'),(7,'auth','0001_initial','2023-12-27 14:20:33.304538'),(8,'auth','0002_alter_permission_name_max_length','2023-12-27 14:20:33.371755'),(9,'auth','0003_alter_user_email_max_length','2023-12-27 14:20:33.388761'),(10,'auth','0004_alter_user_username_opts','2023-12-27 14:20:33.395059'),(11,'auth','0005_alter_user_last_login_null','2023-12-27 14:20:33.406924'),(12,'auth','0006_require_contenttypes_0002','2023-12-27 14:20:33.417544'),(13,'auth','0007_alter_validators_add_error_messages','2023-12-27 14:20:33.422655'),(14,'auth','0008_alter_user_username_max_length','2023-12-27 14:20:33.439868'),(15,'auth','0009_alter_user_last_name_max_length','2023-12-27 14:20:33.455145'),(16,'auth','0010_alter_group_name_max_length','2023-12-27 14:20:33.487721'),(17,'auth','0011_update_proxy_permissions','2023-12-27 14:20:33.509095'),(18,'auth','0012_alter_user_first_name_max_length','2023-12-27 14:20:33.513283'),(19,'sessions','0001_initial','2023-12-27 14:20:33.563229'),(20,'shop','0002_customuser_is_superuser','2023-12-27 14:23:09.628480'),(21,'shop','0003_alter_customuser_balance','2023-12-27 23:24:45.037885'),(22,'shop','0004_alter_category_options_alter_customuser_options_and_more','2023-12-28 00:45:25.511132');
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
INSERT INTO `django_session` VALUES ('c568bvchjw1hvyz5xobpdvh8pkknmxat','.eJxVjEEOwiAQAP_C2RCXBQoevfsGssAiVUOT0p6MfzckPeh1ZjJvEWjfatg7r2HO4iJAnH5ZpPTkNkR-ULsvMi1tW-coRyIP2-Vtyfy6Hu3foFKvY4tGTdGBP5MBnpTVsViEqKGUgtoCIBkChz4SAgMZlZQvmTMQeePE5wu6dzda:1rIemO:yaRbEAEyP2qzBFFrtIFQNJZ66tquNkjJ_zqy3Lym5dk','2024-01-11 01:01:44.202899');
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
  `views` int NOT NULL,
  `category_id` bigint DEFAULT NULL,
  `provider_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_product_provider_id_a0f81e03_fk_shop_provider_id` (`provider_id`),
  KEY `shop_product_category_id_14d7eea8_fk_shop_category_id` (`category_id`),
  CONSTRAINT `shop_product_category_id_14d7eea8_fk_shop_category_id` FOREIGN KEY (`category_id`) REFERENCES `shop_category` (`id`),
  CONSTRAINT `shop_product_provider_id_a0f81e03_fk_shop_provider_id` FOREIGN KEY (`provider_id`) REFERENCES `shop_provider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_product`
--

LOCK TABLES `shop_product` WRITE;
/*!40000 ALTER TABLE `shop_product` DISABLE KEYS */;
INSERT INTO `shop_product` VALUES (2,'Nike Air',3400,'Супер кроссовки',45,1,1),(3,'AIR Jordan',7600,'Кроссовки Air Jordan 1 Mid созданы на основе первой модели AJ1. Фанаты OG оценят легендарный дизайн, который напоминает о пути развития бренда Jordan с 1985 года. Прочный кожаный верх отвечает за эстетику пары и ее долговечность. Специальная вставка Air-Sole обеспечивает легкость и усиленную амортизацию. Подошва изготовлена из резины и дополнена вариативными протекторами для надежного сцепления с любой поверхностью.',4,1,1),(4,'Forсe',4800,'Forses',12,1,1),(5,'Super',8900,'Super',12,1,1),(6,'Adidas Super Slim',45700,'Opopop',3,2,2),(7,'Jordan Courtside Tee',3999,'Футболка',76,3,1),(8,'Nike Air Tee',1999,'Футболка',7,3,1),(9,'Женский джемпер STREETBEAT Polo',7999,'Женский джемпер',8,2,3),(10,'Женские кроссовки Timberland Motion 6 Low',18199,'В ботинках Timberland Motion 6 Low встречать смену сезонов вместе с переменчивой погодой особенно комфортно.',1,1,4),(11,'STREETBEAT x Space Jam: A New Legacy',1699,'Повседневная футболка Space Jam x Street Beat.',0,3,3),(12,'Женская футболка STREETBEAT & The Batman',2199,'Женская футболка из коллекции Street Beat & The Batman: I Am The Night.',2,3,3),(13,'Худи Napapijri B-Ayas',5499,'.',3,2,5),(14,'Толстовка Champion Hooded Sweatshirt',4399,'Универсальная толстовка Champion Hooded Sweatshirt. Традиционный силуэт вместе с вместительными карманами-кенгуру позволяет носить модель с особым комфортом каждый день. Оригинальные принты и фирменный брендинг отлично вписываются в городской стиль.',84,2,6),(15,'Мужская куртка The North Face Himalayan Down Parka',31499,'Прототипом мужскому пуховику The North Face Himalayan Down Parka послужила настоящая альпинистская куртка для покорения горных вершин.',0,7,7),(16,'Женские кроссовки Nike Daybreak',4599,'Модель Nike Daybreak, впервые выпущенная в 1979 году, - это взрыв из прошлого.',10,1,1),(17,'Мужская футболка adidas Yung Z Tee 2',3199,'привет из прошлого.',0,3,2),(18,'Женская худи adidas Short Hoodie',6599,'Укороченный силуэт худи adidas Short Hoodie позволяет стилизовать его с брюками и джинсами с высокой посадкой.',1,2,2),(19,'Мужские шорты Napapijri Nalis',7599,'Для искателей приключений, которым не сидится дома даже в знойный день, подойдет легкий аутфит, например, шорты Napapijri Nalis.',7,6,5),(20,'Женские кроссовки STREETBEAT Aurora',4899,'Монохромные оттенки и правильно подобранные материалы делают модель Street Beat Aurora отличным вариантом для ежедневных аутфитов.',3,1,3),(21,'Мужская футболка Napapijri S-Racing',2499,'В футболке Napapijri S-Racing сочетаются универсальность и стиль. За универсальность отвечает мягкий хлопковый материал, который циркулирует воздух и впитывает лишнюю влагу, а за стиль - \r\nграфический принт в виде горных вершин, которые бросают вызов многим путешественникам.',4,3,5),(22,'Мужская куртка The North Face Dryvent Bio Jacket',22199,'Единение с природой и заботу об окружающей среде бренд The North Face воплощает в каждой коллекции.',1,7,7),(23,'Женская худи Tommy Jeans Oversize Signature Hoodie',6999,'.',1,2,8),(24,'Мужские шорты PUMA Hill Camp Knit Shorts',3599,'...',1,6,9),(25,'Мужская парка Alpha Industries N-3B Altitude Mod Parka',20999,'...',4,7,10),(26,'Мужская футболка adidas Moscow Sports in the City Tee',2999,'...',16,3,2),(27,'Женская толстовка STREETBEAT Half Zip Crew',7299,'...',2,2,3),(28,'Женские кроссовки Reebok Club C Revenge',5999,'....',3,1,11),(29,'Худи adidas Shmoo Hoodie',5999,'...',34,2,2),(30,'Мужская куртка PUMA Classics Utility Jacket',10499,'...',15,7,9),(31,'Мужская футболка adidas Sport Summer Tee',3499,'...',0,3,2),(32,'Женская толстовка Champion Hooded Full Zip Sweatshirt',7999,'...',1,2,6),(33,'Мужские шорты PUMA First Mile Cargo Shorts',3899,'...',0,6,9),(34,'Мужская футболка The North Face Simple Dome Tee',3499,'...',17,3,7);
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
INSERT INTO `shop_productimage` VALUES (1,'products_images/nikes.png',2),(2,'products_images/zdpoloqvcc6skr61k7xj9d5bxzm96clt.png',3),(3,'products_images/nike-id-air-force-1-low-force-is-female-3.png',4),(4,'products_images/587d82a229ceba80432497d594206c06.png',5),(5,'products_images/ac16e63e-ddfa-37a6-8437-eeca81edd63b.png',6),(6,'products_images/289d8861ef010a009193f9c875fdf5d7.png',7),(7,'products_images/cdd86842ee618c9c11da0e5e3e5aa31d.png',8),(8,'products_images/lxjc2tq3gpmcwj2aw9za6o7wmia609gk.png',9),(9,'products_images/Pasted-20231221-175911_2.png',10),(10,'products_images/Pasted-20231221-172810_2.png',11),(11,'products_images/Pasted-20231221-175626_2.png',12),(12,'products_images/Pasted-20231221-172922_2.png',13),(13,'products_images/Pasted-20231221-173939_2.png',14),(14,'products_images/Pasted-20231221-173202_2.png',15),(15,'products_images/Pasted-20231221-171807_2.png',16),(16,'products_images/Pasted-20231221-174845_2.png',17),(17,'products_images/Pasted-20231221-173638_2.png',18),(18,'products_images/Pasted-20231221-174316_2.png',19),(19,'products_images/Pasted-20231221-172525_2.png',20),(20,'products_images/Pasted-20231221-175002_2.png',21),(21,'products_images/Pasted-20231221-173446_2.png',22),(22,'products_images/Pasted-20231221-171639_2.png',23),(23,'products_images/Pasted-20231221-175144_2.png',25),(24,'products_images/Pasted-20231221-175025_2.png',26),(25,'products_images/Pasted-20231221-173702_2.png',27),(26,'products_images/Pasted-20231221-175411_2.png',28),(27,'products_images/Pasted-20231221-173739_2.png',29),(28,'products_images/Pasted-20231221-175444.png',24),(29,'products_images/Pasted-20231221-174518_2.png',30),(30,'products_images/Pasted-20231221-174937_2.png',31),(31,'products_images/Pasted-20231221-174230_2.png',32),(32,'products_images/Pasted-20231221-174354_2.png',33),(33,'products_images/Pasted-20231221-172559_2.png',34),(34,'products_images/Pasted-20231221-174845_2_LponYzF.png',7),(35,'products_images/Pasted-20231221-175259_2.png',7),(36,'products_images/Pasted-20231221-174937_2_9UKaRh6.png',7);
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

--
-- Table structure for table `shop_trash`
--

DROP TABLE IF EXISTS `shop_trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_trash` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_trash`
--

LOCK TABLES `shop_trash` WRITE;
/*!40000 ALTER TABLE `shop_trash` DISABLE KEYS */;
INSERT INTO `shop_trash` VALUES (1);
/*!40000 ALTER TABLE `shop_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_trash_products`
--

DROP TABLE IF EXISTS `shop_trash_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_trash_products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `trash_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_trash_products_trash_id_product_id_29a38b6c_uniq` (`trash_id`,`product_id`),
  KEY `shop_trash_products_product_id_cd668978_fk_shop_product_id` (`product_id`),
  CONSTRAINT `shop_trash_products_product_id_cd668978_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `shop_product` (`id`),
  CONSTRAINT `shop_trash_products_trash_id_7fd52c27_fk_shop_trash_id` FOREIGN KEY (`trash_id`) REFERENCES `shop_trash` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_trash_products`
--

LOCK TABLES `shop_trash_products` WRITE;
/*!40000 ALTER TABLE `shop_trash_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_trash_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-28 13:34:29
