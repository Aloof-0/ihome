-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: ihome
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.16.04.1-log

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
-- Table structure for table `tb_area`
--

DROP TABLE IF EXISTS `tb_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_area`
--

LOCK TABLES `tb_area` WRITE;
/*!40000 ALTER TABLE `tb_area` DISABLE KEYS */;
INSERT INTO `tb_area` VALUES (1,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','东城区'),(2,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','西城区'),(3,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','朝阳区'),(4,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','海淀区'),(5,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','昌平区'),(6,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','丰台区'),(7,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','房山区'),(8,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','通州区'),(9,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','顺义区'),(10,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','大兴区'),(11,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','怀柔区'),(12,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','平谷区'),(13,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','密云区'),(14,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','延庆区'),(15,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','石景山区');
/*!40000 ALTER TABLE `tb_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_facility`
--

DROP TABLE IF EXISTS `tb_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_facility`
--

LOCK TABLES `tb_facility` WRITE;
/*!40000 ALTER TABLE `tb_facility` DISABLE KEYS */;
INSERT INTO `tb_facility` VALUES (1,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','无线网络'),(2,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','热水淋浴'),(3,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','空调'),(4,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','暖气'),(5,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','允许吸烟'),(6,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','饮水设备'),(7,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','牙具'),(8,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','香皂'),(9,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','拖鞋'),(10,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','手纸'),(11,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','毛巾'),(12,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','沐浴露、洗发露'),(13,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','冰箱'),(14,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','洗衣机'),(15,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','电梯'),(16,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','允许做饭'),(17,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','允许带宠物'),(18,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','允许聚会'),(19,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','门禁系统'),(20,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','停车位'),(21,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','有线网络'),(22,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','电视'),(23,'2019-10-10 00:00:00.000000','2019-10-10 00:00:00.000000','浴缸');
/*!40000 ALTER TABLE `tb_facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_house`
--

DROP TABLE IF EXISTS `tb_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `title` varchar(64) NOT NULL,
  `price` int(11) NOT NULL,
  `address` varchar(512) NOT NULL,
  `room_count` int(11) NOT NULL,
  `acreage` int(11) NOT NULL,
  `unit` varchar(32) NOT NULL,
  `capacity` int(11) NOT NULL,
  `beds` varchar(64) NOT NULL,
  `deposit` int(11) NOT NULL,
  `min_days` int(11) NOT NULL,
  `max_days` int(11) NOT NULL,
  `order_count` int(11) NOT NULL,
  `index_image_url` varchar(256) NOT NULL,
  `area_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_house_area_id_e5c62cec_fk_tb_area_id` (`area_id`),
  KEY `tb_house_user_id_e2eae8d9_fk_tb_user_id` (`user_id`),
  CONSTRAINT `tb_house_area_id_e5c62cec_fk_tb_area_id` FOREIGN KEY (`area_id`) REFERENCES `tb_area` (`id`),
  CONSTRAINT `tb_house_user_id_e2eae8d9_fk_tb_user_id` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_house`
--

LOCK TABLES `tb_house` WRITE;
/*!40000 ALTER TABLE `tb_house` DISABLE KEYS */;
INSERT INTO `tb_house` VALUES (5,'2019-10-18 11:57:23.240820','2019-10-18 15:53:15.149375','圣湖观澜国际',100000,'晋源区南中环桥西圣湖观澜国际',3,100,'三室两厅两卫',100,'双人床',100000,10,0,1,'FsxYqPJ-fJtVZZH2LEshL7o9Ivxn',1,1),(6,'2019-10-18 12:59:40.479205','2019-10-18 12:59:57.290029','皇家一号',90000,'啦啦啦啦',2,100,'额额额',3,'发发撒发放',10000,3,0,0,'FsHyv4WUHKUCpuIRftvwSO_FJWOG',7,1),(7,'2019-10-18 13:01:09.577407','2019-10-18 13:01:14.228268','金城国际',70000,'按时发顺丰',3,1212,'313131',11,'111',1100,11,1111,0,'FoZg1QLpRi4vckq_W3tBBQe1wJxn',1,1);
/*!40000 ALTER TABLE `tb_house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_house_facility`
--

DROP TABLE IF EXISTS `tb_house_facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_house_facility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tb_house_facility_house_id_facility_id_57acd170_uniq` (`house_id`,`facility_id`),
  KEY `tb_house_facility_facility_id_7fb39e4b_fk_tb_facility_id` (`facility_id`),
  CONSTRAINT `tb_house_facility_facility_id_7fb39e4b_fk_tb_facility_id` FOREIGN KEY (`facility_id`) REFERENCES `tb_facility` (`id`),
  CONSTRAINT `tb_house_facility_house_id_4c34f715_fk_tb_house_id` FOREIGN KEY (`house_id`) REFERENCES `tb_house` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_house_facility`
--

LOCK TABLES `tb_house_facility` WRITE;
/*!40000 ALTER TABLE `tb_house_facility` DISABLE KEYS */;
INSERT INTO `tb_house_facility` VALUES (13,5,1),(14,5,2),(15,5,4),(16,6,1),(17,6,3),(18,6,21),(19,7,3),(20,7,5);
/*!40000 ALTER TABLE `tb_house_facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_house_image`
--

DROP TABLE IF EXISTS `tb_house_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_house_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `url` varchar(256) NOT NULL,
  `house_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_house_image_house_id_8043e672_fk_tb_house_id` (`house_id`),
  CONSTRAINT `tb_house_image_house_id_8043e672_fk_tb_house_id` FOREIGN KEY (`house_id`) REFERENCES `tb_house` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_house_image`
--

LOCK TABLES `tb_house_image` WRITE;
/*!40000 ALTER TABLE `tb_house_image` DISABLE KEYS */;
INSERT INTO `tb_house_image` VALUES (2,'2019-10-18 11:57:48.739223','2019-10-18 11:57:48.739266','FsxYqPJ-fJtVZZH2LEshL7o9Ivxn',5),(3,'2019-10-18 12:59:57.292051','2019-10-18 12:59:57.292093','FsHyv4WUHKUCpuIRftvwSO_FJWOG',6),(4,'2019-10-18 13:01:14.230171','2019-10-18 13:01:14.230216','FoZg1QLpRi4vckq_W3tBBQe1wJxn',7);
/*!40000 ALTER TABLE `tb_house_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_order`
--

DROP TABLE IF EXISTS `tb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(6) NOT NULL,
  `update_time` datetime(6) NOT NULL,
  `begin_date` date NOT NULL,
  `end_date` date NOT NULL,
  `days` int(11) NOT NULL,
  `house_price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `comment` longtext,
  `house_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_order_house_id_834e98e0_fk_tb_house_id` (`house_id`),
  KEY `tb_order_user_id_f82184d0_fk_tb_user_id` (`user_id`),
  KEY `tb_order_status_29325d74` (`status`),
  CONSTRAINT `tb_order_house_id_834e98e0_fk_tb_house_id` FOREIGN KEY (`house_id`) REFERENCES `tb_house` (`id`),
  CONSTRAINT `tb_order_user_id_f82184d0_fk_tb_user_id` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order`
--

LOCK TABLES `tb_order` WRITE;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
INSERT INTO `tb_order` VALUES (1,'2019-10-18 14:58:02.610546','2019-10-18 15:35:43.505364','2019-10-18','2019-10-26',8,100000,800000,6,'满了',5,3),(2,'2019-10-18 15:04:56.385949','2019-10-18 15:53:17.470011','2019-10-26','2019-10-30',4,100000,400000,4,'bbbbb',5,3);
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `id_card` varchar(20) DEFAULT NULL,
  `real_name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_user`
--

LOCK TABLES `tb_user` WRITE;
/*!40000 ALTER TABLE `tb_user` DISABLE KEYS */;
INSERT INTO `tb_user` VALUES (1,'pbkdf2_sha256$36000$Z2dh7esu0ya3$/RT7eEYzyyKSasnS1AKnCK2tz2nmUBQNpanIKXsaTMs=','2019-10-18 15:33:17.789439',0,'loco','','','',0,1,'2019-10-17 10:08:15.873622','18511551140','FqcUIFWbzItcDAfZ2bPFCXJ7Ti_e','142603198912252222','曹哲'),(2,'pbkdf2_sha256$36000$akzM4y46XjV1$v09Uo4WsRD/E1HpT7kvGA7hqvRIFQxGPicorYM6L2II=','2019-10-17 11:38:35.016839',0,'18511551141','','','',0,1,'2019-10-17 11:38:34.968995','18511551141',NULL,NULL,NULL),(3,'pbkdf2_sha256$36000$6VjLiNV2KMOI$T3ko3KDEmC97UoqTp9EK4zncy3phQo5wgNRGeIA+9qQ=','2019-10-18 15:35:57.947001',0,'13111111111','','','',0,1,'2019-10-18 03:26:49.905151','13111111111','FquXQrIxBckl_QTq95bkvBtQoWBe','142603198912252222','曹哲');
/*!40000 ALTER TABLE `tb_user` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-18  8:13:49
