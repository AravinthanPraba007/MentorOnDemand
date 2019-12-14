CREATE DATABASE  IF NOT EXISTS `mentor_on_demand` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mentor_on_demand`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: mentor_on_demand
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (97);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor` (
  `me_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `me_confirm_password` varchar(255) DEFAULT NULL,
  `me_contact_no` varchar(255) DEFAULT NULL,
  `me_email` varchar(255) DEFAULT NULL,
  `me_firstname` varchar(255) DEFAULT NULL,
  `me_lastname` varchar(255) DEFAULT NULL,
  `me_linkedin_url` varchar(255) DEFAULT NULL,
  `me_password` varchar(255) DEFAULT NULL,
  `me_userid` varchar(255) DEFAULT NULL,
  `me_years_of_experience` float DEFAULT NULL,
  PRIMARY KEY (`me_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (1,'$2a$10$9vqOWeIfEzqFCafQy0Mz0Ot1YElGA3pN7SzKtKVVeLEmwK4Z74xZi','9877678896','sai@gmail.com','sai','sai','sai@linkedin.com','$2a$10$bPhi4G57tDkWwPMVHGUYQ.jIcpJR4UEBQK9r.ooAKbXYlPOZJUoJ2','sai',8),(2,'$2a$10$LkK8ksZpwxDUOCfvXaDcJuJSIBV4SMbycBqfCcpzfCu7OVo5gNksu','9876896789','arul@gmail.com','arul','m','arul@linkedin.com','$2a$10$cYK8.6J4ZkojHyyg/YOKoOgqwMhPT.do23tLJ2DD0K2yO5cc2iCHa','arul',6),(3,'$2a$10$hXm1ZNYxsoqQeYobJm18FOtRJ.50N48ONUeEXw.jvJaGOn15VsGfa','8765789876','durga@gmail.com','durga','m','durga@linkedin.com','$2a$10$t1YIOw08V/vZwKQGAeDmrucFXHKu.Mt.iPjcor0CrcHAwKkaTA.KK','durga',7),(4,'$2a$10$b3fyvxhnOmiqJmBw5G707els/vk6Mdcu6uMelsZIZ6C.hL71wTMNa','7657876568','kumar@gmail.com','kumar','m','kumar@linkedin.com','$2a$10$m7jBx7wJixzGKmZni3Dwd.dwQXfCyeIAGLoKS6FUvjVDrhUQD9MZ2','kumar',5),(5,'$2a$10$UlcvZUScSbg5gSq6npbOweuNs7MbukqSltAsG2FsNPTs7vztdNP4i','7654324567','mozhi@gmail.com','mozhi','m','mozhi@linkedin.com','$2a$10$f7sjF4kmaGytqH7lcRoVluwtpqurl.9Jz08Yr7ghtW9C1kDiNa/Y2','mozhi',5),(6,'$2a$10$jXQ5ZDk8jpO1HiGU2iESKe/R4dRwNbkWr3OjtOc8C6Bsuz98Xmoem','','','','','','$2a$10$RVGsCNnaK.2yF.PNQUq/.egtJ5RifEGzDp4WGz4jwSQt3/MzAKa7a','',NULL),(7,'$2a$10$tHQybx92Woac4qK11/xuNezBklCq8antGzs14aCNsg1Y03A/Np0Wy','','','','','','$2a$10$xz1EQWR1qbI1pBpUVZy1E.AB6fbhtW4MajESX1oIQ9u7lcvgheMey','',NULL),(8,'$2a$10$IowkSn8N1whQbxF7FMK0nuJs7DmpmTPyNL3/VCG9MMqggbDy3TVoC','35454656','GHRT','T','T','DH','$2a$10$2T4BqsjSzpkcpVXgQuv6k.4mVxB2xur9Omugaq2UZk1jiNkGZ5k9C','T',4);
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_calendar`
--

DROP TABLE IF EXISTS `mentor_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor_calendar` (
  `mc_id` bigint(20) NOT NULL,
  `mc_end_date` date DEFAULT NULL,
  `mc_end_time` time DEFAULT NULL,
  `mc_start_date` date DEFAULT NULL,
  `mc_start_time` time DEFAULT NULL,
  `mc_me_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`mc_id`),
  KEY `FKg0vtymuejgf1nynfyxj70y4jt` (`mc_me_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_calendar`
--

LOCK TABLES `mentor_calendar` WRITE;
/*!40000 ALTER TABLE `mentor_calendar` DISABLE KEYS */;
INSERT INTO `mentor_calendar` VALUES (1,'2019-12-06','12:00:00','2019-12-06','09:00:00',19),(2,'2019-12-07','06:00:00','2019-12-07','02:00:00',23),(3,'2019-12-08','06:00:00','2019-12-08','02:00:00',19),(4,'2019-12-09','12:00:00','2019-12-09','09:00:00',23);
/*!40000 ALTER TABLE `mentor_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor_skill`
--

DROP TABLE IF EXISTS `mentor_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mentor_skill` (
  `ms_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ms_exp` bigint(20) DEFAULT NULL,
  `ms_facilities` varchar(255) DEFAULT NULL,
  `ms_self_rating` bigint(20) DEFAULT NULL,
  `ms_trainings_delivered` varchar(255) DEFAULT NULL,
  `ms_me_id` bigint(20) DEFAULT NULL,
  `ms_sk_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ms_id`),
  KEY `FK49a3ygnib52wsm2kmp7a0937c` (`ms_me_id`),
  KEY `FKgu5jer1ugx4p79xhr6js7jtqs` (`ms_sk_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor_skill`
--

LOCK TABLES `mentor_skill` WRITE;
/*!40000 ALTER TABLE `mentor_skill` DISABLE KEYS */;
INSERT INTO `mentor_skill` VALUES (1,7,'notes,lab',5,'7',1,5),(2,6,'notes,handson',4,'6',1,4),(3,8,'notes, record',4,'4',2,4),(4,4,'lab',3,'5',2,2),(5,6,'hands on, notes',5,'7',3,4),(6,5,'records',4,'5',3,5),(7,4,'notes',5,'4',4,1),(8,5,'notes,lab',4,'3',4,5),(9,4,'notes, record',3,'5',5,3),(10,5,'notes,handson',3,'5',5,4);
/*!40000 ALTER TABLE `mentor_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `ro_id` int(11) NOT NULL AUTO_INCREMENT,
  `ro_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ro_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'MENTOR'),(2,'TRAINEE');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technology` (
  `te_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `te_duration` varchar(255) DEFAULT NULL,
  `te_prereq` varchar(255) DEFAULT NULL,
  `te_name` varchar(255) DEFAULT NULL,
  `te_toc` varchar(255) DEFAULT NULL,
  `te_image` varchar(800) DEFAULT NULL,
  PRIMARY KEY (`te_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,'2 Months','Basics of C programming','C++','C Basics, OOPS Concepts,Threads ','https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/ISO_C%2B%2B_Logo.svg/150px-ISO_C%2B%2B_Logo.svg.png'),(2,'3 Months','C, C++','Java','OOPs Concepts, Cllases and Objects ,Inheritance, Threads','https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Java_programming_language_logo.svg/141px-Java_programming_language_logo.svg.png'),(3,'1 Month','Html, CSS','Bootstrap','HTML Basics, Classes, Scripts','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqECjs650ivBHQKS2G3W9U7Ex4V2BSKrolcgTPk64cGaJomqav&s'),(4,'5 Months','Java','Spring Framework','Java Basics,Dependency Injection, IoC, Spring boot Introduction','https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Java_programming_language_logo.svg/141px-Java_programming_language_logo.svg.png'),(5,'4 Months','Html, CSS, Javascript','Angular','JS Basics, Modularisation, Classes and services','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcfP4DDlCRR5l891PQMrqL-nxbGeMAR3ZvinfruoPrWm7Nwoch&s'),(6,'1 Month',' Database Basics','MySQL','Basics,DDL,DML,DCL,TCL,Joins','https://upload.wikimedia.org/wikipedia/en/thumb/6/62/MySQL.svg/1280px-MySQL.svg.png');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainee`
--

DROP TABLE IF EXISTS `trainee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainee` (
  `tr_id` bigint(20) NOT NULL,
  `tr_confirm_password` varchar(255) DEFAULT NULL,
  `tr_contact_no` varchar(255) DEFAULT NULL,
  `tr_email` varchar(255) DEFAULT NULL,
  `tr_firstname` varchar(255) DEFAULT NULL,
  `tr_lastname` varchar(255) DEFAULT NULL,
  `tr_password` varchar(255) DEFAULT NULL,
  `tr_userid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainee`
--

LOCK TABLES `trainee` WRITE;
/*!40000 ALTER TABLE `trainee` DISABLE KEYS */;
INSERT INTO `trainee` VALUES (88,'$2a$10$2Y7kfnHVgFSEpJa2M5wBjuwBx5rA1F1caHUd9Z/YmyyEoLIkDMA2.','9865345678','naresh@gmail.com','naresh','m','$2a$10$h0P0U6072plzg5C2L31N2.Z8lNYwCppsFWjrI8wehPiFgo5ioVmTW','naresh'),(90,'$2a$10$jldtIVXWeHPAOfxf6FvmOe3XCHIRlmyDLKjuLU7zYJFZCIC0o8exi','7689678987','devi@gmail.com','devi','madhavan','$2a$10$6Wb3mmsV1utGtncaFQpT4uPIz3OvNDoC1YcJJgSM.zJeNF9jNUZoW','devi');
/*!40000 ALTER TABLE `trainee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `training` (
  `tg_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tg_status` varchar(255) DEFAULT NULL,
  `tg_me_id` bigint(20) DEFAULT NULL,
  `tg_tr_id` bigint(20) DEFAULT NULL,
  `tg_te_id` bigint(20) DEFAULT NULL,
  `tg_progress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tg_id`),
  KEY `FKgasjjefouws5l6x434nrlt6dk` (`tg_me_id`),
  KEY `FKplyquytxxusj2pqevwp7v1dsi` (`tg_te_id`),
  KEY `FK1n0bwq78qcj0a4e5qcnbkdkvl` (`tg_tr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (8,'APPROVED',3,90,5,NULL),(12,'APPROVED',4,90,1,NULL),(11,'APPROVED',4,90,5,NULL);
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `us_id` bigint(20) NOT NULL,
  `us_password` varchar(255) DEFAULT NULL,
  `us_username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`us_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (85,'$2a$10$bPhi4G57tDkWwPMVHGUYQ.jIcpJR4UEBQK9r.ooAKbXYlPOZJUoJ2','sai'),(86,'$2a$10$cYK8.6J4ZkojHyyg/YOKoOgqwMhPT.do23tLJ2DD0K2yO5cc2iCHa','arul'),(87,'$2a$10$t1YIOw08V/vZwKQGAeDmrucFXHKu.Mt.iPjcor0CrcHAwKkaTA.KK','durga'),(89,'$2a$10$h0P0U6072plzg5C2L31N2.Z8lNYwCppsFWjrI8wehPiFgo5ioVmTW','naresh'),(91,'$2a$10$6Wb3mmsV1utGtncaFQpT4uPIz3OvNDoC1YcJJgSM.zJeNF9jNUZoW','devi'),(92,'$2a$10$m7jBx7wJixzGKmZni3Dwd.dwQXfCyeIAGLoKS6FUvjVDrhUQD9MZ2','kumar'),(93,'$2a$10$f7sjF4kmaGytqH7lcRoVluwtpqurl.9Jz08Yr7ghtW9C1kDiNa/Y2','mozhi'),(94,'$2a$10$xz1EQWR1qbI1pBpUVZy1E.AB6fbhtW4MajESX1oIQ9u7lcvgheMey',''),(95,'$2a$10$RVGsCNnaK.2yF.PNQUq/.egtJ5RifEGzDp4WGz4jwSQt3/MzAKa7a',''),(96,'$2a$10$2T4BqsjSzpkcpVXgQuv6k.4mVxB2xur9Omugaq2UZk1jiNkGZ5k9C','T');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `ur_us_id` bigint(20) NOT NULL,
  `ur_ro_id` bigint(20) NOT NULL,
  PRIMARY KEY (`ur_us_id`,`ur_ro_id`),
  KEY `FKjia4161ecu6h4p0egc2oc04lt` (`ur_ro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (85,1),(86,1),(87,1),(89,2),(91,2),(92,1),(93,1),(94,1),(95,1),(96,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-10 10:06:43
