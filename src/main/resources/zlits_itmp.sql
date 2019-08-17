/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : zlits_itmp

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 17/08/2019 12:18:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alert_state_threshold
-- ----------------------------
DROP TABLE IF EXISTS `alert_state_threshold`;
CREATE TABLE `alert_state_threshold`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `scoreLow` int(11) NULL DEFAULT NULL COMMENT '开始分数',
  `scoreHigh` int(11) NULL DEFAULT NULL COMMENT '截止分数',
  `alertState` int(11) NULL DEFAULT NULL COMMENT '告警状态',
  `alertStateName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '告警状态名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for data_dictionary_info_item
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary_info_item`;
CREATE TABLE `data_dictionary_info_item`  (
  `ID` bigint(30) NOT NULL AUTO_INCREMENT COMMENT 'ID为主键',
  `ZDLX` smallint(2) NOT NULL COMMENT '1：号牌种类;2：使用性质;3：车辆类型;4：车身颜色;5:是否发卡',
  `ZDBM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典编码',
  `ZDSY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典释义',
  `VALID` smallint(2) NOT NULL DEFAULT 0 COMMENT '是否已经删除:0-未删除；1-已删除；',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 291 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_dictionary_info_item
-- ----------------------------
INSERT INTO `data_dictionary_info_item` VALUES (1, 1, '01', '大型汽车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (2, 1, '02', '小型汽车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (3, 1, '03', '使馆汽车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (4, 1, '04', '领馆汽车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (5, 1, '05', '境外汽车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (6, 1, '06', '外籍汽车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (7, 1, '13', '低速车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (8, 1, '16', '教练汽车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (9, 1, '07/08/09/10/11/12/17/21', '摩托车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (17, 1, '99', '新能源汽车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (18, 1, '23', '警用汽车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (19, 1, '26', '港澳两地车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (20, 1, '27', '港澳两地车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (21, 1, '31', '武警车辆', 0);
INSERT INTO `data_dictionary_info_item` VALUES (22, 1, '32', '军队车辆', 0);
INSERT INTO `data_dictionary_info_item` VALUES (23, 1, '40', '其他车辆', 0);
INSERT INTO `data_dictionary_info_item` VALUES (24, 2, 'A', '非运营', 0);
INSERT INTO `data_dictionary_info_item` VALUES (25, 2, 'L', '营转非', 0);
INSERT INTO `data_dictionary_info_item` VALUES (26, 2, 'M', '出租转非', 0);
INSERT INTO `data_dictionary_info_item` VALUES (27, 2, 'B', '公路客运', 0);
INSERT INTO `data_dictionary_info_item` VALUES (28, 2, 'E', '旅游客运', 0);
INSERT INTO `data_dictionary_info_item` VALUES (29, 2, 'C', '公交客运', 0);
INSERT INTO `data_dictionary_info_item` VALUES (30, 2, 'D', '出租客运', 0);
INSERT INTO `data_dictionary_info_item` VALUES (31, 2, 'F', '货运', 0);
INSERT INTO `data_dictionary_info_item` VALUES (32, 2, 'G', '租赁', 0);
INSERT INTO `data_dictionary_info_item` VALUES (33, 2, 'H', '警用', 0);
INSERT INTO `data_dictionary_info_item` VALUES (34, 2, 'I', '消防', 0);
INSERT INTO `data_dictionary_info_item` VALUES (35, 2, 'J', '救护', 0);
INSERT INTO `data_dictionary_info_item` VALUES (36, 2, 'K', '工程抢险', 0);
INSERT INTO `data_dictionary_info_item` VALUES (37, 2, 'N', '教练', 0);
INSERT INTO `data_dictionary_info_item` VALUES (38, 2, 'O', '幼儿校车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (39, 2, 'P', '小学生校车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (40, 2, 'Q', '其他校车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (41, 2, 'R', '危化品运输', 0);
INSERT INTO `data_dictionary_info_item` VALUES (42, 2, 'Z', '其他', 0);
INSERT INTO `data_dictionary_info_item` VALUES (43, 3, 'K11', '大型普通客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (44, 3, 'K12', '大型双层客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (45, 3, 'K13', '大型卧铺客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (46, 3, 'K14', '大型铰接客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (47, 3, 'K15', '大型越野客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (48, 3, 'K16', '大型轿车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (49, 3, 'K17', '大型专用客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (50, 3, 'K18', '大型专用校车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (51, 3, 'K21', '中型普通客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (52, 3, 'K22', '中型双层客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (53, 3, 'K23', '中型卧铺客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (54, 3, 'K24', '中型铰接客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (55, 3, 'K25', '中型越野客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (56, 3, 'K26', '中型轿车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (57, 3, 'K27', '中型专用客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (58, 3, 'K28', '中型专用校车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (59, 3, 'K31', '小型普通客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (60, 3, 'K32', '小型越野客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (61, 3, 'K33', '小型轿车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (62, 3, 'K34', '小型专用客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (63, 3, 'K38', '小型专用校车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (64, 3, 'K39', '小型面包车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (65, 3, 'K41', '微型普通客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (66, 3, 'K42', '微型越野客车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (67, 3, 'K43', '微型轿车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (68, 3, 'K49', '微型面包车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (69, 3, 'Q11', '重型半挂牵引车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (70, 3, 'Q12', '重型全挂牵引车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (71, 3, 'Q21', '中型半挂牵引车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (72, 3, 'Q22', '中型全挂牵引车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (73, 3, 'Q31', '轻型半挂牵引车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (74, 3, 'Q32', '轻型全挂牵引车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (75, 3, 'Z11', '大型非载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (76, 3, 'Z12', '大型载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (77, 3, 'Z21', '中型非载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (78, 3, 'Z22', '中型载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (79, 3, 'Z31', '小型非载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (80, 3, 'Z32', '小型载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (81, 3, 'Z41', '微型非载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (82, 3, 'Z42', '微型载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (83, 3, 'Z51', '重型非载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (84, 3, 'Z52', '重型载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (85, 3, 'Z71', '轻型非载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (86, 3, 'Z72', '轻型载货专项作业车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (87, 3, 'M11', '普通正三轮摩托车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (88, 3, 'M12', '轻便正三轮摩托车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (89, 3, 'M13', '正三轮载客摩托车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (90, 3, 'M14', '正三轮载货摩托车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (91, 3, 'M15', '侧三轮摩托车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (92, 3, 'M21', '普通二轮摩托车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (93, 3, 'M22', '轻便二轮摩托车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (94, 3, 'D11', '无轨电车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (95, 3, 'D12', '有轨电车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (96, 3, 'N11', '三轮汽车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (97, 3, 'J11', '轮式装载机械', 0);
INSERT INTO `data_dictionary_info_item` VALUES (98, 3, 'J12', '轮式挖掘机械', 0);
INSERT INTO `data_dictionary_info_item` VALUES (99, 3, 'J13', '轮式平地机械', 0);
INSERT INTO `data_dictionary_info_item` VALUES (100, 3, 'H11', '重型普通货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (101, 3, 'H12', '重型厢式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (102, 3, 'H13', '重型封闭货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (103, 3, 'H14', '重型罐式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (104, 3, 'H15', '重型平板货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (105, 3, 'H16', '重型集装厢车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (106, 3, 'H17', '重型自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (107, 3, 'H18', '重型特殊结构货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (108, 3, 'H19', '重型仓栅式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (109, 3, 'H1A', '重型车辆运输车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (110, 3, 'H1B', '重型厢式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (111, 3, 'H1C', '重型罐式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (112, 3, 'H1D', '重型平板自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (113, 3, 'H1E', '重型集装厢自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (114, 3, 'H1F', '重型特殊结构自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (115, 3, 'H1G', '重型仓栅式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (116, 3, 'H21', '中型普通货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (117, 3, 'H22', '中型厢式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (118, 3, 'H23', '中型封闭货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (119, 3, 'H24', '中型罐式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (120, 3, 'H25', '中型平板货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (121, 3, 'H26', '中型集装厢车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (122, 3, 'H27', '中型自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (123, 3, 'H28', '中型特殊结构货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (124, 3, 'H29', '中型仓栅式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (125, 3, 'H2A', '中型车辆运输车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (126, 3, 'H2B', '中型厢式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (127, 3, 'H2C', '中型罐式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (128, 3, 'H2D', '中型平板自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (129, 3, 'H2E', '中型集装厢自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (130, 3, 'H2F', '中型特殊结构自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (131, 3, 'H2G', '中型仓栅式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (132, 3, 'H31', '轻型普通货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (133, 3, 'H32', '轻型厢式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (134, 3, 'H33', '轻型封闭货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (135, 3, 'H34', '轻型罐式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (136, 3, 'H35', '轻型平板货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (137, 3, 'H37', '轻型自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (138, 3, 'H38', '轻型特殊结构货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (139, 3, 'H39', '轻型仓栅式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (140, 3, 'H3A', '轻型车辆运输车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (141, 3, 'H3B', '轻型厢式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (142, 3, 'H3C', '轻型罐式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (143, 3, 'H3D', '轻型平板自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (144, 3, 'H3F', '轻型特殊结构自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (145, 3, 'H3G', '轻型仓栅式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (146, 3, 'H41', '微型普通货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (147, 3, 'H42', '微型厢式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (148, 3, 'H43', '微型封闭货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (149, 3, 'H44', '微型罐式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (150, 3, 'H45', '微型自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (151, 3, 'H46', '微型特殊结构货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (152, 3, 'H47', '微型仓栅式货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (153, 3, 'H4A', '微型车辆运输车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (154, 3, 'H4B', '微型厢式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (155, 3, 'H4C', '微型罐式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (156, 3, 'H4F', '微型特殊结构自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (157, 3, 'H4G', '微型仓栅式自卸货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (158, 3, 'H51', '普通低速货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (159, 3, 'H52', '厢式低速货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (160, 3, 'H53', '罐式低速货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (161, 3, 'H54', '自卸低速货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (162, 3, 'H55', '仓栅式低速货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (163, 3, 'H5B', '厢式自卸低速货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (164, 3, 'H5C', '罐式自卸低速货车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (165, 3, 'G11', '重型普通全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (166, 3, 'G12', '重型厢式全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (167, 3, 'G13', '重型罐式全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (168, 3, 'G14', '重型平板全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (169, 3, 'G15', '重型集装箱全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (170, 3, 'G16', '重型自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (171, 3, 'G17', '重型仓栅式全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (172, 3, 'G18', '重型旅居全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (173, 3, 'G19', '重型专项作业全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (174, 3, 'G1A', '重型厢式自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (175, 3, 'G1B', '重型罐式自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (176, 3, 'G1C', '重型平板自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (177, 3, 'G1D', '重型集装箱自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (178, 3, 'G1E', '重型仓栅式自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (179, 3, 'G1F', '重型专项作业自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (180, 3, 'G21', '中型普通全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (181, 3, 'G22', '中型厢式全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (182, 3, 'G23', '中型罐式全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (183, 3, 'G24', '中型平板全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (184, 3, 'G25', '中型集装箱全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (185, 3, 'G26', '中型自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (186, 3, 'G27', '中型仓栅式全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (187, 3, 'G28', '中型旅居全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (188, 3, 'G29', '中型专项作业全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (189, 3, 'G2A', '中型厢式自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (190, 3, 'G2B', '中型罐式自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (191, 3, 'G2C', '中型平板自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (192, 3, 'G2D', '中型集装箱自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (193, 3, 'G2E', '中型仓栅式自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (194, 3, 'G2F', '中型专项作业自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (195, 3, 'G31', '轻型普通全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (196, 3, 'G32', '轻型厢式全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (197, 3, 'G33', '轻型罐式全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (198, 3, 'G34', '轻型平板全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (199, 3, 'G35', '轻型自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (200, 3, 'G36', '轻型仓栅式全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (201, 3, 'G37', '轻型旅居全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (202, 3, 'G38', '轻型专项作业全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (203, 3, 'G3A', '轻型厢式自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (204, 3, 'G3B', '轻型罐式自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (205, 3, 'G3C', '轻型平板自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (206, 3, 'G3D', '轻型集装箱自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (207, 3, 'G3E', '轻型仓栅式自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (208, 3, 'G3F', '轻型专项作业自卸全挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (209, 3, 'B11', '重型普通半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (210, 3, 'B12', '重型厢式半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (211, 3, 'B13', '重型罐式半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (212, 3, 'B14', '重型平板半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (213, 3, 'B15', '重型集装箱半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (214, 3, 'B16', '重型自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (215, 3, 'B17', '重型特殊结构半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (216, 3, 'B18', '重型仓栅式半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (217, 3, 'B19', '重型旅居半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (218, 3, 'B1A', '重型专项作业半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (219, 3, 'B1B', '重型低平板半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (220, 3, 'B1C', '重型车辆运输半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (221, 3, 'B1D', '重型罐式自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (222, 3, 'B1E', '重型平板自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (223, 3, 'B1F', '重型集装箱自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (224, 3, 'B1G', '重型特殊结构自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (225, 3, 'B1H', '重型仓栅式自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (226, 3, 'B1J', '重型专项作业自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (227, 3, 'B1K', '重型低平板自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (228, 3, 'B1U', '重型中置轴旅居挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (229, 3, 'B1V', '重型中置轴车辆运输车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (230, 3, 'B1W', '重型中置轴普通挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (231, 3, 'B21', '中型普通半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (232, 3, 'B22', '中型厢式半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (233, 3, 'B23', '中型罐式半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (234, 3, 'B24', '中型平板半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (235, 3, 'B25', '中型集装箱半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (236, 3, 'B26', '中型自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (237, 3, 'B27', '中型特殊结构半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (238, 3, 'B28', '中型仓栅式半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (239, 3, 'B29', '中型旅居半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (240, 3, 'B2A', '中型专项作业半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (241, 3, 'B2B', '中型低平板半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (242, 3, 'B2C', '中型车辆运输半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (243, 3, 'B2D', '中型罐式自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (244, 3, 'B2E', '中型平板自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (245, 3, 'B2F', '中型集装箱自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (246, 3, 'B2G', '中型特殊结构自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (247, 3, 'B2H', '中型仓栅式自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (248, 3, 'B2J', '中型专项作业自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (249, 3, 'B2K', '中型低平板自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (250, 3, 'B2U', '中型中置轴旅居挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (251, 3, 'B2V', '中型中置轴车辆运输车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (252, 3, 'B2W', '中型中置轴普通挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (253, 3, 'B31', '轻型普通半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (254, 3, 'B32', '轻型厢式半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (255, 3, 'B33', '轻型罐式半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (256, 3, 'B34', '轻型平板半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (257, 3, 'B35', '轻型自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (258, 3, 'B36', '轻型仓栅式半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (259, 3, 'B37', '轻型旅居半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (260, 3, 'B38', '轻型专项作业半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (261, 3, 'B39', '轻型低平板半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (262, 3, 'B3C', '轻型车辆运输半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (263, 3, 'B3D', '轻型罐式自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (264, 3, 'B3E', '轻型平板自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (265, 3, 'B3F', '轻型集装箱自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (266, 3, 'B3G', '轻型特殊结构自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (267, 3, 'B3H', '轻型仓栅式自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (268, 3, 'B3J', '轻型专项作业自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (269, 3, 'B3K', '轻型低平板自卸半挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (270, 3, 'B3U', '轻型中置轴旅居挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (271, 3, 'B3V', '轻型中置轴车辆运输车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (272, 3, 'B3W', '轻型中置轴普通挂车', 0);
INSERT INTO `data_dictionary_info_item` VALUES (273, 3, 'X99', '其它', 0);
INSERT INTO `data_dictionary_info_item` VALUES (274, 4, 'A', '白', 0);
INSERT INTO `data_dictionary_info_item` VALUES (275, 4, 'B', '灰', 0);
INSERT INTO `data_dictionary_info_item` VALUES (276, 4, 'C', '黄', 0);
INSERT INTO `data_dictionary_info_item` VALUES (277, 4, 'D', '粉', 0);
INSERT INTO `data_dictionary_info_item` VALUES (278, 4, 'E', '红', 0);
INSERT INTO `data_dictionary_info_item` VALUES (279, 4, 'F', '紫', 0);
INSERT INTO `data_dictionary_info_item` VALUES (280, 4, 'G', '绿', 0);
INSERT INTO `data_dictionary_info_item` VALUES (281, 4, 'H', '蓝', 0);
INSERT INTO `data_dictionary_info_item` VALUES (282, 4, 'I', '棕', 0);
INSERT INTO `data_dictionary_info_item` VALUES (283, 4, 'J', '黑', 0);
INSERT INTO `data_dictionary_info_item` VALUES (284, 4, 'Z', '其他', 0);
INSERT INTO `data_dictionary_info_item` VALUES (285, 5, '0', '已发卡', 0);
INSERT INTO `data_dictionary_info_item` VALUES (286, 5, '1', '未发卡', 0);
INSERT INTO `data_dictionary_info_item` VALUES (287, 6, '0', '新增或导入', 0);
INSERT INTO `data_dictionary_info_item` VALUES (288, 6, '1', '自学习', 0);
INSERT INTO `data_dictionary_info_item` VALUES (289, 7, '0', '属于', 0);
INSERT INTO `data_dictionary_info_item` VALUES (290, 7, '1', '不属于', 0);

-- ----------------------------
-- Table structure for data_dictionary_info_type
-- ----------------------------
DROP TABLE IF EXISTS `data_dictionary_info_type`;
CREATE TABLE `data_dictionary_info_type`  (
  `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID是主键',
  `ZDLX_CODE` smallint(2) NOT NULL COMMENT '字典类型编码',
  `ZDLX_NAME` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '字典类型名称',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of data_dictionary_info_type
-- ----------------------------
INSERT INTO `data_dictionary_info_type` VALUES (1, 1, '号牌种类');
INSERT INTO `data_dictionary_info_type` VALUES (2, 2, '使用性质');
INSERT INTO `data_dictionary_info_type` VALUES (3, 3, '车辆类型');
INSERT INTO `data_dictionary_info_type` VALUES (4, 4, '车身颜色');
INSERT INTO `data_dictionary_info_type` VALUES (5, 5, '是否发卡');
INSERT INTO `data_dictionary_info_type` VALUES (6, 6, '数据来源');
INSERT INTO `data_dictionary_info_type` VALUES (7, 7, '是否属于应发卡车辆');

-- ----------------------------
-- Table structure for dbss_pass_record
-- ----------------------------
DROP TABLE IF EXISTS `dbss_pass_record`;
CREATE TABLE `dbss_pass_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `addTime` bigint(20) NOT NULL COMMENT '添加时间',
  `antennaId` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '天线ID',
  `cameraId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '摄像机ID',
  `cameraPlateLicense` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '抓拍识别号牌号码',
  `cameraPlateType` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '视频号牌种类',
  `crossingName` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '通过地点',
  `econeId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'EC01 ID',
  `examineExpireDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '年检有效期',
  `forceScrapDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '强制报废期',
  `illegalCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `illegalType` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '违规类型',
  `laneId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '射频车道id',
  `matchType` int(11) NOT NULL COMMENT '匹配类型',
  `picture2` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片2',
  `picture3` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片3',
  `plateImageFileName` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车牌抓拍图像路径',
  `readerId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '读写器ID',
  `redLightBeginTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '红灯开始时间(1970年至今毫秒数)',
  `redLightEndTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '红灯结束时间(1970年至今毫秒数)',
  `reportTime` bigint(20) NOT NULL COMMENT '匹配结果生成时间（1970年至今毫秒数）',
  `rfidLaneId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车道号',
  `rfidPlateLicense` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '汽车电子标识车牌解码结果',
  `rfidPlateType` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '号牌种类',
  `rfidReportTime` bigint(20) NULL DEFAULT NULL COMMENT 'RFID识别时间（UNIX时间，1970年至今毫秒数）',
  `sectionName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '断面名称',
  `shootTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '抓拍时间（UNIX时间，1970年至今毫秒数）',
  `speed` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '速度',
  `tid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'TID区',
  `trailImageFileName` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车尾图片',
  `vehicleImageFileName` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车辆抓拍图像路径',
  `vehicleUseType` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车辆使用性质',
  `vehicleVideoFileName` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '违法视频路径',
  `registNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extend1` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展1',
  `extend2` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for foothold
-- ----------------------------
DROP TABLE IF EXISTS `foothold`;
CREATE TABLE `foothold`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vehiclePlateNum` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '车牌号',
  `licenceType` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '号牌种类',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '常住地名称',
  `addressLocation` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '常住地经纬度',
  `addressPicture` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '常驻地图片',
  `arrivalCount` int(11) NULL DEFAULT NULL COMMENT '落脚次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foothold
-- ----------------------------
INSERT INTO `foothold` VALUES (1, '新AD687M', NULL, '白天 长春北路', '87.586343,43.909038', 'picture/foothold/1.png', 15);
INSERT INTO `foothold` VALUES (2, '新AD687M', NULL, '夜里 六道湾', '87.629872,43.828357', 'picture/foothold/2.png', 13);
INSERT INTO `foothold` VALUES (3, '新AD786M', NULL, '白天 长春北路', '87.586343,43.909038', 'picture/foothold/1.png', 15);
INSERT INTO `foothold` VALUES (4, '新AD786M', NULL, '夜里 六道湾', '87.629872,43.828357', 'picture/foothold/2.png', 13);
INSERT INTO `foothold` VALUES (5, '新AT5160', NULL, '09-17 长春北路', '87.586343,43.909038', 'picture/foothold/1.png', 15);
INSERT INTO `foothold` VALUES (6, '新AT5160', NULL, '17-09 六道湾', '87.629872,43.828357', 'picture/foothold/2.png', 13);
INSERT INTO `foothold` VALUES (7, '新A5788C', NULL, '09-17 恒昌花园', '87.551009,43.813388', 'picture/foothold/1.png', 30);
INSERT INTO `foothold` VALUES (8, '新A5788C', NULL, '17-09 新发大厦', '87.575156,43.862742', 'picture/foothold/2.png', 18);
INSERT INTO `foothold` VALUES (9, '新AL755P', NULL, '09-17 仓房沟', '87.570748,43.754501', 'picture/foothold/1.png', 20);
INSERT INTO `foothold` VALUES (10, '新AL755P', NULL, '17-09 西虹东路', '87.641621,43.831482', 'picture/foothold/2.png', 13);
INSERT INTO `foothold` VALUES (11, '新A76673', NULL, '09-17 金色嘉园', '87.599753,43.877885', 'picture/foothold/1.png', 9);
INSERT INTO `foothold` VALUES (12, '新A76673', NULL, '17-09 医科大北', '87.590234,43.860096', 'picture/foothold/2.png', 5);
INSERT INTO `foothold` VALUES (13, '新AT1470', NULL, '09-17 金色嘉园', '87.599753,43.877885', 'picture/foothold/1.png', 9);
INSERT INTO `foothold` VALUES (14, '新AT1470', NULL, '17-09 医科大北', '87.590234,43.860096', 'picture/foothold/2.png', 5);
INSERT INTO `foothold` VALUES (15, '新A32211', NULL, '白天 金色嘉园', '87.599753,43.877885', 'picture/foothold/1.png', 9);
INSERT INTO `foothold` VALUES (16, '新A32211', NULL, '夜里 医科大北', '87.590234,43.860096', 'picture/foothold/2.png', 5);
INSERT INTO `foothold` VALUES (17, '新AP6611', NULL, '白天 金色嘉园', '87.599753,43.877885', 'picture/foothold/1.png', 9);
INSERT INTO `foothold` VALUES (18, '新AP6611', NULL, '夜里 医科大北', '87.590234,43.860096', 'picture/foothold/2.png', 5);
INSERT INTO `foothold` VALUES (19, '新AQ6612', NULL, '09-17 金色嘉园', '87.599753,43.877885', 'picture/foothold/1.png', 9);
INSERT INTO `foothold` VALUES (20, '新AQ6612', NULL, '17-09 医科大北', '87.590234,43.860096', 'picture/foothold/2.png', 5);
INSERT INTO `foothold` VALUES (21, '新AR6613', NULL, '09-17 金色嘉园', '87.599753,43.877885', 'picture/foothold/1.png', 9);
INSERT INTO `foothold` VALUES (22, '新AR6613', NULL, '17-09 医科大北', '87.590234,43.860096', 'picture/foothold/2.png', 5);

-- ----------------------------
-- Table structure for key_area_info
-- ----------------------------
DROP TABLE IF EXISTS `key_area_info`;
CREATE TABLE `key_area_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `areaName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '重点区域名称',
  `areaBorder` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域边界',
  `sections` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '包含断面集合',
  `attribute` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '属性-场所标签',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of key_area_info
-- ----------------------------
INSERT INTO `key_area_info` VALUES (1, '会展中心黄色区域', '87.581111,43.906142;87.585997,43.893982;87.589303,43.882235;87.589591,43.882339;87.588872,43.867679;87.604826,43.865183;\n87.629691,43.863623;87.638171,43.869862;87.645645,43.872462;87.652831,43.872254;87.649813,43.884834;87.651825,43.904998;87.657143,43.920585;\n87.645932,43.920792;87.635296,43.917572;87.629691,43.917572;87.58997,43.916317;87.577322,43.914239', '/', '日常防范场所');
INSERT INTO `key_area_info` VALUES (2, '会展中心橙色区域', '87.613541,43.881707;87.623171,43.88129;87.628992,43.881447;\n87.633592,43.882591;87.63352,43.887945;87.633735,43.89943;87.635891,43.905718;\n87.631148,43.905302;87.623818,43.907588;87.618716,43.908887;87.616057,43.90603;\n87.612032,43.901769;87.609301,43.897559;87.609301,43.892207;87.611098,43.88992', '/', '一般防范场所');
INSERT INTO `key_area_info` VALUES (3, '会展中心红色区域', '87.62547,43.881481;87.628919,43.881507;87.631003,43.881975;87.633519,43.88291;87.633483,43.885951;87.633519,43.88803;\n87.633483,43.887978;87.63086,43.887614;87.626799,43.887796;87.624176,43.887328;87.623242,43.884002;87.623134,43.881507', '/', '重点管控场所');
INSERT INTO `key_area_info` VALUES (4, '大巴扎黄色区域', '87.620616,43.761108;87.658417,43.778503;87.654392,43.794539;87.624605,43.808983;87.591583,43.8037;87.591152,43.780169', '/', '日常防范场所');
INSERT INTO `key_area_info` VALUES (5, '大巴扎橙色区域', '87.602237,43.8002;87.598787,43.788955;87.5985,43.788851;\n87.605111,43.788018;87.61316,43.786144;87.610717,43.776667;\n87.610142,43.768855;87.61546,43.769689;87.61776,43.768543;\n87.623509,43.764793;87.636157,43.764168;87.642768,43.770105;\n87.651967,43.780729;87.648374,43.786456;\n87.627389,43.808527', '/', '一般防范场所');
INSERT INTO `key_area_info` VALUES (6, '大巴扎红色区域', '87.617987,43.78547;87.617771,43.785313;87.624163,43.785492;87.629054,43.786407;87.630779,43.7875;87.634156,43.791145;87.631713,43.791925;87.628766,43.792082;87.623017,43.791249;87.61849,43.792134;\n87.615328,43.792082;87.614825,43.789791;87.617987,43.78547', '/', '重点管控场所');

-- ----------------------------
-- Table structure for label_config_info
-- ----------------------------
DROP TABLE IF EXISTS `label_config_info`;
CREATE TABLE `label_config_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `labelType` int(11) NOT NULL COMMENT '标签类别',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '标签名称',
  `score` decimal(10, 1) NOT NULL COMMENT '基础分值',
  `weightStart` decimal(10, 1) NOT NULL COMMENT '权重范围开始',
  `weightEnd` decimal(10, 1) NULL DEFAULT NULL COMMENT '权重范围结束',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of label_config_info
-- ----------------------------
INSERT INTO `label_config_info` VALUES (1, 1, 'A1', 5.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (2, 1, 'A2', 4.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (3, 1, 'A3', 3.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (4, 1, 'B1', 2.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (5, 1, 'B2', 2.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (6, 1, 'C1', 1.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (7, 1, 'C2', 1.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (8, 1, 'C3', 2.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (9, 1, 'C4', 2.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (10, 1, 'D', 1.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (11, 1, 'E', 1.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (12, 1, 'F', 1.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (13, 1, 'M', 1.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (14, 1, 'N', 1.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (15, 1, 'P', 1.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (16, 1, '客运营运人员', 5.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (17, 1, '货运营运人员', 6.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (18, 1, '特种设备操作人员', 10.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (19, 1, '器质性心脏病', 3.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (20, 1, '癫痫病', 3.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (21, 1, '美尼尔氏症', 3.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (22, 1, '眩晕症', 3.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (23, 1, '癔病', 3.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (24, 1, '震颤麻痹', 3.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (25, 1, '精神病', 3.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (26, 1, '家庭矛盾', 5.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (27, 1, '邻里纠纷', 5.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (28, 1, '安全隐患', 5.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (29, 1, '三次以上故意伤害人员', 20.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (30, 1, '二次以上故意伤害人员', 15.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (31, 1, '一次以上故意伤害人员', 10.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (32, 1, '三次以上殴打他人人员（治安类）', 20.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (33, 1, '二次以上殴打他人人员（治安类）', 15.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (34, 1, '一次以上殴打他人人员（治安类）', 10.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (35, 1, '以危险方法危害公共案例', 10.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (36, 1, '以其他方法危害公共安全被处罚人员', 10.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (37, 1, '两次以上危险驾驶前科人员（毒驾、酒驾）', 20.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (38, 1, '危险驾驶前科人员（毒驾、酒驾）', 15.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (39, 1, '失信被执行人员', 20.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (40, 1, '涉军团体重点人员', 20.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (41, 1, '上访人员', 20.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (42, 1, '长期缠访人员', 20.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (43, 1, '普通精神病人', 20.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (44, 1, '肇事肇祸精神病人', 20.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (45, 1, '吸毒人员', 20.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (46, 1, '结业人员', 20.0, 0.5, 1.5);
INSERT INTO `label_config_info` VALUES (47, 2, '公交车', 12.0, 0.8, 1.2);
INSERT INTO `label_config_info` VALUES (48, 2, '公路客运', 10.0, 0.8, 1.2);
INSERT INTO `label_config_info` VALUES (49, 2, '旅游客运', 10.0, 0.8, 1.2);
INSERT INTO `label_config_info` VALUES (50, 2, '重型货车', 15.0, 0.8, 1.2);
INSERT INTO `label_config_info` VALUES (51, 2, '校车', 20.0, 0.8, 1.2);
INSERT INTO `label_config_info` VALUES (52, 2, '大型工程车辆', 15.0, 0.8, 1.2);
INSERT INTO `label_config_info` VALUES (53, 2, '农机车辆', 15.0, 0.8, 1.2);
INSERT INTO `label_config_info` VALUES (54, 2, '出租车', 3.0, 0.8, 1.2);
INSERT INTO `label_config_info` VALUES (55, 2, '厢式货车', 10.0, 0.8, 1.2);
INSERT INTO `label_config_info` VALUES (56, 2, '危化品车', 30.0, 0.8, 1.2);
INSERT INTO `label_config_info` VALUES (57, 2, '小型车辆', 1.0, 0.8, 1.2);
INSERT INTO `label_config_info` VALUES (58, 3, '重点管控场所', 30.0, 1.0, 1.0);
INSERT INTO `label_config_info` VALUES (59, 3, '一般防范场所', 20.0, 1.0, 1.0);
INSERT INTO `label_config_info` VALUES (60, 3, '日常防范场所', 10.0, 1.0, 1.0);
INSERT INTO `label_config_info` VALUES (61, 4, '报废车辆', 15.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (62, 4, '未年检车辆', 10.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (63, 4, '假套牌车辆', 10.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (64, 4, '区域徘徊', 15.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (65, 4, '昼伏夜出', 10.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (66, 4, '生活圈异常', 15.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (67, 4, '工作圈异常', 15.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (68, 4, '活动圈异常', 15.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (69, 4, '车辆伴随', 10.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (70, 4, '人车不符', 10.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (71, 4, '车油不符', 10.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (72, 4, '车罐不符', 15.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (73, 4, '异常停放', 10.0, 1.0, 2.0);
INSERT INTO `label_config_info` VALUES (74, 4, '电子标识卡损害', 20.0, 0.8, 2.0);
INSERT INTO `label_config_info` VALUES (75, 4, '目的地趋同', 20.0, 0.8, 2.0);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `logId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志',
  `userName` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作人',
  `createTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '时间',
  `content` text CHARACTER SET utf8 COLLATE utf8_bin NULL COMMENT '详细',
  `operation` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作类型（增删改）',
  `ip` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'IP地址',
  `module` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '所属模块',
  PRIMARY KEY (`logId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `menuId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menuName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '名称',
  `menuUrl` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '方法(菜单地址)',
  `parentId` bigint(20) NULL DEFAULT NULL COMMENT '父ID',
  `menuDescription` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单状态/OPEN/CLOSED',
  `iconCls` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单图标',
  `seq` bigint(20) NULL DEFAULT NULL COMMENT '顺序排序',
  PRIMARY KEY (`menuId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '机动车智能服务平台', '', -1, '主菜单', 'opend', 'icon-home', 1);
INSERT INTO `menu` VALUES (2, '系统管理', '', 1, '系统管理', 'closed', 'safe_manage.png', 1);
INSERT INTO `menu` VALUES (27, '用户管理', 'cacUser/cacUserIndex', 2, '', 'open', 'icon-192', 2);
INSERT INTO `menu` VALUES (32, '角色管理', 'cacRole/cacRoleIndex', 2, '', 'open', 'icon-196', 3);
INSERT INTO `menu` VALUES (33, '菜单管理', 'cacMenu/cacMenuIndex', 2, '', 'open', 'icon-199', 4);
INSERT INTO `menu` VALUES (51, '修改密码', 'cacInto/intoUpdatePassword', 2, '修改密码（layui）', 'open', '', 6);

-- ----------------------------
-- Table structure for operation
-- ----------------------------
DROP TABLE IF EXISTS `operation`;
CREATE TABLE `operation`  (
  `operationId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '具体的方法',
  `operationName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '方法名',
  `menuId` bigint(20) NULL DEFAULT NULL COMMENT '所属菜单',
  `menuName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`operationId`) USING BTREE,
  INDEX `menuId`(`menuId`) USING BTREE,
  CONSTRAINT `operation_ibfk_1` FOREIGN KEY (`menuId`) REFERENCES `menu` (`menuId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10033 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '具体的页面按钮上的方法\r\n（此自增ID至少从10000开始）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation
-- ----------------------------
INSERT INTO `operation` VALUES (10019, '新增', 27, '用户');
INSERT INTO `operation` VALUES (10020, '修改', 27, '用户');
INSERT INTO `operation` VALUES (10021, '删除', 27, '用户');
INSERT INTO `operation` VALUES (10022, '新增', 32, '角色管理');
INSERT INTO `operation` VALUES (10024, '修改', 32, '角色管理');
INSERT INTO `operation` VALUES (10025, '删除', 32, '角色管理');
INSERT INTO `operation` VALUES (10027, '授权', 32, '角色管理');
INSERT INTO `operation` VALUES (10028, '新增', 33, '菜单管理');
INSERT INTO `operation` VALUES (10029, '修改', 33, '菜单管理');
INSERT INTO `operation` VALUES (10030, '删除', 33, '菜单管理');
INSERT INTO `operation` VALUES (10031, '按钮管理', 33, '菜单管理');
INSERT INTO `operation` VALUES (10032, '新增', 1, '某系统');

-- ----------------------------
-- Table structure for path_forecasting
-- ----------------------------
DROP TABLE IF EXISTS `path_forecasting`;
CREATE TABLE `path_forecasting`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `vehiclePlateNum` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '车牌号',
  `licenceType` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '号牌种类',
  `sectionName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '断面名称',
  `percent` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '出现概率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of path_forecasting
-- ----------------------------
INSERT INTO `path_forecasting` VALUES (1, '新AD687M', NULL, '长春北路', '52%');
INSERT INTO `path_forecasting` VALUES (2, '新AD687M', NULL, '六道湾', '48%');
INSERT INTO `path_forecasting` VALUES (3, '新AD786M', NULL, '长春北路', '52%');
INSERT INTO `path_forecasting` VALUES (4, '新AD786M', NULL, '六道湾', '48%');
INSERT INTO `path_forecasting` VALUES (5, '新AT5160', NULL, '长春北路', '52%');
INSERT INTO `path_forecasting` VALUES (6, '新AT5160', NULL, '六道湾', '48%');
INSERT INTO `path_forecasting` VALUES (7, '新A5788C', NULL, '恒昌花园', '60%');
INSERT INTO `path_forecasting` VALUES (8, '新A5788C', NULL, '新发大厦', '40%');
INSERT INTO `path_forecasting` VALUES (9, '新AL755P', NULL, '仓房沟', '29%');
INSERT INTO `path_forecasting` VALUES (10, '新AL755P', NULL, '西虹东路', '71%');
INSERT INTO `path_forecasting` VALUES (11, '新A76673', NULL, '金色嘉园小区', '67%');
INSERT INTO `path_forecasting` VALUES (12, '新A76673', NULL, '新疆医科大北校区', '33%');
INSERT INTO `path_forecasting` VALUES (13, '新AT1470', NULL, '金色嘉园小区', '67%');
INSERT INTO `path_forecasting` VALUES (14, '新AT1470', NULL, '新疆医科大北校区', '33%');
INSERT INTO `path_forecasting` VALUES (15, '新A32211', NULL, '九道弯与振安街东向西卡口', '80%');
INSERT INTO `path_forecasting` VALUES (16, '新A32211', NULL, '外环路与昆仑路路口北向南', '80%');
INSERT INTO `path_forecasting` VALUES (17, '新A32211', NULL, '七道湾路沿河路交叉口南向北', '80%');
INSERT INTO `path_forecasting` VALUES (18, '新A32211', NULL, '七道湾与红光山路交叉口北向南', '80%');
INSERT INTO `path_forecasting` VALUES (19, '新AP6611', NULL, '九道弯与振安街东向西卡口', '60%');
INSERT INTO `path_forecasting` VALUES (20, '新AP6611', NULL, '七道湾路沿河路交叉口南向北', '65%');
INSERT INTO `path_forecasting` VALUES (21, '新AP6611', NULL, '七道湾与红光山路交叉口北向南', '50%');
INSERT INTO `path_forecasting` VALUES (22, '新AQ6612', NULL, '金色嘉园小区', '67%');
INSERT INTO `path_forecasting` VALUES (23, '新AQ6612', NULL, '新疆医科大北校区', '33%');
INSERT INTO `path_forecasting` VALUES (24, '新AR6613', NULL, '金色嘉园小区', '67%');
INSERT INTO `path_forecasting` VALUES (25, '新AR6613', NULL, '新疆医科大北校区', '33%');

-- ----------------------------
-- Table structure for province_city_district
-- ----------------------------
DROP TABLE IF EXISTS `province_city_district`;
CREATE TABLE `province_city_district`  (
  `pcdId` int(11) NOT NULL COMMENT '断面id',
  `provinceName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '省名称',
  `cityName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `districtName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '区名称',
  `updateTime` bigint(20) NOT NULL COMMENT '更新时间',
  `deleteFlag` int(11) NOT NULL COMMENT '删除标记',
  PRIMARY KEY (`pcdId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rfid_pass_record
-- ----------------------------
DROP TABLE IF EXISTS `rfid_pass_record`;
CREATE TABLE `rfid_pass_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '本记录id',
  `archiveId` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '档案号',
  `attachment` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '附件字段',
  `collectTime` bigint(20) NOT NULL COMMENT '数据采集时间',
  `firstDiscoverTime` bigint(20) NULL DEFAULT NULL COMMENT '数据首次发现时间',
  `lastDiscoverTime` bigint(20) NULL DEFAULT NULL COMMENT '数据末次发现时间',
  `deivceDescription` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '设备描述',
  `deviceID` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '设备ID',
  `deviceType` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '设备类型',
  `laneNumber` int(11) NULL DEFAULT NULL COMMENT '车道号',
  `location` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '位置信息',
  `receivedTime` bigint(20) NOT NULL COMMENT '数据接收时间',
  `sectionName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '断面名称',
  `direction` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '断面方向',
  `source` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '数据源',
  `vehiclePlateNum` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '号牌牌号',
  `vehicleType` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车型',
  `vehicleUserType` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车辆使用类型',
  `licenceType` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '号牌种类',
  `confidence` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '可信度',
  `eid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电子证号',
  `cardId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '卡号',
  `carryCapacity` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '核定载客/总质量',
  `displacement` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '排量',
  `examineExpireDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '检验有效期',
  `factoryDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '出厂日期',
  `forceScrapDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '强制报废期',
  `powerRating` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '功率',
  `vehicleColor` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车身颜色',
  `tid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标签id',
  `protocol` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '协议',
  `registNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备案编号',
  `extend1` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展1',
  `extend2` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '扩展2',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `roleId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `roleName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '角色名称',
  `menuIds` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '菜单IDs',
  `operationIds` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '按钮IDS',
  `roleDescription` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`roleId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '超级管理员', '33,-1,27,1,2,51,32', '10020,10031,10030,10019,10029,10022,10021,10024,10025,10028,10027', '拥有全部权限的超级管理员');
INSERT INTO `role` VALUES (4, '普通管理员', '33,-1,27,1,2,51,32', '10020,10031,10030,10019,10029,10022,10021,10024,10025,10028,10027', '使用方中拥有最高权限的角色');

-- ----------------------------
-- Table structure for scene_info
-- ----------------------------
DROP TABLE IF EXISTS `scene_info`;
CREATE TABLE `scene_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '场景名称',
  `placeLabel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '场景标签名称',
  `placeScore` decimal(10, 1) NOT NULL COMMENT '场景标签基础分值',
  `dynamicLabel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '动态标签名称',
  `dynamicScore` decimal(10, 1) NOT NULL COMMENT '动态标签基础分值',
  `personLabel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '人员标签名称',
  `personScore` decimal(10, 1) NOT NULL COMMENT '人员标签基础分值',
  `personWeight` decimal(10, 1) NOT NULL COMMENT '人员标签权重',
  `vehicleLabel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '车辆标签名称',
  `vehicleScore` decimal(10, 1) NOT NULL COMMENT '车辆标签基础分值',
  `vehicleWeight` decimal(10, 1) NOT NULL COMMENT '车辆标签权重',
  `total` decimal(10, 1) NOT NULL COMMENT '总分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scene_info
-- ----------------------------
INSERT INTO `scene_info` VALUES (1, '货车闯电子围栏', '重点区域', 10.0, '脱离轨迹行驶;闯人员密集区域', 30.0, '邻里纠纷', 10.0, 1.0, '货车', 20.0, 1.0, 70.0);
INSERT INTO `scene_info` VALUES (2, '电子标识损坏', '/', 0.0, '卡损坏', 30.0, '结业人员', 20.0, 1.5, '社会车辆', 1.0, 1.0, 61.0);
INSERT INTO `scene_info` VALUES (3, '目的地趋同', '日常防范场所', 10.0, '共同伴随', 30.0, '结业人员', 20.0, 1.5, '社会车辆', 1.0, 1.0, 71.0);
INSERT INTO `scene_info` VALUES (4, '重点区域徘徊', '亚博会场馆', 30.0, '区域徘徊五次', 30.0, '重点人员', 1.0, 1.0, '社会车辆', 3.0, 1.0, 64.0);
INSERT INTO `scene_info` VALUES (5, '重点区域徘徊', '亚博会场馆', 30.0, '区域徘徊三次', 15.0, '重点人员', 1.0, 1.0, '社会车辆', 3.0, 1.0, 49.0);
INSERT INTO `scene_info` VALUES (6, '重点区域徘徊', '亚博会场馆', 30.0, '区域徘徊三次', 5.0, '重点人员', 1.0, 1.0, '社会车辆', 5.0, 1.0, 41.0);
INSERT INTO `scene_info` VALUES (7, '危化品车路线时间异常', '管控区域', 1.1, '未按规定路线时间行驶', 30.0, '危化品驾驶人员', 1.0, 1.0, '危化品车', 20.0, 2.0, 70.0);
INSERT INTO `scene_info` VALUES (8, '缠访人员聚集', '重点区域-市政府', 30.0, '闯电子围栏', 15.0, '缠访人员', 15.0, 1.0, '社会车辆', 1.0, 1.0, 55.0);
INSERT INTO `scene_info` VALUES (9, '校车伴随', '一般防范场所', 20.0, '车辆伴随', 10.0, '重点人员', 10.0, 1.5, '社会车辆', 1.0, 1.0, 50.0);
INSERT INTO `scene_info` VALUES (10, '一般场所人车不符', '一般防范场所', 20.0, '人车不符', 33.0, '社会人员', 10.0, 1.5, '社会车辆', 1.0, 1.2, 53.0);
INSERT INTO `scene_info` VALUES (11, '一般场所车油不符', '一般防范场所', 20.0, '车油不符', 28.0, '/', 0.0, 0.0, '/', 0.0, 0.0, 48.0);
INSERT INTO `scene_info` VALUES (12, '医院报废车', '一般防范场所', 20.0, '报废车', 35.0, '/', 0.0, 0.0, '/', 0.0, 0.0, 55.0);
INSERT INTO `scene_info` VALUES (13, '疑似假套牌', '日常防范场所', 10.0, '疑似假套牌', 25.0, '/', 0.0, 0.0, '/', 0.0, 0.0, 35.0);
INSERT INTO `scene_info` VALUES (14, '商场车罐不符', '日常防范场所', 18.0, '车罐不符', 15.0, '/', 0.0, 0.0, '/', 0.0, 0.0, 33.0);
INSERT INTO `scene_info` VALUES (15, '停车场异常停放', '日常防范场所', 16.0, '/', 0.0, '三类人员', 15.0, 1.0, '/', 0.0, 0.0, 31.0);
INSERT INTO `scene_info` VALUES (16, '小区生活圈异常', '/', 0.0, '生活圈异常', 15.0, '三类人员', 16.0, 1.0, '/', 0.0, 0.0, 31.0);
INSERT INTO `scene_info` VALUES (17, '未年检车辆', '/', 0.0, '未年检车辆', 20.0, '/', 0.0, 0.0, '/', 0.0, 0.0, 20.0);
INSERT INTO `scene_info` VALUES (18, '车罐不符', '/', 0.0, '车罐不符', 15.0, '/', 0.0, 0.0, '/', 0.0, 0.0, 15.0);
INSERT INTO `scene_info` VALUES (19, '生活圈异常', '/', 0.0, '生活圈异常', 25.0, '/', 0.0, 0.0, '/', 0.0, 0.0, 25.0);
INSERT INTO `scene_info` VALUES (20, '报废车辆', '/', 0.0, '报废车辆', 15.0, '/', 0.0, 0.0, '/', 0.0, 0.0, 15.0);
INSERT INTO `scene_info` VALUES (21, '昼伏夜出', '/', 0.0, '昼伏夜出', 10.0, '/', 0.0, 0.0, '/', 0.0, 0.0, 10.0);
INSERT INTO `scene_info` VALUES (22, '工作圈异常', '/', 0.0, '工作圈异常', 15.0, '/', 0.0, 0.0, '/', 0.0, 0.0, 15.0);

-- ----------------------------
-- Table structure for score_history_warn
-- ----------------------------
DROP TABLE IF EXISTS `score_history_warn`;
CREATE TABLE `score_history_warn`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vehiclePlateNum` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `licenceType` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '号牌种类',
  `alertName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '预警',
  `scoreDeduct` int(11) NULL DEFAULT NULL COMMENT '本次扣分',
  `createTime` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `scoreCurrent` int(11) NULL DEFAULT NULL COMMENT '当前积分',
  `alertState` int(11) NULL DEFAULT NULL COMMENT '告警状态',
  `alertStateName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '告警状态名称',
  `relationRecords` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '关联记录（轨迹）',
  `keyArea` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '重点区域',
  `cameraPlateLicense` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物理车牌',
  `forceScrapDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '强制报废期',
  `fillingStation` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '加油站记录',
  `manyPetrol` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '多次加油记录',
  `manyPetrolCount` int(11) NULL DEFAULT NULL COMMENT '加油总量（单位：L）',
  `mileage` int(11) NULL DEFAULT NULL COMMENT '里程数（单位：KM）',
  `processState` int(11) NULL DEFAULT NULL COMMENT '处理状态',
  `processStateName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '处理状态名称',
  `personLabel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '人员标签',
  `personScore` decimal(10, 1) NULL DEFAULT NULL COMMENT '人员标签基础分值',
  `personWeight` decimal(10, 1) NULL DEFAULT NULL COMMENT '人员标签权重',
  `vehicleLabel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车辆标签',
  `vehicleScore` decimal(10, 1) NULL DEFAULT NULL COMMENT '车辆标签基础分值',
  `vehicleWeight` decimal(10, 1) NULL DEFAULT NULL COMMENT '车辆标签权重',
  `placeLabel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '场所标签',
  `placeScore` decimal(10, 1) NULL DEFAULT NULL COMMENT '场所标签基础分值',
  `sectionName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '预警地点',
  `processResult` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '处理结果',
  `sceneName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '场景名称',
  `dynamicLabel` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '动态标签名称',
  `dynamicScore` decimal(10, 1) NULL DEFAULT NULL COMMENT '动态标签基础分值',
  `total` decimal(10, 1) NULL DEFAULT NULL COMMENT '总分',
  `areaName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域名称',
  `areaBorder` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '区域边界',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score_history_warn
-- ----------------------------
INSERT INTO `score_history_warn` VALUES (1, '新AL755P', NULL, NULL, 70, '2019-07-18 16:05:30', 70, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '邻里纠纷', 10.0, 1.0, '货车', 20.0, 1.0, '重点区域', 10.0, '二道桥人员密集区', '已核实', '货车闯电子围栏', '脱离轨迹行驶;闯人员密集区域', 30.0, 70.0, '大巴扎', '87.624066,43.777878;87.634845,43.781731;87.634127,43.789749;87.624353,43.795371;87.612999,43.792144;87.612424,43.782876;87.624066,43.777878');
INSERT INTO `score_history_warn` VALUES (2, '新AL755P', NULL, NULL, -70, '2019-05-18 22:14:12', 0, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '/', '已核实', '手动修改', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (3, '新AL755P', NULL, NULL, 70, '2019-05-18 07:30:50', 70, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '二道桥人员密集区', '已处理', '货车闯电子围栏', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (4, '新A32211', NULL, NULL, 61, '2019-07-18 16:05:30', 61, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '结业人员', 20.0, 1.5, '社会车辆', 1.0, 1.0, '/', 0.0, '电子标识损坏', '已核实', '电子标识损坏', '卡损坏', 30.0, 61.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (5, '新A32211', NULL, NULL, -51, '2019-05-18 22:14:12', 10, 2, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '/', '已核实', '外出办事', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (6, '新A32211', NULL, NULL, 61, '2019-05-18 07:30:50', 61, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '二道桥人员密集区', '已处理', '校车伴随', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (7, '新AP6611', NULL, NULL, 71, '2019-07-18 16:03:30', 71, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '结业人员', 20.0, 1.5, '社会车辆', 1.0, 1.0, '日常防范场所', 10.0, '金色嘉园小区', '已核实', '目的地趋同', '目的地趋同', 30.0, 71.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (8, '新AP6611', NULL, NULL, -41, '2019-05-18 22:14:12', 0, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '/', '已核实', '工作调动', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (9, '新AP6611', NULL, NULL, 41, '2019-05-18 07:30:50', 41, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '金色嘉园小区', '已处理', '工作圈异常', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (10, '新AQ6612', NULL, NULL, 71, '2019-07-18 16:03:30', 71, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '结业人员', 20.0, 1.5, '社会车辆', 1.0, 1.0, '日常防范场所', 10.0, '金色嘉园小区', '已核实', '目的地趋同', '车辆聚集', 30.0, 71.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (11, '新AQ6612', NULL, NULL, -71, '2019-05-18 22:14:12', 0, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '/', '已核实', '手动修改', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (12, '新AQ6612', NULL, NULL, 71, '2019-05-18 07:30:50', 71, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '金色嘉园小区', '已处理', '目的地趋同', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (13, '新AR6613', NULL, NULL, 71, '2019-07-18 16:03:30', 71, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '结业人员', 20.0, 1.5, '社会车辆', 1.0, 1.0, '日常防范场所', 10.0, '金色嘉园小区', '已核实', '目的地趋同', '目的地趋同', 30.0, 71.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (14, '新AR6613', NULL, NULL, -71, '2019-05-18 22:14:12', 0, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '/', '已核实', '手动修改', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (15, '新AR6613', NULL, NULL, 71, '2019-05-18 07:30:50', 71, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '金色嘉园小区', '已处理', '目的地趋同', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (16, '新AD687M', NULL, NULL, 64, '2019-07-18 16:01:30', 64, 1, NULL, NULL, NULL, '新AD687M', NULL, NULL, NULL, NULL, NULL, 1, NULL, '重点人员', 1.0, 1.0, '社会车辆', 3.0, 1.0, '亚博会场馆', 30.0, '亚博会场馆周边', '已核实', '重点区域徘徊', '区域徘徊五次', 30.0, 64.0, '徘徊路径', '87.62547,43.881481;87.628919,43.881507;87.631003,43.881975;87.633519,43.88291;87.633483,43.885951;87.633519,43.88803;\n87.633483,43.887978;87.63086,43.887614;87.626799,43.887796;87.624176,43.887328;87.623242,43.884002;87.623134,43.881507;87.62547,43.881481');
INSERT INTO `score_history_warn` VALUES (17, '新AD687M', NULL, NULL, -64, '2019-05-29 07:30:50', 0, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '/', '已核实', '手动修改', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (18, '新AD687M', NULL, NULL, 64, '2019-05-25 22:14:12', 64, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '亚博会场馆周边', '已处理', '重点区域徘徊', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (19, '新AD786M', NULL, NULL, 49, '2019-07-18 16:04:30', 49, 2, NULL, NULL, NULL, '新AD786M', NULL, NULL, NULL, NULL, NULL, 1, NULL, '重点人员', 1.0, 1.0, '社会车辆', 3.0, 1.0, '亚博会场馆', 30.0, '亚博会场馆周边', '已核实', '重点区域徘徊', '区域徘徊三次', 15.0, 49.0, '徘徊路径', '87.62547,43.881481;87.628919,43.881507;87.631003,43.881975;87.633519,43.88291;87.633483,43.885951;87.633519,43.88803;\n87.633483,43.887978;87.63086,43.887614;87.626799,43.887796;87.624176,43.887328;87.623242,43.884002;87.623134,43.881507;87.62547,43.881481');
INSERT INTO `score_history_warn` VALUES (20, '新AD786M', NULL, NULL, -49, '2019-05-29 07:30:50', 0, 2, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '/', '已核实', '手动修改', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (21, '新AD786M', NULL, NULL, 49, '2019-05-25 22:14:12', 49, 2, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '亚博会场馆周边', '已处理', '重点区域徘徊', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (22, '新AT5160', NULL, NULL, 41, '2019-07-18 16:05:30', 41, 3, NULL, NULL, NULL, '新AT5160', NULL, NULL, NULL, NULL, NULL, 1, NULL, '重点人员', 1.0, 1.0, '社会车辆', 5.0, 1.0, '亚博会场馆', 30.0, '亚博会场馆周边', '已核实', '重点区域徘徊', '区域徘徊三次', 5.0, 41.0, '徘徊路径', '87.62547,43.881481;87.628919,43.881507;87.631003,43.881975;87.633519,43.88291;87.633483,43.885951;87.633519,43.88803;\n87.633483,43.887978;87.63086,43.887614;87.626799,43.887796;87.624176,43.887328;87.623242,43.884002;87.623134,43.881507;87.62547,43.881481');
INSERT INTO `score_history_warn` VALUES (23, '新AT5160', NULL, NULL, -41, '2019-05-29 07:30:50', 0, 3, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '/', '已核实', '手动修改', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (24, '新AT5160', NULL, NULL, 41, '2019-05-25 22:14:12', 41, 3, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '亚博会场馆周边', '已处理', '重点区域徘徊', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (25, '新A5788C', NULL, NULL, 70, '2019-07-18 15:53:30', 70, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '危化品车', 20.0, 2.0, '/', 0.0, '南湖家乐福十字路口', '已核实', '危化品车路线时间异常', '未按规定路线时间行驶', 30.0, 70.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (26, '新A5788C', NULL, NULL, -70, '2019-05-18 22:14:12', 0, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '/', '已核实', '手动修改', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (27, '新A5788C', NULL, NULL, 70, '2019-05-18 07:30:50', 70, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '南湖家乐福十字路口', '已处理', '危化品车路线时间异常', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (28, '新A76673', NULL, NULL, 55, '2019-07-18 16:03:30', 55, 2, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '缠访人员', 15.0, 1.0, '/', 0.0, 0.0, '重点区域-市政府', 30.0, '乌鲁木齐市政府周边', '已核实', '缠访人员聚集', '闯电子围栏', 15.0, 55.0, '乌鲁木齐市人民政府', '87.619711,43.832421;87.620071,43.828883;87.620071,43.825241;87.620286,43.825813;87.620358,43.822483;87.625532,43.824253;87.631138,43.825449;87.632647,43.827999;\n87.633797,43.82956;87.63509,43.830496;87.634084,43.832837;87.633653,43.834346;87.628623,43.833826;87.623377,43.832993;87.619711,43.832421');
INSERT INTO `score_history_warn` VALUES (29, '新A76673', NULL, NULL, -55, '2019-05-18 22:14:12', 0, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '/', '已核实', '手动修改', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (30, '新A76673', NULL, NULL, 55, '2019-05-18 07:30:50', 55, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '乌鲁木齐市政府', '未发现异常', '缠访人员聚集', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (31, '新A56617', NULL, NULL, 50, '2019-07-18 15:56:30', 50, 2, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '一般防范场所', 20.0, '明华东一巷口', '已核实', '校车伴随', '/', 0.0, 50.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (32, '新A52218', NULL, NULL, 53, '2019-07-18 15:33:30', 53, 2, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '一般防范场所', 20.0, '大湾北路金坤B区对面卡口2', '已核实', '一般场所人车不符', '人车不符', 33.0, 53.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (33, '新A61889', NULL, NULL, 48, '2019-07-18 15:11:30', 48, 2, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '一般防范场所', 20.0, '胜利路八路军办事处卡口1', '已核实', '一般场所车油不符', '车油不符', 28.0, 48.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (34, '新A01822', NULL, NULL, 55, '2019-07-18 15:03:30', 55, 2, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '一般防范场所', 20.0, '五星路军运宾馆卡口2', '已核实', '医院报废车', '报废车', 35.0, 55.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (35, '新AT1470', NULL, NULL, 35, '2019-07-18 14:43:30', 35, 3, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '日常防范场所', 10.0, '新泉街德邻苑小区卡口1西向东', '已核实', '疑似假套牌', '疑似假套牌', 25.0, 35.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (36, '新AT1470', NULL, NULL, -35, '2019-05-18 22:14:12', 0, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '/', '已核实', '手动修改', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (37, '新AT1470', NULL, NULL, 35, '2019-05-18 07:30:50', 35, 1, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '乌鲁木齐市政府', '未发现异常', '疑似假套牌', '/', 0.0, 0.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (38, '新A21850', NULL, NULL, 33, '2019-07-18 14:31:30', 33, 3, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '日常防范场所', 18.0, '碱泉三街青年路南一巷口对面卡口1', '已核实', '商场车罐不符', '车罐不符', 15.0, 33.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (39, '新A61430', NULL, NULL, 31, '2019-07-18 14:20:30', 31, 3, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '三类人员', 15.0, 1.0, '/', 0.0, 0.0, '日常防范场所', 31.0, '人民路西河坝后街口卡口2', '已核实', '停车场异常停放', '/', 0.0, 31.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (40, '新B71580', NULL, NULL, 31, '2019-07-18 13:56:30', 31, 3, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '三类人员', 16.0, 1.0, '/', 0.0, 0.0, '/', 0.0, '大湾北路金坤B区卡口2', '已核实', '小区生活圈异常', '生活圈异常', 15.0, 31.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (41, '新C00680', NULL, NULL, 20, '2019-07-18 15:57:30', 20, 4, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '大湾北路金坤B区卡口2', '已核实', '未年检车辆', '未年检车辆', 20.0, 20.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (42, '新H68999', NULL, NULL, 15, '2019-07-18 15:53:30', 15, 4, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '大湾北路金坤B区卡口2', '已核实', '车罐不符', '车罐不符', 15.0, 15.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (43, '新B000LX', NULL, NULL, 10, '2019-07-18 15:43:30', 10, 4, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '大湾北路金坤B区卡口2', '已核实', '车罐不符', '车罐不符', 10.0, 10.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (44, '新BEJ518', NULL, NULL, 25, '2019-07-18 15:46:30', 25, 4, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '大湾北路金坤B区卡口2', '已核实', '生活圈异常', '生活圈异常', 25.0, 25.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (45, '新CA0463', NULL, NULL, 15, '2019-07-18 15:42:30', 15, 4, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '大湾北路金坤B区卡口2', '已核实', '报废车辆', '报废车辆', 15.0, 15.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (46, '新CC1566', NULL, NULL, 10, '2019-07-18 15:30:30', 10, 4, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '大湾北路金坤B区卡口2', '已核实', '昼伏夜出', '昼伏夜出', 10.0, 10.0, '/', '/');
INSERT INTO `score_history_warn` VALUES (47, '新A27F55', NULL, NULL, 15, '2019-07-18 15:21:30', 15, 4, NULL, NULL, NULL, '/', NULL, NULL, NULL, NULL, NULL, 2, NULL, '/', 0.0, 0.0, '/', 0.0, 0.0, '/', 0.0, '大湾北路金坤B区卡口2', '已核实', '工作圈异常', '工作圈异常', 15.0, 15.0, '/', '/');

-- ----------------------------
-- Table structure for score_plan
-- ----------------------------
DROP TABLE IF EXISTS `score_plan`;
CREATE TABLE `score_plan`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vehiclePlateNum` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '车牌号',
  `licenceType` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '号牌种类',
  `measure` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '采取措施',
  `levelName` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '推荐级别名称',
  `level` int(11) NULL DEFAULT NULL COMMENT '推荐级别',
  `person` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '处理人',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '处置地点',
  `process` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '处理进度',
  `checked` int(11) NULL DEFAULT NULL COMMENT '是否选中',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片',
  `feedbackTime` datetime(0) NULL DEFAULT NULL COMMENT '反馈时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of score_plan
-- ----------------------------
INSERT INTO `score_plan` VALUES (1, '新AD687M', NULL, '对可疑人林胜武进行盘查', NULL, 1, '南一巷便民警务站负责人李维民到六道湾落脚点', '', '已处置', 2, 'picture/scorePlan/AD687M.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (2, '新AD687M', NULL, '对可疑人林胜武进行盘查', NULL, 2, '乌鲁木齐便民警务站负责人李飞到长春北路落脚点', '', '已处置', 2, 'picture/scorePlan/AD687M.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (3, '新AD687M', NULL, '布控', NULL, 3, '东八家户社区警务室负责人崔振江到亚博会场馆周边', '', '已处置', 2, 'picture/scorePlan/AD687M.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (4, '新AD786M', NULL, '对可疑人林胜武进行盘查', NULL, 1, '南一巷便民警务站负责人李维民到六道湾落脚点', '', '已处置', 2, 'picture/scorePlan/AD786M.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (5, '新AD786M', NULL, '对可疑人林胜武进行盘查', NULL, 2, '乌鲁木齐便民警务站负责人李飞到长春北路落脚点', '', '已处置', 2, 'picture/scorePlan/AD786M.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (6, '新AD786M', NULL, '布控', NULL, 3, '东八家户社区警务室负责人崔振江到亚博会场馆周边', '', '已处置', 2, 'picture/scorePlan/AD786M.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (7, '新AT5160', NULL, '对可疑人陈光荣进行盘查', NULL, 1, '南一巷便民警务站负责人李维民到六道湾落脚点', '', '已处置', 2, 'picture/scorePlan/AT5160.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (8, '新AT5160', NULL, '对可疑人陈光荣进行盘查', NULL, 2, '乌鲁木齐便民警务站负责人李飞到长春北路落脚点', '', '已处置', 2, 'picture/scorePlan/AT5160.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (9, '新AT5160', NULL, '布控', NULL, 3, '东八家户社区警务室负责人崔振江到亚博会场馆周边', '', '已处置', 2, 'picture/scorePlan/AT5160.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (10, '新A5788C', NULL, '排查', NULL, 1, '新城社区警务室负责人马雯到滨河公寓落脚点', '', '已处置', 2, 'picture/scorePlan/A5788C.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (11, '新A5788C', NULL, '排查', NULL, 2, '南一巷便民警务站负责人李维民到新发大厦落脚点', '', '已处置', 2, 'picture/scorePlan/A5788C.jpg', '2019-07-18 16:12:30');
INSERT INTO `score_plan` VALUES (12, '新A5788C', NULL, '布控', NULL, 3, '第59小学校园警务室蔡永强到南湖家乐福十字路', '', '已处置', 2, 'picture/scorePlan/A5788C.jpg', '2019-07-18 16:17:30');
INSERT INTO `score_plan` VALUES (13, '新AL755P', NULL, '拦截', NULL, 1, '南一巷便民警务站负责人张为民到西虹东路落脚点', '', '不处置', 2, 'picture/scorePlan/AL755P.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (14, '新AL755P', NULL, '排查', NULL, 2, '新城社区负责人张为民到仓房沟落脚点', '', '不处置', 2, 'picture/scorePlan/AL755P.jpg', '2019-07-18 16:12:30');
INSERT INTO `score_plan` VALUES (15, '新AL755P', NULL, '排查', NULL, 3, '南关派出所社区警务室负责人林水伯到二道桥', '', '不处置', 2, 'picture/scorePlan/AL755P.jpg', '2019-07-18 16:17:30');
INSERT INTO `score_plan` VALUES (16, '新A76673', NULL, '排查', NULL, 1, '长春南路社区警务室负责人李建国到金色嘉园小区落脚点', '', '已处置', 2, 'picture/scorePlan/A76673.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (17, '新A76673', NULL, '排查', NULL, 2, '银川路派出所鲤鱼山社区警务室负责人张为民到新疆医科大北校区落脚点', '', '已处置', 2, 'picture/scorePlan/A76673.jpg', '2019-07-18 16:12:30');
INSERT INTO `score_plan` VALUES (18, '新A76673', NULL, '排查', NULL, 3, '南一巷便民警务站负责人张为民到市政府周边', '', '已处置', 2, 'picture/scorePlan/A76673.jpg', '2019-07-18 16:17:30');
INSERT INTO `score_plan` VALUES (19, '新AT1470', NULL, '排查', NULL, 1, '长春南路社区警务室负责人李建国到金色嘉园小区落脚点', '', '已处置', 2, 'picture/scorePlan/AT1470.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (20, '新AT1470', NULL, '排查', NULL, 2, '银川路派出所鲤鱼山社区警务室负责人张为民到新疆医科大北校区落脚点', '', '已处置', 2, 'picture/scorePlan/AT1470.jpg', '2019-07-18 16:12:30');
INSERT INTO `score_plan` VALUES (21, '新AT1470', NULL, '排查', NULL, 3, '南一巷便民警务站负责人张为民到市政府周边', '', '已处置', 2, 'picture/scorePlan/AT1470.jpg', '2019-07-18 16:17:30');
INSERT INTO `score_plan` VALUES (22, '新A32211', NULL, '排查', NULL, 1, '长春南路社区警务室负责人李建国到金色嘉园小区落脚点', '', '已处置', 2, 'picture/scorePlan/A32211.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (23, '新A32211', NULL, '排查', NULL, 2, '银川路派出所鲤鱼山社区警务室负责人张为民到新疆医科大北校区落脚点', '', '已处置', 2, 'picture/scorePlan/A32211.jpg', '2019-07-18 16:12:30');
INSERT INTO `score_plan` VALUES (24, '新A32211', NULL, '排查', NULL, 3, '南一巷便民警务站负责人张为民到市政府周边', '', '已处置', 2, 'picture/scorePlan/A32211.jpg', '2019-07-18 16:17:30');
INSERT INTO `score_plan` VALUES (25, '新AP6611', NULL, '排查,关联车辆：新AQ6612、新AR6613', NULL, 1, '长春南路社区警务室', '', '已处置', 2, 'picture/scorePlan/AP6611.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (26, '新AP6611', NULL, '排查,关联车辆：新AQ6612、新AR6613', NULL, 2, '银川路派出所鲤鱼山社区警务室', '', '已处置', 2, 'picture/scorePlan/AP6611.jpg', '2019-07-18 16:12:30');
INSERT INTO `score_plan` VALUES (27, '新AP6611', NULL, '排查,关联车辆：新AQ6612、新AR6613', NULL, 3, '南一巷便民警务站', '', '已处置', 2, 'picture/scorePlan/AP6611.jpg', '2019-07-18 16:17:30');
INSERT INTO `score_plan` VALUES (28, '新AQ6612', NULL, '排查,关联车辆：新AP6611、新AR6613', NULL, 1, '长春南路社区警务室', '', '已处置', 2, 'picture/scorePlan/AQ6612.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (29, '新AQ6612', NULL, '排查,关联车辆：新AP6611、新AR6613', NULL, 2, '银川路派出所鲤鱼山社区警务室', '', '已处置', 2, 'picture/scorePlan/AQ6612.jpg', '2019-07-18 16:12:30');
INSERT INTO `score_plan` VALUES (30, '新AQ6612', NULL, '排查,关联车辆：新AP6611、新AR6613', NULL, 3, '南一巷便民警务站', '', '已处置', 2, 'picture/scorePlan/AQ6612.jpg', '2019-07-18 16:17:30');
INSERT INTO `score_plan` VALUES (31, '新AR6613', NULL, '排查,关联车辆：新AP6611、新AQ6612', NULL, 1, '长春南路社区警务室', '', '已处置', 2, 'picture/scorePlan/AR6613.jpg', '2019-07-18 16:11:30');
INSERT INTO `score_plan` VALUES (32, '新AR6613', NULL, '排查,关联车辆：新AP6611、新AQ6612', NULL, 2, '银川路派出所鲤鱼山社区警务室', '', '已处置', 2, 'picture/scorePlan/AR6613.jpg', '2019-07-18 16:12:30');
INSERT INTO `score_plan` VALUES (33, '新AR6613', NULL, '排查,关联车辆：新AP6611、新AQ6612', NULL, 3, '南一巷便民警务站', '', '已处置', 2, 'picture/scorePlan/AR6613.jpg', '2019-07-18 16:17:30');

-- ----------------------------
-- Table structure for section_info
-- ----------------------------
DROP TABLE IF EXISTS `section_info`;
CREATE TABLE `section_info`  (
  `sectionId` bigint(20) NOT NULL COMMENT '断面id',
  `sectionNumber` bigint(20) NOT NULL COMMENT '断面编号',
  `registNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '注册编号',
  `latitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '纬度',
  `longitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '经度',
  `sectionType` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '端面类型',
  `provinceDistrictName` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '行政区区名称',
  `departmentName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '部门名称',
  `roadId` bigint(20) NULL DEFAULT NULL COMMENT '道路id',
  `roadName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '道路名称',
  `provinceDistrictId` bigint(20) NULL DEFAULT NULL COMMENT '行政区id',
  `crossId` int(11) NULL DEFAULT NULL COMMENT '路口id',
  `rfidTypeId` int(11) NULL DEFAULT NULL COMMENT 'Rfid类型id',
  `rfidSpecification` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'Rfid规格',
  `sectionName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '断面名称',
  `updateTime` bigint(20) NOT NULL COMMENT '更新时间',
  `deleteFlag` int(11) NOT NULL COMMENT '删除标记',
  `customDistrictId` int(11) NOT NULL COMMENT '自定义区域id',
  `slaveNodeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '分配的子节点名称',
  `sectionRemark` varchar(300) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `sectionDirection` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '断面方向',
  PRIMARY KEY (`sectionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of section_info
-- ----------------------------
INSERT INTO `section_info` VALUES (3, 5180001, '', '43.840348', '87.631877', '道路', NULL, '', -1, '', NULL, 0, 2, '', '昆仑路与南湖东路北五巷北向南卡口', 1558620019091, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (5, 1010002, '', '43.833897', '87.631481', '高速', NULL, '', 1, '道路测试', NULL, 0, 2, '', '南湖东路与南湖东路南二巷交叉路口西向东', 1558338365506, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (6, 1010004, '', '43.822659', '87.621025', '道路', NULL, '', -1, '', NULL, 0, 2, '', '南湖南路与西虹东路西向东', 1558339170052, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (7, 1010004, '', '43.866668', '87.633781', '道路', NULL, '', -1, '', NULL, 0, 2, '', '龙盛街与会展大道交叉口西向东', 1558339959575, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (8, 1010005, '', '43.842116', '87.664539', '道路', NULL, '', -1, '', NULL, 0, 2, '', '沿河路与温泉路高架交叉路口北向南', 1558621453234, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (9, 1010006, '', '43.842194', '87.664395', '道路', NULL, '', -1, '', NULL, 0, 2, '', '温泉西路与水磨沟路交叉东向西卡口', 1558621694752, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (10, 1010007, '', '43.82461', '87.66073', '道路', NULL, '', -1, '', NULL, 0, -1, '', '水磨沟路与高尔夫路路口北向南卡口', 1559474675043, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (11, 1010008, '', '43.82422', '87.660694', '道路', NULL, '', -1, '', NULL, 0, 2, '', '水磨沟路与高尔夫路路口南向北卡口', 1559474694420, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (12, 1010009, '', '43.87012', '87.60694', '道路', NULL, '', -1, '', NULL, 0, 2, '', '东八家户与河滩北路交叉口西向东', 1558621829474, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (13, 1010010, '', '43.842949', '87.642045', '道路', NULL, '', -1, '', NULL, 0, 2, '', '外环路与昆仑路路口北向南', 1558621932854, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (14, 1010012, '', '43.892174', '87.67999', '道路', NULL, '', -1, '', NULL, 0, 2, '', '九道弯与振安街东向西卡口', 1558622034642, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (15, 1010013, '', '43.895877', '87.649376', '道路', NULL, '', -1, '', NULL, 0, 2, '', '七道湾北路与振安街西向东卡口', 1558622281768, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (16, 1010014, '', '43.896084', '87.648387', '道路', NULL, '', -1, '', NULL, 0, 2, '', '七道湾北路与会展北路东向西卡口', 1558622515110, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (17, 1010016, '', '43.885547', '87.649429', '道路', NULL, '', -1, '', NULL, 0, 2, '', '七道湾路与红光山路交叉口北向南', 1558622628745, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (18, 1010017, '', '43.88569', '87.649411', '道路', NULL, '', -1, '', NULL, 0, 2, '', '七道湾路与红光山路交叉口南向北', 1558622667127, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (19, 1010018, '', '43.843586', '87.663156', '道路', NULL, '', -1, '', NULL, 0, 2, '', '沿河路与沿河路西一巷交叉口东向西', 1558622804745, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (20, 1010021, '', '43.872746', '87.652753', '道路', NULL, '', -1, '', NULL, 0, 2, '', '七道湾南路与龙盛街交叉口南向北', 1558623451331, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (21, 1010022, '', '43.850724', '87.653292', '道路', NULL, '', -1, '', NULL, 0, 2, '', '七道湾路沿河路交叉口南向北', 1559473726931, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (22, 1010023, '', '43.88543', '87.649447', '道路', NULL, '', -1, '', NULL, 0, 2, '', '七道湾与红光山路交叉口北向南', 1558623563283, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (23, 1010024, '', '43.848852', '87.641722', '道路', NULL, '', -1, '', NULL, 0, 2, '', '六道湾路与华光街交叉口西向东', 1559473453581, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (24, 1010025, '', '43.833923', '87.626343', '道路', NULL, '', -1, '', NULL, 0, 2, '', '南湖东路与南湖东路北四巷交叉路口东向西', 1558623722275, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (25, 1010026, '', '43.818418', '87.617683', '道路', NULL, '', -1, '', NULL, 0, 2, '', '新兴街新民西街交叉口西向东卡口', 1558623795035, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (26, 1010027, '', '43.830867', '87.640123', '道路', NULL, '', -1, '', NULL, 0, 2, '', '西虹东路外环路路口东向西', 1558623839949, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (27, 1010028, '', '43.822165', '87.6193', '道路', NULL, '', -1, '', NULL, 0, 2, '', '南湖南路与西虹东路东向西', 1559474476819, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (28, 1010029, '', '43.833182', '87.619821', '道路', NULL, '', -1, '', NULL, 0, 2, '', '南湖十字路口北侧卡口', 1558624017583, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (29, 1010032, '', '43.834964', '87.633458', '道路', NULL, '', -1, '', NULL, 0, 2, '', '南湖东路北五巷南向北', 1559474158698, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (30, 1010033, '', '43.867131', '87.633242', '道路', NULL, '', -1, '', NULL, 0, 2, '', '会展大道与龙盛街交叉口南向北卡口', 1559472645680, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (31, 1010034, '', '43.89255', '87.678373', '道路', NULL, '', -1, '', NULL, 0, 2, '', '九道湾与振安街东向西卡口', 1558624660664, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (32, 1010035, '', '43.849593', '87.653274', '道路', NULL, '', -1, '', NULL, 0, 2, '', '七道湾沿河路交叉口西向东', 1558665443212, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (33, 1010036, '', '43.833676', '87.612347', '道路', NULL, '', -1, '', NULL, 0, 2, '', '南湖西路与安居北路南向北', 1558665569333, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (34, 1010037, '', '43.810716', '87.612186', '道路', NULL, '', -1, '', NULL, 0, 2, '', '红山路与红山路北一巷东向西', 1558665629573, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (35, 1010038, '', '43.817586', '87.640896', '道路', NULL, '', -1, '', NULL, 0, 2, '', '红山路与外环路交叉口西向东', 1558665695962, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (36, 1010039, '', '43.81177', '87.613749', '道路', NULL, '', -1, '', NULL, 0, 2, '', '新民西街北向南卡口', 1558665766164, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (37, 1010040, '', '43.811757', '87.613767', '道路', NULL, '', -1, '', NULL, 0, 2, '', '新民西街南向北卡口', 1558665776934, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (38, 1010041, '', '43.810964', '87.615186', '道路', NULL, '', -1, '', NULL, 0, 2, '', '红山路与新民路交叉口东向西', 1558665809582, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (39, 1010042, '', '43.814125', '87.625445', '道路', NULL, '', -1, '', NULL, 0, 2, '', '红山路与新民路交叉口西向东', 1558665833999, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (40, 1010043, '', '43.888354', '87.633727', '道路', NULL, '', -1, '', NULL, 0, 2, '', '会展大道与会展北路交叉口北向南', 1558665898198, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (41, 1010044, '', '43.780172', '87.672372', '道路', NULL, '', -1, '', NULL, 0, 2, '', '八十五中学门口东向西', 1558666211916, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (42, 1010045, '', '43.780614', '87.671474', '道路', NULL, '', -1, '', NULL, 0, 2, '', '八十五中学门口西向东', 1558666236520, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (43, 1010046, '', '43.801048', '87.623343', '道路', NULL, '', -1, '', NULL, 0, 2, '', '红旗路东侧地下通道卡口', 1558666359268, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (44, 1010047, '', '43.803209', '87.627547', '道路', NULL, '', -1, '', NULL, 0, 2, '', '解放北路中银大厦对面卡口', 1558666405588, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (45, 1010048, '', '43.759431', '87.654586', '道路', NULL, '', -1, '', NULL, 0, 2, '', '明华东一巷口', 1558666477319, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (46, 1010049, '', '43.779222', '87.651963', '道路', NULL, '', -1, '', NULL, 0, 2, '', '大湾北路金坤B区对面卡口2', 1558666579853, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (47, 1010050, '', '43.77917', '87.651963', '道路', NULL, '', -1, '', NULL, 0, 2, '', '大湾北路金坤B区卡口2', 1558666610330, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (48, 1010051, '', '43.764132', '87.636925', '道路', NULL, '', -1, '', NULL, 0, 2, '', '大湾南路工商管理局对面卡口1', 1558666743590, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (49, 1010052, '', '43.7649', '87.638183', '道路', NULL, '', -1, '', NULL, 0, 2, '', '大湾南路工商管理局卡口1', 1558666855866, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (50, 1010053, '', '43.798016', '87.614521', '道路', NULL, '', -1, '', NULL, 0, 2, '', '人民路西河坝后街口卡口1', 1558666930371, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (51, 1010054, '', '43.798068', '87.614593', '道路', NULL, '', -1, '', NULL, 0, 2, '', '人民路西河坝后街口卡口2', 1558666942778, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (52, 1010055, '', '43.783179', '87.622534', '道路', NULL, '', -1, '', NULL, 0, 2, '', '胜利路八路军办事处卡口1', 1558667011183, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (53, 1010056, '', '43.78245', '87.622247', '道路', NULL, '', -1, '', NULL, 0, 2, '', '胜利路自治区教育厅卡口1', 1558667033281, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (54, 1010057, '', '43.816545', '87.639243', '道路', NULL, '', -1, '', NULL, 0, 2, '', '五星路军运宾馆卡口1', 1558667144020, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (55, 1010058, '', '43.810352', '87.657568', '道路', NULL, '', -1, '', NULL, 0, 2, '', '新泉街德邻苑小区卡口1 东向西', 1558667266294, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (56, 1010059, '', '43.790156', '87.650651', '道路', NULL, '', -1, '', NULL, 0, 2, '', '幸福路第二干休所卡口1', 1558667583505, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (57, 1010060, '', '43.780745', '87.623774', '道路', NULL, '', -1, '', NULL, 0, 2, '', '延安路胸科医院对面卡口1', 1558667750761, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (58, 1010061, '', '43.816818', '87.639368', '道路', NULL, '', -1, '', NULL, 0, 2, '', '五星路军运宾馆卡口2', 1558667876887, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (59, 1010062, '', '43.745027', '87.602197', '道路', NULL, '', -1, '', NULL, 0, 2, '', '燕北立交桥河滩路往燕儿窝路方向卡口2', 1558667936224, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (60, 1010063, '', '43.746486', '87.599933', '道路', NULL, '', -1, '', NULL, 0, 2, '', '燕北立交桥燕儿窝路往河滩路方向卡口2', 1558667965294, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (61, 1010064, '', '43.800125', '87.631553', '道路', NULL, '', -1, '', NULL, 0, 2, '', '中山路广场南侧入口卡口1', 1558668045625, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (62, 1010066, '', '43.810274', '87.657029', '道路', NULL, '', -1, '', NULL, 0, 2, '', '新泉街德邻苑小区卡口1西向东', 1558668196265, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (63, 1010067, '', '43.800177', '87.615779', '道路', NULL, '', -1, '', NULL, 0, 2, '', '中山路大西门布料市场卡口1', 1558668231367, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (64, 1010068, '', '43.799838', '87.614306', '道路', NULL, '', -1, '', NULL, 0, 2, '', '中山路工商管理局卡口1', 1558668417900, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (65, 1010069, '', '43.811653', '87.651891', '道路', NULL, '', -1, '', NULL, 0, 2, '', '碱泉三街青年路南一巷口对面卡口1', 1558668529208, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (66, 1010070, '', '43.811224', '87.649358', '道路', NULL, '', -1, '', NULL, 0, 2, '', '碱泉三街青年路南一巷口卡口1', 1558668560430, 0, -1, 'slave1', '', '');
INSERT INTO `section_info` VALUES (67, 1010071, '', '43.887925', '87.633314', '道路', NULL, '', -1, '', NULL, 0, -1, '', '会展大道北向南卡口', 1559471753873, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (68, 1010072, '', '43.877802', '87.651585', '道路', NULL, '', -1, '', NULL, 0, -1, '', '七道湾南路与八道湾路东向西卡口', 1559472349041, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (69, 1010073, '', '43.877334', '87.651334', '道路', NULL, '', -1, '', NULL, 0, -1, '', '七道湾南路与八道湾西向东卡口', 1559472391246, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (70, 1010074, '', '43.883026', '87.676666', '道路', NULL, '', 0, '', NULL, 0, -1, '', '七道湾东街与八道湾路交叉口西向东', 1559472089432, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (71, 1010075, '', '43.883338', '87.6769', '道路', NULL, '', 0, '', NULL, 0, -1, '', '八道湾路与七道湾东街北向南卡口', 1559472177326, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (72, 1010076, '', '43.865831', '87.63299', '道路', NULL, '', 0, '', NULL, 0, -1, '', '会展大道与龙盛街交叉口北向南卡口', 1559472623508, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (73, 1010077, '', '43.870107', '87.611521', '道路', NULL, '', 0, '', NULL, 0, -1, '', '南湖北路与东八家户街交叉口南向北', 1559472780471, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (74, 1010078, '', '43.865142', '87.606347', '道路', NULL, '', 0, '', NULL, 0, -1, '', '苏州路立交桥东向西', 1559472823053, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (75, 1010079, '', '43.864687', '87.60676', '道路', NULL, '', 0, '', NULL, 0, -1, '', '苏州路立交桥西向东', 1559472855146, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (76, 1010080, '', '43.85833', '87.631104', '道路', NULL, '', 0, '', NULL, 0, -1, '', '外环路立井街东向西西向东卡口', 1559472996431, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (77, 1010081, '', '43.856991', '87.612509', '道路', NULL, '', 0, '', NULL, 0, -1, '', '南湖北路立井街东向西西向东卡口', 1559473037628, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (78, 1010082, '', '43.847578', '87.639602', '道路', NULL, '', 0, '', NULL, 0, -1, '', '帕米尔街外环路路口西向东', 1559473244212, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (79, 1010083, '', '43.846121', '87.639315', '道路', NULL, '', 0, '', NULL, 0, -1, '', '帕米尔街与外环路路口北向南', 1559473289397, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (80, 1010084, '', '43.843963', '87.641902', '道路', NULL, '', 0, '', NULL, 0, -1, '', '昆仑路外环路路口南向北卡口', 1559473326471, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (81, 1010085, '', '43.843105', '87.64068', '道路', NULL, '', 0, '', NULL, 0, -1, '', '昆仑路外环路路口东向西卡口', 1559473367024, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (82, 1010086, '', '43.842923', '87.642441', '道路', NULL, '', 0, '', NULL, 0, -1, '', '外环路与昆仑路北向南卡口', 1559473422611, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (83, 1010087, '', '43.849554', '87.653184', '道路', NULL, '', 0, '', NULL, 0, -1, '', '七道湾路与沿河路交叉口北向南七道湾路与沿河路交叉口北向南', 1559473674605, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (84, 1010088, '', '43.833819', '87.633817', '道路', NULL, '', 0, '', NULL, 0, -1, '', '南湖东路北五巷北向南', 1559474131424, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (85, 1010089, '', '43.825443', '87.630403', '道路', NULL, '', 0, '', NULL, 0, -1, '', '西虹东路新民东街交叉口东向西', 1559474315280, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (86, 1010090, '', '43.829761', '87.612904', '道路', NULL, '', 0, '', NULL, 0, -1, '', '南湖西路与安居南路北向南,南向北卡口', 1559474452267, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (87, 1010091, '', '43.823414', '87.605323', '道路', NULL, '', 0, '', NULL, 0, -1, '', '河滩辅道华凌三号门南向北', 1559474574368, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (88, 1010092, '', '43.822399', '87.661485', '道路', NULL, '', 0, '', NULL, 0, -1, '', '青年路四十二中学对面', 1559475008372, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (89, 1010095, '', '43.810768', '87.658071', '道路', NULL, '', 0, '', NULL, 0, -1, '', '新泉街碱泉街加气站', 1559475260644, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (90, 1010094, '', '43.811848', '87.650364', '道路', NULL, '', 0, '', NULL, 0, -1, '', '青年路日月星光前门卡口', 1559475290568, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (91, 1010093, '', '43.811861', '87.650238', '道路', NULL, '', 0, '', NULL, 0, -1, '', '青年路日月星光对面', 1559475343228, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (92, 1010096, '', '43.808361', '87.639045', '道路', NULL, '', 0, '', NULL, 0, -1, '', '东风路东后街转盘路口', 1559475620040, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (93, 1010097, '', '43.801582', '87.639638', '道路', NULL, '', 0, '', NULL, 0, -1, '', '建国路42号院对面', 1559475701003, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (94, 1010098, '', '43.793813', '87.654999', '道路', NULL, '', 0, '', NULL, 0, -1, '', '大湾北路百信二期卡口', 1559475767707, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (95, 1010099, '', '43.786706', '87.645405', '道路', NULL, '', 0, '', NULL, 0, -1, '', '体育馆路职大南校区对面', 1559475833378, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (96, 1010100, '', '43.748075', '87.650597', '道路', NULL, '', 0, '', NULL, 0, -1, '', '团结路晨光花园', 1559476136099, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (97, 1010101, '', '43.765773', '87.639404', '道路', NULL, '', 0, '', NULL, 0, -1, '', '大湾北路金疆大厦', 1559476192210, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (98, 1010102, '', '43.741445', '87.59952', '道路', NULL, '', 0, '', NULL, 0, -1, '', '河滩路往烈士陵园方向', 1559476286472, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (99, 1010103, '', '43.746173', '87.604568', '道路', NULL, '', 0, '', NULL, 0, -1, '', '燕儿窝路街道办事处', 1559476409049, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (100, 1010104, '', '43.745965', '87.604173', '道路', NULL, '', 0, '', NULL, 0, -1, '', '燕儿窝路街道办事处对面', 1559476434073, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (101, 1010105, '', '43.768598', '87.610461', '道路', NULL, '', 0, '', NULL, 0, -1, '', '赛马场往河滩路方向', 1559476589344, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (102, 1010106, '', '43.768624', '87.610245', '道路', NULL, '', 0, '', NULL, 0, -1, '', '河滩路往赛马场方向', 1559476632136, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (103, 1010107, '', '43.770108', '87.615096', '道路', NULL, '', 0, '', NULL, 0, -1, '', '新华南路商务厅', 1559476678341, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (104, 1010108, '', '43.7699', '87.615096', '道路', NULL, '', 0, '', NULL, 0, -1, '', '新华南路南公园侧门', 1559476705526, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (105, 1010109, '', '43.776592', '87.613623', '道路', NULL, '', 0, '', NULL, 0, -1, '', '英阿瓦提路南公园家属院', 1559476736027, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (106, 1010110, '', '43.776748', '87.612904', '道路', NULL, '', 0, '', NULL, 0, -1, '', '英阿瓦提路广汇汇珍花园小区', 1559476769426, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (107, 1010111, '', '43.783114', '87.627349', '道路', NULL, '', 0, '', NULL, 0, -1, '', '团结路高级中学', 1559477146464, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (108, 1010112, '', '43.782958', '87.627978', '道路', NULL, '', 0, '', NULL, 0, -1, '', '团结路电子大厦', 1559477172036, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (109, 1010113, '', '43.78452', '87.614072', '道路', NULL, '', 0, '', NULL, 0, -1, '', '河滩辅道往广汇桥上桥口', 1559477235584, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (110, 1010114, '', '43.784975', '87.628786', '道路', NULL, '', 0, '', NULL, 0, -1, '', '中泉街团结路北三巷', 1559477281699, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (111, 1010115, '', '43.785678', '87.627098', '道路', NULL, '', 0, '', NULL, 0, -1, '', '金银大道西侧', 1559477355783, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (112, 1010116, '', '43.786641', '87.614809', '道路', NULL, '', 0, '', NULL, 0, -1, '', '广汇桥下新华南路管委会门口', 1559477396630, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (113, 1010117, '', '43.786186', '87.617917', '道路', NULL, '', 0, '', NULL, 0, -1, '', '新华南路自治区民政厅对面', 1559477454995, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (114, 1010118, '', '43.786732', '87.617845', '道路', NULL, '', 0, '', NULL, 0, -1, '', '新华南路自治区民政厅', 1559477484805, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (115, 1010119, '', '43.791834', '87.618312', '道路', NULL, '', 0, '', NULL, 0, -1, '', '龙泉街建龙大厦', 1559477582323, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (116, 1010120, '', '43.798081', '87.618779', '道路', NULL, '', 0, '', NULL, 0, -1, '', '人民路和合玉器', 1559477752604, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (117, 1010121, '', '43.798251', '87.618833', '道路', NULL, '', 0, '', NULL, 0, -1, '', '新华南路轻工商场', 1559477796325, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (118, 1010122, '', '43.798407', '87.618833', '道路', NULL, '', 0, '', NULL, 0, -1, '', '新华南路世纪百盛大酒店', 1559477899277, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (119, 1010126, '', '43.797288', '87.634895', '道路', NULL, '', 0, '', NULL, 0, -1, '', '人民路国际置地农行(爱家超市)', 1559478044316, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (120, 1010125, '', '43.79734', '87.635039', '道路', NULL, '', 0, '', NULL, 0, -1, '', '人民路国际置地农行', 1559478086748, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (121, 1010123, '', '43.800203', '87.63105', '道路', NULL, '', 0, '', NULL, 0, -1, '', '中山路广场南侧入口', 1559478129011, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (122, 1010124, '', '43.800177', '87.630942', '道路', NULL, '', 0, '', NULL, 0, -1, '', '中山路万年101', 1559478160845, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (123, 1010127, '', '43.802753', '87.634787', '道路', NULL, '', 0, '', NULL, 0, -1, '', '东风路丰润抓饭', 1559478249972, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (124, 1010128, '', '43.80248', '87.634374', '道路', NULL, '', 0, '', NULL, 0, -1, '', '东风路顺风肥牛', 1559478294899, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (125, 1010129, '', '43.803274', '87.624259', '道路', NULL, '', 0, '', NULL, 0, -1, '', '民主路广电大酒店', 1559478427406, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (126, 1010130, '', '43.80356', '87.629254', '道路', NULL, '', 0, '', NULL, 0, -1, '', '健康路西门派出所', 1559478462473, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (127, 1010131, '', '43.809871', '87.634482', '道路', NULL, '', 0, '', NULL, 0, -1, '', '青年路好家乡西侧', 1559478673933, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (128, 1010132, '', '43.80909', '87.618204', '道路', NULL, '', 0, '', NULL, 0, -1, '', '光明路时代广场', 1559478708850, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (129, 1010133, '', '43.811549', '87.61851', '道路', NULL, '', 0, '', NULL, 0, -1, '', '建工巷兵团印刷厂门口', 1559478750978, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (130, 1010134, '', '43.809285', '87.616102', '道路', NULL, '', 0, '', NULL, 0, -1, '', '光明路红山新世纪', 1559478787254, 0, -1, '', '', '');
INSERT INTO `section_info` VALUES (131, 1010135, '', '43.811185', '87.616102', '道路', NULL, '', 0, '', NULL, 0, -1, '', '红山路世纪金花旁', 1559478838116, 0, -1, '', '', '');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `qq` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `tokenId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NULL DEFAULT NULL COMMENT '用户ID',
  `userAgent` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户（md5）',
  `token` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'md5(username+md5(useragent))',
  `createTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建时间',
  `expireTime` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '到期时间',
  PRIMARY KEY (`tokenId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户登录信息（用于自动登录）' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `userType` tinyint(4) NULL DEFAULT NULL COMMENT '用户类型',
  `roleId` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `userDescription` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '描述信息',
  PRIMARY KEY (`userId`) USING BTREE,
  INDEX `roleId`(`roleId`) USING BTREE,
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'super', 'super', 1, 1, '超级管理员，供开发方使用');
INSERT INTO `user` VALUES (47, 'admin', 'admin', 2, 4, '普通管理员');

-- ----------------------------
-- Table structure for vehicle_card_info
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_card_info`;
CREATE TABLE `vehicle_card_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vehiclePlateNum` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '号牌号码',
  `licenceType` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '号牌种类',
  `vehicleUserType` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '使用性质',
  `factoryDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '出厂日期',
  `vehicleType` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车辆类型',
  `powerRating` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '功率',
  `displacement` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '排量',
  `examineExpireDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '检验有效期',
  `forceScrapDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '强制报废期',
  `carryCapacity` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '核定载客/总质量',
  `vehicleColor` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车身颜色',
  `vin` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车架号',
  `picture` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发卡图片路径',
  `attribute` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '属性-车辆标签',
  `tagId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '标签ID',
  `cardId` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '卡号，不带校验位',
  `seriaNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '业务流水号',
  `creditCardType` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发卡类型',
  `vehicleNumber` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `vehicleBrand` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车辆品牌',
  `domesticImports` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '国产/进口',
  `vehicleOwner` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '机动车所有人',
  `vehicleOwnerPhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '机动车所有人联系方式',
  `licenceIssuingAuthority` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '发证机关',
  `administrativeDepartment` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '管理部门',
  `administrativeDepartmentName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '管理部门名称',
  `insuranceTermination` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '保险终止日期',
  `vehicleCondition` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '机动车状态',
  `personalizedTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '个性化时间',
  `operatingBusiness` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '操作业务 20-申领，21-申领受理，22-申领写卡，30-补领，31-补领受理，32-补',
  `crossDistrict` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '异地标记',
  `source` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '信息来源',
  `cardMountTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '装卡时间',
  `scrapReason` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '报废原因 1-原卡作废，2-退办作废',
  `scrapReasonComment` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '报废原因说明',
  `scrapTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '报废时间',
  `businessMark` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '机动车业务处理标记 0-有更新未处理，1-已处理',
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '状态',
  `personUpdate` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人',
  `personUpdateName` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新人姓名',
  `updateTime` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '更新时间',
  `score` decimal(10, 1) NULL DEFAULT NULL COMMENT '积分',
  `cameraPlateLicense` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '物理车牌号码',
  `lastMonitoringDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '上次监测日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle_card_info
-- ----------------------------
INSERT INTO `vehicle_card_info` VALUES (1, '新A93566', '01', 'C', NULL, 'K11', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'L8AG2RD23BB001076', 'picture/vehicle/A93566_1.png;picture/vehicle/A93566_2.png;picture/vehicle/A93566_3.png', NULL, '', '650000026856', NULL, '1', '42010018218012', '', '', '乌鲁木齐市城市交通投资有限责任公司', '', '新A', '', '', '', '', '', '', '', '', '20190429-012118', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (2, '新A94587', '01', 'C', NULL, 'K14', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'L8AJACE21EE000545', 'picture/vehicle/A94587_1.png;picture/vehicle/A94587_2.png;picture/vehicle/A94587_3.png', NULL, '', '650000026863', NULL, '1', '42010018218012', '', '', '乌鲁木齐市城市交通投资有限责任公司', '', '新A', '', '', '', '', '', '', '', '', '20190429-031340', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (3, '新AA2125', '01', 'C', NULL, 'K14', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'L8AJACE29CB000522', 'picture/vehicle/AA2125_1.png;picture/vehicle/AA2125_2.png;picture/vehicle/AA2125_3.png', NULL, '', '650000026886', NULL, '1', '42010018218012', '', '', '乌鲁木齐市城市交通投资有限责任公司', '', '新A', '', '', '', '', '', '', '', '', '20190429-030942', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (4, '新AA8489', '01', 'E', NULL, 'K11', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'LZYTDTDF7E1016882', 'picture/vehicle/AA8489_1.png;picture/vehicle/AA8489_2.png;picture/vehicle/AA8489_3.png', NULL, '', '650000026783', NULL, '1', '42010018218012', '', '', '新疆海月国际旅客运输有限公司', '', '新A', '', '', '', '', '', '', '', '', '20190425-114201', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (5, '新AB4366', '01', 'E', NULL, 'K11', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'LVCB4L4D5GG114140', 'picture/vehicle/AB4366_1.png;picture/vehicle/AB4366_2.png;picture/vehicle/AB4366_3.png', NULL, '', '650000026794', NULL, '1', '42010018218012', '', '', '新疆海月国际旅客运输有限公司', '', '新A', '', '', '', '', '', '', '', '', '20190425-112133', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (6, '新AB4368', '01', 'E', NULL, 'K11', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'LVCB4L4D3GG114148', 'picture/vehicle/AB4368_1.png;picture/vehicle/AB4368_2.png;picture/vehicle/AB4368_3.png', NULL, '', '650000026795', NULL, '1', '42010018218012', '', '', '新疆海月国际旅客运输有限公司', '', '新A', '', '', '', '', '', '', '', '', '20190425-121942', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (7, '新AB5805', '01', 'R', NULL, 'Q11', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'LFWSRXRJ7F1E05415', 'picture/vehicle/AB5805_1.png;picture/vehicle/AB5805_2.png;picture/vehicle/AB5805_3.png', NULL, '', '650000040955', NULL, '1', '42010018218012', '', '', '乌鲁木齐市众和盛邦物流有限责任公司', '', '新A', '', '', '', '', '', '', '', '', '20190511-125934', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (8, '新AC2626', '01', 'R', NULL, 'Q11', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'LZGJL4841HX116443', 'picture/vehicle/AC2626_1.png;picture/vehicle/AC2626_2.png;picture/vehicle/AC2626_3.png', NULL, '', '650000041193', NULL, '1', '42010018218012', '', '', '新疆联丰物流有限公司', '', '新A', '', '', '', '', '', '', '', '', '20190511-121844', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (9, '新AB1251', '01', 'R', NULL, 'Q11', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'LGDCWA1LXGH102055', 'picture/vehicle/AB1251_1.png;picture/vehicle/AB1251_2.png;picture/vehicle/AB1251_3.png', NULL, '', '650000045874', NULL, '1', '42010018218012', '', '', '乌鲁木齐市众和鑫泰物流有限责任公司', '', '新A', '', '', '', '', '', '', '', '', '20190515-105229', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (10, '新AB5948', '01', 'O', NULL, 'K18', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'LKLS1CS58HA719136', 'picture/vehicle/AB5948_1.png;picture/vehicle/AB5948_2.png;picture/vehicle/AB5948_3.png', NULL, '', '650000037566', NULL, '1', '42010018218012', '', '', '乌鲁木齐市妇联幼儿园', '', '新A', '', '', '', '', '', '', '', '', '20190504-122102', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (11, '新A99918', '01', 'O', NULL, 'K18', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'LA6R1ESE3CB300107', 'picture/vehicle/A99918_1.png;picture/vehicle/A99918_2.png;picture/vehicle/A99918_3.png', NULL, '', '650000037567', NULL, '1', '42010018218012', '', '', '乌鲁木齐市妇联幼儿园', '', '新A', '', '', '', '', '', '', '', '', '20190504-114834', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (12, '新AB5820', '01', 'O', NULL, 'K28', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'LGLAA2B19RR300658', 'picture/vehicle/AB5820_1.png;picture/vehicle/AB5820_2.png;picture/vehicle/AB5820_3.png', NULL, '', '650000037571', NULL, '1', '42010018218012', '', '', '乌鲁木齐市智星幼儿园', '', '新A', '', '', '', '', '', '', '', '', '20190504-124825', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (13, '新AC5226', '01', 'F', NULL, 'H17', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'L2GCL2R46HG011344', 'picture/vehicle/AC5226_1.png;picture/vehicle/AC5226_2.png;picture/vehicle/AC5226_3.png', NULL, '', '650000043673', NULL, '1', '42010018218012', '', '', '乌鲁木齐市鑫福星运输有限公司', '', '新A', '', '', '', '', '', '', '', '', '20190530-094421', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (14, '新AC6836', '01', 'F', NULL, 'H17', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'LRDV6PEC4HT029260', 'picture/vehicle/AC6836_1.png;picture/vehicle/AC6836_2.png;picture/vehicle/AC6836_3.png', NULL, '', '650000049533', NULL, '1', '42010018218012', '', '', '新疆顺城运输有限公司', '', '新A', '', '', '', '', '', '', '', '', '20190528-135429', '', '', '', '', '', '', '', '', NULL, NULL, NULL);
INSERT INTO `vehicle_card_info` VALUES (15, '新AB4456', '01', 'F', NULL, 'H17', NULL, NULL, '2019-06-30', '2026-06-04', NULL, '', 'LRDV6PEC9EH021203', 'picture/vehicle/AB4456_1.png;picture/vehicle/AB4456_2.png;picture/vehicle/AB4456_3.png', '异常徘徊', '', '650000049535', NULL, '1', '42010018218012', '', '', '新疆顺城运输有限公司', '', '新A', '', '', '', '', '', '', '', '', '20190528-135118', '', '', '', '', '', '', '', '', 49.0, '2019-04', '林胜武');
INSERT INTO `vehicle_card_info` VALUES (16, '新AD786M', '02', 'A', '2010-05', 'K33', '103KW', '1.8L', '2020-06', '2020-06', '1505KG', 'A', 'WAURG*******39355', 'picture/vehicle/AD786M.png', '异常徘徊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '林胜武', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49.0, '新AD786M', '2019-04');
INSERT INTO `vehicle_card_info` VALUES (17, '新AT5160', '02', 'A', '2010-05', 'K33', '103KW', '1.8L', '2020-06', '2020-06', '1505KG', 'E', 'WAURG*******39355', 'picture/vehicle/AT5160.png', '异常徘徊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '陈光荣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41.0, '新AT5160', '2019-04');
INSERT INTO `vehicle_card_info` VALUES (18, '新AD687M', '02', 'A', '2010-05', 'K33', '103KW', '1.8L', '2020-06', '2020-06', '1505KG', 'A', 'WAURG*******39355', 'picture/vehicle/AD687M.png', '异常徘徊', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '林胜武', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 64.0, '新AD687M', '2019-04');
INSERT INTO `vehicle_card_info` VALUES (19, '新AL755P', '01', 'F', '2011-06', 'K17', '184KW', '4.98L', '2020-07', '2021-07', '10060KG', '驾驶货车', 'WAURG*******39381', 'picture/vehicle/AL755P.png', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '陈光荣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70.0, '新AL755P', '2019-03');
INSERT INTO `vehicle_card_info` VALUES (20, '新A5788C', '01', 'R', '2018-03', 'H11', '332KW', '11.2L', '2021-04', '2028-04', '120000KG', 'E', 'WAURG*******39529', 'picture/vehicle/A5788C.png', '危化品车', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '林灿', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 70.0, '新A5788C', '2019-02');
INSERT INTO `vehicle_card_info` VALUES (21, '新A76673', '02', 'A', '2012-09', 'K33', '103KW', '1.8L', '2020-10', '2022-10', '1505KG', 'A', 'WAURG*******39630', 'picture/vehicle/A76673.png', '缠访户车', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '包星', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55.0, '新A76673', '2019-04');
INSERT INTO `vehicle_card_info` VALUES (22, '新AT1470', '02', 'A', '2012-09', 'K33', '103KW', '1.8L', '2020-10', '2022-10', '1505KG', 'E', 'WAURG*******39630', 'picture/vehicle/AT1470.png', '/', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '林胜文', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35.0, '新AT1470', '2019-04');
INSERT INTO `vehicle_card_info` VALUES (23, '新A32211', '02', 'A', '2012-09', 'K33', '103KW', '1.8L', '2020-10', '2022-10', '1505KG', 'A', 'WAURG*******39630', 'picture/vehicle/A32211.png', '社会车辆', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '林盛文', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51.0, '新A32211', '2019-04');
INSERT INTO `vehicle_card_info` VALUES (24, '新AP6611', '02', 'A', '2012-09', 'K33', '103KW', '1.8L', '2020-10', '2022-10', '1505KG', 'A', 'WAURG*******39630', 'picture/vehicle/AP6611.png', '社会车辆', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '陈光荣', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71.0, '新AP6611', '2019-04');
INSERT INTO `vehicle_card_info` VALUES (25, '新AQ6612', '02', 'A', '2012-09', 'K33', '103KW', '1.8L', '2020-10', '2022-10', '1505KG', 'A', 'WAURG*******39630', 'picture/vehicle/AQ6612.png', '社会车辆', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '林灿', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71.0, '新AQ6612', '2019-04');
INSERT INTO `vehicle_card_info` VALUES (26, '新AR6613', '02', 'A', '2012-09', 'K33', '103KW', '1.8L', '2020-10', '2022-10', '1505KG', 'A', 'WAURG*******39630', 'picture/vehicle/AR6613.png', '社会车辆', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '包星', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 71.0, '新AR6613', '2019-04');

-- ----------------------------
-- Table structure for vehicle_owner_info
-- ----------------------------
DROP TABLE IF EXISTS `vehicle_owner_info`;
CREATE TABLE `vehicle_owner_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '姓名',
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '性别',
  `age` int(11) NOT NULL COMMENT '年龄',
  `attribute` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '属性-人员标签',
  `nation` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '民族',
  `identityCard` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '身份证',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '地址',
  `vehicles` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名下车辆',
  `ownerPhoto` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '车主图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vehicle_owner_info
-- ----------------------------
INSERT INTO `vehicle_owner_info` VALUES (1, '林胜武', '男', 41, '重点人员', '汉族', '650103********6058', '天山区燕儿窝街道十七户社区******', '新AD687M', 'picture/person/AD687M.png');
INSERT INTO `vehicle_owner_info` VALUES (2, '陈光荣', '男', 44, '邻里纠纷', '汉族', '650103********0752', '天山区燕儿窝街道十七户社区******', '新AL755P', 'picture/person/AL755P.jpg');
INSERT INTO `vehicle_owner_info` VALUES (3, '林灿', '男', 30, '重点人员', '汉族', '650121********4931', '天山区燕儿窝街道十七户社区******', '新A5788C', 'picture/person/A5788C.jpg');
INSERT INTO `vehicle_owner_info` VALUES (4, '包星', '男', 31, '重点人员', '汉族', '650103********0134', '天山区燕儿窝街道十七户社区******', '新A76673', 'picture/person/A76673.jpg');
INSERT INTO `vehicle_owner_info` VALUES (5, '林胜文', '男', 31, '重点人员', '汉族', '650103********6523', '天山区燕儿窝街道十七户社区******', '新AT1470', 'picture/person/AT1470.jpg');
INSERT INTO `vehicle_owner_info` VALUES (6, '林胜武', '男', 31, '重点人员', '汉族', '650103********1746', '天山区燕儿窝街道十七户社区******', '新AD786M', 'picture/person/AD786M.jpg');
INSERT INTO `vehicle_owner_info` VALUES (7, '陈光荣', '男', 45, '重点人员', '汉族', '650103********0899', '天山区燕儿窝街道十七户社区******', '新AT5160', 'picture/person/AT5160.jpg');
INSERT INTO `vehicle_owner_info` VALUES (8, '马云波', '男', 45, '重点人员', '汉族', '650103********0672', '天山区燕儿窝街道十七户社区******', '新AT5160', 'picture/person/AT5160.jpg');
INSERT INTO `vehicle_owner_info` VALUES (9, '林盛文', '男', 31, '结业人员', '汉族', '650103********1254', '天山区燕儿窝街道十七户社区******', '新A32211', 'picture/person/A32211.jpg');
INSERT INTO `vehicle_owner_info` VALUES (10, '陈光荣', '男', 31, '结业人员', '汉族', '650103********6378', '天山区燕儿窝街道十七户社区******', '新AP6611', 'picture/person/AP6611.jpg');
INSERT INTO `vehicle_owner_info` VALUES (11, '林灿', '男', 31, '结业人员', '汉族', '650103********2316', '天山区燕儿窝街道十七户社区******', '新AQ6612', 'picture/person/AQ6612.jpg');
INSERT INTO `vehicle_owner_info` VALUES (12, '包星', '男', 31, '结业人员', '汉族', '650103********1109', '天山区燕儿窝街道十七户社区******', '新AR6613', 'picture/person/AR6613.jpg');

-- ----------------------------
-- View structure for rfid_pass_record_real_view
-- ----------------------------
DROP VIEW IF EXISTS `rfid_pass_record_real_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `rfid_pass_record_real_view` AS select `rfid_pass_record`.`id` AS `id`,`rfid_pass_record`.`archiveId` AS `archiveId`,`rfid_pass_record`.`attachment` AS `attachment`,`rfid_pass_record`.`collectTime` AS `collectTime`,`rfid_pass_record`.`firstDiscoverTime` AS `firstDiscoverTime`,`rfid_pass_record`.`lastDiscoverTime` AS `lastDiscoverTime`,`rfid_pass_record`.`deivceDescription` AS `deivceDescription`,`rfid_pass_record`.`deviceID` AS `deviceID`,`rfid_pass_record`.`deviceType` AS `deviceType`,`rfid_pass_record`.`laneNumber` AS `laneNumber`,`rfid_pass_record`.`location` AS `location`,`rfid_pass_record`.`receivedTime` AS `receivedTime`,`rfid_pass_record`.`sectionName` AS `sectionName`,`rfid_pass_record`.`direction` AS `direction`,`rfid_pass_record`.`source` AS `source`,`rfid_pass_record`.`vehiclePlateNum` AS `vehiclePlateNum`,`rfid_pass_record`.`vehicleType` AS `vehicleType`,`rfid_pass_record`.`vehicleUserType` AS `vehicleUserType`,`rfid_pass_record`.`licenceType` AS `licenceType`,`rfid_pass_record`.`confidence` AS `confidence`,`rfid_pass_record`.`eid` AS `eid`,`rfid_pass_record`.`cardId` AS `cardId`,`rfid_pass_record`.`carryCapacity` AS `carryCapacity`,`rfid_pass_record`.`displacement` AS `displacement`,`rfid_pass_record`.`examineExpireDate` AS `examineExpireDate`,`rfid_pass_record`.`factoryDate` AS `factoryDate`,`rfid_pass_record`.`forceScrapDate` AS `forceScrapDate`,`rfid_pass_record`.`powerRating` AS `powerRating`,`rfid_pass_record`.`vehicleColor` AS `vehicleColor`,`rfid_pass_record`.`tid` AS `tid`,`rfid_pass_record`.`protocol` AS `protocol`,`rfid_pass_record`.`registNumber` AS `registNumber`,`rfid_pass_record`.`extend1` AS `extend1`,`rfid_pass_record`.`extend2` AS `extend2` from `rfid_pass_record` order by `rfid_pass_record`.`receivedTime` desc limit 0,50;

-- ----------------------------
-- View structure for score_real_static_view
-- ----------------------------
DROP VIEW IF EXISTS `score_real_static_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `score_real_static_view` AS select `score_real_warn_view`.`alertState` AS `alertState`,`score_real_warn_view`.`alertStateName` AS `alertStateName`,`score_real_warn_view`.`processState` AS `processState`,count(0) AS `myCount` from `score_real_warn_view` group by `score_real_warn_view`.`alertState`,`score_real_warn_view`.`processState`;

-- ----------------------------
-- View structure for score_real_warn_view
-- ----------------------------
DROP VIEW IF EXISTS `score_real_warn_view`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `score_real_warn_view` AS select `score_history_warn`.`vehiclePlateNum` AS `vehiclePlateNum`,`score_history_warn`.`alertState` AS `alertState`,`score_history_warn`.`alertStateName` AS `alertStateName`,`score_history_warn`.`sceneName` AS `sceneName`,`score_history_warn`.`scoreDeduct` AS `scoreDeduct`,date_format(`score_history_warn`.`createTime`,'%H:%i:%s') AS `myCreateTime`,`score_history_warn`.`scoreCurrent` AS `scoreCurrent`,`score_history_warn`.`processState` AS `processState`,`score_history_warn`.`sectionName` AS `sectionName` from `score_history_warn` where `score_history_warn`.`id` in (select max(`score_history_warn`.`id`) AS `maxId` from `score_history_warn` where (`score_history_warn`.`createTime` > curdate()) group by `score_history_warn`.`vehiclePlateNum`) order by `score_history_warn`.`alertState`,`score_history_warn`.`createTime` desc;

SET FOREIGN_KEY_CHECKS = 1;
