-- MySQL dump 10.13  Distrib 5.1.69, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: owncloud
-- ------------------------------------------------------
-- Server version	5.1.69

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

CREATE DATABASE IF NOT EXISTS owncloud;

USE owncloud;

--
-- Table structure for table `appconfig`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `appconfig` (
  `appid` varchar(32) NOT NULL DEFAULT ' ',
  `configkey` varchar(64) NOT NULL DEFAULT ' ',
  `configvalue` longtext,
  KEY `appconfig_appid_key_index` (`appid`,`configkey`),
  KEY `appconfig_config_key_index` (`configkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appconfig`
--

LOCK TABLES `appconfig` WRITE;
/*!40000 ALTER TABLE `appconfig` DISABLE KEYS */;
INSERT INTO `appconfig` VALUES ('core','installedat','1378169383.2241'),('core','lastupdatedat','1378171844.8297'),('core','remote_core.css','/core/minimizer.php'),('core','remote_core.js','/core/minimizer.php'),('user_migrate','installed_version','0.1'),('user_migrate','types',NULL),('user_migrate','enabled','yes'),('files_texteditor','installed_version','0.3'),('files_texteditor','types',NULL),('files_texteditor','enabled','yes'),('files_pdfviewer','installed_version','0.2'),('files_pdfviewer','types',NULL),('files_pdfviewer','enabled','yes'),('search_lucene','installed_version','0.5.0'),('search_lucene','types','filesystem'),('search_lucene','enabled','yes'),('files_videoviewer','installed_version','0.1.1'),('files_videoviewer','types',NULL),('files_videoviewer','enabled','yes'),('gallery','installed_version','0.5.2'),('core','public_gallery','gallery/sharing.php'),('gallery','types','filesystem'),('gallery','enabled','yes'),('files_versions','installed_version','1.0.3'),('files_versions','types','filesystem'),('files_versions','enabled','yes'),('firstrunwizard','installed_version','1.0'),('firstrunwizard','types',NULL),('firstrunwizard','enabled','yes'),('calendar','installed_version','0.6.3'),('core','remote_calendar','calendar/appinfo/remote.php'),('core','remote_caldav','calendar/appinfo/remote.php'),('core','public_calendar','calendar/share.php'),('core','public_caldav','calendar/share.php'),('calendar','types',NULL),('calendar','enabled','no'),('files','installed_version','1.1.7'),('core','remote_files','files/appinfo/remote.php'),('core','remote_webdav','files/appinfo/remote.php'),('core','remote_filesync','files/appinfo/filesync.php'),('files','types','filesystem'),('files','enabled','yes'),('admin_migrate','installed_version','0.1'),('admin_migrate','types',NULL),('admin_migrate','enabled','yes'),('media','installed_version','0.4.3'),('core','remote_ampache','media/remote.php'),('media','types',NULL),('media','enabled','yes'),('files_odfviewer','installed_version','0.1'),('files_odfviewer','types',NULL),('files_odfviewer','enabled','yes'),('updater','installed_version','0.3'),('updater','types',NULL),('updater','enabled','yes'),('files_sharing','installed_version','0.3.3'),('core','public_files','files_sharing/public.php'),('core','public_webdav','files_sharing/public.php'),('files_sharing','types','filesystem'),('files_sharing','enabled','yes'),('files_imageviewer','installed_version','1.0'),('files_imageviewer','types',NULL),('files_imageviewer','enabled','yes'),('files_trashbin','installed_version','0.4'),('files_trashbin','types','filesystem'),('files_trashbin','enabled','yes'),('contacts','installed_version','0.2.5'),('core','remote_contacts','contacts/appinfo/remote.php'),('core','remote_carddav','contacts/appinfo/remote.php'),('core','remote_contactthumbnail','contacts/thumbnail.php'),('contacts','types',NULL),('contacts','enabled','no'),('core','backgroundjobs_task','OC_Cache_FileGlobal-gc'),('core','global_cache_gc_lastrun','1378389059'),('core','backgroundjobs_step','queued_tasks'),('user_ldap','installed_version','0.4.0'),('user_ldap','types','authentication'),('user_ldap','enabled','yes'),('user_ldap','bgjUpdateGroupsLastRun','1378171661'),('user_ldap','ldap_uuid_attribute','entryuuid'),('user_ldap','ldap_host','localhost:389'),('user_ldap','ldap_port','389'),('user_ldap','ldap_backup_host',''),('user_ldap','ldap_backup_port','389'),('user_ldap','ldap_base','dc=directory,dc=nh'),('user_ldap','ldap_base_users','dc=directory,dc=nh'),('user_ldap','ldap_base_groups','dc=directory,dc=nh'),('user_ldap','ldap_dn','uid=owncloud,ou=People,dc=directory,dc=nh'),('user_ldap','ldap_agent_password','TmV0aGVzaXMsMTIzNA=='),('user_ldap','ldap_tls','1'),('user_ldap','ldap_nocase',''),('user_ldap','ldap_turn_off_cert_check',''),('user_ldap','ldap_display_name','cn'),('user_ldap','ldap_userlist_filter','(&(objectClass=person)(objectClass=sambaSamAccount))'),('user_ldap','ldap_group_filter','(&(objectClass=posixGroup)(memberUid=*))'),('user_ldap','ldap_group_display_name','cn'),('user_ldap','ldap_group_member_assoc_attribute','uniqueMember'),('user_ldap','ldap_login_filter','uid=%uid'),('user_ldap','ldap_quota_attr',''),('user_ldap','ldap_quota_def',''),('user_ldap','ldap_email_attr',''),('user_ldap','ldap_cache_ttl','600'),('user_ldap','ldap_override_main_server',''),('user_ldap','ldap_configuration_active','1'),('user_ldap','ldap_attributes_for_user_search',''),('user_ldap','ldap_attributes_for_group_search',''),('user_ldap','home_folder_naming_rule',''),('user_ldap','ldap_expert_username_attr',''),('user_ldap','ldap_expert_uuid_attr','');
/*!40000 ALTER TABLE `appconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clndr_calendars`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `clndr_calendars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `displayname` varchar(100) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  `ctag` int(10) unsigned NOT NULL DEFAULT '0',
  `calendarorder` int(10) unsigned NOT NULL DEFAULT '0',
  `calendarcolor` varchar(10) DEFAULT NULL,
  `timezone` longtext,
  `components` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clndr_calendars`
--

LOCK TABLES `clndr_calendars` WRITE;
/*!40000 ALTER TABLE `clndr_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `clndr_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clndr_objects`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `clndr_objects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `calendarid` int(10) unsigned NOT NULL DEFAULT '0',
  `objecttype` varchar(40) NOT NULL DEFAULT ' ',
  `startdate` datetime DEFAULT '1970-01-01 00:00:00',
  `enddate` datetime DEFAULT '1970-01-01 00:00:00',
  `repeating` int(11) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `calendardata` longtext,
  `uri` varchar(255) DEFAULT NULL,
  `lastmodified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clndr_objects`
--

LOCK TABLES `clndr_objects` WRITE;
/*!40000 ALTER TABLE `clndr_objects` DISABLE KEYS */;
/*!40000 ALTER TABLE `clndr_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clndr_repeat`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `clndr_repeat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eventid` int(10) unsigned NOT NULL DEFAULT '0',
  `calid` int(10) unsigned NOT NULL DEFAULT '0',
  `startdate` datetime DEFAULT '1970-01-01 00:00:00',
  `enddate` datetime DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clndr_repeat`
--

LOCK TABLES `clndr_repeat` WRITE;
/*!40000 ALTER TABLE `clndr_repeat` DISABLE KEYS */;
/*!40000 ALTER TABLE `clndr_repeat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clndr_share_calendar`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `clndr_share_calendar` (
  `owner` varchar(255) NOT NULL DEFAULT ' ',
  `share` varchar(255) NOT NULL DEFAULT ' ',
  `sharetype` varchar(6) NOT NULL DEFAULT ' ',
  `calendarid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `permissions` tinyint(4) NOT NULL DEFAULT '0',
  `active` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clndr_share_calendar`
--

LOCK TABLES `clndr_share_calendar` WRITE;
/*!40000 ALTER TABLE `clndr_share_calendar` DISABLE KEYS */;
/*!40000 ALTER TABLE `clndr_share_calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clndr_share_event`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `clndr_share_event` (
  `owner` varchar(255) NOT NULL DEFAULT ' ',
  `share` varchar(255) NOT NULL DEFAULT ' ',
  `sharetype` varchar(6) NOT NULL DEFAULT ' ',
  `eventid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `permissions` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clndr_share_event`
--

LOCK TABLES `clndr_share_event` WRITE;
/*!40000 ALTER TABLE `clndr_share_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `clndr_share_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_addressbooks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `contacts_addressbooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL DEFAULT ' ',
  `displayname` varchar(255) DEFAULT NULL,
  `uri` varchar(200) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `ctag` int(10) unsigned NOT NULL DEFAULT '1',
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_addressbooks`
--

LOCK TABLES `contacts_addressbooks` WRITE;
/*!40000 ALTER TABLE `contacts_addressbooks` DISABLE KEYS */;
INSERT INTO `contacts_addressbooks` VALUES (1,'root','Contacts','contacts','Default Address Book',1,1);
/*!40000 ALTER TABLE `contacts_addressbooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cards`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `contacts_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `addressbookid` int(10) unsigned NOT NULL DEFAULT '0',
  `fullname` varchar(255) DEFAULT NULL,
  `carddata` longtext,
  `uri` varchar(200) DEFAULT NULL,
  `lastmodified` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cards`
--

LOCK TABLES `contacts_cards` WRITE;
/*!40000 ALTER TABLE `contacts_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cards_properties`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `contacts_cards_properties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL DEFAULT ' ',
  `contactid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `preferred` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cp_name_index` (`name`),
  KEY `cp_value_index` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cards_properties`
--

LOCK TABLES `contacts_cards_properties` WRITE;
/*!40000 ALTER TABLE `contacts_cards_properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cards_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file_map`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `file_map` (
  `logic_path` varchar(512) NOT NULL DEFAULT ' ',
  `logic_path_hash` varchar(32) NOT NULL DEFAULT ' ',
  `physic_path` varchar(512) NOT NULL DEFAULT ' ',
  `physic_path_hash` varchar(32) NOT NULL DEFAULT ' ',
  UNIQUE KEY `file_map_lp_index` (`logic_path_hash`),
  UNIQUE KEY `file_map_pp_index` (`physic_path_hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file_map`
--

LOCK TABLES `file_map` WRITE;
/*!40000 ALTER TABLE `file_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `file_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filecache`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `filecache` (
  `fileid` int(11) NOT NULL AUTO_INCREMENT,
  `storage` int(11) NOT NULL DEFAULT '0',
  `path` varchar(512) DEFAULT NULL,
  `path_hash` varchar(32) NOT NULL DEFAULT ' ',
  `parent` int(11) NOT NULL DEFAULT '0',
  `name` varchar(250) DEFAULT NULL,
  `mimetype` int(11) NOT NULL DEFAULT '0',
  `mimepart` int(11) NOT NULL DEFAULT '0',
  `size` bigint(20) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `encrypted` int(11) NOT NULL DEFAULT '0',
  `unencrypted_size` bigint(20) NOT NULL DEFAULT '0',
  `etag` varchar(40) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`fileid`),
  UNIQUE KEY `fs_storage_path_hash` (`storage`,`path_hash`),
  KEY `fs_parent_name_hash` (`parent`,`name`),
  KEY `fs_storage_mimetype` (`storage`,`mimetype`),
  KEY `fs_storage_mimepart` (`storage`,`mimepart`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filecache`
--

LOCK TABLES `filecache` WRITE;
/*!40000 ALTER TABLE `filecache` DISABLE KEYS */;
INSERT INTO `filecache` VALUES (1,1,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,0,1378137499,0,0,'5224b59e92b5d'),(2,1,'files','45b963397aa40d4a0063e0d85e4fe7a1',1,'files',2,1,0,1378137499,0,0,'5224b59e9350d'),(3,1,'cache','0fea6a13c52b4d4725368f24b045ca84',1,'cache',2,1,0,1378137499,0,0,'5224b59e93fb9'),(4,2,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,0,1378136565,0,0,'52253229f090f'),(5,2,'files','45b963397aa40d4a0063e0d85e4fe7a1',4,'files',2,1,0,1378136565,0,0,'52253229f1f43'),(6,2,'cache','0fea6a13c52b4d4725368f24b045ca84',4,'cache',2,1,0,1378136565,0,0,'52253229f2354'),(7,3,'','d41d8cd98f00b204e9800998ecf8427e',-1,'',2,1,0,1378171780,0,0,'52253b8646bec'),(8,3,'files','45b963397aa40d4a0063e0d85e4fe7a1',7,'files',2,1,0,1378171780,0,0,'52253b86475c6');
/*!40000 ALTER TABLE `filecache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_trash`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `files_trash` (
  `id` varchar(250) NOT NULL DEFAULT ' ',
  `user` varchar(64) NOT NULL DEFAULT ' ',
  `timestamp` varchar(12) NOT NULL DEFAULT ' ',
  `location` varchar(512) NOT NULL DEFAULT ' ',
  `type` varchar(4) NOT NULL DEFAULT ' ',
  `mime` varchar(30) NOT NULL DEFAULT ' ',
  KEY `id_index` (`id`),
  KEY `timestamp_index` (`timestamp`),
  KEY `user_index` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_trash`
--

LOCK TABLES `files_trash` WRITE;
/*!40000 ALTER TABLE `files_trash` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_trashsize`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `files_trashsize` (
  `user` varchar(64) NOT NULL DEFAULT ' ',
  `size` varchar(50) NOT NULL DEFAULT ' '
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_trashsize`
--

LOCK TABLES `files_trashsize` WRITE;
/*!40000 ALTER TABLE `files_trashsize` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_trashsize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files_versions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `files_versions` (
  `user` varchar(64) NOT NULL DEFAULT ' ',
  `size` varchar(50) NOT NULL DEFAULT ' '
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_versions`
--

LOCK TABLES `files_versions` WRITE;
/*!40000 ALTER TABLE `files_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `files_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_sharing`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `gallery_sharing` (
  `token` varchar(64) NOT NULL DEFAULT ' ',
  `gallery_id` int(11) NOT NULL DEFAULT '0',
  `recursive` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_sharing`
--

LOCK TABLES `gallery_sharing` WRITE;
/*!40000 ALTER TABLE `gallery_sharing` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_sharing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_admin`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `group_admin` (
  `gid` varchar(64) NOT NULL DEFAULT ' ',
  `uid` varchar(64) NOT NULL DEFAULT ' ',
  KEY `group_admin_uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_admin`
--

LOCK TABLES `group_admin` WRITE;
/*!40000 ALTER TABLE `group_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_user`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `group_user` (
  `gid` varchar(64) NOT NULL DEFAULT ' ',
  `uid` varchar(64) NOT NULL DEFAULT ' '
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_user`
--

LOCK TABLES `group_user` WRITE;
/*!40000 ALTER TABLE `group_user` DISABLE KEYS */;
INSERT INTO `group_user` VALUES ('admin','admin');
/*!40000 ALTER TABLE `group_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `groups` (
  `gid` varchar(64) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`gid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES ('admin');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap_group_mapping`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `ldap_group_mapping` (
  `ldap_dn` varchar(255) NOT NULL DEFAULT ' ',
  `owncloud_name` varchar(255) NOT NULL DEFAULT ' ',
  `directory_uuid` varchar(255) NOT NULL DEFAULT ' ',
  UNIQUE KEY `ldap_dn_groups` (`ldap_dn`),
  UNIQUE KEY `owncloud_name_groups` (`owncloud_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap_group_mapping`
--

LOCK TABLES `ldap_group_mapping` WRITE;
/*!40000 ALTER TABLE `ldap_group_mapping` DISABLE KEYS */;
INSERT INTO `ldap_group_mapping` VALUES ('cn=shared,ou=groups,dc=directory,dc=nh','shared','bcfdb264-a45c-1032-8426-a18737d4f906'),('cn=group,ou=groups,dc=directory,dc=nh','group','d9777378-a883-1032-842c-a18737d4f906');
/*!40000 ALTER TABLE `ldap_group_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap_group_members`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `ldap_group_members` (
  `owncloudname` varchar(255) NOT NULL DEFAULT ' ',
  `owncloudusers` longtext NOT NULL,
  UNIQUE KEY `ldap_group_members_index` (`owncloudname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap_group_members`
--

LOCK TABLES `ldap_group_members` WRITE;
/*!40000 ALTER TABLE `ldap_group_members` DISABLE KEYS */;
INSERT INTO `ldap_group_members` VALUES ('shared','a:0:{}');
/*!40000 ALTER TABLE `ldap_group_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap_user_mapping`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `ldap_user_mapping` (
  `ldap_dn` varchar(255) NOT NULL DEFAULT ' ',
  `owncloud_name` varchar(255) NOT NULL DEFAULT ' ',
  `directory_uuid` varchar(255) NOT NULL DEFAULT ' ',
  UNIQUE KEY `ldap_dn_users` (`ldap_dn`),
  UNIQUE KEY `owncloud_name_users` (`owncloud_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap_user_mapping`
--

LOCK TABLES `ldap_user_mapping` WRITE;
/*!40000 ALTER TABLE `ldap_user_mapping` DISABLE KEYS */;
INSERT INTO `ldap_user_mapping` VALUES ('uid=alessio,ou=people,dc=directory,dc=nh','cf799b34-a52d-1032-8429-a18737d4f906','cf799b34-a52d-1032-8429-a18737d4f906'),('uid=owncloud,ou=people,dc=directory,dc=nh','4332980c-a883-1032-842b-a18737d4f906','4332980c-a883-1032-842b-a18737d4f906');
/*!40000 ALTER TABLE `ldap_user_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `locks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(64) DEFAULT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `timeout` int(10) unsigned DEFAULT '0',
  `created` bigint(20) DEFAULT '0',
  `token` varchar(100) DEFAULT NULL,
  `scope` tinyint(4) DEFAULT '0',
  `depth` tinyint(4) DEFAULT '0',
  `uri` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locks`
--

LOCK TABLES `locks` WRITE;
/*!40000 ALTER TABLE `locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lucene_status`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `lucene_status` (
  `fileid` int(11) NOT NULL DEFAULT '0',
  `status` varchar(1) DEFAULT NULL,
  KEY `status_index` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucene_status`
--

LOCK TABLES `lucene_status` WRITE;
/*!40000 ALTER TABLE `lucene_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `lucene_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_albums`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `media_albums` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_name` varchar(200) NOT NULL DEFAULT ' ',
  `album_artist` int(11) NOT NULL DEFAULT '0',
  `album_art` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `album_name_index` (`album_name`),
  KEY `album_artist_index` (`album_artist`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_albums`
--

LOCK TABLES `media_albums` WRITE;
/*!40000 ALTER TABLE `media_albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_artists`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `media_artists` (
  `artist_id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(200) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`artist_id`),
  UNIQUE KEY `artist_name` (`artist_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_artists`
--

LOCK TABLES `media_artists` WRITE;
/*!40000 ALTER TABLE `media_artists` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_artists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_sessions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `media_sessions` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL DEFAULT ' ',
  `user_id` varchar(64) NOT NULL DEFAULT ' ',
  `start` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_sessions`
--

LOCK TABLES `media_sessions` WRITE;
/*!40000 ALTER TABLE `media_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_songs`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `media_songs` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_name` varchar(200) NOT NULL DEFAULT ' ',
  `song_artist` int(11) NOT NULL DEFAULT '0',
  `song_album` int(11) NOT NULL DEFAULT '0',
  `song_path` varchar(200) NOT NULL DEFAULT ' ',
  `song_user` varchar(64) NOT NULL DEFAULT '0',
  `song_length` int(11) NOT NULL DEFAULT '0',
  `song_track` int(11) NOT NULL DEFAULT '0',
  `song_size` int(11) NOT NULL DEFAULT '0',
  `song_playcount` int(11) NOT NULL DEFAULT '0',
  `song_lastplayed` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`song_id`),
  KEY `song_album_index` (`song_album`),
  KEY `song_artist_index` (`song_artist`),
  KEY `song_name_index` (`song_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_songs`
--

LOCK TABLES `media_songs` WRITE;
/*!40000 ALTER TABLE `media_songs` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `media_users` (
  `user_id` varchar(64) NOT NULL DEFAULT '0',
  `user_password_sha256` varchar(64) NOT NULL DEFAULT ' '
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_users`
--

LOCK TABLES `media_users` WRITE;
/*!40000 ALTER TABLE `media_users` DISABLE KEYS */;
INSERT INTO `media_users` VALUES ('admin','648a5db6b14800f4009f62ec6bdbd04b91b6b25179c92626839e3a91fb32da5e'),('cf799b34-a52d-1032-8429-a18737d4f906','648a5db6b14800f4009f62ec6bdbd04b91b6b25179c92626839e3a91fb32da5e');
/*!40000 ALTER TABLE `media_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mimetypes`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `mimetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mimetype` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mimetype_id_index` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mimetypes`
--

LOCK TABLES `mimetypes` WRITE;
/*!40000 ALTER TABLE `mimetypes` DISABLE KEYS */;
INSERT INTO `mimetypes` VALUES (1,'httpd'),(2,'httpd/unix-directory');
/*!40000 ALTER TABLE `mimetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `permissions` (
  `fileid` int(11) NOT NULL DEFAULT '0',
  `user` varchar(64) NOT NULL DEFAULT ' ',
  `permissions` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `id_user_index` (`fileid`,`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (2,'root',31),(5,'admin',31),(8,'cf799b34-a52d-1032-8429-a18737d4f906',31);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures_images_cache`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `pictures_images_cache` (
  `uid_owner` varchar(64) NOT NULL DEFAULT ' ',
  `path` varchar(256) NOT NULL DEFAULT ' ',
  `width` int(11) NOT NULL DEFAULT '0',
  `height` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures_images_cache`
--

LOCK TABLES `pictures_images_cache` WRITE;
/*!40000 ALTER TABLE `pictures_images_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `pictures_images_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferences`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `preferences` (
  `userid` varchar(64) NOT NULL DEFAULT ' ',
  `appid` varchar(32) NOT NULL DEFAULT ' ',
  `configkey` varchar(64) NOT NULL DEFAULT ' ',
  `configvalue` longtext,
  KEY `pref_userid_appid_key_index` (`userid`,`appid`,`configkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferences`
--

LOCK TABLES `preferences` WRITE;
/*!40000 ALTER TABLE `preferences` DISABLE KEYS */;
INSERT INTO `preferences` VALUES ('admin','files','cache_version','5'),('admin','firstrunwizard','show','0'),('alessio','login_token','e1798ab4b26872665c5b06463ad9dd2f','1378171780'),('cf799b34-a52d-1032-8429-a18737d4f906','files','cache_version','5'),('cf799b34-a52d-1032-8429-a18737d4f906','firstrunwizard','show','0'),('admin','login_token','8ee9060c65cb4087e99ba58178019c6b','1378389058');
/*!40000 ALTER TABLE `preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `properties` (
  `userid` varchar(64) NOT NULL DEFAULT ' ',
  `propertypath` varchar(255) NOT NULL DEFAULT ' ',
  `propertyname` varchar(255) NOT NULL DEFAULT ' ',
  `propertyvalue` varchar(255) NOT NULL DEFAULT ' ',
  KEY `property_index` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `queuedtasks`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `queuedtasks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL DEFAULT ' ',
  `klass` varchar(255) NOT NULL DEFAULT ' ',
  `method` varchar(255) NOT NULL DEFAULT ' ',
  `parameters` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `queuedtasks`
--

LOCK TABLES `queuedtasks` WRITE;
/*!40000 ALTER TABLE `queuedtasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `queuedtasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `share`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `share_type` tinyint(4) NOT NULL DEFAULT '0',
  `share_with` varchar(255) DEFAULT NULL,
  `uid_owner` varchar(255) NOT NULL DEFAULT ' ',
  `parent` int(11) DEFAULT '0',
  `item_type` varchar(64) NOT NULL DEFAULT ' ',
  `item_source` varchar(255) DEFAULT NULL,
  `item_target` varchar(255) DEFAULT NULL,
  `file_source` int(11) DEFAULT '0',
  `file_target` varchar(512) DEFAULT NULL,
  `permissions` tinyint(4) NOT NULL DEFAULT '0',
  `stime` bigint(20) NOT NULL DEFAULT '0',
  `accepted` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` datetime DEFAULT NULL,
  `token` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `share`
--

LOCK TABLES `share` WRITE;
/*!40000 ALTER TABLE `share` DISABLE KEYS */;
/*!40000 ALTER TABLE `share` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storages`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `storages` (
  `id` varchar(64) DEFAULT NULL,
  `numeric_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`numeric_id`),
  UNIQUE KEY `storages_id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages`
--

LOCK TABLES `storages` WRITE;
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
INSERT INTO `storages` VALUES ('local::/var/www/html/owncloud/data/root/',1),('local::/var/www/html/owncloud/data/admin/',2),('43b5d351e0e3910f5045689165929cbc',3);
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `users` (
  `uid` varchar(64) NOT NULL DEFAULT ' ',
  `displayname` varchar(64) DEFAULT NULL,
  `password` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin',NULL,'$2a$08$ZIX9VPMRjngoZgtPjQU62eHI1sxJ8dz5lkFPPpSfTcGRF01.cSXpO');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcategory`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `vcategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(64) NOT NULL DEFAULT ' ',
  `type` varchar(64) NOT NULL DEFAULT ' ',
  `category` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`),
  KEY `type_index` (`type`),
  KEY `category_index` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcategory`
--

LOCK TABLES `vcategory` WRITE;
/*!40000 ALTER TABLE `vcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcategory_to_object`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE IF NOT EXISTS `vcategory_to_object` (
  `objid` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(64) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`categoryid`,`objid`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcategory_to_object`
--

LOCK TABLES `vcategory_to_object` WRITE;
/*!40000 ALTER TABLE `vcategory_to_object` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcategory_to_object` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


grant all on owncloud.* to 'ownuser'@'%' identified by 'ownpass';
FLUSH PRIVILEGES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-05 14:14:11
