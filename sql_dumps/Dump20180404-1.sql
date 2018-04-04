-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: keblar
-- ------------------------------------------------------
-- Server version	5.5.59

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can use Structure mode',1,'use_structure'),(2,'Can change page',2,'change_page'),(3,'Can add group',3,'add_group'),(4,'Can change group',3,'change_group'),(5,'Can delete group',3,'delete_group'),(6,'Can add permission',4,'add_permission'),(7,'Can change permission',4,'change_permission'),(8,'Can delete permission',4,'delete_permission'),(9,'Can add user',5,'add_user'),(10,'Can change user',5,'change_user'),(11,'Can delete user',5,'delete_user'),(12,'Can add content type',6,'add_contenttype'),(13,'Can change content type',6,'change_contenttype'),(14,'Can delete content type',6,'delete_contenttype'),(15,'Can add session',7,'add_session'),(16,'Can change session',7,'change_session'),(17,'Can delete session',7,'delete_session'),(18,'Can add log entry',8,'add_logentry'),(19,'Can change log entry',8,'change_logentry'),(20,'Can delete log entry',8,'delete_logentry'),(21,'Can add site',9,'add_site'),(22,'Can change site',9,'change_site'),(23,'Can delete site',9,'delete_site'),(24,'Can add placeholder',1,'add_placeholder'),(25,'Can change placeholder',1,'change_placeholder'),(26,'Can delete placeholder',1,'delete_placeholder'),(27,'Can add urlconf revision',10,'add_urlconfrevision'),(28,'Can change urlconf revision',10,'change_urlconfrevision'),(29,'Can delete urlconf revision',10,'delete_urlconfrevision'),(30,'Can add page',2,'add_page'),(31,'Can delete page',2,'delete_page'),(32,'Can view page',2,'view_page'),(33,'Can publish page',2,'publish_page'),(34,'Can edit static placeholders',2,'edit_static_placeholder'),(35,'Can add cms plugin',11,'add_cmsplugin'),(36,'Can change cms plugin',11,'change_cmsplugin'),(37,'Can delete cms plugin',11,'delete_cmsplugin'),(38,'Can add User group (page)',12,'add_pageusergroup'),(39,'Can change User group (page)',12,'change_pageusergroup'),(40,'Can delete User group (page)',12,'delete_pageusergroup'),(41,'Can add static placeholder',13,'add_staticplaceholder'),(42,'Can change static placeholder',13,'change_staticplaceholder'),(43,'Can delete static placeholder',13,'delete_staticplaceholder'),(44,'Can add Page permission',14,'add_pagepermission'),(45,'Can change Page permission',14,'change_pagepermission'),(46,'Can delete Page permission',14,'delete_pagepermission'),(47,'Can add title',15,'add_title'),(48,'Can change title',15,'change_title'),(49,'Can delete title',15,'delete_title'),(50,'Can add user setting',16,'add_usersettings'),(51,'Can change user setting',16,'change_usersettings'),(52,'Can delete user setting',16,'delete_usersettings'),(53,'Can add Page global permission',17,'add_globalpagepermission'),(54,'Can change Page global permission',17,'change_globalpagepermission'),(55,'Can delete Page global permission',17,'delete_globalpagepermission'),(56,'Can add placeholder reference',19,'add_placeholderreference'),(57,'Can change placeholder reference',19,'change_placeholderreference'),(58,'Can delete placeholder reference',19,'delete_placeholderreference'),(59,'Can add User (page)',20,'add_pageuser'),(60,'Can change User (page)',20,'change_pageuser'),(61,'Can delete User (page)',20,'delete_pageuser'),(62,'Can add alias plugin model',21,'add_aliaspluginmodel'),(63,'Can change alias plugin model',21,'change_aliaspluginmodel'),(64,'Can delete alias plugin model',21,'delete_aliaspluginmodel'),(65,'Can add cache key',23,'add_cachekey'),(66,'Can change cache key',23,'change_cachekey'),(67,'Can delete cache key',23,'delete_cachekey'),(68,'Can add text',24,'add_text'),(69,'Can change text',24,'change_text'),(70,'Can delete text',24,'delete_text'),(71,'Can add file',25,'add_file'),(72,'Can change file',25,'change_file'),(73,'Can delete file',25,'delete_file'),(74,'Can add Folder',26,'add_folder'),(75,'Can change Folder',26,'change_folder'),(76,'Can delete Folder',26,'delete_folder'),(77,'Can use directory listing',26,'can_use_directory_listing'),(78,'Can add thumbnail option',27,'add_thumbnailoption'),(79,'Can change thumbnail option',27,'change_thumbnailoption'),(80,'Can delete thumbnail option',27,'delete_thumbnailoption'),(81,'Can add clipboard item',28,'add_clipboarditem'),(82,'Can change clipboard item',28,'change_clipboarditem'),(83,'Can delete clipboard item',28,'delete_clipboarditem'),(84,'Can add clipboard',29,'add_clipboard'),(85,'Can change clipboard',29,'change_clipboard'),(86,'Can delete clipboard',29,'delete_clipboard'),(87,'Can add folder permission',30,'add_folderpermission'),(88,'Can change folder permission',30,'change_folderpermission'),(89,'Can delete folder permission',30,'delete_folderpermission'),(90,'Can add image',31,'add_image'),(91,'Can change image',31,'change_image'),(92,'Can delete image',31,'delete_image'),(93,'Can add source',32,'add_source'),(94,'Can change source',32,'change_source'),(95,'Can delete source',32,'delete_source'),(96,'Can add thumbnail',33,'add_thumbnail'),(97,'Can change thumbnail',33,'change_thumbnail'),(98,'Can delete thumbnail',33,'delete_thumbnail'),(99,'Can add thumbnail dimensions',34,'add_thumbnaildimensions'),(100,'Can change thumbnail dimensions',34,'change_thumbnaildimensions'),(101,'Can delete thumbnail dimensions',34,'delete_thumbnaildimensions'),(102,'Can add multi columns',35,'add_multicolumns'),(103,'Can change multi columns',35,'change_multicolumns'),(104,'Can delete multi columns',35,'delete_multicolumns'),(105,'Can add column',36,'add_column'),(106,'Can change column',36,'change_column'),(107,'Can delete column',36,'delete_column'),(108,'Can add file',37,'add_file'),(109,'Can change file',37,'change_file'),(110,'Can delete file',37,'delete_file'),(111,'Can add folder',38,'add_folder'),(112,'Can change folder',38,'change_folder'),(113,'Can delete folder',38,'delete_folder'),(114,'Can add link',39,'add_link'),(115,'Can change link',39,'change_link'),(116,'Can delete link',39,'delete_link'),(117,'Can add picture',40,'add_picture'),(118,'Can change picture',40,'change_picture'),(119,'Can delete picture',40,'delete_picture'),(120,'Can add style',41,'add_style'),(121,'Can change style',41,'change_style'),(122,'Can delete style',41,'delete_style'),(123,'Can add Snippet',42,'add_snippet'),(124,'Can change Snippet',42,'change_snippet'),(125,'Can delete Snippet',42,'delete_snippet'),(126,'Can add Snippet',43,'add_snippetptr'),(127,'Can change Snippet',43,'change_snippetptr'),(128,'Can delete Snippet',43,'delete_snippetptr'),(129,'Can add google map route',44,'add_googlemaproute'),(130,'Can change google map route',44,'change_googlemaproute'),(131,'Can delete google map route',44,'delete_googlemaproute'),(132,'Can add google map',45,'add_googlemap'),(133,'Can change google map',45,'change_googlemap'),(134,'Can delete google map',45,'delete_googlemap'),(135,'Can add google map marker',46,'add_googlemapmarker'),(136,'Can change google map marker',46,'change_googlemapmarker'),(137,'Can delete google map marker',46,'delete_googlemapmarker'),(138,'Can add video player',47,'add_videoplayer'),(139,'Can change video player',47,'change_videoplayer'),(140,'Can delete video player',47,'delete_videoplayer'),(141,'Can add video source',48,'add_videosource'),(142,'Can change video source',48,'change_videosource'),(143,'Can delete video source',48,'delete_videosource'),(144,'Can add video track',49,'add_videotrack'),(145,'Can change video track',49,'change_videotrack'),(146,'Can delete video track',49,'delete_videotrack'),(147,'Can add Tab list',50,'add_cmstabslist'),(148,'Can change Tab list',50,'change_cmstabslist'),(149,'Can delete Tab list',50,'delete_cmstabslist'),(150,'Can add Tab',51,'add_cmssingletab'),(151,'Can change Tab',51,'change_cmssingletab'),(152,'Can delete Tab',51,'delete_cmssingletab'),(153,'Can add poll',52,'add_poll'),(154,'Can change poll',52,'change_poll'),(155,'Can delete poll',52,'delete_poll'),(156,'Can add choice',53,'add_choice'),(157,'Can change choice',53,'change_choice'),(158,'Can delete choice',53,'delete_choice'),(159,'Can add poll plugin model',54,'add_pollpluginmodel'),(160,'Can change poll plugin model',54,'change_pollpluginmodel'),(161,'Can delete poll plugin model',54,'delete_pollpluginmodel');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$11KU7LpNbc1w$NWHK7nUmSliJ4bOc5KHXoD5EQVt97C6Fj8MibGTOwd8=','2018-04-04 11:18:47',1,'admin','','','admin@keblar.com',1,1,'2018-04-04 10:43:51');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_aliaspluginmodel`
--

DROP TABLE IF EXISTS `cms_aliaspluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_aliaspluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  `alias_placeholder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` (`alias_placeholder_id`),
  KEY `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` (`plugin_id`),
  CONSTRAINT `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` FOREIGN KEY (`alias_placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_aliaspluginmodel`
--

LOCK TABLES `cms_aliaspluginmodel` WRITE;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cmsplugin`
--

DROP TABLE IF EXISTS `cms_cmsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` smallint(5) unsigned NOT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime NOT NULL,
  `changed_date` datetime NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `placeholder_id` int(11) DEFAULT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_cmsplugin_path_4917bb44_uniq` (`path`),
  KEY `cms_cmsplugin_language_bbea8a48` (`language`),
  KEY `cms_cmsplugin_plugin_type_94e96ebf` (`plugin_type`),
  KEY `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` (`placeholder_id`),
  KEY `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` (`parent_id`),
  CONSTRAINT `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cmsplugin`
--

LOCK TABLES `cms_cmsplugin` WRITE;
/*!40000 ALTER TABLE `cms_cmsplugin` DISABLE KEYS */;
INSERT INTO `cms_cmsplugin` VALUES (1,0,'en','TextPlugin','2018-04-04 10:46:33','2018-04-04 10:46:33',NULL,2,1,0,'0001'),(2,1,'en','TextPlugin','2018-04-04 11:01:59','2018-04-04 11:18:58',NULL,2,1,0,'0002'),(3,0,'en','TextPlugin','2018-04-04 11:02:30','2018-04-04 11:19:38',NULL,3,1,0,'0003'),(4,0,'en','TextPlugin','2018-04-04 11:02:58','2018-04-04 11:03:02',NULL,4,1,0,'0004'),(5,0,'en','TextPlugin','2018-04-04 11:03:21','2018-04-04 11:19:46',NULL,5,1,0,'0005'),(6,0,'en','PicturePlugin','2018-04-04 11:04:25','2018-04-04 11:04:25',NULL,6,1,0,'0006'),(7,0,'en','PicturePlugin','2018-04-04 11:04:37','2018-04-04 11:04:37',NULL,7,1,0,'0007'),(8,0,'en','TextPlugin','2018-04-04 11:04:56','2018-04-04 11:21:29',NULL,8,1,0,'0008'),(9,1,'en','CMSTabsListPlugin','2018-04-04 11:05:09','2018-04-04 11:05:45',NULL,8,1,2,'0009'),(10,0,'en','CMSSingleTabPlugin','2018-04-04 11:05:51','2018-04-04 11:05:51',9,8,2,2,'00090001'),(11,0,'en','TextPlugin','2018-04-04 11:07:03','2018-04-04 11:07:07',10,8,3,0,'000900010001'),(12,1,'en','CMSTabsListPlugin','2018-04-04 11:07:16','2018-04-04 11:07:16',10,8,3,3,'000900010002'),(13,0,'en','CMSSingleTabPlugin','2018-04-04 11:07:57','2018-04-04 11:07:57',12,8,4,0,'0009000100020001'),(14,1,'en','CMSSingleTabPlugin','2018-04-04 11:08:22','2018-04-04 11:08:22',12,8,4,0,'0009000100020002'),(15,2,'en','CMSSingleTabPlugin','2018-04-04 11:08:38','2018-04-04 11:08:38',12,8,4,0,'0009000100020003'),(16,1,'en','CMSSingleTabPlugin','2018-04-04 11:09:06','2018-04-04 11:09:06',9,8,2,2,'00090002'),(17,0,'en','TextPlugin','2018-04-04 11:09:15','2018-04-04 11:09:15',16,8,3,0,'000900020001'),(18,1,'en','TextPlugin','2018-04-04 11:09:52','2018-04-04 12:00:02',16,8,3,0,'000900020002'),(19,0,'en','TextPlugin','2018-04-04 11:13:15','2018-04-04 11:21:39',NULL,9,1,0,'000A'),(20,1,'en','MultiColumnPlugin','2018-04-04 11:13:59','2018-04-04 11:13:59',NULL,9,1,2,'000B'),(21,0,'en','ColumnPlugin','2018-04-04 11:13:59','2018-04-04 11:14:07',20,9,2,2,'000B0001'),(22,1,'en','ColumnPlugin','2018-04-04 11:13:59','2018-04-04 11:13:59',20,9,2,1,'000B0002'),(23,0,'en','TextPlugin','2018-04-04 11:14:15','2018-04-04 11:14:15',21,9,3,0,'000B00010001'),(24,1,'en','TextPlugin','2018-04-04 11:16:05','2018-04-04 11:16:08',21,9,3,0,'000B00010002'),(25,0,'en','PicturePlugin','2018-04-04 11:16:23','2018-04-04 11:16:23',22,9,3,0,'000B00020001'),(26,2,'en','TextPlugin','2018-04-04 11:16:32','2018-04-04 11:16:43',NULL,9,1,0,'000C'),(27,3,'en','MultiColumnPlugin','2018-04-04 11:17:01','2018-04-04 11:17:01',NULL,9,1,4,'000D'),(28,0,'en','ColumnPlugin','2018-04-04 11:17:01','2018-04-04 11:17:01',27,9,2,1,'000D0001'),(29,1,'en','ColumnPlugin','2018-04-04 11:17:01','2018-04-04 11:17:01',27,9,2,1,'000D0002'),(30,2,'en','ColumnPlugin','2018-04-04 11:17:01','2018-04-04 11:17:01',27,9,2,1,'000D0003'),(31,3,'en','ColumnPlugin','2018-04-04 11:17:01','2018-04-04 11:17:01',27,9,2,1,'000D0004'),(32,0,'en','PicturePlugin','2018-04-04 11:17:12','2018-04-04 11:17:12',28,9,3,0,'000D00010001'),(33,0,'en','PicturePlugin','2018-04-04 11:17:21','2018-04-04 11:17:21',29,9,3,0,'000D00020001'),(34,0,'en','PicturePlugin','2018-04-04 11:17:33','2018-04-04 11:17:33',30,9,3,0,'000D00030001'),(35,0,'en','PicturePlugin','2018-04-04 11:17:43','2018-04-04 11:17:43',31,9,3,0,'000D00040001'),(36,0,'en','TextPlugin','2018-04-04 11:17:59','2018-04-04 11:19:18',NULL,10,1,0,'000E'),(235,1,'en','TextPlugin','2018-04-04 11:01:59','2018-04-04 12:00:05',NULL,11,1,0,'000F'),(236,0,'en','TextPlugin','2018-04-04 11:02:30','2018-04-04 12:00:05',NULL,12,1,0,'000G'),(237,0,'en','TextPlugin','2018-04-04 11:02:58','2018-04-04 12:00:05',NULL,13,1,0,'000H'),(238,0,'en','TextPlugin','2018-04-04 11:03:21','2018-04-04 12:00:05',NULL,14,1,0,'000I'),(239,0,'en','PicturePlugin','2018-04-04 11:04:25','2018-04-04 12:00:05',NULL,15,1,0,'000J'),(240,0,'en','PicturePlugin','2018-04-04 11:04:37','2018-04-04 12:00:05',NULL,16,1,0,'000K'),(241,0,'en','TextPlugin','2018-04-04 11:04:56','2018-04-04 12:00:05',NULL,17,1,0,'000L'),(242,1,'en','CMSTabsListPlugin','2018-04-04 11:05:09','2018-04-04 12:00:05',NULL,17,1,2,'000M'),(243,0,'en','CMSSingleTabPlugin','2018-04-04 11:05:51','2018-04-04 12:00:05',242,17,2,2,'000M0001'),(244,0,'en','TextPlugin','2018-04-04 11:07:03','2018-04-04 12:00:05',243,17,3,0,'000M00010001'),(245,1,'en','CMSTabsListPlugin','2018-04-04 11:07:16','2018-04-04 12:00:05',243,17,3,3,'000M00010002'),(246,0,'en','CMSSingleTabPlugin','2018-04-04 11:07:57','2018-04-04 12:00:05',245,17,4,0,'000M000100020001'),(247,1,'en','CMSSingleTabPlugin','2018-04-04 11:08:22','2018-04-04 12:00:05',245,17,4,0,'000M000100020002'),(248,2,'en','CMSSingleTabPlugin','2018-04-04 11:08:38','2018-04-04 12:00:05',245,17,4,0,'000M000100020003'),(249,1,'en','CMSSingleTabPlugin','2018-04-04 11:09:06','2018-04-04 12:00:05',242,17,2,1,'000M0002'),(250,1,'en','TextPlugin','2018-04-04 11:09:52','2018-04-04 12:00:05',249,17,3,0,'000M00020001'),(251,0,'en','TextPlugin','2018-04-04 11:13:15','2018-04-04 12:00:06',NULL,18,1,0,'000N'),(252,1,'en','MultiColumnPlugin','2018-04-04 11:13:59','2018-04-04 12:00:05',NULL,18,1,2,'000O'),(253,0,'en','ColumnPlugin','2018-04-04 11:13:59','2018-04-04 12:00:05',252,18,2,1,'000O0001'),(254,1,'en','TextPlugin','2018-04-04 11:16:05','2018-04-04 12:00:06',253,18,3,0,'000O00010001'),(255,1,'en','ColumnPlugin','2018-04-04 11:13:59','2018-04-04 12:00:05',252,18,2,1,'000O0002'),(256,0,'en','PicturePlugin','2018-04-04 11:16:23','2018-04-04 12:00:05',255,18,3,0,'000O00020001'),(257,2,'en','TextPlugin','2018-04-04 11:16:32','2018-04-04 12:00:06',NULL,18,1,0,'000P'),(258,3,'en','MultiColumnPlugin','2018-04-04 11:17:01','2018-04-04 12:00:05',NULL,18,1,4,'000Q'),(259,0,'en','ColumnPlugin','2018-04-04 11:17:01','2018-04-04 12:00:05',258,18,2,1,'000Q0001'),(260,0,'en','PicturePlugin','2018-04-04 11:17:12','2018-04-04 12:00:05',259,18,3,0,'000Q00010001'),(261,1,'en','ColumnPlugin','2018-04-04 11:17:01','2018-04-04 12:00:05',258,18,2,1,'000Q0002'),(262,0,'en','PicturePlugin','2018-04-04 11:17:21','2018-04-04 12:00:05',261,18,3,0,'000Q00020001'),(263,2,'en','ColumnPlugin','2018-04-04 11:17:01','2018-04-04 12:00:05',258,18,2,1,'000Q0003'),(264,0,'en','PicturePlugin','2018-04-04 11:17:33','2018-04-04 12:00:05',263,18,3,0,'000Q00030001'),(265,3,'en','ColumnPlugin','2018-04-04 11:17:01','2018-04-04 12:00:05',258,18,2,1,'000Q0004'),(266,0,'en','PicturePlugin','2018-04-04 11:17:43','2018-04-04 12:00:06',265,18,3,0,'000Q00040001'),(267,0,'en','TextPlugin','2018-04-04 11:17:59','2018-04-04 12:00:06',NULL,19,1,0,'000R');
/*!40000 ALTER TABLE `cms_cmsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission`
--

DROP TABLE IF EXISTS `cms_globalpagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` (`group_id`),
  KEY `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission`
--

LOCK TABLES `cms_globalpagepermission` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission_sites`
--

DROP TABLE IF EXISTS `cms_globalpagepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_globalpagepermission_globalpagepermission_id__db684f41_uniq` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermis_site_id_00460b53_fk_django_si` (`site_id`),
  CONSTRAINT `cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`),
  CONSTRAINT `cms_globalpagepermis_site_id_00460b53_fk_django_si` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission_sites`
--

LOCK TABLES `cms_globalpagepermission_sites` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) NOT NULL,
  `changed_by` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL,
  `changed_date` datetime NOT NULL,
  `publication_date` datetime DEFAULT NULL,
  `publication_end_date` datetime DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `application_namespace` varchar(200) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `xframe_options` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `is_page_type` tinyint(1) NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_node_id_publisher_is_draft_c1293d6a_uniq` (`node_id`,`publisher_is_draft`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_page_publication_date_684fabf7` (`publication_date`),
  KEY `cms_page_publication_end_date_12a0c46a` (`publication_end_date`),
  KEY `cms_page_in_navigation_01c24279` (`in_navigation`),
  KEY `cms_page_soft_root_51efccbe` (`soft_root`),
  KEY `cms_page_reverse_id_ffc9ede2` (`reverse_id`),
  KEY `cms_page_navigation_extenders_c24af8dd` (`navigation_extenders`),
  KEY `cms_page_limit_visibility_in_menu_30db6aa6` (`limit_visibility_in_menu`),
  KEY `cms_page_is_home_edadca07` (`is_home`),
  KEY `cms_page_application_urls_9ef47497` (`application_urls`),
  KEY `cms_page_publisher_is_draft_141cba60` (`publisher_is_draft`),
  CONSTRAINT `cms_page_node_id_c87b85a9_fk_cms_treenode_id` FOREIGN KEY (`node_id`) REFERENCES `cms_treenode` (`id`),
  CONSTRAINT `cms_page_publisher_public_id_d619fca0_fk_cms_page_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'admin','admin','2018-04-04 10:45:06','2018-04-04 10:46:16','2018-04-04 10:45:06',NULL,1,0,NULL,NULL,'index.html',0,NULL,1,'',NULL,1,'en',0,2,0,1),(2,'admin','admin','2018-04-04 10:45:06','2018-04-04 12:00:05','2018-04-04 10:45:06',NULL,1,0,NULL,NULL,'index.html',0,NULL,1,'',NULL,0,'en',0,1,0,1);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_placeholders`
--

DROP TABLE IF EXISTS `cms_page_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq` (`page_id`,`placeholder_id`),
  KEY `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` (`placeholder_id`),
  CONSTRAINT `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_placeholders`
--

LOCK TABLES `cms_page_placeholders` WRITE;
/*!40000 ALTER TABLE `cms_page_placeholders` DISABLE KEYS */;
INSERT INTO `cms_page_placeholders` VALUES (1,1,2),(2,1,3),(3,1,4),(4,1,5),(5,1,6),(6,1,7),(7,1,8),(8,1,9),(9,1,10),(10,2,11),(11,2,12),(12,2,13),(13,2,14),(14,2,15),(15,2,16),(16,2,17),(17,2,18),(18,2,19);
/*!40000 ALTER TABLE `cms_page_placeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagepermission`
--

DROP TABLE IF EXISTS `cms_pagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_group_id_af5af193_fk_auth_group_id` (`group_id`),
  KEY `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` (`page_id`),
  KEY `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pagepermission_group_id_af5af193_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagepermission`
--

LOCK TABLES `cms_pagepermission` WRITE;
/*!40000 ALTER TABLE `cms_pagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageuser`
--

DROP TABLE IF EXISTS `cms_pageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageuser`
--

LOCK TABLES `cms_pageuser` WRITE;
/*!40000 ALTER TABLE `cms_pageuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageusergroup`
--

DROP TABLE IF EXISTS `cms_pageusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageusergroup`
--

LOCK TABLES `cms_pageusergroup` WRITE;
/*!40000 ALTER TABLE `cms_pageusergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholder`
--

DROP TABLE IF EXISTS `cms_placeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(255) NOT NULL,
  `default_width` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_slot_0bc04d21` (`slot`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholder`
--

LOCK TABLES `cms_placeholder` WRITE;
/*!40000 ALTER TABLE `cms_placeholder` DISABLE KEYS */;
INSERT INTO `cms_placeholder` VALUES (1,'clipboard',NULL),(2,'Course Title',NULL),(3,'Sub Title',NULL),(4,'Duration',NULL),(5,'Author',NULL),(6,'Banner Image',NULL),(7,'Logo',NULL),(8,'Second Page Content',NULL),(9,'Third Page Content',NULL),(10,'content',NULL),(11,'Course Title',NULL),(12,'Sub Title',NULL),(13,'Duration',NULL),(14,'Author',NULL),(15,'Banner Image',NULL),(16,'Logo',NULL),(17,'Second Page Content',NULL),(18,'Third Page Content',NULL),(19,'content',NULL);
/*!40000 ALTER TABLE `cms_placeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholderreference`
--

DROP TABLE IF EXISTS `cms_placeholderreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholderreference` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder_ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_placeholderreference_placeholder_ref_id_244759b1` (`placeholder_ref_id`),
  CONSTRAINT `cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place` FOREIGN KEY (`placeholder_ref_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholderreference`
--

LOCK TABLES `cms_placeholderreference` WRITE;
/*!40000 ALTER TABLE `cms_placeholderreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_placeholderreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_staticplaceholder`
--

DROP TABLE IF EXISTS `cms_staticplaceholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_staticplaceholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dirty` tinyint(1) NOT NULL,
  `creation_method` varchar(20) NOT NULL,
  `draft_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_staticplaceholder_code_site_id_21ba079c_uniq` (`code`,`site_id`),
  KEY `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` (`site_id`),
  KEY `cms_staticplaceholder_draft_id_5aee407b` (`draft_id`),
  KEY `cms_staticplaceholder_public_id_876aaa66` (`public_id`),
  CONSTRAINT `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id` FOREIGN KEY (`draft_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id` FOREIGN KEY (`public_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_staticplaceholder`
--

LOCK TABLES `cms_staticplaceholder` WRITE;
/*!40000 ALTER TABLE `cms_staticplaceholder` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_staticplaceholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_title`
--

DROP TABLE IF EXISTS `cms_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `redirect` varchar(2048) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_state` smallint(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_title_language_page_id_61aaf084_uniq` (`language`,`page_id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_title_page_id_5fade2a3_fk_cms_page_id` (`page_id`),
  KEY `cms_title_language_50a0dfa1` (`language`),
  KEY `cms_title_slug_4947d146` (`slug`),
  KEY `cms_title_path_c484314c` (`path`),
  KEY `cms_title_has_url_overwrite_ecf27bb9` (`has_url_overwrite`),
  KEY `cms_title_publisher_is_draft_95874c88` (`publisher_is_draft`),
  KEY `cms_title_publisher_state_9a952b0f` (`publisher_state`),
  CONSTRAINT `cms_title_page_id_5fade2a3_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_title_publisher_public_id_003a2702_fk_cms_title_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_title`
--

LOCK TABLES `cms_title` WRITE;
/*!40000 ALTER TABLE `cms_title` DISABLE KEYS */;
INSERT INTO `cms_title` VALUES (1,'en','index',NULL,NULL,NULL,'index','',0,NULL,'2018-04-04 10:45:06',1,1,0,1,2),(2,'en','index',NULL,NULL,NULL,'index','',0,NULL,'2018-04-04 10:45:06',1,0,1,2,1);
/*!40000 ALTER TABLE `cms_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_treenode`
--

DROP TABLE IF EXISTS `cms_treenode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_treenode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` (`parent_id`),
  KEY `cms_treenode_site_id_d3f46985_fk_django_site_id` (`site_id`),
  CONSTRAINT `cms_treenode_site_id_d3f46985_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_treenode` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_treenode`
--

LOCK TABLES `cms_treenode` WRITE;
/*!40000 ALTER TABLE `cms_treenode` DISABLE KEYS */;
INSERT INTO `cms_treenode` VALUES (1,'0001',1,0,NULL,1);
/*!40000 ALTER TABLE `cms_treenode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_urlconfrevision`
--

DROP TABLE IF EXISTS `cms_urlconfrevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_urlconfrevision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_urlconfrevision`
--

LOCK TABLES `cms_urlconfrevision` WRITE;
/*!40000 ALTER TABLE `cms_urlconfrevision` DISABLE KEYS */;
INSERT INTO `cms_urlconfrevision` VALUES (1,'6d3ef594-da0c-46fd-9f12-efb631009684');
/*!40000 ALTER TABLE `cms_urlconfrevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_usersettings`
--

DROP TABLE IF EXISTS `cms_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `clipboard_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` (`clipboard_id`),
  CONSTRAINT `cms_usersettings_user_id_09633b2d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` FOREIGN KEY (`clipboard_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_usersettings`
--

LOCK TABLES `cms_usersettings` WRITE;
/*!40000 ALTER TABLE `cms_usersettings` DISABLE KEYS */;
INSERT INTO `cms_usersettings` VALUES (1,'en',1,1);
/*!40000 ALTER TABLE `cms_usersettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_tabs_cmssingletab`
--

DROP TABLE IF EXISTS `cmsplugin_tabs_cmssingletab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_tabs_cmssingletab` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(32) NOT NULL,
  `is_strong` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cmsplugin_tabs_cmssingletab_slug_00584a90` (`slug`),
  CONSTRAINT `cmsplugin_tabs_cmssi_cmsplugin_ptr_id_b593554d_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_tabs_cmssingletab`
--

LOCK TABLES `cmsplugin_tabs_cmssingletab` WRITE;
/*!40000 ALTER TABLE `cmsplugin_tabs_cmssingletab` DISABLE KEYS */;
INSERT INTO `cmsplugin_tabs_cmssingletab` VALUES (10,'Effects of Population Growth on our Environment!','',0,''),(13,'Generation of Waste','',1,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'),(14,'Threat to Bio-diversity','',1,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'),(15,'Strain on Forests','',1,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'),(16,'Examples of Hazard and Their Effects','',1,''),(243,'Effects of Population Growth on our Environment!','',0,''),(246,'Generation of Waste','',1,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'),(247,'Threat to Bio-diversity','',1,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'),(248,'Strain on Forests','',1,'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>'),(249,'Examples of Hazard and Their Effects','',1,'');
/*!40000 ALTER TABLE `cmsplugin_tabs_cmssingletab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cmsplugin_tabs_cmstabslist`
--

DROP TABLE IF EXISTS `cmsplugin_tabs_cmstabslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmsplugin_tabs_cmstabslist` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `cmsplugin_tabs_cmsta_cmsplugin_ptr_id_97643abc_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmsplugin_tabs_cmstabslist`
--

LOCK TABLES `cmsplugin_tabs_cmstabslist` WRITE;
/*!40000 ALTER TABLE `cmsplugin_tabs_cmstabslist` DISABLE KEYS */;
INSERT INTO `cmsplugin_tabs_cmstabslist` VALUES (9,'cmsplugin_tabs/tabs.html'),(12,'cmsplugin_tabs/accordion.html'),(242,'cmsplugin_tabs/tabs.html'),(245,'cmsplugin_tabs/accordion.html');
/*!40000 ALTER TABLE `cmsplugin_tabs_cmstabslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2018-04-04 10:46:16','1','index',2,'[{\"changed\": {\"fields\": [\"template\", \"xframe_options\"]}}]',2,1),(2,'2018-04-04 10:59:28','1','index',2,'',2,1),(3,'2018-04-04 11:18:19','1','index',2,'',2,1),(4,'2018-04-04 11:19:20','1','index',2,'',2,1),(5,'2018-04-04 11:19:51','1','index',2,'',2,1),(6,'2018-04-04 11:21:05','1','index',2,'',2,1),(7,'2018-04-04 11:21:42','1','index',2,'',2,1),(8,'2018-04-04 11:57:19','1','index',2,'',2,1),(9,'2018-04-04 12:00:06','1','index',2,'',2,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'admin','logentry'),(3,'auth','group'),(4,'auth','permission'),(5,'auth','user'),(21,'cms','aliaspluginmodel'),(11,'cms','cmsplugin'),(17,'cms','globalpagepermission'),(2,'cms','page'),(14,'cms','pagepermission'),(22,'cms','pagetype'),(20,'cms','pageuser'),(12,'cms','pageusergroup'),(1,'cms','placeholder'),(19,'cms','placeholderreference'),(13,'cms','staticplaceholder'),(15,'cms','title'),(18,'cms','treenode'),(10,'cms','urlconfrevision'),(16,'cms','usersettings'),(51,'cmsplugin_tabs','cmssingletab'),(50,'cmsplugin_tabs','cmstabslist'),(6,'contenttypes','contenttype'),(36,'djangocms_column','column'),(35,'djangocms_column','multicolumns'),(37,'djangocms_file','file'),(38,'djangocms_file','folder'),(45,'djangocms_googlemap','googlemap'),(46,'djangocms_googlemap','googlemapmarker'),(44,'djangocms_googlemap','googlemaproute'),(39,'djangocms_link','link'),(40,'djangocms_picture','picture'),(42,'djangocms_snippet','snippet'),(43,'djangocms_snippet','snippetptr'),(41,'djangocms_style','style'),(24,'djangocms_text_ckeditor','text'),(47,'djangocms_video','videoplayer'),(48,'djangocms_video','videosource'),(49,'djangocms_video','videotrack'),(32,'easy_thumbnails','source'),(33,'easy_thumbnails','thumbnail'),(34,'easy_thumbnails','thumbnaildimensions'),(29,'filer','clipboard'),(28,'filer','clipboarditem'),(25,'filer','file'),(26,'filer','folder'),(30,'filer','folderpermission'),(31,'filer','image'),(27,'filer','thumbnailoption'),(23,'menus','cachekey'),(53,'polls','choice'),(52,'polls','poll'),(54,'polls_cms_integration','pollpluginmodel'),(7,'sessions','session'),(9,'sites','site');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-04 10:38:07'),(2,'auth','0001_initial','2018-04-04 10:38:10'),(3,'admin','0001_initial','2018-04-04 10:38:11'),(4,'admin','0002_logentry_remove_auto_add','2018-04-04 10:38:11'),(5,'contenttypes','0002_remove_content_type_name','2018-04-04 10:38:12'),(6,'auth','0002_alter_permission_name_max_length','2018-04-04 10:38:12'),(7,'auth','0003_alter_user_email_max_length','2018-04-04 10:38:12'),(8,'auth','0004_alter_user_username_opts','2018-04-04 10:38:12'),(9,'auth','0005_alter_user_last_login_null','2018-04-04 10:38:13'),(10,'auth','0006_require_contenttypes_0002','2018-04-04 10:38:13'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-04 10:38:13'),(12,'auth','0008_alter_user_username_max_length','2018-04-04 10:38:13'),(13,'sites','0001_initial','2018-04-04 10:38:13'),(14,'cms','0001_initial','2018-04-04 10:38:21'),(15,'cms','0002_auto_20140816_1918','2018-04-04 10:38:29'),(16,'cms','0003_auto_20140926_2347','2018-04-04 10:38:29'),(17,'cms','0004_auto_20140924_1038','2018-04-04 10:38:31'),(18,'cms','0005_auto_20140924_1039','2018-04-04 10:38:31'),(19,'cms','0006_auto_20140924_1110','2018-04-04 10:38:33'),(20,'cms','0007_auto_20141028_1559','2018-04-04 10:38:34'),(21,'cms','0008_auto_20150208_2149','2018-04-04 10:38:34'),(22,'cms','0008_auto_20150121_0059','2018-04-04 10:38:34'),(23,'cms','0009_merge','2018-04-04 10:38:34'),(24,'cms','0010_migrate_use_structure','2018-04-04 10:38:34'),(25,'cms','0011_auto_20150419_1006','2018-04-04 10:38:35'),(26,'cms','0012_auto_20150607_2207','2018-04-04 10:38:36'),(27,'cms','0013_urlconfrevision','2018-04-04 10:38:36'),(28,'cms','0014_auto_20160404_1908','2018-04-04 10:38:37'),(29,'cms','0015_auto_20160421_0000','2018-04-04 10:38:37'),(30,'cms','0016_auto_20160608_1535','2018-04-04 10:38:38'),(31,'cms','0017_pagetype','2018-04-04 10:38:38'),(32,'cms','0018_pagenode','2018-04-04 10:38:42'),(33,'cmsplugin_tabs','0001_initial','2018-04-04 10:38:43'),(34,'cmsplugin_tabs','0002_auto_20180402_1221','2018-04-04 10:38:44'),(35,'djangocms_column','0001_initial','2018-04-04 10:38:45'),(36,'djangocms_column','0002_auto_20160915_0818','2018-04-04 10:38:46'),(37,'filer','0001_initial','2018-04-04 10:38:52'),(38,'filer','0002_auto_20150606_2003','2018-04-04 10:38:53'),(39,'filer','0003_thumbnailoption','2018-04-04 10:38:53'),(40,'filer','0004_auto_20160328_1434','2018-04-04 10:38:53'),(41,'filer','0005_auto_20160623_1425','2018-04-04 10:38:55'),(42,'filer','0006_auto_20160623_1627','2018-04-04 10:38:55'),(43,'djangocms_file','0001_initial','2018-04-04 10:38:56'),(44,'djangocms_file','0002_auto_20151202_1551','2018-04-04 10:38:56'),(45,'djangocms_file','0003_remove_related_name_for_cmsplugin_ptr','2018-04-04 10:38:57'),(46,'djangocms_file','0004_set_related_name_for_cmsplugin_ptr','2018-04-04 10:38:57'),(47,'djangocms_file','0005_auto_20160119_1534','2018-04-04 10:38:57'),(48,'djangocms_file','0006_migrate_to_filer','2018-04-04 10:38:58'),(49,'djangocms_file','0007_adapted_fields','2018-04-04 10:39:01'),(50,'djangocms_file','0008_add_folder','2018-04-04 10:39:02'),(51,'djangocms_file','0009_fixed_null_fields','2018-04-04 10:39:02'),(52,'djangocms_file','0010_removed_null_fields','2018-04-04 10:39:02'),(53,'filer','0007_auto_20161016_1055','2018-04-04 10:39:02'),(54,'djangocms_googlemap','0001_initial','2018-04-04 10:39:03'),(55,'djangocms_googlemap','0002_auto_20160622_1031','2018-04-04 10:39:03'),(56,'djangocms_googlemap','0003_auto_20160825_1829','2018-04-04 10:39:03'),(57,'djangocms_googlemap','0004_adapted_fields','2018-04-04 10:39:08'),(58,'djangocms_googlemap','0005_create_nested_plugins','2018-04-04 10:39:08'),(59,'djangocms_googlemap','0006_remove_fields','2018-04-04 10:39:11'),(60,'djangocms_googlemap','0007_reset_null_values','2018-04-04 10:39:11'),(61,'djangocms_googlemap','0008_removed_null_fields','2018-04-04 10:39:11'),(62,'djangocms_googlemap','0009_googlemapmarker_icon','2018-04-04 10:39:12'),(63,'djangocms_link','0001_initial','2018-04-04 10:39:12'),(64,'djangocms_link','0002_auto_20140929_1705','2018-04-04 10:39:12'),(65,'djangocms_link','0003_auto_20150212_1310','2018-04-04 10:39:13'),(66,'djangocms_link','0004_auto_20150708_1133','2018-04-04 10:39:13'),(67,'djangocms_link','0005_auto_20151003_1710','2018-04-04 10:39:13'),(68,'djangocms_link','0006_remove_related_name_for_cmsplugin_ptr','2018-04-04 10:39:14'),(69,'djangocms_link','0007_set_related_name_for_cmsplugin_ptr','2018-04-04 10:39:14'),(70,'djangocms_link','0008_link_attributes','2018-04-04 10:39:15'),(71,'djangocms_link','0009_auto_20160705_1344','2018-04-04 10:39:15'),(72,'djangocms_link','0010_adapted_fields','2018-04-04 10:39:18'),(73,'djangocms_link','0011_fixed_null_values','2018-04-04 10:39:18'),(74,'djangocms_link','0012_removed_null','2018-04-04 10:39:20'),(75,'djangocms_link','0013_fix_hostname','2018-04-04 10:39:20'),(76,'djangocms_picture','0001_initial','2018-04-04 10:39:20'),(77,'djangocms_picture','0002_auto_20151018_1927','2018-04-04 10:39:21'),(78,'djangocms_picture','0003_migrate_to_filer','2018-04-04 10:39:23'),(79,'djangocms_picture','0004_adapt_fields','2018-04-04 10:39:30'),(80,'djangocms_picture','0005_reset_null_values','2018-04-04 10:39:30'),(81,'djangocms_picture','0006_remove_null_values','2018-04-04 10:39:32'),(82,'djangocms_picture','0007_fix_alignment','2018-04-04 10:39:32'),(83,'djangocms_snippet','0001_initial','2018-04-04 10:39:33'),(84,'djangocms_snippet','0002_snippet_slug','2018-04-04 10:39:33'),(85,'djangocms_snippet','0003_auto_data_fill_slug','2018-04-04 10:39:33'),(86,'djangocms_snippet','0004_auto_alter_slug_unique','2018-04-04 10:39:34'),(87,'djangocms_snippet','0005_set_related_name_for_cmsplugin_ptr','2018-04-04 10:39:34'),(88,'djangocms_snippet','0006_auto_20160831_0729','2018-04-04 10:39:35'),(89,'djangocms_snippet','0007_auto_alter_template_helptext','2018-04-04 10:39:35'),(90,'djangocms_style','0001_initial','2018-04-04 10:39:35'),(91,'djangocms_style','0002_set_related_name_for_cmsplugin_ptr','2018-04-04 10:39:36'),(92,'djangocms_style','0003_adapted_fields','2018-04-04 10:39:38'),(93,'djangocms_style','0004_use_positive_small_integer_field','2018-04-04 10:39:40'),(94,'djangocms_style','0005_reset_null_values','2018-04-04 10:39:40'),(95,'djangocms_style','0006_removed_null_fields','2018-04-04 10:39:40'),(96,'djangocms_style','0007_style_template','2018-04-04 10:39:41'),(97,'djangocms_text_ckeditor','0001_initial','2018-04-04 10:39:41'),(98,'djangocms_text_ckeditor','0002_remove_related_name_for_cmsplugin_ptr','2018-04-04 10:39:42'),(99,'djangocms_text_ckeditor','0003_set_related_name_for_cmsplugin_ptr','2018-04-04 10:39:43'),(100,'djangocms_text_ckeditor','0004_auto_20160706_1339','2018-04-04 10:39:43'),(101,'djangocms_video','0001_initial','2018-04-04 10:39:43'),(102,'djangocms_video','0002_set_related_name_for_cmsplugin_ptr','2018-04-04 10:39:44'),(103,'djangocms_video','0003_field_adaptions','2018-04-04 10:39:47'),(104,'djangocms_video','0004_move_to_attributes','2018-04-04 10:39:51'),(105,'djangocms_video','0005_migrate_to_filer','2018-04-04 10:39:51'),(106,'djangocms_video','0006_field_adaptions','2018-04-04 10:39:54'),(107,'djangocms_video','0007_create_nested_plugin','2018-04-04 10:39:54'),(108,'djangocms_video','0008_reset_null_values','2018-04-04 10:39:54'),(109,'djangocms_video','0009_removed_null_values','2018-04-04 10:39:55'),(110,'easy_thumbnails','0001_initial','2018-04-04 10:39:56'),(111,'easy_thumbnails','0002_thumbnaildimensions','2018-04-04 10:39:57'),(112,'menus','0001_initial','2018-04-04 10:39:57'),(113,'polls','0001_initial','2018-04-04 10:39:58'),(114,'polls_cms_integration','0001_initial','2018-04-04 10:39:58'),(115,'sessions','0001_initial','2018-04-04 10:39:58'),(116,'sites','0002_alter_domain_unique','2018-04-04 10:39:59');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('17s1ninyonezosw9jm7t7qzq4esusghf','ZTFkNjhiYjdjNWYxMDUxNzAxMWMxMDc5NDg1NTVjYzViZmJmZTk4NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDI2Y2ZlMDJjYTg5NWQ4MzcwM2U3MWIwYWJkOWE0OTViMmQ5YzY4YyIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiZmlsZXJfbGFzdF9mb2xkZXJfaWQiOm51bGx9','2018-04-18 11:17:40'),('1hcp1v3cfu4l4ocl3l6uru2kkxcvo5rh','MzczNmY5OGFkNDJjNDY2ODViOTAzMWI4ZTJjNDliZmU2M2IwZmY1Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNmNmZTAyY2E4OTVkODM3MDNlNzFiMGFiZDlhNDk1YjJkOWM2OGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-18 11:13:15'),('1zpqro3rjjhvygrz0oxogryku7akfi1v','M2U5NDJmNmRmYTE1OGE0OWE2MzEzZjA3ZWE0ZjAyZDgwMjE0YjZkYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNtc19lZGl0IjpmYWxzZSwiX2F1dGhfdXNlcl9oYXNoIjoiZDI2Y2ZlMDJjYTg5NWQ4MzcwM2U3MWIwYWJkOWE0OTViMmQ5YzY4YyIsImNtc19wcmV2aWV3Ijp0cnVlfQ==','2018-04-18 11:18:20'),('4ooyfi92kga2b90mxvn7kgq9aahn86fn','MzczNmY5OGFkNDJjNDY2ODViOTAzMWI4ZTJjNDliZmU2M2IwZmY1Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNmNmZTAyY2E4OTVkODM3MDNlNzFiMGFiZDlhNDk1YjJkOWM2OGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-18 11:02:30'),('egry528c0crrlfk3q51uvmf9ox6vr5yb','NWY0NTM1NjIxYjkwYTVjNTIxMzRmMzZmN2Q4Y2MyMmI1MDgxYmFhNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJ3aXphcmRfd2l6YXJkX2NyZWF0ZV92aWV3Ijp7InN0ZXBfZmlsZXMiOnt9LCJzdGVwIjpudWxsLCJleHRyYV9kYXRhIjp7fSwic3RlcF9kYXRhIjp7fX0sIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiY21zX2VkaXQiOnRydWUsIl9hdXRoX3VzZXJfaGFzaCI6ImQyNmNmZTAyY2E4OTVkODM3MDNlNzFiMGFiZDlhNDk1YjJkOWM2OGMiLCJjbXNfcHJldmlldyI6ZmFsc2V9','2018-04-18 10:59:38'),('jelg85g2mcjtayw51uwfeu5rl55venlc','NGUyODM0ZGZkY2VjMWMyOTU0OTFhOTZhMDRkNWEyMmNkNzYzYTI5MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNtc19lZGl0Ijp0cnVlLCJfYXV0aF91c2VyX2hhc2giOiJkMjZjZmUwMmNhODk1ZDgzNzAzZTcxYjBhYmQ5YTQ5NWIyZDljNjhjIiwiY21zX3ByZXZpZXciOmZhbHNlfQ==','2018-04-18 11:01:29'),('oakgkl9n9xds4t7aog89l93rhll0vlpv','MzczNmY5OGFkNDJjNDY2ODViOTAzMWI4ZTJjNDliZmU2M2IwZmY1Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNmNmZTAyY2E4OTVkODM3MDNlNzFiMGFiZDlhNDk1YjJkOWM2OGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-18 11:09:52'),('odg0g4vc0ddbs2z0j7mlst9fd4re0gfe','NGUyODM0ZGZkY2VjMWMyOTU0OTFhOTZhMDRkNWEyMmNkNzYzYTI5MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNtc19lZGl0Ijp0cnVlLCJfYXV0aF91c2VyX2hhc2giOiJkMjZjZmUwMmNhODk1ZDgzNzAzZTcxYjBhYmQ5YTQ5NWIyZDljNjhjIiwiY21zX3ByZXZpZXciOmZhbHNlfQ==','2018-04-18 11:12:41'),('odrquhk1xqi51ea40vjyhgwbonskudx0','MzczNmY5OGFkNDJjNDY2ODViOTAzMWI4ZTJjNDliZmU2M2IwZmY1Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNmNmZTAyY2E4OTVkODM3MDNlNzFiMGFiZDlhNDk1YjJkOWM2OGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-18 11:07:03'),('syj48nbxoyaofwfdehet7arqdjp3jlus','MzczNmY5OGFkNDJjNDY2ODViOTAzMWI4ZTJjNDliZmU2M2IwZmY1Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNmNmZTAyY2E4OTVkODM3MDNlNzFiMGFiZDlhNDk1YjJkOWM2OGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-18 11:05:43'),('tdkv6d8tk29cqjst6u19cktn8qrqoni9','MzczNmY5OGFkNDJjNDY2ODViOTAzMWI4ZTJjNDliZmU2M2IwZmY1Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNmNmZTAyY2E4OTVkODM3MDNlNzFiMGFiZDlhNDk1YjJkOWM2OGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-18 11:04:56'),('vp4t2h1aj5j77qvp8b3fv581gmj96xn5','MzczNmY5OGFkNDJjNDY2ODViOTAzMWI4ZTJjNDliZmU2M2IwZmY1Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNmNmZTAyY2E4OTVkODM3MDNlNzFiMGFiZDlhNDk1YjJkOWM2OGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-18 11:02:58'),('w41tjm4476q8ddllluhqrxj019vqufba','MWJjNDFiYWJjMzM5ZGU3M2VhYzFlZTJiYTQxNThkNTIyNTA2OTdlZjp7ImNtc190b29sYmFyX2Rpc2FibGVkIjpmYWxzZSwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsImNtc19lZGl0IjpmYWxzZSwiX2F1dGhfdXNlcl9oYXNoIjoiZDI2Y2ZlMDJjYTg5NWQ4MzcwM2U3MWIwYWJkOWE0OTViMmQ5YzY4YyIsImNtc19wcmV2aWV3Ijp0cnVlfQ==','2018-04-18 12:00:39'),('xdlgpp8xuah5ssga8dydx2nb32o3tu8m','MzczNmY5OGFkNDJjNDY2ODViOTAzMWI4ZTJjNDliZmU2M2IwZmY1Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNmNmZTAyY2E4OTVkODM3MDNlNzFiMGFiZDlhNDk1YjJkOWM2OGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-18 11:13:55'),('xgilhah3bttkg0st21olmo7hy37f94d5','ZWU1ZTEyOTNjMmE0MTIwOGFkZmQzN2RkZjQzMDNmMWFkOGYzNjlmNDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNmNmZTAyY2E4OTVkODM3MDNlNzFiMGFiZDlhNDk1YjJkOWM2OGMiLCJmaWxlcl9sYXN0X2ZvbGRlcl9pZCI6bnVsbCwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9','2018-04-18 11:04:32'),('zxyhsxoguhe50wrx8ionutvmvn6nw6bo','MzczNmY5OGFkNDJjNDY2ODViOTAzMWI4ZTJjNDliZmU2M2IwZmY1Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQyNmNmZTAyY2E4OTVkODM3MDNlNzFiMGFiZDlhNDk1YjJkOWM2OGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2018-04-18 11:01:58');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_column_column`
--

DROP TABLE IF EXISTS `djangocms_column_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_column_column` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `width` varchar(50) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_column_column`
--

LOCK TABLES `djangocms_column_column` WRITE;
/*!40000 ALTER TABLE `djangocms_column_column` DISABLE KEYS */;
INSERT INTO `djangocms_column_column` VALUES (21,'66.66%'),(22,'10%'),(28,'25%'),(29,'25%'),(30,'25%'),(31,'25%'),(253,'66.66%'),(255,'10%'),(259,'25%'),(261,'25%'),(263,'25%'),(265,'25%');
/*!40000 ALTER TABLE `djangocms_column_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_column_multicolumns`
--

DROP TABLE IF EXISTS `djangocms_column_multicolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_column_multicolumns` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_column_multicolumns`
--

LOCK TABLES `djangocms_column_multicolumns` WRITE;
/*!40000 ALTER TABLE `djangocms_column_multicolumns` DISABLE KEYS */;
INSERT INTO `djangocms_column_multicolumns` VALUES (20),(27),(252),(258);
/*!40000 ALTER TABLE `djangocms_column_multicolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_file_file`
--

DROP TABLE IF EXISTS `djangocms_file_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_file_file` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `file_src_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_file_file_src_id_74ac14a5` (`file_src_id`),
  CONSTRAINT `djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id` FOREIGN KEY (`file_src_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_file_file`
--

LOCK TABLES `djangocms_file_file` WRITE;
/*!40000 ALTER TABLE `djangocms_file_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_file_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_file_folder`
--

DROP TABLE IF EXISTS `djangocms_file_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_file_folder` (
  `template` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `folder_src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_folder_folder_src_id_9558406a` (`folder_src_id`),
  CONSTRAINT `djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id` FOREIGN KEY (`folder_src_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_file_folder`
--

LOCK TABLES `djangocms_file_folder` WRITE;
/*!40000 ALTER TABLE `djangocms_file_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_file_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemap`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemap` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `zoom` smallint(5) unsigned NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  `scrollwheel` tinyint(1) NOT NULL,
  `double_click_zoom` tinyint(1) NOT NULL,
  `draggable` tinyint(1) NOT NULL,
  `keyboard_shortcuts` tinyint(1) NOT NULL,
  `pan_control` tinyint(1) NOT NULL,
  `zoom_control` tinyint(1) NOT NULL,
  `street_view_control` tinyint(1) NOT NULL,
  `style` longtext NOT NULL,
  `fullscreen_control` tinyint(1) NOT NULL,
  `map_type_control` varchar(255) NOT NULL,
  `rotate_control` tinyint(1) NOT NULL,
  `scale_control` tinyint(1) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemap`
--

LOCK TABLES `djangocms_googlemap_googlemap` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemapmarker`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemapmarker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemapmarker` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `show_content` tinyint(1) NOT NULL,
  `info_content` longtext NOT NULL,
  `icon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_googlemap_googlemapmarker_icon_id_3b103213` (`icon_id`),
  CONSTRAINT `djangocms_googlemap__icon_id_3b103213_fk_filer_ima` FOREIGN KEY (`icon_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemapmarker`
--

LOCK TABLES `djangocms_googlemap_googlemapmarker` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemaproute`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemaproute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemaproute` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `travel_mode` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemaproute`
--

LOCK TABLES `djangocms_googlemap_googlemaproute` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_link_link`
--

DROP TABLE IF EXISTS `djangocms_link_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_link_link` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` (`internal_link_id`),
  CONSTRAINT `djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_link_link`
--

LOCK TABLES `djangocms_link_link` WRITE;
/*!40000 ALTER TABLE `djangocms_link_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_link_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_picture_picture`
--

DROP TABLE IF EXISTS `djangocms_picture_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_picture_picture` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_url` varchar(2040) NOT NULL,
  `alignment` varchar(255) NOT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `caption_text` longtext NOT NULL,
  `link_attributes` longtext NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `thumbnail_options_id` int(11) DEFAULT NULL,
  `external_picture` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_picture_picture_picture_id_f7d6711b` (`picture_id`),
  KEY `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` (`link_page_id`),
  KEY `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` (`thumbnail_options_id`),
  CONSTRAINT `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_picture_picture`
--

LOCK TABLES `djangocms_picture_picture` WRITE;
/*!40000 ALTER TABLE `djangocms_picture_picture` DISABLE KEYS */;
INSERT INTO `djangocms_picture_picture` VALUES (6,'','',NULL,NULL,NULL,6,'{}','','{}','',1,0,0,0,NULL,'','default'),(7,'','',NULL,NULL,NULL,13,'{}','','{}','',1,0,0,0,NULL,'','default'),(25,'','',NULL,NULL,NULL,14,'{}','','{}','',1,0,0,0,NULL,'','default'),(32,'','',NULL,NULL,NULL,8,'{}','','{}','',1,0,0,0,NULL,'','default'),(33,'','',NULL,NULL,NULL,9,'{}','','{}','',1,0,0,0,NULL,'','default'),(34,'','',NULL,NULL,NULL,10,'{}','','{}','',1,0,0,0,NULL,'','default'),(35,'','',NULL,NULL,NULL,11,'{}','','{}','',1,0,0,0,NULL,'','default'),(239,'','',NULL,NULL,NULL,6,'{}','','{}','',1,0,0,0,NULL,'','default'),(240,'','',NULL,NULL,NULL,13,'{}','','{}','',1,0,0,0,NULL,'','default'),(256,'','',NULL,NULL,NULL,14,'{}','','{}','',1,0,0,0,NULL,'','default'),(260,'','',NULL,NULL,NULL,8,'{}','','{}','',1,0,0,0,NULL,'','default'),(262,'','',NULL,NULL,NULL,9,'{}','','{}','',1,0,0,0,NULL,'','default'),(264,'','',NULL,NULL,NULL,10,'{}','','{}','',1,0,0,0,NULL,'','default'),(266,'','',NULL,NULL,NULL,11,'{}','','{}','',1,0,0,0,NULL,'','default');
/*!40000 ALTER TABLE `djangocms_picture_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_snippet_snippet`
--

DROP TABLE IF EXISTS `djangocms_snippet_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_snippet_snippet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `djangocms_snippet_snippet_slug_bd43cd96_uniq` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_snippet_snippet`
--

LOCK TABLES `djangocms_snippet_snippet` WRITE;
/*!40000 ALTER TABLE `djangocms_snippet_snippet` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_snippet_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_snippet_snippetptr`
--

DROP TABLE IF EXISTS `djangocms_snippet_snippetptr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_snippet_snippetptr` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `snippet_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms` (`snippet_id`),
  CONSTRAINT `djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms` FOREIGN KEY (`snippet_id`) REFERENCES `djangocms_snippet_snippet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_snippet_snippetptr`
--

LOCK TABLES `djangocms_snippet_snippetptr` WRITE;
/*!40000 ALTER TABLE `djangocms_snippet_snippetptr` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_snippet_snippetptr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_style_style`
--

DROP TABLE IF EXISTS `djangocms_style_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_style_style` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `padding_left` smallint(5) unsigned DEFAULT NULL,
  `padding_right` smallint(5) unsigned DEFAULT NULL,
  `padding_top` smallint(5) unsigned DEFAULT NULL,
  `padding_bottom` smallint(5) unsigned DEFAULT NULL,
  `margin_left` smallint(5) unsigned DEFAULT NULL,
  `margin_right` smallint(5) unsigned DEFAULT NULL,
  `margin_top` smallint(5) unsigned DEFAULT NULL,
  `margin_bottom` smallint(5) unsigned DEFAULT NULL,
  `additional_classes` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `id_name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_style_style`
--

LOCK TABLES `djangocms_style_style` WRITE;
/*!40000 ALTER TABLE `djangocms_style_style` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_style_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_text_ckeditor_text`
--

DROP TABLE IF EXISTS `djangocms_text_ckeditor_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_text_ckeditor_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_text_ckeditor_text`
--

LOCK TABLES `djangocms_text_ckeditor_text` WRITE;
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` DISABLE KEYS */;
INSERT INTO `djangocms_text_ckeditor_text` VALUES (2,'<p><span style=\"color: #000000;\">Master in Epidemiology and Public Health</span></p>'),(3,'<p>Module I. Compulsory training</p>'),(4,'<p>4 ECTS</p>\n\n<p> </p>'),(5,'<p><span style=\"color: #000000;\">Robert Jr</span></p>'),(8,'<h1><span style=\"color: #e74c3c;\">Concepts</span></h1>'),(11,'<h3>General</h3>\n\n<p><strong>Note:</strong> The <strong>Climate</strong> change is the environmental challenge of this generation, and it is imperative that we act before it\'s too late</p>'),(18,'<p> </p>\n\n<table class=\"table table-bordered\" cellpadding=\"1\" cellspacing=\"1\" border=\"1\">\n	<tbody>\n		<tr>\n			<th>Workplace Hazards</th>\n			<th>Example of Hazard</th>\n			<th>Examples of Harm Hazard</th>\n		</tr>\n		<tr>\n			<td>Thing</td>\n			<td>Knife</td>\n			<td>Cut</td>\n		</tr>\n		<tr>\n			<td>Source of Energy</td>\n			<td>Electricity</td>\n			<td>Shock,electroculation</td>\n		</tr>\n		<tr>\n			<td>Condition</td>\n			<td>Wet floor</td>\n			<td>\n			<p>Slips,falls</p>\n			</td>\n		</tr>\n	</tbody>\n</table>'),(19,'<h1><span style=\"color: #e74c3c;\">Learning</span></h1>'),(24,'<h4>Concepts</h4>\n\n<ul>\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>\n	<li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum</li>\n	<li>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit</li>\n	<li>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\n	<li>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</li>\n	<li>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\n</ul>'),(26,'<p>Flip Around</p>'),(36,'<p><span style=\"color: #000000;\">Environmental risks in public health</span></p>'),(235,'<p><span style=\"color: #000000;\">Master in Epidemiology and Public Health</span></p>'),(236,'<p>Module I. Compulsory training</p>'),(237,'<p>4 ECTS</p>\n\n<p> </p>'),(238,'<p><span style=\"color: #000000;\">Robert Jr</span></p>'),(241,'<h1><span style=\"color: #e74c3c;\">Concepts</span></h1>'),(244,'<h3>General</h3>\n\n<p><strong>Note:</strong> The <strong>Climate</strong> change is the environmental challenge of this generation, and it is imperative that we act before it\'s too late</p>'),(250,'<p> </p>\n\n<table class=\"table table-bordered\" cellpadding=\"1\" border=\"1\" cellspacing=\"1\">\n	<tbody>\n		<tr>\n			<th>Workplace Hazards</th>\n			<th>Example of Hazard</th>\n			<th>Examples of Harm Hazard</th>\n		</tr>\n		<tr>\n			<td>Thing</td>\n			<td>Knife</td>\n			<td>Cut</td>\n		</tr>\n		<tr>\n			<td>Source of Energy</td>\n			<td>Electricity</td>\n			<td>Shock,electroculation</td>\n		</tr>\n		<tr>\n			<td>Condition</td>\n			<td>Wet floor</td>\n			<td>\n			<p>Slips,falls</p>\n			</td>\n		</tr>\n	</tbody>\n</table>'),(251,'<h1><span style=\"color: #e74c3c;\">Learning</span></h1>'),(254,'<h4>Concepts</h4>\n\n<ul>\n	<li>Lorem ipsum dolor sit amet, consectetur adipisicing elit</li>\n	<li>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum</li>\n	<li>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit</li>\n	<li>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\n	<li>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</li>\n	<li>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>\n</ul>'),(257,'<p>Flip Around</p>'),(267,'<p><span style=\"color: #000000;\">Environmental risks in public health</span></p>');
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videoplayer`
--

DROP TABLE IF EXISTS `djangocms_video_videoplayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videoplayer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `embed_link` varchar(255) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videoplayer_poster_id_07790e24` (`poster_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_vide_poster_id_07790e24_fk_filer_ima` FOREIGN KEY (`poster_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videoplayer`
--

LOCK TABLES `djangocms_video_videoplayer` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videosource`
--

DROP TABLE IF EXISTS `djangocms_video_videosource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videosource` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `text_title` varchar(255) NOT NULL,
  `text_description` longtext NOT NULL,
  `attributes` longtext NOT NULL,
  `source_file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videosource_source_file_id_16f11167` (`source_file_id`),
  CONSTRAINT `djangocms_video_vide_source_file_id_16f11167_fk_filer_fil` FOREIGN KEY (`source_file_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videosource`
--

LOCK TABLES `djangocms_video_videosource` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videosource` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videosource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videotrack`
--

DROP TABLE IF EXISTS `djangocms_video_videotrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videotrack` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `srclang` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videotrack_src_id_e5a015d8` (`src_id`),
  CONSTRAINT `djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id` FOREIGN KEY (`src_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videotrack`
--

LOCK TABLES `djangocms_video_videotrack` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videotrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videotrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  KEY `easy_thumbnails_source_name_5fe0edc6` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_source` VALUES (1,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/a7/a2/a7a292f9-6ee6-4775-8bf2-dc71009617e8/arrow-1.png','2018-04-04 11:04:08'),(2,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/f6/ef/f6efda40-f5dd-47d3-8391-393e8dc00756/arrow-2.png','2018-04-04 11:04:08'),(4,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/97/75/9775cc57-86d5-49d2-b47a-d00933180f75/arrow-5.png','2018-04-04 11:04:09'),(5,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/9e/90/9e90ec58-af96-473d-b746-f03f7448ee0c/arrow-6.png','2018-04-04 11:04:09'),(6,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/b6/ac/b6ac9a91-47e1-47c3-9a50-5cc8919774d7/banner.jpg','2018-04-04 11:12:32'),(7,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/3a/99/3a99fd75-cfee-4a3d-aed0-3fb3b2f7e6f2/banner.png','2018-04-04 11:04:10'),(8,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/65/87/658704f2-bc60-4419-a15c-37ba1cd8c366/flip_1.jpg','2018-04-04 11:18:11'),(9,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/10/ea/10ea1ade-2878-4924-804f-fc0056b68156/flip_2.jpg','2018-04-04 11:18:11'),(10,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/fd/b0/fdb0c0d7-7042-405e-ace6-524fb331c457/flip_3.jpg','2018-04-04 11:18:11'),(11,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/a5/cb/a5cbbc27-8ec0-4458-82f9-8bf48cb6f871/flip_4.jpg','2018-04-04 11:18:11'),(12,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/cf/cd/cfcd798a-a2a6-4e09-8de7-29e845d88313/logo.jpg','2018-04-04 11:04:12'),(13,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/83/53/83534a1f-65d3-459d-ab62-19353b5568d8/logo.png','2018-04-04 11:12:32'),(14,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/65/50/655073b7-6196-4ff8-9e44-f45fc4a8fa77/right_color.png','2018-04-04 11:18:11');
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`),
  CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_thumbnail` VALUES (1,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a7/a2/a7a292f9-6ee6-4775-8bf2-dc71009617e8\\arrow-1.png__32x32_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:08',1),(2,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/f6/ef/f6efda40-f5dd-47d3-8391-393e8dc00756\\arrow-2.png__32x32_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',2),(3,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a7/a2/a7a292f9-6ee6-4775-8bf2-dc71009617e8\\arrow-1.png__64x64_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',1),(4,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/f6/ef/f6efda40-f5dd-47d3-8391-393e8dc00756\\arrow-2.png__64x64_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',2),(5,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a7/a2/a7a292f9-6ee6-4775-8bf2-dc71009617e8\\arrow-1.png__48x48_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',1),(6,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/f6/ef/f6efda40-f5dd-47d3-8391-393e8dc00756\\arrow-2.png__48x48_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',2),(7,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/97/75/9775cc57-86d5-49d2-b47a-d00933180f75\\arrow-5.png__32x32_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',4),(8,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a7/a2/a7a292f9-6ee6-4775-8bf2-dc71009617e8\\arrow-1.png__16x16_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',1),(9,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/f6/ef/f6efda40-f5dd-47d3-8391-393e8dc00756\\arrow-2.png__16x16_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',2),(10,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/97/75/9775cc57-86d5-49d2-b47a-d00933180f75\\arrow-5.png__64x64_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',4),(11,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a7/a2/a7a292f9-6ee6-4775-8bf2-dc71009617e8\\arrow-1.png__180x180_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',1),(12,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/97/75/9775cc57-86d5-49d2-b47a-d00933180f75\\arrow-5.png__48x48_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',4),(13,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/f6/ef/f6efda40-f5dd-47d3-8391-393e8dc00756\\arrow-2.png__180x180_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',2),(14,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/97/75/9775cc57-86d5-49d2-b47a-d00933180f75\\arrow-5.png__16x16_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',4),(15,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/97/75/9775cc57-86d5-49d2-b47a-d00933180f75\\arrow-5.png__180x180_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:09',4),(16,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/9e/90/9e90ec58-af96-473d-b746-f03f7448ee0c\\arrow-6.png__32x32_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:10',5),(17,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b6/ac/b6ac9a91-47e1-47c3-9a50-5cc8919774d7\\banner.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:10',6),(18,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/9e/90/9e90ec58-af96-473d-b746-f03f7448ee0c\\arrow-6.png__64x64_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:10',5),(19,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b6/ac/b6ac9a91-47e1-47c3-9a50-5cc8919774d7\\banner.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:10',6),(20,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/9e/90/9e90ec58-af96-473d-b746-f03f7448ee0c\\arrow-6.png__48x48_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:10',5),(21,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/3a/99/3a99fd75-cfee-4a3d-aed0-3fb3b2f7e6f2\\banner.png__32x32_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:10',7),(22,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b6/ac/b6ac9a91-47e1-47c3-9a50-5cc8919774d7\\banner.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:10',6),(23,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/9e/90/9e90ec58-af96-473d-b746-f03f7448ee0c\\arrow-6.png__16x16_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:10',5),(24,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/3a/99/3a99fd75-cfee-4a3d-aed0-3fb3b2f7e6f2\\banner.png__64x64_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:10',7),(25,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b6/ac/b6ac9a91-47e1-47c3-9a50-5cc8919774d7\\banner.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:10',6),(26,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/9e/90/9e90ec58-af96-473d-b746-f03f7448ee0c\\arrow-6.png__180x180_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:10',5),(27,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/3a/99/3a99fd75-cfee-4a3d-aed0-3fb3b2f7e6f2\\banner.png__48x48_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:11',7),(28,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b6/ac/b6ac9a91-47e1-47c3-9a50-5cc8919774d7\\banner.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:11',6),(29,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/3a/99/3a99fd75-cfee-4a3d-aed0-3fb3b2f7e6f2\\banner.png__16x16_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:11',7),(30,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/87/658704f2-bc60-4419-a15c-37ba1cd8c366\\flip_1.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:11',8),(31,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/87/658704f2-bc60-4419-a15c-37ba1cd8c366\\flip_1.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:11',8),(32,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/3a/99/3a99fd75-cfee-4a3d-aed0-3fb3b2f7e6f2\\banner.png__180x180_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:11',7),(33,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/10/ea/10ea1ade-2878-4924-804f-fc0056b68156\\flip_2.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:11',9),(34,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/87/658704f2-bc60-4419-a15c-37ba1cd8c366\\flip_1.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:11',8),(35,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/10/ea/10ea1ade-2878-4924-804f-fc0056b68156\\flip_2.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:11',9),(36,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/87/658704f2-bc60-4419-a15c-37ba1cd8c366\\flip_1.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:11',8),(37,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/10/ea/10ea1ade-2878-4924-804f-fc0056b68156\\flip_2.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:11',9),(38,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/87/658704f2-bc60-4419-a15c-37ba1cd8c366\\flip_1.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',8),(39,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/fd/b0/fdb0c0d7-7042-405e-ace6-524fb331c457\\flip_3.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',10),(40,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/10/ea/10ea1ade-2878-4924-804f-fc0056b68156\\flip_2.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',9),(41,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/fd/b0/fdb0c0d7-7042-405e-ace6-524fb331c457\\flip_3.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',10),(42,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/10/ea/10ea1ade-2878-4924-804f-fc0056b68156\\flip_2.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',9),(43,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/fd/b0/fdb0c0d7-7042-405e-ace6-524fb331c457\\flip_3.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',10),(44,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a5/cb/a5cbbc27-8ec0-4458-82f9-8bf48cb6f871\\flip_4.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',11),(45,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/fd/b0/fdb0c0d7-7042-405e-ace6-524fb331c457\\flip_3.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',10),(46,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a5/cb/a5cbbc27-8ec0-4458-82f9-8bf48cb6f871\\flip_4.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',11),(47,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/fd/b0/fdb0c0d7-7042-405e-ace6-524fb331c457\\flip_3.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',10),(48,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/cf/cd/cfcd798a-a2a6-4e09-8de7-29e845d88313\\logo.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',12),(49,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a5/cb/a5cbbc27-8ec0-4458-82f9-8bf48cb6f871\\flip_4.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',11),(50,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/cf/cd/cfcd798a-a2a6-4e09-8de7-29e845d88313\\logo.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',12),(51,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a5/cb/a5cbbc27-8ec0-4458-82f9-8bf48cb6f871\\flip_4.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:12',11),(52,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/cf/cd/cfcd798a-a2a6-4e09-8de7-29e845d88313\\logo.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:13',12),(53,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/83/53/83534a1f-65d3-459d-ab62-19353b5568d8\\logo.png__32x32_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:13',13),(54,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a5/cb/a5cbbc27-8ec0-4458-82f9-8bf48cb6f871\\flip_4.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:13',11),(55,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/cf/cd/cfcd798a-a2a6-4e09-8de7-29e845d88313\\logo.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:13',12),(56,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/83/53/83534a1f-65d3-459d-ab62-19353b5568d8\\logo.png__64x64_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:13',13),(57,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/cf/cd/cfcd798a-a2a6-4e09-8de7-29e845d88313\\logo.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2018-04-04 11:04:13',12),(58,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/83/53/83534a1f-65d3-459d-ab62-19353b5568d8\\logo.png__48x48_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:13',13),(59,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/50/655073b7-6196-4ff8-9e44-f45fc4a8fa77\\right_color.png__32x32_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:13',14),(60,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/83/53/83534a1f-65d3-459d-ab62-19353b5568d8\\logo.png__16x16_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:13',13),(61,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/50/655073b7-6196-4ff8-9e44-f45fc4a8fa77\\right_color.png__64x64_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:13',14),(62,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/83/53/83534a1f-65d3-459d-ab62-19353b5568d8\\logo.png__180x180_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:13',13),(63,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/50/655073b7-6196-4ff8-9e44-f45fc4a8fa77\\right_color.png__48x48_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:13',14),(64,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/50/655073b7-6196-4ff8-9e44-f45fc4a8fa77\\right_color.png__16x16_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:14',14),(65,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/50/655073b7-6196-4ff8-9e44-f45fc4a8fa77\\right_color.png__180x180_q85_crop_subsampling-2_upscale.png','2018-04-04 11:04:14',14),(66,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/b6/ac/b6ac9a91-47e1-47c3-9a50-5cc8919774d7\\banner.jpg__1280x800_q85_subsampling-2.jpg','2018-04-04 11:12:32',6),(67,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/83/53/83534a1f-65d3-459d-ab62-19353b5568d8\\logo.png__293x113_q85_subsampling-2.png','2018-04-04 11:12:32',13),(68,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/50/655073b7-6196-4ff8-9e44-f45fc4a8fa77\\right_color.png__326x231_q85_subsampling-2.png','2018-04-04 11:18:11',14),(69,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/65/87/658704f2-bc60-4419-a15c-37ba1cd8c366\\flip_1.jpg__275x183_q85_subsampling-2.jpg','2018-04-04 11:18:11',8),(70,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/10/ea/10ea1ade-2878-4924-804f-fc0056b68156\\flip_2.jpg__275x183_q85_subsampling-2.jpg','2018-04-04 11:18:11',9),(71,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/fd/b0/fdb0c0d7-7042-405e-ace6-524fb331c457\\flip_3.jpg__275x183_q85_subsampling-2.jpg','2018-04-04 11:18:11',10),(72,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails\\filer_public/a5/cb/a5cbbc27-8ec0-4458-82f9-8bf48cb6f871\\flip_4.jpg__275x183_q85_subsampling-2.jpg','2018-04-04 11:18:11',11);
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboard`
--

DROP TABLE IF EXISTS `filer_clipboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboard`
--

LOCK TABLES `filer_clipboard` WRITE;
/*!40000 ALTER TABLE `filer_clipboard` DISABLE KEYS */;
INSERT INTO `filer_clipboard` VALUES (1,1);
/*!40000 ALTER TABLE `filer_clipboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboarditem`
--

DROP TABLE IF EXISTS `filer_clipboarditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`),
  KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`),
  CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboarditem`
--

LOCK TABLES `filer_clipboarditem` WRITE;
/*!40000 ALTER TABLE `filer_clipboarditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboarditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_file`
--

DROP TABLE IF EXISTS `filer_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` int(11) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `uploaded_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`),
  KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_file`
--

LOCK TABLES `filer_file` WRITE;
/*!40000 ALTER TABLE `filer_file` DISABLE KEYS */;
INSERT INTO `filer_file` VALUES (1,'filer_public/a7/a2/a7a292f9-6ee6-4775-8bf2-dc71009617e8/arrow-1.png',872,'823f3056d60054335ffbaa51d52a1b587c479de6',0,'arrow-1.png','',NULL,'2018-04-04 11:04:08','2018-04-04 11:04:08',1,NULL,1,31),(2,'filer_public/f6/ef/f6efda40-f5dd-47d3-8391-393e8dc00756/arrow-2.png',3652,'460d0659cc7b82e432dcbabf46d5ca716b6164b1',0,'arrow-2.png','',NULL,'2018-04-04 11:04:08','2018-04-04 11:04:08',1,NULL,1,31),(4,'filer_public/97/75/9775cc57-86d5-49d2-b47a-d00933180f75/arrow-5.png',1232,'d4aa938f2f96c1ec51790e2435a43e901d099ed0',0,'arrow-5.png','',NULL,'2018-04-04 11:04:09','2018-04-04 11:04:09',1,NULL,1,31),(5,'filer_public/9e/90/9e90ec58-af96-473d-b746-f03f7448ee0c/arrow-6.png',1252,'faf09c08f32500663291ff9806b2bdc5b9341be9',0,'arrow-6.png','',NULL,'2018-04-04 11:04:09','2018-04-04 11:04:09',1,NULL,1,31),(6,'filer_public/b6/ac/b6ac9a91-47e1-47c3-9a50-5cc8919774d7/banner.jpg',313724,'6872c386ce1e3f458e195e47ebfd3d0b9899f5d3',0,'banner.jpg','',NULL,'2018-04-04 11:04:09','2018-04-04 11:04:09',1,NULL,1,31),(7,'filer_public/3a/99/3a99fd75-cfee-4a3d-aed0-3fb3b2f7e6f2/banner.png',420324,'dc236057a4a9d489a5913acbbf1916ec85dd0fe2',0,'banner.png','',NULL,'2018-04-04 11:04:10','2018-04-04 11:04:10',1,NULL,1,31),(8,'filer_public/65/87/658704f2-bc60-4419-a15c-37ba1cd8c366/flip_1.jpg',12918,'4d0198f3000eb04b607f1309d78172b25bdf74b0',0,'flip_1.jpg','',NULL,'2018-04-04 11:04:11','2018-04-04 11:04:11',1,NULL,1,31),(9,'filer_public/10/ea/10ea1ade-2878-4924-804f-fc0056b68156/flip_2.jpg',13467,'8ee16f2fcf04761496c6990d9f8d5a059fe977d4',0,'flip_2.jpg','',NULL,'2018-04-04 11:04:11','2018-04-04 11:04:11',1,NULL,1,31),(10,'filer_public/fd/b0/fdb0c0d7-7042-405e-ace6-524fb331c457/flip_3.jpg',17165,'de010194a616bf897a82fca7e6edcd203823b4d3',0,'flip_3.jpg','',NULL,'2018-04-04 11:04:11','2018-04-04 11:04:11',1,NULL,1,31),(11,'filer_public/a5/cb/a5cbbc27-8ec0-4458-82f9-8bf48cb6f871/flip_4.jpg',16662,'51392e7442d66b142e31be213f773f78e0ddcda1',0,'flip_4.jpg','',NULL,'2018-04-04 11:04:12','2018-04-04 11:04:12',1,NULL,1,31),(12,'filer_public/cf/cd/cfcd798a-a2a6-4e09-8de7-29e845d88313/logo.jpg',5004,'749a5b460022ac3432c6051cd53074f4cfab909d',0,'logo.jpg','',NULL,'2018-04-04 11:04:12','2018-04-04 11:04:12',1,NULL,1,31),(13,'filer_public/83/53/83534a1f-65d3-459d-ab62-19353b5568d8/logo.png',150470,'88c93b14d3fd6db8ec0627f1ee2a76b13bd57823',0,'logo.png','',NULL,'2018-04-04 11:04:12','2018-04-04 11:04:12',1,NULL,1,31),(14,'filer_public/65/50/655073b7-6196-4ff8-9e44-f45fc4a8fa77/right_color.png',52283,'6e78e807ed6bdfcef9b939bdd9ecdb5f09048799',0,'right_color.png','',NULL,'2018-04-04 11:04:13','2018-04-04 11:04:13',1,NULL,1,31);
/*!40000 ALTER TABLE `filer_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folder`
--

DROP TABLE IF EXISTS `filer_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  KEY `filer_folder_lft_2c2b69f1` (`lft`),
  KEY `filer_folder_rght_34946267` (`rght`),
  KEY `filer_folder_tree_id_b016223c` (`tree_id`),
  KEY `filer_folder_level_b631d28a` (`level`),
  KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folder`
--

LOCK TABLES `filer_folder` WRITE;
/*!40000 ALTER TABLE `filer_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folderpermission`
--

DROP TABLE IF EXISTS `filer_folderpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folderpermission`
--

LOCK TABLES `filer_folderpermission` WRITE;
/*!40000 ALTER TABLE `filer_folderpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folderpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_image`
--

DROP TABLE IF EXISTS `filer_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` int(11) DEFAULT NULL,
  `_width` int(11) DEFAULT NULL,
  `date_taken` datetime DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  PRIMARY KEY (`file_ptr_id`),
  CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_image`
--

LOCK TABLES `filer_image` WRITE;
/*!40000 ALTER TABLE `filer_image` DISABLE KEYS */;
INSERT INTO `filer_image` VALUES (1,52,200,'2018-04-04 11:04:08',NULL,NULL,NULL,0,0,''),(2,150,49,'2018-04-04 11:04:08',NULL,NULL,NULL,0,0,''),(4,200,200,'2018-04-04 11:04:09',NULL,NULL,NULL,0,0,''),(5,200,200,'2018-04-04 11:04:09',NULL,NULL,NULL,0,0,''),(6,800,1280,'2018-04-04 11:04:09',NULL,NULL,NULL,0,0,''),(7,1080,1920,'2018-04-04 11:04:10',NULL,NULL,NULL,0,0,''),(8,183,275,'2018-04-04 11:04:11',NULL,NULL,NULL,0,0,''),(9,183,275,'2018-04-04 11:04:11',NULL,NULL,NULL,0,0,''),(10,183,275,'2018-04-04 11:04:11',NULL,NULL,NULL,0,0,''),(11,183,275,'2018-04-04 11:04:12',NULL,NULL,NULL,0,0,''),(12,75,169,'2018-04-04 11:04:12',NULL,NULL,NULL,0,0,''),(13,113,293,'2018-04-04 11:04:12',NULL,NULL,NULL,0,0,''),(14,231,326,'2018-04-04 11:04:13',NULL,NULL,NULL,0,0,'');
/*!40000 ALTER TABLE `filer_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_thumbnailoption`
--

DROP TABLE IF EXISTS `filer_thumbnailoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_thumbnailoption`
--

LOCK TABLES `filer_thumbnailoption` WRITE;
/*!40000 ALTER TABLE `filer_thumbnailoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_thumbnailoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_cachekey`
--

DROP TABLE IF EXISTS `menus_cachekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_cachekey`
--

LOCK TABLES `menus_cachekey` WRITE;
/*!40000 ALTER TABLE `menus_cachekey` DISABLE KEYS */;
/*!40000 ALTER TABLE `menus_cachekey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_choice`
--

DROP TABLE IF EXISTS `polls_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choice_text` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `polls_choice_poll_id_3a553f1a_fk_polls_poll_id` (`poll_id`),
  CONSTRAINT `polls_choice_poll_id_3a553f1a_fk_polls_poll_id` FOREIGN KEY (`poll_id`) REFERENCES `polls_poll` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_choice`
--

LOCK TABLES `polls_choice` WRITE;
/*!40000 ALTER TABLE `polls_choice` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_cms_integration_pollpluginmodel`
--

DROP TABLE IF EXISTS `polls_cms_integration_pollpluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_cms_integration_pollpluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `poll_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `polls_cms_integratio_poll_id_112674f8_fk_polls_pol` (`poll_id`),
  CONSTRAINT `polls_cms_integratio_poll_id_112674f8_fk_polls_pol` FOREIGN KEY (`poll_id`) REFERENCES `polls_poll` (`id`),
  CONSTRAINT `polls_cms_integratio_cmsplugin_ptr_id_3ca362c9_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_cms_integration_pollpluginmodel`
--

LOCK TABLES `polls_cms_integration_pollpluginmodel` WRITE;
/*!40000 ALTER TABLE `polls_cms_integration_pollpluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls_cms_integration_pollpluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polls_poll`
--

DROP TABLE IF EXISTS `polls_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polls_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polls_poll`
--

LOCK TABLES `polls_poll` WRITE;
/*!40000 ALTER TABLE `polls_poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `polls_poll` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-04 17:31:47
