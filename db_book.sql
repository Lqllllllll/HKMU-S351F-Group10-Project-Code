/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : db_book

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 17/12/2023 13:15:23
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
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `auth_permission` VALUES (25, 'Can add borrow record', 7, 'add_borrowrecord');
INSERT INTO `auth_permission` VALUES (26, 'Can change borrow record', 7, 'change_borrowrecord');
INSERT INTO `auth_permission` VALUES (27, 'Can delete borrow record', 7, 'delete_borrowrecord');
INSERT INTO `auth_permission` VALUES (28, 'Can view borrow record', 7, 'view_borrowrecord');
INSERT INTO `auth_permission` VALUES (29, 'Can add category', 8, 'add_category');
INSERT INTO `auth_permission` VALUES (30, 'Can change category', 8, 'change_category');
INSERT INTO `auth_permission` VALUES (31, 'Can delete category', 8, 'delete_category');
INSERT INTO `auth_permission` VALUES (32, 'Can view category', 8, 'view_category');
INSERT INTO `auth_permission` VALUES (33, 'Can add member', 9, 'add_member');
INSERT INTO `auth_permission` VALUES (34, 'Can change member', 9, 'change_member');
INSERT INTO `auth_permission` VALUES (35, 'Can delete member', 9, 'delete_member');
INSERT INTO `auth_permission` VALUES (36, 'Can view member', 9, 'view_member');
INSERT INTO `auth_permission` VALUES (37, 'Can add publisher', 10, 'add_publisher');
INSERT INTO `auth_permission` VALUES (38, 'Can change publisher', 10, 'change_publisher');
INSERT INTO `auth_permission` VALUES (39, 'Can delete publisher', 10, 'delete_publisher');
INSERT INTO `auth_permission` VALUES (40, 'Can view publisher', 10, 'view_publisher');
INSERT INTO `auth_permission` VALUES (41, 'Can add user activity', 11, 'add_useractivity');
INSERT INTO `auth_permission` VALUES (42, 'Can change user activity', 11, 'change_useractivity');
INSERT INTO `auth_permission` VALUES (43, 'Can delete user activity', 11, 'delete_useractivity');
INSERT INTO `auth_permission` VALUES (44, 'Can view user activity', 11, 'view_useractivity');
INSERT INTO `auth_permission` VALUES (45, 'Can add profile', 12, 'add_profile');
INSERT INTO `auth_permission` VALUES (46, 'Can change profile', 12, 'change_profile');
INSERT INTO `auth_permission` VALUES (47, 'Can delete profile', 12, 'delete_profile');
INSERT INTO `auth_permission` VALUES (48, 'Can view profile', 12, 'view_profile');
INSERT INTO `auth_permission` VALUES (49, 'Can add book', 13, 'add_book');
INSERT INTO `auth_permission` VALUES (50, 'Can change book', 13, 'change_book');
INSERT INTO `auth_permission` VALUES (51, 'Can delete book', 13, 'delete_book');
INSERT INTO `auth_permission` VALUES (52, 'Can view book', 13, 'view_book');
INSERT INTO `auth_permission` VALUES (53, 'Can add comment', 14, 'add_comment');
INSERT INTO `auth_permission` VALUES (54, 'Can change comment', 14, 'change_comment');
INSERT INTO `auth_permission` VALUES (55, 'Can delete comment', 14, 'delete_comment');
INSERT INTO `auth_permission` VALUES (56, 'Can view comment', 14, 'view_comment');
INSERT INTO `auth_permission` VALUES (57, 'Can add notification', 15, 'add_notification');
INSERT INTO `auth_permission` VALUES (58, 'Can change notification', 15, 'change_notification');
INSERT INTO `auth_permission` VALUES (59, 'Can delete notification', 15, 'delete_notification');
INSERT INTO `auth_permission` VALUES (60, 'Can view notification', 15, 'view_notification');

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
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$150000$uuemzaXHmHO4$vkfgeJQnsZeqLTkUoSr0BMho6WiQx+T8JbsWXFgwKIk=', '2023-12-17 05:09:32.145580', 1, 'admin', '', '', '', 1, 1, '2023-12-10 05:23:39.746708');

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
-- Table structure for book_book
-- ----------------------------
DROP TABLE IF EXISTS `book_book`;
CREATE TABLE `book_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `total_borrow_times` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `floor_number` int(11) NOT NULL,
  `bookshelf_number` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_id` int(11) NULL DEFAULT NULL,
  `publisher_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `book_book_category_id_616006cd_fk_book_category_id`(`category_id`) USING BTREE,
  INDEX `book_book_publisher_id_7f77c06a_fk_book_publisher_id`(`publisher_id`) USING BTREE,
  CONSTRAINT `book_book_category_id_616006cd_fk_book_category_id` FOREIGN KEY (`category_id`) REFERENCES `book_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `book_book_publisher_id_7f77c06a_fk_book_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `book_publisher` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for book_borrowrecord
-- ----------------------------
DROP TABLE IF EXISTS `book_borrowrecord`;
CREATE TABLE `book_borrowrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `borrower` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `borrower_card` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `borrower_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `borrower_phone_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `book` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `start_day` datetime(6) NOT NULL,
  `end_day` datetime(6) NOT NULL,
  `periode` int(10) UNSIGNED NOT NULL,
  `open_or_close` int(11) NOT NULL,
  `delay_days` int(11) NOT NULL,
  `final_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `closed_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `closed_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for book_category
-- ----------------------------
DROP TABLE IF EXISTS `book_category`;
CREATE TABLE `book_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for book_member
-- ----------------------------
DROP TABLE IF EXISTS `book_member`;
CREATE TABLE `book_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(10) UNSIGNED NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `card_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `card_number` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expired_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `card_id`(`card_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for book_profile
-- ----------------------------
DROP TABLE IF EXISTS `book_profile`;
CREATE TABLE `book_profile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bio` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `profile_pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_number` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `book_profile_user_id_fdef3031_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for book_publisher
-- ----------------------------
DROP TABLE IF EXISTS `book_publisher`;
CREATE TABLE `book_publisher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for book_useractivity
-- ----------------------------
DROP TABLE IF EXISTS `book_useractivity`;
CREATE TABLE `book_useractivity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `operation_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `target_model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for comment_comment
-- ----------------------------
DROP TABLE IF EXISTS `comment_comment`;
CREATE TABLE `comment_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `comment_comment_book_id_60245be4_fk_book_book_id`(`book_id`) USING BTREE,
  INDEX `comment_comment_user_id_6078e57b_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `comment_comment_book_id_60245be4_fk_book_book_id` FOREIGN KEY (`book_id`) REFERENCES `book_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `comment_comment_user_id_6078e57b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
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
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (13, 'book', 'book');
INSERT INTO `django_content_type` VALUES (7, 'book', 'borrowrecord');
INSERT INTO `django_content_type` VALUES (8, 'book', 'category');
INSERT INTO `django_content_type` VALUES (9, 'book', 'member');
INSERT INTO `django_content_type` VALUES (12, 'book', 'profile');
INSERT INTO `django_content_type` VALUES (10, 'book', 'publisher');
INSERT INTO `django_content_type` VALUES (11, 'book', 'useractivity');
INSERT INTO `django_content_type` VALUES (14, 'comment', 'comment');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (15, 'notifications', 'notification');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

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
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-12-10 05:20:47.937377');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-12-10 05:20:48.451908');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-12-10 05:20:49.927469');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-12-10 05:20:50.478683');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-12-10 05:20:50.509230');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-12-10 05:20:50.834429');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-12-10 05:20:51.092404');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-12-10 05:20:51.424341');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-12-10 05:20:51.473924');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-12-10 05:20:51.612659');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-12-10 05:20:51.642709');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-12-10 05:20:51.680771');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-12-10 05:20:52.079926');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-12-10 05:20:52.386430');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-12-10 05:20:52.653156');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-12-10 05:20:52.743121');
INSERT INTO `django_migrations` VALUES (17, 'book', '0001_initial', '2023-12-10 05:20:53.557032');
INSERT INTO `django_migrations` VALUES (18, 'comment', '0001_initial', '2023-12-10 05:20:54.055656');
INSERT INTO `django_migrations` VALUES (19, 'notifications', '0001_initial', '2023-12-10 05:20:54.725965');
INSERT INTO `django_migrations` VALUES (20, 'notifications', '0002_auto_20150224_1134', '2023-12-10 05:20:56.449780');
INSERT INTO `django_migrations` VALUES (21, 'notifications', '0003_notification_data', '2023-12-10 05:20:56.608559');
INSERT INTO `django_migrations` VALUES (22, 'notifications', '0004_auto_20150826_1508', '2023-12-10 05:20:56.652619');
INSERT INTO `django_migrations` VALUES (23, 'notifications', '0005_auto_20160504_1520', '2023-12-10 05:20:56.678160');
INSERT INTO `django_migrations` VALUES (24, 'notifications', '0006_indexes', '2023-12-10 05:20:56.901589');
INSERT INTO `django_migrations` VALUES (25, 'notifications', '0007_add_timestamp_index', '2023-12-10 05:20:56.984755');
INSERT INTO `django_migrations` VALUES (26, 'notifications', '0008_index_together_recipient_unread', '2023-12-10 05:20:57.074396');
INSERT INTO `django_migrations` VALUES (27, 'sessions', '0001_initial', '2023-12-10 05:20:57.223219');

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
INSERT INTO `django_session` VALUES ('0d2klg8bt4977gxo0yk0ov7ml0ytr0yt', 'OWM0MTE3MGFmOTA0MTEwN2E3YzcxMDYyM2M1YjkyZGMwOWExODU1MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzN2QyNmMxMmVhZTZlMjVhYTRkMGI3MmM5N2YyMDc2MjBlMTc2MDMxIn0=', '2023-12-31 05:09:32.152405');
INSERT INTO `django_session` VALUES ('9gc9ua82xxvjrywr43mdj8e0zetxjvsz', 'OWM0MTE3MGFmOTA0MTEwN2E3YzcxMDYyM2M1YjkyZGMwOWExODU1MDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzN2QyNmMxMmVhZTZlMjVhYTRkMGI3MmM5N2YyMDc2MjBlMTc2MDMxIn0=', '2023-12-24 05:24:03.571056');

-- ----------------------------
-- Table structure for notifications_notification
-- ----------------------------
DROP TABLE IF EXISTS `notifications_notification`;
CREATE TABLE `notifications_notification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `unread` tinyint(1) NOT NULL,
  `actor_object_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `verb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `target_object_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action_object_object_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `public` tinyint(1) NOT NULL,
  `action_object_content_type_id` int(11) NULL DEFAULT NULL,
  `actor_content_type_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `target_content_type_id` int(11) NULL DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL,
  `emailed` tinyint(1) NOT NULL,
  `data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co`(`action_object_content_type_id`) USING BTREE,
  INDEX `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co`(`actor_content_type_id`) USING BTREE,
  INDEX `notifications_notifi_target_content_type__ccb24d88_fk_django_co`(`target_content_type_id`) USING BTREE,
  INDEX `notifications_notification_deleted_b32b69e6`(`deleted`) USING BTREE,
  INDEX `notifications_notification_emailed_23a5ad81`(`emailed`) USING BTREE,
  INDEX `notifications_notification_public_1bc30b1c`(`public`) USING BTREE,
  INDEX `notifications_notification_unread_cce4be30`(`unread`) USING BTREE,
  INDEX `notifications_notification_timestamp_6a797bad`(`timestamp`) USING BTREE,
  INDEX `notifications_notification_recipient_id_unread_253aadc9_idx`(`recipient_id`, `unread`) USING BTREE,
  CONSTRAINT `notifications_notifi_action_object_conten_7d2b8ee9_fk_django_co` FOREIGN KEY (`action_object_content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `notifications_notifi_actor_content_type_i_0c69d7b7_fk_django_co` FOREIGN KEY (`actor_content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `notifications_notifi_target_content_type__ccb24d88_fk_django_co` FOREIGN KEY (`target_content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `notifications_notification_recipient_id_d055f3f0_fk_auth_user_id` FOREIGN KEY (`recipient_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
