/*
 Navicat Premium Data Transfer

 Source Server         : PHP7.3
 Source Server Type    : MySQL
 Source Server Version : 100406
 Source Host           : localhost:3306
 Source Schema         : masterhmvc

 Target Server Type    : MySQL
 Target Server Version : 100406
 File Encoding         : 65001

 Date: 26/09/2020 11:26:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_nama` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `activity_ikon` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `activity_status` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`activity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (1, 'fix error update profil user', 'fas fa-user', 'bg-primary', '2020-06-10 21:33:37');
INSERT INTO `activity` VALUES (2, 'penambahan menu ikon untuk admin', 'fab fa-stack-exchange', 'bg-primary', '2020-06-10 21:33:40');
INSERT INTO `activity` VALUES (3, 'update form registrasi user', 'fas fa-user', 'bg-primary', '2020-06-19 22:17:55');
INSERT INTO `activity` VALUES (4, 'fixing akses ditolak', 'fas fa-lock', 'bg-warning', '2020-09-26 10:10:26');

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level`  (
  `level_id` int(11) NOT NULL AUTO_INCREMENT,
  `level_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level_status` bit(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `level_dashboard` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`level_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES (1, 'Administrator', b'1', '2020-02-16 21:22:59', 'dashboard/dashboard');
INSERT INTO `level` VALUES (2, 'User', b'1', '2020-02-15 08:59:01', 'dashboard/dashboard');
INSERT INTO `level` VALUES (11, 'Manajer', b'1', '2020-03-27 21:55:34', 'Dashboard/dashboard');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_iduser` int(11) NULL DEFAULT NULL,
  `log_aksi` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0) ON UPDATE CURRENT_TIMESTAMP(0),
  `log_level` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 427 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (3, 34, 'login', '2020-01-02 03:40:04', '1');
INSERT INTO `log` VALUES (21, 4, 'login', '2020-01-02 06:07:42', '1');
INSERT INTO `log` VALUES (22, 4, 'logout', '2020-01-02 06:07:55', '3');
INSERT INTO `log` VALUES (26, 1, 'logout', '2020-01-02 06:08:25', '3');
INSERT INTO `log` VALUES (27, 29, 'login', '2020-01-02 06:08:28', '1');
INSERT INTO `log` VALUES (28, 1, 'password salah', '2020-01-02 06:12:54', '3');
INSERT INTO `log` VALUES (29, 1, 'login', '2020-01-02 06:13:03', '1');
INSERT INTO `log` VALUES (30, 1, 'login', '2020-01-03 03:06:13', '1');
INSERT INTO `log` VALUES (32, 1, 'login', '2020-01-03 03:45:31', '1');
INSERT INTO `log` VALUES (33, 1, 'logout', '2020-01-03 03:48:28', '3');
INSERT INTO `log` VALUES (34, 1, 'login', '2020-01-03 04:06:01', '1');
INSERT INTO `log` VALUES (35, 1, 'logout', '2020-01-03 04:08:25', '3');
INSERT INTO `log` VALUES (36, 1, 'login', '2020-01-03 04:08:28', '1');
INSERT INTO `log` VALUES (37, 1, 'logout', '2020-01-03 04:08:37', '3');
INSERT INTO `log` VALUES (38, 1, 'login', '2020-01-03 04:08:48', '1');
INSERT INTO `log` VALUES (40, 1, 'login', '2020-01-03 04:10:15', '1');
INSERT INTO `log` VALUES (41, 1, 'logout', '2020-01-03 04:14:44', '3');
INSERT INTO `log` VALUES (42, 1, 'login', '2020-01-03 04:17:12', '1');
INSERT INTO `log` VALUES (43, 1, 'logout', '2020-01-03 04:18:20', '3');
INSERT INTO `log` VALUES (44, 1, 'login', '2020-01-03 06:13:46', '1');
INSERT INTO `log` VALUES (45, 1, 'logout', '2020-01-03 06:16:43', '3');
INSERT INTO `log` VALUES (46, 1, 'login', '2020-01-06 05:44:51', '1');
INSERT INTO `log` VALUES (47, 1, 'logout', '2020-01-06 20:22:39', '3');
INSERT INTO `log` VALUES (48, 1, 'login', '2020-01-06 20:22:45', '1');
INSERT INTO `log` VALUES (49, 1, 'login', '2020-01-07 18:18:02', '1');
INSERT INTO `log` VALUES (50, 1, 'login', '2020-01-09 13:39:02', '1');
INSERT INTO `log` VALUES (51, 1, 'login', '2020-01-10 10:45:11', '1');
INSERT INTO `log` VALUES (52, 1, 'logout', '2020-01-10 10:54:19', '3');
INSERT INTO `log` VALUES (53, 1, 'login', '2020-01-14 10:49:03', '1');
INSERT INTO `log` VALUES (54, 1, 'logout', '2020-01-14 11:05:20', '3');
INSERT INTO `log` VALUES (55, 1, 'login', '2020-01-14 11:09:09', '1');
INSERT INTO `log` VALUES (56, 1, 'logout', '2020-01-14 11:10:13', '3');
INSERT INTO `log` VALUES (57, 1, 'login', '2020-01-14 11:28:23', '1');
INSERT INTO `log` VALUES (58, 1, 'logout', '2020-01-14 11:53:38', '3');
INSERT INTO `log` VALUES (59, 1, 'login', '2020-01-20 13:21:25', '1');
INSERT INTO `log` VALUES (60, 1, 'login', '2020-01-24 10:46:31', '1');
INSERT INTO `log` VALUES (61, 1, 'login', '2020-02-01 09:11:33', '1');
INSERT INTO `log` VALUES (62, 1, 'logout', '2020-02-01 09:36:46', '3');
INSERT INTO `log` VALUES (63, 1, 'login', '2020-02-01 09:36:50', '1');
INSERT INTO `log` VALUES (64, 1, 'logout', '2020-02-01 11:11:06', '3');
INSERT INTO `log` VALUES (65, 1, 'login', '2020-02-01 11:11:16', '1');
INSERT INTO `log` VALUES (66, 1, 'logout', '2020-02-01 11:11:37', '3');
INSERT INTO `log` VALUES (67, 29, 'password salah', '2020-02-01 11:11:40', '3');
INSERT INTO `log` VALUES (68, 29, 'login', '2020-02-01 11:11:44', '1');
INSERT INTO `log` VALUES (69, 1, 'login', '2020-02-05 13:15:29', '1');
INSERT INTO `log` VALUES (70, 1, 'logout', '2020-02-05 13:16:05', '3');
INSERT INTO `log` VALUES (71, 29, 'password salah', '2020-02-05 13:16:08', '3');
INSERT INTO `log` VALUES (72, 29, 'login', '2020-02-05 13:16:12', '1');
INSERT INTO `log` VALUES (73, 1, 'login', '2020-02-06 11:46:40', '1');
INSERT INTO `log` VALUES (74, 1, 'login', '2020-02-06 16:08:37', '1');
INSERT INTO `log` VALUES (75, 1, 'login', '2020-02-07 08:43:09', '1');
INSERT INTO `log` VALUES (76, 1, 'logout', '2020-02-07 10:15:44', '3');
INSERT INTO `log` VALUES (77, 37, 'login', '2020-02-07 10:15:52', '1');
INSERT INTO `log` VALUES (78, 37, 'logout', '2020-02-07 10:33:55', '3');
INSERT INTO `log` VALUES (79, 37, 'login', '2020-02-07 10:34:01', '1');
INSERT INTO `log` VALUES (80, 37, 'logout', '2020-02-07 10:35:37', '3');
INSERT INTO `log` VALUES (81, 37, 'login', '2020-02-07 10:35:42', '1');
INSERT INTO `log` VALUES (82, NULL, 'logout', '2020-02-07 15:55:57', '3');
INSERT INTO `log` VALUES (83, 1, 'login', '2020-02-07 16:28:01', '1');
INSERT INTO `log` VALUES (84, 1, 'logout', '2020-02-07 16:28:07', '3');
INSERT INTO `log` VALUES (85, 37, 'login', '2020-02-07 16:28:13', '1');
INSERT INTO `log` VALUES (86, 37, 'login', '2020-02-10 09:54:57', '1');
INSERT INTO `log` VALUES (87, 37, 'logout', '2020-02-10 10:12:24', '3');
INSERT INTO `log` VALUES (88, 37, 'login', '2020-02-10 10:12:31', '1');
INSERT INTO `log` VALUES (89, 37, 'login', '2020-02-11 10:32:28', '1');
INSERT INTO `log` VALUES (90, 37, 'logout', '2020-02-11 11:44:40', '3');
INSERT INTO `log` VALUES (91, 37, 'login', '2020-02-11 12:58:19', '1');
INSERT INTO `log` VALUES (92, 37, 'logout', '2020-02-11 13:07:18', '3');
INSERT INTO `log` VALUES (93, 1, 'login', '2020-02-11 16:10:34', '1');
INSERT INTO `log` VALUES (94, 1, 'logout', '2020-02-11 16:13:29', '3');
INSERT INTO `log` VALUES (95, 1, 'login', '2020-02-11 16:13:41', '1');
INSERT INTO `log` VALUES (96, 1, 'logout', '2020-02-11 16:15:17', '3');
INSERT INTO `log` VALUES (97, 1, 'login', '2020-02-15 08:22:06', '1');
INSERT INTO `log` VALUES (98, 1, 'logout', '2020-02-15 09:07:30', '3');
INSERT INTO `log` VALUES (99, 37, 'login', '2020-02-15 09:10:27', '1');
INSERT INTO `log` VALUES (100, 37, 'logout', '2020-02-15 09:10:32', '3');
INSERT INTO `log` VALUES (101, 1, 'login', '2020-02-15 09:10:35', '1');
INSERT INTO `log` VALUES (102, 1, 'logout', '2020-02-15 09:19:29', '3');
INSERT INTO `log` VALUES (103, 37, 'login', '2020-02-15 09:19:35', '1');
INSERT INTO `log` VALUES (104, 37, 'logout', '2020-02-15 09:21:37', '3');
INSERT INTO `log` VALUES (105, 1, 'login', '2020-02-15 09:21:40', '1');
INSERT INTO `log` VALUES (106, 1, 'logout', '2020-02-15 09:22:49', '3');
INSERT INTO `log` VALUES (107, 1, 'login', '2020-02-15 09:22:52', '1');
INSERT INTO `log` VALUES (108, 1, 'login', '2020-02-15 10:17:29', '1');
INSERT INTO `log` VALUES (109, 1, 'logout', '2020-02-15 10:24:03', '3');
INSERT INTO `log` VALUES (110, 1, 'login', '2020-02-15 10:24:06', '1');
INSERT INTO `log` VALUES (111, 1, 'logout', '2020-02-15 10:27:17', '3');
INSERT INTO `log` VALUES (112, 1, 'login', '2020-02-15 10:27:20', '1');
INSERT INTO `log` VALUES (113, 1, 'logout', '2020-02-15 10:28:06', '3');
INSERT INTO `log` VALUES (114, 37, 'login', '2020-02-15 10:28:15', '1');
INSERT INTO `log` VALUES (115, 37, 'logout', '2020-02-15 10:28:43', '3');
INSERT INTO `log` VALUES (116, 37, 'login', '2020-02-15 10:28:51', '1');
INSERT INTO `log` VALUES (117, 37, 'logout', '2020-02-15 10:29:27', '3');
INSERT INTO `log` VALUES (118, 1, 'login', '2020-02-15 10:29:30', '1');
INSERT INTO `log` VALUES (119, 1, 'logout', '2020-02-15 10:31:54', '3');
INSERT INTO `log` VALUES (120, 1, 'login', '2020-02-15 10:31:59', '1');
INSERT INTO `log` VALUES (121, 1, 'logout', '2020-02-15 10:33:42', '3');
INSERT INTO `log` VALUES (122, 1, 'login', '2020-02-15 10:33:52', '1');
INSERT INTO `log` VALUES (123, 1, 'logout', '2020-02-15 10:39:27', '3');
INSERT INTO `log` VALUES (124, 36, 'login', '2020-02-15 10:39:35', '1');
INSERT INTO `log` VALUES (125, 36, 'logout', '2020-02-15 10:39:44', '3');
INSERT INTO `log` VALUES (126, 1, 'login', '2020-02-15 10:39:49', '1');
INSERT INTO `log` VALUES (127, 36, 'login', '2020-02-15 11:21:09', '1');
INSERT INTO `log` VALUES (128, 1, 'login', '2020-02-15 12:45:36', '1');
INSERT INTO `log` VALUES (129, 1, 'logout', '2020-02-15 15:13:59', '3');
INSERT INTO `log` VALUES (130, 1, 'login', '2020-02-15 15:39:09', '1');
INSERT INTO `log` VALUES (131, 1, 'logout', '2020-02-15 17:02:04', '3');
INSERT INTO `log` VALUES (132, 1, 'login', '2020-02-15 19:36:05', '1');
INSERT INTO `log` VALUES (133, 1, 'login', '2020-02-16 18:53:35', '1');
INSERT INTO `log` VALUES (134, 1, 'logout', '2020-02-16 21:20:43', '3');
INSERT INTO `log` VALUES (135, 1, 'login', '2020-02-16 21:20:46', '1');
INSERT INTO `log` VALUES (136, 1, 'logout', '2020-02-16 21:21:14', '3');
INSERT INTO `log` VALUES (137, 1, 'login', '2020-02-16 21:21:18', '1');
INSERT INTO `log` VALUES (138, 1, 'logout', '2020-02-16 21:22:10', '3');
INSERT INTO `log` VALUES (139, 1, 'login', '2020-02-16 21:22:14', '1');
INSERT INTO `log` VALUES (140, 1, 'logout', '2020-02-16 21:22:39', '3');
INSERT INTO `log` VALUES (141, 1, 'login', '2020-02-16 21:22:43', '1');
INSERT INTO `log` VALUES (142, 1, 'logout', '2020-02-16 21:23:03', '3');
INSERT INTO `log` VALUES (143, 1, 'login', '2020-02-16 21:23:07', '1');
INSERT INTO `log` VALUES (144, 1, 'login', '2020-02-17 15:42:39', '1');
INSERT INTO `log` VALUES (145, 1, 'login', '2020-02-18 11:41:17', '1');
INSERT INTO `log` VALUES (146, 1, 'login', '2020-02-19 08:35:16', '1');
INSERT INTO `log` VALUES (147, 1, 'login', '2020-02-19 11:02:02', '1');
INSERT INTO `log` VALUES (148, 1, 'login', '2020-02-19 15:37:54', '1');
INSERT INTO `log` VALUES (149, 1, 'logout', '2020-02-19 16:24:59', '3');
INSERT INTO `log` VALUES (150, 1, 'login', '2020-02-19 16:34:19', '1');
INSERT INTO `log` VALUES (151, 1, 'logout', '2020-02-19 17:00:36', '3');
INSERT INTO `log` VALUES (152, 1, 'login', '2020-02-20 08:13:06', '1');
INSERT INTO `log` VALUES (153, 1, 'login', '2020-02-25 13:56:36', '1');
INSERT INTO `log` VALUES (154, 1, 'password salah', '2020-02-26 10:27:11', '3');
INSERT INTO `log` VALUES (155, 1, 'login', '2020-02-26 10:27:15', '1');
INSERT INTO `log` VALUES (156, 1, 'login', '2020-02-27 11:02:42', '1');
INSERT INTO `log` VALUES (157, 1, 'login', '2020-02-27 15:33:44', '1');
INSERT INTO `log` VALUES (158, 1, 'login', '2020-02-29 10:11:49', '1');
INSERT INTO `log` VALUES (159, 1, 'login', '2020-02-29 14:06:33', '1');
INSERT INTO `log` VALUES (160, 1, 'login', '2020-02-29 14:25:14', '1');
INSERT INTO `log` VALUES (161, 1, 'login', '2020-02-29 16:14:54', '1');
INSERT INTO `log` VALUES (162, 1, 'login', '2020-03-02 11:40:30', '1');
INSERT INTO `log` VALUES (163, 1, 'logout', '2020-03-02 11:40:42', '3');
INSERT INTO `log` VALUES (164, 1, 'login', '2020-03-02 11:43:24', '1');
INSERT INTO `log` VALUES (165, 1, 'logout', '2020-03-02 11:43:29', '3');
INSERT INTO `log` VALUES (166, 1, 'login', '2020-03-03 16:03:12', '1');
INSERT INTO `log` VALUES (167, 1, 'login', '2020-03-04 15:49:08', '1');
INSERT INTO `log` VALUES (168, 1, 'logout', '2020-03-04 16:47:26', '3');
INSERT INTO `log` VALUES (169, 1, 'login', '2020-03-05 16:57:42', '1');
INSERT INTO `log` VALUES (170, 1, 'login', '2020-03-09 10:34:08', '1');
INSERT INTO `log` VALUES (171, 1, 'login', '2020-03-09 15:45:42', '1');
INSERT INTO `log` VALUES (172, 1, 'login', '2020-03-10 09:49:51', '1');
INSERT INTO `log` VALUES (173, 1, 'login', '2020-03-10 16:05:27', '1');
INSERT INTO `log` VALUES (174, 1, 'logout', '2020-03-10 16:44:11', '3');
INSERT INTO `log` VALUES (175, 1, 'login', '2020-03-11 07:44:12', '1');
INSERT INTO `log` VALUES (176, 1, 'logout', '2020-03-11 09:29:25', '3');
INSERT INTO `log` VALUES (177, 1, 'login', '2020-03-11 16:09:12', '1');
INSERT INTO `log` VALUES (178, 1, 'login', '2020-03-14 10:42:31', '1');
INSERT INTO `log` VALUES (179, 1, 'login', '2020-03-14 10:44:21', '1');
INSERT INTO `log` VALUES (180, 1, 'login', '2020-03-16 15:00:19', '1');
INSERT INTO `log` VALUES (181, 1, 'login', '2020-03-17 07:56:49', '1');
INSERT INTO `log` VALUES (182, 1, 'logout', '2020-03-17 11:54:37', '3');
INSERT INTO `log` VALUES (183, 1, 'login', '2020-03-17 11:55:35', '1');
INSERT INTO `log` VALUES (184, 1, 'logout', '2020-03-17 11:57:30', '3');
INSERT INTO `log` VALUES (185, 1, 'login', '2020-03-17 12:55:04', '1');
INSERT INTO `log` VALUES (186, 1, 'login', '2020-03-18 11:27:10', '1');
INSERT INTO `log` VALUES (187, 1, 'logout', '2020-03-18 11:31:27', '3');
INSERT INTO `log` VALUES (188, 1, 'login', '2020-03-18 15:36:28', '1');
INSERT INTO `log` VALUES (189, 1, 'logout', '2020-03-18 16:00:51', '3');
INSERT INTO `log` VALUES (190, 1, 'login', '2020-03-18 16:06:25', '1');
INSERT INTO `log` VALUES (191, 1, 'logout', '2020-03-18 16:06:36', '3');
INSERT INTO `log` VALUES (192, 1, 'login', '2020-03-18 16:17:00', '1');
INSERT INTO `log` VALUES (193, 1, 'login', '2020-03-19 08:56:29', '1');
INSERT INTO `log` VALUES (194, 1, 'login', '2020-03-19 11:06:57', '1');
INSERT INTO `log` VALUES (195, 1, 'logout', '2020-03-19 11:48:11', '3');
INSERT INTO `log` VALUES (196, 1, 'login', '2020-03-19 12:49:47', '1');
INSERT INTO `log` VALUES (197, 1, 'login', '2020-03-23 13:50:38', '1');
INSERT INTO `log` VALUES (198, 1, 'logout', '2020-03-23 13:51:08', '3');
INSERT INTO `log` VALUES (199, 1, 'login', '2020-03-23 13:51:12', '1');
INSERT INTO `log` VALUES (200, 1, 'logout', '2020-03-23 14:06:06', '3');
INSERT INTO `log` VALUES (201, 1, 'login', '2020-03-23 14:09:00', '1');
INSERT INTO `log` VALUES (202, 1, 'logout', '2020-03-23 14:09:03', '3');
INSERT INTO `log` VALUES (203, 1, 'login', '2020-03-23 14:09:08', '1');
INSERT INTO `log` VALUES (204, 1, 'logout', '2020-03-23 14:09:18', '3');
INSERT INTO `log` VALUES (205, 1, 'login', '2020-03-23 14:09:35', '1');
INSERT INTO `log` VALUES (206, 1, 'logout', '2020-03-23 14:09:44', '3');
INSERT INTO `log` VALUES (207, 1, 'login', '2020-03-23 14:11:57', '1');
INSERT INTO `log` VALUES (208, 1, 'logout', '2020-03-23 14:12:16', '3');
INSERT INTO `log` VALUES (209, 1, 'login', '2020-03-23 14:15:48', '1');
INSERT INTO `log` VALUES (210, 1, 'logout', '2020-03-23 14:23:01', '3');
INSERT INTO `log` VALUES (211, 1, 'login', '2020-03-23 14:23:05', '1');
INSERT INTO `log` VALUES (212, 1, 'logout', '2020-03-23 14:25:48', '3');
INSERT INTO `log` VALUES (213, 1, 'login', '2020-03-23 14:25:52', '1');
INSERT INTO `log` VALUES (214, 1, 'login', '2020-03-23 20:56:14', '1');
INSERT INTO `log` VALUES (215, 1, 'logout', '2020-03-23 22:23:32', '3');
INSERT INTO `log` VALUES (216, 1, 'login', '2020-03-25 17:11:19', '1');
INSERT INTO `log` VALUES (217, 1, 'logout', '2020-03-25 17:48:36', '3');
INSERT INTO `log` VALUES (222, 1, 'login', '2020-03-25 21:05:39', '1');
INSERT INTO `log` VALUES (230, NULL, 'logout', '2020-03-27 20:02:26', '3');
INSERT INTO `log` VALUES (233, 37, 'login', '2020-03-27 21:52:00', '1');
INSERT INTO `log` VALUES (234, 37, 'logout', '2020-03-27 21:56:14', '3');
INSERT INTO `log` VALUES (237, 1, 'login', '2020-05-02 10:56:25', '1');
INSERT INTO `log` VALUES (241, 1, 'logout', '2020-05-02 11:00:56', '3');
INSERT INTO `log` VALUES (244, 1, 'login', '2020-05-02 11:08:17', '1');
INSERT INTO `log` VALUES (245, 1, 'logout', '2020-05-02 11:11:34', '3');
INSERT INTO `log` VALUES (246, 1, 'login', '2020-05-02 11:11:39', '1');
INSERT INTO `log` VALUES (247, 1, 'logout', '2020-05-02 12:02:13', '3');
INSERT INTO `log` VALUES (251, 1, 'login', '2020-05-03 11:37:57', '1');
INSERT INTO `log` VALUES (252, 1, 'logout', '2020-05-03 11:38:11', '3');
INSERT INTO `log` VALUES (254, 1, 'login', '2020-05-08 11:37:05', '1');
INSERT INTO `log` VALUES (255, 1, 'logout', '2020-05-08 12:27:50', '3');
INSERT INTO `log` VALUES (256, 1, 'login', '2020-05-08 12:27:54', '1');
INSERT INTO `log` VALUES (257, 1, 'logout', '2020-05-08 12:44:34', '3');
INSERT INTO `log` VALUES (258, 1, 'login', '2020-05-08 12:49:02', '1');
INSERT INTO `log` VALUES (259, 1, 'logout', '2020-05-08 12:50:38', '3');
INSERT INTO `log` VALUES (260, 1, 'login', '2020-05-08 12:54:00', '1');
INSERT INTO `log` VALUES (261, 1, 'logout', '2020-05-08 12:54:10', '3');
INSERT INTO `log` VALUES (262, 1, 'login', '2020-05-08 12:54:28', '1');
INSERT INTO `log` VALUES (263, 1, 'logout', '2020-05-08 12:59:51', '3');
INSERT INTO `log` VALUES (264, 1, 'login', '2020-05-08 13:01:07', '1');
INSERT INTO `log` VALUES (265, 1, 'login', '2020-05-16 18:57:54', '1');
INSERT INTO `log` VALUES (266, 1, 'logout', '2020-05-16 23:11:12', '3');
INSERT INTO `log` VALUES (267, 1, 'login', '2020-05-17 10:05:49', '1');
INSERT INTO `log` VALUES (268, 1, 'login', '2020-05-21 12:12:55', '1');
INSERT INTO `log` VALUES (269, 1, 'logout', '2020-05-21 13:14:50', '3');
INSERT INTO `log` VALUES (270, 29, 'login', '2020-05-21 13:14:53', '1');
INSERT INTO `log` VALUES (271, 29, 'logout', '2020-05-21 13:15:42', '3');
INSERT INTO `log` VALUES (272, 1, 'login', '2020-05-21 13:16:00', '1');
INSERT INTO `log` VALUES (273, 1, 'logout', '2020-05-21 13:16:45', '3');
INSERT INTO `log` VALUES (274, 29, 'login', '2020-05-21 13:16:53', '1');
INSERT INTO `log` VALUES (275, 29, 'logout', '2020-05-21 13:23:54', '3');
INSERT INTO `log` VALUES (276, 29, 'login', '2020-05-21 13:24:01', '1');
INSERT INTO `log` VALUES (277, 29, 'logout', '2020-05-21 13:24:14', '3');
INSERT INTO `log` VALUES (278, 1, 'login', '2020-05-21 13:24:19', '1');
INSERT INTO `log` VALUES (279, 1, 'logout', '2020-05-21 13:24:41', '3');
INSERT INTO `log` VALUES (280, 12, 'login', '2020-05-21 13:24:44', '1');
INSERT INTO `log` VALUES (281, 12, 'logout', '2020-05-21 13:25:05', '3');
INSERT INTO `log` VALUES (282, 1, 'login', '2020-05-21 13:25:18', '1');
INSERT INTO `log` VALUES (283, 1, 'logout', '2020-05-21 14:10:38', '3');
INSERT INTO `log` VALUES (284, 1, 'login', '2020-05-21 14:10:49', '1');
INSERT INTO `log` VALUES (285, 1, 'logout', '2020-05-21 14:12:59', '3');
INSERT INTO `log` VALUES (286, 29, 'login', '2020-05-21 14:13:07', '1');
INSERT INTO `log` VALUES (287, 29, 'logout', '2020-05-21 14:13:50', '3');
INSERT INTO `log` VALUES (288, 1, 'login', '2020-05-21 14:13:53', '1');
INSERT INTO `log` VALUES (289, 1, 'logout', '2020-05-21 14:14:15', '3');
INSERT INTO `log` VALUES (290, 1, 'login', '2020-05-21 14:14:18', '1');
INSERT INTO `log` VALUES (291, 1, 'logout', '2020-05-21 14:14:37', '3');
INSERT INTO `log` VALUES (292, 29, 'login', '2020-05-21 14:15:41', '1');
INSERT INTO `log` VALUES (293, 29, 'logout', '2020-05-21 14:15:58', '3');
INSERT INTO `log` VALUES (294, 29, 'login', '2020-05-21 14:16:02', '1');
INSERT INTO `log` VALUES (295, 1, 'login', '2020-05-21 19:27:27', '1');
INSERT INTO `log` VALUES (296, 1, 'logout', '2020-05-21 21:47:15', '3');
INSERT INTO `log` VALUES (297, 1, 'login', '2020-05-21 21:47:26', '1');
INSERT INTO `log` VALUES (298, 1, 'login', '2020-05-28 20:38:29', '1');
INSERT INTO `log` VALUES (299, 1, 'logout', '2020-05-28 20:47:46', '3');
INSERT INTO `log` VALUES (300, 1, 'login', '2020-05-28 20:47:52', '1');
INSERT INTO `log` VALUES (301, 1, 'login', '2020-05-30 08:03:03', '1');
INSERT INTO `log` VALUES (302, 1, 'logout', '2020-05-30 09:59:25', '3');
INSERT INTO `log` VALUES (303, 1, 'login', '2020-05-30 10:19:23', '1');
INSERT INTO `log` VALUES (304, 1, 'login', '2020-05-30 17:25:29', '1');
INSERT INTO `log` VALUES (305, 1, 'logout', '2020-05-30 17:36:52', '3');
INSERT INTO `log` VALUES (306, 1, 'login', '2020-05-30 17:36:55', '1');
INSERT INTO `log` VALUES (307, 1, 'logout', '2020-05-30 17:39:43', '3');
INSERT INTO `log` VALUES (308, 1, 'login', '2020-05-30 17:39:46', '1');
INSERT INTO `log` VALUES (309, 1, 'login', '2020-05-30 17:40:00', '1');
INSERT INTO `log` VALUES (310, 1, 'logout', '2020-05-30 17:40:34', '3');
INSERT INTO `log` VALUES (311, 1, 'login', '2020-05-30 17:40:36', '1');
INSERT INTO `log` VALUES (312, 1, 'logout', '2020-05-30 17:41:00', '3');
INSERT INTO `log` VALUES (313, 1, 'login', '2020-05-30 17:41:20', '1');
INSERT INTO `log` VALUES (314, 1, 'logout', '2020-05-30 17:42:01', '3');
INSERT INTO `log` VALUES (315, 1, 'login', '2020-05-30 17:42:04', '1');
INSERT INTO `log` VALUES (316, 1, 'logout', '2020-05-30 17:42:29', '3');
INSERT INTO `log` VALUES (317, 1, 'login', '2020-05-30 17:42:31', '1');
INSERT INTO `log` VALUES (318, 1, 'login', '2020-05-30 17:42:46', '1');
INSERT INTO `log` VALUES (319, 1, 'login', '2020-05-30 17:43:08', '1');
INSERT INTO `log` VALUES (320, 1, 'logout', '2020-05-30 17:43:13', '3');
INSERT INTO `log` VALUES (321, 1, 'login', '2020-05-30 17:43:16', '1');
INSERT INTO `log` VALUES (322, 1, 'logout', '2020-05-30 17:43:19', '3');
INSERT INTO `log` VALUES (323, 1, 'login', '2020-05-30 17:43:49', '1');
INSERT INTO `log` VALUES (324, 1, 'logout', '2020-05-30 17:45:33', '3');
INSERT INTO `log` VALUES (325, 1, 'login', '2020-05-30 17:45:35', '1');
INSERT INTO `log` VALUES (326, 1, 'logout', '2020-05-30 17:45:39', '3');
INSERT INTO `log` VALUES (327, 1, 'login', '2020-05-30 17:46:01', '1');
INSERT INTO `log` VALUES (328, 1, 'logout', '2020-05-30 17:46:06', '3');
INSERT INTO `log` VALUES (329, 1, 'login', '2020-05-30 17:46:21', '1');
INSERT INTO `log` VALUES (330, 1, 'login', '2020-05-31 08:51:07', '1');
INSERT INTO `log` VALUES (331, 1, 'logout', '2020-05-31 09:21:55', '3');
INSERT INTO `log` VALUES (332, 1, 'login', '2020-05-31 09:29:14', '1');
INSERT INTO `log` VALUES (333, 1, 'logout', '2020-05-31 09:32:14', '3');
INSERT INTO `log` VALUES (334, 1, 'login', '2020-05-31 09:32:39', '1');
INSERT INTO `log` VALUES (335, 1, 'logout', '2020-05-31 09:44:58', '3');
INSERT INTO `log` VALUES (336, 29, 'login', '2020-05-31 09:45:07', '1');
INSERT INTO `log` VALUES (337, 29, 'logout', '2020-05-31 09:45:39', '3');
INSERT INTO `log` VALUES (338, 1, 'login', '2020-05-31 09:45:42', '1');
INSERT INTO `log` VALUES (339, 1, 'logout', '2020-05-31 12:36:07', '3');
INSERT INTO `log` VALUES (340, 1, 'login', '2020-05-31 12:37:32', '1');
INSERT INTO `log` VALUES (341, 1, 'login', '2020-06-02 06:03:50', '1');
INSERT INTO `log` VALUES (342, 1, 'logout', '2020-06-02 06:04:01', '3');
INSERT INTO `log` VALUES (343, 1, 'login', '2020-06-07 09:55:36', '1');
INSERT INTO `log` VALUES (344, 1, 'logout', '2020-06-07 09:59:14', '3');
INSERT INTO `log` VALUES (345, 12, 'login', '2020-06-07 09:59:19', '1');
INSERT INTO `log` VALUES (346, 12, 'logout', '2020-06-07 09:59:50', '3');
INSERT INTO `log` VALUES (347, 1, 'login', '2020-06-07 09:59:53', '1');
INSERT INTO `log` VALUES (348, 12, 'login', '2020-06-07 10:01:41', '1');
INSERT INTO `log` VALUES (349, 12, 'logout', '2020-06-07 10:02:47', '3');
INSERT INTO `log` VALUES (350, 12, 'login', '2020-06-07 10:02:50', '1');
INSERT INTO `log` VALUES (351, 12, 'logout', '2020-06-07 10:12:07', '3');
INSERT INTO `log` VALUES (352, 12, 'login', '2020-06-07 10:12:12', '1');
INSERT INTO `log` VALUES (353, 12, 'logout', '2020-06-07 10:14:17', '3');
INSERT INTO `log` VALUES (354, 12, 'login', '2020-06-07 10:14:21', '1');
INSERT INTO `log` VALUES (355, 12, 'logout', '2020-06-07 10:14:33', '3');
INSERT INTO `log` VALUES (356, 12, 'login', '2020-06-07 10:15:28', '1');
INSERT INTO `log` VALUES (357, 12, 'logout', '2020-06-07 10:17:11', '3');
INSERT INTO `log` VALUES (358, 12, 'login', '2020-06-07 10:17:17', '1');
INSERT INTO `log` VALUES (359, 12, 'logout', '2020-06-07 10:32:03', '3');
INSERT INTO `log` VALUES (360, 1, 'login', '2020-06-07 10:32:10', '1');
INSERT INTO `log` VALUES (361, 1, 'logout', '2020-06-07 10:32:12', '3');
INSERT INTO `log` VALUES (362, 12, 'login', '2020-06-07 10:32:16', '1');
INSERT INTO `log` VALUES (363, 12, 'logout', '2020-06-07 10:32:28', '3');
INSERT INTO `log` VALUES (364, NULL, 'logout', '2020-06-07 10:32:30', '3');
INSERT INTO `log` VALUES (365, 12, 'login', '2020-06-07 10:32:33', '1');
INSERT INTO `log` VALUES (366, 12, 'logout', '2020-06-07 10:56:26', '3');
INSERT INTO `log` VALUES (367, 1, 'login', '2020-06-07 10:56:33', '1');
INSERT INTO `log` VALUES (368, 1, 'logout', '2020-06-07 10:56:37', '3');
INSERT INTO `log` VALUES (369, 12, 'login', '2020-06-07 10:56:40', '1');
INSERT INTO `log` VALUES (370, 12, 'logout', '2020-06-07 10:58:52', '3');
INSERT INTO `log` VALUES (371, 1, 'login', '2020-06-10 20:58:41', '1');
INSERT INTO `log` VALUES (372, 1, 'logout', '2020-06-10 20:59:07', '3');
INSERT INTO `log` VALUES (373, 1, 'login', '2020-06-10 20:59:10', '1');
INSERT INTO `log` VALUES (374, 29, 'login', '2020-06-19 22:14:49', '1');
INSERT INTO `log` VALUES (375, 29, 'logout', '2020-06-19 22:14:54', '3');
INSERT INTO `log` VALUES (376, 1, 'login', '2020-06-19 22:17:10', '1');
INSERT INTO `log` VALUES (377, 1, 'login', '2020-09-26 09:25:01', '1');
INSERT INTO `log` VALUES (378, 1, 'logout', '2020-09-26 09:27:56', '3');
INSERT INTO `log` VALUES (379, 1, 'login', '2020-09-26 09:34:43', '1');
INSERT INTO `log` VALUES (380, 1, 'logout', '2020-09-26 09:34:55', '3');
INSERT INTO `log` VALUES (381, 44, 'login', '2020-09-26 09:35:00', '1');
INSERT INTO `log` VALUES (382, 44, 'logout', '2020-09-26 09:40:53', '3');
INSERT INTO `log` VALUES (383, 44, 'login', '2020-09-26 09:40:57', '1');
INSERT INTO `log` VALUES (384, 44, 'logout', '2020-09-26 09:40:57', '3');
INSERT INTO `log` VALUES (385, 44, 'login', '2020-09-26 09:42:05', '1');
INSERT INTO `log` VALUES (386, 44, 'logout', '2020-09-26 09:42:05', '3');
INSERT INTO `log` VALUES (387, 1, 'login', '2020-09-26 09:43:03', '1');
INSERT INTO `log` VALUES (388, 1, 'logout', '2020-09-26 09:43:36', '3');
INSERT INTO `log` VALUES (389, 44, 'login', '2020-09-26 09:43:39', '1');
INSERT INTO `log` VALUES (390, 44, 'logout', '2020-09-26 09:43:51', '3');
INSERT INTO `log` VALUES (391, 44, 'login', '2020-09-26 09:44:08', '1');
INSERT INTO `log` VALUES (392, 44, 'logout', '2020-09-26 09:44:09', '3');
INSERT INTO `log` VALUES (393, 44, 'login', '2020-09-26 09:49:18', '1');
INSERT INTO `log` VALUES (394, 44, 'logout', '2020-09-26 09:49:19', '3');
INSERT INTO `log` VALUES (395, 44, 'login', '2020-09-26 09:49:20', '1');
INSERT INTO `log` VALUES (396, 44, 'logout', '2020-09-26 09:49:20', '3');
INSERT INTO `log` VALUES (397, 44, 'login', '2020-09-26 09:49:21', '1');
INSERT INTO `log` VALUES (398, 44, 'logout', '2020-09-26 09:49:22', '3');
INSERT INTO `log` VALUES (399, 44, 'login', '2020-09-26 09:49:23', '1');
INSERT INTO `log` VALUES (400, 44, 'logout', '2020-09-26 09:49:24', '3');
INSERT INTO `log` VALUES (401, 44, 'login', '2020-09-26 09:52:13', '1');
INSERT INTO `log` VALUES (402, 44, 'logout', '2020-09-26 09:52:15', '3');
INSERT INTO `log` VALUES (403, 44, 'login', '2020-09-26 09:52:19', '1');
INSERT INTO `log` VALUES (404, 44, 'logout', '2020-09-26 09:52:19', '3');
INSERT INTO `log` VALUES (405, 1, 'login', '2020-09-26 09:52:29', '1');
INSERT INTO `log` VALUES (406, 1, 'logout', '2020-09-26 09:52:49', '3');
INSERT INTO `log` VALUES (407, NULL, 'logout', '2020-09-26 09:52:52', '3');
INSERT INTO `log` VALUES (408, 44, 'login', '2020-09-26 09:54:23', '1');
INSERT INTO `log` VALUES (409, 44, 'logout', '2020-09-26 09:54:23', '3');
INSERT INTO `log` VALUES (410, 44, 'login', '2020-09-26 09:54:26', '1');
INSERT INTO `log` VALUES (411, 44, 'logout', '2020-09-26 09:54:26', '3');
INSERT INTO `log` VALUES (412, 44, 'login', '2020-09-26 09:54:38', '1');
INSERT INTO `log` VALUES (413, 44, 'logout', '2020-09-26 09:54:39', '3');
INSERT INTO `log` VALUES (414, 44, 'login', '2020-09-26 09:54:52', '1');
INSERT INTO `log` VALUES (415, 44, 'logout', '2020-09-26 09:54:52', '3');
INSERT INTO `log` VALUES (416, 44, 'login', '2020-09-26 09:54:54', '1');
INSERT INTO `log` VALUES (417, 44, 'logout', '2020-09-26 09:54:54', '3');
INSERT INTO `log` VALUES (418, 44, 'login', '2020-09-26 09:54:57', '1');
INSERT INTO `log` VALUES (419, 44, 'logout', '2020-09-26 09:54:58', '3');
INSERT INTO `log` VALUES (420, 44, 'login', '2020-09-26 09:55:31', '1');
INSERT INTO `log` VALUES (421, 44, 'logout', '2020-09-26 09:55:31', '3');
INSERT INTO `log` VALUES (422, 44, 'login', '2020-09-26 10:05:39', '1');
INSERT INTO `log` VALUES (423, 44, 'logout,karena akses ditolak', '2020-09-26 10:05:39', '3');
INSERT INTO `log` VALUES (424, 44, 'login', '2020-09-26 10:09:23', '1');
INSERT INTO `log` VALUES (425, 44, 'logout,karena akses ditolak', '2020-09-26 10:09:24', '3');
INSERT INTO `log` VALUES (426, 1, 'login', '2020-09-26 10:09:29', '1');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_ikon` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_is_mainmenu` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_akses_level` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_urutan` int(5) NULL DEFAULT NULL,
  `menu_status` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `menu_akses` int(2) NULL DEFAULT NULL,
  `menu_baru` int(2) NULL DEFAULT NULL,
  `menu_label` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 182 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (168, 'setting', 'fas fa-cogs', '0', 'Setting', '1', 3, '1', 1, NULL, 'setting');
INSERT INTO `menu` VALUES (169, 'dashboard', 'fas fa-fire', '0', 'Dashboard', '1,2', 1, '1', 1, NULL, 'dashboard');
INSERT INTO `menu` VALUES (170, 'hak_akses', 'fas fa-fire', '168', 'Hakakses', '1', 1, '1', 1, NULL, 'hak akses');
INSERT INTO `menu` VALUES (171, 'log', 'fas fa-file', '0', 'Log', '1,2', 99, '1', 1, NULL, 'log sistem');
INSERT INTO `menu` VALUES (172, 'sistem', 'fas fa-file', '168', 'Sistem', '1', 1, '1', 1, NULL, 'sistem');
INSERT INTO `menu` VALUES (173, 'level', 'fas fa-file', '168', 'Level', '1', 2, '1', 1, NULL, 'level user');
INSERT INTO `menu` VALUES (174, 'user', 'fas fa-user-cog', '168', 'User', '1', 3, '1', 1, NULL, 'user');
INSERT INTO `menu` VALUES (175, 'backup', 'fas fa-file', '168', 'Backup', '1', 4, '1', 1, NULL, 'backup');
INSERT INTO `menu` VALUES (176, 'profil', 'fas fa-user-cog', '0', 'Profil', '1,2', 5, '1', 1, NULL, 'profil user');
INSERT INTO `menu` VALUES (177, 'laporan', 'fas fa-print', '0', 'Laporan', '1', 6, '1', 1, NULL, 'laporan');
INSERT INTO `menu` VALUES (178, 'lap_log', 'fas fa-print', '177', 'Laporan/Log', '1,2', 1, '1', 1, NULL, 'laporan log');
INSERT INTO `menu` VALUES (179, 'lap_user', 'fas fa-print', '177', 'Laporan/User', '1', 2, '1', 1, NULL, 'laporan user');
INSERT INTO `menu` VALUES (180, 'filemanager', 'fas fa-print', '168', 'Filemanager', '1', 5, '1', 1, NULL, 'file manager');
INSERT INTO `menu` VALUES (181, 'ikon', 'fas fa-fire', '168', 'Ikon', '1', 5, '1', 1, NULL, 'Ikon');

-- ----------------------------
-- Table structure for setting
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting`  (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_namasistem` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `setting_namatempat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `setting_alamat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `setting_email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `setting_notlp` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `setting_logo` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `setting_tagline` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `setting_namapemilik` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`setting_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES (1, 'Novasys', 'Array Motion', 'Jl.bantul Km 10', 'haryanto.duwi@gmail.com', '085725818424', '3663fdabf683f180798ed04287b0c189.png', 'System X', 'Duwi haryantoo');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_password` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `user_nama` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_level` int(5) NULL DEFAULT NULL,
  `user_terdaftar` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  `user_email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_status` bit(1) NULL DEFAULT NULL,
  `created_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  `user_foto` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `user_dashboard` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 1, '2018-09-28 17:00:00', 'Admin@gmail.com', b'1', '2020-05-01 14:21:52', '42c47f96f8b16e06bd0457c52cd2825e.jpg', 'Dashboard');
INSERT INTO `user` VALUES (3, 'haryanto', '8e7173cb9b869db115f77688e70b8ff7', 'haryanto duwi', 3, '2018-10-20 17:00:00', 'admin@gmail.com', b'1', '2020-05-01 14:21:49', NULL, 'Dashboard');
INSERT INTO `user` VALUES (12, 'mita', 'bae3d929b274a4cd35c38fe92f059f1a', 'mita', 2, '2019-12-30 12:38:01', 'mitaduwi@gmail.com', b'1', '2020-05-01 14:21:47', NULL, 'Log');
INSERT INTO `user` VALUES (29, 'duwi', '21232f297a57a5a743894a0e4a801fc3', 'duwi haryanto', 1, '2019-12-30 14:14:49', 'haryanto.duwi@gmail.com', b'1', '2020-05-01 14:21:43', 'fc0d4f41ae0b26f20e8ebc480f5189c0.jpg', 'Dashboard');
INSERT INTO `user` VALUES (35, 'mika', '07af613eea059030daaed3bde1fd1ce7', 'mika', 1, '2019-12-31 07:45:32', 'mika@gmail.com', b'1', '2020-01-02 10:15:30', NULL, 'Dashboard');
INSERT INTO `user` VALUES (36, 'hanabi', 'd43fcce13f4c88fd28c279cc2859f579', 'hanabi', 3, '2020-01-06 17:23:31', 'hanabi@gmail.com', b'1', '2020-01-06 17:23:31', NULL, 'Dashboard');
INSERT INTO `user` VALUES (44, 'paijo', '44529fdc8afb86d58c6c02cd00c02e43', 'paijo', 11, '2020-06-19 22:12:05', 'paijo@gmail.com', b'1', '2020-06-19 22:12:05', NULL, 'Dashboard');

SET FOREIGN_KEY_CHECKS = 1;
