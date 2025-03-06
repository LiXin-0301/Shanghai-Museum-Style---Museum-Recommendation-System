/*
 Navicat MySQL Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50645
 Source Host           : localhost:3306
 Source Schema         : shanghaimuseum

 Target Server Type    : MySQL
 Target Server Version : 50645
 File Encoding         : 65001

 Date: 21/04/2024 13:50:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites`  (
  `m_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `favorites_time` datetime(0) NULL DEFAULT NULL,
  `isDelete` tinyint(4) NULL DEFAULT NULL COMMENT '0是不删1是删',
  PRIMARY KEY (`m_id`, `user_id`) USING BTREE,
  INDEX `user_id_favorites`(`user_id`) USING BTREE,
  INDEX `m_id_favorites`(`m_id`) USING BTREE,
  CONSTRAINT `m_id_favorites` FOREIGN KEY (`m_id`) REFERENCES `museum` (`m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_id_favorites` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of favorites
-- ----------------------------

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件名称',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '文件类型',
  `size` bigint(20) NULL DEFAULT NULL COMMENT '文件大小(KB)',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '下载链接',
  `isDelete` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除',
  `enable` tinyint(1) NULL DEFAULT 1 COMMENT '是否禁用',
  `m_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `m_id_file`(`m_id`) USING BTREE,
  CONSTRAINT `m_id_file` FOREIGN KEY (`m_id`) REFERENCES `museum` (`m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 70 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, '头像1.png', 'png', 21, 'http://localhost:9090/file/d32936c4-084c-4389-9cfd-751ba2463e1d.png', 0, 1, NULL);
INSERT INTO `file` VALUES (2, '头像1.png', 'png', 21, 'http://localhost:9090/file/09877327-f734-41a8-b1d3-5e63e081f69c.png', 0, 1, NULL);
INSERT INTO `file` VALUES (3, '头像1.png', 'png', 21, 'http://localhost:9090/file/432756ed-2345-4434-ad62-126b2c5bf9dd.png', 0, 1, NULL);
INSERT INTO `file` VALUES (4, '头像1.png', 'png', 21, 'http://localhost:9090/file/202a307b-04d3-4f5b-b867-50e674509d96.png', 0, 1, NULL);
INSERT INTO `file` VALUES (5, '头像1.png', 'png', 21, 'http://localhost:9090/file/084e2687-c125-421c-a3d0-d00bc7f93426.png', 0, 1, NULL);
INSERT INTO `file` VALUES (6, '头像1.png', 'png', 21, 'http://localhost:9090/file/de44136b-4373-4cb9-b84c-1fd1a43bae81.png', 0, 1, NULL);
INSERT INTO `file` VALUES (7, '头像1.png', 'png', 21, 'http://localhost:9090/file/70f14631-9416-4da6-a7eb-607f9427467e.png', 0, 1, NULL);
INSERT INTO `file` VALUES (8, '头像1.png', 'png', 21, 'http://localhost:9090/file/a3587e05-e382-4170-9184-9099e10a3f5b.png', 0, 1, NULL);
INSERT INTO `file` VALUES (9, '4407b555ba950f99ffb6d2a14bec4f0a.jpeg', 'jpeg', 67, 'http://localhost:9090/file/f174614c-64ac-48dc-a80f-8046e1a21299.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (10, '4407b555ba950f99ffb6d2a14bec4f0a.jpeg', 'jpeg', 67, 'http://localhost:9090/file/c97d184f-e02b-4226-bd0c-91ae525fb2f5.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (11, '头像1.png', 'png', 21, 'http://localhost:9090/file/96bccb70-592a-41e3-b5c4-bcc78f6c37f7.png', 0, 1, NULL);
INSERT INTO `file` VALUES (12, '4407b555ba950f99ffb6d2a14bec4f0a.jpeg', 'jpeg', 67, 'http://localhost:9090/file/1be1352f-6095-4099-a6c9-c1f94e80611f.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (13, '4407b555ba950f99ffb6d2a14bec4f0a.jpeg', 'jpeg', 67, 'http://localhost:9090/file/73d6e15e-7afb-4b37-bc72-9a6bb067ce86.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (14, '4407b555ba950f99ffb6d2a14bec4f0a.jpeg', 'jpeg', 67, 'http://localhost:9090/file/0867b997-1026-4d6c-a515-4aef806970dd.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (15, '4407b555ba950f99ffb6d2a14bec4f0a.jpeg', 'jpeg', 67, 'http://localhost:9090/file/b3995b2a-5b47-472a-ab99-7a255e2e8121.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (16, '4407b555ba950f99ffb6d2a14bec4f0a.jpeg', 'jpeg', 67, 'http://localhost:9090/file/f63cc5ab-7bb0-4e9a-ac5d-8e094f45a0c6.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (17, '头像1.png', 'png', 21, 'http://localhost:9090/file/23b9d2cb-096c-4a7f-b1c1-e794df9c33fc.png', 0, 1, NULL);
INSERT INTO `file` VALUES (18, '4407b555ba950f99ffb6d2a14bec4f0a.jpeg', 'jpeg', 67, 'http://localhost:9090/file/8b4380a4-a565-43b9-bd26-846fbb036a9d.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (19, '头像1.png', 'png', 21, 'http://localhost:9090/file/2c51f93a-bcfd-4a15-9e6b-e424eb62fd9d.png', 0, 1, NULL);
INSERT INTO `file` VALUES (20, '4407b555ba950f99ffb6d2a14bec4f0a.jpeg', 'jpeg', 67, 'http://localhost:9090/file/121c9497-e820-459d-b671-b11676de270a.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (21, '头像1.png', 'png', 21, 'http://localhost:9090/file/47e5e39c-5544-4a43-82ca-b7bec3774958.png', 0, 1, NULL);
INSERT INTO `file` VALUES (22, '头像1.png', 'png', 21, 'http://localhost:9090/file/29650e15-e2ed-46c8-a1ac-ec0d4f36922f.png', 0, 1, NULL);
INSERT INTO `file` VALUES (27, '4407b555ba950f99ffb6d2a14bec4f0a.jpeg', 'jpeg', 67, 'http://localhost:9090/file/693a03fc-e7fd-4ffb-a3f1-9d1150fd4593.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (28, '头像1.png', 'png', 21, 'http://localhost:9090/file/ef793018-c8a5-417d-b287-db9783380674.png', 0, 1, NULL);
INSERT INTO `file` VALUES (37, '20230428200039_a8637.thumb.400_0.jpeg', 'jpeg', 45, 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (38, '20230428200039_a8637.thumb.400_0.jpeg', 'jpeg', 45, 'http://localhost:9090/file/e5fa59e8-8e5d-4bb5-930b-16dd00900360.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (39, '主图.jpg', 'jpg', 23, 'http://localhost:9090/file/c26c6d3d-b3b8-4d2d-8cbf-8ef5010e4a7f.jpg', 0, 1, 2);
INSERT INTO `file` VALUES (40, '主图.jpg', 'jpg', 270, 'http://localhost:9090/file/dee83d1a-62ed-4d30-b889-001e1904f4d1.jpg', 0, 1, 46);
INSERT INTO `file` VALUES (41, '主图.jpg', 'jpg', 306, 'http://localhost:9090/file/c04e9b95-58a2-4c66-8aef-81cf4ed5a6db.jpg', 0, 1, 47);
INSERT INTO `file` VALUES (42, '主图.jpg', 'jpg', 147, 'http://localhost:9090/file/c013df16-b0c5-4f04-a45b-7f0c0ea3e4bb.jpg', 0, 1, 48);
INSERT INTO `file` VALUES (43, '主图.jpg', 'jpg', 116, 'http://localhost:9090/file/841ae9fc-b170-4237-8c9a-ea721a9ad991.jpg', 0, 1, 49);
INSERT INTO `file` VALUES (44, '主图.jpg', 'jpg', 393, 'http://localhost:9090/file/65745b71-76c2-46ae-aba0-06fd48f88c02.jpg', 0, 1, 50);
INSERT INTO `file` VALUES (45, '主图.jpg', 'jpg', 20, 'http://localhost:9090/file/ec5cc1ae-3425-4582-9352-417b87ac32d7.jpg', 0, 1, 51);
INSERT INTO `file` VALUES (46, '主图.jpg', 'jpg', 439, 'http://localhost:9090/file/0ef493b5-354e-4723-817b-acb6a33189c5.jpg', 0, 1, 52);
INSERT INTO `file` VALUES (47, '主图.jpg', 'jpg', 125, 'http://localhost:9090/file/dd7e0fac-1a39-48c6-a25c-ad60c7e65089.jpg', 0, 1, 53);
INSERT INTO `file` VALUES (48, '主图.jpg', 'jpg', 37, 'http://localhost:9090/file/10e6d53e-8f33-4a70-85d4-e826eab416f5.jpg', 0, 1, 55);
INSERT INTO `file` VALUES (49, '主图.jpg', 'jpg', 83, 'http://localhost:9090/file/8e77fbb5-507e-4242-9af2-34752e5c5b23.jpg', 0, 1, 56);
INSERT INTO `file` VALUES (50, '主图.jpg', 'jpg', 20, 'http://localhost:9090/file/adce852e-1f58-4743-ab63-71cb31c3eb50.jpg', 0, 1, 57);
INSERT INTO `file` VALUES (51, '主图.webp', 'webp', 96, 'http://localhost:9090/file/c004eba7-0724-453f-9150-e918946e269e.webp', 0, 1, 58);
INSERT INTO `file` VALUES (52, '主图.jpg', 'jpg', 631, 'http://localhost:9090/file/e429ff74-f742-4c2c-b342-1e72d8344c73.jpg', 0, 1, 59);
INSERT INTO `file` VALUES (53, '主图.jpg', 'jpg', 284, 'http://localhost:9090/file/b70b200e-a030-46aa-94c1-adf6c7ca4325.jpg', 0, 1, 60);
INSERT INTO `file` VALUES (54, '主图.jpg', 'jpg', 1, 'http://localhost:9090/file/89a5c01e-7a9b-4c31-ae25-89c4b6c7e35a.jpg', 0, 1, 61);
INSERT INTO `file` VALUES (55, '主图.jpg', 'jpg', 68, 'http://localhost:9090/file/4b323274-36de-4f93-9c54-23061ab6d50b.jpg', 0, 1, 62);
INSERT INTO `file` VALUES (56, '主图.jpg', 'jpg', 32, 'http://localhost:9090/file/db54dbab-5336-4334-9688-64b64efe7c7f.jpg', 0, 1, 63);
INSERT INTO `file` VALUES (57, '主图.jpg', 'jpg', 182, 'http://localhost:9090/file/e1be1d21-cc88-4da6-a4ad-5fda705b32b0.jpg', 0, 1, 64);
INSERT INTO `file` VALUES (58, '主图.jpg', 'jpg', 508, 'http://localhost:9090/file/d350208b-ed52-44a2-b036-d364978254ad.jpg', 0, 1, 65);
INSERT INTO `file` VALUES (59, '主图.jpg', 'jpg', 177, 'http://localhost:9090/file/5b76f8fb-e15b-43df-b712-a1a146d42e6c.jpg', 0, 1, 66);
INSERT INTO `file` VALUES (60, '主图.jpg', 'jpg', 22, 'http://localhost:9090/file/3f38c11c-b7ee-4608-ac4f-765300e7318e.jpg', 0, 1, 67);
INSERT INTO `file` VALUES (61, '主图.jpg', 'jpg', 329, 'http://localhost:9090/file/eb2910d0-89d5-4352-9668-9b99ffea36bb.jpg', 0, 1, 68);
INSERT INTO `file` VALUES (62, '主图.jpg', 'jpg', 24, 'http://localhost:9090/file/2f120585-fa60-4d90-94a4-51a7b4f6dc76.jpg', 0, 1, 69);
INSERT INTO `file` VALUES (63, '主图.jpg', 'jpg', 112, 'http://localhost:9090/file/2bbf87c5-1fa6-4503-be13-4f65b5dc7e4e.jpg', 0, 1, 70);
INSERT INTO `file` VALUES (64, '主图.jpg', 'jpg', 90, 'http://localhost:9090/file/988c0378-db5a-4ac2-943a-d9447c7fad6e.jpg', 0, 1, 71);
INSERT INTO `file` VALUES (65, '主图.jpg', 'jpg', 132, 'http://localhost:9090/file/239451f2-02b4-45dc-8541-bdb057b4b723.jpg', 0, 1, 72);
INSERT INTO `file` VALUES (66, '主图.jpg', 'jpg', 204, 'http://localhost:9090/file/ed8b34e3-ce33-4aff-9581-42365e78c199.jpg', 0, 1, 73);
INSERT INTO `file` VALUES (67, '主图.jpg', 'jpg', 607, 'http://localhost:9090/file/78c7a5db-4467-4f29-b71b-d7528a784834.jpg', 0, 1, 74);
INSERT INTO `file` VALUES (68, '主图.jpg', 'jpg', 458, 'http://localhost:9090/file/3e588c42-ec88-44a9-b0b5-de03ef10f3c0.jpg', 0, 1, 75);
INSERT INTO `file` VALUES (69, '主图.jpg', 'jpg', 113, 'http://localhost:9090/file/24ae2405-1432-4e90-bb27-5bd6cc71fff5.jpg', 0, 1, 76);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `psw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理员密码',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '管理员电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '管理员邮箱',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '管理员地址',
  `imageUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (1, '123456', '2222', '2324345@qq.com', '上海市松江区', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');

-- ----------------------------
-- Table structure for museum
-- ----------------------------
DROP TABLE IF EXISTS `museum`;
CREATE TABLE `museum`  (
  `m_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '博物馆ID',
  `m_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '博物馆名称',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '博物馆所在区域',
  `openingDay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开放日',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '博物馆类型',
  `fare` double NULL DEFAULT NULL COMMENT '票价',
  `open_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '开放时间',
  `fare_rule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '门票规则',
  `m_intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '博物馆简介',
  `exhibits` double(4, 2) NULL DEFAULT NULL COMMENT '展品质量和丰富度',
  `comfort` double(4, 2) NULL DEFAULT NULL COMMENT '舒适度和整洁度',
  `service` double(4, 2) NULL DEFAULT NULL COMMENT '游览体验和服务质量',
  `facility` double(4, 2) NULL DEFAULT NULL COMMENT '设施便利性',
  `activity` double(4, 2) NULL DEFAULT NULL COMMENT '活动丰富度',
  `reserve` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否需要预约',
  `m_favorites` int(255) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '收藏量',
  `m_view` int(255) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '浏览量',
  `m_rate` double(255, 2) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '评分',
  `isReservedTag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否需要预约',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of museum
-- ----------------------------
INSERT INTO `museum` VALUES (2, '上海世博会博物馆', '上海市黄浦区蒙自路818号（近龙华东路）', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '周二至周日9:00—17:00（周一闭馆，16:15停止入馆）', '免费', '上海世博会博物馆，位于上海市黄浦区蒙自路818号，于2017年5月1日对外开放。是国际展览局唯一官方博物馆和官方文献研究中心，也是全世界独一无二的全面展示世博专题的博物馆。', 3.50, 4.00, 2.80, 3.20, 4.40, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (46, '上海铁路博物馆', '静安区天目东路200号', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '上午9：00~11:30下午13:30~16:30（闭馆前半小时停止进馆）（周一闭馆））', '成人10元；学生、铁路职工员5元', '上海铁路博物馆', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (47, '上海鲁迅纪念馆', '上海市虹口区', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '周二-周日9:00-17:00 (16:00停止入场，逢周—闭馆，国家法定假日除外)', '免费', '上海鲁迅纪念馆是新中国建立后第一个人物性', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (48, '上海自然博物馆', '上海市静安区北京西路510号（静安雕塑公园内）', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '周二至周日上午9:00至下午17:00（国定假日除外）', '成人30元、学生12元、老年25元', '上海自然博物馆（上海科技馆分馆），位于', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (49, '三山会馆', '上海市黄浦区中山南路1551号', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '周二—周日（周一馆休），上午9︰00—下午4︰00', '免费', '三山会馆，位于上海市黄浦区中山南路1551号，', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (50, '上海历史博物馆', '上海市黄浦区南京西路325号（靠近黄陂北路）', 'Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '周二至周日：上午 09:00~17:00(下午16:00停止入馆)，周一闭馆（国家法定假日除外）', '免费', '上海市历史博物馆（上海革命历史博物馆）位于', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (51, '上海美特斯邦威服饰博物馆', '上海市浦东新区', 'Tue,Wed,Thu,Fri,Sat,Sun', '艺术博物馆', NULL, '周二至周日，国定假日闭馆', '免费', '上海美特斯邦威服饰博物馆位于', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (52, '上海动漫博物馆', '张江高科技园区', 'Tue,Wed,Thu,Fri,Sat,Sun', '艺术博物馆', NULL, '周二至周日10:00~17:00', '免费', '上海动漫博物馆，是中国第一家集展示、交流、科普教育、实践互动、产业促进等多功能于一体的大型现代化专业动漫展馆。博物馆共有3层，约7000余平方米。博物馆以“动漫、体验、科普”为核心，以科普性、互动性、趣味性为特色，内设历史展呈馆、互动体验馆、多功能3D影院、临展区等，藏品和展品逾万件。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (53, '黄道婆纪念馆', '上海市徐汇区徐梅路700号', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '周二至周日（9：00-16：00）', '免费', '黄道婆纪念馆，位于上海市徐汇区徐梅路700号，占地面积3750平方米，属社会科学类名人专题博物馆。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (55, '上海市南汇博物馆', '上海市浦东新区惠南镇文师街上海市浦东新区惠南镇文师街18号', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '周一至周日（9:00-16:30）', '免费', '上海市南汇博物馆，位于上海市浦东新区惠南镇文师街18号。上海市南汇博物馆占地面积3510平方米，基本陈列面积1500平方米，临时陈列面积400平方米，属地方综合性博物馆。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (56, '上海吴昌硕纪念馆', '中国上海市浦东新区陆家嘴东路15号', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '4月29日-5月3日:周一至周日 10:00-17:00;5月4日-4月28日:周二至周日 10:00-17:00', '10元／人', '吴昌硕纪念馆位于上海浦东新区华夏文化旅游区华夏文化公园内，是中国全国爱国主义教育基地，上海爱国主义教育基地。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (57, '高桥历史文化陈列馆', '上海市浦东新区高桥镇义王路1号', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '全年开放每周一闭馆（法定节假日除外）', '免费开放', '    高桥历史文化陈列馆，位于上海市，据2020年9月国家文物局信息显示，现有藏品620件/套，参观人数0.4万人次。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (58, '上海市长宁区革命文物陈列馆', '上海市长宁区愚园路1376弄34号（近定西路）', 'Mon,Tue,Wed,Thu,Fri,Sat', '社会科学博物馆', NULL, '周一至周六及国定假期：9:00-11:00，13:00-16:00', '免费', '上海市长宁区革命文物陈列馆位于上海市长宁区愚园路1376弄34号（近定西路），占地面积85平方米，建筑面积224平方米。1985年7月10日，中共长宁区委决定动迁居民修复这一革命旧址，成立长宁区革命文物陈列馆；1988年10月24日，上海市长宁区革命文物陈列馆正式对外开放；1994年，一楼改为长宁区革命史料陈列室，作为陈列馆的基本陈列，并对馆舍进行全面大修；2002年，上海市长宁区革命文物陈列馆对基本陈列进行了改版，同年，改建北侧的晒台为会议室，兼作电化教育室。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (59, '震旦博物馆', '上海市浦东新区陆家嘴富城路99号', 'Tue,Wed,Thu,Fri,Sat,Sun', '艺术博物馆', NULL, '周二至周四，周六至周日10:00～17:00；周一不开放；周五10:00～21:00', '成人票60元，学生票30元', '震旦博物馆位于上海市浦东新区陆家嘴富城路99号，以历史与艺术并重，集典藏、研究、展览、营运、传扬为一体。新馆于2013年10月20日正式对外开放，面积6316平方米。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (60, '上海博物馆', '黄浦区人民大道201号', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '除国定假日外，每周一闭馆，9:00—17:00，16:00后停止入场', '免费', '上海博物馆，位于上海市黄浦区人民大道201号，陈列面积共计12000平方米，一楼为中国古代青铜馆、中国古代雕塑馆和展览大厅；二楼为中国古代陶瓷馆、暂得楼陶瓷馆和展览厅；三楼为中国历代书法馆、中国历代绘画馆、中国历代玺印馆；四楼为中国古代玉器馆、中国历代钱币馆、中国明清家具馆、中国少数民族工艺馆和展览厅，是综合性博物馆。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (61, '宋庆龄生平事迹陈列馆', '上海市长宁区宋园路21号（宋庆龄陵园内）', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '全年开放，每天8：30——17：00（16：30起停止售票）。', '3.00元/人；未成年人团体免费；70岁以上老人、离休干部、现役军人和残疾人士凭有关证件免票。', '宋庆龄生平事迹陈列馆位于', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (62, '中国航海博物馆', '上海市浦东新区临港新城申港大道197号（近滴水湖）', 'Tue,Wed,Thu,Fri,Sat,Sun', '自然科学博物馆', NULL, '9:30—16:00（15:30停止入馆），每周一闭馆（节假日除外）', '30元/人（60—64周岁老人10元/人，教师及学生15元/人）', '中国航海博物馆（China Maritime Museum），全称“上海中国航海博物馆”，位于', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (63, '上海儿童博物馆', '上海市长宁区宋园路61号', 'Tue,Wed,Thu,Fri,Sat,Sun', '自然科学博物馆', NULL, '8:45—16:45（15:30起停止入馆），周一闭馆（逢国定节假日则顺延至节后首个工作日）', '免费', '上海儿童博物馆，位于上海市长宁区宋园路61号。占地面积9000余平方米、建筑面积4632.97平方米、室外活动面积1450余平方米、室外可活动水域面积660余平方米。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (64, '上海杨浦法院博物馆', '上海市杨浦区河间路29号6楼', 'Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '每周三13:30—16:30（需事先预约)', '免费参观', '上海杨浦法院博物馆位于', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '是');
INSERT INTO `museum` VALUES (65, '上海纺织博物馆', '上海市普陀区', 'Wed', '自然科学博物馆', NULL, '周二至周日（9:30-16:00）', '免费', '上海纺织博物馆位于苏州河南岸、澳门路北侧、昌化路东面、长寿路桥西北翼原上海申新纺织第九厂旧址，户外展示面积1500平方米，室内展示面积4480平方米，是一家地域性行业博物馆。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (66, '上海中国烟草博物馆', '杨浦区长阳路728号', 'Tue,Wed,Thu,Fri,Sat', '社会科学博物馆', NULL, '周二至周六上午9：00-11：30，下午13：00-16：00', '免费参观', '上海中国烟草博物馆，位于上海市', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (67, '上海院士风采馆', '上海市杨浦区国顺东路369号', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '9:00——16:30 每周一闭馆', '免费', '上海院士风采馆坐落在', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (68, '上海土山湾博物馆', '上海市徐汇区', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '9:00——16:30,16:00停止入馆（每周一闭馆）', '免费', '上海土山湾博物馆，位于上海市，据2020年9月国家文物局信息显示，现有藏品714件/套，开展教育活动18次，参观人数7.9万人次。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (69, '中共四大纪念馆', '上海市虹口区四川北路1468号四川北路公园内', 'Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '周二至周日（上午9:00-11:30，下午13:00-16:00）', '免费', '中共四大纪念馆，位于上海市虹口区四川北路1468号四川北路公园内，总面积约3040平方米，基本陈列展厅面积约1839平方米，属社会科学类历史专题博物馆。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (70, '上海元代水闸遗址博物馆', '上海市普陀区延长西路619号', 'Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '9:00—16:30（16:00停止检票）周一闭馆（国定假日除外）', '免费', '上海元代水闸遗址博物馆', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (71, '上海市松江区博物馆', '上海市松江区方塔公园东首', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '9:30-16:00（周一闭馆）', '免费', '上海市松江区博物馆，位于', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (72, '上海天文博物馆', '上海市松江区外青松公路9258号西佘山山顶', 'Tue,Wed,Thu,Fri,Sat,Sun', '自然科学博物馆', NULL, '8:30一16:30（16:00起停止售票）', '成人：12元，优惠票：8元。', '上海天文博物馆，位于上海市', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (73, '徐光启纪念馆', '上海市徐汇区南丹路17号(光启公园内)', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '周一至周日（9:00-16:30）', '免费', '徐光启纪念馆，位于上海市徐汇区南丹路17号（光启公园内），紧邻徐光启墓，占地面积为502平方米、建筑面积282平方米，属社会科学类名人专题博物馆。', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (74, '顾正红纪念馆', '中国上海市普陀区长寿路街道澳门路300号', 'Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '周二至周日每天08:30至16:30', '免费', '顾正红纪念馆（Gu Zhenghong Meomorial Hall），位于中国', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (75, '上海中国留学生博物馆', '上海市松江区茸梅路1177弄7号', 'Mon,Tue,Wed,Thu,Fri,Sat', '社会科学博物馆', NULL, '周一到周六（9:00-12:00，13:00-16:00），周日闭馆。', '免费', '上海中国留学生博物馆位于上海市松江区茸梅路1177弄7号', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');
INSERT INTO `museum` VALUES (76, '上海李白烈士故居', '上海市虹口区黄渡路107号', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '周二至周日：上午 09:00~17:00(下午16:00停止入馆)，周一闭馆（国家法定假日除外）', '免费', '上海李白烈士故居位于上海市', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '否');

-- ----------------------------
-- Table structure for rating
-- ----------------------------
DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating`  (
  `m_id` int(11) NOT NULL COMMENT '博物馆id（外键）',
  `user_id` int(11) NOT NULL COMMENT '用户id（外键）',
  `r_exhibits` double(255, 2) NULL DEFAULT NULL COMMENT '单个用户的展品质量和丰富度（量化标准）',
  `r_comfort` double(255, 2) NULL DEFAULT NULL COMMENT '\n单个用户的舒适度和整洁度（量化标准）\n',
  `r_service` double(255, 2) NULL DEFAULT NULL COMMENT '单个用户的游览体验和服务质量（量化标准）',
  `r_facility` double(255, 2) NULL DEFAULT NULL COMMENT '单个用户的设施便利性（量化标准）',
  `r_activity` double(255, 2) NULL DEFAULT NULL COMMENT '单个用户的活动丰富度（量化标准）',
  `rate_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '评分时间',
  `isDelete` tinyint(255) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '是否删除(0不删1删)',
  PRIMARY KEY (`user_id`, `m_id`) USING BTREE,
  INDEX `m_id_rate`(`m_id`) USING BTREE,
  INDEX `user_id_rate`(`user_id`) USING BTREE,
  CONSTRAINT `m_id_rate` FOREIGN KEY (`m_id`) REFERENCES `museum` (`m_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `user_id_rate` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rating
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `user_psw` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户密码',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '用户昵称',
  `user_sex` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户性别',
  `user_age` tinyint(4) NULL DEFAULT NULL COMMENT '年龄',
  `user_intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT '简介',
  `user_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '邮箱',
  `user_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '联系电话',
  `user_ctime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `user_ltime` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '最后登录时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123456', '小华', '男', 20, '是男的', '22222@qq.com', '12323786', '2024-03-21 16:31:05', '2024-03-21 16:31:05');
INSERT INTO `user` VALUES (7, 'aa', '小停', '男', 34, NULL, '3333333@google.com', NULL, '2024-03-22 13:56:06', '2024-03-22 13:56:06');
INSERT INTO `user` VALUES (8, 'bb', '小画', '女', 22, NULL, '444432@qq.com', NULL, '2024-03-22 13:56:29', '2024-03-22 13:56:29');
INSERT INTO `user` VALUES (11, 'fff', '英子', '女', 21, NULL, '124243534@google.com', NULL, '2024-03-23 20:12:25', '2024-03-23 20:12:25');
INSERT INTO `user` VALUES (13, 'cc', '小贾', '男', 30, NULL, '11232234@qq.com', NULL, '2024-03-26 21:01:59', '2024-03-26 21:01:59');
INSERT INTO `user` VALUES (14, 'a', '小杨', '女', 26, NULL, '1233334@qq.com', NULL, '2024-03-26 21:02:40', '2024-03-26 21:02:40');
INSERT INTO `user` VALUES (18, 'daw', '小赵', '男', 30, NULL, '56576', NULL, '2024-03-26 21:04:24', '2024-03-26 21:04:24');
INSERT INTO `user` VALUES (19, 'swdw', '小花', '女', 22, NULL, '4557878', NULL, '2024-03-26 22:42:13', '2024-03-26 22:42:13');
INSERT INTO `user` VALUES (20, NULL, '小页', '男', NULL, NULL, '22222@qq.com', NULL, '2024-03-27 15:24:14', '2024-03-27 15:24:14');
INSERT INTO `user` VALUES (21, NULL, '小叶', '男', NULL, NULL, '3333333@google.com', NULL, '2024-03-27 15:24:14', '2024-03-27 15:24:14');
INSERT INTO `user` VALUES (22, NULL, '小夜', '女', NULL, NULL, '444432@qq.com', NULL, '2024-03-27 15:24:14', '2024-03-27 15:24:14');
INSERT INTO `user` VALUES (23, NULL, '美子', '女', NULL, NULL, '124243534@google.com', NULL, '2024-03-27 15:24:14', '2024-03-27 15:24:14');

SET FOREIGN_KEY_CHECKS = 1;
