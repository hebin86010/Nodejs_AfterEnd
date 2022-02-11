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

 Date: 11/02/2022 19:07:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_organization
-- ----------------------------
DROP TABLE IF EXISTS `t_organization`;
CREATE TABLE `t_organization`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键：t_org_id',
  `org_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织代码',
  `org_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '组织名称',
  `org_abbr` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织简称',
  `org_full_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织全称',
  `parent_id` int NOT NULL COMMENT '上级组织',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `is_show` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否显示',
  `creator_id` int NULL DEFAULT NULL COMMENT '创建人ID',
  `creat_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_account_id` int NULL DEFAULT NULL COMMENT '更新人ID',
  `last_update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `创建人`(`creator_id`) USING BTREE,
  CONSTRAINT `创建人` FOREIGN KEY (`creator_id`) REFERENCES `t_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
