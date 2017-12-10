-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: activity
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.17.10.1

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



DROP TABLE IF EXISTS `evaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluate` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_userid` int(11) DEFAULT NULL,
  `e_motif` varchar(100) DEFAULT NULL,
  `e_theme` varchar(255) DEFAULT NULL,
  `e_date` varchar(255) DEFAULT NULL,
  `e_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluate`
--

LOCK TABLES `evaluate` WRITE;
/*!40000 ALTER TABLE `evaluate` DISABLE KEYS */;
INSERT INTO `evaluate` VALUES (1,1,NULL,'154561351',NULL,NULL),(2,2,NULL,'asdfas',NULL,NULL),(3,1,NULL,'a1dfvaasd','2017-12-8 11:43:52',NULL),(4,2,NULL,'sdf','2017-12-8 12:27:49',NULL),(5,2,NULL,'dsfgsd','2017-12-8 12:31:59',NULL),(29,1,'sdaf','sdaf','2017-12-8 19:1:21',NULL),(30,1,'111111','sdaf','2017-12-8 19:2:45',NULL),(31,1,'111','1111','2017-12-8 19:4:27',NULL),(32,1,'111','1111dsdsdf','2017-12-8 19:5:47',NULL),(33,1,'dfg','dfgs','2017-12-8 19:22:42',NULL),(34,1,'asdf','asdf','2017-12-8 19:25:0',NULL),(35,1,'1111','111212121','2017-12-8 19:29:5',NULL),(36,1,'weqwqw','qqwqw','2017-12-8 19:32:34',NULL),(37,1,'weqwqw','qqwqw','2017-12-8 19:32:40',NULL),(38,1,'weqwqw','qqwqw','2017-12-8 19:32:40',NULL),(39,1,'weqwqw','qqwqw','2017-12-8 19:32:40',NULL),(40,1,'weqwqw','qqwqw','2017-12-8 19:32:41',NULL),(41,1,'weqwqw','qqwqw','2017-12-8 19:32:41',NULL),(42,1,'weqwqw','qqwqw','2017-12-8 19:32:41',NULL),(43,1,'weqwqw','qqwqw','2017-12-8 19:32:41',NULL),(44,1,'dasdsa','dsadas','2017-12-8 19:33:12',NULL),(45,1,'wqwq','qawq','2017-12-8 19:34:52',NULL),(46,1,'drrgwedr','ggergewrgwe','2017-12-8 19:36:37',NULL),(47,1,'fgdtfh','rtftjrjed','2017-12-8 19:37:22',NULL);
/*!40000 ALTER TABLE `evaluate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_userid` varchar(18) NOT NULL,
  `u_username` varchar(20) NOT NULL,
  `u_password` varchar(20) NOT NULL,
  `u_sex` varchar(2) NOT NULL,
  `u_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','超级管理员','admin','男',NULL),(2,'a','a','a','q','q');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-10 12:38:54
