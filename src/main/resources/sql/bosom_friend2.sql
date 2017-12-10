-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: bosom_friend
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `bf_details`
--

DROP TABLE IF EXISTS `bf_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `concept_of_love` varchar(200) DEFAULT NULL,
  `spouse_intention` varchar(200) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  `wage` varchar(20) DEFAULT NULL,
  `photo` varchar(20) DEFAULT NULL,
  `personality_traits` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户详细信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bf_friend`
--

DROP TABLE IF EXISTS `bf_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(11) NOT NULL,
  `friend_id` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='好友表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bf_member`
--

DROP TABLE IF EXISTS `bf_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `userEmail` varchar(50) DEFAULT NULL,
  `userSex` varchar(2) DEFAULT NULL,
  `userStatus` varchar(10) DEFAULT NULL,
  `userGrade` varchar(10) DEFAULT NULL,
  `userEndTime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='会员表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bf_message`
--

DROP TABLE IF EXISTS `bf_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(11) NOT NULL,
  `friend_id` varchar(11) DEFAULT NULL,
  `content` varchar(250) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='留言表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bf_personality_traits`
--

DROP TABLE IF EXISTS `bf_personality_traits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_personality_traits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `steady` varchar(2) DEFAULT NULL,
  `romantic` varchar(2) DEFAULT NULL,
  `live_waves_cute` varchar(2) DEFAULT NULL,
  `humor` varchar(2) DEFAULT NULL,
  `free` varchar(2) DEFAULT NULL,
  `clever` varchar(2) DEFAULT NULL,
  `serious` varchar(2) DEFAULT NULL,
  `simple` varchar(2) DEFAULT NULL,
  `game` varchar(2) DEFAULT NULL,
  `music` varchar(2) DEFAULT NULL,
  `sport` varchar(2) DEFAULT NULL,
  `post_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='性格特点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bf_post`
--

DROP TABLE IF EXISTS `bf_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `img` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `personalityTraits` varchar(100) DEFAULT NULL,
  `newsStatus` varchar(20) DEFAULT '待审核',
  `newsLook` varchar(20) DEFAULT '开放浏览',
  `isShow` varchar(20) DEFAULT 'checked',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bf_suggest`
--

DROP TABLE IF EXISTS `bf_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_suggest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bf_user`
--

DROP TABLE IF EXISTS `bf_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_count` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pass` varchar(50) DEFAULT '123456',
  `phone` varchar(30) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `living` varchar(500) DEFAULT NULL,
  `signature` varchar(500) DEFAULT NULL,
  `userImg` varchar(100) DEFAULT NULL,
  `userStatus` varchar(10) DEFAULT '正常使用',
  `userGrade` varchar(10) DEFAULT '注册会员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-10 15:27:00
