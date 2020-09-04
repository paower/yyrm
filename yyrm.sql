/*
Navicat MySQL Data Transfer

Source Server         : paower
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : yyrm

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-09-03 15:37:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ncconfig`
-- ----------------------------
DROP TABLE IF EXISTS `ncconfig`;
CREATE TABLE `ncconfig` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '配置名称',
  `config_group` varchar(20) NOT NULL COMMENT '配置分组',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `value` text NOT NULL COMMENT '配置值',
  `info` varchar(255) NOT NULL COMMENT '描述',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uk_name` (`name`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `group` (`config_group`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ncconfig
-- ----------------------------
INSERT INTO `ncconfig` VALUES ('7', 'SMTP_HOST', 'smtp', '1448266020', 'smtp.ym.163.com', '', '0');
INSERT INTO `ncconfig` VALUES ('8', 'SMTP_PORT', 'smtp', '1448266020', '25', '', '0');
INSERT INTO `ncconfig` VALUES ('9', 'SMTP_USER', 'smtp', '1448266020', '', '', '0');
INSERT INTO `ncconfig` VALUES ('10', 'SMTP_PASS', 'smtp', '1448266020', '', '', '0');
INSERT INTO `ncconfig` VALUES ('11', 'FROM_EMAIL', 'smtp', '1448266020', '', '', '0');
INSERT INTO `ncconfig` VALUES ('12', 'FROM_NAME', 'smtp', '1448266020', '', '', '0');
INSERT INTO `ncconfig` VALUES ('13', 'SITE_TITLE', 'site', '1448285156', '商城', '', '0');
INSERT INTO `ncconfig` VALUES ('14', 'SITE_NAME', 'site', '1448285156', '商城', '', '0');
INSERT INTO `ncconfig` VALUES ('15', 'SITE_DESCRIPTION', 'site', '1448285156', '《商城》协议《商城》协议《商城》协议《商城》协议《商城》协议《商城》协议《商城》协议', '', '0');
INSERT INTO `ncconfig` VALUES ('16', 'SITE_KEYWORDS', 'site', '1448285156', '商城', '', '0');
INSERT INTO `ncconfig` VALUES ('17', 'SITE_URL', 'site', '1448285156', '', '', '0');
INSERT INTO `ncconfig` VALUES ('18', 'SHORT_URL', 'site', '1448285156', '', '', '0');
INSERT INTO `ncconfig` VALUES ('19', 'SITE_ICP', 'site', '1448285156', '', 'ICP备案号', '0');
INSERT INTO `ncconfig` VALUES ('20', 'EMAIL', 'site', '1448285156', '123456', '', '0');
INSERT INTO `ncconfig` VALUES ('21', 'TELEPHONE', 'site', '1448285156', '', '', '0');
INSERT INTO `ncconfig` VALUES ('22', 'WEB_SITE_CLOSE', 'site', '1448285156', '1', '', '0');
INSERT INTO `ncconfig` VALUES ('23', 'common_image_thumb_width', 'image', '1448293183', '255', '', '0');
INSERT INTO `ncconfig` VALUES ('24', 'common_image_thumb_height', 'image', '1448293183', '255', '', '0');
INSERT INTO `ncconfig` VALUES ('25', 'gallery_thumb_width', 'image', '1448293183', '127', '', '0');
INSERT INTO `ncconfig` VALUES ('26', 'gallery_thumb_height', 'image', '1448293183', '127', '', '0');
INSERT INTO `ncconfig` VALUES ('27', 'gallery_related_thumb_width', 'image', '1448293183', '150', '', '0');
INSERT INTO `ncconfig` VALUES ('28', 'gallery_related_thumb_height', 'image', '1448293183', '150', '', '0');
INSERT INTO `ncconfig` VALUES ('29', 'blog_list_thumb_width', 'image', '1448293183', '280', '', '0');
INSERT INTO `ncconfig` VALUES ('30', 'blog_list_thumb_height', 'image', '1448293183', '140', '', '0');
INSERT INTO `ncconfig` VALUES ('31', 'goods_thumb_width', 'image', '1448293183', '360', '', '0');
INSERT INTO `ncconfig` VALUES ('32', 'goods_thumb_height', 'image', '1448293183', '360', '', '0');
INSERT INTO `ncconfig` VALUES ('33', 'goods_gallery_thumb_width', 'image', '1448293183', '75', '', '0');
INSERT INTO `ncconfig` VALUES ('34', 'goods_gallery_thumb_height', 'image', '1448293183', '75', '', '0');
INSERT INTO `ncconfig` VALUES ('35', 'goods_cart_thumb_width', 'image', '1448293183', '80', '', '0');
INSERT INTO `ncconfig` VALUES ('36', 'goods_cart_thumb_height', 'image', '1448293183', '80', '', '0');
INSERT INTO `ncconfig` VALUES ('39', 'length_clasisz_id', 'other', '1448588459', '2', '', '0');
INSERT INTO `ncconfig` VALUES ('40', 'WEIGHT_ID', 'other', '1448588459', '1', '', '0');
INSERT INTO `ncconfig` VALUES ('41', 'FRONT_PAGE_NUM', 'other', '1448588459', '8', '', '0');
INSERT INTO `ncconfig` VALUES ('42', 'BACK_PAGE_NUM', 'other', '1448588459', '10', '', '0');
INSERT INTO `ncconfig` VALUES ('43', 'default_order_status_id', 'other', '1448588459', '3', '', '0');
INSERT INTO `ncconfig` VALUES ('44', 'paid_order_status_id', 'other', '1448588459', '1', '', '0');
INSERT INTO `ncconfig` VALUES ('45', 'complete_order_status_id', 'other', '1448588459', '4', '', '0');
INSERT INTO `ncconfig` VALUES ('47', 'URL_ID', 'other', '1448588459', '10', '', '0');
INSERT INTO `ncconfig` VALUES ('48', 'SITE_SLOGAN', 'site', '1448285156', '', '', '0');
INSERT INTO `ncconfig` VALUES ('51', 'cancel_order_status_id', 'other', '0', '5', '', '0');
INSERT INTO `ncconfig` VALUES ('52', 'BLOG_TITLE', 'other', '0', '博客', '', '0');
INSERT INTO `ncconfig` VALUES ('53', 'SITE_ICON', 'site', '0', 'product/57a654b160dd9.png', '网站图标', '0');
INSERT INTO `ncconfig` VALUES ('54', 'goods_related_thumb_width', 'image', '0', '280', '', '0');
INSERT INTO `ncconfig` VALUES ('55', 'goods_related_thumb_height', 'image', '0', '280', '', '0');
INSERT INTO `ncconfig` VALUES ('59', 'PWD_KEY', 'site', '1470304751', '.O&4893h99s-pXf~F9(H4xZ@8NqsP#A3r', '', '0');
INSERT INTO `ncconfig` VALUES ('60', 'ewm', 'site', '0', '/ewm.jpg', '', '0');
INSERT INTO `ncconfig` VALUES ('61', 'gg', 'site', '0', '', '公告', '0');
INSERT INTO `ncconfig` VALUES ('72', 'payid', 'site', '0', 'd4m7xoorsaomtjw3shpzu2tq', '商户ID', '0');
INSERT INTO `ncconfig` VALUES ('73', 'paymi', 'site', '0', 't2iiufvwcky4nvn5tsek4janfmmvmt4x', '商户密钥', '0');
INSERT INTO `ncconfig` VALUES ('74', 'KM_KEY', 'site', '0', '', '', '0');
INSERT INTO `ncconfig` VALUES ('110', 'phone', 'site', '0', '88888888888888', '电话', '0');
INSERT INTO `ncconfig` VALUES ('113', 'chandan_time', 'site', '0', '8', '', '0');
INSERT INTO `ncconfig` VALUES ('115', 'add_hy', 'site', '0', '30', '', '0');
INSERT INTO `ncconfig` VALUES ('116', 'default_tx', 'site', '0', 'shop/597314adc65d4.jpg', '', '0');
INSERT INTO `ncconfig` VALUES ('117', 'kefu', 'site', '0', 'product/59812e9c2b24b.png', '', '0');
INSERT INTO `ncconfig` VALUES ('118', 'shuoming', 'site', '0', '&lt;h3&gt;奖励说明：&lt;/h3&gt;\r\n\r\n&lt;p&gt;直推10人，团队业绩150万，奖励每天团队新增业绩0.5%.&lt;/p&gt;\r\n\r\n&lt;p&gt;直推15人，团队业绩350万，奖励每天团队新增业绩1%.&lt;/p&gt;\r\n\r\n&lt;p&gt;直推20人，团队业绩800万，奖励每天团队新增业绩1.5%&lt;/p&gt;\r\n', '', '0');
INSERT INTO `ncconfig` VALUES ('119', 'sxf', 'site', '0', '0.1', '手续费', '0');
INSERT INTO `ncconfig` VALUES ('124', 'btd', 'site', '0', '2', '每次被偷蛋数', '0');
INSERT INTO `ncconfig` VALUES ('125', 'ydd', 'site', '0', '2', '被狗咬掉蛋', '0');
INSERT INTO `ncconfig` VALUES ('126', 'sd_one', 'site', '0', '0.1', '收蛋一代10%', '0');
INSERT INTO `ncconfig` VALUES ('127', 'sd_two', 'site', '0', '0.03', '收蛋二代3%', '0');
INSERT INTO `ncconfig` VALUES ('128', 'sd_three', 'site', '0', '0.02', '收蛋三代2%', '0');
INSERT INTO `ncconfig` VALUES ('129', 'mai_one', 'site', '0', '0.1', '买动物一代10%', '0');
INSERT INTO `ncconfig` VALUES ('130', 'mai_two', 'site', '0', '0.03', '买动物二代3%', '0');
INSERT INTO `ncconfig` VALUES ('131', 'mai_three', 'site', '0', '0.02', '买动物三代2%', '0');
INSERT INTO `ncconfig` VALUES ('132', 'qq', 'site', '0', '123456', '', '0');
INSERT INTO `ncconfig` VALUES ('133', 'm_sms_id', 'site', '0', 'yakrNoOUFiat3qTJRu5F9We9rXAVgz', 'accessKeyId', '0');
INSERT INTO `ncconfig` VALUES ('134', 'm_sms_user', 'site', '0', 'LTAIeVSBAFgHdKuK', 'accessKeySecret', '0');
INSERT INTO `ncconfig` VALUES ('135', 'm_sms_pwd', 'site', '0', 'SMS_78790147', 'SMS_77505064', '0');
INSERT INTO `ncconfig` VALUES ('136', 'm_sms_name', 'site', '0', '全民养殖', 'name', '0');
INSERT INTO `ncconfig` VALUES ('137', 'tui_one', 'site', '0', '0.005', '直推20人,150万', '0');
INSERT INTO `ncconfig` VALUES ('138', 'tui_two', 'site', '0', '0.01', '直推15人,350万', '0');
INSERT INTO `ncconfig` VALUES ('139', 'tui_three', 'site', '0', '0.015', '直推20人,800万', '0');
INSERT INTO `ncconfig` VALUES ('140', 'tui_one_rmb', 'site', '0', '1500000', '直推20人,150万', '0');
INSERT INTO `ncconfig` VALUES ('141', 'tui_two_rmb', 'site', '0', '3500000', '直推15人,350万', '0');
INSERT INTO `ncconfig` VALUES ('142', 'tui_three_rmb', 'site', '0', '8000000', '直推20人,800万', '0');
INSERT INTO `ncconfig` VALUES ('144', 'MSG_password', 'site', '0', '83850', '短信接口密码', '0');
INSERT INTO `ncconfig` VALUES ('145', 'MSG_account', 'site', '0', '3a247c90b02e8dc1c7f08de60542c622', '短信接口', '0');
INSERT INTO `ncconfig` VALUES ('146', 'MSG', 'site', '0', '&quot;你的验证码是&quot;.$code.&quot;，如非本人操作，请忽略本短信&quot;', '短信模板', '0');

-- ----------------------------
-- Table structure for `nc_admin`
-- ----------------------------
DROP TABLE IF EXISTS `nc_admin`;
CREATE TABLE `nc_admin` (
  `a_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `a_uname` varchar(20) NOT NULL COMMENT '用户名',
  `a_true_name` varchar(20) NOT NULL COMMENT '真名',
  `a_telephone` varchar(40) NOT NULL,
  `a_email` varchar(64) NOT NULL,
  `a_passwd` varchar(255) NOT NULL,
  `a_login_count` mediumint(8) NOT NULL COMMENT '登录次数',
  `a_last_login_ip` varchar(40) NOT NULL COMMENT '最后登录ip',
  `a_last_ip_region` varchar(40) NOT NULL,
  `a_create_time` int(11) NOT NULL COMMENT '创建时间',
  `a_last_login_time` int(11) NOT NULL COMMENT '最后登录',
  `a_status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`a_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='后台管理员';

-- ----------------------------
-- Records of nc_admin
-- ----------------------------
INSERT INTO `nc_admin` VALUES ('1', 'admin', '', '', 'admin@admin.com', 'MDAwMDAwMDAwMH+Ket20dYll', '1086', '127.0.0.1', '', '1470304751', '1598410718', '1');

-- ----------------------------
-- Table structure for `nc_menu`
-- ----------------------------
DROP TABLE IF EXISTS `nc_menu`;
CREATE TABLE `nc_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `url` char(255) DEFAULT NULL COMMENT '链接地址',
  `icon` varchar(20) DEFAULT NULL,
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `pid` (`pid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='后台菜单';

-- ----------------------------
-- Records of nc_menu
-- ----------------------------
INSERT INTO `nc_menu` VALUES ('1', '0', '系统信息', '', 'icon-book', '7');
INSERT INTO `nc_menu` VALUES ('29', '28', '商品管理', 'Goods/index', '', '2');
INSERT INTO `nc_menu` VALUES ('36', '35', '订单管理', 'Order/index', '', '1');
INSERT INTO `nc_menu` VALUES ('38', '37', '基本信息', 'settings/general', '', '1');
INSERT INTO `nc_menu` VALUES ('40', '37', '邮件配置', 'settings/smtp_mail', '', '3');
INSERT INTO `nc_menu` VALUES ('43', '0', '用户', '', 'icon-user-md', '0');
INSERT INTO `nc_menu` VALUES ('46', '37', '配置管理', 'Config/index', '', '5');
INSERT INTO `nc_menu` VALUES ('47', '43', '后台用户', 'AdminUser/index', '', '3');
INSERT INTO `nc_menu` VALUES ('51', '1', '基本信息', 'settings/general', '', '1');
INSERT INTO `nc_menu` VALUES ('54', '53', '文章分类', 'BlogCategory/index', '', '0');
INSERT INTO `nc_menu` VALUES ('55', '53', '文章列表', 'Blog/index', '', '3');
INSERT INTO `nc_menu` VALUES ('56', '28', '商品分类', 'GoodsCategory/index', '', '1');
INSERT INTO `nc_menu` VALUES ('66', '65', '充值管理', 'member/chongzhi', null, '2');
INSERT INTO `nc_menu` VALUES ('68', '65', '资金充值', 'Member/rmb', null, '1');
INSERT INTO `nc_menu` VALUES ('69', '65', '资金记录', 'Member/zijing', null, '5');
INSERT INTO `nc_menu` VALUES ('75', '74', '投诉列表', '/Form/bdlist/bd_id/8', null, '0');
INSERT INTO `nc_menu` VALUES ('83', '82', '投诉列表', 'Form/bdlist/bd_id/8', null, '0');
INSERT INTO `nc_menu` VALUES ('85', '84', '分润记录', 'Record/fenrun', null, '1');
INSERT INTO `nc_menu` VALUES ('88', '84', '赠送记录', 'Record/transaction', null, '4');
INSERT INTO `nc_menu` VALUES ('140', '107', '总后台店铺', 'Goods/dianpu', null, '1');
INSERT INTO `nc_menu` VALUES ('93', '84', '交易记录', 'Record/sell', null, '3');
INSERT INTO `nc_menu` VALUES ('94', '84', '团队分红', 'Record/tuandui', null, '0');
INSERT INTO `nc_menu` VALUES ('97', '96', '商品管理', 'Goods/index', null, '0');
INSERT INTO `nc_menu` VALUES ('99', '96', '商城订单', 'Goods/shoporder', null, '0');
INSERT INTO `nc_menu` VALUES ('102', '101', '道具管理', 'Gpgoods/index', '', '0');
INSERT INTO `nc_menu` VALUES ('106', '0', '订单', '', 'icon-book', '3');
INSERT INTO `nc_menu` VALUES ('107', '0', '商城', '', 'icon-gift', '2');
INSERT INTO `nc_menu` VALUES ('108', '106', '订单管理', 'Order/index', null, '0');
INSERT INTO `nc_menu` VALUES ('109', '107', '商品管理', 'Goods/index', null, '5');
INSERT INTO `nc_menu` VALUES ('115', '110', '其他配置', 'Gameconfigs/Othersconfig', null, '16');
INSERT INTO `nc_menu` VALUES ('116', '0', '提现管理', '', 'icon-book', '5');
INSERT INTO `nc_menu` VALUES ('117', '116', '提现订单', 'Tixian/tixian', null, '0');
INSERT INTO `nc_menu` VALUES ('118', '116', '转账订单', 'Tixian/Transfers', null, '0');
INSERT INTO `nc_menu` VALUES ('119', '1', '公告', 'settings/notice', null, '3');
INSERT INTO `nc_menu` VALUES ('121', '107', '分类管理', 'Goods/cate', null, '3');
INSERT INTO `nc_menu` VALUES ('123', '122', '普通会员三级', 'Gameconfigs/sanjione', null, '20');
INSERT INTO `nc_menu` VALUES ('124', '122', '中级会员三级', 'Gameconfigs/sanjitwo', null, '21');
INSERT INTO `nc_menu` VALUES ('125', '122', '高级会员三级', 'Gameconfigs/sanjithree', null, '22');
INSERT INTO `nc_menu` VALUES ('126', '122', '三级达成条件', 'Gameconfigs/sanjiconditions', null, '18');
INSERT INTO `nc_menu` VALUES ('131', '90', '充值余额记录', 'Member/chongzhibiao', 'icon-dashboard', '55');
INSERT INTO `nc_menu` VALUES ('132', '90', '出售余额记录', 'Member/chushoubiao', 'icon-dashboard', '44');
INSERT INTO `nc_menu` VALUES ('133', '1', '文章列表', 'settings/wenzhang', 'icon-dashboard', '33');
INSERT INTO `nc_menu` VALUES ('134', '1', '文章类型', 'settings/wentype', 'icon-dashboard', '32');
INSERT INTO `nc_menu` VALUES ('135', '0', '商家入驻', null, 'icon-gift', '3');
INSERT INTO `nc_menu` VALUES ('136', '135', '个人店铺', 'Goods/ggshop', 'icon-dashboard', '0');
INSERT INTO `nc_menu` VALUES ('137', '135', '认证列表', 'Goods/verify', 'icon-dashboard', '2');
INSERT INTO `nc_menu` VALUES ('139', '138', '升级列表', 'Goods/level', 'icon-dashboard', '10');

-- ----------------------------
-- Table structure for `ysk_activate_num`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_activate_num`;
CREATE TABLE `ysk_activate_num` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '激活码',
  `activate_num` varchar(20) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `mobile` varchar(20) DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-未使用 1已只用',
  `create_time` int(11) NOT NULL,
  `user_time` int(11) NOT NULL DEFAULT '0' COMMENT '使用时间',
  `user_ip` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `activate_num` (`activate_num`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_activate_num
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_address`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_address`;
CREATE TABLE `ysk_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` text NOT NULL,
  `name` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL DEFAULT '地址',
  `city_id` varchar(200) NOT NULL DEFAULT '市',
  `country_id` varchar(200) NOT NULL DEFAULT '县乡',
  `province_id` varchar(200) NOT NULL DEFAULT '省',
  `zt_` int(11) NOT NULL,
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_address
-- ----------------------------
INSERT INTO `ysk_address` VALUES ('58', '778904', '123', '18344324057', '123', '广州市', '越秀区', '广东', '0');
INSERT INTO `ysk_address` VALUES ('59', '779747', '123', '18344324057', '123', '广州市', '东山区', '广东', '0');
INSERT INTO `ysk_address` VALUES ('60', '779757', '654', '18344324057', '465', '广州市', '东山区', '广东', '0');

-- ----------------------------
-- Table structure for `ysk_admin`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_admin`;
CREATE TABLE `ysk_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'UID',
  `auth_id` int(11) NOT NULL DEFAULT '1' COMMENT '角色ID',
  `nickname` varchar(63) DEFAULT NULL COMMENT '昵称',
  `username` varchar(31) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(63) NOT NULL DEFAULT '' COMMENT '密码',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `reg_ip` bigint(20) NOT NULL DEFAULT '0' COMMENT '注册IP',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `reg_type` varchar(20) DEFAULT NULL COMMENT '注册人',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户账号表';

-- ----------------------------
-- Records of ysk_admin
-- ----------------------------
INSERT INTO `ysk_admin` VALUES ('115', '1', '测试', 'admin', '611fd61468729d297328a05cb48f9a86', '13800138000', '2130706433', '1558356641', '1558356641', '1', null);

-- ----------------------------
-- Table structure for `ysk_admin_kucun`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_admin_kucun`;
CREATE TABLE `ysk_admin_kucun` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '平台仓库',
  `total_num` decimal(15,2) NOT NULL COMMENT '累计添加总数',
  `less_num` decimal(15,2) NOT NULL COMMENT '库存余量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_admin_kucun
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_admin_zhuangz`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_admin_zhuangz`;
CREATE TABLE `ysk_admin_zhuangz` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员给用户拨发果子明细表id',
  `manage_id` int(11) NOT NULL COMMENT '管理员id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `guozi_num` decimal(15,0) NOT NULL COMMENT '转给用户的果子数量',
  `create_time` int(11) NOT NULL COMMENT '转果子时间',
  `ip` varchar(20) NOT NULL COMMENT '转果子时使用的电脑ip',
  `before_cangku_num` decimal(11,0) NOT NULL DEFAULT '0',
  `after_cangku_num` decimal(11,0) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1-加 2-减',
  `content` varchar(255) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `account` varchar(20) NOT NULL,
  `manage_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_admin_zhuangz
-- ----------------------------
INSERT INTO `ysk_admin_zhuangz` VALUES ('51', '1', '1718', '2', '1523534817', '121.33.33.195', '0', '2', '1', '转给用户', '肥肥鱼', '13316098335', 'admin');

-- ----------------------------
-- Table structure for `ysk_baner`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_baner`;
CREATE TABLE `ysk_baner` (
  `baner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `baner_px` int(11) DEFAULT '0' COMMENT '排序序号',
  `baner_url` varchar(250) NOT NULL COMMENT '图片路径',
  `baner_name` varchar(250) DEFAULT NULL COMMENT '点击链接',
  `baner_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`baner_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_baner
-- ----------------------------
INSERT INTO `ysk_baner` VALUES ('5', '1', '2017-08-25/599ffda5edb9c.jpg', '###', '0');
INSERT INTO `ysk_baner` VALUES ('8', '19', '2017-08-25/599ffd8c46b57.jpg', '###', '0');
INSERT INTO `ysk_baner` VALUES ('9', '3', '2017-08-25/599ffd9920d0b.jpg', '###', '0');
INSERT INTO `ysk_baner` VALUES ('10', '0', '2017-08-25/599ffdc415550.jpg', '###', '1');
INSERT INTO `ysk_baner` VALUES ('11', '0', '2017-08-25/599ffdd60ab76.jpg', '###', '1');

-- ----------------------------
-- Table structure for `ysk_bank_name`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_bank_name`;
CREATE TABLE `ysk_bank_name` (
  `q_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pid` int(11) NOT NULL COMMENT '外键',
  `banq_genre` varchar(20) NOT NULL COMMENT '银行类型',
  `banq_img` varchar(150) NOT NULL COMMENT '银行卡类型图片',
  PRIMARY KEY (`q_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='银行卡类型表';

-- ----------------------------
-- Records of ysk_bank_name
-- ----------------------------
INSERT INTO `ysk_bank_name` VALUES ('1', '1', '广州市农村信用合作社', 'ncxys.png');
INSERT INTO `ysk_bank_name` VALUES ('2', '2', '中国农业银行', 'zgnyyh.png');
INSERT INTO `ysk_bank_name` VALUES ('3', '3', '中国工商银行', 'zggsyh.png');
INSERT INTO `ysk_bank_name` VALUES ('4', '4', '中国招商银行', 'zsyh.png');
INSERT INTO `ysk_bank_name` VALUES ('5', '5', '中国邮政储蓄银行', 'zgyz.png');
INSERT INTO `ysk_bank_name` VALUES ('6', '6', '中国建设银行', 'zgjsyh.png');
INSERT INTO `ysk_bank_name` VALUES ('7', '7', '中国银行', 'zgyh.png');
INSERT INTO `ysk_bank_name` VALUES ('8', '8', '交通银行', 'jtyh.png');
INSERT INTO `ysk_bank_name` VALUES ('9', '9', '广州市商业银行', 'fjxyyh.png');
INSERT INTO `ysk_bank_name` VALUES ('10', '10', '中国民生银行', 'zgmsyh.png');
INSERT INTO `ysk_bank_name` VALUES ('11', '11', '深圳发展银行', 'szfzyh.png');
INSERT INTO `ysk_bank_name` VALUES ('12', '12', '上海浦东发展银行', 'shpdfzyh.png');
INSERT INTO `ysk_bank_name` VALUES ('13', '13', '华夏银行', 'hxyh.png');
INSERT INTO `ysk_bank_name` VALUES ('14', '14', '兴业银行', 'fjxyyh.png');
INSERT INTO `ysk_bank_name` VALUES ('15', '15', '广东发展银行', 'fjxyyh.png');
INSERT INTO `ysk_bank_name` VALUES ('16', '16', '中国光大银行', 'gdyh.jpg');
INSERT INTO `ysk_bank_name` VALUES ('17', '17', '中信银行', 'set03.png');
INSERT INTO `ysk_bank_name` VALUES ('18', '18', '平安银行', 'set03.png');
INSERT INTO `ysk_bank_name` VALUES ('19', '19', '交通银行', 'set03.png');
INSERT INTO `ysk_bank_name` VALUES ('20', '20', '光大银行', 'set03.png');
INSERT INTO `ysk_bank_name` VALUES ('21', '21', '广发银行', 'set03.png');
INSERT INTO `ysk_bank_name` VALUES ('22', '22', '浦发银行', 'set03.png');

-- ----------------------------
-- Table structure for `ysk_banner`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_banner`;
CREATE TABLE `ysk_banner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id主键',
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '名称',
  `href` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片链接地址',
  `sort` int(8) DEFAULT NULL COMMENT '排序',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `picture` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_banner
-- ----------------------------
INSERT INTO `ysk_banner` VALUES ('8', '4', null, '2', '1', '', '1599099566');

-- ----------------------------
-- Table structure for `ysk_bofamx`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_bofamx`;
CREATE TABLE `ysk_bofamx` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '拨发果子到平台表的id',
  `manage_id` int(11) NOT NULL COMMENT '管理员id',
  `bofa_num` decimal(15,2) NOT NULL COMMENT '拨发的果子数量',
  `create_time` int(11) NOT NULL COMMENT '拨发时间',
  `note` tinytext NOT NULL COMMENT '备注',
  `manage_name` varchar(20) NOT NULL COMMENT '管理员账号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_bofamx
-- ----------------------------
INSERT INTO `ysk_bofamx` VALUES ('1', '1', '50000.00', '1506487943', '', 'admin');

-- ----------------------------
-- Table structure for `ysk_childcoop_configs`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_childcoop_configs`;
CREATE TABLE `ysk_childcoop_configs` (
  `id` int(11) NOT NULL,
  `jiwo_ord` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '普通鸡窝开窝消耗积分',
  `jiwo_senior` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '高级鸡窝开窝消耗积分',
  `jiwo_ord_highst` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '普通鸡窝最高收益值',
  `jiwo_senior_highst` decimal(11,2) NOT NULL COMMENT '高级鸡窝最大收益',
  `guoyuan_ord` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '普通地开启消耗',
  `guoyuan_senior` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '果园中级地开启消耗果园积分',
  `guoyuan_henior` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '果园地高级开启消耗积分',
  `guoyuan_higest` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '果园普通地达到最高收益值',
  `yuchang_ord` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '普通渔场开池消耗积分',
  `yucahng_senior` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '高级渔场开池消耗积分',
  `yuchang_higest` int(1) NOT NULL DEFAULT '4' COMMENT '渔场最高收益（倍数）',
  `fengce_add` float(5,4) NOT NULL DEFAULT '0.0000' COMMENT '风车增益率',
  `guanjia_add` float(5,4) NOT NULL DEFAULT '0.0000' COMMENT '管家增益率',
  `dengji_add` float(8,4) NOT NULL DEFAULT '0.0001' COMMENT '等级增益率',
  `zhuanjia_add` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '专家增益率',
  `chai_fen_min` float(8,3) NOT NULL DEFAULT '0.005' COMMENT '最小拆分率',
  `chai_fen_max` float(8,3) NOT NULL DEFAULT '0.250' COMMENT '最大拆分率',
  `chaifenmin_yu` float(8,3) NOT NULL DEFAULT '0.000' COMMENT '渔场最低拆分率',
  `chaifenmax_yu` float(8,3) NOT NULL DEFAULT '0.000' COMMENT '渔场最高拆分率',
  `jifen_cost` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '积分服务费',
  `jifen_transmutation` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '积分转化为消费的比例',
  `fengche_enddays` int(10) NOT NULL DEFAULT '0' COMMENT '风车有效期',
  `jiaoyi_cost` float(5,3) NOT NULL DEFAULT '0.000' COMMENT '交易手续费',
  `housekeeper` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '达到对应收益送专家',
  `expert` int(10) NOT NULL COMMENT '达到推荐人数送管家',
  `zhituijiang` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '第一次建窝给上级奖励',
  `yuchang_earns_max` tinyint(1) NOT NULL DEFAULT '3' COMMENT '渔场可拿最高收益',
  `add_tixian` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1->增养,2->提现',
  `nianhua_shouyi` float(8,2) NOT NULL DEFAULT '3.00' COMMENT '果园年化收益',
  `guoyuan_jiaoshui` float(8,4) NOT NULL DEFAULT '0.0050' COMMENT '果园浇水释放率',
  `gongtongdi_sifang` float(8,4) NOT NULL DEFAULT '0.0000' COMMENT '共同果园浇水释放率',
  `yuchang_guanjia_add` float(8,4) NOT NULL DEFAULT '0.0000' COMMENT '管家增益率',
  `yuchang_ord_max` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '普通渔场最高投资值',
  `yuchang_higst_max` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '高级渔场最高投资值',
  `tixian_beishu` int(10) NOT NULL DEFAULT '20' COMMENT '提现倍数',
  `tixian_start` int(10) NOT NULL DEFAULT '0' COMMENT '起提数量',
  `tixian_shouxu_yj` float(6,2) NOT NULL DEFAULT '0.00' COMMENT '佣金/代理佣金/农联积分提现扣除手续费',
  `tixian_xiaofei_yj` float(6,2) NOT NULL DEFAULT '0.00' COMMENT '佣金/代理佣金/农联积分提现拆分消费积分',
  `ji_tixian_shouxu` float(6,2) NOT NULL DEFAULT '0.00' COMMENT '鸡场提现手续费',
  `guo_tixian_shouxu` float(6,2) NOT NULL DEFAULT '0.00' COMMENT '果园提现手续费',
  `yu_tixian_shouxu` float(6,2) NOT NULL DEFAULT '0.00' COMMENT '渔场提现手续费',
  `ji_tixian_xiaofe` float(6,2) NOT NULL DEFAULT '0.00' COMMENT '鸡场提现消费',
  `guo_tixian_xiaofe` float(6,2) NOT NULL DEFAULT '0.00' COMMENT '果园提现消费',
  `yu_tixian_xiaofe` float(6,2) NOT NULL DEFAULT '0.00' COMMENT '渔场提现消费',
  `putong_member` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '普通会员达成条件',
  `senior_member` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '中级会员达成条件',
  `higst_member` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '高级会员达成条件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_childcoop_configs
-- ----------------------------
INSERT INTO `ysk_childcoop_configs` VALUES ('1', '360.00', '3600.00', '1440.00', '14440.00', '400.00', '800.00', '1200.00', '1600.00', '399.000', '800.000', '6', '0.0500', '0.0001', '0.0000', '0.00', '0.000', '0.010', '0.001', '0.150', '0.10', '0.25', '60', '0.100', '0.00', '80', '40.00', '3', '1', '3.00', '0.0050', '0.0002', '0.0100', '48000.000', '96000.000', '154', '154', '0.00', '0.00', '0.10', '0.10', '0.10', '0.25', '0.25', '0.00', '0.00', '50000.00', '100000.00');

-- ----------------------------
-- Table structure for `ysk_chongzhi`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_chongzhi`;
CREATE TABLE `ysk_chongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '昵称',
  `phone` varchar(22) NOT NULL COMMENT '手机号',
  `username` varchar(255) NOT NULL COMMENT '帐号',
  `addtime` varchar(222) NOT NULL COMMENT '提交时间',
  `img` varchar(255) DEFAULT NULL COMMENT '二维码',
  `money` int(233) NOT NULL COMMENT '充值金钱',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态：0未审核，1通过，2拒绝',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_chongzhi
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_chushou`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_chushou`;
CREATE TABLE `ysk_chushou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `addtime` varchar(222) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `some` varchar(255) NOT NULL COMMENT '价值',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '状态：0未审核，1通过，2拒绝',
  `jiawei` varchar(255) NOT NULL COMMENT '出售价位',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_chushou
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_coindets`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_coindets`;
CREATE TABLE `ysk_coindets` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '币价格表',
  `cid` int(10) NOT NULL COMMENT '币价格表',
  `coin_name` char(40) NOT NULL COMMENT '币名称',
  `coin_price` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '币价格',
  `coin_addtime` char(40) NOT NULL COMMENT '币添加时间',
  `max` float(10,4) DEFAULT NULL,
  `min` float(10,4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=20925 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_coindets
-- ----------------------------
INSERT INTO `ysk_coindets` VALUES ('1', '1', 'sc', '1.0000', '1558144965', '2.0000', '1.0000');
INSERT INTO `ysk_coindets` VALUES ('2', '1', 'renminb', '1.3000', '1558144965', null, '0.0000');
INSERT INTO `ysk_coindets` VALUES ('3', '1', 'usernums', '1800.0000', '1558144965', null, '1.0000');
INSERT INTO `ysk_coindets` VALUES ('4', '1', 'usdt', '7.0000', '1558144965', null, null);
INSERT INTO `ysk_coindets` VALUES ('5', '1', 'usdtsx', '0.0040', '1558144965', null, null);

-- ----------------------------
-- Table structure for `ysk_coindets_copy`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_coindets_copy`;
CREATE TABLE `ysk_coindets_copy` (
  `cid` int(10) NOT NULL AUTO_INCREMENT COMMENT '币价格表',
  `coin_name` char(40) NOT NULL COMMENT '币名称',
  `coin_price` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '币价格',
  `coin_addtime` char(40) NOT NULL COMMENT '币添加时间',
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_coindets_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_collect`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_collect`;
CREATE TABLE `ysk_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收藏ID',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `type` int(1) DEFAULT NULL COMMENT '收藏类型',
  `proid` int(11) NOT NULL COMMENT 'ID',
  `time` int(11) NOT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_collect
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_complaint`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_complaint`;
CREATE TABLE `ysk_complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '投诉人id',
  `content` text COMMENT '投诉内容',
  `imgs` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `status` tinyint(1) DEFAULT '0' COMMENT '0 未查看 1 已查看',
  `create_time` int(10) DEFAULT NULL COMMENT '投诉时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_complaint
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_config`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_config`;
CREATE TABLE `ysk_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '配置ID',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '配置标题',
  `name` varchar(32) DEFAULT NULL COMMENT '配置名称',
  `value` text NOT NULL COMMENT '配置值',
  `group` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '配置分组',
  `type` varchar(16) NOT NULL DEFAULT '' COMMENT '配置类型',
  `options` varchar(255) NOT NULL DEFAULT '' COMMENT '配置额外值',
  `tip` varchar(100) NOT NULL DEFAULT '' COMMENT '配置说明',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统配置表';

-- ----------------------------
-- Records of ysk_config
-- ----------------------------
INSERT INTO `ysk_config` VALUES ('1', '站点开关', 'TOGGLE_WEB_SITE', '1', '3', '0', '0:关闭\r\n1:开启', '', '1378898976', '1406992386', '1', '1');
INSERT INTO `ysk_config` VALUES ('2', '网站标题', 'WEB_SITE_TITLE', '', '1', '0', '', '网站标题前台显示标题', '1378898976', '1379235274', '2', '1');
INSERT INTO `ysk_config` VALUES ('3', '网站LOGO', 'WEB_SITE_LOGO', '', '1', '0', '', '网站LOGO', '1407003397', '1407004692', '3', '1');
INSERT INTO `ysk_config` VALUES ('4', '网站描述', 'WEB_SITE_DESCRIPTION', '', '1', '0', '', '网站搜索引擎描述', '1378898976', '1379235841', '4', '1');
INSERT INTO `ysk_config` VALUES ('5', '网站关键字', 'WEB_SITE_KEYWORD', '', '1', '0', '', '网站搜索引擎关键字', '1378898976', '1381390100', '5', '1');
INSERT INTO `ysk_config` VALUES ('6', '版权信息', 'WEB_SITE_COPYRIGHT', '', '1', '0', '', '设置在网站底部显示的版权信息，如“版权所有 © 2014-2015 科斯克网络科技”', '1406991855', '1406992583', '6', '1');
INSERT INTO `ysk_config` VALUES ('7', '网站备案号', 'WEB_SITE_ICP', '', '1', '0', '', '设置在网站底部显示的备案号，如“苏ICP备1502009号\"', '1378900335', '1415983236', '9', '1');
INSERT INTO `ysk_config` VALUES ('14', '积分基础释放率', 'sell_fee', '0.2', '4', '', '', '', '0', '0', '23', '1');
INSERT INTO `ysk_config` VALUES ('15', '1代积分加速放率', 'direct_fee', '5', '4', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('16', '2-15代积分加速放率', 'shop_fee', '1', '4', '', '', '', '0', '0', '33', '1');
INSERT INTO `ysk_config` VALUES ('29', '2代Vip增加积分率', 'vadd_lv', '8', '4', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('30', '2-15代Vip增加积分率', 'morevadd_lv', '5', '4', '0', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('31', '总要扣比例', 'des_lv', '0.4', '2', '5', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('27', '基础拆分倍数', 'base_lv', '2.5', '2', '5', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('85', '联系客服qq号', 'service_qq', '', '0', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('84', '联系客服微信', 'service_wx', '', '0', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('26', '微信二维码', 'WEB_SITE_WX', '', '1', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('32', '注册开关', 'close_reg', '1', '3', '', '0:关闭1:开启', '关闭注册功能说明', '0', '0', '12', '1');
INSERT INTO `ysk_config` VALUES ('33', '交易开关', 'close_trading', '1', '3', '', '0:关闭1:开启', '交易暂时关闭，16:00后开启', '0', '0', '13', '0');
INSERT INTO `ysk_config` VALUES ('41', '实时价格每分钟增长', 'growem', '10', '2', '', '', '', '0', '0', '12', '1');
INSERT INTO `ysk_config` VALUES ('42', '商城开关', 'TOGGLE_MALL_SITE', '1', '3', '0', '0:关闭\r\n1:开启', '商城暂未开放', '1378898976', '1406992386', '1', '1');
INSERT INTO `ysk_config` VALUES ('43', '注册送积分数', 'jifen', '', '1', '0', '', '', '1407003397', '1407004692', '3', '1');
INSERT INTO `ysk_config` VALUES ('44', '奖励开关', 'regjifen', '', '1', '0', '', '', '1407003397', '1407004692', '3', '1');
INSERT INTO `ysk_config` VALUES ('45', '直推奖条件', 'zhitui1', '0', '6', '', '', '500000', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('46', '直推奖条件', 'zhitui2', '0', '6', '', '', '500000', '0', '0', '33', '1');
INSERT INTO `ysk_config` VALUES ('47', '直推奖条件', 'zhitui3', '0', '6', '', '', '500000', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('48', '直推奖条件', 'zhitui4', '0', '6', '', '', '500000', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('49', '管理奖条件', 'guanli1', '0.3', '7', '', '', '1', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('50', '管理奖条件', 'guanli2', '0.4', '7', '', '', '5', '0', '0', '33', '1');
INSERT INTO `ysk_config` VALUES ('51', '管理奖条件', 'guanli3', '0.5', '7', '', '', '15', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('52', '余额转动奖条件', 'zhuand1', '0', '8', '', '', '500000', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('53', '余额转动奖条件', 'zhuand2', '0', '8', '', '', '500000', '0', '0', '33', '1');
INSERT INTO `ysk_config` VALUES ('54', '余额转动奖条件', 'zhuand3', '0', '8', '', '', '500000', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('55', '余额转动奖条件', 'zhuand4', '0', '8', '', '', '500000', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('63', '推荐一个人赠送积分数', 'jifens', '0.5', '1', '0', '', '', '1407003397', '1407004692', '3', '1');
INSERT INTO `ysk_config` VALUES ('64', '赠送积分最大推荐人数', 'rens', '', '1', '0', '', '', '1407003397', '1407004692', '3', '1');
INSERT INTO `ysk_config` VALUES ('69', '管理奖条件', 'guanli4', '0.6', '7', '', '', '30', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('72', '增加人数', 'add_user', '', '1', '', '', '', '0', '1558685784', '0', '1');
INSERT INTO `ysk_config` VALUES ('71', '前台显示总会员数', 'false_user', '15430.8', '1', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('70', 'VIP加速效率', 'vip3', '3', '10', '', '4', '1', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('73', '余额低于多少无法投资', 'min_balance', '1', '1', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('74', '冻结时间', 'dj_time', '24', '1', '0', '', '', '1407003397', '1407004692', '4', '1');
INSERT INTO `ysk_config` VALUES ('75', '打款时间', 'dk_time', '', '1', '0', '', '', '1407003397', '1407004692', '0', '1');
INSERT INTO `ysk_config` VALUES ('76', '冻结利息', 'interest', '', '1', '0', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('77', '冻结利息最大天数', 'interest_maxtime', '', '1', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('78', '最大多少天排单', 'max_paidan', '', '1', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('79', '冻结开关', 'djkg', '', '1', '0', '', '', '1407003397', '1407004692', '3', '1');
INSERT INTO `ysk_config` VALUES ('80', '冻结卖出开关', 'djmc', '', '1', '0', '', '', '1407003397', '1407004692', '3', '1');
INSERT INTO `ysk_config` VALUES ('81', '每天预购额度', 'max_purchase', '', '0', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('82', '转让开始时间', 'sellcentr_start', '', '0', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('83', '转让结束时间', 'sellcentr_end', '', '0', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('86', '单笔升级订单金额', 'money', '', '0', '', '', '', '0', '0', '0', '1');
INSERT INTO `ysk_config` VALUES ('87', '转盘规则', 'turntable_rules', '啊啊啊啊啊啊水电费sdf', '0', '', '', '', '0', '0', '0', '0');
INSERT INTO `ysk_config` VALUES ('88', '优惠券使用金额', 'coupons_need', '1000', '0', '', '', '', '0', '0', '0', '0');
INSERT INTO `ysk_config` VALUES ('89', '优惠券减少金额', 'coupons_jian', '660', '0', '', '', '', '0', '0', '0', '0');
INSERT INTO `ysk_config` VALUES ('90', '优惠券到期时间', 'coupons_time', '365', '0', '', '', '', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ysk_coupons`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_coupons`;
CREATE TABLE `ysk_coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT '1' COMMENT '优惠券类型 1->满减2->全场抵扣3->指定类型抵扣',
  `need` int(11) DEFAULT '10000' COMMENT '需要金额',
  `jian` int(11) DEFAULT '660' COMMENT '减少的金额',
  `uid` int(11) DEFAULT NULL COMMENT '拥有者id',
  `status` int(11) DEFAULT '1' COMMENT '状态1->未使用2->已使用3->已过期',
  `have_time` varchar(255) DEFAULT NULL COMMENT '获取日期',
  `use_time` varchar(255) DEFAULT NULL COMMENT '使用时间',
  `pid` int(11) DEFAULT NULL COMMENT '所属优惠券id',
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ysk_coupons
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_coupons_info`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_coupons_info`;
CREATE TABLE `ysk_coupons_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL COMMENT '优惠券类型',
  `need` int(11) DEFAULT NULL COMMENT '使用需要金额',
  `jian` int(11) DEFAULT NULL COMMENT '抵扣金额',
  `day` int(11) DEFAULT NULL COMMENT '过期时间',
  `status` int(11) DEFAULT NULL COMMENT '状态1->满减2->全场抵扣3->指定类型抵扣',
  `name` varchar(255) DEFAULT NULL COMMENT '优惠券名称',
  `product_cate` varchar(255) DEFAULT NULL COMMENT '允许使用的商品分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ysk_coupons_info
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_crowds`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_crowds`;
CREATE TABLE `ysk_crowds` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '出售数量',
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0-出售成功 1-买家确认  2-买家确认 3-取消交易',
  `dprice` decimal(10,4) DEFAULT NULL,
  `jindu` decimal(10,2) DEFAULT NULL,
  `open_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=936 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_crowds
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_crowds_detail`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_crowds_detail`;
CREATE TABLE `ysk_crowds_detail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `crowds_id` int(11) NOT NULL,
  `num` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT '出售数量',
  `dprice` decimal(10,4) DEFAULT NULL,
  `tprice` decimal(10,4) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=943 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_crowds_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_daojudets`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_daojudets`;
CREATE TABLE `ysk_daojudets` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '道具表',
  `uid` int(11) NOT NULL COMMENT '会员id',
  `time` date NOT NULL COMMENT '开始时间',
  `end_time` date NOT NULL COMMENT '到期时间',
  `state` tinyint(1) NOT NULL COMMENT '1-使用中 2已过期 3未使用',
  `daoju_type` tinyint(1) NOT NULL COMMENT '1一键挑粪',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE COMMENT '唯一主键id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_daojudets
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_daojugoods`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_daojugoods`;
CREATE TABLE `ysk_daojugoods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `image` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `content` text NOT NULL COMMENT '商品详情',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `date_added` datetime NOT NULL COMMENT '加入时间',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1鸡窝 2果园 3渔场',
  `daoju_limit` int(11) NOT NULL DEFAULT '30' COMMENT '有效期',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品信息表';

-- ----------------------------
-- Records of ysk_daojugoods
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_date_sell_limit`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_date_sell_limit`;
CREATE TABLE `ysk_date_sell_limit` (
  `uid` int(11) NOT NULL COMMENT '每天出售限制',
  `num` int(11) NOT NULL DEFAULT '0',
  `datestr` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf16 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_date_sell_limit
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_deal`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_deal`;
CREATE TABLE `ysk_deal` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '出售数量',
  `sell_id` int(11) NOT NULL DEFAULT '0' COMMENT '出售人ID',
  `fee_num` decimal(11,2) DEFAULT NULL COMMENT '手续费',
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0-出售成功 1-买家确认  2-买家确认 3-取消交易',
  `cid` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1,出售 2,购买',
  `tprice` decimal(10,2) DEFAULT NULL,
  `dprice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sell_id` (`sell_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_deal
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_deals`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_deals`;
CREATE TABLE `ysk_deals` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `num` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '出售数量',
  `sell_id` int(11) NOT NULL DEFAULT '0' COMMENT '出售人ID',
  `buy_id` int(11) NOT NULL DEFAULT '0' COMMENT '购买者ID',
  `fee_num` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  `create_time` int(11) DEFAULT NULL,
  `buy_uname` varchar(255) DEFAULT NULL,
  `cid` tinyint(1) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '1,出售 2,购买',
  `tprice` decimal(10,2) DEFAULT NULL,
  `dprice` decimal(10,2) DEFAULT NULL,
  `d_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sell_id` (`sell_id`) USING BTREE,
  KEY `buy_id` (`buy_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_deals
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_earnsrecords`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_earnsrecords`;
CREATE TABLE `ysk_earnsrecords` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '喂养收入明细表',
  `uid` int(11) NOT NULL COMMENT '会员id',
  `land_id` int(11) NOT NULL COMMENT '土地id',
  `add_nums` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '收入数量',
  `add_times` date DEFAULT NULL COMMENT '收钱时间',
  `farms_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1->鸡窝,2->果园，3->渔场',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE COMMENT '唯一id',
  KEY `landid` (`land_id`) USING BTREE COMMENT '土地id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_earnsrecords
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_farmgoods`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_farmgoods`;
CREATE TABLE `ysk_farmgoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '土地详情表',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `farm_landstype` varchar(20) NOT NULL COMMENT '1->普通地,2->高级地',
  `open_time` date DEFAULT NULL COMMENT '建窝时间',
  `lands_posi` int(11) NOT NULL COMMENT '鸡窝位置',
  `farms_type` tinyint(1) NOT NULL COMMENT '1->养鸡场,2->果园,3->渔场',
  `jiwoearns_all` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '对应鸡窝总收益',
  `chicken_type` tinyint(1) DEFAULT '1' COMMENT '1->小鸡,2->大鸡',
  `qingsao_time` date NOT NULL COMMENT '最后一次清扫时间',
  `chicken_bjmoney` decimal(11,2) NOT NULL DEFAULT '360.00' COMMENT '鸡窝本金',
  `chicken_profit` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '鸡窝收益',
  `nianhua_shouyi` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '果园年化收益',
  `yuchang_higst` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '渔场最高值临界点',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE COMMENT 'id主键',
  KEY `seach` (`uid`,`farm_landstype`,`lands_posi`,`farms_type`) USING BTREE COMMENT '搜索优化'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_farmgoods
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_feedtimes`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_feedtimes`;
CREATE TABLE `ysk_feedtimes` (
  `id` int(11) NOT NULL COMMENT '渔场可喂养时间点',
  `feed_time` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_feedtimes
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_fengche`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_fengche`;
CREATE TABLE `ysk_fengche` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `f_uid` int(11) NOT NULL COMMENT '用户UID',
  `f_time` date NOT NULL COMMENT '获得用时间',
  `f_end_time` date NOT NULL COMMENT '到期时间',
  `f_state` tinyint(1) NOT NULL COMMENT '状态 1使用中   2未使用  3已过期 ',
  `f_type` tinyint(1) NOT NULL COMMENT '1风车',
  PRIMARY KEY (`f_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_fengche
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_fenxiaojiang`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_fenxiaojiang`;
CREATE TABLE `ysk_fenxiaojiang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分销记录表',
  `buy_id` int(11) NOT NULL COMMENT '购买者',
  `get_id` int(11) NOT NULL COMMENT '获得佣金用户',
  `goods_id` int(11) NOT NULL COMMENT '所购买时商品id',
  `buy_time` datetime DEFAULT NULL COMMENT '购买时间',
  `buy_grade` tinyint(1) NOT NULL COMMENT '第几级用户',
  `money_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:三级分销 2:代理佣金',
  `money_nums` decimal(15,3) NOT NULL DEFAULT '0.000' COMMENT '所拿数目',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_fenxiaojiang
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_fruitdetail`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_fruitdetail`;
CREATE TABLE `ysk_fruitdetail` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `trading_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '交易类型 0-数量在自己账户内变动 1-收入  2-支出',
  `num` decimal(10,2) NOT NULL COMMENT '交易数量',
  `to_id` int(11) DEFAULT NULL COMMENT '支出给对方ID',
  `trading_name` varchar(255) DEFAULT NULL,
  `content` text COMMENT '说明',
  `add_time` int(11) NOT NULL COMMENT '交易时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_fruitdetail
-- ----------------------------
INSERT INTO `ysk_fruitdetail` VALUES ('62', '1718', '1', '2.00', '0', '平台播发', '平台播发金钱2', '1523534817');

-- ----------------------------
-- Table structure for `ysk_fruit_in`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_fruit_in`;
CREATE TABLE `ysk_fruit_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '果子转入',
  `manage_id` int(11) NOT NULL COMMENT '管理员id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `num` decimal(15,0) NOT NULL COMMENT '转给用户的果子数量',
  `create_time` int(11) NOT NULL COMMENT '转果子时间',
  `ip` varchar(20) NOT NULL COMMENT '转果子时使用的电脑ip',
  `type` char(20) NOT NULL,
  `content` varchar(255) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `account` varchar(20) NOT NULL,
  `manage_name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_fruit_in
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_gerenshangpu`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_gerenshangpu`;
CREATE TABLE `ysk_gerenshangpu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `shop_name` varchar(255) NOT NULL COMMENT '店铺名称',
  `shop_logo` varchar(255) DEFAULT NULL COMMENT '店铺logo',
  `shop_type` int(2) NOT NULL COMMENT '商铺类型:1服饰2餐饮3酒店4旅游5科技6养生7美容8特产9生鲜0其它',
  `shop_beijing` varchar(255) DEFAULT NULL COMMENT '商铺背景',
  `shop_vpay` varchar(255) DEFAULT NULL COMMENT 'vpay二维码',
  `shop_zhifubao` varchar(255) DEFAULT NULL COMMENT '支付宝二维码',
  `shop_weixin` varchar(255) DEFAULT NULL COMMENT '微信二维码',
  `shop_dengji` varchar(255) DEFAULT NULL COMMENT '店铺等级:0没有店铺,1,一级2,二级,3,三级',
  `shop_shoucang` int(111) DEFAULT NULL COMMENT '收藏数',
  `shop_xiaoshou` int(122) DEFAULT NULL COMMENT '销售量',
  `userid` int(111) NOT NULL COMMENT '用户id',
  `kaihuhang` varchar(255) DEFAULT NULL COMMENT '开户行',
  `name` varchar(255) DEFAULT NULL COMMENT '开户姓名',
  `bank` varchar(255) DEFAULT NULL COMMENT '银行卡',
  `shop_phone` varchar(255) NOT NULL COMMENT '店铺手机号码',
  `shop_stort` int(5) NOT NULL DEFAULT '500' COMMENT '店铺排序',
  `shop_zhuangtai` int(1) NOT NULL DEFAULT '1' COMMENT '1启用2禁用',
  `shop_guanggao` varchar(255) DEFAULT NULL COMMENT '广告背景',
  `shop_address` varchar(255) NOT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_gerenshangpu
-- ----------------------------
INSERT INTO `ysk_gerenshangpu` VALUES ('1', '平台商店', '/Uploads/image/product/5ad83a4b9c41c.jpg', '8', null, null, '/Uploads/image/product/5a9669c45b4f3.jpg', '/Uploads/image/product/5a9669bf09789.jpg', '', null, null, '0', null, null, null, '', '500', '1', null, '中国');

-- ----------------------------
-- Table structure for `ysk_goods`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_goods`;
CREATE TABLE `ysk_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00' COMMENT '商品价格',
  `subtract` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否扣除库存',
  `minimum` int(11) NOT NULL DEFAULT '1' COMMENT '最小起订数目',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL COMMENT '加入时间',
  `date_modified` datetime DEFAULT NULL COMMENT '修改的时间',
  `viewed` int(5) NOT NULL DEFAULT '0' COMMENT '点击量',
  PRIMARY KEY (`goods_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='商品信息表';

-- ----------------------------
-- Records of ysk_goods
-- ----------------------------
INSERT INTO `ysk_goods` VALUES ('1', '11111111111', 'product/59a91f7fb7fa6.jpg', '111.00', '1', '1', '0', '1', '2017-09-01 16:51:31', null, '0');

-- ----------------------------
-- Table structure for `ysk_goods_discount`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_goods_discount`;
CREATE TABLE `ysk_goods_discount` (
  `product_discount_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `price` decimal(15,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='数量折扣';

-- ----------------------------
-- Records of ysk_goods_discount
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_grade`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_grade`;
CREATE TABLE `ysk_grade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_name` char(5) NOT NULL COMMENT '等级名称',
  `number` int(14) NOT NULL DEFAULT '0' COMMENT '金额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ysk_grade
-- ----------------------------
INSERT INTO `ysk_grade` VALUES ('1', 'V71', '500');
INSERT INTO `ysk_grade` VALUES ('2', 'V72', '1000');
INSERT INTO `ysk_grade` VALUES ('3', 'V73', '3000');
INSERT INTO `ysk_grade` VALUES ('4', 'V74', '5000');
INSERT INTO `ysk_grade` VALUES ('5', 'V75', '10000');
INSERT INTO `ysk_grade` VALUES ('6', 'V76', '15000');
INSERT INTO `ysk_grade` VALUES ('7', 'V77', '20000');

-- ----------------------------
-- Table structure for `ysk_group`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_group`;
CREATE TABLE `ysk_group` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级部门ID',
  `title` varchar(31) NOT NULL DEFAULT '' COMMENT '部门名称',
  `icon` varchar(31) NOT NULL DEFAULT '' COMMENT '图标',
  `menu_auth` text NOT NULL COMMENT '权限列表',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `auth_id` int(11) DEFAULT NULL,
  `hylb` varchar(10) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='部门信息表';

-- ----------------------------
-- Records of ysk_group
-- ----------------------------
INSERT INTO `ysk_group` VALUES ('1', '0', '超级管理员', '', '', '1426881003', '1427552428', '0', '1', '1', '0');

-- ----------------------------
-- Table structure for `ysk_growth`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_growth`;
CREATE TABLE `ysk_growth` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `num` decimal(11,2) NOT NULL DEFAULT '0.00',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `hashiqi_lv` decimal(8,6) NOT NULL DEFAULT '0.000000',
  `zangao_lv` decimal(8,6) NOT NULL DEFAULT '0.000000',
  `dcr_lv` decimal(8,6) NOT NULL DEFAULT '0.000000',
  `des_lv` decimal(8,6) NOT NULL DEFAULT '0.000000' COMMENT '扣除',
  `base_lv` decimal(8,6) NOT NULL DEFAULT '0.000000' COMMENT '基础拆分',
  `total_lv` decimal(8,6) NOT NULL DEFAULT '0.000000' COMMENT '总拆分',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_growth
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_harvdets`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_harvdets`;
CREATE TABLE `ysk_harvdets` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '增养记录表',
  `har_nums` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '增氧数量',
  `har_landid` int(11) NOT NULL COMMENT '增养地id',
  `uid` int(11) NOT NULL COMMENT '增养用户id',
  `har_time` date NOT NULL COMMENT '增氧时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_harvdets
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_jiaoyiorder`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_jiaoyiorder`;
CREATE TABLE `ysk_jiaoyiorder` (
  `jy_id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `jy_type` tinyint(3) NOT NULL COMMENT '类型 5喂养 6挑粪',
  `jy_fromuid` int(15) NOT NULL COMMENT '出售者',
  `jy_touid` int(15) NOT NULL COMMENT '收购者',
  `jy_mobile` varchar(255) NOT NULL COMMENT '收购者手机号码',
  `jy_addtime` varchar(20) NOT NULL COMMENT '添加时间',
  `jy_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '交易状态',
  `yj_jiangjin` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '买家是地主的奖金',
  `jy_fee` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '手续费',
  `jy_mun` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '积分',
  `all_state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1->取消,2->完成',
  PRIMARY KEY (`jy_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_jiaoyiorder
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_kaidi`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_kaidi`;
CREATE TABLE `ysk_kaidi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '播种记录表id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `farm_id` tinyint(4) NOT NULL COMMENT '农田id',
  `num` int(11) NOT NULL COMMENT '播种数量',
  `farm_type` tinyint(4) NOT NULL COMMENT '土地类型：1.黄土地 2.红土地 3.黑土地',
  `sow_time` int(11) NOT NULL COMMENT '播种时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '播种状态  0隐藏 1显示',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_kaidi
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_layerneeds`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_layerneeds`;
CREATE TABLE `ysk_layerneeds` (
  `id` int(11) NOT NULL COMMENT '等级设置表',
  `direct_pers` int(11) NOT NULL DEFAULT '0' COMMENT '所需直推人数',
  `member_jifen` int(11) NOT NULL DEFAULT '0' COMMENT '所需要积分',
  `member_grade` int(11) NOT NULL DEFAULT '1' COMMENT '对应用户等级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_layerneeds
-- ----------------------------
INSERT INTO `ysk_layerneeds` VALUES ('1', '0', '0', '1');
INSERT INTO `ysk_layerneeds` VALUES ('2', '10', '10', '2');
INSERT INTO `ysk_layerneeds` VALUES ('3', '20', '12', '3');
INSERT INTO `ysk_layerneeds` VALUES ('4', '30', '16', '4');
INSERT INTO `ysk_layerneeds` VALUES ('5', '40', '20', '5');
INSERT INTO `ysk_layerneeds` VALUES ('6', '50', '30', '6');
INSERT INTO `ysk_layerneeds` VALUES ('7', '60', '400', '7');

-- ----------------------------
-- Table structure for `ysk_level_list`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_level_list`;
CREATE TABLE `ysk_level_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `level` tinyint(4) NOT NULL DEFAULT '0' COMMENT '升级等级',
  `proof` varchar(128) NOT NULL COMMENT '支付凭证',
  `money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '付款金额',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0未处理 1已处理 2已取消',
  `time` varchar(12) NOT NULL COMMENT '申请时间',
  `datestr` varchar(16) NOT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_level_list
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_limit`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_limit`;
CREATE TABLE `ysk_limit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limit_num` int(11) NOT NULL COMMENT '限制数量',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '按稻草人还是直推会员推荐',
  `level_name` varchar(20) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_limit
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_loudan`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_loudan`;
CREATE TABLE `ysk_loudan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `shouid` int(11) DEFAULT NULL COMMENT '漏单id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=690 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ysk_loudan
-- ----------------------------
INSERT INTO `ysk_loudan` VALUES ('689', '779752', '778904');

-- ----------------------------
-- Table structure for `ysk_love_shop`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_love_shop`;
CREATE TABLE `ysk_love_shop` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '收藏店铺id',
  `user_id` int(5) NOT NULL COMMENT '用户id',
  `shop_id` int(5) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_love_shop
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_love_shoping`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_love_shoping`;
CREATE TABLE `ysk_love_shoping` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '收藏商品id',
  `user_id` int(5) NOT NULL COMMENT '用户id',
  `shop_id` int(5) NOT NULL COMMENT '商品id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_love_shoping
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_member`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_member`;
CREATE TABLE `ysk_member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员表',
  `uname` varchar(11) DEFAULT NULL COMMENT '用户名',
  `fid` int(11) NOT NULL DEFAULT '0' COMMENT '推荐人id',
  `path_id` text NOT NULL COMMENT '团队路径',
  `phone` varchar(11) NOT NULL DEFAULT '0' COMMENT '电话号码',
  `cangkujiwo__jifen` decimal(11,0) NOT NULL DEFAULT '0' COMMENT '仓库鸡窝积分',
  `renqizhinums` int(10) NOT NULL DEFAULT '0' COMMENT '人气值',
  `xiaofei_jifen` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '消费积分',
  `mobile` varchar(11) NOT NULL DEFAULT '0' COMMENT '电话号码',
  `fc` int(11) NOT NULL DEFAULT '0' COMMENT '累计获得风车数',
  `login_count` int(11) NOT NULL DEFAULT '0' COMMENT '登陆次数',
  `last_login_ip` varchar(40) DEFAULT NULL COMMENT '上次登录ip',
  `last_ip_region` varchar(64) DEFAULT NULL COMMENT 'ip指向详细地址',
  `last_login_time` int(11) DEFAULT NULL,
  `session_id` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0->默认,1->冻结',
  `chicken_bili` float(10,2) NOT NULL DEFAULT '0.00' COMMENT '鸡窝拆分率',
  `lenth_layer` int(11) NOT NULL DEFAULT '0' COMMENT '深度',
  `member_grade` tinyint(1) NOT NULL DEFAULT '0' COMMENT '对应用户等级 0普通会员 1体验会员 2钻石会员 3联盟会员  ',
  `member_grade_shoudong` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1默认 2后台已改 3前台受方法影响',
  `api_pay` varchar(30) DEFAULT NULL COMMENT '支付宝账号',
  `wx_name` varchar(30) DEFAULT NULL COMMENT '微信',
  `add_ress` varchar(100) DEFAULT NULL COMMENT '收货地址',
  `farmlink_address` varchar(100) DEFAULT NULL COMMENT '农联币地址',
  `zhuanjia` tinyint(1) NOT NULL DEFAULT '0' COMMENT '专家',
  `guanjia` tinyint(1) NOT NULL DEFAULT '0' COMMENT '管家',
  `pwd` varchar(255) NOT NULL COMMENT '密码',
  `twopass` varchar(255) NOT NULL COMMENT '二级密码',
  `avatar` varchar(50) NOT NULL DEFAULT '1.jpg' COMMENT '头像',
  `create_time` int(11) NOT NULL COMMENT '产生时间',
  `member_directnums` int(11) NOT NULL DEFAULT '0' COMMENT '直推有效人数',
  `team_directnums` int(11) NOT NULL DEFAULT '0' COMMENT '团队有效人数',
  `direct_kaidi` float(11,1) NOT NULL DEFAULT '0.0' COMMENT '我的直推人第一次开地',
  `weiyang_time` date NOT NULL COMMENT '会员喂养时间',
  `weiyang_earns` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '会员喂养收益',
  `tiaofen_mid` text NOT NULL COMMENT '挑我粪人员会员id',
  `buyu_earns` decimal(11,3) NOT NULL COMMENT '喂鱼收益',
  `buyu_id` text NOT NULL COMMENT '捕鱼id',
  `buyu_time` date NOT NULL COMMENT '捕鱼时间',
  `yangqiji` float(5,2) NOT NULL DEFAULT '0.00' COMMENT '下级购买氧气机+0.1',
  `yangqiji_nums` int(1) NOT NULL DEFAULT '0' COMMENT '氧气机数量 最多5个',
  `music_isplay` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1->播放,2->暂停',
  `yuchang_guanjia` tinyint(1) NOT NULL DEFAULT '0' COMMENT '渔场管家',
  `bankname` varchar(80) NOT NULL DEFAULT '0' COMMENT '开户行',
  `banknumber` varchar(20) NOT NULL DEFAULT '0' COMMENT '银行卡号',
  `chaifen_bili` float(8,4) NOT NULL DEFAULT '0.0000' COMMENT '鸡窝拆分比例',
  `count_time` date NOT NULL COMMENT '计算拆分/收益时间',
  `tiaofen_earns` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '挑粪收益',
  `guoyuan_earns` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '果园施肥收益',
  `yuchang_earns` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '渔场喂鱼收益',
  `guoyuan_chaifen` float(11,3) NOT NULL DEFAULT '0.000' COMMENT '果园拆分',
  `yuchang_chaifen` float(11,3) NOT NULL DEFAULT '0.000' COMMENT '渔场拆分',
  `jiwo_chaifen` float(11,3) NOT NULL DEFAULT '0.000' COMMENT '鸡场拆分率',
  `guoyuan_nextsix` decimal(15,3) NOT NULL DEFAULT '0.000' COMMENT '下6级本金',
  `guoyuan_nextone` decimal(15,3) NOT NULL DEFAULT '0.000' COMMENT '下1级本金',
  `jiaoshuiid` text NOT NULL COMMENT '给我浇水的下级',
  `houtaijibie` tinyint(1) NOT NULL DEFAULT '1' COMMENT '后台设置级别',
  `judian_pic` varchar(40) NOT NULL COMMENT '聚点收款账号',
  `buy_moneys` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '购买总数量',
  `is_dailishang` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1->普通用户,2->代理商,3->大区负责人',
  `is_manager` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为大区负责人0否 1是',
  `is_p_verify` tinyint(1) NOT NULL DEFAULT '0' COMMENT '个人认证 0未认证 1已认证 ',
  `is_e_verify` tinyint(1) NOT NULL COMMENT '企业认证 0未认证 1已认证 ',
  `prov` varchar(64) DEFAULT NULL COMMENT '代理省份',
  `city` varchar(64) DEFAULT NULL COMMENT '代理城市',
  `dl_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '代理服务费',
  `tg_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '推广金',
  `gl_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '管理服务费',
  `team_grade` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户所属团队',
  `dailishang_logo` varchar(256) NOT NULL DEFAULT '1.jpg' COMMENT '商家logo',
  `dailishang_name` varchar(35) NOT NULL COMMENT '商家店铺名',
  PRIMARY KEY (`member_id`) USING BTREE,
  UNIQUE KEY `member_id` (`member_id`) USING BTREE COMMENT 'member_id',
  KEY `fuzhu` (`lenth_layer`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_member
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_member_jifens`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_member_jifens`;
CREATE TABLE `ysk_member_jifens` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '积分明细表',
  `chicken_jifen` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '鸡窝积分',
  `fish_jifen` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '渔场积分',
  `farm_jifen` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '农场积分',
  `farmlink_jifen` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '农联积分',
  `member_id` int(11) NOT NULL COMMENT '用户id',
  `chicken_earnjifen` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '鸡场总收益',
  `fish_earnjifen` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '渔场总收益',
  `farm_earnjifen` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '农场总收益',
  `xiaofei_jifen` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '消费积分',
  `renqicount` float(11,3) NOT NULL DEFAULT '0.000' COMMENT '人气值',
  `yongjin` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '分销佣金',
  `daili_yongjin` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '代理佣金',
  `balance_nums` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '余额/(区块链使用)',
  `yu_ku` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '只能用来提现',
  `yuchang_dongjie` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '渔场摸虾冻结积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_member_jifens
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_menu`;
CREATE TABLE `ysk_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `pid` int(11) NOT NULL COMMENT '父级id',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '爷爷ID、',
  `col` varchar(30) NOT NULL COMMENT '控制器',
  `act` varchar(30) NOT NULL COMMENT '方法',
  `patch` varchar(50) DEFAULT NULL COMMENT '全路径',
  `level` int(11) NOT NULL COMMENT '级别',
  `icon` varchar(50) DEFAULT NULL,
  `sort` char(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=381 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_menu
-- ----------------------------
INSERT INTO `ysk_menu` VALUES ('4', '系统配置', '3', '1', 'Config', 'group2', '', '2', 'fa-wrench', '11', '1');
INSERT INTO `ysk_menu` VALUES ('6', '管理员管理', '3', '1', 'Manage', 'index', '', '2', 'fa fa-cog', '13', '1');
INSERT INTO `ysk_menu` VALUES ('3', '统用功能', '1', '1', '', '', '', '1', 'fa-folder-open-o', '1', '1');
INSERT INTO `ysk_menu` VALUES ('5', '角色管理', '3', '1', 'Group', 'index', '', '2', 'fa-sitemap', '12', '1');
INSERT INTO `ysk_menu` VALUES ('7', '会员管理', '1', '1', '', '', '', '1', 'fa-folder-open-o', '2', '1');
INSERT INTO `ysk_menu` VALUES ('8', '会员列表', '7', '1', 'User', 'index', null, '2', 'fa-user', '21', '1');
INSERT INTO `ysk_menu` VALUES ('9', '推荐结构', '7', '1', 'Tree', 'index', null, '2', 'fa-th-large', '22', '1');
INSERT INTO `ysk_menu` VALUES ('1', '系统', '0', '0', '', '', null, '0', 'fa-cog', '0', '1');
INSERT INTO `ysk_menu` VALUES ('10', '系统记录', '0', '0', '', '', null, '0', 'fa-tasks', '0', '0');
INSERT INTO `ysk_menu` VALUES ('11', '商品管理', '10', '10', '', '', null, '1', 'fa-folder-open-o', '3', '1');
INSERT INTO `ysk_menu` VALUES ('315', '商品列表', '11', '10', 'Good', 'index', null, '2', null, '31', '1');
INSERT INTO `ysk_menu` VALUES ('316', '反馈管理', '1', '1', '', '', null, '1', 'fa-folder-open-o', '3', '1');
INSERT INTO `ysk_menu` VALUES ('318', '反馈列表', '316', '1', 'Recyling', 'index', null, '2', 'fa-file-text', '32', '1');
INSERT INTO `ysk_menu` VALUES ('319', '平台充值管理', '1', '1', '', '', null, '1', 'fa-folder-open-o', '4', '0');
INSERT INTO `ysk_menu` VALUES ('320', '平台充值', '319', '1', 'FruitsManage', 'index', null, '2', 'fa-jpy', '41', '0');
INSERT INTO `ysk_menu` VALUES ('321', '充值流水', '319', '1', 'FruitsDetail', 'index', null, '2', 'fa-list', '42', '0');
INSERT INTO `ysk_menu` VALUES ('322', '公告管理', '1', '1', '', '', null, '1', 'fa-folder-open-o', '5', '1');
INSERT INTO `ysk_menu` VALUES ('323', '系统公告', '322', '1', 'News', 'index', null, '2', 'fa-twitter-square', '51', '1');
INSERT INTO `ysk_menu` VALUES ('324', '交易管理', '10', '10', '', '', '', '1', 'fa-folder-open-o', '6', '1');
INSERT INTO `ysk_menu` VALUES ('332', '激活码管理', '1', '1', '', '', null, '1', 'fa-folder-open-o', '7', '0');
INSERT INTO `ysk_menu` VALUES ('333', '激活码列表', '332', '1', 'ActivateNum', 'index', null, '2', 'fa-list', '71', '0');
INSERT INTO `ysk_menu` VALUES ('334', '自由交易记录', '324', '10', 'Traing', 'tradingfree', '', '2', 'fa-list', '62', '1');
INSERT INTO `ysk_menu` VALUES ('335', '轮播管理', '1', '1', '', '', '', '1', 'fa-folder-open-o', '6', '1');
INSERT INTO `ysk_menu` VALUES ('336', '系统轮播', '335', '1', 'Banner', 'index', '', '2', 'fa-twitter-square', '51', '1');
INSERT INTO `ysk_menu` VALUES ('339', '后台充值记录', '7', '1', 'User', 'recharge', null, '2', 'fa-list', '99', '1');
INSERT INTO `ysk_menu` VALUES ('12', '交易管理', '1', '1', '', '', null, '1', 'fa-folder-open-o', '6', '1');
INSERT INTO `ysk_menu` VALUES ('374', '升级列表', '12', '1', 'Finance', 'cannot', null, '2', 'fa-list', '72', '0');
INSERT INTO `ysk_menu` VALUES ('373', '完成列表', '12', '1', 'Finance', 'list1', null, '2', 'fa-list', '74', '1');
INSERT INTO `ysk_menu` VALUES ('375', '拆单', '12', '10', 'Finance', 'chaidan', null, '2', null, '74', '0');
INSERT INTO `ysk_menu` VALUES ('376', '匹配', '12', '10', 'Finance', 'pipei', null, '2', null, '75', '0');
INSERT INTO `ysk_menu` VALUES ('378', '交易中订单', '12', '1', 'Finance', 'list2', null, '2', 'fa-list', '73', '1');
INSERT INTO `ysk_menu` VALUES ('380', '优惠券列表', '7', '1', 'Coupons', 'index', null, '2', 'fa-user', '21', '1');

-- ----------------------------
-- Table structure for `ysk_moneyils`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_moneyils`;
CREATE TABLE `ysk_moneyils` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pay_id` int(10) NOT NULL COMMENT '付钱会员id',
  `get_id` int(10) NOT NULL COMMENT '拿钱id',
  `get_nums` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '拿钱数量',
  `get_level` int(2) NOT NULL DEFAULT '0' COMMENT '第几代拿钱',
  `get_types` int(2) NOT NULL DEFAULT '0' COMMENT '1->转账三级分销，2->余额转积分三级分销',
  `get_time` char(30) NOT NULL DEFAULT '0' COMMENT '拿钱时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1036 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_moneyils
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_news`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_news`;
CREATE TABLE `ysk_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '文章标题',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '文章图片',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `desc` varchar(255) NOT NULL DEFAULT '',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `is_out` tinyint(4) NOT NULL DEFAULT '0',
  `content` text NOT NULL COMMENT '内容',
  `from` varchar(255) NOT NULL DEFAULT '' COMMENT '文章来源',
  `visit` smallint(6) NOT NULL DEFAULT '0',
  `lang` tinyint(4) NOT NULL DEFAULT '0',
  `type` int(2) DEFAULT '0' COMMENT '1公告;2关于我们；3常见问题；4首页说明；0未选择',
  `tuijian` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

-- ----------------------------
-- Records of ysk_news
-- ----------------------------
INSERT INTO `ysk_news` VALUES ('105', '常见问题', '', '0', '', '1568839665', '0', '', '', '0', '0', '3', '0');
INSERT INTO `ysk_news` VALUES ('107', '操作说明', '', '0', '', '1571996888', '0', '', '', '0', '0', '4', '0');
INSERT INTO `ysk_news` VALUES ('113', '这是一条最新公告', '', '0', '', '1568663874', '0', '', '', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for `ysk_notice`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_notice`;
CREATE TABLE `ysk_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_tittle` varchar(80) NOT NULL COMMENT '公告标题',
  `notice_content` varchar(600) NOT NULL COMMENT '公告详情',
  `notice_addtime` varchar(20) NOT NULL COMMENT '公告添加时间',
  `notice_read` text NOT NULL COMMENT '看过公告会员',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_notice
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_nzbill`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_nzbill`;
CREATE TABLE `ysk_nzbill` (
  `bill_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '明细id',
  `bill_uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `bill_num` decimal(10,1) NOT NULL DEFAULT '0.0' COMMENT '财富币',
  `bill_reason` char(20) NOT NULL COMMENT '生成的原因',
  `bill_time` int(11) NOT NULL DEFAULT '0' COMMENT '生成时间',
  `bill_name` varchar(50) DEFAULT NULL,
  `bill_type` char(1) NOT NULL COMMENT '0-扣除 1-获得',
  `bill_username` varchar(20) DEFAULT NULL,
  `bill_account` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bill_id`) USING BTREE,
  KEY `bill_userid` (`bill_uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=295 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='转盘抽奖';

-- ----------------------------
-- Records of ysk_nzbill
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_nzletter`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_nzletter`;
CREATE TABLE `ysk_nzletter` (
  `letter_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '站内信id',
  `send_id` int(11) DEFAULT NULL COMMENT '发件人id',
  `recipient_id` int(11) DEFAULT NULL COMMENT '收件人id',
  `title` char(50) DEFAULT NULL COMMENT '信件标题',
  `content` text COMMENT '信件内容',
  `time` int(11) DEFAULT NULL COMMENT '时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '0未读，1已读',
  `img` varchar(225) NOT NULL,
  `reply` text NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `account` varchar(20) DEFAULT NULL,
  `phone` char(20) NOT NULL,
  PRIMARY KEY (`letter_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_nzletter
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_nzusfarm`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_nzusfarm`;
CREATE TABLE `ysk_nzusfarm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '农田id',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `f_id` int(10) unsigned NOT NULL COMMENT '用户自己的农田ID号 1-15',
  `farm_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '农田类型id 1普通矿车 2银矿车 3-金矿车',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '显示图片 0地 1树 2果子3死亡',
  `seeds` decimal(13,2) NOT NULL COMMENT '本金',
  `fruits` decimal(13,2) NOT NULL COMMENT '果子数量',
  `income` decimal(13,2) NOT NULL DEFAULT '0.00' COMMENT '收益累计 本金的10配枯死',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `f_id` (`f_id`) USING BTREE,
  KEY `farm_type` (`farm_type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2164 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_nzusfarm
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_opesfarms`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_opesfarms`;
CREATE TABLE `ysk_opesfarms` (
  `id` varchar(11) NOT NULL COMMENT '系统土地操作表',
  `farm_type` tinyint(1) NOT NULL COMMENT '1->鸡窝 2->果园 3->渔场',
  `from_uid` varchar(0) NOT NULL COMMENT '被操作id',
  `ope_uid` varchar(0) NOT NULL COMMENT '操作id',
  `ope_nums` decimal(11,3) NOT NULL COMMENT '操作数量',
  `ope_types` int(2) NOT NULL COMMENT '具体操作',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_opesfarms
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_opetypes`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_opetypes`;
CREATE TABLE `ysk_opetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '自己id',
  `fid` int(11) NOT NULL COMMENT '触发人id',
  `ope_nums` decimal(9,2) NOT NULL DEFAULT '0.00' COMMENT '动作触发数量',
  `ope_date` date NOT NULL COMMENT '操作时间',
  `ope_type` int(2) NOT NULL COMMENT '操作类型:1开窝 2清扫 3收货 4清窝 5喂养 6挑粪 7获得风车 8获得管家 9获得专家 10购买一键挑粪 11冻结积分',
  `ope_farm` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1鸡窝 2果园 3渔场',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_opetypes
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_opinions`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_opinions`;
CREATE TABLE `ysk_opinions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `contents` text NOT NULL,
  `plansimg` char(50) NOT NULL,
  `add_time` datetime NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0' COMMENT '意见处理状态默认是0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_opinions
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_order`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_order`;
CREATE TABLE `ysk_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购买商品订单id',
  `order_no` varchar(225) NOT NULL COMMENT '订单号',
  `uid` int(11) NOT NULL COMMENT '购买者id',
  `total_yf` decimal(11,1) DEFAULT NULL COMMENT '总运费',
  `buy_price` decimal(11,2) DEFAULT NULL COMMENT '购买总价',
  `time` int(11) NOT NULL COMMENT '下单时间',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '订单状态 0未支付 1已支付 2已发货  3交易完成(已收货)',
  `buy_name` varchar(50) NOT NULL COMMENT '收货人',
  `buy_phone` char(12) NOT NULL COMMENT '收货人手机号码',
  `buy_address` varchar(255) NOT NULL COMMENT '收货地址',
  `pay_time` int(11) DEFAULT NULL COMMENT '付款时间',
  `pay_type` varchar(20) DEFAULT '' COMMENT '支付方式 1Vpay 2微信 3支付宝 4网银',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '0-删除 1-显示 只用于客户端',
  `pay_money` decimal(11,2) DEFAULT NULL COMMENT '实际支付金额',
  `kd_name` varchar(64) DEFAULT NULL COMMENT '快递公司',
  `kd_no` varchar(30) DEFAULT NULL COMMENT '快递订单号',
  `remark` varchar(225) DEFAULT NULL COMMENT '备注',
  `trade_no` varchar(50) DEFAULT NULL COMMENT '交易订单号',
  `kd_type` varchar(66) DEFAULT NULL COMMENT '快递类型',
  `xiaofei_jifen` decimal(11,0) DEFAULT '0' COMMENT '消费积分积分总共可使用',
  `jifen_yu` decimal(11,0) NOT NULL DEFAULT '0' COMMENT '渔场积分',
  `jifen_ji` decimal(11,0) NOT NULL DEFAULT '0' COMMENT '总共可赠送鸡场积分',
  `jifen_guoyuan` decimal(11,0) DEFAULT '0' COMMENT '果园积分',
  `sanji_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '订单所有可三级分销的钱',
  `is_duobao` tinyint(1) DEFAULT '1' COMMENT '1->普通订单,2->夺宝订单',
  `seluid` int(11) DEFAULT '0' COMMENT '竞标选中uid',
  `order_proof` varchar(164) DEFAULT NULL COMMENT '收款凭证',
  `order_sellerid` int(11) NOT NULL DEFAULT '0' COMMENT '商家UID',
  `order_relation` varchar(255) DEFAULT NULL COMMENT '关联订单',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=450 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='购买商品表';

-- ----------------------------
-- Records of ysk_order
-- ----------------------------
INSERT INTO `ysk_order` VALUES ('434', 'M20200827171932757009', '778904', '0.0', '1230.00', '1598519972', '0', '123', '18344324057', '广东广州市越秀区123', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('435', 'M20200827172158782635', '778904', '0.0', '1230.00', '1598520118', '0', '123', '18344324057', '广东广州市越秀区123', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('436', 'M20200828142542603091', '779747', '0.0', '369.00', '1598595942', '0', '123', '18344324057', '广东广州市东山区123', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('437', 'M20200828144722405969', '779747', '0.0', '246.00', '1598597242', '0', '123', '18344324057', '广东广州市东山区123', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('438', 'M20200828144914596389', '779747', '0.0', '1230.00', '1598597354', '0', '123', '18344324057', '广东广州市东山区123', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('439', 'M20200828145522736740', '779747', '0.0', '113.00', '1598597722', '0', '123', '18344324057', '广东广州市东山区123', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('440', 'M20200828145605473754', '779747', '0.0', '236.00', '1598597765', '0', '123', '18344324057', '广东广州市东山区123', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('441', 'M20200828150213907879', '779747', '0.0', '113.00', '1598598133', '0', '123', '18344324057', '广东广州市东山区123', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('442', 'M20200903143817822186', '779757', '0.0', '123.00', '1599115097', '0', '654', '18344324057', '广东广州市东山区465', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('443', 'M20200903144950749072', '779757', '0.0', '-77.00', '1599115790', '0', '654', '18344324057', '广东广州市东山区465', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('444', 'M20200903145337517947', '779757', '0.0', '0.00', '1599116017', '0', '654', '18344324057', '广东广州市东山区465', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('445', 'M20200903150809369137', '779757', '0.0', '0.00', '1599116889', '0', '654', '18344324057', '广东广州市东山区465', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('446', 'M20200903152315526379', '779757', '0.0', '0.00', '1599117795', '0', '654', '18344324057', '广东广州市东山区465', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('447', 'M20200903152604916970', '779757', '0.0', '0.00', '1599117964', '0', '654', '18344324057', '广东广州市东山区465', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('448', 'M20200903152649240570', '779757', '0.0', '0.00', '1599118009', '0', '654', '18344324057', '广东广州市东山区465', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);
INSERT INTO `ysk_order` VALUES ('449', 'M20200903153503443075', '779757', '0.0', '0.00', '1599118503', '0', '654', '18344324057', '广东广州市东山区465', null, '', '1', null, null, null, null, null, null, '0', '0', '0', '0', '0.00', '1', '0', null, '0', null);

-- ----------------------------
-- Table structure for `ysk_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_order_detail`;
CREATE TABLE `ysk_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单ID',
  `com_id` int(11) NOT NULL COMMENT '商品ID',
  `com_name` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '商品名称',
  `com_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '购买产品价格',
  `com_num` int(11) NOT NULL COMMENT '产品数量',
  `com_img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `com_cs` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品参数',
  `is_comment` tinyint(1) DEFAULT '0' COMMENT '是否已评论 0-未评论 1-已评论',
  `com_shoptype` int(15) DEFAULT NULL COMMENT '商品所属',
  `size` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品尺寸',
  `color` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品颜色',
  `xiaofei_jifen` decimal(50,0) NOT NULL DEFAULT '0' COMMENT '可使用消费积分',
  `jifen_nums` decimal(11,0) DEFAULT '0' COMMENT '赠送数量(渔场鸡场果园)',
  `jifen_types` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '1-鸡场积分,2-果园积分,3-渔场积分',
  `buy_num` int(11) NOT NULL DEFAULT '0' COMMENT '购买次数',
  `sanji_money` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '商品可参与三级分销的钱',
  `shangjia` int(11) NOT NULL COMMENT '商家id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `jiesuan_price` decimal(11,0) NOT NULL DEFAULT '0' COMMENT '结算价',
  `express_order` decimal(20,0) DEFAULT NULL COMMENT '发货订单号',
  `express_name` varchar(80) CHARACTER SET utf8 DEFAULT NULL COMMENT '快递公司名称',
  `goods_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1->未付款,2->以付款,3->以发货,4-以签收',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=340 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_order_detail
-- ----------------------------
INSERT INTO `ysk_order_detail` VALUES ('323', '434', '182', '123', '123.00', '10', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '778904', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('324', '435', '182', '123', '123.00', '10', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '778904', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('325', '436', '182', '123', '123.00', '3', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779747', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('326', '437', '182', '123', '123.00', '2', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779747', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('327', '438', '182', '123', '123.00', '10', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779747', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('328', '439', '182', '123', '123.00', '1', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779747', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('329', '440', '182', '123', '123.00', '2', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779747', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('330', '441', '182', '123', '123.00', '1', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779747', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('331', '442', '182', '123', '123.00', '1', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779757', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('332', '443', '182', '123', '123.00', '1', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779757', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('333', '444', '182', '123', '123.00', '1', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779757', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('334', '445', '182', '123', '123.00', '1', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779757', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('335', '446', '182', '123', '123.00', '1', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779757', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('336', '447', '183', '12', '123.00', '1', '/Uploads/image/product/5f509a0161095.png', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779757', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('337', '447', '182', '123', '123.00', '1', '/Uploads/image/product/5f45d04704c4b.jpg', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779757', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('338', '448', '183', '12', '123.00', '1', '/Uploads/image/product/5f509a0161095.png', null, '0', '25', '', '', '0', '0', '', '0', '0.00', '0', '779757', '0', null, null, '1');
INSERT INTO `ysk_order_detail` VALUES ('339', '449', '185', '44', '2.00', '1', '/Uploads/image/product/5f509c695e69e.jpg', null, '0', '24', '', '', '0', '0', '', '0', '0.00', '0', '779757', '0', null, null, '1');

-- ----------------------------
-- Table structure for `ysk_platforms`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_platforms`;
CREATE TABLE `ysk_platforms` (
  `id` int(11) NOT NULL COMMENT '平台每天所有积分总和',
  `count_time` date NOT NULL COMMENT '计算时间',
  `platform_nums` decimal(20,2) NOT NULL COMMENT '平台每天所有积分总和(鸡场)',
  `chaifenbili_all` float(11,5) NOT NULL DEFAULT '0.00000' COMMENT '平台基础拆分率（鸡场）',
  `platform_yuchangnums` decimal(20,5) NOT NULL DEFAULT '0.00000' COMMENT '渔场建窝总积分',
  `yuchangchaifenbili_all` float(11,5) NOT NULL DEFAULT '0.00000' COMMENT '渔场基础拆分率',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_platforms
-- ----------------------------
INSERT INTO `ysk_platforms` VALUES ('1', '2017-11-04', '8467578.24', '0.00044', '575120.00000', '0.00000');

-- ----------------------------
-- Table structure for `ysk_preventip`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_preventip`;
CREATE TABLE `ysk_preventip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `time` varchar(30) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_preventip
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_product_cate`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_product_cate`;
CREATE TABLE `ysk_product_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `tag` varchar(120) DEFAULT NULL COMMENT '标签',
  `pic` varchar(124) NOT NULL COMMENT '分类图片',
  `is_tui` tinyint(2) DEFAULT '0' COMMENT '是否推荐(0否 1是)',
  `is_hot` tinyint(2) DEFAULT '0' COMMENT '是否热门(0 否 1是)',
  `sort` tinyint(5) DEFAULT '0' COMMENT '商品排序',
  `pic1` varchar(255) DEFAULT NULL COMMENT '轮播图1',
  `pic2` varchar(255) DEFAULT NULL COMMENT '轮播图2',
  `pic3` varchar(255) DEFAULT NULL COMMENT '轮播图3',
  `pic4` varchar(255) DEFAULT NULL COMMENT '轮播图4',
  `pic5` varchar(255) DEFAULT NULL COMMENT '轮播图5',
  `ctime` varchar(11) DEFAULT NULL COMMENT '添加时间',
  `is_activity` tinyint(2) DEFAULT '0' COMMENT '是否活动0否1是',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态',
  `is_duobao` tinyint(1) NOT NULL DEFAULT '1' COMMENT '2一元夺宝分类',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_product_cate
-- ----------------------------
INSERT INTO `ysk_product_cate` VALUES ('5', '0', '服饰', 'test', '/Uploads/image/touxiang/2017-12-27/5a43124b316c1.png', '0', '0', '0', null, null, null, null, null, '1508125176', '0', null, '1', '1');
INSERT INTO `ysk_product_cate` VALUES ('8', '0', '餐饮', 'test', '/Uploads/image/touxiang/2017-12-27/5a43126bd052b.png', '0', '0', '0', null, null, null, null, null, '1508125567', '0', null, '1', '2');
INSERT INTO `ysk_product_cate` VALUES ('15', '0', '酒店', 'test', '/Uploads/image/touxiang/2017-12-27/5a43128769fdb.png', '0', '0', '0', null, null, null, null, null, '1508513711', '0', null, '1', '3');
INSERT INTO `ysk_product_cate` VALUES ('16', '0', '旅游', 'test', '/Uploads/image/touxiang/2017-12-27/5a4312a06ba97.png', '0', '0', '0', null, null, null, null, null, '1508513760', '0', null, '1', '4');
INSERT INTO `ysk_product_cate` VALUES ('22', '0', '科技', 'test', '/Uploads/image/touxiang/2017-12-27/5a4312b7ba490.png', '0', '0', '0', null, null, null, null, null, '1508515392', '0', null, '1', '5');
INSERT INTO `ysk_product_cate` VALUES ('23', '0', '养生', 'test', '/Uploads/image/touxiang/2017-12-27/5a4312d6381f6.png', '0', '0', '0', null, null, null, null, null, '1508515569', '0', null, '1', '6');
INSERT INTO `ysk_product_cate` VALUES ('24', '0', '美容', 'test', '/Uploads/image/touxiang/2017-12-27/5a4312e50c2f0.png', '0', '0', '0', null, null, null, null, null, '1508515811', '0', null, '1', '7');
INSERT INTO `ysk_product_cate` VALUES ('25', '0', '特产', 'test', '/Uploads/image/touxiang/2017-12-27/5a4312f3c526a.png', '0', '0', '0', null, null, null, null, null, '1508516000', '0', null, '1', '8');
INSERT INTO `ysk_product_cate` VALUES ('35', '0', '生鲜', null, '/Uploads/image/touxiang/2017-12-27/5a43131342991.png', '0', '0', '0', null, null, null, null, null, '1510280398', '0', null, '1', '9');
INSERT INTO `ysk_product_cate` VALUES ('36', '0', '其它', null, '/Uploads/image/touxiang/2017-12-27/5a431328ed687.png', '0', '0', '0', null, null, null, null, null, '1510280422', '0', null, '1', '10');

-- ----------------------------
-- Table structure for `ysk_product_detail`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_product_detail`;
CREATE TABLE `ysk_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `type_id` int(11) DEFAULT NULL COMMENT '类型ID',
  `name` varchar(120) NOT NULL COMMENT '商品名',
  `s_desc` text COMMENT '商品描述',
  `price` decimal(8,0) NOT NULL COMMENT '现价',
  `old_price` decimal(8,2) DEFAULT NULL COMMENT '原价',
  `buy_num` int(11) DEFAULT '0' COMMENT '付款人数',
  `pic` varchar(160) NOT NULL COMMENT '商品封面图',
  `pic1` varchar(160) DEFAULT NULL COMMENT '轮播图1',
  `pic2` varchar(160) DEFAULT NULL COMMENT '轮播图2',
  `pic3` varchar(160) DEFAULT NULL COMMENT '轮播图3',
  `pic4` varchar(160) DEFAULT NULL COMMENT '轮播图4',
  `pic5` varchar(160) DEFAULT NULL COMMENT '轮播图5',
  `freight` decimal(8,2) DEFAULT '0.00' COMMENT '运费',
  `address` varchar(50) DEFAULT NULL COMMENT '发货地址',
  `ctime` int(11) DEFAULT NULL COMMENT '添加时间',
  `is_sort` tinyint(5) DEFAULT '0' COMMENT '排序',
  `is_hot` tinyint(2) DEFAULT '1' COMMENT '是否热门',
  `color_cate` varchar(250) DEFAULT NULL COMMENT '颜色',
  `csize` varchar(250) DEFAULT NULL COMMENT '尺码',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `praise_num` int(11) DEFAULT '0' COMMENT '点赞人数',
  `content` text COMMENT '商品详情',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否启用0否1是',
  `jifen_nums` decimal(11,0) NOT NULL DEFAULT '0' COMMENT '积分数量',
  `jifen_type` varchar(25) DEFAULT NULL COMMENT '积分类型1:鸡场积分 2:果园积分 3:渔场积分',
  `xiaofei_bili` int(9) DEFAULT '10' COMMENT '消费积分使用比例',
  `is_duobao` tinyint(1) DEFAULT '1' COMMENT '1->普通商品,2->一元夺宝',
  `kaijiang_nums` int(11) DEFAULT '0' COMMENT '达到多少数量开奖',
  `sanji_use` int(8) DEFAULT '1' COMMENT '三级使用比例',
  `shangjia` int(11) NOT NULL DEFAULT '0' COMMENT '上传用户id默认为0',
  `seluid` int(11) DEFAULT NULL COMMENT '竞标选中uid',
  `count_price` decimal(11,2) DEFAULT '0.00' COMMENT '结算价格',
  `producs_pingjia` text COMMENT '商品评价',
  `gr_hot` int(1) NOT NULL DEFAULT '0' COMMENT '个人店铺-1-火热0-普通',
  `gr_new` int(1) NOT NULL DEFAULT '0' COMMENT '个人店铺-1-最新0-普通',
  `gr_tuijian` int(1) NOT NULL DEFAULT '0' COMMENT '个人店铺-1-推荐0-普通',
  `is_new` int(1) NOT NULL DEFAULT '1' COMMENT '是否最新',
  `is_tuijian` int(1) NOT NULL DEFAULT '1' COMMENT '是否推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_product_detail
-- ----------------------------
INSERT INTO `ysk_product_detail` VALUES ('182', '25', '123', null, '123', null, '0', '/Uploads/image/product/5f45d04704c4b.jpg', '', '', '', '', '', null, null, '1598410846', '0', '1', null, null, '977', '0', '&lt;p&gt;gggg&lt;/p&gt;\r\n', null, '0', '', null, '1', null, null, '0', null, '0.00', null, '0', '0', '0', '1', '1');
INSERT INTO `ysk_product_detail` VALUES ('183', '23', '12', null, '123', null, '0', '/Uploads/image/product/5f509a0161095.png', '', '', '', '', '', null, null, '1599117840', '0', '1', null, null, '32', '0', '&lt;p&gt;是&lt;/p&gt;\r\n', null, '0', '', null, '1', null, null, '0', null, '0.00', null, '0', '0', '0', '1', '1');
INSERT INTO `ysk_product_detail` VALUES ('184', '25', '22', null, '13', null, '0', '/Uploads/image/product/5f509b7faab52.jpg', '', '', '', '', '', null, null, '1599118208', '0', '1', null, null, '2', '0', '&lt;p&gt;是&lt;/p&gt;\r\n', null, '0', '', null, '1', null, null, '0', null, '0.00', null, '0', '0', '0', '1', '1');
INSERT INTO `ysk_product_detail` VALUES ('185', '24', '44', null, '2', null, '0', '/Uploads/image/product/5f509c695e69e.jpg', '', '', '', '', '', null, null, '1599118445', '0', '1', null, null, '2', '0', '&lt;p&gt;是&lt;/p&gt;\r\n', null, '0', '', null, '1', null, null, '0', null, '0.00', null, '0', '0', '0', '1', '1');

-- ----------------------------
-- Table structure for `ysk_proxy`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_proxy`;
CREATE TABLE `ysk_proxy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `province` int(11) NOT NULL COMMENT '省份',
  `city` int(11) NOT NULL COMMENT '城市',
  `time` int(11) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_proxy
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_qingsaonums`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_qingsaonums`;
CREATE TABLE `ysk_qingsaonums` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '受益期间内清扫次数',
  `farm_types` tinyint(1) NOT NULL COMMENT '农场类型',
  `day_nums` int(11) NOT NULL DEFAULT '0' COMMENT '收益天数',
  `land_id` int(11) NOT NULL COMMENT '操作土地对应id',
  `qingsao_date` date NOT NULL COMMENT '到期时间',
  `qingsao_uid` int(11) NOT NULL COMMENT '会员id',
  `qingsao_times` date NOT NULL COMMENT '清扫时间',
  `is_select` date NOT NULL COMMENT '1未查询过,2->已经查询过',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `land_id` (`land_id`) USING BTREE,
  KEY `qingsao_uid` (`qingsao_uid`) USING BTREE,
  KEY `farm_types` (`farm_types`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_qingsaonums
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_qingsaorecord`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_qingsaorecord`;
CREATE TABLE `ysk_qingsaorecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '清扫记录详情表',
  `uid` int(11) NOT NULL COMMENT '清扫会员id',
  `qingsao_time` date NOT NULL COMMENT '清扫时间',
  `qingsao_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '清扫哪个农场的',
  `qingsao_id` int(11) NOT NULL COMMENT '清扫地对应的id',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `qingsao_id` (`qingsao_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_qingsaorecord
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_sanjione`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_sanjione`;
CREATE TABLE `ysk_sanjione` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '三级分销',
  `first` float(8,2) NOT NULL COMMENT '一级比例',
  `second` float(8,2) NOT NULL COMMENT '二级比例',
  `third` float(8,2) NOT NULL COMMENT '三级比例',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_sanjione
-- ----------------------------
INSERT INTO `ysk_sanjione` VALUES ('1', '0.30', '0.20', '0.10');

-- ----------------------------
-- Table structure for `ysk_sanjithree`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_sanjithree`;
CREATE TABLE `ysk_sanjithree` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '三级分销',
  `first` float(8,2) NOT NULL COMMENT '一级比例',
  `second` float(8,2) NOT NULL COMMENT '二级比例',
  `third` float(8,2) NOT NULL COMMENT '三级比例',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_sanjithree
-- ----------------------------
INSERT INTO `ysk_sanjithree` VALUES ('1', '0.30', '0.20', '0.10');

-- ----------------------------
-- Table structure for `ysk_sanjitwo`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_sanjitwo`;
CREATE TABLE `ysk_sanjitwo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '三级分销',
  `first` float(8,2) NOT NULL COMMENT '一级比例',
  `second` float(8,2) NOT NULL COMMENT '二级比例',
  `third` float(8,2) NOT NULL COMMENT '三级比例',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_sanjitwo
-- ----------------------------
INSERT INTO `ysk_sanjitwo` VALUES ('1', '0.30', '0.20', '0.12');

-- ----------------------------
-- Table structure for `ysk_seed_to_fruit`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_seed_to_fruit`;
CREATE TABLE `ysk_seed_to_fruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `num` int(11) NOT NULL COMMENT '总种子数量',
  `fee` decimal(14,2) NOT NULL COMMENT '手续费',
  `create_time` int(11) NOT NULL,
  `fruit` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '扣除手续费后的数量',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_seed_to_fruit
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_shandui`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_shandui`;
CREATE TABLE `ysk_shandui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_num` decimal(14,0) DEFAULT NULL COMMENT '数量',
  `pay_no` char(20) NOT NULL,
  `pay_img` varchar(255) DEFAULT NULL,
  `pay_time` int(14) DEFAULT NULL,
  `type` int(2) DEFAULT '1' COMMENT '1:sc,2:sv',
  `usdt` char(255) DEFAULT NULL,
  `uid` int(12) DEFAULT NULL,
  `status` int(2) DEFAULT '0',
  `is_lin` int(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ysk_shandui
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_shifeijl`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_shifeijl`;
CREATE TABLE `ysk_shifeijl` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '施肥表id ',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `shifei_num` decimal(13,2) NOT NULL COMMENT '施肥数量',
  `farm_id` int(11) NOT NULL COMMENT '农田id',
  `tudi_type` tinyint(4) NOT NULL COMMENT '土地类型:1黄土地，2红土地，3黑土地',
  `shifei_time` int(11) NOT NULL COMMENT '施肥时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=458 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_shifeijl
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_shop_banner`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_shop_banner`;
CREATE TABLE `ysk_shop_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图ID',
  `name` varchar(126) DEFAULT NULL COMMENT '轮播图名称',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `url` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `ctime` varchar(20) DEFAULT NULL COMMENT '创建时间',
  `s_sort` tinyint(5) DEFAULT '0' COMMENT '排序',
  `s_desc` varchar(120) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_shop_banner
-- ----------------------------
INSERT INTO `ysk_shop_banner` VALUES ('1', '夏装新时尚', '/Themes/Shop/Public/images/banner.jpg', '#', '1506350099', '0', '描述');
INSERT INTO `ysk_shop_banner` VALUES ('2', '夏装新时尚', '/Themes/Shop/Public/images/banner.jpg', '#', '1506350099', '0', '描述');
INSERT INTO `ysk_shop_banner` VALUES ('3', '夏装新时尚', '/Themes/Shop/Public/images/banner.jpg', '#', '1506350099', '0', '描述');
INSERT INTO `ysk_shop_banner` VALUES ('4', '夏装新时尚', '/Themes/Shop/Public/images/banner.jpg', '#', '1506350099', '0', '描述');
INSERT INTO `ysk_shop_banner` VALUES ('5', '夏装新时尚', '/Themes/Shop/Public/images/banner.jpg', '#', '1506350099', '0', '描述');

-- ----------------------------
-- Table structure for `ysk_shouge`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_shouge`;
CREATE TABLE `ysk_shouge` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '收割表id主键',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `farm_id` int(11) NOT NULL COMMENT '农田id',
  `farm_type` tinyint(4) NOT NULL COMMENT '农田类型：1黄土地 2.红土地 3黑土地',
  `shouge_num` decimal(13,2) NOT NULL COMMENT '收割数量',
  `shouge_time` int(11) NOT NULL COMMENT '收割时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=688 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_shouge
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_sow`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_sow`;
CREATE TABLE `ysk_sow` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '播种记录表id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `farm_id` tinyint(4) NOT NULL COMMENT '农田id',
  `sow_num` int(11) NOT NULL COMMENT '播种数量',
  `farm_type` tinyint(4) NOT NULL COMMENT '土地类型：1.黄土地 2.红土地 3.黑土地',
  `sow_type` varchar(15) NOT NULL COMMENT '播种类型',
  `sow_time` int(11) NOT NULL COMMENT '播种时间',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '播种状态  0隐藏 1显示',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=560 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_sow
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_steal_detail`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_steal_detail`;
CREATE TABLE `ysk_steal_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '种子奖励表id  ',
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `num` char(20) NOT NULL COMMENT '推荐人id',
  `fid` int(11) NOT NULL COMMENT '种子数量',
  `create_time` int(11) NOT NULL COMMENT '奖励时间',
  `type_name` varchar(20) NOT NULL COMMENT '状态',
  `username` varchar(20) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `datestr` varchar(20) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '0-取偷 1-被偷',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=928 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_steal_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_store`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_store`;
CREATE TABLE `ysk_store` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户id',
  `cangku_num` decimal(13,5) NOT NULL DEFAULT '0.00000' COMMENT '钱包余额',
  `sc` decimal(13,4) DEFAULT '0.0000' COMMENT 'sv钱包',
  `st` decimal(13,4) DEFAULT '0.0000' COMMENT 'st',
  `ss` decimal(13,4) DEFAULT '0.0000' COMMENT 'ss',
  `zongzc` decimal(13,4) DEFAULT '0.0000' COMMENT '总资产',
  `sv` decimal(13,4) DEFAULT '0.0000' COMMENT 'sv',
  `dt_jifen` decimal(13,4) DEFAULT '0.0000',
  `fengmi_num` decimal(13,4) DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_store
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_tcp_config`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_tcp_config`;
CREATE TABLE `ysk_tcp_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '挑粪/采蜜/扑鱼设置表',
  `farm_type` tinyint(1) NOT NULL COMMENT '1->鸡窝挑粪设置,2->渔场扑鱼设置,3->果园好友',
  `dai_dets` int(2) NOT NULL COMMENT '对应第几代',
  `earns_bili` float(10,2) NOT NULL COMMENT '可拿收益比例',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_tcp_config
-- ----------------------------
INSERT INTO `ysk_tcp_config` VALUES ('1', '1', '1', '0.07');
INSERT INTO `ysk_tcp_config` VALUES ('2', '1', '2', '0.05');
INSERT INTO `ysk_tcp_config` VALUES ('3', '1', '3', '0.03');
INSERT INTO `ysk_tcp_config` VALUES ('4', '3', '3', '0.05');
INSERT INTO `ysk_tcp_config` VALUES ('5', '3', '4', '0.03');

-- ----------------------------
-- Table structure for `ysk_tiaofen`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_tiaofen`;
CREATE TABLE `ysk_tiaofen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '挑粪/采蜜/捕鱼',
  `type` tinyint(1) NOT NULL COMMENT '1 挑粪 2采蜜 3 捕鱼',
  `tf_date` datetime NOT NULL COMMENT '挑粪时间',
  `tf_id` int(11) NOT NULL COMMENT '从谁身上获取的',
  `tf_nums` decimal(11,2) NOT NULL COMMENT '挑粪数量',
  `fiaofen_uid` varchar(30) NOT NULL COMMENT '挑过我粪的上级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_tiaofen
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_tixian`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_tixian`;
CREATE TABLE `ysk_tixian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '订单号',
  `member_id` int(11) NOT NULL COMMENT '用户id',
  `zong_rmb` decimal(15,2) NOT NULL COMMENT '提现金额',
  `tx_rmb` decimal(15,2) NOT NULL COMMENT '实际到账金额',
  `pay_type` int(11) NOT NULL COMMENT '提现方式类型 1:微信 2:支付宝 3:银行卡4聚宝提现',
  `time` datetime NOT NULL COMMENT '时间',
  `state` int(1) NOT NULL DEFAULT '1' COMMENT '状t态 1->申请中，2->已通过 3->已拒绝',
  `refuse_rea` text CHARACTER SET utf8 COMMENT '拒绝说明',
  `zhifu_type` tinyint(1) NOT NULL COMMENT '哪种积分提现1佣金提现,2代理佣金提现,3农联积分提现，4鸡分提现，5鱼库积分提现，6果园积分提现',
  `give_xiaofei` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '赠送消费积分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_tixian
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_tool`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_tool`;
CREATE TABLE `ysk_tool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `t_name` varchar(20) NOT NULL DEFAULT '',
  `t_num` int(11) NOT NULL DEFAULT '0' COMMENT '价格',
  `t_type` tinyint(1) NOT NULL DEFAULT '0',
  `t_month` tinyint(4) NOT NULL DEFAULT '0',
  `t_fieldname` varchar(20) DEFAULT NULL,
  `t_value` tinyint(4) NOT NULL DEFAULT '1',
  `t_img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_tool
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_trading`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_trading`;
CREATE TABLE `ysk_trading` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '出售数量',
  `sell_id` int(11) NOT NULL DEFAULT '0' COMMENT '出售人ID',
  `sell_account` varchar(50) NOT NULL,
  `sell_username` varchar(20) DEFAULT NULL,
  `buy_id` int(11) NOT NULL DEFAULT '0' COMMENT '购买者ID',
  `buy_account` varchar(50) NOT NULL COMMENT '购买者账号',
  `buy_username` varchar(20) DEFAULT NULL COMMENT '购买者姓名',
  `fee_num` decimal(11,2) NOT NULL COMMENT '手续费',
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0-出售成功 1-买家确认  2-买家确认 3-取消交易',
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sell_id` (`sell_id`) USING BTREE,
  KEY `buy_id` (`buy_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_trading
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_trading_free`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_trading_free`;
CREATE TABLE `ysk_trading_free` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '出售数量',
  `sell_id` int(11) NOT NULL DEFAULT '0' COMMENT '出售人ID',
  `sell_account` varchar(50) NOT NULL,
  `sell_username` varchar(20) DEFAULT NULL,
  `buy_id` int(11) NOT NULL DEFAULT '0' COMMENT '购买者ID',
  `buy_account` varchar(50) DEFAULT NULL COMMENT '购买者账号',
  `buy_username` varchar(20) DEFAULT NULL COMMENT '购买者姓名',
  `fee_num` decimal(11,2) NOT NULL COMMENT '手续费',
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0-出售成功 1-买家确认  2-买家确认 3-取消交易',
  `img` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sell_id` (`sell_id`) USING BTREE,
  KEY `buy_id` (`buy_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_trading_free
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_tranmoney`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_tranmoney`;
CREATE TABLE `ysk_tranmoney` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pay_id` int(10) DEFAULT NULL COMMENT '支付的会员',
  `get_id` int(10) DEFAULT NULL COMMENT '收到转账用户id',
  `get_nums` decimal(10,2) DEFAULT '0.00' COMMENT '转账总金额',
  `get_time` char(30) DEFAULT '0' COMMENT '转账时间',
  `get_type` tinyint(2) DEFAULT '0',
  `now_nums` decimal(11,2) DEFAULT '0.00' COMMENT '兑换之后当前余额 ',
  `now_nums_get` decimal(11,2) DEFAULT '0.00' COMMENT '兑换之后当前余额 ',
  `is_release` tinyint(1) DEFAULT '0' COMMENT '0->未释放转账,1->1以释放转账',
  `my` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1,sv订单；2.sc',
  `status` int(11) NOT NULL COMMENT '1:加；2减',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=81691 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_tranmoney
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_trans`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_trans`;
CREATE TABLE `ysk_trans` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '挂单中心',
  `payout_id` int(10) DEFAULT '0' COMMENT '转出余额会员id',
  `pid` int(11) DEFAULT NULL,
  `payin_id` int(10) DEFAULT '0' COMMENT '转入会员id',
  `pay_nums` decimal(11,2) DEFAULT '0.00' COMMENT '转出数量',
  `pay_state` tinyint(1) DEFAULT '0' COMMENT '订单状态:0->默认上架,1->有人买入,2->已打款,3->确认到款(已完成),4->卖家已投诉,5->买家已投诉',
  `pay_time` char(30) DEFAULT NULL COMMENT '订单生成时间',
  `pay_no` char(30) DEFAULT NULL COMMENT '订单编号',
  `trade_notes` text COMMENT '订单备注',
  `trans_type` tinyint(1) DEFAULT '0' COMMENT '0->买入,1->卖出',
  `trans_img` varchar(100) DEFAULT NULL COMMENT '打款凭证',
  `get_moneytime` char(50) DEFAULT NULL COMMENT '收到款时间',
  `chaijie` varchar(11) DEFAULT NULL COMMENT '拆解',
  `is_chaijie` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:未拆解1:已拆解',
  `peo_num` int(11) NOT NULL DEFAULT '0' COMMENT '匹配成功后人数',
  `my` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1,资产订单：2,积分订单',
  `is_dj` tinyint(1) NOT NULL COMMENT '是否冻结0：未冻结1：冻结',
  `dj_time` int(11) NOT NULL COMMENT '冻结时间(将来)',
  `dj_set_time` int(11) NOT NULL COMMENT '冻结设置时间(现在)',
  `is_linqu` int(11) NOT NULL DEFAULT '0' COMMENT '是否已经领取冻结金额0已领取1未领取',
  `pipeitime` int(11) NOT NULL DEFAULT '0' COMMENT '匹配时间',
  `jiangli` int(3) NOT NULL DEFAULT '0' COMMENT '两小时内打款奖励',
  `dt_jifen` int(1) NOT NULL DEFAULT '0' COMMENT '0.未给推荐人动态积分；1.已给推荐人动态积分',
  `is_lin` int(11) NOT NULL DEFAULT '0' COMMENT '是否已经领取冻结金额0未领取1已领取',
  `cunchu_num` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '存储',
  `dakuan_time` int(11) NOT NULL COMMENT '打款时间',
  `tran_grade` int(11) NOT NULL COMMENT '订单等级id',
  `is_kou` int(2) DEFAULT '0',
  `yugou` int(2) DEFAULT '0',
  `wid` int(11) DEFAULT NULL,
  `match` int(11) DEFAULT NULL COMMENT '匹配的id',
  `com_id` int(11) DEFAULT NULL COMMENT '一开始的订单主id',
  `dongjie` tinyint(1) DEFAULT '1',
  `diff_num` decimal(10,0) DEFAULT '1',
  `is_fen` tinyint(1) DEFAULT '0' COMMENT '是否被封，0，否，1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=825 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_trans
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_trans_quxiao`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_trans_quxiao`;
CREATE TABLE `ysk_trans_quxiao` (
  `id` int(10) NOT NULL COMMENT '挂单中心',
  `payout_id` int(10) DEFAULT '0' COMMENT '转出余额会员id',
  `payin_id` int(10) DEFAULT '0' COMMENT '转入会员id',
  `pay_nums` decimal(11,2) DEFAULT '0.00' COMMENT '转出数量',
  `pay_state` tinyint(1) DEFAULT '0' COMMENT '订单状态:0->默认上架,1->有人买入,2->已打款,3->确认到款(已完成),4->取消',
  `pay_time` char(30) DEFAULT NULL COMMENT '订单生成时间',
  `pay_no` char(30) DEFAULT NULL COMMENT '订单编号',
  `card_id` int(10) DEFAULT NULL COMMENT '会员银行卡id',
  `trade_notes` text COMMENT '订单备注',
  `trans_type` tinyint(1) DEFAULT '0' COMMENT '0->买入,1->卖出,',
  `trans_img` varchar(100) DEFAULT NULL COMMENT '打款凭证',
  `get_moneytime` char(50) DEFAULT NULL COMMENT '收到款时间',
  `fee_nums` decimal(11,2) DEFAULT '0.00' COMMENT '手续费',
  `out_card` int(10) DEFAULT NULL COMMENT '买入会员银行卡id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_trans_quxiao
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_tuandui`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_tuandui`;
CREATE TABLE `ysk_tuandui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id_2` (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_tuandui
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_turntable`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_turntable`;
CREATE TABLE `ysk_turntable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `img` varchar(255) DEFAULT NULL COMMENT '商品图片',
  `gl` int(11) DEFAULT NULL COMMENT '商品概率',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ysk_turntable
-- ----------------------------
INSERT INTO `ysk_turntable` VALUES ('1', '20话费', '/Uploads/2020-08-28/5f48beaa2f34f.jpg', '10');
INSERT INTO `ysk_turntable` VALUES ('2', '30话费', '/Uploads/2020-08-28/5f48beaa2faf0.jpg', '10');
INSERT INTO `ysk_turntable` VALUES ('3', '50话费', '/Uploads/2020-08-28/5f48beaa34edc.jpg', '10');
INSERT INTO `ysk_turntable` VALUES ('4', '100话费', '/Uploads/2020-08-28/5f48beaa3567e.jpg', '9');
INSERT INTO `ysk_turntable` VALUES ('5', '500元', '/Uploads/2020-08-28/5f48beaa35a4e.jpg', '10');
INSERT INTO `ysk_turntable` VALUES ('6', '1000元', '/Uploads/2020-08-28/5f48beaa361ef.jpg', '10');
INSERT INTO `ysk_turntable` VALUES ('7', '2000元', '/Uploads/2020-08-28/5f48beaa36990.jpg', '10');
INSERT INTO `ysk_turntable` VALUES ('8', '手机', '/Uploads/2020-08-28/5f48beaa37131.jpg', '10');
INSERT INTO `ysk_turntable` VALUES ('9', '平板', '/Uploads/2020-08-28/5f48beaa378d3.jpg', '10');
INSERT INTO `ysk_turntable` VALUES ('10', '电脑', '/Uploads/2020-08-28/5f48beaa38074.jpg', '10');

-- ----------------------------
-- Table structure for `ysk_turntable_details`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_turntable_details`;
CREATE TABLE `ysk_turntable_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `gid` int(11) NOT NULL COMMENT '中奖id',
  `time` varchar(255) DEFAULT NULL COMMENT '中奖时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ysk_turntable_details
-- ----------------------------
INSERT INTO `ysk_turntable_details` VALUES ('42', '779747', '10', '1598602934');
INSERT INTO `ysk_turntable_details` VALUES ('43', '778904', '1', '1599039675');
INSERT INTO `ysk_turntable_details` VALUES ('44', '778904', '10', '1599039729');
INSERT INTO `ysk_turntable_details` VALUES ('45', '778904', '4', '1599039858');
INSERT INTO `ysk_turntable_details` VALUES ('41', '778904', '9', '1598518878');

-- ----------------------------
-- Table structure for `ysk_turntable_lv`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_turntable_lv`;
CREATE TABLE `ysk_turntable_lv` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '转盘抽奖概率',
  `one` int(11) unsigned NOT NULL DEFAULT '0',
  `two` int(11) unsigned NOT NULL DEFAULT '0',
  `three` int(11) unsigned NOT NULL DEFAULT '0',
  `four` int(11) unsigned NOT NULL DEFAULT '0',
  `five` int(11) unsigned NOT NULL DEFAULT '0',
  `six` int(11) unsigned NOT NULL DEFAULT '0',
  `seven` int(11) unsigned NOT NULL DEFAULT '0',
  `eight` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6000002 DEFAULT CHARSET=utf16 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_turntable_lv
-- ----------------------------
INSERT INTO `ysk_turntable_lv` VALUES ('6000001', '0', '0', '1', '1', '1', '1', '30', '70');

-- ----------------------------
-- Table structure for `ysk_ubanks`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_ubanks`;
CREATE TABLE `ysk_ubanks` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '会员绑定银行卡',
  `card_id` int(2) NOT NULL COMMENT '银行卡id',
  `user_id` int(10) NOT NULL COMMENT '会员id',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-》默认,1->默认银行卡',
  `add_time` char(30) NOT NULL COMMENT '添加时间',
  `hold_name` char(50) NOT NULL COMMENT '持卡人姓名',
  `card_number` char(19) NOT NULL COMMENT '银行卡号',
  `open_card` char(100) NOT NULL COMMENT '开户支行',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=419 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_ubanks
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_ucoins`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_ucoins`;
CREATE TABLE `ysk_ucoins` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '每个人账户对应币',
  `cid` int(10) NOT NULL COMMENT '币对应id',
  `c_nums` decimal(11,4) NOT NULL DEFAULT '0.0000' COMMENT '对应币数量',
  `c_uid` int(10) NOT NULL COMMENT '对应的会员id',
  `djie_nums` decimal(11,4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_ucoins
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_uesources`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_uesources`;
CREATE TABLE `ysk_uesources` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT ' 用户资源表(拆分比例,风车拥有数量)',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `chaifen_bili` float(8,4) NOT NULL DEFAULT '0.0000' COMMENT '拆分比例',
  `jiwo_earns` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '鸡窝收益',
  `count_time` date NOT NULL COMMENT '计算拆分/收益时间',
  `earns` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '记录收益',
  `tiaofen_earns` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '挑粪收益',
  `guoyuan_earns` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '果园施肥收益',
  `yuchang_earns` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '渔场喂鱼收益',
  `buyu_earns` decimal(11,3) NOT NULL DEFAULT '0.000' COMMENT '捕鱼收益',
  `guoyuan_chaifen` float(11,3) NOT NULL DEFAULT '0.000' COMMENT '果园拆分',
  `yuchang_chaifen` float(11,3) NOT NULL DEFAULT '0.000' COMMENT '渔场拆分',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id` (`id`) USING BTREE COMMENT '表id',
  KEY `uid` (`uid`) USING BTREE COMMENT '用户id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_uesources
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_upgoods`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_upgoods`;
CREATE TABLE `ysk_upgoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商户产品表',
  `uid` int(11) NOT NULL COMMENT '商户id',
  `goods_id` int(11) NOT NULL COMMENT '产品id',
  `uptime` int(20) NOT NULL COMMENT '产品上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=276 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_upgoods
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_upgrade`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_upgrade`;
CREATE TABLE `ysk_upgrade` (
  `id` varchar(11) NOT NULL COMMENT '用户升级订单id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `up` varchar(11) NOT NULL COMMENT '升级等级',
  `shouid` int(11) NOT NULL COMMENT '收款id',
  `state` int(11) NOT NULL DEFAULT '0' COMMENT '订单状态0-未付款1-已付款2-已通过3-未通过',
  `paytime` int(11) NOT NULL DEFAULT '0' COMMENT '支付时间',
  `src` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `money` decimal(10,0) DEFAULT '0' COMMENT '升级金额',
  `type` int(11) DEFAULT NULL COMMENT '1.第一张订单2.第二张订单3.第三张订单',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ysk_upgrade
-- ----------------------------
INSERT INTO `ysk_upgrade` VALUES ('SQ848663', '779757', '0', '779754', '2', '1599102659', '/Uploads/2020-09-03/5f505ec3be7f1.png', '396', '1');
INSERT INTO `ysk_upgrade` VALUES ('IB143038', '779757', '0', '778904', '2', '1599102663', '/Uploads/2020-09-03/5f505ec703938.png', '10', '2');
INSERT INTO `ysk_upgrade` VALUES ('QT196075', '779757', '0', '778904', '2', '1599102666', '/Uploads/2020-09-03/5f505eca8007e.jpg', '10', '3');
INSERT INTO `ysk_upgrade` VALUES ('IR941635', '779757', '0', '779753', '2', '1599102669', '/Uploads/2020-09-03/5f505ecd88da2.png', '20', '4');
INSERT INTO `ysk_upgrade` VALUES ('TZ268283', '779757', '0', '778904', '2', '1599102672', '/Uploads/2020-09-03/5f505ed02aea5.png', '20', '5');
INSERT INTO `ysk_upgrade` VALUES ('TQ904858', '779757', '0', '778904', '2', '1599102674', '/Uploads/2020-09-03/5f505ed2c380d.png', '40', '6');
INSERT INTO `ysk_upgrade` VALUES ('ZE537228', '779757', '0', '778904', '2', '1599102677', '/Uploads/2020-09-03/5f505ed53e773.png', '164', '8');

-- ----------------------------
-- Table structure for `ysk_upload`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_upload`;
CREATE TABLE `ysk_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'UID',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `url` varchar(255) DEFAULT NULL COMMENT '文件链接',
  `ext` char(4) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) DEFAULT NULL COMMENT '文件md5',
  `sha1` char(40) DEFAULT NULL COMMENT '文件sha1编码',
  `location` varchar(15) NOT NULL DEFAULT '' COMMENT '文件存储位置',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '修改时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件上传表';

-- ----------------------------
-- Records of ysk_upload
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_user`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_user`;
CREATE TABLE `ysk_user` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL COMMENT '上级ID',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '上上级ID',
  `ggid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上上上级ID',
  `account` char(20) NOT NULL DEFAULT '0' COMMENT '用户账号',
  `mobile` char(20) NOT NULL COMMENT '用户手机号',
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `safety_pwd` char(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT '安全密码',
  `safety_salt` char(5) CHARACTER SET latin1 NOT NULL,
  `login_pwd` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `login_salt` char(3) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `sex` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-女 1-男',
  `reg_date` int(11) NOT NULL COMMENT '注册时间',
  `reg_ip` varchar(20) NOT NULL COMMENT '注册IP',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户锁定  1 不锁  0拉黑  -1 删除',
  `activate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1-已激活 0-未激活',
  `session_id` varchar(225) DEFAULT NULL,
  `note` text,
  `deep` int(11) NOT NULL DEFAULT '0',
  `path` text,
  `user_credit` int(11) NOT NULL DEFAULT '5' COMMENT '用户星级',
  `img_head` varchar(100) NOT NULL DEFAULT 'toux-icon.png' COMMENT '用户头像',
  `bank_uname` varchar(20) NOT NULL COMMENT '开户名',
  `open_card` varchar(255) NOT NULL COMMENT '开户行',
  `bank_id` int(11) NOT NULL COMMENT '银行卡id',
  `card_number` char(20) NOT NULL COMMENT '银行卡号',
  `releas_rate` float(10,4) NOT NULL DEFAULT '0.0000' COMMENT '增加的释放率',
  `releas_time` char(40) NOT NULL DEFAULT '1' COMMENT '释放时间',
  `is_reward` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0->默认未领取奖金,1->已经领取积分释放',
  `today_releas` float(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '今日释放率',
  `is_dailishang` tinyint(1) NOT NULL DEFAULT '0' COMMENT '2->商家',
  `wallet_add` text COMMENT '个人钱包地址',
  `vip_grade` tinyint(1) DEFAULT '0' COMMENT '0：体验会员，1:v71，2:v72，3:v73，4:v74 ,5:v75，6:v76,7:v77',
  `yinbi` tinyint(1) DEFAULT '0',
  `quanxian` varchar(10) DEFAULT NULL COMMENT '权限',
  `idcard` char(20) DEFAULT NULL COMMENT '身份证',
  `zfb` varchar(20) DEFAULT NULL COMMENT '支付宝账号',
  `wx` varchar(20) DEFAULT NULL COMMENT '微信账号',
  `usdt` varchar(255) DEFAULT NULL COMMENT 'usdt地址',
  `renzhen` int(2) DEFAULT '0' COMMENT '1已实名认证；0未实名',
  `wx_img` varchar(255) DEFAULT NULL,
  `zfb_img` varchar(255) DEFAULT NULL,
  `is_jihuo` int(2) DEFAULT '0' COMMENT '0:未激活；1:已激活',
  `is_kou` int(2) DEFAULT '0',
  `yugou` int(2) DEFAULT '0',
  `q_grade` int(2) DEFAULT '0',
  `userlevel` int(11) DEFAULT '0' COMMENT '用户等级',
  `loudan` int(11) DEFAULT '0' COMMENT '漏单数',
  `sktype` varchar(255) DEFAULT NULL,
  `skimg` varchar(255) DEFAULT NULL,
  `top5_new` int(11) DEFAULT '0' COMMENT '5级代理新人订单数',
  `top6_new` int(11) DEFAULT '0' COMMENT '6级代理新人订单数',
  `top7_new` int(11) DEFAULT '0' COMMENT '7级代理新人订单数',
  `top8_new` int(11) DEFAULT '0' COMMENT '8级代理新人订单数',
  `top9_new` int(11) DEFAULT '0' COMMENT '9级代理新人订单数',
  `is_first_order` int(11) DEFAULT '1' COMMENT '是否660首单   1->是  2->否',
  `turntable_num` int(11) DEFAULT '0' COMMENT '转盘机会',
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  UNIQUE KEY `account` (`account`) USING BTREE,
  KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=779758 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_user
-- ----------------------------
INSERT INTO `ysk_user` VALUES ('778904', '0', '0', '0', '13211111111', '13211111111', '测试1', '', '84d51347732babc3a27562bebd1378ad', '84a', '84d51347732babc3a27562bebd1378ad', '84a', '0', '1558358861', '112.17.247.75', '1', '0', 'g46td0atdobqvqgpa7qkfjf553', '', '22', '-8570-8599-8641-8658-8732-8733-778892-', '5', 'toux-icon.png', 'test', '义乌1', '6', '6217001460009198283', '0.0000', '1560736410', '0', '0.0000', '0', '', '1', '0', '', '430281199306035928', '15669510603', 'L 031363', '12nR2K9HqgfF5rhvrWKjUV8VCGzo2txJbp', '1', '/Uploads/Payvos/5ce6431d1503d.jpg', '/Uploads/Payvos/5ce4e20d3365e.png', '1', '1', '0', '0', '10', '2', null, null, '12', '12', '10', '14', '14', '2', '0');

-- ----------------------------
-- Table structure for `ysk_user_action`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_user_action`;
CREATE TABLE `ysk_user_action` (
  `ua_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(40) NOT NULL COMMENT 'frontend,backend',
  `user_id` int(11) NOT NULL,
  `uname` varchar(40) NOT NULL COMMENT '用户名',
  `add_time` varchar(40) NOT NULL COMMENT '加入时间',
  `info` varchar(255) NOT NULL COMMENT '行为描述',
  PRIMARY KEY (`ua_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=237 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户行为';

-- ----------------------------
-- Records of ysk_user_action
-- ----------------------------
INSERT INTO `ysk_user_action` VALUES ('234', '后台系统用户', '1', 'admin', '2018-11-27 23:25:34', '登录了后台系统');
INSERT INTO `ysk_user_action` VALUES ('235', '后台系统用户', '1', 'admin', '2020-08-24 16:14:10', '登录了后台系统');
INSERT INTO `ysk_user_action` VALUES ('236', '后台系统用户', '1', 'admin', '2020-08-26 10:58:38', '登录了后台系统');

-- ----------------------------
-- Table structure for `ysk_user_caimi`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_user_caimi`;
CREATE TABLE `ysk_user_caimi` (
  `uid` int(11) unsigned NOT NULL COMMENT '采蜜表',
  `num` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `datestr` char(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf16 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_user_caimi
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_user_copy`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_user_copy`;
CREATE TABLE `ysk_user_copy` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL COMMENT '上级ID',
  `gid` int(11) NOT NULL DEFAULT '0' COMMENT '上上级ID',
  `ggid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上上上级ID',
  `account` char(20) NOT NULL DEFAULT '0' COMMENT '用户账号',
  `mobile` char(20) NOT NULL COMMENT '用户手机号',
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(50) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `safety_pwd` char(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '' COMMENT '安全密码',
  `safety_salt` char(5) CHARACTER SET latin1 NOT NULL,
  `login_pwd` varchar(32) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `login_salt` char(3) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `sex` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-女 1-男',
  `reg_date` int(11) NOT NULL COMMENT '注册时间',
  `reg_ip` varchar(20) NOT NULL COMMENT '注册IP',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户锁定  1 不锁  0拉黑  -1 删除',
  `activate` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1-已激活 0-未激活',
  `session_id` varchar(225) DEFAULT NULL,
  `wx_no` varchar(20) DEFAULT '0' COMMENT '微信',
  `alipay` varchar(20) DEFAULT NULL,
  `note` text,
  `deep` int(11) NOT NULL DEFAULT '0',
  `path` text,
  `user_credit` int(11) NOT NULL DEFAULT '5' COMMENT '用户星级',
  `use_grade` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户等级',
  `img_head` varchar(100) NOT NULL DEFAULT 'toux-icon.png' COMMENT '用户头像',
  `bank_uname` varchar(20) NOT NULL COMMENT '开户名',
  `releas_rate` float(10,4) NOT NULL DEFAULT '0.0000' COMMENT '增加的释放率',
  `releas_time` char(40) NOT NULL DEFAULT '1' COMMENT '释放时间',
  `is_reward` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0->默认未领取奖金,1->已经领取积分释放',
  `today_releas` float(10,4) unsigned NOT NULL DEFAULT '0.0000' COMMENT '今日释放率',
  `is_dailishang` tinyint(1) NOT NULL DEFAULT '0' COMMENT '2->商家',
  `wallet_add` text NOT NULL COMMENT '个人钱包地址',
  PRIMARY KEY (`userid`) USING BTREE,
  UNIQUE KEY `mobile` (`mobile`) USING BTREE,
  UNIQUE KEY `account` (`account`) USING BTREE,
  KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=4064 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_user_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_user_dogeat`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_user_dogeat`;
CREATE TABLE `ysk_user_dogeat` (
  `uid` int(11) NOT NULL COMMENT '用户id',
  `num` int(11) NOT NULL COMMENT '总种子数量',
  `create_time` int(11) NOT NULL,
  `datestr` varchar(11) NOT NULL DEFAULT '0.00' COMMENT '扣除手续费后的数量',
  PRIMARY KEY (`uid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_user_dogeat
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_user_huafei`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_user_huafei`;
CREATE TABLE `ysk_user_huafei` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户每天产生的化肥',
  `huafei_num` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '当天产生的肥料',
  `datestr` char(20) CHARACTER SET utf16 NOT NULL DEFAULT '',
  `uid_str` varchar(255) NOT NULL DEFAULT '',
  `pid_caimi` int(11) NOT NULL DEFAULT '0' COMMENT '一级采蜜',
  `gid_caimi` int(11) NOT NULL DEFAULT '0' COMMENT '二级采蜜',
  `ggid_caimi` int(11) NOT NULL DEFAULT '0' COMMENT '三级采蜜',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_user_huafei
-- ----------------------------
INSERT INTO `ysk_user_huafei` VALUES ('779151', '0.00', '', '', '0', '0', '0');

-- ----------------------------
-- Table structure for `ysk_user_level`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_user_level`;
CREATE TABLE `ysk_user_level` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户ID   用户等级表',
  `nongfu_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '农夫',
  `zangao_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '藏獒数量 1-小狗 2-中狗 3-大狗',
  `mao_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '猫',
  `land_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '种树数量',
  `sell_num` int(11) NOT NULL DEFAULT '0' COMMENT '出售次数',
  `buy_num` int(11) NOT NULL DEFAULT '0' COMMENT '出售数量',
  `children_num` int(11) NOT NULL DEFAULT '0' COMMENT '用户直推人数',
  `ji_num` int(11) NOT NULL DEFAULT '0' COMMENT '鸡',
  `niao_num` int(11) NOT NULL DEFAULT '0' COMMENT '鸟',
  `user_level` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf16 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_user_level
-- ----------------------------
INSERT INTO `ysk_user_level` VALUES ('779151', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `ysk_user_seed`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_user_seed`;
CREATE TABLE `ysk_user_seed` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户种子',
  `zhongzi_num` decimal(11,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf16 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_user_seed
-- ----------------------------
INSERT INTO `ysk_user_seed` VALUES ('1', '0.00');
INSERT INTO `ysk_user_seed` VALUES ('779150', '20.00');

-- ----------------------------
-- Table structure for `ysk_user_tool_month`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_user_tool_month`;
CREATE TABLE `ysk_user_tool_month` (
  `uid` int(11) unsigned NOT NULL COMMENT '用户种子',
  `oneclick` int(11) NOT NULL DEFAULT '0',
  `buy_oneclick_time` int(11) NOT NULL DEFAULT '0',
  `end_oneclick_time` int(11) NOT NULL,
  `dogfood` int(11) NOT NULL COMMENT '狗粮',
  `buy_dogfood_time` int(11) NOT NULL DEFAULT '0',
  `end_dogfood_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf16 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_user_tool_month
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_verify_list`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_verify_list`;
CREATE TABLE `ysk_verify_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '认证列表',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `account` varchar(64) NOT NULL COMMENT '账号',
  `username` varchar(64) NOT NULL COMMENT '用户名',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '认证类型 1个人 2企业',
  `realname` varchar(64) NOT NULL COMMENT '真实姓名',
  `idcard` varchar(64) NOT NULL COMMENT '身份证号',
  `phone` varchar(15) NOT NULL COMMENT '手机号码',
  `up_idcard` varchar(128) DEFAULT NULL COMMENT '身份证正面',
  `down_idcard` varchar(128) DEFAULT NULL COMMENT '身份证反面',
  `hand_idcard` varchar(128) DEFAULT NULL COMMENT '手持身份证',
  `licence` varchar(128) DEFAULT NULL COMMENT '营业执照',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0未审核 1已通过审核 2未通过审核',
  `time` varchar(12) NOT NULL COMMENT '申请时间',
  `datestr` varchar(12) NOT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_verify_list
-- ----------------------------
INSERT INTO `ysk_verify_list` VALUES ('58', '778904', '13211111111', '测试1', '1', '123', '440803199808172418', '18344324057', '/Uploads/image/shop/2020-08-26/5f45cf6ad3b73.jpg', '/Uploads/image/shop/2020-08-26/5f45cf6ad46e5.jpg', null, null, '1', '1598410602', '20200826');

-- ----------------------------
-- Table structure for `ysk_wbao_detail`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_wbao_detail`;
CREATE TABLE `ysk_wbao_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '每个人账户对应币',
  `num` decimal(11,4) NOT NULL DEFAULT '0.0000' COMMENT '对应币数量',
  `dprice` decimal(10,4) DEFAULT NULL COMMENT '对应的会员id',
  `tprice` decimal(10,4) DEFAULT NULL,
  `create_time` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `crowds_id` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '1转出，2转入,3释放',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=57207 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_wbao_detail
-- ----------------------------

-- ----------------------------
-- Table structure for `ysk_wentype`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_wentype`;
CREATE TABLE `ysk_wentype` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型id',
  `title` varchar(255) NOT NULL COMMENT '类型名称',
  `addtime` varchar(222) NOT NULL COMMENT '增加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_wentype
-- ----------------------------
INSERT INTO `ysk_wentype` VALUES ('3', '帮助中心', '1515470302');
INSERT INTO `ysk_wentype` VALUES ('4', '商城介绍', '1515470316');
INSERT INTO `ysk_wentype` VALUES ('5', '介绍', '1515470332');
INSERT INTO `ysk_wentype` VALUES ('6', '联系客服', '1515850423');

-- ----------------------------
-- Table structure for `ysk_wenzhang`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_wenzhang`;
CREATE TABLE `ysk_wenzhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(255) NOT NULL COMMENT '栏目',
  `content` text NOT NULL COMMENT '内容',
  `addtime` varchar(233) NOT NULL COMMENT '上传时间',
  `type` varchar(255) NOT NULL COMMENT '类型',
  `tid` int(22) NOT NULL COMMENT '类型id',
  `linkone` varchar(222) DEFAULT NULL COMMENT '视频连接',
  `linktwo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ysk_wenzhang
-- ----------------------------
INSERT INTO `ysk_wenzhang` VALUES ('4', '介绍', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c298596437.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c29a988376.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c29ba53e13.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c29cf97db9.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c29db5ddad.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c29e86fa24.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c29f55f22b.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a061f5f8.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a131a4cf.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a2657711.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a3328797.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a3f2799c.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a4ac3451.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a5613335.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a62d490b.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a7235fa6.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a7d53f6a.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a89b24df.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-15/5a5c2a94c10e3.jpg&quot; style=&quot;margin:0 auto&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;Vpay是什么？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay是一个全面开放的网络支付平台，跟支付宝和微信一样，不同的是，Vpay是基于区块链技术开发的，能顺利实现点对点跨境转账，而且没有任何手续费。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;Vpay数字资产总量是多少？&lt;/strong&gt;&lt;/span&gt;\r\n\r\n&lt;p&gt;Vpay数字资产总量3.65亿&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;如何查询Vpay数字资产开源代码？&lt;/strong&gt;&lt;/span&gt;\r\n\r\n&lt;p&gt;查询Vpay数字资产开源代码的方法&lt;br /&gt;\r\n第一步，打开百度搜索&amp;ldquo;比特币钱包&amp;rdquo;&lt;br /&gt;\r\n第二步，点击&amp;ldquo;比特币钱包官网下载&amp;rdquo;&lt;br /&gt;\r\n第三步，找到&amp;quot;bitcoin&amp;quot;，点击&amp;ldquo;源代码&amp;rdquo;,这时候我们将跳转到一个国际查询开源代码的网站，&amp;ldquo;github.com&amp;quot;，并显示出来了比特币的开源代码&lt;br /&gt;\r\n第四步，点击左上角的&amp;ldquo;黑白猫&amp;rdquo;图像，回到首页&lt;br /&gt;\r\n第五步，在右上角的灰色框输入&amp;ldquo;Vpay&amp;quot;按回车键&lt;br /&gt;\r\n第六步，把搜索内容拉到最下面，我们就可以看到Vpay的开源代码了，这里还可以直接下载Vpay的PC冷钱包。&lt;br /&gt;\r\nPS：我们也可以直接访问&amp;ldquo;github.com&amp;quot;查找开源代码。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234)&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;Vpay运营模式是什么？&lt;/strong&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;\r\n\r\n&lt;p&gt;大家都知道，想打造一个全球的跨境支付平台！首要条件是要有大量的粉丝！没有人认可你的东西，就一文不值，跟当初的支付宝一样，几年前，放几百块在里面都怕不见了，到了现在，在支付宝里面十万，百万的人，大有人在吧！&lt;/p&gt;\r\n\r\n&lt;p&gt;既然作为全球支付软件，首先要考虑汇率的问题，Vpay采取区链块技术支持实时人民币，美元，欧元，英镑，日元&amp;hellip;&amp;hellip;等多币种实时兑换功能，秒到，且无损！&lt;/p&gt;\r\n\r\n&lt;p&gt;如何实现汇率之间恒定的问题，那我们需要一个媒介！就是数字资产，现阶段对接的是瑞波币的价格！实现各币种之间的兑换！&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;Vpay是虚拟货币吗？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;显而易见，像我们的比特币，采取的是物理挖矿的方式进行挖矿，你的币根本没有挖矿功能，肯定是假的数字资产！&lt;/p&gt;\r\n\r\n&lt;p&gt;我们的Vpay数字资产总量恒定3.65亿，是一个开源的虚拟货币，VpayLabs预挖1000万作为种子资产，用于市场推广和团队激励，剩余3.55亿Vpay数字资产用流通算力挖矿，通过用户参与流通挖矿的方式，让所有用户持有Vpay数字资产，最终达到完全去中心化。或许有人会问，国家现在都关停虚拟币交易平台了！个人的理解是这是个好事，有监管，才可以更好的发展！国家鼓励互联网金融的百花齐放，但是前提是所有脱离是实体经济的互联网金融只是理想中的空中楼阁，是一定要取缔的！&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;Vpay核心价值观是？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay核心价值观：流通产生价值&lt;br /&gt;\r\n流通：A转账给B的过程为流通&lt;br /&gt;\r\n增值：人与人第一次流通，系统赠送相应的积分，这个也可以说是我们的数字资产，人的价值进行挖矿！&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;每天红包封顶吗？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;每天红包任你点，上不封顶。&lt;br /&gt;\r\nVpay无国界支付&lt;br /&gt;\r\n投多少送600%米：&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投1米6米&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投10米60米&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投100米600米&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投1000米6000米&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投10000米60000米&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投20000米送120000&lt;br /&gt;\r\n1米起投，上不封顶&lt;br /&gt;\r\n按积分2&amp;permil;每天分红&lt;br /&gt;\r\n今天投米，明天分米&lt;br /&gt;\r\n每天可以提现，点对点交易！ 动态2&amp;permil;～2%～10%推广越多，释放越快&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;Vpay几个特性是？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;一：符合六大标准&lt;/strong&gt;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1去中心化&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2去中央账户&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;3点对点交易&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;4有序的进出&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;5投资自由&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;6风险自控&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;二：有效规避5大风险&lt;/strong&gt;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1政策风险&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2金流风险&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;3推广风险&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;4网络风险&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;5人脉风险&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;三：符合数字货币的5大属性&lt;/strong&gt;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1开源代码&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2恒量发行&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;3独立钱包&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;4大盘交易&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;5商业运用&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;Vpay的八大优势？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;1.拆分(原始发行1000万)&lt;br /&gt;\r\n2.互助(买进卖出点对点匹配打款)&lt;br /&gt;\r\n3.分红(每天最底2&amp;permil;释放)&lt;br /&gt;\r\n4.复利(放大倍增)&lt;br /&gt;\r\n5.虚拟币(区块链挖矿机制)&lt;br /&gt;\r\n6.数字资产(低进高出炒币)&lt;br /&gt;\r\n7.资产证券化(最高释放完再复投)&lt;br /&gt;\r\n8.消费返利（落地商家扫码支付）&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;为什么说Vpay有拆分优势？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay类似拆分盘，发行原始股1000万，经过市场的繁荣也进行稳定&amp;ldquo;拆分&amp;rdquo;，但Vpay又跟拆分盘不同，基本上所有拆分盘都要半年、一年甚至一年半才能回本，而Vpay投资当天就可以回本80%，最重要的一点是，Vpay对所有的做付出做动态的人很公平，能力越强，分享越多越快，拆得越快。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;为什么说Vpay有互助盘的高利息和良好体验，却没有互助盘的高风险？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay的静态利息可以达到每天1.2%，比国3等互助盘的利息还要高，Vpay也没有排单币、激活码的成本。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;为什么说Vpay有全返优势？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay不但全返而且返还的速度更快更多，不到3个月就可以回本，回本后还可以继续返还，永不出局。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;Vpay有投资门槛吗？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay就不存在在投资门槛的问题，有钱你可以投10块100块，甚至10万都可以投，钱少些你就投资10块钱，一包烟钱，一单停车费都可以当作一份投资。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;静态怎么赚钱？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;每天1％100天回本，不复投的情况下，你可以选择对冲，或者平台挂卖，对冲，赠送80%积分，平台挂卖不赠送积分，但是你的积分只增不减，所以说，100天到本金收回，接下来的都是赚的，一年撬动3.65倍增值，复投就的话那就更加有魅力了！&lt;/p&gt;\r\n\r\n&lt;p&gt;拥有1万积分=日薪20左右月薪600左右 年薪7200&lt;br /&gt;\r\n拥有5万积分=日薪100左右 月薪3000左右 年薪3.6万&lt;br /&gt;\r\n拥有10万积分=日薪200左右 月薪6000左右 年薪7.2万&lt;br /&gt;\r\n拥有50万积分=日薪1000左右 月薪3万左右 年薪36万&lt;br /&gt;\r\n拥有100万积分=日薪2000左右 月薪6万左右 年薪72万&lt;br /&gt;\r\n拥有500万积分=日薪1万左右 月薪30万左右 年薪360万&lt;br /&gt;\r\n拥有1000万积分=日薪2万左右月薪60万左右 年薪720万&lt;br /&gt;\r\n拥有5000万积分=日薪10万左右 月薪300万左右 年薪3600万&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;动态怎么赚钱？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;动态，直推人数越多越好，你的第一层越多，意味着你15代以内更多，以你为下，后面进来的市场都会加速你的流通，不设任何奖励制度，重点就是加速你的释放速度，市场流通足够快的情况下，最快可以一天释放1%-10%-100%，把原来的100天回本缩短到最快，可能就是几天，Vpay就是这么玩&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;Vpay更独特的地方是什么？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;没有资金流，我们的资金自己说了算，相当于自己当老板，没有三级分销，其实他就是一个虚拟货币，我们推广市场，只是作为一个虚拟货币的推广着，不伤人脉，不用担心关网跑路，当你市场有人进入时候再一次加速你的释放速度，专业点来说，我们投资相当于买了一台矿机，推广相当于增加我们的算力。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:12px&quot;&gt;&lt;span style=&quot;background-color:rgb(0, 150, 234)&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:rgb(0, 150, 234); font-size:16px&quot;&gt;&lt;strong&gt;&amp;nbsp;Vpay有投资风险吗？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;市场上所有项目基本上都有政策风险，只要是多层次分销、拉人头的、开公司的运营的，这些都是ZF的重点关注对象， Vpay在各地都有运营中心，在柬埔寨有，香港有，越南有，韩国有，日本有。Vpay没有直推奖，没有对碰奖，没有领导奖，没有管理奖，没有三级分销，没有多层次分销，更不需要拉人头所以不存在人脉风险，只需要流通就能产生价值，就能赚钱，关键是收益还不低，合情合理合法。&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n', '2018-06-15 10:14:40', '介绍', '5', 'http://player.youku.com/embed/XMzE0NTM4MDIwMA==', 'http://player.youku.com/embed/XMzE3MjkxOTAzNg==');
INSERT INTO `ysk_wenzhang` VALUES ('5', '问题', '&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; Vpay是什么？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay是一个全面开放的网络支付平台，跟支付宝和微信一样，不同的是，Vpay是基于区块链技术开发的，能顺利实现点对点跨境转账，而且没有任何手续费。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; Vpay数字资产总量是多少？&lt;/strong&gt;&lt;/span&gt;\r\n\r\n&lt;p&gt;Vpay数字资产总量3.65亿&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; 如何查询Vpay数字资产开源代码？&lt;/strong&gt;&lt;/span&gt;\r\n\r\n&lt;p&gt;查询Vpay数字资产开源代码的方法&lt;br /&gt;\r\n第一步，打开百度搜索&amp;ldquo;比特币钱包&amp;rdquo;&lt;br /&gt;\r\n第二步，点击&amp;ldquo;比特币钱包官网下载&amp;rdquo;&lt;br /&gt;\r\n第三步，找到&amp;quot;bitcoin&amp;quot;，点击&amp;ldquo;源代码&amp;rdquo;,这时候我们将跳转到一个国际查询开源代码的网站，&amp;ldquo;github.com&amp;quot;，并显示出来了比特币的开源代码&lt;br /&gt;\r\n第四步，点击左上角的&amp;ldquo;黑白猫&amp;rdquo;图像，回到首页&lt;br /&gt;\r\n第五步，在右上角的灰色框输入&amp;ldquo;Vpay&amp;quot;按回车键&lt;br /&gt;\r\n第六步，把搜索内容拉到最下面，我们就可以看到Vpay的开源代码了，这里还可以直接下载Vpay的PC冷钱包。&lt;br /&gt;\r\nPS：我们也可以直接访问&amp;ldquo;github.com&amp;quot;查找开源代码。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; Vpay运营模式是什么？&lt;/strong&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;\r\n\r\n&lt;p&gt;大家都知道，想打造一个全球的跨境支付平台！首要条件是要有大量的粉丝！没有人认可你的东西，就一文不值，跟当初的支付宝一样，几年前，放几百块在里面都怕不见了，到了现在，在支付宝里面十万，百万的人，大有人在吧！&lt;/p&gt;\r\n\r\n&lt;p&gt;既然作为全球支付软件，首先要考虑汇率的问题，Vpay采取区链块技术支持实时人民币，美元，欧元，英镑，日元&amp;hellip;&amp;hellip;等多币种实时兑换功能，秒到，且无损！&lt;/p&gt;\r\n\r\n&lt;p&gt;如何实现汇率之间恒定的问题，那我们需要一个媒介！就是数字资产，现阶段对接的是瑞波币的价格！实现各币种之间的兑换！&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; Vpay是虚拟货币吗？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;显而易见，像我们的比特币，采取的是物理挖矿的方式进行挖矿，你的币根本没有挖矿功能，肯定是假的数字资产！&lt;/p&gt;\r\n\r\n&lt;p&gt;我们的Vpay数字资产总量恒定3.65亿，是一个开源的虚拟货币，VpayLabs预挖1000万作为种子资产，用于市场推广和团队激励，剩余3.55亿Vpay数字资产用流通算力挖矿，通过用户参与流通挖矿的方式，让所有用户持有Vpay数字资产，最终达到完全去中心化。或许有人会问，国家现在都关停虚拟币交易平台了！个人的理解是这是个好事，有监管，才可以更好的发展！国家鼓励互联网金融的百花齐放，但是前提是所有脱离是实体经济的互联网金融只是理想中的空中楼阁，是一定要取缔的！&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; Vpay核心价值观是？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay核心价值观：流通产生价值&lt;br /&gt;\r\n流通：A转账给B的过程为流通&lt;br /&gt;\r\n增值：人与人第一次流通，系统赠送相应的积分，这个也可以说是我们的数字资产，人的价值进行挖矿！&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; 每天红包封顶吗？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;每天红包任你点，上不封顶。&lt;br /&gt;\r\nVpay无国界支付&lt;br /&gt;\r\n投多少送600%米：&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投1米6米&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投10米60米&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投100米600米&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投1000米6000米&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投10000米60000米&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;投20000米送120000&lt;br /&gt;\r\n1米起投，上不封顶&lt;br /&gt;\r\n按积分2&amp;permil;每天分红&lt;br /&gt;\r\n今天投米，明天分米&lt;br /&gt;\r\n每天可以提现，点对点交易！ 动态2&amp;permil;～2%～10%推广越多，释放越快&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; Vpay几个特性是？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;一：符合六大标准&lt;/strong&gt;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1去中心化&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2去中央账户&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;3点对点交易&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;4有序的进出&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;5投资自由&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;6风险自控&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;二：有效规避5大风险&lt;/strong&gt;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1政策风险&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2金流风险&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;3推广风险&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;4网络风险&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;5人脉风险&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;三：符合数字货币的5大属性&lt;/strong&gt;&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;1开源代码&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;2恒量发行&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;3独立钱包&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;4大盘交易&lt;br /&gt;\r\n&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;5商业运用&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; Vpay的八大优势？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;1.拆分(原始发行1000万)&lt;br /&gt;\r\n2.互助(买进卖出点对点匹配打款)&lt;br /&gt;\r\n3.分红(每天最底2&amp;permil;释放)&lt;br /&gt;\r\n4.复利(放大倍增)&lt;br /&gt;\r\n5.虚拟币(区块链挖矿机制)&lt;br /&gt;\r\n6.数字资产(低进高出炒币)&lt;br /&gt;\r\n7.资产证券化(最高释放完再复投)&lt;br /&gt;\r\n8.消费返利（落地商家扫码支付）&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; 为什么说Vpay有拆分优势？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay类似拆分盘，发行原始股1000万，经过市场的繁荣也进行稳定&amp;ldquo;拆分&amp;rdquo;，但Vpay又跟拆分盘不同，基本上所有拆分盘都要半年、一年甚至一年半才能回本，而Vpay投资当天就可以回本80%，最重要的一点是，Vpay对所有的做付出做动态的人很公平，能力越强，分享越多越快，拆得越快。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; 为什么说Vpay有互助盘的高利息和良好体验，却没有互助盘的高风险？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay的静态利息可以达到每天1.2%，比国3等互助盘的利息还要高，Vpay也没有排单币、激活码的成本。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; 为什么说Vpay有全返优势？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay不但全返而且返还的速度更快更多，不到3个月就可以回本，回本后还可以继续返还，永不出局。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; Vpay有投资门槛吗？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;Vpay就不存在在投资门槛的问题，有钱你可以投10块100块，甚至10万都可以投，钱少些你就投资10块钱，一包烟钱，一单停车费都可以当作一份投资。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; 静态怎么赚钱？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;每天1％100天回本，不复投的情况下，你可以选择对冲，或者平台挂卖，对冲，赠送80%积分，平台挂卖不赠送积分，但是你的积分只增不减，所以说，100天到本金收回，接下来的都是赚的，一年撬动3.65倍增值，复投就的话那就更加有魅力了！&lt;/p&gt;\r\n\r\n&lt;p&gt;拥有1万积分=日薪20左右月薪600左右 年薪7200&lt;br /&gt;\r\n拥有5万积分=日薪100左右 月薪3000左右 年薪3.6万&lt;br /&gt;\r\n拥有10万积分=日薪200左右 月薪6000左右 年薪7.2万&lt;br /&gt;\r\n拥有50万积分=日薪1000左右 月薪3万左右 年薪36万&lt;br /&gt;\r\n拥有100万积分=日薪2000左右 月薪6万左右 年薪72万&lt;br /&gt;\r\n拥有500万积分=日薪1万左右 月薪30万左右 年薪360万&lt;br /&gt;\r\n拥有1000万积分=日薪2万左右月薪60万左右 年薪720万&lt;br /&gt;\r\n拥有5000万积分=日薪10万左右 月薪300万左右 年薪3600万&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; 动态怎么赚钱？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;动态，直推人数越多越好，你的第一层越多，意味着你15代以内更多，以你为下，后面进来的市场都会加速你的流通，不设任何奖励制度，重点就是加速你的释放速度，市场流通足够快的情况下，最快可以一天释放1%-10%-100%，把原来的100天回本缩短到最快，可能就是几天，Vpay就是这么玩&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; Vpay更独特的地方是什么？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;没有资金流，我们的资金自己说了算，相当于自己当老板，没有三级分销，其实他就是一个虚拟货币，我们推广市场，只是作为一个虚拟货币的推广着，不伤人脉，不用担心关网跑路，当你市场有人进入时候再一次加速你的释放速度，专业点来说，我们投资相当于买了一台矿机，推广相当于增加我们的算力。&lt;/p&gt;\r\n\r\n&lt;div style=&quot;margin-right:4px&quot;&gt;&lt;span style=&quot;color:#0096ea; font-size:12px&quot;&gt;&lt;span style=&quot;background-color:#0096ea&quot;&gt;1&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#0096ea; font-size:16px&quot;&gt;&lt;strong&gt; Vpay有投资风险吗？&lt;/strong&gt;&lt;/span&gt;&lt;/div&gt;\r\n\r\n&lt;p&gt;市场上所有项目基本上都有政策风险，只要是多层次分销、拉人头的、开公司的运营的，这些都是ZF的重点关注对象， Vpay在各地都有运营中心，在柬埔寨有，香港有，越南有，韩国有，日本有。Vpay没有直推奖，没有对碰奖，没有领导奖，没有管理奖，没有三级分销，没有多层次分销，更不需要拉人头所以不存在人脉风险，只需要流通就能产生价值，就能赚钱，关键是收益还不低，合情合理合法。&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n', '2018-04-20 18:20:15', '帮助中心', '3', '', '');
INSERT INTO `ysk_wenzhang` VALUES ('6', '商城介绍', '&lt;p&gt;&amp;nbsp; 马克.米诺先生创办Vpay的精髓，就是流通产生价值，商城落地是加速实践Vpay全球支付的应用，让入驻商家和消费者通过Vpay数字资产更紧密联系，加速互动，加速流通，加速增值财富，倍增财富。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp; 商城所有的商品均接受Vpay余额支付，是一个可以全部接受数字资产流通、购物的综合性商城，为倡导实现人类金融自由理念并付之行动的马克.米诺先生致敬。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp; 商城所有商品都禁止高于市场价，每个商家的进驻会经过严格的审核，确保产品是正品，一经发现假冒伪劣的现象，将取消商家的入驻资格并协助消费者追回合法权益。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h3&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color:#A52A2A&quot;&gt;消费者在Vpay商城的消费将得到的两项主要消费红利&lt;/span&gt;：&lt;/strong&gt;&lt;/span&gt;&lt;/h3&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;span style=&quot;color:#FF0000&quot;&gt;&lt;span style=&quot;font-size:20px&quot;&gt;&lt;strong&gt;A&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;span style=&quot;color:#FF0000&quot;&gt;&lt;span style=&quot;font-size:20px&quot;&gt; &lt;/span&gt;&lt;/span&gt;如果您是拥有Vpay电子钱包的消费者，您选好商品支付时用您的Vpay余额可直接扫商家的Vpay收款二维码支付，支付成功后你Vpay钱包里的的积分会增加你消费额的80%，然后按每天2&amp;permil;返回到余额账户里，几乎等于免费购买了产品，感受到无痛消费带来的轻松惬意。&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&amp;nbsp;&lt;span style=&quot;color:#FF0000&quot;&gt;&lt;span style=&quot;font-size:20px&quot;&gt;B&lt;/span&gt;&lt;/span&gt; &lt;/strong&gt;如果您是现金付款购买的消费者，商家会赠送给您一个Vpay电子钱包，商家会让利一部分充值到您的电子钱包余额里，兑换成积分后，按积分总数的2&amp;permil;以每天红包形式返回到余额账户里，以消费多少返还多少为执行原则。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp; &amp;nbsp;总之，所有消费者在Vpay商城，可以做到&amp;ldquo;花本来该花的钱，赚意想不到的财富！&amp;rdquo;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;h3&gt;&lt;span style=&quot;font-size:16px&quot;&gt;&lt;strong&gt;&lt;span style=&quot;color:#B22222&quot;&gt;入驻商家在Vpay商城的财富之路&lt;/span&gt;：&lt;/strong&gt;&lt;/span&gt;&lt;/h3&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#FF0000&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:20px&quot;&gt;&amp;nbsp;A&lt;/span&gt;&lt;/strong&gt; &lt;/span&gt;全球的Vpay粉丝借助公司的平台，快速地产生庞大而有实力的消费群体，粉丝们使用Vpay余额购买是无痛消费，只要喜欢就尽情买买买，购买力强大。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;span style=&quot;color:#FF0000&quot;&gt;&lt;span style=&quot;font-size:20px&quot;&gt;&lt;strong&gt;B&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; 当非Vpay余额购买时，商家收到的是现金，赠送给客户一个Vpay电子钱包， 商家只要让利20%转入到客户的电子钱包余额中，通过平台的杠杆作用，让客户达到消费多少返还多少，客户花出去的钱还能在不太长的时间里返回来，加上因为是商家让利赠送的，客户当然也乐意接受。&lt;/p&gt;\r\n\r\n&lt;p&gt;因此，商家既可以赚到八折价里的利润，同时多了一个Vpay客户，客户在Vpay钱包里获益了就有参与推广的可能性，从而形成商家Vpay事业的良性循环，一段时间积累下来，就会有不断的持续的市场被动收入，最终达成财务自由目标！&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;span style=&quot;color:#FF0000&quot;&gt;&lt;strong&gt;&lt;span style=&quot;font-size:20px&quot;&gt;C &lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;商家也可以推荐其他商家入驻Vpay商城，你可以获得商城的广告费，重要的是你推荐的商家如果是你的Vpay事业伙伴，他延伸的Vpay客户在消费、流通都会加速您的奖金释放，这应该是长期的可观的财富。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;span style=&quot;color:#FF0000&quot;&gt;&lt;span style=&quot;font-size:20px&quot;&gt;&lt;strong&gt;D&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt; Vpay全球支付的应用，让入驻商家和消费者通过Vpay钱包有了更紧密联系，入驻商家与商家有更广泛的合作，每一个在Vpay商城的参与者都将得到双赢或多赢的结果，前进的步伐不可阻挡！&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;span style=&quot;color:#FF0000&quot;&gt;&lt;span style=&quot;font-size:14px&quot;&gt;&amp;nbsp;&lt;strong&gt;&lt;span style=&quot;font-size:18px&quot;&gt;趋势大于优势！&lt;/span&gt;&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;\r\n\r\n&lt;h6&gt;&lt;strong&gt;&lt;span style=&quot;font-size:18px&quot;&gt;&lt;span style=&quot;color:#FF0000&quot;&gt;&amp;nbsp;Vpay商城 ，为您生活添色彩！&lt;/span&gt;&lt;/span&gt;&lt;/strong&gt;&lt;/h6&gt;\r\n', '2018-02-02 22:11:54', '商城介绍', '4', '', '');
INSERT INTO `ysk_wenzhang` VALUES ('13', '联系客服', '&lt;h1 style=&quot;text-align:justify&quot;&gt;温馨提示&lt;/h1&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;您要充值的信息要准确填写Vpay账号；注册时的昵称；手机号码和充值金额。&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:justify&quot;&gt;有必要时请及时联系客服专员。&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p style=&quot;text-align:center&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;/Uploads/image/goods_description/2018-01-22/5a6563438f695.jpeg&quot; style=&quot;height:164px; width:162px&quot; /&gt;&lt;/p&gt;\r\n', '2018-01-22 12:14:20', '联系客服', '6', '', '');

-- ----------------------------
-- Table structure for `ysk_wetrans`
-- ----------------------------
DROP TABLE IF EXISTS `ysk_wetrans`;
CREATE TABLE `ysk_wetrans` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pay_id` int(10) NOT NULL COMMENT '支付的会员',
  `get_id` int(10) NOT NULL COMMENT '收到转账用户id',
  `get_nums` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '转账总金额',
  `get_time` char(30) NOT NULL DEFAULT '0' COMMENT '转账时间',
  `get_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '转账币种',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

-- ----------------------------
-- Records of ysk_wetrans
-- ----------------------------
