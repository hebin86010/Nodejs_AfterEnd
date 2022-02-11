/*
 Navicat MySQL Data Transfer

 Source Server         : 阿里云MySQL
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : 47.93.46.246:3306
 Source Schema         : classmate_help_db

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 11/02/2022 19:07:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键：t_role_id',
  `role` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色',
  `org_id` int NOT NULL COMMENT '所属组织ID',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `creator_id` int NOT NULL COMMENT '创建人id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_account_id` int NULL DEFAULT NULL COMMENT '修改账户ID',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最近修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `创建者`(`creator_id`) USING BTREE,
  INDEX `所在组织`(`org_id`) USING BTREE,
  CONSTRAINT `创建者` FOREIGN KEY (`creator_id`) REFERENCES `t_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `所在组织` FOREIGN KEY (`org_id`) REFERENCES `t_organization` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '学生', 5, '班级学生', 5, '2022-02-09 19:53:29', NULL, '2022-02-09 20:08:04');
INSERT INTO `t_role` VALUES (2, '老师', 2, '学校老师', 5, '2022-02-09 19:53:38', NULL, '2022-02-09 20:07:55');
INSERT INTO `t_role` VALUES (3, '班干部', 5, '班干部', 5, '2022-02-09 19:53:59', NULL, '2022-02-09 20:08:19');
INSERT INTO `t_role` VALUES (4, '班级管理员', 5, '班级管理员', 5, '2022-02-09 19:55:05', NULL, '2022-02-09 20:03:12');
INSERT INTO `t_role` VALUES (5, '班主任', 5, '班主任', 5, '2022-02-09 19:55:28', NULL, '2022-02-09 20:08:29');
INSERT INTO `t_role` VALUES (6, '系统管理员', 1, '系统管理员', 5, '2022-02-09 20:02:15', NULL, '2022-02-09 20:03:06');
INSERT INTO `t_role` VALUES (7, '年级管理员', 4, '年级管理员', 5, '2022-02-09 20:05:59', NULL, '2022-02-09 20:05:59');
INSERT INTO `t_role` VALUES (8, '学院管理员', 3, '学院管理员', 5, '2022-02-09 20:06:41', NULL, '2022-02-09 20:06:41');
INSERT INTO `t_role` VALUES (9, '学校管理员', 2, '学校管理员', 5, '2022-02-09 20:07:11', NULL, '2022-02-09 20:07:11');

SET FOREIGN_KEY_CHECKS = 1;
