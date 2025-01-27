-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ttms
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
-- Table structure for table `account_account`
--

DROP TABLE IF EXISTS `account_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_account` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `password` varchar(200) NOT NULL,
  `name` varchar(20) NOT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_account_role_id_d75c1e21_fk_role_role_id` (`role_id`),
  CONSTRAINT `account_account_role_id_d75c1e21_fk_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `role_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_account`
--

LOCK TABLES `account_account` WRITE;
/*!40000 ALTER TABLE `account_account` DISABLE KEYS */;
INSERT INTO `account_account` VALUES (1,'123@qq.com','123123','test',1);
/*!40000 ALTER TABLE `account_account` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 全局配置',7,'add_settings'),(26,'Can change 全局配置',7,'change_settings'),(27,'Can delete 全局配置',7,'delete_settings'),(28,'Can view 全局配置',7,'view_settings'),(29,'Can add 权限组',8,'add_permissiongroup'),(30,'Can change 权限组',8,'change_permissiongroup'),(31,'Can delete 权限组',8,'delete_permissiongroup'),(32,'Can view 权限组',8,'view_permissiongroup'),(33,'Can add 权限',9,'add_permission'),(34,'Can change 权限',9,'change_permission'),(35,'Can delete 权限',9,'delete_permission'),(36,'Can view 权限',9,'view_permission'),(37,'Can add 部门',10,'add_department'),(38,'Can change 部门',10,'change_department'),(39,'Can delete 部门',10,'delete_department'),(40,'Can view 部门',10,'view_department'),(41,'Can add 用户',11,'add_user'),(42,'Can change 用户',11,'change_user'),(43,'Can delete 用户',11,'delete_user'),(44,'Can view 用户',11,'view_user'),(45,'Can add 客户',12,'add_customer'),(46,'Can change 客户',12,'change_customer'),(47,'Can delete 客户',12,'delete_customer'),(48,'Can view 客户',12,'view_customer'),(49,'Can add 代收款转账单',13,'add_cargopricepayment'),(50,'Can change 代收款转账单',13,'change_cargopricepayment'),(51,'Can delete 代收款转账单',13,'delete_cargopricepayment'),(52,'Can view 代收款转账单',13,'view_cargopricepayment'),(53,'Can add 运单',14,'add_waybill'),(54,'Can change 运单',14,'change_waybill'),(55,'Can delete 运单',14,'delete_waybill'),(56,'Can view 运单',14,'view_waybill'),(57,'Can add 车辆',15,'add_truck'),(58,'Can change 车辆',15,'change_truck'),(59,'Can delete 车辆',15,'delete_truck'),(60,'Can view 车辆',15,'view_truck'),(61,'Can add 车次',16,'add_transportout'),(62,'Can change 车次',16,'change_transportout'),(63,'Can delete 车次',16,'delete_transportout'),(64,'Can view 车次',16,'view_transportout'),(65,'Can add 运单路由',17,'add_waybillrouting'),(66,'Can change 运单路由',17,'change_waybillrouting'),(67,'Can delete 运单路由',17,'delete_waybillrouting'),(68,'Can view 运单路由',17,'view_waybillrouting'),(69,'Can add 部门回款单',18,'add_departmentpayment'),(70,'Can change 部门回款单',18,'change_departmentpayment'),(71,'Can delete 部门回款单',18,'delete_departmentpayment'),(72,'Can view 部门回款单',18,'view_departmentpayment'),(73,'Can add 客户积分记录',19,'add_customerscorelog'),(74,'Can change 客户积分记录',19,'change_customerscorelog'),(75,'Can delete 客户积分记录',19,'delete_customerscorelog'),(76,'Can view 客户积分记录',19,'view_customerscorelog');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$q9hUhlUZ30K6DKJZkBZD8E$ZDzHCxbkE0IqxnGkJ4PWtyLSmPvLstWPwnvVJx5Pljo=','2023-04-08 08:51:50.957862',1,'admin','','','',1,1,'2023-04-08 08:51:48.794092');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authority_auth`
--

DROP TABLE IF EXISTS `authority_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authority_auth` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority_auth`
--

LOCK TABLES `authority_auth` WRITE;
/*!40000 ALTER TABLE `authority_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `authority_auth` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(13,'wuliu','cargopricepayment'),(12,'wuliu','customer'),(19,'wuliu','customerscorelog'),(10,'wuliu','department'),(18,'wuliu','departmentpayment'),(9,'wuliu','permission'),(8,'wuliu','permissiongroup'),(7,'wuliu','settings'),(16,'wuliu','transportout'),(15,'wuliu','truck'),(11,'wuliu','user'),(14,'wuliu','waybill'),(17,'wuliu','waybillrouting');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-02-15 06:32:19.956688'),(2,'auth','0001_initial','2023-02-15 06:32:20.258067'),(3,'admin','0001_initial','2023-02-15 06:32:20.333913'),(4,'admin','0002_logentry_remove_auto_add','2023-02-15 06:32:20.340455'),(5,'admin','0003_logentry_add_action_flag_choices','2023-02-15 06:32:20.348840'),(6,'contenttypes','0002_remove_content_type_name','2023-02-15 06:32:20.414735'),(7,'auth','0002_alter_permission_name_max_length','2023-02-15 06:32:20.452773'),(8,'auth','0003_alter_user_email_max_length','2023-02-15 06:32:20.472210'),(9,'auth','0004_alter_user_username_opts','2023-02-15 06:32:20.479776'),(10,'auth','0005_alter_user_last_login_null','2023-02-15 06:32:20.528145'),(11,'auth','0006_require_contenttypes_0002','2023-02-15 06:32:20.530733'),(12,'auth','0007_alter_validators_add_error_messages','2023-02-15 06:32:20.539181'),(13,'auth','0008_alter_user_username_max_length','2023-02-15 06:32:20.581574'),(14,'auth','0009_alter_user_last_name_max_length','2023-02-15 06:32:20.616301'),(15,'auth','0010_alter_group_name_max_length','2023-02-15 06:32:20.631109'),(16,'auth','0011_update_proxy_permissions','2023-02-15 06:32:20.639024'),(17,'auth','0012_alter_user_first_name_max_length','2023-02-15 06:32:20.676549'),(18,'sessions','0001_initial','2023-02-15 06:32:20.695838'),(19,'wuliu','0001_squashed','2023-02-15 06:32:22.271016'),(20,'wuliu','0002_auto_20230408_1702','2023-04-08 09:02:24.036611');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('tcsvcvro4jd6v075ab66e58fxkp622b5','.eJxVj0luwzAMRa9SaJ0YGqLJy-57AwOCJNJDmsiFZa2C3L1S4EWy--B_fCAfxPmyz65k3NwCpCeMnN5nwcdfTK2Aq0_T2sU17dsSuoZ0R5u7nxXw9n2wH4LZ57lue-mVslYKJYxlnFKtQ2SjYkaABBoQNUhmpbUWvcCRco3KjFxKboyITdp0pH-Q2zpNCG5Jbl_uWN2ccnGmlzM1X0z1kvdcVbx9w08k-RcTc56bBPDPb_sd0_56l6mP0QEPRcElDMUEkDXXo2sGroeiabDk-fwHQyphxw:1pl4Mk:52YO_5ZF9x4-SrdwSno8x9H4xTCNR_nN-v5LzSXAPNY','2023-04-22 08:56:10.206819'),('wlfvad661i22h3p8avncqfy5krtohyex','.eJxVykEKwyAQQNGrlFknYMdo0jmLILEzpEJjS9RVyN1jSzfdfT5vh5plA9rh-VoWYR-TL3EVIECFuldDr-wFFZmJtIYOIgNhB2n-mnvOD26X5T1vZZVU_Adc7d_6YVctD8HVKbBpbbRtzTi6Oqpwg-M4AeGBK40:1pkPCD:MDz-TBGXeK5NKYrcMMd04JxrQ7_xv9jISpMNq_gWpnc','2023-04-20 12:58:33.500267');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_order`
--

DROP TABLE IF EXISTS `order_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime(6) NOT NULL,
  `money` double NOT NULL,
  `schedule_id` int DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_order_schedule_id_d98eeae5_fk_schedule_schedule_id` (`schedule_id`),
  CONSTRAINT `order_order_schedule_id_d98eeae5_fk_schedule_schedule_id` FOREIGN KEY (`schedule_id`) REFERENCES `schedule_schedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_order`
--

LOCK TABLES `order_order` WRITE;
/*!40000 ALTER TABLE `order_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_play`
--

DROP TABLE IF EXISTS `play_play`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `play_play` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `play_time` date NOT NULL,
  `length` int NOT NULL,
  `desc` longtext NOT NULL,
  `director` varchar(20) NOT NULL,
  `actors` varchar(100) NOT NULL,
  `area` varchar(20) NOT NULL,
  `score` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `play_play_name_1040f26f` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_play`
--

LOCK TABLES `play_play` WRITE;
/*!40000 ALTER TABLE `play_play` DISABLE KEYS */;
/*!40000 ALTER TABLE `play_play` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `play_play_types`
--

DROP TABLE IF EXISTS `play_play_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `play_play_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `play_id` int NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `play_play_types_play_id_type_id_7c75638b_uniq` (`play_id`,`type_id`),
  KEY `play_play_types_type_id_27922235_fk_type_type_id` (`type_id`),
  CONSTRAINT `play_play_types_play_id_996ccd67_fk_play_play_id` FOREIGN KEY (`play_id`) REFERENCES `play_play` (`id`),
  CONSTRAINT `play_play_types_type_id_27922235_fk_type_type_id` FOREIGN KEY (`type_id`) REFERENCES `type_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `play_play_types`
--

LOCK TABLES `play_play_types` WRITE;
/*!40000 ALTER TABLE `play_play_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `play_play_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_role`
--

DROP TABLE IF EXISTS `role_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_role`
--

LOCK TABLES `role_role` WRITE;
/*!40000 ALTER TABLE `role_role` DISABLE KEYS */;
INSERT INTO `role_role` VALUES (1,'custorm');
/*!40000 ALTER TABLE `role_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_role_auths`
--

DROP TABLE IF EXISTS `role_role_auths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_role_auths` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `auth_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_role_roles_role_id_auth_id_8930c3c5_uniq` (`role_id`,`auth_id`),
  KEY `role_role_roles_auth_id_29495dae_fk_authority_auth_id` (`auth_id`),
  CONSTRAINT `role_role_roles_auth_id_29495dae_fk_authority_auth_id` FOREIGN KEY (`auth_id`) REFERENCES `authority_auth` (`id`),
  CONSTRAINT `role_role_roles_role_id_5c2f8f5b_fk_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `role_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_role_auths`
--

LOCK TABLES `role_role_auths` WRITE;
/*!40000 ALTER TABLE `role_role_auths` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_role_auths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_schedule`
--

DROP TABLE IF EXISTS `schedule_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_schedule` (
  `id` int NOT NULL AUTO_INCREMENT,
  `show_time` datetime(6) NOT NULL,
  `end_time` datetime(6) NOT NULL,
  `ticket_counts` int NOT NULL,
  `ticket_money` double NOT NULL,
  `play_id` int DEFAULT NULL,
  `studio_id` int DEFAULT NULL,
  `ticket_all_counts` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `schedule_schedule_play_id_28aa9833` (`play_id`),
  KEY `schedule_schedule_studio_id_8e4f4a5d` (`studio_id`),
  CONSTRAINT `schedule_schedule_play_id_28aa9833_fk_play_play_id` FOREIGN KEY (`play_id`) REFERENCES `play_play` (`id`),
  CONSTRAINT `schedule_schedule_studio_id_8e4f4a5d_fk_studio_studio_id` FOREIGN KEY (`studio_id`) REFERENCES `studio_studio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_schedule`
--

LOCK TABLES `schedule_schedule` WRITE;
/*!40000 ALTER TABLE `schedule_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_seat`
--

DROP TABLE IF EXISTS `seat_seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seat_seat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `row_id` int NOT NULL,
  `col_id` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `studio_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `seat_seat_studio_id_id_3a6055b6` (`studio_id`),
  CONSTRAINT `seat_seat_studio_id_4cbd8a6d_fk_studio_studio_id` FOREIGN KEY (`studio_id`) REFERENCES `studio_studio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_seat`
--

LOCK TABLES `seat_seat` WRITE;
/*!40000 ALTER TABLE `seat_seat` DISABLE KEYS */;
/*!40000 ALTER TABLE `seat_seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studio_studio`
--

DROP TABLE IF EXISTS `studio_studio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studio_studio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `seat_rows` int NOT NULL,
  `seat_cols` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studio_studio`
--

LOCK TABLES `studio_studio` WRITE;
/*!40000 ALTER TABLE `studio_studio` DISABLE KEYS */;
/*!40000 ALTER TABLE `studio_studio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_ticket`
--

DROP TABLE IF EXISTS `ticket_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `schedule_id` int DEFAULT NULL,
  `seat_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ticket_ticket_schedule_id_ce14b7ff_fk_schedule_schedule_id` (`schedule_id`),
  KEY `ticket_ticket_order_id_a657c3e2_fk_order_order_id` (`order_id`),
  KEY `ticket_ticket_seat_id_e2d3859c` (`seat_id`),
  CONSTRAINT `ticket_ticket_order_id_a657c3e2_fk_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_order` (`id`),
  CONSTRAINT `ticket_ticket_schedule_id_ce14b7ff_fk_schedule_schedule_id` FOREIGN KEY (`schedule_id`) REFERENCES `schedule_schedule` (`id`),
  CONSTRAINT `ticket_ticket_seat_id_e2d3859c_fk_seat_seat_id` FOREIGN KEY (`seat_id`) REFERENCES `seat_seat` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_ticket`
--

LOCK TABLES `ticket_ticket` WRITE;
/*!40000 ALTER TABLE `ticket_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_type`
--

DROP TABLE IF EXISTS `type_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_type`
--

LOCK TABLES `type_type` WRITE;
/*!40000 ALTER TABLE `type_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_cargopricepayment`
--

DROP TABLE IF EXISTS `wuliu_cargopricepayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_cargopricepayment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `settle_accounts_time` datetime(6) DEFAULT NULL,
  `payee_name` varchar(32) NOT NULL,
  `payee_phone` varchar(16) NOT NULL,
  `payee_bank_name` varchar(32) NOT NULL,
  `payee_bank_number` varchar(32) NOT NULL,
  `payee_credential_num` varchar(32) NOT NULL,
  `remark` varchar(256) NOT NULL,
  `reject_reason` varchar(256) NOT NULL,
  `status` smallint NOT NULL,
  `create_user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wuliu_cargopricepayment_create_user_id_55fe03ac_fk_wuliu_user_id` (`create_user_id`),
  KEY `wuliu_cargopricepayment_create_time_a039d597` (`create_time`),
  KEY `wuliu_cargopricepayment_status_9f0b29d7` (`status`),
  CONSTRAINT `wuliu_cargopricepayment_create_user_id_55fe03ac_fk_wuliu_user_id` FOREIGN KEY (`create_user_id`) REFERENCES `wuliu_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_cargopricepayment`
--

LOCK TABLES `wuliu_cargopricepayment` WRITE;
/*!40000 ALTER TABLE `wuliu_cargopricepayment` DISABLE KEYS */;
INSERT INTO `wuliu_cargopricepayment` VALUES (6,'2021-10-05 03:18:00.209000','2021-10-05 03:20:30.856000','张三','13333333333','张三银行','3333333333333333333','333333333333333333','','',3,2),(7,'2021-10-05 03:19:08.763000','2021-10-05 03:20:27.641000','王五','13555555555','王五银行','5555555555555555555','555555555555555555','','',3,2),(8,'2021-10-19 07:49:22.013000','2021-10-19 08:01:20.368000','芦苇','13777777777','芦苇银行','7777777777777777777','777777777777777777','加急加急','',3,2);
/*!40000 ALTER TABLE `wuliu_cargopricepayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_customer`
--

DROP TABLE IF EXISTS `wuliu_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `bank_name` varchar(32) NOT NULL,
  `bank_number` varchar(32) NOT NULL,
  `credential_num` varchar(32) NOT NULL,
  `address` varchar(64) NOT NULL,
  `is_vip` tinyint(1) NOT NULL,
  `score` int unsigned NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `wuliu_customer_name_fd4b0c18` (`name`),
  KEY `wuliu_customer_enabled_5dd9033b` (`enabled`),
  KEY `wuliu_customer_is_vip_5dd02bda` (`is_vip`),
  KEY `wuliu_customer_create_time_994446fa` (`create_time`),
  CONSTRAINT `wuliu_customer_chk_1` CHECK ((`score` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_customer`
--

LOCK TABLES `wuliu_customer` WRITE;
/*!40000 ALTER TABLE `wuliu_customer` DISABLE KEYS */;
INSERT INTO `wuliu_customer` VALUES (1,'张三','13333333333',1,'张三银行','3333333333333333333','333333333333333333','',1,1657,'2021-05-23 13:39:16.942000'),(2,'李四','13444444444',1,'李四银行','4444444444444444444','444444444444444444','',0,0,'2021-05-23 13:40:04.334000'),(3,'王五','13555555555',1,'王五银行','5555555555555555555','555555555555555555','',1,65,'2021-05-23 13:42:49.599000'),(4,'赵六','13666666666',1,'赵六银行','6666666666666666666','666666666666666666','',0,0,'2021-05-23 13:43:21.173000'),(5,'王镜泽','13888888888',1,'镜泽银行','8888888888888888888','888888888888888888','',0,0,'2021-05-23 13:43:54.174000'),(6,'芦苇','13777777777',1,'芦苇银行','7777777777777777777','777777777777777777','',0,0,'2021-05-23 13:44:18.886000'),(7,'马保国','13999999999',1,'保国银行','9999999999999999999','999999999999999999','',0,0,'2021-05-23 13:44:47.957000'),(8,'岛市老八','15888888888',1,'老八银行','8888888888888888888','888888888888888888','',1,22,'2021-06-04 03:24:29.782000');
/*!40000 ALTER TABLE `wuliu_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_customerscorelog`
--

DROP TABLE IF EXISTS `wuliu_customerscorelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_customerscorelog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `inc_or_dec` tinyint(1) NOT NULL,
  `score` int unsigned NOT NULL,
  `remark` varchar(256) NOT NULL,
  `customer_id` int NOT NULL,
  `waybill_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `waybill_id` (`waybill_id`),
  KEY `wuliu_customerscorelog_customer_id_98fcbb9d_fk_wuliu_customer_id` (`customer_id`),
  KEY `wuliu_customerscorelog_user_id_227cad90_fk_wuliu_user_id` (`user_id`),
  KEY `wuliu_customerscorelog_create_time_57ef72f7` (`create_time`),
  CONSTRAINT `wuliu_customerscorelog_customer_id_98fcbb9d_fk_wuliu_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `wuliu_customer` (`id`),
  CONSTRAINT `wuliu_customerscorelog_user_id_227cad90_fk_wuliu_user_id` FOREIGN KEY (`user_id`) REFERENCES `wuliu_user` (`id`),
  CONSTRAINT `wuliu_customerscorelog_waybill_id_90e10b44_fk_wuliu_waybill_id` FOREIGN KEY (`waybill_id`) REFERENCES `wuliu_waybill` (`id`),
  CONSTRAINT `check_change_score` CHECK ((`score` >= 1)),
  CONSTRAINT `wuliu_customerscorelog_chk_1` CHECK ((`score` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_customerscorelog`
--

LOCK TABLES `wuliu_customerscorelog` WRITE;
/*!40000 ALTER TABLE `wuliu_customerscorelog` DISABLE KEYS */;
INSERT INTO `wuliu_customerscorelog` VALUES (69,'2021-10-21 11:24:19.629000',1,30,'运单结算',1,1,NULL),(70,'2021-10-21 11:24:19.690000',1,10,'运单结算',3,4,NULL),(71,'2021-10-21 11:24:19.805000',1,5,'运单结算',1,6,NULL),(72,'2021-10-21 11:24:19.862000',1,5,'运单结算',3,7,NULL),(73,'2021-10-21 11:24:19.946000',1,50,'运单结算',3,2,NULL),(74,'2021-10-21 11:24:20.002000',1,10,'运单结算',3,5,NULL),(75,'2021-10-21 11:24:20.058000',1,10,'运单结算',8,9,NULL),(76,'2021-10-21 11:24:20.142000',1,5,'运单结算',3,12,NULL),(77,'2021-10-21 11:24:20.226000',1,10,'运单结算',1,17,NULL),(78,'2021-10-21 11:24:20.311000',1,10,'运单结算',3,13,NULL),(79,'2021-10-21 11:24:20.367000',1,10,'运单结算',1,16,NULL),(80,'2021-10-21 11:24:20.424000',1,5,'运单结算',3,18,NULL),(81,'2021-10-21 11:24:20.479000',1,50,'运单结算',1,19,NULL),(82,'2021-10-21 11:24:20.563000',1,5,'运单结算',1,11,NULL),(83,'2021-10-21 11:24:20.653000',1,5,'运单结算',8,10,NULL),(84,'2021-10-21 11:24:20.749000',1,50,'运单结算',3,23,NULL),(85,'2021-10-21 11:24:20.862000',1,3047,'运单结算',1,30,NULL),(86,'2021-10-21 11:24:20.946000',1,5,'运单结算',3,14,NULL),(87,'2021-10-21 11:24:21.002000',1,15,'运单结算',3,29,NULL),(88,'2021-10-21 11:24:21.058000',1,5,'运单结算',8,31,NULL),(89,'2021-10-21 11:24:21.141000',1,2,'运单结算',8,32,NULL),(90,'2021-10-25 07:20:52.953000',0,1000,'兑换礼品',1,NULL,4),(91,'2021-10-25 07:21:45.361000',0,100,'兑换礼品',3,NULL,4),(92,'2021-11-16 03:12:05.870000',0,500,'兑换礼品',1,NULL,4);
/*!40000 ALTER TABLE `wuliu_customerscorelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_department`
--

DROP TABLE IF EXISTS `wuliu_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `is_branch_group` tinyint(1) NOT NULL,
  `name` varchar(32) NOT NULL,
  `unit_price` double NOT NULL,
  `enable_src` tinyint(1) NOT NULL,
  `enable_dst` tinyint(1) NOT NULL,
  `enable_cargo_price` tinyint(1) NOT NULL,
  `father_department_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wuliu_department_father_department_id_c01dd584_fk_wuliu_dep` (`father_department_id`),
  KEY `wuliu_department_unit_price_a7c488fc` (`unit_price`),
  CONSTRAINT `wuliu_department_father_department_id_c01dd584_fk_wuliu_dep` FOREIGN KEY (`father_department_id`) REFERENCES `wuliu_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_department`
--

LOCK TABLES `wuliu_department` WRITE;
/*!40000 ALTER TABLE `wuliu_department` DISABLE KEYS */;
INSERT INTO `wuliu_department` VALUES (10,0,'PP物流',0,0,0,0,NULL),(11,1,'分公司',0,0,0,0,10),(12,1,'收货点',0,0,0,0,10),(13,0,'货场',0,0,0,0,10),(14,0,'财务部',0,0,0,0,17),(15,0,'测试分公司',0.3,1,1,1,11),(16,0,'测试收货点',0.2,1,1,1,12),(17,0,'总部',0,0,0,0,10);
/*!40000 ALTER TABLE `wuliu_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_departmentpayment`
--

DROP TABLE IF EXISTS `wuliu_departmentpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_departmentpayment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `payment_date` date NOT NULL,
  `settle_accounts_time` datetime(6) DEFAULT NULL,
  `status` smallint NOT NULL,
  `src_remark` varchar(256) NOT NULL,
  `dst_remark` varchar(256) NOT NULL,
  `dst_department_id` int NOT NULL,
  `src_department_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wuliu_departmentpaym_dst_department_id_99de647e_fk_wuliu_dep` (`dst_department_id`),
  KEY `wuliu_departmentpaym_src_department_id_0d42079e_fk_wuliu_dep` (`src_department_id`),
  KEY `wuliu_departmentpayment_status_8ac1adca` (`status`),
  CONSTRAINT `wuliu_departmentpaym_dst_department_id_99de647e_fk_wuliu_dep` FOREIGN KEY (`dst_department_id`) REFERENCES `wuliu_department` (`id`),
  CONSTRAINT `wuliu_departmentpaym_src_department_id_0d42079e_fk_wuliu_dep` FOREIGN KEY (`src_department_id`) REFERENCES `wuliu_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_departmentpayment`
--

LOCK TABLES `wuliu_departmentpayment` WRITE;
/*!40000 ALTER TABLE `wuliu_departmentpayment` DISABLE KEYS */;
INSERT INTO `wuliu_departmentpayment` VALUES (91,'2021-10-21 11:19:35.605000','2021-05-30','2021-10-21 11:24:19.528000',3,'','',14,16),(92,'2021-10-21 11:19:35.620000','2021-05-31','2021-10-21 11:24:19.528000',3,'','',14,15),(93,'2021-10-21 11:19:35.640000','2021-06-01','2021-10-21 11:24:19.528000',3,'','',14,16),(94,'2021-10-21 11:19:35.667000','2021-06-04','2021-10-21 11:24:19.528000',3,'','',14,15),(95,'2021-10-21 11:19:35.688000','2021-06-05','2021-10-21 11:24:19.528000',3,'','',14,16),(96,'2021-10-21 11:19:35.731000','2021-06-10','2021-10-21 11:24:19.528000',3,'','',14,16),(97,'2021-10-21 11:19:35.892000','2021-07-06','2021-10-21 11:24:19.528000',3,'','',14,15),(98,'2021-10-21 11:19:36.116000','2021-08-12','2021-10-21 11:24:19.528000',3,'','',14,15),(99,'2021-10-21 11:19:36.207000','2021-08-25','2021-10-21 11:24:19.528000',3,'','',14,16),(100,'2021-10-21 11:19:36.265000','2021-09-02','2021-10-21 11:24:19.528000',3,'','',14,16),(101,'2021-10-21 11:19:36.314000','2021-09-09','2021-10-21 11:24:19.528000',3,'','',14,15),(102,'2021-10-21 11:19:36.491000','2021-10-08','2021-10-21 11:24:19.528000',3,'','',14,16),(103,'2021-10-21 11:19:36.560000','2021-10-19','2021-10-21 11:24:19.528000',3,'','',14,15),(104,'2021-10-21 11:19:36.573000','2021-10-19','2021-10-21 11:24:19.528000',3,'','',14,16),(107,'2021-11-16 05:00:20.929000','2021-11-08','2021-11-16 05:03:10.413000',3,'','',14,15);
/*!40000 ALTER TABLE `wuliu_departmentpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_departmentpayment_waybills`
--

DROP TABLE IF EXISTS `wuliu_departmentpayment_waybills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_departmentpayment_waybills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `departmentpayment_id` int NOT NULL,
  `waybill_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuliu_departmentpayment__departmentpayment_id_way_1c6b3265_uniq` (`departmentpayment_id`,`waybill_id`),
  KEY `wuliu_departmentpaym_waybill_id_193622ac_fk_wuliu_way` (`waybill_id`),
  CONSTRAINT `wuliu_departmentpaym_departmentpayment_id_7fed75f4_fk_wuliu_dep` FOREIGN KEY (`departmentpayment_id`) REFERENCES `wuliu_departmentpayment` (`id`),
  CONSTRAINT `wuliu_departmentpaym_waybill_id_193622ac_fk_wuliu_way` FOREIGN KEY (`waybill_id`) REFERENCES `wuliu_waybill` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_departmentpayment_waybills`
--

LOCK TABLES `wuliu_departmentpayment_waybills` WRITE;
/*!40000 ALTER TABLE `wuliu_departmentpayment_waybills` DISABLE KEYS */;
INSERT INTO `wuliu_departmentpayment_waybills` VALUES (1,91,1),(2,91,4),(3,92,1),(4,93,6),(5,93,7),(7,94,2),(8,94,5),(6,94,9),(9,95,12),(10,96,17),(11,97,4),(12,97,6),(13,97,13),(14,97,16),(15,97,17),(16,97,18),(17,97,19),(18,98,11),(19,98,12),(20,99,8),(21,99,9),(22,99,10),(23,100,23),(26,101,7),(24,101,20),(25,101,22),(27,102,30),(28,103,14),(29,103,23),(30,103,29),(31,103,30),(32,103,31),(33,104,32),(34,107,32);
/*!40000 ALTER TABLE `wuliu_departmentpayment_waybills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_permission`
--

DROP TABLE IF EXISTS `wuliu_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `father_id` int NOT NULL,
  `print_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wuliu_permission_father_id_e9a7d9a0_fk_wuliu_permissiongroup_id` (`father_id`),
  CONSTRAINT `wuliu_permission_father_id_e9a7d9a0_fk_wuliu_permissiongroup_id` FOREIGN KEY (`father_id`) REFERENCES `wuliu_permissiongroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_permission`
--

LOCK TABLES `wuliu_permission` WRITE;
/*!40000 ALTER TABLE `wuliu_permission` DISABLE KEYS */;
INSERT INTO `wuliu_permission` VALUES (13,'add_waybill',3,'运单录入'),(14,'manage_waybill__search',11,'查询'),(15,'manage_transport_out__search',4,'查询'),(16,'manage_arrival',5,'到货管理'),(17,'manage_sign_for',5,'客户签收'),(18,'manage_department_payment__search',9,'查询'),(19,'manage_cargo_price_payment__search',8,'查询'),(20,'report_table_src_waybill',7,'收货报表'),(21,'report_table_stock_waybill',7,'发货库存'),(22,'report_table_dst_waybill',7,'到货报表'),(23,'report_table_dst_stock_waybill',7,'到货库存'),(24,'report_table_sign_for_waybill',7,'提货报表'),(25,'manage_cargo_price_payment__add_edit_delete_submit',8,'新增，修改，删除，提交'),(27,'manage_cargo_price_payment__review_reject',8,'审核，驳回'),(28,'manage_cargo_price_payment__pay',8,'确认支付'),(30,'manage_department_payment__add_delete',9,'新增，删除'),(31,'manage_department_payment__review',9,'审核'),(32,'manage_department_payment__pay',9,'支付'),(33,'manage_department_payment__settle',9,'结算'),(35,'customer_score_log__add',10,'变更积分'),(36,'customer_score_log__search',10,'查询'),(37,'manage_waybill__edit_delete_print',11,'修改，删除，打印'),(38,'manage_transport_out__add_edit_delete_start',4,'新增，修改，删除，发车');
/*!40000 ALTER TABLE `wuliu_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_permissiongroup`
--

DROP TABLE IF EXISTS `wuliu_permissiongroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_permissiongroup` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `father_id` int DEFAULT NULL,
  `print_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wuliu_permissiongrou_father_id_42819fea_fk_wuliu_per` (`father_id`),
  CONSTRAINT `wuliu_permissiongrou_father_id_42819fea_fk_wuliu_per` FOREIGN KEY (`father_id`) REFERENCES `wuliu_permissiongroup` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_permissiongroup`
--

LOCK TABLES `wuliu_permissiongroup` WRITE;
/*!40000 ALTER TABLE `wuliu_permissiongroup` DISABLE KEYS */;
INSERT INTO `wuliu_permissiongroup` VALUES (1,'root_permission_group',NULL,'根权限组'),(2,'base_features',1,'基本功能'),(3,'waybill',2,'运单管理'),(4,'transport_out',2,'发车管理'),(5,'arrival',2,'到达管理'),(6,'finance',2,'财务管理'),(7,'report_table',2,'业务报表'),(8,'manage_cargo_price_payment',6,'代收款转账单'),(9,'manage_department_payment',6,'部门回款单'),(10,'customer_score_log',6,'客户积分记录'),(11,'manage_waybill',3,'运单管理');
/*!40000 ALTER TABLE `wuliu_permissiongroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_settings`
--

DROP TABLE IF EXISTS `wuliu_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(32) NOT NULL,
  `handling_fee_ratio` double NOT NULL,
  `customer_score_ratio` double NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `check_customer_score_ratio` CHECK (((`customer_score_ratio` > 0.0e0) and (`customer_score_ratio` <= 1.0e0))),
  CONSTRAINT `check_handling_fee_ratio` CHECK (((`handling_fee_ratio` > 0.0e0) and (`handling_fee_ratio` <= 1.0e0)))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_settings`
--

LOCK TABLES `wuliu_settings` WRITE;
/*!40000 ALTER TABLE `wuliu_settings` DISABLE KEYS */;
INSERT INTO `wuliu_settings` VALUES (1,'龙兴物流',0.002,1);
/*!40000 ALTER TABLE `wuliu_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_transportout`
--

DROP TABLE IF EXISTS `wuliu_transportout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_transportout` (
  `id` int NOT NULL AUTO_INCREMENT,
  `driver_name` varchar(32) NOT NULL,
  `driver_phone` varchar(16) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `status` smallint NOT NULL,
  `dst_department_id` int NOT NULL,
  `src_department_id` int NOT NULL,
  `truck_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wuliu_transportout_dst_department_id_761a8923_fk_wuliu_dep` (`dst_department_id`),
  KEY `wuliu_transportout_src_department_id_ae0ec173_fk_wuliu_dep` (`src_department_id`),
  KEY `wuliu_transportout_truck_id_ec3c92e4_fk_wuliu_truck_id` (`truck_id`),
  KEY `wuliu_transportout_create_time_e6b53604` (`create_time`),
  KEY `wuliu_transportout_start_time_7343cdb2` (`start_time`),
  KEY `wuliu_transportout_status_a9b14d62` (`status`),
  CONSTRAINT `wuliu_transportout_dst_department_id_761a8923_fk_wuliu_dep` FOREIGN KEY (`dst_department_id`) REFERENCES `wuliu_department` (`id`),
  CONSTRAINT `wuliu_transportout_src_department_id_ae0ec173_fk_wuliu_dep` FOREIGN KEY (`src_department_id`) REFERENCES `wuliu_department` (`id`),
  CONSTRAINT `wuliu_transportout_truck_id_ec3c92e4_fk_wuliu_truck_id` FOREIGN KEY (`truck_id`) REFERENCES `wuliu_truck` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_transportout`
--

LOCK TABLES `wuliu_transportout` WRITE;
/*!40000 ALTER TABLE `wuliu_transportout` DISABLE KEYS */;
INSERT INTO `wuliu_transportout` VALUES (1,'小赵','13000000000','2021-05-30 12:46:36.015000','2021-05-30 12:46:41.544000','2021-05-30 12:47:30.848000',2,13,16,1),(2,'小孙','13111111111','2021-05-30 12:48:12.830000','2021-05-30 12:48:17.327000','2021-05-30 12:48:37.007000',2,15,13,2),(4,'小赵','13000000000','2021-05-30 12:51:48.865000','2021-05-30 12:52:04.559000','2021-06-02 03:08:35.297000',2,13,16,1),(5,'小赵','13000000000','2021-06-01 09:04:40.023000','2021-06-01 09:04:43.535000','2021-06-05 09:42:30.145000',2,13,16,1),(6,'小孙','13111111111','2021-06-02 03:23:22.130000','2021-06-02 03:23:27.304000','2021-06-02 03:26:29.530000',2,15,13,2),(7,'二蛋','13222222222','2021-06-04 03:34:36.038000','2021-06-04 03:34:44.275000','2021-06-04 03:35:01.661000',2,13,15,3),(8,'小赵','13000000000','2021-06-05 08:18:37.234000','2021-06-05 08:18:41.417000','2021-06-05 09:42:40.425000',2,13,16,1),(9,'小孙','13111111111','2021-06-05 09:43:12.698000','2021-06-05 09:43:18.313000','2021-06-07 03:30:51.384000',2,15,13,2),(10,'小赵','13000000000','2021-06-07 03:29:22.110000','2021-06-07 03:29:26.520000','2021-07-06 01:55:18.377000',2,13,16,1),(11,'小赵','13000000000','2021-06-10 02:40:16.739000','2021-06-10 02:40:21.481000','2021-07-06 01:55:40.945000',2,13,16,1),(12,'小赵','13000000000','2021-06-17 02:13:13.921000','2021-07-06 01:55:03.946000','2021-07-06 08:08:31.093000',2,16,13,1),(13,'小赵','13000000000','2021-07-03 10:41:24.881000','2021-07-03 10:41:29.226000','2021-07-06 01:55:48.824000',2,13,16,1),(14,'小孙','13111111111','2021-07-06 01:56:10.827000','2021-07-06 01:56:15.834000','2021-07-06 01:57:04.226000',2,15,13,2),(15,'小赵','13000000000','2021-07-07 01:25:05.789000','2021-08-25 02:07:41.043000','2021-08-25 02:38:21.316000',2,13,16,1),(16,'小孙','13111111111','2021-08-25 02:38:46.325000','2021-08-25 02:38:58.820000','2021-08-31 07:30:31.879000',2,15,13,2),(17,'小赵','13000000000','2021-09-02 03:29:32.447000','2021-09-02 03:37:05.124000','2021-09-07 13:12:10.064000',2,13,16,1),(18,'小孙','13111111111','2021-09-07 13:10:08.713000','2021-09-07 13:10:13.545000','2021-09-07 13:12:16.807000',2,13,15,2),(19,'二蛋','13222222222','2021-09-07 13:12:46.776000','2021-09-07 13:12:51.671000','2021-09-07 13:14:40.679000',2,16,13,3),(20,'小赵','13000000000','2021-09-09 03:22:21.245000','2021-09-09 03:22:34.284000','2021-09-09 03:23:11.908000',2,13,16,1),(21,'小孙','13111111111','2021-09-09 03:23:33.389000','2021-09-09 03:23:37.684000','2021-09-09 03:23:57.179000',2,15,13,2),(22,'小赵','13000000000','2021-10-08 08:12:33.378000','2021-10-08 08:12:47.661000','2021-10-19 07:35:35.066000',2,13,16,1),(23,'小赵','13000000000','2021-10-19 07:34:37.333000','2021-10-19 07:34:43.951000','2021-10-19 07:35:22.644000',2,13,16,1),(24,'小孙','13111111111','2021-10-19 07:35:54.725000','2021-10-19 07:35:59.201000','2021-10-19 07:40:47.455000',2,15,13,2),(27,'二蛋','13222222222','2021-10-21 10:07:04.404000',NULL,NULL,0,13,15,3),(28,'小赵','13000000000','2021-11-02 02:53:21.372000','2021-11-02 08:21:37.816000','2021-11-02 08:21:40.688000',2,13,16,1),(29,'小孙','13111111111','2021-11-08 02:20:30.645000','2021-11-08 02:24:00.570000','2021-11-08 02:26:09.522000',2,15,13,2),(30,'小赵','13000000000','2021-11-13 02:08:38.512000',NULL,NULL,0,13,16,1),(31,'小孙','13111111111','2021-11-13 02:09:32.280000',NULL,NULL,0,15,13,2);
/*!40000 ALTER TABLE `wuliu_transportout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_transportout_waybills`
--

DROP TABLE IF EXISTS `wuliu_transportout_waybills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_transportout_waybills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `transportout_id` int NOT NULL,
  `waybill_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuliu_transportout_waybi_transportout_id_waybill__6010cf6f_uniq` (`transportout_id`,`waybill_id`),
  KEY `wuliu_transportout_w_waybill_id_70040b14_fk_wuliu_way` (`waybill_id`),
  CONSTRAINT `wuliu_transportout_w_transportout_id_c0c2d5e4_fk_wuliu_tra` FOREIGN KEY (`transportout_id`) REFERENCES `wuliu_transportout` (`id`),
  CONSTRAINT `wuliu_transportout_w_waybill_id_70040b14_fk_wuliu_way` FOREIGN KEY (`waybill_id`) REFERENCES `wuliu_waybill` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_transportout_waybills`
--

LOCK TABLES `wuliu_transportout_waybills` WRITE;
/*!40000 ALTER TABLE `wuliu_transportout_waybills` DISABLE KEYS */;
INSERT INTO `wuliu_transportout_waybills` VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(5,4,3),(6,4,4),(7,4,5),(8,5,6),(9,5,7),(10,6,3),(11,6,4),(12,6,5),(13,7,8),(14,7,9),(15,7,10),(16,8,11),(17,8,12),(18,8,13),(19,9,6),(20,9,7),(21,9,11),(22,9,12),(23,9,13),(24,10,14),(25,10,15),(26,11,16),(27,11,17),(28,11,18),(29,12,8),(30,12,9),(31,12,10),(32,13,19),(33,14,14),(34,14,15),(35,14,16),(36,14,17),(37,14,18),(38,14,19),(39,15,20),(40,15,21),(41,16,20),(42,16,21),(44,17,22),(45,17,23),(43,17,24),(46,18,25),(47,19,25),(48,20,27),(49,20,29),(50,21,22),(51,21,23),(52,21,24),(53,21,27),(54,21,29),(55,22,30),(57,23,31),(56,23,32),(59,24,30),(60,24,31),(58,24,32),(61,27,28),(62,28,33),(63,28,34),(64,29,33),(65,29,34);
/*!40000 ALTER TABLE `wuliu_transportout_waybills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_truck`
--

DROP TABLE IF EXISTS `wuliu_truck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_truck` (
  `id` int NOT NULL AUTO_INCREMENT,
  `number_plate` varchar(8) NOT NULL,
  `driver_name` varchar(32) NOT NULL,
  `driver_phone` varchar(16) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number_plate` (`number_plate`),
  KEY `wuliu_truck_enabled_6d3b3968` (`enabled`),
  KEY `wuliu_truck_create_time_3a7e0dbc` (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_truck`
--

LOCK TABLES `wuliu_truck` WRITE;
/*!40000 ALTER TABLE `wuliu_truck` DISABLE KEYS */;
INSERT INTO `wuliu_truck` VALUES (1,'豫A00000','小赵','13000000000',1,'2021-05-23 13:38:04.063000'),(2,'豫A12345','小孙','13111111111',1,'2021-05-23 13:41:16.823000'),(3,'豫A67890','二蛋','13222222222',1,'2021-05-23 13:41:34.550000');
/*!40000 ALTER TABLE `wuliu_truck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_user`
--

DROP TABLE IF EXISTS `wuliu_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `administrator` tinyint(1) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `department_id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `wuliu_user_department_id_4afcf6df_fk_wuliu_department_id` (`department_id`),
  KEY `wuliu_user_enabled_9b402e63` (`enabled`),
  CONSTRAINT `wuliu_user_department_id_4afcf6df_fk_wuliu_department_id` FOREIGN KEY (`department_id`) REFERENCES `wuliu_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_user`
--

LOCK TABLES `wuliu_user` WRITE;
/*!40000 ALTER TABLE `wuliu_user` DISABLE KEYS */;
INSERT INTO `wuliu_user` VALUES (1,'csfgs',1,0,'2021-05-23 13:35:39.920000',15,'pbkdf2_sha256$260000$8svd0aay4JkeJaMERz9KxW$85WvRjHXoZt4TjFbf4ysnWHCzPdzEoavW79WtEVnovY='),(2,'csshd',1,0,'2021-05-23 13:35:51.703000',16,'pbkdf2_sha256$260000$xTSuCKnwQKn1emfe6NlmOo$YZKmFqJAR7tNtOmTLU2l867hTg3etMk71D8rw37hFoo='),(3,'pzqqt',1,1,'2021-05-23 13:36:06.870000',10,'pbkdf2_sha256$260000$LFqIIYhYbUwmlSbKINs5sN$fSm8muI6A7IfIU0wp9q1mnmJdXB5+aQp13khBDlQSC8='),(4,'kj_1',1,0,'2021-05-23 13:36:26.312000',14,'pbkdf2_sha256$260000$gOAxDfcZUcUlOGj36vROQF$NK7iDeS9sq5GL5Qxk/HSiS0tJzkc4JfRMrzKBYeswnw='),(5,'zxg_1',1,0,'2021-05-23 13:36:40.991000',13,'pbkdf2_sha256$260000$Br0dDcoyU4Tlj1hcFXdZTI$IQllJkDKZtou7K7xyPuxzPB7gEzeRK3cEV0VnxjM6qQ='),(6,'zxg_2',1,0,'2021-05-23 13:36:53.671000',13,'pbkdf2_sha256$260000$cBX20RHio0LBX7HnVcZMYU$6bqqAWgvCkOdfHX6QGHSO8rmq59JEw7M1fT/UubSF5k=');
/*!40000 ALTER TABLE `wuliu_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_user_permission`
--

DROP TABLE IF EXISTS `wuliu_user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_user_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wuliu_user_permission_user_id_permission_id_2e1e7438_uniq` (`user_id`,`permission_id`),
  KEY `wuliu_user_permissio_permission_id_243521d9_fk_wuliu_per` (`permission_id`),
  CONSTRAINT `wuliu_user_permissio_permission_id_243521d9_fk_wuliu_per` FOREIGN KEY (`permission_id`) REFERENCES `wuliu_permission` (`id`),
  CONSTRAINT `wuliu_user_permission_user_id_ba239cfd_fk_wuliu_user_id` FOREIGN KEY (`user_id`) REFERENCES `wuliu_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_user_permission`
--

LOCK TABLES `wuliu_user_permission` WRITE;
/*!40000 ALTER TABLE `wuliu_user_permission` DISABLE KEYS */;
INSERT INTO `wuliu_user_permission` VALUES (5,1,13),(6,1,14),(7,1,15),(8,1,16),(9,1,17),(10,1,18),(11,1,19),(12,1,20),(13,1,21),(14,1,22),(15,1,23),(16,1,24),(17,1,25),(1,1,32),(2,1,36),(3,1,37),(4,1,38),(22,2,13),(23,2,14),(24,2,15),(25,2,16),(26,2,17),(27,2,18),(28,2,19),(29,2,20),(30,2,21),(31,2,22),(32,2,23),(33,2,24),(34,2,25),(18,2,32),(19,2,36),(20,2,37),(21,2,38),(37,3,13),(38,3,14),(39,3,15),(40,3,16),(41,3,17),(42,3,18),(43,3,19),(44,3,20),(45,3,21),(46,3,22),(47,3,23),(48,3,24),(35,3,35),(36,3,36),(52,4,14),(53,4,15),(54,4,18),(55,4,19),(56,4,20),(57,4,21),(58,4,22),(59,4,23),(60,4,24),(61,4,25),(62,4,27),(63,4,28),(64,4,30),(65,4,31),(49,4,33),(50,4,35),(51,4,36),(67,5,14),(68,5,15),(69,5,16),(70,5,20),(71,5,21),(66,5,38),(73,6,14),(74,6,15),(75,6,16),(76,6,20),(77,6,21),(72,6,38);
/*!40000 ALTER TABLE `wuliu_user_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_waybill`
--

DROP TABLE IF EXISTS `wuliu_waybill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_waybill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `arrival_time` datetime(6) DEFAULT NULL,
  `sign_for_time` datetime(6) DEFAULT NULL,
  `src_customer_name` varchar(32) NOT NULL,
  `src_customer_phone` varchar(16) NOT NULL,
  `src_customer_credential_num` varchar(32) NOT NULL,
  `src_customer_address` varchar(64) NOT NULL,
  `dst_customer_name` varchar(32) NOT NULL,
  `dst_customer_phone` varchar(16) NOT NULL,
  `dst_customer_credential_num` varchar(32) NOT NULL,
  `dst_customer_address` varchar(64) NOT NULL,
  `cargo_name` varchar(16) NOT NULL,
  `cargo_num` int unsigned NOT NULL,
  `cargo_volume` double NOT NULL,
  `cargo_weight` double NOT NULL,
  `cargo_price` int unsigned NOT NULL,
  `cargo_handling_fee` int unsigned NOT NULL,
  `fee` int unsigned NOT NULL,
  `fee_type` smallint NOT NULL,
  `customer_remark` varchar(64) NOT NULL,
  `company_remark` varchar(64) NOT NULL,
  `sign_for_customer_name` varchar(32) NOT NULL,
  `sign_for_customer_credential_num` varchar(32) NOT NULL,
  `status` smallint NOT NULL,
  `drop_reason` varchar(64) NOT NULL,
  `cargo_price_payment_id` int DEFAULT NULL,
  `dst_customer_id` int DEFAULT NULL,
  `dst_department_id` int NOT NULL,
  `return_waybill_id` int DEFAULT NULL,
  `src_customer_id` int DEFAULT NULL,
  `src_department_id` int NOT NULL,
  `cargo_price_status` smallint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `return_waybill_id` (`return_waybill_id`),
  KEY `wuliu_waybill_cargo_price_payment__e1022e53_fk_wuliu_car` (`cargo_price_payment_id`),
  KEY `wuliu_waybill_dst_customer_id_c47565ca_fk_wuliu_customer_id` (`dst_customer_id`),
  KEY `wuliu_waybill_dst_department_id_0eefb5b0_fk_wuliu_department_id` (`dst_department_id`),
  KEY `wuliu_waybill_src_customer_id_cf2fcd8d_fk_wuliu_customer_id` (`src_customer_id`),
  KEY `wuliu_waybill_src_department_id_97cfbfe4_fk_wuliu_department_id` (`src_department_id`),
  KEY `wuliu_waybill_create_time_ba4a2413` (`create_time`),
  KEY `wuliu_waybill_arrival_time_2d6d933a` (`arrival_time`),
  KEY `wuliu_waybill_sign_for_time_4de3581b` (`sign_for_time`),
  KEY `wuliu_waybill_fee_type_42dfa2cd` (`fee_type`),
  KEY `wuliu_waybill_status_04fc3de2` (`status`),
  KEY `wuliu_waybill_cargo_price_status_ce10a946` (`cargo_price_status`),
  CONSTRAINT `wuliu_waybill_cargo_price_payment__e1022e53_fk_wuliu_car` FOREIGN KEY (`cargo_price_payment_id`) REFERENCES `wuliu_cargopricepayment` (`id`),
  CONSTRAINT `wuliu_waybill_dst_customer_id_c47565ca_fk_wuliu_customer_id` FOREIGN KEY (`dst_customer_id`) REFERENCES `wuliu_customer` (`id`),
  CONSTRAINT `wuliu_waybill_dst_department_id_0eefb5b0_fk_wuliu_department_id` FOREIGN KEY (`dst_department_id`) REFERENCES `wuliu_department` (`id`),
  CONSTRAINT `wuliu_waybill_return_waybill_id_d5944e49_fk_wuliu_waybill_id` FOREIGN KEY (`return_waybill_id`) REFERENCES `wuliu_waybill` (`id`),
  CONSTRAINT `wuliu_waybill_src_customer_id_cf2fcd8d_fk_wuliu_customer_id` FOREIGN KEY (`src_customer_id`) REFERENCES `wuliu_customer` (`id`),
  CONSTRAINT `wuliu_waybill_src_department_id_97cfbfe4_fk_wuliu_department_id` FOREIGN KEY (`src_department_id`) REFERENCES `wuliu_department` (`id`),
  CONSTRAINT `wuliu_waybill_chk_1` CHECK ((`cargo_num` >= 0)),
  CONSTRAINT `wuliu_waybill_chk_2` CHECK ((`cargo_price` >= 0)),
  CONSTRAINT `wuliu_waybill_chk_3` CHECK ((`cargo_handling_fee` >= 0)),
  CONSTRAINT `wuliu_waybill_chk_4` CHECK ((`fee` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_waybill`
--

LOCK TABLES `wuliu_waybill` WRITE;
/*!40000 ALTER TABLE `wuliu_waybill` DISABLE KEYS */;
INSERT INTO `wuliu_waybill` VALUES (1,'2021-05-29 01:09:50.037000','2021-05-30 12:48:37.007000','2021-05-31 09:00:18.350000','张三','13333333333','333333333333333333','','李四','13444444444','444444444444444444','','配件',3,0.5,100,599,2,30,1,'','','李四','444444444444444444',7,'',6,2,15,NULL,1,16,2),(2,'2021-05-29 01:10:23.356000','2021-05-30 12:48:37.007000','2021-06-04 03:22:22.989000','王五','13555555555','555555555555555555','','赵六','13666666666','666666666666666666','','门套',5,0.5,200,3999,8,50,2,'','','赵六','666666666666666666',7,'',7,4,15,NULL,3,16,2),(3,'2021-05-29 01:10:53.490000','2021-06-02 03:26:29.530000',NULL,'张三','13333333333','333333333333333333','','王镜泽','13888888888','888888888888888888','','黄金炒饭',1,0.1,0.5,0,0,5,0,'','','','',8,'',NULL,5,15,NULL,1,16,0),(4,'2021-05-29 01:12:30.298000','2021-06-02 03:26:29.530000','2021-07-06 01:58:48.674000','王五','13555555555','555555555555555555','','芦苇','13777777777','777777777777777777','','八倍镜',3,0.1,1.5,8999,18,10,1,'','','芦苇','777777777777777777',7,'',7,6,15,NULL,3,16,2),(5,'2021-05-29 01:13:21.449000','2021-06-02 03:26:29.530000','2021-06-04 03:27:55.523000','王五','13555555555','555555555555555555','','马保国','13999999999','999999999999999999','','耗子尾汁',10,0.5,5,0,0,10,0,'','','马保国','13999999999',7,'',NULL,7,15,NULL,3,16,0),(6,'2021-05-30 14:52:12.984000','2021-06-07 03:30:51.384000','2021-07-06 01:58:48.674000','张三','13333333333','333333333333333333','','芦苇','13777777777','777777777777777777','','三级包',1,0.1,5,499,1,5,1,'','','芦苇','777777777777777777',7,'',6,6,15,NULL,1,16,2),(7,'2021-06-01 09:04:26.310000','2021-06-07 03:30:51.384000','2021-09-09 03:24:56.348000','王五','13555555555','555555555555555555','','马保国','13999999999','999999999999999999','','闪电鞭',2,0.1,10,0,0,5,1,'','','马保国','13999999999',7,'',NULL,7,15,NULL,3,16,0),(8,'2021-06-04 03:25:57.024000','2021-07-06 08:08:31.093000','2021-08-25 02:10:04.857000','王镜泽','13888888888','888888888888888888','','张三','13333333333','333333333333333333','','黄金炒饭',1,0.1,0.5,0,0,10,0,'','','王镜泽','888888888888888888',7,'',NULL,1,16,3,5,15,0),(9,'2021-06-04 03:31:19.877000','2021-07-06 08:08:31.093000','2021-08-25 02:32:15.438000','岛市老八','15888888888','888888888888888888','','张三','13333333333','333333333333333333','','秘制小汉堡',10,0.1,3,0,0,10,1,'','','岛市老八','888888888888888888',7,'',NULL,1,16,NULL,8,15,0),(10,'2021-06-04 03:34:11.995000','2021-07-06 08:08:31.093000','2021-08-25 02:32:15.438000','岛市老八','15888888888','888888888888888888','','王五','13555555555','555555555555555555','','奥里给！',1,0.1,1,0,0,5,0,'','','岛市老八','888888888888888888',7,'',NULL,3,16,NULL,8,15,0),(11,'2021-06-05 08:16:39.139000','2021-06-07 03:30:51.384000','2021-08-12 08:03:56.499000','张三','13333333333','333333333333333333','','岛市老八','15888888888','888888888888888888','','臭豆腐',3,0.1,1.5,15,1,5,0,'','','老八','8888888888888888888',7,'',6,8,15,NULL,1,16,2),(12,'2021-06-05 08:17:09.737000','2021-06-07 03:30:51.384000','2021-08-12 08:03:56.499000','王五','13555555555','555555555555555555','','岛市老八','15888888888','888888888888888888','','腐乳',5,0.1,2.5,50,1,5,1,'','','老八','8888888888888888888',7,'',7,8,15,NULL,3,16,2),(13,'2021-06-05 08:18:10.697000','2021-06-07 03:30:51.384000','2021-07-06 01:58:48.674000','王五','13555555555','555555555555555555','','芦苇','13777777777','777777777777777777','','16倍镜',1,0.1,2,1999,4,10,2,'','','芦苇','777777777777777777',7,'',7,6,15,NULL,3,16,2),(14,'2021-06-05 09:40:37.890000','2021-07-06 01:57:04.226000','2021-10-19 07:45:54.360000','王五','13555555555','555555555555555555','','李四','13444444444','444444444444444444','','电脑配件',1,0.1,1,499,1,5,2,'','','李四','13444444444',7,'',NULL,2,15,NULL,3,16,1),(15,'2021-06-07 03:28:35.542000','2021-07-06 01:57:04.226000',NULL,'王五','13555555555','555555555555555555','','马保国','13999999999','999999999999999999','','闪电鞭',2,0.1,10,0,0,10,0,'','','','',8,'',NULL,7,15,NULL,3,16,0),(16,'2021-06-10 02:35:29.037000','2021-07-06 01:57:04.226000','2021-07-06 01:58:48.674000','张三','13333333333','333333333333333333','','芦苇','13777777777','777777777777777777','','AWM',1,0.1,20,0,0,10,0,'','','芦苇','777777777777777777',7,'',NULL,6,15,NULL,1,16,0),(17,'2021-06-10 02:36:11.996000','2021-07-06 01:57:04.226000','2021-07-06 01:58:48.674000','张三','13333333333','333333333333333333','','芦苇','13777777777','777777777777777777','','M416',1,0.1,10,0,0,10,1,'','','芦苇','777777777777777777',7,'',NULL,6,15,NULL,1,16,0),(18,'2021-06-10 02:36:51.308000','2021-07-06 01:57:04.226000','2021-07-06 01:58:48.674000','王五','13555555555','555555555555555555','','芦苇','13777777777','777777777777777777','','平底锅',1,0.1,3,15,1,5,2,'','','芦苇','777777777777777777',7,'',7,6,15,NULL,3,16,2),(19,'2021-07-02 10:10:02.350000','2021-07-06 01:57:04.226000','2021-07-06 01:58:48.674000','张三','13333333333','333333333333333333','','芦苇','13777777777','777777777777777777','','98k',1,0.1,20,999,2,50,0,'','','芦苇','777777777777777777',7,'',6,6,15,NULL,1,16,2),(20,'2021-07-06 03:45:48.544000','2021-08-31 07:30:31.879000','2021-09-09 03:25:53.131000','刘三盆','19333333333','','','王二桶','19222222222','','','啤酒',10,0.5,100,999,2,25,0,'','','王二桶','19222222222',7,'',NULL,NULL,15,NULL,NULL,16,1),(21,'2021-08-25 02:07:07.704000','2021-08-31 07:30:31.879000',NULL,'王五','13555555555','555555555555555555','','王镜泽','13888888888','888888888888888888','','扬州炒饭',1,0.1,0.5,0,0,5,0,'','','','',6,'',NULL,5,15,NULL,3,16,0),(22,'2021-09-02 03:28:10.866000','2021-09-09 03:23:57.179000','2021-09-09 03:24:56.348000','王镜泽','13888888888','888888888888888888','','马保国','13999999999','999999999999999999','','兰州炒饭',1,0.1,0.5,10,1,5,0,'','','马保国','13999999999',7,'',NULL,7,15,NULL,5,16,1),(23,'2021-09-02 03:35:42.515000','2021-09-09 03:23:57.179000','2021-10-19 07:47:52.819000','王五','13555555555','555555555555555555','','芦苇','13777777777','777777777777777777','','128倍镜',1,0.2,10,4999,10,50,1,'','','芦苇','13777777777',7,'',8,6,15,NULL,3,16,2),(24,'2021-09-02 03:36:44.995000','2021-09-09 03:23:57.179000',NULL,'李四','13444444444','444444444444444444','','岛市老八','15888888888','888888888888888888','','娃哈哈',3,0.3,30,399,1,15,2,'','','','',6,'',NULL,8,15,NULL,2,16,1),(25,'2021-09-07 13:06:51.507000','2021-09-07 13:14:40.679000',NULL,'张三','13333333333','333333333333333333','','王镜泽','13888888888','888888888888888888','','火腿肠炒饭',1,0.1,0.5,0,0,5,0,'','','','',8,'',NULL,5,16,NULL,1,15,0),(26,'2021-09-07 13:08:00.179000',NULL,NULL,'张三','13333333333','333333333333333333','','马保国','13999999999','999999999999999999','','闪电鞭',2,0.2,6,399,1,10,2,'','','','',9,'开错票',NULL,7,16,NULL,1,15,1),(27,'2021-09-07 13:18:56.021000','2021-09-09 03:23:57.179000',NULL,'王镜泽','13888888888','888888888888888888','','张三','13333333333','333333333333333333','','火腿肠炒饭',1,0.1,0.5,0,0,10,0,'','','','',6,'',NULL,1,15,25,5,16,0),(28,'2021-09-07 13:42:38.602000',NULL,NULL,'马保国','13999999999','999999999999999999','','王五','13555555555','555555555555555555','','闪电鞭',2,0.1,10,0,0,20,0,'','','','',1,'',NULL,3,16,15,7,15,0),(29,'2021-09-09 03:22:02.073000','2021-09-09 03:23:57.179000','2021-10-19 07:47:52.819000','王五','13555555555','555555555555555555','','芦苇','13777777777','777777777777777777','','天文望远镜',1,0.5,50,9999,20,15,2,'','','芦苇','13777777777',7,'',8,6,15,NULL,3,16,2),(30,'2021-10-08 08:10:35.587000','2021-10-19 07:40:47.455000','2021-10-19 07:45:54.360000','张三','13333333333','333333333333333333','','李四','13444444444','444444444444444444','','789',22,23,265,1523,4,3047,1,'','','李四','13444444444',7,'',NULL,2,15,NULL,1,16,1),(31,'2021-10-19 07:00:13.173000','2021-10-19 07:40:47.455000','2021-10-19 07:45:54.360000','岛市老八','15888888888','888888888888888888','','李四','13444444444','444444444444444444','','奥力给',3,1,10,0,0,5,0,'','','李四','13444444444',7,'',NULL,2,15,NULL,8,16,0),(32,'2021-10-19 07:01:07.794000','2021-10-19 07:40:47.455000','2021-11-08 03:01:24.161000','岛市老八','15888888888','888888888888888888','','王五','13555555555','555555555555555555','','秘制小汉堡',5,0.5,2.5,25,1,2,1,'','','王五','13555555555',7,'',NULL,3,15,NULL,8,16,1),(33,'2021-10-29 03:40:28.724000','2021-11-08 02:26:09.522000',NULL,'王二桶','18222222222','','','张一缸','18111111111','','','啤酒',20,2,500,499,0,11,0,'','','','',6,'',NULL,NULL,15,NULL,NULL,16,1),(34,'2021-10-29 05:10:44.353000','2021-11-08 02:26:09.522000',NULL,'1','2','','','3','4','','','5',6,7,8,0,0,11,0,'','','','',8,'',NULL,NULL,15,NULL,NULL,16,0),(35,'2021-10-29 05:25:35.318000',NULL,NULL,'2','3','','','4','5','','','6',7,8,9,10,1,11,0,'','','','',9,'测试',NULL,NULL,15,NULL,NULL,16,1),(36,'2021-11-08 03:11:44.206000',NULL,NULL,'3','4','','','1','2','','','5',6,7,8,0,0,22,0,'','','','',0,'',NULL,NULL,16,34,NULL,15,0),(37,'2023-04-08 08:53:41.063859',NULL,NULL,'岛市老八','15888888888','888888888888888888','','王五','13555555555','555555555555555555','','test',1,1,11,111,1,25,1,'','','','',0,'',NULL,3,15,NULL,8,16,1);
/*!40000 ALTER TABLE `wuliu_waybill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wuliu_waybillrouting`
--

DROP TABLE IF EXISTS `wuliu_waybillrouting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wuliu_waybillrouting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time` datetime(6) NOT NULL,
  `operation_type` smallint NOT NULL,
  `operation_dept_id` int NOT NULL,
  `operation_user_id` int NOT NULL,
  `waybill_id` int NOT NULL,
  `operation_info` json NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wuliu_waybillrouting_operation_dept_id_9fcdb115_fk_wuliu_dep` (`operation_dept_id`),
  KEY `wuliu_waybillrouting_operation_user_id_02ffd707_fk_wuliu_user_id` (`operation_user_id`),
  KEY `wuliu_waybillrouting_waybill_id_583f9a53_fk_wuliu_waybill_id` (`waybill_id`),
  CONSTRAINT `wuliu_waybillrouting_operation_dept_id_9fcdb115_fk_wuliu_dep` FOREIGN KEY (`operation_dept_id`) REFERENCES `wuliu_department` (`id`),
  CONSTRAINT `wuliu_waybillrouting_operation_user_id_02ffd707_fk_wuliu_user_id` FOREIGN KEY (`operation_user_id`) REFERENCES `wuliu_user` (`id`),
  CONSTRAINT `wuliu_waybillrouting_waybill_id_583f9a53_fk_wuliu_waybill_id` FOREIGN KEY (`waybill_id`) REFERENCES `wuliu_waybill` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wuliu_waybillrouting`
--

LOCK TABLES `wuliu_waybillrouting` WRITE;
/*!40000 ALTER TABLE `wuliu_waybillrouting` DISABLE KEYS */;
INSERT INTO `wuliu_waybillrouting` VALUES (1,'2021-05-29 01:09:50.037000',0,16,2,1,'{}'),(2,'2021-05-29 01:10:23.356000',0,16,2,2,'{}'),(3,'2021-05-29 01:10:53.490000',0,16,2,3,'{}'),(4,'2021-05-29 01:12:30.298000',0,16,2,4,'{}'),(5,'2021-05-29 01:13:21.449000',0,16,2,5,'{}'),(6,'2021-05-30 12:46:41.544000',2,16,2,1,'{\"transport_out_id\": 1}'),(7,'2021-05-30 12:46:41.544000',2,16,2,2,'{\"transport_out_id\": 1}'),(8,'2021-05-30 12:47:30.848000',3,13,5,1,'{}'),(9,'2021-05-30 12:47:30.848000',3,13,5,2,'{}'),(10,'2021-05-30 12:48:17.327000',5,13,5,1,'{\"transport_out_id\": 2}'),(11,'2021-05-30 12:48:17.327000',5,13,5,2,'{\"transport_out_id\": 2}'),(12,'2021-05-30 12:48:37.007000',6,15,1,1,'{}'),(13,'2021-05-30 12:48:37.007000',6,15,1,2,'{}'),(14,'2021-05-30 12:52:04.559000',2,16,2,3,'{\"transport_out_id\": 4}'),(15,'2021-05-30 12:52:04.559000',2,16,2,4,'{\"transport_out_id\": 4}'),(16,'2021-05-30 12:52:04.559000',2,16,2,5,'{\"transport_out_id\": 4}'),(17,'2021-05-30 14:52:12.984000',0,16,2,6,'{}'),(18,'2021-05-31 09:00:18.350000',7,15,1,1,'{}'),(19,'2021-06-01 09:04:26.310000',0,16,2,7,'{}'),(20,'2021-06-01 09:04:43.535000',2,16,2,6,'{\"transport_out_id\": 5}'),(21,'2021-06-01 09:04:43.535000',2,16,2,7,'{\"transport_out_id\": 5}'),(22,'2021-06-02 03:08:35.297000',3,13,5,3,'{}'),(23,'2021-06-02 03:08:35.297000',3,13,5,4,'{}'),(24,'2021-06-02 03:08:35.297000',3,13,5,5,'{}'),(25,'2021-06-02 03:23:27.304000',5,13,5,3,'{\"transport_out_id\": 6}'),(26,'2021-06-02 03:23:27.304000',5,13,5,4,'{\"transport_out_id\": 6}'),(27,'2021-06-02 03:23:27.304000',5,13,5,5,'{\"transport_out_id\": 6}'),(28,'2021-06-02 03:26:29.530000',6,15,1,3,'{}'),(29,'2021-06-02 03:26:29.530000',6,15,1,4,'{}'),(30,'2021-06-02 03:26:29.530000',6,15,1,5,'{}'),(31,'2021-06-04 03:22:22.989000',7,15,1,2,'{}'),(32,'2021-06-04 03:25:57.022000',0,15,1,8,'{\"return_reason\": \"不香\"}'),(33,'2021-06-04 03:25:57.022000',8,15,1,3,'{\"return_reason\": \"不香\", \"return_waybill_id\": 8}'),(34,'2021-06-04 03:27:55.523000',7,15,1,5,'{}'),(35,'2021-06-04 03:31:19.877000',0,15,1,9,'{}'),(36,'2021-06-04 03:34:11.995000',0,15,1,10,'{}'),(37,'2021-06-04 03:34:44.275000',2,15,1,8,'{\"transport_out_id\": 7}'),(38,'2021-06-04 03:34:44.275000',2,15,1,9,'{\"transport_out_id\": 7}'),(39,'2021-06-04 03:34:44.275000',2,15,1,10,'{\"transport_out_id\": 7}'),(40,'2021-06-04 03:35:01.661000',3,13,6,8,'{}'),(41,'2021-06-04 03:35:01.661000',3,13,6,9,'{}'),(42,'2021-06-04 03:35:01.661000',3,13,6,10,'{}'),(43,'2021-06-05 08:16:39.139000',0,16,2,11,'{}'),(44,'2021-06-05 08:17:09.737000',0,16,2,12,'{}'),(45,'2021-06-05 08:18:10.697000',0,16,2,13,'{}'),(46,'2021-06-05 08:18:41.417000',2,16,2,11,'{\"transport_out_id\": 8}'),(47,'2021-06-05 08:18:41.417000',2,16,2,12,'{\"transport_out_id\": 8}'),(48,'2021-06-05 08:18:41.417000',2,16,2,13,'{\"transport_out_id\": 8}'),(49,'2021-06-05 09:40:37.890000',0,16,2,14,'{}'),(50,'2021-06-05 09:42:30.145000',3,13,5,6,'{}'),(51,'2021-06-05 09:42:30.145000',3,13,5,7,'{}'),(52,'2021-06-05 09:42:40.425000',3,13,5,11,'{}'),(53,'2021-06-05 09:42:40.425000',3,13,5,12,'{}'),(54,'2021-06-05 09:42:40.425000',3,13,5,13,'{}'),(55,'2021-06-05 09:43:18.313000',5,13,5,6,'{\"transport_out_id\": 9}'),(56,'2021-06-05 09:43:18.313000',5,13,5,7,'{\"transport_out_id\": 9}'),(57,'2021-06-05 09:43:18.313000',5,13,5,11,'{\"transport_out_id\": 9}'),(58,'2021-06-05 09:43:18.313000',5,13,5,12,'{\"transport_out_id\": 9}'),(59,'2021-06-05 09:43:18.313000',5,13,5,13,'{\"transport_out_id\": 9}'),(60,'2021-06-07 03:28:35.542000',0,16,2,15,'{}'),(61,'2021-06-07 03:29:26.520000',2,16,2,14,'{\"transport_out_id\": 10}'),(62,'2021-06-07 03:29:26.520000',2,16,2,15,'{\"transport_out_id\": 10}'),(63,'2021-06-07 03:30:51.384000',6,15,1,6,'{}'),(64,'2021-06-07 03:30:51.384000',6,15,1,7,'{}'),(65,'2021-06-07 03:30:51.384000',6,15,1,11,'{}'),(66,'2021-06-07 03:30:51.384000',6,15,1,12,'{}'),(67,'2021-06-07 03:30:51.384000',6,15,1,13,'{}'),(68,'2021-06-10 02:35:29.037000',0,16,2,16,'{}'),(69,'2021-06-10 02:36:11.996000',0,16,2,17,'{}'),(70,'2021-06-10 02:36:51.308000',0,16,2,18,'{}'),(71,'2021-06-10 02:40:21.481000',2,16,2,16,'{\"transport_out_id\": 11}'),(72,'2021-06-10 02:40:21.481000',2,16,2,17,'{\"transport_out_id\": 11}'),(73,'2021-06-10 02:40:21.481000',2,16,2,18,'{\"transport_out_id\": 11}'),(74,'2021-07-02 10:10:02.350000',0,16,2,19,'{}'),(75,'2021-07-03 10:41:29.226000',2,16,2,19,'{\"transport_out_id\": 13}'),(76,'2021-07-06 01:55:03.946000',5,13,5,8,'{\"transport_out_id\": 12}'),(77,'2021-07-06 01:55:03.946000',5,13,5,9,'{\"transport_out_id\": 12}'),(78,'2021-07-06 01:55:03.946000',5,13,5,10,'{\"transport_out_id\": 12}'),(79,'2021-07-06 01:55:18.377000',3,13,5,14,'{}'),(80,'2021-07-06 01:55:18.377000',3,13,5,15,'{}'),(81,'2021-07-06 01:55:40.945000',3,13,5,16,'{}'),(82,'2021-07-06 01:55:40.945000',3,13,5,17,'{}'),(83,'2021-07-06 01:55:40.945000',3,13,5,18,'{}'),(84,'2021-07-06 01:55:48.824000',3,13,5,19,'{}'),(85,'2021-07-06 01:56:15.834000',5,13,5,14,'{\"transport_out_id\": 14}'),(86,'2021-07-06 01:56:15.834000',5,13,5,15,'{\"transport_out_id\": 14}'),(87,'2021-07-06 01:56:15.834000',5,13,5,16,'{\"transport_out_id\": 14}'),(88,'2021-07-06 01:56:15.834000',5,13,5,17,'{\"transport_out_id\": 14}'),(89,'2021-07-06 01:56:15.834000',5,13,5,18,'{\"transport_out_id\": 14}'),(90,'2021-07-06 01:56:15.834000',5,13,5,19,'{\"transport_out_id\": 14}'),(91,'2021-07-06 01:57:04.226000',6,15,1,14,'{}'),(92,'2021-07-06 01:57:04.226000',6,15,1,15,'{}'),(93,'2021-07-06 01:57:04.226000',6,15,1,16,'{}'),(94,'2021-07-06 01:57:04.226000',6,15,1,17,'{}'),(95,'2021-07-06 01:57:04.226000',6,15,1,18,'{}'),(96,'2021-07-06 01:57:04.226000',6,15,1,19,'{}'),(97,'2021-07-06 01:58:48.674000',7,15,1,4,'{}'),(98,'2021-07-06 01:58:48.674000',7,15,1,6,'{}'),(99,'2021-07-06 01:58:48.674000',7,15,1,13,'{}'),(100,'2021-07-06 01:58:48.674000',7,15,1,16,'{}'),(101,'2021-07-06 01:58:48.674000',7,15,1,17,'{}'),(102,'2021-07-06 01:58:48.674000',7,15,1,18,'{}'),(103,'2021-07-06 01:58:48.674000',7,15,1,19,'{}'),(104,'2021-07-06 03:45:48.544000',0,16,2,20,'{}'),(105,'2021-07-06 08:08:31.093000',6,16,2,8,'{}'),(106,'2021-07-06 08:08:31.093000',6,16,2,9,'{}'),(107,'2021-07-06 08:08:31.093000',6,16,2,10,'{}'),(108,'2021-08-12 08:03:56.499000',7,15,1,11,'{}'),(109,'2021-08-12 08:03:56.499000',7,15,1,12,'{}'),(110,'2021-08-25 02:07:07.704000',0,16,2,21,'{}'),(111,'2021-08-25 02:07:41.043000',2,16,2,20,'{\"transport_out_id\": 15}'),(112,'2021-08-25 02:07:41.043000',2,16,2,21,'{\"transport_out_id\": 15}'),(113,'2021-08-25 02:10:04.857000',7,16,2,8,'{}'),(114,'2021-08-25 02:32:15.438000',7,16,2,9,'{}'),(115,'2021-08-25 02:32:15.438000',7,16,2,10,'{}'),(116,'2021-08-25 02:38:21.316000',3,13,5,20,'{}'),(117,'2021-08-25 02:38:21.316000',3,13,5,21,'{}'),(118,'2021-08-25 02:38:58.820000',5,13,5,20,'{\"transport_out_id\": 16}'),(119,'2021-08-25 02:38:58.820000',5,13,5,21,'{\"transport_out_id\": 16}'),(120,'2021-08-31 07:30:31.879000',6,15,1,20,'{}'),(121,'2021-08-31 07:30:31.879000',6,15,1,21,'{}'),(122,'2021-09-02 03:28:10.866000',0,16,2,22,'{}'),(123,'2021-09-02 03:35:42.515000',0,16,2,23,'{}'),(124,'2021-09-02 03:36:44.995000',0,16,2,24,'{}'),(125,'2021-09-02 03:37:05.124000',2,16,2,22,'{\"transport_out_id\": 17}'),(126,'2021-09-02 03:37:05.124000',2,16,2,23,'{\"transport_out_id\": 17}'),(127,'2021-09-02 03:37:05.124000',2,16,2,24,'{\"transport_out_id\": 17}'),(128,'2021-09-07 13:06:51.507000',0,15,1,25,'{}'),(129,'2021-09-07 13:08:00.179000',0,15,1,26,'{}'),(130,'2021-09-07 13:08:58.324000',9,15,1,26,'{}'),(131,'2021-09-07 13:10:13.545000',2,15,1,25,'{\"transport_out_id\": 18}'),(132,'2021-09-07 13:12:10.064000',3,13,6,22,'{}'),(133,'2021-09-07 13:12:10.064000',3,13,6,23,'{}'),(134,'2021-09-07 13:12:10.064000',3,13,6,24,'{}'),(135,'2021-09-07 13:12:16.807000',3,13,6,25,'{}'),(136,'2021-09-07 13:12:51.671000',5,13,6,25,'{\"transport_out_id\": 19}'),(137,'2021-09-07 13:14:40.679000',6,16,2,25,'{}'),(138,'2021-09-07 13:18:56.017000',0,16,2,27,'{\"return_reason\": \"不香！\"}'),(139,'2021-09-07 13:18:56.017000',8,16,2,25,'{\"return_reason\": \"不香！\", \"return_waybill_id\": 27}'),(140,'2021-09-07 13:42:38.597000',0,15,1,28,'{\"return_reason\": \"偷袭！\"}'),(141,'2021-09-07 13:42:38.597000',8,15,1,15,'{\"return_reason\": \"偷袭！\", \"return_waybill_id\": 28}'),(142,'2021-09-09 03:22:02.073000',0,16,2,29,'{}'),(143,'2021-09-09 03:22:34.284000',2,16,2,27,'{\"transport_out_id\": 20}'),(144,'2021-09-09 03:22:34.284000',2,16,2,29,'{\"transport_out_id\": 20}'),(145,'2021-09-09 03:23:11.908000',3,13,5,27,'{}'),(146,'2021-09-09 03:23:11.908000',3,13,5,29,'{}'),(147,'2021-09-09 03:23:37.684000',5,13,5,22,'{\"transport_out_id\": 21}'),(148,'2021-09-09 03:23:37.684000',5,13,5,23,'{\"transport_out_id\": 21}'),(149,'2021-09-09 03:23:37.684000',5,13,5,24,'{\"transport_out_id\": 21}'),(150,'2021-09-09 03:23:37.684000',5,13,5,27,'{\"transport_out_id\": 21}'),(151,'2021-09-09 03:23:37.684000',5,13,5,29,'{\"transport_out_id\": 21}'),(152,'2021-09-09 03:23:57.179000',6,15,1,22,'{}'),(153,'2021-09-09 03:23:57.179000',6,15,1,23,'{}'),(154,'2021-09-09 03:23:57.179000',6,15,1,24,'{}'),(155,'2021-09-09 03:23:57.179000',6,15,1,27,'{}'),(156,'2021-09-09 03:23:57.179000',6,15,1,29,'{}'),(157,'2021-09-09 03:24:56.348000',7,15,1,7,'{}'),(158,'2021-09-09 03:24:56.348000',7,15,1,22,'{}'),(159,'2021-09-09 03:25:53.131000',7,15,1,20,'{}'),(160,'2021-10-08 08:10:35.587000',0,16,2,30,'{}'),(161,'2021-10-08 08:12:47.661000',2,16,2,30,'{\"transport_out_id\": 22}'),(162,'2021-10-19 07:00:13.173000',0,16,2,31,'{}'),(163,'2021-10-19 07:01:07.794000',0,16,2,32,'{}'),(164,'2021-10-19 07:34:43.951000',2,16,2,31,'{\"transport_out_id\": 23}'),(165,'2021-10-19 07:34:43.951000',2,16,2,32,'{\"transport_out_id\": 23}'),(166,'2021-10-19 07:35:22.644000',3,13,5,31,'{}'),(167,'2021-10-19 07:35:22.644000',3,13,5,32,'{}'),(168,'2021-10-19 07:35:35.066000',3,13,5,30,'{}'),(169,'2021-10-19 07:35:59.201000',5,13,5,30,'{\"transport_out_id\": 24}'),(170,'2021-10-19 07:35:59.201000',5,13,5,31,'{\"transport_out_id\": 24}'),(171,'2021-10-19 07:35:59.201000',5,13,5,32,'{\"transport_out_id\": 24}'),(172,'2021-10-19 07:40:47.455000',6,15,1,30,'{}'),(173,'2021-10-19 07:40:47.455000',6,15,1,31,'{}'),(174,'2021-10-19 07:40:47.455000',6,15,1,32,'{}'),(175,'2021-10-19 07:45:54.360000',7,15,1,14,'{}'),(176,'2021-10-19 07:45:54.360000',7,15,1,30,'{}'),(177,'2021-10-19 07:45:54.360000',7,15,1,31,'{}'),(178,'2021-10-19 07:47:52.819000',7,15,1,23,'{}'),(179,'2021-10-19 07:47:52.819000',7,15,1,29,'{}'),(180,'2021-10-29 03:40:28.724000',0,16,2,33,'{}'),(181,'2021-10-29 05:10:44.353000',0,16,2,34,'{}'),(182,'2021-10-29 05:25:35.318000',0,16,2,35,'{}'),(183,'2021-10-31 12:06:04.366000',9,16,2,35,'{}'),(184,'2021-11-02 08:16:18.938000',2,16,2,33,'{\"transport_out_id\": 28}'),(185,'2021-11-02 08:16:18.938000',2,16,2,34,'{\"transport_out_id\": 28}'),(198,'2021-11-02 08:21:40.688000',3,10,3,33,'{}'),(199,'2021-11-02 08:21:40.688000',3,10,3,34,'{}'),(200,'2021-11-08 02:24:00.570000',5,13,5,33,'{\"transport_out_id\": 29}'),(201,'2021-11-08 02:24:00.570000',5,13,5,34,'{\"transport_out_id\": 29}'),(202,'2021-11-08 02:26:09.522000',6,15,1,33,'{}'),(203,'2021-11-08 02:26:09.522000',6,15,1,34,'{}'),(204,'2021-11-08 03:01:24.161000',7,15,1,32,'{}'),(205,'2021-11-08 03:11:44.202000',0,15,1,36,'{\"return_reason\": \"测试\"}'),(206,'2021-11-08 03:11:44.202000',8,15,1,34,'{\"return_reason\": \"测试\", \"return_waybill_id\": 36}'),(207,'2023-04-08 08:53:41.063859',0,16,2,37,'{}');
/*!40000 ALTER TABLE `wuliu_waybillrouting` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-08 17:03:28
