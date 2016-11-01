/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : myblog

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2016-11-01 11:57:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accounts
-- ----------------------------

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` timestamp NULL DEFAULT NULL,
  `d_abstract` varchar(255) DEFAULT NULL,
  `d_content` longtext,
  `d_keywords` varchar(255) DEFAULT NULL,
  `d_resources` varchar(255) DEFAULT NULL,
  `d_title` varchar(255) DEFAULT NULL,
  `d_topics` varchar(255) DEFAULT NULL,
  `d_type` int(11) NOT NULL DEFAULT '0',
  `update_time` datetime NOT NULL,
  `note_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '2016-10-20 15:35:08', '', '这是一个测试', null, null, 'java基础', null, '0', '2016-10-30 15:35:48', '1');
INSERT INTO `articles` VALUES ('2', '2016-10-15 15:36:53', null, '学习好Java', null, null, 'java抽象类', null, '0', '2016-10-29 15:37:35', '1');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', null, 'Your Messages here....', null, 'Subject');
INSERT INTO `messages` VALUES ('2', null, 'Your Messages here....', null, 'Subject');
INSERT INTO `messages` VALUES ('3', null, 'Your Messages here....', null, 'Subject');
INSERT INTO `messages` VALUES ('4', null, '李昌亚', null, '李昌亚');
INSERT INTO `messages` VALUES ('5', null, '李昌亚', null, '李昌亚');
INSERT INTO `messages` VALUES ('6', null, '李昌亚', null, '李昌亚');
INSERT INTO `messages` VALUES ('7', null, '李昌亚', null, '上海大学');
INSERT INTO `messages` VALUES ('8', null, '李昌', null, '上啊哈');
INSERT INTO `messages` VALUES ('9', null, '额瑞特人', null, '上海大学');
INSERT INTO `messages` VALUES ('10', null, '事', null, 'Yui');
INSERT INTO `messages` VALUES ('11', null, null, null, null);
INSERT INTO `messages` VALUES ('12', null, '二突然会跳舞花', null, '丽丽擦地瓜的结果');
INSERT INTO `messages` VALUES ('13', null, '而又让我也很温柔', null, '而且让土耳其问题');
INSERT INTO `messages` VALUES ('14', null, '我是李昌亚！', null, '你好！');
INSERT INTO `messages` VALUES ('15', null, '你好！！！！！！', null, '你好');
INSERT INTO `messages` VALUES ('16', null, 'fdgergergrb', null, '3513534');
INSERT INTO `messages` VALUES ('17', '183.192.32.36', '热个人过热如果', null, '3213413461');
INSERT INTO `messages` VALUES ('18', '183.192.32.36', 'fdvgsdfgfdsbsfdbh', null, 'gqergrehq');
INSERT INTO `messages` VALUES ('19', '183.192.32.36', '发哥发大巴我去特务135315', '2016-10-29 18:10:37', '31534513464');

-- ----------------------------
-- Table structure for musics
-- ----------------------------
DROP TABLE IF EXISTS `musics`;
CREATE TABLE `musics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `resources` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of musics
-- ----------------------------

-- ----------------------------
-- Table structure for notes
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `note_name` varchar(125) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url_path` varchar(125) DEFAULT NULL,
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes
-- ----------------------------
INSERT INTO `notes` VALUES ('1', 'Java笔记', '2016-10-30 15:59:53', '', '2');
INSERT INTO `notes` VALUES ('2', 'Mysql学习', '2016-10-30 15:05:46', '', '0');
INSERT INTO `notes` VALUES ('3', 'Linux命令', '2016-10-30 15:05:45', '', '0');
INSERT INTO `notes` VALUES ('4', '经典算法', '2016-10-30 15:05:44', '', '0');
INSERT INTO `notes` VALUES ('5', '多线程编程', '2016-10-30 15:05:43', '', '0');
INSERT INTO `notes` VALUES ('7', 'TCP/IP协议', '2016-10-30 15:03:15', null, '0');
INSERT INTO `notes` VALUES ('8', '多线程编程', '2016-10-30 15:10:18', null, '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `grade` int(11) NOT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
