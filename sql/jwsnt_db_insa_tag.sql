CREATE DATABASE  IF NOT EXISTS `jwsnt_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jwsnt_db`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: jwsnt.co.kr    Database: jwsnt_db
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
-- Table structure for table `insa_tag`
--

DROP TABLE IF EXISTS `insa_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insa_tag` (
  `tag_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '일련번호',
  `tag_nm` varchar(256) NOT NULL COMMENT '태그 명',
  `tag_tp` varchar(8) NOT NULL COMMENT '태그 분류',
  `use_yn` char(1) NOT NULL DEFAULT 'Y' COMMENT '사용 여부',
  PRIMARY KEY (`tag_no`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COMMENT='태그 정보를 기록';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insa_tag`
--

LOCK TABLES `insa_tag` WRITE;
/*!40000 ALTER TABLE `insa_tag` DISABLE KEYS */;
INSERT INTO `insa_tag` VALUES (1,'자기감정에 둔감한','T001','Y'),(2,'주장이 강한','T001','Y'),(3,'즐거운','T001','Y'),(4,'배려하는','T001','Y'),(5,'신중한','T001','Y'),(6,'단호한','T001','Y'),(7,'열정적인','T001','Y'),(8,'너그러운','T001','Y'),(9,'객관적인','T001','Y'),(10,'자신감 있는','T001','Y'),(11,'낙천적인','T001','Y'),(12,'인내심 있는','T001','Y'),(13,'분석적인','T001','Y'),(14,'빠르게 결정하는','T001','Y'),(15,'말솜씨가 있는','T001','Y'),(16,'잘 들어주는','T001','Y'),(17,'완벽추구적인','T001','Y'),(18,'대담한','T001','Y'),(19,'유연성 있는 ','T001','Y'),(20,'양보하는','T001','Y'),(21,'계획적인','T001','Y'),(22,'적극적인','T001','Y'),(23,'호감을 주는','T001','Y'),(24,'협조하는','T001','Y'),(25,'자제하는','T001','Y'),(26,'경쟁적인','T001','Y'),(27,'친화력이 좋은','T001','Y'),(28,'일관성이 있는','T001','Y'),(29,'논리적인','T001','Y'),(30,'감정에 둔감한','T001','Y'),(31,'말이 많은','T001','Y'),(32,'변화를 꺼리는','T001','Y'),(33,'위험을 회피하는','T001','Y'),(34,'독선적인','T001','Y'),(35,'충동적인','T001','Y'),(36,'우유부단한','T001','Y'),(37,'냉정한','T001','Y'),(38,'잘 듣지 못하는','T001','Y'),(39,'사후관리가 약한','T001','Y'),(40,'감정에 치우치는','T001','Y'),(41,'비판적인','T001','Y'),(42,'Java','T002','Y'),(43,'C#','T002','Y'),(44,'PHP','T002','Y'),(45,'JavaScript','T002','Y'),(46,'Python','T002','Y'),(47,'C++','T002','Y'),(48,'Ruby','T002','Y'),(49,'Object-C','T002','Y'),(50,'C','T002','Y'),(51,'PL-SQL','T002','Y'),(52,'1C','T002','Y'),(53,'Pascal','T002','Y'),(54,'Delphi','T002','Y'),(55,'Scala','T002','Y'),(56,'ActionScript','T002','Y'),(57,'Perl','T002','Y'),(58,'T-SQL','T002','Y'),(59,'CoffeeScript','T002','Y'),(60,'Swift','T002','Y'),(61,'Erlang','T002','Y'),(62,'Basic','T002','Y'),(63,'Go','T002','Y'),(64,'Oracle','T003','Y'),(65,'MySql','T003','Y'),(66,'MS-SQL','T003','Y'),(67,'PostgreSQL','T003','Y'),(68,'DB2','T003','Y'),(69,'MongoDB','T003','Y'),(70,'MS-Access','T003','Y'),(71,'Sybase','T003','Y'),(72,'SQLite','T003','Y'),(73,'Teradata','T003','Y'),(74,'보험','T004','Y'),(75,'이미지','T004','Y'),(76,'영업관리','T004','Y'),(77,'SFA','T004','Y');
/*!40000 ALTER TABLE `insa_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-14 16:25:04
