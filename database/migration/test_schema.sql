# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.3.11-MariaDB)
# Database: test_schema
# Generation Time: 2019-02-12 21:17:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table answers_per_tests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answers_per_tests`;

CREATE TABLE `answers_per_tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) unsigned NOT NULL,
  `question_id` int(10) unsigned NOT NULL,
  `answer` varchar(100) NOT NULL,
  `points` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `answers_per_tests` WRITE;
/*!40000 ALTER TABLE `answers_per_tests` DISABLE KEYS */;

INSERT INTO `answers_per_tests` (`id`, `test_id`, `question_id`, `answer`, `points`, `created_at`)
VALUES
	(1,1,1,'Blue',1,'2019-02-10 21:49:37'),
	(2,1,1,'Red',0,'2019-02-10 21:49:46'),
	(3,1,1,'Green',0,'2019-02-10 21:49:59'),
	(4,1,1,'White',0,'2019-02-10 21:50:08'),
	(5,1,2,'Blue',0,'2019-02-12 11:47:54'),
	(6,1,2,'Red',1,'2019-02-12 11:48:07'),
	(7,1,2,'Green',0,'2019-02-12 11:48:17'),
	(8,1,2,'White',0,'2019-02-12 11:48:28'),
	(9,1,3,'Blue',0,'2019-02-12 11:50:10'),
	(18,5,5,'Swim',0,'2019-02-12 15:03:02'),
	(11,1,3,'Green',0,'2019-02-12 11:50:25'),
	(12,1,3,'White',1,'2019-02-12 11:50:34'),
	(13,1,4,'Blue',0,'2019-02-12 11:50:52'),
	(14,1,4,'Red',0,'2019-02-12 11:51:01'),
	(15,1,4,'Green',1,'2019-02-12 11:51:09'),
	(16,1,4,'White',0,'2019-02-12 11:51:21'),
	(17,1,4,'Yellow',0,'2019-02-12 11:52:01'),
	(19,5,5,'Run',1,'2019-02-12 15:03:28'),
	(20,5,6,'Hit',0,'2019-02-12 15:03:43'),
	(21,5,6,'Catch',0,'2019-02-12 15:03:54'),
	(22,5,6,'Swim',1,'2019-02-12 15:04:13'),
	(23,5,6,'Dance',0,'2019-02-12 15:04:23'),
	(24,5,7,'Dribble',1,'2019-02-12 15:05:13'),
	(25,5,7,'Dance',0,'2019-02-12 15:05:21'),
	(26,5,7,'Run',0,'2019-02-12 15:05:27'),
	(27,5,7,'Punch',0,'2019-02-12 15:05:37'),
	(28,8,8,'8',0,'2019-02-12 15:30:49'),
	(29,8,8,'10',0,'2019-02-12 15:31:02'),
	(30,8,8,'4',1,'2019-02-12 15:31:10'),
	(31,8,9,'1',0,'2019-02-12 15:31:44'),
	(32,8,9,'3',0,'2019-02-12 15:31:55'),
	(33,8,9,'4',0,'2019-02-12 15:32:10'),
	(34,8,9,'2',1,'2019-02-12 15:32:26'),
	(35,8,10,'45',1,'2019-02-12 15:33:00'),
	(36,8,10,'40',0,'2019-02-12 15:33:10'),
	(37,8,11,'10',0,'2019-02-12 15:33:47'),
	(38,8,11,'1',1,'2019-02-12 15:33:59'),
	(39,8,11,'5',0,'2019-02-12 15:34:08'),
	(40,8,12,'5',0,'2019-02-12 15:34:35'),
	(41,8,12,'20',0,'2019-02-12 15:34:44'),
	(42,8,12,'3',1,'2019-02-12 15:34:53'),
	(43,8,12,'7',0,'2019-02-12 15:35:03');

/*!40000 ALTER TABLE `answers_per_tests` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table questions_per_tests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions_per_tests`;

CREATE TABLE `questions_per_tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(10) unsigned NOT NULL,
  `question` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `test_id` (`test_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `questions_per_tests` WRITE;
/*!40000 ALTER TABLE `questions_per_tests` DISABLE KEYS */;

INSERT INTO `questions_per_tests` (`id`, `test_id`, `question`, `created_at`)
VALUES
	(1,1,'What color is the water?','2019-02-10 21:49:06'),
	(2,1,'What color is fire?','2019-02-12 11:46:55'),
	(3,1,'What color is the sky?','2019-02-12 11:47:09'),
	(4,1,'What Color is the grass?','2019-02-12 11:47:30'),
	(5,5,'When you do track you need to:','2019-02-12 15:01:51'),
	(6,5,'When you do swimming you need to:','2019-02-12 15:02:09'),
	(7,5,'When you play Basketball you need to:','2019-02-12 15:02:25'),
	(8,8,'2 + 2','2019-02-12 15:24:07'),
	(9,8,'(2 * 3) / 3','2019-02-12 15:24:33'),
	(10,8,'(5 - 2) * (10 + 5)','2019-02-12 15:26:16'),
	(11,8,'6 - 5','2019-02-12 15:26:47'),
	(12,8,'((6 / 6) * (30 /10))','2019-02-12 15:28:16');

/*!40000 ALTER TABLE `questions_per_tests` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table test_per_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `test_per_users`;

CREATE TABLE `test_per_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `test_id` int(10) unsigned NOT NULL,
  `question_id` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `test_id` (`test_id`),
  KEY `question_id` (`question_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table tests
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tests`;

CREATE TABLE `tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

LOCK TABLES `tests` WRITE;
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;

INSERT INTO `tests` (`id`, `name`, `created_at`)
VALUES
	(1,'Elements','2019-02-07 21:44:31'),
	(5,'Sports','2019-02-07 21:45:20'),
	(8,'Math','2019-02-07 21:45:28');

/*!40000 ALTER TABLE `tests` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
