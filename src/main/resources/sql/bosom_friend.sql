-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: bosom_friend
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
-- Current Database: `bosom_friend`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bosom_friend` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bosom_friend`;

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
  `user_id` varchar(11) NOT NULL,
  `friend_id` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='好友表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_friend`
--

LOCK TABLES `bf_friend` WRITE;
/*!40000 ALTER TABLE `bf_friend` DISABLE KEYS */;
INSERT INTO `bf_friend` VALUES (1,'admin','root');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='性格特点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_personality_traits`
--

LOCK TABLES `bf_personality_traits` WRITE;
/*!40000 ALTER TABLE `bf_personality_traits` DISABLE KEYS */;
INSERT INTO `bf_personality_traits` VALUES (3,'1','1',NULL,'0','0','0','1','1','0','0','1','764ef2e9-2f84-405a-a189-ddede49b2f72'),(4,'1','1',NULL,'0','0','0','1','1','0','0','1','9150cf1a-c1a3-499a-b9cc-a7cc372a488b'),(5,'1','1',NULL,'1','1','1','1','1','1','1','1','6bc3bd82-e457-478d-bdb9-abf82a28120b'),(6,'1','1',NULL,'0','1','1','0','1','0','0','1','d34fdb20-cb25-43fe-b324-089184014c24'),(7,'1','0',NULL,'0','0','1','1','0','1','0','0','2e5c6b74-21f9-4058-8c3b-932b5d6cd71f'),(8,'1','1',NULL,'1','1','1','1','1','1','1','1','348c9e40-954d-47b3-8dc1-b3294b0e610d'),(9,'1','1',NULL,'1','1','1','1','1','1','1','1','2741f3f1-19cd-4bea-a224-512ee95a66b3');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_post`
--

LOCK TABLES `bf_post` WRITE;
/*!40000 ALTER TABLE `bf_post` DISABLE KEYS */;
INSERT INTO `bf_post` VALUES (7,'气质女生与世界先生','我把衣柜翻了个底朝天，花花绿绿地堆了满床。\n\n　　谢雨帆盘腿坐在电脑前打游戏，嗑着瓜子眼皮也不抬一下，半晌才悠悠地吐出一句，“人，贵有自知之明，”他说完，继续猛点鼠标，嘴里的瓜子壳儿还吐到了我裙子上。我从鼻孔里嗤了一声，谁要跟这种吃瓜子的琐碎男人计较。\n\n　　半个小时后，我选了一件刺绣小吊带，牛仔热裤，在镜子面前蹦蹦跳跳地摆着POSE。谢雨帆终于站了起来，他从衣柜里扯出一件大衣，砸在我身上，“有芙蓉姐姐露了，谁还看你？不如包个严实的，指不定就红了。”\n\n　　“你说我不如芙蓉姐姐?”我恼羞成怒了。\n\n　　“这可是你自己说的，”谢雨帆伸伸懒腰，“学生会有事，我先走了。”当然，走之前他是不会忘记把剩下的瓜子打包的。\n\n　　我看着谢雨帆的背影，有那么一点儿惆怅，这位比我还拽的人，便是我的追求者。这位追求者每个周末必定来看我，风雨无阻，当然，他来蹭免费网上，把我的零食搜到完后，连包泡面也要蹭。\n\n　　他还很会说甜言蜜语，比如，夸我像芙蓉姐姐。\n\n　　所以，他追了我半年，我们依然是——光棍两枝。\n\n　　气质女生与世界先生的晚餐\n\n　　学校的“气质女生选拔赛”，我过关斩将一路杀进了决赛。谢雨帆用一种难以置信的眼光打量着我，“李茹菲，我们学校的女生是不是都没报名?”\n\n　　埋着头啃比萨的我不得不抽空瞪了他一眼，接着用手比画了一下，谢雨帆就把布丁和小面包推到我面前。我一边吃一边斜瞄着菜单，谢雨帆铁公鸡拔毛，这样千年等一回的机会，我怎么可能错过。\n\n　　大脑飞快地转动着，我的电费，我的键盘磨损费，我的薯片我的巧克力我的乌克兰大樱桃，以及我的方便面。直到觉得差不多吃够本的时候，我直起腰，优雅地擦擦嘴，我说：“还可以再要份意大利面吗?”\n\n　　原本抹着汗准备埋单的谢雨帆像触电般抬起头，半晌才机械地点点头。我吃得眉飞色舞时，他担忧地看着我：“你是不是被什么附体了?你确定是你一个人在吃?”\n\n　　面条吃到一半，谢雨帆去上厕所，可直到我把面条吃光，最后把盘子刮得干干净净时，他也没有回来。完蛋了，他不是跑路了吧！','/afb26020-0766-4c6b-8d2f-8643318183dd.jpg','2017-11-05','root','348c9e40-954d-47b3-8dc1-b3294b0e610d'),(8,'爱若放手，祝福依旧','　　爱若放手，祝福依旧\n\n　　文／伊人轻舞\n\n　　春色远走，风情长留。爱若放手，祝福依旧。\n\n　　 ——题记\n\n　　人都说，爱上一座城，是因为城中住着你爱的人。爱屋及乌自是不言而喻，每个人的生命中都会出现这样一个人，纵使尘满面，鬓如霜，也想要和他相伴到岁末晚景。我深信此画面曾被无数人精心描摹过，因为它是人们心里憧憬的最美的爱相逢。这个浪漫的“版图”，也是温暖与真挚包裹的纯粹感情，所刻画的一幅朴素人生。\n\n　　世间最理想的爱情，当然是两颗同心，一生相濡以沫。擦肩而过，只能说彼此情深缘浅。放手成全，可能给人感觉言过凄美，听着有些颇为冷情，可谁也不能否认这不是因为爱情。\n\n　　爱情是什么？我只能说是一种忘我的感觉，一种怡然心扉的情愫，它体现着爱情的完美纯度。 “遇一人白首，择一城终老”，人人心期遇见这样的尘缘，从此守候这种温暖。可生活并非是你以为的那么顺然，爱情也有难违的宿命。\n\n　　虽然在爱着的岁月里，谁都想远离苦情的日子，谁都想告别痛彻心扉的分手领悟，谁都喜欢让爱情的阳光，洒满心空。\n\n　　但爱情有时就是那么不可思议，有些人相爱时海誓山盟、琴瑟和鸣，却逃不开生活的细节，导致情源枯竭，爱因此无疾而终。有些人即便爱得肝肠寸断，到最后还是一人向左，一人向右。也有一些人，一路磕磕绊绊，分分合合，几度被所谓的爱情来回折腾，于风风雨雨里磨合几十年，甚至把所有的离歌全唱过，依然不改初心。类似这种戒不掉的疼痛，谁又能说这不是因为爱情？\n\n　　不管今生遇见了怎样的情缘，也无论爱与被爱，彼此能够遇见，就是上天注定好的缘份。被一个人吸引，首先看得是眼缘。 一但爱情使得彼此之间变成小心翼翼的撕扯，关心变成了束缚和互相伤害的导火索，放手或许是最明智的选择。爱情，从来没有配不配，有的只是适不适合。\n\n　　爱一个人，首先应该让他（她）快乐。对于一段情，能够温暖彼此心灵最重要，可以让彼此记住曾经的美好最难得。早就有人说，爱不是索取，不是占有。爱是给予，是奉献，是成全。\n\n　　一直喜欢《有一种爱叫做放手》的老歌，阿木用他沙哑的音色唱着：有一种爱叫做放手，为爱结束天长地久，我的离去若让你拥有所有，让真爱带我走说分手……\n\n　　这一段令听者撕心裂肺的副歌，每每回味，心中总会涌出不能自己的颤抖和感动……\n\n','/de3ce372-e9cd-4d09-94a7-0a382ad1c8c0.jpg','2017-11-05','root','2741f3f1-19cd-4bea-a224-512ee95a66b3');
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
  `living` varchar(500) DEFAULT NULL,
  `signature` varchar(500) DEFAULT NULL,
  `userImg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bf_user`
--

LOCK TABLES `bf_user` WRITE;
/*!40000 ALTER TABLE `bf_user` DISABLE KEYS */;
INSERT INTO `bf_user` VALUES (2,'root','root','root','15291194274','男','2017-10-18','商务学','陕西西安',' 门前老树长新芽，院里枯木又开花，时间都去哪了，一不小心就流走了。','/272cb2be-0736-48fb-8204-23a917901a13.jpg'),(8,NULL,'admin','admin','15291192151','男','1999-12-26','java工程师','陕西西安','。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。。','/dc53fe1a-5184-410b-83e6-1fae14a0f793.jpg'),(9,NULL,'张三','admin','15291192151','男','1999-12-26','java工程师','陕西西安','阿三的发送的发送','/023aec10-7609-4d6e-8868-3c37d18701c5.jpg');
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

-- Dump completed on 2017-11-05 17:13:20
