# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.23-0ubuntu0.18.04.1)
# Database: theidol
# Generation Time: 2019-04-15 09:50:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

INSERT INTO `contacts` (`id`, `name`, `address`, `postcode`, `telephone`, `email`, `dob`, `created_at`, `updated_at`)
VALUES
	(1,'Aaron Morris','04 Joseph Parkway, Taylorchester','PE25 1AA','(0171) 6508359','emma60@example.net','1991-01-02','2019-04-15 09:21:22','2019-04-15 09:21:22'),
	(2,'Dennis Miller','4 Joshua Cape, Islamouth','W10 6DY','(03130) 51311','zmitchell@example.com','2001-05-04','2019-04-15 09:21:22','2019-04-15 09:21:22'),
	(3,'Elsie Ward','75 Ian Court, North Erinmouth','IP16 4UL','+44(0)2395 788118','saunders.olivia@example.net','1974-06-16','2019-04-15 09:21:22','2019-04-15 09:21:22'),
	(4,'Aiden Owen','559 Wood Corner, North Alicehaven','SP4 6JS','0816819241','mward@example.net','1978-09-19','2019-04-15 09:21:22','2019-04-15 09:21:22'),
	(5,'Laura Ellis','585 Cox Meadows, Maisiestad','BD9 4EF','+44(0)5455 716611','ijones@example.com','1943-03-22','2019-04-15 09:21:22','2019-04-15 09:21:22'),
	(6,'Selina Clark','Flat 63s\nReid Lodge, Port Adrianland','TS24 7QA','(0779) 8528663','emma.adams@example.org','1932-06-04','2019-04-15 09:21:22','2019-04-15 09:21:22'),
	(7,'Jodie Lee','26 Oliver Path, Whiteport','CW5 6QF','+44(0)3947 50594','joe.lloyd@example.org','2011-11-16','2019-04-15 09:21:22','2019-04-15 09:21:22'),
	(8,'Oliver Allen','95 Bethany Mills, Connorfort','G13 1XN','+44(0)7182 264215','duncan.davis@example.net','2013-05-15','2019-04-15 09:21:22','2019-04-15 09:21:22'),
	(9,'Samantha Baker','Studio 84o\nAbbie Loaf, Lake Kyle','PO14 4NH','02382 19291','caitlin.walsh@example.net','1924-11-03','2019-04-15 09:21:22','2019-04-15 09:21:22'),
	(10,'John Butler','210 Mohammed Highway, Priceburgh','TR10 8QN','(08261) 310671','ykennedy@example.net','1992-02-24','2019-04-15 09:21:22','2019-04-15 09:21:22');

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(34,'2014_10_12_000000_create_users_table',1),
	(35,'2014_10_12_100000_create_password_resets_table',1),
	(36,'2019_04_12_141318_create_contacts_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'Beth Bryers','bryersbeth@gmail.com',NULL,'$2y$10$R2bvu5b77l3thY2FNxOHl.qg3xcG4cRjo/29Fp01MVaCySH90bWni',NULL,'2019-04-15 09:21:22','2019-04-15 09:21:22');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
