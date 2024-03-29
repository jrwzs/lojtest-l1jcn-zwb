/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : l1jdb_taiwan

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2012-06-30 19:32:12
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mobgroup`
-- ----------------------------
DROP TABLE IF EXISTS `mobgroup`;
CREATE TABLE `mobgroup` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `note` varchar(255) NOT NULL default '',
  `remove_group_if_leader_die` int(10) unsigned NOT NULL default '0',
  `leader_id` int(10) unsigned NOT NULL default '0',
  `minion1_id` int(10) unsigned NOT NULL default '0',
  `minion1_count` int(10) unsigned NOT NULL default '0',
  `minion2_id` int(10) unsigned NOT NULL default '0',
  `minion2_count` int(10) unsigned NOT NULL default '0',
  `minion3_id` int(10) unsigned NOT NULL default '0',
  `minion3_count` int(10) unsigned NOT NULL default '0',
  `minion4_id` int(10) unsigned NOT NULL default '0',
  `minion4_count` int(10) unsigned NOT NULL default '0',
  `minion5_id` int(10) unsigned NOT NULL default '0',
  `minion5_count` int(10) unsigned NOT NULL default '0',
  `minion6_id` int(10) unsigned NOT NULL default '0',
  `minion6_count` int(10) unsigned NOT NULL default '0',
  `minion7_id` int(10) unsigned NOT NULL default '0',
  `minion7_count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mobgroup
-- ----------------------------
INSERT INTO `mobgroup` VALUES ('1', '黑骑士搜索队(2)', '0', '81066', '81066', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('2', '艾尔摩将军+艾尔摩士兵(2)+艾尔摩法师(2)', '0', '45248', '45216', '2', '45224', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('3', '艾尔摩将军+艾尔摩士兵+艾尔摩法师(2)', '0', '45248', '45216', '1', '45224', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('4', '艾尔摩将军+艾尔摩士兵(2)+艾尔摩法师', '0', '45248', '45216', '2', '45224', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('5', '哥布林(3)', '0', '45008', '45008', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('6', '哈柏哥布林+哥布林(3)', '0', '45140', '45008', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('7', '长老+漂浮之眼(2)', '0', '45215', '45068', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('8', '变形怪首领+妖魔(2)+妖魔巡守(2)', '0', '45082', '45017', '2', '45019', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('9', '火炎蛋(4)', '0', '45206', '45206', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('10', '卡司特王+卡司特(3)', '0', '45346', '45213', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('11', '人形僵尸(16)', '0', '45065', '45065', '15', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('12', '美人鱼+人鱼(3)', '0', '45154', '45940', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('13', '克特+黑骑士(8)', '1', '45600', '45165', '8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('14', '卡士伯+马库尔+巴土瑟+西玛', '0', '45488', '45497', '1', '45473', '1', '45464', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('15', '魔法师+食尸鬼(4)+漂浮之眼(2)', '1', '45456', '45157', '4', '45068', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('16', '黑长者+史巴托(2)', '1', '45545', '45161', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('17', '深红飞龙(2)', '0', '45529', '45529', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('18', '反王肯恩+赛尼斯', '0', '45680', '45678', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('19', '巴兰卡+蕾雅', '0', '45651', '45677', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('20', '曼波兔+曼波兔部下(3)', '1', '45534', '45366', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('21', '曼波兔+曼波兔部下(3)', '1', '45535', '45366', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('22', '深渊之主+地之牙+水之牙+火之牙+风之牙', '0', '45646', '45416', '1', '45419', '1', '45424', '1', '45418', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('23', '变种杨果里恩(3)', '0', '45348', '45348', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('24', '梅杜莎(3)', '0', '45380', '45380', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('25', '奇美拉(3)', '0', '45407', '45407', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('26', '亚力安(3)', '0', '81173', '81173', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('27', '思克巴(3)', '0', '45394', '45394', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('28', '魔狼(3)', '0', '45409', '45409', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('29', '邪恶多眼怪(3)', '0', '45406', '45406', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('30', '死亡之剑(3)', '0', '45386', '45386', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('31', '梦魇(3)', '0', '45440', '45440', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('32', '恐怖的火炎蛋(3)', '0', '45384', '45384', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('33', '恐怖的地狱犬(3)', '0', '45471', '45471', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('34', '小恶魔(3)', '0', '45481', '45481', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('35', '艾弗力特(3)', '0', '45515', '45515', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('36', '残暴的骷髅枪兵(3)', '0', '45403', '45403', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('37', '残暴的食尸鬼(3)', '0', '45454', '45454', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('38', '残暴的史巴托(3)', '0', '45455', '45455', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('39', '残暴的骷髅神射手(3)', '0', '45494', '45494', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('40', '受诅咒的艾尔摩将军(3)', '0', '45541', '45541', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('41', '火焰烈炎兽(3)', '0', '45520', '45520', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('42', '火焰阿西塔基奥(3)', '0', '45572', '45572', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('43', '暗黑火焰弓箭手(3)', '0', '45532', '45532', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('44', '傲慢的洁尼斯女王(3)', '0', '45581', '45581', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('45', '马昆斯吸血鬼(3)', '0', '45604', '45604', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('46', '恐怖的僵尸王(3)', '0', '45589', '45589', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('47', '火精灵王(2)', '0', '45622', '45622', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('48', '水精灵王(2)', '0', '45620', '45620', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('49', '库曼+重装蜥蜴人(2)', '1', '45492', '81174', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('50', '黑骑士(8)', '0', '45165', '45165', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('51', '伯爵亲卫队长+贪欲的杜宾狗(2)', '1', '46024', '46019', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('52', '巡察兵(欲望)1-3', '0', '46082', '46083', '1', '46084', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('53', '巡察兵(欲望)4-6', '0', '46085', '46086', '1', '46087', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('54', '巡察兵(欲望)7-9', '0', '46088', '46089', '1', '46090', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('55', '巡察兵(影之神殿)1-3', '0', '46097', '46098', '1', '46099', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('56', '巡察兵(影之神殿)4-6', '0', '46100', '46101', '1', '46102', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('57', '巡察兵(影之神殿)6-7', '0', '46103', '46104', '1', '46105', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('58', '西斯+深渊食尸鬼(2)', '0', '45539', '45501', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('59', '西斯+深渊弓箭手(2)', '0', '45539', '45502', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('60', '地底巨王龟+地底蟹人(2)', '0', '45422', '45297', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('61', '地底多眼怪+地底蜥蜴人(3)', '0', '45423', '45374', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('62', '巨大坟墓守护者+坟墓守护者骑士+坟墓守护者法师+坟墓守护者', '0', '45603', '45537', '1', '45530', '1', '45498', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('63', '底比斯 曼陀罗草(2)', '0', '46107', '46107', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('64', '冰之女王禁卫兵(枪)(3)', '0', '46135', '46135', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('65', '冰之女王禁卫兵(弓)(3)', '0', '46138', '46138', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('66', '冰之女王禁卫兵(枪)(3)', '0', '46139', '46139', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('67', '冰之女王禁卫兵(弓)(3)', '0', '46137', '46137', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('68', '冰之女王+冰之女王侍女(3)', '0', '46141', '46140', '3', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('69', '拉斯塔巴德调教师+黑虎(2)', '0', '45448', '45836', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('70', '炎魔的分身+恶魔+巴列斯+巴风特+小恶魔+思克巴女皇+思克巴', '0', '45315', '45647', '1', '45579', '1', '45569', '1', '45482', '1', '45450', '1', '45391', '1', '0', '0');
INSERT INTO `mobgroup` VALUES ('71', '堕落的司祭(5)', '0', '45570', '45571', '1', '45582', '1', '45587', '1', '45605', '1', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('72', 'オーク密使+オーク密使 护卫兵(2)', '1', '46157', '46160', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('73', 'オーク密使+オーク密使 护卫兵(2)', '1', '46158', '46160', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('74', 'オーク密使+オーク密使 护卫兵(2)', '1', '46159', '46160', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('75', 'ヤヒの近卫兵', '0', '45624', '45628', '2', '45629', '1', '45630', '1', '45596', '2', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('76', 'ヤヒの近卫兵', '0', '45623', '45631', '2', '45632', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('77', '狩猎 黑骑士(2)', '0', '81319', '81319', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('78', '精锐 黑骑士(2)', '0', '81320', '81320', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `mobgroup` VALUES ('79', '精锐 黑骑士队长+精锐 黑骑士(4)', '1', '81321', '81320', '4', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
