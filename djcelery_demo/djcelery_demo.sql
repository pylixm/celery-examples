/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : djcelery_demo

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-05-29 16:37:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add task state', '7', 'add_taskmeta');
INSERT INTO `auth_permission` VALUES ('20', 'Can change task state', '7', 'change_taskmeta');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete task state', '7', 'delete_taskmeta');
INSERT INTO `auth_permission` VALUES ('22', 'Can add saved group result', '8', 'add_tasksetmeta');
INSERT INTO `auth_permission` VALUES ('23', 'Can change saved group result', '8', 'change_tasksetmeta');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete saved group result', '8', 'delete_tasksetmeta');
INSERT INTO `auth_permission` VALUES ('25', 'Can add interval', '9', 'add_intervalschedule');
INSERT INTO `auth_permission` VALUES ('26', 'Can change interval', '9', 'change_intervalschedule');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete interval', '9', 'delete_intervalschedule');
INSERT INTO `auth_permission` VALUES ('28', 'Can add crontab', '10', 'add_crontabschedule');
INSERT INTO `auth_permission` VALUES ('29', 'Can change crontab', '10', 'change_crontabschedule');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete crontab', '10', 'delete_crontabschedule');
INSERT INTO `auth_permission` VALUES ('31', 'Can add periodic tasks', '11', 'add_periodictasks');
INSERT INTO `auth_permission` VALUES ('32', 'Can change periodic tasks', '11', 'change_periodictasks');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete periodic tasks', '11', 'delete_periodictasks');
INSERT INTO `auth_permission` VALUES ('34', 'Can add periodic task', '12', 'add_periodictask');
INSERT INTO `auth_permission` VALUES ('35', 'Can change periodic task', '12', 'change_periodictask');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete periodic task', '12', 'delete_periodictask');
INSERT INTO `auth_permission` VALUES ('37', 'Can add worker', '13', 'add_workerstate');
INSERT INTO `auth_permission` VALUES ('38', 'Can change worker', '13', 'change_workerstate');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete worker', '13', 'delete_workerstate');
INSERT INTO `auth_permission` VALUES ('40', 'Can add task', '14', 'add_taskstate');
INSERT INTO `auth_permission` VALUES ('41', 'Can change task', '14', 'change_taskstate');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete task', '14', 'delete_taskstate');
INSERT INTO `auth_permission` VALUES ('43', 'Can add queue', '15', 'add_queue');
INSERT INTO `auth_permission` VALUES ('44', 'Can change queue', '15', 'change_queue');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete queue', '15', 'delete_queue');
INSERT INTO `auth_permission` VALUES ('46', 'Can add message', '16', 'add_message');
INSERT INTO `auth_permission` VALUES ('47', 'Can change message', '16', 'change_message');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete message', '16', 'delete_message');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for celery_taskmeta
-- ----------------------------
DROP TABLE IF EXISTS `celery_taskmeta`;
CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `celery_taskmeta_662f707d` (`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of celery_taskmeta
-- ----------------------------
INSERT INTO `celery_taskmeta` VALUES ('1', '8026af23-b402-4dfb-82b1-15b17f81e600', 'SUCCESS', 'gAJLCy4=', '2016-05-29 07:58:27', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('2', 'f7bc2f57-4d15-404f-a750-5431a8232957', 'SUCCESS', 'gAJLCy4=', '2016-05-29 07:59:26', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('3', 'dd71f292-03fe-4168-98ec-e4415d81181b', 'SUCCESS', 'gAJLCy4=', '2016-05-29 07:59:47', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('4', 'd932006d-2db0-47c5-8719-fe07b22efaf4', 'SUCCESS', 'gAJLCy4=', '2016-05-29 08:06:46', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');

-- ----------------------------
-- Table structure for celery_tasksetmeta
-- ----------------------------
DROP TABLE IF EXISTS `celery_tasksetmeta`;
CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`),
  KEY `celery_tasksetmeta_662f707d` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of celery_tasksetmeta
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
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
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'log entry', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'permission', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'group', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'user', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'content type', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'session', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'task state', 'djcelery', 'taskmeta');
INSERT INTO `django_content_type` VALUES ('8', 'saved group result', 'djcelery', 'tasksetmeta');
INSERT INTO `django_content_type` VALUES ('9', 'interval', 'djcelery', 'intervalschedule');
INSERT INTO `django_content_type` VALUES ('10', 'crontab', 'djcelery', 'crontabschedule');
INSERT INTO `django_content_type` VALUES ('11', 'periodic tasks', 'djcelery', 'periodictasks');
INSERT INTO `django_content_type` VALUES ('12', 'periodic task', 'djcelery', 'periodictask');
INSERT INTO `django_content_type` VALUES ('13', 'worker', 'djcelery', 'workerstate');
INSERT INTO `django_content_type` VALUES ('14', 'task', 'djcelery', 'taskstate');
INSERT INTO `django_content_type` VALUES ('15', 'queue', 'kombu_transport_django', 'queue');
INSERT INTO `django_content_type` VALUES ('16', 'message', 'kombu_transport_django', 'message');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2016-05-27 10:57:35');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2016-05-27 10:57:45');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2016-05-27 10:57:48');
INSERT INTO `django_migrations` VALUES ('4', 'djcelery', '0001_initial', '2016-05-27 10:57:57');
INSERT INTO `django_migrations` VALUES ('5', 'sessions', '0001_initial', '2016-05-27 10:57:59');
INSERT INTO `django_migrations` VALUES ('6', 'kombu_transport_django', '0001_initial', '2016-05-29 01:49:39');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for djcelery_crontabschedule
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_crontabschedule`;
CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_crontabschedule
-- ----------------------------

-- ----------------------------
-- Table structure for djcelery_intervalschedule
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_intervalschedule`;
CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_intervalschedule
-- ----------------------------

-- ----------------------------
-- Table structure for djcelery_periodictask
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictask`;
CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `djcelery_periodictask_f3f0d72a` (`crontab_id`),
  KEY `djcelery_periodictask_1dcd7040` (`interval_id`),
  CONSTRAINT `djc_interval_id_20cfc1cad060dfad_fk_djcelery_intervalschedule_id` FOREIGN KEY (`interval_id`) REFERENCES `djcelery_intervalschedule` (`id`),
  CONSTRAINT `djcel_crontab_id_1d8228f5b44b680a_fk_djcelery_crontabschedule_id` FOREIGN KEY (`crontab_id`) REFERENCES `djcelery_crontabschedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_periodictask
-- ----------------------------

-- ----------------------------
-- Table structure for djcelery_periodictasks
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictasks`;
CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_periodictasks
-- ----------------------------

-- ----------------------------
-- Table structure for djcelery_taskstate
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_taskstate`;
CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `worker_id` int(11),
  PRIMARY KEY (`id`,`hidden`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `djcelery_taskstate_9ed39e2e` (`state`),
  KEY `djcelery_taskstate_b068931c` (`name`),
  KEY `djcelery_taskstate_863bb2ee` (`tstamp`),
  KEY `djcelery_taskstate_662f707d` (`hidden`),
  KEY `djcelery_taskstate_ce77e6ef` (`worker_id`),
  CONSTRAINT `djcelery_t_worker_id_30050731b1c3d3d9_fk_djcelery_workerstate_id` FOREIGN KEY (`worker_id`) REFERENCES `djcelery_workerstate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_taskstate
-- ----------------------------

-- ----------------------------
-- Table structure for djcelery_workerstate
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_workerstate`;
CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `djcelery_workerstate_f129901a` (`last_heartbeat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_workerstate
-- ----------------------------

-- ----------------------------
-- Table structure for djkombu_message
-- ----------------------------
DROP TABLE IF EXISTS `djkombu_message`;
CREATE TABLE `djkombu_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visible` tinyint(1) NOT NULL,
  `sent_at` datetime DEFAULT NULL,
  `payload` longtext NOT NULL,
  `queue_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djkombu_message_46cf0e59` (`visible`),
  KEY `djkombu_message_df2f2974` (`sent_at`),
  KEY `djkombu_message_75249aa1` (`queue_id`),
  CONSTRAINT `djkombu_message_queue_id_12778caea7843dd_fk_djkombu_queue_id` FOREIGN KEY (`queue_id`) REFERENCES `djkombu_queue` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djkombu_message
-- ----------------------------
INSERT INTO `djkombu_message` VALUES ('6', '0', '2016-05-29 03:18:22', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSRiODcxYjljNi0wZDMzLTQyYmEtODNmZi1iZDc0ZjdiMDU1NjdxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"b871b9c6-0d33-42ba-83ff-bd74f7b05567\", \"reply_to\": \"079068c6-ea8c-35f8-b4d8-680fca8f4ac4\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"d77386ee-135b-49ba-b372-0392a9c97e67\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('7', '0', '2016-05-29 03:37:24', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSQ1YmU0YmNhOC01ZTUxLTQyYzgtODFhNy03ZDkzZjhkMGU3Y2NxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"5be4bca8-5e51-42c8-81a7-7d93f8d0e7cc\", \"reply_to\": \"f9feb386-701d-3e31-8c73-222d95d4c980\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"9cf2daf3-ec2d-44ad-bdb9-e55308cee60a\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('8', '0', '2016-05-29 03:39:09', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSRkYmQxMGQ3NC1iYzA5LTQ0NzEtOGFkYy02N2Y1MjllNjQ3YjdxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"dbd10d74-bc09-4471-8adc-67f529e647b7\", \"reply_to\": \"f9feb386-701d-3e31-8c73-222d95d4c980\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"21533a55-2ea1-4e26-8f7f-ebeb88e15fe3\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('9', '0', '2016-05-29 03:40:26', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSQ1ODllMTRiOC02Y2FiLTQ4YTctOGNiMS00MTJjNDUwOThhMzlxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"589e14b8-6cab-48a7-8cb1-412c45098a39\", \"reply_to\": \"f9feb386-701d-3e31-8c73-222d95d4c980\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"ddef40e6-66b9-4cfe-9830-b86421a9f25f\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('10', '0', '2016-05-29 03:42:19', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsCSwOGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSQ1NDJiNzI4MC03ODZiLTRjYzgtOTBjNC0xMTY1ODVmNzRmYTJxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"542b7280-786b-4cc8-90c4-116585f74fa2\", \"reply_to\": \"46e6bc73-bedd-396e-9ac7-48c68d5e6cfd\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"9fd3a8e2-70de-48a2-b941-9eaf07ba54b4\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('11', '0', '2016-05-29 03:46:20', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSQzNDcxZTZhYS05NjdlLTRmMjQtYmM5Ny0wZDE2NzY4ZGE2M2VxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"3471e6aa-967e-4f24-bc97-0d16768da63e\", \"reply_to\": \"2752141d-2c17-3d9b-afad-407f09027bf7\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"99066ca7-9feb-46cf-b0b1-9c020c0b36c9\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('12', '0', '2016-05-29 03:46:25', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSQ2ZjYxYTQ3My02NDIxLTQzMWUtYmU3YS1jOTgzNTliYjk5YWZxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"6f61a473-6421-431e-be7a-c98359bb99af\", \"reply_to\": \"2752141d-2c17-3d9b-afad-407f09027bf7\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"5b193144-4ff3-4a18-a08c-ad45812027d1\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('13', '0', '2016-05-29 03:47:25', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSQyN2NmZGI2OC0yYTE3LTRiYWEtYjIyNS0zNWEzMzg3YTQxYmJxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"27cfdb68-2a17-4baa-b225-35a3387a41bb\", \"reply_to\": \"2752141d-2c17-3d9b-afad-407f09027bf7\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"b98cfd54-4fc0-4b43-a128-b3f246627dc2\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('14', '0', '2016-05-29 03:47:28', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSQ5OGY5ZmFjMi1kNWI4LTQxMzItYjA1MS1jYTE0Nzk1Yzk1M2FxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"98f9fac2-d5b8-4132-b051-ca14795c953a\", \"reply_to\": \"2752141d-2c17-3d9b-afad-407f09027bf7\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"1886a335-999d-4882-acda-7f7f8278aaf3\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('15', '0', '2016-05-29 03:50:00', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSRmYWJiNzY5Ni00OWU1LTQ3ZTYtODZmNS1jYjAxYzhhZDQ5Y2RxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"fabb7696-49e5-47e6-86f5-cb01c8ad49cd\", \"reply_to\": \"d5411003-f2de-32fe-94ba-ae7d8f3f38ee\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"0eff344d-d796-4050-b041-99309d89288d\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('16', '0', '2016-05-29 03:51:04', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSQ2ZTBkNWU3MC1lNzY3LTQ5NGQtOWI1Zi01NWU3ODAxZmY1MWNxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"6e0d5e70-e767-494d-9b5f-55e7801ff51c\", \"reply_to\": \"27fcaced-14ea-3543-9e84-1d662ebef08f\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"077cd1fe-2188-474b-8668-f98afa328e2a\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('17', '0', '2016-05-29 03:51:53', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSRlYmMyNWU2Ny1mODVmLTQ1NzctOGVkNS00OWExOGVkNWYxOWZxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"ebc25e67-f85f-4577-8ed5-49a18ed5f19f\", \"reply_to\": \"50ebdb65-5c0d-34ac-b8f7-fb0549f82980\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"51511756-70c2-4b5c-80e9-c2dec51d183f\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('18', '0', '2016-05-29 04:15:57', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSQ1NGI3OGZiMS1hMDE1LTQxMDUtYmE0Yy01YTA0ZmM0MTNlODNxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"54b78fb1-a015-4105-ba4c-5a04fc413e83\", \"reply_to\": \"a1dca74e-fb5e-306e-9fae-565bb10939d0\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"02f436f8-5d47-4a1e-b0f6-0c47921f8ace\"}, \"content-encoding\": \"binary\"}', '1');
INSERT INTO `djkombu_message` VALUES ('19', '0', '2016-05-29 04:16:54', '{\"body\": \"gAJ9cQEoVQdleHBpcmVzcQJOVQN1dGNxA4hVBGFyZ3NxBEsFSwaGcQVVBWNob3JkcQZOVQljYWxsYmFja3NxB05VCGVycmJhY2tzcQhOVQd0YXNrc2V0cQlOVQJpZHEKVSQ5MDBjY2UzNC00NWU2LTQ3ODAtOGFkYi04Mjc3ZjU5MTMyNjhxC1UHcmV0cmllc3EMSwBVBHRhc2txDVUQdGFza2FwcC50YXNrLmFkZHEOVQl0aW1lbGltaXRxD05OhlUDZXRhcRBOVQZrd2FyZ3NxEX1xEnUu\", \"headers\": {}, \"content-type\": \"application/x-python-serialize\", \"properties\": {\"body_encoding\": \"base64\", \"correlation_id\": \"900cce34-45e6-4780-8adb-8277f5913268\", \"reply_to\": \"377014c1-785e-37d0-908b-e85411c29687\", \"delivery_info\": {\"priority\": 0, \"routing_key\": \"celery\", \"exchange\": \"celery\"}, \"delivery_mode\": 2, \"delivery_tag\": \"da6c348f-21df-4c53-a9fa-4d9156372b7e\"}, \"content-encoding\": \"binary\"}', '1');

-- ----------------------------
-- Table structure for djkombu_queue
-- ----------------------------
DROP TABLE IF EXISTS `djkombu_queue`;
CREATE TABLE `djkombu_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djkombu_queue
-- ----------------------------
INSERT INTO `djkombu_queue` VALUES ('1', 'celery');
INSERT INTO `djkombu_queue` VALUES ('2', 'celery@localhost.localdomain.celery.pidbox');
