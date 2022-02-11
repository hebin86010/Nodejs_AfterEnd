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

 Date: 11/02/2022 19:06:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_featrue_code_type
-- ----------------------------
DROP TABLE IF EXISTS `t_featrue_code_type`;
CREATE TABLE `t_featrue_code_type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键：feature_code_tyoe_id',
  `feature_code_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '特征码类型',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '简介',
  `rule` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '特征码组成规则',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_featrue_code_type
-- ----------------------------
INSERT INTO `t_featrue_code_type` VALUES (1, '系统账号', '用户登录系统的账号', '字母+数字，不区分大小写');
INSERT INTO `t_featrue_code_type` VALUES (2, '手机号', '个人手机号', '11位数字');
INSERT INTO `t_featrue_code_type` VALUES (3, '邮箱', '个人邮箱', '带@的字符传');
INSERT INTO `t_featrue_code_type` VALUES (4, '学号', '学生学号', NULL);
INSERT INTO `t_featrue_code_type` VALUES (9, '指纹', '指纹信息数据', '');

SET FOREIGN_KEY_CHECKS = 1;
