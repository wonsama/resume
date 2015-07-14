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
-- Table structure for table `insa_proj_ins`
--

DROP TABLE IF EXISTS `insa_proj_ins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insa_proj_ins` (
  `proj_no` int(11) NOT NULL COMMENT '프로젝트 일련번호',
  `prs_no` varchar(45) NOT NULL COMMENT '인력 일련번호 ',
  `pins_st_dt` char(8) DEFAULT NULL COMMENT '투입 시작일',
  `pins_ed_dt` char(8) DEFAULT NULL COMMENT '투입 종료일',
  `pins_yn` char(1) DEFAULT NULL COMMENT '프로젝트 투입 여부',
  `pins_mem` text COMMENT '메모',
  `reg_emp_id` varchar(32) NOT NULL COMMENT '최초 등록자 아이디',
  `reg_dtm` char(14) NOT NULL COMMENT '최초 등록일',
  `upd_emp_id` varchar(32) NOT NULL COMMENT '최종 수정자 아이디',
  `upd_dtm` char(14) NOT NULL COMMENT '최종 수정일',
  `use_yn` char(1) NOT NULL DEFAULT 'Y' COMMENT '사용 여부',
  PRIMARY KEY (`proj_no`,`prs_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='프로젝트 인력 투입정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insa_proj_ins`
--

LOCK TABLES `insa_proj_ins` WRITE;
/*!40000 ALTER TABLE `insa_proj_ins` DISABLE KEYS */;
/*!40000 ALTER TABLE `insa_proj_ins` ENABLE KEYS */;
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
