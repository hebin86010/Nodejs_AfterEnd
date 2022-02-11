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

 Date: 11/02/2022 19:42:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for role_MM_persone
-- ----------------------------
DROP TABLE IF EXISTS `role_MM_persone`;
CREATE TABLE `role_MM_persone`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键：角色账户关系',
  `role_id` int NOT NULL COMMENT '角色ID',
  `person_id` int NOT NULL COMMENT '账户ID',
  `is_confirm` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'n' COMMENT '是否核实',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `关联person_id`(`person_id`) USING BTREE,
  INDEX `关联role_id`(`role_id`) USING BTREE,
  CONSTRAINT `关联person_id` FOREIGN KEY (`person_id`) REFERENCES `t_person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `关联role_id` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_MM_persone
-- ----------------------------
INSERT INTO `role_MM_persone` VALUES (1, 6, 5, 'n');
INSERT INTO `role_MM_persone` VALUES (2, 1, 5, 'n');
INSERT INTO `role_MM_persone` VALUES (3, 3, 5, 'n');

SET FOREIGN_KEY_CHECKS = 1;
