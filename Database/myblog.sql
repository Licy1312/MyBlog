# Host: localhost  (Version: 5.1.73-community)
# Date: 2016-10-19 17:05:29
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "accounts"
#

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "accounts"
#

/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;

#
# Structure for table "articles"
#

DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date DEFAULT NULL,
  `d_abstract` varchar(255) DEFAULT NULL,
  `d_content` varchar(255) DEFAULT NULL,
  `d_keywords` varchar(255) DEFAULT NULL,
  `d_resources` varchar(255) DEFAULT NULL,
  `d_title` varchar(255) DEFAULT NULL,
  `d_topics` varchar(255) DEFAULT NULL,
  `d_type` int(11) NOT NULL,
  `update_time` date DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "articles"
#

/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

#
# Structure for table "messages"
#

DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "messages"
#

/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,NULL,'Your Messages here....',NULL,'Subject'),(2,NULL,'Your Messages here....',NULL,'Subject'),(3,NULL,'Your Messages here....',NULL,'Subject'),(4,NULL,'李昌亚',NULL,'李昌亚'),(5,NULL,'李昌亚',NULL,'李昌亚'),(6,NULL,'李昌亚',NULL,'李昌亚'),(7,NULL,'李昌亚',NULL,'上海大学'),(8,NULL,'李昌',NULL,'上啊哈'),(9,NULL,'额瑞特人',NULL,'上海大学'),(10,NULL,'事',NULL,'Yui'),(11,NULL,NULL,NULL,NULL),(12,NULL,'二突然会跳舞花',NULL,'丽丽擦地瓜的结果'),(13,NULL,'而又让我也很温柔',NULL,'而且让土耳其问题'),(14,NULL,'我是李昌亚！',NULL,'你好！');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;

#
# Structure for table "musics"
#

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

#
# Data for table "musics"
#

/*!40000 ALTER TABLE `musics` DISABLE KEYS */;
/*!40000 ALTER TABLE `musics` ENABLE KEYS */;

#
# Structure for table "users"
#

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

#
# Data for table "users"
#

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
