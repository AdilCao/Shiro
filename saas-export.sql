/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : saas-export

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 25/03/2020 21:33:44
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for co_contract
-- ----------------------------
DROP TABLE IF EXISTS `co_contract`;
CREATE TABLE `co_contract`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `offeror` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contract_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `signing_date` datetime(0) NULL DEFAULT NULL,
  `input_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `check_by` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inspector` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_amount` decimal(10, 2) NULL DEFAULT NULL,
  `crequest` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `custom_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ship_time` datetime(0) NULL DEFAULT NULL,
  `import_num` decimal(11, 0) NULL DEFAULT NULL COMMENT '打印时标识几个星,对应说明中的内容\\r\\n            不能存储特殊字符星星，jstl判断失效',
  `delivery_period` datetime(0) NULL DEFAULT NULL,
  `old_state` int(11) NULL DEFAULT NULL COMMENT '归档前状态, 方便回退',
  `out_state` int(11) NULL DEFAULT NULL COMMENT '0未走货 1部分 2全部\\r\\n            \\r\\n            归档后, 其他选择合同的地方均去除.\\r\\n            表示合同已完成, 不论是否合同的货物是否全部真的走完, 因为有赔付等其他情况',
  `trade_terms` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `print_style` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宽2:一页两个货物  窄1:一页一个货物',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL COMMENT '0草稿 1已上报待报运\\r\\n            \\r\\n            归档后, 其他选择合同的地方均去除.\\r\\n            表示合同已完成, 不论是否合同的货物是否全部真的走完, 因为有赔付等其他情况',
  `pro_num` int(11) NULL DEFAULT 0 COMMENT '货物数量',
  `ext_num` int(11) NULL DEFAULT 0 COMMENT '附件数量',
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_dept` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of co_contract
-- ----------------------------
INSERT INTO `co_contract` VALUES ('2c90c5004ad63735014ad6d204060005', 'it黑马', '合同号：B', '2018-01-02 00:00:00', 'lw', 'lw', 'lw', 96.00, 'lw', '客户名称B', '2015-01-11 00:00:00', 3, '2015-01-11 00:00:00', NULL, NULL, 'FOB', '2', 'lwlwlw', 2, 4, 3, 'e041f064-b115-4e19-b76e-b515d1fc1fa9', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2015-01-11 10:28:15', '002108e2-9a10-4510-9683-8d8fd1d374ef', '2019-03-23 22:08:58', '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract` VALUES ('4028817a3357462e0133591b86ec0002', '陕西杰信商务发展有限公司', 'C/3817/11', '2011-10-31 00:00:00', '杨丽', NULL, '吕晓波', 5932.80, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'BEAKIE LEE', '2015-01-10 19:55:08', 1, '2015-10-21 11:07:25', NULL, NULL, NULL, '2', NULL, 2, 0, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a3357462e01336cc0877b0010', '陕西杰信商务发展有限公司', '11JK1080', '2011-11-04 00:00:00', '杨丽', NULL, '吕晓波', 2318.40, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', NULL, '2015-01-10 19:55:08', 3, '2011-12-10 00:00:00', NULL, NULL, NULL, '1', '待样品确认后方可安排生产', 2, 0, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a3357462e01336d3a0be10014', '陕西杰信商务发展有限公司', '11JK1078', '2011-11-04 00:00:00', '杨丽', NULL, '李春光', 54060.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', NULL, '2015-01-10 19:55:08', 3, '2011-11-15 00:00:00', NULL, NULL, NULL, '2', NULL, 1, 0, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a3357462e01336d523195001a', '陕西杰信商务发展有限公司', 'C/3847/11', '2011-12-02 00:00:00', '杨丽', NULL, '李春光', 39240.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'HOME', '2015-01-10 19:55:08', 3, '2015-10-21 11:07:25', NULL, NULL, NULL, '2', NULL, 2, 9, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33812ffd0133813f25940001', '陕西杰信商务发展有限公司', 'C/3861/11', '2011-11-08 00:00:00', '杨丽', NULL, '吕晓波', 176238.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'HOME', '2015-01-10 19:55:08', 3, '2012-01-10 00:00:00', NULL, NULL, NULL, '2', NULL, 2, 31, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33812ffd013382048ff80024', '陕西杰信商务发展有限公司', '11JK1082', '2011-11-08 00:00:00', '杨丽', NULL, '李春光', 13656.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'MSA', '2015-01-10 19:55:08', 3, '2011-12-30 00:00:00', NULL, NULL, NULL, '2', NULL, 2, 1, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33812ffd0133821a8eb5002b', '陕西杰信商务发展有限公司', '11JK1084', '2011-11-08 00:00:00', '杨丽', NULL, '李春光', 10936.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'ONE WORLD', '2015-01-10 19:55:08', 3, '2011-12-20 00:00:00', NULL, NULL, NULL, '2', NULL, 2, 4, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33d4f8b40133d9878e88000d', '陕西杰信商务发展有限公司', '11JK1070', '2011-12-20 00:00:00', '杨丽', NULL, NULL, 39248.20, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', NULL, '2015-01-10 19:55:08', 3, '2011-11-05 00:00:00', NULL, NULL, NULL, '2', NULL, 2, 10, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33d4f8b40133d991a50d0019', '陕西杰信商务发展有限公司', '11JK1066', '2011-11-25 00:00:00', '杨丽', NULL, '李春光', 146184.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', NULL, '2015-01-10 19:55:08', 3, '2011-12-05 00:00:00', NULL, NULL, NULL, '2', '待样品确认后方可安排生产', 0, 13, 0, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33d4f8b40133d9bea39b002f', '陕西杰信商务发展有限公司', '11JK1060', '2011-11-25 00:00:00', '杨丽', NULL, NULL, 165572.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'COACH HOUSE', '2015-01-10 19:55:08', 3, '2015-10-21 11:07:25', NULL, NULL, NULL, '2', NULL, 0, 12, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33fc4e280133fd81e7d7001d', '陕西杰信商务发展有限公司', '11JK1068', '2011-10-14 00:00:00', '杨丽', NULL, NULL, 103577.30, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'ELAD', '2015-01-10 19:55:08', 3, '2015-10-21 11:07:25', NULL, NULL, NULL, '2', NULL, 0, 11, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a33fc4e280133fd9f8b4e002f', '陕西杰信商务发展有限公司', '11JK1072', '2011-12-20 00:00:00', '杨丽', NULL, NULL, 100799.60, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'BRISSI', '2015-01-10 19:55:08', 3, '2015-10-21 11:07:25', NULL, NULL, NULL, '2', NULL, 2, 13, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a3420e78a013421a693730001', '陕西杰信商务发展有限公司', 'C/4040/11', '2011-12-09 00:00:00', '杨丽', NULL, '李春光', 123400.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'HOME', '2015-01-10 19:55:08', 1, '2012-02-15 00:00:00', NULL, NULL, NULL, '2', NULL, 2, 29, 1, NULL, NULL, '2015-09-02 00:00:00', NULL, '2015-09-02 00:00:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028817a353b8d8e01353d15008d0046', '陕西杰信商务发展有限公司', 'C/4104/11', '2015-01-10 19:55:08', '杨丽', NULL, NULL, 39753.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 ', 'HOME', '2015-01-10 19:55:08', 3, '2015-01-10 19:55:08', NULL, NULL, 'T/T', '2', NULL, 2, 22, 1, NULL, NULL, '2015-01-10 19:55:08', NULL, '2015-01-10 19:55:08', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028828660b1cd900160b1cebb440000', 'ZBZ_59', 'ZBZ_59', '2017-11-26 00:00:00', 'ZBZ_59', 'ZBZ_59', 'ZBZ_59', 20.00, 'ZBZ_59', 'ZBZ_59', '2017-09-19 00:00:00', 3, '2017-09-12 00:00:00', NULL, NULL, 'FOB', '2', 'ZBZ_59', 2, 1, 0, NULL, NULL, '2018-01-01 21:00:03', NULL, '2018-01-01 21:00:03', '1', NULL);
INSERT INTO `co_contract` VALUES ('40288287616082eb0161608728560000', 'xiaoxiao001', 'xiaoxiao001', '2018-02-15 00:00:00', 'xiaoxiao001', 'xiaoxiao001', 'xiaoxiao001', 10.00, 'xiaoxiao001', 'xiaoxiao001', '2018-02-26 00:00:00', 3, '2018-02-21 00:00:00', NULL, NULL, 'FOB', '2', 'xiaoxiao001', 0, 1, 0, NULL, NULL, '2018-02-04 19:15:25', NULL, '2018-02-04 19:15:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('40288287616082eb0161608805650001', 'xiaosan002', 'xiaosan002', '2018-02-05 00:00:00', 'xiaosan002', 'xiaosan002', 'xiaosan002', 30.00, 'xiaosan002', 'xiaosan002', '2018-02-06 00:00:00', 3, '2018-02-06 00:00:00', NULL, NULL, 'xiaosan002', '2', 'xiaosan002', 0, 2, 0, NULL, NULL, '2018-02-04 19:16:22', NULL, '2018-02-04 19:16:22', '1', NULL);
INSERT INTO `co_contract` VALUES ('40288287616a411e01616ab546270006', 'cy001', 'cy001', '2018-02-05 00:00:00', 'cy001', 'cy001', 'cy001', 251.00, 'cy001', 'cy001', '2018-02-19 00:00:00', 3, '2018-02-19 00:00:00', NULL, NULL, 'FOB', '2', 'cy001', 2, 2, 1, '7a02a732-f5b5-4a9e-8e40-2e04d0fc66e5', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2018-02-06 18:42:00', NULL, '2018-02-06 18:42:00', '1', NULL);
INSERT INTO `co_contract` VALUES ('40288287616a411e01616ab60a0e0007', 'cy002', 'cy002', '2018-02-05 00:00:00', 'cy002', 'cy002', 'cy002', 0.00, 'cy002', 'cy002', '2018-02-05 00:00:00', 3, '2018-02-12 00:00:00', NULL, NULL, 'FOB', '2', 'cy002', 1, 0, 0, '10d29bc9-78c1-4831-a21a-4fcfea7d87ce', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2018-02-06 18:42:50', NULL, '2018-02-06 18:42:50', '1', NULL);
INSERT INTO `co_contract` VALUES ('402895c2515129200151514376b80002', 'F', 'F', '2015-01-10 19:55:08', 'F', 'F', 'F', 121.00, 'F', 'F', '2015-01-10 19:55:08', 3, '2015-01-10 19:55:08', NULL, NULL, 'F', '2', 'F', 0, 1, 0, NULL, NULL, '2015-01-10 19:55:08', NULL, '2015-01-10 19:55:08', '1', NULL);
INSERT INTO `co_contract` VALUES ('402899d65088203101508831e1e60000', '中华烟草集团', 'xx-01-xxx-02', '2015-01-10 19:55:08', '郭中华', '郭中华', '郭尔获', 0.00, NULL, 'xx', '2015-10-20 00:00:00', 3, '2015-10-20 00:00:00', NULL, NULL, NULL, '2', NULL, NULL, 0, 0, NULL, NULL, '2015-10-21 10:19:41', NULL, '2015-10-21 10:19:41', '1', NULL);
INSERT INTO `co_contract` VALUES ('402899d650885c420150885d95cb0000', 'J2302', 'J2302', '2015-10-21 10:19:41', 'J2302', 'J2302', 'J2302', 1000.00, 'J2302', 'J2302', '2015-10-21 10:19:41', 3, '2015-10-21 10:19:41', NULL, NULL, 'FOB', '2', 'J2302', 0, 1, 0, '71a5a695-0ba5-4f0d-a0b5-0a304efde944', '4028827c4fb6202a014fb6209c730000', '2015-10-21 11:07:25', NULL, '2015-10-21 11:07:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('402899d650885c420150885e918e0001', 'J24', 'J24', '2015-10-21 11:07:25', 'J24', 'J24', 'J24', 0.00, 'J24', 'J24', '2015-10-21 11:07:25', 3, '2015-10-21 11:07:25', NULL, NULL, 'T/T', '2', 'J24', 0, 0, 0, '424b2d01-d812-4f30-be40-dcda14110118', '4028827c4fb6202a014fb6209c730000', '2015-10-21 11:07:25', NULL, '2015-10-21 11:07:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028a9bd515b2e8201515b3339860000', 'C1', 'C1', '2015-10-21 11:07:25', 'C1', 'C1', 'C1', 100.00, 'C1', 'C1', '2015-10-21 11:07:25', 3, '2015-10-21 11:07:25', NULL, NULL, 'T/T', '2', 'C1', 0, 1, 0, '5758571d-93c6-48f0-9e67-20a442779531', '4028827c4fb645b0014fb64668550000', '2015-12-01 09:41:02', NULL, '2015-10-21 11:07:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028a9bd515b3be301515b3d676f0000', 'D1', 'D1', '2015-10-21 11:07:25', 'D1', 'D1', 'D1', 0.00, 'D1', 'D1', '2015-10-21 11:07:25', 3, '2015-10-21 11:07:25', NULL, NULL, 'L/C', '2', 'D1', 1, 0, 0, '6f9f16c8-827b-4cc8-9e20-210aa82d1fcf', '4028827c4fb645b0014fb64668550000', '2015-10-21 11:07:25', NULL, '2015-10-21 11:07:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('4028d3cf567275410156734fb6480000', 'CS', 'CS', '2016-08-01 00:00:00', 'CS', 'CS', 'CS', 0.00, '测试', 'CS', '2016-08-29 00:00:00', 3, '2016-08-22 00:00:00', NULL, NULL, 'FOB', '2', '测试', 0, 0, 0, 'e0de22fe-2c50-4216-ad75-ed0494d2dc92', '4028827c4fb6202a014fb6209c730000', '2016-08-10 15:16:59', NULL, '2016-08-10 15:16:59', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e81015acf673a015acf6dc97e0000', 'AOP05', 'AOP05', '2017-03-13 00:00:00', 'AOP05', 'AOP05', 'AOP05', 0.00, 'AOP05', 'AOP05', '2017-02-28 00:00:00', 3, '2017-03-20 00:00:00', NULL, NULL, 'FOB', '2', 'AOP05', 2, 0, 0, '6764e5a1-45e5-4229-a72a-7c5d72209b15', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2017-03-15 08:46:03', NULL, '2017-03-15 08:46:03', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e81ec5ac06f0d015ac06fbb850000', 'sz059', 'sz052', '2017-02-27 00:00:00', 'sz053', 'sz058', 'sz054', 1200.00, 'sz056', 'sz051', '2017-02-28 00:00:00', 3, '2017-03-21 00:00:00', NULL, NULL, 'FOB5', '2', 'sz057', 0, 5, 0, NULL, NULL, '2017-03-12 10:53:52', NULL, '2017-03-12 10:53:52', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e840159aa01770159aa3625310001', 'OOP41', 'OOP41', '2017-01-09 00:00:00', 'OOP41', 'OOP41', 'OOP41', 0.00, 'OOP41', 'OOP41', '2017-01-17 00:00:00', 3, '2017-01-24 00:00:00', NULL, NULL, 'FOB', '2', 'OOP41', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2017-01-17 10:16:32', NULL, '2017-01-17 10:16:32', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e840159aa01770159aa3a8ff70002', 'OOP4102', 'OOP4102', '2017-01-18 00:00:00', 'OOP4102', 'OOP4102', 'OOP4102', 0.00, 'OOP4102', 'OOP4102', '2017-01-16 00:00:00', 3, '2017-01-23 00:00:00', NULL, NULL, 'FOB', '2', 'OOP4102', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2017-01-17 10:21:21', NULL, '2017-01-17 10:21:21', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e840159aa01770159aa3b43170003', 'AOP41', 'AOP41', '2017-01-04 00:00:00', 'AOP41', 'AOP41', 'AOP41', 0.00, 'AOP41', 'AOP41', '2017-01-04 00:00:00', 3, '2017-01-24 00:00:00', NULL, NULL, 'FOB', '2', 'AOP41', 0, 0, 0, '6764e5a1-45e5-4229-a72a-7c5d72209b15', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2017-01-17 10:22:07', NULL, '2017-01-17 10:22:07', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e84105823102a01582310fcd70000', 'FFFFB', 'FFFFB', '2016-11-01 00:00:00', 'FFFFB', 'FFFFB', 'FFFFB', 85.00, 'FFFFB', 'FFFFB', '2016-11-03 00:00:00', 3, '2016-11-02 00:00:00', NULL, NULL, 'FOB', '2', 'FFFFB', 0, 1, 8, NULL, NULL, '2016-11-02 11:24:25', NULL, '2016-11-02 11:24:25', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e84175884728c0158848d37230000', 'OOP001', 'OOP001', '2016-11-08 00:00:00', 'OOP001', 'OOP001', 'OOP001', 0.00, 'OOP001', 'OOP001', '2016-11-08 00:00:00', 3, '2016-11-28 00:00:00', NULL, NULL, 'FOB', '2', 'OOP001', 0, 0, 0, NULL, NULL, '2016-11-21 09:43:17', NULL, '2016-11-21 09:43:17', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e84175884728c0158848fffa50001', 'OOP002', 'OOP002', '2016-11-08 00:00:00', 'OOP002', 'OOP002', 'OOP002', 0.00, 'OOP002', 'OOP002', '2016-11-01 00:00:00', 3, '2016-11-29 00:00:00', NULL, NULL, 'FOB', '2', 'OOP002', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-11-21 09:46:19', NULL, '2016-11-21 09:46:19', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e8419593ddcf901593e0b20ed0000', 'OOP232', 'OOP232', '2016-12-12 00:00:00', 'OOP232', 'OOP232', 'OOP232', 0.00, 'OOP232', 'OOP232', '2016-12-12 00:00:00', 3, '2016-12-27 00:00:00', NULL, NULL, 'FOB', '2', 'OOP232', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-12-27 10:10:33', NULL, '2016-12-27 10:10:33', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e8419593e0df101593e0f81780000', 'OOP23201', 'OOP23201', '2016-12-13 00:00:00', 'OOP23201', 'OOP23201', 'OOP23201', 0.00, 'OOP23201', 'OOP23201', '2016-12-14 00:00:00', 3, '2016-12-21 00:00:00', NULL, NULL, 'FOB', '2', 'OOP23201', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-12-27 10:15:20', NULL, '2016-12-27 10:15:20', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e8419593e0df101593e10341b0001', 'AOP232', 'AOP232', '2016-12-13 00:00:00', 'AOP232', 'AOP232', 'AOP232', 0.00, 'AOP232', 'AOP232', '2016-12-06 00:00:00', 3, '2016-12-19 00:00:00', NULL, NULL, 'FOB', '2', 'AOP232', 0, 0, 0, '6764e5a1-45e5-4229-a72a-7c5d72209b15', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-12-27 10:16:06', NULL, '2016-12-27 10:16:06', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e84215827fe1b015828058c360001', 'AOP', 'AOP', '2016-11-22 00:00:00', 'AOP', 'AOPAOP', 'AOP', 30.00, 'AOP', 'AOP', '2016-11-08 00:00:00', 3, '2016-11-29 00:00:00', NULL, NULL, 'L/C', '2', 'AOP', 1, 2, 0, '6764e5a1-45e5-4229-a72a-7c5d72209b15', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-11-03 10:30:02', NULL, '2016-11-03 10:30:02', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e845158dc48ec0158dc49ce140000', 'WWWW', 'C34543543', '2016-12-20 00:00:00', 'YYYYY02', 'QQQQ', 'ZZZZ03', 900.00, 'SSSS05', 'XXXX01', '2016-12-13 00:00:00', 3, '2016-12-28 00:00:00', NULL, NULL, 'FOB04', '2', 'AAAAA', 2, 1, 0, NULL, NULL, '2016-12-08 10:36:14', NULL, '2016-12-08 10:36:14', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e845a58e13c3a0158e156b9210000', 'OOP003', 'OOP003', '2016-12-05 00:00:00', 'OOP003', 'OOP003', 'OOP003', 0.00, 'OOP003', 'OOP003', '2016-12-05 00:00:00', 3, '2016-12-21 00:00:00', NULL, NULL, 'FOB', '2', 'OOP003', 0, 0, 0, '6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '2016-12-09 10:08:26', NULL, '2016-12-09 10:08:26', '1', NULL);
INSERT INTO `co_contract` VALUES ('8a7e84fc587a6c8501587a6d3ed70000', 'JK359', 'JK352', '2016-11-15 00:00:00', 'JK353', 'JK358', 'JK354', 600.00, 'JK356', 'JK351', '2016-11-15 00:00:00', 3, '2016-11-22 00:00:00', NULL, NULL, 'FOB5', '2', 'JK357', 1, 0, 0, NULL, NULL, '2016-11-19 10:32:09', NULL, '2016-11-19 10:32:09', '1', NULL);
INSERT INTO `co_contract` VALUES ('afa09fe9-e1fd-4833-ac67-08dafe79047d', 'a', '1', '2019-07-09 00:00:00', '2', '4', '31', 0.00, '4', '4', '2019-07-31 00:00:00', 3, '2019-07-30 00:00:00', NULL, NULL, '', '1', '1', 0, 0, 0, '25d3a062-5ca1-4203-8537-6a1cff351a8a', 'ff808081613b858301613b8586c60000', '2019-07-06 00:02:51', NULL, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract` VALUES ('bbad9b14-5858-496e-94bd-dd102ecc471d', '2', '2', '2019-06-23 00:00:00', '2', '2', '2', 8.00, '2', '2', '2019-06-23 00:00:00', 3, NULL, NULL, NULL, '2', '2', '2', 0, 1, 2, NULL, NULL, '2019-06-23 14:07:30', NULL, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract` VALUES ('C2C011E96CC3451DAD181AF3372CB80D', 'context', 'context', '2017-11-26 00:00:00', 'context', 'context', 'context', 3.00, 'context', 'context', '2017-12-26 00:00:00', 3, '2018-01-23 00:00:00', NULL, NULL, 'FOB', '2', 'context', 2, 2, 1, '002108e2-9a10-4510-9683-8d8fd1d374ef', '4028827c4fb6202a014fb6209c730000', '2019-03-24 15:30:46', NULL, '2019-03-24 15:30:46', '1', NULL);
INSERT INTO `co_contract` VALUES ('D6E89C7A141B44219F16B6CA6791B64E', 'WWWW1', 'C345435431', '2017-11-26 00:00:00', 'xiaosan001', 'xiaosan001', 'xiaosan001', 0.00, 'aaaa', 'xiaosan001', '2017-12-19 00:00:00', 2, '2018-01-22 00:00:00', NULL, NULL, 'FOB', '2', 'aaa', 0, 0, 0, '002108e2-9a10-4510-9683-8d8fd1d374ef', '4028827c4fb6202a014fb6209c730000', '2019-03-23 22:04:44', NULL, '2019-03-23 22:04:44', '1', NULL);
INSERT INTO `co_contract` VALUES ('ddb325d9-d562-4a2d-b44e-f2efdd6e423f', '1', '1', '2019-06-23 00:00:00', '1', '1', '1', 1.00, '1', '1', '2019-06-23 00:00:00', 3, '2019-06-23 00:00:00', NULL, NULL, '1', '1', '111', 0, 1, 3, '002108e2-9a10-4510-9683-8d8fd1d374ef', '4028827c4fb6202a014fb6209c730000', '2019-07-05 21:30:26', NULL, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract` VALUES ('FC8A89AD11CD426BA7045A20F3E2E95A', '12', '2', '2017-12-04 00:00:00', '3', '4', '5', 12.00, 'aaaa6', '7', '2018-01-22 00:00:00', NULL, '2018-01-22 00:00:00', NULL, NULL, 'FOB', '1', '', 2, 2, 2, '002108e2-9a10-4510-9683-8d8fd1d374ef', '4028827c4fb6202a014fb6209c730000', '2019-03-23 22:07:56', '002108e2-9a10-4510-9683-8d8fd1d374ef', '2019-03-23 22:08:13', '1', NULL);
INSERT INTO `co_contract` VALUES ('ff8080816077bbb3016077bd30b10000', 'WWWW17', 'C34543543122', '2017-11-26 00:00:00', 'YYYYY02123', 'QQQQ18', 'ZZZZ03124', 65.00, 'asas6', 'XXXX01111', '2017-12-19 00:00:00', 3, '2017-12-27 00:00:00', NULL, NULL, 'FOB0415', '1', 'asas9', 2, 3, 1, NULL, NULL, '2017-12-21 14:22:55', NULL, '2017-12-21 14:22:55', '1', NULL);
INSERT INTO `co_contract` VALUES ('ff80808160bab4fa0160bb1b7a4a0007', 'bj002', 'bj002', '2018-01-01 00:00:00', 'bj002', 'bj002', 'bj002', 0.00, 'bj002', 'bj002', '2018-01-29 00:00:00', 3, '2018-01-30 00:00:00', NULL, NULL, 'FOB', '2', 'bj002', 0, 0, 0, 'faa59d6e-2e04-4972-bd4f-fd946ba38b99', '100101', '2018-01-03 16:20:28', NULL, '2018-01-03 16:20:28', '1', NULL);
INSERT INTO `co_contract` VALUES ('ff80808160bab4fa0160bb1d6e760008', 'bj001', 'bj001', '2018-01-10 00:00:00', 'bj001', 'bj001', 'bj001', 10.00, 'bj001', 'bj001', '2018-01-22 00:00:00', 3, '2018-01-23 00:00:00', NULL, NULL, 'FOB', '2', 'bj001', 0, 1, 0, '6bbf3016-54ab-4ab2-b0d3-2d6622ac17eb', '100101', '2018-01-03 16:22:36', NULL, '2018-01-03 16:22:36', '1', NULL);
INSERT INTO `co_contract` VALUES ('ff80808160bab4fa0160bb1e01c50009', 'sy001', 'sy001', '2018-01-02 00:00:00', 'sy001', 'sy001', 'sy001', 0.00, 'sy001', 'sy001', '2018-01-29 00:00:00', 3, '2018-01-29 00:00:00', NULL, NULL, 'sy001', '2', 'sy001', 0, 0, 0, '84b4a1c0-fb52-4fd5-b410-5db1c933d146', '100101101', '2018-01-03 16:23:14', NULL, '2018-01-03 16:23:14', '1', NULL);

-- ----------------------------
-- Table structure for co_contract_product
-- ----------------------------
DROP TABLE IF EXISTS `co_contract_product`;
CREATE TABLE `co_contract_product`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contract_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '冗余',
  `product_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loading_rate` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报运：x/y',
  `box_num` decimal(11, 0) NULL DEFAULT NULL COMMENT '报运',
  `packing_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PCS/SETS',
  `cnumber` decimal(11, 0) NULL DEFAULT NULL,
  `out_number` decimal(11, 0) NULL DEFAULT NULL COMMENT '报运',
  `finished` decimal(11, 0) NULL DEFAULT NULL COMMENT '报运',
  `product_request` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '自动计算: 数量x单价',
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `SYS_C005432`(`contract_id`) USING BTREE,
  INDEX `SYS_C005433`(`factory_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of co_contract_product
-- ----------------------------
INSERT INTO `co_contract_product` VALUES ('12b64b67-c3b5-4933-9549-5fa65159150d', 'bbad9b14-5858-496e-94bd-dd102ecc471d', '12', '平遥远江', '1', 'http://ptl0lgpv8.bkt.clouddn.com/A51A3A9DA159458B9E5791FC051B2D51_', '1', '1', 1, 'PCS', 1, NULL, NULL, '1', 1.00, 1.00, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('297ef1745ac32223015ac322f1f50000', '8a7e81ec5ac06f0d015ac06fbb850000', '10', '晶晨', '1111', '01.png', 'qq', '1/2', 5, 'SETS', 10, NULL, NULL, 'qq', 20.00, 200.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('297ef1745ac32846015ac329327f0000', '8a7e81ec5ac06f0d015ac06fbb850000', '19', '综艺花纸', '111', '03.png', '11', '1', 30, 'SETS', 30, NULL, NULL, '11', 10.00, 300.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('297ef1745ac32ef0015ac331ba510000', '8a7e81ec5ac06f0d015ac06fbb850000', '12', '平遥远江', '111', '05.png', '111', '1', 10, 'SETS', 10, NULL, NULL, '111', 10.00, 100.00, 111, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('298e679c-be87-4eed-9bb5-d21dc2fd1cc1', 'bbad9b14-5858-496e-94bd-dd102ecc471d', '16', '康达', '1', 'http://ptl0lgpv8.bkt.clouddn.com/89F9CBA151B7423D9D90673E2FF92FEC_', '1', '1', 1, 'SETS', 1, NULL, NULL, '1', 1.00, 1.00, 123, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('34161ada-1442-4158-ba7b-88ab93fe7047', 'FC8A89AD11CD426BA7045A20F3E2E95A', '15', '南皮开发', '3', 'http://ptl0lgpv8.bkt.clouddn.com/B31EB27B5E4D42AB828D3FD190D47AEB_', '3', '3', 3, 'PCS', 3, NULL, NULL, '3', 3.00, 9.00, 3, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('3dc7d88c-a219-4541-b5dd-54a7a29ee40c', '2c90c5004ad63735014ad6d204060005', '13', '平遥鸿艺', '1', 'http://${qiniu.rtValue}', '1', '1', 1, 'PCS', 1, NULL, NULL, '1', 1.00, 1.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e0133592355750005', '4028817a3357462e0133591b86ec0002', '2', '光华', '2977', '06.png', 'b5480a29-da8c-41e1-b91c-54a9fdb15834.png', '全明料圆肚糖缸带盖子\\r\\n尺寸：16X36CM高    底径：', 1, 'PCS', 144, 144, 0, NULL, 17.00, 2448.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e0133592355750006', '4028817a3357462e0133591b86ec0002', '2', '光华', '2976', '07.png', 'af417c8a-e44f-406e-b226-194d8a61df75.png', '全明料糖缸带盖子\\r\\n尺寸\n\n：17.5X41CM高   底径：1', 1, 'PCS', 144, 144, 0, NULL, 17.00, 2448.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336cc0879b0011', '4028817a3357462e01336cc0877b0010', '3', '会龙', 'JK1700011', NULL, '05702b8f-6bda-4bca-9c4d-f15c18f279eb.png', '全明料方形黄油缸\\r\\n尺寸：罩子：7.3X8CM高   盘：6', 24, 'PCS', 504, 504, 0, NULL, 4.60, 2318.40, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d3a0be10015', '4028817a3357462e01336d3a0be10014', '7', '天顺', 'JK1014003', '04.png', '699176d9-c242-42d2-8661-9ce712bba97a.png', '全明料盘子，烤鱼白花纸\\r\\n盘子直径：27CM\\r\\n2只/五层内', 2, 'PCS', 1200, 1200, 0, NULL, 7.50, 9000.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d3a0be10016', '4028817a3357462e01336d3a0be10014', '1', '宏艺', 'JK1014001', '01.png', 'a2ffd39f-18d5-4a6b-89a2-bc91df4926f5.png', '全明料大碗，烤鱼白花纸\\r\\n尺寸：23X11CM高\\r\\n1只/五', 1, 'PCS', 1000, 1000, 0, NULL, 16.50, 16500.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d3a0be10018', '4028817a3357462e01336d3a0be10014', '1', '宏艺', 'JK1014005', '09.png', '9ed4ab1e-d425-4b8d-beb3-1fa6dc63d1df.png', '全明料低口杯，烤鱼白花纸\\r\\n尺寸：7.3X10.5CM高\\r\\n', 4, 'PCS', 1800, 1800, 0, NULL, 5.30, 9540.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d3a0be10019', '4028817a3357462e01336d3a0be10014', '1', '宏艺', 'JK1080766-3', '03.png', '21b5e24a-a58a-4a58-a705-1595faeec581.png', '全明料低口杯，烤3种不同的白花纸\\r\\n尺寸：7.3X10.5C', 3, 'PCS', 1800, 1800, 0, NULL, 5.30, 9540.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d523195001b', '4028817a3357462e01336d523195001a', '7', '天顺', '8708/6203', NULL, '1bab511c-4f4c-4de7-8b65-4ccdcd00a569.png', '怪虫小碗，喷紫色，喷漆，喷珠光\\r\\n直径：18CM\\r\\n4只/内', 4, 'PCS', 600, 600, 0, NULL, 6.50, 3900.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a59001c', '4028817a3357462e01336d523195001a', '7', '天顺', '9749/6525', NULL, '143a4aa8-894d-4226-a461-eac712567360.png', '怪虫碗，喷绿色，喷漆，喷珠光\\r\\n直径：18CM\\r\\n4只/内盒', 4, 'PCS', 600, 600, 0, NULL, 6.50, 3900.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a59001d', '4028817a3357462e01336d523195001a', '7', '天顺', '9226/6116', NULL, 'fcf3f5a9-a405-4f33-abb9-f317c60f1453.png', '海星盘，喷绿色，喷漆，喷珠光\\r\\n直径：31CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.00, 4488.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a59001e', '4028817a3357462e01336d523195001a', '7', '天顺', '9748/6115', NULL, '657ac46a-bd23-4a2d-9abe-c552a8fc3727.png', '海星盘，喷蓝色，喷漆，喷珠光\\r\\n直径：31CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.00, 4488.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a59001f', '4028817a3357462e01336d523195001a', '7', '天顺', '9956/6308', NULL, '1ca7fc1c-aad2-4f1e-8c3b-9a1009e22c04.png', '竹节碗，喷蓝色，喷漆，喷珠光\\r\\n直径：31CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.50, 4692.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a590020', '4028817a3357462e01336d523195001a', '7', '天顺', '9954/6309', NULL, '1e15e517-af2a-45c9-8c1e-1f1b592f5f79.png', '竹节碗，喷绿色，喷漆，喷珠光\\r\\n直径：31CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.50, 4692.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a590021', '4028817a3357462e01336d523195001a', '7', '天顺', '8709/6204', NULL, '1a6770a7-033c-4b98-9e2a-60cd2a5081c3.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\\r\\n直径：18CM\\r\\n4只/内', 4, 'PCS', 600, 600, 0, NULL, 6.50, 3900.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a590022', '4028817a3357462e01336d523195001a', '7', '天顺', '9955/6105', NULL, '15c6d6ad-3608-4d73-83f3-23f605123b90.png', '竹节碗，喷紫色，喷漆，喷珠光\\r\\n直径：31CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.50, 4692.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3357462e01336d5e8a590023', '4028817a3357462e01336d523195001a', '7', '天顺', '9227/6092', NULL, '0ffed7a5-6fd6-4b36-9387-7108bb408fdf.png', '海星盘，喷紫色，喷漆，喷珠光\\r\\n直径：30CM\\r\\n4只/内盒', 4, 'PCS', 408, 408, 0, NULL, 11.00, 4488.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133813f25a30002', '4028817a33812ffd0133813f25940001', '4', '精艺', '4993', '22.png', '3feb6071-7835-48b6-beca-e54202221c3b.png', '全明料死模风灯，电镀花银喷绿色 \\r\\n明料挺底\\r\\n尺寸：11.', 1, 'PCS', 300, 300, 0, NULL, 8.50, 2550.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133813f25a30003', '4028817a33812ffd0133813f25940001', '4', '精艺', '4994', '23.png', '56ada31d-acfc-4261-b28d-8be65ba2a21e.png', '全明料死模风灯，电镀花银喷蓝色\\r\\n明料挺底\\r\\n尺寸：11.5', 1, 'PCS', 300, 300, 0, NULL, 8.50, 2550.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133813f25a30004', '4028817a33812ffd0133813f25940001', '4', '精艺', '4995', '24.png', '9eb0c66c-d682-4f19-b89a-1a4808da5456.png', '全明料死模风灯，电镀花银喷紫色\\r\\n明料挺底\\r\\n尺寸：11.5', 1, 'PCS', 300, 300, 0, NULL, 8.50, 2550.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc40005', '4028817a33812ffd0133813f25940001', '2', '光华', '9868', '01.png', 'ba10c6b0-34b7-4911-a45c-cc282cf8072d.png', '全明料喇叭底糖缸配盖子\\r\\n尺寸：16X40CM高\\r\\n1只/上', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 27, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc40006', '4028817a33812ffd0133813f25940001', '7', '天顺', '5099', '14.png', 'd38c8874-e641-4c59-9f6d-eb07df231d44.png', '全明料钻石蛋糕盘粘底座\\r\\n喷蓝色，喷漆\\r\\n尺寸：23X11.', 1, 'PCS', 300, 300, 0, NULL, 11.00, 3300.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc40007', '4028817a33812ffd0133813f25940001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5094', '20.png', '662d9320-a8b7-4957-8d73-\n\ne4560e12e0e7.png', '全明料冰花风灯，粘电镀底座  \\r\\n尺寸：15.8X32CM高', 1, 'PCS', 300, 300, 0, NULL, 14.50, 4350.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc40008', '4028817a33812ffd0133813f25940001', '2', '光华', '5189', '02.png', 'a2a503a3-f0cd-49b4-b05c-8ea55ecbe2bf.png', '全明料竖棱风灯，粘电镀底座\\r\\n底座由我司提供\\r\\n尺寸：20X', 1, 'PCS', 300, 300, 0, NULL, 14.00, 4200.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc40009', '4028817a33812ffd0133813f25940001', '4', '精艺', '5331', '25.png', '1b211d97-1def-49c6-90a8-8097bbd07f68.png', '全明料死模风灯，电镀花银喷绿色\\r\\n\\r\\n尺寸：17X23CM高', 1, 'PCS', 300, 300, 0, NULL, 11.50, 3450.00, 13, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacc4000a', '4028817a33812ffd0133813f25940001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5095', '21.png', '7b5d7395-40b4-45ad-9c42-\n\nc7050e232448.png', '全明料冰花风灯，粘明料底座 \\r\\n尺寸：15.8X32CM高\\r', 1, 'PCS', 300, 300, 0, NULL, 14.00, 4200.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4000b', '4028817a33812ffd0133813f25940001', '2', '光华', '843MA', '03.png', 'c0229e90-0a5b-438d-8b07-4acd238b142b.png', '全明料喇叭底糖缸，带盖子\\r\\n盖子：10CMX10.3CM高', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 21, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4000c', '4028817a33812ffd0133813f25940001', '4', '精艺', '4997', '27.png', '0fdad1e1-452c-4ae4-a354-49688bd41778.png', '全明料死模风灯，电镀花银喷蓝色  \\r\\n明料挺底  \\r\\n尺寸：11', 1, 'PCS', 300, 300, 0, NULL, 10.50, 3150.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4000d', '4028817a33812ffd0133813f25940001', '4', '精艺', '4996', '26.png', '7ae6c20e-0f57-4fab-9e40-22d1a486e943.png', '全明料死模风灯，电镀花银喷绿色\\r\\n明料挺底\\r\\n尺寸：11.5', 1, 'PCS', 300, 300, 0, NULL, 10.50, 3150.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4000e', '4028817a33812ffd0133813f25940001', '2', '光华', '600MA', '05.png', '958fe4fb-db40-4977-bf2e-2c2db29d65f3.png', '全明料蛋糕盘+罩子,磨口抛光\\r\\n蛋糕罩子尺寸：17.5X15', 1, 'PCS', 600, 600, 0, NULL, 18.00, 10800.00, 17, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4000f', '4028817a33812ffd0133813f25940001', '2', '光华', '602MA', '06.png', '624ab3d2-12f3-4dd8-b438-c03a3018b170.png', '全明平光蛋糕盘+罩子,磨口抛光\\r\\n蛋糕罩子尺寸：17.5X1', 1, 'PCS', 600, 600, 0, NULL, 19.00, 11400.00, 18, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40010', '4028817a33812ffd0133813f25940001', '2', '光华', '8759', '07.png', 'f92f57f8-65de-42be-9814-bad100059d23.png', '全明料竖棱糖缸配盖子\\r\\n尺寸：16.5X40CM高\\r\\n1只/', 1, 'PCS', 600, 600, 0, NULL, 15.00, 9000.00, 25, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40011', '4028817a33812ffd0133813f25940001', '2', '光华', '6998', '04.png', '3be8121c-867d-4745-bebf-3844e6a05589.png', '全明料蛋糕盘+蛋糕罩 \\r\\n盘子沿电镀，罩子上珠描白金。\\r\\n尺', 1, 'PCS', 300, 300, 0, NULL, 19.00, 5700.00, 20, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40012', '4028817a33812ffd0133813f25940001', '2', '光华', '5118', '08.png', '635cdf31-8e48-45f3\n\n-886c-5fffd532175b.png', '全明料蛋糕盘+罩子\\r\\n罩子上烤白金字母花纸（SWEETS)\\r', 1, 'PCS', 300, 300, 0, NULL, 16.00, 4800.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40013', '4028817a33812ffd0133813f25940001', '7', '天顺', '8708', '15.png', '39b3ac6f-fb30-4b37-8fff-a07fb88aef15.png', '怪虫小碗，喷紫色，喷漆，喷珠光\\r\\n尺寸：18CX9CM高\\r\\n', 1, 'PCS', 600, 600, 0, NULL, 6.50, 3900.00, 23, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40014', '4028817a33812ffd0133813f25940001', '4', '精艺', '5336', '29.png', '466ba3d1-94b5-44ca-92c9-98631bf3b92b.png', '全明料死模风灯，电镀花银喷绿色  \\r\\n   \\r\\n尺寸：14.5X', 1, 'PCS', 300, 300, 0, NULL, 8.00, 2400.00, 14, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40015', '4028817a33812ffd0133813f25940001', '4', '精艺', '5337', '28.png', '78ff069b-327e-488e-a629-b76bed0efb98.png', '全明料死模风灯，电镀花银喷蓝色\\r\\n\\r\\n尺寸：14.5X20C', 1, 'PCS', 300, 300, 0, NULL, 8.00, 2400.00, 15, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40016', '4028817a33812ffd0133813f25940001', '2', '光华', '603MA', '09.png', 'ea12f8ba-afc1-4651-bc10-432c85fcb091.png', '全明平光蛋糕盘+罩子,磨口抛光\\r\\n蛋糕罩子尺寸：17.5X1', 1, 'PCS', 600, 600, 0, NULL, 20.00, 12000.00, 19, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40017', '4028817a33812ffd0133813f25940001', '2', '光华', '5117', '10.png', '4f7fdc19-c276-47da-aced-5cec4e02be08.png', '全明料蛋糕盘+罩子\\r\\n罩上烤白金字母花纸（SWEETS)\\r\\n', 1, 'PCS', 300, 300, 0, NULL, 17.00, 5100.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40018', '4028817a33812ffd0133813f25940001', '4', '精艺', '5400', '31.png', '3b810117-19c6-446e-886f-d3b2fd5ba411.png', '全明料死模风灯，电镀花银喷蓝色\\r\\n \\r\\n尺寸：17X23CM', 1, 'PCS', 300, 300, 0, NULL, 11.50, 3450.00, 16, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd40019', '4028817a33812ffd0133813f25940001', '4', '精艺', '4998', '30.png', '0c400655-fb24-4781-aae1-eaa30e31ad4c.png', '全明料死模风灯，电镀花银喷紫色\\r\\n明料挺底\\r\\n尺寸：11.5', 1, 'PCS', 300, 300, 0, NULL, 10.50, 3150.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4001a', '4028817a33812ffd0133813f25940001', '2', '光华', '8760', '11.png', '2aaba753-e5d2-4c42-badf-cc16acf81d2b.png', '全明料竖棱糖缸配盖子\\r\\n尺寸：16.5X51CM高\\r\\n\\r\\n1', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 26, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4001b', '4028817a33812ffd0133813f25940001', '2', '光华', '844MA', '12.png', '6f6f097f-ae83-4ecb-80c6-ec1e93353985.png', '全明料糖缸带盖子\\r\\n盖子：9.3X13.3CM高 壁厚3MM', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 22, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4001c', '4028817a33812ffd0133813f25940001', '2', '光华', '9869', '13.png', 'be81bc6b-610b-45fa-bb8b-5156d8de9d52.png', '全明料喇叭底糖缸配盖子\\r\\n尺寸：19X40CM高\\r\\n1只/上', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 28, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133816aacd4001d', '4028817a33812ffd0133813f25940001', '7', '天顺', '8709', '16.png', 'd33ee976-4d35-4990-ae41-eebee8989f5a.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\\r\\n尺寸：18CMX9CM高\\r', 1, 'PCS', 600, 600, 0, NULL, 6.50, 3900.00, 24, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd013382048ff80026', '4028817a33812ffd013382048ff80024', '1', '宏艺', '20-37-265/JK1050163', NULL, 'e96667ee-d5e9-43d1-bac0-758593c56629.png', '全明料蛋糕盘+罩子\\r\\n罩子烤蒙砂白花纸，花纸我司供\\r\\n尺寸：', 1, 'PCS', 1200, 1200, 0, NULL, 11.00, 13200.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133821a8eb5002c', '4028817a33812ffd0133821a8eb5002b', '1', '宏艺', 'JK110102', NULL, 'e4df38d5-f0d9-4f91-99c6-240addaa36a3.png', '全明料平光蛋糕罩配钻石盘子\\r\\n罩子上粘小鸟，小鸟和钻石盘我司', 1, 'PCS', 150, 150, 0, NULL, 32.00, 4800.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33812ffd0133821a8eb5002d', '4028817a33812ffd0133821a8eb5002b', '1', '宏艺', 'JK110101', NULL, 'bfd61df4-61b5-492c-b11c-7d19b63f5cf1.png', '全明料平光蛋糕罩配钻石盘子\\r\\n罩子上粘小鸟，小鸟和钻石盘我司', 1, 'PCS', 152, 152, 0, NULL, 22.00, 3344.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e88000e', '4028817a33d4f8b40133d9878e88000d', '13', '平遥鸿艺', 'JK1060019/11990', NULL, NULL, '全明料密直棱低口杯\\r\\n尺寸：9X10.5CM高\\r\\n4只/五层', 4, 'PCS', 696, 696, 0, NULL, 5.00, 3480.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e88000f', '4028817a33d4f8b40133d9878e88000d', '13', '平遥鸿艺', 'JK103134/11989', NULL, NULL, '全明料密直棱香槟杯\\r\\n尺寸：9X21CM高\\r\\n4只/五层内盒', 4, 'PCS', 832, 832, 0, NULL, 6.00, 4992.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880010', '4028817a33d4f8b40133d9878e88000d', '1', '宏艺', 'JK1050152/11306', NULL, NULL, '全明料酒杯，口部描1CM白金边\\r\\n尺寸：7X26CM高\\r\\n4', 4, 'PCS', 608, 608, 0, NULL, 8.50, 5168.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880011', '4028817a33d4f8b40133d9878e88000d', '2', '光华', 'JK103233/11301', NULL, NULL, '全明料糖缸配盖子，糖缸刻钻石描亮油\\r\\n尺寸：11X30.5C', 1, 'PCS', 12, 12, 0, NULL, 18.00, 216.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880012', '4028817a33d4f8b40133d9878e88000d', '1', '宏艺', 'JK1050068/11314', NULL, NULL, '全明料马丁尼，口部描1CM白金边\\r\\n尺寸：12X19CM高\\r', 4, 'PCS', 608, 608, 0, NULL, 11.20, 6809.60, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880013', '4028817a33d4f8b40133d9878e88000d', '2', '光华', 'JK1050317/12006', NULL, NULL, '全明料糖缸配盖子，糖缸刻交叉麦穗花\\r\\n尺寸：10.5X14C', 1, 'PCS', 168, 168, 0, NULL, 9.50, 1596.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880015', '4028817a33d4f8b40133d9878e88000d', '2', '光华', 'JK1050316/12005', NULL, 'undefined', '全明料糖缸配盖子，糖缸刻交叉麦穗花\\r\\n尺寸：15X15CM高', 1, 'PCS', 162, 162, 0, NULL, 12.50, 2025.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880016', '4028817a33d4f8b40133d9878e88000d', '2', '光华', 'JK1050201/12078', NULL, 'undefined', '全明料蛋糕罩配盘子，罩子上烤花纸\\r\\n罩子尺寸：15X11.5', 1, 'PCS', 204, 204, 0, NULL, 18.00, 3672.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880017', '4028817a33d4f8b40133d9878e88000d', '1', '宏艺', 'JK1050154/11308', NULL, 'undefined', '全明料香槟杯，口部描1CM白金边\\r\\n尺寸：5X29CM高\\r\\n', 4, 'PCS', 704, 704, 0, NULL, 7.50, 5280.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9878e880018', '4028817a33d4f8b40133d9878e88000d', '13', '平遥鸿艺', 'JK103136/11988', NULL, 'undefined', '全明料密直棱酒杯，底厚要求5MM\\r\\n尺寸：9X17.5CM高', 4, 'PCS', 928, 928, 0, NULL, 6.30, 5846.40, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001a', '4028817a33d4f8b40133d991a50d0019', 'ff808081301885760130189e47ca0013', '文水志远', 'JK1040446/JK446', NULL, 'undefined', '全明料糖缸配盖子，普通底\\r\\n尺寸：16.5X50CM高\\r\\n1', 1, 'PCS', 600, 600, 0, NULL, 25.00, 15000.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001b', '4028817a33d4f8b40133d991a50d0019', '2', '光华', 'JK1040364/JK364', NULL, 'undefined', '全明料糖缸配盖子\\r\\n尺寸：19X39CM高\\r\\n1只/上下保丽', 1, 'PCS', 600, 600, 0, NULL, 25.00, 15000.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001c', '4028817a33d4f8b40133d991a50d0019', '2', '光华', 'JK1050316/JK316', NULL, 'undefined', '全明料糖缸，刻麦穗花不描亮油。\\r\\n盖子电镀，电镀我司安排。\\r', 1, 'PCS', 600, 600, 0, NULL, 12.00, 7200.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001d', '4028817a33d4f8b40133d991a50d0019', '1', '宏艺', 'JK1050166/JK166', NULL, 'undefined', '全明料糖缸，刻花不描亮油。\\r\\n尺寸：12.5X26.5CM高', 1, 'PCS', 600, 600, 0, NULL, 16.00, 9600.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001e', '4028817a33d4f8b40133d991a50d0019', '4', '精艺', 'JK103694/JK694', NULL, 'undefined', '套6全明料死模低口杯\\r\\n尺寸：8X12.5CM高\\r\\n1套/白', 1, 'PCS', 480, 480, 0, NULL, 24.00, 11520.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d001f', '4028817a33d4f8b40133d991a50d0019', 'ff808081301885760130189e47ca0013', '文水志远', 'JK103956/JK956', NULL, 'undefined', '全明料蛋糕罩配盘子\\r\\n盘子我司安排\\r\\n罩子尺寸：33X14X', 1, 'PCS', 480, 480, 0, NULL, 27.00, 12960.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d991a50d0020', '4028817a33d4f8b40133d991a50d0019', '4', '精艺', 'JK103693/JK693', NULL, 'undefined', '套6全明料死模低口杯\\r\\n尺寸：7.3X10.5CM高\\r\\n1套', 1, 'PCS', 184, 184, 0, NULL, 21.00, 3864.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b0029', '4028817a33d4f8b40133d991a50d0019', '9', '华艺', 'J859101549/JK549', NULL, NULL, '全明料蛋糕盘\\r\\n尺寸：直径33.5CM\\r\\n2只/五层内盒  ', 2, 'PCS', 1200, 1200, 0, NULL, 10.00, 12000.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b002a', '4028817a33d4f8b40133d991a50d0019', '4028817a33d4f8b40133d9989f5e0024', '民鑫', 'JK1060338/JK338', NULL, NULL, '全明料机压直棱糖缸\\r\\n尺寸：15.5X15.5CM 高\\r\\n1', 1, 'PCS', 2400, 2400, 0, NULL, 7.15, 17160.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b002b', '4028817a33d4f8b40133d991a50d0019', '9', '华艺', 'JK103209/JK209', NULL, NULL, '全明料2层钻石蛋糕盘，配喷塑铁架\\r\\n铁架我司供\\r\\n大盘尺寸：', 1, 'PCS', 1200, 1200, 0, NULL, 13.00, 15600.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b002c', '4028817a33d4f8b40133d991a50d0019', '9', '华艺', 'JK1031007-LP/JK007/1', NULL, NULL, '全明料钻石蛋糕盘，粘底座\\r\\n尺寸：30X11.5CM高\\r\\n1', 1, 'PCS', 600, 600, 0, NULL, 10.50, 6300.00, 13, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b002d', '4028817a33d4f8b40133d991a50d0019', '1', '宏艺', 'JK1050128/JK0128', NULL, NULL, '全明料三层糖缸，刻麦穗花\\r\\n尺寸：12X22.5CM\\r\\n1套', 1, 'PCS', 600, 600, 0, NULL, 18.50, 11100.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9be557b002e', '4028817a33d4f8b40133d991a50d0019', '2', '光华', 'JK103176/JK176', NULL, NULL, '全明料糖缸，刻花，不带盖子\\r\\n尺寸：20X14.5CM高\\r\\n', 1, 'PCS', 480, 480, 0, NULL, 18.50, 8880.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0030', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK1050806/JK032', NULL, 'undefined', '套6全明料香槟杯，电镀渐变色\\r\\n尺寸：5.7X25CM高\\r\\n', 1, 'PCS', 320, 320, 0, NULL, 31.80, 10176.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0031', '4028817a33d4f8b40133d9bea39b002f', '4', '精艺', 'JK045/JK1060426', NULL, 'undefined', '套6紫色碗明挺底香槟杯\\r\\n尺寸：8X17CM高\\r\\n1套/五层', 1, 'PCS', 240, 240, 0, NULL, 33.60, 8064.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0032', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK1050807/JK033', NULL, 'undefined', '套6全明料酒杯，电镀渐变色\\r\\n尺寸：8X24CM高\\r\\n1套/', 1, 'PCS', 300, 300, 0, NULL, 34.80, 10440.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0033', '4028817a33d4f8b40133d9bea39b002f', '4028817a33d4f8b40133d9989f5e0024', '民鑫', 'JK040/JK1060338', NULL, 'undefined', '全明料机压竖棱糖缸\\r\\n尺寸：15.5X15.5CM\\r\\n1只/', 1, 'PCS', 3000, 3000, 0, NULL, 8.04, 24120.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0034', '4028817a33d4f8b40133d9bea39b002f', '4', '精艺', 'JK044/JK1060425', NULL, 'undefined', '套6紫色碗明挺底红酒杯\\r\\n尺寸：8X20CM高\\r\\n1套/五层', 1, 'PCS', 240, 240, 0, NULL, 34.80, 8352.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0035', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK019/J859100824', NULL, 'undefined', '套4全明料酒杯，口部描2.5CM宽白金边\\r\\n尺寸：8.4X2', 1, 'PCS', 320, 320, 0, NULL, 58.00, 18560.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0036', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK018/J859100826', NULL, 'undefined', '套4全明料香槟杯，口部描2.5CM宽白金边\\r\\n尺寸：4.7X', 1, 'PCS', 300, 300, 0, NULL, 40.00, 12000.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0037', '4028817a33d4f8b40133d9bea39b002f', '3', '会龙', 'JK041/JK1060339', NULL, 'undefined', '全明料蒙古包糖缸\\r\\n尺寸：9X11CM高\\r\\n1只/五层内盒 ', 1, 'PCS', 3000, 3000, 0, NULL, 4.00, 12000.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33d4f8b40133d9bea39b0038', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK020/J859100825', NULL, 'undefined', '套4全明料马丁尼，口部描2.5CM白金边\\r\\n尺寸：11.8X', 1, 'PCS', 300, 300, 0, NULL, 70.00, 21000.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33f7960d0133f8d912ba0005', '4028817a33812ffd0133821a8eb5002b', '9', '华艺', 'JK110102', NULL, NULL, '全明料钻石盘子\\r\\n盘子尺寸：29.5X11.5CM\\r\\n安全包', 1, 'PCS', 150, 150, 0, NULL, 10.00, 1500.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33f7960d0133f8d912ba0006', '4028817a33812ffd0133821a8eb5002b', '9', '华艺', 'JK110101', NULL, NULL, '全明料钻石盘子\\r\\n盘子尺寸：23X11.5CM\\r\\n安全包装送', 1, 'PCS', 152, 152, 0, NULL, 8.50, 1292.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fcdb13f4000e', '4028817a33d4f8b40133d9bea39b002f', '1', '宏艺', 'JK052/JK1070691', NULL, NULL, '套4全明料马丁尼\\r\\n尺寸：12.5X19.5CM高\\r\\n1套/', 1, 'PCS', 300, 300, 0, NULL, 30.00, 9000.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fcdb13f4000f', '4028817a33d4f8b40133d9bea39b002f', '5', '汇越', 'JK050/JK1070690', NULL, NULL, '套4全明料白酒杯，钻石挺\\r\\n尺寸：8.6X23CM高\\r\\n1套', 1, 'PCS', 300, 300, 0, NULL, 23.20, 6960.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fcdb13f40010', '4028817a33d4f8b40133d9bea39b002f', '2', '光华', 'JK046/JK1050201', NULL, NULL, '全明料蛋糕盘+罩子\\r\\n罩子上烤蒙砂白花纸\\r\\n距口部1CM处，', 1, 'PCS', 600, 600, 0, NULL, 19.00, 11400.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d7001e', '4028817a33fc4e280133fd81e7d7001d', '2', '光华', '169280', NULL, NULL, '全明料蛋糕盘+罩子  \\r\\n距离罩子口部3CM烤字母花纸  \\r\\n', 1, 'PCS', 100, 100, 0, NULL, 32.00, 3200.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d7001f', '4028817a33fc4e280133fd81e7d7001d', '1', '宏艺', 'J859102682/113860', NULL, NULL, '全明料糖缸，烤字母白花纸\\r\\nSTORAGE ONLY\\r\\n尺寸', 1, 'PCS', 300, 300, 0, NULL, 16.00, 4800.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70020', '4028817a33fc4e280133fd81e7d7001d', '4', '精艺', 'JK1080435', NULL, NULL, '全明料球形瓶子，刻花，描亮油\\r\\n\\r\\n尺寸:9.5X10.5C', 1, 'PCS', 1008, 1008, 0, NULL, 9.00, 9072.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70021', '4028817a33fc4e280133fd81e7d7001d', '2', '光华', '123540', NULL, NULL, '全明料蛋糕盘子+罩子\\r\\n罩子上烤字母（HIGH TEA）花纸', 1, 'PCS', 100, 100, 0, NULL, 22.00, 2200.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70022', '4028817a33fc4e280133fd81e7d7001d', '3', '会龙', 'JK1052446/158080', NULL, NULL, '全明料酒壶，杯身烤白色字母花纸\\r\\n \\r\\n尺寸：7.8X22.', 1, 'PCS', 702, 702, 0, NULL, 16.50, 11583.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70023', '4028817a33fc4e280133fd81e7d7001d', 'ff808081301885760130189e47ca0013', '文水志远', '62145', NULL, NULL, '全明料蛋糕罩子\\r\\n\\r\\n尺寸：30.3X11.5X15CM\\r\\n', 1, 'PCS', 504, 504, 0, NULL, 27.00, 13608.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70024', '4028817a33fc4e280133fd81e7d7001d', 'ff808081301885760130189e47ca0013', '文水志远', '62146/F-57', NULL, NULL, '全明料蛋糕罩子，刻麦穗花\\r\\n\\r\\n尺寸：30.3X11.5X1', 1, 'PCS', 504, 504, 0, NULL, 28.50, 14364.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70025', '4028817a33fc4e280133fd81e7d7001d', 'ff808081301885760130189e47ca0013', '文水志远', 'JKF081342/62180', NULL, NULL, '全明料蛋糕罩子+盘子\\r\\n盘子我司安排\\r\\n尺寸：30.3X11', 1, 'PCS', 652, 652, 0, NULL, 27.00, 17604.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70026', '4028817a33fc4e280133fd81e7d7001d', '1', '宏艺', 'JK10501218/160380', NULL, NULL, '全明料糖缸带盖子，糖缸身上烤\\r\\n白色字母花纸\\r\\n尺寸：12.', 1, 'PCS', 600, 600, 0, NULL, 15.00, 9000.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd81e7d70027', '4028817a33fc4e280133fd81e7d7001d', '1', '宏艺', 'JK1040009/141760', NULL, NULL, '全明料三层糖缸，烤字母花纸\\r\\n花纸我司安排\\r\\n尺寸：16.5', 1, 'PCS', 300, 300, 0, NULL, 35.00, 10500.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd89fcc00028', '4028817a33fc4e280133fd81e7d7001d', '7', '天顺', 'JKF081342/62180', NULL, NULL, '全明料蛋糕盘配罩子\\r\\n罩子由文水志远厂提供\\r\\n尺寸：33X1', 1, 'PCS', 652, 652, 0, NULL, 10.40, 6780.80, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd9f8b4e0030', '4028817a33fc4e280133fd9f8b4e002f', '15', '南皮开发', 'JK1040158/12068', NULL, NULL, '明料灯宫细转棱蜡台\\r\\n\\r\\n尺寸：6X26CM高\\r\\n4只/三层', 4, 'PCS', 400, 400, 0, NULL, 9.70, 3880.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd9f8b4e0031', '4028817a33fc4e280133fd9f8b4e002f', '2', '光华', 'JK1050317/12006', NULL, NULL, '明料糖缸配明料盖子\\r\\n缸身刻交叉麦穗花\\r\\n尺寸：10.5X1', 1, 'PCS', 504, 504, 0, NULL, 9.50, 4788.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd9f8b4e0032', '4028817a33fc4e280133fd9f8b4e002f', '2', '光华', 'JK1050316/12005', NULL, NULL, '明料糖缸配明料盖子\\r\\n缸身刻交叉麦穗花\\r\\n尺寸：15X15C', 1, 'PCS', 348, 348, 0, NULL, 12.50, 4350.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fd9f8b4e0033', '4028817a33fc4e280133fd9f8b4e002f', '2', '光华', 'JK103233/11301', NULL, NULL, '全明料糖缸刻钻石，描亮油\\r\\n尺寸：11X30.5CM高\\r\\n1', 1, 'PCS', 408, 408, 0, NULL, 18.00, 7344.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fdb370c00034', '4028817a33812ffd0133813f25940001', '7', '天顺', '9749', '17.png', '怪虫小碗喷绿色，喷漆', '怪虫小碗喷绿色，喷漆，喷珠光\\r\\n尺寸：18X9CM高\\r\\n4只', 4, 'PCS', 304, 304, 0, NULL, 6.50, 1976.00, 29, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fdb370cf0035', '4028817a33812ffd0133813f25940001', '7', '天顺', '9749', '18.png', NULL, '怪虫小碗喷绿色，喷漆，喷珠光\\r\\n尺寸：18X9CM高\\r\\n4只', 4, 'PCS', 304, 304, 0, NULL, 6.50, 1976.00, 30, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fdb370df0036', '4028817a33812ffd0133813f25940001', '7', '天顺', '9749', '19.png', NULL, '怪虫小碗喷绿色，喷漆，喷珠光\\r\\n尺寸：18X9CM高\\r\\n4只', 4, 'PCS', 304, 304, 0, NULL, 6.50, 1976.00, 31, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f0037', '4028817a33fc4e280133fd9f8b4e002f', '2', '光华', 'JK1050201/12078', NULL, NULL, '全明料蛋糕罩配盘子,罩子上烤蒙砂白花纸\\r\\n盘子尺寸：16X1', 1, 'PCS', 402, 402, 0, NULL, 18.00, 7236.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f0038', '4028817a33fc4e280133fd9f8b4e002f', '13', '平遥鸿艺', 'JK1050198/12860', NULL, NULL, '全明料酒杯，\\r\\n距口部1.5CM烤蒙砂白花纸\\r\\n尺寸：11X', 4, 'PCS', 400, 400, 0, NULL, 6.50, 2600.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f0039', '4028817a33fc4e280133fd9f8b4e002f', '2', '光华', 'JK169340/13076', NULL, NULL, '全明料蛋糕罩配盘子，罩子上烤蒙砂白花纸    \\r\\n尺寸：25X2', 1, 'PCS', 200, 200, 0, NULL, 36.00, 7200.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003a', '4028817a33fc4e280133fd9f8b4e002f', 'ff808081301885760130189e47ca0013', '文水志远', 'JK1400002/13077', NULL, NULL, '全明料竖棱酒壶，磨口抛光\\r\\n不可有碰口，棱要明显\\r\\n尺寸：1', 1, 'PCS', 1200, 1200, 0, NULL, 13.00, 15600.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003b', '4028817a33fc4e280133fd9f8b4e002f', '15', '南皮开发', 'JK5100005-F/13079', NULL, NULL, '全明料竖棱香槟杯\\r\\n尺寸：5.5X24.5CM高\\r\\n4只/三', 4, 'PCS', 1200, 1200, 0, NULL, 10.00, 12000.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003c', '4028817a33fc4e280133fd9f8b4e002f', '13', '平遥鸿艺', 'JK1050195/12859', NULL, NULL, '全明料香槟杯\\r\\n距口部1.5CM烤蒙砂白花纸\\r\\n尺寸：8X2', 4, 'PCS', 400, 400, 0, NULL, 6.00, 2400.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003d', '4028817a33fc4e280133fd9f8b4e002f', '15', '南皮开发', 'JK5100004/13078', NULL, NULL, '全明料直棱酒杯\\r\\n尺寸：9.5X18.5CM高\\r\\n4只/三层', 4, 'PCS', 1200, 1200, 0, NULL, 8.80, 10560.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003e', '4028817a33fc4e280133fd9f8b4e002f', '15', '南皮开发', 'JK5300006/13080', NULL, NULL, '全明料竖棱糖缸，盖子上带圆头\\r\\n尺寸：9X8CM高\\r\\n1只/', 1, 'PCS', 1200, 1200, 0, NULL, 8.50, 10200.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a33fc4e280133fde6504f003f', '4028817a33fc4e280133fd9f8b4e002f', '15', '南皮开发', 'JK5300007/13081', NULL, NULL, '全明料竖棱糖缸，盖子上带圆头\\r\\n尺寸：9X12CM高\\r\\n1只', 1, 'PCS', 1200, 1200, 0, NULL, 9.80, 11760.00, 13, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820002', '4028817a3420e78a013421a693730001', '4', '精艺', '4995', NULL, 'c7801815-993e-43f0-8ac5-d5d788f34e74.png', '全明料死模风灯，电镀花银喷紫色\\r\\n明料挺底，电镀喷色我司安排', 1, 'PCS', 300, 300, 1, NULL, 8.50, 2550.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820003', '4028817a3420e78a013421a693730001', '4', '精艺', '4994', NULL, 'ae3e208e-8037-41dc-89d3-6727d1403c4c.png', '全明料死模风灯，电镀花银喷浅海蓝\\r\\n明料挺底,电镀喷色我司安', 1, 'PCS', 300, 300, 1, NULL, 8.50, 2550.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820004', '4028817a3420e78a013421a693730001', '4', '精艺', '4996', NULL, '09b2983e-67b1-4f42-b6ec-0efa99b90cae.png', '全明料死模风灯，电镀花银喷浅绿色\\r\\n明料挺底，电镀喷色我司安', 1, 'PCS', 300, 300, 1, NULL, 10.50, 3150.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820005', '4028817a3420e78a013421a693730001', '2', '光华', '5118', NULL, 'd2f2ab57-ca50-43ff-87fd-9b6b38d14adc.png', '全明料蛋糕盘+罩子  \\r\\n罩子上烤白金字母花纸（SWEETS)', 1, 'PCS', 300, 300, 1, NULL, 16.00, 4800.00, 14, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820006', '4028817a3420e78a013421a693730001', '4', '精艺', '4993', NULL, '49a9221c-aa5d-42a6-997c-9671c69ebb96.png', '全明料死模风灯，电镀花银喷浅绿色   \\r\\n明料挺底，电镀喷色我', 1, 'PCS', 300, 300, 1, NULL, 8.50, 2550.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820007', '4028817a3420e78a013421a693730001', '2', '光华', '5117', NULL, '94744a94-9215-425c-8d7c-e6c27b74d47a.png', '全明料蛋糕盘+罩子  \\r\\n罩上烤白金字母花纸（SWEETS)  ', 1, 'PCS', 300, 300, 1, NULL, 17.00, 5100.00, 13, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820008', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5086', NULL, 'f9c8b767-01c1-47a1-816c-4203c229f765.png', '全明料冰花风灯，电镀花银喷绿色\\r\\n尺寸：12.5X20CM高', 1, 'PCS', 300, 300, 1, NULL, 13.00, 3900.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820009', '4028817a3420e78a013421a693730001', '1', '宏艺', '5190', NULL, 'b0d362a3-2044-4bb8-ad61-0d6228e94110.png', '全明料平光蛋糕罩配钻石盘子\\r\\n罩子上粘小鸟，小鸟和钻石盘我司', 1, 'PCS', 100, 100, 1, NULL, 22.00, 2200.00, 16, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000a', '4028817a3420e78a013421a693730001', '9', '华艺', '5190', NULL, 'de8f61ab-0ce5-4e66-862f-acc66140d77f.png', '全明料钻石蛋糕盘粘底座\\r\\n \\r\\n尺寸：23X11.5CM高\\r', 1, 'PCS', 100, 100, 1, NULL, 8.50, 850.00, 17, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000b', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5084', NULL, '4afac9ad-6f75-4186-95e2-0f3c992fd0a8.png', '全明料冰花风灯，电镀花银喷蓝色\\r\\n尺寸：10X17.5CM高', 1, 'PCS', 300, 300, 1, NULL, 11.50, 3450.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000c', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5085', NULL, '11799ce4-7d8a-451b-8838-6b01f804b8ff.png', '全明料冰花风灯，电镀花银喷紫色\\r\\n尺寸：10X17.5CM高', 1, 'PCS', 300, 300, 1, NULL, 11.50, 3450.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000d', '4028817a3420e78a013421a693730001', '7', '天顺', '5144', NULL, '978f44fd-492c-4209-8b4a-6dd58539a14f.png', '全明料钻石蛋糕盘粘底座\\r\\n喷绿色，喷漆，喷珠光\\r\\n尺寸：23', 1, 'PCS', 100, 100, 1, NULL, 11.00, 1100.00, 15, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000e', '4028817a3420e78a013421a693730001', '4', '精艺', '4998', NULL, '4c8991c6-227e-4c31-bcf7-539fd002cd12.png', '全明料死模风灯，电镀花银喷紫色\\r\\n明料挺底,电镀喷色我司安排', 1, 'PCS', 300, 300, 1, NULL, 10.50, 3150.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a69382000f', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5088', NULL, '9926bf89-1345-4082-aeeb-a3f94d0dcc40.png', '全明料冰花风灯，电镀花银喷蓝色\\r\\n尺寸：12.5X20CM高', 1, 'PCS', 300, 300, 1, NULL, 13.00, 3900.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693820010', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5089', NULL, '22a26221-2c14-4ea4-b972-ebe9df1a27ab.png', '全明料冰花风灯，电镀花银喷紫色\\r\\n尺寸：12.5X20CM高', 1, 'PCS', 300, 300, 1, NULL, 13.00, 3900.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693920011', '4028817a3420e78a013421a693730001', '4', '精艺', '4997', NULL, 'f62db940-2432-4a7d-946c-22e2ba184d37.png', '全明料死模风灯，电镀花银喷浅海蓝\\r\\n明料挺底，电镀喷色我司安', 1, 'PCS', 300, 300, 1, NULL, 10.50, 3150.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421a693920012', '4028817a3420e78a013421a693730001', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5083', NULL, '65fe2446-a833-483a-ad34-dc5da6a7e28a.png', '全明料冰花风灯，电镀花银喷绿色\\r\\n尺寸：10X17.5CM高', 1, 'PCS', 300, 300, 1, NULL, 11.50, 3450.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421d2e3fe0013', '4028817a3420e78a013421a693730001', '4', '精艺', '5336', NULL, '422bfb7c-ad4e-4098-8953-beca57d6259c.png', '全明料死模风灯，电镀花银喷绿色  \\r\\n   \\r\\n尺寸：14.5X', 1, 'PCS', 300, 300, 1, NULL, 8.00, 2400.00, 20, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421d2e3fe0014', '4028817a3420e78a013421a693730001', '4', '精艺', '5331', NULL, 'c09ea297-bb5f-47a0-b8a0-0b4419f6e138.png', '全明料死模风灯，电镀花银喷绿色\\r\\n尺寸：17X23CM高\\r\\n', 1, 'PCS', 300, 300, 1, NULL, 11.50, 3450.00, 19, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421d2e3fe0015', '4028817a3420e78a013421a693730001', '9', '华艺', '5190', NULL, 'aa3e7517-3227-41ff-b239-a5a6d5c00939.png', '机压小鸟,表面要光滑\\r\\n\\r\\n安全包装送祁县宏艺厂\\r\\n请提供一', 1, 'PCS', 100, 100, 1, NULL, 2.40, 240.00, 18, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c10016', '4028817a3420e78a013421a693730001', '4', '精艺', '5400', NULL, 'f475d46e-733a-4220-8243-98ba76f09ddc.png', '全明料死模风灯，电镀花银喷蓝色\\r\\n \\r\\n尺寸：17X23CM', 1, 'PCS', 300, 300, 1, NULL, 11.50, 3450.00, 22, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c10017', '4028817a3420e78a013421a693730001', '7', '天顺', '9749', NULL, '3d52357d-71bf-4ac1-b7f0-38b640a2d349.png', '怪虫小碗，喷绿色，喷漆，喷珠光\\r\\n\\r\\n尺寸:18X9CM高\\r', 4, 'PCS', 600, 600, 1, NULL, 6.50, 3900.00, 28, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c10018', '4028817a3420e78a013421a693730001', '2', '光华', '8759', NULL, 'c5f0d6c6-275f-4fb4-b468-a9be38f85f02.png', '全明料糖缸带盖子\\r\\n尺寸：16.5X40CM高\\r\\n1只/上下', 1, 'PCS', 600, 600, 1, NULL, 15.00, 9000.00, 27, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c10019', '4028817a3420e78a013421a693730001', '7', '天顺', '8709', NULL, '2720f819-b111-4aeb-b5e8-abc262dc5a7b.png', '怪虫小碗，喷蓝色，喷漆，喷珠光\\r\\n \\r\\n尺寸：18X9CM高', 4, 'PCS', 600, 600, 1, NULL, 6.50, 3900.00, 26, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c1001a', '4028817a3420e78a013421a693730001', '4', '精艺', '5337', NULL, 'c2ff4999-1ea3-479d-8859-3302bb0e9d77.png', '全明料死模风灯，电镀花银喷蓝色  \\r\\n  \\r\\n尺寸：14.5X2', 1, 'PCS', 300, 300, 1, NULL, 8.00, 2400.00, 21, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c1001b', '4028817a3420e78a013421a693730001', '7', '天顺', '8708', NULL, 'cd89d279-e040-4647-a89f-59bfee1d6db9.png', '怪虫小碗，喷紫色，喷漆，喷珠光\\r\\n \\r\\n尺寸：18X9CM高', 4, 'PCS', 600, 600, 1, NULL, 6.50, 3900.00, 25, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c1001c', '4028817a3420e78a013421a693730001', '2', '光华', '843MA', NULL, '6b4da997-ad8c-4101-90cb-1c554c356bb1.png', '全明料喇叭底糖缸，带盖子  \\r\\n盖子：10CMX10.3CM高', 1, 'PCS', 600, 600, 1, NULL, 16.00, 9600.00, 23, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e2e3c1001d', '4028817a3420e78a013421a693730001', '2', '光华', '844MA', NULL, '19dd24a2-4eb2-4273-a46a-229d28aeee85.png', '全明料糖缸带盖子\\r\\n盖子：9.3X13.3CM高 壁厚3MM', 1, 'PCS', 600, 600, 1, NULL, 16.00, 9600.00, 24, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a3420e78a013421e53b8c001e', '4028817a3420e78a013421a693730001', '2', '光华', '9868', NULL, '6bf2fdf5-6d7e-4147-b40c-6eddf95abcd8.png', '全明料喇叭底糖缸配盖子\\r\\n尺寸：5-1/4\\\"X17\\\"H\\r\\n1', 1, 'PCS', 600, 600, 1, NULL, 16.00, 9600.00, 29, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d0047', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5089', NULL, '2c991b9e-a14b-4f37-a2ca-5e7d01cba021.jpg', '全明料冰花风灯，电镀花银喷紫色。\\r\\n尺寸:12.5*20 C', 1, 'PCS', 204, 204, 1, NULL, 13.00, 2652.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d0048', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5094', NULL, '7ae1ccaa-426b-4476-bc6a-28258d735fbd.jpg', '全明料冰花风灯，粘电镀底座    \\r\\n尺寸：15.8X32CM', 1, 'PCS', 150, 150, 1, NULL, 14.50, 2175.00, 7, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d0049', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5093', NULL, '796ec9af-d6bb-4511-a6c6-6d75bcc1f2e3.jpg', '全明料冰花风灯粘电镀底座，   \\r\\n喷紫色，全喷，内电镀花银  ', 1, 'PCS', 102, 102, 1, NULL, 16.00, 1632.00, 6, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004a', '4028817a353b8d8e01353d15008d0046', '7', '天顺', '5099', NULL, '9586c248-7796-4f99-b648-f913e65250f3.jpg', '全明料钻石蛋糕盘粘底座  \\r\\n喷蓝色，喷漆,喷珠光    \\r\\n尺寸', 1, 'PCS', 152, 152, 1, NULL, 11.00, 1672.00, 10, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004b', '4028817a353b8d8e01353d15008d0046', '7', '天顺', '5098', NULL, 'bb0e509f-ccb0-44f4-8320-df18ff6ac880.jpg', '全明料钻石蛋糕盘粘底座  \\r\\n喷紫色，喷漆,喷珠光    \\r\\n尺寸', 1, 'PCS', 152, 152, 1, NULL, 11.00, 1672.00, 9, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004c', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5090', NULL, '2ec05114-5c74-4211-b254-4d979218c05e.jpg', '全明料冰花风灯粘电镀底座，   \\r\\n喷蓝色，全喷，内电镀花银  ', 1, 'PCS', 102, 102, 1, NULL, 16.00, 1632.00, 4, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004d', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5088', NULL, '9488192b-fb0f-4aa5-9e29-86de71d05675.jpg', '全明料冰花风灯，电镀花银喷蓝色。\\r\\n尺寸:12.5*20 C', 1, 'PCS', 204, 204, 1, NULL, 13.00, 2652.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004e', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5092', NULL, '289d254d-0f0d-4671-9376-d04cc36540d2.jpg', '全明料冰花风灯粘电镀底座，   \\r\\n喷绿色，全喷，内电镀花银  ', 1, 'PCS', 102, 102, 1, NULL, 16.00, 1632.00, 5, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d004f', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5095', NULL, '01349ede-bef9-4168-a346-e109e3111773.jpg', '全明料冰花风灯，粘明料底座   \\r\\n尺寸：15.8X32CM高', 1, 'PCS', 150, 150, 1, NULL, 14.00, 2100.00, 8, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d15008d0050', '4028817a353b8d8e01353d15008d0046', '4028817a33d4f8b40133d9989f5e0024', '民鑫', '5086', NULL, '3c77a543-f2f2-4cf3-b173-8ef1d1a1f8be.jpg', '全明料冰花风灯，电镀花银喷绿色。\\r\\n尺寸:12.5*20 C', 1, 'PCS', 204, 204, 1, NULL, 13.00, 2652.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0051', '4028817a353b8d8e01353d15008d0046', '2', '光华', '5117', NULL, 'aec0cd7f-795e-4c5f-b8c5-532b6479c4be.jpg', '全明料蛋糕盘+罩子 \\r\\n罩上烤白金字母花纸（SWEETS)', 1, 'PCS', 100, 100, 1, NULL, 17.00, 1700.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0052', '4028817a353b8d8e01353d15008d0046', '9', '华艺', '5191', NULL, '5a77aec3-1299-4b75-8ff4-5c7232d0a8c6.jpg', '机压小鸟,表面要光滑    \\r\\n安全包装送祁县宏艺厂    \\r\\n请提', 1, 'PCS', 100, 100, 1, NULL, 2.40, 240.00, 19, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0053', '4028817a353b8d8e01353d15008d0046', '7', '天顺', '5144', NULL, '91d36961-2e9e-44cc-94ed-44ab4d6a24e4.jpg', '全明料钻石蛋糕盘粘底座  \\r\\n喷绿色，喷漆，喷珠光    \\r\\n尺寸', 1, 'PCS', 152, 152, 1, NULL, 11.00, 1672.00, 13, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0054', '4028817a353b8d8e01353d15008d0046', '9', '华艺', '5191', NULL, '06191cc8-a932-4f7a-a951-eabbd4336f13.jpg', '全明料钻石蛋糕盘粘底座  \\r\\n尺寸：29.5X11.5CM高  ', 1, 'PCS', 100, 100, 1, NULL, 10.00, 1000.00, 18, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0055', '4028817a353b8d8e01353d15008d0046', '2', '光华', '5118', NULL, 'b76467e5-21b5-4102-8085-f0d14189e257.jpg', '全明料蛋糕盘+罩子    \\r\\n罩子上烤白金字母花纸（SWEETS', 1, 'PCS', 152, 152, 1, NULL, 16.00, 2432.00, 12, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0056', '4028817a353b8d8e01353d15008d0046', '9', '华艺', '5190', NULL, '9a6203d7-01b0-4ebe-bc08-d390b5ecd46a.jpg', '机压小鸟,表面要光滑    \\r\\n安全包装送祁县宏艺厂    \\r\\n请提', 1, 'PCS', 100, 100, 1, NULL, 2.40, 240.00, 16, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0057', '4028817a353b8d8e01353d15008d0046', '4', '精艺', '5337', NULL, 'ecc411bc-b3ce-4175-9e96-17014661c601.jpg', '全明料死模风灯，电镀花银喷蓝色  \\r\\n尺寸：14.5X20CM', 1, 'PCS', 156, 156, 1, NULL, 8.00, 1248.00, 22, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0058', '4028817a353b8d8e01353d15008d0046', '9', '华艺', '5190', NULL, '9196fdca-db89-42a3-99d8-6a168479344c.jpg', '全明料钻石蛋糕盘粘底座  \\r\\n尺寸：23X11.5CM高  \\r', 1, 'PCS', 100, 100, 1, NULL, 8.50, 850.00, 15, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d0059', '4028817a353b8d8e01353d15008d0046', '1', '宏艺', '5190', NULL, 'a3c28393-5d85-4ab5-8f9b-c10d8becf945.jpg', '全明料平光蛋糕罩配钻石盘子  \\r\\n罩子上粘小鸟，小鸟和钻石盘我', 1, 'PCS', 100, 100, 1, NULL, 22.00, 2200.00, 14, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d005a', '4028817a353b8d8e01353d15008d0046', '4', '精艺', '5330', NULL, '75849bf7-f9a2-4f74-853e-baefef078d93.jpg', '全明料死模风灯，电镀花银喷紫色  \\r\\n尺寸：14.5X20CM', 1, 'PCS', 156, 156, 1, NULL, 8.00, 1248.00, 20, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32350d005b', '4028817a353b8d8e01353d15008d0046', '4', '精艺', '5336', NULL, '5fe32315-0fb6-4a84-bb82-61b27ef3a8e3.jpg', '全明料死模风灯，电镀花银喷绿色  \\r\\n尺寸：14.5X20CM', 1, 'PCS', 156, 156, 1, NULL, 8.00, 1248.00, 21, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028817a353b8d8e01353d32353c005c', '4028817a353b8d8e01353d15008d0046', '1', '宏艺', '5191', NULL, '135fbc3e-1c1d-4188-91e0-6a54cb0e2901.jpg', '全明料平光蛋糕罩配钻石盘子  \\r\\n罩子上粘小鸟，小鸟和钻石盘我', 1, 'PCS', 100, 100, 1, NULL, 32.00, 3200.00, 17, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('40288286607ea08c01607ea3d9500001', 'ff8080816077bbb3016077bd30b10000', '1', '升华', '002', '001.jpg', '别睡啦', '12', 11, 'PCS', 10, NULL, NULL, '快醒醒', 5.00, 50.00, 16, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('40288286607ea08c01607ea5567b0002', 'ff8080816077bbb3016077bd30b10000', '10', '晶晨', '003', 'adssad', NULL, '1', 1, 'PCS', 1, NULL, NULL, NULL, 1.00, 1.00, 3, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('40288286607ea08c01607ea6c1300003', 'ff8080816077bbb3016077bd30b10000', '19', '综艺花纸', '005', '002.jpg', 'hello ', '1', 111, 'PCS', 2, NULL, NULL, 'word', 2.00, 4.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028828660b1cd900160b1cf41190001', '4028828660b1cd900160b1cebb440000', '10', '晶晨', 'fj001', 'fj002,jpg', 'xxxx', '11', 11, 'PCS', 2, NULL, NULL, 'qqqq', 10.00, 20.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('40288287616082eb01616092a3320002', '40288287616082eb0161608728560000', NULL, '晶晨', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10.00, 10.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028828761609a96016160a204c80000', '40288287616082eb0161608805650001', '10', '晶晨', '1', 'fj002,jpg', '阿斯顿', '11', 1, 'PCS', 1, NULL, NULL, '阿斯顿', 10.00, 10.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028828761609a96016160a2da5e0001', '40288287616082eb0161608805650001', '15', '南皮开发', NULL, 'fj002,jpg', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 10.00, 20.00, NULL, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('402882876170403101617079e0540000', '40288287616a411e01616ab546270006', '12', '平遥远江', '001', 'fj002,jpg', NULL, '11', 11, 'PCS', 1, NULL, NULL, NULL, 10.00, 10.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('40288287617040310161707a154e0001', '40288287616a411e01616ab546270006', '12', '平遥远江', 'fj001', 'fj002,jpg', NULL, '11', 11, 'SETS', 2, NULL, NULL, NULL, 5.00, 10.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('402895c25152201a015152215a930000', '402895c2515129200151514376b80002', '12', '平遥远江', 'rrttrrttyyrree', '11', '柘城要柘城', '11', 11, NULL, 11, NULL, NULL, '11', 11.00, 121.00, 11, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('402899d650894b860150894cef8f0000', '402899d650885c420150885d95cb0000', '10', '晶晨', 'rwtewr32432', '02.png', '货描', '1/2', 5, 'PCS', 10, NULL, NULL, '要求', 100.00, 1000.00, 2, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4028a9bd515b54c901515b5be9e40000', '4028a9bd515b2e8201515b3339860000', '1', '升华', 'fdgfdgfd', '01.png', '货物描述', '1/2', 5, 'PCS', 10, NULL, NULL, '要求', 10.00, 100.00, 20, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('42b8eaa7-c7d2-40e0-8727-e90cb209abae', '2c90c5004ad63735014ad6d204060005', '1', '升华', 'xx001', NULL, '真的', '10.0', 2, 'PCS', 1, NULL, NULL, '很不错', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('4740cccc-8c67-4810-94f5-97d58bb92073', 'C2C011E96CC3451DAD181AF3372CB80D', '10', '晶晨', 'fj001', 'http://pohq61v14.bkt.clouddn.com/96E8AE517C6643CABC1E4DA5DF35AD2E_logo.jpg', '1', '1', 1, 'PCS', 1, NULL, NULL, '1', 1.00, 1.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('4a99e580-cf52-4b57-9b75-c50a491175a9', '2c90c5004ad63735014ad6d204060005', '15', '南皮开发', '货号002', 'http://${qiniu.rtValue}', 'xxx1', '13', 14, 'PCS', 10, NULL, NULL, 'xxx2', 5.00, 50.00, 25, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('707f1e1d-dc86-4a57-b702-85199f4c08fd', 'FC8A89AD11CD426BA7045A20F3E2E95A', '12', '平遥远江', '1', 'http://ptl0lgpv8.bkt.clouddn.com/44BAF4A892654826B70FA2580C9857D7_', '1', '121', 1, 'PCS', 1, NULL, NULL, '', 1.00, 1.00, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('8a7e81675ac532ff015ac53571c90001', '8a7e81ec5ac06f0d015ac06fbb850000', '3', '会龙', 'CP1009', '06.png', 'www', '1/3', 10, 'SETS', 30, NULL, NULL, 'www', 10.00, 300.00, 345, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('8a7e81675ac532ff015ac53d26d60003', '8a7e81ec5ac06f0d015ac06fbb850000', '4', '精艺', 'CP1008', '06.png', 'dsfdsf', '1/3', 10, 'SETS', 30, NULL, NULL, 'dfds', 10.00, 300.00, 345, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('8a7e81f06163e3d30161642eb7470001', 'ff80808160bab4fa0160bb1d6e760008', '10', '晶晨', '001', 'adssad', 'xxx', '11', 11, 'PCS', 1, NULL, NULL, 'xxxx', 10.00, 10.00, 111, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('8a7e827260b51f700160b520f7bf0000', '8a7e84215827fe1b015828058c360001', '16', '康达', '001', 'fj002,jpg', 'fj002,jpgfj002,jpgfj002,jpg', '11', 11, 'PCS', 2, NULL, NULL, 'fj002,jpgfj002,jpgfj002,jpg', 10.00, 20.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('8a7e827260b51f700160b523631e0001', '8a7e84215827fe1b015828058c360001', '10', '晶晨', '002', 'fj002,jpg', 'contractProductAction_tocreate', '1', 11, 'PCS', 1, NULL, NULL, 'contractProductAction_tocreate', 10.00, 10.00, 1, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('8a7e845158dc9da90158dc9f46be0000', '8a7e845158dc48ec0158dc49ce140000', '12', '平遥远江', 'CP45454', '01.png', 'erewr', '1/2', 10, 'SETS', 30, NULL, NULL, '  要求 ', 30.00, 900.00, 546, '1', NULL);
INSERT INTO `co_contract_product` VALUES ('b07194dc-ae6d-4da5-b43c-05dae9f4587c', 'ddb325d9-d562-4a2d-b44e-f2efdd6e423f', '1', '升华', '1', 'http://ptl0lgpv8.bkt.clouddn.com/C6693BE61A6E46A2800D03E9CE6241EF_333.png', '1', '1', 1, 'PCS', 1, NULL, NULL, '1', 1.00, 1.00, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('b8319753-abef-4fb9-b72d-ca5b2a913461', '2c90c5004ad63735014ad6d204060005', '1', '升华', 'xx002', NULL, '真的', '10.0', 2, 'PCS', 1, NULL, NULL, '很不错', 5.00, 5.00, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('bb0bfdbe-3546-40d7-90c7-63d84c1cf813', 'C2C011E96CC3451DAD181AF3372CB80D', '12', '平遥远江', '1', 'http://ptl0lgpv8.bkt.clouddn.com/87D68A0F7BFC4F36863B3AC222F3A35D_', '1', '1', 1, 'PCS', 1, NULL, NULL, '1', 1.00, 1.00, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('d754b2dd-33ff-42ed-b20e-ca1a4bef788c', 'bbad9b14-5858-496e-94bd-dd102ecc471d', '12', '平遥远江', '1', 'http://ptl0lgpv8.bkt.clouddn.com/BAF10D298CA04B7A86BCD8CF77087EAC_', '1', '1', 1, NULL, 1, NULL, NULL, '1', 61.00, 61.00, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_contract_product` VALUES ('ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '13', '平遥鸿艺', '001', 'fj002,jpg', 'cproductcproductcproduct', NULL, 11, 'PCS', 1, NULL, NULL, 'cproductcproductcproduct', 10.00, 10.00, 1, '1', NULL);

-- ----------------------------
-- Table structure for co_export
-- ----------------------------
DROP TABLE IF EXISTS `co_export`;
CREATE TABLE `co_export`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input_date` datetime(0) NULL DEFAULT NULL,
  `contract_ids` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ID集合串\\n            \\n            x,y,z',
  `customer_contract` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户的合同号,可选择多个合同',
  `lcno` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'L/C T/T',
  `consignee` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `marks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shipment_port` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `destination_port` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `transport_mode` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'SEA/AIR',
  `price_condition` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'FBO/CIF',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `box_nums` decimal(11, 0) NULL DEFAULT NULL COMMENT '冗余，为委托服务，一个报运的总箱数',
  `gross_weights` decimal(10, 2) NULL DEFAULT NULL COMMENT '冗余，为委托服务，一个报运的总毛重',
  `measurements` decimal(10, 2) NULL DEFAULT NULL,
  `state` decimal(11, 0) NULL DEFAULT NULL COMMENT '0-草稿 1-已上报 2-装箱 3-委托 4-发票 5-财务',
  `pro_num` int(11) NULL DEFAULT NULL,
  `ext_num` int(11) NULL DEFAULT NULL,
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_dept` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of co_export
-- ----------------------------
INSERT INTO `co_export` VALUES ('75b0682f-899d-418b-9c9e-2aeb7dccc29b', '2019-06-26 10:25:19', 'C2C011E96CC3451DAD181AF3372CB80D,FC8A89AD11CD426BA7045A20F3E2E95A', 'context 2 ', '3', '3', '3', '3', '3', '3', '3', '报运成功', 3, 3.00, 3.00, 2, 4, 3, NULL, NULL, '2019-06-26 10:25:19', '1', '传智播客教育股份有限公司');

-- ----------------------------
-- Table structure for co_export_product
-- ----------------------------
DROP TABLE IF EXISTS `co_export_product`;
CREATE TABLE `co_export_product`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `export_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `packing_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PCS/SETS',
  `cnumber` decimal(11, 0) NULL DEFAULT NULL,
  `box_num` decimal(11, 0) NULL DEFAULT NULL,
  `gross_weight` decimal(10, 2) NULL DEFAULT NULL,
  `net_weight` decimal(10, 2) NULL DEFAULT NULL,
  `size_length` decimal(10, 2) NULL DEFAULT NULL,
  `size_width` decimal(10, 2) NULL DEFAULT NULL,
  `size_height` decimal(10, 2) NULL DEFAULT NULL,
  `ex_price` decimal(10, 2) NULL DEFAULT NULL COMMENT 'sales confirmation 中的价格（手填）',
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `tax` decimal(10, 2) NULL DEFAULT NULL COMMENT '收购单价=合同单价',
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `SYS_C005441`(`export_id`) USING BTREE,
  INDEX `SYS_C005442`(`factory_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of co_export_product
-- ----------------------------
INSERT INTO `co_export_product` VALUES ('39f4643f-62d0-4a00-88e3-8599f1128067', '75b0682f-899d-418b-9c9e-2aeb7dccc29b', '12', '1', 'PCS', 1, 1, 4.00, 5.00, 5.00, 5.00, 5.00, 10.00, 1.00, 10.40, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_export_product` VALUES ('cc48e1c0-9873-47b7-84f9-e71b2596f7b4', '75b0682f-899d-418b-9c9e-2aeb7dccc29b', '10', 'fj001', 'PCS', 1, 1, NULL, 5.00, 5.00, 5.00, 5.00, 10.00, 1.00, 10.80, 1, '1', NULL);
INSERT INTO `co_export_product` VALUES ('da925c87-3b79-414d-ae8c-2c79aed664f4', '75b0682f-899d-418b-9c9e-2aeb7dccc29b', '15', '3', 'PCS', 3, 3, NULL, 6.00, 6.00, 6.00, 6.00, 10.00, 3.00, 11.20, 3, '1', '传智播客教育股份有限公司');
INSERT INTO `co_export_product` VALUES ('e97b1d6b-9bc6-4a3b-b58c-49b366fa6bf7', '75b0682f-899d-418b-9c9e-2aeb7dccc29b', '12', '1', 'PCS', 1, 1, 7.00, 7.00, 7.00, 7.00, 7.00, NULL, 1.00, 11.60, 1, '1', '传智播客教育股份有限公司');

-- ----------------------------
-- Table structure for co_ext_cproduct
-- ----------------------------
DROP TABLE IF EXISTS `co_ext_cproduct`;
CREATE TABLE `co_ext_cproduct`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contract_product_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contract_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购销合同id',
  `factory_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `packing_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PCS/SETS',
  `cnumber` decimal(11, 0) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '自动计算: 数量x单价',
  `product_request` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `SYS_C005445`(`contract_product_id`) USING BTREE,
  INDEX `SYS_C005446`(`factory_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of co_ext_cproduct
-- ----------------------------
INSERT INTO `co_ext_cproduct` VALUES ('238e78fd-4bdb-4381-bb63-8c1e425c0160', '42b8eaa7-c7d2-40e0-8727-e90cb209abae', '2c90c5004ad63735014ad6d204060005', '4028817a33de41d80133e982a18a001c', '太谷PVC', '002', 'http://${qiniu.rtValue}', '2', '2', 2, 12.00, 24.00, '2', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('33b947c7-8652-47c0-a52f-dd78277452a0', '42b8eaa7-c7d2-40e0-8727-e90cb209abae', '2c90c5004ad63735014ad6d204060005', '4028817a389cc7b701389d1efd940001', '宇虹包装厂', '001', 'http://${qiniu.rtValue}', '1', '1', 2, 1.00, 2.00, 'xxxxx', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('3c0d31ea-8913-4865-8c0a-93f9d7c42d92', '34161ada-1442-4158-ba7b-88ab93fe7047', 'FC8A89AD11CD426BA7045A20F3E2E95A', '4028817a371a8d7f01372a74451f0068', '铁架厂', '1', NULL, '1', '1', 1, 1.00, 1.00, '1', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_ext_cproduct` VALUES ('4028817a3357462e013359291f640009', '4028817a3357462e0133592355750006', '4028817a3357462e0133591b86ec0002', '16', '康达', '2976', 'undefined', '彩盒，新菲林\\r\\n配明料糖缸带盖子\\r\\n彩盒尺寸：25.7X25.7X35.7CM', 'PCS', 144, 3.90, 561.60, '1.彩盒要求350克面纸；\\r\\n2.工厂待用安全包装，待我司运至工厂；\\r\\n3.工厂免费提供1%余量，以防划伤，破损；\\r\\n4.交期:2011年11月05日。', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a3357462e013359291f64000a', '4028817a3357462e0133592355750006', '4028817a3357462e0133591b86ec0002', '16', '康达', '2976', 'undefined', '彩盒，新菲林\\r\\n配全明料糖缸带盖子\\r\\n彩盒尺寸：21.5X21.5X41CM', 'PCS', 144, 3.30, 475.20, '1.彩盒要求350克面纸；\\r\\n2.工厂待用安全包装，待我司运至工厂；\\r\\n3.工厂免费提供1%余量，以防划伤，破损；\\r\\n4.交期:2011年11月05日。', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33812ffd0133820c0a460029', '4028817a33812ffd013382048ff80026', '4028817a33812ffd013382048ff80024', '19', '综艺花纸', '20-37-265/JK1050163', '1af851ab-98ff-4227-ba39-1175dca33c6f.png', '蒙砂白花纸\\r\\n配全明料蛋糕罩\\r\\n\\r\\n送祁县宏艺厂', 'PCS', 1200, 0.38, 456.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年12月05日；', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33d4f8b40133d994c45e0022', '4028817a33d4f8b40133d9878e880016', '4028817a33d4f8b40133d9878e88000d', '19', '综艺花纸', 'JK1050201/12078', NULL, '蒙砂白花纸\\r\\n烤在蛋糕罩上\\r\\n送祁县光华厂', 'PCS', 204, 0.80, 163.20, '1.产品的颜色、造型、尺寸、务必同我司提供的样稿一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交\n\n期:2011年11月20日送指定工厂。', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33ecdbf70133edfc84d40001', '4028817a3357462e01336d3a0be10018', '4028817a3357462e01336d3a0be10014', '19', '综艺花纸', 'JK1014005', '94d2d773-24b6-412e-b0e3-0fc9dddf0955.png', '低温鱼花纸\\r\\n明料低口杯\\r\\n祁县宏艺厂', 'PCS', 1800, 1.20, 2160.00, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011年\n\n12月10；', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33ecdbf70133edfc84e40002', '4028817a3357462e01336d3a0be10019', '4028817a3357462e01336d3a0be10014', '19', '综艺花纸', 'JK1080766-3', '29bb909d-d527-475d-bfbe-e5e05a02349c.png', '套3白花纸\\r\\n\\r\\n送祁县宏艺厂', 'SETS', 600, 0.60, 360.00, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011年\n\n12月10；', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33ecdbf70133edfc84e40004', '4028817a3357462e01336d3a0be10016', '4028817a3357462e01336d3a0be10014', '19', '综艺花纸', 'JK1014001', '7a3d341f-f473-44ce-9bd4-c7f2b87343ca.png', '低温鱼花纸\\r\\n明料大碗\\r\\n送祁县宏艺厂', 'PCS', 1000, 2.40, 2400.00, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011年\n\n12月10；', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33ecdbf70133edfc84e40005', '4028817a3357462e01336d3a0be10015', '4028817a3357462e01336d3a0be10014', '19', '综艺花纸', 'JK1014003', '73980c53-44f6-4232-8c04-9d08a66eeccb.png', '低温鱼花纸\\r\\n明料盘子\\r\\n\\r\\n送祁县天顺厂', 'PCS', 1200, 3.80, 4560.00, '1.产品的颜色、造型、尺寸、务必同提供的样品一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011年\n\n12月10；', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fcdff5490011', '4028817a33fc4e280133fcdb13f40010', '4028817a33d4f8b40133d9bea39b002f', '19', '综艺花纸', 'JK046/JK1050201', 'undefined', '蒙砂白花纸\\r\\n烤在蛋糕罩子上\\r\\n送祁县光华厂', 'PCS', 600, 0.80, 480.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月15日；', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fcdff5490012', '4028817a33d4f8b40133d9bea39b0032', '4028817a33d4f8b40133d9bea39b002f', '20', '喜福来', 'JK1050807/JK033', NULL, '套6全明料酒杯\\r\\n杯碗电镀渐变色，挺底电镀\\r\\n尺寸：8X24CM高', 'SETS', 300, 21.00, 6300.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2011年12月15日/工厂。                          没有经过我司同意无故\n\n延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fcdff5490013', '4028817a33d4f8b40133d9bea39b0030', '4028817a33d4f8b40133d9bea39b002f', '20', '喜福来', 'JK1050806/JK032', NULL, '套6全明料香槟杯\\r\\n杯碗电镀渐变色，挺底电镀\\r\\n尺寸：5.7X25CM高', 'SETS', 320, 21.00, 6720.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2011年12月15日/工厂。                          没有经过我司同意无故\n\n延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d0029', '4028817a33fc4e280133fd81e7d70027', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', 'JK1040009/141760', NULL, '白色字母花纸 \\r\\n送祁县宏艺厂', 'PCS', 300, 0.90, 270.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d002a', '4028817a33fc4e280133fd81e7d7001f', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', 'J859102682/113860', NULL, '白色字母花纸\\r\\nSTORAGE ONLY\\r\\n祁县宏艺厂', 'PCS', 300, 0.40, 120.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d002b', '4028817a33fc4e280133fd81e7d70026', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', 'JK10501218/160380', NULL, '白\n\n色字母花纸 \\r\\n送祁县宏艺厂', 'PCS', 600, 0.40, 240.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d002c', '4028817a33fc4e280133fd81e7d70021', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', '123540', NULL, '白色字母花纸(HIGH TEA)\\r\\n字体：ENGLISH SCRIPT\\r\\n尺寸：18X5.5CM\\r\\n祁县光华厂', 'PCS', 100, 0.30, 30.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 5, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d002d', '4028817a33fc4e280133fd81e7d70022', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', 'JK1052446/158080', NULL, '白色字母花纸\\r\\n\\r\\n \\r\\n祁县会龙厂', 'PCS', 702, 0.25, 175.50, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fd906b0d002e', '4028817a33fc4e280133fd81e7d7001e', '4028817a33fc4e280133fd81e7d7001d', '19', '综艺花纸', '169280', 'undefined', '白色字母花纸(HIGH TEA)\\r\\n字体：ENGLISH SCRIPT\\r\\n尺寸：18X5.5CM\\r\\n祁县光华厂', 'PCS', 100, 0.30, 30.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月25日；', 6, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fded2e6d0040', '4028817a33fc4e280133fde6504f0039', '4028817a33fc4e280133fd9f8b4e002f', '19', '综艺花纸', 'JK169340/13076', 'undefined', '蒙砂白花纸\\r\\n\\\"烤在蛋糕罩子上(25X26CM)\\r\\n\\\"\\r\\n祁县光华厂', 'PCS', 200, 1.02, 204.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月20日', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fded2e6d0041', '4028817a33fc4e280133fde6504f0038', '4028817a33fc4e280133fd9f8b4e002f', '19', '综艺花纸', 'JK1050198/12860', 'undefined', '蒙砂白花纸\\r\\n烤在红酒杯（11X19CM)上\\r\\n送平遥鸿艺', 'PCS', 400, 0.49, 196.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月20日', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fded2e6d0042', '4028817a33fc4e280133fde6504f003c', '4028817a33fc4e280133fd9f8b4e002f', '19', '综艺花纸', 'JK1050195/12859', 'undefined', '蒙砂白花纸\\r\\n烤在香槟杯(8X21CM)上\\r\\n送平遥鸿艺', 'PCS', 400, 0.40, 160.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月20日', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a33fc4e280133fded2e6d0043', '4028817a33fc4e280133fde6504f0037', '4028817a33fc4e280133fd9f8b4e002f', '19', '综艺花纸', 'JK1050201/12078', NULL, '蒙砂白花纸\\r\\n烤在蛋糕罩子上\\r\\n祁县光华厂', 'PCS', 402, 0.80, 321.60, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月20日；', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd3200001', '4028817a33812ffd0133816aacd40019', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4998', 'undefined', '全明料死模风灯 ，电镀花银喷紫色\\r\\n尺寸：11.5X30.5CM', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 6, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0002', '4028817a33812ffd0133816aacd40017', '4028817a33812ffd0133813f25940001', '19', '综艺花纸', '5117', 'undefined', '白金字母花纸\\r\\nSWEETS\\r\\n送祁县光华厂', 'PCS', 300, 3.00, 900.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月30日；', 12, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0003', '4028817a33812ffd0133813f25a30002', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4993', NULL, '全明料死模风灯，电镀花银喷绿色\\r\\n尺寸：11.5X20.3CM\\r\\n毛坯1月25日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0004', '4028817a33812ffd0133816aacd40018', '4028817a33812ffd0133813f25940001', '22', '瑞成', '5400', 'undefined', '全明料死模风灯，电镀花银喷蓝色\\r\\n尺寸：17X23CM高', 'PCS', 300, 3.50, 1050.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 10, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0005', '4028817a33812ffd0133816aacd4000d', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4996', 'undefined', '全明料死模风灯，电镀花银喷绿色\\r\\n尺寸：11.5X30.5CM高', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0006', '4028817a33812ffd0133816aacd40014', '4028817a33812ffd0133813f25940001', '22', '瑞成', '5336', NULL, '全明料死模风灯，电镀花银喷绿色\\r\\n尺寸：14.5X20CM高', 'PCS', 300, 2.00, 600.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致，\\r\\n       并将验货照片传回\n\n公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重后\n\n果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 8, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0007', '4028817a33812ffd0133813f25a30003', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4994', 'undefined', '全明料死模风灯，电镀花银喷蓝色\\r\\n尺寸：11.5X20.3CM高', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0008', '4028817a33812ffd0133816aacd40011', '4028817a33812ffd0133813f25940001', '20', '喜福来', '6998', NULL, '全明料蛋糕盘，盘沿电镀\\r\\n尺寸：6-1/2\\\"X12-1/2\\\"高', 'PCS', 300, 6.00, 1800.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 11, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f0009', '4028817a33812ffd0133816aacd4000c', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4997', NULL, '全明料死模风灯，电镀花银喷蓝色\\r\\n尺寸：11.5X30.5CM高', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 5, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f000a', '4028817a33812ffd0133816aacd40012', '4028817a33812ffd0133813f25940001', '19', '综艺花纸', '5118', 'undefined', '白金字母花纸\\r\\nSWEETS\\r\\n送祁县光华厂', 'PCS', 600, 3.00, 1800.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2011\n\n年11月30日；', 13, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f000b', '4028817a33812ffd0133816aacd40015', '4028817a33812ffd0133813f25940001', '22', '瑞成', '5337', NULL, '全明料死模风灯，电镀花银喷蓝色\\r\\n尺寸：14.5X20CM高', 'PCS', 300, 2.00, 600.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 9, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f000c', '4028817a33812ffd0133816aacc40009', '4028817a33812ffd0133813f25940001', '22', '瑞成', '5331', 'undefined', '全明料死模风灯，电镀花银喷绿色\\r\\n尺寸：17X23CM高', 'PCS', 300, 3.50, 1050.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 7, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a343a5c9101343a6fd35f000d', '4028817a33812ffd0133813f25a30004', '4028817a33812ffd0133813f25940001', '22', '瑞成', '4995', 'undefined', '全明料死模风灯，电镀花银喷紫色\\r\\n尺寸：11.5X20.3CM', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年1月10日/工厂。\\r\\n       没有经过我司同意无故延期交货造成严重\n\n后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b730023', '4028817a3420e78a013421a693820007', '4028817a3420e78a013421a693730001', '19', '综艺花纸', '5117', 'undefined', '白金字母花纸\\r\\nSWEETS\\r\\n送祁县光华厂', 'PCS', 300, 3.00, 900.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2012\n\n年1月15日。', 11, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b730024', '4028817a3420e78a013421e2e3c1001a', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5337', 'e877a4e2-2e48-4b06-91a8-3fb64f150a0f.jpg', '全明料死模风灯，电镀花银喷蓝色      \\r\\n尺寸：14.5X20CM高      \\r\\n1只/五层内盒      12只/大箱      \\r\\n毛坯1月30日送', 'PCS', 300, 3.00, 900.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 9, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b730027', '4028817a3420e78a013421a693820002', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4995', 'b232e729-a02f-48b2-987b-2c6311827816.jpg', '全明料死模风灯，电镀花银喷浅紫色\\r\\n明料挺底      \\r\\n尺寸：11.5X20.3CM    \\r\\n1只/五层内盒     12只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \\r\\n       没有经过\n\n我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b730029', '4028817a3420e78a013421a693820004', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4996', '987692c0-6e47-4117-b6c8-3dbbeaca1b0c.jpg', '全明料死模风灯，电镀花银喷浅绿色\\r\\n明料挺底      \\r\\n尺寸：11.5X30.5CM高    \\r\\n1只/五层内盒      6只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \\r\\n       没有经过\n\n我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b73002a', '4028817a3420e78a013421a693820006', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4993', 'a803fa9e-dda1-476a-a822-a51b226aca39.jpg', '全明料死模风灯，电镀花银喷浅绿色 \\r\\n明料挺底      \\r\\n尺寸：11.5X20.3CM    \\r\\n1只/五层内盒      12只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意,无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b73002b', '4028817a3420e78a013421d2e3fe0014', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5331', '51902cb9-1650-480b-8373-2da4c3f2338b.jpg', '全明料死模风灯，电镀花银喷绿色      \\r\\n尺寸：17X23CM高      \\r\\n1只/五层内盒      6只/大箱      \\r\\n毛坯1月30日送', 'PCS', 300, 3.50, 1050.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 7, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cad7b73002d', '4028817a3420e78a013421a693820003', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4994', '05b37ddc-8904-4df3-8167-b98129c600de.jpg', '全明料死模风灯，电镀花银喷浅蓝色\\r\\n明料挺底      \\r\\n尺寸：11.5X20.3CM    \\r\\n1只/五层内盒     12只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \\r\\n       没有经过\n\n我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cadeab80031', '4028817a3420e78a013421a693920011', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4997', '7dbc495e-a12c-4eec-9975-c93c1b3f4297.jpg', '全明料死模风灯，电镀花银喷浅蓝色\\r\\n明料挺底      \\r\\n尺寸：11.5X30.5CM高    \\r\\n1只/五层内盒      6只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 5, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cadeab80037', '4028817a3420e78a013421a693820005', '4028817a3420e78a013421a693730001', '19', '综艺花纸', '5118', 'undefined', '白金字母花纸\\r\\nSWEETS\\r\\n送祁县光华厂', 'PCS', 300, 3.00, 900.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2012\n\n年1月15日。', 12, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cadec6d003a', '4028817a3420e78a013421d2e3fe0013', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5336', 'c8350cd2-47ae-4054-ad81-70004fe4eb44.jpg', '全明料死模风灯，电镀花银喷绿色      \\r\\n 尺寸：14.5X20CM高      \\r\\n1只/五层内盒      12只/大箱      \\r\\n毛坯1月30日送', 'PCS', 300, 3.00, 900.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 8, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cadec6d0042', '4028817a3420e78a013421a69382000e', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '4998', '44fc2f77-af8a-42d3-8d9b-fa2bafa8f47a.jpg', '全明料死模风灯，电镀花银喷浅紫色\\r\\n明料挺底      \\r\\n尺寸：11.5X30.5CM高    \\r\\n1只/五层内盒      6只/大箱  \\r\\n毛坯1月30日送', 'PCS', 300, 1.70, 510.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。毛坯送至祁县瑞成玻璃镀膜厂。 \\r\\n       没有经过\n\n我司同意无故延期交货造成严重后果的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 6, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353cadec6d0044', '4028817a3420e78a013421e2e3c10016', '4028817a3420e78a013421a693730001', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5400', '601585a1-ba16-42bb-9ffb-\n\nd187b521be1f.jpg', '全明料死模风灯，电镀花银喷蓝色      \\r\\n尺寸：17X23CM高      \\r\\n1只/五层内盒      6只/大箱      \\r\\n毛坯1月30日送', 'PCS', 300, 3.50, 1050.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 10, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353d39f06c005d', '4028817a353b8d8e01353d32350d0051', '4028817a353b8d8e01353d15008d0046', '19', '综艺花纸', '5117', 'aec0cd7f-795e-4c5f-b8c5-532b6479c4be.jpg', '白金字母花纸\\r\\nSWEETS\\r\\n安全包装送祁县光华厂', 'PCS', 100, 3.00, 300.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2012\n\n年2月5日。', 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353d39f06c005e', '4028817a353b8d8e01353d32350d005b', '4028817a353b8d8e01353d15008d0046', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5336', '4436f9d7-b0e2-4926-9cd4-f6c66333c290.jpg', '全明料死模风灯，电镀花银喷绿色      \\r\\n       \\r\\n尺寸：14.5X20CM高 \\r\\n1只/五层内盒      12只/大箱      \\r\\n毛坯1月30日送', 'PCS', 156, 3.00, 468.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 4, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353d39f06c005f', '4028817a353b8d8e01353d32350d005a', '4028817a353b8d8e01353d15008d0046', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5330', 'be775015-234a-4504-ad52-af6af53d2a9c.jpg', '全明料死模风灯，电镀花银喷紫色      \\r\\n      \\r\\n尺寸：14.5X20CM高\\r\\n1只/五层内盒      12只/大箱      \\r\\n毛坯1月30日送', 'PCS', 156, 3.00, 468.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353d39f06c0060', '4028817a353b8d8e01353d32350d0055', '4028817a353b8d8e01353d15008d0046', '19', '综艺花纸', '5118', 'undefined', '白金字母花纸\\r\\nSWEETS\\r\\n安全包装送祁县光华厂', 'PCS', 100, 3.00, 300.00, '1.产品的颜色、造型、尺寸、重量务必同我司封样一致；\\r\\n2.工厂免费提供2% 余量，以防损耗，代用包装送至指定工厂；请在外包装上注明相对应的合同号及货号；\\r\\n3.交期:2012\n\n年2月5日。', 2, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('4028817a353b8d8e01353d39f06c0061', '4028817a353b8d8e01353d32350d0057', '4028817a353b8d8e01353d15008d0046', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '5337', '673a4e11-3706-4beb-b958-\n\nee1d7c564b3b.jpg', '全明料死模风灯，电镀花银喷蓝色      \\r\\n       \\r\\n尺寸：14.5X20CM高      \\r\\n1只/五层内盒      12只/大箱\n\n    \\r\\n毛坯1月30日送', 'PCS', 156, 3.00, 468.00, '★   产品与封样无明显差异，唛头、标签及包装质量务必符合公司要求。 \\r\\n ★★  产品生产前期、中期、后期抽验率不得少于10%，质量和封样一致， \\r\\n       并将验货照片传\n\n回公司。 \\r\\n★★★ 重点客人的质量标准检验，产品抽验率不得少于50%，务必做到入箱前检查。 \\r\\n 交期：2012年2月15日/工厂。       没有经过我司同意无故延期交货造成严重后果\n\n的，按照客人的相关要求处理。 \\r\\n 开票：出货后请将增值税发票、验货报告、合同复印件及出库单一并寄至我司，以便我司安排付款。', 5, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('40288286607ea08c01607ecc5e8b0006', '40288286607ea08c01607ea3d9500001', 'ff8080816077bbb3016077bd30b10000', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', 'fj001', 'fj002,jpg', 'sd', 'PCS', 1, 10.00, 10.00, 'dsad', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('40288287617040310161707a8a1d0002', '402882876170403101617079e0540000', '40288287616a411e01616ab546270006', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', 'FJ1234', 'lv.png', NULL, 'PCS', 21, 11.00, 231.00, NULL, 1, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('93f91ed9-518f-49b1-bd5a-da971397153a', '42b8eaa7-c7d2-40e0-8727-e90cb209abae', '2c90c5004ad63735014ad6d204060005', '4028817a3632e86601363344d16d0001', '淄博花纸厂', '003', 'http://${qiniu.rtValue}', '3', '3', 3, 3.00, 9.00, 'abcdef', 3, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('b06f3dce-a4df-4406-a5e8-2aba725469be', 'd754b2dd-33ff-42ed-b20e-ca1a4bef788c', 'bbad9b14-5858-496e-94bd-dd102ecc471d', '4028817a33de41d80133e982a18a001c', '太谷PVC', '1', NULL, '1', '1', 1, 5.00, 5.00, '1', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_ext_cproduct` VALUES ('c73a560a-2be5-40c0-b2e3-19a44853f5a2', '34161ada-1442-4158-ba7b-88ab93fe7047', 'FC8A89AD11CD426BA7045A20F3E2E95A', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', '1', NULL, '1', '1', 1, 1.00, 1.00, '1', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_ext_cproduct` VALUES ('d5c0c1b0-67cb-4115-a7b7-a15fca0b6d74', 'd754b2dd-33ff-42ed-b20e-ca1a4bef788c', 'bbad9b14-5858-496e-94bd-dd102ecc471d', '4028817a353b8d8e0135415bf0a90070', '宇津水龙头厂', '1', NULL, '1', '1', 1, 1.00, 1.00, '1', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_ext_cproduct` VALUES ('dc77f249-d8c9-4d5b-8820-5f54d3b5a324', '4740cccc-8c67-4810-94f5-97d58bb92073', 'C2C011E96CC3451DAD181AF3372CB80D', '4028817a34f93be50134f9df84470001', '神舟厂', '1', NULL, '1', '1', 1, 1.00, 1.00, '1', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b3460160b5b5ea520001', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', NULL, 'fj002,jpg', NULL, NULL, 1, 10.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b3460160b5b6f3e80002', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a33d4f8b40133d9989f5e0024', '民鑫', NULL, 'fj002,jpg', NULL, NULL, 1, 10.00, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5ba180b0000', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a353b8d8e0135415bf0a90070', '宇津水龙头厂', NULL, 'fj002,jpg', NULL, NULL, 1, 10.00, 10.00, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5bb86f10001', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a35e0895e0135ec7a4dbe0087', '西安方圆工贸', NULL, 'adssad', NULL, NULL, 1, 5.00, 5.00, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5bdcd370003', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', NULL, NULL, NULL, 'fj002,jpg', NULL, NULL, 2, 15.00, 30.00, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5bedc3e0004', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', NULL, 'fj002,jpg', NULL, NULL, 1, 10.00, 10.00, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5bf2a660005', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a33ecdbf70133ee202e49000b', '瑞成电镀厂', NULL, NULL, NULL, NULL, 1, 10.00, 10.00, NULL, NULL, NULL, NULL);
INSERT INTO `co_ext_cproduct` VALUES ('ff80808160b5b99e0160b5c0471b0006', 'ff80808160b5b3460160b5b4d5500000', '8a7e84105823102a01582310fcd70000', '4028817a33de41d80133e982a18a001c', '太谷PVC', NULL, 'fj002,jpg', NULL, NULL, 1, 10.00, 10.00, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for co_ext_eproduct
-- ----------------------------
DROP TABLE IF EXISTS `co_ext_eproduct`;
CREATE TABLE `co_ext_eproduct`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `export_product_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `export_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属报运单id',
  `factory_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cnumber` decimal(11, 0) NULL DEFAULT NULL,
  `packing_unit` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'PCS/SETS',
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '自动计算: 数量x单价',
  `product_request` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `SYS_C005449`(`factory_id`) USING BTREE,
  INDEX `SYS_C005450`(`export_product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of co_ext_eproduct
-- ----------------------------
INSERT INTO `co_ext_eproduct` VALUES ('85f51c8f-84bc-4c25-9fde-896a0261bb74', NULL, '75b0682f-899d-418b-9c9e-2aeb7dccc29b', '4028817a33ecdbf70133ee202e49000b', '1', NULL, '1', 1, '1', 1.00, 1.00, '1', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_ext_eproduct` VALUES ('aa42b8be-792f-4e3b-8fe8-e905c1fb9854', NULL, '75b0682f-899d-418b-9c9e-2aeb7dccc29b', '4028817a371a8d7f01372a74451f0068', '1', NULL, '1', 1, '1', 1.00, 1.00, '1', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `co_ext_eproduct` VALUES ('e55ac171-0da9-4de1-96b2-9b32f1f03362', NULL, '75b0682f-899d-418b-9c9e-2aeb7dccc29b', '4028817a34f93be50134f9df84470001', '1', NULL, '1', 1, '1', 1.00, 1.00, '1', 1, '1', '传智播客教育股份有限公司');

-- ----------------------------
-- Table structure for co_factory
-- ----------------------------
DROP TABLE IF EXISTS `co_factory`;
CREATE TABLE `co_factory`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ctype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '货物/附件',
  `full_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `factory_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contacts` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `inspector` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1正常0停用',
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_dept` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL,
  `update_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of co_factory
-- ----------------------------
INSERT INTO `co_factory` VALUES ('1', '货物', '祁县海洋厂', '升华', '刘生', '0354-5299987', NULL, NULL, '厦门', '吕波', NULL, NULL, '0', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('10', '货物', '祁县晶晨厂', '晶晨', '续贵', '0354-5271999', NULL, NULL, '东莞', '吕波', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('12', '货物', '平遥远江厂', '平遥远江', '宏远', NULL, '13935499967', NULL, '连云港', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('13', '货物', '平遥鸿艺厂', '平遥鸿艺', '雄飞', '0354-5940888', NULL, NULL, '东莞', '吕波', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('15', '货物', '南皮开发玻璃制品厂', '南皮开发', '舒东', '0317-8863999', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('16', '货物', '陕西康达彩印厂', '康达', '袁喜', '029-84528015', NULL, NULL, '拉萨', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('17', '货物', '陕西众鑫印务包装有限公司', '众鑫', '赵毅', '029-84341858', NULL, NULL, '连云港', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('18', '货物', '翰林彩印厂', '翰林', '孙财', '029-88917456', NULL, NULL, '长沙', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('19', '货物', '祁县综艺玻璃花纸厂', '综艺花纸', '王棕', '0354-5278918', NULL, NULL, '长沙', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('2', '货物', '祁县光华厂', '光华', '薛成', '0354-5298981', NULL, NULL, '长沙', '吕波', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('20', '货物', '祁县喜福来玻璃加工厂', '喜福来', '王卫', '0354-5328850', NULL, NULL, '长沙', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('21', '货物', '祁县美晶泡沫厂', '美晶', '范长', '0354-5071387', NULL, NULL, '长沙', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('22', '货物', '祁县瑞成玻璃镀膜厂', '瑞成', '温明', NULL, '13834809374', NULL, '长沙', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('3', '货物', '祁县会龙厂', '会龙', '李伟', '0354-5248696', NULL, NULL, '长沙', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4', '货物', '祁县精艺厂', '精艺', '闫强', '0354-5047289', NULL, NULL, '厦门', '高琴', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a33d4f8b40133d9989f5e0024', '附件', '闻喜民鑫厂', '民鑫', '李民', '0359-7472727', NULL, NULL, '包头', '吕波', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a33de41d80133e982a18a001c', '附件', '太谷四通PVC厂', '太谷PVC', '张海', '0354-6226591', NULL, NULL, '沈阳', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a33ecdbf70133ee202e49000b', '附件', '祁县瑞成电镀厂', '瑞成电镀厂', '温民', '13835926900', NULL, NULL, '沈阳', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a34f93be50134f9df84470001', '附件', '神舟玻璃制品有限公司', '神舟厂', '申定', '0356-3961959', '13935672348', '0356-3991304', '福州', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a353b8d8e0135415bf0a90070', '附件', '陕西宇津进出口有限公司', '宇津水龙头厂', '任宁', '029-62990818', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a35e0895e0135ec7a4dbe0087', '附件', '西安方圆工贸有限公司', '西安方圆工贸', '许涛', '029-86539568', NULL, '029-86590565', '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a3632e86601363344d16d0001', '附件', '淄博雷波陶瓷花纸厂', '淄博花纸厂', '吴璇', '0533-5176946', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a371a8d7f01372a74451f0068', '附件', '山西大德成工贸有限公司', '铁架厂', '高辉', '0354-5288919', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a37583d45013758d152450038', '附件', '祁县顺驰厂', '顺驰', '王明', '0354-5109398', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a38024a04013803e3a8a2004b', '附件', '祁县欣欣泡沫有限公司', '祁县欣欣泡沫厂', '许杰', '0354-3939793', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a382b4fd401382b9aad2a0008', '附件', '祁县仲玉玻璃厂', '仲玉', '吕军', '0354-5018888', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a38736298013874c51a800036', '附件', '汇融玻璃有限公司', '展鹏厂', '厂长', '0354-5326986', '13834893800', '0354-5826197', '西安', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a389cc7b701389d1efd940001', '附件', '宇虹包装彩印厂', '宇虹包装厂', '翟帅', '0358-3099923', '19033470988', '0358-3098183', '西安', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a39b2b37f0139b46268c40025', '附件', '祁县馨艺玻璃厂', '馨艺', '袁长', '0354-5041938', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a3aa9f950013ab0b6c98d0050', '附件', '祁县一先厂', '一先厂', '李刚', '0654-9018444', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a3aa9f950013ab97f64110053', '附件', '温县致远玻璃制品有限公司', '温县致远厂', '红升', '18936896666', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a3abe8f15013ac019a61f0031', '附件', '祁县喜福来电镀厂', '喜福来电镀厂', '王卫', '0154-5282888', NULL, NULL, '东莞', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('4028817a3ae2ac42013ae3550357000d', '附件', '临潼华清蜡厂', '临潼华清蜡厂', '吴波', '13791903888', NULL, NULL, '东莞', NULL, NULL, NULL, '0', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('5', '货物', '祁县汇越厂', '汇越', '建忠', '0354-5019656', NULL, NULL, '西安', '吕波', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('6', '货物', '祁县泰宇厂', '泰宇', '立东', '0354-5299160', NULL, NULL, '西安', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('7', '货物', '祁县天顺厂', '天顺', '渠海', '0354-5299499', NULL, NULL, '连云港', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('8', '货物', '祁县天诚厂', '天诚', '庞正', '0354-5299539', NULL, NULL, '东莞', NULL, NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('9', '货物', '祁县华艺厂', '华艺', '史国', '0354-5041927', NULL, NULL, '东莞', '高琴', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:34:53', NULL, '2015-01-10 19:32:46');
INSERT INTO `co_factory` VALUES ('ff808081301885760130189e47ca0013', '附件', '文水志远厂', '文水志远', '志远', '0358-3934083', NULL, NULL, '连云港', '李光', NULL, NULL, '1', NULL, NULL, '2015-01-10 19:35:06', NULL, '2015-01-10 19:32:46');

-- ----------------------------
-- Table structure for co_packing_list
-- ----------------------------
DROP TABLE IF EXISTS `co_packing_list`;
CREATE TABLE `co_packing_list`  (
  `packing_list_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `seller` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `buyer` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `invoice_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '选择',
  `invoice_date` datetime(0) NULL DEFAULT NULL,
  `marks` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descriptions` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `export_ids` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报运ID集合',
  `export_nos` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报运NO集合x,y|z,h',
  `state` decimal(11, 0) NULL DEFAULT NULL COMMENT '0草稿 1已上报',
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_dept` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`packing_list_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of co_packing_list
-- ----------------------------
INSERT INTO `co_packing_list` VALUES ('8a7e8412584c739201584c7433c50000', '美国ABC', 'ABC', 'ABC', '2016-11-09 00:00:00', 'ABC', 'ABC', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `co_packing_list` VALUES ('8a7e842b57bc33760157bc340dad0000', 'AJ1', '小陈', 'PK10022', '2016-10-06 00:00:00', 'marks唛头', 'descript描述', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for pe_dept
-- ----------------------------
DROP TABLE IF EXISTS `pe_dept`;
CREATE TABLE `pe_dept`  (
  `dept_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` decimal(6, 0) NULL DEFAULT NULL COMMENT '1代表启用，0代表停用，默认为1',
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE,
  INDEX `SYS_C005596`(`parent_id`) USING BTREE,
  CONSTRAINT `SYS_C005596` FOREIGN KEY (`parent_id`) REFERENCES `pe_dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_dept
-- ----------------------------
INSERT INTO `pe_dept` VALUES ('100', '商贸集团', NULL, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('100101', '北京事业部', '100', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('100101101', '顺义事业部', '100101', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('3d00290a-1af0-4c28-853e-29fbf96a2722', '市场部', '100', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('4028827c4fb6202a014fb6209c730000', '总裁办', NULL, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('4028827c4fb633bd014fb64467470000', '财务部', NULL, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('73f3fa2f-66a2-4d16-8306-78d89003031b', '网络部', '100', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('8a7e82be61400c000161400c05810000', '黑马299，非常NB', NULL, 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('8a7e862458b9ed5b0158b9edc0e80000', '调研组', '3d00290a-1af0-4c28-853e-29fbf96a2722', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('97f88a8c-90fc-4d52-aed7-2046f62fb498', '总经办', '100', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', '船运部', '100', 1, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_dept` VALUES ('ff808081613b858301613b8586c60000', '黑马程序员1', NULL, 1, '1', '传智播客教育股份有限公司');

-- ----------------------------
-- Table structure for pe_role
-- ----------------------------
DROP TABLE IF EXISTS `pe_role`;
CREATE TABLE `pe_role`  (
  `role_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_dept` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_role
-- ----------------------------
INSERT INTO `pe_role` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '测试权限角色', '测试权限角色', NULL, NULL, NULL, NULL, NULL, NULL, '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '船运专员', '船运专员', 9, NULL, NULL, '2015-09-11 16:59:44', NULL, '2015-07-25 09:55:21', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '船运经理', '船运经理', 10, NULL, NULL, '2015-09-11 16:59:47', NULL, '2015-07-25 09:55:37', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '装箱专员', '装箱专员', 11, NULL, NULL, '2015-09-11 16:59:49', NULL, '2015-07-31 14:49:21', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '总经理', 'sysadmin', 1, NULL, NULL, '2015-09-11 16:58:57', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '销售经理', 'salemanager', 2, NULL, NULL, '2015-09-11 16:58:04', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0003', '合同专责', 'contract', 3, NULL, NULL, '2015-09-11 16:58:00', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '销售专责', 'sale', 4, NULL, NULL, '2015-09-11 16:57:47', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0005', '报运经理', 'transportation', 5, NULL, NULL, '2015-09-11 16:57:42', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0006', '报运专责', 'trans', 6, NULL, NULL, '2015-09-11 16:57:37', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '财务经理', 'financial', 7, NULL, NULL, '2015-09-11 16:57:32', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');
INSERT INTO `pe_role` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '财务专责', 'fin', 8, NULL, NULL, '2015-09-11 16:57:25', NULL, '2015-07-20 00:00:00', '1', '传智播客教育股份有限公司');

-- ----------------------------
-- Table structure for pe_role_module
-- ----------------------------
DROP TABLE IF EXISTS `pe_role_module`;
CREATE TABLE `pe_role_module`  (
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `module_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_role_module
-- ----------------------------
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '101');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '103');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '102');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '1');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '302');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '303');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '3');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ec38cc0002', '301');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '204');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '50102');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '208');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '207');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '5');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '501');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '205');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '1');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '2');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '101');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '504');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '201');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '50103');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '50104');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '102');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '203');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '206');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '503');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '202');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '502');
INSERT INTO `pe_role_module` VALUES ('402882866092f8ba016092fc8b8b0000', '50101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '1');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '102');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '103');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '208');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '3');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '301');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '302');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '303');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '4');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '401');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '402');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '5');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '501');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '502');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '503');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '504');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '6');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '601');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0001', '602');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '1');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '102');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '103');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '208');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '4');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '401');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '5');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '501');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '502');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0002', '503');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '1');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '102');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '103');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0004', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '101');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '102');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '6');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '602');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '604');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '1');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '208');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '103');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '603');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0000', '601');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '2');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '201');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '202');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '203');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '204');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '205');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '206');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '207');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '208');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '3');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '301');
INSERT INTO `pe_role_module` VALUES ('4028a1c34ec2e5c8014ec2ebf8430001', '302');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '4');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '401');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0007', '402');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '3');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '301');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '302');
INSERT INTO `pe_role_module` VALUES ('4028a1cd4ee2d9d6014ee2df4c6a0008', '303');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '2');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '201');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '202');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '203');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '204');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '205');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '206');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '207');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '208');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '3');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '301');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '302');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '303');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '5');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '501');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '50101');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '502');
INSERT INTO `pe_role_module` VALUES ('05eef982-416f-4626-9e9f-84d1cf394444', '503');

-- ----------------------------
-- Table structure for pe_role_user
-- ----------------------------
DROP TABLE IF EXISTS `pe_role_user`;
CREATE TABLE `pe_role_user`  (
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role_id`, `user_id`) USING BTREE,
  INDEX `SYS_C005471`(`user_id`) USING BTREE,
  CONSTRAINT `SYS_C005471` FOREIGN KEY (`user_id`) REFERENCES `pe_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_role_user
-- ----------------------------
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1c34ec2e5c8014ec2ec38cc0002');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1cd4ee2d9d6014ee2df4c6a0000');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1cd4ee2d9d6014ee2df4c6a0001');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1cd4ee2d9d6014ee2df4c6a0002');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1cd4ee2d9d6014ee2df4c6a0003');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1cd4ee2d9d6014ee2df4c6a0004');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1cd4ee2d9d6014ee2df4c6a0005');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1cd4ee2d9d6014ee2df4c6a0006');
INSERT INTO `pe_role_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028a1cd4ee2d9d6014ee2df4c6a0007');
INSERT INTO `pe_role_user` VALUES ('0f1f71fe-fe7c-4a44-a952-4f08bf5aa990', '4028a1c34ec2e5c8014ec2ec38cc0002');
INSERT INTO `pe_role_user` VALUES ('10d29bc9-78c1-4831-a21a-4fcfea7d87ce', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('18077bdb-8dd3-4aae-95a2-078c963f8416', '4028a1cd4ee2d9d6014ee2df4c6a0000');
INSERT INTO `pe_role_user` VALUES ('1d47b054-003f-41e0-8ba3-5600f38653f8', '4028a1cd4ee2d9d6014ee2df4c6a0003');
INSERT INTO `pe_role_user` VALUES ('1d47b054-003f-41e0-8ba3-5600f38653f8', '4028a1cd4ee2d9d6014ee2df4c6a0008');
INSERT INTO `pe_role_user` VALUES ('25d3a062-5ca1-4203-8537-6a1cff351a8a', '05eef982-416f-4626-9e9f-84d1cf394444');
INSERT INTO `pe_role_user` VALUES ('40a58e0c-e6ee-47e9-bdb6-0b90a8b41a68', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('424b2d01-d812-4f30-be40-dcda14110118', '4028a1cd4ee2d9d6014ee2df4c6a0007');
INSERT INTO `pe_role_user` VALUES ('5f6ba59b-f185-4c8a-9caa-99cba5963cdb', '4028a1c34ec2e5c8014ec2ec38cc0002');
INSERT INTO `pe_role_user` VALUES ('6424df15-963c-4218-8371-6ad000ef5a5a', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('6764e5a1-45e5-4229-a72a-7c5d72209b15', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('6bbf3016-54ab-4ab2-b0d3-2d6622ac17eb', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('71a5a695-0ba5-4f0d-a0b5-0a304efde944', '4028a1cd4ee2d9d6014ee2df4c6a0007');
INSERT INTO `pe_role_user` VALUES ('7a02a732-f5b5-4a9e-8e40-2e04d0fc66e5', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('84b4a1c0-fb52-4fd5-b410-5db1c933d146', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('8fe436ac-87e9-4d35-a3a4-0eb33cae6c86', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('9fe270f8-f682-4126-92aa-604d945c95f1', '4028a1cd4ee2d9d6014ee2df4c6a0000');
INSERT INTO `pe_role_user` VALUES ('b11c3da4-4760-4f4f-9913-78f7749ffcf9', '4028a1cd4ee2d9d6014ee2df4c6a0007');
INSERT INTO `pe_role_user` VALUES ('b891b14b-1316-4a79-8b88-695be1e3f42f', '4028a1cd4ee2d9d6014ee2df4c6a0007');
INSERT INTO `pe_role_user` VALUES ('c9a4973e-8daa-4380-a9ec-599410d6fd6b', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('ca592c7c-860a-464c-8f56-ea51b42a046f', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('cf0015d3-bcdd-433b-889d-808b53b72640', '4028a1c34ec2e5c8014ec2ec38cc0002');
INSERT INTO `pe_role_user` VALUES ('e0de22fe-2c50-4216-ad75-ed0494d2dc92', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('e0de22fe-2c50-4216-ad75-ed0494d2dc92', '4028a1cd4ee2d9d6014ee2df4c6a0007');
INSERT INTO `pe_role_user` VALUES ('e2fc5d41-2733-4c8a-88a6-6dbad214d47e', '4028a1c34ec2e5c8014ec2ebf8430001');
INSERT INTO `pe_role_user` VALUES ('e2fc5d41-2733-4c8a-88a6-6dbad214d47e', '4028a1c34ec2e5c8014ec2ec38cc0002');
INSERT INTO `pe_role_user` VALUES ('faa59d6e-2e04-4972-bd4f-fd946ba38b99', '4028a1c34ec2e5c8014ec2ebf8430001');

-- ----------------------------
-- Table structure for pe_user
-- ----------------------------
DROP TABLE IF EXISTS `pe_user`;
CREATE TABLE `pe_user`  (
  `user_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dept_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '不能重复,可为中文',
  `station` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'shiro MD5密码32位',
  `state` decimal(11, 0) NULL DEFAULT NULL COMMENT '1启用0停用',
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dept_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manager_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `degree` int(2) NULL DEFAULT NULL,
  `salary` decimal(10, 0) NULL DEFAULT NULL,
  `join_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` int(3) NULL DEFAULT NULL,
  `create_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录人编号',
  `create_dempt` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录人所属部门编号',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `SYS_C005467`(`dept_id`) USING BTREE,
  CONSTRAINT `SYS_C005467` FOREIGN KEY (`dept_id`) REFERENCES `pe_dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pe_user
-- ----------------------------
INSERT INTO `pe_user` VALUES ('002108e2-9a10-4510-9683-8d8fd1d374ef', '4028827c4fb6202a014fb6209c730000', 'lw@export.com', '老王', '员工', '72a7dc98f2ce9f5312a7267d88c965d1', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '0', '12345678', '1989-01-06', 1, 2000, '2019-02-26', 1, NULL, NULL, '2015-10-18 17:00:53', NULL, '2015-10-18 17:00:53', '貌美如花');
INSERT INTO `pe_user` VALUES ('0f1f71fe-fe7c-4a44-a952-4f08bf5aa990', '100101101', 'xiaoer@export.com', '小二', '员工', '359c4cd72b2c243b64371da49ef82d75', 1, '1', '传智播客教育股份有限公司', '顺义事业部', NULL, '1', '13800138001', '1992-03-16', 4, 2000, '2010-05-06', 1, NULL, NULL, '2018-01-02 16:02:41', NULL, '1970-01-01 08:00:00', '1');
INSERT INTO `pe_user` VALUES ('10d29bc9-78c1-4831-a21a-4fcfea7d87ce', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'cy002@export.com', 'cy002', '员工', '36e167b32297d5e0d40339640624ba3e', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '0', '13800138002', '1990-05-19', 4, 5000, '2010-05-06', 2, NULL, NULL, '2018-02-06 18:37:22', NULL, '1970-01-01 08:00:00', '2');
INSERT INTO `pe_user` VALUES ('18077bdb-8dd3-4aae-95a2-078c963f8416', '4028827c4fb6202a014fb6209c730000', 'lisi@export.com', '李四', '经理', '5e582f08ffaef00f984bbe611e121a19', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '0', '13800138003', '1984-02-26', 4, 5000, '', NULL, NULL, NULL, '2015-09-24 00:41:12', NULL, '2015-09-24 00:14:23', '');
INSERT INTO `pe_user` VALUES ('1d47b054-003f-41e0-8ba3-5600f38653f8', '3d00290a-1af0-4c28-853e-29fbf96a2722', 'huamulan@export.com', '花木兰', '市场经理', '59fe271f9d6719000a8f2af97af38b6c', 1, '1', '传智播客教育股份有限公司', '市场部', NULL, '0', '13800138004', '1988-12-30', 4, 5000, '', NULL, NULL, NULL, '2017-12-31 11:08:19', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('25d3a062-5ca1-4203-8537-6a1cff351a8a', 'ff808081613b858301613b8586c60000', 'jack@itheima.com', 'jack@itheima.com', '权限测试用户', '02f120a405a75528c7003e2eecd71324', 1, '1', '传智播客教育股份有限公司', '黑马程序员1', NULL, '0', '12345', '2019-08-06', 2, 123, '2019-7-5 10:53:37', 1, NULL, NULL, NULL, NULL, NULL, '测试权限角色');
INSERT INTO `pe_user` VALUES ('40a58e0c-e6ee-47e9-bdb6-0b90a8b41a68', '100101', 'laoda@export.com', '老大', '员工', '943035c4ef1691542dce6db6b3f68a27', 1, '1', '传智播客教育股份有限公司', '北京事业部', NULL, '1', '13800138005', '1987-11-21', 4, 5000, '', NULL, NULL, NULL, '2018-01-02 16:03:48', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('424b2d01-d812-4f30-be40-dcda14110118', '4028827c4fb6202a014fb6209c730000', 'J0724@export.com', 'J0724', '助理', '655fa85f01e03692a11da5ff8575d447', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '1', '13800138006', '1986-09-09', 4, 3500, '', NULL, NULL, NULL, '2015-10-21 10:47:24', NULL, '2015-10-21 10:47:24', '');
INSERT INTO `pe_user` VALUES ('5f6ba59b-f185-4c8a-9caa-99cba5963cdb', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'cyboos@export.com', 'cyboos', '副总经理', '2e124d1f66b49df7b76ffab38c30b380', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '1', '13800138007', '1989-01-06', 4, 4000, '', NULL, NULL, NULL, '2018-02-06 18:38:32', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('6424df15-963c-4218-8371-6ad000ef5a5a', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'OOP@export.com', 'OOP', '员工', '029b2816925dd87a0b8cc8904613d2d4', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '1', '13800138008', '1989-01-06', 4, 12000, '', NULL, NULL, NULL, '2016-11-03 10:26:33', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('6764e5a1-45e5-4229-a72a-7c5d72209b15', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'AOP@export.com', 'AOP', '员工', '47f9644ed1a661c40a3eaeaba8fa83de', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '1', '13800138009', '1989-01-06', 4, 10000, '', NULL, NULL, NULL, '2016-11-03 10:27:16', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('677f58a8-d8c8-4ff5-b9b9-d3df141f7329', '97f88a8c-90fc-4d52-aed7-2046f62fb498', 'mxl@export.com', 'mxl', '总经理', 'b69165df0f85d41156983b7e43b2b45b', 1, '1', '传智播客教育股份有限公司', '总经办', NULL, '1', '13800138010', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2016-12-06 10:37:57', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('6bbf3016-54ab-4ab2-b0d3-2d6622ac17eb', '100101', 'bj001@export.com', 'bj001', '', 'a2675d56cf78781f4f836b67172d6345', 1, '1', '传智播客教育股份有限公司', '北京事业部', NULL, '1', '13800138011', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2018-01-03 16:16:10', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('71a5a695-0ba5-4f0d-a0b5-0a304efde944', '4028827c4fb6202a014fb6209c730000', 'J0723@export.com', 'J0723', '员工', '396cae50b3da868baf37f71ee95c921c', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '1', '13800138012', '1989-01-06', 4, 15000, '', NULL, NULL, NULL, '2015-10-21 10:46:29', NULL, '2015-10-21 10:46:29', '');
INSERT INTO `pe_user` VALUES ('735730bf-3ac0-4690-882d-100178d58ff9', '100', 'zbz@export.com', 'zbz', '秘书', '5f4849b40ccc3d8e39c61cd7b589a0cb', 1, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '1', '13800138013', '1989-01-06', 4, 3000, '', NULL, NULL, NULL, '2017-03-11 11:51:18', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('7a02a732-f5b5-4a9e-8e40-2e04d0fc66e5', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'cy001@export.com', 'cy001', '', '353ba070f5bf66c9f4dae3799c889f16', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '0', '13800138014', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2018-02-06 18:36:43', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('7abc4bdf-8c15-4592-bd2a-2bd64121560e', 'ff808081613b858301613b8586c60000', 'rose@itheima.com', '普通管理', '系统管理', '123456', 1, '', 'SAAS企业', '黑马程序员1', NULL, '0', '123', '2019-07-02', 1, 123, '2019-06-06', NULL, NULL, NULL, NULL, NULL, NULL, '');
INSERT INTO `pe_user` VALUES ('84b4a1c0-fb52-4fd5-b410-5db1c933d146', '100101101', 'sy001@export.com', 'sy001', '员工', 'd943722276ef1cd9a01ae156e5590a2f', 1, '1', '传智播客教育股份有限公司', '顺义事业部', NULL, '0', '13800138015', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2018-01-03 16:17:39', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('8fe436ac-87e9-4d35-a3a4-0eb33cae6c86', '3d00290a-1af0-4c28-853e-29fbf96a2722', 'liufx@export.com', 'liufx', '员工', 'd9b4219aafb664e1a47053b1d9c053ca', 1, '1', '传智播客教育股份有限公司', '市场部', NULL, '0', '13800138016', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2016-10-31 11:36:24', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('9fe270f8-f682-4126-92aa-604d945c95f1', '4028827c4fb6202a014fb6209c730000', 'zhangsan@export.com', 'zhangsan', '', 'b309e4296ed2f6003e8fc8f5d6b390ef', 1, '', 'SAAS企业', '', NULL, '0', '13800138017', '1989-01-06', 0, 5000, '', 0, NULL, NULL, '2015-09-24 00:41:00', NULL, '2015-09-24 00:13:40', '');
INSERT INTO `pe_user` VALUES ('b11c3da4-4760-4f4f-9913-78f7749ffcf9', '4028827c4fb6202a014fb6209c730000', 'J0725@export.com', 'J0725', '员工', 'ee029a30db22bfef15ec6404abf24df1', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '1', '13800138018', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2015-10-21 10:48:11', NULL, '2015-10-21 10:48:11', '');
INSERT INTO `pe_user` VALUES ('b891b14b-1316-4a79-8b88-695be1e3f42f', '4028827c4fb6202a014fb6209c730000', 'aj@export.com', 'aj', '', '204bf04d928f4fc8743f326f04046ccf', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '1', '13800138019', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2015-09-24 11:37:10', NULL, '2015-09-24 11:37:10', '');
INSERT INTO `pe_user` VALUES ('c9a4973e-8daa-4380-a9ec-599410d6fd6b', '100101101', 'xiaosan@export.com', 'xiaosan', '员工', 'c16b2ba0003f0b7867489a646c880f34', 1, '1', '传智播客教育股份有限公司', '顺义事业部', NULL, '1', '13800138020', '1989-01-06', 4, 5000, '', NULL, NULL, NULL, '2018-01-02 16:03:21', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('ca592c7c-860a-464c-8f56-ea51b42a046f', '3d00290a-1af0-4c28-853e-29fbf96a2722', 'baitu@export.com', 'baitu', '', '3dde9a0d159ede0f0ac5aa1f9156f7e6', 1, '1', '传智播客教育股份有限公司', '市场部', NULL, '1', '13800138021', '1977-11-09', 4, 5000, '', NULL, NULL, NULL, '2018-02-03 12:28:35', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('cf0015d3-bcdd-433b-889d-808b53b72640', '100', 'mz@export.com', '马总', '总经理', 'c5afde1623b313b8dea3aa3033f319bc', 1, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '1', '13800138022', '1984-08-13', 4, 5000, '', NULL, NULL, NULL, '2016-12-06 11:35:25', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('e0de22fe-2c50-4216-ad75-ed0494d2dc92', '4028827c4fb6202a014fb6209c730000', 'cgx@export.com', 'cgx', '', 'd244cf08243d25b2855665d8f833916f', 1, '1', '传智播客教育股份有限公司', '总裁办', NULL, '1', '13800138023', '1979-11-16', 4, 5000, '', NULL, NULL, NULL, '2015-09-24 11:43:02', NULL, '2015-09-24 11:39:47', '');
INSERT INTO `pe_user` VALUES ('e2fc5d41-2733-4c8a-88a6-6dbad214d47e', 'aeb1c7d3-9a54-4f73-b0ec-0325b83aef45', 'SOA@export.com', 'SOA', '员工', '26ca5931261f9335a27a46c7fc9fb1e5', 1, '1', '传智播客教育股份有限公司', '船运部', NULL, '1', '13800138024', '1990-11-06', 4, 5000, '', NULL, NULL, NULL, '2016-11-03 10:28:01', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('ef1f631d-76c8-4837-9ad9-f5f6209e4463', '100', 'ylj@export.com', 'ylj', '员工', 'd69e7d950529fbf6f846da41a9d3dd88', 1, '1', '传智播客教育股份有限公司', '商贸集团', NULL, '1', '13800138025', '1988-07-26', 4, 5000, '', NULL, NULL, NULL, '2016-11-18 11:12:53', NULL, '1970-01-01 08:00:00', '');
INSERT INTO `pe_user` VALUES ('faa59d6e-2e04-4972-bd4f-fd946ba38b99', '100101', 'bj002@export.com', 'bj002', '', '0b02be90bd07b3c0551b02b4f5ad2c30', 1, '1', '传智播客教育股份有限公司', '北京事业部', NULL, '1', '13800138026', '1984-02-16', 4, 5000, '', NULL, NULL, NULL, '2018-01-03 16:16:55', NULL, '1970-01-01 08:00:00', '');

-- ----------------------------
-- Table structure for ss_company
-- ----------------------------
DROP TABLE IF EXISTS `ss_company`;
CREATE TABLE `ss_company`  (
  `id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司名称',
  `expiration_date` datetime(0) NULL DEFAULT NULL COMMENT '到期时间',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司地址',
  `license_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '营业执照-图片',
  `representative` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '法人代表',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司电话',
  `company_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公司规模',
  `industry` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属行业',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `state` int(2) NULL DEFAULT 1 COMMENT '状态',
  `balance` double NULL DEFAULT NULL COMMENT '当前余额',
  `city` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ss_company
-- ----------------------------
INSERT INTO `ss_company` VALUES ('1', '传智播客教育股份有限公司', NULL, '江苏沐阳', 'xxx001', '张三', '110', '100人以上', '教育', '教育机构', 1, 5, '北京');
INSERT INTO `ss_company` VALUES ('90b45dda-1839-4c7e-968f-9f791afce4a0', '1', NULL, '2', NULL, '3', '4', '5', '6', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for ss_module
-- ----------------------------
DROP TABLE IF EXISTS `ss_module`;
CREATE TABLE `ss_module`  (
  `module_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `layer_num` decimal(11, 0) NULL DEFAULT NULL,
  `is_leaf` decimal(11, 0) NULL DEFAULT NULL,
  `ico` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cpermission` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `curl` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctype` decimal(11, 0) NULL DEFAULT NULL COMMENT '0 主菜单/1 左侧菜单/2按钮/3 链接/4 状态',
  `state` decimal(11, 0) NULL DEFAULT NULL COMMENT '1启用0停用',
  `belong` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮时，可以标识其归属，\\n            查询某页面按钮时就用此属性查询',
  `cwhich` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quote_num` decimal(11, 0) NULL DEFAULT NULL,
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_no` decimal(11, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`module_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ss_module
-- ----------------------------
INSERT INTO `ss_module` VALUES ('182104f0-7690-4a84-a90c-16d24e491a3a', '5', '系统管理', '日志管理', NULL, NULL, NULL, '日志管理', 'system/log/list.do', 1, 1, '1', NULL, NULL, '', NULL);
INSERT INTO `ss_module` VALUES ('2', NULL, NULL, '货运管理', 1, 0, NULL, '货运管理', 'cargo', 0, 1, '1', NULL, NULL, 'cargo', 2);
INSERT INTO `ss_module` VALUES ('201', '2', '货运管理', '购销合同', NULL, NULL, NULL, '购销合同', 'cargo/contract/list.do', 1, 1, '1', NULL, NULL, 'cargo', 9);
INSERT INTO `ss_module` VALUES ('202', '2', '货运管理', '出货表', NULL, NULL, NULL, '出货表', 'cargo/contract/print.do', 1, 1, '1', NULL, NULL, 'cargo', 10);
INSERT INTO `ss_module` VALUES ('203', '2', '货运管理', '合同管理', 2, 0, NULL, '合同管理', 'cargo/export/contractList.do', 1, 1, '1', NULL, NULL, 'cargo', 11);
INSERT INTO `ss_module` VALUES ('204', '2', '货运管理', '出口报运', NULL, NULL, NULL, '出口报运', 'cargo/export/list.do', 1, 1, '1', NULL, NULL, 'cargo', 12);
INSERT INTO `ss_module` VALUES ('205', '2', '货运管理', '装箱管理', NULL, NULL, NULL, '装箱管理', 'cargo/packing/list.do', 1, 1, '1', NULL, NULL, 'cargo', 22);
INSERT INTO `ss_module` VALUES ('206', '2', '货运管理', '委托管理', NULL, NULL, NULL, '委托管理', 'cargo/shipping/list.do', 1, 1, '1', NULL, NULL, 'cargo', 23);
INSERT INTO `ss_module` VALUES ('207', '2', '货运管理', '发票管理', NULL, NULL, NULL, '发票管理', 'cargo/invoice/list.do', 1, 1, '1', NULL, NULL, 'cargo', 24);
INSERT INTO `ss_module` VALUES ('208', '2', '货运管理', '财务管理', NULL, NULL, NULL, '财务管理', 'cargo/finance/list.do', 1, 1, '1', NULL, NULL, 'cargo', 25);
INSERT INTO `ss_module` VALUES ('3', NULL, NULL, '统计分析', 1, 0, NULL, '统计分析', 'stat', 0, 1, '1', NULL, NULL, 'stat', 3);
INSERT INTO `ss_module` VALUES ('301', '3', '统计分析', '生产厂家销售情况', NULL, NULL, NULL, '生产厂家销售情况', 'stat/toCharts.do?chartsType=factory', 1, 1, '1', NULL, NULL, 'stat', 13);
INSERT INTO `ss_module` VALUES ('302', '3', '统计分析', '产品销售排行', NULL, NULL, NULL, '产品销售排行', 'stat/toCharts.do?chartsType=sell', 1, 1, '1', NULL, NULL, 'stat', 14);
INSERT INTO `ss_module` VALUES ('303', '3', '统计分析', '系统访问压力图', NULL, NULL, NULL, '系统访问压力图', 'stat/toCharts.do?chartsType=online', 1, 1, '1', NULL, NULL, 'stat', 15);
INSERT INTO `ss_module` VALUES ('4', NULL, NULL, '基础信息', 1, 0, NULL, '基础信息', 'baseinfo', 0, 1, '1', NULL, NULL, 'baseinfo', 4);
INSERT INTO `ss_module` VALUES ('401', '4', '基础信息', '系统代码', 2, 0, NULL, '系统代码', NULL, 1, 1, '1', NULL, NULL, 'baseinfo', 16);
INSERT INTO `ss_module` VALUES ('402', '4', '基础信息', '厂家信息', 2, 0, NULL, '厂家信息', NULL, 1, 1, '1', NULL, NULL, 'baseinfo', 17);
INSERT INTO `ss_module` VALUES ('5', NULL, NULL, '系统管理', 1, 0, NULL, '系统管理', 'sysadmin', 0, 1, '1', NULL, NULL, 'sysadmin', 5);
INSERT INTO `ss_module` VALUES ('501', '5', '系统管理', '部门管理', 2, 0, NULL, '部门管理', 'system/dept/list.do', 1, 1, '1', NULL, NULL, 'sysadmin', 18);
INSERT INTO `ss_module` VALUES ('50101', '501', '部门管理', '查看部门', 3, 1, NULL, '查看部门', 'sysadmin/deptAction_toview', 2, 1, '1', NULL, NULL, 'sysadmin', 1801);
INSERT INTO `ss_module` VALUES ('50102', '501', '部门管理', '新增部门', 3, 1, NULL, '新增部门', 'sysadmin/deptAction_tocreate', 2, 1, '1', NULL, NULL, 'sysadmin', 1802);
INSERT INTO `ss_module` VALUES ('50103', '501', '部门管理', '修改部门', 3, 1, NULL, '修改部门', 'sysadmin/deptAction_toupdate', 2, 1, '1', NULL, NULL, 'sysadmin', 1803);
INSERT INTO `ss_module` VALUES ('50104', '501', '部门管理', '删除部门', 3, 1, NULL, '删除部门', 'sysadmin/deptAction_delete', 2, 1, '1', NULL, NULL, 'sysadmin', 1804);
INSERT INTO `ss_module` VALUES ('502', '5', '系统管理', '用户管理', 2, 0, NULL, '用户管理', 'system/user/list.do', 1, 1, '1', NULL, NULL, 'sysadmin', 19);
INSERT INTO `ss_module` VALUES ('503', '5', '系统管理', '角色管理', 2, 0, NULL, '角色管理', 'system/role/list.do', 1, 1, '1', NULL, NULL, 'sysadmin', 20);
INSERT INTO `ss_module` VALUES ('8842b580-49c0-4871-b234-5cf9c721a507', 'ad3be6e7-551f-45b6-b816-b2b751e204ed', 'SaaS管理', '模块管理', NULL, NULL, NULL, '模块管理', 'system/module/list.do', 1, 1, '0', NULL, NULL, '', NULL);
INSERT INTO `ss_module` VALUES ('9c5eb9b0-54a4-48bb-aab4-0d1d46cdfbbd', 'ad3be6e7-551f-45b6-b816-b2b751e204ed', 'SaaS管理', '企业管理', NULL, NULL, NULL, '企业管理', 'company/list.do', 1, 1, '0', NULL, NULL, '', NULL);
INSERT INTO `ss_module` VALUES ('ad3be6e7-551f-45b6-b816-b2b751e204ed', '', '', 'SaaS管理', NULL, NULL, NULL, 'SaaS管理', '', 0, 1, '0', NULL, NULL, '', NULL);

-- ----------------------------
-- Table structure for st_online_info
-- ----------------------------
DROP TABLE IF EXISTS `st_online_info`;
CREATE TABLE `st_online_info`  (
  `A1` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_online_info
-- ----------------------------
INSERT INTO `st_online_info` VALUES ('00');
INSERT INTO `st_online_info` VALUES ('01');
INSERT INTO `st_online_info` VALUES ('02');
INSERT INTO `st_online_info` VALUES ('03');
INSERT INTO `st_online_info` VALUES ('04');
INSERT INTO `st_online_info` VALUES ('05');
INSERT INTO `st_online_info` VALUES ('06');
INSERT INTO `st_online_info` VALUES ('07');
INSERT INTO `st_online_info` VALUES ('08');
INSERT INTO `st_online_info` VALUES ('09');
INSERT INTO `st_online_info` VALUES ('10');
INSERT INTO `st_online_info` VALUES ('11');
INSERT INTO `st_online_info` VALUES ('12');
INSERT INTO `st_online_info` VALUES ('13');
INSERT INTO `st_online_info` VALUES ('14');
INSERT INTO `st_online_info` VALUES ('15');
INSERT INTO `st_online_info` VALUES ('16');
INSERT INTO `st_online_info` VALUES ('17');
INSERT INTO `st_online_info` VALUES ('18');
INSERT INTO `st_online_info` VALUES ('19');
INSERT INTO `st_online_info` VALUES ('20');
INSERT INTO `st_online_info` VALUES ('21');
INSERT INTO `st_online_info` VALUES ('22');
INSERT INTO `st_online_info` VALUES ('23');

-- ----------------------------
-- Table structure for st_sys_log
-- ----------------------------
DROP TABLE IF EXISTS `st_sys_log`;
CREATE TABLE `st_sys_log`  (
  `id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `method` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `company_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of st_sys_log
-- ----------------------------
INSERT INTO `st_sys_log` VALUES ('000e4e98-3310-485e-b4d9-3e7001805114', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:48:41', 'list', '查询角色', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('0029f5a1-74be-4138-915e-4085fbd16b1a', '老王', '0:0:0:0:0:0:0:1', '2019-07-04 10:20:53', 'list', '查询角色', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('00563b17-3ec6-4be1-bf49-90fbb4e8d032', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:04', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('00991a6b-fb86-48aa-a0fb-5d12e6317671', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:52:01', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('009cef3d-7666-4fad-a206-83c04931f4d4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:02:16', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('01f77933-0e46-4140-9b13-f12e8ecd89be', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:38', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('02d3fe50-4708-4304-b958-b33d696e1866', '老王', '0:0:0:0:0:0:0:1', '2020-03-24 15:10:44', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('0377b21b-befb-458a-ad9c-7e09a783330f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:59', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('039b6cff-2b3b-46cf-879b-22c211702152', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2019-07-06 00:02:51', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('03d9dc09-71ef-48cc-b72f-6ce88696fe52', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:52:43', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('040c8645-a2dd-4c35-acfd-ff5fb575eedf', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:12', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('045a70d6-0a92-47f1-89a7-16e0b9c14179', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-24 15:59:28', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('04977275-c05b-4ed0-8d99-cfcfcf2f0d34', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:47:25', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('04f999f8-16a9-41aa-8ad9-49931f24d5b1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:34', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('056f4948-ecf0-469f-aa92-a1dea6968c54', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:05:11', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('05fadcb6-dee4-4540-ba09-c9fb6cf4f51a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:58:05', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('065e28fc-7bbd-44ff-9db3-3b1e3f960edc', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:52:47', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('067ef5ef-9f8b-4507-b478-20cc260f5934', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:25', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('079025c0-e525-4e08-a321-ce5489844530', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:56', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('079939c8-47b0-454d-92fe-fd9c2bf99acc', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:00:44', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('085f55ba-d1e1-409d-b7bd-f6498c7161ee', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:05:41', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('0ab9fa1f-27ea-41c7-b005-9f784d3548f1', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:07:21', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('0add4972-08ce-4c1f-a0c4-7529be949ffa', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:49', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('0bb21d23-a888-4c3e-aa56-a7402ecf463c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:51', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('0bdcd6cd-4594-4aa1-ad3c-ea8a77f44eca', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:23:21', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('0c07c6c9-df19-49ee-8513-39455c1f9b21', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 11:06:57', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('0d49a2e4-7813-44d4-b37d-7d3900eec576', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 12:02:03', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('0dc809d9-d209-452a-8724-09e385999144', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:24:59', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('100c6c70-e38f-46cc-bbc5-ca114c3cf47b', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:46:13', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('107da412-a85a-4510-bd46-99d423a8cfea', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:53:48', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('11d77a6c-2726-4189-91eb-3cb017e35af2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:02:19', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('12932b8a-4d04-4971-a05a-79030ec108d6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:53:40', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('12ecf011-deaa-48c5-b373-8bd95bd0bba9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:26:23', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('12f4933d-af10-445b-a695-b38ed74083ad', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:36:24', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1306c5da-dd1b-4feb-b32f-bccbad680a0c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:01:07', 'list', '查询部门', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1334dc75-49be-42c3-8edf-f38fbc759570', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 10:10:27', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('13988577-5181-444a-b31e-830e48f9538a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:19:42', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('139b9c77-1597-48f0-98fc-f4ea4067c66f', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:13', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('13cd641e-616e-40c0-91a6-dfb2468bbf97', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:51:44', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('13dfc798-388d-46c1-b783-5b50247abe91', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:46', 'changeRole', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('13f95c78-8ba2-4166-8d0b-7cfca6b5b575', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:24:00', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('15987dfb-a32e-4301-bb1e-43e2cc366ea9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:30', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('15e11646-f06d-41ba-aab8-44f1ad1a1896', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:48', 'list', '查询角色', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('163a48fa-9c44-48da-9bf2-14794383a1ff', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:02:15', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('16fd42f9-c847-4534-be3a-8788b5614d9e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:29:11', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('16fde4c1-fe8c-42e2-af8a-9edf3fac9c55', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:09', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1762c573-55ca-43a2-acf2-0aa8bb2b745e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:46:20', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('176e398b-713f-4b93-ac48-52e6cb54102f', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 10:06:07', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('176fbbf4-2681-4506-b135-c11a9827e9fe', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:22', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1779fad2-9a55-4d10-93b7-fea75e57e441', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:53:55', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('179c2e98-33d9-49ac-a620-dd3b18028350', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:43:04', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('17ea703f-fb76-4b41-a396-5549ff98ddb0', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:44:49', 'toAdd', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('19162e50-3b9d-42f0-91ac-cbc23b74b576', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:49:11', 'edit', '添加和修改用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('198f1305-d46c-444f-abb9-fdf6061cdd0b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:35:23', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('19bc7c0e-964f-4dd8-80d3-6bafeb553aac', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:05:41', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('19cb831f-03d3-4e63-8e81-b508379f3ac7', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:19', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('19fec653-07ae-4c87-947f-a44fca1f2fc0', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:53:47', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1ac65697-1d98-48f0-b85c-544b74640212', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:51:40', 'list', '角色查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1aea334f-8b6c-484b-b545-c8f7d86715e3', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 11:12:36', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('1b2c942f-c3ee-4d10-972b-947808522ed2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:30', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1b4ebe63-fa81-4564-9eee-b29f452428c1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:52:48', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1b70632a-6ed7-4ffd-9433-25bb6d36df0c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:12', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1b99c686-e8ca-4040-ad4e-bb6a0d46d50d', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 11:55:57', 'print', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1bbecf08-7c3f-4145-b03a-e3ac1b496635', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:51:36', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1ca0149e-b4ed-490e-9f58-e44490a0a8a1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:49:27', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1da7be59-402e-4b47-b609-f17116af92a5', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:30:14', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1ddf1cbc-8116-41b3-ac82-27d29d1d1a63', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 11:07:25', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1e1608e0-94b3-4ad3-a14e-802dbcc13d3e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:35:03', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1eb9d149-9a0a-42e1-a615-c768ee2ac883', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:38', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1f450f88-a167-41fc-a675-75f4f5afe27e', NULL, '0:0:0:0:0:0:0:1', '2020-03-25 10:10:25', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('1f72fbee-fd2b-4c47-b321-0a40416ba457', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:07:35', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('1fe87cdc-b78e-4409-af73-eb2772daffb5', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:36:31', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('2002d5cd-ff75-4a1e-8846-76aa2466658c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:57:22', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('20233cff-e30a-4175-a677-ea8d3a12ea0c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:50', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('20585863-1e64-4b1b-915b-236131c1d7b6', NULL, '0:0:0:0:0:0:0:1', '2020-03-24 15:07:11', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('20be786c-6b54-40a5-9246-9f768c237a85', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:59', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('215ed6e1-a878-4441-abc3-f0fcd57ae488', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:51:48', 'list', '角色查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('21f8909e-eebd-4db4-bfdb-3a7dd65e19a3', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:30:14', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('23492cfd-8bbf-43bc-85fe-9fead0b4bedb', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:57', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('234a993f-3133-43e9-bad6-1149e88c37cd', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:35:52', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('237579ee-df30-466b-ba82-859b7822d1b2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:02:24', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('23c4b5cd-f96c-4a20-86b6-f5ee826bd585', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 10:14:54', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('264e9495-4012-42d5-87a9-ba7905053722', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:11:06', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('268e588d-fad8-4dd5-a4f2-a2276795508c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:26', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('26e17a2d-34d8-4155-a4c8-10b4d4971a9e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:49:17', 'roleList', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('271c69f4-8743-4101-bfbf-926ef75d5aff', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:10:02', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('27d84e40-96fd-48c6-914d-f8fb2d862549', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:41', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('28e49728-48ae-45e1-9152-b82afb0086cd', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 18:03:56', 'list', '用户查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2ada04ee-e032-409c-b5ca-dacf0c9014f7', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:20', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2be2097d-f380-428f-b79e-b84a1c3a545c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:53:51', 'roleModule', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2be9c4a9-5c03-4e72-8b86-803a445eae34', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:51:39', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2beb1be0-d306-4968-b9ca-818390fab4b1', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-24 15:17:42', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('2c94ee5a-3734-4744-a28a-4649626730c1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:28', 'list', '查询部门', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2d0e7b5b-bbca-40c7-a5bc-2820aa8eb1e9', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2019-07-06 00:02:56', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2d3f2192-d577-40c8-a0d5-ca6202352318', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-24 15:13:00', 'list', '企业查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('2d588728-2fd0-455f-b18d-ff6f04dd9e68', NULL, '0:0:0:0:0:0:0:1', '2020-03-24 09:53:20', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('2da8e98e-a13b-4627-8b4b-d8c187417724', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:55:28', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2dba0516-8d10-4436-8781-38e6abd5d411', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:19:39', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2dc2a807-1907-4fb9-87fa-2555191717cd', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 15:09:00', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2df86406-d84e-4bff-9bc9-639a210f65da', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:34:34', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2e14bbc1-ad04-413e-9539-bb26f229e1c3', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:44:42', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2e8f8458-8716-4780-9220-52295047ff2a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:23:24', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2e9cfc9f-4065-43d5-896c-82dc6c16acd0', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:02:16', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2eafd78e-c4c1-42e9-af0f-68c663c80d1d', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:07:38', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2f1505b8-b77c-45fe-9ff8-1e979aaea7f9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:30:17', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('2f78b7d1-89f1-4ff7-87fe-40c30ba83ede', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:14:12', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('300b7a8b-1561-4cb6-bc36-bffe2a1e438f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:35:02', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3034a83d-16e6-45f1-9034-0730a09046aa', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 15:07:49', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3059a249-f772-467a-ad4c-ff008e20a01a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:25', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3093f939-d2a7-476e-b6ed-ea823379d2ac', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 10:06:21', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('322beffb-be5d-4446-8f40-5030e56e775e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:35:03', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('329bdd4c-773a-4004-a5c2-3da50fb4b816', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:12', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('33551564-7bbf-4cbb-997b-4dbc207f84d8', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:12:30', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('335df0cd-c466-455a-9fd0-f4af2b41e2dd', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:49:49', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('33866ea5-af9d-4a28-94c5-aeded652ac3e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:00:44', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('33afe7f3-7977-4233-8170-8fbd4d5e9aff', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:04', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('34783b1e-ade5-4502-8e74-168a3f74a4cd', NULL, '0:0:0:0:0:0:0:1', '2020-03-24 15:10:42', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('348b2dcd-e7d3-44e4-8fbb-315ed57098f9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:30', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3494c73d-537e-4a93-9b7e-6b72681a846b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:39:21', 'submit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('351b65bc-9a68-4798-b01a-73b6c59fb3af', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:29:13', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('35c036d9-9b86-45b0-833a-cd08a526975f', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 12:02:04', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('35c87fd9-6b0a-4365-86ed-a7ccfea6782e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:35:23', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('35f6a43d-aa46-4e0d-ab65-1a4687eea5ab', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2019-07-06 00:02:35', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('39183091-f10e-4dad-8ab8-28f6ca4ebf3e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:02:18', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('399cdf14-31a9-44df-95c5-c0b0170a267b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:39:22', 'submit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('39c296c2-34be-4d21-b236-4a2f195c7585', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2019-07-06 00:08:58', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3a0ea03f-8636-4fe5-897d-c23072ef0832', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:26:33', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3a673b88-5126-4dcd-b67b-0cc234453538', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:48', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3a74df45-8604-4c2f-80c2-b7ab598c1fc5', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:53:05', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3acc2535-d481-47e2-96ac-f7e618385ad3', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:53', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3ad669bd-deb2-4bcd-9bae-9956494dbd78', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:12:14', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3aecac9b-b1d6-4773-8e2c-62bf2cffc5f4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:19', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3afc576e-b319-49e2-a600-89ae7db041ca', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:12:19', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3b47530a-c8c6-4e4f-a0c0-6f0293ba9de3', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2019-07-06 00:02:36', 'toAdd', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3c984553-2b1a-42aa-af9c-b8d56de6fef5', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:52:39', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3cccfc80-b9ea-448d-a809-a34dded5271d', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:23:27', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3d4e2314-9153-4461-827b-8ce02f704cce', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:01:10', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3d77ffe1-89a5-4f74-9170-27dd5b3afc09', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:03:06', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3db38757-f884-4a31-b0cf-fa40699d14f8', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:23', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3eaecf83-1381-444f-b8fc-4b9f76249f57', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:21', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3eb6fa1f-d074-4e85-9e9d-04e50ce8a70f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:25', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3edb149f-e06d-4e07-a613-88d3d0ab4971', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:11', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3eea2ed4-c7e9-4e5c-bd8c-3cfdd1e57417', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:14:40', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3f39865c-0e7d-4f8a-afee-ce52e779b54b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:48', 'list', '查询部门', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3fc78f28-a7aa-446d-8221-a258b6921c3f', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 18:03:54', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('3fced949-79af-4257-adbe-069e769677c3', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:19', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4018bac6-1817-42e5-8bba-324714dc5687', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:59:20', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('40452915-2b4b-48b5-ae97-763d55e79db7', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:26:18', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('40a25a7f-d6a1-486c-8fa5-f8d160d71eff', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:23:55', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('40fcb6fd-2e87-4ef3-ae3c-809772e22428', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:16', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('410ceaf8-0f93-4a6a-9eff-7f626afa98e1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:50', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('413f60ab-fcfa-4b66-878c-131603d02009', '老王', '0:0:0:0:0:0:0:1', '2020-03-24 17:47:10', 'updateRoleModule', '修改角色的权限数据', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('419ccab8-5e99-4498-82af-7a2dcad880de', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:49:29', 'treeData', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('41e2ef31-75bb-485c-821c-a1440a22abd9', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-25 10:06:07', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4201f52a-78a2-4133-a5c7-66d75cf45a96', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:59', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('42082215-f0dd-4577-9494-a1796f616dc7', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:36', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('422902dc-7bb4-41cc-a668-e356a1e9761c', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:51:39', 'list', '用户查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4394e8ab-e0c5-4728-b9e5-ef889d63bc71', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:03:11', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('43988767-7529-4d21-8e2b-9c6fd6e538f5', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-25 09:57:17', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('449cda5c-100c-42d5-81d5-54f300210a21', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:21', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('44d0e1eb-3966-4a47-99b5-bd69cdfe21b2', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 18:04:03', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('44fd86d6-cf19-430f-8b1c-ddd0bd51f4bb', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:36', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('46186403-f7f6-4d10-afed-cd026cc326f2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:27:33', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('462c8126-dc40-4fe8-b332-c96323915fc6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:31', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('464f8c6e-5d9e-4d04-9108-a9a30229ea05', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:02:12', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('47482a42-1d13-4c97-856a-a94771c7d0f8', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:11', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('48b8e433-e88a-44b6-94a4-fe3e842ff504', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:25', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('494802dd-3ba9-4d09-999c-76bd62726ca6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:34:34', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('497e31a6-0944-49d0-a3c6-11261b42ca75', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:13:40', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4a0f48ac-66cf-464d-8584-ede9c9e79708', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:14:08', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4a2ecd3b-3757-4fe9-9c28-d1a3d912bce8', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:43:32', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('4a5020b2-f8da-4a08-b901-b4a3f18c9a62', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:55:39', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('4a72f0d0-7eb1-49ac-9fa9-361fca33290b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:29:45', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4ac93247-300e-4d5d-9936-7e2419bc1981', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:23:55', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4ba72ce5-7614-4b75-9365-cca41aa7d975', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:37', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4ba98202-2e2c-46ce-95a9-7514fd55fa0e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:35', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4d746b3e-8ef7-431d-b4f0-2bb950ee391c', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:07:21', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4dd694a3-3ec9-487f-88d6-1bbf6bd6dada', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 18:03:56', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4e8316fb-1545-40ff-961f-2c61910ab1f5', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:12:29', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4e8de8b7-26c4-48d6-a205-8a04d1ad4d3c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:24', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4f39f281-0ae2-4a8c-9ed7-733df1e0dae6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:29', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('4f950daa-d60c-41a8-9a41-d3fff66c4490', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-25 10:03:04', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('503de0f7-f92a-4e3c-b2f8-2b9d6dab6c20', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2019-07-05 10:54:20', 'list', '查询部门', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5153dffc-a6e1-40e9-822c-9041c98b726c', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:02:20', 'roleModule', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('52cf406c-80d5-41d4-8b08-21ec679e9cdb', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:29:13', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('530a6acc-9466-4d4f-a4fa-0be5cca50590', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:03:10', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('530bcdbf-e232-4ccc-9330-bdc2d5354706', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:10', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('53659bb5-6530-4efd-82f5-8f8b45a5dc80', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 15:07:53', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('539ab8ce-3314-42d8-b67c-04badade3df9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:50:47', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('53cd69f6-b1a3-40b5-8340-1766fe6a2c24', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:14:28', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('53f1e707-bb2f-4831-9794-c9b56eaf4c65', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:26:23', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('54f0f22f-c6dc-4fee-8db3-ad4fad0d6bcf', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:12:43', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('552f3c0e-b9c9-4c51-a21f-6b7a878b76e6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:32', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('56042384-b3fa-4c19-a419-60cd0b7194a9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:49:43', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5662d913-6f32-42d4-bd78-b4e70c55b5c2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:19', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('567411fc-4c0f-4228-88a0-bfe5f419048f', NULL, '0:0:0:0:0:0:0:1', '2020-03-24 15:17:39', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('56d5718a-a4f1-4dc4-8d4c-e41b85d3f121', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 15:07:49', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5733b951-601e-4d07-aa31-7de0fec13a2d', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:14:12', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('57e9d7ba-a1a6-4dd1-b602-f7c439eb4f36', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:39', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('588e4dd8-8336-424c-8f48-f1f2beaaeba4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:59:21', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('58ee0829-ed7e-4e6b-94bb-859dddad46ff', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:03:02', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5913ffe8-f7b1-4e27-84ad-a16897bd358e', NULL, '0:0:0:0:0:0:0:1', '2020-03-24 15:59:20', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('599f48b0-3706-40a4-9487-afe8f9cccc95', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:33', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('59dc2372-2471-4ee9-b257-0ea8ca14617b', '老王', '0:0:0:0:0:0:0:1', '2019-07-04 10:21:10', 'list', '查询部门', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5a4b2037-d0e2-48cd-b09b-59028b6ee86a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:38', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5a9ab847-873d-4c3d-9461-fb3eb62e29cf', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-25 09:50:50', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5b6c4214-c21f-4012-95f6-bd99e812ca36', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:35', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5b70806e-80df-48f3-b358-af5e211c8037', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:12:36', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5bb863ad-f781-4d7d-bc40-767387b8db8f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:32:02', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5c2eb821-f12c-497e-b330-66b5c2ffc8fa', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:53:55', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5c31ba4f-948a-4c5c-bc20-471ad7a232e0', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:49:47', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5cd5443a-8d9f-4c8f-95ae-55fdb738362b', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-25 09:56:39', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5d10a866-1128-4989-904b-3f9bcf243fc4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:11:06', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5d30eca9-17c9-4159-96ab-0a4dc7b0c8d2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:38', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5d8b2a98-357e-434b-a37f-34e83f1e2e83', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:49:22', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5d9f335b-419a-4ad2-b29b-3664c1132f92', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:38', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5dc81c86-6785-4a66-84c0-3977c0372ab1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:02:23', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5e97d570-971a-4186-8680-d4e0bd68d2a3', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:04', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5f7db82d-494c-43ad-bbb5-15f2bdd234e2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:04', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5fb66355-915c-441a-a8af-78e9420dc336', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:25', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('5fea6a78-2368-4fac-9b18-4351450fdcf4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:39:29', 'cancel', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('605dc62f-b3dc-46e9-a53a-42c8be677711', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:39:30', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('60de464c-3548-48c8-bd51-b0d3beca2d0d', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:05:43', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('60e9b659-233b-4814-8ed8-c54be13e31a9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:43', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('611711ed-7c46-4ba7-9298-9937b6e061a0', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:00:28', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('618dd9d0-f153-4070-9090-375f4ef31d08', '老王', '0:0:0:0:0:0:0:1', '2020-03-24 15:11:39', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('61a07fbf-d881-4c70-938b-0fa0d471ecf9', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 12:01:58', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('61a63011-18e1-4a2d-bb5a-9e477ffdd1d0', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:22', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('61d635df-e123-43df-a078-3b3afc021921', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:16', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('62117df0-9e8c-48a7-b84e-9c7f7a0f8ab9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:34:31', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('62d71b7c-0e63-45da-9d4f-bf205e0e3060', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:43', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('63184408-5a65-4409-a3ad-8836be377594', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:59:57', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('63b2cc0f-b8d9-44eb-bc61-69da268bdb6f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:55', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('63cf6374-d85d-4178-b757-151380ad4a50', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:55:01', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('648d395a-e2a2-46fb-81b3-515178cc82bf', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:19', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('64d062c2-8130-4ee4-a089-96d7048f728b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:26:10', 'toAdd', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('654b3d3f-ad3a-4f66-b98a-7a235dccc6ca', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-25 10:02:57', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('65b5feef-25e4-4ae4-8760-14d316d17196', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:14:37', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('65ca0ebe-2899-4822-b79f-7cf90f58dc9f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:02', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('66394d83-e60a-4167-ad1c-c572db5bd5d1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:29:17', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('66c10db4-dee6-4a6a-a04d-3d95d51de561', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:31', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('66e2e897-5722-4987-8fbf-938031d099cc', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:55:55', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('672a5769-cfaf-40d6-bcf1-3d91dae4eaae', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:39:31', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('67c92a9b-3ba2-4bcf-b3a9-ee641bf04dca', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:14:08', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('683a9ef8-2caf-46e1-9436-571ae92f8e0d', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:48:31', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('690d0688-ac4b-4d85-9c7b-4af7ec3d7fbc', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:09', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('69457a94-5d3e-483e-a25a-08efd1da41dc', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:12:17', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('69a7cdf6-75f3-406c-982e-67280adbd372', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:48:12', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('69f93796-8a06-4bb4-a2ab-3eda6ceb3c78', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:17', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6a1bf3ed-74f1-426f-ad36-242a156ac2f1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:03:11', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6a2cebff-4c85-4e9a-b46a-8b45b5de5c3a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:43:58', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6a9eebf5-5f90-419c-aa45-b6577ee535b2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:26:09', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6aa2036f-8c0c-482a-8224-0f713afcb18a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:05:03', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6ad977ce-76ba-452d-b14d-328a5a8932bc', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:35:02', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6afd89eb-434e-4b4b-a3d0-101742080013', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:13', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6b497f6d-e45f-43e5-971d-8419cf19932b', '老王', '0:0:0:0:0:0:0:1', '2020-03-24 17:46:38', 'list', '角色查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6b738369-4c32-4676-891d-9bf8d4f38af1', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-25 09:56:39', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6d288cca-e564-4734-9910-6941266ba0f1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:30:25', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6d4e5892-43a3-4e68-bfe0-16a0e2a4f87f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:08:28', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6d820b7c-f227-43c4-92c2-c648b1dde3f1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:23:35', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6dd7d471-016d-4134-9063-06ff1cd35e8e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:36', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6e38103e-90e7-41dc-a0d0-e65946850397', NULL, '0:0:0:0:0:0:0:1', '2020-03-25 10:10:25', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('6e395d5e-294c-4976-8ef0-3374e3216f73', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:35:03', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6ea34c8a-4e25-40d3-9772-bdc1f67511b6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:24:56', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6f1c750a-8239-4cf0-9cbd-44e2cb125239', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:23:35', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6f40f4f1-aa37-4b0a-8c31-c25af3a8893a', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-25 09:57:21', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6f4a7c63-139a-43c7-93de-792efdd08f26', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:55:03', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6f74aa78-e32e-40a9-87e2-2729ab2d917f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:38', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6f7fb59b-5a1c-47ba-ae72-b91e56c101e0', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:24', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6f88be57-389e-4711-bc45-b02d7e609269', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:17', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('6faf48db-811a-405f-ac58-14a0593ccb9e', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 18:04:02', 'list', '用户查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('700f3e1b-b539-47ff-b07e-0fd9f05c11d0', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:23:18', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('70f4d062-0908-4a43-b630-c1c1d9491873', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:26', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('71145fa7-3500-41fc-8f26-fb6c3fe3f57c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:12:28', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('711876ff-924b-4e6f-b0ee-b4238b91f8ab', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:18', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('727f527b-bf8e-4a7c-97e7-1a156cf8f0c3', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:13:49', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7353771b-e79d-4669-933a-98d22dbe6a43', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:59:59', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('73567061-6704-4140-ae5a-867ca6870c89', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:59:25', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('735bbf89-4bdb-4a4e-b62b-fb8beaf04594', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:12:37', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('73a7a427-6a57-4028-8165-6f457badec38', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:43:46', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('75347169-9aab-4060-b8c9-ede3fde82d48', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 18:03:59', 'list', '角色查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('75fd8e1b-d8e8-492d-84f7-435f40ab7443', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:47', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('76371f00-59f5-44b4-8b9a-fcf442ec544b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:30', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('763ae73e-b904-4492-95dd-8ed1cfde0770', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:38', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('785c020b-fa8b-4527-891b-3a88a3d6f07f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:02:00', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7a06b6bd-dd37-4731-aae5-d09d837af312', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:47', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7a43e572-cb15-4620-b2aa-344a282764e3', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:17:56', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7a9b41d2-465b-4328-916b-ebe2f9a159bd', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:56:13', 'list', '企业查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7aa75120-fd66-494b-ab67-750829b1f4fe', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:51:46', 'list', '用户查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7af5560d-3d0b-48fe-bead-8f8f957070c6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:29:32', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7bb132e6-203b-4680-8ba7-832dddfe79a0', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:02:07', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7c46bf43-ae70-4f9b-90b6-786204453b44', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:34', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7c58330e-38dd-44f0-907d-0cfd68d168b1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:52:43', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7cad310d-050c-42b4-99f8-248319a0d516', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:59:33', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7da8d908-7b9e-41e2-8dac-0ea1306d4586', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:30', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7dcdce3b-ab39-4acf-b772-041f923e8533', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:47:23', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7e181bf1-aa20-47cd-8098-be7aa9197981', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:03:08', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7e5bd668-dddd-4eef-85d8-71bd425972d2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:59:53', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7e7bac1a-446a-41f5-ba27-07594b879a6a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:24', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7f1f5301-29bd-4486-aaa0-9a7e81be2f1b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:53:43', 'roleList', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7f43fab1-c9c2-4f32-8bcf-5377d4d1256e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:19:39', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7f56795d-bcf1-438f-9284-1875946fa6c2', '老王', '0:0:0:0:0:0:0:1', '2020-03-24 17:47:10', 'list', '角色查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('7f911896-8b66-4542-9d22-5d094949befb', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:53:51', 'treeData', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8037c599-3daa-433f-a51c-e07bf193b019', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:29:27', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('80ab1126-0ae9-4a9d-aac0-187b48331ead', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:17:56', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('80ca0dab-adb3-402f-a31d-8e757c63001f', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:36:46', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('80f1bdfc-37b1-497d-8e59-2ae0ec12d8b9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:02:21', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8146e372-90d7-4e57-ab49-badb618b01bc', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:39:36', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('817e4706-9677-4b5a-8b35-4f186169aa05', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:59:16', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('81ba3557-cad1-4431-9765-a6f50c8bf324', NULL, '0:0:0:0:0:0:0:1', '2020-03-25 11:57:26', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('82493b23-fe97-456b-a673-460d2bc9537b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:34:33', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('82913165-1dda-4824-accd-c817ea8b078e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:53', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8293927c-22d4-48d4-837a-f3461da46d60', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 11:07:25', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('82b21b1e-0d97-4011-a2de-a7406bae6022', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 11:00:31', 'list', '模块查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('82c1812c-2309-4774-bbdf-c6b2edcdab6f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:50', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('82c44ebd-6e85-4465-9e2e-5d6a5a83855f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:48:43', 'toAdd', '跳转用户添加', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('83b9cc37-2145-4755-adf4-da12333bbc98', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:35:02', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('84281a4b-aaf0-48cb-8ed6-b3aa0017d872', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:04:58', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('849750d3-aa2a-486c-a375-56f292aff67c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:39:27', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('850a4f51-da7f-4038-8fda-10416ebb780f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:54:06', 'updateRoleModule', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8549b6eb-4f78-4367-bdd4-4b2051670501', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:02:04', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('86020f37-db4c-4469-993a-195381ed1068', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:49:47', 'list', '查询角色', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8655591b-10fb-4d3c-a726-772066d715ca', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:26', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('87b5d430-ae43-4009-877c-376b4c44e866', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:26', 'list', '查询部门', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('87e41f81-72ce-4188-b846-398e126243f3', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:42:06', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('87e7451a-9946-43af-bf90-9a3ccac39e51', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:16', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('882782ad-22d9-411d-a451-9c220333bf87', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 15:07:53', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('883cb335-77c6-47ee-a09c-6e7ce2922fe7', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 10:02:07', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('885cfe0b-0dbc-4f59-b388-5804957f5878', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:36:13', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('88dd2b50-f82c-4448-882f-a745cc1574a4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:17', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('88e197d6-265c-418e-9311-a9c1dab6e653', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:54:07', 'list', '查询角色', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('89967b45-52a8-4f7a-859e-fea15a7838ea', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:02:19', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('89d9b677-ff51-4192-813a-b2be2b5220a4', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:51:40', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8a04da4c-5b8a-4910-9ecd-d2f867935a6f', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:33', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8a916f40-b5ec-4eb6-8be1-4bda59f08047', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:39', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8af6323d-1663-4178-a41f-d4ac3830ab5b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:25', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8b02675a-fb7d-4ee6-af73-cb43ef7134e2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:54', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8bcda612-1c8a-4d31-a686-c1960174743a', NULL, '0:0:0:0:0:0:0:1', '2020-03-24 15:12:54', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('8c9078ed-f4d3-4b69-9123-91b7c25efc3c', NULL, '0:0:0:0:0:0:0:1', '2020-03-25 11:58:30', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('8ce83d2e-7937-48b6-ae75-3f88803028bb', '老王', '0:0:0:0:0:0:0:1', '2020-03-24 15:11:09', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8d71997f-979e-467c-9271-b69efdf4e689', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:44:36', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('8d9d9b93-9069-4b4d-b122-111b77f8851f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:02:32', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8de5c620-6212-4d20-9b34-25ef24ea0343', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:58:17', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8ed67e91-4017-4ae0-a874-e7213b0763d0', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-24 15:11:39', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('8f7868ee-7680-4192-913a-b095692c8e6a', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:41:55', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('8f9ed253-74f6-422f-a18a-e700200053ba', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 11:57:29', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('8fbad908-22a7-4e45-a768-f756f99d1335', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:04:58', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9049639a-3451-415e-8a01-6fe8a62921f6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:37', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9146be08-789e-48cf-918e-6565ce9d9d5a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:11', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('918396af-452b-4255-8fa9-4643b43c7c38', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:52:36', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9312f317-4120-4e35-97e1-8bbbe2b34418', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:27:30', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9319a716-69ac-45c1-bb92-355215659125', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:55:57', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('94199501-8191-46f8-b22e-aa7010b424ea', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-24 15:23:04', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('9426fd9c-ca67-4419-bdd1-5bc187ec73bf', '老王', '0:0:0:0:0:0:0:1', '2020-03-24 17:47:20', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('94644128-ffd9-4291-ab8d-78a00c7379d8', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:50:47', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('946876c1-fcfd-495e-b766-5e659b8219ec', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:27', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9531c659-f46d-4e08-96bf-ce6e49bce6f6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:25', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9535d65e-55c6-4e41-9313-b199316c2e16', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:34:09', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9635d3b2-1b7c-49f1-87dc-9d03e156a0ac', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:26', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('968d0059-4939-44ce-b549-36b533aed26b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:35', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('969ee0dd-71df-4f3e-bb3c-e8afb2b3069c', NULL, '0:0:0:0:0:0:0:1', '2020-03-25 09:50:48', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('96e2ed2b-c2dc-4515-b92d-782b84430c94', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:52:49', 'toAdd', '跳转用户添加', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('98c6b9b1-069a-48dd-b843-6cd58fa43c63', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 12:02:04', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('98e5a3f5-50f0-4855-9457-5067821df8b6', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:43', 'roleList', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('99ca5a21-1262-4d39-a1e9-b6f6a9682369', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:37', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9a58ce26-2885-4369-8c6c-8467b6c5ffce', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:02:28', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9a617901-486f-4ec2-86f2-64af841d2ea3', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:53', 'roleModule', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9b08f5df-3557-41c3-a291-c9b095a917be', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:39', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9b4fa1df-ed08-4d4e-a428-a3e48e28365b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:18', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9bebe09a-f8cd-4b1a-9556-8a841966b984', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:42', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9d7644db-e44e-4b55-94af-e1a241e51f36', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:58', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9d7b3b9c-dc74-45be-8501-890ce5324094', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:39:29', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9e3474cf-7c4f-46cc-9bae-60e37760bd2d', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 11:00:24', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('9f92b5f1-60dc-4c29-af29-6c1fda1eab25', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 10:02:09', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a07382d2-088a-44fb-930d-a2da7153128c', '老王', '0:0:0:0:0:0:0:1', '2020-03-24 17:46:45', 'roleModule', '跳转角色赋值权限的页面', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a08096ee-3174-4969-bbb1-62ea15cbf212', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:33', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a0a69e77-1682-4a61-8d36-65337af870ac', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:43:39', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('a1baf3df-5224-44d5-92d7-7f5754bd9b98', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:03:09', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a26e0c28-b346-4840-8226-dbdfc6dab0cd', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 10:14:50', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('a2cf8f2f-e589-462e-aba8-de4148a83417', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:42:38', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a338df28-6307-4151-86bf-f7eb49a68fa4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:25', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a3b8123f-2e91-46c1-a84d-0ed148bd0561', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:11', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a3c1e6b2-ff54-40ec-8509-eabfe05cc91b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:12', 'toAdd', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a4323b8d-3ed1-47e5-a1e8-a8151b4d397b', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:54', 'treeData', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a48533a2-3240-4990-aac7-f86cdd1837ce', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:48:14', 'toAdd', '跳转添加部门页面', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a4d4ffce-a08c-40e1-93ed-e76add0320ad', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:05:09', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a512805e-0933-43b2-997a-dc9b28ea17b2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:48:42', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a5a64603-b9bc-452a-8e23-973d26efc2e2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:13:51', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a64ba5bc-fd18-4a3e-a7a0-f349b4a1d4d2', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2019-07-06 00:02:51', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a71dc705-2d67-49ef-8d6d-3c7a13e95af6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:52:26', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a75d3572-9910-49c1-9c7c-01f40067b5ad', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:05:29', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a79f3692-be32-43d8-80c2-5b7934cf99d7', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:01:05', 'updateRoleModule', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a7a50e2a-e517-4171-867e-2b1ddffc1a26', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:59:24', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a7bdc2d4-405f-4447-8798-1877e7ae8521', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 11:55:05', 'login', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('a80b0dcf-f152-48c9-8a14-23c2ad801394', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:18:28', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('a9a5baca-5586-468a-b26e-2e1e283b88bf', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:12', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('aa209897-8972-4174-846b-afdc48156d80', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-24 15:12:56', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('aa51bad9-1bca-412d-8c8c-01f26c9747a5', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:04:01', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('aa581353-964f-46c9-b36f-a7e73f30e3b9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:13', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('aa5c4921-6dd8-40c2-96fa-abce51ef8c70', NULL, '0:0:0:0:0:0:0:1', '2020-03-24 15:23:02', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('aa6c613c-012e-47ee-8bf9-65d00e8784da', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:39:25', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('aaca0820-ed68-482d-8965-2a31cc11f600', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:01:06', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('aacc64f9-b256-4963-99e2-c370bbd0c305', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:30:30', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('aaf5dbe2-b393-4773-9fb0-c9de268c5367', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-25 10:06:03', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ab5e6f08-f7ec-4b21-8873-7f9d9a0d1fa4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:30:12', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ab817f44-2356-48d9-aa49-5d344478c9af', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:51:40', 'list', '用户查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('acd928b3-3ebf-42b7-bdbd-a822c0b3b05e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:02:32', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('acdfe8f9-012f-448f-a311-8ba1b8a3a537', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:46', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('afd02c27-6637-42c5-b00c-0fd4db8babfc', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:04:55', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b042295a-70f8-414c-a2f9-ef5dd18dfae1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:49:11', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b10aa298-d34b-48e3-bc88-84e2b94e6af8', '老王', '0:0:0:0:0:0:0:1', '2020-03-25 09:57:21', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b10fc3ca-e5e5-423f-998b-aef2af335990', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:35:02', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b10fe58d-2af1-4095-83f2-0c25e76b4619', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:48', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b2c837ce-ec99-47a1-aa57-2868798b9f4e', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:01:05', 'list', '查询角色', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b2e7da9e-0b04-47b2-a365-0f2c38fa4df2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:01:11', 'list', '查询角色', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b34d6816-9c65-428d-8319-131a284625f4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:04:44', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b3dfbb66-e76e-4190-adb9-88bd85ae32d7', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:19', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b47c1d60-9fb7-470f-bc1f-ba87d878a51a', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 10:52:03', 'list', '用户查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b47f14d0-2f8c-47c8-833e-3a7256422a36', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:46:34', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b6210030-4342-4c06-941c-6237647e4ae9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:12:29', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b664c489-8552-4dd8-bc1b-98809ef1d56c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:05:47', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b66c6bdb-6042-405b-ab92-ad37951f4fe5', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:53:02', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b7fdc750-bc98-4b9b-b89d-f7badf7b1258', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:29:28', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b8b6555b-ade0-4396-b9a4-9d104be229ef', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:49:47', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b9544754-8a7f-485b-94a7-dbe37b421655', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:04:56', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b979fd58-52d8-460a-871d-7726780ecdf8', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:24', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('b9ee45bc-db93-4492-9785-d5d5f256d3e2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:59:33', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ba741f2b-6e97-421f-9257-70c9f6c9a0e6', '老王', '0:0:0:0:0:0:0:1', '2020-03-24 17:47:23', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ba8396d1-e161-4b2b-a734-e24c68276351', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:23:27', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('bb3803ea-96ce-4c93-a8b1-b806da6bc782', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:49:57', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('bb4e58ce-39d2-4576-b586-dbbd3a62f9f7', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:34:57', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('bb9f9601-cca1-4c8c-8403-ea9e36bccee7', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:46:11', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('bc613431-9fcb-45a1-b5f9-6a83ae374d15', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:33', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('bc6ab86a-a451-4248-aa93-19df93d9f497', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:50', 'toAdd', '跳转用户添加', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('bc7ca488-21e9-4659-ab00-22b730a09eff', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:24:50', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('bcafeb8c-cbd7-4454-9a4b-38d905208a01', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:09', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('bd0d1aae-4258-4e69-9042-926f4ab8175a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:01:10', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('bd69bdaa-1478-492b-8fad-47495bbab1eb', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:12', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('bf539817-29f1-4d20-a84a-5c37e407c136', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:34:25', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('bfa1e593-f786-477c-a6f5-ac340c517b8b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:01:07', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c055fafd-c701-46d6-8560-ffa8a577f285', NULL, '0:0:0:0:0:0:0:1', '2020-03-24 15:15:14', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('c1c67eb9-5816-414d-a7e7-6bc0e6bf2711', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:25', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c1ec52ad-ffb7-474b-ad86-cd605a421888', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:42', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c2bfc736-e0fb-42fb-8e11-a50deba79fef', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:11', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c33bce55-c15f-4499-98f6-e9d699d2d31f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:53:37', 'edit', '添加和修改用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c3403576-c78d-4bfd-8574-abf14bc2c686', '老王', '0:0:0:0:0:0:0:1', '2020-03-24 17:46:34', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c34cb79f-890d-43a7-948b-b43ed03c4e6f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:01:15', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c34f7e87-e112-4188-b5b1-ff54fe8d50da', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 11:58:32', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('c3d1ff0c-e47c-408c-8ad9-f3464f467dd3', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:50', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c404b0f3-7d1d-4081-8a9c-da1f3638db68', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:08', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c450d4b5-b676-4427-9445-7d3645cc916f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:43:36', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c484d363-6299-4160-96c4-ee6d9c549648', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:01', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c4c26e3b-a254-4cc0-ab2d-e51d980ff678', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:26:27', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c5c872e8-cf90-461a-bb16-711875d70645', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:46:30', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c6960515-44a1-4ef5-b800-0f843ea79357', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:10:56', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c6c3d9cc-6ede-4cbf-9206-fffb24def84f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:10', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c8b02b27-b297-4983-887d-385469a82aa5', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:20', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c92582a6-c5db-474e-b1d9-b82dca70b26e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:42:36', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('c9961e81-8e06-479c-8000-57080f97927e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:53:37', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('cad292b4-795a-4a68-af1b-aa14ffb4d77c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:30', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('cb398e62-37f5-4872-8b07-38152707be59', NULL, '0:0:0:0:0:0:0:1', '2020-03-25 11:50:10', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('cb735532-507e-4769-a816-b2bd41da5e59', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:47:28', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('cba2a4a9-a52e-4380-9680-ff4e24674495', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:00', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ccb7f8fe-5565-4ad3-b789-1e229ae24f1e', '老王', '0:0:0:0:0:0:0:1', '2020-03-24 17:46:45', 'initTree', '初始化树结构', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ccf158b0-c727-44bb-941f-69f4becea700', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:35:56', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('cd0b67b0-61b3-4c93-b927-305d34c6a804', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:49:57', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ce277675-8337-4151-8ba3-e5c1915e0e1a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:40:29', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ce33daf8-fe9a-4234-97cd-652915a84cdd', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:29:02', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('cf15164f-3720-4e68-9491-c1d9d7e9372b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:56:42', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d0d51120-90a2-4af7-88da-580bf8698ca5', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:52:36', 'changeRole', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d0f0bd30-8a91-423c-a7b4-635320a1c412', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:44', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d1026798-31a1-477c-b531-26bc46bfd13c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:13:50', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d15343d9-85c6-4480-bfcd-3de5755527d6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:13:55', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d1815d39-64c3-47aa-bbc1-e204bcbd02f2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:52', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d1d22dde-737b-441d-a0e1-533c752812b2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:11:00', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d1f64cd9-27f0-4b8f-be8c-0669b2cf52b1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:51:49', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d2575e0d-822a-472f-8bab-38b73ccb7a02', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 10:14:52', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('d2bce93c-5a1f-45b9-bdc5-beae873b7912', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:06', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d2fa56d8-6de4-4e98-acb9-98a4a38bdb66', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 15:09:00', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d3059f1c-39a5-47b5-98ef-e3e37525beb3', '老王', '0:0:0:0:0:0:0:1', '2019-07-04 10:20:53', 'list', '查询用户', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d395786e-88b3-4795-986c-5c120cbd05ab', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:53:46', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d458dcbc-f257-4329-aad8-740088b4111c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:42:49', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d466116a-4235-44c7-9aac-7989e0da95b3', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:59:39', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d546ed20-25d3-4fab-a142-f059fa583aef', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:36', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d59d2d02-c581-4e29-bc9f-ee0edac30f7e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:19', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d5c635ca-93ee-4c09-87f3-dd3de77dde21', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-25 10:03:19', 'list', '部门查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d5e90138-fb56-4cfb-8513-d20e2f4e3701', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:50:39', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d6570f00-ebaa-41ea-9ae9-b7d6e3adbdf2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:00:00', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d72338ea-2030-4865-97cd-731bfa398908', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 11:12:36', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d757f72c-30a7-4d0e-a527-99de01526dab', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:25:37', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d758ebba-169a-4596-b7c8-4db278cc54bc', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:23', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d7cd4d85-4500-4482-8053-69aced6da6f2', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:39', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d7d984e2-59e0-4772-b1a2-57d13eddad45', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:08', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d7f6cad0-5437-4b31-a520-b9f5ccef355f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:29:21', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d848b95a-cdf7-47b9-9301-1cd0533d55eb', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:59:58', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d87a45ff-e644-470d-b1d1-bb5615c1634a', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:03:02', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('d90e4dc7-304f-4ba0-92b1-76bd38e4d31a', NULL, '0:0:0:0:0:0:0:1', '2020-03-24 17:41:55', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('d91c76c2-acd4-4499-8510-4bb1dec942b5', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:14:28', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('da029343-6a8d-4429-962e-2356d8750684', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:02:20', 'treeData', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('da293d9d-b0d9-42a4-b36a-ecb7ae83123c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:37', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('dbb6370f-334b-4d38-8bcb-fa849a4e03b8', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:13:39', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('dc0d398f-2201-4306-9ca5-3ea2a121a703', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:34', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('dd661466-a767-405a-98dd-7b0ada42c2bf', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 11:50:12', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('df6fba86-88e5-45b6-918f-be1324a8c586', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:21', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e0b0c9eb-7c27-4eb4-968e-89734bfae2ae', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 11:12:34', 'logout', '用户登出', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e129a1ac-a826-466c-830b-c548ed2cfffd', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:05:41', 'toView', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e1354abf-4418-414f-90b7-f940e9682452', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:12:28', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e221525f-d269-4d9f-9832-c0e101adbb07', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-24 15:15:17', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('e2a1b2fb-c219-49a8-ab8a-9ea28f28adec', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:35:03', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e4925711-dd50-4164-84c5-7bd8737a6884', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:53:47', 'changeRole', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e4cb7665-a267-493e-b897-fd0cf66e8872', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:23:39', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e547e159-6844-4662-bc49-05d11a1bf0e9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:56:29', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e5e20a78-2124-4e86-8d97-089c819471b0', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 10:14:55', 'list', '企业查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('e72ec2e8-9296-4b7e-a208-afc07c029996', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:56:53', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e7f19d79-10cf-4c0b-9760-67a73656027b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:29', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e878ebe1-6c08-4175-a344-9420a8628412', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:15', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e87edc39-294f-4f89-b7a1-05b54b7668d1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:46:21', 'list', '查询部门', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('e9676e88-1f4f-43ce-868e-a8ebfba3a373', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 10:06:18', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('e9c3c6cb-8ed6-4d98-8584-5286cdb4d1bd', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:34:33', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ea1ff888-3b28-4d7f-a5be-de379dd78dc5', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:48', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ea82af77-393f-4ac2-8a9a-9386fd2b8fe6', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:01:45', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('eaa78d92-fb9c-4545-af65-3e4e92967c53', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:22', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('eadaa590-dff9-4834-bc93-b0623dd17ba7', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-23 11:06:56', 'login', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ebe006a4-b6a6-4600-8497-6101170fc95b', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 10:14:56', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('ec354404-5a7a-4075-bab5-74fecaf45e43', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:30:25', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ecc580ab-c008-4f1b-91e4-c5b40294ddc7', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 11:55:05', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('eea43bac-288e-4719-9864-1c2f4a5e701b', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:17', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('ef22ac51-9060-4a74-8fba-1a31f51a020f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:38', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('efcaabf3-1d02-482c-9f61-8435b2ae72e9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:49:25', 'list', '查询角色', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f1381aad-4c87-47e0-a204-2093e8b47fa1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:05:47', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f1eb3bde-7de4-4fc7-ba31-a989baa36654', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 15:09:23', 'list', '模块查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f2460c8e-19a6-4f5d-8bcc-394ef80c6b9f', NULL, '0:0:0:0:0:0:0:1', '2020-03-25 10:02:55', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('f27c1730-0d28-435b-a3b0-20808383c952', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:12', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f28acd24-5fcd-4beb-9431-2a46cdc8d390', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:00', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f2c6c667-553b-4d2e-b824-20e6b3a8f220', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:34:32', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f2eb30b7-2047-462c-82fc-8103950e18a4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:24', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f30780d5-169e-4712-a82f-c31583af9b25', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:49:22', 'changeRole', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f34320b6-cf4f-4edb-acae-9b73cf200e1d', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 12:02:04', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('f4056f87-1bc6-4bf1-9acd-bf36119e48c9', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:59:57', 'delete', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f45b32ea-eaec-4013-b73e-c999cb6b37d5', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:36:24', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f4b152b5-83ce-47e8-a2f1-7412e8dd6be1', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:53:48', 'list', '查询角色', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f5bb4242-6710-4340-9f7a-4fa24ac3ba9d', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:29:48', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f5d1f635-f708-4918-a550-3b937043409b', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-25 10:06:13', 'list', '模块查询', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('f6204a7f-b3af-48a6-aa03-9d8fbc9441af', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:34:58', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f6bfbe7e-bfd7-4a8d-b734-c813ebc667c4', NULL, '0:0:0:0:0:0:0:1', '2020-03-24 17:49:44', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('f6d8315e-705c-4810-a3c1-4f228baebcfb', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:39:22', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f73d8183-cfd7-4585-8389-f2b7083c0c6f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:56:53', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f797efc8-2d91-467e-9887-f6d37f77f7b5', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:03:08', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f7b1723a-4f86-474e-ab0d-af42a0491198', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:02', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f7d6974e-c1d0-4fc7-9e08-2e06cfc91f67', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:13:55', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f80ba161-cd84-4597-9cb0-7aaf1feb1c6f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:59:40', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f844625e-bcdd-4565-8988-d762fd5381fe', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:34', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f858b552-6c2d-46f2-9a75-794854926b51', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:28', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f869b881-39ae-49da-b802-ae12d7edcdb4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:49:28', 'roleModule', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('f8c852b3-afd7-4c43-b3f1-7fe18a97fa09', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:32:09', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fa60ee84-fa05-45dc-87b5-30bdaa89010b', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:44:39', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fa76efd8-8bdb-43b2-b1cd-4c79b6050a4c', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:01:25', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fa96cea6-b1d6-4617-a38d-f8fb9de0617e', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 18:43:50', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('faff6a08-6491-463a-8deb-6bdcf066b5d7', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:05:14', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fb4e9abd-b3fb-42b6-b34b-dfc0a8532276', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:30:26', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fb8d1937-3dd2-46f7-ba5f-f6f1be45cc90', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:49:47', 'updateRoleModule', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fbc53df0-e78f-417f-97b7-214be6749156', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 15:07:13', 'home', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fbefe3aa-a277-4122-9537-b633d0e77406', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:52:33', 'roleList', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fc055a62-aa13-43f5-ac58-aca1ace6952f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:35:03', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fc3004ff-1e19-4721-afad-956fa57de6c4', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 23:07:15', 'toUpdate', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fce71fce-23a2-4952-856c-21190fe8f38a', 'jack@itheima.com', '0:0:0:0:0:0:0:1', '2020-03-24 17:48:10', 'list', '用户查询', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fce8d5a8-5c93-4e9e-bd0f-617050596773', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 20:55:28', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fd1644a4-7211-4d2d-b24f-e5d2b3716e28', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:28:22', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fd6c1509-4ab2-439e-9ffe-835130f7f3b2', NULL, '0:0:0:0:0:0:0:1', '2020-03-23 10:43:13', 'login', '', NULL, NULL);
INSERT INTO `st_sys_log` VALUES ('fda55ceb-5744-4233-856e-2c036d53c24f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 10:34:58', 'list', '查询模块', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fdab921e-705a-44d3-be86-8bbf58cc1a12', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 19:00:11', 'list', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fe4dcd89-f3e2-4814-9c3e-2868cf5c24bd', '老王', '0:0:0:0:0:0:0:1', '2019-07-06 00:00:49', 'list', '查询角色', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fec4b08e-a5ca-4f9a-8612-c222b49f4be4', 'zhangsan', '0:0:0:0:0:0:0:1', '2020-03-24 15:59:23', 'home', '', '', 'SAAS企业');
INSERT INTO `st_sys_log` VALUES ('ffa0ce81-1762-42a9-9514-dc554301dc1f', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 21:31:24', 'edit', '', '1', '传智播客教育股份有限公司');
INSERT INTO `st_sys_log` VALUES ('fff77dd4-1047-4d30-8ecd-880bc2f1bedf', '老王', '0:0:0:0:0:0:0:1', '2019-07-05 22:09:22', 'list', '', '1', '传智播客教育股份有限公司');

SET FOREIGN_KEY_CHECKS = 1;
