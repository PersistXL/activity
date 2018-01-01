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

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL AUTO_INCREMENT,
  `a_uid` varchar(20) DEFAULT NULL,
  `a_username` varchar(20) NOT NULL,
  `a_password` varchar(50) NOT NULL,
  `a_sex` varchar(2) DEFAULT NULL,
  `a_rank` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','管理员','admin','男',2);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluate`
--

DROP TABLE IF EXISTS `evaluate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluate` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT,
  `e_userid` int(11) DEFAULT NULL,
  `e_motif` varchar(100) DEFAULT NULL,
  `e_theme` varchar(5000) DEFAULT NULL,
  `e_date` varchar(255) DEFAULT NULL,
  `e_img` varchar(255) DEFAULT NULL,
  `e_username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluate`
--

LOCK TABLES `evaluate` WRITE;
/*!40000 ALTER TABLE `evaluate` DISABLE KEYS */;
INSERT INTO `evaluate` VALUES (1,1,'工作室学习经验分享会','<p>同学们分享这一周以来所有的学习内容以及学习到了哪些知识,</p>','2017-12-10 17:27:20',NULL,'超级管理员'),(2,1,'sdafas','sdfgasdgf','2017-12-10 17:30:55',NULL,'超级管理员'),(3,1,'工作室学习经验分享会','<p><span>同学们分享这一周以来所有的学习内容以及学习到了哪些知识,</span><span>同学们分享这一周以来所有的学习内容以及学习到了哪些知识,</span><span>同学们分享这一周以来所有的学习内容以及学习到了哪些知识,</span><span>同学们分享这一周以来所有的学习内容以及学习到了哪些知识,</span><span>同学们分享这一周以来所有的学习内容以及学习到了哪些知识,</span><span>同学们分享这一周以来所有的学习内容以及学习到了哪些知识,</span></p>','2017-12-10 17:36:58',NULL,'超级管理员'),(4,4,'招新见面会','在2017年9月12日,对于大二学生的招新活动见面会,并且进行了,笔试考核<img src=\"http://localhost:8080/Admin/plugins/layui/images/face/0.gif\" alt=\"[微笑]\">','2017-12-15 14:54:35',NULL,'马欢欢'),(5,1,'1263','123456','2017-12-15 16:26:13',NULL,'超级管理员'),(6,1,'4654566','<b>sdfg<i>werfwesr<u>gddfg<img src=\"http://localhost:8080/Admin/plugins/layui/images/face/41.gif\" alt=\"[悲伤]\"></u></i></b>','2017-12-15 16:26:42',NULL,'超级管理员');
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
  `u_rank` int(11) DEFAULT '1',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','超级管理员','admin','男',NULL,2),(3,'15610606150651','李昕励','057815','男',NULL,1),(4,'15610409153608','马欢欢','950525','男',NULL,1),(5,'15610903150627','毛良伟','123456','男',NULL,1),(6,'user','超级用户','user','女',NULL,1);
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

-- Dump completed on 2017-12-28 20:50:52
