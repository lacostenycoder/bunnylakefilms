# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.25)
# Database: bunny_lake_production
# Generation Time: 2015-10-05 10:33:16 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `row_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `row_order`)
VALUES
	(1,'Art + Culture','2014-10-28 03:08:04','2015-10-01 17:33:08',-7789420),
	(2,'Commercials','2014-10-28 03:08:04','2015-10-01 17:35:30',5991863),
	(3,'Fashion + Beauty','2014-10-28 03:08:04','2015-10-01 17:33:11',-7489827),
	(4,'Features + Docs','2014-10-28 03:08:04','2014-10-28 03:08:04',-3595117),
	(5,'Music','2014-10-28 03:08:04','2014-10-28 03:08:04',-1198372),
	(6,'Web Series','2014-10-28 03:08:04','2015-10-01 17:33:16',3595118);

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table schema_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `schema_migrations`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;

INSERT INTO `schema_migrations` (`version`)
VALUES
	('20141019192533'),
	('20141026174751'),
	('20150930133434');

/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `unlock_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `failed_attempts`, `unlock_token`, `locked_at`, `created_at`, `updated_at`)
VALUES
	(1,'andy@andyeisberg.com','$2a$10$izmG/qP3ftfo0GLgS5DG9O3oPK0u3MkmRWtRIK9u9E30ahf.Tdc7K',NULL,NULL,NULL,4,'2015-10-01 18:03:15','2015-10-01 18:02:50','127.0.0.1','127.0.0.1',0,NULL,NULL,'2015-09-30 14:17:20','2015-10-01 18:03:15'),
	(4,'avivalasvegas@gmail.com','$2a$10$qRE5D6Uegb0ztRSABJ/M2ecaqFpxf9xFfpXXcNKpRBdO0GArrzJRe',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,NULL,NULL,'2015-10-05 10:32:41','2015-10-05 10:32:41');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table works
# ------------------------------------------------------------

DROP TABLE IF EXISTS `works`;

CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `still_code` int(11) DEFAULT NULL,
  `video_code` varchar(255) DEFAULT NULL,
  `description` text,
  `category_id` int(11) DEFAULT NULL,
  `host_id` int(11) DEFAULT NULL,
  `mobile` tinyint(1) DEFAULT NULL,
  `row_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `row_order` (`row_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;

INSERT INTO `works` (`id`, `title`, `still_code`, `video_code`, `description`, `category_id`, `host_id`, `mobile`, `row_order`, `created_at`, `updated_at`)
VALUES
	(11,'DIGITAL GRAFFITI',436809007,'65689737','',1,NULL,1,0,'2014-10-28 03:11:59','2015-10-01 17:03:46'),
	(12,'Body Editions',263408433,'38284909','',1,NULL,1,-4194303,'2014-10-28 03:12:06','2015-10-01 17:22:33'),
	(13,'Morgan Collett for Mr. B\'s',433364793,'29493016','ALDO Mr B\'s Gentlemen\'s Boutique \"Morgan Collett f...',2,NULL,1,-3355442,'2014-10-28 03:12:06','2015-10-01 17:09:29'),
	(14,'Brook Klausing for Mr. B\'s',433364966,'29044239','ALDO Mr B\'s Gentlemen\'s Boutique \"Brook Klausing f...',2,NULL,1,-5033164,'2014-10-28 03:12:06','2014-10-29 02:13:17'),
	(15,'D\'Addario NS Micro Tuner launch video',443158695,'70084576','D\'Addario NS Micro Tuner launch video',2,NULL,1,-6710885,'2014-10-28 03:12:07','2015-10-01 17:09:34'),
	(16,'A Symphony of Innovation',474338168,'91810493','D\'Addario presents \"A Symphony of Innovation\"',2,NULL,1,-1677721,'2014-10-28 03:12:07','2014-10-29 02:13:17'),
	(17,'La Demimondaine (Director\'s Cut)',160112200,'24439706','A short film directed by Sandro Suppnig\r\nEdited by ...',3,NULL,0,NULL,'2014-10-28 03:12:07','2014-10-29 02:26:51'),
	(18,'Candice Swanepoel',223677992,'32999658','Candice Swanepoel by Dan Jackson for LOVE Magazine',3,NULL,1,NULL,'2014-10-28 03:12:07','2014-10-29 02:13:17'),
	(19,'Catherine Malandrino La Nuit 2012',437040436,'39310322','',3,NULL,1,NULL,'2014-10-28 03:12:07','2014-10-29 02:32:03'),
	(20,'Danhier Movie',201929109,'30092982','',3,NULL,0,NULL,'2014-10-28 03:12:07','2014-10-29 02:17:43'),
	(21,'Christophe Danhier',494481207,'110288835','',3,NULL,0,NULL,'2014-10-28 03:12:07','2014-10-29 02:31:55'),
	(22,'Albright Goes to School',467370484,'88797883',NULL,3,NULL,1,NULL,'2014-10-28 03:12:08','2014-10-29 02:13:18'),
	(23,'BLANK CITY',436809622,'21412515','Directed by: Celine Danhier\r\nProduced by: Aviva Wishnow, Vanessa Roworth\r\nEdited by: Vanessa Roworth\r\nPremiered: Berlin 2011\r\nDistributor: Kino Lorber / Insurgent',4,NULL,1,NULL,'2014-10-28 03:12:08','2014-10-29 02:13:18'),
	(24,'The Punk Singer',494475693,'110282619','Directed by: Sini Anderson\r\nProducer: Rachel Dengiz\r\nPremiered: SXSW 2013\r\nDistributor: Sundance Selects / IFC',4,NULL,1,NULL,'2014-10-28 03:12:08','2014-10-29 15:25:09'),
	(25,'Medora',494468548,'110277827','Directed by: Andrew Cohn & Davy Rothbart \r\nProducer: Rachel Dengiz\r\nEditor: Vanessa Roworth\r\nPremiered: SXSW 2013\r\nDistributor: Beachside',4,NULL,1,NULL,'2014-10-28 03:12:08','2014-10-29 15:21:47'),
	(26,'Talk Normal \"COVER\"',350475148,'50412893',NULL,5,NULL,1,NULL,'2014-10-28 03:12:08','2014-10-29 02:13:18'),
	(27,'When the Curtain Comes Down',494473112,'110283138','Directed by: Jo Andres\r\nProducer: Rachel Dengiz',5,NULL,1,NULL,'2014-10-28 03:12:08','2014-10-29 02:13:18'),
	(28,'Backroom Students \"TAKE ME\"',350478456,'34645427','',5,NULL,0,NULL,'2014-10-28 03:12:08','2014-10-29 02:28:33'),
	(29,'Janka Nabay and the Bubu Gang -- \"Somebody\"',337910206,'48979333',NULL,5,NULL,1,NULL,'2014-10-28 03:12:08','2014-10-29 02:13:18'),
	(30,'Yeah Yeah Yeahs Mosquito Teaser 1',396698724,'57245714',NULL,5,NULL,1,NULL,'2014-10-28 03:12:08','2014-10-29 02:13:18'),
	(31,'Yeah Yeah Yeahs Mosquito Teaser 2',436809366,'59086410',NULL,5,NULL,1,0,'2014-10-28 03:12:08','2015-10-01 17:09:44'),
	(32,'Yeah Yeah Yeahs Mosquito Teaser 3',435039504,'62474863',NULL,5,NULL,1,NULL,'2014-10-28 03:12:09','2014-10-29 02:13:19'),
	(34,'The Raconteurs - Steady, As She Goes',494475769,'110284141','Directed by: Jim Jarmusch\r\nProduction Associate: Rachel Dengiz',5,NULL,1,NULL,'2014-10-28 03:12:09','2014-10-29 15:27:13'),
	(35,'Sophie Auster - Run Run Run',494473498,'110283439','',5,NULL,0,NULL,'2014-10-28 03:12:09','2014-10-29 02:26:14'),
	(36,'Bench Rivalry | Ep. 1 | Park Bench',NULL,'S3RYW54aCkg','Directed by: Steve Buscemi\r\nProduced by: Olive Productions and Radical Media\r\nCo-producer: Rachel Dengiz',6,2,0,NULL,'2014-10-28 03:12:11','2014-10-29 02:26:23'),
	(37,'LOVE Advent Calendar 2014 Day 2: Lily Aldridge directed by Daniel Jackson',500286129,'114568695','',3,NULL,1,NULL,'2015-01-16 20:26:51','2015-01-16 20:51:39'),
	(38,'LOVE Advent Calendar 2014 Day 6: Liu Wen directed by Daniel Jackson',503527521,'116983917','',3,NULL,1,NULL,'2015-01-16 20:46:42','2015-01-16 20:51:20'),
	(39,'LOVE Advent Calendar 2014 Day 9: Hailey Baldwin directed by Daniel Jackson ',503525533,'116981195','',3,NULL,1,NULL,'2015-01-16 20:53:52','2015-01-16 21:19:23'),
	(40,'LOVE Advent Calendar 2014 Day 22: Gigi Hadid directed by Daniel Jackson',503524668,'116981043','',3,NULL,1,NULL,'2015-01-16 20:56:02','2015-01-16 21:19:30'),
	(41,'LOVE Advent Calendar 2014 Day 24: Adriana Lima directed by Daniel Jackson',503525101,'116980773','',3,NULL,1,NULL,'2015-01-16 20:58:28','2015-01-16 21:19:34'),
	(42,'VERAMEAT Jewelry Holiday Promo',503528458,'115355034','',3,NULL,1,NULL,'2015-01-16 21:02:52','2015-01-16 21:19:38'),
	(43,'VOGUE China',503530489,'116985406','Behind the Scenes with Du Juan \r\nFebruary 2015 Issue ',3,NULL,1,NULL,'2015-01-16 21:05:25','2015-01-16 21:19:42');

/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
