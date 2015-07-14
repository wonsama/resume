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
-- Table structure for table `insa_cd`
--

DROP TABLE IF EXISTS `insa_cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insa_cd` (
  `grp_id` varchar(8) NOT NULL COMMENT '그룹 아이디',
  `cd_id` varchar(8) NOT NULL COMMENT '코드 아이디 ',
  `cd_nm` varchar(256) NOT NULL COMMENT '코드 명',
  `cd_ord` int(11) DEFAULT '1' COMMENT '정렬 순서',
  `use_yn` char(1) NOT NULL DEFAULT 'Y' COMMENT '사용 여부',
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='공통코드';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insa_cd`
--

LOCK TABLES `insa_cd` WRITE;
/*!40000 ALTER TABLE `insa_cd` DISABLE KEYS */;
INSERT INTO `insa_cd` VALUES ('G000','G0000001','테스터',1,'Y'),('G000','G0000002','우왕',2,'Y'),('G000','G0000003','좌왕',3,'Y'),('G000','G0000004','3321',4,'Y'),('G000','G0000005','32132132131',5,'Y'),('G001','G0010001','초급',1,'Y'),('G001','G0010002','중급',2,'Y'),('G001','G0010003','고급',3,'Y'),('G001','G0010004','특급',4,'Y'),('G002','G0020001','사원',1,'Y'),('G002','G0020002','대리',2,'Y'),('G002','G0020003','과장',3,'Y'),('G002','G0020004','차장',4,'Y'),('G002','G0020005','부장',5,'Y'),('G002','G0020006','이사',6,'Y'),('G002','G0020007','전무',7,'Y'),('G002','G0020008','사장',8,'Y'),('G002','G0020009','대우',9,'Y'),('G002','G0020010','주임',10,'Y'),('G002','G0020011','전임',11,'Y'),('G002','G0020012','선임',12,'Y'),('G002','G0020013','책임',13,'Y'),('G002','G0020014','수석',14,'Y'),('G002','G0020015','팀장',15,'Y'),('G002','G0020016','매니저',16,'Y'),('G002','G0029999','기타',9999,'Y'),('G003','G0030001','주도형',1,'Y'),('G003','G0030002','사교형',2,'Y'),('G003','G0030003','신중형',3,'Y'),('G003','G0030004','안정형',4,'Y'),('G004','G0040001','전화',1,'Y'),('G004','G0040002','미팅',2,'Y'),('G004','G0040003','문자(카톡)',3,'Y'),('G006','G0060001','프리랜서',1,'Y'),('G006','G0060002','정직원',2,'Y'),('G006','G0060003','휴직',3,'Y');
/*!40000 ALTER TABLE `insa_cd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-14 16:25:05
