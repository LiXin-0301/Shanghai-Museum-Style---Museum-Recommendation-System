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

 Date: 25/04/2024 14:57:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for browsinghistory
-- ----------------------------
DROP TABLE IF EXISTS `browsinghistory`;
CREATE TABLE `browsinghistory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `m_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `browsinghistory_time` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 279 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of browsinghistory
-- ----------------------------
INSERT INTO `browsinghistory` VALUES (1, 47, 1, 1713967997083);
INSERT INTO `browsinghistory` VALUES (2, 47, 1, 1713968042282);
INSERT INTO `browsinghistory` VALUES (3, 50, 1, 1713968431982);
INSERT INTO `browsinghistory` VALUES (4, 50, 1, 1713968435728);
INSERT INTO `browsinghistory` VALUES (5, 50, 1, 1713968437257);
INSERT INTO `browsinghistory` VALUES (6, 50, 1, 1713971724981);
INSERT INTO `browsinghistory` VALUES (7, 50, 1, 1713971764256);
INSERT INTO `browsinghistory` VALUES (8, 50, 1, 1713971773303);
INSERT INTO `browsinghistory` VALUES (9, 47, 1, 1713972981086);
INSERT INTO `browsinghistory` VALUES (10, 47, 1, 1713972985581);
INSERT INTO `browsinghistory` VALUES (11, 47, 1, 1713972988618);
INSERT INTO `browsinghistory` VALUES (12, 49, 1, 1713972997269);
INSERT INTO `browsinghistory` VALUES (13, 49, 1, 1713973063850);
INSERT INTO `browsinghistory` VALUES (14, 49, 1, 1713973080569);
INSERT INTO `browsinghistory` VALUES (15, 49, 24, 1713973132079);
INSERT INTO `browsinghistory` VALUES (16, 49, 24, 1713973191098);
INSERT INTO `browsinghistory` VALUES (17, 50, 1, 1713973635835);
INSERT INTO `browsinghistory` VALUES (18, 47, 1, 1713975104433);
INSERT INTO `browsinghistory` VALUES (19, 47, 1, 1713975107334);
INSERT INTO `browsinghistory` VALUES (20, 46, 1, 1713975111858);
INSERT INTO `browsinghistory` VALUES (21, 47, 1, 1713976812532);
INSERT INTO `browsinghistory` VALUES (22, 47, 1, 1713976937712);
INSERT INTO `browsinghistory` VALUES (23, 47, 1, 1713976943666);
INSERT INTO `browsinghistory` VALUES (24, 47, 1, 1713976949137);
INSERT INTO `browsinghistory` VALUES (25, 47, 1, 1713976968719);
INSERT INTO `browsinghistory` VALUES (26, 47, 1, 1713977039115);
INSERT INTO `browsinghistory` VALUES (27, 47, 1, 1713977058964);
INSERT INTO `browsinghistory` VALUES (28, 47, 1, 1713977060857);
INSERT INTO `browsinghistory` VALUES (29, 47, 1, 1713977116466);
INSERT INTO `browsinghistory` VALUES (30, 47, 1, 1713977141395);
INSERT INTO `browsinghistory` VALUES (31, 47, 1, 1713977142324);
INSERT INTO `browsinghistory` VALUES (32, 47, 1, 1713977144988);
INSERT INTO `browsinghistory` VALUES (33, 51, 25, 1714014561639);
INSERT INTO `browsinghistory` VALUES (34, 51, 25, 1714014576048);
INSERT INTO `browsinghistory` VALUES (35, 2, 25, 1714015006076);
INSERT INTO `browsinghistory` VALUES (36, 2, 25, 1714015410320);
INSERT INTO `browsinghistory` VALUES (37, 2, 25, 1714015474674);
INSERT INTO `browsinghistory` VALUES (38, 2, 25, 1714015487962);
INSERT INTO `browsinghistory` VALUES (39, 2, 25, 1714015591629);
INSERT INTO `browsinghistory` VALUES (40, 2, 25, 1714015648047);
INSERT INTO `browsinghistory` VALUES (41, 2, 25, 1714015774858);
INSERT INTO `browsinghistory` VALUES (42, 2, 25, 1714015777647);
INSERT INTO `browsinghistory` VALUES (43, 2, 25, 1714015843265);
INSERT INTO `browsinghistory` VALUES (44, NULL, NULL, 1714015916534);
INSERT INTO `browsinghistory` VALUES (45, 2, NULL, 1714015921853);
INSERT INTO `browsinghistory` VALUES (46, 2, 25, 1714015960562);
INSERT INTO `browsinghistory` VALUES (47, 2, 25, 1714015985154);
INSERT INTO `browsinghistory` VALUES (48, 2, 25, 1714016053515);
INSERT INTO `browsinghistory` VALUES (49, 2, 25, 1714016451209);
INSERT INTO `browsinghistory` VALUES (50, 2, 25, 1714016788654);
INSERT INTO `browsinghistory` VALUES (51, 2, 25, 1714016879833);
INSERT INTO `browsinghistory` VALUES (52, 2, 25, 1714016913822);
INSERT INTO `browsinghistory` VALUES (53, 2, 25, 1714017052571);
INSERT INTO `browsinghistory` VALUES (54, 2, 25, 1714017154392);
INSERT INTO `browsinghistory` VALUES (55, 2, 25, 1714017182457);
INSERT INTO `browsinghistory` VALUES (56, 2, 25, 1714017192617);
INSERT INTO `browsinghistory` VALUES (57, 2, 25, 1714017253674);
INSERT INTO `browsinghistory` VALUES (58, 2, 25, 1714017374527);
INSERT INTO `browsinghistory` VALUES (59, 2, 25, 1714017406161);
INSERT INTO `browsinghistory` VALUES (60, 2, 25, 1714017443871);
INSERT INTO `browsinghistory` VALUES (61, 2, 25, 1714017487168);
INSERT INTO `browsinghistory` VALUES (62, 2, 25, 1714017541344);
INSERT INTO `browsinghistory` VALUES (63, 2, 25, 1714017544857);
INSERT INTO `browsinghistory` VALUES (64, 2, 25, 1714017581181);
INSERT INTO `browsinghistory` VALUES (65, 2, 25, 1714017631990);
INSERT INTO `browsinghistory` VALUES (66, 2, 25, 1714017635345);
INSERT INTO `browsinghistory` VALUES (67, 2, 25, 1714017729987);
INSERT INTO `browsinghistory` VALUES (68, 46, 25, 1714017881357);
INSERT INTO `browsinghistory` VALUES (69, 46, 25, 1714017924149);
INSERT INTO `browsinghistory` VALUES (70, 46, 25, 1714018154910);
INSERT INTO `browsinghistory` VALUES (71, 46, 25, 1714018158951);
INSERT INTO `browsinghistory` VALUES (72, 2, 25, 1714018162081);
INSERT INTO `browsinghistory` VALUES (73, 2, 25, 1714018205011);
INSERT INTO `browsinghistory` VALUES (74, 2, 25, 1714018205597);
INSERT INTO `browsinghistory` VALUES (75, 2, 25, 1714018237594);
INSERT INTO `browsinghistory` VALUES (76, 2, 25, 1714018238045);
INSERT INTO `browsinghistory` VALUES (77, 2, 25, 1714018241553);
INSERT INTO `browsinghistory` VALUES (78, 52, 25, 1714018308668);
INSERT INTO `browsinghistory` VALUES (79, 52, 25, 1714018342116);
INSERT INTO `browsinghistory` VALUES (80, 52, 25, 1714018435654);
INSERT INTO `browsinghistory` VALUES (81, 52, 25, 1714018443825);
INSERT INTO `browsinghistory` VALUES (82, 48, 25, 1714018471100);
INSERT INTO `browsinghistory` VALUES (83, 2, 25, 1714018530197);
INSERT INTO `browsinghistory` VALUES (84, 2, 25, 1714018710449);
INSERT INTO `browsinghistory` VALUES (85, 2, 25, 1714018750503);
INSERT INTO `browsinghistory` VALUES (86, 2, NULL, 1714018750503);
INSERT INTO `browsinghistory` VALUES (87, 2, NULL, 1714018879737);
INSERT INTO `browsinghistory` VALUES (88, 2, 25, 1714018879737);
INSERT INTO `browsinghistory` VALUES (89, 2, NULL, 1714018882576);
INSERT INTO `browsinghistory` VALUES (90, 2, 25, 1714018882577);
INSERT INTO `browsinghistory` VALUES (91, 2, NULL, 1714018967733);
INSERT INTO `browsinghistory` VALUES (92, 2, 25, 1714018967733);
INSERT INTO `browsinghistory` VALUES (93, 2, 25, 1714019045381);
INSERT INTO `browsinghistory` VALUES (94, 2, NULL, 1714019045381);
INSERT INTO `browsinghistory` VALUES (95, 2, NULL, 1714019061174);
INSERT INTO `browsinghistory` VALUES (96, 2, 25, 1714019061174);
INSERT INTO `browsinghistory` VALUES (97, 2, 25, 1714019419150);
INSERT INTO `browsinghistory` VALUES (98, 2, NULL, 1714019419150);
INSERT INTO `browsinghistory` VALUES (99, 46, 25, 1714019424539);
INSERT INTO `browsinghistory` VALUES (100, 46, NULL, 1714019424539);
INSERT INTO `browsinghistory` VALUES (101, 46, 25, 1714019427468);
INSERT INTO `browsinghistory` VALUES (102, 46, NULL, 1714019427468);
INSERT INTO `browsinghistory` VALUES (103, 2, 25, 1714019429563);
INSERT INTO `browsinghistory` VALUES (104, 2, NULL, 1714019429563);
INSERT INTO `browsinghistory` VALUES (105, 46, 25, 1714019481844);
INSERT INTO `browsinghistory` VALUES (106, 46, NULL, 1714019481844);
INSERT INTO `browsinghistory` VALUES (107, 47, 25, 1714019485804);
INSERT INTO `browsinghistory` VALUES (108, 47, NULL, 1714019485803);
INSERT INTO `browsinghistory` VALUES (109, 47, 25, 1714020066778);
INSERT INTO `browsinghistory` VALUES (110, 47, NULL, 1714020066779);
INSERT INTO `browsinghistory` VALUES (111, 47, 25, 1714020082202);
INSERT INTO `browsinghistory` VALUES (112, 47, NULL, 1714020082202);
INSERT INTO `browsinghistory` VALUES (113, 47, 25, 1714020084192);
INSERT INTO `browsinghistory` VALUES (114, 47, NULL, 1714020084193);
INSERT INTO `browsinghistory` VALUES (115, 47, NULL, 1714020087760);
INSERT INTO `browsinghistory` VALUES (116, 47, 25, 1714020087760);
INSERT INTO `browsinghistory` VALUES (117, 47, 25, 1714020102833);
INSERT INTO `browsinghistory` VALUES (118, 47, NULL, 1714020102833);
INSERT INTO `browsinghistory` VALUES (119, 2, NULL, 1714020117517);
INSERT INTO `browsinghistory` VALUES (120, 2, 25, 1714020117517);
INSERT INTO `browsinghistory` VALUES (121, 60, 25, 1714020133388);
INSERT INTO `browsinghistory` VALUES (122, 60, NULL, 1714020133400);
INSERT INTO `browsinghistory` VALUES (123, 50, 25, 1714020138062);
INSERT INTO `browsinghistory` VALUES (124, 50, NULL, 1714020138071);
INSERT INTO `browsinghistory` VALUES (125, 46, 25, 1714020206744);
INSERT INTO `browsinghistory` VALUES (126, 46, NULL, 1714020206744);
INSERT INTO `browsinghistory` VALUES (127, 46, NULL, 1714020209475);
INSERT INTO `browsinghistory` VALUES (128, 46, 25, 1714020209475);
INSERT INTO `browsinghistory` VALUES (129, 46, 25, 1714020257638);
INSERT INTO `browsinghistory` VALUES (130, 46, NULL, 1714020257640);
INSERT INTO `browsinghistory` VALUES (131, 47, NULL, 1714021479996);
INSERT INTO `browsinghistory` VALUES (132, 47, 25, 1714021479994);
INSERT INTO `browsinghistory` VALUES (133, 47, NULL, 1714022165050);
INSERT INTO `browsinghistory` VALUES (134, 47, 25, 1714022165052);
INSERT INTO `browsinghistory` VALUES (135, 51, 25, 1714022176635);
INSERT INTO `browsinghistory` VALUES (136, 51, NULL, 1714022176635);
INSERT INTO `browsinghistory` VALUES (137, 2, 25, 1714022834669);
INSERT INTO `browsinghistory` VALUES (138, 2, NULL, 1714022834670);
INSERT INTO `browsinghistory` VALUES (139, 2, NULL, 1714022861071);
INSERT INTO `browsinghistory` VALUES (140, 2, 25, 1714022861071);
INSERT INTO `browsinghistory` VALUES (141, 48, NULL, 1714022904800);
INSERT INTO `browsinghistory` VALUES (142, 48, 25, 1714022904800);
INSERT INTO `browsinghistory` VALUES (143, 2, NULL, 1714022912382);
INSERT INTO `browsinghistory` VALUES (144, 2, 25, 1714022912384);
INSERT INTO `browsinghistory` VALUES (145, 2, NULL, 1714023163905);
INSERT INTO `browsinghistory` VALUES (146, 2, 25, 1714023163905);
INSERT INTO `browsinghistory` VALUES (147, 2, NULL, 1714023163975);
INSERT INTO `browsinghistory` VALUES (148, 2, 25, 1714023163975);
INSERT INTO `browsinghistory` VALUES (149, 2, NULL, 1714023235083);
INSERT INTO `browsinghistory` VALUES (150, 2, 25, 1714023235084);
INSERT INTO `browsinghistory` VALUES (151, 2, 25, 1714023281319);
INSERT INTO `browsinghistory` VALUES (152, 2, NULL, 1714023281319);
INSERT INTO `browsinghistory` VALUES (153, 2, NULL, 1714023281560);
INSERT INTO `browsinghistory` VALUES (154, 2, 25, 1714023281560);
INSERT INTO `browsinghistory` VALUES (155, 2, 25, 1714023283016);
INSERT INTO `browsinghistory` VALUES (156, 2, NULL, 1714023283016);
INSERT INTO `browsinghistory` VALUES (157, 2, 25, 1714023330079);
INSERT INTO `browsinghistory` VALUES (158, 2, NULL, 1714023330079);
INSERT INTO `browsinghistory` VALUES (159, 2, NULL, 1714023359096);
INSERT INTO `browsinghistory` VALUES (160, 2, 25, 1714023359096);
INSERT INTO `browsinghistory` VALUES (161, 2, 25, 1714023387761);
INSERT INTO `browsinghistory` VALUES (162, 2, NULL, 1714023387761);
INSERT INTO `browsinghistory` VALUES (163, 2, 25, 1714023389147);
INSERT INTO `browsinghistory` VALUES (164, 2, NULL, 1714023389147);
INSERT INTO `browsinghistory` VALUES (165, 2, 25, 1714023411625);
INSERT INTO `browsinghistory` VALUES (166, 2, NULL, 1714023411626);
INSERT INTO `browsinghistory` VALUES (167, 2, 25, 1714023412758);
INSERT INTO `browsinghistory` VALUES (168, 2, NULL, 1714023412758);
INSERT INTO `browsinghistory` VALUES (169, 2, 25, 1714023428821);
INSERT INTO `browsinghistory` VALUES (170, 2, NULL, 1714023428821);
INSERT INTO `browsinghistory` VALUES (171, 2, 25, 1714023429611);
INSERT INTO `browsinghistory` VALUES (172, 2, NULL, 1714023429611);
INSERT INTO `browsinghistory` VALUES (173, 2, 25, 1714023443066);
INSERT INTO `browsinghistory` VALUES (174, 2, NULL, 1714023443066);
INSERT INTO `browsinghistory` VALUES (175, 2, NULL, 1714023533704);
INSERT INTO `browsinghistory` VALUES (176, 2, 25, 1714023533704);
INSERT INTO `browsinghistory` VALUES (177, 2, 25, 1714023537486);
INSERT INTO `browsinghistory` VALUES (178, 2, NULL, 1714023537487);
INSERT INTO `browsinghistory` VALUES (179, 2, 25, 1714023633099);
INSERT INTO `browsinghistory` VALUES (180, 2, NULL, 1714023633099);
INSERT INTO `browsinghistory` VALUES (181, 2, NULL, 1714023633846);
INSERT INTO `browsinghistory` VALUES (182, 2, 25, 1714023633846);
INSERT INTO `browsinghistory` VALUES (183, 2, NULL, 1714024444410);
INSERT INTO `browsinghistory` VALUES (184, 2, 25, 1714024444410);
INSERT INTO `browsinghistory` VALUES (185, 2, 25, 1714024450443);
INSERT INTO `browsinghistory` VALUES (186, 2, NULL, 1714024450443);
INSERT INTO `browsinghistory` VALUES (187, 2, 25, 1714024456025);
INSERT INTO `browsinghistory` VALUES (188, 2, NULL, 1714024456026);
INSERT INTO `browsinghistory` VALUES (189, 46, NULL, 1714024462079);
INSERT INTO `browsinghistory` VALUES (190, 46, 25, 1714024462079);
INSERT INTO `browsinghistory` VALUES (191, 2, NULL, 1714025309174);
INSERT INTO `browsinghistory` VALUES (192, 2, 25, 1714025309174);
INSERT INTO `browsinghistory` VALUES (193, 2, NULL, 1714025318642);
INSERT INTO `browsinghistory` VALUES (194, 2, 25, 1714025318642);
INSERT INTO `browsinghistory` VALUES (195, 2, NULL, 1714025320539);
INSERT INTO `browsinghistory` VALUES (196, 2, 25, 1714025320539);
INSERT INTO `browsinghistory` VALUES (197, 47, 25, 1714025690648);
INSERT INTO `browsinghistory` VALUES (198, 47, NULL, 1714025690648);
INSERT INTO `browsinghistory` VALUES (199, 48, 25, 1714025772435);
INSERT INTO `browsinghistory` VALUES (200, 48, NULL, 1714025772435);
INSERT INTO `browsinghistory` VALUES (201, 48, NULL, 1714025784559);
INSERT INTO `browsinghistory` VALUES (202, 48, 25, 1714025784559);
INSERT INTO `browsinghistory` VALUES (203, 48, NULL, 1714025794046);
INSERT INTO `browsinghistory` VALUES (204, 48, 25, 1714025794046);
INSERT INTO `browsinghistory` VALUES (205, 48, NULL, 1714025797635);
INSERT INTO `browsinghistory` VALUES (206, 48, 25, 1714025797635);
INSERT INTO `browsinghistory` VALUES (207, 48, 25, 1714025800084);
INSERT INTO `browsinghistory` VALUES (208, 48, NULL, 1714025800084);
INSERT INTO `browsinghistory` VALUES (209, 2, 25, 1714025851738);
INSERT INTO `browsinghistory` VALUES (210, 2, NULL, 1714025851738);
INSERT INTO `browsinghistory` VALUES (211, 2, 25, 1714025863028);
INSERT INTO `browsinghistory` VALUES (212, 2, NULL, 1714025863030);
INSERT INTO `browsinghistory` VALUES (213, 46, 25, 1714025875619);
INSERT INTO `browsinghistory` VALUES (214, 46, NULL, 1714025875619);
INSERT INTO `browsinghistory` VALUES (215, 48, 25, 1714025881378);
INSERT INTO `browsinghistory` VALUES (216, 48, NULL, 1714025881379);
INSERT INTO `browsinghistory` VALUES (217, 50, 25, 1714025885531);
INSERT INTO `browsinghistory` VALUES (218, 50, NULL, 1714025885531);
INSERT INTO `browsinghistory` VALUES (219, 52, NULL, 1714025898651);
INSERT INTO `browsinghistory` VALUES (220, 52, 25, 1714025898651);
INSERT INTO `browsinghistory` VALUES (221, 2, 1, 1714026292593);
INSERT INTO `browsinghistory` VALUES (222, 2, NULL, 1714026292594);
INSERT INTO `browsinghistory` VALUES (223, 2, NULL, 1714026311726);
INSERT INTO `browsinghistory` VALUES (224, 2, 1, 1714026311726);
INSERT INTO `browsinghistory` VALUES (225, 2, 1, 1714026351449);
INSERT INTO `browsinghistory` VALUES (226, 2, NULL, 1714026351449);
INSERT INTO `browsinghistory` VALUES (227, 50, NULL, 1714026449002);
INSERT INTO `browsinghistory` VALUES (228, 50, 1, 1714026449001);
INSERT INTO `browsinghistory` VALUES (229, 52, 1, 1714026459340);
INSERT INTO `browsinghistory` VALUES (230, 52, NULL, 1714026459340);
INSERT INTO `browsinghistory` VALUES (231, 52, 1, 1714026489234);
INSERT INTO `browsinghistory` VALUES (232, 52, NULL, 1714026489235);
INSERT INTO `browsinghistory` VALUES (233, 52, NULL, 1714026499837);
INSERT INTO `browsinghistory` VALUES (234, 52, 1, 1714026499837);
INSERT INTO `browsinghistory` VALUES (235, 52, NULL, 1714026514470);
INSERT INTO `browsinghistory` VALUES (236, 52, 1, 1714026514470);
INSERT INTO `browsinghistory` VALUES (237, 52, 1, 1714026518668);
INSERT INTO `browsinghistory` VALUES (238, 52, NULL, 1714026518668);
INSERT INTO `browsinghistory` VALUES (239, 52, 1, 1714026525081);
INSERT INTO `browsinghistory` VALUES (240, 52, NULL, 1714026525081);
INSERT INTO `browsinghistory` VALUES (241, 60, NULL, 1714026785169);
INSERT INTO `browsinghistory` VALUES (242, 60, 1, 1714026785169);
INSERT INTO `browsinghistory` VALUES (243, 60, NULL, 1714026803158);
INSERT INTO `browsinghistory` VALUES (244, 60, 1, 1714026803158);
INSERT INTO `browsinghistory` VALUES (245, 60, 1, 1714026808873);
INSERT INTO `browsinghistory` VALUES (246, 60, NULL, 1714026808874);
INSERT INTO `browsinghistory` VALUES (247, 60, 1, 1714026812980);
INSERT INTO `browsinghistory` VALUES (248, 60, NULL, 1714026812981);
INSERT INTO `browsinghistory` VALUES (249, 60, NULL, 1714026820611);
INSERT INTO `browsinghistory` VALUES (250, 60, 1, 1714026820611);
INSERT INTO `browsinghistory` VALUES (251, 60, NULL, 1714026824282);
INSERT INTO `browsinghistory` VALUES (252, 60, 1, 1714026824282);
INSERT INTO `browsinghistory` VALUES (253, 60, 1, 1714026826451);
INSERT INTO `browsinghistory` VALUES (254, 60, NULL, 1714026826451);
INSERT INTO `browsinghistory` VALUES (255, 60, NULL, 1714026829642);
INSERT INTO `browsinghistory` VALUES (256, 60, 1, 1714026829642);
INSERT INTO `browsinghistory` VALUES (257, 60, 1, 1714026834111);
INSERT INTO `browsinghistory` VALUES (258, 60, NULL, 1714026834111);
INSERT INTO `browsinghistory` VALUES (259, 60, NULL, 1714026835123);
INSERT INTO `browsinghistory` VALUES (260, 60, 1, 1714026835123);
INSERT INTO `browsinghistory` VALUES (261, 2, 1, 1714026949377);
INSERT INTO `browsinghistory` VALUES (262, 2, NULL, 1714026949377);
INSERT INTO `browsinghistory` VALUES (263, 2, NULL, 1714026957089);
INSERT INTO `browsinghistory` VALUES (264, 2, 1, 1714026957089);
INSERT INTO `browsinghistory` VALUES (265, 2, 1, 1714027006559);
INSERT INTO `browsinghistory` VALUES (266, 2, NULL, 1714027006559);
INSERT INTO `browsinghistory` VALUES (267, 2, NULL, 1714027015519);
INSERT INTO `browsinghistory` VALUES (268, 2, 1, 1714027015519);
INSERT INTO `browsinghistory` VALUES (269, 49, 1, 1714027024804);
INSERT INTO `browsinghistory` VALUES (270, 49, NULL, 1714027024805);
INSERT INTO `browsinghistory` VALUES (271, 61, NULL, 1714027035060);
INSERT INTO `browsinghistory` VALUES (272, 61, 1, 1714027035063);
INSERT INTO `browsinghistory` VALUES (273, 61, 1, 1714027045220);
INSERT INTO `browsinghistory` VALUES (274, 61, NULL, 1714027045221);
INSERT INTO `browsinghistory` VALUES (275, 61, 1, 1714027065286);
INSERT INTO `browsinghistory` VALUES (276, 61, NULL, 1714027065286);
INSERT INTO `browsinghistory` VALUES (277, 60, 1, 1714027068942);
INSERT INTO `browsinghistory` VALUES (278, 60, NULL, 1714027068942);

-- ----------------------------
-- Table structure for favorites
-- ----------------------------
DROP TABLE IF EXISTS `favorites`;
CREATE TABLE `favorites`  (
  `m_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `favorites_time` datetime(0) NULL DEFAULT NULL,
  `isDelete` tinyint(4) NULL DEFAULT NULL COMMENT '0是不删1是删',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of favorites
-- ----------------------------
INSERT INTO `favorites` VALUES (47, 1, '2024-04-24 23:36:28', NULL, 11);
INSERT INTO `favorites` VALUES (46, 25, '2024-04-25 13:54:26', NULL, 13);
INSERT INTO `favorites` VALUES (2, 1, '2024-04-25 14:25:01', NULL, 14);

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
) ENGINE = InnoDB AUTO_INCREMENT = 205 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
INSERT INTO `file` VALUES (70, 'qian.jpeg', 'jpeg', 14, 'http://localhost:9090/file/40aec58c-2af8-4b64-9274-7b0760df4925.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (71, 'qian.jpeg', 'jpeg', 14, 'http://localhost:9090/file/da7d92d2-248a-4374-b8e3-bdb522aa65cf.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (72, 'qian.jpeg', 'jpeg', 14, 'http://localhost:9090/file/83bafffa-8072-4646-bc89-dafdd02dc0e3.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (73, 'qian.jpeg', 'jpeg', 14, 'http://localhost:9090/file/6efa979c-f2af-4e5e-9566-aa9666b1af49.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (74, 'qian.jpeg', 'jpeg', 14, 'http://localhost:9090/file/98f9956c-0a9e-44fa-8df3-3d09cd5158b4.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (75, '0fe4005840664f30b76f1a63909a5489.webp', 'webp', 78, 'http://localhost:9090/file/710ec042-b7b3-4f35-a0e7-a9538141c6ec.webp', 0, 1, NULL);
INSERT INTO `file` VALUES (76, 'qian.jpeg', 'jpeg', 14, 'http://localhost:9090/file/776ca24e-cfee-4d0a-84d4-e2c551990646.jpeg', 0, 1, NULL);
INSERT INTO `file` VALUES (77, 'OIP-C (1).jpg', 'jpg', 18, 'http://localhost:9090/file/9125e5ed-c6e0-4b00-a418-c5d89ea57dbf.jpg', 0, 1, 2);
INSERT INTO `file` VALUES (78, 'OIP-C.jpg', 'jpg', 16, 'http://localhost:9090/file/fccfba7f-c560-40bb-a62d-a1f4435c60f2.jpg', 0, 1, 2);
INSERT INTO `file` VALUES (79, 'R-C (1).jpg', 'jpg', 189, 'http://localhost:9090/file/adc998d3-a03d-45e3-8c8d-a2ff2f835bbc.jpg', 0, 1, 2);
INSERT INTO `file` VALUES (80, 'R-C.jpg', 'jpg', 511, 'http://localhost:9090/file/700a82c3-3ec7-45bc-aa7f-77b7eb6a1b81.jpg', 0, 1, 2);
INSERT INTO `file` VALUES (81, '4e7fa8eb0b4e7c2633488056b62c3eed.jpg', 'jpg', 56, 'http://localhost:9090/file/7d396eb4-0357-48bd-97f1-1e0a60905a6b.jpg', 0, 1, 46);
INSERT INTO `file` VALUES (82, '145340fef70c9ca49d6f8dd2a148ff01.jpg', 'jpg', 44, 'http://localhost:9090/file/f0a1ddcb-52df-430b-8ceb-91205869c9ed.jpg', 0, 1, 46);
INSERT INTO `file` VALUES (83, '950635ed57e9784b9e98fb215ce4b69a.jpg', 'jpg', 134, 'http://localhost:9090/file/50186c71-3d72-493e-97e2-59ca9d5b8e4d.jpg', 0, 1, 46);
INSERT INTO `file` VALUES (84, 'b3be64c37546e13fdffbb8f683e7230b.jpg', 'jpg', 57, 'http://localhost:9090/file/d887f4d2-79e0-4712-9257-1f2f6bd6281b.jpg', 0, 1, 46);
INSERT INTO `file` VALUES (85, '下载.jpg', 'jpg', 23, 'http://localhost:9090/file/cbeba6a6-d06c-4b94-ba1d-82d5a0ba0a5b.jpg', 0, 1, 47);
INSERT INTO `file` VALUES (86, '20190612115721_152607788.jpg', 'jpg', 213, 'http://localhost:9090/file/6fe0096e-53d6-4643-a4e5-7659a74aad40.jpg', 0, 1, 47);
INSERT INTO `file` VALUES (87, 'OIP-C (1).jpg', 'jpg', 19, 'http://localhost:9090/file/fb1834a7-fa29-4db8-890c-e8307620b393.jpg', 0, 1, 47);
INSERT INTO `file` VALUES (88, 'OIP-C.jpg', 'jpg', 18, 'http://localhost:9090/file/2a54bf63-b984-4473-a277-2d9e0c3ed1f4.jpg', 0, 1, 47);
INSERT INTO `file` VALUES (89, '下载.jpg', 'jpg', 17, 'http://localhost:9090/file/449f0be5-e5c6-4201-905c-a1e753aee20e.jpg', 0, 1, 48);
INSERT INTO `file` VALUES (90, '下载 (1).jpg', 'jpg', 32, 'http://localhost:9090/file/7e2ab61c-151d-455a-9ebc-e90d20cbfb9b.jpg', 0, 1, 48);
INSERT INTO `file` VALUES (91, 'OIP-C.jpg', 'jpg', 33, 'http://localhost:9090/file/a07581dd-b9ce-4741-a293-a9045e5c73c4.jpg', 0, 1, 48);
INSERT INTO `file` VALUES (92, 'CghzgVWw9JmAPVuAAD1jt4fxYi8104_D_10000_1200.jpg', 'jpg', 535, 'http://localhost:9090/file/e7248586-9e65-4f7f-b369-100825c5956b.jpg', 0, 1, 48);
INSERT INTO `file` VALUES (93, '20210617161308_1038738690.jpg', 'jpg', 173, 'http://localhost:9090/file/36267f0d-5880-42ac-acd5-5f6e22efa6f7.jpg', 0, 1, 49);
INSERT INTO `file` VALUES (94, '938dd6bb09e91ab5.jpg', 'jpg', 858, 'http://localhost:9090/file/7cc79ebd-a23d-49ec-80da-aa8a2f610ea2.jpg', 0, 1, 49);
INSERT INTO `file` VALUES (95, 'OIP-C (1).jpg', 'jpg', 27, 'http://localhost:9090/file/cbedea62-51c7-48fa-b99b-30e6d9515718.jpg', 0, 1, 49);
INSERT INTO `file` VALUES (96, '100o0l000000czvjy4A62.jpg', 'jpg', 408, 'http://localhost:9090/file/e1792f91-46c9-48bf-b13b-8e6ebc274d6c.jpg', 0, 1, 49);
INSERT INTO `file` VALUES (97, 'photo3jpg.jpg', 'jpg', 59, 'http://localhost:9090/file/7879dd2b-2ef1-4471-b8b6-08d611eae563.jpg', 0, 1, 50);
INSERT INTO `file` VALUES (98, 'rgstgbdfs.jpg', 'jpg', 60, 'http://localhost:9090/file/2e99aed1-fcf4-4b12-a457-e3e1315f8435.jpg', 0, 1, 50);
INSERT INTO `file` VALUES (99, 'photo7jpg.jpg', 'jpg', 40, 'http://localhost:9090/file/09ba685f-9e8e-48b0-97c8-4a54a77fadcb.jpg', 0, 1, 50);
INSERT INTO `file` VALUES (100, 'shanghai-history-museum.jpg', 'jpg', 211, 'http://localhost:9090/file/fd4bd007-23c7-4ada-b2c8-4c2ed7458c93.jpg', 0, 1, 50);
INSERT INTO `file` VALUES (101, 'OIP-C (3).jpg', 'jpg', 28, 'http://localhost:9090/file/fded4088-e663-48d8-82a1-fd81b5fad4df.jpg', 0, 1, 51);
INSERT INTO `file` VALUES (102, 'OIP-C.jpg', 'jpg', 24, 'http://localhost:9090/file/1067b47a-1353-4528-acd8-6a22622e1a7f.jpg', 0, 1, 51);
INSERT INTO `file` VALUES (103, 'OIP-C (1).jpg', 'jpg', 28, 'http://localhost:9090/file/00840ea6-53f9-487e-95d6-fae542e8a2e6.jpg', 0, 1, 51);
INSERT INTO `file` VALUES (104, 'OIP-C (2).jpg', 'jpg', 24, 'http://localhost:9090/file/b46e6e58-4810-49ba-b6a6-e1c142dc1dd3.jpg', 0, 1, 51);
INSERT INTO `file` VALUES (105, 'OIP-C (1).jpg', 'jpg', 22, 'http://localhost:9090/file/0ae6c1ec-bc28-4af0-b473-43959ebbc6e0.jpg', 0, 1, 52);
INSERT INTO `file` VALUES (106, 'OIP-C.jpg', 'jpg', 24, 'http://localhost:9090/file/e362e753-bbc0-43f2-a69a-d533a738383b.jpg', 0, 1, 52);
INSERT INTO `file` VALUES (107, 'OIP-C (2).jpg', 'jpg', 17, 'http://localhost:9090/file/8c004113-33df-4668-9889-547b99f35fdc.jpg', 0, 1, 52);
INSERT INTO `file` VALUES (108, 'OIP-C (4).jpg', 'jpg', 27, 'http://localhost:9090/file/e2c6477a-9ebd-446e-8471-0b3fdf70a683.jpg', 0, 1, 52);
INSERT INTO `file` VALUES (109, 'OIP-C (1).jpg', 'jpg', 28, 'http://localhost:9090/file/7c822707-cea2-42eb-b5b2-ab4ee26a9fce.jpg', 0, 1, 53);
INSERT INTO `file` VALUES (110, 'OIP-C (2).jpg', 'jpg', 35, 'http://localhost:9090/file/f724bb6d-5db2-4384-8672-60c19476f10d.jpg', 0, 1, 53);
INSERT INTO `file` VALUES (111, 'OIP-C.jpg', 'jpg', 23, 'http://localhost:9090/file/81752843-bb2b-4ae9-ab37-ec1d2a55b394.jpg', 0, 1, 53);
INSERT INTO `file` VALUES (112, 'OIP-C (3).jpg', 'jpg', 23, 'http://localhost:9090/file/4f5a4e56-7d3b-4e4d-9fc9-36a13b4e2070.jpg', 0, 1, 53);
INSERT INTO `file` VALUES (113, 'OIP-C (2).jpg', 'jpg', 15, 'http://localhost:9090/file/834c8a92-73e7-4cff-8a2b-21ef952ccf69.jpg', 0, 1, 55);
INSERT INTO `file` VALUES (114, 'OIP-C (1).jpg', 'jpg', 23, 'http://localhost:9090/file/8a3d7387-e852-4c4d-b01d-0b45f1535973.jpg', 0, 1, 55);
INSERT INTO `file` VALUES (115, 'thbrfb.jpg', 'jpg', 32, 'http://localhost:9090/file/aac8841d-6053-4640-9983-45e26b8e258a.jpg', 0, 1, 55);
INSERT INTO `file` VALUES (116, 'OIP-C.jpg', 'jpg', 31, 'http://localhost:9090/file/c8bc5df0-988a-415d-b868-dddfe2b6d6e9.jpg', 0, 1, 55);
INSERT INTO `file` VALUES (117, 'OIP-C.jpg', 'jpg', 28, 'http://localhost:9090/file/37e2b77b-602e-4082-958a-5889b99b4a1b.jpg', 0, 1, 56);
INSERT INTO `file` VALUES (118, 'th (1).jpg', 'jpg', 36, 'http://localhost:9090/file/bb8e56d8-adf8-4654-8780-11bfb9f394a1.jpg', 0, 1, 56);
INSERT INTO `file` VALUES (119, '下载.jpg', 'jpg', 19, 'http://localhost:9090/file/99b8a773-6b13-42c4-98cf-014f17406665.jpg', 0, 1, 56);
INSERT INTO `file` VALUES (120, 'th.jpg', 'jpg', 22, 'http://localhost:9090/file/9364d40c-f2ff-429b-9643-0d6b7ff9f7e5.jpg', 0, 1, 56);
INSERT INTO `file` VALUES (121, 'OIP-C.jpg', 'jpg', 20, 'http://localhost:9090/file/1e7e4e4e-084d-47a4-bad1-da46a897b190.jpg', 0, 1, 57);
INSERT INTO `file` VALUES (122, 'OIP-C (1).jpg', 'jpg', 18, 'http://localhost:9090/file/31144b35-de84-4387-9895-f605264c744c.jpg', 0, 1, 57);
INSERT INTO `file` VALUES (123, 'OIP-C (2).jpg', 'jpg', 25, 'http://localhost:9090/file/8a8a508f-c9fd-44f1-87a0-444b0dbd2678.jpg', 0, 1, 57);
INSERT INTO `file` VALUES (124, '下载.jpg', 'jpg', 31, 'http://localhost:9090/file/fc1975b3-d5f6-4deb-94dd-caaedd072ac7.jpg', 0, 1, 57);
INSERT INTO `file` VALUES (125, 'b151a4b2-bcff-42d9-88e0-faade1a7e9ae.jpg', 'jpg', 211, 'http://localhost:9090/file/2b0ded7c-fa95-46d6-9496-af1a00ee61bf.jpg', 0, 1, 58);
INSERT INTO `file` VALUES (126, '5b0b7168-51f3-45a0-bbdf-96109e7eb387.jpg', 'jpg', 219, 'http://localhost:9090/file/135255ff-1515-4d3b-a283-d75fc6b7eeae.jpg', 0, 1, 58);
INSERT INTO `file` VALUES (127, '0d23f5b8-cd1d-4806-abfe-9f7b08643fae.jpg', 'jpg', 431, 'http://localhost:9090/file/648a0b96-85c8-4e12-9e71-9a2350ec800c.jpg', 0, 1, 58);
INSERT INTO `file` VALUES (128, '9fff59d8-8c55-4c47-896e-6ec723d996d3.jpg', 'jpg', 476, 'http://localhost:9090/file/d26e5cd1-b6ec-48c4-bce5-58d53c387b01.jpg', 0, 1, 58);
INSERT INTO `file` VALUES (129, '6f06c8ed-7096-4ab3-ada9-20969caaa9ef.png', 'png', 39, 'http://localhost:9090/file/97b955aa-8a24-47e8-8b12-241eda8058ac.png', 0, 1, 59);
INSERT INTO `file` VALUES (130, '7f6a7265-367f-4c82-8f3c-623d9ff049b6.png', 'png', 46, 'http://localhost:9090/file/eacb4dcd-c056-4cba-91a7-3f365105ac25.png', 0, 1, 59);
INSERT INTO `file` VALUES (131, '6364643880513516654040989.jpg', 'jpg', 344, 'http://localhost:9090/file/376e2b25-1254-482e-b94b-06fb3538b171.jpg', 0, 1, 59);
INSERT INTO `file` VALUES (132, '6e369116-b0e5-4dcf-bc49-00f5da7fd346.jpg', 'jpg', 442, 'http://localhost:9090/file/35583030-3fac-48ea-aebd-d84845192b42.jpg', 0, 1, 59);
INSERT INTO `file` VALUES (133, 'bfe1ae72-b209-4252-93bf-5ee979a50a24.jpg', 'jpg', 461, 'http://localhost:9090/file/e5aeb8d4-a45d-4aca-a54e-2ff7d17d9784.jpg', 0, 1, 60);
INSERT INTO `file` VALUES (134, 'f3ed186f-f331-464b-b585-be2b8faf9ee3.jpg', 'jpg', 387, 'http://localhost:9090/file/c6512dfe-ce13-4e89-94c7-25a60e8b9137.jpg', 0, 1, 60);
INSERT INTO `file` VALUES (135, '4b81aaae-c99d-4ecf-9370-e2bf729512b8.jpg', 'jpg', 857, 'http://localhost:9090/file/114b1020-eed7-4673-a4da-95406cfd0cd8.jpg', 0, 1, 60);
INSERT INTO `file` VALUES (136, 'e8708cb8-8519-4bff-9a6f-f5988a36c093.jpg', 'jpg', 1022, 'http://localhost:9090/file/0c354701-5301-4e01-aa1d-1b4a0bc91a98.jpg', 0, 1, 60);
INSERT INTO `file` VALUES (137, 'OIP-C (1).jpg', 'jpg', 22, 'http://localhost:9090/file/6838f01f-aac7-4c81-b5e5-9c8e58d8b7c1.jpg', 0, 1, 61);
INSERT INTO `file` VALUES (138, 'OIP-C (2).jpg', 'jpg', 20, 'http://localhost:9090/file/97f4b8bc-5724-4a0c-b458-d55470189bcb.jpg', 0, 1, 61);
INSERT INTO `file` VALUES (139, 'OIP-C (3).jpg', 'jpg', 19, 'http://localhost:9090/file/79e0e376-30f1-4719-ab46-d501ce88503c.jpg', 0, 1, 61);
INSERT INTO `file` VALUES (140, 'OIP-C.jpg', 'jpg', 31, 'http://localhost:9090/file/45215b20-3a3f-40a2-ade2-8d300197f219.jpg', 0, 1, 61);
INSERT INTO `file` VALUES (141, 'OIP-C (2).jpg', 'jpg', 19, 'http://localhost:9090/file/1502b825-2265-4e02-a849-f2f3427e241a.jpg', 0, 1, 62);
INSERT INTO `file` VALUES (142, 'OIP-C (1).jpg', 'jpg', 27, 'http://localhost:9090/file/e0d22a2a-0521-43a6-aed1-7d92c23470c8.jpg', 0, 1, 62);
INSERT INTO `file` VALUES (143, 'OIP-C.jpg', 'jpg', 23, 'http://localhost:9090/file/29bd19f1-9d86-4d39-8134-9591a2e06e45.jpg', 0, 1, 62);
INSERT INTO `file` VALUES (144, '下载.jpg', 'jpg', 21, 'http://localhost:9090/file/eb3e5cf2-c31b-4abe-af87-edae429594a4.jpg', 0, 1, 62);
INSERT INTO `file` VALUES (145, 'whcp_img16.jpg', 'jpg', 81, 'http://localhost:9090/file/5bf4c1c6-5c93-4475-bd22-2129d19ae3a3.jpg', 0, 1, 63);
INSERT INTO `file` VALUES (146, 'whcp_img25.jpg', 'jpg', 108, 'http://localhost:9090/file/c2a1856e-6d0c-4d40-b51c-489744c98c95.jpg', 0, 1, 63);
INSERT INTO `file` VALUES (147, 'whcp_img19.jpg', 'jpg', 65, 'http://localhost:9090/file/98f86cbc-97a1-4f82-a541-cb5bd8ae201d.jpg', 0, 1, 63);
INSERT INTO `file` VALUES (148, 'th.jpg', 'jpg', 18, 'http://localhost:9090/file/8767a6be-82e5-4c9a-90cc-cc5e711d1f98.jpg', 0, 1, 63);
INSERT INTO `file` VALUES (149, '21a4462309f7905298220501a1a2c0ca7bcb0a467fc8.webp', 'webp', 61, 'http://localhost:9090/file/56d0e57d-47e3-4758-8504-56f75d88b5a9.webp', 0, 1, 64);
INSERT INTO `file` VALUES (150, '64380cd7912397dda144085ff4d3a5b7d0a20cf42914.webp', 'webp', 13, 'http://localhost:9090/file/d2da6437-b112-4234-8829-91ea157be608.webp', 0, 1, 64);
INSERT INTO `file` VALUES (151, '1f178a82b9014a90f6034d5004262e12b31bb1514086.webp', 'webp', 10, 'http://localhost:9090/file/52c4ffeb-3727-4f9f-bfa6-d48b0ed51a00.webp', 0, 1, 64);
INSERT INTO `file` VALUES (152, '0dd7912397dda144ad34ffe91fe6c7a20cf431ad2814.webp', 'webp', 14, 'http://localhost:9090/file/163c1989-4ec5-4b16-8303-bd477e6028b1.webp', 0, 1, 64);
INSERT INTO `file` VALUES (153, '下载 (1).jpg', 'jpg', 11, 'http://localhost:9090/file/c3c8d265-ad99-4a33-afb4-86d52b13430c.jpg', 0, 1, 65);
INSERT INTO `file` VALUES (154, 'OIP-C (1).jpg', 'jpg', 19, 'http://localhost:9090/file/6b2a6234-128f-4cad-b179-da7c3aaa365b.jpg', 0, 1, 65);
INSERT INTO `file` VALUES (155, 'OIP-C.jpg', 'jpg', 28, 'http://localhost:9090/file/b2f65327-a101-4f75-a942-4a0e80f9a305.jpg', 0, 1, 65);
INSERT INTO `file` VALUES (156, '下载.jpg', 'jpg', 18, 'http://localhost:9090/file/b63ca667-4064-461c-a5b3-859b518e4103.jpg', 0, 1, 65);
INSERT INTO `file` VALUES (157, 'guanNei.e116a791.png', 'png', 459, 'http://localhost:9090/file/830c1715-6038-4afa-b9a8-85e932474168.png', 0, 1, 66);
INSERT INTO `file` VALUES (158, 'museumCollection.jpg', 'jpg', 242, 'http://localhost:9090/file/5ef90168-0f8f-4bb6-af46-3b0b701609b4.jpg', 0, 1, 66);
INSERT INTO `file` VALUES (159, 'pictures_0.jpg', 'jpg', 61, 'http://localhost:9090/file/e24853a7-fd78-4dcc-a00a-419464427511.jpg', 0, 1, 66);
INSERT INTO `file` VALUES (160, 'pictures_0 (1).jpg', 'jpg', 98, 'http://localhost:9090/file/ca5745a1-9f3e-4f1b-b202-6e0c3093f8d4.jpg', 0, 1, 66);
INSERT INTO `file` VALUES (161, 'OIP-C (2).jpg', 'jpg', 23, 'http://localhost:9090/file/42ed18a0-54a0-4bfa-b164-50e8088e9238.jpg', 0, 1, 67);
INSERT INTO `file` VALUES (162, 'OIP-C (3).jpg', 'jpg', 13, 'http://localhost:9090/file/cb7563cb-095e-4682-a80d-d2c41bf6fca5.jpg', 0, 1, 67);
INSERT INTO `file` VALUES (163, 'OIP-C (1).jpg', 'jpg', 19, 'http://localhost:9090/file/bd4b724d-e52e-47c2-8ddb-da3f9f901f1a.jpg', 0, 1, 67);
INSERT INTO `file` VALUES (164, 'OIP-C.jpg', 'jpg', 32, 'http://localhost:9090/file/04bac0fc-f5c4-4d32-b077-c9f2a4d25387.jpg', 0, 1, 67);
INSERT INTO `file` VALUES (165, 'OIP-C.jpg', 'jpg', 14, 'http://localhost:9090/file/5a98523f-1679-47bc-929e-d7989d066725.jpg', 0, 1, 68);
INSERT INTO `file` VALUES (166, 'OIP-C (2).jpg', 'jpg', 16, 'http://localhost:9090/file/378c301f-912f-4fff-8abc-7c75e84ddea7.jpg', 0, 1, 68);
INSERT INTO `file` VALUES (167, 'OIP-C (1).jpg', 'jpg', 24, 'http://localhost:9090/file/46343ca1-4234-44f1-89c9-7afa57e742ec.jpg', 0, 1, 68);
INSERT INTO `file` VALUES (168, '下载.jpg', 'jpg', 23, 'http://localhost:9090/file/074efe28-be8a-464d-bb73-ccedc7e7f778.jpg', 0, 1, 68);
INSERT INTO `file` VALUES (169, 'OIP-C (1).jpg', 'jpg', 24, 'http://localhost:9090/file/589a1851-6734-45b0-b8e8-4f1655950689.jpg', 0, 1, 69);
INSERT INTO `file` VALUES (170, 'OIP-C (2).jpg', 'jpg', 22, 'http://localhost:9090/file/c22e4019-893d-42a2-947d-7254a55d0619.jpg', 0, 1, 69);
INSERT INTO `file` VALUES (171, 'OIP-C (3).jpg', 'jpg', 24, 'http://localhost:9090/file/35cf8693-3984-457f-a785-bca707674328.jpg', 0, 1, 69);
INSERT INTO `file` VALUES (172, 'OIP-C.jpg', 'jpg', 20, 'http://localhost:9090/file/bf8cd32c-3bfe-4084-b63b-02dc6e136e3e.jpg', 0, 1, 69);
INSERT INTO `file` VALUES (173, 'OIP-C (4).jpg', 'jpg', 17, 'http://localhost:9090/file/d1d4676e-4ecf-4c18-a96b-ea21d4197f85.jpg', 0, 1, 70);
INSERT INTO `file` VALUES (174, 'OIP-C (1).jpg', 'jpg', 26, 'http://localhost:9090/file/e45f7804-69e5-4c02-b026-7244b8dd9e88.jpg', 0, 1, 70);
INSERT INTO `file` VALUES (175, 'OIP-C.jpg', 'jpg', 20, 'http://localhost:9090/file/dcc1c14f-108a-48c2-a071-5461f7b8d4be.jpg', 0, 1, 70);
INSERT INTO `file` VALUES (176, '下载.jpg', 'jpg', 29, 'http://localhost:9090/file/44a8fe49-27b4-4f67-a107-c1790e0c1abd.jpg', 0, 1, 70);
INSERT INTO `file` VALUES (177, 'OIP-C.jpg', 'jpg', 11, 'http://localhost:9090/file/8a765e4e-f57f-4eec-a26e-0be7294e1f65.jpg', 0, 1, 71);
INSERT INTO `file` VALUES (178, 'OIP-C (1).jpg', 'jpg', 15, 'http://localhost:9090/file/7aef8546-3baa-4bd4-8353-3a0f726e41cf.jpg', 0, 1, 71);
INSERT INTO `file` VALUES (179, 'OIP-C (2).jpg', 'jpg', 31, 'http://localhost:9090/file/2fe2611d-9e67-4c6e-a789-1a938ec0a382.jpg', 0, 1, 71);
INSERT INTO `file` VALUES (180, '下载.jpg', 'jpg', 34, 'http://localhost:9090/file/833d03aa-59e3-4943-b566-fa3a9dfbcdef.jpg', 0, 1, 71);
INSERT INTO `file` VALUES (181, 'OIP-C.jpg', 'jpg', 29, 'http://localhost:9090/file/542cd962-6fb1-4dc1-88cd-30a01942b38b.jpg', 0, 1, 72);
INSERT INTO `file` VALUES (182, 'OIP-C (2).jpg', 'jpg', 37, 'http://localhost:9090/file/577007ff-d567-4afb-9424-ef204f5edd3f.jpg', 0, 1, 72);
INSERT INTO `file` VALUES (183, '下载 (1).jpg', 'jpg', 23, 'http://localhost:9090/file/17e894fc-4b5e-4917-aa04-b6541c64998a.jpg', 0, 1, 72);
INSERT INTO `file` VALUES (184, 'OIP-C (1).jpg', 'jpg', 21, 'http://localhost:9090/file/94e25fe7-4cf6-4144-8560-dc562e367a7d.jpg', 0, 1, 72);
INSERT INTO `file` VALUES (185, 'OIP-C.jpg', 'jpg', 33, 'http://localhost:9090/file/fa929e5d-2d1d-4c3f-93dd-8018114247de.jpg', 0, 1, 73);
INSERT INTO `file` VALUES (186, 'OIP-C (1).jpg', 'jpg', 33, 'http://localhost:9090/file/62f24950-923a-4214-a370-77180e626fbe.jpg', 0, 1, 73);
INSERT INTO `file` VALUES (187, '下载 (1).jpg', 'jpg', 27, 'http://localhost:9090/file/55767510-7c19-4e6b-930f-a62aa6dc878e.jpg', 0, 1, 73);
INSERT INTO `file` VALUES (188, '下载.jpg', 'jpg', 18, 'http://localhost:9090/file/1a108fe3-630e-448c-acb1-932ff05f8fe1.jpg', 0, 1, 73);
INSERT INTO `file` VALUES (189, 'OIP-C (2).jpg', 'jpg', 15, 'http://localhost:9090/file/8285e4b7-d953-4acc-8f28-b4adfc19171b.jpg', 0, 1, 74);
INSERT INTO `file` VALUES (190, 'OIP-C (1).jpg', 'jpg', 28, 'http://localhost:9090/file/66e0e37c-0852-4426-a0d0-081c52e0c03b.jpg', 0, 1, 74);
INSERT INTO `file` VALUES (191, 'OIP-C.jpg', 'jpg', 23, 'http://localhost:9090/file/b04c080f-4174-41b6-b46a-3c8ba3b841f2.jpg', 0, 1, 74);
INSERT INTO `file` VALUES (192, '下载.jpg', 'jpg', 28, 'http://localhost:9090/file/6d115b68-8647-480e-b55a-43a34ff468b5.jpg', 0, 1, 74);
INSERT INTO `file` VALUES (193, 'OIP-C (1).jpg', 'jpg', 14, 'http://localhost:9090/file/46feead0-1f1a-4cdc-9268-6379c1b5478f.jpg', 0, 1, 75);
INSERT INTO `file` VALUES (194, 'OIP-C (3).jpg', 'jpg', 17, 'http://localhost:9090/file/6e821828-a4e3-45fa-81aa-e2c13a010486.jpg', 0, 1, 75);
INSERT INTO `file` VALUES (195, 'OIP-C (2).jpg', 'jpg', 22, 'http://localhost:9090/file/631878a6-72d7-4511-b544-2d33567d604c.jpg', 0, 1, 75);
INSERT INTO `file` VALUES (196, 'OIP-C.jpg', 'jpg', 26, 'http://localhost:9090/file/5fb42ee5-b2c6-43c2-b852-01c2f13f0db7.jpg', 0, 1, 75);
INSERT INTO `file` VALUES (197, 'OIP-C.jpg', 'jpg', 39, 'http://localhost:9090/file/e1a17e8e-7c3c-4d2d-924d-d964990fd77c.jpg', 0, 1, 76);
INSERT INTO `file` VALUES (198, 'OIP-C (1).jpg', 'jpg', 16, 'http://localhost:9090/file/94ab8afb-bd27-42fc-b2b1-d8d319ba81d0.jpg', 0, 1, 76);
INSERT INTO `file` VALUES (199, 'OIP-C (2).jpg', 'jpg', 24, 'http://localhost:9090/file/27022684-92d8-41bc-9281-1b1c242ad333.jpg', 0, 1, 76);
INSERT INTO `file` VALUES (200, 'OIP-C (4).jpg', 'jpg', 27, 'http://localhost:9090/file/a33c19c3-b613-4ee7-b553-07ec7ed34411.jpg', 0, 1, 76);
INSERT INTO `file` VALUES (201, 'OIP-C (2).jpg', 'jpg', 24, 'http://localhost:9090/file/3aa11169-c0f2-4797-82a3-62095e1d1842.jpg', 0, 1, NULL);
INSERT INTO `file` VALUES (202, 'OIP-C (2).jpg', 'jpg', 24, 'http://localhost:9090/file/990211ff-eb30-41b6-a446-35d30f3484fa.jpg', 0, 1, NULL);
INSERT INTO `file` VALUES (203, 'OIP-C (4).jpg', 'jpg', 27, 'http://localhost:9090/file/e3417297-d3cf-4fc2-b4de-a9bd2361aa61.jpg', 0, 1, NULL);
INSERT INTO `file` VALUES (204, '0dd7912397dda144ad34ffe91fe6c7a20cf431ad2814.webp', 'webp', 14, 'http://localhost:9090/file/51a2c902-d732-481c-90dd-9bf5e9cfe209.webp', 0, 1, 2);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `user_psw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '管理员密码',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '管理员电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '管理员邮箱',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '管理员地址',
  `imageUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `user_nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (1, '123', '2222', '2324345@qq.com', '上海市松江区', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg', '123');

-- ----------------------------
-- Table structure for museum
-- ----------------------------
DROP TABLE IF EXISTS `museum`;
CREATE TABLE `museum`  (
  `official` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '官网地址',
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
  `m_favorites` int(10) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '收藏量',
  `m_view` int(10) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '浏览量',
  `m_rate` double(10, 2) UNSIGNED ZEROFILL NULL DEFAULT NULL COMMENT '评分',
  `isReservedTag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '是否需要预约',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of museum
-- ----------------------------
INSERT INTO `museum` VALUES ('http://www.expo-museum.cn/', 2, '上海世博会博物馆', '上海市黄浦区蒙自路818号（近龙华东路）', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '周二至周日9:00—17:00（周一闭馆，16:15停止入馆）', '免费', '上海世博会博物馆，位于上海市黄浦区蒙自路818号，于2017年5月1日对外开放。是国际展览局唯一官方博物馆和官方文献研究中心，也是全世界独一无二的全面展示世博专题的博物馆。', 3.50, 3.50, 3.50, 3.50, 3.50, '', 0000000001, 0000000001, 0000003.50, '否');
INSERT INTO `museum` VALUES ('http://www.shtlg.orgcc.com/', 46, '上海铁路博物馆', '静安区天目东路200号', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '上午9：00~11:30下午13:30~16:30（闭馆前半小时停止进馆）（周一闭馆））', '成人10元；学生、铁路职工员5元', '上海铁路博物馆于1909年建成、具有英式古典建筑风格的沪宁铁路上海站（老北站）的原样，在其原址上建设，于2004年8月上海铁路局建局55周年之际建成开放，现为上海市科普教育基地。', 4.50, 4.50, 4.50, 4.50, 4.50, '', 0000000002, 0000000001, 0000004.50, '否');
INSERT INTO `museum` VALUES ('https://shhongse.fudan.edu.cn/info/1096/2083.htm', 47, '上海鲁迅纪念馆', '上海市虹口区', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '周二-周日9:00-17:00 (16:00停止入场，逢周—闭馆，国家法定假日除外)', '免费', '上海鲁迅纪念馆 是中华人民共和国成立后第一个人物类纪念馆，同时管理鲁迅故居、鲁迅墓两个文物保护单位，1950年春由华东军政委员会文化部筹备， 谢旦如 负责筹建，1951年1月7日正式开放，周恩来总理题写馆名。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000034, 0000000002, 0000004.00, '否');
INSERT INTO `museum` VALUES ('https://www.snhm.org.cn/', 48, '上海自然博物馆', '上海市静安区北京西路510号（静安雕塑公园内）', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '周二至周日上午9:00至下午17:00（国定假日除外）', '成人30元、学生12元、老年25元', '上海自然博物馆（Shanghai Natural History Museum）是上海市重要的科普教育基地和公众社会文化交流平台。 坐落于上海市 静安雕塑公园 内。 历史最早可追溯到1868年由法国天主教神父韩伯禄创立的徐家汇博物院。 新馆总投资13亿元，2015年二季度对外开放。', 1.00, 1.00, 1.00, 1.00, 1.00, '', 0000000005, 0000000003, 0000001.00, '否');
INSERT INTO `museum` VALUES ('https://shhongse.fudan.edu.cn/info/1099/2098.htm', 49, '三山会馆', '上海市黄浦区中山南路1551号', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '周二—周日（周一馆休），上午9︰00—下午4︰00', '免费', '三山会馆是上海工人第三次武装起义唯一保存完好的遗址，整幢建筑美轮美奂、别致秀丽，极富艺术价值。 2009年根据历史老照片修复砖雕门楼，大殿内恢复了汉白玉天后神像，并在东西厢房展出“妈祖圣迹图”。 2010年妈祖文化被列为世界文化遗产。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000006, 0000000004, 0000004.00, '否');
INSERT INTO `museum` VALUES ('https://www.shh-shrhmuseum.org.cn/historymuseum/historymuseum/index.html', 50, '上海历史博物馆', '上海市黄浦区南京西路325号（靠近黄陂北路）', 'Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '周二至周日：上午 09:00~17:00(下午16:00停止入馆)，周一闭馆（国家法定假日除外）', '免费', '上海市历史博物馆（上海革命历史博物馆）位于 上海市 黄浦区 南京西路325号（原 上海美术馆 ），地处上海 人民广场 历史风貌保护区， 人民公园 西侧，占地10000平方米，是全面综合反映上海6000年悠久地方历史及革命历史的地志性博物馆。', 4.00, 4.00, 4.00, 4.00, 4.00, '', NULL, 0000000005, 0000004.00, '否');
INSERT INTO `museum` VALUES ('http://corp.metersbonwe.com/', 51, '美特斯邦威服饰博物馆', '上海市浦东新区', 'Tue,Wed,Thu,Fri,Sat,Sun', '艺术博物馆', NULL, '周二至周日，国定假日闭馆', '免费', '如今，建成的上海美特斯邦威服饰博物馆坐落在上海市南汇区康桥东路800号美特斯邦威集团上海总部园区，展馆面积有2000多平方米。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000007, 0000000006, 0000004.00, '否');
INSERT INTO `museum` VALUES ('http://shdmg.orgcc.com/', 52, '上海动漫博物馆', '张江高科技园区', 'Tue,Wed,Thu,Fri,Sat,Sun', '艺术博物馆', NULL, '周二至周日10:00~17:00', '免费', '上海动漫博物馆，是中国第一家集展示、交流、科普教育、实践互动、产业促进等多功能于一体的大型现代化专业动漫展馆。博物馆共有3层，约7000余平方米。博物馆以“动漫、体验、科普”为核心，以科普性、互动性、趣味性为特色，内设历史展呈馆、互动体验馆、多功能3D影院、临展区等，藏品和展品逾万件。', 5.00, 5.00, 5.00, 5.00, 5.00, '', 0000000008, 0000000001, 0000005.00, '否');
INSERT INTO `museum` VALUES ('https://www.shkepu.net/api/wemuser/kpSiteDetail?id=05722737e55243ceb0a5f658c86c8b2c', 53, '黄道婆纪念馆', '上海市徐汇区徐梅路700号', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '周二至周日（9：00-16：00）', '免费', '黄道婆纪念馆，位于上海市徐汇区徐梅路700号，占地面积3750平方米，属社会科学类名人专题博物馆。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000009, 0000000002, 0000004.00, '否');
INSERT INTO `museum` VALUES (NULL, 55, '上海市南汇博物馆', '上海市浦东新区惠南镇文师街上海市浦东新区惠南镇文师街18号', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '周一至周日（9:00-16:30）', '免费', '上海市南汇博物馆，位于上海市浦东新区惠南镇文师街18号。上海市南汇博物馆占地面积3510平方米，基本陈列面积1500平方米，临时陈列面积400平方米，属地方综合性博物馆。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000002, 0000000033, 0000004.00, '否');
INSERT INTO `museum` VALUES ('https://wuchangshuo.artron.net/', 56, '上海吴昌硕纪念馆', '中国上海市浦东新区陆家嘴东路15号', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '4月29日-5月3日:周一至周日 10:00-17:00;5月4日-4月28日:周二至周日 10:00-17:00', '10元／人', '吴昌硕纪念馆位于上海浦东新区华夏文化旅游区华夏文化公园内，是中国全国爱国主义教育基地，上海爱国主义教育基地。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000001, 0000000044, 0000004.00, '否');
INSERT INTO `museum` VALUES ('', 57, '高桥历史文化陈列馆', '上海市浦东新区高桥镇义王路1号', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '全年开放每周一闭馆（法定节假日除外）', '免费开放', '    高桥历史文化陈列馆，位于上海市，据2020年9月国家文物局信息显示，现有藏品620件/套，参观人数0.4万人次。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000022, 0000000055, 0000004.00, '否');
INSERT INTO `museum` VALUES ('https://www.shcn.gov.cn/clg/index.html', 58, '上海市长宁区革命文物陈列馆', '上海市长宁区愚园路1376弄34号（近定西路）', 'Mon,Tue,Wed,Thu,Fri,Sat', '社会科学博物馆', NULL, '周一至周六及国定假期：9:00-11:00，13:00-16:00', '免费', '上海市长宁区革命文物陈列馆位于上海市长宁区愚园路1376弄34号（近定西路），占地面积85平方米，建筑面积224平方米。1985年7月10日，中共长宁区委决定动迁居民修复这一革命旧址，成立长宁区革命文物陈列馆；1988年10月24日，上海市长宁区革命文物陈列馆正式对外开放；1994年，一楼改为长宁区革命史料陈列室，作为陈列馆的基本陈列，并对馆舍进行全面大修；2002年，上海市长宁区革命文物陈列馆对基本陈列进行了改版，同年，改建北侧的晒台为会议室，兼作电化教育室。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000011, 0000000000, 0000004.00, '否');
INSERT INTO `museum` VALUES ('http://www.auroramuseum.cn/', 59, '震旦博物馆', '上海市浦东新区陆家嘴富城路99号', 'Tue,Wed,Thu,Fri,Sat,Sun', '艺术博物馆', NULL, '周二至周四，周六至周日10:00～17:00；周一不开放；周五10:00～21:00', '成人票60元，学生票30元', '震旦博物馆位于上海市浦东新区陆家嘴富城路99号，以历史与艺术并重，集典藏、研究、展览、营运、传扬为一体。新馆于2013年10月20日正式对外开放，面积6316平方米。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000024, NULL, 0000004.00, '否');
INSERT INTO `museum` VALUES ('https://www.shanghaimuseum.net/mu/frontend/pg/index', 60, '上海博物馆', '黄浦区人民大道201号', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '除国定假日外，每周一闭馆，9:00—17:00，16:00后停止入场', '免费', '上海博物馆，位于上海市黄浦区人民大道201号，陈列面积共计12000平方米，一楼为中国古代青铜馆、中国古代雕塑馆和展览大厅；二楼为中国古代陶瓷馆、暂得楼陶瓷馆和展览厅；三楼为中国历代书法馆、中国历代绘画馆、中国历代玺印馆；四楼为中国古代玉器馆、中国历代钱币馆、中国明清家具馆、中国少数民族工艺馆和展览厅，是综合性博物馆。', 2.00, 2.00, 2.00, 2.00, 2.00, '', 0000000056, 0000000001, 0000002.00, '否');
INSERT INTO `museum` VALUES (NULL, 61, '宋庆龄生平事迹陈列馆', '上海市长宁区宋园路21号（宋庆龄陵园内）', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '全年开放，每天8：30——17：00（16：30起停止售票）。', '3.00元/人；未成年人团体免费；70岁以上老人、离休干部、现役军人和残疾人士凭有关证件免票。', '宋庆龄生平事迹陈列馆位于上海市长宁区宋园路21号（宋庆龄陵园内）。', 4.00, 3.00, 4.00, 3.00, 4.00, '', 0000000078, 0000000002, 0000003.60, '否');
INSERT INTO `museum` VALUES ('https://www.shmmc.com.cn/', 62, '中国航海博物馆', '上海市浦东新区临港新城申港大道197号（近滴水湖）', 'Tue,Wed,Thu,Fri,Sat,Sun', '自然科学博物馆', NULL, '9:30—16:00（15:30停止入馆），每周一闭馆（节假日除外）', '30元/人（60—64周岁老人10元/人，教师及学生15元/人）', '国航海博物馆（China Maritime Museum），全称“上海中国航海博物馆”，位于上海市浦东新区临港新城申港大道197号（近滴水湖）。中国航海博物馆于2010年7月对外正式开放，建筑面积46434平方米，室内展览面积21000平方米，年接待游客319629人次，是经国务院批准设立，由中国交通运输部和上海市人民政府共建的首个中国国家级航海博物馆。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000089, 0000000003, 0000004.00, '否');
INSERT INTO `museum` VALUES ('https://www.shetbwg.cn/', 63, '上海儿童博物馆', '上海市长宁区宋园路61号', 'Tue,Wed,Thu,Fri,Sat,Sun', '自然科学博物馆', NULL, '8:45—16:45（15:30起停止入馆），周一闭馆（逢国定节假日则顺延至节后首个工作日）', '免费', '上海儿童博物馆，位于上海市长宁区宋园路61号。占地面积9000余平方米、建筑面积4632.97平方米、室外活动面积1450余平方米、室外可活动水域面积660余平方米。是科学技术类科普专题博物馆。，位于上海市长宁区宋园路61号。占地面积9000余平方米、建筑面积4632.97平方米、室外活动面积1450余平方米、室外可活动水域面积660余平方米。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000032, 0000000004, 0000004.00, '否');
INSERT INTO `museum` VALUES (NULL, 64, '上海杨浦法院博物馆', '上海市杨浦区河间路29号6楼', 'Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '每周三13:30—16:30（需事先预约)', '免费参观', '上海杨浦法院博物馆位于上海市杨浦区河间路29号6楼，占地面积300平方米，展厅面积200平方米，是社会科学类法治专题博物馆。', 4.00, 4.00, 4.00, 4.00, 4.00, '', 0000000001, 0000000005, 0000004.00, '是');
INSERT INTO `museum` VALUES ('https://web.dhu.edu.cn/mtc/', 65, '上海纺织博物馆', '上海市普陀区', 'Wed', '自然科学博物馆', NULL, '周二至周日（9:30-16:00）', '免费', '上海纺织博物馆位于苏州河南岸、澳门路北侧、昌化路东面、长寿路桥西北翼原上海申新纺织第九厂旧址，户外展示面积1500平方米，室内展示面积4480平方米，是一家地域性行业博物馆。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000001, 0000000006, 0000004.00, '否');
INSERT INTO `museum` VALUES ('http://114.141.166.144/#/index/exhibition', 66, '上海中国烟草博物馆', '杨浦区长阳路728号', 'Tue,Wed,Thu,Fri,Sat', '社会科学博物馆', NULL, '周二至周六上午9：00-11：30，下午13：00-16：00', '免费参观', '上海中国烟草博物馆，位于上海市杨浦区长阳路近许昌路，占地面积5511平方米、建筑面积9661平方米，隶属国家烟草专卖局（上海市烟草专卖局代管） ，是社会科学类烟草业专题博物馆。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000002, 0000000007, 0000004.00, '否');
INSERT INTO `museum` VALUES ('https://www.shkepu.net/api/wemuser/kpSiteDetail?id=45545eb365094a6b832e667d9c17ee0a', 67, '上海院士风采馆', '上海市杨浦区国顺东路369号', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '9:00——16:30 每周一闭馆', '免费', '上海院士风采馆坐落在 杨浦区 黄兴公园 外，是全国首家以集中展示 两院院士 风采为主题的专门展馆，是一个对青少年进行 爱国主义教育 和 科普教育 的基地，也是院士进行学术交流，探索创新思维的场所。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000003, 0000000008, 0000004.00, '否');
INSERT INTO `museum` VALUES ('http://www.xujiahuiorigin.com/zouJin/inner?id=2b51876f064beceff096b737376cad1e&columnId=d4f0f2448e2a0cabbed64fb2d25cbf94', 68, '上海土山湾博物馆', '上海市徐汇区', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '9:00——16:30,16:00停止入馆（每周一闭馆）', '免费', '上海土山湾博物馆，位于上海市，据2020年9月国家文物局信息显示，现有藏品714件/套，开展教育活动18次，参观人数7.9万人次。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000004, 0000000009, 0000004.00, '否');
INSERT INTO `museum` VALUES (NULL, 69, '中共四大纪念馆', '上海市虹口区四川北路1468号四川北路公园内', 'Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '周二至周日（上午9:00-11:30，下午13:00-16:00）', '免费', '中共四大纪念馆，位于上海市虹口区四川北路1468号四川北路公园内，总面积约3040平方米，基本陈列展厅面积约1839平方米，属社会科学类历史专题博物馆。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000005, 0000000011, 0000004.00, '否');
INSERT INTO `museum` VALUES ('https://vr.txgand.com/', 70, '上海元代水闸遗址博物馆', '上海市普陀区延长西路619号', 'Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '9:00—16:30（16:00停止检票）周一闭馆（国定假日除外）', '免费', '上海元代水闸遗址博物馆（Shanghai Yuan-Dynasty Sluice Site Museum），位于上海市普陀区延长西路619号，隶属于上海市历史博物馆，是在志丹苑元代水闸遗址上建立的遗址类博物馆，占地面积2894平方米，建筑面积2316平方米，于2012年12月31日正式对外开放。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000006, 0000000032, 0000004.00, '否');
INSERT INTO `museum` VALUES ('https://www.songjiangmuseum.com/sjbwg/js_lxwm.action', 71, '上海市松江区博物馆', '上海市松江区方塔公园东首', 'Tue,Wed,Thu,Fri,Sat,Sun', '综合博物馆', NULL, '9:30-16:00（周一闭馆）', '免费', '松江博物馆，是一所综合性地方博物馆。 位于上海松江区中山东路 233 号。 松江博物馆以征集、收藏、研究、陈列、宣传松江地区历史文化、文物为主。 藏品包括陶、瓷、玉、金银、铜、木器等，计 5000 余件，并有古代典籍 2000 余套，其中有部分珍贵的善本、刻本。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000007, 0000000054, 0000004.00, '否');
INSERT INTO `museum` VALUES ('https://www.sstm-sam.org.cn/#/home', 72, '上海天文博物馆', '上海市松江区外青松公路9258号西佘山山顶', 'Tue,Wed,Thu,Fri,Sat,Sun', '自然科学博物馆', NULL, '8:30一16:30（16:00起停止售票）', '成人：12元，优惠票：8元。', '上海天文博物馆，位于上海市松江区外青松公路9258号西佘山山顶，占地面积约8000平方米，隶属中国科学院上海天文台，是自然科学类天文学科普专题博物馆。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000008, 0000000012, 0000004.00, '否');
INSERT INTO `museum` VALUES ('http://www.xujiahuiorigin.com/zouJin/inner?id=4a79bf01397d01ff0369b9a2d6059ec9&columnId=d4f0f2448e2a0cabbed64fb2d25cbf94', 73, '徐光启纪念馆', '上海市徐汇区南丹路17号(光启公园内)', 'Mon,Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '周一至周日（9:00-16:30）', '免费', '徐光启纪念馆，位于上海市徐汇区南丹路17号（光启公园内），紧邻徐光启墓，占地面积为502平方米、建筑面积282平方米，属社会科学类名人专题博物馆。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000009, 0000000033, 0000004.00, '否');
INSERT INTO `museum` VALUES ('https://shhongse.fudan.edu.cn/info/1023/1570.htm', 74, '顾正红纪念馆', '中国上海市普陀区长寿路街道澳门路300号', 'Tue,Wed,Thu,Fri,Sat,Sun', '社会科学博物馆', NULL, '周二至周日每天08:30至16:30', '免费', '顾正红纪念馆（Gu Zhenghong Meomorial Hall），位于中国上海市普陀区长寿路街道澳门路300号，总占地面积1300平方米 ，建筑面积393.32平方米 ，是缅怀顾正红烈士英雄事迹、深入开展五卅运动史、沪西革命史研究工作的重要阵地 。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000000, 0000000006, 0000004.00, '否');
INSERT INTO `museum` VALUES ('http://museum.odb.sh.cn/node2/n2399/n2400/n2897/index.html', 75, '上海中国留学生博物馆', '上海市松江区茸梅路1177弄7号', 'Mon,Tue,Wed,Thu,Fri,Sat', '社会科学博物馆', NULL, '周一到周六（9:00-12:00，13:00-16:00），周日闭馆。', '免费', '上海中国留学生博物馆位于上海市松江区茸梅路1177弄7号，民办博物馆\r\n上海中国留学生博物馆位于上海市松江区茸梅路1177弄7号 ，占地面积896平方米，建筑面积687平方米， 是一所民办非企业博物馆、中国第一家留学生博物馆。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000020, 0000000008, 0000004.00, '否');
INSERT INTO `museum` VALUES ('http://www.hongsehui.cn/service/venue/14/', 76, '上海李白烈士故居', '上海市虹口区黄渡路107号', 'Tue,Wed,Thu,Fri,Sat,Sun', '历史博物馆', NULL, '周二至周日：上午 09:00~17:00(下午16:00停止入馆)，周一闭馆（国家法定假日除外）', '免费', '上海李白烈士故居位于上海市虹口区黄渡路107弄（原亚细亚里）15号。 李白烈士故居现为上海市文物保护单位。 陈列共分两部分，第一部分为投 身革命洪流，讲述李白青少年时代和参加红军后的经历；第二部 分讲述李白夫妇设立秘密电台，与敌人斗争的光辉业绩；第三部分为永不消逝的电波。', 4.00, 4.00, 4.00, 4.00, 4.00, NULL, 0000000011, 0000000007, 0000004.00, '否');

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
INSERT INTO `rating` VALUES (2, 1, 4.00, 4.00, 4.00, 4.00, 4.00, '2024-04-24 21:59:48', NULL);
INSERT INTO `rating` VALUES (46, 1, 5.00, 5.00, 5.00, 5.00, 5.00, '2024-04-24 21:57:36', NULL);
INSERT INTO `rating` VALUES (47, 1, 0.00, 0.00, 0.00, 0.00, 0.00, '2024-04-24 21:40:35', NULL);
INSERT INTO `rating` VALUES (49, 1, 1.00, 1.00, 1.00, 1.00, 1.00, '2024-04-24 23:37:59', NULL);
INSERT INTO `rating` VALUES (50, 1, 5.00, 5.00, 5.00, 1.00, 1.00, '2024-04-24 21:58:57', NULL);
INSERT INTO `rating` VALUES (51, 1, 2.00, 5.00, 1.00, 1.00, 1.00, '2024-04-24 22:01:03', NULL);
INSERT INTO `rating` VALUES (52, 1, 5.00, 5.00, 5.00, 5.00, 5.00, '2024-04-25 14:27:56', NULL);
INSERT INTO `rating` VALUES (60, 1, 2.00, 2.00, 2.00, 2.00, 2.00, '2024-04-25 14:33:19', NULL);
INSERT INTO `rating` VALUES (61, 1, 4.00, 3.00, 4.00, 3.00, 4.00, '2024-04-25 14:37:23', NULL);
INSERT INTO `rating` VALUES (49, 24, 3.00, 3.00, 3.00, 3.00, 3.00, '2024-04-24 23:39:50', NULL);
INSERT INTO `rating` VALUES (2, 25, 3.00, 3.00, 3.00, 3.00, 3.00, '2024-04-25 14:17:40', NULL);
INSERT INTO `rating` VALUES (46, 25, 4.00, 4.00, 4.00, 4.00, 4.00, '2024-04-25 13:54:34', NULL);
INSERT INTO `rating` VALUES (48, 25, 1.00, 1.00, 1.00, 1.00, 1.00, '2024-04-25 14:16:22', NULL);

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
  `imageUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123', '123', '男', 32, '是男的ma', '22222@qq.com', '12323786', '2024-03-21 16:31:05', '2024-03-21 16:31:05', 'http://localhost:9090/file/776ca24e-cfee-4d0a-84d4-e2c551990646.jpeg');
INSERT INTO `user` VALUES (7, 'aa', '小停', '男', 34, NULL, '3333333@google.com', NULL, '2024-03-22 13:56:06', '2024-03-22 13:56:06', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (8, 'bb', '小画', '女', 22, NULL, '444432@qq.com', NULL, '2024-03-22 13:56:29', '2024-03-22 13:56:29', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (11, 'fff', '英子', '女', 21, NULL, '124243534@google.com', NULL, '2024-03-23 20:12:25', '2024-03-23 20:12:25', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (13, 'cc', '小贾', '男', 30, NULL, '11232234@qq.com', NULL, '2024-03-26 21:01:59', '2024-03-26 21:01:59', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (14, 'a', '小杨', '女', 26, NULL, '1233334@qq.com', NULL, '2024-03-26 21:02:40', '2024-03-26 21:02:40', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (18, 'daw', '小赵', '男', 30, NULL, '56576', NULL, '2024-03-26 21:04:24', '2024-03-26 21:04:24', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (19, 'swdw', '小花', '女', 22, NULL, '4557878', NULL, '2024-03-26 22:42:13', '2024-03-26 22:42:13', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (20, NULL, '小页', '男', NULL, NULL, '22222@qq.com', NULL, '2024-03-27 15:24:14', '2024-03-27 15:24:14', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (21, NULL, '小叶', '男', NULL, NULL, '3333333@google.com', NULL, '2024-03-27 15:24:14', '2024-03-27 15:24:14', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (22, NULL, '小夜', '女', NULL, NULL, '444432@qq.com', NULL, '2024-03-27 15:24:14', '2024-03-27 15:24:14', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (23, NULL, '美子', '女', NULL, NULL, '124243534@google.com', NULL, '2024-03-27 15:24:14', '2024-03-27 15:24:14', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (24, '12345', '12345', '1', NULL, NULL, NULL, NULL, '2024-04-24 23:30:13', '2024-04-24 23:30:13', 'http://localhost:9090/file/17c2a806-2159-4885-bd8a-04d2e2346f8b.jpeg');
INSERT INTO `user` VALUES (25, '123456', '小小', NULL, NULL, NULL, NULL, NULL, '2024-04-25 11:08:45', '2024-04-25 11:08:45', NULL);
INSERT INTO `user` VALUES (26, NULL, '小华', '男', NULL, NULL, '22222@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (27, NULL, '小停', '男', NULL, NULL, '3333333@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (28, NULL, '小画', '女', NULL, NULL, '444432@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (29, NULL, '英子', '女', NULL, NULL, '124243534@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (30, NULL, '小贾', '男', NULL, NULL, '11232234@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (31, NULL, '小杨', '女', NULL, NULL, '1233334@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (32, NULL, '小赵', '男', NULL, NULL, '56576', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (33, NULL, '小花', '女', NULL, NULL, '4557878', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (34, NULL, '小页', '男', NULL, NULL, '22222@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (35, NULL, '小叶', '男', NULL, NULL, '3333333@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (36, NULL, '小夜', '女', NULL, NULL, '444432@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (37, NULL, '美子', '女', NULL, NULL, '124243534@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (38, NULL, '小华', '男', NULL, NULL, '22222@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (39, NULL, '小停', '男', NULL, NULL, '3333333@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (40, NULL, '小画', '女', NULL, NULL, '444432@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (41, NULL, '英子', '女', NULL, NULL, '124243534@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (42, NULL, '小贾', '男', NULL, NULL, '11232234@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (43, NULL, '小杨', '女', NULL, NULL, '1233334@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (44, NULL, '小赵', '男', NULL, NULL, '56576', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (45, NULL, '小花', '女', NULL, NULL, '4557878', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (46, NULL, '小页', '男', NULL, NULL, '22222@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (47, NULL, '小叶', '男', NULL, NULL, '3333333@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (48, NULL, '小夜', '女', NULL, NULL, '444432@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (49, NULL, '美子', '女', NULL, NULL, '124243534@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (50, NULL, '小华', '男', NULL, NULL, '22222@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (51, NULL, '小停', '男', NULL, NULL, '3333333@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (52, NULL, '小画', '女', NULL, NULL, '444432@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (53, NULL, '英子', '女', NULL, NULL, '124243534@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (54, NULL, '小贾', '男', NULL, NULL, '11232234@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (55, NULL, '小杨', '女', NULL, NULL, '1233334@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (56, NULL, '小赵', '男', NULL, NULL, '56576', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (57, NULL, '小花', '女', NULL, NULL, '4557878', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (58, NULL, '小页', '男', NULL, NULL, '22222@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (59, NULL, '小叶', '男', NULL, NULL, '3333333@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (60, NULL, '小夜', '女', NULL, NULL, '444432@qq.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);
INSERT INTO `user` VALUES (61, NULL, '美子', '女', NULL, NULL, '124243534@google.com', NULL, '2024-04-25 14:38:20', '2024-04-25 14:38:20', NULL);

SET FOREIGN_KEY_CHECKS = 1;
