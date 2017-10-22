/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : bosom_friend

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-10-22 10:49:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bf_details
-- ----------------------------
DROP TABLE IF EXISTS `bf_details`;
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

-- ----------------------------
-- Records of bf_details
-- ----------------------------

-- ----------------------------
-- Table structure for bf_friend
-- ----------------------------
DROP TABLE IF EXISTS `bf_friend`;
CREATE TABLE `bf_friend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='好友表';

-- ----------------------------
-- Records of bf_friend
-- ----------------------------

-- ----------------------------
-- Table structure for bf_message
-- ----------------------------
DROP TABLE IF EXISTS `bf_message`;
CREATE TABLE `bf_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `content` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言表';

-- ----------------------------
-- Records of bf_message
-- ----------------------------

-- ----------------------------
-- Table structure for bf_personality_traits
-- ----------------------------
DROP TABLE IF EXISTS `bf_personality_traits`;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='性格特点表';

-- ----------------------------
-- Records of bf_personality_traits
-- ----------------------------

-- ----------------------------
-- Table structure for bf_post
-- ----------------------------
DROP TABLE IF EXISTS `bf_post`;
CREATE TABLE `bf_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `img` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bf_post
-- ----------------------------

-- ----------------------------
-- Table structure for bf_suggest
-- ----------------------------
DROP TABLE IF EXISTS `bf_suggest`;
CREATE TABLE `bf_suggest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建议表';

-- ----------------------------
-- Records of bf_suggest
-- ----------------------------

-- ----------------------------
-- Table structure for bf_user
-- ----------------------------
DROP TABLE IF EXISTS `bf_user`;
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

-- ----------------------------
-- Records of bf_user
-- ----------------------------
INSERT INTO `bf_user` VALUES ('1', '977986310', '张三', '123456', '15291194274', '男', '2017-10-18', 'it');
INSERT INTO `bf_user` VALUES ('2', 'root', 'root', 'root', '15291194274', '男', '2017-10-18', '商务学');
INSERT INTO `bf_user` VALUES ('3', null, '李四', '123456', null, null, null, null);
INSERT INTO `bf_user` VALUES ('4', null, '李四', '', null, null, null, null);
INSERT INTO `bf_user` VALUES ('5', null, '李四', '123456', null, null, null, null);
INSERT INTO `bf_user` VALUES ('6', null, '', '', null, null, null, null);
INSERT INTO `bf_user` VALUES ('7', null, '', '', null, null, null, null);
INSERT INTO `bf_user` VALUES ('8', null, 'admin', 'admin', '15291192151', '男', '1999-12-26', null);
INSERT INTO `bf_user` VALUES ('9', null, '123465', 'admin', '15291194274', '男', '1999-12-26', null);
INSERT INTO `bf_user` VALUES ('10', null, 'shfudai', 'admin', '15291194274', '男', '1999-12-26', null);
INSERT INTO `bf_user` VALUES ('11', null, 'asdbfjka', 'admin', '15291194274', '男', '1999-12-26', null);
INSERT INTO `bf_user` VALUES ('12', null, 'ashfdauif', 'admin', '15291194274', '男', '1999-12-26', null);
INSERT INTO `bf_user` VALUES ('13', null, '123', '123', '123', '', '', null);
INSERT INTO `bf_user` VALUES ('14', null, '', '', '', '', '', null);
INSERT INTO `bf_user` VALUES ('15', null, '123465', '', '', '', '', null);
INSERT INTO `bf_user` VALUES ('16', null, '', '', '', '', '', null);
INSERT INTO `bf_user` VALUES ('17', null, '123465', '', '', '', '', null);
INSERT INTO `bf_user` VALUES ('18', null, '简述', '', '15291194274', '', '', null);
INSERT INTO `bf_user` VALUES ('19', null, '123123', '123', '15291194274', '男', '1999-12-26', null);
INSERT INTO `bf_user` VALUES ('20', null, 'administered', '123456', '15291194274', '', '1999-12-26', null);
INSERT INTO `bf_user` VALUES ('21', null, 'administered', '123456', '15291194274', '', '1999-12-26', null);
INSERT INTO `bf_user` VALUES ('22', null, 'jiasuh1', '123456', '15291194274', '', '2017-10-21', null);
INSERT INTO `bf_user` VALUES ('23', null, 'jianshu', 'admin', '15291194274', '', '2017-10-19', null);
INSERT INTO `bf_user` VALUES ('24', null, '张三李四', 'admin', '15291194274', '男', '1999-12-26', null);
INSERT INTO `bf_user` VALUES ('25', null, 'loi', '15291194274', '1652123412', '男', '1999-12-26', null);
INSERT INTO `bf_user` VALUES ('26', null, 'loi', '', '1652123412', '男', '1999-12-26', null);
