-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: bosom_friend
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.17.04.1

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
-- Dumping data for table `bf_details`
--

LOCK TABLES `bf_details` WRITE;
/*!40000 ALTER TABLE `bf_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_friend`
--

DROP TABLE IF EXISTS `bf_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='好友表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_friend`
--

LOCK TABLES `bf_friend` WRITE;
/*!40000 ALTER TABLE `bf_friend` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_friend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_message`
--

DROP TABLE IF EXISTS `bf_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_message`
--

LOCK TABLES `bf_message` WRITE;
/*!40000 ALTER TABLE `bf_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_message` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='性格特点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_personality_traits`
--

LOCK TABLES `bf_personality_traits` WRITE;
/*!40000 ALTER TABLE `bf_personality_traits` DISABLE KEYS */;
INSERT INTO `bf_personality_traits` VALUES (1,'1','1',NULL,'0','1','0','1','0','1','0','0','facef859-ec26-4ca8-a3a0-ea2a98263a78'),(2,'1','0',NULL,'0','1','0','1','0','1','0','1','e3d76c8e-ca1c-469a-acc9-9f1edd22d1c0');
/*!40000 ALTER TABLE `bf_personality_traits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bf_post`
--

DROP TABLE IF EXISTS `bf_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bf_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `img` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `userName` varchar(100) DEFAULT NULL,
  `personalityTraits` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_post`
--

LOCK TABLES `bf_post` WRITE;
/*!40000 ALTER TABLE `bf_post` DISABLE KEYS */;
INSERT INTO `bf_post` VALUES (1,'关于你，我有太多东西关于你','关于你，2012年的九月，那是我们认识的季节，在四十多平米的教室里，我认识了你。我们是同学，彼此都还不熟悉的同学。那一句个子还高嘛，是我关注你的开始，有意无意的从四组向一组瞟你，小心翼翼的眼神怕你发现，却又怕你不明白，一点点的喜欢不敢声张。后来的打过来骂过去，后来聊天的默契，互道的晚安，才明白原来就是喜欢，没有其他。确定是喜欢，可是还是不敢声张。只因当初在人群中你说了一句，从此，你便住在了心里。不敢轻易靠近打扰，是怕自己扰了你的生活步调；不敢轻易对你开口言爱，是怕那样做是一种冒犯，是一种伤害我们关系的因素。\n\n　　 关于你。就是因为我的害怕，我亲眼看你走向她。我喜欢你是事实，你有女朋友也是事实。我以为我不说出口就会保持这样的朋友关系，却还是她赶了个巧，那应该是个寒假，你有女朋友了，我还是听说，我那么爱，却还是无果。于是我和她之间就莫名其妙的就多少有了敌人的感觉，或许就是别人口中的那样，世界上完全不相干的两个女人，会因为一个男人要么很友好，要么是仇恨。关于她我做不到友好，但也不是仇恨，只是你选择了她，我就希望她好好爱你，照顾你，连我的份也一起爱了。自爱上你的那天起，思念便成了戒不掉的瘾。你的一言一笑，一颦一蹙，无不牵动我的心，百千尘思，唯念一缕；万千红颜，唯恋一人。我愿意一生漂泊浪迹在你的故事里，甘愿为你鞍前马后，马首是瞻，即使你从未给我一句承诺，即使你从未给我半分爱情，依然无悔无怨。','/0977889f-4294-426e-b079-b6a763050a72.jpg','2017-10-24','root','facef859-ec26-4ca8-a3a0-ea2a98263a78'),(2,'留一点专注的时间给孩子','每天早上五点半，我一般都会自动醒来，起床，洗漱，坐在阳台前，打开电脑，深吸一口早晨的空气，写文。\n\n　　几乎这已经成为我生活的一部分，所以我将早上这一点时间看的非常重要，不希望被打扰。\n\n　　前天早上还是一样，我准备好坐下，正在写文同时，听到房间里女儿在大声叫着爸爸。我心想有老婆和女儿在房间，就没有过多理睬，继续打字。\n\n　　过了一会，房间门打开，女儿一脸微笑几乎是小跑着从房间里出来。刚刚从睡梦里醒来的缘故，头发还没来得及梳，睡眼惺忪的双眼瞪着我，笑着向我跑来。\n\n　　女儿还不到两岁，表达心情最直观的就是面部的微笑以及不那么娴熟的小跑。尽管小跑起来有些歪歪扭扭，还是可以看出非常激动。\n\n　　这时候老婆也出来了，最近老婆在准备一项考试，所以应该是早上很早就起来在房间里看书。现在老婆看到女儿出来，自己拿着书到客厅里看。\n\n　　女儿跑到我跟前，好奇的看着电脑屏幕，双手在键盘上双管齐下，拍打键盘的声音噼里啪啦，非常清脆，也非常高兴。我写文刚好一半，被女儿打断了，就希望她先去客厅自己玩会，我写完再陪她玩。\n\n　　于是我没有过多和女儿互动，只是机械性的把女儿的小手从键盘上拿开，随便从角落里捡到一个小玩具递给她，把她抱到客厅，然后我就继续坐下来，写文。\n\n　　期间我发现她可能发现我的冷淡反应，就干脆拿着我刚才递给她的玩具，围到老婆身边，嘴里不那么连贯地说着：“妈妈，看”。时而又自己笑起来，时而把玩具在地上弄出声音，想引起老婆的注意。','/6026172c-5717-4a5f-a7fc-cd4c9a104312.jpg','2017-10-24','root','e3d76c8e-ca1c-469a-acc9-9f1edd22d1c0');
/*!40000 ALTER TABLE `bf_post` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `bf_suggest`
--

LOCK TABLES `bf_suggest` WRITE;
/*!40000 ALTER TABLE `bf_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `bf_suggest` ENABLE KEYS */;
UNLOCK TABLES;

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
  `user_pass` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_user`
--

LOCK TABLES `bf_user` WRITE;
/*!40000 ALTER TABLE `bf_user` DISABLE KEYS */;
INSERT INTO `bf_user` VALUES (1,'977986310','张三','123456','15291194274','男','2017-10-18','it'),(2,'root','root','root','15291194274','男','2017-10-18','商务学'),(3,NULL,'李四','123456',NULL,NULL,NULL,NULL),(4,NULL,'李四','',NULL,NULL,NULL,NULL),(5,NULL,'李四','123456',NULL,NULL,NULL,NULL),(6,NULL,'','',NULL,NULL,NULL,NULL),(7,NULL,'','',NULL,NULL,NULL,NULL),(8,NULL,'admin','admin','15291192151','男','1999-12-26',NULL),(9,NULL,'123465','admin','15291194274','男','1999-12-26',NULL),(10,NULL,'shfudai','admin','15291194274','男','1999-12-26',NULL),(11,NULL,'asdbfjka','admin','15291194274','男','1999-12-26',NULL),(12,NULL,'ashfdauif','admin','15291194274','男','1999-12-26',NULL),(13,NULL,'123','123','123','','',NULL),(14,NULL,'','','','','',NULL),(15,NULL,'123465','','','','',NULL),(16,NULL,'','','','','',NULL),(17,NULL,'123465','','','','',NULL),(18,NULL,'简述','','15291194274','','',NULL),(19,NULL,'123123','123','15291194274','男','1999-12-26',NULL),(20,NULL,'administered','123456','15291194274','','1999-12-26',NULL),(21,NULL,'administered','123456','15291194274','','1999-12-26',NULL),(22,NULL,'jiasuh1','123456','15291194274','','2017-10-21',NULL),(23,NULL,'jianshu','admin','15291194274','','2017-10-19',NULL),(24,NULL,'张三李四','admin','15291194274','男','1999-12-26',NULL),(25,NULL,'loi','15291194274','1652123412','男','1999-12-26',NULL),(26,NULL,'loi','','1652123412','男','1999-12-26',NULL);
/*!40000 ALTER TABLE `bf_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-25  8:44:49
