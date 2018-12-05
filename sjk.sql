-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: schoolenterprise
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Current Database: `schoolenterprise`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `schoolenterprise` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `schoolenterprise`;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'123','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `QQ` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (3,'校企联盟','辽东学院','13470001234','13470001234@163.com',88888,1796833649);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic`
--

DROP TABLE IF EXISTS `dynamic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `content` text,
  `pageview` int(11) DEFAULT NULL,
  `user` varchar(10) DEFAULT NULL,
  `createtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) DEFAULT NULL,
  `fatherID` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamic`
--

LOCK TABLES `dynamic` WRITE;
/*!40000 ALTER TABLE `dynamic` DISABLE KEYS */;
INSERT INTO `dynamic` VALUES (77,'发生的风格','多个地方郭德纲',15,NULL,'2017-12-30 10:45:27',3,3,1),(78,'发DVD地方','地方很听话',1,NULL,'2017-12-30 10:53:51',14,3,1),(79,'风格很好','太阳突然',1,NULL,'2017-12-30 10:53:51',14,3,1),(80,'sdfsdfs ','<p><img title=\"067042.jpg\" alt=\"28.jpg\" src=\"/admin/admin/ueditor/jsp/upload/image/067042.jpg\"/></p>',1,NULL,'2018-01-03 00:02:04',1,0,1),(81,'隐形的翅膀','<p style=\"text-align: center;\"><img title=\"026146.jpg\" alt=\"60.jpg\" src=\"/admin/admin/ueditor/jsp/upload/image/026146.jpg\"/></p><p>每一次都在孤单徘徊中坚强，每一次就算很受伤也不删泪光，我知道我一直有双隐形的翅膀，带我飞飞过绝望，我终于翱翔，用心凝望不害怕</p>',1,NULL,'2018-01-03 00:07:35',1,0,1),(82,'隐形的翅膀','<p style=\"text-align: center;\"><img title=\"026146.jpg\" alt=\"60.jpg\" src=\"/admin/admin/ueditor/jsp/upload/image/026146.jpg\"/></p><p>每一次都在孤单徘徊中坚强，每一次就算很受伤也不删泪光，我知道我一直有双隐形的翅膀，带我飞飞过绝望</p>',1,NULL,'2018-01-03 00:08:54',1,0,1),(83,'隐形的翅膀','<p style=\"text-align: center;\"><img title=\"026146.jpg\" alt=\"60.jpg\" src=\"/admin/admin/ueditor/jsp/upload/image/026146.jpg\"/></p><p>每一次都在孤单徘徊中坚强，每一次就算很受伤也不删泪光，我知道我一直有双隐形的翅膀，带我飞飞过绝</p>',1,NULL,'2018-01-03 00:09:41',1,0,1),(84,'隐形的翅膀','<p style=\"text-align: center;\"><img title=\"026146.jpg\" alt=\"60.jpg\" src=\"/admin/admin/ueditor/jsp/upload/image/026146.jpg\"/></p><p>每一次都在孤单徘徊中坚强，每一次就算很受伤也不删泪光，我知道我一直有双隐形的翅膀，带我飞飞过绝，</p>',1,NULL,'2018-01-03 00:10:39',1,0,1),(85,'隐形的翅膀','<p style=\"text-align: center;\"><img title=\"026146.jpg\" alt=\"60.jpg\" src=\"/admin/admin/ueditor/jsp/upload/image/026146.jpg\"/></p><p>每一次都在孤单徘徊中坚强，每一次就算很受伤也不删泪光，我知道我一直有双隐形的翅膀，带我飞飞过绝</p><p><br/></p><p><br/></p><p><br/></p><p>据了解经济拉进来看见了看见极乐空间拉开距离进来看见了看见</p>',2,NULL,'2018-01-03 00:13:34',1,0,1),(86,'东方闪电','<p>多发生的发生<br/></p>',NULL,NULL,'2018-01-03 00:23:32',1,0,0),(87,'高凤飞飞','<p>电饭锅电饭锅<br/></p>',NULL,NULL,'2018-01-03 00:25:09',1,0,0),(88,'高凤飞飞','<p>电饭锅电饭锅<br/></p>',NULL,NULL,'2018-01-03 00:35:30',1,0,0),(89,'高凤飞飞','<p>电饭锅电饭锅<br/></p>',NULL,NULL,'2018-01-03 00:37:25',1,0,0),(90,'规划','<p>挂号费孤鸿寡鹄<br/></p>',NULL,NULL,'2018-01-03 00:39:30',1,0,0),(91,'看见看了就看了','<p>讲话稿可好看<br/></p>',NULL,NULL,'2018-01-03 00:42:41',1,0,0),(92,'看见看了就看了','<p>讲话稿可好看<br/></p>',NULL,NULL,'2018-01-03 00:43:25',1,0,0),(93,'电饭锅','<p>电饭锅<br/></p>',NULL,NULL,'2018-01-03 00:43:59',1,0,0);
/*!40000 ALTER TABLE `dynamic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intro`
--

DROP TABLE IF EXISTS `intro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `type` int(11) DEFAULT NULL,
  `fatherID` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intro`
--

LOCK TABLES `intro` WRITE;
/*!40000 ALTER TABLE `intro` DISABLE KEYS */;
INSERT INTO `intro` VALUES (1,'<p style=\"text-align: center;\">每次都改 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>',1,0),(2,'<p>修改简介 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>',2,0),(3,'地方撒地方',3,6),(4,'<p>改<br/></p>',3,7),(5,'<p>还该啊<br/></p>',3,8),(6,'<p>化工股份都是<br/></p>',3,9),(7,'<p>撒地方撒地方<br/></p>',3,10),(8,'<p>是的发生<br/></p>',3,16);
/*!40000 ALTER TABLE `intro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (1,'1','1','1',1),(2,'2','2','2',1);
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'d东方闪电',1),(3,'法法师多',1),(5,'暗室逢灯',1),(6,'gjhgjh',2),(7,'sdfsda 大多发生的',2),(8,'第三方士大夫',2),(9,'是的发送到',2),(10,'撒地方撒地方',2),(11,'第三方的',2),(12,'撒地方撒地方',2),(13,'撒地方撒地方',2),(14,'水电费瑟韦尔',2),(15,'还让他核桃仁',2),(16,'如同仁堂',2);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module`
--

LOCK TABLES `module` WRITE;
/*!40000 ALTER TABLE `module` DISABLE KEYS */;
/*!40000 ALTER TABLE `module` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-03  9:33:55
