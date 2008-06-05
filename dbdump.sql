-- MySQL dump 10.11
--
-- Host: localhost    Database: liberty_alabama_development
-- ------------------------------------------------------
-- Server version	5.0.51a-3ubuntu5.1

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
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(10) default NULL,
  `action` varchar(50) default NULL,
  `item_id` int(10) default NULL,
  `item_type` varchar(255) default NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,1,'logged_in',NULL,NULL,'2008-05-26 13:52:28'),(2,1,'logged_in',NULL,NULL,'2008-05-26 15:50:24');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `ads` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `html` text,
  `frequency` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `start_date` datetime default NULL,
  `end_date` datetime default NULL,
  `location` varchar(255) default NULL,
  `published` tinyint(1) default '0',
  `time_constrained` tinyint(1) default '0',
  `audience` varchar(255) default 'all',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL auto_increment,
  `filename` varchar(255) default NULL,
  `width` int(11) default NULL,
  `height` int(11) default NULL,
  `content_type` varchar(255) default NULL,
  `size` int(11) default NULL,
  `attachable_type` varchar(255) default NULL,
  `attachable_id` int(11) default NULL,
  `updated_at` datetime default NULL,
  `created_at` datetime default NULL,
  `thumbnail` varchar(255) default NULL,
  `parent_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `tips` text,
  `new_post_text` varchar(255) default NULL,
  `nav_text` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'How To',NULL,NULL,NULL),(2,'Inspiration',NULL,NULL,NULL),(3,'News',NULL,NULL,NULL),(4,'Questions',NULL,NULL,NULL),(5,'Talk',NULL,NULL,NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `choices`
--

DROP TABLE IF EXISTS `choices`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `choices` (
  `id` int(11) NOT NULL auto_increment,
  `poll_id` int(11) default NULL,
  `description` varchar(255) default NULL,
  `votes_count` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `choices`
--

LOCK TABLES `choices` WRITE;
/*!40000 ALTER TABLE `choices` DISABLE KEYS */;
/*!40000 ALTER TABLE `choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clippings`
--

DROP TABLE IF EXISTS `clippings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `clippings` (
  `id` int(11) NOT NULL auto_increment,
  `url` varchar(255) default NULL,
  `user_id` int(11) default NULL,
  `image_url` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `favorited_count` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `clippings`
--

LOCK TABLES `clippings` WRITE;
/*!40000 ALTER TABLE `clippings` DISABLE KEYS */;
/*!40000 ALTER TABLE `clippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) default '',
  `comment` text,
  `created_at` datetime NOT NULL,
  `commentable_id` int(11) NOT NULL default '0',
  `commentable_type` varchar(15) NOT NULL default '',
  `user_id` int(11) NOT NULL default '0',
  `recipient_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `fk_comments_user` (`user_id`),
  KEY `index_comments_on_recipient_id` (`recipient_id`),
  KEY `index_comments_on_created_at` (`created_at`),
  KEY `index_comments_on_commentable_type` (`commentable_type`),
  KEY `index_comments_on_commentable_id` (`commentable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contests`
--

DROP TABLE IF EXISTS `contests`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `contests` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `begin` datetime default NULL,
  `end` datetime default NULL,
  `raw_post` text,
  `post` text,
  `banner_title` varchar(255) default NULL,
  `banner_subtitle` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `contests`
--

LOCK TABLES `contests` WRITE;
/*!40000 ALTER TABLE `contests` DISABLE KEYS */;
/*!40000 ALTER TABLE `contests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `countries` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=220 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Abuja'),(2,'Afghanistan'),(3,'Akrotiri'),(4,'Albania'),(5,'Algeria'),(6,'American Samoa'),(7,'Andorra'),(8,'Angola'),(9,'Anguilla'),(10,'Antarctica'),(11,'Antigua'),(12,'Argentina'),(13,'Armenia'),(14,'Aruba'),(15,'Ashmore and Cartier Islands'),(16,'Australia'),(17,'Austria'),(18,'Azerbaijan'),(19,'Bahrain'),(20,'Bangladesh'),(21,'Barbados'),(22,'Belarus'),(23,'Belgium'),(24,'Belize'),(25,'Benin'),(26,'Bermuda'),(27,'Bhutan'),(28,'Bolivia'),(29,'Bosnia and Herzegovina'),(30,'Botswana'),(31,'Brazil'),(32,'British Virgin Islands'),(33,'Brunei'),(34,'Bulgaria'),(35,'Burkina Faso'),(36,'Burundi'),(37,'Cambodia'),(38,'Cameroon'),(39,'Cape Verde'),(40,'Cayman Islands'),(41,'Central African Republic'),(42,'Chad'),(43,'Chile'),(44,'China'),(45,'Colombia'),(46,'Comoros'),(47,'Costa Rica'),(48,'Cote d\'Ivoire'),(49,'Croatia'),(50,'Cuba'),(51,'Curacao'),(52,'Cyprus'),(53,'Czech Republic'),(54,'Democratic Republic Congo'),(55,'Denmark'),(56,'Djibouti'),(57,'Dominica'),(58,'Dominican Republic'),(59,'Ecuador'),(60,'Egypt'),(61,'El Salvador'),(62,'Equatorial Guinea'),(63,'Eritrea'),(64,'Estonia'),(65,'Ethiopia'),(66,'Falkland Islands'),(67,'Faroe Islands'),(68,'Federated States of Micronesia'),(69,'Fiji'),(70,'Finland'),(71,'France'),(72,'French Guiana'),(73,'French Polynesia'),(74,'Gabon'),(75,'Georgia'),(76,'Germany'),(77,'Ghana'),(78,'Gibraltar'),(79,'Greece'),(80,'Greenland'),(81,'Grenada'),(82,'Guatemala'),(83,'Guinea'),(84,'Guinea-Bissau'),(85,'Guyana'),(86,'Haiti'),(87,'Honduras'),(88,'Hong Kong'),(89,'Hungary'),(90,'Iceland'),(91,'India'),(92,'Indonesia'),(93,'Iran'),(94,'Iraq'),(95,'Ireland'),(96,'Israel'),(97,'Italy'),(98,'Jamaica'),(99,'Japan'),(100,'Jordan'),(101,'Kazakhstan'),(102,'Kenya'),(103,'Kiribati'),(104,'Kuwait'),(105,'Kyrgyzstan'),(106,'Lagos'),(107,'Latvia'),(108,'Lebanon'),(109,'Lesotho'),(110,'Liberia'),(111,'Libya'),(112,'Liechtenstein'),(113,'Lithuania'),(114,'Luxembourg'),(115,'Macau'),(116,'Macedonia'),(117,'Madagascar'),(118,'Malawi'),(119,'Malaysia'),(120,'Maldives'),(121,'Mali'),(122,'Malta'),(123,'Marshall Islands'),(124,'Martinique'),(125,'Mauritania'),(126,'Mauritius'),(127,'Mexico'),(128,'Moldova'),(129,'Monaco'),(130,'Mongolia'),(131,'Morocco'),(132,'Mozambique'),(133,'Myanmar'),(134,'Namibia'),(135,'Nauru'),(136,'Nepal'),(137,'Netherlands'),(138,'Netherlands Antilles'),(139,'New Zealand'),(140,'Nicaragua'),(141,'Niger'),(142,'Nigeria'),(143,'North Korea'),(144,'Northern Ireland'),(145,'Northern Mariana Islands'),(146,'Norway'),(147,'Oman'),(148,'Pakistan'),(149,'Palau'),(150,'Panama'),(151,'Papua New Guinea'),(152,'Paraguay'),(153,'Peru'),(154,'Philippines'),(155,'Poland'),(156,'Portugal'),(157,'Qatar'),(158,'Republic of the Congo'),(159,'Romania'),(160,'Russia'),(161,'Rwanda'),(162,'Saint Kitts and Nevis'),(163,'Saint Vincent and the Grenadines'),(164,'Samoa'),(165,'San Marino'),(166,'Sao Tome and Principe'),(167,'Saudi Arabia'),(168,'Senegal'),(169,'Serbia and Montenegro'),(170,'Seychelles'),(171,'Sierra Leone'),(172,'Singapore'),(173,'Slovakia'),(174,'Slovenia'),(175,'Solomon Islands'),(176,'Somalia'),(177,'South Africa'),(178,'South Korea'),(179,'Spain'),(180,'Sri Lanka'),(181,'St. Lucia'),(182,'Sudan'),(183,'Suriname'),(184,'Swaziland'),(185,'Sweden'),(186,'Switzerland'),(187,'Syria'),(188,'Taiwan'),(189,'Tajikistan'),(190,'Tanzania'),(191,'Thailand'),(192,'The Bahamas'),(193,'The Gambia'),(194,'Timor-Leste'),(195,'Togo'),(196,'Tonga'),(197,'Trinidad and Tobago'),(198,'Tunisia'),(199,'Turkey'),(200,'Turkmenistan'),(201,'Tuvalu'),(202,'US Virgin Islands'),(203,'Uganda'),(204,'Ukraine'),(205,'United Arab Emirates'),(206,'United Kingdom'),(207,'United States'),(208,'Uruguay'),(209,'Uzbekistan'),(210,'Vanuatu'),(211,'Vatican City'),(212,'Venezuela'),(213,'Vietnam'),(214,'Wales'),(215,'West Bank and Gaza'),(216,'Western Sahara'),(217,'Yemen'),(218,'Zambia'),(219,'Zimbabwe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `events` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `user_id` int(11) default NULL,
  `start_time` datetime default NULL,
  `end_time` datetime default NULL,
  `description` text,
  `metro_area_id` int(11) default NULL,
  `location` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `favorites` (
  `id` int(11) NOT NULL auto_increment,
  `updated_at` datetime default NULL,
  `created_at` datetime default NULL,
  `favoritable_type` varchar(255) default NULL,
  `favoritable_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `ip_address` varchar(255) default '',
  PRIMARY KEY  (`id`),
  KEY `fk_favorites_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forums`
--

DROP TABLE IF EXISTS `forums`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `forums` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `topics_count` int(11) default '0',
  `sb_posts_count` int(11) default '0',
  `position` int(11) default NULL,
  `description_html` text,
  `owner_type` varchar(255) default NULL,
  `owner_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `forums`
--

LOCK TABLES `forums` WRITE;
/*!40000 ALTER TABLE `forums` DISABLE KEYS */;
/*!40000 ALTER TABLE `forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendship_statuses`
--

DROP TABLE IF EXISTS `friendship_statuses`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `friendship_statuses` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `friendship_statuses`
--

LOCK TABLES `friendship_statuses` WRITE;
/*!40000 ALTER TABLE `friendship_statuses` DISABLE KEYS */;
INSERT INTO `friendship_statuses` VALUES (1,'pending'),(2,'accepted'),(3,'denied');
/*!40000 ALTER TABLE `friendship_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friendships`
--

DROP TABLE IF EXISTS `friendships`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `friendships` (
  `id` int(11) NOT NULL auto_increment,
  `friend_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `initiator` tinyint(1) default '0',
  `created_at` datetime default NULL,
  `friendship_status_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_friendships_on_user_id` (`user_id`),
  KEY `index_friendships_on_friendship_status_id` (`friendship_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `friendships`
--

LOCK TABLES `friendships` WRITE;
/*!40000 ALTER TABLE `friendships` DISABLE KEYS */;
/*!40000 ALTER TABLE `friendships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homepage_features`
--

DROP TABLE IF EXISTS `homepage_features`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `homepage_features` (
  `id` int(11) NOT NULL auto_increment,
  `created_at` datetime default NULL,
  `url` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `description` text,
  `updated_at` datetime default NULL,
  `content_type` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `parent_id` int(11) default NULL,
  `thumbnail` varchar(255) default NULL,
  `size` int(11) default NULL,
  `width` int(11) default NULL,
  `height` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `homepage_features`
--

LOCK TABLES `homepage_features` WRITE;
/*!40000 ALTER TABLE `homepage_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `homepage_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitations`
--

DROP TABLE IF EXISTS `invitations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `invitations` (
  `id` int(11) NOT NULL auto_increment,
  `email_addresses` varchar(255) default NULL,
  `message` varchar(255) default NULL,
  `user_id` varchar(255) default NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `invitations`
--

LOCK TABLES `invitations` WRITE;
/*!40000 ALTER TABLE `invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metro_areas`
--

DROP TABLE IF EXISTS `metro_areas`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `metro_areas` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `state_id` int(11) default NULL,
  `country_id` int(11) default NULL,
  `users_count` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `metro_areas`
--

LOCK TABLES `metro_areas` WRITE;
/*!40000 ALTER TABLE `metro_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `metro_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moderatorships`
--

DROP TABLE IF EXISTS `moderatorships`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `moderatorships` (
  `id` int(11) NOT NULL auto_increment,
  `forum_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_moderatorships_on_forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `moderatorships`
--

LOCK TABLES `moderatorships` WRITE;
/*!40000 ALTER TABLE `moderatorships` DISABLE KEYS */;
/*!40000 ALTER TABLE `moderatorships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitorships`
--

DROP TABLE IF EXISTS `monitorships`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `monitorships` (
  `id` int(11) NOT NULL auto_increment,
  `topic_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `active` tinyint(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `monitorships`
--

LOCK TABLES `monitorships` WRITE;
/*!40000 ALTER TABLE `monitorships` DISABLE KEYS */;
/*!40000 ALTER TABLE `monitorships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offerings`
--

DROP TABLE IF EXISTS `offerings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `offerings` (
  `id` int(11) NOT NULL auto_increment,
  `skill_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `offerings`
--

LOCK TABLES `offerings` WRITE;
/*!40000 ALTER TABLE `offerings` DISABLE KEYS */;
/*!40000 ALTER TABLE `offerings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `photos` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `description` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `user_id` int(11) default NULL,
  `content_type` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `size` int(11) default NULL,
  `parent_id` int(11) default NULL,
  `thumbnail` varchar(255) default NULL,
  `width` int(11) default NULL,
  `height` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_photos_on_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_schema_info`
--

DROP TABLE IF EXISTS `plugin_schema_info`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `plugin_schema_info` (
  `plugin_name` varchar(255) default NULL,
  `version` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `plugin_schema_info`
--

LOCK TABLES `plugin_schema_info` WRITE;
/*!40000 ALTER TABLE `plugin_schema_info` DISABLE KEYS */;
INSERT INTO `plugin_schema_info` VALUES ('community_engine',55);
/*!40000 ALTER TABLE `plugin_schema_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls`
--

DROP TABLE IF EXISTS `polls`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `polls` (
  `id` int(11) NOT NULL auto_increment,
  `question` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `post_id` int(11) default NULL,
  `votes_count` int(11) default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `polls`
--

LOCK TABLES `polls` WRITE;
/*!40000 ALTER TABLE `polls` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL auto_increment,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `raw_post` text,
  `post` text,
  `title` varchar(255) default NULL,
  `category_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `view_count` int(11) default '0',
  `contest_id` int(11) default NULL,
  `emailed_count` int(11) default '0',
  `favorited_count` int(11) default '0',
  `published_as` varchar(16) default 'draft',
  `published_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_posts_on_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sb_posts`
--

DROP TABLE IF EXISTS `sb_posts`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sb_posts` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `topic_id` int(11) default NULL,
  `body` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `forum_id` int(11) default NULL,
  `body_html` text,
  PRIMARY KEY  (`id`),
  KEY `index_posts_on_forum_id` (`forum_id`,`created_at`),
  KEY `index_posts_on_user_id` (`user_id`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sb_posts`
--

LOCK TABLES `sb_posts` WRITE;
/*!40000 ALTER TABLE `sb_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sb_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_info`
--

DROP TABLE IF EXISTS `schema_info`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schema_info` (
  `version` int(11) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schema_info`
--

LOCK TABLES `schema_info` WRITE;
/*!40000 ALTER TABLE `schema_info` DISABLE KEYS */;
INSERT INTO `schema_info` VALUES (4);
/*!40000 ALTER TABLE `schema_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL auto_increment,
  `data` text,
  `updated_at` datetime default NULL,
  `created_at` datetime default NULL,
  `session_id` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,'BAh7BiIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNo\nSGFzaHsABjoKQHVzZWR7AA==\n','2008-05-25 15:30:15','2008-05-25 15:30:12','ee056b82d34f8aab216084fd1d88777f'),(2,'BAh7BiIKZmxhc2hJQzonQWN0aW9uQ29udHJvbGxlcjo6Rmxhc2g6OkZsYXNo\nSGFzaHsABjoKQHVzZWR7AA==\n','2008-05-26 09:24:37','2008-05-26 08:54:27','1425c9a3768fd1aafcf7ecd65b32c311'),(3,'BAh7CzoLdG9waWNzewA6CXVzZXJpBjoOcmV0dXJuX3RvIhcva25ld3Rlci9k\nYXNoYm9hcmQiCmZsYXNoSUM6J0FjdGlvbkNvbnRyb2xsZXI6OkZsYXNoOjpG\nbGFzaEhhc2h7AAY6CkB1c2VkewA6EGxhc3RfYWN0aXZldToJVGltZQ1XExuA\nAADA0ToLZm9ydW1zQAY=\n','2008-05-26 15:50:25','2008-05-26 15:15:10','1c8db841cb407fbb580454a7a1f01815'),(4,'BAh7CjoQbGFzdF9hY3RpdmV1OglUaW1lDWETG4AAAIDJOgt0b3BpY3N7ADoJ\ndXNlcmkGIgpmbGFzaElDOidBY3Rpb25Db250cm9sbGVyOjpGbGFzaDo6Rmxh\nc2hIYXNoewAGOgpAdXNlZHsAOgtmb3J1bXNABw==\n','2008-05-28 07:43:02','2008-05-27 18:45:39','ba212d9d2bbd332f88be487c4d3c5cb1'),(5,'BAh7CjoQbGFzdF9hY3RpdmV1OglUaW1lDYQTG4AAAAC2Ogt0b3BpY3N7ADoJ\ndXNlcmkGIgpmbGFzaElDOidBY3Rpb25Db250cm9sbGVyOjpGbGFzaDo6Rmxh\nc2hIYXNoewAGOgpAdXNlZHsAOgtmb3J1bXNABw==\n','2008-05-28 21:31:25','2008-05-28 21:15:01','006c86c0cac97326f7e422f2f81a4507');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `skills` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `states` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'AL'),(2,'AK'),(3,'AZ'),(4,'AR'),(5,'CA'),(6,'CO'),(7,'CT'),(8,'DE'),(9,'DC'),(10,'FL'),(11,'GA'),(12,'HI'),(13,'ID'),(14,'IL'),(15,'IN'),(16,'IA'),(17,'KS'),(18,'KY'),(19,'LA'),(20,'ME'),(21,'MD'),(22,'MA'),(23,'MI'),(24,'MN'),(25,'MS'),(26,'MO'),(27,'MT'),(28,'NE'),(29,'NV'),(30,'NH'),(31,'NJ'),(32,'NM'),(33,'NY'),(34,'NC'),(35,'ND'),(36,'OH'),(37,'OK'),(38,'OR'),(39,'PA'),(40,'RI'),(41,'SC'),(42,'SD'),(43,'TN'),(44,'TX'),(45,'UT'),(46,'VT'),(47,'VA'),(48,'WA'),(49,'WV'),(50,'WI'),(51,'WY');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL auto_increment,
  `tag_id` int(11) default NULL,
  `taggable_id` int(11) default NULL,
  `taggable_type` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_type` (`taggable_type`),
  KEY `index_taggings_on_taggable_id` (`taggable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `topics` (
  `id` int(11) NOT NULL auto_increment,
  `forum_id` int(11) default NULL,
  `user_id` int(11) default NULL,
  `title` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `hits` int(11) default '0',
  `sticky` int(11) default '0',
  `sb_posts_count` int(11) default '0',
  `replied_at` datetime default NULL,
  `locked` tinyint(1) default '0',
  `replied_by` int(11) default NULL,
  `last_post_id` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_topics_on_forum_id` (`forum_id`),
  KEY `index_topics_on_sticky_and_replied_at` (`forum_id`,`sticky`,`replied_at`),
  KEY `index_topics_on_forum_id_and_replied_at` (`forum_id`,`replied_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `description` text,
  `avatar_id` int(11) default NULL,
  `crypted_password` varchar(40) default NULL,
  `salt` varchar(40) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `remember_token` varchar(255) default NULL,
  `remember_token_expires_at` datetime default NULL,
  `stylesheet` text,
  `view_count` int(11) default '0',
  `admin` tinyint(1) default '0',
  `vendor` tinyint(1) default '0',
  `activation_code` varchar(40) default NULL,
  `activated_at` datetime default NULL,
  `state_id` int(11) default NULL,
  `metro_area_id` int(11) default NULL,
  `login_slug` varchar(255) default NULL,
  `notify_comments` tinyint(1) default '1',
  `notify_friend_requests` tinyint(1) default '1',
  `notify_community_news` tinyint(1) default '1',
  `country_id` int(11) default NULL,
  `featured_writer` tinyint(1) default '0',
  `last_login_at` datetime default NULL,
  `zip` varchar(255) default NULL,
  `birthday` date default NULL,
  `gender` varchar(255) default NULL,
  `profile_public` tinyint(1) default '1',
  `activities_count` int(11) default '0',
  `sb_posts_count` int(11) default '0',
  `sb_last_seen_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_users_on_avatar_id` (`avatar_id`),
  KEY `index_users_on_featured_writer` (`featured_writer`),
  KEY `index_users_on_activated_at` (`activated_at`),
  KEY `index_users_on_vendor` (`vendor`),
  KEY `index_users_on_login_slug` (`login_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'knewter','knewter@gmail.com',NULL,NULL,'ea135ad751fe34c4538d1f8c211d0ccf6b4cd6df','b9a208ff67f7f77d7384340ae0748f271e28a172','2008-05-26 13:52:11','2008-05-28 21:15:00','73427a62a27c2e91538c16043d6c48992c838c7e','2008-06-12 02:15:00',NULL,0,1,0,NULL,'2008-05-26 18:52:13',NULL,NULL,'knewter',1,1,1,NULL,0,'2008-05-26 15:50:24',NULL,'1983-05-26',NULL,1,2,0,'2008-05-29 02:15:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votes`
--

DROP TABLE IF EXISTS `votes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(255) default NULL,
  `poll_id` int(11) default NULL,
  `choice_id` int(11) default NULL,
  `created_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `votes`
--

LOCK TABLES `votes` WRITE;
/*!40000 ALTER TABLE `votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_page_versions`
--

DROP TABLE IF EXISTS `wiki_page_versions`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `wiki_page_versions` (
  `id` int(11) NOT NULL auto_increment,
  `wiki_page_id` int(11) default NULL,
  `version` int(11) default NULL,
  `slug` varchar(255) default NULL,
  `body` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `wiki_page_versions`
--

LOCK TABLES `wiki_page_versions` WRITE;
/*!40000 ALTER TABLE `wiki_page_versions` DISABLE KEYS */;
INSERT INTO `wiki_page_versions` VALUES (1,3,1,'index','h2. This is a test\r\n\r\nJust trying out the textile based wiki...\r\n\r\nThis should link [AnotherPage]','2008-05-26 09:47:42','2008-05-27 19:18:24'),(2,3,2,'index','asdfasd','2008-05-26 09:47:42','2008-05-27 19:18:41');
/*!40000 ALTER TABLE `wiki_page_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `wiki_pages` (
  `id` int(11) NOT NULL auto_increment,
  `slug` varchar(255) default NULL,
  `body` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `version` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `wiki_pages`
--

LOCK TABLES `wiki_pages` WRITE;
/*!40000 ALTER TABLE `wiki_pages` DISABLE KEYS */;
INSERT INTO `wiki_pages` VALUES (2,'foo','','2008-05-26 09:08:17','2008-05-26 09:08:17',NULL),(3,'index','asdfasd','2008-05-26 09:47:42','2008-05-27 19:18:41',2),(4,'3','== This is a test ==\r\n\r\nJust playing around','2008-05-26 09:58:12','2008-05-26 10:09:04',NULL),(5,'','.h2 This is another page\r\n\r\nBoogie','2008-05-26 10:46:45','2008-05-26 10:46:45',NULL),(6,'AnotherPage','Testings','2008-05-26 10:47:02','2008-05-26 12:43:49',NULL),(7,'6','','2008-05-26 11:03:59','2008-05-26 11:03:59',NULL);
/*!40000 ALTER TABLE `wiki_pages` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2008-06-05  1:26:30
