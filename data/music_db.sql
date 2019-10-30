/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL57
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : music_db

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 30/10/2019 09:28:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 歌曲分类', 7, 'add_label');
INSERT INTO `auth_permission` VALUES (26, 'Can change 歌曲分类', 7, 'change_label');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 歌曲分类', 7, 'delete_label');
INSERT INTO `auth_permission` VALUES (28, 'Can view 歌曲分类', 7, 'view_label');
INSERT INTO `auth_permission` VALUES (29, 'Can add 歌曲信息', 8, 'add_song');
INSERT INTO `auth_permission` VALUES (30, 'Can change 歌曲信息', 8, 'change_song');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 歌曲信息', 8, 'delete_song');
INSERT INTO `auth_permission` VALUES (32, 'Can view 歌曲信息', 8, 'view_song');
INSERT INTO `auth_permission` VALUES (33, 'Can add 歌曲动态', 9, 'add_dynamic');
INSERT INTO `auth_permission` VALUES (34, 'Can change 歌曲动态', 9, 'change_dynamic');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 歌曲动态', 9, 'delete_dynamic');
INSERT INTO `auth_permission` VALUES (36, 'Can view 歌曲动态', 9, 'view_dynamic');
INSERT INTO `auth_permission` VALUES (37, 'Can add 歌曲评论', 10, 'add_comment');
INSERT INTO `auth_permission` VALUES (38, 'Can change 歌曲评论', 10, 'change_comment');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 歌曲评论', 10, 'delete_comment');
INSERT INTO `auth_permission` VALUES (40, 'Can view 歌曲评论', 10, 'view_comment');
INSERT INTO `auth_permission` VALUES (41, 'Can add user', 11, 'add_myuser');
INSERT INTO `auth_permission` VALUES (42, 'Can change user', 11, 'change_myuser');
INSERT INTO `auth_permission` VALUES (43, 'Can delete user', 11, 'delete_myuser');
INSERT INTO `auth_permission` VALUES (44, 'Can view user', 11, 'view_myuser');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$K2UYKVMxv6HK$nOyCPL4eV7+w3qkDAOeGQHWl33wsp9oRzTGuAJriE0c=', '2019-10-20 13:51:28.373035', 1, 'admin', '', '', '', 1, 1, '2019-10-20 13:00:29.595969');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (10, 'index', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'index', 'dynamic');
INSERT INTO `django_content_type` VALUES (7, 'index', 'label');
INSERT INTO `django_content_type` VALUES (8, 'index', 'song');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (11, 'user', 'myuser');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2019-10-20 12:27:07.651488');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2019-10-20 12:27:10.068750');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2019-10-20 12:27:18.808882');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2019-10-20 12:27:20.682769');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-20 12:27:20.748049');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2019-10-20 12:27:22.102153');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2019-10-20 12:27:23.176375');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2019-10-20 12:27:24.346162');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2019-10-20 12:27:24.388716');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2019-10-20 12:27:25.052856');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2019-10-20 12:27:25.119374');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2019-10-20 12:27:25.184864');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2019-10-20 12:27:26.154384');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2019-10-20 12:27:27.024579');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2019-10-20 12:27:28.043689');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2019-10-20 12:27:28.117576');
INSERT INTO `django_migrations` VALUES (17, 'index', '0001_initial', '2019-10-20 12:27:32.697372');
INSERT INTO `django_migrations` VALUES (18, 'sessions', '0001_initial', '2019-10-20 12:27:36.202580');
INSERT INTO `django_migrations` VALUES (19, 'user', '0001_initial', '2019-10-27 11:45:36.865625');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0my4dqlnazp7rniy9bpyrp8655cqmygx', 'NmQ1MDY4MDcwNzA4NWRjMTc1OWMzZWMzYTEzNzQ0NDAyZWE4YjQyNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjOTM0ZGRkYmI0ZmZmNWViNjI2NmMwM2M2Y2Q1NDRlYmFiNWNjMzY5In0=', '2019-11-03 13:51:28.477758');
INSERT INTO `django_session` VALUES ('4nw9pfdinm6q2d910lzm0owjlnr407gj', 'YjI2Yjc1ZjU0N2NkMWQ4NjY5Y2FiNTFiZGQ3ZGU3YTJkNmYyYWYzMjp7Imt3b3JkIjoiIn0=', '2019-11-07 05:07:10.937824');
INSERT INTO `django_session` VALUES ('6vt4gbphprzwvhkegf0wisoe01w7enzd', 'NTliNzc3MjczNTQyNGZkMGZmMWMwN2RkNzlkMWE3MGJhNWJmOWY0ZDp7InBsYXlfbGlzdCI6W3sic29uZ19pZCI6MTIsInNvbmdfc2luZ2VyIjoiXHU2Nzk3XHU5MWM3XHU2YjIzIiwic29uZ19uYW1lIjoiXHU1YzMxXHU2NjJmXHU4ZmQ5XHU2ODM3Iiwic29uZ190aW1lIjoiMDU6MTMifSx7InNvbmdfaWQiOjYsInNvbmdfc2luZ2VyIjoiXHU1NDM0XHU4MmU1XHU1ZTBjIiwic29uZ19uYW1lIjoiXHU1MjJiXHU1MThkXHU4YmIwXHU4ZDc3Iiwic29uZ190aW1lIjoiMDQ6MDQifV19', '2019-11-13 01:24:22.914640');
INSERT INTO `django_session` VALUES ('8vg21m0vfv8tki5k2kyy001ukqi2emc0', 'Nzg0YTRlZGNjYmI4YmU3MGNiY2NmMmVmOWRkYzk3YmYxOGU4Zjc5Yzp7Imt3b3JkIjoiIiwicGxheV9saXN0IjpbeyJzb25nX2lkIjo2LCJzb25nX3NpbmdlciI6Ilx1NTQzNFx1ODJlNVx1NWUwYyIsInNvbmdfbmFtZSI6Ilx1NTIyYlx1NTE4ZFx1OGJiMFx1OGQ3NyIsInNvbmdfdGltZSI6IjA0OjA0In0seyJzb25nX2lkIjoxMywic29uZ19zaW5nZXIiOiJcdTVmMjBcdTYwZTBcdTY2MjUiLCJzb25nX25hbWUiOiJcdTcyMzFcdThmYzdcdTRlODYgXHU1M2M4XHU2MDBlXHU2ODM3Iiwic29uZ190aW1lIjoiMDQ6MDkifSx7InNvbmdfaWQiOjEwLCJzb25nX3NpbmdlciI6Ilx1NGZhN1x1NzUzMCIsInNvbmdfbmFtZSI6IlZvbGFyIiwic29uZ190aW1lIjoiMDM6NTIifSx7InNvbmdfaWQiOjIsInNvbmdfc2luZ2VyIjoiXHU0ZThlXHU2NTg3XHU2NTg3Iiwic29uZ19uYW1lIjoiXHU0ZjUzXHU5NzYyIiwic29uZ190aW1lIjoiMDQ6NDIifSx7InNvbmdfaWQiOjExLCJzb25nX3NpbmdlciI6Ilx1NzM4Ylx1NTI5Ylx1NWI4Zi9cdTUzNjJcdTVkZTdcdTk3ZjMiLCJzb25nX25hbWUiOiJcdTU5N2RcdTVmYzNcdTUyMDZcdTYyNGIiLCJzb25nX3RpbWUiOiIwMzowMCJ9LHsic29uZ19pZCI6MTIsInNvbmdfc2luZ2VyIjoiXHU2Nzk3XHU5MWM3XHU2YjIzIiwic29uZ19uYW1lIjoiXHU1YzMxXHU2NjJmXHU4ZmQ5XHU2ODM3Iiwic29uZ190aW1lIjoiMDU6MTMifV19', '2019-11-09 15:11:48.405836');
INSERT INTO `django_session` VALUES ('nsk0mxzh8jj8yfzrsvn6crltkep934yp', 'YzdmNGM2ZTc0NzM1ZTViZjVjZTdhMDhiMzJhMGM1YjBmYzZlYmYxMDp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJhOTBlM2Q1ZmVmZDFiZTUxZmQxNmQ5NWU4M2MwNzEzMjZkY2Y0ZjFmIn0=', '2019-11-10 13:27:35.413886');

-- ----------------------------
-- Table structure for index_comment
-- ----------------------------
DROP TABLE IF EXISTS `index_comment`;
CREATE TABLE `index_comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_text` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `index_comment_song_id_e60ecaa2_fk_index_song_song_id`(`song_id`) USING BTREE,
  CONSTRAINT `index_comment_song_id_e60ecaa2_fk_index_song_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`song_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_comment
-- ----------------------------
INSERT INTO `index_comment` VALUES (1, '几好听', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (2, '几好听', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (3, '阿朵发放', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (4, '阿朵发放', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (5, '阿朵发放', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (6, '阿朵发放', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (7, '阿朵发放', '匿名用户', '2018-04-20', 6);
INSERT INTO `index_comment` VALUES (8, '好好听', '匿名用户', '2018-04-27', 11);
INSERT INTO `index_comment` VALUES (9, '挺不错的', '匿名用户', '2019-10-27', 6);
INSERT INTO `index_comment` VALUES (10, '挺不错的', '匿名用户', '2019-10-27', 6);

-- ----------------------------
-- Table structure for index_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `index_dynamic`;
CREATE TABLE `index_dynamic`  (
  `dynamic_id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamic_plays` int(11) NOT NULL,
  `dynamic_search` int(11) NOT NULL,
  `dynamic_down` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`dynamic_id`) USING BTREE,
  INDEX `index_dynamic_song_id_21bb9711_fk_index_song_song_id`(`song_id`) USING BTREE,
  CONSTRAINT `index_dynamic_song_id_21bb9711_fk_index_song_song_id` FOREIGN KEY (`song_id`) REFERENCES `index_song` (`song_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_dynamic
-- ----------------------------
INSERT INTO `index_dynamic` VALUES (1, 37, 45, 22, 1);
INSERT INTO `index_dynamic` VALUES (2, 53, 18, 22, 2);
INSERT INTO `index_dynamic` VALUES (3, 38, 34, 14, 3);
INSERT INTO `index_dynamic` VALUES (4, 4, 6, 2, 4);
INSERT INTO `index_dynamic` VALUES (5, 28, 7, 5, 5);
INSERT INTO `index_dynamic` VALUES (6, 216, 65, 42, 6);
INSERT INTO `index_dynamic` VALUES (7, 154, 53, 20, 7);
INSERT INTO `index_dynamic` VALUES (8, 15, 16, 33, 8);
INSERT INTO `index_dynamic` VALUES (9, 9, 12, 18, 9);
INSERT INTO `index_dynamic` VALUES (10, 80, 65, 35, 10);
INSERT INTO `index_dynamic` VALUES (11, 127, 84, 51, 11);
INSERT INTO `index_dynamic` VALUES (12, 56, 32, 45, 12);
INSERT INTO `index_dynamic` VALUES (13, 108, 54, 12, 13);

-- ----------------------------
-- Table structure for index_label
-- ----------------------------
DROP TABLE IF EXISTS `index_label`;
CREATE TABLE `index_label`  (
  `label_id` int(11) NOT NULL AUTO_INCREMENT,
  `label_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`label_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_label
-- ----------------------------
INSERT INTO `index_label` VALUES (1, '情感天地');
INSERT INTO `index_label` VALUES (2, '摇滚金属');
INSERT INTO `index_label` VALUES (3, '经典流行');
INSERT INTO `index_label` VALUES (4, '环境心情');
INSERT INTO `index_label` VALUES (5, '午后场景');
INSERT INTO `index_label` VALUES (6, '岁月流金');
INSERT INTO `index_label` VALUES (7, '青春校园');

-- ----------------------------
-- Table structure for index_song
-- ----------------------------
DROP TABLE IF EXISTS `index_song`;
CREATE TABLE `index_song`  (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `song_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_singer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_album` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_languages` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_release` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_img` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_lyrics` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `song_file` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`song_id`) USING BTREE,
  INDEX `index_song_label_id_9b9b68ed_fk_index_label_label_id`(`label_id`) USING BTREE,
  CONSTRAINT `index_song_label_id_9b9b68ed_fk_index_label_label_id` FOREIGN KEY (`label_id`) REFERENCES `index_label` (`label_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of index_song
-- ----------------------------
INSERT INTO `index_song` VALUES (1, '爱 都是对的', '胡夏', '04:20', '胡 爱夏', '国语', '流行', '2010-12-08', '1.jpg', '暂无歌词', '1.m4a', 3);
INSERT INTO `index_song` VALUES (2, '体面', '于文文', '04:42', '《前任3：再见前任》电影插曲', '国语', '伤感', '2017-12-25', '2.jpg', '暂无歌词', '2.m4a', 4);
INSERT INTO `index_song` VALUES (3, '三国恋', 'Tank', '04:06', 'Fighting！生存之道', '国语', '摇滚', '2006-04-15', '3.jpg', '暂无歌词', '3.m4a', 2);
INSERT INTO `index_song` VALUES (4, '会长大的幸福', 'Tank', '04:32', '第三回合', '国语', '励志', '2009-05-29', '4.jpg', '暂无歌词', '4.m4a', 4);
INSERT INTO `index_song` VALUES (5, '满满', '梁文音/王铮亮', '04:44', '爱，一直存在', '国语', '甜蜜', '2009-11-20', '5.jpg', '暂无歌词', '5.m4a', 1);
INSERT INTO `index_song` VALUES (6, '别再记起', '吴若希', '04:04', '别再记起', '粤语', '场景', '2017-12-07', '6.jpg', '暂无歌词', '6.m4a', 4);
INSERT INTO `index_song` VALUES (7, '爱的魔法', '金莎', '03:11', '他不爱我', '国语', '甜蜜', '2012-03-19', '7.jpg', '暂无歌词', '7.m4a', 1);
INSERT INTO `index_song` VALUES (8, '演员', '薛之谦', '04:11', '演员', '国语', '流行', '2015-06-05', '8.jpg', '暂无歌词', '8.m4a', 3);
INSERT INTO `index_song` VALUES (9, '放爱情一个假', '许慧欣', '03:24', '谜', '国语', '安静', '2006-10-01', '9.jpg', '暂无歌词', '9.m4a', 4);
INSERT INTO `index_song` VALUES (10, 'Volar', '侧田', '03:52', 'No Protection', '粤语', '摇滚', '2006-07-05', '10.jpg', '暂无歌词', '10.m4a', 2);
INSERT INTO `index_song` VALUES (11, '好心分手', '王力宏/卢巧音', '03:00', '2 Love 致情挚爱', '国语', '伤感', '2015-07-24', '11.jpg', '11.txt', '11.m4a', 1);
INSERT INTO `index_song` VALUES (12, '就是这样', '林采欣', '05:13', '单曲', '国语', '流行', '2016-10-10', '12.jpg', '暂无歌词', '12.m4a', 3);
INSERT INTO `index_song` VALUES (13, '爱过了 又怎样', '张惠春', '04:09', '单曲', '国语', '流行', '2016-09-07', '13.jpg', '暂无歌词', '13.m4a', 3);

-- ----------------------------
-- Table structure for user_myuser
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser`;
CREATE TABLE `user_myuser`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `qq` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `weChat` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_myuser
-- ----------------------------
INSERT INTO `user_myuser` VALUES (1, 'pbkdf2_sha256$150000$dwRvU1owqbfi$fGUkP6fXbRaFIcDdTjBqPTSIbFVzBkD3HkM6LStvo9s=', '2019-10-30 00:54:09.297179', 1, 'root', '', '', '', 1, 1, '2019-10-27 13:04:29.687278', '', '', '');
INSERT INTO `user_myuser` VALUES (2, 'pbkdf2_sha256$150000$AeCmfj33BExs$6zPhRsXTC/FeJxLW2+4nYxUQcMqXCFy3wsEP2G0i7Hc=', '2019-10-27 13:27:35.380898', 0, 'xyyojl', '', '', '', 0, 1, '2019-10-27 13:27:18.996069', '', '', '13631892756');

-- ----------------------------
-- Table structure for user_myuser_groups
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_groups`;
CREATE TABLE `user_myuser_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_myuser_groups_myuser_id_group_id_680fbae2_uniq`(`myuser_id`, `group_id`) USING BTREE,
  INDEX `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `user_myuser_groups_group_id_e21a6dfd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_myuser_groups_myuser_id_dfd02c0f_fk_user_myuser_id` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_myuser_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_myuser_user_permissions`;
CREATE TABLE `user_myuser_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `myuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_myuser_user_permiss_myuser_id_permission_id_ae8df385_uniq`(`myuser_id`, `permission_id`) USING BTREE,
  INDEX `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `user_myuser_user_per_myuser_id_5d2dcfb0_fk_user_myus` FOREIGN KEY (`myuser_id`) REFERENCES `user_myuser` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_myuser_user_per_permission_id_d16c386c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
