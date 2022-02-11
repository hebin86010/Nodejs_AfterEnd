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

 Date: 11/02/2022 19:07:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_person
-- ----------------------------
DROP TABLE IF EXISTS `t_person`;
CREATE TABLE `t_person`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键person_id',
  `student_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `profile_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `name_pinyin` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名拼音',
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `dormitory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍',
  `mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机',
  `politica_outlook` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `introduction` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个人简介',
  `important_person` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '重要联系人',
  `important_phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '重要联系人电话',
  `relationship` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '重要联系人关系',
  `home_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_person
-- ----------------------------
INSERT INTO `t_person` VALUES (1, '22021020208', '巴硕艺', NULL, NULL, 'BaShuoYi', '女', NULL, NULL, '', '13269996019', NULL, NULL, '申希成', '13269996019', '配偶', '北京市丰台区远中悦麒19b03');
INSERT INTO `t_person` VALUES (2, '22021020209', '白雨艺', NULL, NULL, 'BaiYuYi', '女', '生活委员', '3-621-2', '461013356@qq.com', '15001106020', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (3, '22021020210', '陈磊', NULL, NULL, 'ChenLei', '男', NULL, '2-425-4', NULL, '13810338140', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (4, '22021020212', '陈正阳', NULL, NULL, 'ChenZhengYang', '男', NULL, NULL, '18801288506@163.com', '18801288506', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (5, '22021020213', '程祥', NULL, NULL, 'ChengXiang', '男', NULL, NULL, 'chengxiang@bitcc.com.cn', '15010815688', '中共党员', NULL, '程秀雷', '18811669268', '父子', '北京市朝阳区望京中环南路7号');
INSERT INTO `t_person` VALUES (6, '22021020215', '邓涵', NULL, NULL, 'DengHan', '女', NULL, NULL, '451795016@qq.com', '18601032704', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (7, '22021020216', '邓培', NULL, NULL, 'DengPei', '女', '组织委员', NULL, '123517806@qq.com', '13811550705', NULL, NULL, '邓均峰', '13683173308', '家人', '北京市朝阳区百子湾家园B区204号楼1204室');
INSERT INTO `t_person` VALUES (8, '22021020218', '董奇', NULL, NULL, 'DongQi', '男', NULL, '2-425-2', '364130413@qq.com', '18732322043', NULL, NULL, '刘静', '13683106532', '配偶', '北京市海淀区中国气象局北区17号楼809');
INSERT INTO `t_person` VALUES (9, '22021020219', '高焱燚', NULL, NULL, 'GaoYanYi', '男', NULL, NULL, '7667007@qq.com', '17610071896', NULL, NULL, '王雁', '13804107769', '家人', '北京市朝阳区慈云寺北里111号楼901');
INSERT INTO `t_person` VALUES (10, '22021020220', '高一博', NULL, NULL, 'GaoYiBo', '男', NULL, '2-418-4', '2841678229@qq.com', '15801086388', '中共党员', NULL, '高剑英', '13633271518', '家人', '北京市丰台区东亚三环2号楼530');
INSERT INTO `t_person` VALUES (11, '22021020226', '郭晓晨', NULL, NULL, 'GuoXiaoChen', '女', NULL, '3-641-4', '742984597@qq.com', '15110026313', '共青团员', NULL, '郭阔', '13935285421', '父女', '山西省太原市尖草坪区优山美郡三期49号楼二单元2802室');
INSERT INTO `t_person` VALUES (12, '22021020228', '韩彬', NULL, NULL, 'HanBin', '女', '学习委员', NULL, '425171986@qq.com', '13381213136', NULL, NULL, '郝源', '18001027752', '配偶', '北京市大兴区观音寺小区30-2-501');
INSERT INTO `t_person` VALUES (13, '22021020231', '贺斌', NULL, NULL, 'HeBin', '男', '宣传委员', '2-425-1', '18610028680@163.com', '18610028680', NULL, NULL, '曹俊丽', '13911183329', '配偶', '北京市昌平区龙跃苑二区11-3-401');
INSERT INTO `t_person` VALUES (14, '22021020232', '侯颖', NULL, NULL, 'HouYing', '女', NULL, NULL, '1098320021@126.com', '13811622904', NULL, NULL, '崇川', '18601043860', '配偶', '北京市朝阳区胜古家园B座408室');
INSERT INTO `t_person` VALUES (15, '22021020236', '郎恬逸', NULL, NULL, 'LangTianYi', '男', NULL, '2-406-3', '645865969@qq.com', '18600261594', NULL, NULL, '郎凯', '13501103939', '家人', '北京市丰台区玉安园社区2号楼1809');
INSERT INTO `t_person` VALUES (16, '22021020237', '雷芷君', NULL, NULL, 'LeiZhiJun', '女', NULL, '3-621-1', NULL, '13934799575', NULL, NULL, '张宏伟', '18635236609', '配偶', '山西省大同市平城区万城华府5-2-401');
INSERT INTO `t_person` VALUES (17, '22021020238', '李宁', NULL, NULL, 'LiNing', '女', NULL, NULL, 'lining1114@126.com', '18911296396', '共青团员', NULL, '白金石', '18910569579', '家人', '北京市朝阳区远洋新悦5号院5-2-1802');
INSERT INTO `t_person` VALUES (18, '22021020241', '李新蕊', NULL, NULL, 'LiXinRui', '女', NULL, NULL, '63945735@qq.com', '13783414516', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (19, '22021020243', '李宇婷', NULL, NULL, 'LiYuTing', '女', NULL, NULL, NULL, '13522345775', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (20, '22021020244', '李哲', NULL, NULL, 'LiZhe', '男', NULL, NULL, 'tgfcer2003@163.com', '13611347189', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (21, '22021020245', '梁丹妮', NULL, NULL, 'LiangDanNi', '女', NULL, NULL, '1020557850@qq.com', '13581753066', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (22, '22021020247', '刘弘贞', NULL, NULL, 'LiuHongZhen', '女', NULL, NULL, '63413720@qq.com', '18518939951', NULL, NULL, '宋宇', '13311265178', '配偶', '河北省三河市燕郊开发区港中旅一期7-2-3305');
INSERT INTO `t_person` VALUES (23, '22021020252', '刘洋', NULL, NULL, 'LiuYang', '男', NULL, NULL, 'l_yang2009@163.com', '13718782566', NULL, NULL, '杨永娟', '18301433678', '母亲', '北京市门头沟区永定镇丽景长安小区二期4号楼2单元1602室');
INSERT INTO `t_person` VALUES (24, '22021020254', '刘智超', NULL, NULL, 'LiuZhiChao', '男', '副班长', NULL, '15731901@qq.com', '15810700401', NULL, NULL, '张丽丽', '13844095307', NULL, '北京市通州区杨庄路22号院12-2-302');
INSERT INTO `t_person` VALUES (25, '22021020257', '马俊杰', NULL, NULL, 'MaJunJie', '男', NULL, '2-425-3', 'majunjie@goldwind.com.cn', '15011229828', NULL, NULL, '张嵩岩', '13552426250', '亲戚', '北京亦庄开发区四海路4号院亦城亦景2号楼1单元903');
INSERT INTO `t_person` VALUES (26, '22021020260', '梅林', NULL, NULL, 'MeiLin', '男', NULL, NULL, 'colin_m007@yeah.net', '13601393669', NULL, NULL, '王雅菲', '13810871707', '配偶', '北京市朝阳区九台2000家园1号楼1810');
INSERT INTO `t_person` VALUES (27, '22021020261', '孟梅', NULL, NULL, 'MengMei', '女', NULL, NULL, 'meng.cn@qq.com', '18811522488', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (28, '22021020262', '孟伟杰', NULL, NULL, 'MengWeiJie', '女', NULL, NULL, '809148653@qq.com', '15910775388', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (29, '22021020264', '申宇', NULL, NULL, 'ShenYu', '男', NULL, NULL, 'shenyu@re.citic.com', '13810156138', '中共党员', NULL, '程晓琳', '18911057801', '配偶', '北京市西城区爱民街2号院12号楼1门6层1号');
INSERT INTO `t_person` VALUES (30, '22021020266', '宋姗芸', NULL, NULL, 'SongShanYun', '女', NULL, NULL, '1227761577@qq.com', '17733638725', '共青团员', NULL, '张译文', '13756695330', '朋友', '北京市北京经济技术开发区天华北街2号鹿鸣苑5号楼5-4');
INSERT INTO `t_person` VALUES (31, '22021020270', '孙禹超', NULL, NULL, 'SunYuChao', '男', NULL, NULL, '271006303@qq.com', '18610383165', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (32, '22021020272', '田晓猛', NULL, NULL, 'TianXiaoMeng', '男', NULL, NULL, NULL, '15810483573', NULL, NULL, '李紫嫣', '15810653881', '配偶', '北京朝阳区山水蓝维33-2-901');
INSERT INTO `t_person` VALUES (33, '22021020274', '童新宇', NULL, NULL, 'TongXinYu', '女', NULL, NULL, 'tongxinyu1993@yeah.net', '18501185710', NULL, NULL, '钟再云', '13503763478', '母亲', '河南省信阳市五一农场梨园小区');
INSERT INTO `t_person` VALUES (34, '22021020276', '王迪', NULL, NULL, 'WangDi', '女', NULL, NULL, '240898233@qq.com', '13011217489', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (35, '22021020282', '王思睿', NULL, NULL, 'WangSiRui', '女', NULL, NULL, '616891927@qq.com', '15001060046', '共青团员', NULL, '王思敏', '18100285379', '家人', '北京市房山区长阳镇京投万科金域公园');
INSERT INTO `t_person` VALUES (36, '22021020283', '王秀', NULL, NULL, 'WangXiu', '女', NULL, NULL, '549754277@qq.com', '13641363195', '中共党员', NULL, '王侠', '18768675580', '家人', '北京市朝阳区劲松二区202-3-102');
INSERT INTO `t_person` VALUES (37, '22021020286', '吴思源', NULL, NULL, 'WuSiYuan', '女', NULL, NULL, NULL, '13121400807', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (38, '22021020288', '夏天鹏', NULL, NULL, 'XiaTianPeng', '男', NULL, '2-40？-1', NULL, '13552571457', NULL, NULL, '夏宝全', '13722039787', '父亲', '北京市大兴区瀛海镇瀛海家园1号院3号楼2单元401');
INSERT INTO `t_person` VALUES (39, '22021020289', '肖博', NULL, NULL, 'XiaoBo', '男', NULL, NULL, '781181243@qq.com', '18501171652', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (40, '22021020292', '杨阳', NULL, NULL, 'YangYang', '女', NULL, NULL, '751439361@qq.com', '18910886758', '中共党员', NULL, '席建坤', '15022607515', '夫妻', '北京市东城区东方雅苑D2-107');
INSERT INTO `t_person` VALUES (41, '22021020295', '殷亚然', NULL, NULL, 'YinYaRan', '女', NULL, '3-641-1', '523026940@qq.com', '17731602727', '中共党员', NULL, '宋国峰', '18131626668', '夫妻', '河北省廊坊市金光道汇源锦城10-2-1501');
INSERT INTO `t_person` VALUES (42, '22021020298', '张福利', NULL, NULL, 'ZhangFuLi', '男', NULL, '2-40？-3', 'fuli8802@163.com', '13699216296', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (43, '22021020300', '张瑞鸿', NULL, NULL, 'ZhangRuiHong', '男', NULL, NULL, '470003717@qq.com', '15210612726', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (44, '22021020302', '张学会', NULL, NULL, 'ZhangXueHui', '女', NULL, NULL, 'corina1986@126.com', '15110198096', '中共预备党员', NULL, '王翠芹', '17326842860', '亲戚', '北京市朝阳区鑫兆佳园15号楼综合楼762');
INSERT INTO `t_person` VALUES (45, '22021020304', '张颖', NULL, NULL, 'ZhangYing', '女', NULL, '3-641-2', '756525520@qq.com', '15203163339', NULL, NULL, '张福顺', '15081681118', '父亲', '河北省廊坊市广阳区汇景轩22-2-201');
INSERT INTO `t_person` VALUES (46, '22021020307', '章云梅', NULL, NULL, 'ZhangYunMei', '女', NULL, '3-641-3', 'zymabcd@126.com', '13651062384', NULL, NULL, '高宜军', '18891999977', '夫妻', '陕西省西安市雁塔区博文路双威温馨花园5号楼');
INSERT INTO `t_person` VALUES (47, '22021020309', '赵骏奇', NULL, NULL, 'ZhaoJunQi', '男', NULL, NULL, '506630177@qq.com', '13264286819', NULL, NULL, '刘雅萌', '18910826767', '配偶', NULL);
INSERT INTO `t_person` VALUES (48, '22021020311', '赵吴华', NULL, NULL, 'ZhaoWuHua', '男', '班长', NULL, '446178080@qq.com', '13810064844', NULL, NULL, '赵一南', '15712864844', '亲戚', '北京经济技术开发区文化园西路8号院林肯公园C区8号楼902');
INSERT INTO `t_person` VALUES (49, '22021020314', '周成文', NULL, NULL, 'ZhouChengWen', '女', '文体委员', NULL, 'vivi_zhou@163.com', '13366166570', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (50, '22021020316', '朱飞翔', NULL, NULL, 'ZhuFeiXiang', '男', NULL, NULL, '412742857@qq.com', '18656787698', NULL, NULL, '史丹丹', '15956721076', '夫妻', '安徽省亳州市谯城区恒大翡翠华庭5栋504');
INSERT INTO `t_person` VALUES (51, NULL, '肖旭', NULL, NULL, 'XiaoXu', '男', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_person` VALUES (52, NULL, '张松波', NULL, NULL, 'ZhangSongBo', '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
