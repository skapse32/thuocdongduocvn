/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50136
Source Host           : localhost:3306
Source Database       : thuocdongduoc.vn

Target Server Type    : MYSQL
Target Server Version : 50136
File Encoding         : 65001

Date: 2010-05-31 16:24:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `jos_adsmanager_ads`
-- ----------------------------
DROP TABLE IF EXISTS `jos_adsmanager_ads`;
CREATE TABLE `jos_adsmanager_ads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` int(10) unsigned DEFAULT '0',
  `userid` int(10) unsigned DEFAULT NULL,
  `name` text,
  `ad_zip` text,
  `ad_city` text,
  `ad_phone` text,
  `email` text,
  `ad_kindof` text,
  `ad_headline` text,
  `ad_text` text,
  `ad_state` text,
  `ad_price` text,
  `date_created` datetime DEFAULT NULL,
  `date_recall` date DEFAULT NULL,
  `recall_mail_sent` tinyint(1) DEFAULT '0',
  `views` int(10) unsigned DEFAULT '0',
  `published` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_adsmanager_ads
-- ----------------------------
INSERT INTO `jos_adsmanager_ads` VALUES ('1', '1', '64', 'long', null, '2', '', 'long.lh@catsoft.com.vn', null, 'Bán người đê hê hê', 'Bán người làm Osin dài hạn\r\n\r\n200k/1ng/10 năm', null, '200000', '2010-04-28 00:00:00', null, '0', '10', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('2', '1', '64', 'long', null, '2', '', 'long.lh@catsoft.com.vn', null, 'express myseft', 'Bán lấy tiền đây', null, '1000000000', '2010-04-28 00:00:00', null, '0', '5', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('3', '2', '64', 'long', null, '3', '', 'long.lh@catsoft.com.vn', null, 'Cần mua thuốc', 'Chuyên dụng trị ung thư \r\ngiá cả thỏa thuận', null, '10', '2010-04-28 00:00:00', null, '0', '5', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('4', '2', '64', 'long', null, '3', '', 'long.lh@catsoft.com.vn', null, 'Bạn có thể đăng 5 ảnh định dạng JPEG/PNG/GIf với dung lượng', 'xxxxxxxxxxxxfsdf sdfsfsd fsf', null, '34', '2010-04-28 08:01:42', null, '0', '9', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('5', '2', '66', 'Vũ Hoài Nam', null, '2', '01216261616', 'vuhoainampharma@gmail.com', null, 'cần mua Kim Tiền Thảo khô', 'tình hình là phần giá nên để thêm mục \" thỏa thuận\" vì hiện tại chỉ nhập được số\r\nphần hiển thị ở dưới này có đề \" giá bán \" mà thực ra là \" giá mua \"\r\n\r\nphần hiển thị thông tin người rao cần theeo địa chỉ,tên công ty, tên cửa hàng,...', null, '00000', '2010-05-04 13:51:16', null, '0', '12', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('6', '1', '67', 'Tuan', null, '2', '', 'tuandl50@yahoo.com', null, 'Cần bán một số dược liêu', 'Bán Nhân sâm', null, '3000000', '2010-05-04 13:55:16', null, '0', '11', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('7', '1', '68', 'phuongdaica', null, '2', '087894575', 'phuongtrau2000@yahoo.com', null, 'Can ban camry', 'ilwirhgier;', null, '783333315', '2010-05-04 13:57:26', null, '0', '3', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('8', '1', '66', 'Vũ Hoài Nam', null, '2', '', 'vuhoainampharma@gmail.com', null, 'cần bán xe wave anpha', 'cần bán xe wave anpha màu xanh,chính chủ , xe đi ngon,máy tốt,bảo dưỡng hàng tháng,vừa thay mới xăm lốp. miến TG', null, '10000000', '2010-05-04 14:03:51', null, '0', '7', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('9', '1', '66', 'Vũ Hoài Nam', null, '2', '', 'vuhoainampharma@gmail.com', null, 'bán nhà chung cư Linh Đàm', 'bán nhà chung cư tâng 9 - khu đô thị Linh Đàm.\r\n150 m2,sổ đỏ chính chủ, nội thất đẹp,sàn gỗ pơ mu , điện nước ổn đinh, an ninh tốt. giá 50 tr/m2', null, '50000000', '2010-05-04 14:07:11', null, '0', '6', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('10', '1', '68', 'phuongdaica', null, '2', '0987467849', 'phuongtrau2000@yahoo.com', null, 'Ban thuoc', 'aliuegahosegia;adsg', null, '0207754832', '2010-05-04 14:07:29', null, '0', '11', '1');

-- ----------------------------
-- Table structure for `jos_adsmanager_categories`
-- ----------------------------
DROP TABLE IF EXISTS `jos_adsmanager_categories`;
CREATE TABLE `jos_adsmanager_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `published` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_adsmanager_categories
-- ----------------------------
INSERT INTO `jos_adsmanager_categories` VALUES ('1', '0', 'Cần bán', '', '0', '1');
INSERT INTO `jos_adsmanager_categories` VALUES ('2', '0', 'Cần mua', '', '0', '1');

-- ----------------------------
-- Table structure for `jos_adsmanager_columns`
-- ----------------------------
DROP TABLE IF EXISTS `jos_adsmanager_columns`;
CREATE TABLE `jos_adsmanager_columns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `catsid` varchar(255) NOT NULL DEFAULT ',-1,',
  `published` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_adsmanager_columns
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_adsmanager_config`
-- ----------------------------
DROP TABLE IF EXISTS `jos_adsmanager_config`;
CREATE TABLE `jos_adsmanager_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` text NOT NULL,
  `ads_per_page` int(10) unsigned NOT NULL DEFAULT '20',
  `max_image_size` int(10) unsigned NOT NULL DEFAULT '102400',
  `max_width` int(4) NOT NULL DEFAULT '450',
  `max_height` int(4) NOT NULL DEFAULT '300',
  `max_width_t` int(4) NOT NULL DEFAULT '150',
  `max_height_t` int(4) NOT NULL DEFAULT '100',
  `root_allowed` tinyint(4) NOT NULL DEFAULT '1',
  `nb_images` int(4) NOT NULL DEFAULT '2',
  `show_contact` tinyint(4) NOT NULL DEFAULT '1',
  `send_email_on_new` tinyint(4) NOT NULL DEFAULT '1',
  `send_email_on_update` tinyint(4) NOT NULL DEFAULT '1',
  `auto_publish` tinyint(4) NOT NULL DEFAULT '1',
  `tag` text NOT NULL,
  `fronttext` text NOT NULL,
  `comprofiler` tinyint(4) NOT NULL DEFAULT '0',
  `email_display` tinyint(4) NOT NULL DEFAULT '0',
  `rules_text` text NOT NULL,
  `display_expand` tinyint(4) NOT NULL DEFAULT '1',
  `display_last` tinyint(4) NOT NULL DEFAULT '2',
  `display_fullname` tinyint(4) NOT NULL DEFAULT '2',
  `expiration` tinyint(1) NOT NULL DEFAULT '1',
  `ad_duration` int(4) NOT NULL DEFAULT '30',
  `recall` tinyint(1) NOT NULL DEFAULT '1',
  `recall_time` int(4) NOT NULL DEFAULT '7',
  `recall_text` text NOT NULL,
  `image_display` varchar(50) NOT NULL DEFAULT 'default',
  `cat_max_width` int(4) NOT NULL DEFAULT '150',
  `cat_max_height` int(4) NOT NULL DEFAULT '150',
  `cat_max_width_t` int(4) NOT NULL DEFAULT '30',
  `cat_max_height_t` int(4) NOT NULL DEFAULT '30',
  `submission_type` int(4) NOT NULL DEFAULT '30',
  `nb_ads_by_user` int(4) NOT NULL DEFAULT '-1',
  `allow_attachement` tinyint(1) NOT NULL DEFAULT '0',
  `allow_contact_by_pms` tinyint(1) NOT NULL DEFAULT '0',
  `show_rss` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_adsmanager_config
-- ----------------------------
INSERT INTO `jos_adsmanager_config` VALUES ('1', '1.0.1', '20', '2048000', '400', '300', '150', '100', '1', '5', '1', '0', '0', '1', 'joomprod.com', '<p align=\\\"center\\\"><strong>Welcome to Ads Section.</strong></p>\r\n<p align=\\\"left\\\">The better place to sell or buy</p>', '0', '0', '<p>Inform the users about the rules here...</p>', '2', '1', '0', '1', '30', '1', '7', '<p>Add This Text to recall message</p>', 'lightbox', '150', '150', '30', '30', '1', '-1', '0', '0', '0');

-- ----------------------------
-- Table structure for `jos_adsmanager_field_values`
-- ----------------------------
DROP TABLE IF EXISTS `jos_adsmanager_field_values`;
CREATE TABLE `jos_adsmanager_field_values` (
  `fieldvalueid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldid` int(11) NOT NULL DEFAULT '0',
  `fieldtitle` varchar(50) NOT NULL DEFAULT '',
  `fieldvalue` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldvalueid`)
) ENGINE=InnoDB AUTO_INCREMENT=310 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_adsmanager_field_values
-- ----------------------------
INSERT INTO `jos_adsmanager_field_values` VALUES ('221', '9', 'ADSMANAGER_STATE_4', '0', '0', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('222', '9', 'ADSMANAGER_STATE_3', '1', '1', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('223', '9', 'ADSMANAGER_STATE_2', '2', '2', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('224', '9', 'ADSMANAGER_STATE_1', '3', '3', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('225', '9', 'ADSMANAGER_STATE_0', '4', '4', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('227', '8', 'ADSMANAGER_KINDOFALL', '0', '0', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('228', '8', 'ADSMANAGER_KINDOF2', '1', '1', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('229', '8', 'ADSMANAGER_KINDOF1', '2', '2', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('284', '1', '', '0', '0', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('285', '2', '', '0', '0', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('288', '4', '', '0', '0', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('289', '7', '', '0', '0', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('305', '3', 'Toàn quốc', '1', '0', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('306', '3', 'Hà nội', '2', '1', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('307', '3', 'TPHCM', '3', '2', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('308', '3', 'Đà nẵng', '4', '3', '0');
INSERT INTO `jos_adsmanager_field_values` VALUES ('309', '3', 'Cần thơ', '5', '4', '0');

-- ----------------------------
-- Table structure for `jos_adsmanager_fields`
-- ----------------------------
DROP TABLE IF EXISTS `jos_adsmanager_fields`;
CREATE TABLE `jos_adsmanager_fields` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `display_title` tinyint(1) NOT NULL DEFAULT '0',
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) DEFAULT '0',
  `ordering` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `columnid` int(11) NOT NULL DEFAULT '-1',
  `columnorder` int(11) NOT NULL DEFAULT '0',
  `pos` tinyint(4) NOT NULL DEFAULT '1',
  `posorder` tinyint(4) NOT NULL DEFAULT '1',
  `profile` tinyint(1) NOT NULL DEFAULT '0',
  `cb_field` int(11) NOT NULL DEFAULT '-1',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `searchable` tinyint(1) NOT NULL DEFAULT '1',
  `sort` tinyint(1) NOT NULL DEFAULT '0',
  `sort_direction` varchar(4) NOT NULL DEFAULT 'DESC',
  `catsid` varchar(255) NOT NULL DEFAULT ',-1,',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`fieldid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_adsmanager_fields
-- ----------------------------
INSERT INTO `jos_adsmanager_fields` VALUES ('1', 'name', 'ADSMANAGER_FORM_NAME', '0', '', 'text', '50', '35', '1', '0', '0', '0', '-1', '5', '5', '1', '1', '41', '1', '1', '0', 'DESC', ',-1,', '1');
INSERT INTO `jos_adsmanager_fields` VALUES ('2', 'email', 'ADSMANAGER_FORM_EMAIL', '0', '', 'emailaddress', '50', '35', '1', '1', '0', '0', '-1', '10', '5', '4', '1', '50', '1', '1', '0', 'DESC', ',-1,', '1');
INSERT INTO `jos_adsmanager_fields` VALUES ('3', 'ad_city', 'ADSMANAGER_FORM_CITY', '0', '', 'select', '50', '35', '1', '4', '0', '0', '-1', '1', '5', '3', '1', '-1', '1', '1', '1', 'ASC', ',-1,', '1');
INSERT INTO `jos_adsmanager_fields` VALUES ('4', 'ad_zip', 'ADSMANAGER_FORM_ZIP', '0', '', 'text', '6', '7', '0', '3', '0', '0', '-1', '0', '5', '2', '1', '-1', '1', '1', '0', 'ASC', ',-1,', '0');
INSERT INTO `jos_adsmanager_fields` VALUES ('5', 'ad_headline', 'ADSMANAGER_FORM_AD_HEADLINE', '0', '', 'text', '60', '35', '1', '5', '0', '0', '-1', '0', '1', '1', '0', '-1', '1', '1', '0', 'DESC', ',-1,', '1');
INSERT INTO `jos_adsmanager_fields` VALUES ('6', 'ad_text', 'ADSMANAGER_FORM_AD_TEXT', '0', '', 'textarea', '500', '0', '1', '6', '40', '20', '-1', '0', '3', '1', '0', '-1', '1', '1', '0', 'DESC', ',-1,', '1');
INSERT INTO `jos_adsmanager_fields` VALUES ('7', 'ad_phone', 'ADSMANAGER_FORM_PHONE1', '0', '', 'number', '50', '35', '0', '2', '0', '0', '-1', '0', '5', '1', '1', '-1', '1', '1', '0', 'DESC', ',-1,', '1');
INSERT INTO `jos_adsmanager_fields` VALUES ('8', 'ad_kindof', 'ADSMANAGER_FORM_KINDOF', '0', '', 'select', '0', '0', '1', '7', '0', '0', '5', '0', '2', '1', '0', '-1', '1', '1', '0', 'DESC', ',-1,', '0');
INSERT INTO `jos_adsmanager_fields` VALUES ('9', 'ad_state', 'ADSMANAGER_FORM_STATE', '0', '', 'select', '0', '0', '1', '8', '0', '0', '5', '0', '2', '1', '0', '-1', '1', '1', '0', 'DESC', ',-1,', '0');
INSERT INTO `jos_adsmanager_fields` VALUES ('10', 'ad_price', 'ADSMANAGER_FORM_AD_PRICE', '0', '', 'price', '10', '7', '1', '9', '0', '0', '2', '0', '4', '1', '0', '-1', '1', '1', '1', 'DESC', ',-1,', '1');

-- ----------------------------
-- Table structure for `jos_adsmanager_positions`
-- ----------------------------
DROP TABLE IF EXISTS `jos_adsmanager_positions`;
CREATE TABLE `jos_adsmanager_positions` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_adsmanager_positions
-- ----------------------------
INSERT INTO `jos_adsmanager_positions` VALUES ('1', 'top', 'ADSMANAGER_POSITION_TOP');
INSERT INTO `jos_adsmanager_positions` VALUES ('2', 'subtitle', 'ADSMANAGER_POSITION_SUBTITLE');
INSERT INTO `jos_adsmanager_positions` VALUES ('3', 'description', 'ADSMANAGER_POSITION_DESCRIPTION');
INSERT INTO `jos_adsmanager_positions` VALUES ('4', 'description2', 'ADSMANAGER_POSITION_DESCRIPTION2');
INSERT INTO `jos_adsmanager_positions` VALUES ('5', 'contact', 'ADSMANAGER_POSITION_CONTACT');
INSERT INTO `jos_adsmanager_positions` VALUES ('6', 'description3', 'ADSMANAGER_POSITION_DESCRIPTION3');

-- ----------------------------
-- Table structure for `jos_adsmanager_profile`
-- ----------------------------
DROP TABLE IF EXISTS `jos_adsmanager_profile`;
CREATE TABLE `jos_adsmanager_profile` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `name` text,
  `ad_city` text NOT NULL,
  `email` text NOT NULL,
  `ad_zip` text NOT NULL,
  `ad_phone` text NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_adsmanager_profile
-- ----------------------------
INSERT INTO `jos_adsmanager_profile` VALUES ('62', null, '', '', '', '');
INSERT INTO `jos_adsmanager_profile` VALUES ('64', 'long', '', 'long.lh@catsoft.com.vn', '', '');
INSERT INTO `jos_adsmanager_profile` VALUES ('66', null, '', '', '', '');
INSERT INTO `jos_adsmanager_profile` VALUES ('67', null, '', '', '', '');

-- ----------------------------
-- Table structure for `jos_attachments`
-- ----------------------------
DROP TABLE IF EXISTS `jos_attachments`;
CREATE TABLE `jos_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(80) NOT NULL,
  `filename_sys` varchar(255) NOT NULL,
  `file_type` varchar(30) NOT NULL,
  `file_size` int(11) unsigned NOT NULL,
  `icon_filename` varchar(20) NOT NULL,
  `display_filename` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `article_id` int(11) unsigned NOT NULL,
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_field_1` varchar(100) NOT NULL DEFAULT '',
  `user_field_2` varchar(100) NOT NULL DEFAULT '',
  `user_field_3` varchar(100) NOT NULL DEFAULT '',
  `create_date` datetime DEFAULT NULL,
  `modification_date` datetime DEFAULT NULL,
  `download_count` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `attachment_article_id_index` (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_attachments
-- ----------------------------
INSERT INTO `jos_attachments` VALUES ('3', 'http://rapidshare.com/files/331163752/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part1', '', '', '0', 'download.gif', '', '', 'http://rapidshare.com/files/331163752/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part1.rar', '62', '86', '1', '', '', '', '2010-05-05 04:13:59', '2010-05-05 04:13:59', '0');
INSERT INTO `jos_attachments` VALUES ('4', 'http://rapidshare.com/files/331183524/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part2', '', '', '0', 'download.gif', '', '', 'http://rapidshare.com/files/331183524/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part2.rar', '62', '86', '1', '', '', '', '2010-05-05 04:14:25', '2010-05-05 04:14:25', '0');
INSERT INTO `jos_attachments` VALUES ('5', 'http://rapidshare.com/files/331198177/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part3', '', '', '0', 'download.gif', '', '', 'http://rapidshare.com/files/331198177/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part3.rar', '62', '86', '1', '', '', '', '2010-05-05 04:14:55', '2010-05-05 04:14:55', '0');
INSERT INTO `jos_attachments` VALUES ('6', 'http://rapidshare.com/files/331213505/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part4', '', '', '0', 'download.gif', '', '', 'http://rapidshare.com/files/331213505/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part4.rar', '62', '86', '1', '', '', '', '2010-05-05 04:15:22', '2010-05-05 04:15:22', '0');
INSERT INTO `jos_attachments` VALUES ('7', 'http://www.mediafire.com/?sharekey=7002454a67dcd60b1686155677bb2685d5c6f255c5c3d', '', '', '0', 'download.gif', '', '', 'http://www.mediafire.com/?sharekey=7002454a67dcd60b1686155677bb2685d5c6f255c5c3d041', '62', '132', '1', '', '', '', '2010-05-05 06:03:08', '2010-05-05 06:03:08', '0');
INSERT INTO `jos_attachments` VALUES ('8', 'http://rapidshare.com/files/376962939/999_bai_thuoc_ngam_ruou.pdf', '', '', '0', '3d.gif', 'PDF', '18.5 M', 'http://rapidshare.com/files/376962939/999_bai_thuoc_ngam_ruou.pdf', '62', '161', '1', '', '', '', '2010-05-12 02:01:39', '2010-05-14 14:04:58', '0');
INSERT INTO `jos_attachments` VALUES ('9', 'http://rapidshare.com/files/378045199/ban_thao_van_dap.rar', '', '', '0', 'download.gif', '', ' 812 KB', 'http://rapidshare.com/files/378045199/ban_thao_van_dap.rar', '62', '164', '1', '', '', '', '2010-05-14 14:02:17', '2010-05-14 14:02:17', '0');
INSERT INTO `jos_attachments` VALUES ('10', 'http://rapidshare.com/files/378042928/Banthaovandap.zip', '', '', '0', 'download.gif', '', 'Phần mền đọc 2589 KB', 'http://rapidshare.com/files/378042928/Banthaovandap.zip', '62', '164', '1', '', '', '', '2010-05-14 14:03:49', '2010-05-14 14:03:49', '0');
INSERT INTO `jos_attachments` VALUES ('11', 'BenhPhongThapthuocdongduoc.rar', 'D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\attachments\\173_BenhPhongThapthuocdongduoc.rar', 'application/x-rar-compressed', '1141434', '', '', '', 'attachments/173_BenhPhongThapthuocdongduoc.rar', '62', '173', '1', '', '', '', '2010-05-17 15:00:53', '2010-05-17 15:00:53', '0');

-- ----------------------------
-- Table structure for `jos_banner`
-- ----------------------------
DROP TABLE IF EXISTS `jos_banner`;
CREATE TABLE `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_banner
-- ----------------------------
INSERT INTO `jos_banner` VALUES ('1', '1', '', 'Banner - Trang chủ - Center', 'banner-trang-ch-center', '0', '1738', '0', 'osmbanner1.png', '', '2010-04-26 11:03:03', '1', '0', '0000-00-00 00:00:00', null, '<img src=\"templates/thuocdocduoc/images/news&event_33.png\" />', '24', '', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0');

-- ----------------------------
-- Table structure for `jos_bannerclient`
-- ----------------------------
DROP TABLE IF EXISTS `jos_bannerclient`;
CREATE TABLE `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_bannerclient
-- ----------------------------
INSERT INTO `jos_bannerclient` VALUES ('1', 'Thuốc Đông Dược', 'Administrator', 'longdt@live.com', 'Banner quảng cáo của trang.', '0', '00:00:00', null);

-- ----------------------------
-- Table structure for `jos_bannertrack`
-- ----------------------------
DROP TABLE IF EXISTS `jos_bannertrack`;
CREATE TABLE `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_bannertrack
-- ----------------------------
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-03-30', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-01', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-02', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-03', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-05', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-05', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-05', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-05', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-05', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-06', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-07', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-08', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-09', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-09', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-09', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-09', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-09', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-09', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-09', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-09', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-09', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-09', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-09', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-12', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-14', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-15', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-16', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-16', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-16', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-16', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-16', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-16', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-17', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-20', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-21', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-22', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-23', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-24', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-25', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-26', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');
INSERT INTO `jos_bannertrack` VALUES ('2010-04-27', '1', '1');

-- ----------------------------
-- Table structure for `jos_categories`
-- ----------------------------
DROP TABLE IF EXISTS `jos_categories`;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM AUTO_INCREMENT=336 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_categories
-- ----------------------------
INSERT INTO `jos_categories` VALUES ('1', '0', 'Tin tức', '', 'tin-tuc', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('2', '0', 'Sử dụng thuốc', '', 'su-dung-thuoc', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('3', '0', 'Món ăn bài thuốc', '', 'mon-an-bai-thuoc', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('4', '0', 'Sức khỏe đời sống', '', 'suc-khoe-doi-song', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('5', '0', 'Thế giới ảnh', '', 'the-gioi-anh', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('284', '0', 'Công ty Cổ Phần Dược Phẩm OPC', '', 'cong-ty-c-phn-dc-phm-opc', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('15', '0', 'Thuốc', '', 'thuoc', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('16', '0', 'Phòng khám Đông Y', '', 'phong-kham-dong-y', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '6', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('17', '0', 'Bệnh viên y học cổ truyền', '', 'benh-vien-y-hoc-co-truyen', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('18', '0', 'Nguyên liệu đông dược', '', 'nguyen-lieu-dong-duoc', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('19', '0', 'Tinh dầu', '', 'tinh-dau', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('20', '0', 'Thực vật', '', 'thuc-vat', '', '5', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('21', '0', 'Dược liệu', '', 'duoc-lieu', '', '5', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('22', '0', 'Đông y', '', 'dong-y', '', '5', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('23', '0', 'Sách khác', '', 'sach-khac', '', '5', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('24', '0', 'Trang Chủ', '', 'trang-chu', '', 'com_banner', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('25', '0', 'Góp ý', '', 'gop-y', '', 'com_contact_details', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('26', '0', 'Liên hệ Quảng cáo', '', 'lien-h-qung-cao', '', 'com_contact_details', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('27', '0', 'Liên kết website', '', 'lien-kt-website', '', 'com_weblinks', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('287', '284', 'Thuốc bắc', '', 'thuc-bc', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('286', '284', 'Thuốc ngoại', '', 'thuc-ngoi', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('33', '0', 'Thông báo hệ thống', '', 'thong-bao-he-thong', '', '6', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '6', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('37', '0', 'A', '', 'a', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('39', '0', 'B', '', 'b', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('40', '0', 'C', '', 'c', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('41', '0', 'D', '', 'd', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('42', '0', 'E', '', 'e', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('43', '0', 'F', '', 'f', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '6', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('44', '0', 'G', '', 'g', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '7', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('45', '0', 'H', '', 'h', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '8', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('46', '0', 'I', '', 'i', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '9', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('47', '0', 'J', '', 'j', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '10', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('48', '0', 'K', '', 'k', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '11', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('49', '0', 'L', '', 'l', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '12', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('50', '0', 'M', '', 'm', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '13', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('51', '0', 'N', '', 'n', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '14', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('52', '0', 'O', '', 'o', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '15', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('53', '0', 'P', '', 'p', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '16', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('54', '0', 'Q', '', 'q', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '17', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('55', '0', 'R', '', 'r', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '18', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('56', '0', 'S', '', 's', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '19', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('57', '0', 'T', '', 't', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '20', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('58', '0', 'U', '', 'u', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '21', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('59', '0', 'V', '', 'v', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '23', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('60', '0', 'W', '', 'w', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '24', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('61', '0', 'X', '', 'x', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '25', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('62', '0', 'Y', '', 'y', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '26', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('63', '0', 'Z', '', 'z', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '27', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('64', '0', 'Làm đẹp', '', 'lam-dep', '', 'com_filter_bt_phanloaitheobenh', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('98', '0', 'Bệnh khác', '', 'benh-khac', '', 'com_filter_bt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('97', '0', 'Bệnh AIDS', '', 'benh-aids', '', 'com_filter_bt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('96', '0', 'Ung thư', '', 'ung-thu', '', 'com_filter_bt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('95', '0', 'Ngũ quan khoa', '', 'ngu-quan-khoa', '', 'com_filter_bt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('94', '0', 'Nhi khoa', '', 'nhi-khoa', '', 'com_filter_bt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('93', '0', 'Nam khoa', '', 'nam-khoa', '', 'com_filter_bt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('92', '0', 'Phụ khoa', '', 'phu-khoa', '', 'com_filter_bt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('91', '0', 'Ngoại khoa', '', 'ngoai-khoa', '', 'com_filter_bt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('90', '0', 'Nội khoa', '', 'noi-khoa', '', 'com_filter_bt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('99', '0', 'Bài thuốc tân ôn giải biểu', '', 'bai-thuoc-tan-on-giai-bieu', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('100', '0', 'Bài thuốc tân lương giải biểu', '', 'bai-thuoc-tan-luong-giai-bieu', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('101', '0', 'bài thuốc phò chính giải biểu', '', 'bai-thuoc-pho-chinh-giai-bieu', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('102', '0', 'Bài thuốc thanh khí nhiệt', '', 'bai-thuoc-thanh-khi-nhiet', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('103', '0', 'Bài thuốc thanh nhiệt lương huyết', '', 'bai-thuoc-thanh-nhiet-luong-huyet', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('104', '0', 'Bài thuốc thanh nhiệt giải độc', '', 'bai-thuoc-thanh-nhiet-giai-doc', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('105', '0', 'Bài thuốc thanh nhiệt giải thử', '', 'bai-thuoc-thanh-nhiet-giai-thu', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('106', '0', 'Bài thuốc thanh nhiệt tạng phủ', '', 'bai-thuoc-thanh-nhiet-tang-phu', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('107', '0', 'Bài thuốc thanh hư nhiệt', '', 'bai-thuoc-thanh-hu-nhiet', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('108', '0', 'Bài thuốc ôn trung khu hàn', '', 'bai-thuoc-on-trung-khu-han', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('109', '0', 'Bài thuốc Hồi dương cứu nghịch', '', 'bai-thuoc-hoi-duong-cuu-nghich', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('110', '0', 'bài thuốc ôn kinh tán hàn', '', 'bai-thuoc on-kinh-tan-han', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('111', '0', 'Bài thuốc Hàn hạ', '', 'bai-thuoc-han-ha', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('112', '0', 'Bài thuốc ôn hạ', '', 'bai-thuoc-on-ha', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('113', '0', 'Bài thuốc nhuận hạ', '', 'Bài-thuốc-nhuận-hạ', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('114', '0', 'bài thuốc trục thủy', '', 'bai-thuoc-truc-thuy', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('115', '0', 'Bài thuốc công bổ kiêm trị', '', 'Bài-thuốc-công-bổ-kiêm-trị', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('116', '0', 'bài thuốc hòa giải thiếu dương', '', 'bai-thuoc-hoa-giai-thieu-duong', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('117', '0', 'điều hòa can tỳ', '', 'dieu-hoa-can-ty', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('118', '0', 'Bài thuốc Điều hòa trường vị', '', 'bai-thuoc-dieu-hoa-truong-vi', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('119', '0', 'Bài thuốc trị sột rét', '', 'bai-thuoc-tri-sot-ret', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('120', '0', 'Bài thuốc giải biểu công lý', '', 'bai-thuoc-giai-bieu-cong-ly', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('121', '0', 'bài thuốc giải biểu thanh lý', '', 'bai-thuoc-giai-bieu-thanh-ly', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('122', '0', 'bài thuốc giải biểu ôn lý', '', 'bai-thuoc-giai-bieu-on-ly', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('123', '0', 'Bài thuốc Phương hương hóa thấp', '', 'bai-thuoc-phuong-huong-hoa-thap', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('124', '0', 'Bài thuốc thanh nhiệt hóa thấp', '', 'bai-thuoc-thanh-nhiet-hoa-thap', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('125', '0', 'Bài thuốc lợi thủy thẩm thấp', '', 'bai-thuoc-loi-thuy-tham-thap', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('126', '0', 'Bài thuốc ôn dương hóa thấp', '', 'bai-thuoc-on-duong-hoa-thap', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('127', '0', 'Bài thuốc Trừ phong thấp', '', 'bai-thuoc-tru-phong-thap', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('128', '0', 'Bài thuốc sơ tán ngoại phong', '', 'bai-thuoc-so-tan-ngoai-phong', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('129', '0', 'Bài thuốc trị nội phong', '', 'bai-thuoc-tri-noi-phong', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('130', '0', 'Bài thuốc chữa chứng ngoại táo', '', 'bai-thuoc-chua-chung-ngoai-tao', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('131', '0', 'Bài thuốc chữa chứng nội táo', '', 'bai-thuoc-chua-chung-noi-tao', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('132', '0', 'Bài thuốc táo thấp hóa đàm', '', 'bai-thuoc-tao-thap-hoa-dam', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('133', '0', 'Bài thuốc khu hàn hóa đàm', '', 'bai-thuoc-khu-han-hoa-dam', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('134', '0', 'Bài thuốc thanh nhiệt hóa đàm', '', 'bai-thuoc-thanh-nhiet-hoa-dam', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('135', '0', 'Bài thuốc trị phong hóa đàm', '', 'bai-thuoc-tri-phong-hoa-dam', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('136', '0', 'Bài thuốc tiêu đạo', '', 'bai-thuoc-tieu-dao', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('137', '0', 'Bài thuốc lý khí', '', 'bai-thuoc-ly-khi', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('138', '0', 'Bài thuốc hành khí', '', 'bai-thuoc-hanh-khi', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('139', '0', 'Bài thuốc giáng khí', '', 'bai-thuoc-giang-khi', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('140', '0', 'Bài thuốc hoạt huyết', '', 'bai-thuoc-hoat-huyet', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('141', '0', 'Bài thuốc chỉ huyết', '', 'bai-thuoc-chi-huyet', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('142', '0', 'Bài thuốc bổ khí', '', 'bai-thuoc-bo-khi', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('143', '0', 'Bài thuốc bổ huyết', '', 'bai-thuoc-bo-huyet', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('144', '0', 'Bài thuốc bổ khí huyết', '', 'bai-thuoc-bo-khi-huyet', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('145', '0', 'Bài thuốc bổ âm', '', 'bai-thuoc-bo-am', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('146', '0', 'Bài thuốc bổ dương', '', 'bai-thuoc-bo-duong', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('147', '0', 'Bài thuốc cố sáp', '', 'bai-thuoc-co-sap', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('148', '0', 'Bài thuốc an thần', '', 'bai-thuoc-an-than', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('149', '0', 'Bài thuốc khai khiếu', '', 'bai-thuoc-khai-khieu', '', 'com_filter_bt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('150', '0', 'Hạt', '', 'hat', '', 'com_filter_ctvt_bophandung', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('151', '0', 'Hoa', '', 'hoa', '', 'com_filter_ctvt_bophandung', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('152', '0', 'Lá', '', 'la', '', 'com_filter_ctvt_bophandung', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('153', '0', 'Phần trên mặt đất', '', 'phan-tren-mat-dat', '', 'com_filter_ctvt_bophandung', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('154', '0', 'Quả', '', 'qua', '', 'com_filter_ctvt_bophandung', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('155', '0', 'Rễ - Thân - Củ', '', 're-than-cu', '', 'com_filter_ctvt_bophandung', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('156', '0', 'Thân', '', 'than', '', 'com_filter_ctvt_bophandung', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('157', '0', 'Cành', '', 'canh', '', 'com_filter_ctvt_bophandung', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('158', '0', 'Toàn cây', '', 'toan-cay', '', 'com_filter_ctvt_bophandung', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('159', '0', 'Vỏ (Thân, Cành, Rễ)', '', 'vo-than-canh-re', '', 'com_filter_ctvt_bophandung', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('160', '0', 'Acid hữu cơ', '', 'acid-huu-co', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('161', '0', 'Alcaloid', '', 'alcaloid', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('162', '0', 'Carbohydrat', '', 'carbohydrat', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('164', '0', 'Lipid', '', 'lipid', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('165', '0', 'Tinh dầu', '', 'tinh-dau', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '6', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('166', '0', 'Chất nhựa', '', 'chat-nhua', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '7', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('167', '0', 'An thai', '', 'an-thai', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('168', '0', 'An thần-ngủ-nhức đầu', '', 'an-than,ngu,nhuc-dau', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('169', '0', 'Bạch đới-khí hư', '', 'bach-doi,khi-hu', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('170', '0', 'Bán thân bất toại', '', 'ban-than-bat-toai', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('171', '0', 'Báng', '', 'bang', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('172', '0', 'Bỏng', '', 'bong', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('173', '0', 'Bổ dưỡng- Bổ đắng', '', 'bo-duong,bo-dang', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('174', '0', 'Cầm máu', '', 'cam-mau', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('175', '0', 'Chấy (trừ)', '', 'chay-(tru)', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('176', '0', 'Chốc đầu', '', 'choc-dau', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('177', '0', 'Dạ dày', '', 'da-day', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('178', '0', 'Di mộng tinh-Liệt dương-Hoạt tinh', '', 'di-mong-tinh,liet-duong,hoat-tinh', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('179', '0', 'Đái đường- Đái tháo', '', 'dai-duong,dai-thao', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('180', '0', 'Giải độc thuốc và thuốc có độc', '', 'giai-doc-thuoc-va-thuoc-co-doc', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('181', '0', 'Giòi, bọ, sâu (trừ)', '', 'gioi,-bo,-sau-(tru)', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('182', '0', 'Thuốc giun, sán (trừ)', '', 'thuoc-giun,-san-(tru)', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('183', '0', 'Hắc lào - vẩy nến', '', 'hac-lao,vay-nen', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('184', '0', 'Ho hen', '', 'ho-hen', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('185', '0', 'Hôi nách', '', 'hoi-nach', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('186', '0', 'Huyết áp', '', 'huyet-ap', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('187', '0', 'Ỉa lỏng', '', 'ia-long', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('188', '0', 'Kháng sinh', '', 'khang-sinh', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('189', '0', 'Kinh nguyệt - phụ nữ', '', 'kinh-nguyet,phu-nu', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('190', '0', 'Lợi tiểu- Thông mật', '', 'loi-tieu,thong-mat', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('191', '0', 'Lỵ', '', 'ly', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('192', '0', 'Mắt- Thiên đầu thống', '', 'mat,thien-dau-thong', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('193', '0', 'Mụn nhọt- Mẩn ngứa- Lở loét', '', 'mun-nhot,man-ngua,lo-loet', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('194', '0', 'Nấc- Chữa nấc', '', 'nac,chua-nac', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('195', '0', 'Nhuận tràng', '', 'nhuan-trang', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('196', '0', 'Nôn mửa , chữa nôn mửa', '', 'non-mua-,-chua-non-mua', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('197', '0', 'Phụ nữ (ra thai)', '', 'phu-nu-(ra-thai)', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('198', '0', 'Phụ nữ (sót rau)', '', 'phu-nu-(sot-rau)', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('199', '0', 'Phụ nữ (Sa dạ con)', '', 'phu-nu-(sa-da-con)', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('200', '0', 'Rắn cắn- Rết và cá độc cắn', '', 'ran-can,ret-va-ca-doc-can', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('201', '0', 'Răng- Miệng - Cam tẩu mã', '', 'rang,mieng,cam-tau-ma', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('202', '0', 'Sỏi thận- Sỏi mật', '', 'soi-than,soi-mat', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('203', '0', 'Sốt- Sốt rét- Cảm cúm', '', 'sot,sot-ret,cam-cum', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('204', '0', 'Sữa (lợi) phụ nữ', '', 'sua-(loi)-phu-nu', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('205', '0', 'Tai mũi họng', '', 'tai-mui-hong', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('206', '0', 'Táo bón', '', 'tao-bon', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('207', '0', 'Tê thấp- Đau nhức xương', '', 'te-thap,dau-nhuc-xuong', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('208', '0', 'Thần kinh suy nhược', '', 'than-kinh-suy-nhuoc', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('209', '0', 'Tiêu hóa - Không tiêu', '', 'tieu-hoa,khong-tieu', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('210', '0', 'Tim', '', 'tim', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('211', '0', 'Tóc mọc- Tóc bạc', '', 'toc-moc,toc-bac', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('212', '0', 'Trai chân', '', 'trai-chan', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('213', '0', 'Tràng nhạc', '', 'trang-nhac', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('214', '0', 'Trẻ em (bệnh)', '', 'tre-em-(benh)', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('215', '0', 'Trĩ- Lòi dom', '', 'tri,loi-dom', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('216', '0', 'Vàng da', '', 'vang-da', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('217', '0', 'Vết đen ở mặt', '', 'vet-den-o-mat', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('218', '0', 'Vú (sưng)- Nẻ vú', '', 'vu-(sung),ne-vu', '', 'com_filter_ctvt_phanloaitheobenh', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('219', '0', 'Thuốc giải biểu hàn', '', 'thuoc-giai-bieu-han', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('220', '0', 'Thuốc giải biểu nhiệt', '', 'thuoc-giai-bieu-nhiet', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('221', '0', 'Thuốc gây  nôn', '', 'thuoc-gay -non', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('222', '0', 'Thuốc chữa nôn', '', 'thuoc-chua-non', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('223', '0', 'Thuốc tả hạ (Gây ỉa lỏng)', '', 'thuoc-ta-ha-(gay-ia-long)', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('224', '0', 'Thuốc lợi tiểu- Trục thủy', '', 'thuoc-loi-tieu,truc-thuy', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('225', '0', 'Thuốc khử phong thấp', '', 'thuoc-khu-phong-thap', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('226', '0', 'Thuốc khử thử (trừ nóng)', '', 'thuoc-khu-thu-(tru-nong)', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('227', '0', 'Thuốc khử hàn (đuổi lạnh)', '', 'thuoc-khu-han-(duoi-lanh)', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('228', '0', 'Thuốc thanh nhiệt giáng hỏa', '', 'thuoc-thanh-nhiet-giang-hoa', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('229', '0', 'Thuốc thanh nhiệt táo thấp', '', 'thuoc-thanh-nhiet-tao-thap', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('230', '0', 'Thuốc thanh nhiệt giải độc', '', 'thuoc-thanh-nhiet-giai-doc', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('231', '0', 'Thuốc thanh nhiệt lương huyết', '', 'thuoc-thanh-nhiet-luong-huyet', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('232', '0', 'Thuốc lý khí', '', 'thuoc-ly-khi', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('233', '0', 'Thuốc hành huyết', '', 'thuoc-hanh-huyet', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('234', '0', 'Thuốc chỉ huyết (Cầm máu)', '', 'thuoc-chi-huyet-(cam-mau)', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('235', '0', 'Thuốc chữa ho bình suyễn', '', 'thuoc-chua-ho-binh-suyen', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('236', '0', 'Thuốc tiêu hóa nhiệt đờm', '', 'thuoc-tieu-hoa-nhiet-dom', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('237', '0', 'Thuốc ôn hóa nhiệt đờm', '', 'thuoc-on-hoa-nhiet-dom', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('238', '0', 'Thuốc an thần định chí', '', 'thuoc-an-than-dinh-chi', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('239', '0', 'Thuốc trấn kinh tức phong', '', 'thuoc-tran-kinh-tuc-phong', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('240', '0', 'Thuốc bổ khí', '', 'thuoc-bo-khi', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('241', '0', 'Thuốc bổ dương', '', 'thuoc-bo-duong', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('242', '0', 'Thuốc bổ huyết', '', 'thuoc-bo-huyet', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('243', '0', 'Thuốc bổ âm', '', 'thuoc-bo-am', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('244', '0', 'Thuốc liễm hãn cố tinh', '', 'thuoc-liem-han-co-tinh', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('245', '0', 'Thuốc sáp trường chỉ tả', '', 'thuoc-sap-truong-chi-ta', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('246', '0', 'Thuốc tiêu hóa', '', 'thuoc-tieu-hoa', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('247', '0', 'Thuốc giun sán', '', 'thuoc-giun-san', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('248', '0', 'Thuốc dùng ngoài', '', 'thuoc-dung-ngoai', '', 'com_filter_ctvt_phanloaitheotinhchatdongy', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('249', '0', 'Động vật không xương sống', '', 'dong-vat-khong-xuong-song', '', 'com_filter_ctvt_dongvatlamthuoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('250', '0', 'Động vật có xương sống', '', 'dong-vat-co-xuong-song', '', 'com_filter_ctvt_dongvatlamthuoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('285', '284', 'Thuốc nội', '', 'thuc-ni', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('251', '0', 'Bổ dưỡng', '', 'bo-duong', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('252', '0', 'Dùng ngoài', '', 'dung-ngoai', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('253', '0', 'Hô hấp', '', 'ho-hap', '', 'com_filter_t_nhomdieutri', '', ' ', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('254', '0', ' Kháng viêm giải độc', '', 'khang-viem-giai-doc', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('255', '0', 'thuốc hướng thần kinh', '', 'thuoc-huong-than-kinh', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('256', '0', 'Tiêu hóa- gan mật', '', 'tieu-hoa-gan-mat', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '6', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('257', '0', 'Tiết niệu', '', 'tiet-nieu', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '7', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('258', '0', 'Tim mạch-Huyết áp', '', 'tim-mach-huyet-ap', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '8', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('259', '0', 'Phụ khoa', '', 'phu-khoa', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '9', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('260', '0', 'Tăng cường miễn dịch và chống oxy hóa', '', 'tang-cuong-mien-dich-va-chong-oxi-hoa', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '10', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('261', '0', 'An thần', '', 'an-than', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '11', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('262', '0', 'Hạ nhiệt- cảm sốt', '', 'ha-nhiet-cam-sot', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '12', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('263', '0', 'Xương khớp', '', 'xuong-khop', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '13', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('264', '0', 'Cồn thuốc', '', 'con-thuoc', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('265', '0', 'Gel', '', 'gel', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('266', '0', 'Kem mỡ', '', 'kem-mo', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('267', '0', 'Thuốc dùng ngoài', '', 'thuoc-dung-ngoai', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('268', '0', 'Thuốc hít', '', 'thuoc-hit', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('269', '0', 'Thuốc hoàn', '', 'thuoc-hoan', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '6', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('270', '0', 'Thuốc nước', '', 'thuoc-nuoc', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '7', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('271', '0', 'Trà thuốc', '', 'tra-thuoc', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '8', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('272', '0', 'Viên bao phim', '', 'vien-bao-phim', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '9', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('273', '0', 'Viên bao đường', '', 'vien-bao-duong', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '10', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('274', '0', 'Viên nang cứng', '', 'vien-nang-cung', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '11', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('275', '0', 'Viên nang mềm', '', 'vien-nang-mem', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '12', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('276', '0', 'Viên nén', '', 'vien-nen', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '13', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('277', '0', 'Viên sủi', '', 'vien-sui', '', 'com_filter_t_dangbaoche', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '14', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('278', '0', 'Cây thuốc - Vị Thuốc', '', 'cay-thuoc-vi-thuoc', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '12', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('279', '0', 'Bài thuốc', '', 'bai-thuoc', '', '3', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('295', '0', 'Công ty đông Dươc Bảo Long', '', 'tinh-du-bi', '', '7', 'left', '<p><img src=\"http://enbac.com/style/images/spacer.gif\" border=\"0\" width=\"1\" height=\"1\" /></p>\r\n<p> </p>', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('310', '0', 'Công ty Cổ phần SAMAN', '', 'cong-ty-c-phn-saman', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '11', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('311', '0', 'Công ty TNHH Đông Dược Phúc Hưng', '', 'cong-ty-tnhh-ong-dc-phuc-hng', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '12', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('312', '0', 'Công ty Cổ phần Dược Trung ương Mediplantex', '', 'cong-ty-c-phn-dc-trung-ng-mediplantex', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '13', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('294', '0', 'Sản phẩm nổi bật', '', 'san-pham-noi-bat', '', '9', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('296', '0', 'Thuốc khác', '', 'thuoc-khac', '', '4', 'left', '', '0', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('300', '0', 'Công ty Nata Hoa Linh', '', 'gian-hang-hoa-linh', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('304', '0', 'Công ty TNHH Đầu tư và Phát triển Đông Tây', '', 'cong-ty-tnhh-u-t-va-phat-trin-ong-tay', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '6', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('301', '0', 'Công ty cổ phần Traphaco', '', 'gian-hang-traphaco', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('302', '0', 'Công ty Cổ Phần Dược Phẩm Đông Dược ', '', 'gian-hang-nam-dc', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('308', '0', 'Thuốc khác', '', 'thuoc-khac', '', 'com_filter_t_nhomdieutri', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '14', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('305', '0', 'Công ty cổ phần xuất nhập khẩu Y tế Domesco', '', 'cong-ty-c-phn-xut-nhp-khu-y-t-domesco', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '7', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('306', '0', 'Công ty TNHH Dược phẩm Á Âu', '', 'cong-ty-tnhh-dc-phm-a-au', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '8', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('307', '0', 'Công Ty Cổ Phần Dược Phẩm Trường Thọ', '', 'gian-hang-cong-ty-c-phn-dc-phm-trng-th', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '9', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('309', '0', 'Công ty TNHH dược thảo Phúc Vinh', '', 'gian-hang-cong-ty-tnhh-dc-tho-phuc-vinh', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '10', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('313', '300', 'Thuốc kháng viêm giải độc', '', 'danh-mc-sn-phm', '', '7', 'left', '<p> </p>\r\n<p> </p>\r\n<!--list box--> <!--            <img src=\"http://thuocdongduoc.vn/templates/thuocdocduoc/images/news&amp;event_116.png\" mce_src=\"templates/thuocdocduoc/images/news&amp;event_116.png\" />-->', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('320', '0', 'Công ty Cổ Phần Dược Danapha ', '', 'cong-ty-c-phn-dc-danapha-', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '15', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('319', '0', 'Công ty cổ phần dược phẩm Nam Hà ', '', 'cong-ty-c-phn-dc-phm-nam-ha-', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '14', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('314', '300', 'Thuốc phụ khoa', '', 'thuc-ph-khoa', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('315', '300', 'Thuốc an thần', '', 'thuc-an-thn', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('316', '300', 'Thuốc bổ dưỡng', '', 'thuc-b-dng', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('317', '300', 'Thuốc dùng ngoài', '', 'thuc-dung-ngoai', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('318', '300', 'Thuốc hạ nhiệt - cảm sôt', '', 'thuc-h-nhit-cm-sot', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '6', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('323', '0', 'Ư', '', '2010-05-15-04-53-28', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '22', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('322', '0', 'DƯỢC PHẨM ÍCH NHÂN', '', 'dc-phm-ich-nhan', '', '7', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '16', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('326', '52', 'Ô', '', 'o', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('327', '37', 'Â', '', 'a', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('328', '41', 'Đ', '', '2010-05-16-05-53-12', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('329', '52', 'Ơ', '', '2010-05-16-05-54-40', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('330', '0', 'Glycoside tim', '', 'glycoside-tim', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '8', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('331', '0', 'Saponin', '', 'saponin', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '9', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('332', '0', 'Anthranoid', '', 'anthranoid', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '10', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('333', '0', 'Flavonoid', '', 'flavonoid', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '11', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('334', '0', 'Coumarin', '', 'coumarin', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '12', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('335', '0', 'Tanin', '', 'tanin', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '13', '0', '0', '');

-- ----------------------------
-- Table structure for `jos_comment`
-- ----------------------------
DROP TABLE IF EXISTS `jos_comment`;
CREATE TABLE `jos_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `created` datetime NOT NULL,
  `del_flag` smallint(6) NOT NULL,
  `answer_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `answer_content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jos_comment
-- ----------------------------
INSERT INTO `jos_comment` VALUES ('1', 'L', 'H', '98237874', 'Thu?c d', '', '2010-04-08 16:18:51', '1', 'dgasdg', 'asdg', '', '1', '1');
INSERT INTO `jos_comment` VALUES ('5', 'asgahsadh', 'hsadhas', 'gasgasdg', 'sadgasd', 'gasdgasdg', '0000-00-00 00:00:00', '1', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('6', 'sadgsadgsad', 'gasdgasdg', 'gasdg', 'sdgasd', 'asdgasdg', '0000-00-00 00:00:00', '1', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('7', 'asghashsadh', 'dsafsadgsad', 'gsadg', 'sadfsad', 'asdgsadg', '0000-00-00 00:00:00', '1', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('8', 'sadgsadgsad', 'ghsadhsahs', 'adhsadhsa', 'adhs', 'hsadhasdsda', '2010-04-09 15:34:42', '1', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('9', 'ahsdhsadhsadh', 'asdhsadhasdh', 'dsah', 'hasdhsadh', 'asghdhdsa', '0000-00-00 00:00:00', '1', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('14', 'fsdfsfsf', '', '', '', '', '0000-00-00 00:00:00', '0', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('18', 'fsfsfaaaaaaaaaaaaaaaaaaaaaaaaaa', '', 'fsdfsdfsdfs@gmail.com', '', '', '0000-00-00 00:00:00', '0', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('19', 'd', '', 'postdgasdg@gmail.com', '', '', '2010-04-09 15:34:42', '1', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('20', 'dsgsdag', '', 'dsag@dsa.com', '', '', '0000-00-00 00:00:00', '0', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('21', 'dafhdf', 'shdfh', 'dsfhdsfh@asdf.com', 'asgasd', 'sadh', '0000-00-00 00:00:00', '0', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('23', 'Giang', 'H', 'gh@gamo.com', 'kasdkgkl', 'lalsglkdgsaklgd', '0000-00-00 00:00:00', '0', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('24', 'Giang 2', 'kjasgdlk', 'ls@mgadl.com', 'l', 'lkasdgkl', '0000-00-00 00:00:00', '0', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('25', 'Nam d', 'H', 'd@a.com', 'klasdlgkl', 'lklfaklgksad', '0000-00-00 00:00:00', '0', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('26', 'nam d?i ', 'kjasd', 'lksa@gma.com', 'l', 'lkklgasdgd', '0000-00-00 00:00:00', '0', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('27', 'nam', 'asg,', 'g@a.com', 'kllasdgl', 'lfgslka', '0000-00-00 00:00:00', '0', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('28', 'h', 'kask', 'ka@sm.com', 'ksdk', 'lsag', '0000-00-00 00:00:00', '0', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('29', 'g', 'g', 'sd@yak.com', 'l', 'l;', '0000-00-00 00:00:00', '0', null, null, '', '0', '1');
INSERT INTO `jos_comment` VALUES ('31', 'fsdfs', 'fsdfsdf', 'longdt@live.com', 'he he', 'nội dung câu hỏi', '2010-04-12 04:13:00', '1', null, null, '', '1', '1');
INSERT INTO `jos_comment` VALUES ('32', 'Vũ Thuý Hiền', 'Hà Nội', 'thewarm2000@gmail.com', 'Bệnh huyết áp thấp có nguy hiểm không?', 'Bệnh huyết áp thấp có nguy hiểm không?  	\r\n		\r\n	\r\n\r\nKính gửi chuyên mục hỏi đáp thuốc biệt dược ! Tôi tên là Hiền, năm nay 37 tuổi, thời gian gần đây tôi rất hay bị đau đầu, chóng mặt, buồn nôn, thường có cảm giác như say tàu xe, người chông chênh rất khó chịu, và mệt mỏi, khi đó đo huyết áp thường dao động ở khoảng 80/60, 85/60, 90/65, rất hiếm khi HA tối đa lên đến 100. Tôi được bác sỹ chẩn đoán là Huyết áp thấp, Rối loạn tuần hoàn naõ . Tôi rất lo lắng, buồn phiền . Xin hỏi chuyên mục là bệnh đó có nguy hiểm không ? và tôi phải điều trị như thế nào ? Rất mong được chuyên mục tư vấn cho tôi . Xin chân thành cảm ơn .', '2010-05-24 16:24:07', '1', 'admin', 'longdt@live.com', 'nội dung câu trả lời', '0', '1');
INSERT INTO `jos_comment` VALUES ('33', 'Long', 'fsdlfksj', 'longdt@live.com', 'noi dung cau hoi', 'hoi ty nao', '2010-05-24 16:24:07', '1', 'admin', 'longdt@live.com', 'Hỏi thì trả lời thui', '0', '2');

-- ----------------------------
-- Table structure for `jos_comment_category`
-- ----------------------------
DROP TABLE IF EXISTS `jos_comment_category`;
CREATE TABLE `jos_comment_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(350) NOT NULL,
  `ordering` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_comment_category
-- ----------------------------
INSERT INTO `jos_comment_category` VALUES ('1', 'Câu hỏi chung', '4');
INSERT INTO `jos_comment_category` VALUES ('2', 'Câu hỏi về Cây Thuốc - Vị Thuốc', '1');
INSERT INTO `jos_comment_category` VALUES ('3', 'Câu hỏi về Bài Thuốc', '2');
INSERT INTO `jos_comment_category` VALUES ('4', 'Câu hỏi về sử dụng Thuốc', '3');

-- ----------------------------
-- Table structure for `jos_components`
-- ----------------------------
DROP TABLE IF EXISTS `jos_components`;
CREATE TABLE `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_components
-- ----------------------------
INSERT INTO `jos_components` VALUES ('1', 'Banners', '', '0', '0', '', 'Banner Management', 'com_banners', '0', 'js/ThemeOffice/component.png', '0', 'track_impressions=1\ntrack_clicks=1\ntag_prefix=\n\n', '1');
INSERT INTO `jos_components` VALUES ('2', 'Banners', '', '0', '1', 'option=com_banners', 'Active Banners', 'com_banners', '1', 'js/ThemeOffice/edit.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('3', 'Clients', '', '0', '1', 'option=com_banners&c=client', 'Manage Clients', 'com_banners', '2', 'js/ThemeOffice/categories.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('4', 'Web Links', 'option=com_weblinks', '0', '0', '', 'Manage Weblinks', 'com_weblinks', '0', 'js/ThemeOffice/component.png', '0', 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', '1');
INSERT INTO `jos_components` VALUES ('5', 'Links', '', '0', '4', 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', '1', 'js/ThemeOffice/edit.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('6', 'Categories', '', '0', '4', 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', '2', 'js/ThemeOffice/categories.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('7', 'Contacts', 'option=com_contact', '0', '0', '', 'Edit contact details', 'com_contact', '0', 'js/ThemeOffice/component.png', '1', 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', '1');
INSERT INTO `jos_components` VALUES ('8', 'Contacts', '', '0', '7', 'option=com_contact', 'Edit contact details', 'com_contact', '0', 'js/ThemeOffice/edit.png', '1', '', '1');
INSERT INTO `jos_components` VALUES ('9', 'Categories', '', '0', '7', 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', '2', 'js/ThemeOffice/categories.png', '1', 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', '1');
INSERT INTO `jos_components` VALUES ('10', 'Polls', 'option=com_poll', '0', '0', 'option=com_poll', 'Manage Polls', 'com_poll', '0', 'js/ThemeOffice/component.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('11', 'News Feeds', 'option=com_newsfeeds', '0', '0', '', 'News Feeds Management', 'com_newsfeeds', '0', 'js/ThemeOffice/component.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('12', 'Feeds', '', '0', '11', 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', '1', 'js/ThemeOffice/edit.png', '0', 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', '1');
INSERT INTO `jos_components` VALUES ('13', 'Categories', '', '0', '11', 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', '2', 'js/ThemeOffice/categories.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('14', 'User', 'option=com_user', '0', '0', '', '', 'com_user', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('15', 'Search', 'option=com_search', '0', '0', 'option=com_search', 'Search Statistics', 'com_search', '0', 'js/ThemeOffice/component.png', '1', 'enabled=1\nshow_date=1\n\n', '1');
INSERT INTO `jos_components` VALUES ('16', 'Categories', '', '0', '1', 'option=com_categories&section=com_banner', 'Categories', '', '3', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('17', 'Wrapper', 'option=com_wrapper', '0', '0', '', 'Wrapper', 'com_wrapper', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('18', 'Mail To', '', '0', '0', '', '', 'com_mailto', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('19', 'Media Manager', '', '0', '0', 'option=com_media', 'Media Manager', 'com_media', '0', '', '1', 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS,ZIP,RAR,zip,rar,7z\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', '1');
INSERT INTO `jos_components` VALUES ('20', 'Articles', 'option=com_content', '0', '0', '', '', 'com_content', '0', '', '1', 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=1\nlink_section=1\nshow_category=1\nlink_category=1\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\nfilter_tags=\nfilter_attritbutes=\n\n', '1');
INSERT INTO `jos_components` VALUES ('21', 'Configuration Manager', '', '0', '0', '', 'Configuration', 'com_config', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('22', 'Installation Manager', '', '0', '0', '', 'Installer', 'com_installer', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('23', 'Language Manager', '', '0', '0', '', 'Languages', 'com_languages', '0', '', '1', 'site=vi-VN\n\n', '1');
INSERT INTO `jos_components` VALUES ('24', 'Mass mail', '', '0', '0', '', 'Mass Mail', 'com_massmail', '0', '', '1', 'mailSubjectPrefix=\nmailBodySuffix=\n\n', '1');
INSERT INTO `jos_components` VALUES ('25', 'Menu Editor', '', '0', '0', '', 'Menu Editor', 'com_menus', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('27', 'Messaging', '', '0', '0', '', 'Messages', 'com_messages', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('28', 'Modules Manager', '', '0', '0', '', 'Modules', 'com_modules', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('29', 'Plugin Manager', '', '0', '0', '', 'Plugins', 'com_plugins', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('30', 'Template Manager', '', '0', '0', '', 'Templates', 'com_templates', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('31', 'User Manager', '', '0', '0', '', 'Users', 'com_users', '0', '', '1', 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=0\nfrontend_userparams=1\n\n', '1');
INSERT INTO `jos_components` VALUES ('32', 'Cache Manager', '', '0', '0', '', 'Cache', 'com_cache', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('33', 'Control Panel', '', '0', '0', '', 'Control Panel', 'com_cpanel', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('34', 'Vinaora Visitors Counter', 'option=com_vvisit_counter', '0', '0', 'option=com_vvisit_counter', 'Vinaora Visitors Counter', 'com_vvisit_counter', '0', 'js/ThemeOffice/component.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('37', 'Lọc trong bài viết', '', '0', '0', 'option=com_categories&section=com_filter_alpha', 'Content Filter Manager<small>[Filter]</small>', '', '0', 'templates/khepri/images/menu/icon-16-install.png', '0', ' ', '1');
INSERT INTO `jos_components` VALUES ('38', 'Alphabetical', '', '0', '37', 'option=com_categories&section=com_filter_alpha', '', '', '0', '', '0', ' ', '1');
INSERT INTO `jos_components` VALUES ('39', 'CTVT >> Bộ phận dùng', '', '0', '37', 'option=com_categories&section=com_filter_ctvt_bophandung', 'Bộ phận dùng', '', '0', '', '0', '', '1');
INSERT INTO `jos_components` VALUES ('60', 'SubCategories', 'option=com_subcategories', '0', '0', 'option=com_subcategories', 'SubCategories', 'com_subcategories', '0', 'js/ThemeOffice/component.png', '0', 'subcategories=1', '1');
INSERT INTO `jos_components` VALUES ('51', 'CTVT >> Thành phần hóa học', '', '0', '37', 'option=com_categories&section=com_filter_ctvt_thanhphanhoahoc', 'Thành phần hóa học', '', '0', '', '0', ' ', '1');
INSERT INTO `jos_components` VALUES ('52', 'CTVT >> Phân loại theo bệnh', '', '0', '37', 'option=com_categories&section=com_filter_ctvt_phanloaitheobenh', 'Phân loại theo bênh', '', '0', '', '0', ' ', '1');
INSERT INTO `jos_components` VALUES ('54', 'CTVT >> Phân loại theo tính chất đông y', '', '0', '37', 'option=com_categories&section=com_filter_ctvt_phanloaitheotinhchatdongy', 'Phân loại theo tính chất đông y', '', '0', '', '0', ' ', '1');
INSERT INTO `jos_components` VALUES ('55', 'CTVT >> Động vật làm thuốc', '', '0', '37', 'option=com_categories&section=com_filter_ctvt_dongvatlamthuoc', 'Động vật làm thuốc', '', '0', '', '0', ' ', '1');
INSERT INTO `jos_components` VALUES ('56', 'Bài Thuốc >> Phân loại theo tính chất đông y', '', '0', '37', 'option=com_categories&section=com_filter_bt_phanloaitheotinhchatdongy', 'Phân loại theo tính chất đông y', '', '0', '', '0', ' ', '1');
INSERT INTO `jos_components` VALUES ('57', 'Bài Thuốc >> Phân loại theo bệnh', '', '0', '37', 'option=com_categories&section=com_filter_bt_phanloaitheobenh', 'Phân loại theo bệnh', '', '0', '', '0', ' ', '1');
INSERT INTO `jos_components` VALUES ('61', 'Comment', 'option=com_comment', '0', '0', 'option=com_comment', 'Comment', 'com_comment', '0', 'js/ThemeOffice/component.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('62', 'Thuốc đông dược >> Thuốc >> Nhóm điều trị', '', '0', '37', 'option=com_categories&section=com_filter_t_nhomdieutri', 'Nhóm điều trị', '', '0', '', '0', ' ', '1');
INSERT INTO `jos_components` VALUES ('63', 'Thuốc đông dược >> Thuốc >> Dạng bào chế', '', '0', '37', 'option=com_categories&section=com_filter_t_dangbaoche', '', '', '0', '', '0', ' ', '1');
INSERT INTO `jos_components` VALUES ('64', 'Extranewsplugin-LanguagePack', '', '0', '0', '', 'Extranewsplugin-LanguagePack', 'com_extranewsplugin-languagepack', '0', '', '0', '', '1');
INSERT INTO `jos_components` VALUES ('65', 'Attachments', 'option=com_attachments', '0', '0', 'option=com_attachments', 'Attachments', 'com_attachments', '0', 'components/com_attachments/attachments.png', '0', 'who_can_see=anyone\nwho_can_add=author\npublish_default=1\nauto_publish_warning=\nshow_column_titles=0\nshow_description=1\nshow_file_size=1\nshow_downloads=0\nshow_modification_date=0\nmod_date_format=%x %H:%M\nsort_order=filename\nuser_field_1_name=\nuser_field_2_name=\nuser_field_3_name=\nmax_filename_length=0\nattachments_table_style=attachmentsList\nfile_link_open_mode=in_same_window\nprepend=article_id\nattachments_subdir=attachments\nattachments_titles=\nhide_attachments_for=\nsecure=0\ndownload_mode=inline\nregister_url=index.php?option=com_user&task=register\n\n', '1');
INSERT INTO `jos_components` VALUES ('66', 'AdsManager', 'option=com_adsmanager', '0', '0', 'option=com_adsmanager', 'AdsManager', 'com_adsmanager', '0', 'js/ThemeOffice/component.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('67', 'Configuration', '', '0', '66', 'option=com_adsmanager&act=configuration&task=edit', 'Configuration', 'com_adsmanager', '0', 'js/ThemeOffice/component.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('68', 'Fields', '', '0', '66', 'option=com_adsmanager&act=fields', 'Fields', 'com_adsmanager', '1', 'js/ThemeOffice/component.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('69', 'Columns', '', '0', '66', 'option=com_adsmanager&act=columns', 'Columns', 'com_adsmanager', '2', 'js/ThemeOffice/component.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('70', 'Ad Display', '', '0', '66', 'option=com_adsmanager&act=positions', 'Ad Display', 'com_adsmanager', '3', 'js/ThemeOffice/component.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('71', 'Categories', '', '0', '66', 'option=com_adsmanager&act=categories', 'Categories', 'com_adsmanager', '4', 'js/ThemeOffice/component.png', '0', '', '1');
INSERT INTO `jos_components` VALUES ('72', 'Ads', '', '0', '66', 'option=com_adsmanager&act=ads', 'Ads', 'com_adsmanager', '5', 'js/ThemeOffice/component.png', '0', '', '1');

-- ----------------------------
-- Table structure for `jos_contact_details`
-- ----------------------------
DROP TABLE IF EXISTS `jos_contact_details`;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_contact_details
-- ----------------------------
INSERT INTO `jos_contact_details` VALUES ('1', 'Email cho chúng tôi.', 'email-cho-chung-toi', 'Position', '', '', '', '', '', '', '', '', '', null, 'tuandl50@yahoo.com', '0', '1', '0', '0000-00-00 00:00:00', '1', 'show_name=1\nshow_position=0\nshow_email=1\nshow_street_address=1\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=0\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', '67', '25', '0', '', '');
INSERT INTO `jos_contact_details` VALUES ('2', 'Liên hệ quảng cáo', 'lien-h-qung-cao', '', '', '', '', '', '', '', '', '', '', null, 'tuandl50@yahoo.com', '0', '1', '0', '0000-00-00 00:00:00', '1', 'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=fsdfsfs\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', '67', '26', '0', '', '');

-- ----------------------------
-- Table structure for `jos_content`
-- ----------------------------
DROP TABLE IF EXISTS `jos_content`;
CREATE TABLE `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_content
-- ----------------------------
INSERT INTO `jos_content` VALUES ('172', 'Củ cải giã nát chữa nhiệt miệng', 'c-ci-gia-nat-cha-nhit-ming', '', '<p style=\"text-align: justify;\">Củ cải dùng làm rau ăn, có thể chế biến thành nhiều món ăn như luộc, kho với thịt, với cá, xào mỡ, làm dưa... rất ngon miệng. Ngoài ra, với vị cay, tính lạnh, củ cải còn là một vị  thuốc.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/cucai.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br />Củ cải trắng chứa 92% nước; 1,5% protit; 3,7% gluxit; 1,8 celluloz. Lá và ngọn chứa tinh dầu và một lượng đáng kể vitamin A và C. Một số bài thuốc từ củ cải như sau:<br /><br />Trị chứng khản tiếng, không nói được: Củ cải sống 300g rửa sạch vắt lấy nước, gừng sống 20g giã vắt lấy nước, trộn hai thứ vào nhau rồi uống ngày 3 lần, uống 2 ngày là khỏi.<br /><br />Trị chứng chảy máu cam: Củ  cải sống 300g rửa sạch giã vắt lấy 1/2 bát nước hòa thêm một ít rượu rồi đun nóng, lấy nước này nhỏ vào mũi ngày 3 - 4 lần.<br /><br />Trị chứng lở loét miệng do nhiệt: Giã củ cải sống 300g rồi vắt lấy nước hòa thêm một ít nước lọc, súc miệng ngày 3 lần, dùng 2 ngày khỏi.<br /> <br /><br />Trị đại tiện ra máu: Củ cải sống 200g giã nát, lọc lấy một chén nước nhỏ  cho 4 thìa nhỏ nước mật ong, đun chín và uống nước này vào buổi sáng hằng ngày.<br /><br />Trị đau sỏi mật: Củ cải sống 300g thái to thành từng miếng như ngón tay, tẩm với mật ong màu vàng nhạt, không dùng mật ong màu nâu sẫm. Đặt củ cải đã tẩm mật ong lên chảo rồi sấy khô trên than hoặc lửa. Khi khô lại tẩm mật ong và sấy khô không để chảy nước, ăn củ cải sấy khô và uống một ít nước muối loãng ngày 2 lần, dùng trong một tháng.<br /><br />Trị chứng nước tiểu  đục: Người bị nước tiểu đục do lo nghĩ  nhiều, hoặc tửu sắc quá độ, lấy 200g củ cải trắng khoét rỗng bỏ hết ruột bên trong rồi nhét  đầy ngô thù du (có bán tại hiệu thuốc Bắc), đậy kín lại.<br />Hấp chín củ cải bằng chõ rồi lấy ra bỏ hết ngô thù du, củ cải sấy khô, tán bột cho thêm chút bột quấy đặc vào và viên lại thành viên nhỏ như hạt đậu xanh. Ngày uống 3 lần, mỗi lần uống khoảng 30 - 40 viên với nước, rất hiệu nghiệm.<br /> <br /><em><strong>Theo The Bee</strong></em></p>', '1', '1', '0', '2', '2010-05-14 15:24:49', '62', '', '2010-05-15 09:40:37', '62', '0', '0000-00-00 00:00:00', '2010-05-14 15:24:49', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '3', 'Củ cải, nhiệt miệng', 'Củ cải giã nát chữa nhiệt miệng', '0', '10', 'robots=Củ cải, nhiệt miệng\nauthor=');
INSERT INTO `jos_content` VALUES ('171', 'Mơ - \"Bạn đường\" của sức khỏe và sắc đẹp ', 'm-qbn-ngq-ca-sc-khe-va-sc-p-', '', '<p style=\"text-align: justify;\">Quả mơ tròn trịa, màu vàng xanh, phần thịt vừa chua, vừa chát, luôn có sẵn trên thị trường, giá khá rẻ, lại có nhiều công dụng tốt cho sức khỏe và làm đẹp.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/mo.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br /><strong>Làm đẹp</strong><br /><br />Thành phần của quả mơ bao gồm axit, carotene, vitamin C, vitamin B1, tanin, lycopen, pectin, giúp kích thích quá trình chuyển hóa oxy trong tế bào, làm tế bào chóng hồi phục, chậm lão hóa.<br />Chất beta-carotene trong nước mơ có thể chuyển hóa thành vitamin A cho cơ thể. Trong 100g trái mơ cung cấp đầy đủ lượng vitamin A cần thiết mỗi ngày cho cơ thể nhờ có chứa thành phần magie, canxi và potassium. Nước mơ còn là liều thuốc chống oxy hóa tự nhiên, làm sáng mắt và da mịn màng. Loại nước này còn có tác dụng cân bằng hệ thần kinh và giúp dễ ngủ.<br /><br />Tinh dầu trái mơ rất tốt cho da mặt, thích hợp cho da người lớn và da nhạy cảm, làm giảm sự viêm da. Sau khi được hấp thụ qua da, nó giúp tái tạo, nuôi dưỡng và giữ ẩm cho da mặt.<br /><br />Dầu nền, dầu dẫn hay dầu chuyển làm từ tinh dầu trái mơ là loại dầu thực vật được sử dụng để vận chuyển các dầu tinh chất vào sâu trong làn da (dầu tinh chất là loại dầu được cô đặc từ thành phần thực vật được chọn lọc nên không thể bôi trực tiếp lên da). Để da hấp thụ được các thành phần của dầu tinh chất, phải pha trộn dầu tinh chất với dầu nền mang tinh chất thực vật 100%.<br /><br />Massage bằng dầu nền trái mơ sẽ giúp dầu tinh chất thẩm thấu vào da một cách hiệu quả. Ngoài ra, nó còn cung cấp các dưỡng chất cho da, giúp da mềm mại, mịn màng. Dầu nền trái mơ còn dùng để dưỡng tóc giúp tóc mềm mượt tự nhiên, tránh chẻ ngọn, khô cứng (có thể chỉ dùng riêng dầu nền trái mơ hoặc pha với các loại dầu khác).<br /><br />Riêng dầu hạt mơ còn được dùng làm thuốc bổ và thuốc nhuận tràng, thuốc bôi trừ nẻ.<br /><br />Để bảo quản tinh dầu trái mơ hay hạt mơ, nên đặt chúng ở nơi thoáng mát, tránh ánh sáng trực tiếp chiếu vào.<br /><br />Lưu ý là tinh dầu mơ chỉ dùng để điều chế mỹ phẩm, không dùng làm thực phẩm.<br /><br /><strong>Sức khỏe</strong><br /><br />Mơ chín có nhiều vitamin A, C và các nguyên tố vi lượng. Mơ ngâm đường, ngâm muối vừa tạo được loại nước giải khát tốt trong những ngày hè, vừa có lợi cho hệ tiêu hóa. Bị đau bụng, nếu uống một chút nước mơ nguyên chất là ổn ngay. Quả mơ chín sau khi hái được chế biến thành mơ đen (ô mai) hay mơ trắng (bạch mai), dùng làm thuốc trị ho, giải khát, sinh tân dịch, chữa đau cổ...<br /><br />Nước siro mơ có tác dụng giải khát, tăng cường sức khỏe. Cách làm rất đơn giản: Mơ chín rửa sạch, ngâm qua nước ấm có hòa thêm chút muối, sau đó vớt ra để ráo nước rồi cho vào bình thủy tinh nắp kín, cứ một lớp mơ lại rắc một lớp đường, sau đó đậy kín. Tỷ lệ thích hợp nhất là cứ một ký mơ dùng một ký đường.<br /><br />Theo kinh nghiệm dân gian, rượu mơ có tác dụng tốt cho sức khỏe như kích thích tiêu hóa, giúp ăn ngon miệng, điều trị bệnh đường ruột, cung cấp chất dinh dưỡng cho hệ thần kinh, có tác dụng giảm chứng lo âu và căng thẳng tinh thần, trị bệnh mất ngủ.<br />Nhờ có hàm lượng axit acitric hữu cơ và axit amin khá cao, rượu mơ còn giúp tăng cường sức đề kháng cho cơ thể, giảm mệt mỏi, suy nhược... Mỗi ngày chỉ nên uống 30 - 60ml rượu mơ, tốt nhất là pha với nước. Cách làm rượu mơ cũng khá đơn giản: Cứ một ký mơ đem ngâm với một lít rượu 40 - 45 độ, ngâm khoảng một tháng trở lên là dùng được.<br /> <br /><em><strong>Theo Doanh Nhân</strong></em></p>', '1', '1', '0', '3', '2010-05-14 15:18:27', '62', '', '2010-05-15 14:19:25', '62', '0', '0000-00-00 00:00:00', '2010-05-14 15:18:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '5', 'Mơ', 'Mơ - Bạn đường của sức khỏe và sắc đẹp', '0', '9', 'robots=Mơ\nauthor=');
INSERT INTO `jos_content` VALUES ('3', 'Dùng thuốc đông y không đơn giản như nhiều người vẫn nghĩ', 'dung-thuc-ong-y-khong-n-gin-nh-nhiu-ngi-vn-ngh', '', '<p style=\"text-align: justify;\">Nhiều người cho rằng uống thuốc Đông y không sợ phản ứng phụ vì thuốc chế biến từ thực vật (cây cỏ, hoa trái) hoặc động vật có trong tự nhiên. Có người lại uống thuốc theo sự mách bảo hoặc kinh nghiệm của người khác.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/dungthuocdongykhongdongiannhumoinguoinghi.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Bắt mạch cho bệnh nhân</em></p>\r\n<p style=\"text-align: justify;\">Nhất là khi sử dụng thuốc bổ Đông y là dùng bạt mạng, nghĩ rằng “không bổ âm cũng bổ dương” mà điển hình là dùng các thang thuốc bổ ngâm rượu ai uống cũng “tốt”, nam nữ, già trẻ đều uống được... và rất “bổ”. Nghĩ như thế, hiểu thế thật sai lầm và nguy hiểm.<br /><br /><br />Trước hết dù là thảo dược hay động vật hoặc sa khoáng trong tự nhiên nhưng trong các vị thuốc đều có thể gây độc cho con người khi đưa vào cơ thể, vì bản thân chúng có chứa các chất độc hại như: Ba đậu, ô đầu, mã tiền, ban miêu, bọ cạp, ngưu hoàng, khinh phấn, chu sa, thần sa... Ngoài ra còn phải kể đến khi phối ngẫu với nhau các vị thuốc nếu đứng một mình thì không độc hại, lại trở thành độc hại do chúng phản nhau như lê lô với nhân sâm, huyền sâm hoặc chúng kỵ nhau như nhân sâm với ngũ linh chi.<br /><br />Theo y học cổ truyền, thuốc (dược vật) luôn tồn tại tứ khí (tứ tính) là hàn, lương, ôn, nhiệt để nói lên mức độc nóng (nhiệt) lạnh (hàn) của chúng. Còn bệnh tật của con người cũng được phân làm bệnh nhiệt hay hàn và cơ địa con người cũng vậy thuộc nhiệt hay hàn. Về nguyên lý chữa bệnh thì bệnh hoặc cơ địa nhiệt thì phải dùng thuốc có tính hàn để lặp lại cân bằng âm dương và ngược lại.<br /><br />Nếu dùng sai, dùng nhầm thì sẽ nguy hiểm cho người bệnh. Ví như một người tỳ vị hư hàn (lạnh) mà cho uống nhâm sâm là một vị thuốc bổ, quý hiếm nhưng có tính hàn thì bệnh chẳng khỏi, người chẳng khỏe lên mà còn nguy hiểm. Chả thế mà y văn cổ có dặn: “phúc thống” (đau bụng), phục (uống) nhâm sâm tắc tử.<br /><br />Các bậc danh y ngày xưa đã tổng kết và căn dặn lại như một nguyên lý bất di, bất dịch là “Nhiệt ngộ nhiệt tắc cuồng” (người có bệnh nhiệt hoặc cơ địa nhiệt dùng thuốc nhiệt thì phát điên cuồng) “Hàn ngộ hàn tắc tử” (người có bệnh hàn hoặc cơ địa hàn mà dùng thuốc hàn có thể dẫn tới chết người).<br /><br />Một dẫn chứng đơn giản nếu bị cảm mạo phong hàn thường sợ lạnh, không có mồ hôi, ngạt mũi... thì phải dùng phép phát tán phong hàn (tân ôn giải biểu) tức phải dùng các vị thuốc cay nóng như ma hoàng, quế chi, tía tô, hương phụ và xông bằng các lá có tinh dầu như cam, bưởi, sả, kinh giới, tía tô để ra mồ hôi thì sẽ khỏi bệnh.<br /><br />Ngược lại nếu bị cảm mạo do phong nhiệt thì nặng đầu, miệng khô, ra nhiều mồ hôi thì phải dùng phép tân lương giải biểu với các vị thuốc mát như liên kiều, bạc hà, lá dâu, rễ sậy, thạch cao. Trong trường hợp này dùng các vị thuốc cay nóng, ra mồ hôi như trường hợp cảm mạo phong hàn thì bệnh chẳng những không khỏi mà còn gây nguy hiểm cho bệnh nhân.<br /><br />Theo lý luận, việc sử dụng thuốc Đông y muốn đạt hiệu quả chữa bệnh và bảo đảm an toàn rất sâu sắc, uyên thâm. Theo đó việc dùng thuốc, chữa bệnh phải theo “Nhân thời, nhân địa, nhân bệnh chế nghi” có nghĩa là đối với các chứng bệnh, cần căn cứ sự khác nhau về mùa, khu vực, thể chất, lứa tuổi, giới tính... mà quyết định phương pháp trị liệu và dùng thuốc.<br /><br />Về mùa, tức là căn cứ sự biến đổi khí hậu 4 mùa có ảnh hưởng nhất định tới sinh lý. Khi chữa bệnh, dùng thuốc phải chú ý tới yếu tố này. Ví dụ, mùa hạ tấu lý (lỗ chân lông) mở rộng không nên dùng nhiều vị thuốc có tính tân ôn (cay âm). Mùa đông tấu lý co hại, có thể dùng nhiều hơn các vị thuốc cay ấm (tân ôn).<br /><br />Về khu vực, căn cứ vào đặc điểm môi trường của địa phương mà chọn phương pháp và dược vật thích hợp. Ví dụ: Phương Nam nóng bức, ẩm thấp có nhiều chứng bệnh thấp nhiệt, thì nên chọn phép thanh nhiệt hóa thấp làm chính. Phương Bắc lạnh lẽo và khô ráo, có nhiều chứng bệnh phong hàn táo thì nên lấy phép chữa và dược vật có tính ôn nhiệt, nhuận táo là chủ yếu.<br /><br />Về người, phải căn cứ vào lứa tuổi, giới tính, thể chất, thói quen sinh hoạt của người bệnh mà chọn phương pháp và dược vật thích hợp. Ví dụ người già khí huyết suy kiệt, trẻ em tạng phủ mềm yếu, sợ đắng, cay, nam nữ sinh lý và thói quen khác nhau đều bị các chứng bệnh như nhau không thể dùng phép chữa, bài thuốc, vị thuốc, liều lượng như nhau mà phải “tùy cơ ứng biến”.<br /><br />Đối với người bệnh khi dùng thuốc Đông y xin đừng chủ quan, tùy tiện hoặc nghe theo sự mách bảo của người khác mà phải đến khám, bắt mạch, mua thuốc theo đơn ở các phòng chẩn trị y học cổ truyền được phép hành nghề để tránh “tiền mất tật mang<strong><em>”.</em></strong></p>\r\n<p style=\"text-align: justify;\"><strong><em>vnmedia</em></strong></p>\r\n<!-- DESCRIPTION --> <!-- Nhiều người cho rằng uống thuốc Đông y không sợ phản ứng phụ vì thuốc chế biến từ thực vật (cây cỏ, hoa trái) hoặc động vật có trong tự nhiên. Có người lại uống thuốc theo sự mách bảo hoặc kinh nghiệm của người khác. --> <!-- END DESCRIPTION --> <!-- BODY -->', '1', '1', '0', '2', '2010-03-29 08:28:23', '62', '', '2010-05-15 09:45:56', '62', '0', '0000-00-00 00:00:00', '2010-03-29 08:28:23', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '8', '0', '19', 'đông y', 'Dùng thuốc đông y không đơn giản như nhiều người vẫn nghĩ', '0', '24', 'robots=đông y\nauthor=');
INSERT INTO `jos_content` VALUES ('142', 'Uống sữa đậu nành giúp ngừa bệnh tim mạch', 'ung-sa-u-nanh-giup-nga-bnh-tim-mch', '', '<p style=\"text-align: justify;\">Hạt đậu nành chứa 8% nước, 5% chất vô cơ, 15- 25% glucose, 15-20% chất béo, 35- 45% chất protein với nhiều loại amino acid và sinh tố khoáng chất khác… Đây đều là những chất cần thiết cho cơ thể và đặc biệt còn có tác dụng phòng ngừa một số bệnh, trong đó có bệnh tim mạch.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/ungsaunnhgipngabnhtimmch.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br /><br /><strong>Mối đe dọa từ bệnh tim mạch</strong><br /><br />Theo thống kê, mỗi năm, bệnh tim mạch làm hơn 17 triệu người tử vong trên thế giới, và riêng tại Mỹ số tử vong cũng xấp xỉ con số 700.000 người. Trong đó, nguy cơ bị bệnh tim mạch thông thường liên quan đến chế độ dinh dưỡng và cách sống. Chẳng hạn, những người hút thuốc lá có nguy cơ mắc bệnh tim mạch gấp 2 lần những người không hút. Chế độ dinh dưỡng không hợp lý, ăn nhiều mỡ nhất là những loại mỡ có chứa nhiều cholesterol như mỡ động vật, kem sữa… dễ làm tắc nghẽn động mạch. Ngoài ra những cơn căng thẳng và giận dữ, stress kéo dài , môi trường ô nhiễm cũng dễ làm tổn hại đến trái tim….<br /><br />Tuy khó chữa khi mắc phải, thế nhưng theo các chuyên gia, ngoài yếu tố bẩm sinh, các bệnh về tim mạch hoàn toàn có thể phòng tránh và giảm thiểu nguy cơ bị suy tim bằng cách ăn uống theo chế độ và luyện tập thể dục thường xuyên.<br /><br />Cụ thể, chúng ta cần có chế độ dinh dưỡng phù hợp và lối sống lành mạnh, không hút thuốc, uống rượu và nên tập thể dục, kiểm tra sức khỏe thường xuyên, nhất là đối với phụ nữ trên 40 tuổi. Riêng về chế độ ăn uống cần chú ý hạn chế ăn mặn, thay mỡ động vật bằng dầu thực vật, ăn nhiều rau và trái cây tươi, hạn chế thức ăn nhiều đường.<br /><br />Ngoài ra, theo Cục Quản lý Thực phẩm và Dược phẩm Hoa Kỳ - FDA, đậu nành chính là một trong những thực phẩm hiệu quả giúp ngăn ngừa bệnh tim mạch và khuyến khích nên sử dụng hàng ngày.<br /><br />Gần đây các nhà khoa học cũng đã tìm thấy mối tương quan có lợi giữa bệnh tim mạch và đậu nành khi so sánh số lượng người mắc bệnh tim mạch ở Nhật và châu Âu hoặc Mỹ. Người ta nhận thấy tỷ lệ người Nhật mắc bệnh tim ít hẳn so với các nước khác do họ có một chế độ dinh dưỡng hợp lý với chế độ ăn giàu đạm thực vật mà chủ yếu là đạm đậu nành và hay chơi thể thao. Bên cạnh đó, ở những quốc gia mà người dân thường dùng thực phẩm được chế biến từ đậu nành thì tỷ lệ mắc bệnh tim mạch  giảm đến 40% so với các nước khác.<br /><br /><strong>Tại sao đậu nành có khả năng phòng ngừa bệnh tim mạch?</strong><br /><br />Theo các nghiên cứu khoa học, so với thịt động vật, đậu nành có nhiều chất dinh dưỡng hơn: 100gr đậu nành có 411 calo, 34gr protein, 18gr béo, 165mg calcium, 11mg sắt; trong khi đó thịt bò loại ngon chỉ có 165 calo, 21gr protein, 9gr béo, 10mg calcium, 2.7mg sắt. Mặt khác, sản phẩm chế biến từ đậu nành rất đa dạng để người dùng có thể lựa chọn tránh nhàm chán như đậu hũ, đậu tương, sữa đậu nành… .<br /><br />Trong đó, thông dụng nhất vẫn là sữa đậu nành. Không chỉ thơm ngon, bổ dưỡng, thức uống<br /><br />này còn có thể còn giúp ngăn chặn bệnh tim bằng cách giảm cholesterol xấu và ngăn ngừa sự tích tụ mảng bám thành động mạch vốn là nguyên nhân dẫn đến đột quỵ hoặc đau tim. Ngoài ra, uống sữa đậu nành thường xuyên còn có thể  giúp tránh sự tích tụ mỡ ở vùng bụng - đặc biệt là với phụ nữ ở tuổi mãn kinh, một hiện tượng làm tăng nguy cơ mắc bệnh tim mạch. Hơn nữa, đậu nành có rất ít tinh bột nên có cũng lợi cho những bệnh nhân thừa cân, béo phì hay tiểu đường - những căn bệnh vốn là “anh em họ hàng” với bệnh tim mạch.<br /><br />Ở các nước Châu Á, sữa đậu nành từ rất lâu đã được xem như một loại thức uống kỳ diệu bởi đậu nành giàu đạm và acid amin thiết yếu, nhiều vitamin nhóm B (B1, B2, B3, B6) và vitamin E, giàu các khoáng chất Ca, Fe, Mg, K, Na; và chứa hoạt chất isoflavon có tác dụng rất tốt với phụ nữ. Giờ đây, với những phát hiện mới về công dụng phòng chống bệnh tim mạch, sữa đậu nành càng đáng được quan tâm hơn.<br />Tuy nhiên, người dùng cũng cần biết rằng không phải sữa đậu nành nào cũng tốt cho tim mạch, nhất là cần tránh những sản phẩm không đảm bảo vệ sinh thực phẩm. Thị trường hiện nay cũng đã có một số loại sản phẩm sữa đậu nành đóng trong hộp giấy an toàn và đảm bảo để người tiêu dùng có thể yên tâm lựa chọn. Sữa đậu nành Vfresh (Vinamilk) là sản phẩm được Viện Dinh dưỡng Quốc gia chứng nhận đạt tiêu chuẩn tốt cho tim mạch, với 25,6g đạm trong 4 khẩu phần.<br /> <br /><em><strong>Theo VietNamNet</strong></em></p>', '1', '1', '0', '2', '2010-05-06 07:45:00', '62', '', '2010-05-15 09:42:05', '62', '0', '0000-00-00 00:00:00', '2010-05-06 07:45:00', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '7', 'sữa đậu nành', 'Uống sữa đậu nành giúp ngừa bệnh ', '0', '7', 'robots=sữa đậu nành\nauthor=');
INSERT INTO `jos_content` VALUES ('143', 'Công dụng kỳ diệu của quả cam', 'cong-dng-k-diu-ca-qu-cam', '', '<p style=\"text-align: justify;\">Không chỉ bổ dưỡng, cam còn có nhiều công dụng kỳ diệu khác nếu biết sử dụng nó đúng cách và đúng mục đích.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/cngdngkdiucaqucam.jpg\" border=\"0\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\"><br /><strong>1. Tăng cường thể lực: Nước cam pha muối</strong><br /><br />Uống nước cam bỏ thêm chút muối sau khi luyện tập ra nhiều mồ hôi là cách để lấy lại thể lực nhanh chóng. Bởi lượng đường fructoza và 85% lượng nước có trong cam sẽ nhanh chóng được cơ thể hấp thụ, có tác dụng giải khát và bồi bổ thể lực.<br /><br />Lưu ý: Ngay sau khi ép lấy nước hoặc đã gọt vỏ nên uống hoặc ăn ngay, tránh lượng vitamin C sẽ bị bay mất khi phản ứng với oxy ngoài môi trường. Thời gian sau chế biến không nên quá 30 phút.<br /><strong><br />2. Tẩy trang, làm sạch da: Nước cam ép</strong><br /><br />Cách làm: Dùng khăn sạch thấm và thoa trực tiếp nước ép cam lên mặt khoảng 5-10 phút, sau đó rửa lại bằng nước sạch.<br /><br />Công dụng: Cách làm này vừa có tác dụng tẩy trang hiệu quả, vừa “đánh bật” lượng dầu, vi khuẩn, vết bẩn trên da, làm sạch da từ bên ngoài và bên trong. Ngay cả đối với da mẫn cảm, dùng cam làm mặt nạ để tẩy trang và làm sạch mặt vẫn có thể an tâm.<br /><br />Lưu ý: Ngay sau khi thoa nước ép lên mặt, không nên đi ra nắng, tránh phản ứng với các tia tử ngoại làm mất tác dụng.<br /><br /><strong>3. Làm săn chắc da mặt: Mặt nạ từ hạt (hột) cam</strong><br /><br />Cách làm: Hạt cam phơi khô rồi xay thành bột mịn. Hòa tan hỗn hợp gồm bột đã xay nhuyễn và nước cất (hoặc nước tinh khiết), sau đó đắp hỗn hợp này lên mặt khoảng 5-10 phút. Rửa lại mặt bằng nước sạch. Mỗi tuần đắp mặt nạ 1-2 lần.<br /><br />Công dụng: Nâng cao sức đề kháng cho các mao mạch trên da, giúp da thêm săn chắc, khỏe mạnh.<br /><br />Lưu ý: Đối với làn da nhạy cảm, nên thử bôi hỗn hợp trên vùng tai trước khi bôi lên mặt để quan sát phản ứng. Nếu thấy bị dị ứng hoặc ngứa ngáy, không nên sử dụng.<br /><br /><strong>4. Trị bệnh phong thấp: Bột hạt cam</strong><br /><br />Cách làm: Cho hạt cam vào nồi rang khô. Tránh rang ở nhiệt độ quá cao gây cháy đen hạt rồi xay nhuyễn thành bột. Hòa vào nước lọc, mỗi lần từ 3-5g, uống sau bữa ăn. Kiên trì sử dụng lâu dài có tác dụng trị phong thấp hiệu quả.<br /><br /><strong>5. Tăng cường hệ miễn dịch: Sa-lát cam</strong><br /><br />Khi làm sa-lát, cho thêm một vài múi cam sẽ có tác dụng bổ sung chất dinh dưỡng, tăng cường hệ miễn dịch, giúp người bệnh nhanh phục hồi sức khỏe, nhanh lành vết thương. Đặc biệt là bổ sung chất xơ, có lợi cho tiêu hóa.<br /><br />Lưu ý: Những người hút thuốc nên ăn nhiều cam, những bệnh nhân mắc viêm ruột, viêm túi mật nên thận trọng khi ăn cam.<br /><br /><strong>6. Tẩy da chết,  tăng độ láng mịn cho da: Mát-xa bằng vỏ ca</strong>m<br /><br />Cách làm: Cắt vỏ cam thành những miếng mỏng, nhỏ. Sau đó cho vào tấm vải mỏng, lăn đều trên tay, đầu gối, những vùng da sần sùi, thiếu độ láng mịn.<br /><br />Công dụng: Tinh dầu trong vỏ cam làm da thêm mềm mại. Những vùng da sần sùi “vỏ quýt” sẽ nhanh chóng được cải thiện, lấy lại độ căng bóng do da hấp thụ được lượng tinh dầu trong vỏ cam.<br /><br />Vỏ cam chứa nhiều flavonoid và vitamin C, những chất này sẽ kích thích quá trình trao đổi chất trên da, nâng cao sức đề kháng cho các nang lông, có tác dụng tẩy da chết hiệu quả.<br /><br /><strong>7. Giúp ngủ ngon giấc, đuổi muỗi: Hương thơm vỏ cam tươi</strong><br /><br />Cách làm: Vỏ cam phơi khô, sau đó cho vào túi thơm, treo trong phòng ngủ, nhà bếp hoặc tủ quần áo.<br /><br />Công dụng: Cách làm này không những kích thích ngủ ngon giấc, mà còn có tác dụng đuổi muỗi, làm sạch không khí.<br /> <em><strong><br />Theo CCTV</strong></em></p>', '1', '1', '0', '3', '2010-05-06 07:51:01', '62', '', '2010-05-15 14:17:58', '62', '0', '0000-00-00 00:00:00', '2010-05-06 07:51:01', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '9', 'quả cam', 'Công dụng kỳ diệu của quả cam', '0', '6', 'robots=quả cam\nauthor=');
INSERT INTO `jos_content` VALUES ('160', 'Nụ vối làm giảm mỡ máu', 'n-vi-lam-gim-m-mau', '', '<p style=\"text-align: justify;\">Từ lâu, lá vối hay nụ vối với cách chế biến đơn giản tạo thành loại trà nấu hay hãm lấy nước uống thường ngày.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/nuvoilamgiammomau.jpg\" border=\"0\" /><br /><br /></p>\r\n<p style=\"text-align: justify;\">Lá vối cũng có thể dùng tươi hay phơi khô dùng dần. Đặc biệt, nó  lại giàu dược tính nên được dùng làm thuốc chữa trị nhiều bệnh chứng.<br /><br />Đông y cho rằng, lá vối có tác dụng kiện tỳ, giúp ăn ngon, tiêu hóa tốt. Chất đắng có trong vối sẽ kích thích tiết nhiều dịch tiêu hóa, mặt khác chất tannin lại bảo vệ niêm mạc ruột, còn chất tinh dầu có tính kháng khuẩn cao nhưng không làm tổn hại đến những loại vi khuẩn có ích cư trú tại ống tiêu hóa.<br /><br />Lá vối nấu nước uống có khả năng trợ giúp chữa trị các bệnh chứng hoặc các tổn thương như bỏng, viêm gan, vàng da, viêm da lở ngứa. Đông y còn dùng vỏ cây vối làm thuốc gọi là hậu phác; Được sử dụng để trị đau bụng, đầy trướng ăn không tiêu, nôn mửa... Lá vối tươi hay khô sắc đặc được coi như một loại thuốc sát khuẩn dùng trị liệu các bệnh ngoài da như ghẻ lở, mụn nhọt hoặc lấy lá vối tươi nấu lấy nước đặc để gội đầu chữa chốc lở rất hiệu nghiệm.<br />Nước vối còn có công hiệu giải khát trong những ngày hè nóng nực, làm mát và lợi tiểu nên có công năng đào thải các độc chất trong cơ thể qua đường niệu. Dưới đây là vài phương thuốc trị liệu từ vối.<br /><br />Trị đau bụng đi ngoài: Lá vối 3 cái, vỏ ổi rộp 8g, núm quả chuối tiêu 10g. Cùng thái nhỏ phơi khô sắc với 400ml nước, còn 100ml chia 2 lần uống trong ngày, dùng liền 2 - 3 ngày.<br /><br />Chữa đầy bụng, không tiêu: Vỏ thân cây vối 6 - 12g, sắc kỹ lấy nước đặc uống 2 lần trong ngày. Hoặc nụ vối 10 - 15g, sắc  lấy nước đặc uống 3 lần trong ngày.<br /><br />Chữa lở ngứa, chốc đầu: Lấy lá vối lượng vừa đủ nấu kỹ lấy nước để tắm, rửa nơi lở ngứa và gội đầu chữa chốc lở.<br /><br />Làm giảm mỡ máu: Nụ  vối 15 - 20g, hãm lấy nước uống thay trà trong ngày hay nấu thành nước đặc chia 3 lần uống trong ngày, cần uống thường xuyên mới hiệu nghiệm.<br /><br />Hỗ trợ trị tiểu đường: Nụ vối 15 - 20g, sắc lấy nước chia 3 lần uống trong ngày hay hãm uống thay trà, cần uống thường xuyên.<br /> <br /><em><strong>Theo The Bee</strong></em></p>', '1', '1', '0', '3', '2010-05-11 09:29:08', '62', '', '2010-05-15 14:19:04', '62', '0', '0000-00-00 00:00:00', '2010-05-11 09:29:08', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '6', 'Nụ vối, mỡ máu', 'Nụ vối làm giảm mỡ máu', '0', '11', 'robots=Nụ vối, mỡ máu\nauthor=');
INSERT INTO `jos_content` VALUES ('161', '999 bài thuốc ngâm rượu ', '999-bai-thuc-ngam-ru-', '', '<p style=\"text-align: justify;\">Tác giả: Mẫn Đào<br />Biên dịch: Nguyễn Trình</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/Thuvien/999baithuocngamruou.jpg\" border=\"0\" width=\"420\" height=\"586\" /></p>\r\n<p> </p>\r\n<p>Nhà xuất bản:Văn Hóa Dân Tộc<br />Loại:pdf (Tiếng Việt) scan<br />Số trang:424<br />Dung lượng : 18.5 MB<br />Chương 1. Khái thuật<br />Chương 2. Rượu thuốc chữa các bệnh nội khoa<br />Chương 3. Rượu thuốc chữa bệnh nhi khoa<br />Chương 4. Rượu thuốc chữa bệnh phụ khoa<br />Chương 5. Rượu thuốc chữa các bệnh ngoại khoa<br />Chương 6. Rượu thuốc chữa trị các bệnh tật thuộc ngũ quan<br />Chương 7. Rượu thuốc với mỹ dung, dưỡng sinh</p>', '1', '5', '0', '21', '2010-05-12 01:54:05', '62', '', '2010-05-15 14:25:43', '62', '0', '0000-00-00 00:00:00', '2010-05-12 01:54:05', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '12', '0', '2', 'bài thuốc, ngâm rượu', '999 bài thuốc ngâm rượu ', '0', '32', 'robots=bài thuốc, ngâm rượu, 999\nauthor=Mẫn Đào, Nguyễn Trình');
INSERT INTO `jos_content` VALUES ('164', 'Bản Thảo Vấn đáp', 'bn-tho-vn-ap', '', '<p>ĐƯỜNG TÔNG HẢI (1862 – 1918)</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/Thuvien/banthaovandap.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\">Đường Tông Hải, tự Dung Xuyên, người Tứ Xuyên, Bành Huyện, thầy thuốc trứ danh cuối đời Thanh. Ông từ nhỏ hiếu học, tri thức uyên bác, kinh sử thư họa, không thứ nào không tinh thông; hồi là học sinh danh đã vang Ba Thục, có mấy mươi đệ tử. Vì cha ông có nhiều bệnh nên ông cũng học y. Niên hiệu Quang Tự, năm thứ 15 (1889), ông đỗ Tiến sĩ. Vì ông kiêm tinh thông y học nên đã từng được triệu chẩn mạch cho Từ Hi thái hậu. Về sau cư ngụ ở Bắc Kinh, Thượng Hải, đi đến đâu cũng dùng y thuật cứu người. Tuổi già hồi hương, già mất ở nhà. Sự cống hiến của ông cho y học là công trình nghiên cứu của ông về huyết chứng, và sự nỗ lực của ông trong việc phối hợp giữa Trung và Tây y. Thuở nhỏ, cha ông mang bệnh đột nhiên trở nặng, thổ huyết và đại tiện ra huyết. Để trị liệu, ông xem khắp các sách thuốc, gặp quyển nào có luận thuật về huyết chứng, ông nghiên cứu đọc kỹ lưỡng; nghe nói y gia nào nghiên cứu huyết chứng thì ông đến xin học. Y gia Dụng Tây Sơn có viết sách ‘Thất Huyết Đại Pháp’, ‘Đắc Huyết Chúng Bất Truyền Chi Bí’, học trò tranh nhau sao chép để làm của quí. Ông bèn tìm cách nài mua, rất khó khăn mới ‘được xem một lượt’ mà thôi. Xem xong, ông quá thất vọng nhận thấy sách không nói đầy đủ, dùng lâm sàng cũng không mấy hiệu nghiệm. Vì vậy, ông quyết tâm bắt tay vào việc từ các sách kinh điển y học, tham khảo học thuyết các nhà, tham khảo sâu yếu chỉ trị liệu bệnh huyết. Ông xem lần lượt ‘Nội Kinh’, ‘Nạn Kinh’, ‘Thương Hàn Luận’, ‘Kim Quỹ Yếu Lược’, nghiên cứu sách của Lý Đông Viên, Chu Đan Khê, Hoàng Nguyên Ngực, Trần Tu Viên, rốt cuộc có được chỗ tâm đắc, lần lượt tổng kết ra một bộ phương pháp trị liệu huyết chứng . Lúc ấy, cha ông đã mất vì bệnh mà vợ con ông lại cũng bệnh huyết. Ông bèn dùng kinh nghiệm bản thân tự bào chế phương tễ đem trị; kết quả ‘thuốc đến bệnh lui’, khiến ông hết sức phấn khởi. Từ đây về sau, ông bèn đem số kinh nghiệm này ứng dụng lâm sàng thì ‘mười lần khỏi tám chín’. Để bổ sung chỗ khuyết lậu của nền y học Tổ quốc ở mặt nghiên cứu huyết chứng , giãi bày thêm chỗ cổ nhân muốn nói, chỗ còn thiếu sót của tiền hiền, ông đem áo nghĩa tinh vi của ‘Thất Huyết Chứng’ tuần tự giãi bày, biên soạn thành một bộ ‘Huyết Chứng Luận’ 8 quyển. ‘Huyết Chứng Luận’ là bộ sách chuyên đầu tiên nghiên cứu thất huyết chứng trong Trung y học sử. Sách liệt thuật các biện chứng trị liệu các loại huyết chứng (bệnh máu), tổng kết: chỉ huyết (cầm máu), tiêu ứ (trị máu ứ), ninh huyết, bổ huyết (bổ máu) bốn phép trị lớn , toàn sách ‘lý túc phương hiệu\' y líù đầy đủ, phương thuốc hiệu nghiệm), có giá trị thực dụng cao, dẫn dắt được người hậu học. Ông ở vào thời đại y học phương Tây bắt đầu ồ ạt truyền vào Trung Quốc, ảnh hưởng lớn đến giới y học. Nhiều tư tưởng và chủ trương xuất hiện, người chuộng mới thiên Tây y, người nệ cũ thiên Đông y, mà ông thì chủ trương chọn con đường giao tiếp nhau giữa Đông Tây. Vì vậy ông là một nhân vật đại biểu của phái hối thông Đông Tây y sớm nhất của Trung Quốc. Đồng thời, ông cũng có viết sách ‘Đông Tây Hối Thông Y Kinh Tinh Nghĩa’. Ngoài ra, ông còn có viết các sách: ‘Bản Thảo Vấn Đáp’, ‘Kim Quỹ Yếu Lược Thiển Chú Bổ Chính’, ‘Thương Hàn Luận Thiển Chú Bổ Chính’, ‘Y Học Kiến Năng’, ‘Y Dịch Thông Huyết’, ‘Lợi Giai Tam Tự Quyết’, ‘Lục Kinh Phong Chúng Thông Giải’. Số sách này phản ánh chủ trương y học trị liệu của ông là ‘hiếu cổ nhưng không quá tin cổ nhân, bác học lại giỏi chọn sở trường bỏ sở đoản. Ông mất năm 1918, hưởng thọ 67 tuổi.<br /><br />Sách Bản thảo vấn đáp : Nghiên cứu thảo luận về những quan điểm khác nhau của Đông Tây dược cho đến mối quan hệ tương hỗ của tính dược trong Đông dược đối với việc chữa trị bệnh trong cơ thể con người.<br /><br /></p>', '1', '5', '0', '22', '2010-05-14 13:56:59', '62', '', '2010-05-15 14:26:31', '62', '0', '0000-00-00 00:00:00', '2010-05-14 13:56:59', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '2', 'Bản Thảo', 'Bản Thảo Vấn đáp', '0', '11', 'robots=Bản Thảo Vấn đáp\nauthor=ĐƯỜNG TÔNG HẢI');
INSERT INTO `jos_content` VALUES ('165', 'Trị phỏng bằng lá bỏng', 'tr-phng-bng-la-bng', '', '<p style=\"text-align: justify;\">Hôm trước nấu bữa tối, chỉ bất cẩn một chút tôi bị dầu đang chiên bắn vào tay gây phỏng. Lúc trước có lần bị vậy tôi bèn lấy kem đánh răng bôi lên vết phỏng nhưng không thấy hiệu nghiệm.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/la-bong.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: justify;\">Lần này, đúng dịp mẹ tôi ở quê lên thăm, bà liền lấy một ít lá bỏng (phỏng) trong vườn nhà, rửa sạch rồi đem giã nát đắp lên chỗ vết thương. Thật kỳ diệu, khi vừa đắp lên thì vết phỏng dịu mát hẳn, tôi để như vậy vài tiếng sau vết bỏng không rát nữa, cũng không mưng lên bọng nước. Nhờ vậy, vết phỏng rất nhanh lên da non và khỏi hoàn toàn. <br /><em><strong>Theo Thanh Niên </strong></em></p>', '1', '1', '0', '2', '2010-05-14 14:38:40', '62', '', '2010-05-15 09:40:23', '62', '0', '0000-00-00 00:00:00', '2010-05-14 14:38:40', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '2', 'Trị phỏng, bỏng', 'Trị phỏng bằng lá bỏng', '0', '7', 'robots=Trị phỏng, bỏng\nauthor=');
INSERT INTO `jos_content` VALUES ('166', 'Thêm gần 70 thuốc y học cổ truyền được BHYT thanh toán', 'them-gn-70-thuc-y-hc-c-truyn-c-bhyt-thanh-toan', '', '<p style=\"text-align: justify;\">Kể từ 15/6/2010, có thêm 29 chế phẩm vào 63 vị thuốc y học cổ truyền được bổ sung vào danh muc Chế phẩm và các vị thuốc y học cổ truyền được bảo hiểm y tế (BHYT) thanh toán.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/namlinhchi.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Vị thuốc nấm linh chi cũng được đưa vào diện bảo hiểm y tế thanh toán trong trường hợp thuốc đã được hội chẩn trước khi chỉ định sử dụng </em></p>\r\n<p style=\"text-align: justify;\"><br />Danh mục này vừa được Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu ký ban hành. Theo đó, danh mục mới sẽ có 127 chế phẩm thuộc 11 nhóm thuốc y học cổ truyền (trước đây chỉ có 98 chế phẩm), có 300 vị thuốc (trước chỉ có 237 vị thuốc).<br /><br />Các chế phẩm y học cổ truyền do các bệnh viện bào chế cũng sẽ được Quỹ BHYT chi trả. Đối với các vị thuốc bao gồm linh chi, xuyên sơn giáp, nhân sâm... là những thuốc nhập khẩu, cũng sẽ được BHYT thanh toán trong trường hợp thuốc đã được hội chẩn trước khi chỉ định sử dụng theo quy chế hội chẩn do Bộ Y tế ban hành.<br /><br />Trường hợp các thuốc trùng công dụng, thành phần thì ưu tiên chọn sản phẩm của doanh nghiệp đã đạt tiêu chuẩn GMP (thực hành tốt sản xuất thuốc) hoặc giấy chứng nhận đủ điều kiện sản xuất thuốc từ dược liệu.<br /><br />Thông tin từ Vụ Bảo hiểm y tế cũng cho hay, cơ quan này đang hoàn tất quy định hướng dẫn để BHYT chi trả phí khám, xét nghiệm chẩn đoán sớm một số bệnh, sàng lọc bệnh bẩm sinh.<br /><br />Theo dự thảo, trước mắt thanh toán chi phí sàng lọc một số bệnh bẩm sinh ở trẻ sơ sinh. Với nhóm người trưởng thành, BHYT sẽ chi trả chi phí sàng lọc, chẩn đoán sớm ung thư vú, ung thư cổ tử cung, đại tràng, các bệnh liên quan đến chuyển hóa như cao huyết áp, đái tháo đường.<br /><br /><em><strong>Theo KH&amp;ĐS</strong></em></p>', '1', '1', '0', '1', '2010-05-14 14:48:30', '62', '', '2010-05-15 09:38:29', '62', '0', '0000-00-00 00:00:00', '2010-05-14 14:48:30', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '4', 'thuốc y học cổ truyền', 'Thêm gần 70 thuốc y học cổ truyền được BHYT thanh toán', '0', '8', 'robots=thuốc y học cổ truyền\nauthor=');
INSERT INTO `jos_content` VALUES ('167', 'Vị thuốc lạ từ sấu', 'v-thuc-l-t-su', '', '<p style=\"text-align: justify;\">Chúng ta thường chỉ có thói quen dùng quả sấu để nấu ăn, làm mứt, nước uống, ít ai biết sấu có thể làm thuốc, ngay cả hoa, lá và vỏ sấu.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/quasau.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br />Sấu có tên gọi là Sấu đắng hay Long cóc, thuộc họ Đào lộn hột (Anacardiaceae). Mùa hoa vào tháng 5-7, mùa quả vào tháng 8-10. Sấu ra hoa quả nhiều hàng năm. Sấu vừa mọc hoang dại, vừa được trồng. Tái sinh chủ yếu từ hạt.<br />Trong tự nhiên, có những cây Sấu hàng trăm năm tuổi, cao đến 60m. Ở các đô thị lớn, cây Sấu được trồng dọc theo 2 bên đường vừa tạo cảnh đẹp, vừa lấy bóng mát, vừa có trái ăn. Chủ yếu Sấu được trồng ở vùng đồng bằng và trung du Bắc bộ, Sấu cũng có ở các tỉnh Quảng Nam, Quảng Ngãi và Tây nguyên.<br /><br />Tại thủ đô Hà Nội, phố Phan Đình Phùng có những hàng Sấu đã ngót 100 tuổi, phố này còn được gọi là \"Phố sấu\". Quả Sấu chín có giá trị dinh dưỡng như sau: Nước 80%, Acide hữu cơ 1%, Protide 1,3%, Glucide 8,2%, Celulose 2,7%, Canxi 100mg%, Photpho 44mg%, Vitamin C 3mg%.<br /><br /><strong>Tính vị công năng:</strong><br /><br />Quả sấu có vị chua, ngọt, hơi chát, mùi thơm, đặc trưng, tính mát. Có tác dụng kiện tỳ, tiêu thực sinh tân, chỉ ho, tiêu đờm.<br /><br />Bộ phận dùng để làm thuốc: quả, hoa lá, vỏ của thân và rễ cây sấu. Quả sấu có công dụng giải nhiệt, chỉ khát dùng khi miệng khô, ngứa cổ, ho, nổi mề đay, lở ngứa, sưng tấy.<br /><br />Cách sử dụng: mỗi lần 4-6g cùi (thịt) quả sấu. Sắc nước, hâm sôi hoặc dùng sống với muối đường.<br /><br />Hoa sấu: chữa ho, dùng hoa sấu cùng với mật ong chưng cách thủy uống trong ngày, đặc biệt dùng chữa ho cho trẻ em rất tốt.<br /><br />Lá sấu: lá sấu rửa sạch, sắc lấy nước để chữa mụn loét, hoại tử, vết thương lâu lành.<br /><br />Vỏ rễ: trị sưng, viêm tuyến sữa, áp xe vú.<br /><br />Ngoài ra, trong cuộc sống thì sấu xanh thường được sử dụng nấu ăn có tác dụng như những món ăn - bài thuốc rất quen thuộc. Khi luộc rau muống, người dân Bắc bộ hay dùng sấu xanh đánh dấm nước canh bằng vài quả sấu xanh, khiến nước canh có vị chua, ngọt dịu mát làm giải nhiệt và tăng cường tiêu hóa lại rất ngon miệng. Sấu làm ô mai, sấu hấp với đường, sấu ngâm đường làm nước giải khát hương vị thơm dễ chịu.<br /><strong><br />Bài thuốc có sấu:</strong><br /><br />1. Chữa nhiễm độc thai nghén: Quả sấu (9 quả sấu xanh già quả) nấu với cá diếc hay thịt vịt ăn trong ngày. Sử dụng 3-7 ngày thay canh.<br /><br />2. Chữa ho, viêm họng, viêm thanh quản:<br /><br />- Cùi quả sấu 4-6g, ngâm muối hoặc sắc nước, thêm đường phèn hay mật ong rồi uống. Ngày 2-3 lần.<br />- Hoa sấu 8-20g sắc uống ngày 2 lần, uống nóng đối với trẻ em nên cho thêm mật ong hay chưng cách thủy hoa sấu với mật ong, chữa ho rất tốt.<br /> <br /><em><strong>Theo Bác Sĩ Gia Đình</strong></em></p>', '1', '1', '0', '3', '2010-05-14 14:55:03', '62', '', '2010-05-16 08:03:04', '62', '0', '0000-00-00 00:00:00', '2010-05-14 14:55:03', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '4', 'sấu', 'Vị thuốc lạ từ sấu', '0', '6', 'robots=sấu\nauthor=');
INSERT INTO `jos_content` VALUES ('168', 'Tác dụng giải nhiệt, chữa bệnh của quả dưa hấu', 'tac-dng-gii-nhit-cha-bnh-ca-qu-da-hu', '', '<p style=\"text-align: justify;\">rong dưa hấu có nhiều nước, protein, lipid, carbohydrat; các vitamin A, B1, B2, C; Ca, Fe, Mn, P. Thịt quả còn chứa citrulin và arginin. Hạt chứa protein, dầu và curcubocitrin.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/duahau.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br /><strong>Dưa hấu được dùng chữa bệnh trong các trường hợp:</strong><br /><br />Thanh nhiệt, giải nắng: Dùng một trong các bài thuốc sau:<br /><br />- Dưa hấu bổ ra ép lấy nước khoảng 250ml, cho uống. Dùng cho bệnh nhân hội chứng dương minh nhiệt thịnh: miệng khô nứt, khát nước, trạng thái kích ứng thần kinh.<br />Nước ép dưa hấu liều lượng tùy ý, uống rải rác trong ngày. Dùng cho các trường hợp loét miệng, viêm họng dạng viêm khô.<br /><br />- Vỏ quả dưa hấu 20g, lá sen tươi 12g, kim ngân hoa tươi 16g, hoa biển đậu tươi 12g, tây qua bì 12g, trúc diệp tâm tươi 12g. Sắc uống. Trị nóng nực ra mồ hôi nhiều, đầu váng, mắt hoa đau nhức.<br /><br />Thanh nhiệt, lợi tiểu: Dùng cho chứng thấp nhiệt hoàng đản, bụng đầy nước, tiểu tiện nóng rát không thông.<br /><br />- Bổ quả dưa ra lấy phần cùi trắng, cho sa nhân, tỏi vào trong, trát đất kín, phơi cho khô, lại sấy khô. Loại bỏ bùn đất, tán nhỏ. Ngày 2 đến 3 lần, mỗi lần 4g, uống với nước ấm. Trị báng nước.<br /><br />- Vỏ xanh của dưa hấu 40g, bạch mao căn tươi 40g, xích tiểu đậu 20g. Sắc uống. Trị phù thũng do viêm thận cấp tính.<br /><br /><strong>Một số thực đơn chữa bệnh</strong><br /><br />- Nước sắc tỏi dưa hấu: Dưa hấu 1 quả, tỏi 30 - 60g.  Khoét một miếng tạo ra lỗ hổng, cho tỏi đã bóc vỏ vào, đặt miếng dưa vừa khoét cho kín, cho vào nồi, đun cách thủy, lấy ra ép lấy nước cho uống. Dùng cho các bệnh nhân có các chứng bệnh xơ gan cổ trướng, viêm thận cấp, viêm thận mạn.<br /><br />- Tây qua bì thang: Dưa hấu (lấy phần vỏ dày bỏ ruột đỏ) 60g, diếp cá 30g, rau mướp 30g cùng đem nấu dạng canh, thêm gia vị cho ăn. Dùng cho các trường hợp viêm tắc mũi dạng viêm khô. Liên tục 3 - 5 ngày.<br /><br />- Nước ép dưa hấu (chủ yếu phần cùi) 200ml để sẵn; chi tử 12g, xích thược 2g, hoàng liên 2g, cam thảo 2g. Sắc lấy nước cho thêm chút ít đường phèn khuấy tan đều. Uống dần ít một, ngậm giữ ở trong miệng khoảng vài phút trước khi nuốt. Ngày 1 lần, liên tục trong ngày. Dùng cho các bệnh nhân viêm họng loét miệng.<br /><br />- Dưa hấu xào cà rốt: Tây qua bì 300g, cà rốt 200g, gừng tươi 15g. Tây qua bì thái lát; cà rốt thái lát, gừng tươi đập giập. Xào với dầu thực vật, thêm gia vị. Cho ăn thành bữa phụ hoặc ăn trong bữa chính. Ngày 1 lần, đợt dùng 7 - 10 ngày. Dùng cho các bệnh nhân viêm xoang mũi má, tắc ngạt mũi tiết đờm vàng đục có thể lẫn tia huyết.<br />Kiêng kỵ: Người tỳ vị hư hàn, có bệnh hàn thấp kiêng dùng.<br /> <br />Theo SK&amp;ĐS</p>', '1', '1', '0', '3', '2010-05-14 15:02:19', '62', '', '2010-05-15 14:20:09', '62', '0', '0000-00-00 00:00:00', '2010-05-14 15:02:19', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '3', 'dưa hấu, curcubocitrin', 'Tác dụng giải nhiệt, chữa bệnh của quả dưa hấu', '0', '3', 'robots=dưa hấu, curcubocitrin\nauthor=');
INSERT INTO `jos_content` VALUES ('169', 'Món ăn - bài thuốc từ cá quả', 'mon-n-bai-thuc-t-ca-qu', '', '<p style=\"text-align: justify;\">Cá quả còn gọi cá lóc, cá bông, cá chuối hoa, điểu ngư, hắc ngư, hoa ban ngư... Tên khoa học: <em>Ophicephalus maculatus</em> Lacépède.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/mon-an-bai-thuoc-tu-ca-qua.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\">Thành phần hoá học: Thịt cá có 18,2% protid, 2,7% lipid, Ca 90mg%, P 240mg%, Fe 2,2mg% và một số chất khác. Cứ 100g thịt cá cung cấp 100 calo.<br /><br />Theo đông y, cá quả có vị ngọt, tính bình, không độc; vào tỳ, vị và thận. Tác dụng kiện tỳ, lợi thuỷ, khứ ứ sinh tân, tiêu viêm, khu phong thanh nhiệt. Dùng cho các trường hợp đau khớp, phong thấp, phù nề, lở ngứa, trẻ em ăn kém, chậm tiêu, trĩ.<br /><br /><strong>Một số thực đơn chữa bệnh có cá chuối:</strong><br /><br />Canh cá lá dâu: Thịt cá 100g, lá bìm bìm non 50g, lá dâu non. Nấu nhừ. Cho trẻ em ăn trong ngày; ăn 3 - 5 ngày đến khi trẻ đi đái được và mặt hết phù thì thôi. Chữa phù thũng ở trẻ nhỏ.<br /><br />Cá quả hầm bí đao: Cá quả 200g, bí đao 200g. Cá bỏ ruột không róc vẩy rửa sạch; bí đao gọt vỏ, thái lát, cho hành tỏi đập giập. Cho nước và gia vị, không cho muối; hầm kỹ. Ăn ngày 1 lần; ăn liên tục trong 3 - 5 ngày. Dùng cho các trường hợp phù nề tay chân, phù do nhiễm độc thai nghén, phù do các bệnh tim thận, phù do thiếu dinh dưỡng.<br /><br />Cá quả hầm đại táo: Cá quả 1 con loại vừa (200 - 300g): làm sạch vẩy, bỏ ruột, đầu đuôi, cắt khúc, cho mắm muối, bột tiêu, gừng đập giập, thêm gia vị, nước; nấu nhừ. Mỗi tuần ăn 2 - 3 lần. Dùng cho các trường hợp lao phổi, suy nhược...<br /><br />Ruốc cá tiêu gừng: Cá quả 1.000g, làm sạch vẩy, bỏ ruột, đầu đuôi, cắt khúc, cho ít nước sôi đun chín, đem gỡ bỏ xương, giã thành ruốc, thêm muối tiêu và chút bột gừng lượng thích hợp đảo khô lại trên chảo, để nguội cho vào lọ sạch đậy nắp kín. Dùng cho người cao tuổi, phụ nữ, trẻ em suy nhược, gầy yếu chán ăn; ăn kèm trong các bữa ăn từng đợt 5 - 7 ngày.<br /><br />Cá quả nướng lá ké: Cá quả 1 con (khoảng 200 - 400g), lá ké đầu ngựa non 1 nắm. Cá mổ bụng làm sạch ruột, rửa sạch; lá ké rửa sạch, nhồi vào bụng cá cho đầy; buộc chặt lại. Lại lấy lá ké còn lại bọc cá, nướng cá trên củi than hoặc lùi trong đống tro rơm đến khi lớp lá ké cháy hết. Gỡ bỏ lá ké, ăn thịt cá trong ngày; ăn trong 2 - 3 ngày. Dùng cho người lở ngứa kinh niên, lâu ngày không khỏi.<br />Cá quả ninh đậu phụ: Thịt cá quả 250g, cá mực 200g, đậu phụ 50g, trám muối (thanh quả) 4 quả. Cá quả, cá mực làm sạch cho vào nồi cùng trám muối; ninh nhừ, cho đậu phụ vào đun sôi là được. Ăn cả nước lẫn cái, ăn trong ngày. Dùng tốt cho trường hợp nhọt trong tai. <br /> <br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '3', '2010-05-14 15:07:57', '62', '', '2010-05-15 14:20:29', '62', '0', '0000-00-00 00:00:00', '2010-05-14 15:07:57', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '2', 'cá quả, Ophicephalus, maculatus', 'Món ăn - bài thuốc từ cá quả', '0', '4', 'robots=cá quả, Ophicephalus, maculatus\nauthor=');
INSERT INTO `jos_content` VALUES ('12', 'Bi hài chuyện tự chữa bỏng cho con', 'bi-hai-chuyn-t-cha-bng-cho-con', '', '<p>Cô con gái 5 tuổi bị bỏng bô xe máy, bố mẹ liền lấy cả kg muối cho vào  một chiếc túi vải rồi quấn vào vết bỏng ở chân con, khiến gần tháng trời  vết thương không lành, ngày càng đau đớn.</p>\r\n', '\r\n<p class=\"Normal\">Trường hợp bệnh nhân quê Hải Hậu, Nam Định này khiến  các bác sĩ Viện Bỏng Quốc Gia nhớ mãi. Khi tới viện, vết bỏng của em bé  đã rất sâu. Bố mẹ em cho biết, quê họ miền biển, lưu truyền bài thuốc  dân gian chữa bỏng bằng muối rất hiệu nghiệm và họ áp dụng ngay để chữa  cho con.</p>\r\n<p class=\"Normal\">Tuy nhiên theo các bác sĩ, muối có tính kiềm, có khả  năng \"ăn\" da, không thể dùng để chữa bỏng. Chính bởi thế, ngay cả thuốc  đánh răng - một thứ \"thuốc\" được nhiều người dùng bôi khi bị bỏng - dù  chỉ chứa một lượng kiềm rất nhỏ - cũng không tốt.</p>\r\n<p class=\"Normal\">Tiến sĩ Nguyễn Hải An, phó chủ nhiệm Khoa Trẻ em, Viện  Bỏng Quốc Gia cho biết, rất nhiều trường hợp trẻ bị bỏng nhẹ nhưng do  người nhà không biết cách xử lý hoặc áp dụng các kinh nghiệm chữa sai,  khiến vết thương nặng hơn rất nhiều.</p>\r\n<p class=\"Normal\">Vào viện hai hôm trước, cháu Hà, 5 tuổi ở Quảng Ninh  bị bỏng khi ngồi nướng mực cùng bố mẹ. Khi thấy lửa yếu đi, bố em liền  đổ cả nửa lọ cồn vào khiến ngọn lửa bốc lên. Mẹ em thấy vậy lấy luôn ca  nước cần đó hất vào khiến lửa càng bùng lên cao, \"liếm\" trọn từ ngực lên  mặt của cô con gái nhỏ.</p>\r\n<table style=\"width: 1px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/79/bong1.jpg\" border=\"1\" alt=\"Ảnh: MT.\" width=\"400\" height=\"289\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Nhiều trẻ được bố mẹ áp dụng các cách chữa bỏng lạ  khiến vết thương càng nặng hơn. Ảnh: <em>MT.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Theo các bác sĩ, trong trường hợp này, người mẹ chỉ  cần dùng một tấm vải ướt phủ lên thì có thể dập tắt lửa ngay. Chị không  biết là cồn nhẹ nổi trên nước nên nếu lượng cồn nhiều thì việc thêm nước  chẳng khác nào \"bỏ dầu vào lửa\".</p>\r\n<p class=\"Normal\">Ngay gần đây, cháu Nam, 14 tháng ở Tứ Kỳ, Hải Dương bị  vấp vào phích nước sôi khi đang chơi ở nhà cùng cụ nội. Bà cụ 85 tuổi  không biết phải xử trí thế nào bèn gọi hàng xóm sang giúp. Khi ấy, mấy  người bổ về nhà lấy đá đến đắp vào vết bỏng cho bé để... hạ nhiệt. Sau  đó, vùng da này bị hoại tử, em bé phải phẫu thuật cấy da.</p>\r\n<p class=\"Normal\">Bác sĩ cho biết, việc áp ngay đá lạnh vào vết thương  trong thời gian dài có thể làm tê bì các mút thần kinh và gây bỏng lạnh.  Trong trường hợp của bé Nam, chỉ cần ngâm vùng cơ thể bị bỏng của em  vào nước lạnh sạch trong 15-20 phút thì vết thương của em sẽ dịu lại  ngay.</p>\r\n<p class=\"Normal\">Tuy nhiên, việc đơn giản này không phải ai cũng hiểu  đúng và làm đúng. Cũng nghe nói nên ngâm vùng bỏng vào nước lạnh mà anh  Hảo (Thường Tín, Hà Nội) đã \"dìm\" ngay cậu con trai gần một tuổi vào xô  nước giếng khi cậu bé bị nồi canh nóng làm bỏng phần mặt và cổ.</p>\r\n<p class=\"Normal\">Lúc đưa đến Viện Bỏng khám, các bác sĩ xác định vùng  tổn thương của bé rất nhẹ nhưng cuối cùng em rơi vào tình trạng nguy  kịch, phải hồi sức cấp cứu vì bị viêm phế quản do sặc nước và nhiễm  lạnh.</p>\r\n<p class=\"Normal\">Trường hợp khác, cách đây đã vài năm, một người đàn  ông ở Bình Đà (Thanh Oai, Hà Nội), khi thấy vợ bị bỏng do pháo nổ, đã  lẳng ngay chị vào bể nước mưa của gia đình, khiến người vợ suýt chết  đuối và sau đó phải điều trị về hô hấp.</p>\r\n<p class=\"Normal\">Bác sĩ Hải An cho biết, chính ông và các đồng nghiệp  trong khoa nhiều khi phải giật mình trước những cách chữa bỏng rất \"sáng  tạo\" của nhiều vị phụ huynh. Có mẹ dùng vôi bôi lên vùng da tổn thương  của con vì bà nội hay ăn trầu bảo vôi mát, lại lành. Người khác thì dùng  tỏi đắp vào vết rộp ở chân con khiến vùng tổn thương càng phỏng nặng.  Rồi những thứ như trứng, nhựa chuối, tương, mắm... cũng được họ biến  thành \"thuốc\" chữa bỏng.</p>\r\n<p class=\"Normal\">Ngoài ra, không ít người lại chuộng đắp lá, dùng thuốc  đông y để chữa bỏng cho trẻ vì cho rằng như vậy mới lành, lại rẻ.</p>\r\n<p class=\"Normal\">Ca bệnh của cháu Dung, Vĩnh Phúc ở một điển hình. Cháu  bị bỏng nước sôi cả vùng bụng, bố mẹ nghe mách một thày lang trong vùng  có loại lá thuốc chữa bỏng rất tốt bèn tìm đến nhờ chữa cho con. Đắp lá  hơn một tháng mà con vẫn chẳng khỏi, gia đình mới đưa bé vào viện. Lúc  này, da vùng tổn thương của em đã bị hoại tử, các bác sĩ phải phẫu thuật  mấy lần để cắt bỏ phần da chết và cấy da mới em mới khỏi được.</p>\r\n<p class=\"Normal\">Bác sĩ Nguyễn Hải An cho biết, thực ra, việc xử lý khi  trẻ bị bỏng khá đơn giản. Nước - liệu pháp rẻ tiền, sẵn có nhất đã được  nghiên cứu và chứng minh là rất hiệu quả. Ngâm nước lạnh 15-30 phút vừa  giúp vết bỏng hạ nhiệt, vừa giảm đau, giảm phù nề cho vết thương. Sau  đó, đắp gạc ướt lên rồi băng ép và đưa con đến cơ sở y tế chuyên môn để  được các bác sĩ tư vấn và điều trị thích hợp.</p>\r\n<p class=\"Normal\">Nếu bị bỏng ở những vùng cơ thể khó ngâm nước như mặt,  cổ... thì có thể dùng khăn sạch, ướt đắp lên.</p>\r\n<p class=\"Normal\">Theo bác sĩ, khi bị bỏng cần được xử lý ngay lập tức,  tốt nhất là trong 15 phút đầu. Nếu để muộn, tổn thương càng sâu thì việc  điều trị càng mất nhiều thời gian, phức tạp và để lại di chứng, sẹo  xấu. Da trẻ còn rất non nớt, mỏng manh, non nên bố mẹ tuyệt đối càng  không được đắp các loại lá, hay \"thuốc\" tự chế cho con, khiến bệnh càng  nặng thêm.</p>', '-2', '1', '0', '4', '2010-04-02 04:14:07', '62', '', '2010-05-07 11:16:53', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:14:07', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '0', 'bỏng', 'Bi hài chuyện tự chữa bỏng cho con', '0', '8', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('156', 'Phát hiện dư lượng chì trong dược phẩm Trung Quốc', 'phat-hin-d-lng-chi-trong-dc-phm-trung-quc', '', '<p style=\"text-align: justify;\">Cơ quan Khoa học Y tế Singapore (HSA) đã phát hiện hàm lượng chì quá mức cho phép trong một lô dược phẩm Trung Quốc có nhãn hiệu “Zhongya Brand Tzepao Sanpien Pill”.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/phathienduluongchitrongduocphamtq.jpg\" border=\"0\" /><br /><br /></p>\r\n<p style=\"text-align: justify;\">\"Zhongya Brand Tzepao Sanpien Pill\" được sản xuất bởi công ty Yantai Zhongya Pharmaceutical Co Ltd của Trung Quốc và được công ty Sea Gull Trading (Pte) Ltd phân phối tại Singapore.<br />Phòng thí nghiệm dược phẩm của HSA đã kiểm tra lô và phá hiện hàm lượng chì lên đến khoảng 40ppm (phần triệu), vượt quá giới hạn pháp luật cho phép tại Singapore là 20ppm.<br /><br />Theo HAS, chì là một kim loại nặng độc hại tích tụ trong cơ thể và việc đào thải khỏi cơ thể rất chậm. Nếu tiêu thụ chì với số lượng lớn hoặc trong một khoảng thời gian kéo dài, có thể dẫn đến ngộ độc chì và các triệu chứng có thể bao gồm đau bụng, nôn mửa, yếu cơ, chuột rút. Những người có lượng chì trong máu cao có thể có hoặc không phát hiện ra bất kỳ triệu chứng nào rõ rệt, nhưng lâu dài chì có thể gây ra thiếu máu, đau cơ và khớp, tổn thương thận và não.<br /><br />Vì lô sản phẩm này đã được bán ra ra thị trường Singapore từ tháng 12/2009 đến tháng 4/2010, nên HSA đã thông báo kết quả kiểm tra đến các cơ sở y tế và dược phẩm để đề nghị dừng việc bán các sản phẩm thuộc lô này.<br />HSA cũng khuyến cáo những người đã mua loại sản phẩm này có thể có ngừng tiêu thụ nó vì có khả năng sẽ gây nguy hại nghiêm trọng cho sức khỏe và ảnh hưởng lâu dài.<br /> <br /><strong><em>Theo The Bee</em></strong></p>', '1', '1', '0', '1', '2010-05-11 09:01:53', '62', '', '2010-05-15 09:38:48', '62', '0', '0000-00-00 00:00:00', '2010-05-11 09:01:53', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '3', 'chì, dược phẩm, Trung Quốc', 'Phát hiện dư lượng chì trong dược phẩm Trung Quốc', '0', '6', 'robots=chì, dược phẩm, Trung Quốc\nauthor=');
INSERT INTO `jos_content` VALUES ('157', 'Ruột khỏe nhờ dầu ô-liu', 'rut-khe-nh-du-o-liu', '', '<p>Tăng cường bổ sung dầu ô-liu có thể giúp giảm nguy cơ bị viêm loét ruột kết. Đó là kết luận của các nhà khoa học thuộc Đại học East Anglia (Anh) sau khi khảo sát hơn 25.000 người tuổi từ 40-65 trong khoảng 4 năm, theo báo The Times of India.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/ruotkhoenhodauoliu.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Tăng cường bổ sung dầu ô-liu có thể giúp giảm nguy cơ bị viêm loét ruột kết.</em></p>\r\n<p style=\"text-align: justify;\"><br /> * Viêm ruột do phẩy khuẩn<br /> * Lao ruột dễ bị bỏ qua, tại sao?<br /> * Chế độ ăn giúp giảm thiểu nguy cơ ung thư đường ruột<br /> * Vitamin D giúp giảm nguy cơ ung thư ruột già<br /> * Ăn hàu có nguy cơ bị viêm dạ dày ruột non<br /> * Vỡ ruột vì... giấu bị táo bón<br /> * Omega 3 có thể giúp giảm nguy cơ ung thư ruột kết<br /><br />Các nhà nghiên cứu nhận thấy những ai có chế độ dinh dưỡng giàu a-xít oleic giảm được tới 90% nguy cơ bị viêm loét ruột kết. A-xít oleic là một loại a-xít béo có trong một số loại thực phẩm như dầu ô-liu, dầu ép từ đậu phộng và một số loại bơ thực vật. Theo Tiến sĩ Andrew, trưởng nhóm nghiên cứu, a-xít oleic có tác dụng cản trở hoạt động gây viêm loét ruột của một số hóa chất trong ruột.<br />Nguồn: Thanh niên</p>', '1', '1', '0', '3', '2010-05-11 09:07:21', '62', '', '2010-05-15 14:18:40', '62', '0', '0000-00-00 00:00:00', '2010-05-11 09:07:21', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '7', 'dầu, ô-liu', 'Ruột khỏe nhờ dầu ô-liu', '0', '6', 'robots=dầu, ô-liu\nauthor=');
INSERT INTO `jos_content` VALUES ('158', 'Những Đông dược cấm dùng trong thực phẩm chức năng ', 'nhng-ong-dc-cm-dung-trong-thc-phm-chc-nng-', '', '<p style=\"text-align: justify;\">Hiện nay, trong nhiều loại thực phẩm chức năng (TPCN) người ta thường bổ sung một số thảo dược. Vì thảo dược cũng là thuốc, nên tất nhiên cũng có thể dẫn tới tác dụng phụ ngoài sự mong muốn. Mặt khác, đông dược cũng có một số loại rất độc, nếu sử dụng trong TPCN có thể gây nên những hậu quả khó lường đối với sức khỏe và sinh mạng.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/nhngngdccmdngtrongthcphmchcnng.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Một loại thực phẩm chức năng được làm từ Nghệ.</em></p>\r\n<p style=\"text-align: justify;\"><br />Các loại đông dược hiện đang được sử dụng trong thực phẩm chức năng được phân loại ra sao? Những loại thảo dược nào có thể sử dụng trong TPCN? Những loại thảo dược nào không được sử dụng? Đó là những vấn đề mà mỗi người tiêu dùng thông thái đều cần biết rõ.<br /><br />Thời trước, việc sử dụng thức ăn kết hợp với Đông dược, để tăng cường sức khỏe, phòng bệnh và chữa bệnh, được thực thi bởi các loại món ăn đặc biệt, gọi là \"dược thiện\".<br /><br />Trong Đông y truyền thống  \"Dược thiện\" được phân thành  2 loại hình chính.<br /><br />Loại thứ nhất: Chỉ sử dụng nguyên liệu là thuốc. Nhưng các vị  thuốc được gia công, chế biến dưới dạng thức ăn; như bánh phục linh.<br /><br />Loại thứ hai: Thức ăn có bổ sung dược liệu. Bao gồm các loại cháo thuốc, canh thuốc, trà thuốc, rượu thuốc,...  Loại hình này có ưu điểm là vẫn bảo trì được tác dụng chữa bệnh của thuốc cũng như giá trị dinh dưỡng của thức ăn, lại vẫn có hương vị đặc biệt như một món ăn ngon.<br /><br />TPCN ngày nay, tuy vô cùng đa dạng, được sản xuất theo công nghệ hiện đại, nhưng về mặt cấu trúc nguyên liệu, cũng không vượt ra ngoài hai loại hình trên.<br /><br />Theo thuyết \"Dược thực đồng nguyên\": Thuốc và thức ăn có chung một nguồn gốc, có chung một cấu trúc, có chung công hiệu và được sử dụng với cùng một mục đích.  Thuốc và thức ăn đồng cấu, nên tính năng đều được phân loại theo \"tứ khí\" (hàn nhiệt ôn lương - lạnh nóng ấm mát) và \"ngũ vị\" (tân cam khổ toan hàm - cay ngọt đắng chua mặn), thăng giáng phù trầm, quy kinh, ....<br /><br />Xét theo bản chất, thuốc và thức ăn chỉ khác biệt trên phương diện cường độ tác dụng: Tứ khí ngũ vị của thức ăn tương đối bình hòa, còn tứ khí ngũ vị của thuốc thì mạnh hơn hoặc là mãnh liệt.<br />Căn cứ vào cường độ của thuốc, năm 2002, Bộ Y tế (Vệ sinh bộ) Trung Quốc đã công bố 3 danh sách đông dược, có liên quan đến thực phẩm chức năng (Bảo kiện phẩm). Xin giới thiệu để chúng ta tham khảo.<br /><br /><strong>Dược phẩm \"thực dược lưỡng dụng\" (vừa là thuốc vừa là thực phẩm)</strong><br /><br />Đinh hương, bát giác hồi hương, đậu đao (đậu rựa), tiểu hồi hương, tiểu kế, sơn dược (củ mài), sơn tra, mã xỉ hiện (rau sam), ô tiêu xà, ô mai, mộc qua, hỏa ma nhân, đại đại hoa, ngọc trúc, cam thảo, bạch chỉ, bạch quả, bạch biển đậu, bạch biển đậu hoa, long nhãn nhục, quyết minh tử, bách hợp, nhục đậu khấu, nhục quế, từ cam tử, phật thủ, hạnh nhân, sa táo, mẫu lệ, khiếm thực, hoa tiêu, xích tiểu đậu, a giao, kê nội kim, mạch nha, côn bố, đại táo, la hán quả, uất lý nhân, kim ngân hoa, thanh quả, ngư tinh thảo, khương (sinh khương, can khương), chỉ cụ tử, câu kỷ tử, chi tử, sa nhân, bạng đại hải, phục linh, hương duyên, đào nhân, tang diệp, tang thầm, cát cánh, ích trí nhân, hà diệp, lai bặc tử, liên tử, cao lương khương, đạm trúc diệp, đạm đậu sị, cúc hoa, cúc cự, hoàng giới tử, hoàng tinh, tử tô (cành lá tía tô), tử tô tử (hạt tía tô), cát căn, hắc chi ma, hắc hồ tiêu, hòe mễ, bồ công anh, phong mật, phỉ tử, toan táo nhân, tiên bạch mao căn (rễ cỏ tranh tươi), tiên lô căn (rễ sậy tươi), phục xà, quất bì, quất hồng, bạc hà, ý dĩ nhân, giới bạch, phúc bồn tử, hoắc hương.<br /><br /><strong>Dược phẩm có thể sử dụng trong bảo kiện thực phẩm (TPCN)</strong></p>\r\n<p style=\"text-align: justify;\"><br />Nhân sâm, nhân sâm diệp,  nhân sâm quả, tam thất, thổ phục linh, đại kế, nữ trinh tử, sơn thù du, xuyên ngưu tất, xuyên bối mẫu, xuyên khung, mã lộc thai (thai hươu ngựa), mã lộc nhung, mã lộc cốt, đan sâm, ngũ gia bì, ngũ vị tử, thăng ma, thiên môn đông, thiên ma, thái tử sâm, ba kích thiên, mộc hương, mộc tặc, ngưu bàng tử, ngưu bàng căn, xa tiền tử, xa tiền thảo, bắc sa sâm, bình bối mẫu, huyền sâm, sinh địa hoàng, sinh hà thủ ô, bạch cập, bạch truật, bạch thược, bạch đậu khấu,  thạch quyết minh, thạch hộc (cần kèm theo chứng minh tính khả  dụng), địa cốt bì, đương quy, trúc nhự, hồng hoa, hồng cảnh thiên, tây dương sâm, ngô thù du, hoài ngưu tất, đỗ  trọng, đỗ trọng diệp, sa uyển tử, mẫu đơn bì, lô hội, thương truật, bổ cốt chi, kha tử, xích thược, viễn chí, mạch môn đông, quy giáp, bội lan, trắc bách diệp, chế đại hoàng, chế hà thủ ô, thích ngũ gia bì, thích mai quả, trạch lan, trạch tả, mai quế hoa, mai quế nhự, tri mẫu, la bố ma, khổ đinh trà, kim kiều mạch, kim anh tử, thanh bì, hậu phác, hậu phác hoa, khương hoàng, chỉ xác, chỉ thực, bá tử nhân, trân chu, giảo cổ lam, hồ lô ba, tây thảo, tất bát, cửu thái tử, thủ ô đằng, hương phụ, cốt toái bổ, đẳng sâm, tang bạch bì, tang chi, chiết bối mẫu, ích mẫu thảo, tích tuyết thảo, dâm dương hoắc, thỏ ty tử, dã cúc hoa, ngân hạnh diệp, hoàng kỳ, hồ bắc bối mẫu, phan tả diệp, cáp giới, việt quất, hòe thực, bồ hoàng, tật lê, phong giao, toan giác, hạn liên thảo,  thục đại hoàng, thục địa hoàng, miết giáp.<br /> <br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '1', '2010-05-11 09:14:20', '62', '', '2010-05-15 09:39:46', '62', '0', '0000-00-00 00:00:00', '2010-05-11 09:14:20', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '2', 'Đông dược, thực phẩm chức năng, Nghệ', 'Những Đông dược cấm dùng trong thực phẩm chức năng ', '0', '14', 'robots=Đông dược, thực phẩm chức năng, Nghệ\nauthor=');
INSERT INTO `jos_content` VALUES ('15', 'ACTISO (Folium et Flos Cynarae scolymi)', 'actiso-folium-et-flos-cynarae-scolymi', '', '', '\r\n<p style=\"text-align: center;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><em><img src=\"images/stories/tintucsukien/caythuoc/actiso.jpg\" border=\"0\" width=\"480\" /><br /></em></strong></span></span></p>\r\n<p style=\"text-align: center;\">Actiso<br /><br /><strong>ACTISO (菊芋)<br />Folium et Flos Cynarae scolymi</strong><br /><br /></p>\r\n<p style=\"text-align: justify;\"><strong>Tên khoa học:</strong> Cynara scolymus L., họ Cúc (Asteraceae).<br /><br /><strong>Mô tả:</strong> Lá nhăn nheo, dài khoảng 1 - 1,2 m, rộng khoảng 0,5 m hay được chia nhỏ. Phiến lá xẻ thùy sâu hình lông chim, mép thuỳ khía răng cưa to, đỉnh răng cưa thường có gai rất nhỏ, mềm. Mặt trên lá màu nâu hoặc lục, mặt dưới màu xám trắng, lồi nhiều và những rãnh dọc rất nhỏ, song song. Lá có nhiều lông trắng vón vào nhau. Vị hơi mặn chát và hơi đắng.<br /><br /><br /><strong>Thu hái: </strong>Cụm hoa chưa nở làm rau ăn vào tháng 12 đến tháng 2. Còn lá cũng được thu hái lúc cây sắp ra hoa hoặc đang có hoa, rọc bỏ sống lá đem phơi khô hay sấy khô.<br /><br /><strong>Bộ phận dùng:</strong><br /><br />- Lá (Folium Cynarae scolymi)<br /><br />- Hoa (Flos Cynarae scolym<br /><br /><strong>Phân bố:</strong> Cây được trồng ở một số vùng núi nước ta (Đà lạt, Sapa, Tam Đảo).<br /><strong><br />Thành phần hoá học chính:</strong> Cynarin, flavonoid, chất nhầy, pectin...<br /><br /><strong>Công năng:</strong> Chống lão hóa, giải độc, hạ mỡ máu, mát gan, lợi tiểu.<br /><br /><strong>Công dụng: </strong>Thông tiểu, thông mật, dùng cho người yếu gan, thận, làm hạ cholesterol, phòng ngừa bệnh xơ vữa động mạch.<br /><br /><strong>Cách dùng, liều lượng: </strong>Ngày 6-12g dưới dạng thuốc sắc hay chè thuốc, cao mềm, dùng riêng hay phối hợp với các vị thuốc khác. Trên thị trường có chế phẩm cao actiso dưới dạng viên nang và các chế phẩm dạng trà thuốc.<br /><br /><strong>Chế biến:</strong> Lá được thu hái vào năm thứ nhất của thời kỳ sinh trưởng hoặc vào cuối mùa hoa, đem phơi hoặc sấy khô ở 50 - 600C. Lá cần được ổn định trước rồi mới bào chế thành dạng thuốc. Có thể dùng hơi nước sôi có áp lực cao để xử lý nhanh thân, lá. Sau đó phơi hoặc sấy khô.</p>', '1', '2', '0', '278', '2010-04-02 04:17:05', '62', '', '2010-05-16 13:01:09', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:17:05', '0000-00-00 00:00:00', '', '', 'tkh=Cynara scolymus L.\nthv=\nhtvvn=Cúc\nhtvkh=Asteraceae\nkvlt=\ndvlt=\nbpd=hoa,lá\ntphh=flavonoid\npltb=lợi tiểu- thông mật\ntcdy=thuốc thanh nhiệt giải độc\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '24', '0', '4', 'Actiso, Cynara scolymus, Asteraceae, Cynarin', 'ACTISO (Folium et Flos Cynarae scolymi)', '0', '73', 'robots=Actiso, Cynara scolymus, Asteraceae, Cynarin\nauthor=');
INSERT INTO `jos_content` VALUES ('129', 'BA KÍCH (巴戟) Radix Morindae', 'ba-kich-radix-morindae', '', '', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/bakich.jpg\" border=\"0\" width=\"480\" /></p>\r\n<p style=\"text-align: center;\">Ba kích<br /><br /><br /><strong>BA KÍCH (巴戟)<br />Radix Morindae</strong><br /><br /><strong><br /></strong></p>\r\n<p style=\"text-align: justify;\"><strong>Tên khác</strong>: Ba kích thiên, Dây ruột gà.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Bộ phận dùng:</strong> Rễ phơi hay sấy khô của cây Ba kích (Morinda officinalis How.), họ Cà phê (Rubiaceae).</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Phân bố:</strong> Cây mọc hoang và được trồng ở một số vùng đồi núi nước ta.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Mô tả:</strong><br />Cây: Cây thảo, sống lâu năm, leo bằng thân quấn. Thân non mầu tím, có lông, phía sau nhẵn. Cành non, có cạnh. Lá mọc đối, hình mác hoặc bầu dục, thuôn nhọn, cứng, dài 6-14cm, rộng 2,5-6cm, lúc non mầu xanh lục, khi già mầu trắng mốc. Lá kèm mỏng ôm sát thân. Hoa nhỏ, lúc non mầu trắng, sau hơi vàng, tập trung thành tán ở đầu cành, dài 0,3-1,5cm, đài hoa hình chén hoặc hình ống gồm những lá đài nhỏ phát triển không đều. Tràng hoa dính liền ở phia dưới thành ống ngắn. Quả hình cầu, khi chín mầu đỏ, mang đài còn lại ở đỉnh. Mùa hoa: tháng 5-6, mùa quả: tháng 7-10.<br />Dược liệu: Ba kích thiên hình trụ tròn, hơi cong, dài không nhất định, đường kinh 0,7-1,3cm. Mặt ngoài mầu vàng tro, nhám, có vân dọc. Vỏ ngoài và trong gẫy lộ ra phần lõi gỗ và vân nứt ngang, giống như chuỗi hạt trai. Chất cứng, cùi dầy, dễ bóc. Mặt gẫy mầu tím nhạt, ở giữa mầu nâu vàng. Không mùi, vị ngọt nhưng hơi chát.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Thu hái:</strong> Ba Kích trồng được 3 năm có thể thu hoạch. Thời gian thu hoạch thường vào tháng 10-11. Dùng cuốc đào rộng chung quanh gốc, lấy toàn bộ rễ rửa sạch. Loại rễ to, mập, cùi dầy, mầu tía là loại tốt. Rễ nhỏ, gầy, cùi mỏng, mầu trong là loại vừa.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Tác dụng dược lý:</strong><br />1. Tăng sức dẻo dai: Với phương pháp  chuột bơi, Ba Kích với liều 5-10g/kg dùng liên tiếp 7 ngày thấy có tác dụng tăng sức dẻo dai cho súc vật thí nghiệm (Trung Dược Học).<br />2. Tăng  sức đề kháng: dùng phương pháp  gây nhiễm độc cấp bằng Ammoni Clorua trên chuột nhắt trắng, với liều 15g/kg, Ba Kích có tác dụng tăng cường sức đề kháng chung của cơ thể đối với các yếu tố độc hại (Trung Dược Học).<br />3. Chống viêm: Trên mô hình gây viêm thực nghiệm ở chuột cống trắng bằng Kaolin với liều lượng 5-10g/kg, Ba Kích có tác dụng chống viêm rõ rệt (Trung Dược Học).<br />4. Đối với hệ thống nội tiết: thí nghiệm trên chuột lớn và chuột nhắt cho thấy Ba Kích không có tác dụng kiểu Androgen nhưng có thể có khả năng tăng cường hiệu lực của Androgen hoặc tăng cường quá trình chế tiết hormon Androgen (Trung Dược Học).<br />5. Nước sắc Ba Kích có tác dụng tương tự như ACTH làm cho tuyến ức chuột con bị teo (Trung Dược Học).<br />6. Nước sắc Ba Kích có tác dụng làm tăng co bóp của chuột và hạ huyết áp (Trung Dược Học).<br />7. Không có độc. LD50  của Ba Kích được xác định trên chuột nhắt trắng bằng đường uống là 193g/kg (Trung Dược Dược lý, Độc lý Dữ Lâm Sàng).<br />+ Rễ Ba kích chiết xuất bằng rượu có tác dụng giáng áp huyết; có tác dụng nhanh đối với các tuyến cơ năng; tăng cường não; chống ngủ ngon dùng Ba kích nhục (Trung Dược Dược lý, Độc lý Dữ Lâm Sàng).<br />+ Tác dụng đối với hệ nội tiết: Cho chuột và chuột nhắt uống Ba kích thiên thấy không có tác dụng giống như chất Androgen (Trung Dược Học).<br />+ Đối với những bệnh nhân nam có hoạt động sinh dục không bình thường, Ba Kích có tác dụng làm tăng khả năng gioa hợp, đặc biệt đối với những trường hợp giao hợp yếu và thưa. Ba Kích có tác dụng tăng cường sức dẻo dai, mặc dầu nó không làm tăng đòi hỏi tình dục, không thấy có tác dụng kiểu Androgen. Tuy không làm thay đổi tinh dịch đồ nhưng trên thực tế có tác dụng hỗ trợ và cải thiện hoạt động sinh dục cũng như điều trị vô sinh cho những nam giới có trạng thái vô sinh tương đối và suy nhược thể lực. Còn các trường hợp tinh dịch ít, tinh trùng chết nhiều, không có tinh trùng, không xuất tinh khi giao hợp thì xử dụng Ba Kích chưa thấy kết quả (Tài Nguyên Cây Thuốc Việt Nam).<br />+ Đối với cơ thể những người tuổi già, những bệnh nhân không biểu hiện mệt mỏi, ăn kém, ngủ ít, gầy yếu mà không thấy có những yếu tố bệnh lý gây nên và 1 số trường hợp có đau mỏi các khớp, Ba Kích có tác dụng tăng lực rõ rệt, thể hiện qua những cảmgiác chủ quan như đỡ mệt mỏi, ăn ngon, ngủ ngon và những dấu hiệu khách quan như tăng cân nặng, tăng cơ lực. Còn đối với bệnh nhân đau mỏi các khớp thì sau khi dùng Ba Kích dài ngày, các triệu chứng đau mỏi giảm rõ rệt (Tài Nguyên Cây Thuốc Việt Nam).</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Thành phần hoá học chính:</strong> Anthranoid, đường, nhựa, acid hữu cơ. vitamin C.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Công năng:</strong> Ôn thận, tráng dương, cường tráng cân cốt, khử phong thấp</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Công dụng: </strong>Chữa liệt dương, di tinh, phụ nữ khó có thai, kinh nguyệt chậm, bế kinh, đau lưng mỏi gối...</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Cách dùng, liều lượng:</strong> Ngày 8-16g dưới dạng thuốc sắc hay rượu thuốc. Phối hợp trong các phương thuốc bổ thận.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Chế biến:</strong><br />1. Dùng nước Câu Kỷ Tử ngâm Ba Kích 1 đêm cho mềm, lấy ra ngâm rượu 1 đêm, vớt ra, sao với Cúc Hoa cho vàng thuốc, dùng vải lau sạch, để dành dùng (Lôi Công Bào Chích Luận).<br />2. Ngâm với rượu 1 đêm cho mềm, xắt nhỏ, sấy khô, để dành dùng (Bản Thảo Cương Mục).<br />3.  Dùng Cam Thảo, giã dập, sắc, bỏ bã. Cho Ba Kích vào nấu cho đến khi xốp mềm, rút lõi, phơi khô. Liều lượng: 6kg Cam Thảo cho 100kg Ba Kích (Trung Hoa Nhân Dân Cộng Hòa Quốc Dược Điển)<br />4. Diêm Ba Kích: Trộn Ba Kích với nước Muối (20g Muối cho 1kg Ba Kích), cho vào chõ, đồ, rút lõi, phơi khô (Trung Dược Đại Từ Điển).<br />5. Rửa sạch, ủ mềm, bỏ lõi, thái nhỏ rồi tẩm rượu 2 giờ, sao qua hoặc nấu thành cao lỏng [1ml = 5g] (Phương Pháp  Bào chế Đông Dược Việt Nam).</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Bài thuốc</strong>:<br />+ Trị liệt dương, ngũ lao, thất thương, ăn nhiều, hạ khí: Ba kích thiên, Ngưu tất (sống)  đều 3 cân ngâm với 5 đấu rượu, uống (Thiên Kim Phương).<br />+ Trị phụ nữ tử cung bị lạnh, kinh nguyệt không đều, xích bạch đới hạ: Ba kích 120g, Lương khương 20g, Tử kim đằng 640g, Thanh diêm 80g, Nhục quế (bỏ vỏ)160g, Ngô thù du 160g. Tán bột. Dùng rượu hồ làm hoàn. Ngày uống 20 hoàn với rượu pha muối nhạt (Ba Kích Hoàn - Cục Phương).<br />+ Trị lưng đau do phong hàn, đi đứng khó khăn: Ba kích 60g, Ngưu tất 120g, Khương hoạt 60g, Quế tâm 60g, Ngũ gia bì 60g, Đỗ trọng (bỏ vỏ, sao hơi vàng) 80g, Can khương (bào) 60g. Tán bột, trộn mật làm hoàn, uống với rượu ấm (Ba Kích Hoàn - Thánh Huệ Phương).<br />+ Trị tiểu nhiều: Ích trí nhân, Ba kích thiên (bỏ lõi), 2 vị chưng với rượu và muối, Tang phiêu tiêu, Thỏ ty tử (chưng  với rượu). Lượng bằng nhau. Tán bột. Dùng rượu chưng hồ làm hoàn to bằng hạt ngô đồng lớn, mỗi lần uống 12 viên với rượu pha muối hoặc sắc thành thang uống với muối ( Kỳ Hiệu Lương Phương).<br />+ Trị bạch trọc: Thỏ ty tử (chưng rượu 1 ngày, sấy khô), Ba kích (bỏ lõi, chưng rượu), Phá cố chỉ (sao), Lộc nhung, Sơn dược, Xích thạch chi, Ngũ vị tử đều 40g. Tán bột, Dùng rượu hồ làm hoàn, uống lúc đói với nước pha rượu (Phổ Tế Phương).  <br />+ Trị bụng đau, tiểu không tự chủ: Ba kích (bỏ lõi), Nhục thung dung, Sinh địa đều 60g, Tang phiêu tiêu, Thỏ ty tử, Sơn dược, Tục đoạn đều 40g, Sơn thù du, Phụ tử (chế), Long cốt, Quan quế, Ngũ vị tử đều 20g, Viễn chí 16g, Đỗ trọng (ngâm rượu, sao) 12g, Lộc nhung 4g. Tán bột, làm hoàn 10g. Ngày uống 2-3 hoàn (Ba Kích Hoàn - Chứng Trị Chuẩn Thằng).<br />+ Trị mạch yếu, mặt trắng nhạt, buồn sầu ca khóc: Ba kích (bỏ lõi), Hồi hương (sao), Nhục thung dung (tẩm rượu), Bạch long cốt, Ích trí nhân, Phúc bồn tử, Bạch truật, Mẫu lệ, Thỏ ty tử, Cốt toái bổ (bỏ lông), Nhân sâm đều 40g. Tán bột, ngày uống 2 lần, mỗi lần 10-20g (Ba Kích Hoàn - Y Học Phát Minh).    <br />+ Trị Thận bị hư hàn, lưng và gối đau, liệt dương, tiểu nhiều, không muốn ăn uống, xương khớp yếu, đứng ngồi không có sức, bàng quang bị yếu lạnh, vùng rốn và bụng đầy trướng: Ba kích 30g, Bạch linh 22g, Chỉ xác 22g, Hoàng kỳ 22g, Lộc nhung 30g, Mẫu đơn 22g, Mộc hương 22g, Ngưu tất 22g, Nhân sâm22g, Nhục thung dung  30g, Phụ tử  30g, Phúc bồn tử 22g, Quế tâm 22g, Sơn thù 22g, Tân lang 22g, Thạch hộc 30g, Thục địa 30g, Thự dự 22g, Tiên linh tỳ 22g, Trạch tả 22g, Tục đọan 22g Viễn chí 22g, Xà sàng tử 22g. Tán bột, hoà mật làm hoàn. Ngày uống 16 - 20g với rượu nóng, lúc đói (Ba Kích Hoàn - Thái Bình Thánh Huệ Phương).<br />+ Trị thận bị hư lao, lưng và chân đau, chảy nước mắt sống, hoảng sợ, khát, ăn uống không tiêu, bụng ngực thường đầy trướng, tay chân tê đau, nôn ra nước chua, bụng dưới lạnh đau, tiểu són, táo bón: Ba kích 30g, Bá tử nhân  22g, Bạch linh 22g, Đỗ trọng 22g, Ngũ gia bì 22g, Ngưu tất 22g, Nhục thung dung 30g, Phòng phong 22g, Phúc bồn tử 22g, Thạch hộc 22g, Thạch long nhục 22g, Thạch nam 22g, Thiên hùng 30g, Thiên môn 40g, Thỏ ty tử  30g, Thục địa30g, Thự dự  22g, Trầm hương 30g, Tục đoạn 30g, Tỳ giải22g, Viễn chí 22g, Xà sàng tử  22g. Tán bột, trộn mật làm hoàn, ngày uống 16 -20g với rượu nóng, lúc đói (Ba Kích Hoàn - Thánh Huệ Phương).<br />+ Trị nguyên khí bị hư thoát, mặt xạm đen, miệng khô, lưởi dính, hay mơ, hoảng sợ, chảy nước mắt sống, tai ù như ve kêu lưng nặng, đau, các khớp xương đau nhức, âm hư, ra mồ hôi trộm tay chân không có sức, tử cung bị lạnh, kinh nguyệt không đều xích bạch đới hạ: Ba kích 90g, Lương khương 180g, Ngô thù 120g, Nhục quế 120g, Thanh diêm 60g, Tử kim đằng 500g.  Tán bột, trộn với rượu nếp làm hoàn. Ngày uống 16 - 20g với rượu hoà ít muối hoặc nước muối loãng (Ba Kích Hoàn - Thái Bình Huệ Dân Hòa Tễ Cục Phương).<br />+ Trị liệt dương: Ba kích 30g, Đỗ trọng 30g, Ích trí nhân 30g, Ngũ vị tử 30g, Ngưu tất 30g, Nhục thung dung 60g, Phục linh 30g, Sơn dược 30g, Sơn thù 30g, Thỏ ty tử 30g, Tục đoạn 30g, Viễn chí  30g, Xà sàng tử 30g. Tán bột. Luyện mật làm hoàn, ngày uống 12 - 16 g với rượu, lúc đói (Ba Kích Hoàn - Ngự Dược Viện).<br />+ Trị bụng ứ kết lạnh đau, lưng đau, gối mỏi, 2 chân yếu, khớp xương đau, chuột rútû, thận hư, liệt dương : Ba kích 18g, Đương quy 20g, Khương hoạt 27g, Ngưu tất 18g,   Sinh khương  27g, Thạch hộc 18g, Tiêu 2g.   Giã nát, cho vào bình, thêm 2 lít rượu vào, đậy kín, bắc lên bếp, nấu 1 giờ, sau đó ngâm trong nước lạnh cho nguội. Ngày uống 3 lần, mỗi lần 15  -  20ml (Ba Kích Thiên - Thánh Tế Tổng Lục).<br />+ Bổ thận, tráng dương, tăng trưởng cơ nhục, dưỡng sắc đẹp: Ba kích (bỏ lõi )   60g, Cam cúc hoa 60g, Câu kỷ tử 30g, Phụ tử (chế) 20g, Thục địa 46g, Thục tiêu 30g. Tán bột, cho vào bình, ngâm với 3 lít rượu. Ngày uống 2 lần, mỗi lần 15 -  20ml,  lúc đói (Ba Kích Thục Địa Tửu -  Nghiệm Phương)<br />+ Trị sán khí do Thận hư: Ba kích thiên, Hoàng bá, Quất hạch, Lệ chi hạch, Ngưu tất, Tỳ giải, Mộc qua,  Kim linh tử,  Hoài sơn, Địa hoàng (Trung Quốc Dược Học Đại Từ Điển).<br />+ Trị liệt dương: Ba kích thiên, Bá tử nhân, Bổ cốt chỉ, Câu kỷ tử , Lộc nhung, Ngũ vị tử, Nhục thung dung, Sơn thù du (Trung Quốc Dược Học Đại Từ Điển).    <br />+ Trị mộng tinh: Ba kích thiên, Bá tử nhân, Hoàng bá, Liên tu, Lộc giác, Phúc bồn tử, Thiên môn, Viễn chí (Trung Quốc Dược Học Đại Từ Điển).<br />+ Trị liệt dương, di tinh, tiết tinh do Thận dương hư:  Thỏ ty tử, Nhục thung dung (Trung Dược Học).<br />+ Trị tiểu nhiều, tiểu không tự chủ do Thận dương hư: Bổ cốt chỉ, Phúc bồn tử (Trung Dược Học).<br />+ Trị gân cơ sưng đau, gân cơ suy yếu, teo cơ, khớp đau mạn tính do Thận hư:  Đỗ trọng, Ngưu tất, Tục Đoạn (Trung Dược Học).<br />+ Trị liệt dương, tảo tinh, tiết tinh, lưng đau, vô sinh (ở nữ) do Thận dương hư: Ba kích thiên 12g, Ngũ vị tử 6g, Nhân sâm 8g, Thục địa 16g, Nhục thung dung, Long cốt, Cốt toái bổ đều 12g. Tán bột, trộn mật làm hoàn 12g. Ngày uống 2-3 lần  (Ba Kích Thiên Hoàn – Lâm Sàng Thường Dụng Trung Dược Thủ Sách).<br />+ Trị lưng đau, di tinh, hoạt tinh do Thận hư: Ba kích thiên, Đảng sâm, Phúc bồn tử, Thỏ ty tử, Thần khúc đều 12g, Sơn dược 24g. Tán bột, luyện mật làm hoàn. Mỗi lần uống 12g, ngày 2-3 lần (Lâm Sàng Thường Dụng Trung Dược Thủ Sách).<br />+ Trị người lớn tuổi lưng đau, chân tê, chân yếu, chân mỏi: Ba kích thiên, Xuyên tỳ giải, Nhục thung dung, Đỗ trọng, Thỏ ty tử, lượng bằng nhau, Lộc thai 1 bộ. Tán nhuyễn, trộn với mật làm hoàn. Mỗi lần  uống 8g, ngày 2-3 lần với nước ấm  (Kim Cương Hoàn - Lâm Sàng Thường Dụng Trung Dược Thủ Sách).<br />+ Trị phong thấp đau nhức, cước khí, phù: Ba kích, Đỗ trọng, Ngưu tất, Tục đoạn đều 12g, Tang ký sinh 10g, Sơn thù nhục 8g, Hoài sơn 16g. Sắc uống (Ba Kích Khu Tý Thang - Trung Dược Ưùng Dụng Lâm Sàng).<br />+ Trị huyết áp cao thời kỳ tiền mãn kinh: Ba kích thiên, Tiên mao, Hoàng bá, Dâm dương hoắc, Tri mẫu, Đương qui, mỗi thứ 20 - 28g, sắc uống (Sổ Tay Lâm Sàng Trung Dược).<br /><br /></p>\r\n<p style=\"text-align: justify;\"><strong><br /></strong></p>', '1', '2', '0', '278', '2010-05-04 15:23:39', '62', '', '2010-05-16 13:24:50', '62', '0', '0000-00-00 00:00:00', '2010-05-04 15:23:39', '0000-00-00 00:00:00', '', '', 'tkh=Morinda officinalis How.\nthv=Ba kích (巴戟)\nhtvvn=Cà phê\nhtvkh=Rubiaceae\nkvlt=\ndvlt=\nbpd=\ntphh=anthranoid\npltb=di mộng tinh-liệt dương-hoạt tinh\ntcdy=thuốc bổ dương\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '9', '0', '2', 'BA KÍCH, Ba kích thiên, Dây ruột gà, Morinda officinalis, Rubiaceae', 'BA KÍCH (巴戟) Radix Morindae', '0', '19', 'robots=BA KÍCH, Ba kích thiên, Dây ruột gà, Morinda officinalis, Rubiaceae\nauthor=');
INSERT INTO `jos_content` VALUES ('40', 'Hộ Tạng Đường', 'ho-tang-duong', '', '', '\r\n<p style=\"text-align: center;\"><img src=\"http://www.thuocbietduoc.com.vn/images/drugs/2009/9/ho-tang-duong_7-25909.JPG\" border=\"0\" width=\"320\" height=\"250\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">SĐK:   Hotangduong<br /><br />Dạng thuốc:      viên nén bao phim<br /><br />Đóng gói:          Mỗi vỉ có 10 viên nén bao phim màu trắng. Mỗi hộp có 3 vỉ.<br /><br />Giá kê khai:<br /><br />Chỉ định:<br /><br /><br />- Đặc tính sản phẩm<br /><br /><br />Hộ Tạng Đường là sự phối hợp toàn diện giữa α-lipoic acid và các dược thảo có tác dụng điều hòa đường huyết, ngăn ngừa biến chứng và làm chậm tiến trình biến chứng tiểu đường. Nhờ vậy Hộ Tạng Đường giúp phòng ngừa biến chứng và hỗ trợ điều trị hiệu quả bệnh tiểu đường (týp I và týp II) cùng các biến chứng của nó.<br /><br /><br />α-lipoic acid (ALA): ALA là một chất chống oxi hóa mạnh. ALA có tác dụng tấn công các gốc tự do – sản phẩm thải ra khi cơ thể chuyển thức ăn thành năng lượng – giúp làm giảm các stress oxi hóa trong tế bào. ALA còn có tác dụng độc đáo là tái sử dụng các chất chống oxi hóa khác như vitamin C, vitamin E, Glutathione và tăng sản sinh Glutathione. Nhờ vậy, ALA có tác dụng bảo vệ mạch máu nhất là các mạch máu nhỏ ở võng mạc nên phòng ngừa bệnh võng mạc, ngăn ngừa tổn thương thận, tổn thương thần kinh ngoại biên &amp; xơ vữa động mạch. ALA dễ dàng đi qua hàng rào máu não nên có tác dụng bảo vệ não trong tai biến mạch máu não. Khi đường huyết tăng, ALA có tác dụng “dọn dẹp” glucose trong máu nên có tác dụng hỗ trợ cho các thuốc hạ đường huyết.<br /><br />Hoài sơn (Dioscorea persimlis) được coi là một vị thuốc bổ, chữa ăn uống kém tiêu, bệnh tiểu đường. khả năng thủy phân chất đường của men trong Hoài sơn rất cao do đó giúp hạ đường huyết.<br /><br />Câu kỷ (Lycium chinensis Mill.) được coi là vị thuốc bổ toàn thân, dùng cho các trường hợp bệnh nhân bị tiểu đường, sáng mắt, bổ thận, suy nhược thần kinh, mệt mỏi. Các thử nghiệm dược lý cho thấy câu kỷ có tác dụng bổ gan, hạ cholesteron huyết và tăng cường miễn dịch, hạ đường huyết.<br /><br />Nhàu (Morinda citrifolia L. ) có tác dụng thanh nhiệt, giải độc, giúp hạ huyết áp.<br /><br />Mạch môn (Ophiopogon japonicus) có tác dụng tăng huyết lượng động mạch vành trong thiếu máu cơ tim, giúp hạ đường huyết.<br /><br /><br />- Tác dụng:<br /><br /><br />Hộ Tạng Đường có tác dụng chống oxi hóa nên giúp bảo vệ mạch máu nhất là các mạch máu nhỏ ở võng mạc, thần kinh &amp; cầu thận, chống xơ vữa động mạch. Ngoài ra, Hộ Tạng Đường còn giúp hạ đường huyết, cholesterol, huyết áp và tăng cường miễn dịch.<br /><br /><br />- Công dụng:<br /><br /><br />Phòng ngừa và hỗ trợ điều trị các biến chứng của bệnh tiểu đường: Bệnh võng mạc, bệnh thần kinh ngoại biên , suy thận và các bệnh tim mạch &amp; đột quỵ do xơ vữa động mạch.<br /><br /><br />Liều lượng:</p>', '1', '4', '0', '15', '2010-04-19 14:26:25', '62', '', '2010-05-08 07:40:33', '62', '0', '0000-00-00 00:00:00', '2010-04-19 14:26:25', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=viên nén\nt_ndt=tim mạch-huyết áp\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '8', '0', '4', '', '', '0', '10', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('170', 'Ăn ít rau quả, trẻ dễ bị ung thư', 'n-it-rau-qu-tr-d-b-ung-th', '', '<p style=\"text-align: justify;\">Hàng ngàn trẻ em có nguy cơ bị ung thư do không ăn đủ trái cây và rau củ. Nghiên cứu mới đây của các nhà khoa học Anh cho thấy, 4/5 trẻ em không tuân theo lời khuyên ăn năm khẩu phần rau củ mỗi ngày.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/an-it-rau-qua-tre-de-bi-ung-thu.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br />Các nhà khoa học Anh ước tính, khoảng một phần ba số bệnh nhân ung thư có thể ngăn ngừa được bệnh này bằng cách ăn uống lành mạnh, tập thể dục thường xuyên và duy trì một trọng lượng cơ thể khỏe mạnh.<br /><br />Quỹ Nghiên cứu Ung thư Thế giới (WCRF) khuyến cáo, để giảm nguy cơ mắc bệnh ung thư, mọi người càng hạn chế tích mỡ trong cơ thể càng tốt, tuy nhiên không được để rơi vào tình trạng thiếu cân và ăn năm khẩu phần rau củ mỗi ngày. <br /><br />Nên dành ít nhất 30 phút mỗi ngày để tập luyện thể dục thể thao, tránh uống nước ngọt, tiêu thụ đường và chất béo; hạn chế ăn thịt có màu đỏ và thịt được chế biến sẵn càng nhiều càng tốt.<br /><br />Bà Nathalie Winn, nhà dinh dưỡng học của WCRF, cho biết: \"Trên thực tế, chỉ một phần năm trẻ em ăn đủ trái cây và rau quả mỗi ngày. Điều đó rất đáng lo ngại vì cần khuyến khích trẻ em có thói quen ăn uống lành mạnh càng sớm càng tốt\".<br /><br />\"Theo nghiên cứu của chúng tôi, một chế độ ăn với nhiều trái cây, rau quả, ngũ cốc có thể làm giảm nguy cơ mắc một số bệnh ung thư, như ung thư đường ruột.\"<br /><br />Theo khảo sát sức khỏe của Anh năm 2008, trung bình một bé trai (từ 5 đến 15 tuổi) ăn 3,1 khẩu phần trái cây và rau quả trong khi các bé gái ăn 3,3 khẩu phần rau quả một ngày.<br />WCRF đưa ra một số lời khuyên cho các bậc cha mẹ giúp con mình có hứng thú hơn với các loại trái cây như: Bố sung thêm trái cây vào bữa sáng cùng ngũ cốc, chế biến salad trái cây thành một bữa ăn nhẹ hoặc tráng miệng, nướng trái cây rau củ nhiều màu sắc, trộn với pho mát ít béo…<br /> <br /><em><strong>Theo VnExpress</strong></em></p>', '1', '1', '0', '4', '2010-05-14 15:13:33', '62', '', '2010-05-15 14:21:52', '62', '0', '0000-00-00 00:00:00', '2010-05-14 15:13:33', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '4', 'rau quả, ung thư', 'Ăn ít rau quả, trẻ dễ bị ung thư', '0', '9', 'robots=rau quả, ung thư\nauthor=');
INSERT INTO `jos_content` VALUES ('18', 'ANH TÚC XÁC (罂粟壳) Pericarpium Papaveris', 'b-sung-gia-v-cho-chao-b-dng', '', '', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/anhtuc.jpg\" border=\"0\" /><br />Anh Túc<br /><br /><br /><strong>ANH TÚC XÁC (罂粟壳)<br />Pericarpium Papaveris</strong><br /><br /><br /></p>\r\n<p style=\"text-align: justify;\"><strong>Tên khoa học:</strong> Papaver somniferum L., họ Thuốc phiện (Papaveraceae)</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Tên khác:</strong> Cù túc xác</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Bộ phận dùng:</strong> Vỏ quả khô đã trích nhựa của cây Thuốc phiện (Papaver somniferum L.), họ Thuốc phiện (Papaveraceae).</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Mô tả:</strong> Anh túc xác là qủa (trái) cây A phiến (Thuốc phiện). Qủa là một nang hình cầu hoặc trụ dài 4~7cm, đường kính 3~6cm, khi chín có mầu vàng xám, cuống qủa phình to ra, đỉnh qủa còn núm. Trong qủa chín có nhiều hạt nhỏ hơi giống hình thận, trên mặt có vân  hình mạng mầu xám trắng hoặc xám đen. Khi hái để làm Anh túc xác thường thấy trên mặt qủa có các vết ngang hoặc dọc tùy theo cách lấy nhựa, mỗi vết gồm 3~4 đường.  <br />Phân bố: Cây này trước đây có trồng ở một số vùng núi cao nước ta, ngày nay cấm trồng vì liên quan tới tệ nạn ma tuý.<br />Thu hái: Chích nhựa ở vỏ quả chưa chín vào đầu mùa hạ, đem cô đặc. Còn vỏ quả đem phơi khô.<br />Thành phần hoá học chính: Nhựa thuốc phiện, alcaloid (morphin, codein, papaverin...).</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Tác dụng dược lý:</strong><br />- Đối với hệ hô hấp: Morphin là một chất ức chế mạnh và cao đối với hệ hô hấp. Liều có tác dụng đối với hệ hô hấp nhỏ hơn là liều giảm đau. Cơ chế của hậu qủa này là do sự cảm nhận thấp của hệ thần kinh hô hấp đối với mức độ của Carbon Dioxid. Dấu hiệu ức chế hô hấp bao gồm thở nhanh và thở dốc. Nếu dùng qúa liều hô hấp có thể trở nên khó khăn và có thể  ngưng hô hấp. Tác dụng của Codein đối với hệ hô hấp  yếu hơn là Morphin. Morphin cũng ức chế cơn ho với lều nhỏ hơn liều dùng để giảm đau. Codein có tác dụng long đờm yếu hơn nhưng thường được dùng nhiều hơn vì ít tác dụng phụ.<br />- Đối với hệ tuầøn hoàn: Morphin  gây ra gĩan mạch ngoại vi và giải phóng Histamin có thể dẫn đến huyết áp thấp. Vì thế phải dùng rất cẩn thận đối với bệnh nhân mệt lả do thiếu máu.<br />- Đối với vết vị trường: Morphin dùng với liều rất thấp gây ra bón do nó làm tăng trương lực  và giảm sự thúc đẩy co cơ  trong thành ruột đồng thời làm giảm dịch nội tiết tiêu hóa. Ngoài ra, nó gia tăng sứs ép trong ống mật. Những hậu qủa này gây ra ói mửa, bụng đau cơn đau mật. Codein tác dụng yếu hơn đối với vết vị trường.<br />- Đối với hệ sinh dục  niệu: Morphin gia tăng trương lực nơi đường tiểu và cơ bàng quang.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Công năng:</strong> Thu liễm phế khí, cầm tiêu chảy, giảm ho, giảm đau</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Công dụng:</strong> Trị ho lâu ngày, ỉa chảy lâu ngày, giảm đau trong các cơn đau như đau bụng, đau gân cốt.<br />Cách dùng, liều lượng: Ngày dùng 2-6g, dạng thuốc sắc hay thuốc bột.<br />+ Rửa sạch, loại bỏ hết hạt và gân màng , chỉ lấy vỏ ngoài, xắt mỏng, sấy khô hoặc tẩm mật ong (sao qua) hoặc sao với dấm cho hơi vàng, tán nhuyễn để dành dùng (Bản Thảo Cương Mục).<br />+ Lấy nước rửa ướt rồi bỏ tai và gân màng, chỉ lấy vỏ màng ngoài, phơi trong râm, xắt nhỏ, tẩm dấm, sao hoặc tẩm mật sao (Trung Hoa Nhân Dân Cộng Hòa Quốc Dược Điển).<br />+ Rửa sạch bụi, bỏ hết hột, bỏ tai và gân màng, chỉ lấy vỏ ngoài, xắt nhỏ, phơi trong râm cho khô để dùng hoặc tẩm mật sao qua hoặc tẩm giấm sao vàng (Phương Pháp Bào Chế Đông Dược).</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Bài thuốc:</strong><br />+  Trị ho lâu ngày: Anh túc xác, bỏ gân, nướng mật, tán bột. Mỗi lần uống 2g với nước pha mật (Thế Y Đắc Hiệu Phương).<br />+ Trị lao, suyễn, ho lâu năm, mồ hôi tự ra: Anh túc xác 100g, bỏ đế và màng, sao với giấm, lấy 1 nửa. Ô mai 20g. Tán bột, mỗi lần uống 8g khi đi ngủ (Tiểu Bách Lao Tán  Tuyên Minh Phương).  <br />+  Trị thủy tả không cầm: Anh túc xác 1 cái, Ô mai nhục, Đại táo nhục đều 10 cái, sắc với 1 chén nước còn 7 phân, uống ấm (Kinh Nghiệm Phương).<br />+  Trị lỵ: Anh túc xác (bỏ núm trên và dưới, đập dập, nướng với mật cho hơi đỏ), Hậu phác (bỏ vỏ, ngâm nước cốt gừng 1 đêm, nướng). 2 vị tán thành bột. Mỗi lần dùng 8~12g với nước cơm (Bách Trung Tán  - Bách Nhất Tuyển Phương).<br />+  Trị lỵ lâu ngày:<br />1- Anh túc xác, nướng với dấm, tán bột, trộn với mật làm hoàn. Ngày uống 6~8g với nước sắc gừng ấm (Bản Thảo Cương Mục).             <br />2- Anh túc xác 400g, bỏ màng, chia làm 3 phần: 1 phần sao với dấm, 1 phần sao với mật, 1 phần để sống. Tán bột, trộn với mật làm hoàn. Ngày uống 8~12g với nước cơm (Y Học Nhập Môn).<br />+ Trị trẻ nhỏ bị xích bạch lỵ: Anh túc xác 20g, sao với giấm, tán nhỏ, lấy chảo đồng sao qua. Binh lang 20g,  sao đỏ, nghiền nhỏ. Xích lỵ uống với mật ong, bạch lỵ uống với nang đường (Toàn Ấu Tâm Giám Phương).  <br />+  Trị trẻ nhỏ bị thổ tả, không muốn ăn uống, bạch lỵ: Anh túc xác  (sao), Trần bì  (sao), Kha  tử (nướng, bỏ hạt), đều 40g Sa nhân, Chích thảo đều 8g. Tán bột. Ngày uống 8~12g với nước cơm (Anh Túc Tán - Phổ Tế Phương).      <br /><br /><br /></p>', '1', '2', '0', '278', '2010-04-02 04:21:20', '62', '', '2010-05-18 06:40:06', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:21:20', '0000-00-00 00:00:00', '', '', 'tkh=Papaver somniferum L.\nthv=Anh túc xác\nhtvvn=Thuốc phiện\nhtvkh=Papaveraceae\nkvlt=\ndvlt=\nbpd=quả\ntphh=alcaloid\npltb=an thần-ngủ-nhức đầu,ho hen\ntcdy=thuốc chữa ho bình suyễn\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '24', '0', '5', 'ANH TÚC XÁC, Thuốc phiện, Cù túc xác, Papaver somniferum, Papaveraceae, morphin, codein, papaverin', 'ANH TÚC XÁC (罂粟壳) Pericarpium Papaveris', '0', '68', 'robots=ANH TÚC XÁC, Thuốc phiện, Cù túc xác, Papaver somniferum, Papaveraceae, morphin, codein, papaverin\nauthor=');
INSERT INTO `jos_content` VALUES ('91', 'Công ty Đông Nam Dược Bảo Long', 'cong-ty-ong-nam-dc-bo-long', '', '<p>Giới thiệu gian hàng Đông nam dược Bảo Long</p>\r\n', '\r\n<p><img src=\"http://www.vinasme.com.vn/img1/store/danhba/baolong.jpg\" border=\"0\" width=\"300\" height=\"300\" /></p>', '1', '7', '0', '295', '2010-04-26 14:13:45', '62', '', '2010-05-02 06:33:39', '62', '0', '0000-00-00 00:00:00', '2010-04-26 14:13:45', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '1', '', '', '0', '4', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('92', 'Công ty TNHH Đầu tư và Phát triển Đông Tây', 'gian-hang-cong-ty-tnhh-u-t-va-phat-trin-ong-t', '', '<p>Giới thiệu gian hàng Công ty TNHH Đầu tư và Phát triển Đông Tây</p>\r\n', '\r\n<p><img src=\"http://danhba.bacsi.com/user_media/logo/images/5546.jpg\" border=\"0\" width=\"300\" height=\"236\" /></p>\r\n<p> </p>', '1', '7', '0', '304', '2010-04-26 14:28:17', '62', '', '2010-05-02 07:16:57', '62', '0', '0000-00-00 00:00:00', '2010-04-26 14:28:17', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('93', 'Công ty cổ phần xuất nhập khẩu Y tế Domesco', 'giang-hang-cong-ty-c-phn-xut-nhp-khu-y-t-dom', '', '<p>Giới thiệu gian hàng <a href=\"http://www.thuocbietduoc.com.vn/home/clickAd.aspx?comptyp=1&amp;compid=483\">Công  ty cổ phần xuất nhập khẩu Y tế Domesco </a></p>\r\n', '\r\n<p><img src=\"http://danhba.bacsi.com/user_media/logo/images/707.jpg\" border=\"0\" width=\"267\" height=\"300\" /></p>\r\n<p> </p>', '1', '7', '0', '305', '2010-04-26 14:33:24', '62', '', '2010-05-02 07:11:01', '62', '0', '0000-00-00 00:00:00', '2010-04-26 14:33:24', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('94', 'Công ty TNHH dược Phẩm Á Âu', 'cong-ty-tnhh-dc-phm-a-au', '', '<p>Giới thiệu gian hàng <strong>Công ty TNHH dược Phẩm Á Âu \r\n', '\r\n<img src=\"http://khoedepvietnam.com/quantrinoidung%5CIMAGES1%5Clogo_thanhvien%5Cduocaau.jpg\" border=\"0\" width=\"200\" height=\"200\" /></strong></p>', '1', '7', '0', '306', '2010-04-26 16:38:23', '62', '', '2010-05-02 07:28:24', '62', '0', '0000-00-00 00:00:00', '2010-04-26 16:38:23', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('95', 'Công Ty Cổ Phần Dược Phẩm Trường Thọ', 'gian-hang-cong-ty-c-phn-dc-phm-trng-th', '', '<p>Giới thiệu gian hàng <strong>Công Ty Cổ Phần Dược Phẩm Trường Thọ \r\n', '\r\n<img src=\"http://timkiem24h.com/uploads/News/pic/1201339096.gif\" border=\"0\" width=\"150\" height=\"150\" /></strong></p>', '1', '7', '0', '307', '2010-04-26 16:44:45', '62', '', '2010-05-02 07:27:28', '62', '0', '0000-00-00 00:00:00', '2010-04-26 16:44:45', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '5', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('19', 'BA CHẠC (Folium et Radix Euodiae Leptae)', 'sn-non-hm-tng-qu-lam', '', '', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/bachac.jpg\" border=\"0\" width=\"480\" /></p>\r\n<p style=\"text-align: center;\">Ba chạc<br /><br /><br /><strong>BA CHẠC<br />Folium et Radix Euodiae Leptae<br /></strong></p>\r\n<p style=\"text-align: justify;\"><strong>Tên khoa học:</strong> Euodia lepta (Spreng.) Merr., họ Cam (Rutaceae). Cây mọc hoang ở nhiều nơi trong nước ta.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Tên khác:</strong> Chè đắng. Chè cỏ. Cây dầu dầu</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Mô tả:</strong> Cây nhỡ cao 2-8m, có nhánh màu đỏ tro. Lá có 3 lá chét, với lá chét nguyên. Cụm hoa ở nách các lá và ngắn hơn lá. Quả nang, thành cụm thưa, có 1-4 hạch nhẵn, nhăn nheo ở cạnh ngoài, chứa mỗi cái một hạt hình cầu đường kính 2mm, đen lam, bóng. Hoa tháng 4-5. Quả tháng 6-7.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Bộ phận dùng:</strong> Lá, cành, thân, rễ.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Phân bố:</strong> Rất phổ biến khắp nước ta trên các đồi cây bụi, ở rìa rừng và trong rừng thưa, ở cả vùng đất núi và đồng bằng. Còn phân bố ở Trung Quốc, Philippin vv...</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Thu hái:</strong> Rễ và lá quanh năm. Rửa sạch rễ thái nhỏ và phơi khô ngoài nắng. Lá sấy khô hay phơi trong râm.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Thành phần hoá học chính:</strong> Rễ chứa alcaloid; lá có tinh dầu thơm nhẹ..</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Công năng: </strong>Thanh nhiệt, chống ngứa, giảm đau.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Công dụng, cách dùng:</strong><br />- Lá và cành tươi nấu với nước để rửa các vết thương, vết loét, chốc đầu.<br />- Thân và rễ được làm thuốc bổ đắng, dùng làm chè uống cho phụ nữ sau khi đẻ, mỗi ngày uống 4-12g.<strong></strong></p>\r\n<p style=\"text-align: justify;\"><strong><br />Bài thuốc:</strong> Dự phòng cúm truyền nhiễm và viêm não: Ba chạc 15g. Rau má 30g. Ðơn buốt 15g. Cúc chỉ thiên 15g, sắc uống.</p>', '1', '2', '0', '278', '2010-04-02 04:22:14', '62', '', '2010-05-16 13:28:52', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:22:14', '0000-00-00 00:00:00', '', '', 'tkh=Euodia lepta (Spreng.) Merr.\nthv=\nhtvvn=Cam\nhtvkh=Rutaceae\nkvlt=\ndvlt=\nbpd=cành,lá\ntphh=alcaloid,tinh dầu\npltb=mụn nhọt- mẩn ngứa- lở loét\ntcdy=thuốc thanh nhiệt lương huyết\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '16', '0', '6', 'BA CHẠC, Euodia lepta, Rutaceae, alcaloid, tinh dầu', 'BA CHẠC (Folium et Radix Euodiae Leptae)', '0', '37', 'robots=BA CHẠC, Euodia lepta, Rutaceae, alcaloid,tinh dầu\nauthor=');
INSERT INTO `jos_content` VALUES ('20', 'Dung dịch vệ sinh phụ nữ Dạ Hương', 'ga-trng-nng-st-t', '', '<p> </p>\r\n', '\r\n<p><img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/44ed62664dc24040aa6c4bd3e836c0b6-Anh-DH-thuong.gif/Anh-DH-thuong.gif\" border=\"0\" alt=\"Dung dịch vệ sinh phụ nữ Dạ Hương  Muối – Thảo dược – Acid lactic\" width=\"500\" height=\"390\" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Đặc điểm</strong>: </span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><br />Là sản phẩm chuyên dùng để chăm sóc và vệ  sinh vùng kín (âm hộ) phụ nữ. Công thức Dạ Hương được nghiên cứu, xây  dựng dưới sự tham vấn của các Bác sỹ chuyên khoa Phụ sản và các Dược sỹ  chuyên ngành bào chế. Kết hợp các thành phần tự nhiên Dạ  Hương an toàn, không khô rát, phù hợp với sinh lý vùng kín và không ảnh  hưởng tới pH sinh lý âm đạo.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Dạng dung dịch  tiện dụng, không phải pha loãng trước khi sử dụng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Được bào chế đậm đặc  nên dùng tiết kiệm, được nhiều lần.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Dạng bào chế và trình bày</strong>: Dạng gel,  chai 100ml, chai 120 ml (có vòi bơm)</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Thành phần</strong>:</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Muối tinh khiết (NaCl) 0,9%; Lô hội (Aloe vera)  0,01%; Tinh dầu Bạc hà 0,085%; Tinh dầu Bách lý hương 0,005%; Acid  Lactic 0,05%; Vitamin E 0,01%; Hương liệu; Các thành phần khác vừa đủ  100ml.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Công dụng: </strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><br />Làm sạch nhẹ nhàng, khử mùi hôi, bảo vệ vùng  kín, ngăn ngừa vi trùng gây bệnh viêm nhiễm phụ khoa, mang lại cảm giác  tự tin với hương thơm quyến rũ.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Vệ sinh vùng  kín hàng ngày, vệ sinh vùng kín thời kỳ kinh nguyệt, thai nghén, hậu  sản.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Vệ sinh bộ phận  sinh dục ngoài cho cả nam, nữ trước và sau khi quan hệ tình dục.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Hỗ trợ điều trị  viêm nhiễm phụ khoa (sử dụng phối hợp trong phác đồ điều trị): Viêm âm  đạo, viêm âm hộ, ngứa âm hộ, huyết trắng…</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Liều dùng, cách dùng</strong>:</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Làm ướt vùng  kín, lấy 2-3 ml dung dịch vào lòng bàn tay, thoa rửa nhẹ vùng kín trong 1  phút, sau đó rửa lại thật kỹ bằng nước sạch.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Nên dùng hàng  ngày, nhất là thời kỳ kinh nguyệt, hậu sản.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Trong những  ngày hành kinh, tùy mức độ huyết ra nhiều hay ít mà rửa âm hộ từ 2-4  lần/ngày.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Bảo quản</strong>: Để nơi thoáng  mát.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Tiêu chuẩn</strong>: TCCS</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Hạn dùng</strong>: 36 tháng kể  từ ngày xuất xưởng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Lưu ý:</strong> Sản phẩm này  chỉ dùng để rửa ngoài, không dùng để thụt rửa âm đạo, không được uống.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>SĐK:  1221/07/QLD-MP</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>ĐỂ XA TẦM TAY  TRẺ EM</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>ĐỌC KỸ HƯỚNG DẪN SỬ DỤNG TRƯỚC KHI  DÙNG</strong></span></span></p>', '-2', '4', '0', '15', '2010-04-02 04:23:07', '62', '', '2010-05-03 16:56:30', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:23:07', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=thuốc dùng ngoài\nt_ndt=phụ khoa\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '0', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('21', 'Rượu vang Ona Syrah và canh nấm', 'ru-vang-ona-syrah-va-canh-nm', '', '<p class=\"Lead\" align=\"left\">Nấm, rượu vang đều đến từ những vùng đất có  khí hậu, vị trị địa lý tương đồng và đều có lợi cho sức khỏe, dễ sử  dụng.\r\n', '\r\n</p>\r\n<p class=\"Normal\" align=\"left\">Xu hướng ăn tiệc tại các nhà hàng  Fine-dinning cho những dịp gặp mặt với đồng nghiệp, đối tác, bạn bè hay  những buổi kỷ niệm của gia đình đã phổ biến trong một xã hội năng động.  Phong cách thưởng thức và sự tinh tế trong việc kết hợp giữa đồ ăn, thức  uống giúp bữa tiệc trở nên ngon miệng và thú vị. Những món ăn ngon nếu  biết thưởng thức cùng các loại đồ uống thích hợp sẽ kích thích vị giác  và đánh thức các giác quan của người dùng.</p>\r\n<p class=\"Normal\" align=\"left\">Lẩu nấm ngon và bổ dưỡng là món ăn yêu  thích của nhiều thực khách trong xu hướng tìm lại với thiên nhiên. Nấm  vốn là thân cỏ, mềm, mát dịu, rất hợp với những đồ uống cùng có vị ngọt,  hơi chát, không quá nồng, thơm mùi thiên nhiên đặc biệt phù hợp với  rượu vang.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A0/9F/Nam_bung_lon_va_ruou_Ona_Syrah.jpg\" border=\"1\" width=\"350\" height=\"250\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Vẻ đẹp của ly rượu vang cùng độ rượu nhẹ  nhàng, thơm quyện với hương nấm rất thích hợp với phụ nữ và cả những quý  ông “sành” thưởng thức giúp cho bữa tiệc trở nên nhẹ nhàng nhưng không  kém phần ấm cúng và sang trọng. Nấm và rượu vang có rất nhiều điểm tương  đồng với nhau nhưng điểm chung và cũng là ưu điểm lớn nhất đó là rất có  lợi cho sức khỏe nếu sử dụng hợp lý và đều đặn.</p>\r\n<p class=\"Normal\" align=\"left\">Ngoài ra, chất lượng của chúng đều phụ  thuộc vào vị trí địa lý và khí hậu của nơi xuất xứ. Những cây nấm quý  thường ở những vùng đất có khí hậu trong lành. Những loại rượu vang  thượng hạng đều phải làm từ những chùm nho căng mọng được trồng trên  vùng đồi cao, lộng gió như vang Ona Premium Syrah của hãng Anakena -  hãng rượu vang Chile danh tiếng được Đại sứ quán nước này lựa chọn giới  thiệu tới người tiêu dùng Việt Nam.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A0/9F/Nam_mang_hoa_va_ruou_Ona_Syrah_%282%29.jpg\" border=\"1\" width=\"350\" height=\"250\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Loại rượu này được làm ra từ loại nho  Syrah trồng trên đồi Rapel, Layda ở San Antonio và đồi Ninquen vùng  Colchogua, Chile, thơm ngon bởi chất lượng nho trồng và công thức chế  biến cũng như bảo quản khắt khe. Loại vang Chile này có sắc màu đỏ thậm,  mùi thơm quyến rũ từ quả mâm xôi và chocolate đen cùng các gia vị đặc  biệt. Khi thưởng thức cùng lẩu nấm, thực khách cảm nhận được sự hài hòa  giữa vị thanh, ngọt của nấm, vị giác đậm đà pha với vị chát của vang Ona  Premium Syrah lưu lại rất lâu trong họng.</p>\r\n<p class=\"Normal\" align=\"left\">Rượu vang Ona Premium Syrah có giá ưu đãi  (giảm từ 719.000 đồng xuống còn 579.000 đồng một chai) từ 22/3 đến  22/5.</p>\r\n<p class=\"Normal\" align=\"left\">Địa chỉ nhà hàng lẩu nấm Ashima:</p>\r\n<p class=\"Normal\" align=\"left\"><em>Tại Hà Nội</em></p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 44 Phan Đình Phùng, quận Ba  Đình, Hà Nội. ĐT: 04. 37344600</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 182 Triệu Việt Vương, quận Hai  Bà Trưng, Hà Nội. ĐT: 04. 29743675</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 60 Giang Văn Minh, quận Ba Đình,  Hà Nội. ĐT: 04. 37226353</p>\r\n<p class=\"Normal\" align=\"left\"><em>Tại TP HCM:</em></p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 35A Nguyễn Đình Chiểu, quận 1.  ĐT: 08. 38241966</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 11 Công Trường Mê Linh, quận 1.  ĐT: 08. 38238799</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 11 Tú Xương, phường 7, quận 3.  ĐT: 08. 39320828</p>', '1', '4', '0', '16', '2010-04-02 04:23:46', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:23:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '5', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('175', 'Ăn uống gì khi bị viêm xoang?', 'n-ung-gi-khi-b-viem-xoang', '', '<p style=\"text-align: justify;\">Với người dân thành thị, nơi khói xe nhiều hơn mây chiều, xoang nếu không bị viêm mới là chuyện lạ. Tuy nhiên, biết cách ăn uống khi viêm xoang giúp thu ngắn liệu trình điều trị và giới hạn phản ứng phụ của dược phẩm.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/001an-uong-gi-khi-bi-viem-xoang.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Uống đủ 2 lít nước mỗi ngày</em></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\">Liệu pháp chữa viêm xoang muốn có hiệu quả toàn diện bắt buộc phải có tác dụng đồng bộ “2 trong 1” để vừa kháng viêm giúp người bệnh bớt khó chịu vì các triệu chứng nhức đầu, nghẹt mũi… vừa chống dị ứng để ngăn bệnh tái phát hay biến thể sang dạng hen suyễn, viêm phế quản…<br /><br /><strong>Thực phẩm ưu tiên</strong></p>\r\n<p style=\"text-align: justify;\"><strong><br /></strong>Uống đủ 2 lít nước trong ngày bằng cách uống đều đặn mỗi giờ, vì muốn tống khứ đàm nhớt ứ đọng trong xoang (lý do kích ứng đường hô hấp) thì trước hết phải pha loãng.<br /><br />Tăng lượng kẽm cho cơ thể, vì đa số người viêm xoang thiếu khoáng tố này. Nếu không dị ứng với hải sản thì nghêu, sò là món ăn nên được chú trọng, nếu không được thì mễ cốc như: đậu phộng, hột bí là giải pháp phòng hờ. Các loại cá biển chứa nhiều dầu béo omega-3 như: cá hồi, cá mòi, cá nục… cũng là món ăn có ích, vì omega- 3 có tác dụng tương tranh với các tác chất thúc đẩy phản ứng viêm trên đường hô hấp.<br /><br />Dùng dâu tây, củ hành, gừng vì có nhiều chất kháng sinh.<br /><br />Ăn nhiều ớt, chanh, bưởi… để tiếp tế thêm vitamin C.<br /><br />Dùng khoai lang ta, đu đủ, bí rợ để bổ sung tiền sinh tố A, là nhân tố cần thiết để bảo vệ cấu trúc khỏe mạnh của niêm mạc.<br /><br />Kết hợp các món ăn dẫn xuất từ đậu nành trong khẩu phần ăn để cung cấp canxi, khoáng tố cần thiết cho chức năng chống dị ứng của tuyến thượng thận.<br /><br /><strong>Thực phẩm nên tránh</strong><br /><br />- Tất cả món ăn đã từng gây dị ứng.<br /><br />- Tất cả các loại thực phẩm công nghệ có chứa bột sữa,<br /><br />- Nước uống quá lạnh.</p>\r\n<p style=\"text-align: justify;\"><br />- Ngoài ra, người bệnh cần cách ly với môi trường ô nhiễm và dùng thuốc đặc hiệu theo chỉ định của bác sĩ.<br /><br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '3', '2010-05-18 04:40:16', '62', '', '2010-05-18 04:50:52', '62', '0', '0000-00-00 00:00:00', '2010-05-18 04:40:16', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '1', 'viêm xoang', 'Ăn uống gì khi bị viêm xoang', '0', '4', 'robots=viêm xoang\nauthor=');
INSERT INTO `jos_content` VALUES ('176', 'MA HOÀNG PHỤ TỬ TẾ TÂN THANG (Thương hàn luận)', 'ma-hoang-ph-t-t-tan-thang-thng-han-lun', '', '<hr id=\"system-readmore\" style=\"text-align: justify;\" />\r\n<p><strong>Thành phần:</strong></p>\r\n<table style=\"width: 223px; height: 58px;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"font-size: small;\">Ma hoàng <br /></span></td>\r\n<td><span style=\"font-size: small;\">6 - 8g</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-size: small;\">Tế tân</span></td>\r\n<td><span style=\"font-size: small;\">4 - 8g</span></td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"font-size: small;\">Thục phụ tử</span></td>\r\n<td><span style=\"font-size: small;\">4 - 8g</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\"><strong>Cách dùng: </strong>sắc nước uống chia 3 lần trong 1 ngày.<br /><br /><strong>Tác dụng: </strong>Trợ dương, giải biểu.<br /><br />Dùng cho bệnh nhân vốn cơ thể dương hư mắc bệnh ngoại cảm phong hàn.<br /><br /><strong>Giải thích bài thuốc:</strong><br /><br />Ma hoàng có tác dụng tán hàn, giải biểu là chủ dược. <br />Phụ tử ôn kinh trợ dương, phò chính, khu tà. <br />Tế tân vừa giúp Ma hoàng giải biểu, vừa giúp Phụ tử ôn kinh, tán hàn.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Ứng dụng lâm sàng: </strong><br /><br />Bài thuốc được dùng trong các trường hợp viêm phế quản mạn tính. Hen phế quản thể hàn thường kết hợp với bài Nhị trần thang để vừa ôn kinh tán hàn, vừa hóa đờm, định suyễn.<br /><br /><strong>PHỤ PHƯƠNG</strong><br /><br />MA HOÀNG PHỤ TỬ CAM THẢO THANG<br /><br />(Thương hàn luận)<br /><br />Bài này là bài trên bỏ Tế tân gia Chích Cam thảo cũng có tác dụng trợ dương, giải biểu.<br /><br />Trị chứng dương hư, cảm mạo phong hàn nhưng tác dụng tán hàn ít hơn.</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/mahoang.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Ma hoàng</em></p>', '', '1', '3', '0', '279', '2010-05-18 06:49:59', '62', '', '2010-05-18 07:05:54', '62', '62', '2010-05-31 03:12:28', '2010-05-18 06:49:59', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc phò chính giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', 'MA HOÀNG PHỤ TỬ TẾ TÂN THANG, MA HOÀNG PHỤ TỬ CAM THẢO THANG, Ma hoàng, Tế tân, Thục phụ tử', 'MA HOÀNG PHỤ TỬ TẾ TÂN THANG', '0', '2', 'robots=MA HOÀNG PHỤ TỬ TẾ TÂN THANG, MA HOÀNG PHỤ TỬ CAM THẢO THANG, Ma hoàng, Tế tân, Thục phụ tử\nauthor=Thương hàn luận');
INSERT INTO `jos_content` VALUES ('174', 'Tỏa dương, vị thuốc chữa liệt dương', 'ta-dng-v-thuc-cha-lit-dng', '', '<p style=\"text-align: justify;\">Tỏa dương còn có tên cu chó vì nó có hình thù như dương vật của chó, lại có ý kiến vì nó có tác dụng tráng dương như dương vật chó (cẩu pín). Trông nó như cây nấm màu đỏ, nâu sẫm. Hoa tím mùi hôi. Có ở Hà Tây, Hoà Bình, Yên Bái, Lao Cai. Đông y dùng toả dương để bổ thận tráng dương, ích tinh huyết, mạnh tình dục, bổ tỳ vị, nhuận tràng, thông tiểu. Chủ trị yếu sinh lý, liệt dương, lãnh cảm, đau lưng, mỏi gối, biếng ăn.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/toa-duong.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em> Cây Tỏa dương</em></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><strong>Để dùng vị tỏa dương có hiệu quả cao:<br /></strong><br />Theo Biển  thước  tâm  thư: Già lão thì khí suy nên chân tay không ấm, nguyên khí ở đan điền bị hư tổn, hoạt động ngày càng chậm chạp, khó khăn; dương khí toàn thân không có đầy đủ thì nơi xa nhất như đầu ngón chân tay mỏi, bị lạnh, tê nhức với cảm giác kiến bò trong xương (không phải phong thấp). Để bổ sung dương khí lúc này nên dùng toả dương.<br /><br />Người bị dương khí hư do hoạt động tình dục quá mức đến nỗi dương vật không còn sức cương được nữa, phải dùng đến thuốc thì dùng toả dương. Trong đó nguyên khí hư kết hợp nhân sâm, trung khí hư kết hợp bạch truật, vệ khí hư kết hợp hoàng kỳ...<br /><br />Muốn ôn bổ thận dương nên tư bổ thận âm, nhằm quân bình âm dương. Ở trường hợp này toả dương và nhục thung dung có tác dụng giống nhau thì toả dương mạnh hơn nhưng lại gây ôn táo. Còn nhục thung dung tráng dương yếu hơn nhưng lại có tác dụng ích âm và sinh huyết. Có ý kiến có thể thay toả dương và nhục thung dung cho nhau nấu cháo ăn rất tốt. Khi tư âm mà lo địa hoàng gây nê trệ có thể dùng toả dương là vị tư âm trợ dương.<br /><br />Về phương diện bổ thận tráng dương, thì toả dương chữa liệt dương, xuất tinh sớm (tảo tiết), chưa kịp giao hợp tinh đã xuất. Ngoài ra tỏa dương được dùng để bổ máu làm ăn ngon miệng, hồi phục sức khỏe, ốm dậy, sau sinh đẻ, chữa tê mỏi chân, tay, lưng, gối.<br /><br /><strong>Một số cách dùng đơn giản dễ thực hiện</strong><br /><br />Bổ thận dương, chữa liệt dương: Canh hợp đồng cu của con chó với củ cây cu chó (cẩu pín với toả dương). Dùng hai thứ này xào hoặc nấu canh để ăn. Thêm gia vị gừng, hành để phối hợp tác dụng và khử tanh. Có thể thay dương vật chó bằng dương vật dê, bò, tinh hoàn gà...<br /><br />Cháo tráng dương: Toả dương nấu với chim sẻ, chim cút, gà, thịt chó, thịt dê, thịt bò, trai, sò, tôm (những thức ăn có tác dụng tráng dương).<br /><br />Bổ thận dương, ích tinh huyết: Hai quả thận (còn nguyên phần đỏ phía trên) bổ dọc, bỏ phần lõi ở giữa. Rửa sạch với nước gừng, rắc bột toả dương vào giữa, úp hai phần lại với nhau, cuốn dọc hành hẹ, nướng vỉ hoặc hấp chín để ăn. Khi ăn có thể thái mỏng. Chấm nước mắm gừng, tỏi...<br /><br />Rượu toả dương: Khai vị, cường tráng: củ toả dương thái mỏng với tỷ lệ 1 toả dương 5 rượu (40o). Ngâm 1 tháng. Rượu có màu đỏ sẫm, vị đắng chát thêm đường hoặc mật ong cho dễ uống. Hoặc toả dương 30g (thái lát), rượu trắng 500g ngâm 1 tuần.<br /><br />Thận, tâm, tỳ đều hư gây tảo tiết: Gà trống choai 1 con, toả dương 20g, đảng sâm 50g, hoài sơn 50g, ngũ vị tử 20g. Gà làm sạch mổ moi lấy lòng ra cho thuốc vào hầm cách thuỷ cho chín chia 2 lần ăn trong ngày. Tuần 1 lần, dùng 3 tuần. Không có gà thay bằng dạ dày lợn làm sạch, nhồi thuốc để hầm.<br /><br />Chữa liệt dương, ngũ canh tiết tả (buồn đại tiện lỏng sáng sớm của người già do dương hư): Nấu toả dương với đậu đen. Phải ăn đều mỗi chiều tối trong nhiều ngày.<br /><br />Tư thận khí hư, tảo tiết, liệt dương, ra nhiều khí hư: Toả dương 5g, đảng sâm 3g, hoài sơn 3g, phúc bồn tử 2g, hồng trà 3g. Cho vào phích nước sôi hãm 10-15phút.<br /><br />Thận hư, di tinh, di niệu, liệt dương, khí hư ra nhiều: Toả dương 5g, long cốt 3g, nhục thung dung 3g, tang phiêu tiêu 3g, phục linh 3g, hồng trà 3g. Hãm trong phích nước sôi 10-15phút.<br /><br />Tráng dương bổ thận: Lộc nhung 10g (thái lát); câu kỷ 30g, toả dương 10g, ba kích 20g, ngưu tất, nhục quế 10g cho vào bình đổ 2 lít rượu ngon 40o trở lên (vì có nhung hươu). Ngâm 1 tháng thì uống được.<br /><br />Ôn dương nhuận tràng: Chữa dương hư táo bón người già.<br /><br />Bài 1: Toả dương 15g, vừng đen 12g, vừng vàng 12g, chỉ xác 10g, ngưu tất 10g. Sắc lấy nước uống lúc đói. Ngày 1  lần.<br />Bài 2: Toả dương 500g, nhục thung dung 500g. Sắc 2 nước dồn lại cô tiếp rồi cho 250g mật ong quấy đều để nguội cất vào lọ dùng dần vào trước bữa cơm uống với nước sôi môi lần 2-3 thìa (thìa canh).<br /> <br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '2', '2010-05-18 04:18:38', '62', '', '2010-05-18 04:37:06', '62', '0', '0000-00-00 00:00:00', '2010-05-18 04:18:38', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '1', 'Tỏa dương, liệt dương', 'Tỏa dương, vị thuốc chữa liệt dương', '0', '3', 'robots=Tỏa dương, liệt dương\nauthor=');
INSERT INTO `jos_content` VALUES ('25', 'Trang này đang được xây dựng', 'trang-nay-ang-c-xay-dng', '', '<p>...</p>', '', '1', '6', '0', '33', '2010-04-06 07:32:19', '62', '', '2010-04-06 07:38:39', '62', '0', '0000-00-00 00:00:00', '2010-04-06 07:32:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '44', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('26', 'Chiếc răng khổng lồ nặng hơn 300 kg tại TP HCM', 'chic-rng-khng-l-nng-hn-300-kg-ti-tp-hcm', '', '<p class=\"Lead\" align=\"left\">Chiếc răng khổng lồ cao 3m, đường kính 3 m  đặt tại công viên 23/9, TP HCM từ ngày 5/4 và những trò chơi thú vị  quanh nó giúp các bé dễ dàng tiếp thu những kiến thức về sức khoẻ răng  miệng.\r\n', '\r\n</p>\r\n<p class=\"Normal\" align=\"left\">Mỗi tối, nơi đây thu hút các em bé và cha  mẹ bởi ánh sáng rực rỡ của của hệ thống đèn chiếu. Chiếc răng không chỉ  thu hút người dân bởi kích thước khác thường mà còn vì nó bị vàng ố với  nhiều mảng bám trên thân răng. Với hình ảnh trực quan này, trẻ em có  thể thấy hậu quả của việc không đánh răng. Các em sẽ thấy răng của mình  sẽ biến đổi nhanh thế nào nếu không đánh trước khi đi ngủ.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/DD/Hinh1.jpg\" border=\"1\" alt=\"Chiếc răng khổng lồ ở công viên 23/9- Tp.HCM đã góp phần  tạo ra sự hứng thú cho các bé trong khóa học về chăm sóc sức khỏe răng  miệng.\" width=\"400\" height=\"289\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Chiếc răng khổng lồ ở công viên 23/9, TP HCM đã góp  phần tạo ra sự hứng thú cho các bé trong khóa học về chăm sóc sức khỏe  răng miệng.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Không ít bà mẹ than phiền con mình không  chịu đánh răng hoặc rất khó khăn. Có nhiều lý do khác nhau khiến trẻ  ghét hoạt động này, thường là do không muốn bị cắt ngang các trò thú vị  khác như chơi game, xem TV… Ngoài ra, do người lớn bận việc quên nhắc  nhở con mình đánh răng, lâu ngày sẽ khiến trẻ không có thói quen vệ sinh  tự giác. Trẻ sẽ chống đối mỗi khi bị bắt đánh răng, đặc biệt là trước  khi đi ngủ nên phụ huynh thường phải dùng những biện pháp “mạnh”, ép  buộc trẻ tuân thủ mệnh lệnh của mình.</p>\r\n<p class=\"Normal\" align=\"left\">Đến nơi trưng bày này, ngoài việc hướng  dẫn thông qua hình ảnh trực quan để thực hành tốt nhất, phụ huynh còn  được hướng dẫn cách truyền tải phù hợp với tâm lý trẻ nhỏ để khuyến  khích các em đánh răng, đặc biệt trước khi đi ngủ một cách tự nguyện và  vui vẻ.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/DD/Hinh-31.jpg\" border=\"1\" width=\"254\" height=\"400\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Ngoài chiếc răng khổng lồ, những trò chơi tại công  viên 23/9 giúp bé hiểu được tầm quan trọng của việc đánh răng vào buổi  sáng và tối.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '-2', '5', '0', '20', '2010-04-06 07:41:03', '62', '', '2010-04-06 07:41:46', '62', '0', '0000-00-00 00:00:00', '2010-04-06 07:41:03', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '0', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('27', 'Suýt đè chết bạn trai vì bộ ngực bự', 'suyt-e-cht-bn-trai-vi-b-ngc-b', '', '<p class=\"Lead\">Claire Smedley đã khiến bạn trai suýt chết ngạt khi đôi  gò bồng đảo quá khổ của chị đè lên ngực anh lúc hai người đang ân ái.\r\n', '\r\n</p>\r\n<p class=\"Normal\">Bà mẹ 3 con người Anh - với bộ ngực cỡ 40 LL - hoảng  sợ khi nhấc bộ ngực ra và thấy người yêu Steven đã ngừng thở.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/D7/nguc1.jpg\" border=\"1\" width=\"311\" height=\"235\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Claire Smedley với bộ ngực to thứ hai nước Anh. Ảnh: <em>newsoftheworld.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">\"Lần đó, anh ấy đã đập đập vào tôi, nhưng tôi nghĩ do  anh ấy đang cao hứng nên không ngừng lại. Vài phút sau đó tôi nhận thấy  anh ấy ngừng cử động, rồi dường như không còn thở nữa\", chị kể với <em>newsoftheworld</em>.</p>\r\n<p class=\"Normal\">\"Tôi đã hoảng sợ và chực gọi cứu thương thì may thay  anh ấy bắt đầu tỉnh lại. Anh ấy thực sự chóng mặt, giống như trong một  cơn hôn mê. Sau đó anh ấy ho và ngồi dậy. Tôi nhẹ hết cả người\", chị  nói.</p>\r\n<p class=\"Normal\">Còn Steven thì nói thêm \"Tôi đã nghĩ mình tận số rồi.  Tôi cố gắng vỗ vào tay cô ấy để bảo cô ấy ngừng lại và nhấc người ra,  nhưng tôi nghĩ cô ấy hiểu sai tín hiệu\".</p>\r\n<p class=\"Normal\">Anh chàng may mắn này đã sống sót, nhưng mối quan hệ  của họ thì không, và họ chia tay nhau 3 tháng trước. \"Sau lần đó anh ấy  từ chối sex\", chị nói.</p>', '-2', '5', '0', '20', '2010-04-06 07:42:00', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 07:42:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '0', '', '', '0', '27', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('28', 'Nước có thể ngăn chặn chiến tranh', 'nc-co-th-ngn-chn-chin-tranh', '', '<p class=\"Lead\">Công nghệ từng được Cơ quan hàng không vũ trụ Mỹ (NASA)  dùng để tìm kiếm nước trên sao Hỏa có thể giúp con người tránh được  nhiều cuộc chiến tranh vì nguồn nước. \r\n', '\r\n</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/52/DESERT.jpg\" border=\"0\" alt=\"Một người đàn ông cưỡi lạc đà\" width=\"450\" height=\"263\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Một người đàn ông cưỡi lạc đà gần các kim tự tháp trên  sa mạc Meroe ở phía bắc Sudan vào ngày 26/2. Ảnh: <em>AFP</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Vào năm 2007, NASA phóng thiết bị thăm dò nước mang  tên Marsis để thăm dò nước bên dưới bề mặt hành tinh đỏ. <em>Telegraph</em> cho biết, thiết bị gồm một máy thu nhận âm thanh, một ăng ten phát sóng  dài 40 m gắn trên một tàu thăm dò trên quỹ đạo sao Hỏa. Ăng ten có thể  phát ra sóng radio xuống độ sâu tới 3,7 km bên dưới bề mặt hành tinh đỏ.</p>\r\n<p class=\"Normal\">Dữ liệu mà Marisi gửi về cho thấy có một lượng nước  đóng băng lớn bên dưới sa mạc bao phủ bề mặt sao Hỏa.</p>\r\n<p class=\"Normal\">Tiến sĩ Essam Heggy, một nhà nghiên cứu trái đất thuộc  NASA, cho rằng công nghệ tìm nước trên sao Hỏa có thể được áp dụng trên  các sa mạc rộng lớn ở Trung Đông và Bắc Phi. Heggy đưa ra ý kiến trong  một hội nghị về nước do Liên Hợp Quốc tổ chức đang diễn ra tại thành phố  Alexandria, Ai Cập.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/52/Marsis.jpg\" border=\"0\" alt=\"Hình minh họa thiết bị Marsis với ăng ten dài 40 m bay  trên quỹ đạo sao Hỏa. Ảnh: nasa.gov.\" width=\"450\" height=\"377\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Hình minh họa thiết bị Marsis với ăng ten dài 40 m bay  trên quỹ đạo sao Hỏa. Ảnh: <em>nasa.gov</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">“Chẳng thứ gì có thể thay thế nước. Nhưng trong nhiều  năm qua con người vẫn chưa cố gắng tìm ra nó. Nước là một tài nguyên,  giống như mọi tài nguyên khác, và chúng ta từng chứng kiến nhiều cuộc  xung đột vì tài nguyên”, <em>Telegraph</em> dẫn lời Heggy.</p>\r\n<p class=\"Normal\">Tiến sĩ này khẳng định tình trạng khan hiếm nước có  thể gây nên nhiều cuộc xung đột tại Bắc Phi và Trung Đông trong tương  lai. Nhưng nếu sử dụng những thiết bị như Marsis, các quốc gia có thể  tìm thấy những nguồn nước nằm ở độ sâu hàng nghìn mét dưới các sa mạc.  Nhiều nghiên cứu của NASA cho thấy nhiều thung lũng và hồ nước nằm bên  dưới một vùng sa mạc tại Darfur, Sudan.</p>\r\n<p class=\"Normal\">Giới khoa học lo ngại hiện tượng ấm lên sẽ gây nên  nhiều thiệt hại cho địa cầu trong thế kỷ tới, trong đó thiếu nước chỉ là  một hiểm họa. Chẳng hạn, trong lúc loài người ngày càng cần thêm đất  đai thì tình trạng sa mạc hóa đang biến hàng triệu thửa ruộng màu mỡ  thành những mảnh đất chết. Theo <em>AFP</em>, một báo cáo của  Chương trình Phát triển Liên Hợp Quốc cho thấy 2,87 triệu km2 đất có  nguy cơ biến thành sa mạc. Một nghiên cứu khác của Liên Hợp Quốc vào năm  2007 chỉ ra rằng khoảng 50 triệu người sẽ phải rời khỏi nơi sinh sống  vì sa mạc hóa.</p>', '-2', '5', '0', '21', '2010-04-06 07:42:33', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 07:42:33', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '0', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('29', 'Trái đất nhìn từ vũ trụ', 'trai-t-nhin-t-v-tr', '', '<p class=\"Lead\">Soichi Noguchi và Jose Hernandez, hai nhà du hành trên  Trạm không gian quốc tế, chụp nhiều ảnh về trái đất. \r\n', '\r\n</p>\r\n<p class=\"Normal\">Những bức ảnh của Soichi Noguchi (Nhật Bản) và Jose  Hernandez đã được đăng trên trang <em>Telegraph</em>.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/1.jpg\" border=\"0\" alt=\"Quần đảo Maldives trên Ấn Độ Dương.\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Quần đảo Maldives trên Ấn Độ Dương. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/2.jpg\" border=\"0\" alt=\"Trung tâm vũ trụ\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Trung tâm vũ trụ Kennedy, bang Florida, Mỹ. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/3.jpg\" border=\"0\" alt=\"Cầu Golden Gate nổi tiếng tại thành phố San Francisco,  Mỹ.\" width=\"460\" height=\"307\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Cầu Golden Gate nổi tiếng tại thành phố San Francisco,  Mỹ. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/4.jpg\" border=\"0\" alt=\"Thành phố\" width=\"460\" height=\"304\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Thành phố Port-Au-Prince tại Haiti vào cuối tháng 1.  Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/5.jpg\" border=\"0\" alt=\"Núi Phú Sĩ tại Nhật Bản.\" width=\"460\" height=\"302\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Núi Phú Sĩ tại Nhật Bản. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/6.jpg\" border=\"0\" alt=\"Núi\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Kilimanjaro - ngọn núi cao nhất châu Phi - ở đông bắc  Tanzania. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/7.jpg\" border=\"0\" alt=\"Mây dạ quang phía trên Đại Tây Dương.\" width=\"380\" height=\"445\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Mây dạ quang phía trên Đại Tây Dương. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/8.jpg\" border=\"0\" alt=\"Thủ đô Rome của Italy.\" width=\"460\" height=\"306\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Thủ đô Rome của Italy. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/9.jpg\" border=\"0\" alt=\"Mặt trăng nhìn từ Trạm Không gian quốc tế.\" width=\"460\" height=\"333\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Mặt trăng nhìn từ Trạm Không gian quốc tế. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/10.jpg\" border=\"0\" alt=\"Các nhà du hành trên Trạm Không gian quốc tế.\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Các nhà du hành trên Trạm Không gian quốc tế. Ảnh: <em>Jose  Hernandez</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/11.jpg\" border=\"0\" width=\"460\" height=\"367\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Trạm Không gian quốc tế và trái đất ở phía sau. Ảnh: <em>Jose  Hernandez</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/12.jpg\" border=\"0\" alt=\"Mặt trăng và một phần trái đất. Ảnh: Soichi Noguchi.\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Mặt trăng và một phần trái đất. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '-2', '5', '0', '22', '2010-04-06 07:44:48', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 07:44:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '0', '', '', '0', '7', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('30', '4 phút uy hiếp của tên cướp ngân hàng', '4-phut-uy-hip-ca-ten-cp-ngan-hang', '', '<p class=\"Lead\">\"Người đàn ông khoảng 1m7, áo đen, đội mũ sùm sụp và bịt  mặt xuất hiện, cầm súng chĩa về phía quầy giao dịch. Hắn lớn tiếng: Đưa  đây ít tiền\", nữ nhân viên Ngân hàng thương mại cổ phần (TMCP) Hàng hải  kể lại vụ cướp trưa 5/4.\r\n', '\r\n<br /><a class=\"Lead\" href=\"http://vnexpress.net/GL/Phap-luat/2010/04/3BA1A778/\"><br /></a></p>\r\n<p class=\"Normal\">Chiều 5/4, 6 tiếng sau khi xảy ra vụ cướp tại chi  nhánh Ngân hàng TMCP Hàng hải ở tầng một trung tâm thương mại trên đường  La Thành, Hà Nội, chị Hà Thủy (kiểm soát viên, một trong ba nữ nhân  viên đối mặt với tên cướp) đã kể lại sự việc với <em>VnExpress.net.</em></p>\r\n<p class=\"Normal\">Theo chị Thủy, sáng 5/4 một khách hàng gọi điện đến  chi nhánh yêu cầu rút 3 tỷ đồng gửi từ trước. Ngay sau đó, tiền được  chuyển về địa điểm giao dịch này để buổi chiều chi trả.</p>\r\n<p class=\"Normal\">\"Khoảng 12h, khi ôtô chở tiền vừa rời đi được ít phút,  một thanh niên cao khoảng 1m7, áo đen, đội mũ sùm sụp và che mặt kín  mít bất ngờ xuất hiện, cầm súng chĩa vào phía quầy giao dịch.\", chị Thủy  cho hay.</p>\r\n<p class=\"Normal\">\"Hắn gằn giọng: \'Đưa đây ít tiền\'. Chúng tôi cố gắng  kéo dài thời gian để trì hoãn nhưng tên này luôn chĩa súng, uy hiếp bắt  bỏ tiền vào chiếc cặp mở sẵn\", chị Thủy kể giọng chưa hết bàng hoàng.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/BB/1.jpg\" border=\"1\" alt=\"Chị Thủy và Cẩm Vân (giao dịch viên) vẫn đang miệt mài làm  việc sau khi vụ cướp xảy ra. Ảnh: Anh Thư\" width=\"400\" height=\"300\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Các nhân viên chi nhánh Ngân hàng TMCP Hàng hải vẫn  miệt mài làm việc sau khi vụ cướp xảy ra. Ảnh chụp chiều 5/4: <em>Anh  Thư.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Lúc này giờ nghỉ trưa nên ngân hàng vắng người. Chị  định với tay đến chiếc điện thoại bàn, tên cướp rút con dao bầu giấu sẵn  trong người đe dọa \"giết\" nếu gọi cảnh sát.</p>\r\n<p class=\"Normal\">Hắn lăm lăm khua con dao trước mặt khiến 3 nữ nhân  viên hoảng sợ không dám bấm nút chuông báo động.</p>\r\n<p class=\"Normal\">\"Theo yêu cầu của tên cướp, tôi nhét từng thếp tiền  mệnh giá 50.000 đồng vào cặp, đồng thời cố gắng nhìn để nhận dạng nhưng  không được vì hắn đã che kín mặt, chỉ nhìn thấy đôi mắt sắc lạnh\", nữ  nhân viên này cho hay.</p>\r\n<p class=\"Normal\">Sự việc diễn ra chỉ trong vòng 4 phút. Tên cướp chạy  ra cửa. Trước khi đi ra, hắn còn dùng áo lau vết tay trên cửa kính.</p>\r\n<p class=\"Normal\">Khi đó, chị Thủy cùng 2 nữ đồng nghiệp mới định thần  lại, hô hoán \"cướp, cướp\". Do kính dán đề can mờ, nên các nhân viên  không biết tên cướp tẩu thoát một mình hay có đồng bọn bên ngoài chờ  sẵn. Hiện cũng chưa có nguồn tin nào xác nhận, khẩu súng tên cướp sử  dụng là thật hay giả.</p>\r\n<p class=\"Normal\">Theo Ngân hàng Hàng hải, số tiền bị cướp hơn 90 triệu  đồng, chủ yếu là lượng tiền nhỏ lẻ đang được kiểm đếm tại quầy. “Rất may  túi tiền 2 tỷ đồng vừa chuyển về chúng tôi chưa kịp kiểm tra đang để  phía dưới chân, tên cướp không phát hiện được”, chị Thủy cho hay.</p>\r\n<p class=\"Normal\">Trao đổi với <em>VnExpress.net</em>, ông Nguyễn Hoàng  An (Giám đốc chi nhánh Hà Nội, Ngân hàng Hàng hải) nhận định, có lẽ tên  cướp đã theo dõi và rình rập từ trước nên lợi dụng lúc mọi người chuẩn  bị nghỉ trưa mới ra tay.</p>\r\n<p class=\"Normal\">\"Chúng tôi đã chuyển toàn bộ băng ghi hình từ một  camera gắn ở phía ngoài và 3 camera bên trong cho cảnh sát. Hy vọng  những thông tin nhận dạng từ nhân chứng và các dữ liệu từ camera sẽ giúp  cảnh sát sớm tìm được thủ phạm\", vị giám đốc nói.</p>\r\n<p class=\"Normal\">Sáng nay, thông tin về hung thủ vẫn đang được cảnh sát  khẩn trương xác minh. Vụ việc được chuyển Cơ quan cảnh sát điều tra  Công an Hà Nội thụ lý theo thẩm quyền.</p>\r\n<p class=\"Normal\">Chi nhánh Ngân hàng TMCP Hàng hải nằm dưới tầng 1 của  Trung tâm thương mại ngay ngã tư Ô Chợ dừa, một khu vực đông đúc thường  xảy ra ùn tắc giao thông. Nơi xảy ra vụ cướp cách trụ sở công an phường  khoảng 10 mét.</p>', '0', '4', '0', '16', '2010-04-06 08:56:48', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 08:56:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('31', 'BOGANIC', 'nga-ra-mt-tau-chien-tang-hinh', '', '<p>\r\n', '\r\n</p>\r\n<p><img src=\"http://www.traphaco.com.vn/san-pham/atproductlist/atproductlist.2007-09-19.5558750653/atproduct.2007-09-26.6547743926/Photo_preview\" border=\"0\" width=\"300\" height=\"175\" /></p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>\r\n<p>Trình bày:</p>\r\n<br /> </strong></span></span><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> Viên bao đường: - Hộp 2 vỉ x 20 viên - Hộp 5 vỉ x 20 viên Viên bao film: - Hộp 2 vỉ x 20 viên - Hộp 5 vỉ x 20 viên Viên nang mềm: - Hộp 5 vỉ x 10 viên. </span></span></p>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_components_label\" > </p>\r\n-->\r\n<p>Thành phần:</p>\r\n</strong></span></span>\r\n<p>Cao Actiso</p>\r\n<p>Cao biển súc</p>\r\n<p>Bột bìm bìm biếc</p>\r\n<p>Tá dược...vđ... 1 viên</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_indications_label\" > </p>\r\n-->\r\n<p>Chỉ định:</p>\r\n</strong></span></span>\r\n<p>- Dùng cho những người thiểu năng gan, viêm gan gây  mệt mỏi, khó tiêu, vàng da, mụn nhọt, lở ngứa, bí đại tiểu tiện, táo  bón. <br />- Giải độc, chống dị ứng. Đặc biệt suy giảm chức năng gan do  dùng nhiều bia rượu. - Xơ vữa động mạch, mỡ trong máu cao.</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_dosage_label\" > </p>\r\n-->\r\n<p>Liều dùng-cách dùng:</p>\r\n</strong></span></span>\r\n<p><em>*</em><strong> <em>Viên bao đường, bao phim:</em></strong></p>\r\n<p>- Người lớn: mỗi lần 2-4 viên, ngày 3 lần.<br />- Trẻ  em: mỗi lần 1-2 viên, ngày 3 lần.</p>\r\n<p><em><strong>* Viên nang mềm:</strong></em></p>\r\n<p>- Người lớn: mỗi lần 1 – 2 viên, ngày 3 lần.</p>\r\n<p>- Trẻ em trên 8 tuổi: mỗi lần 1 viên, ngày 3 lần.</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_contraindications_label\" > </p>\r\n-->\r\n<p>Chống chỉ định:</p>\r\n</strong></span></span>\r\n<p>Mẫn cảm với bất cứ thành phần nào của thuốc.</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_selflife_label\" > </p>\r\n-->\r\n<p>Hạn sử dụng:</p>\r\n</strong></span></span><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> 24 tháng </span></span></div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_specification_label\" > </p>\r\n-->\r\n<p>Chứng nhận:</p>\r\n</strong></span></span><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> TCCS</span></span></div>', '-2', '4', '0', '15', '2010-04-06 09:03:03', '62', '', '2010-04-22 02:01:22', '62', '0', '0000-00-00 00:00:00', '2010-04-06 09:03:03', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '0', '', '', '0', '9', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('32', 'Thuốc ho Bảo Thanh', 'goa-ph-en-la-ai', '', '', '\r\n<p><img src=\"http://www.hoalinhpharma.com.vn/Image.aspx/image=pjpeg/3766a224361eb2251781001219094ef2-Bao-Thanh-dang-trong-bai-vi.jpg/Bao-Thanh-dang-trong-bai-vi.jpg\" border=\"0\" width=\"215\" height=\"228\" /></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span style=\"color: #008000;\"><strong>Thông  tin sản phẩm:</strong></span></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong>Thành  phần: </strong></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">Ô mai 12,5g; Mật ong 25g; Xuyên bối  mẫu 10g; Tỳ bà diệp 12,5g; Sa sâm 2,5g; Phục linh 2,5g; Trần bì 2,5g;  Cát cánh 10g; Bán hạ 2,5g; Ngũ vị tử 1,25g; Qua lâu nhân 5,0g; Khoản  đông hoa 2,5g; Viễn chí 2,5g; Khổ hạnh nhân 5,0g; Gừng 2,5g; Cam thảo  2,5g; Tinh dầu bạc hà 2,5mg và Các tá d­ược.</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span style=\"color: #008000;\"><strong>Quy  cách đóng gói và dạng bào chế: </strong></span></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- Hộp 1 chai Siro 125ml.</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Noi-dung/Thuoc-ho-Bao-Thanh-dang-Vien-ngam/Vien_ngam_Thuoc_ho_Bao_Thanh/\">Hộp  24 viên ngậm </a>(Dạng kẹo ngậm Lozenge vị ngọt thơm, dễ dùng,  chứa hàm lượng tối đa cao dược liệu trong một viên)</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><span style=\"color: #008000;\">Đặc  điểm thành phần, tác dụng:</span></strong></span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">\r\n<p align=\"justify\">Thuốc ho Bảo Thanh phối hợp 2 vị thuốc dân gian quen  thuộc <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Thuoc-ho-Bao-Thanh/Thong-tin-lien-quan-Thuoc-ho-Bao-Thanh/O_mai-Mon_an_ngon_vi_thuoc_quy/\">Ô  mai</a> - <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Thuoc-ho-Bao-Thanh/Thong-tin-lien-quan-Thuoc-ho-Bao-Thanh/Mat_ong_voi_suc_khoe_va_doi_song/\">Mật  ong </a>và bài thuốc Đông y trị ho nổi tiếng của Trung Quốc <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Dong-y-va-kinh-nghiem-DG/Dong-y-va-kinh-nghiem-dan-gian/Xuyen_boi_ty_ba_cao-Tu_huyen_thoai_den_hien_thuc/\">\"Xuyên  bối tỳ bà cao\".</a></p>\r\n<p align=\"justify\"><span style=\"color: #008000;\"><strong>Ô mai: </strong></span></p>\r\n<p align=\"justify\">Ô mai không chỉ là món ăn quen thuộc, được  nhiều người Việt Nam ưa chuộng mà còn là vị thuốc dân gian giúp trừ ho,  tiêu đờm công hiệu, đặc biệt trong các trường hợp ho mãn tính, ho dai  dẳng lâu ngày.</p>\r\n<p align=\"justify\">Ghi nhận công dụng của Ô mai trong điều trị các chứng  ho, Hải Thượng Lãn Ông có phân tích: Tạng phế sắc trắng, là bẩm thụ khí  của hành Kim, nó như cái tán, cái lọng che chở cho các tạng khác, không  thể chịu được bất kì một vật gì làm chướng ngại. Tỳ là gốc sinh đờm,  Phế là đồ chứa đờm. Nếu đờm ở Phế nhiều thì khí nghịch lên mà gây thành  ho. Phế là chỗ then chốt, cửa ngõ của toàn thân, không chỗ nào quan  trọng hơn chỗ đó. Do vậy, bệnh phế khí nghịch, nhiều đờm không thể không  tìm cách trị gấp. Hải Thượng Lãn Ông viết: Ô mai có vị chua tính liễm,  có thể thăng, có thể giáng, giúp thuận khí chỉ ho, tiêu đờm. Điều đó  khẳng định vai trò cốt yếu của Ô mai trong các bài thuốc trị ho, đặc  biệt các chứng ho dai dẳng, lâu ngày không khỏi.</p>\r\n<p align=\"justify\"><strong><span style=\"color: #008000;\">Mật ong:</span></strong></p>\r\n<p align=\"justify\">Theo dân gian, mật ong là một món ăn ngon, có tác  dụng bồi bổ cơ thể đồng thời giúp giảm ho. Mỗi sáng uống một ly nước pha  mật ong giúp cơ thể khỏe mạnh, trẻ lâu, phòng ngừa được nhiều bệnh tật.  Khi bị ho kéo dài khiến cơ thể mệt mỏi, suy nhược, dùng mật ong sẽ giúp  phục hồi sinh lực, bệnh mau khỏi hơn.</p>\r\n<p align=\"justify\">Từ hàng thế kỉ nay, mật ong vẫn là phương thuốc cổ  truyền dùng trị ho và cảm lạnh. Công dụng này ngày càng được khoa học  chứng minh và củng cố. Tiến sĩ Ian Paul, trưởng nhóm nghiên cứu trường  đại học Dược bang Pennsylvania, Hershey (Mỹ), khi so sánh hiệu quả giảm  ho của mật ong với Dextromethorphan (DM), một hoạt chất giảm ho được sử  dụng phổ biến, đã kết luận: “Kết quả rõ rệt đến nỗi chúng tôi có thể  khẳng định rằng mật ong tốt hơn hẳn các loại thuốc mua ở quầy”. Nghiêu  cứu cũng được tiến hành trên trẻ nhỏ và cho kết quả tương tự: 105 trẻ từ  2 đến 18 tuổi, chia 2 nhóm: nhóm uống mật ong 30 phút trước khi đi ngủ  và nhóm sử dụng DM có hương vị mật ong cũng 30 phút trước khi đi ngủ.  Kết quả là những trẻ uống mật ong giảm được các cơn ho và co thắt hơn  hẳn những trẻ sử dụng DM. Tiến sĩ Paul nói: “Sử dụng mật ong là một liệu  pháp an toàn, hiệu quả mà các bậc cha mẹ nên sử dụng cho trẻ trên 1  tuổi khi chúng bị ho hay cảm cúm”.</p>\r\n<p align=\"justify\">Mật ong còn có tác dụng kháng khuẩn tự nhiên và làm  dịu niêm mạc hầu họng (do thành phần chứa acid Panthotenic và Albumin  giúp phục hồi và tái tạo niêm mạc bị tổn thương: viêm, đau rát do ho kéo  dài…). Vai trò của mật ong ngày càng được khẳng định trong hệ thống y  học chính thống “Tổ chức y tế thế giới đã xem mật ong như một phương  thuốc trị bệnh tiềm năng”.</p>\r\n<p align=\"justify\"><strong><span style=\"color: #008000;\">Bài thuốc \"Xuyên bối tỳ  bà cao\":</span></strong></p>\r\n<p align=\"justify\">Là bài thuốc Đông y trị ho nổi tiếng của Trung Quốc,  được đưa vào Dược điển Trung Quốc, trở thành bài thuốc chính thống được  sử dụng rộng rãi.</p>\r\n<p align=\"justify\">\"Xuyên bối tỳ bà cao\" phối hợp các vị dược liệu theo  bố cục chặt chẽ của một bài thuốc Đông y gồm Quân - Thần - Tá - Sứ, có  tác dụng bổ trợ lẫn nhau, tăng cường công năng: Bổ phế - Trừ ho - Tiêu  đờm.</p>\r\n</span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Bào chế  và quản lý chất lượng: </span></strong></p>\r\n</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\">Quá trình nghiên cứu bào chế  thuốc ho cao cấp Bảo Thanh được thực hiện dưới sự tham vấn của các Lương  y, Bác sĩ y học cổ truyền, Dược sĩ chuyên ngành bào chế. Công tác đảm  bảo chất lượng được thực hiện xuyên suốt từ khâu tuyển chọn nguyên liệu,  qui trình bào chế tới việc bảo quản và phân phối thành phẩm.Nguyên liệu  làm thuốc được tuyển chọn kỹ, đảm bảo nguyên liệu sạch, an toàn, không  có thuốc bảo vệ thực vật và hóa chất bảo quản. Qui trình sản xuất được  giám sát chặt chẽ. Thuốc ho Bảo Thanh được đựng trong chai thủy tinh  dày, kín, tối màu, đảm bảo chất lượng trong toàn khâu lưu kho và phân  phối.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Công  năng</span></strong>:</p>\r\n<p dir=\"ltr\" align=\"justify\">Bổ phế (Chữa tận gốc theo quan điểm  Đông y)</p>\r\n<p dir=\"ltr\" align=\"justify\">Trừ ho, tiêu đờm (Chữa triệu chứng -  Chữa phần ngọn theo quan điểm Đông y)</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Chủ trị: </span></strong></p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho mãn tính, ho dai dẳng lâu ngày  không khỏi</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho do dị ứng thời tiết</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho do cảm lạnh, cảm cúm</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho gió, ho khan, ho có đờm</p>\r\n<p dir=\"ltr\" align=\"justify\">- Hỗ trợ điều trị viêm họng, viêm phế  quản</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Liều  dùng, cách dùng: </span></strong></p>\r\n<p dir=\"ltr\" align=\"justify\">- Trẻ em dư­ới 3 tuổi: ngày uống 3  lần, mỗi lần 5 ml.<br />- Trẻ em trên 3 tuổi: ngày uống 3 lần, mỗi  lần 10 ml.<br />- Ngư­ời lớn: ngày uống 3 lần, mỗi lần 15 ml</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Tác  dụng không mong muốn</span></strong>: Chưa nhận thấy tác  dụng không mong muốn nào của thuốc</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Hạn dùng:</span></strong> 24 tháng kể từ ngày sản  xuất. Không dùng nếu thấy thuốc có hiện tượng mốc, hỏng hoặc có dấu  hiệu khác lạ; đồng thời báo ngay cho nhà sản xuất biết.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Bảo  quản</span></strong>: Nơi khô mát, tránh ánh sáng.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Tiêu  chuẩn</span></strong>: TCCS.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Lưu  hành số</span></strong>: V184 – H12 – 10.</p>\r\n<p dir=\"ltr\" align=\"justify\">Đọc kĩ hướng dẫn sử dụng trước khi dùng.</p>\r\n<p dir=\"ltr\" align=\"justify\">Sản phẩm được phân phối tại các nhà thuốc  trên toàn quốc.</p>', '-2', '4', '0', '15', '2010-04-06 09:03:57', '62', '', '2010-04-22 01:54:07', '62', '0', '0000-00-00 00:00:00', '2010-04-06 09:03:57', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=thuốc nước\nt_ndt=hô hấp\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('33', 'Gian hàng thuốc Đông dược', 'gian-hang-test', '', '<p>Thuốc cảm lạnh An Nhân</p>\r\n<p>\r\n', '\r\n<img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/5306274ac95f4eeea9a3e6724f02f042-an-nhan.gif/an-nhan.gif\" border=\"0\" width=\"300\" height=\"375\" /></p>', '-2', '7', '0', '285', '2010-04-12 09:01:00', '62', '', '2010-04-21 14:32:27', '62', '0', '0000-00-00 00:00:00', '2010-04-12 09:01:00', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '0', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('34', 'Phụ Bì Khang', 'ph-bi-khang', '', '<p>\r\n', '\r\n</p>\r\n<p>Hỗ trợ điều trị mề đay cấp và mạn tính   <br /> <br />Đối tượng sử dụng: dùng cho người bị mề đay, bị mẩn đỏ thành từng  đám trên da, ngứa ngáy khó chịu.</p>\r\n<p> </p>\r\n<p><img src=\"http://thuocbietduoc.com.vn/images/drugs/PHU-BI-KHANG.jpg\" border=\"0\" width=\"400\" height=\"293\" /><br />- Cơ chế tác dụng:  <br /> <br />Mề đay là tình trạng da nổi lên từng đám nhiều hoặc ít, không đều,  màu hồng hoặc xanh trắng, các mụn thường tự biến mất và di chuyển,  thường rất ngứa. Mề đay là một trong những bệnh ngoài da phổ biến tiến  triển theo 2 thể bệnh khác nhau: Thể cấp tính và mãn tính. Theo Y học  hiện đại, Mề đay xảy ra do những yếu tố dị nguyên (chất gây dị ứng: như  thời tiết, thức ăn, lông động vật, phấn hoa, côn trùng...) tác động vào  cơ thể. Việc điều trị phải loại bỏ nguyên nhân (dị nguyên) đồng thời  điều trị triệu chứng (giảm mẩn ngứa, viêm). Bên cạnh đó phải tăng cường  chức năng gan (giải độc) và chức năng thận (tăng đào thải các chất độc  hại ra khỏi cơ thể) và tăng cường năng lượng tế bào giúp bảo vệ tế bào .   <br /> <br />PHỤ BÌ KHANG là sự phối hợp toàn diện các thành phần giúp điều trị  triệu chứng giảm viêm, ngứa (cao nhàu); các thành phần giúp tăng cường  chức năng giải độc của cơ thể (cao gan); các thành phần giúp tăng cường  chức năng thận (cao nhàu) và tăng cường năng lượng tế bào, giúp bảo vệ  tế bào ( L- carnitin fumarat ) . Nhờ vậy PHỤ BÌ KHANG giúp hỗ trợ phòng  và điều trị hiệu quả các trường hợp mề đay cả cấp tính và mãn tính.  <br /> <br />Cao nhàu : có tác dụng thanh nhiệt, giải độc, bồi bổ sức khỏe, tăng  cường khả năng miễn dịch, phục hồi các tế bào bị thương tổn suy yếu,  chống viêm nhiễm, làm mụn nhọt mau lành, chóng lên da non, chống sung  huyết, giảm đau nhức mệt mỏi cơ thể. (Cây thuốc và động vật làm thuốc  Việt Nam- tập 2- trang 445)  <br /> <br />Cao gan : Được chiết xuất từ gan động vật, cao gan chứa nhiều chất  dinh dưỡng như sắt, protein, các<a href=\"http://thuocbietduoc.com.vn/home/search.aspx?desc=suc-khoe&amp;key=%20vitamin&amp;opt=1\" title=\"Các bài  liên quan tới  vitamin\"> vitamin</a>. Cao gan có tác dụng bổ máu, giúp tăng cường chức năng gan,  tăng khả năng giải độc của cơ thể.  <br /> <br />L-carnitine fumarate : L- carnitine là 1 acid amin có trong cơ thể  con người. Nó đóng vai trò then chốt trong việc vận chuyển các acid béo  vào ty thể- nơi sản xuất năng lượng cho tế bào. Sự thiếu hụt L-  carnitine có thể sẽ dẫn đến các biểu hiện thiếu năng lượng hay tình  trạng mệt mỏi, nhược cơ. L-Carnitine đóng vai trò vô cùng quan trọng  giúp cơ thể tự cân bằng năng lượng và tăng khả năng miễn dịch. Fumarate  là 1 muối/ester tự nhiên được tạo ra từ acid fumaric có trong cơ thể  người. Fumarate đóng 1 vai trò quan trọng trong chu trình Krebs- là chìa  khoá của chu trình sản xuất năng lượng tế bào. Fumarate hỗ trợ một cách  tích cực đối với tác dụng chuyển hoá năng lượng của L- carnitine.</p>\r\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div>Liều lượng:</div>\r\n</td>\r\n<td align=\"right\"><img src=\"http://thuocbietduoc.com.vn/interface/BtMinus.gif\" border=\"0\" style=\"cursor: pointer;\" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div id=\"DossuuuPlus\" style=\"display: block;\">Ngày uống 4-6viên, chia 2 lần, trước bữa ăn 30  phút. <br /> <br />Nên dùng một đợt liên tục từ 2 đến 3 tháng để có kết quả tốt nhất.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div>Bảo quản:</div>\r\n</td>\r\n<td align=\"right\"><img src=\"http://thuocbietduoc.com.vn/interface/BtMinus.gif\" border=\"0\" style=\"cursor: pointer;\" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div id=\"Dossuuu11Plus\" style=\"display: block;\">Để nơi khô mát, tránh ánh sáng. Đậy nắp hộp sau  khi sử dụng.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '-2', '4', '0', '15', '2010-04-16 08:10:34', '62', '', '2010-05-03 16:54:54', '62', '0', '0000-00-00 00:00:00', '2010-04-16 08:10:34', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=viên nang cứng,viên nang mềm\nt_ndt= kháng viêm giải độc\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '0', '', '', '0', '8', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('35', 'Bạc hà chữa cảm mạo', 'bc-ha-cha-cm-mo', '', '<p>Bạc hà hay còn gọi là bạc hà nam, tên khoa học là Mentha arvensis L, thuộc họ hoa môi (Labiatae).</p>\r\n<p><span id=\"lblMain\"> \r\n', '\r\nBộ phận sử dụng để chế biến là toàn cây bỏ rễ. Chặt ngắn khoảng 3cm hoặc dùng lá được thu hái khi cây sắp ra hoa để phơi khô trong râm mát (âm can), cũng có thể sử dụng tươi.</span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\"> </span></span></p>\r\n<div style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/bacha.jpg\" border=\"0\" /></div>\r\n<div style=\"text-align: center;\"><em>Bạc hà</em></div>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">Đông y cho rằng: bạc hà có vị cay, tính mát, không độc, chữa trị cảm mạo, tán phong nhiệt, chữa sốt, nhức đầu, hắt hơi sổ mũi, ngạt mũi, không ra mồ hôi, chữa nôn mửa không tiêu. Có tác dụng kích thích tiêu hóa, chữa kém ăn, không ra mồ hôi.<br /><br />Liều sử dụng trung bình từ 10 - 12g dưới dạng thuốc sắc hay giã tươi vắt lấy nước cốt uống. Lưu ý không sử dụng trong trường hợp ra nhiều mồ hôi hay trẻ sơ sinh. Khi sắc, chú ý không lâu quá 15 phút để bảo tồn được tinh dầu bạc hà không bị bay hơi làm giảm thiểu lượng tinh dầu cần thiết.<br /><br />Ngoài ra, người ta còn điều chế tinh dầu bạc hà dùng trị nhiều bệnh chứng. Hoặc trong tân dược đã điều chế tinh dầu bạc hà dưới dạng tinh thể menthol để nạp vào các lọ nhựa làm ống hít xông họng mũi. Hoặc còn cho tinh thể menthol vào các nguyên liệu để làm thành bánh kẹo bạc hà...<br /><br /><strong>Những phương thuốc chữa trị bệnh từ cây bạc hà</strong><br /><br />Chữa các chứng cảm sốt: Khi thấy cảm sốt nóng không gai rét, nhức đầu, mặt đau sưng, nôn ọe hoặc là trẻ sốt nóng hay lên sởi lúc bắt đầu mọc. Dùng bạc hà 10 - 15g, sắn dây 10 - 15g. Đổ chừng 1/3 lít nước vào siêu, đậy nắp bịt kín vòi đun sôi một dạo thì bắc xuống để xông và rót 1 chén uống. Sau đó lại sắc và uống thêm từ 1 - 2 nước nữa. Nếu lúc này thấy xuất hiện mồ hôi thì thôi không xông nữa và uống thuốc nguội.<br /><br />Hoặc lấy lá bạc hà tươi hay khô có lượng bằng nhau. Mỗi thang thuốc lấy 8 -15g, sắc lấy nước thuốc uống.<br /><br />Chữa dị ứng: Dùng lá bạc hà tươi giã nát xát vào nơi ngứa.<br /><br />Giải cảm, sốt nóng không có mồ hôi: Dùng tinh dầu bạc hà, mỗi lần uống từ 8 - 15 giọt chiêu với nước nóng.<br />Chữa nôn mửa, không tiêu: Dùng tinh dầu bạc hà, mỗi lần uống 4 - 8 giọt, chiêu với nước nguội. Chú ý: khi uống tinh dầu bạc hà cần rót tinh dầu vào chén, hay thìa nước rồi chiêu vào họng, sau đó lại uống nước tráng miệng.<br /><br /><em><strong>Theo SK&amp;ĐS</strong></em><br /><br /></p>', '1', '1', '0', '1', '2010-04-15 15:02:32', '62', '', '2010-05-15 05:54:17', '62', '0', '0000-00-00 00:00:00', '2010-04-15 15:02:32', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '9', '0', '13', 'Mentha arvensis, Bạc hà, Labiatae, cảm mạo', 'Bạc hà chữa cảm mạo', '0', '8', 'robots=Mentha arvensis, Bạc hà, Labiatae, cảm mạo\nauthor=');
INSERT INTO `jos_content` VALUES ('162', '“Săn lùng” lá sa-kê chữa bệnh', 'sn-lung-la-sa-ke-cha-bnh', '', '<p style=\"text-align: justify;\">Lá sa-kê đang được truyền tai nhau là có tác dụng chữa được nhiều bệnh, cả những bệnh khó, đặc biệt là bệnhgút khiến nhiều người đi lùng tìm sử dụng cho bằng được.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/sanlung-la-sake-chua-benh.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br /><strong>Tìm lá sa-kê chữa bệnh</strong><br />Có người nhà bị bệnh gút, anh N.TH, biên tập viên một tờ báo có trụ sở tại Hà Nội nghe bạn bè mách cho bài thuốc chữa bệnh từ lá cây sa-kê. Nhưng do tại Hà Nội và các tỉnh phía Bắc không trồng được loại cây này nên anh đã điện thoại nhờ một đồng nghiệp tại TP.HCM tìm giúp. Phải mất đến một tuần, anh bạn đồng nghiệp đi nhặt lá vàng rơi và kể cả hái những lá vàng còn ở trên cây tại các con đường thuộc quận Bình Thạnh, quận 3... mới kiếm được khoảng hơn 1kg lá khô và gửi người quen mang ra Bắc theo đường hàng không.<br />Không đến nỗi công phu, vất vả như trường hợp trên, chị L.P ở Vũng Tàu có mẹ bị bệnh gút và con trai hay tiểu són nên cũng nghe hàng xóm mách nước các bài thuốc chữa bệnh từ lá sa- kê. May quá, hàng xóm bên cạnh nhà chị lại trồng mấy cây rất to trước cổng và thường rụng lá nhiều sau mỗi đêm. Sáng dậy, chị chỉ việc ra nhặt và rửa sạch rồi chế biến các bài thuốc. Là dân công nghệ thông tin nên chị cũng chủ động tra cứu hàng trăm thông tin trên mạng internet nói về lá sa-kê để tham khảo. Và rồi chị “tá hỏa” khi biết có một loại là cây mít nài giống cây sa-kê như hai “giọt nước” nhưng không có tác dụng chữa bệnh. Và hiện loại cây này được bán giống và trồng rất nhiều do người mua không phân biệt được thật giả.<br /><br />Mò tìm cách phân biệt, chị càng hoang mang khi thấy cách nhận biết hai loại cây này quá khó. Đem so sánh lá của những cây chị hay nhặt thì “cái to cái nhỏ, đầu lá nhọn nhiều hay nhọn ít cũng không khác là mấy”. Cách tốt nhất để phân biệt là trái cây (trái sa-kê to cỡ cái tô, có hình quả trứng, được bao bọc bởi lớp vỏ màu xanh có nhiều gai non như trái mít nhưng gọt bỏ lớp vỏ này, sa-kê cho một lớp cơm dày và không có hạt). “Mà đợi ra trái, hái xuống, bổ ra để xem thì đợi đến bao giờ?”, chị nói. Thấy “phiêu” quá, chị L.P ngừng ngay việc “tự làm thầy thuốc” và đành đưa mẹ và con vào bệnh viện chữa trị.<br />Hiện nay, theo thông tin truyền tai nhau, nhiều người dân tại TP.HCM cũng rộ lên phong trào tìm mua giống cây sa-kê về trồng trước nhà với mục đích vừa lấy bóng mát, vừa lấy lá chữa bệnh. Các vựa cây cảnh ở quận 12, Hóc Môn, Thủ Đức... bày bán nhiều loại cây này (nhân giống từ miền Tây) với giá không quá cao, chỉ từ 25 – 100 ngàn đồng tùy kích cỡ. Cao hơn 1m và đường kính trên 15cm thì tính bằng tiền triệu...<br /><br /><strong>Tác dụng của sa-kê thế nào?</strong><br /><br />Theo các tài liệu khoa học, sa-kê còn có tên gọi là “cây bánh mì”, tên khoa học là Artocarpus altilis, thuộc họ dâu tằm. Sa kê được trồng nhiều ở Malaysia và các đảo ở Thái Bình Dương, trong nước được trồng nhiều ở các tỉnh miền Đông, miền Tây Nam Bộ và TP.HCM. Bộ phận có thể dùng trong y học gồm, rễ, lá, vỏ và nhựa cây. Theo Đông y, rễ sa-kê có tính làm dịu, trị ho; vỏ có tác dụng sát trùng; lá có công dụng tiêu viêm, tiêu độc, lợi tiểu. Ở một số nước, rễ sa-kê dùng trị bệnh hen và các chứng rối loạn dạ dày, đau răng, bệnh về da; vỏ cây sa-kê dùng trị ghẻ; nhựa cây được dùng pha loãng trị tiêu chảy và lỵ; còn lá sa-kê tươi thì được dùng với lá đu đủ tươi, giã với vôi để đắp trị nhọt. Trong nước, dân gian dùng lá sa kê chữa phù thủng, viêm gan vàng da bằng cách nấu lá tươi để uống. Theo lương y Nguyễn Công Đức (Giảng viên khoa Y học cổ truyền, Đại học Y Dược, TP.HCM), trị chứng huyết áp cao dao động mới dùng lá sa-kê vàng vừa mới rụng (2 lá sa-kê, 50g rau ngót tươi và 20g lá chè xanh tươi - để chung nấu nước uống trong ngày) còn hầu hết các bài thuốc khác đều dùng lá tươi. Lá sakê tươi phối hợp với một số vị thuốc khác sẽ trị được một số bệnh như: trị bệnh gút (thống phong) và sỏi thận (dùng lá sa-kê tươi (2 lá), 100g dưa leo và 50g cỏ xước khô, để nấu nước uống trong ngày), trị đái tháo đường týp 2 (lấy 2 lá sa-kê tươi (100g), 100g trái đậu bắp tươi và 50g lá ổi non - tất cả để chung, nấu nước uống trong ngày), chữa viêm gan vàng da (dùng 100g lá sa kê tươi, 50g diệp hạ châu (chó đẻ) tươi, 50g củ móp gai tươi và 20 - 50g cỏ mực khô - tất cả để chung, nấu nước uống trong ngày)...<br /><br />Kinh nghiệm và bài thuốc dân gian là vậy nhưng hiện vẫn chưa có kết quả nghiên cứu nghiêm túc nào nói đến cơ chế tác dụng của thuốc, tỉ lệ thành công cũng như những ảnh hưởng lâu dài trên cơ thể người bệnh khi dùng bài thuốc kinh nghiệm này. Vì thế, khi được chẩn đoán bị bệnh, nhất là bệnh phức tạp như bệnh gút, tốt nhất bệnh nhân nên tham khảo ý kiến thầy thuốc về vấn đề dùng lá sa kê trị bệnh. Có chăng, chỉ xem lá sa-kê như là một phương cách điều trị hỗ trợ bên cạnh các phương pháp điều trị chính thống cho đến khi có những nghiên cứu khoa học “rốt ráo” về sa-kê.<br />Các chuyên gia y tế khuyến cáo, đối với các bài thuốc dân gian từ cây lá, cần phải sử dụng đúng liều lượng, trong phối hợp có những nguyên tắc nhất định mà nếu không tuân thủ thì thuốc không phát huy hiệu quả, thậm chí phản tác dụng và làm mất “thời gian vàng” điều trị đúng bằng thuốc khác hay điều trị tại cơ sở y tế.<br /> <br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '1', '2010-05-14 09:51:26', '62', '', '2010-05-15 09:40:02', '62', '0', '0000-00-00 00:00:00', '2010-05-14 09:51:26', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', 'sa-kê', '“Săn lùng” lá sa-kê chữa bệnh', '0', '6', 'robots=sa-kê\nauthor=');
INSERT INTO `jos_content` VALUES ('36', 'Cốt khí củ trị bệnh đau khớp', 'ct-khi-c-tr-bnh-au-khp', '', '<p style=\"text-align: justify;\">Mỗi khi nhắc đến các vị thuốc mang tên là “cốt”, điều trước tiên đã gợi cho người ta có một  cái gì đó liên quan đến việc chữa trị các bệnh về xương, ví dụ như cốt toái bổ, bổ cốt chi (phá cố chỉ)... Như vậy cốt khí củ cũng không nằm ngoài cái quy luật đó. Nếu nói về cốt khí, người ta lại có quyền nghĩ tới,  ít nhất là hai cây: cốt khí củ (<em>Polygonum cuspidatum</em> Sieb. et  Zucc., họ rau răm (Polygonaceae) và cốt khí muồng (<em>Cassia ocidentali</em>s L., họ vang Caesalpiniaceeae).</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/cotkhicu.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Cốt khí củ</em></p>\r\n<p style=\"text-align: justify;\">Thành phần hóa học trong cốt khí củ chủ yếu là các hợp chất anthanoid. Dịch chiết nước của cốt khí củ có tác dụng chống viêm ức chế sự tăng sinh của các khối u trong cơ thể, ức chế sự đột biến và khép AND bởi 1- nitropyren. Là một trong những vị thuốc có tác dụng chống lão hóa. Dịch chiết từ rễ còn có tác dụng cầm máu, chống ho, giãn phế quản, hạ cholesterol, ức chế tụ cầu vàng, trực khuẩn mủ xanh và trực khuẩn lỵ... Các stiben trong cốt khí củ,  đặc biệt resveratrol có tác dụng làm giảm sự lắng đọng lipoprotein (LDL), chống ôxy hóa, ngăn chặn sự phát triển của ung thư da, còn có khả năng làm biến đổi sự tổng hợp triglycerid và cholesterol... làm giảm tổn thương các tổ chức ở gan.<br />Theo YHCT, cốt khí củ có vị đắng, tính ấm. Quy kinh can, tâm bào với công năng hoạt huyết thông kinh, chỉ thống, trừ phong thấp, thanh thấp nhiệt, tiêu viêm, sát khuẩn.</p>\r\n<p style=\"text-align: justify;\"><br />Cốt khí củ được dùng làm thuốc như sau:<br /><br />Trị các bệnh phong tê thấp, đau nhức gân xương cốt, đau gối, đau vai, lưng, và các khớp ngón tay, ngón chân... do có tính họat huyết.<br /><br />Bài thuốc: Cốt khí củ, rễ tầm soọng, rễ cỏ xước, lá lốt, cam thảo dây, dây đau xương, mỗi vị 20g, sắc uống, ngày 1 thang. Uống liền 2-3 tuần. hoặc dùng Cốt khí củ, rễ gối hạc, mỗi vị 12g, mộc thông, lá bìm bìm, mỗi vị 20g, sắc uống trị đau đầu gối, sưng đau mu ban chân...<br /><br />Ngoài ra, cốt khí củ thường phối hợp với các vị thuốc hoạt huyết: Ích mẫu, hồng hoa, đào nhân, kê huyết đằng... trị các bệnh đau bụng do bế kinh, đau bụng kinh nguyệt,  sau đẻ huyết ứ, bụng căng trướng gây đau đớn hoặc sưng đau do sang chấn, té ngã...<br /><br />Bài thuốc: Cốt khí củ 20g, lá móng 30g. Sắc uống, chia 2 lần trong ngày.<br /><br />Để trị viêm gan cấp tính, có thể dùng cốt khí củ, chút chít, mỗi vị 15g, Lá móng 20g. Sắc uống, ngày một thang. Uống liền 3- 4 tuần lễ; hoặc phối hợp với kim tiền thảo, xa tiền tử, tỳ giải, mỗi vị 12-16g để trị viêm gan, viêm túi mật, sỏi mật, sỏi tiết niệu.<br />Cốt khí củ còn được dùng để trị các bệnh xơ cứng động mạch, bệnh ho, hen suyễn và tăng huyết áp... Tuy nhiên trong những trường hợp cụ thể, người ta thường phối hợp với các vị thuốc khác để tăng thêm hiệu quả điều trị.</p>\r\n<p style=\"text-align: justify;\"><br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '1', '2010-04-18 03:10:10', '62', '', '2010-05-15 09:32:38', '62', '0', '0000-00-00 00:00:00', '2010-04-18 03:10:10', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '10', '0', '12', 'Cốt khí củ, đau khớp, Polygonum cuspidatum, Polygonaceae, Cassia ocidentalis, Caesalpiniaceeae', 'Cốt khí củ trị bệnh đau khớp', '0', '13', 'robots=Cốt khí củ, đau khớp, Polygonum cuspidatum, Polygonaceae, Cassia ocidentalis, Caesalpiniaceeae\nauthor=');
INSERT INTO `jos_content` VALUES ('37', 'Ăn trái cây khi đói là tốt nhất?', 'n-trai-cay-khi-oi-la-tt-nht', '', '<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><span id=\"lblMain\"> </span></span></span></p>\r\n<p>Các chuyên gia dinh dưỡng khuyên, nên ăn trái cây khi bụng đói (trừ chuối, bơ, cà chua và các loại hoa quả chua) sẽ giúp cơ thể giải độc và nhận được lợi ích tối đa từ trái cây. Điều này cũng rất tốt cho những người muốn giảm cân.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/antraicaykhidoilatotnhat.jpg\" border=\"0\" /></p>\r\n<p>Trái cây giàu chất xơ, vitamin, mang lại nhiều lợi ích cho sức khỏe, nhưng bạn đừng nghĩ cứ gọt ra, cắt miếng rồi \"bỏ miệng\" là hấp thụ được toàn bộ chất dinh dưỡng từ trái cây. Ăn trái cây cũng phải đúng cách.<br /><br />Sau bữa ăn, nhiều người thường có thói quen tráng miệng bằng trái cây. Thực ra điều này là không tốt. Chất đường trong hoa quả rất dễ hấp thu ở ruột non sau khi đi qua dạ dày, trong khi những thành phần tinh bột như cơm, bánh mỳ… cần có thời gian tiêu hóa ở dạ dày.<br /><br />Do đó, nếu ăn trái cây ngay sau bữa ăn, những chất tiêu hóa chậm sẽ cản trở trái cây tiêu hóa nhanh, lượng trái cây bạn đưa vào dạ dày có thể sẽ bị lên men, hay thối rữa gây ra các triệu chứng đầy bụng, khó tiêu… ảnh hưởng xấu đến tiêu hóa.<br /><br />Ngoài ra, sau bữa ăn, lượng đường trong máu cũng sẽ tăng lên, nếu ăn thêm trái cây ngọt, nguy cơ tăng đường huyết sẽ càng cao.<br /><br />Bạn cũng không nên ăn trái cây cùng với các loại thực phẩm khác, không nấu chín trái cây vì sẽ làm mất chất. Hạn chế sử dụng trái cây đóng hộp vì chúng thường chứa lượng đường cao, ngoài ra còn chứa các chất phụ gia, chất bảo quản có thể gây ngộ độc hoặc những ảnh hưởng không tốt cho sức khỏe.<br /><br />Theo SK&amp;ĐS<br /><br /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><span><br /></span></span></span></p>\r\n<div>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><br /></span></span></p>\r\n</div>\r\n<p> </p>\r\n<div>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> </span></span></p>\r\n</div>', '1', '1', '0', '3', '2010-04-18 03:34:54', '62', '', '2010-05-15 14:15:33', '62', '0', '0000-00-00 00:00:00', '2010-04-18 03:34:54', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '16', '0', '17', 'trái cây', 'Ăn trái cây khi đói là tốt nhất?', '0', '19', 'robots=trái cây\nauthor=');
INSERT INTO `jos_content` VALUES ('38', 'Công dụng mới của trà', 'cong-dng-mi-ca-tra', '', '<p style=\"text-align: justify;\">Trà không chứa nhiều calo, nhưng lại cung cấp khá đầy đủ các chất chống oxi hóa, và cũng thể giúp thân hình của bạn trở nên mảnh dẻ hơn. <br /><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"> \r\n', '\r\n</span></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><img src=\"images/stories/tintucsukien/tintuc/congdungmoicuatra.jpg\" border=\"0\" /><br /></span></span></p>\r\n<p>Con người ngày càng có xu hướng ưa chuộng trà vì rất nhiều ích lợi mà thức uống này mang lại. Và giờ đây, một học thuyết mới lại vừa được công bố, uống một tách trà nóng mỗi ngày có thể giúp tâm hồn bạn thư giãn, sảng khoái hơn và giúp bạn loại bỏ mọi lo lắng đang quấy nhiễu.<br /><br />Trong một nghiên cứu, những tình nguyện viên bị stress giống nhau được yêu cầu thể hiện sự lo lắng của mình. Và sau đó, những người được uống một tách trà nóng đã trở nên hoạt bát hơn, nói chuyện nhiều và cảm thấy thư giãn lên đáng kể.<br /><br />Mức độ lo lắng của những người này cũng nhanh chóng giảm xuống chỉ còn 4%. Và, đối với những người chỉ uống nước lọc thì sao? Câu trả lời là: “chẳng có gì thay đổi”.<br /><br />Bị stress và không muốn ăn<br /><br />Hãy xem trà có thể “đánh bại” bệnh stress như thế nào. Với trường hợp này, trà trở thành chất theanine, một dạng chất của axit amino được phát hiện thấy trong trà, vốn lâu nay được biết đến như chất tạo sự tỉnh táo và thư giãn tinh thần. Những người tham gia vào cuộc nghiên cứu cũng bày tỏ với các nhà khoa học rằng họ<br /><br />cảm thấy dễ chịu hơn rất nhiều khi được uống trà.<br /><br />Vì vậy, còn chần chờ gì nữa mà bạn không uống trà mỗi ngày?<br /><br />Và, hãy khám phá thêm một số ích lợi tuyệt vời khác mà trà xanh đem lại:<br /><br />- Đối với dạ dày: Uống trà xanh mỗi ngày có thể giúp bạn đốt cháy nhiều chất béo nhất là ở phần bụng khi tập thể dục thể thao.<br /><br />- Rất có lợi cho lượng đường trong máu: Trà đen có tác dụng giữ cho lượng đường luôn ở mức cân bằng và ổn định, sao cho tốt nhất cho sức khỏe.<br /><br />- Giữ dung nhan tươi tỉnh: Hãy tận hưởng những ích lợi mà trà đem lại đối với làn da của bạn. Trà là công cụ tuyệt vời để chiến đấu với sự lão hóa mỗi ngày của làn da.<br /><br /><br /><em><strong>Theo Xinh Xinh</strong></em></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><br /></span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><br /></span></span></p>', '1', '1', '0', '4', '2010-04-18 06:34:33', '62', '', '2010-05-15 14:23:11', '62', '0', '0000-00-00 00:00:00', '2010-04-18 06:34:33', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '26', '0', '6', 'trà, theanine', 'Công dụng mới của trà', '0', '40', 'robots=trà, theanine\nauthor=');
INSERT INTO `jos_content` VALUES ('83', 'Thuốc “rón rén” tăng giá', 'thuc-ron-ren-tng-gia', '', '<p style=\"text-align: justify;\">Việc kê khai giá thuốc hiện nay đang tạo kẽ hở để doanh nghiệp hợp lý hóa giá thuốc ở mức cao.<br />Từ sau Tết đến nay, giá thuốc nội, ngoại trên thị trường Hà Nội tiếp tục tăng từ 5%-20%, trong đó chủ yếu là thuốc kháng sinh và biệt dược.<br />Nội - ngoại đều tăng giá</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/thuocronrentanggia.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br />Tại một hiệu thuốc GPP (nhà thuốc thực hành tốt) trên phố Trần Hưng Đạo, chị Phương, dược sĩ phụ trách nhà thuốc này, cho biết thời gian gần đây, nhiều loại thuốc kháng sinh ngoại đã ào ào tăng giá, trong đó, kháng sinh Zinat thuộc loại tăng giá mạnh nhất.<br /><br />Theo chị Phương, so với trước Tết Nguyên đán, hiện nay, giá thuốc kháng sinh Zinat dạng xi rô, gói và viên mà cửa hàng của chị vừa nhập đều tăng từ 10.000- 25.000 đồng/hộp (chai). Ngoài ra, một số thuốc khác cũng tăng giá như: Exomuc,  Motilium, Obimin, kháng sinh Rodogyl, Utrogestal, Dopegyt... Cùng đó, một số loại thuốc xông họng, dịch truyền và thuốc bôi ngoài da cũng tăng giá do thời tiết thay đổi, nhu cầu sử dụng tăng cao.<br /><br />“Tính từ đầu năm 2010 đến nay, đã có khoảng 5 đợt điều chỉnh giá thuốc nhưng chủ yếu là tăng chứ giảm không đáng kể. Có lẽ do thời gian gần đây, các cơ quan quản lý liên tục kiểm tra nên dược phẩm không ồ ạt tăng giá như trước đây mà “rón rén” điều chỉnh giá hoặc nếu có tăng cũng chia thành nhiều đợt và tăng mỗi lần một chút để không bị chú ý”- chị Phương cho biết.<br /><br />Không chỉ thuốc ngoại, một số thuốc sản xuất trong nước như kháng sinh, kháng viêm, giảm đau, cảm cúm... cũng tăng giá. Theo nhiều nhà thuốc bán lẻ ở Hà Nội, kể cả những thuốc sản xuất từ dược liệu trong nước, không liên quan đến tỉ giá ngoại tệ, cũng tăng giá. Đáng nói, trong những báo cáo gần đây của Hiệp hội Sản xuất Kinh doanh dược VN đều thông báo giá một số nguyên liệu kháng sinh, hạ sốt, kháng viêm nhập khẩu giảm nhưng trong thời gian này, trong các loại thuốc giảm giá hầu như hiếm thấy có thuốc kháng sinh.<br /><br />Nhiều kẽ hở trong kê khai giá thuốc<br /><br />Lý giải việc giá thuốc đang ở mức cao, ông Trương Quốc Cường, Cục trưởng Cục Quản lý dược, nói: Thị trường dược phẩm VN đang phụ thuộc nhiều vào nguyên liệu nhập khẩu, trên 50% số thuốc sử dụng phải nhập khẩu. Do vậy, việc bình ổn giá thuốc không thể sử dụng các biện pháp hành chính để buộc giá thuốc đứng hoặc giảm giá bán... mà quan trọng là bảo đảm đủ thuốc, không để tình trạng tăng giá đột biến, bất hợp lý và tăng giá đồng loạt.<br /><br />Cũng theo ông Cường, theo quy định của Pháp lệnh Giá, Luật Dược, hiện nay, giá thuốc ở VN hoàn toàn do các đơn vị sản xuất, kinh doanh tự quyết định và kê khai với cơ quan quản lý. Đối với các cơ sở sản xuất, nhập khẩu phải kê khai giá thuốc trước khi lưu hành trên thị trường và khi thay đổi giá phải được kê khai lại với cơ quan quản lý Nhà nước có thẩm quyền... Việc kê khai giá thuốc hiện nay đang tạo kẽ hở để doanh nghiệp hợp lý hóa giá thuốc ở mức cao.<br /><br />Vì thế, Cục Quản lý dược đang xây dựng phần mềm quản lý liên thông giữa y tế và hải quan để kiểm soát giá thuốc nhập vào VN và giá thuốc tại các nước trước khi khai báo tại hải quan. Đồng thời, hàng loạt quy định liên quan đến vấn đề quản lý giá thuốc đang được sửa đổi theo hướng tăng nặng chế tài trong xử lý.<br />Thuốc được coi là mặt hàng cá biệt vì người mua không trả giá và người bán cũng không thông báo trước khi tăng giá. Tuy nhiên, trước những cơn lốc tăng giá, người bệnh vẫn phải chấp nhận. Mặc dù Cục Quản lý dược thường xuyên có văn bản yêu cầu các sở y tế trên toàn quốc tăng cường quản lý giá thuốc trên địa bàn, xử lý nghiêm các hành vi tăng giá thuốc phi lý, đầu cơ, găm hàng, tuy nhiên, hiệu quả bình ổn thị trường dược vẫn chưa được như mong muốn.<br /> <br /><strong>Theo NLĐ<br />Các tin khác</strong></p>', '1', '1', '0', '1', '2010-04-26 09:27:01', '62', '', '2010-05-15 09:34:46', '62', '0', '0000-00-00 00:00:00', '2010-04-26 09:27:01', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '7', '0', '10', 'Thuốc, tăng giá', 'Thuốc “rón rén” tăng giá', '0', '20', 'robots=Thuốc, tăng giá\nauthor=');
INSERT INTO `jos_content` VALUES ('39', 'Thế giới côn trùng', 'th-gii-con-trung', '', '', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/contrung/17055_1271512895.jpg\" border=\"0\" width=\"480\" style=\"border: 0pt none;\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/contrung/21749_1271129205.jpg\" border=\"0\" width=\"480\" style=\"border: 0pt none;\" /></p>', '1', '1', '0', '5', '2010-04-18 07:01:56', '62', '', '2010-05-08 03:22:31', '62', '62', '2010-05-12 11:53:41', '2010-04-18 07:01:56', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '10', '0', '2', 'côn trùng', 'Thế giới côn trùng', '0', '16', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('149', 'Công ty Cổ Phần Dược Phẩm OPC', 'cong-ty-c-phn-dc-phm-opc', '', '<p>\r\n', '\r\n<img src=\"http://t3.gstatic.com/images?q=tbn:wDxP6FV5gihZhM:http://www.sanotc.com.vn/Upload/UserUpload/20090202/143430enmanager2_opc.jpg\" border=\"0\" width=\"88\" height=\"88\" /></p>', '1', '7', '0', '284', '2010-05-08 13:41:44', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-05-08 13:41:44', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('56', 'Sản phẩm thuốc nội 2', 'sn-phm-thuc-ni-2', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '-2', '7', '0', '285', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:51:46', '62', '0', '0000-00-00 00:00:00', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '0', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('57', 'Sản phẩm thuốc nội 1', 'sn-phm-thuc-ni-1', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '-2', '7', '0', '285', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:46:42', '62', '0', '0000-00-00 00:00:00', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('58', 'Sản phẩm thuốc nội 1', 'sn-phm-thuc-ni-1', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '-2', '7', '0', '287', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:46:42', '62', '0', '0000-00-00 00:00:00', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '0', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('59', 'Sản phẩm thuốc nội 2', 'sn-phm-thuc-ni-2', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '-2', '7', '0', '287', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:51:46', '62', '0', '0000-00-00 00:00:00', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('60', 'Sản phẩm thuốc nội 1', 'sn-phm-thuc-ni-1', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '-2', '7', '0', '286', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:46:42', '62', '0', '0000-00-00 00:00:00', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('61', 'Sản phẩm thuốc nội 2', 'sn-phm-thuc-ni-2', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '-2', '7', '0', '286', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:51:46', '62', '0', '0000-00-00 00:00:00', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '0', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('63', 'Thuốc cảm lạnh An Nhân', 'thuc-cm-lnh-an-nhan', '', '', '\r\n<p><img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/5306274ac95f4eeea9a3e6724f02f042-an-nhan.gif/an-nhan.gif\" border=\"0\" width=\"300\" height=\"375\" /></p>\r\n<p> </p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Công thức bào chế</strong>: Cho 125 ml Dịch  chiết dược liệu tương đương với:</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Gừng tươi 12.5g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Bạch chỉ 31.25g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Thảo ma hoàng 21.25g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Quế chi 15g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Cam thảo 8.75g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Hòe hoa 8.75g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Xuyên khung 8.75g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Tá dược (Nipagin, Nipazol, đường kính, nước cất) vừa  đủ 125 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Dạng bào chế</strong>: Thuốc nước</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Qui cách đóng gói</strong>: Hộp 1 chai 125 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Chủ trị: </strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Các trường hợp cảm lạnh, cảm phong hàn với các biểu  hiện: sốt nhẹ, sợ lạnh, sợ gió, nhức đầu, ngạt mũi hoặc chảy nước mũi  trong, sưng họng, ho có đờm trắng loãng, người mệt mỏi, rêu lưỡi trắng,  không ra mồ hôi…</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Liều dùng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Người lớn (từ 15 tuổi trở lên): Ngày 3 lần, mỗi lần  20 – 25 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Trẻ em từ 6 – 15 tuổi: ngày 2 lần, mỗi lần 10 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Cách dùng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/ddc3c0aadaaf4f678a86d76d167afb6a-annhan.gif/annhan.gif\" border=\"0\" width=\"500\" height=\"188\" /></strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Lấy thuốc vào cốc (theo liều hướng dẫn) thêm khoảng  200 ml nước sôi</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Uống thuốc khi còn nóng, uống xong đắp chăn ấm cho  ra mồ hôi</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Chống chỉ định: </strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Không dùng thuốc cho phụ nữ có thai, phụ nữ cho con  bú, trẻ em dưới 6 tuổi, người suy tim, người phong nhiệt hay người mẫn  cảm với bất cứ thành phần nào của thuốc.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Những lưu ý đặc biệt và cảnh báo trước khi sử  dụng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Không dùng thuốc quá hạn sử dụng, thuốc bị mốc, đọc  kĩ hướng dẫn trước khi dùng</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Những người mắc chứng cảm mạo phong nhiệt, với các  triệu chứng: sốt, đỏ mặt, miệng khô, khát nước, ho ra đờm vàng, họng  sưng đỏ…không nên dùng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Những người mắc bệnh cao huyết áp, bệnh huyết khối  động mạch vành, bệnh tuyến giáp không nên dùng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Tác dụng không mong muốn:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Chưa nhận thấy tác dụng không mong muốn nào của thuốc  (chú ý: nếu gặp phải tác dụng không mong muốn nào thì báo ngay cho bác  sĩ hoặc nhà sản xuất)</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Hạn dùng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">24 tháng kể từ ngày sản xuất. Không dùng nếu thấy có  hiện tượng mốc, hỏng hoặc có dấu hiệu khác lạ, đồng thời báo ngay cho  nhà sản xuất biết.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Bảo quản</strong>: Nơi khô mát</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Tiêu chuẩn áp dụng</strong>: TCCS</span></span></p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>SĐK:</strong> V1097 – H12 - 10</span></span></p>', '-2', '4', '0', '15', '2010-04-21 17:40:12', '62', '', '2010-05-03 16:53:28', '62', '0', '0000-00-00 00:00:00', '2010-04-21 17:40:12', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=thuốc nước\nt_ndt=hạ nhiệt- cảm sốt\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '0', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('62', 'Công ty Cổ phần SAMAN', 'cong-ty-c-phn-saman', '', '', '\r\n<p><img src=\"http://saman.com.vn/uploads/images/quangcao/logo.jpg\" border=\"0\" width=\"180\" height=\"54\" /></p>\r\n<p> </p>', '1', '7', '0', '310', '2010-04-21 14:21:39', '62', '', '2010-05-02 07:25:19', '62', '0', '0000-00-00 00:00:00', '2010-04-21 14:21:39', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '1', '', '', '0', '17', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('163', 'Tác dụng chữa bệnh của cây rau mùi', 'tac-dng-cha-bnh-ca-cay-rau-mui', '', '<p>Ông Đỗ Quang Tiến ở Rạch Giá, Kiên Giang có gửi thư đến báo SK&amp;ĐS hỏi cây rau mùi có tác dụng như thế nào khi sử dụng? Chúng tôi xin trả lời như sau:</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/cay-rau-mui.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Hoa và quả mùi.</em></p>\r\n<p style=\"text-align: justify;\">Cây trong ảnh mà ông gửi đến tòa soạn là cây rau mùi (Nam Bộ gọi là ngò rí), còn gọi là hồ tuy, hương tuy... Tên khoa học là coriandrum sativum L. thuộc họ hoa tán. Cây mùi được trồng rất nhiều ở nước ta, thường được dùng làm gia vị hoặc nấu nước tắm trong ngày Tết. Theo sách Những cây thuốc và vị thuốc Việt Nam của GS. Đỗ Tất Lợi, cả rễ, lá và quả mùi đều là vị thuốc chữa bệnh vì có chứa tinh dầu, trong đó quả chín phơi hay sấy khô của cây mùi là bộ phận dùng làm thuốc chủ yếu. Thu hái khi quả chín, phơi hoặc sấy khô để dùng dần, khi khô, quả mùi mất mùi hôi trở nên thơm dễ chịu. Quả mùi là vị thuốc chữa bệnh trong Đông và Tây y. Tây y dùng quả mùi làm thuốc trung tiện, kích thích tiêu hóa, dùng trong công nghiệp sản xuất nước hoa, làm hương liệu cho chè và rượu mùi. Theo Đông y, quả mùi vị cay, tính ôn có tác dụng phát tán, thúc đậu sởi cho mọc, trừ khí, khu phong, ngoài ra còn dùng làm thuốc giúp tiêu hóa, chữa ho, ít sữa. Liều dùng 4 - 10g quả mùi hoặc 10 - 20g lá cây tươi dưới dạng thuốc sắc hoặc ngâm rượu.<br /><br />Quả mùi được dùng làm thuốc trong những trường hợp sau:<br /><br />- Đậu sởi không mọc: quả mùi 80g tán nhỏ, rượu 100ml, nước 100ml. Đun sôi, đậy kín tránh bay hơi. Lọc bỏ bã. Phun từ đầu đến chân, trừ mặt. Đậu sẽ mọc ngay (theo kinh nghiệm dân gian).<br />- Sau đẻ ít sữa: quả mùi 6g, nước 100ml. Đun sôi trong 15 phút, chia 2 lần uống trong ngày.<br />- Mặt có những nốt đen: quả mùi sắc nước rửa hằng ngày, nốt đen sẽ mất dần.<br />- Lòi dom: quả mùi đốt hun lấy khói  hứng vào nơi dom lòi ra.<br /><em>Kiêng kỵ:</em> Người có chứng sâu răng, hôi mồm không nên dùng.</p>\r\n<p style=\"text-align: justify;\"><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '2', '2010-05-14 09:57:59', '62', '', '2010-05-15 09:40:54', '62', '0', '0000-00-00 00:00:00', '2010-05-14 09:57:59', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '4', 'rau mùi', 'Tác dụng chữa bệnh của cây rau mùi', '0', '6', 'robots=rau mùi\nauthor=');
INSERT INTO `jos_content` VALUES ('145', 'Nhân sâm cải thiện tình trạng suy giảm tình dục', 'nhan-sam-ci-thin-tinh-trng-suy-gim-tinh-dc', '', '<p style=\"text-align: justify;\">Dù muốn hay không đến một độ tuổi nào đó khó ai có thể tránh khỏi tình trạng suy giảm tình dục. Lúc này, người ta trở nên dửng dưng với chuyện \"chăn gối\", cảm giác ham muốn mất đi hoặc suy giảm một cách tệ hại, theo đó sự khoái cảm cũng không còn mãnh liệt như thời trẻ. Nhiều khi cơ thể còn xuất hiện kèm theo các triệu chứng xuống sức một cách vô cớ, lưng đau gối mỏi, đầu choáng mắt hoa, tai ù tai điếc, tay chân lạnh lẽo, sức làm việc giảm sút...</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/random_images/pic1_ginseng.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\">Trong y học cổ truyền, trạng thái này được chia làm nhiều thể bệnh khác nhau nhưng chủ yếu là thuộc phạm vi Thận dương hư nhược với phương pháp điều trị là phải làm ôn ấm tạng thận bằng các thuốc có tác dụng bổ khí, bổ dương, trong đó không thể thiếu vai trò của nhân sâm. Nhưng cách dùng vị thuốc quý giá này như thế nào để đạt được hiệu quả cao nhất thì không phải ai cũng tường tận. Bài viết này xin được giới thiệu với bạn đọc một số phương cách cụ thê.<br /><br /><strong>Cách 1:</strong> Nhân sâm 6g, nhung hươu 6g, nhục quế 6g, hoàng kỳ 30g, kỷ tử 10g, thục địa 10g, sơn thù nhục 10g, ba kích 10g, dương khởi thạch 10g, dâm dương hoắc 15g, cam thảo sao 3g. Nhân sâm và nhung hươu sấy khô tán bột, chia uống 2 lần sáng chiều với nước ấm; các vị thuốc khác cho vào sắc kỹ lấy nước cốt, chia uống 2 lần trong ngày. Đây là một nghiệm phương cận đại, có công dụng bổ thận ích tinh, thích hợp cho nhữmg người bị suy giảm tình dục có kèm theo các triệu chứng như tai ù, sức nghe giảm, hay hoa mắt chóng mặt, dễ mệt mỏi, sắc mặt nhợt, lưng gối đau mỏi...<br /><br /><strong>Cách 2:</strong> Nhân sâm, nhục quế, bạch thược, cam thảo sao, hoàng kỳ, đương quy, xuyên khung, bạch truật, bạch linh, thục địa, liều lượng mỗi vị như nhau. Tất cả đem sấy khô tán bột, đựng trong lọ kín dùng dần. Mỗi ngày uống 15g, chia làm hai lần khi bụng đói với nước sắc của 2 quả đại táo và 3 lát gừng tươi. Đây là một cổ phương có công dụng ích khí dưỡng huyết, ôn dương bổ tinh, dùng thích hợp cho người bị suy giảm tình dục có kèm theo các triệu chứng mệt mỏi như mất sức, sắc mặt nhợt nhạt, hay có cảm giác khó thở, hoa mắt chóng mặt, dễ hồi hộp, ăn kém, đại tiện lỏng loãng...<br /><br /><strong>Cách 3:</strong> Nhân sâm 30g, bạch linh 30g, bạch thược 30g, nhục quế 30g, bạch truật 30g, ngũ gia bì 30g, cam thảo sao 15g, bào khương 6g. Tất cả sấy khô tán bột, đựng trong lọ kín dùng dần. Mỗi ngày uống 2 lần, mỗi lần 6g khi bụng đói với nước sắc đại táo 3 quả và gừng tươi 2 lát. Đây là cổ phương được ghi trong sách Thái bình thánh huệ phương, có công dụng ích khí ôn trung, dùng thích hợp cho những người bị suy giảm tình dục có kèm theo các triệu chứng mệt mỏi do lao lực quá độ, lưng gối đau mỏi, tứ chi gầy yếu, hay đau bụng dưới, ngủ kém hay mê mộng....<br /><br /><strong>Cách 4:</strong> Nhân sâm 50g, nhung hươu 50g, ba kích 50g, phúc bồn tử 50g, dâm dương hoắc 50g. Tất cả sấy khô tán bột, đựng trong lọ kín dùng dần. Mỗi ngày uống 2 lần, mỗi lần 6g với nước muối nhạt. Công dụng: bổ thận trợ dương, dùng cho người bị suy giảm tình dục có kèm theo các triệu chứng lưng gối đau mỏi, đầu choáng mắt hoa, tinh thần bạc nhược, sắc mặt trắng nhợt, sợ lạnh, chân tay lạnh lẽo, ăn kém, đại tiện lỏng loãng...<br /><br /><strong>Cách 5: </strong>Nhân sâm 30g, viễn chí 60g, sinh toan táo nhân 60g, đương quy 60g, bạch thược 60g, bạch linh 120g, thỏ ty tử 120g, thạch xương bồ 50g, bạch truật 90g, hoài sơn 90g, thần khúc 90g, quất hồng 40g, sa nhân 75g, sài hồ 15g, cam thảo sao 10g. Tất cả sấy khô tán bột, đựng trong lọ kín dùng dần. Mỗi ngày uống 2 lần, mỗi lần 10g với nước ấm khi bụng đói. Đây là một cổ phương được ghi trong sách Biện chứng lục, có công dụng dưỡng tâm kiện tỳ, bổ ích khí huyết, cố thận khí, dùng thích hợp cho người bị suy giảm tình dục có kèm theo các triệu chứng như tảo tiết hoặc di tinh, đầu choáng mắt hoa, mệt như mất sức, hay hồi hộp trống ngực, có cảm giác khó thở, ăn kém, mất ngủ...<br /><br /><strong>Cách 6:</strong> Nhân sâm 50g, nhung hươu 50g, thục địa 300g, quy bản 300g, hà thủ ô chế 200g, đỗ trọng 200g, tử hà xa 250g, dâm dương hoắc 100g. Tất cả sấy khô tán bột, đựng trong lọ kín dùng dần. Mỗi ngày uống 2 lần, mỗi lần 5g khi bụng đói với nước sôi để nguội. Công dụng: tráng dương tư thận, bổ khí dưỡng huyết, dùng thích hợp cho người bị suy giảm tình dục có kèm theo các triệu chứng lưng gối đau mỏi, tinh dịch lạnh loãng, đầu choáng mắt hoa, tinh thần mỏi mệt, di tinh, liệt dương...<br /><br /><strong>Cách 7:</strong> Nhân sâm 3g, chim sẻ 2 con, phúc bồn tử 10g, thỏ ty tử 10g, kỷ tử 10g, ngũ vị tử 5g, gạo tẻ 100g, gừng tươi và gia vị vừa đủ. Chim sẻ làm thịt bỏ lông và nội tạng, đem nấu với gạo và gừng tươi thành cháo; các vị thuốc khác sấy khô tán thành bột rồi hoà với cháo, chế thêm gia vị, chia ăn vài lần trong ngày. Đây là một bài thuốc dân gian có công dụng tráng dương bổ thận, trong đó chim sẻ có công năng tráng dương và nâng cao năng lực tình dục; nhân sâm, phúc bồn tử, thỏ ty tử, ngũ vị tử và kỷ tử có tác dụng bổ thận ích tinh. Công thức này rất thích hợp cho những người bị suy giảm tình dục có kèm theo các triệu chứng mệt mỏi nhiều, lưng gối đau mỏi, đầu choáng mắt hoa, xuất tinh sớm...<br />Nhìn chung, các bài thuốc nêu trên đều khá đơn giản, dễ kiếm, dễ dùng và rẻ tiền. Các vị thuốc nên mua tại các cơ sở đông dược có uy tín và có tư cách pháp nhân. Cần lưu ý là: tất cả các công thức này chỉ nên dùng cho người bị suy giảm tình dục thuộc thể Thận dương hư nhược, còn với thể Thận âm hư nhược biểu hiện bằng các triệu chứng như môi khô miệng khát, lòng bàn tay bàn chân nóng, trong ngực bồn chồn không yên, đại tiện táo kết, tiểu tiện vàng đỏ... thì không được dùng. <br /> <br /><strong><em>Theo SK&amp;ĐS</em></strong></p>', '1', '1', '0', '2', '2010-05-06 07:59:51', '62', '', '2010-05-15 09:41:25', '62', '0', '0000-00-00 00:00:00', '2010-05-06 07:59:51', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '6', 'Nhân sâm, suy giảm tình dục', 'Nhân sâm cải thiện tình trạng suy giảm tình dục', '0', '16', 'robots=Nhân sâm, suy giảm tình dục\nauthor=');
INSERT INTO `jos_content` VALUES ('146', 'Tập Yoga bí quyết để có đôi chân khỏe đẹp', 'tp-yoga-bi-quyt-co-oi-chan-khe-p', '', '<p style=\"text-align: justify;\">Các bài tập yoga sau đây chính là một trong những bí quyết giúp mọi phụ nữ chăm sóc hiệu quả cho đôi chân của mình.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/tapyogadecodoichankhoedep.jpg\" border=\"0\" /></p>\r\n<p> </p>\r\n<p><strong>1. Bài tập thứ nhất</strong><br /><br />- Đầu tiên, chụm 2 chân và quì gối trên sàn nhà với 2 tay chống phía trước. Sau đó nâng dần người lên sao cho tay vẫn chạm xuống sàn, và thẳng tay. Đồng thời, thẳng chân sao cho chân, đầu gối và mông tạo thành một đường thẳng. Giữ nguyên tư thế này trong một vài phút.<br /><br />- Trong khi giữ chân và cơ thể ở tư thế này, thực hiện động tác thở ra đều và nhớ luôn giữ chân ở tư thế thẳng. Động tác này giúp ích rất nhiều cho xương cổ tay, có tác dụng tốt cho những người bị mắc các chứng huyết áp cao hoặc chứng đau đầu. Tuy nhiên, những phụ nữ vừa mới sinh con không nên tập động tác này.<br /><br /><strong>2. Bài tập thứ hai</strong><br /><br />- Trước tiên, quì 2 gối trên sàn nhà và ngồi trên 2 chân sao cho phần lưng vuông góc với chân và đùi. Mũi bàn chân thẳng và mu bàn chân tiếp xúc sát với đất.<br /><br />- Thở sâu và từ từ ngả người ra phía sau với khuỷu 2 tay chống xuống đất, lòng bàn tay úp xuống đất (thực hiện lần lượt từng tay một). Để tạo cảm giác thoải mái khi thực hiện động tác này, nên kê thêm một tấm nệm dưới hông khi ngả người về phía sau.<br /><br />Lưu ý: khi tập động tác này là luôn giữ cho xương cổ thẳng, lưng thẳng. Giữ động tác này trong khoảng từ 30 giây đến một phút trong lần tập đầu, những lần tập sau đó, có thể kéo dài thời gian đến khoảng 5 phút. Bài tập sẽ rất tốt cho cơ đùi của bạn. Để kết thúc động tác, từ từ chống 2 tay xuống sàn, sau đó nâng mông ra khỏi gót chân.<br /><br /><strong>3. Bài tập thứ 3</strong><br /><br />- Quì gối trên sàn, giữ cho phần đầu gối 2 chân khép lại, còn 2 bàn chân có thể cách nhau một khoảng 40cm, lòng bàn chân ngửa lên trên, mông có thể đặt xuống sàn. Ngoài ra không một bộ phận nào khác của cơ thể được phép đặt lên chân. Tay đặt lên gối hoặc đùi.<br /><br />- Trong khi ngồi ở tư thế này, luôn giữ cho lưng, cổ và đầu thẳng từ trên xuống. Đây là động tác có thể tập sau khi ăn no và có nhiều tác dụng tốt đối với xương, đặc biệt là ở những người bị mắc các chấn thương liên quan đến chứng viêm khớp ở chân.<br /><br /><strong>4. Bài tập số 4</strong><br /><br />- Ngồi trên sàn với 2 bàn chân chụm vào nhau ở phía trước mặt. 2 tay nắm vào phần cổ chân và từ từ nâng từng bên chân lên sát người. Kết thúc động tác, đưa chân trở về vị trí ngồi ban đầu và thở sâu bằng mũi.<br /><br /><strong>5. Bài tập số 5</strong><br /><br />- Đứng với 2 chân mở rộng, thẳng chân, rồi từ từ đưa toàn bộ phần trên cơ thể uốn vòng từ trên xuống dưới.<br /><br />- Tiếp tục tập động tác tương tự nhưng với phần gối ở tư thế hơi chùng xuống. Khi đó, phần hông của cơ thể tự nhiên cũng sẽ chuyển động nhẹ theo phần thân người.<br /><br />Tập lại động tác này từ 4 - 5 lần một cách chậm đều sẽ cho hiệu quả đối với toàn bộ cơ thể.<br /><br /><strong>6. Bài tập số 6</strong><br /><br />- Trước khi tập động tác này, bạn cần cuộn một cái gối ôm hoặc một chăn thật êm đặt dưới lưng. Đưa 2 chân lên cao và dựa vào tường như kiểu “trồng cây chuối”.<br /><br />Lưu ý: khi tập động tác này là khoảng cách giữa chân với tường và độ cao. Nếu cơ thể bạn quá cứng, hãy tập với độ cao vừa phải trước, 2 tay dang sang 2 bên, giữ cho đầu, lưng và hông thẳng.<br /><br />Giữ động tác này trong vòng từ 5 -15 phút. Sau đó từ từ nghiêng sang một bên, hạ thấp hông và thở nhẹ.<br /><br /><strong>7. Bài tập số 7</strong><br /><br />Là một động tác khởi động đơn giản nhưng rất có hiệu quả. Có thể đứng và xoay lần lượt từng bên chân, hoặc ngồi trên ghế, một tay nắm cổ chân, một tay nắm mũi chân và xoay đều.<br /><br /><strong>8. Bài tập số 8</strong><br /><br />Ngồi trên ghế thả lỏng 2 chân và dùng những ngón chân để gắp từng viên bi dưới sàn. Đây là bài tập giúp luyện sự khéo léo cho đôi chân, đồng thời là một biện pháp hiệu quả trong việc chữa trị chứng tê khớp.<br /><br /><strong>9. Bài tập số 9</strong><br /><br />Khép 2 chân và đứng thẳng người. Giữ chân thẳng và từ từ gập người về phía trước cho tới khi tay chạm xuống mũi chân. Bài tập này giúp giữ dáng chân thẳng và làm căng các cơ chân.<br /><em><strong><br />(Theo sk&amp;đs/beauty salon)</strong></em></p>', '1', '1', '0', '4', '2010-05-06 08:11:03', '62', '', '2010-05-15 14:20:52', '62', '0', '0000-00-00 00:00:00', '2010-05-06 08:11:03', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '1', 'Yoga, đôi chân', 'Tập Yoga bí quyết để có đôi chân khỏe đẹp', '0', '14', 'robots=Yoga, đôi chân\nauthor=');
INSERT INTO `jos_content` VALUES ('147', 'Lopassi', 'lopassi', '', '', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"http://www.truongthopharma.com/home/Products/lopassi.bmp\" border=\"0\" width=\"250\" /></p>\r\n<p style=\"text-align: justify;\"><strong>Thành phần:</strong><br /><br />Lá sen 500mg,Lá vông 700mg, Lạc tiên 500mg, Tâm sen 100mg, Bình vôi 1000mg<br />Đóng gói: Vỉ 10 viên, hộp 10 vỉ, hộp 5 vỉ, Lọ 50 viên, lọ 100 viên<br /><strong>Số đăng ký</strong>:<br />Nhóm trị liệu:     Thuốc đông dược<br />Chỉ định:<br />Thuốc có tác dụng dưỡng tâm an thần, gây ngủ<br />(tạo giấc ngủ sinh lý, tinh thần sảng khoái khi thức dậy),<br />dùng tốt trong các trường hợp suy nhược thần kinh, tim<br />hồi hộp, lo lắng, mất ngủ, ngủ không yên giấc, hay mê sảng<br />gặp ác mộng.<br /><br /><br /><strong>Liều dùng và cách dù</strong>ng:<br />- Người lớn: ngày 4 - 6 viên.<br />- Trẻ em từ 1 – 5 tuổi: ngày 1 - 2 viên.<br /><br />- Trẻ em từ 5 – 10 tuổi: ngày 2 - 3 viên.<br /><br />- Với trẻ lớn hơn có thể cân nhắc dùng liều như người lớn.<br /><br />Uống thuốc trước khi đi ngủ. Thuốc không gây nghiện, an toàn khi dùng kéo dài.<br /><strong>Chống chỉ định:</strong><br />- Không dùng cho người mắc bệnh trầm cảm.<br />- Thuốc không dùng cho người đang vận hành máy móc, tàu xe.<br />- Người mẫn cảm với bất cứ thành phần nào của thuốc.<br /><br />Sử dụng thuốc ở phụ nữ có thai và cho con bú: Chưa thấy tài<br />liệu ghi nhận thuốc chống chỉ định cho phụ nữ có thai và phụ nữ<br />đang cho con bú, trong những trường hợp này cần hỏi ý kiến bác sỹ.<br /><br /><strong>Tương tác thuốc:</strong> Chưa tìm thấy.<br /><br />Tác dụng không mong muốn (ADR): Chưa thấy tác dụng không mong muốn nào được ghi nhận.<br /><br />Ghichú: “Thông báo cho bác sỹ hoặc dược sỹ những tác dụng không<br />mong muốn gặp phải khi sử dụng thuốc”.<br />Hạn dùng: 24 tháng kể từ ngày sản xuất.<br />Bảo quản: Nơi khô mát, tránh ánh sáng.</p>', '1', '4', '0', '15', '2010-05-06 16:57:02', '62', '', '2010-05-10 07:47:30', '62', '0', '0000-00-00 00:00:00', '2010-05-06 16:57:02', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=viên nang cứng\nt_ndt=an thần\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '12', '0', '2', '', '', '0', '36', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('173', ' Điều trị bệnh Phong Thấp Bằng Y Học Á-Châu ', '-iu-tr-bnh-phong-thp-bng-y-hc-a-chau-', '', '<p style=\"text-align: justify;\">Sơ lược: Bệnh phong thấp bình dân gọi là là tê thấp. Từ y học là Tý chứng. Khi Phong, Hàn, Thấp, Nhiệt thừa lúc cơ thể yếu đuối xâm nhập, lưu trú tại kinh lộ, cơ nhục, khớp xương, làm tổn thương huyết mạch và tâm, đưa đến : cơ thể, các khớp xương, chân tay sưng đỏ đau nhức, nặng nề, tê dại vv... bệnh nhân cảm thấy hàn nhiệt, biểu chứng.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/Thuvien/dieutriphongthapbangyhocachau.jpg\" border=\"0\" /></p>\r\n<p><br /><br />Tác giả: Bác Sĩ Trần Đại Sỹ<br /><br />Tài liệu gồm hai phần chính:<br /><br />Phần 1. Nghiên cứu tổng quát<br /><br />Phần 2. Biện chứng và dược trị</p>', '1', '5', '0', '22', '2010-05-17 14:32:57', '62', '', '2010-05-17 15:07:54', '62', '0', '0000-00-00 00:00:00', '2010-05-17 14:32:57', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', 'Phong Thấp', 'Điều trị bệnh Phong Thấp Bằng Y Học Á-Châu ', '0', '9', 'robots= Điều trị bệnh Phong Thấp Bằng Y Học Á-Châu \nauthor=Trần Đại Sỹ');
INSERT INTO `jos_content` VALUES ('148', 'Thuốc cảm lạnh An Nhân', 'thuc-cm-lnh-an-nhan', '', '<p style=\"text-align: center;\"> </p>\r\n<p> </p>\r\n<p> </p>', '', '-2', '7', '0', '318', '2010-05-08 13:27:13', '62', '', '2010-05-09 07:38:55', '62', '0', '0000-00-00 00:00:00', '2010-05-08 13:27:13', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '0', '', '', '0', '5', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('75', 'NƯỚC NGÂM CHÂN SALUS', 'nc-ngam-chan-salus', '', '', '\r\n<p style=\"text-align: center;\"><img src=\"images/anhthuoc/untitled-1.jpg\" border=\"0\" width=\"400\" height=\"331\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">Salus Relaxo được gọi là sản phẩm Chăm sóc Bàn chân, sản phẩm có dạng dung dịch được dùng để ngâm chân, bàn chân là nơi có hơn 60 huyệt đạo thông với 360 huyệt đạo trên cơ thể, còn gan bàn chân là nơi phản ánh sức khỏe của con người, nó còn được coi là “trái tim” thứ 2 của cơ thể. Chăm sóc bàn chân cũng là chăm sóc sức khỏe cho toàn thân.<br /><br /><br />Ngâm chân với Salus Relaxo giúp tăng cường lưu thông huyết mạch, làm dãn các cơ bắp, tạo cho các giây thần kinh hoạt động mạnh mẽ, giảm mệt mỏi. Đây là một sản phẩm chăm sóc sức khỏe truyền thống của người Dao đỏ có nguồn gốc từ thiên nhiên và đang được khách du lịch nước ngoài rất ưa chuộng tại Sapa. Sản phẩm sử dụng công thức phát triển bởi Bộ môn Thực vật – Trường Đại học Dược Hà Nội từ bài thuốc cổ truyền dân tộc Dao đỏ, Tả Phìn, Sapa. Là sự kết hợp hài hòa giữa công nghệ kỹ thuật cao với các nguyên liệu tự nhiên quý hiếm như :<br /><br />Sambucus javanica, Cinnamomum cassia Blume, Scheffera, Elsholtzia<br />Cây cơm cháy (Sambucus javanica )<br />- Cành, lá tắm cho phụ nữ mới sinh nở<br />- Quả, hoa, vỏ làm thuốc lợi tiểu, ra mồ hôi, nhuận tràng<br />- Quả ngâm rượu uống chữa thấp khớp<br />Cây quế (Cinnamomum cassia Blume)<br />- Quế nhục chữa bệnh do lạnh như lạnh chân tay, đau bụng trúng thực, phong tê bại, ỉa chảy<br />- Quế chi chữa cảm lạnh, sốt không ra mồ hôi<br />Cây chân chim (Scheffera sp.)<br />- Chữa đau lưng, nhức xương, tê bại chân tay, phù thũng<br />Cây chùa dù (Elsholtzia penduliflora W.W.Sm.)<br />- Trị viêm họng, cảm, viêm phổi, viêm tuyến sữa</p>', '1', '9', '0', '294', '2010-04-22 16:45:51', '62', '', '2010-05-07 15:09:04', '62', '0', '0000-00-00 00:00:00', '2010-04-22 16:45:51', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '7', '0', '1', 'cơm cháy, Sambucus javanica, quế, Cinnamomum cassia, Quế nhục, Scheffera, Cây chân chim, chùa dù, Elsholtzia penduliflora, NGÂM CHÂN', 'NƯỚC NGÂM CHÂN SALUS', '0', '34', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('69', 'Dung dịch vệ sinh phụ nữ Dạ Hương', 'ga-trng-nng-st-t', '', '', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/Thuoc/dungdichvesinhphunudahuong.gif\" border=\"0\" width=\"480\" /></p>\r\n<p style=\"text-align: justify;\"><strong>Đặc điểm:</strong><br /><br /><br />Là sản phẩm chuyên dùng để chăm sóc và vệ sinh vùng kín (âm hộ) phụ nữ. Công thức Dạ Hương được nghiên cứu, xây dựng dưới sự tham vấn của các Bác sỹ chuyên khoa Phụ sản và các Dược sỹ chuyên ngành bào chế. Kết hợp các thành phần tự nhiên Dạ Hương an toàn, không khô rát, phù hợp với sinh lý vùng kín và không ảnh hưởng tới pH sinh lý âm đạo.<br /><br />- Dạng dung dịch tiện dụng, không phải pha loãng trước khi sử dụng.<br /><br />- Được bào chế đậm đặc nên dùng tiết kiệm, được nhiều lần.<br /><br /><br />Dạng bào chế và trình bày: Dạng gel, chai 100ml, chai 120 ml (có vòi bơm)<br /><br /><br /><strong>Thành phần:</strong><br /><br />Muối tinh khiết (NaCl) 0,9%; Lô hội (Aloe vera) 0,01%; Tinh dầu Bạc hà 0,085%; Tinh dầu Bách lý hương 0,005%; Acid Lactic 0,05%; Vitamin E 0,01%; Hương liệu; Các thành phần khác vừa đủ 100ml.<br /><br /><br /><strong>Công dụng:</strong><br /><br /><br />Làm sạch nhẹ nhàng, khử mùi hôi, bảo vệ vùng kín, ngăn ngừa vi trùng gây bệnh viêm nhiễm phụ khoa, mang lại cảm giác tự tin với hương thơm quyến rũ.<br /><br />- Vệ sinh vùng kín hàng ngày, vệ sinh vùng kín thời kỳ kinh nguyệt, thai nghén, hậu sản.<br /><br />- Vệ sinh bộ phận sinh dục ngoài cho cả nam, nữ trước và sau khi quan hệ tình dục.<br /><br />- Hỗ trợ điều trị viêm nhiễm phụ khoa (sử dụng phối hợp trong phác đồ điều trị): Viêm âm đạo, viêm âm hộ, ngứa âm hộ, huyết trắng…<br /><br /><strong><br />Liều dùng, cách dùng:</strong><br /><br />- Làm ướt vùng kín, lấy 2-3 ml dung dịch vào lòng bàn tay, thoa rửa nhẹ vùng kín trong 1 phút, sau đó rửa lại thật kỹ bằng nước sạch.<br /><br />- Nên dùng hàng ngày, nhất là thời kỳ kinh nguyệt, hậu sản.<br /><br />- Trong những ngày hành kinh, tùy mức độ huyết ra nhiều hay ít mà rửa âm hộ từ 2-4 lần/ngày.<br /><br /><br /><strong>Bảo quản:</strong> Để nơi thoáng mát.<br /><strong><br />Tiêu chuẩn:</strong> TCCS<br /><strong><br />Hạn dùng: </strong>36 tháng kể từ ngày xuất xưởng.<br /><strong><br />Lưu ý:</strong> Sản phẩm này chỉ dùng để rửa ngoài, không dùng để thụt rửa âm đạo, không được uống.<br /><strong><br />SĐK:</strong> 1221/07/QLD-MP<br /><br />ĐỂ XA TẦM TAY TRẺ EM<br /><br />ĐỌC KỸ HƯỚNG DẪN SỬ DỤNG TRƯỚC KHI DÙNG</p>', '1', '9', '0', '294', '2010-04-02 04:23:07', '62', '', '2010-05-08 03:28:36', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:23:07', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '7', '', '', '0', '25', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('70', 'BOGANIC', 'nga-ra-mt-tau-chien-tang-hinh', '', '', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/Thuoc/boganic.jpg\" border=\"0\" /></p>\r\n<p><strong>Trình bày:</strong><br /><br />Viên bao đường: - Hộp 2 vỉ x 20 viên - Hộp 5 vỉ x 20 viên Viên bao film: - Hộp 2 vỉ x 20 viên - Hộp 5 vỉ x 20 viên Viên nang mềm: - Hộp 5 vỉ x 10 viên.<br /><br />Thành phần:<br /><br />Cao Actiso<br /><br />Cao biển súc<br /><br />Bột bìm bìm biếc<br /><br />Tá dược...vđ... 1 viên<br /><strong><br />Chỉ định:</strong><br /><br />- Dùng cho những người thiểu năng gan, viêm gan gây mệt mỏi, khó tiêu, vàng da, mụn nhọt, lở ngứa, bí đại tiểu tiện, táo bón.<br />- Giải độc, chống dị ứng. Đặc biệt suy giảm chức năng gan do dùng nhiều bia rượu. - Xơ vữa động mạch, mỡ trong máu cao.<br /><br /><strong>Liều dùng-cách dùng:</strong><br /><br />* Viên bao đường, bao phim:<br /><br />- Người lớn: mỗi lần 2-4 viên, ngày 3 lần.<br />- Trẻ em: mỗi lần 1-2 viên, ngày 3 lần.<br /><br />* Viên nang mềm:<br /><br />- Người lớn: mỗi lần 1 – 2 viên, ngày 3 lần.<br /><br />- Trẻ em trên 8 tuổi: mỗi lần 1 viên, ngày 3 lần.<br /><br /><strong>Chống chỉ định:</strong><br /><br />Mẫn cảm với bất cứ thành phần nào của thuốc.<br /><br /><strong>Hạn sử dụng:</strong><br />24 tháng<br /><br /><strong>Chứng nhận:</strong><br />TCCS</p>', '1', '9', '0', '294', '2010-04-06 09:03:03', '62', '', '2010-05-08 13:30:34', '62', '0', '0000-00-00 00:00:00', '2010-04-06 09:03:03', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '6', '', '', '0', '27', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('154', 'DƯỢC PHẨM ÍCH NHÂN', 'dc-phm-ich-nhan', '', '<p>\r\n', '\r\n<img src=\"http://danhba.bacsi.com/user_media/logo/images/4584.jpg\" border=\"0\" width=\"300\" height=\"300\" /></p>', '1', '7', '0', '322', '2010-05-11 06:34:07', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-05-11 06:34:07', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('155', 'CÁ NGỰA', 'ca-nga', '', '', '\r\n<p style=\"text-align: center;\"><img src=\"images/random_images/200px-seahorse_skeleton_macro_8_-_edit.jpg\" border=\"0\" width=\"200\" height=\"267\" /></p>\r\n<p style=\"text-align: center;\"><strong>CÁ NGỰA (海马)<br />Hippocampus<br /></strong></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><strong>Tên khác:</strong> Hải mã, Thủy mã.</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><strong>Tên khoa học:</strong> Hippocampus kelloggi Jordan et Snyder (Khắc thị hải mã), Hippocampus histrix Kaup (Thích hải mã), Hippocampus kuda Bleeker (Đại hải mã), Hippocampus tricumalatus Leach (Tam ban hải mã)..., họ Hải long (Syngnathidae).<strong> </strong></p>\r\n<p style=\"text-align: justify;\"><strong><br />Bộ phận dùng: </strong>Vị thuốc là toàn thân bỏ ruột phơi khô của một số loài Cá ngựa: Hippocampus kelloggi Jordan et Snyder (Khắc thị hải mã), Hippocampus histrix Kaup (Thích hải mã), Hippocampus kuda Bleeker (Đại hải mã), Hippocampus tricumalatus Leach (Tam ban hải mã)..., họ Hải long (Syngnathidae).</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Mô tả:</strong> Cá ngựa có thân hình hơi dẹt, dài và cong. Toàn thân dài khoảng 15 - 20 cm, có khi hơn; phần phình to ở giữa thân rộng từ 2 - 4 cm; màu vàng nhạt hoặc nâu đen. Thân và đuôi chia thành các ô hình chữ nhật, các ô này được tạo bởi các đốt xương vòng song song; ở đỉnh các đốt thân có các gai nhọn, thân có 7 gờ dọc, đuôi cuộn lại ở cuối và chỉ có 4 gờ. Đầu hơi giống hình đầu ngựa, giữa đầu có các gai to nhô lên. Miệng dài như một cái vòi, không có răng, hai mắt lõm sâu. Thể nhẹ, chất xương, cứng rắn, hơi có mùi tanh, vị hơi mặn. Cá ngựa loại to, đầu đuôi đầy đủ, không có sâu mọt là loại tốt.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Phân bố:</strong> Vùng biển nước ta có một số loài Cá ngựa đang được khai thác và sử dụng.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Thu hái:</strong> Hai mùa hạ, thu, bắt cá ngựa về rửa sạch, loại bỏ màng da, bỏ ruột, uốn cong đuôi rồi phơi khô, thường buộc lại từng đôi một (1 con đực, 1 con cái).</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Tác dụng dược lý:</strong><br />Hoạt tính nội tiết: Các chất ly trích tử hải mã bằng alcohol có hoạt tính kéo dài thời gian rụng trứng, tăng trọng lượng của tử cung và buồng trứng nơi chuột cái thử nghiệm. Chất này có các hoạt động loại androgen trên các tuyến nhiếp hộ và dịch hoàn. Các hoạt tính này yếu hơn Dâm dương hoắc (Ying-yang-huo= Herbi Epimedii), Xà xàng tử (She chuang zi= Fructus Cnidii Monnieri) nhưng mạnh hơi chất ly trích từ Tắc kè. (Dan Bensky, Chinese Herbal Medicine Materia Medica trang 356).<br />Tác động về tình dục: Chất ly trích hải mã bằng alcohol giúp kéo dài thời gian ân ái nơi chuột thữ nghiệm.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Thành phần hoá học chính:</strong> Protid, lipid.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Công năng:</strong> Ôn thận tráng dương, tán kết tiêu sưng</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Công dụng:</strong> Thuốc bổ, kích thích sinh dục, chữa liệt dương, phụ nữ khó mang thai, đau lưng mỏi gối, báng bụng. Dùng ngoài chữa đinh độc, u nhọt.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Cách dùng, liều lượng</strong>: 4 - 10g một ngày. Dạng thuốc sắc, bột, rượu, thuốc hoàn.<br />Bào chế: Loại bỏ tạp chất, vụn nhỏ, khi dùng giã nát, tán bột. Thường vặt bỏ gai trên đầu, tẩm rượu, hơ hoặc sao kỹ với cám, tán nhỏ để dùng hoặc ngâm rượu với thuốc khác để uống.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Bài thuốc:</strong><br />+ Trị ho-suyễn, thở khò khè: Sắc 5 gram cá ngựa với 10 gram Đương quy trong 200 ml nước, đến khi còn 50 ml. Uống mỗi ngày.<br />+ Chữa sưng thận kinh niên: Dùng 1 con cá ngựa, rang khô đến khi chín vàng, tán thành bột. Lấy 1 quả thận heo, xẻ đôi rửa sạch, nhồi bột cá ngựa vào, cột chặt và hấp cách thủy. Ăn trong ngày, liên tục trong 2 tuần.<br />+ Chữa liệt dương: Ngâm trong 1 lít rược trắng hay vodka 30 gram bột cá ngựa, 30g ban long sâm, 20 g cốt toái bổ, 20 g long nhãn. Ngâm 5-7 ngày (hay lâu hơn càng tốt). Uống mỗi ngày 20-40 ml.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Ghi chú: </strong>Cần thận trọng khi dùng cho phụ nữ có thai.</p>', '1', '2', '0', '278', '2010-05-11 06:48:05', '62', '', '2010-05-16 13:23:33', '62', '0', '0000-00-00 00:00:00', '2010-05-11 06:48:05', '0000-00-00 00:00:00', '', '', 'tkh=Hippocampus kelloggi\nthv=Hải mã (海马)\nhtvvn=Hải long\nhtvkh=Syngnathidae\nkvlt=\ndvlt=động vật có xương sống\nbpd=\ntphh=acid hữu cơ,lipid\npltb=bổ dưỡng- bổ đắng\ntcdy=thuốc bổ dương\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '10', '0', '1', 'CÁ NGỰA, Hải mã, Thủy mã, Hippocampus', 'CÁ NGỰA', '0', '24', 'robots=CÁ NGỰA, Hải mã, Thủy mã, Hippocampus\nauthor=');
INSERT INTO `jos_content` VALUES ('71', 'Thuốc ho Bảo Thanh', 'goa-ph-en-la-ai', '', '', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/Thuoc/bao-thanh-dang-trong-bai-vi.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><strong>Thông tin sản phẩm:</strong><br /><br /><strong>Thành phần:</strong><br /><br />Ô mai 12,5g; Mật ong 25g; Xuyên bối mẫu 10g; Tỳ bà diệp 12,5g; Sa sâm 2,5g; Phục linh 2,5g; Trần bì 2,5g; Cát cánh 10g; Bán hạ 2,5g; Ngũ vị tử 1,25g; Qua lâu nhân 5,0g; Khoản đông hoa 2,5g; Viễn chí 2,5g; Khổ hạnh nhân 5,0g; Gừng 2,5g; Cam thảo 2,5g; Tinh dầu bạc hà 2,5mg và Các tá d­ược.<br /><br />Quy cách đóng gói và dạng bào chế:<br /><br />- Hộp 1 chai Siro 125ml.<br /><br />- Hộp 24 viên ngậm (Dạng kẹo ngậm Lozenge vị ngọt thơm, dễ dùng, chứa hàm lượng tối đa cao dược liệu trong một viên)<br /><br />Đặc điểm thành phần, tác dụng:<br /><br />Thuốc ho Bảo Thanh phối hợp 2 vị thuốc dân gian quen thuộc Ô mai - Mật ong và bài thuốc Đông y trị ho nổi tiếng của Trung Quốc \"Xuyên bối tỳ bà cao\".<br /><br />Ô mai:<br /><br />Ô mai không chỉ là món ăn quen thuộc, được nhiều người Việt Nam ưa chuộng mà còn là vị thuốc dân gian giúp trừ ho, tiêu đờm công hiệu, đặc biệt trong các trường hợp ho mãn tính, ho dai dẳng lâu ngày.<br /><br />Ghi nhận công dụng của Ô mai trong điều trị các chứng ho, Hải Thượng Lãn Ông có phân tích: Tạng phế sắc trắng, là bẩm thụ khí của hành Kim, nó như cái tán, cái lọng che chở cho các tạng khác, không thể chịu được bất kì một vật gì làm chướng ngại. Tỳ là gốc sinh đờm, Phế là đồ chứa đờm. Nếu đờm ở Phế nhiều thì khí nghịch lên mà gây thành ho. Phế là chỗ then chốt, cửa ngõ của toàn thân, không chỗ nào quan trọng hơn chỗ đó. Do vậy, bệnh phế khí nghịch, nhiều đờm không thể không tìm cách trị gấp. Hải Thượng Lãn Ông viết: Ô mai có vị chua tính liễm, có thể thăng, có thể giáng, giúp thuận khí chỉ ho, tiêu đờm. Điều đó khẳng định vai trò cốt yếu của Ô mai trong các bài thuốc trị ho, đặc biệt các chứng ho dai dẳng, lâu ngày không khỏi.<br /><br />Mật ong:<br /><br />Theo dân gian, mật ong là một món ăn ngon, có tác dụng bồi bổ cơ thể đồng thời giúp giảm ho. Mỗi sáng uống một ly nước pha mật ong giúp cơ thể khỏe mạnh, trẻ lâu, phòng ngừa được nhiều bệnh tật. Khi bị ho kéo dài khiến cơ thể mệt mỏi, suy nhược, dùng mật ong sẽ giúp phục hồi sinh lực, bệnh mau khỏi hơn.<br /><br />Từ hàng thế kỉ nay, mật ong vẫn là phương thuốc cổ truyền dùng trị ho và cảm lạnh. Công dụng này ngày càng được khoa học chứng minh và củng cố. Tiến sĩ Ian Paul, trưởng nhóm nghiên cứu trường đại học Dược bang Pennsylvania, Hershey (Mỹ), khi so sánh hiệu quả giảm ho của mật ong với Dextromethorphan (DM), một hoạt chất giảm ho được sử dụng phổ biến, đã kết luận: “Kết quả rõ rệt đến nỗi chúng tôi có thể khẳng định rằng mật ong tốt hơn hẳn các loại thuốc mua ở quầy”. Nghiêu cứu cũng được tiến hành trên trẻ nhỏ và cho kết quả tương tự: 105 trẻ từ 2 đến 18 tuổi, chia 2 nhóm: nhóm uống mật ong 30 phút trước khi đi ngủ và nhóm sử dụng DM có hương vị mật ong cũng 30 phút trước khi đi ngủ. Kết quả là những trẻ uống mật ong giảm được các cơn ho và co thắt hơn hẳn những trẻ sử dụng DM. Tiến sĩ Paul nói: “Sử dụng mật ong là một liệu pháp an toàn, hiệu quả mà các bậc cha mẹ nên sử dụng cho trẻ trên 1 tuổi khi chúng bị ho hay cảm cúm”.<br /><br />Mật ong còn có tác dụng kháng khuẩn tự nhiên và làm dịu niêm mạc hầu họng (do thành phần chứa acid Panthotenic và Albumin giúp phục hồi và tái tạo niêm mạc bị tổn thương: viêm, đau rát do ho kéo dài…). Vai trò của mật ong ngày càng được khẳng định trong hệ thống y học chính thống “Tổ chức y tế thế giới đã xem mật ong như một phương thuốc trị bệnh tiềm năng”.<br /><br /><strong>Bài thuốc \"Xuyên bối tỳ bà cao\":</strong><br /><br />Là bài thuốc Đông y trị ho nổi tiếng của Trung Quốc, được đưa vào Dược điển Trung Quốc, trở thành bài thuốc chính thống được sử dụng rộng rãi.<br /><br />\"Xuyên bối tỳ bà cao\" phối hợp các vị dược liệu theo bố cục chặt chẽ của một bài thuốc Đông y gồm Quân - Thần - Tá - Sứ, có tác dụng bổ trợ lẫn nhau, tăng cường công năng: Bổ phế - Trừ ho - Tiêu đờm.<br /><br /><strong>Bào chế và quản lý chất lượng:</strong><br /><br />Quá trình nghiên cứu bào chế thuốc ho cao cấp Bảo Thanh được thực hiện dưới sự tham vấn của các Lương y, Bác sĩ y học cổ truyền, Dược sĩ chuyên ngành bào chế. Công tác đảm bảo chất lượng được thực hiện xuyên suốt từ khâu tuyển chọn nguyên liệu, qui trình bào chế tới việc bảo quản và phân phối thành phẩm.Nguyên liệu làm thuốc được tuyển chọn kỹ, đảm bảo nguyên liệu sạch, an toàn, không có thuốc bảo vệ thực vật và hóa chất bảo quản. Qui trình sản xuất được giám sát chặt chẽ. Thuốc ho Bảo Thanh được đựng trong chai thủy tinh dày, kín, tối màu, đảm bảo chất lượng trong toàn khâu lưu kho và phân phối.<br /><br /><strong>Công năng</strong>:<br /><br />Bổ phế (Chữa tận gốc theo quan điểm Đông y)<br /><br />Trừ ho, tiêu đờm (Chữa triệu chứng - Chữa phần ngọn theo quan điểm Đông y)<br /><br /><strong>Chủ trị:</strong><br /><br />- Ho mãn tính, ho dai dẳng lâu ngày không khỏi<br /><br />- Ho do dị ứng thời tiết<br /><br />- Ho do cảm lạnh, cảm cúm<br /><br />- Ho gió, ho khan, ho có đờm<br /><br />- Hỗ trợ điều trị viêm họng, viêm phế quản<br /><br /><strong>Liều dùng, cách dùng:</strong><br /><br />- Trẻ em dư­ới 3 tuổi: ngày uống 3 lần, mỗi lần 5 ml.<br />- Trẻ em trên 3 tuổi: ngày uống 3 lần, mỗi lần 10 ml.<br /><strong>- Ngư­ời lớn: ngày uống 3 lần, mỗi lần 15 ml<br /><br />Tác dụng không mong muốn:</strong> Chưa nhận thấy tác dụng không mong muốn nào của thuốc<br /><br /><strong>Hạn dùng: </strong>24 tháng kể từ ngày sản xuất. Không dùng nếu thấy thuốc có hiện tượng mốc, hỏng hoặc có dấu hiệu khác lạ; đồng thời báo ngay cho nhà sản xuất biết.<br /><br /><strong>Bảo quản:</strong> Nơi khô mát, tránh ánh sáng.<br /><br /><strong>Tiêu chuẩn:</strong> TCCS.<br /><br /><strong>Lưu hành số:</strong> V184 – H12 – 10.<br /><br />Đọc kĩ hướng dẫn sử dụng trước khi dùng.<br /><br />Sản phẩm được phân phối tại các nhà thuốc trên toàn quốc.<br /><br /></p>', '1', '9', '0', '294', '2010-04-06 09:03:57', '62', '', '2010-05-08 03:32:08', '62', '0', '0000-00-00 00:00:00', '2010-04-06 09:03:57', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=thuốc nước\nt_ndt=hô hấp\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '5', 'Ô mai, Mật ong', 'Thuốc ho Bảo Thanh', '0', '15', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('151', 'Trường Bách Diệp', 'trng-bach-dip', '', '<p>\r\n', '\r\n</p>\r\n<p style=\"text-align: center;\"><img src=\"http://www.truongthopharma.com/home/Products/TBD_vn.bmp\" border=\"0\" width=\"450\" /></p>\r\n<p><strong>Thành phần</strong>:Bạch linh, cát cánh,tỳ bà diệp, tang bạch bì, ma hoàng, thiên môn, Bạc hà diệp, bán hạ, ô mai, cam thảo, bách bộ, tinh dầu bạc hà, ngũ vị tử<br /><strong>Đóng gói</strong>: Hộp 2 vỉ x12viên 120 hộp/kiện<br /><strong>Số đăng ký</strong>: V253-h12-10<br /> <strong>CÔNG DỤNG:</strong> Tiêu đờm, bổ phổi, sát trùng họng.<br />trị ho cảm, ho gió, ho khản, khản tiếng, ngứa rát cổ họng, viêm đau họng, viêm phế quản<br /><strong>LIỀU DÙNG:</strong><br />Người lớn 4-6 viên/ngày<br />Trẻ em 2-3 viên/ngày</p>', '1', '4', '0', '15', '2010-05-09 11:39:23', '62', '', '0000-00-00 00:00:00', '0', '62', '2010-05-11 06:26:04', '2010-05-09 11:39:23', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '8', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('152', '\"Sốc\" vì nấm và dưa cải nhiễm chất có thể giết người', 'qscq-vi-nm-va-da-ci-nhim-cht-co-th-git-ngi', '', '<p style=\"text-align: justify;\">Cơ quan chức năng của Trung Quốc vừa phát hiện nấm và dưa cải bị nhiễm chất lưu huỳnh điôxít trong đợt kiểm tra ngẫu nhiên mới đây tại quận Hoài Nhu. Theo số liệu do sở công nghiệp và thương mại Bắc Kinh đưa ra gần đây, cơ quan chức năng đã kết luận có 423 loại thực phẩm bị nhiễm chất hoá học qua đợt kiểm tra ngẫu nhiên, trong đó bao gồm cả rau, thịt và hoa quả.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/socvinamvaduacainhiemchatcothegietnguoi.jpg\" border=\"0\" width=\"480\" style=\"border: 0pt none;\" /></p>\r\n<p style=\"text-align: center;\"><em>Cơ quan chức năng đã phát hiện nhiều thực phẩm<br /> chứa hoá chất độc hại trong đợt kiểm tra vừa qua.</em><br /><br /></p>\r\n<p style=\"text-align: justify;\">Trong một đợt kiểm tra ngẫu nhiên chất lượng vệ sinh- an toàn thực phẩm tại Quận Hoài Nhu (Bắc Kinh), cơ quan chức năng đã phát hiện 3 loại nấm và cải bắp trồng tại Hoài Nhu bị nhiễm chất lưu huỳnh điôxít vượt ngưỡng cho phép. Nhân viên thanh tra đã yêu cầu ngừng bán những sản phẩm này.<br /><br />3 thương hiệu nấm có tiếng tại Bắc Kinh như Yunhong, Tianbao và Luze cũng như dưa cải Xingzhuangyuan đều không đáp ứng được những tiêu chuẩn mà nước này quy định đối với thực phẩm. Bởi, tất cả đều có chứa chất lưu huỳnh điôxít, có thể gây ảnh hưởng nghiêm trọng đến sức khoẻ.<br /><br />Kết quả kiểm tra được công bố rộng rãi trên website hd135.gov.cn, kèm tuyên bố người tiêu dùng có thể trả lại sản phẩm, cùng với biên lai đã mua hàng và nhận bồi thường từ nhà cung cấp<br /><br />Theo tiêu chuẩn mà Trung Quốc quy định, mức độ lưu huỳnh điôxít trong nấm không được quá 0,05g/kg. Tuy nhiên, chi tiết cụ thể nhiễm chất này với từng loại không được cấp trên trang web.<br /><br />Giáo sư Li Rong tại viện Dinh dưỡng và An toàn thực phẩm thuộc Trung tâm kiểm soát dịch bệnh nói: \"Lưu huỳnh điôxít đôi khi được thêm với mục đích tẩy trắng và nó được sử dụng trong nhiều loại thực phẩm\".<br /><br />Cô Zhang Jing, 29 tuổi thực sự bị sốc, vì thông tin từ cơ quan thanh tra được công bố. Cô nói thêm: \"Tôi nghĩ nấm trắng được bán là hoàn toàn tươi ngon, nhưng thực sự ngạc nhiên khi nấm bị nhiễm độc\".<br /><br />Ông Li Ning, một giáo sư tại viện Dinh dưỡng và An toàn thực phẩm cho biết: \"Một chút lưu huỳnh điôxít trong mức cho phép là an toàn, bởi vì nó tự phân giải bên trong cơ thể và sau đó được bài tiết qua nước tiểu\".<br /><br />Tuy nhiên, giáo sư Li cũng cảnh báo về việc mắt và mũi bị ảnh hưởng trong các trường hợp ngộ độc cấp tính, có thể dẫn đến ngạt và hôn mê, thậm chí tử vong.<br />Nếu dùng thực phẩm nhiễm lưu huỳnh điôxít một thời gian dài, có thể dẫn tới viêm mũi, viêm phế quản cũng như cản trở việc hấp thụ canxi của cơ thể.<br /> <br /><em><strong>Theo VTC</strong></em></p>', '1', '1', '0', '1', '2010-05-10 02:56:27', '62', '', '2010-05-15 09:38:09', '62', '0', '0000-00-00 00:00:00', '2010-05-10 02:56:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '5', 'nấm, giết người', 'Sốc vì nấm và dưa cải nhiễm chất có thể giết người', '0', '15', 'robots=nấm, giết người\nauthor=');
INSERT INTO `jos_content` VALUES ('72', 'Phụ Bì Khang', 'ph-bi-khang', '', '', '\r\n<p style=\"text-align: center;\"><br /> <img src=\"images/stories/Thuoc/phu-bi-khang.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\">Hỗ trợ điều trị mề đay cấp và mạn tính<br /><br />Đối tượng sử dụng: dùng cho người bị mề đay, bị mẩn đỏ thành từng đám trên da, ngứa ngáy khó chịu.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>- Cơ chế tác dụng:</strong><br /><br />Mề đay là tình trạng da nổi lên từng đám nhiều hoặc ít, không đều, màu hồng hoặc xanh trắng, các mụn thường tự biến mất và di chuyển, thường rất ngứa. Mề đay là một trong những bệnh ngoài da phổ biến tiến triển theo 2 thể bệnh khác nhau: Thể cấp tính và mãn tính. Theo Y học hiện đại, Mề đay xảy ra do những yếu tố dị nguyên (chất gây dị ứng: như thời tiết, thức ăn, lông động vật, phấn hoa, côn trùng...) tác động vào cơ thể. Việc điều trị phải loại bỏ nguyên nhân (dị nguyên) đồng thời điều trị triệu chứng (giảm mẩn ngứa, viêm). Bên cạnh đó phải tăng cường chức năng gan (giải độc) và chức năng thận (tăng đào thải các chất độc hại ra khỏi cơ thể) và tăng cường năng lượng tế bào giúp bảo vệ tế bào .<br /><br />PHỤ BÌ KHANG là sự phối hợp toàn diện các thành phần giúp điều trị triệu chứng giảm viêm, ngứa (cao nhàu); các thành phần giúp tăng cường chức năng giải độc của cơ thể (cao gan); các thành phần giúp tăng cường chức năng thận (cao nhàu) và tăng cường năng lượng tế bào, giúp bảo vệ tế bào ( L- carnitin fumarat ) . Nhờ vậy PHỤ BÌ KHANG giúp hỗ trợ phòng và điều trị hiệu quả các trường hợp mề đay cả cấp tính và mãn tính.<br /><br />Cao nhàu : có tác dụng thanh nhiệt, giải độc, bồi bổ sức khỏe, tăng cường khả năng miễn dịch, phục hồi các tế bào bị thương tổn suy yếu, chống viêm nhiễm, làm mụn nhọt mau lành, chóng lên da non, chống sung huyết, giảm đau nhức mệt mỏi cơ thể. (Cây thuốc và động vật làm thuốc Việt Nam- tập 2- trang 445)<br /><br />Cao gan : Được chiết xuất từ gan động vật, cao gan chứa nhiều chất dinh dưỡng như sắt, protein, các vitamin. Cao gan có tác dụng bổ máu, giúp tăng cường chức năng gan, tăng khả năng giải độc của cơ thể.<br /><br />L-carnitine fumarate : L- carnitine là 1 acid amin có trong cơ thể con người. Nó đóng vai trò then chốt trong việc vận chuyển các acid béo vào ty thể- nơi sản xuất năng lượng cho tế bào. Sự thiếu hụt L- carnitine có thể sẽ dẫn đến các biểu hiện thiếu năng lượng hay tình trạng mệt mỏi, nhược cơ. L-Carnitine đóng vai trò vô cùng quan trọng giúp cơ thể tự cân bằng năng lượng và tăng khả năng miễn dịch. Fumarate là 1 muối/ester tự nhiên được tạo ra từ acid fumaric có trong cơ thể người. Fumarate đóng 1 vai trò quan trọng trong chu trình Krebs- là chìa khoá của chu trình sản xuất năng lượng tế bào. Fumarate hỗ trợ một cách tích cực đối với tác dụng chuyển hoá năng lượng của L- carnitine.<br />Liều lượng:<br /> <br />Ngày uống 4-6viên, chia 2 lần, trước bữa ăn 30 phút.<br /><br />Nên dùng một đợt liên tục từ 2 đến 3 tháng để có kết quả tốt nhất.<br />Bảo quản:<br /> <br />Để nơi khô mát, tránh ánh sáng. Đậy nắp hộp sau khi sử dụng.<br /><br /></p>', '1', '9', '0', '294', '2010-04-16 08:10:34', '62', '', '2010-05-08 03:32:55', '62', '0', '0000-00-00 00:00:00', '2010-04-16 08:10:34', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=viên nang cứng,viên nang mềm\nt_ndt= kháng viêm giải độc\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '4', 'Cao nhàu, Cao gan', 'Phụ Bì Khang', '0', '14', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('150', 'Công ty cổ phần dược phẩm Nam Hà ', 'cong-ty-c-phn-dc-phm-nam-ha-', '', '<p>\r\n', '\r\n<img src=\"http://t1.gstatic.com/images?q=tbn:e_w9ZlJKSkNfkM:http://www.ecvn.com/ROOT/EntpUpload/2efffdfffdfffdfffd493b2162fffd1cfffd34fffd15fffd.jpg\" border=\"0\" width=\"145\" height=\"131\" /></p>', '1', '7', '0', '319', '2010-05-09 07:39:27', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-05-09 07:39:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '4', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('73', 'Hộ Tạng Đường', 'ho-tang-duong', '', '', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/Thuoc/ho-tang-duong.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><strong>SĐK:</strong> Hotangduong<br /><br /><strong>Dạng thuốc:</strong> viên nén bao phim<br /><br /><strong>Đóng gói: </strong> Mỗi vỉ có 10 viên nén bao phim màu trắng. Mỗi hộp có 3 vỉ.<br /><br />Giá kê khai:<br /><br /><strong>Chỉ định:</strong><br /><br /><strong><br />- Đặc tính sản phẩm</strong><br /><br /><br />Hộ Tạng Đường là sự phối hợp toàn diện giữa α-lipoic acid và các dược thảo có tác dụng điều hòa đường huyết, ngăn ngừa biến chứng và làm chậm tiến trình biến chứng tiểu đường. Nhờ vậy Hộ Tạng Đường giúp phòng ngừa biến chứng và hỗ trợ điều trị hiệu quả bệnh tiểu đường (týp I và týp II) cùng các biến chứng của nó.<br /><br /><br />α-lipoic acid (ALA): ALA là một chất chống oxi hóa mạnh. ALA có tác dụng tấn công các gốc tự do – sản phẩm thải ra khi cơ thể chuyển thức ăn thành năng lượng – giúp làm giảm các stress oxi hóa trong tế bào. ALA còn có tác dụng độc đáo là tái sử dụng các chất chống oxi hóa khác như vitamin C, vitamin E, Glutathione và tăng sản sinh Glutathione. Nhờ vậy, ALA có tác dụng bảo vệ mạch máu nhất là các mạch máu nhỏ ở võng mạc nên phòng ngừa bệnh võng mạc, ngăn ngừa tổn thương thận, tổn thương thần kinh ngoại biên &amp; xơ vữa động mạch. ALA dễ dàng đi qua hàng rào máu não nên có tác dụng bảo vệ não trong tai biến mạch máu não. Khi đường huyết tăng, ALA có tác dụng “dọn dẹp” glucose trong máu nên có tác dụng hỗ trợ cho các thuốc hạ đường huyết.<br /><br />Hoài sơn (Dioscorea persimlis) được coi là một vị thuốc bổ, chữa ăn uống kém tiêu, bệnh tiểu đường. khả năng thủy phân chất đường của men trong Hoài sơn rất cao do đó giúp hạ đường huyết.<br /><br />Câu kỷ (Lycium chinensis Mill.) được coi là vị thuốc bổ toàn thân, dùng cho các trường hợp bệnh nhân bị tiểu đường, sáng mắt, bổ thận, suy nhược thần kinh, mệt mỏi. Các thử nghiệm dược lý cho thấy câu kỷ có tác dụng bổ gan, hạ cholesteron huyết và tăng cường miễn dịch, hạ đường huyết.<br /><br />Nhàu (Morinda citrifolia L. ) có tác dụng thanh nhiệt, giải độc, giúp hạ huyết áp.<br /><br />Mạch môn (Ophiopogon japonicus) có tác dụng tăng huyết lượng động mạch vành trong thiếu máu cơ tim, giúp hạ đường huyết.<br /><br /><br /><strong>- Tác dụng:</strong><br /><br /><br />Hộ Tạng Đường có tác dụng chống oxi hóa nên giúp bảo vệ mạch máu nhất là các mạch máu nhỏ ở võng mạc, thần kinh &amp; cầu thận, chống xơ vữa động mạch. Ngoài ra, Hộ Tạng Đường còn giúp hạ đường huyết, cholesterol, huyết áp và tăng cường miễn dịch.<br /><br /><br /><strong>- Công dụng:</strong><br /><br /><br />Phòng ngừa và hỗ trợ điều trị các biến chứng của bệnh tiểu đường: Bệnh võng mạc, bệnh thần kinh ngoại biên , suy thận và các bệnh tim mạch &amp; đột quỵ do xơ vữa động mạch.<br /><br /><strong><br />Liều lượng:</strong><br /><br /></p>', '1', '9', '0', '294', '2010-04-19 14:26:25', '62', '', '2010-05-08 03:33:58', '62', '0', '0000-00-00 00:00:00', '2010-04-19 14:26:25', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=viên nén\nt_ndt=tim mạch-huyết áp\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '3', 'Hoài sơn, Dioscorea persimlis, Câu kỷ, Lycium chinensis, Nhàu Morinda citrifolia, Mạch môn Ophiopogon japonicus', 'Hộ Tạng Đường', '0', '12', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('74', 'Thuốc cảm lạnh An Nhân', 'thuc-cm-lnh-an-nhan', '', '', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/Thuoc/thuoccamlamannhan.gif\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><strong>Công thức bào chế:</strong> Cho 125 ml Dịch chiết dược liệu tương đương với:<br /><br />Gừng tươi 12.5g<br /><br />Bạch chỉ 31.25g<br /><br />Thảo ma hoàng 21.25g<br /><br />Quế chi 15g<br /><br />Cam thảo 8.75g<br /><br />Hòe hoa 8.75g<br /><br />Xuyên khung 8.75g<br /><br />Tá dược (Nipagin, Nipazol, đường kính, nước cất) vừa đủ 125 ml<br /><br />Dạng bào chế: Thuốc nước<br /><br /><strong>Qui cách đóng gói:</strong> Hộp 1 chai 125 ml<br /><br /><strong>Chủ trị:</strong><br /><br />Các trường hợp cảm lạnh, cảm phong hàn với các biểu hiện: sốt nhẹ, sợ lạnh, sợ gió, nhức đầu, ngạt mũi hoặc chảy nước mũi trong, sưng họng, ho có đờm trắng loãng, người mệt mỏi, rêu lưỡi trắng, không ra mồ hôi…<br /><strong><br />Liều dùng:</strong><br /><br />- Người lớn (từ 15 tuổi trở lên): Ngày 3 lần, mỗi lần 20 – 25 ml<br /><br />- Trẻ em từ 6 – 15 tuổi: ngày 2 lần, mỗi lần 10 ml<br /><strong><br />Cách dùng:</strong></p>\r\n<p style=\"text-align: center;\" align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/ddc3c0aadaaf4f678a86d76d167afb6a-annhan.gif/annhan.gif\" border=\"0\" width=\"500\" height=\"188\" /></strong></span></span></p>\r\n<p style=\"text-align: justify;\">- Lấy thuốc vào cốc (theo liều hướng dẫn) thêm khoảng 200 ml nước sôi<br /><br />- Uống thuốc khi còn nóng, uống xong đắp chăn ấm cho ra mồ hôi<br /><br /><strong>Chống chỉ định:</strong><br /><br />Không dùng thuốc cho phụ nữ có thai, phụ nữ cho con bú, trẻ em dưới 6 tuổi, người suy tim, người phong nhiệt hay người mẫn cảm với bất cứ thành phần nào của thuốc.<br /><br /><strong>Những lưu ý đặc biệt và cảnh báo trước khi sử dụng:</strong><br /><br />- Không dùng thuốc quá hạn sử dụng, thuốc bị mốc, đọc kĩ hướng dẫn trước khi dùng<br /><br />- Những người mắc chứng cảm mạo phong nhiệt, với các triệu chứng: sốt, đỏ mặt, miệng khô, khát nước, ho ra đờm vàng, họng sưng đỏ…không nên dùng.<br /><br />- Những người mắc bệnh cao huyết áp, bệnh huyết khối động mạch vành, bệnh tuyến giáp không nên dùng.<br /><strong><br />Tác dụng không mong muốn:</strong><br /><br />Chưa nhận thấy tác dụng không mong muốn nào của thuốc (chú ý: nếu gặp phải tác dụng không mong muốn nào thì báo ngay cho bác sĩ hoặc nhà sản xuất)<br /><br />Hạn dùng:<br /><br />24 tháng kể từ ngày sản xuất. Không dùng nếu thấy có hiện tượng mốc, hỏng hoặc có dấu hiệu khác lạ, đồng thời báo ngay cho nhà sản xuất biết.<br /><strong><br />Bảo quản:</strong> Nơi khô mát<br /><br /><strong>Tiêu chuẩn áp dụng</strong>: TCCS<br /><strong><br />SĐK:</strong> V1097 – H12 - 10</p>', '1', '9', '0', '294', '2010-04-21 17:40:12', '62', '', '2010-05-08 13:29:44', '62', '0', '0000-00-00 00:00:00', '2010-04-21 17:40:12', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=thuốc nước\nt_ndt=hạ nhiệt- cảm sốt\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '2', 'Gừng tươi, Bạch chỉ, ma hoàng, Quế chi, Cam thảo, Hòe hoa, Xuyên khung', 'Thuốc cảm lạnh An Nhân', '0', '15', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('153', 'Công ty Cổ Phần Dược Danapha ', 'cong-ty-c-phn-dc-danapha-', '', '', '\r\n<p><img src=\"http://doanhnhan.kinhtequocgia.com/home/upload/2009/11/12/697747danapha.gif\" border=\"0\" width=\"300\" height=\"300\" /></p>', '1', '7', '0', '320', '2010-05-10 15:00:18', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-05-10 15:00:18', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('76', 'Đông y điều trị viêm khí quản mạn tính', 'ong-y-iu-tr-viem-khi-qun-mn-tinh', '', '<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><span id=\"lblMain\"> </span></span></span></p>\r\n<p style=\"text-align: justify;\">Bệnh viêm khí quản mạn tính thường do người bệnh khi bị viêm khí quản cấp tính nhưng không điều trị kịp thời hoặc điều trị không dứt điểm nên chuyển thành mạn tính. Triệu chứng chủ yếu là ho không và ho có đờm kéo dài, đôi khi kèm theo thở suyễn. Khi mới phát bệnh thường nhẹ, sau khi ho thường nhổ ra đờm loãng có bọt trắng, loại đờm này rất dính thường khó nhổ ra ngoài. Bệnh nhân có thể sốt cao, lạnh run, ho nhiều, đờm nhiều quánh hoặc vàng đặc. Một số ít bệnh nhân bị nặng thường dẫn tới chứng giãn nở khí quản, bệnh tim.</p>\r\n', '\r\n<p style=\"text-align: center;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><span id=\"lblMain\"><img src=\"images/stories/tintucsukien/caythuoc/mahoang.jpg\" border=\"0\" /></span></span></span></p>\r\n<p style=\"text-align: center;\"><em>Ma hoàng</em></p>\r\n<p style=\"text-align: justify;\">Đông y cho rằng bệnh này có quan hệ với thể chất và công năng tạng phủ, khi điều trị cần chú ý điều trị công năng của tỳ và thận. Xin giới thiệu một số bài thuốc chữa viêm khí quản mạn tính:<br /><br />Bài 1: Ma hoàng 1,5g, lê 1 quả bỏ hạt đi cho ma hoàng vào, đem chưng cách thuỷ, ăn lê và uống nước, mỗi buổi tối dùng một lần. Dùng cho bệnh nhân ho nhiều, khó khạc đờm.<br /><br />Bài 2: Thịt dê 500g, tiểu mạch 60g, gừng sống 9g, muối vừa đủ dùng. Cách làm: Tất cả cho vào nồi, thêm nước vừa đủ hầm thành cháo loãng, khi chín nêm muối vừa ăn, chia thành hai phần dùng buổi sáng sớm và chiều tối. Dùng trong 1 tháng.<br /><br />Bài 3: Rễ cây trà 100g, gừng 50g, mật ong đủ dùng. Cách làm: Rễ cây trà và gừng sắc lấy nước, đổ mật ong khuấy đều. Mỗi lần uống 20ml, ngày uống 2 lần. Công dụng: nhuận phổi, trừ đờm, ngăn ho. Chủ trị viêm khí quản nhánh mạn tính.<br /><br />Bài 4: Gừng 6g; hạnh nhân, tang bạch bì, mỗi thứ 10g; đảng sâm 30g; đại táo 7 quả; sữa bò tươi 200ml, gạo tẻ 100g. Cách làm: Ngâm hạnh nhân, bóc bỏ lớp ngoài vỏ, vớt ra để ráo, tán nhuyễn hòa vào sữa bò, lọc lấy nước. Đảng sâm, tang bạch bì, gừng, táo, sắc lấy nước, cho gạo vào nấu cháo. Khi cháo chín, đổ nước hạnh nhân vào khuấy đều. Ăn lúc bụng đói, không hạn chế số lượng. Công dụng: Thanh phế, hạ khí, chặn ho, ngăn suyễn. Chủ trị chứng ho do viêm khí quản nhánh gây ra, nặng ngực, thở mệt, nhiều đờm...<br /><br />Bài 5: Cá diếc sống 250g, bột trần bì 30g, đường đỏ 20g. Cách làm: Rửa sạch cá, nhét trần bì và đường đỏ vào bụng cá đem hấp cách thuỷ, ăn cả nước và cái, mỗi ngày một lần, ăn trong 3 ngày liền.<br />Ngoài ra nếu đờm nhiều, khó khạc, có thể dùng phương pháp xông đơn giản để khử đờm: Lấy một chiếc cốc to, đổ vào một lượng nước sôi nửa cốc, người bệnh ghé mũi vào vào cốc, miệng ở bên ngoài cốc, dùng khăn mặt trùm cả đầu và cốc. Hít khí nóng vào mũi, thở khí đục bằng miệng. Mỗi lần làm khoảng 20 phút, luôn giữ cho nước nóng. Nếu ngứa họng hay ho có thể cho thêm một ít loại dầu có tinh chất bạc hà vào nước để xông.</p>\r\n<p style=\"text-align: justify;\"><br /><strong><em>Theo SK&amp;ĐS</em></strong></p>', '1', '1', '0', '2', '2010-04-22 16:56:51', '62', '', '2010-05-15 09:45:40', '62', '0', '0000-00-00 00:00:00', '2010-04-22 16:56:51', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '10', '0', '18', 'Đông y, viêm khí quản, mạn tính', 'Đông y điều trị viêm khí quản mạn tính', '0', '11', 'robots=Đông y, viêm khí quản, mạn tính\nauthor=');
INSERT INTO `jos_content` VALUES ('77', 'Hải sản: ăn đúng cách, không khóc nửa đêm', 'hi-sn-n-ung-cach-khong-khoc-na-em', '', '<p style=\"text-align: justify;\">Hải sản thường giàu đạm và các dưỡng chất cần thiết khác. Hải sản cũng rất ít chất béo no và chứa axit béo không no omega-3, là chất béo thiết yếu cho cơ thể. Hải sản còn giàu vitamin (đặc biệt là vitamin nhóm B) và khoáng chất (canxi, kẽm, sắt, đồng, kali…). Do đó, hải sản sẽ góp phần đa dạng cho chế độ ăn cân đối, khoẻ mạnh và giúp trẻ tăng trưởng. Tuy nhiên, hải sản cũng ẩn chứa một số nguy cơ đối với sức khoẻ.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/anhaisankhongdungcach.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\">Trong số các loại hải sản, cá biển là thực phẩm tuyệt vời đối với sức khoẻ do chứa đạm có giá trị sinh học cao với tỷ lệ cân đối, phù hợp với cơ thể người. Cá còn rất giàu chất béo không no omega-3 cần để tạo màng tế bào thần kinh và có tác dụng phòng chống bệnh tim mạch. Do đó, ăn cá ít nhất 3 lần/tuần rất có lợi cho sức khoẻ. Gan cá còn rất giàu vitamin A và D. Hàu thì rất giàu kẽm là thành phần của hơn 300 enzyme bên trong cơ thể, là chất cần thiết để trẻ tăng trưởng, và cũng rất cần để phát triển hệ sinh dục. Hầu hết các loại hải sản đều giàu canxi (nhất là các loại cá nhỏ ăn được cả xương) nên rất cần cho xương và răng. Nhưng nếu không biết lựa chọn, bảo quản, chế biến hải sản đúng cách và ăn có mức độ thì có thể “lợi bất cập hại”.<br /><br /><br />Lượng cholesterol trong hải sản thường thấp so với các thực phẩm khác như thịt heo, bò, gia cầm và nội tạng động vật (gan, cật, lòng…). Tuy nhiên, lượng cholesterol trong từng loại hải sản rất khác nhau và cao nhất là trong tôm và mực (trên dưới 200mg cholesterol/100g tôm hoặc mực), kế đến là cua (khoảng 100mg cholesterol/100g cua không tính vỏ). Trong khi đó, lượng khuyến cáo cho một người bình thường khoẻ mạnh là không quá 300mg/ngày. Người có cholesterol trong máu cao cần hạn chế lượng cholesterol trong chế độ ăn không quá 100mg/ngày. Người thừa cân – béo phì thường có nguy cơ cholesterol trong máu cao cũng không nên ăn “thoải mái” các loại hải sản như tôm, mực, cua.<br /><br />Các món ăn từ hải sản cũng là những thực đơn “kiêng kỵ” đối với bệnh gout, căn bệnh viêm khớp cấp do tăng axit uric trong máu và gây lắng đọng các thể purin ở khớp (thường ở ngón chân cái). Đây là căn bệnh được mệnh danh là “bệnh nhà giàu” do chế độ ăn nhiều thịt, hải sản, và uống rượu bia làm tăng axit uric trong máu. Người thừa cân, béo phì nguy cơ bị gout cũng cao. Nếu không tiết chế kịp thời thì đến một lúc nào đó sẽ “bật khóc trong đêm” do cơn đau khớp đến đột ngột giữa giấc ngủ!<br /><br />Cách chế biến hải sản cũng có thể gây bất lợi cho cơ thể. Hải sản chế biến chưa chín hẳn (gỏi cá sống, hàu sống, sò, mực nướng…) có thể ẩn chứa vi trùng và ký sinh trùng. Đó là nguyên nhân của không ít trường hợp nhiễm trùng đường ruột khi ăn hải sản. Ngày nay, khi môi trường ngày một ô nhiễm thì một nguy cơ nữa phải kể đến khi ăn nhiều hải sản là khả năng nhiễm kim loại nặng như thuỷ ngân.<br /><br />Theo Sài Gòn Tiếp Thị</p>', '1', '1', '0', '3', '2010-04-23 14:13:00', '62', '', '2010-05-15 14:15:49', '62', '0', '0000-00-00 00:00:00', '2010-04-23 14:13:00', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '8', '0', '16', 'Hải sản', 'Hải sản: ăn đúng cách, không khóc nửa đêm', '0', '8', 'robots=Hải sản\nauthor=');
INSERT INTO `jos_content` VALUES ('97', 'Công ty TNHH dược thảo Phúc Vinh', 'gian-hang-cong-ty-tnhh-dc-tho-phuc-vinh', '', '<p>Giới thiệu gian hàng <span lang=\"en-us\">Công ty TNHH dược thảo Phúc Vinh \r\n', '\r\n<img src=\"http://khoedepvietnam.com/quantrinoidung%5CIMAGES1%5Clogo_thanhvien%5Cpv.jpg\" border=\"0\" width=\"366\" height=\"366\" /></span></p>', '1', '7', '0', '309', '2010-04-27 14:27:45', '62', '', '2010-05-02 07:26:34', '62', '0', '0000-00-00 00:00:00', '2010-04-27 14:27:45', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('78', 'Amorvita Hải Sâm', 'amorvita-hi-sam', '', '', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"http://www.traphaco.com.vn/san-pham/atproductlist/atproductlist.2007-09-19.0574909861/atproduct.2007-10-26.6565803898/Photo_preview\" border=\"0\" /></p>\r\n<p>SĐK VNB-1397-04<br /><br />Hộp 2 vỉ x 10 viên nang<br /><br />Nhà  sản Xuất : Công ty cổ phần TRAPHACO<br /><br />Chỉ định:<br /><br />- Các trường hợp cần tăng cường sinh lực: Các vận động viên thể thao, người hoạt động ở cường độ cao, người làm việc trí óc căng thẳng.<br />- Nam giới yếu sinh lý.<br />- Các trường hợp suy nhược cơ thể, người mới ốm dậy, sau phẫu thuật, thiếu máu, người già yếu.<br />Chống chỉ định:<br /><br />- Mẫn cảm với thành phần của thuốc.<br />- Không dùng cho trẻ em<br />Chú ý đề phòng:<br /><br />Thận trọng: Khi dùng cho phụ nữ có thai.<br />Liều lượng:<br /><br />- Thông thường: 1viên/lần x 3lần/ngày.<br />- Nam giới yếu sinh lý: Liều khởi đầu (1-2 tháng đầu): 2viên/lần x 2-3 lần/ngày.<br />- Liều duy trì: 1viên/lần x 2-3lần/ngày hoặc theo chỉ dẫn của bác sỹ.</p>', '1', '4', '0', '15', '2010-04-24 11:12:06', '62', '', '2010-05-08 07:40:08', '62', '0', '0000-00-00 00:00:00', '2010-04-24 11:12:06', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=viên nang mềm\nt_ndt=bổ dưỡng\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '3', '', '', '0', '12', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('79', 'MA HOÀNG THANG (Thương hàn luận)', 'ma-hoang-thang', '', '<p><strong> </strong></p>\r\n<p><strong> </strong></p>\r\n', '\r\n<p>Thành phần:</p>\r\n<table border=\"0\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td>Ma hoàng</td>\r\n<td></td>\r\n<td>12</td>\r\n</tr>\r\n<tr>\r\n<td>Quế chi</td>\r\n<td></td>\r\n<td>8g</td>\r\n</tr>\r\n<tr>\r\n<td>Hạnh nhân</td>\r\n<td></td>\r\n<td>12g</td>\r\n</tr>\r\n<tr>\r\n<td>Chích thảo</td>\r\n<td></td>\r\n<td>4g</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><strong><img src=\"http://whatever.losito.net/images/ephedra-sinica.jpg\" border=\"0\" width=\"250\" height=\"165\" /></strong></p>\r\n<p style=\"text-align: justify;\"><em><strong><br />Cách dùng: </strong></em>Sắc uống ngày 3 lần, uống lúc thuốc nóng khi ra mồ hôi là được, không cần uống tiếp.<br /><br /><em><strong>Tác dụng:</strong></em> Phát hãn, giải biểu, tuyên phế, bình suyễn.<br /><br /><em><strong>Giải thích bài thuốc:</strong></em> Trong bài thuốc vị:<br /><br /> * Ma hoàng là chủ dược có tác dụng phát hãn, giải biểu, tán phong hàn, tuyên phế, định suyễn.<br /> * Quế chi phát hãn giải cơ, ôn thông kinh lạc làm tăng thêm tác dụng phát hãn của Ma hoàng và chứng đau nhức mình mẩy.<br /> * Hạnh nhân tuyên phế, giáng khí giúp Ma hoàng tăng thêm tác dụng định suyễn.<br /> * Chích thảo tác dụng điều hòa các vị thuốc làm giảm tính cay táo của Quế chi và làm giảm tác dụng phát tán của Ma hoàng.<br /><br /><em><strong>Ứng dụng lâm sàng: </strong></em>Thường dùng trong các trường hợp sau:<br /><br />1.     Đối với chứng ngoại cảm phong hàn, nghẹt mũi, ho hen, khó thở nhiều đàm có thể bỏ Quế chi gọi là bài Tam ảo thang (Hòa tể cục phương).<br /><br />2.     Trường hợp ngoại cảm, phong hàn thấp, sợ lạnh không ra mồ hôi, nhức mỏi cơ xương, gia Bạch truật để trừ thấp gọi là bài Ma hoàng gia Truật thang (Kim quỹ yếu lược).<br /><br />3.     Trên lâm sàng thường hay dùng bài Ma hoàng thang gia giảm để trị các chứng cảm mạo, cảm cúm, viêm đường hô hấp trên, hội chứng biểu thực, bài thuốc còn có tác dụng cả đối với những bệnh viêm phế quản mạn tính, hen phế quản, lên cơn ho suyễn lúc cảm lạnh.<br /><br /><strong>Chú ý lúc sử dụng:</strong> Bài thuốc có tác dụng phát hãn mạnh nên chỉ dùng trong trường hợp ngoại cảm phong hàn biểu thực, chứng không ra mồ hôi, đối với chứng biểu hư ra mồ hôi nhiều, ngoại cảm phong nhiệt, cơ thể hư nhược, bệnh sản phụ mới sanh, người bị bệnh mất nước, mất máu nhiều đều không nên dùng.<br /><br /><strong>Tài liệu tham khảo:</strong> Theo thử nghiệm kháng khuẩn các vị thuốc Ma hoàng, Quế chi, Cam thảo đều có tác dụng ức chế mạnh đối với virus cúm (theo Phương tể học).</p>', '1', '3', '0', '279', '2010-04-24 13:51:58', '62', '', '2010-05-18 07:51:01', '62', '0', '0000-00-00 00:00:00', '2010-04-24 13:51:58', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '14', '0', '17', '', '', '0', '20', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('87', 'Công ty Nata-Hoa Linh', 'cong-ty-nata-hoa-linh', '', '<p>Giới thiệu gian hàng Hoa Linh</p>\r\n<p> </p>\r\n', '\r\n<p><img src=\"http://t3.gstatic.com/images?q=tbn:shHvlZckGFHT8M:http://www.cimsi.org.vn/Images/ADV/Logo_Doitac_HoaLinhPharma.jpg\" border=\"0\" width=\"110\" height=\"78\" /></p>\r\n<p> </p>', '1', '7', '0', '300', '2010-04-26 13:58:37', '62', '', '2010-05-02 07:02:47', '62', '0', '0000-00-00 00:00:00', '2010-04-26 13:58:37', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '28', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('88', 'Công ty cổ phần Traphaco', 'cong-ty-c-phn-traphaco', '', '<p>Giới thiệu gian hàng Traphaco</p>\r\n', '\r\n<p><img src=\"http://t1.gstatic.com/images?q=tbn:JkGBKgRhMkuQQM:http://www.kls.vn/Images/ContentImages/200711/c926467a-4a19-4f28-a0f2-5f2055e55654.jpg\" border=\"0\" width=\"149\" height=\"150\" /></p>', '1', '7', '0', '301', '2010-04-26 14:04:26', '62', '', '2010-05-02 07:10:18', '62', '0', '0000-00-00 00:00:00', '2010-04-26 14:04:26', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '1', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('89', 'Công ty Cổ Phần Dược Phẩm Đông Dược', 'cong-ty-c-phn-dc-phm-ong-dc', '', '<p>Giới thiệu gian hàng Nam Dược</p>\r\n', '\r\n<p><img src=\"http://www.camnangthuoc.vn/news/images/member/namduoc7.jpg\" border=\"0\" width=\"120\" height=\"120\" /></p>\r\n<p> </p>', '1', '7', '0', '302', '2010-04-26 14:06:49', '62', '', '2010-05-02 07:13:07', '62', '0', '0000-00-00 00:00:00', '2010-04-26 14:06:49', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '4', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('80', 'Ké đầu ngựa - Vị thuốc trừ thấp, tiêu phong', 'ke-u-nga-v-thuc-tr-thp-tieu-phong', '', '<p style=\"text-align: justify;\">Ké đầu ngựa còn gọi là thương nhĩ, phắt ma, mác nháng. Bộ phận dùng làm thuốc thường là quả (ké đầu ngựa), có thể dùng cả cây.</p>\r\n', '\r\n<p style=\"text-align: justify;\">Theo Đông y, ké đầu ngựa vị ngọt, tính ôn, có ít độc; vào kinh phế, can. Có tác dụng khu phong chỉ thống, trừ thấp sát khuẩn. Dùng cho các trường hợp đau đầu, tắc ngạt mũi, viêm xoang mũi dị ứng xuất tiết; viêm mũi họng, đau nhức răng; đau co quắp tay chân, lở ngứa viêm da dị ứng; ngoài ra, có tác dụng chữa bướu cổ, làm ra mồ hôi.<br /><br />Liều dùng: 6 - 12g. Thường được sao vàng trước khi dùng để loại bỏ tác dụng độc hại (kích ứng dạ dày ruột, mẩn ngứa ngoài da).</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/kedaungua.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: justify;\"><strong>Một số bài thuốc chữa bệnh có dùng ké đầu ngựa:</strong><br /><br />Trừ thấp, giảm đau:<br /><br />+ Ké đầu ngựa 8g. Sắc uống. Dùng cho các chứng bệnh phong thấp, đau khớp, thiên về thấp tà, sưng đau tê bại. Đau nặng nhưng không di chuyển chỗ đau; ngoài ra còn dùng cho chứng nhức đầu do cảm lạnh.<br /><br />+ Ké đầu ngựa 10g, vòi voi 20g, lá lốt 10g, ngưu tất 10g. Các dược liệu tán vụn thành chè thuốc. Hãm với nước sôi, chia uống nhiều lần trong ngày. Chữa thấp khớp, viêm khớp.<br /><br />+ Ké đầu ngựa 12g, ngưu tất 16g, hy thiêm 16g, thổ phục linh 12g, cành dâu 12g, tỳ giải 12g, cà gai leo 12g, lá lốt 10g. Sắc uống, ngày 1 thang. Chữa viêm đa khớp tiến triển.<br /><br />Tuyên phế (giúp hô hấp), thông mũi:<br /><br />+ Ké đầu ngựa 8g, tân di 8g, bạch chỉ 12g, bạc hà 4g. Sắc uống. Dùng với chứng bệnh phổi chứa thấp trọc, khi chất đục đi ngược lên lỗ mũi gây tắc không thông, chảy nước mũi, viêm mũi, viêm xoang mũi.<br /><br />+ Cháo ké bạch chỉ: Ké đầu ngựa 20g, bạch chỉ 6g, hoàng kỳ 30g, kinh giới 10g, tế tân 4g, gạo tẻ 60g, đường trắng lượng thích hợp. Đem các dược liệu sắc lấy nước, cho vào nấu với gạo tẻ, khi cháo được cho thêm đường. Ngày ăn 1 lần, đợt 7 - 10 ngày. Dùng cho các bệnh nhân viêm xoang mũi họng, đau nhức đầu tắc mũi, ngạt mũi.<br /><br />+ Lợi đàm trà: Chi tử 20g, bạc hà 6g, ké đầu ngựa 12g, tân di 12g. Các dược liệu cùng tán vụn, đem pha hãm cùng với chè uống ngày 1 ấm. Đợt dùng 7 - 20 ngày. Dùng cho các trường hợp viêm mũi xuất tiết, đờm đặc vàng, niêm mạc mũi sưng phù nề, đau đầu, đau vùng cánh mũi.<br /><br />Tiêu phong, khỏi ngứa:<br /><br />+ Ké đầu ngựa 8g, địa phu tử 8g. Sắc uống. Trị lên sởi, ngứa phát ban, mụn lở loét.<br /><br />+ Ké đầu ngựa 10g, kinh giới 12g, kim ngân 10g, sài hồ 10g, bồ công anh 10g, bạc hà 8g, cam thảo nam 6g. Sắc uống. Dùng cho các chứng bệnh ngứa nổi ban, mụn, ngứa ngáy ngoài da.<br />Kiêng kỵ: Người huyết hư gây đau đầu choáng váng, đau mỏi toàn thân không được dùng. Dược liệu có độc nên chú ý liều dùng. Không dung dược liệu đã mọc mầm.<br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '2', '2010-04-24 14:21:41', '62', '', '2010-05-15 09:45:27', '62', '0', '0000-00-00 00:00:00', '2010-04-24 14:21:41', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '17', 'Ké đầu ngựa, thuốc trừ, tiêu phong', 'Ké đầu ngựa - Vị thuốc trừ thấp, tiêu phong', '0', '3', 'robots=Ké đầu ngựa, thuốc trừ, tiêu phong\nauthor=');
INSERT INTO `jos_content` VALUES ('81', 'Nga tuyên bố thực phẩm biến đổi gene là độc hại', 'nga-tuyen-b-thc-phm-bin-i-gene-la-c-hi', '', '<p style=\"text-align: justify;\">Trong một nghiên cứu độc lập mới đây, các nhà khoa học Nga phát hiện động vật ăn đậu nành biến đổi gene mất khả năng sinh sản.<br /><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span id=\"lblMain\"> \r\n', '\r\n</span></span></span></p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/ngatuyenbothucphamcogen.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\">Trong nghiên cứu, người ta nuôi các con chuột hamster mắn đẻ trong 2 năm bằng các loại đậu nành biến đổi gene (vốn được sử dụng rộng rãi trong nông nghiệp), chia làm 3 nhóm, tùy thuộc vào mức độ biến đổi gene nhiều hay ít của loại đậu mà chúng ăn.<br /><br />Một nhóm chuột khác (nhóm đối chứng) được cho ăn bằng đậu nguyên chất, chưa hề có biến đổi gene.<br /><br />“Chúng tôi lựa chọn vài nhóm chuột hamster, nuôi chúng thành đôi trong các lồng và cho chúng ăn thực phẩm biến đổi gene. Chúng tôi quan sát hành vi, tốc độ tăng cân và thời điểm sinh sản của chúng”, tiến sĩ Alexei Surov nói về các thí nghiệm được hợp tác thực hiện bởi Hiệp hội An ninh gene quốc gia và Viện Sinh thái và Các vấn đề tiến hóa.<br /><br />Ban đầu, người ta nhận thấy mọi việc rất suôn sẻ. Tuy nhiên, đến thế hệ con của chúng đã ghi nhận những ảnh hưởng khá nghiêm trọng.<br /><br />Tiếp tục được nuôi bằng chế độ ăn như cha mẹ chúng, các nhà nghiên cứu nhận thấy tốc độ tăng trưởng của các cặp chuột này chậm hơn, và trưởng thành muộn hơn.<br /><br />Khi thu thập con của thế hệ này để ghép đôi thành các cặp (là thế hệ thứ ba), nhóm nghiên cứu nhận thấy chúng không sinh nở nữa.<br /><br />“Điều đó chứng tỏ thế hệ chuột thứ ba đã mất khả năng sinh đẻ”, tiến sĩ Alexei Surov nói.<br /><br />Nhóm nghiên cứu còn phát hiện ra điều ngạc nhiên khác ở thế hệ chuột thứ ba này: lông mọc trong miệng chúng, dù chưa rõ nguyên nhân tại sao.<br /><br />Theo Voice of Russia, các chuyên gia không hiểu tại sao tình trạng hư hại này lại xảy ra khi các con vật ăn đồ biến đổi gene. Theo họ, cách duy nhất có thể hóa giải điều này là ngừng ăn các thực phẩm nói trên.<br /><br />Bởi thế, các nhà khoa học đã đề xuất đưa ra lệnh cấm sử dụng thực phẩm biến đổi gene cho đến khi chúng được kiểm nghiệm về an toàn sinh học.<br /><br />Kết luận của các chuyên gia Nga cũng trùng hợp với kết luận của các đồng nghiệp ở Pháp và Áo. Khi chứng minh được rằng ngô biến đổi gene gây hại cho động vật có vú, Pháp đã ngay lập tức cấm việc sản xuất và buôn bán sản phẩm này.<br />Tuy nhiên, nhóm nghiên cứu Nga cũng cho biết còn quá sớm để đưa ra kết luận về tính nguy hại của thực phẩm biến đổi gene, mà cần có các nghiên cứu chi tiết hơn nữa.<br /><em><strong>Theo VnExpress</strong></em><br /><br /></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span id=\"lblMain\"> </span></span></span></p>', '1', '1', '0', '1', '2010-04-24 14:26:20', '62', '', '2010-05-15 09:33:25', '62', '62', '2010-05-15 09:34:20', '2010-04-24 14:26:20', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '11', 'biến đổi gene', 'Nga tuyên bố thực phẩm biến đổi gene là độc hại', '0', '8', 'robots=biến đổi gene\nauthor=');
INSERT INTO `jos_content` VALUES ('82', 'Kinh nghiệm trị thủy đậu của Tuệ Tĩnh', 'kinh-nghim-tr-thy-u-ca-tu-tnh', '', '<p style=\"text-align: justify;\">Bệnh thuỷ đậu (còn gọi bệnh trái rạ) do virut gây ra, bệnh dễ lây trực tiếp qua đường hô hấp hoặc do tiếp xúc. Bệnh lành tính nhưng đôi khi để lại biến chứng nguy hiểm nếu không được điều trị đúng. Vì bệnh do virut nên hiện nay chưa có thuốc điều trị đặc hiệu. Xin giới thiệu kinh nghiệm trị bệnh của Danh y Tuệ Tĩnh.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/cadiec.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\">Cá diếc</p>\r\n<p style=\"text-align: justify;\">Khi có bệnh thuỷ đậu ở địa phương, ở các gia đình xung quanh nên tham khảo mấy bài thuốc sau cho trẻ uống để phòng ngừa, nếu có lên thuỷ đậu cũng nhẹ.<br /><br />- Đậu xanh 150g, đậu đỏ 140g, đậu đen 150g, cam thảo 15g. Nước vừa đủ, nấu chín đậu cho trẻ ăn tuỳ thích.  Ăn 7 ngày thì thôi.<br /><br />- Cá diếc 1 con, đánh vảy bỏ ruột, không cho dính nước lã, lấy rau mùi giã nhỏ cho một ít muối rồi dồn vào bụng cá. Dùng giấy ướt gói cá nhiều lớp vùi vào lửa than cho chín. Chờ cá nguội cho trẻ ăn.<br /><br />- Dây mướp phơi trong bóng râm cho khô, nấu nước tắm cho trẻ.<br /><br />Khi trẻ chớm phát sốt dùng tam đậu thang để kịp thời thanh hoả giải biểu ngay cho nhẹ: đậu xanh, đậu đỏ, đậu đen, lượng bằng nhau, nấu chín cho trẻ ăn đậu và uống nước. Hoặc dùng một trong các bài sau:<br /><br />- Cát căn 20g, tía tô 20g, cam thảo 10g. Sắc uống ấm trong ngày.<br /><br />- Chi tử 15g, rễ tranh 15g, tía tô 15g, cam thảo 6g, gừng sống 3 lát. Sắc uống.<br /><br />- Hoa mai phơi khô, tán nhỏ, giã  nhuyễn hoà mật ong làm viên bằng hạt ngô đồng cho trẻ uống. Trẻ 1 tuổi uống 1 viên và cứ thêm mỗi tuổi uống thêm 3 viên. Ngày uống 2-3  lần với nước ấm.<br /><br /><strong>Thuốc dùng khi lên đậu:</strong><br /><br />- Lúc đậu mọc: Cây nọc rắn, cỏ nhọ nồi, lá thanh táo, lá dâu tằm, lá rau má, măng lau, lá mũi mác, lá chân vịt. Các vị lượng bằng nhau, giã nát, hoà với nước, lọc bỏ bã, lau  khắp mình mẩy, ngày làm 2 lần. Chỉ dùng trong trường hợp mình nóng dữ dội, nốt đậu bầm tím.<br /><br />- Đậu mọc quá 3 ngày mà chưa hết sốt: Củ sắn dây 20g, đậu xanh 20g, lá chàm 20g, rễ tranh 20g, cam thảo 10g, gừng sống 3 lát, nước vừa đủ sắc uống. Tác dụng giải nhiệt để thúc cho đậu ra thì bệnh khỏi.<br /><br />- Trị đậu mọc không tốt, hắc hãm khát nước: Hạt củ cải nghiền nhỏ hoà với nước nóng mà uống. Hoặc vỏ quả vải sắc cho uống.<br /><br />- Thuốc tắm sau khi đậu thu áp: Bạc hà, lá từ bi, lá thanh táo, lá bồ hòn, kinh giới, củ nghệ, lá mần tưới đều băng nhau, nấu nước mà tắm.<br /><br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '2', '2010-04-25 13:16:48', '62', '', '2010-05-15 09:45:04', '62', '0', '0000-00-00 00:00:00', '2010-04-25 13:16:48', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '9', '0', '16', 'thủy đậu, Tuệ Tĩnh', 'Kinh nghiệm trị thủy đậu của Tuệ Tĩnh', '0', '15', 'robots=thủy đậu, Tuệ Tĩnh\nauthor=');
INSERT INTO `jos_content` VALUES ('159', 'Trĩ và thuốc chữa', 'tr-va-thuc-cha', '', '<p style=\"text-align: justify;\">Bệnh trĩ là bệnh dãn tĩnh mạch của vùng hậu môn trực tràng có tỷ lệ người mắc khá cao, nhất là những người lớn tuổi. Bệnh nhân mắc bệnh trĩ thường đi khám và điều trị rất muộn sau nhiều năm mắc bệnh vì bệnh tuy có ảnh hưởng tới cuộc sống nhưng không nặng nề nên bệnh nhân thường bỏ qua, đồng thời vì bệnh ở vùng kín đáo nên bệnh nhân thường ngại đi khám, nhất là phụ nữ.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/benhtrivacanhchuatri.jpg\" border=\"0\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\"><br /><strong>Vì sao mắc bệnh?</strong><br /><br />Cho đến nay, nguyên nhân chính của bệnh trĩ được xác định do thường xuyên tăng áp lực ổ bụng và một số bệnh toàn thân khác, có một số yếu tố thường được nhắc đến:<br /><br />Tư thế đứng: Trĩ gặp nhiều ở những người phải thường xuyên đứng lâu hay ngồi nhiều như nhân viên văn phòng, lái xe đường dài...<br /><br />Mắc bệnh lỵ và táo bón: ở những người này mỗi khi đại tiện phải rặn nhiều, khi rặn, áp lực trong ống hậu môn tăng lên khoảng 10 lần dễ gây ra bệnh trĩ.<br /><br />Tăng áp lực trong khoang ổ bụng: hay gặp ở những người lao động chân tay nặng nhọc, những người mắc bệnh viêm phế quản mạn tính...<br /><br />Ngoài ra, trĩ còn xuất hiện trong một số bệnh lý khác như xơ gan, u vùng hậu môn trực tràng và tiểu khung...<br /><br /><strong>Cách chữa và phòng tránh</strong><br /><br />Điều trị nội khoa: đây là lựa chọn ban đầu trong điều trị bệnh trĩ, tuy nhiên điều trị nội khoa thường được áp dụng khi trĩ ở độ 1 và 2.<br /><br />Vệ sinh tại chỗ bằng ngâm nước ấm 15 phút /lần x 2 - 3 lần/ngày.<br /><br />Sử dụng thuốc có tác dụng trợ tĩnh mạch, dẫn xuất từ flavonoid là chỉ định đầu tay. Thuốc có tác dụng làm giảm tính căng giãn của tĩnh mạch, giảm ứ trệ ở tĩnh mạch, đồng thời làm bình thường hóa tính thấm của mao mạch và tăng cường sức bền của mao mạch. Vì vậy, thuốc được chỉ định điều trị các triệu chứng có liên quan đến suy tuần hoàn tĩnh mạch bạch huyết, các dấu hiệu chức năng có liên quan đến cơn đau trĩ cấp. Tuy nhiên, thuốc không nên sử dụng cho phụ nữ đang cho con bú, khi dùng thuốc có thể gặp rối loạn tiêu hóa và rối loạn thần kinh thực vật nhẹ, không cần phải ngưng điều trị.<br /><br />Nếu bệnh nhân có táo bón, cần sử dụng các thuốc điều trị táo bón nhưng chỉ sử dụng các thuốc tạo khối phân, không nên dùng thuốc sổ vì sẽ làm tình trạng táo bón nặng hơn.<br /><br /> Ngoài ra, cần dùng cùng với các thuốc đặt tại chỗ là các tác nhân kháng viêm, vô cảm tại chỗ...<br />Tuỳ theo mức độ tổn thương, vị trí và số lượng búi trĩ mà có thể sử dụng các biện pháp điều trị vật lý như tiêm xơ, thắt vòng cao su, quang đông hồng ngoại...<br /> <br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '2', '2010-05-11 09:24:47', '62', '', '2010-05-15 09:41:10', '62', '0', '0000-00-00 00:00:00', '2010-05-11 09:24:47', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '5', 'Trĩ', 'Trĩ và thuốc chữa', '0', '8', 'robots=Trĩ\nauthor=');
INSERT INTO `jos_content` VALUES ('144', 'Nấm bổ nhưng phải biết ăn', 'nm-b-nhng-phi-bit-n', '', '<p style=\"text-align: justify;\">Ai cũng biết nấm rất bổ, thậm chí nên thuốc, nhưng không phải ăn sao cũng được...</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/nambonhngphaibietan.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br />Theo thống kê, trong thiên nhiên có gần 7 vạn loài nấm, nhưng chỉ hơn 100 loài có thể ăn hoặc dùng làm thuốc. Hiện nay nấm được xem là loại thực phẩm có giá trị dinh dưỡng cao, được ví như món ăn thời thượng, thường xuất hiện trong các thực đơn nhà hàng, tiệc cưới như lẩu nấm, bánh xèo nấm, nấm xào, gỏi nấm...<br /><br /><strong>Vừa là “rau sạch” vừa là “thịt sạch“</strong><br /><br />Trong nấm có các thành phần dinh dưỡng tự nhiên giúp tăng cường sức đề kháng cho cơ thể, chống lão hóa, kích thích cơ thể sản sinh hoạt chất interferon (chất có khả năng ức chế sự sinh trưởng của các loại virus, ngăn chặn quá trình hình thành và phát triển tế bào ung thư trong cơ thể). Ăn nấm giúp lưu thông khí huyết, thải độc tố ra ngoài cơ thể, giảm nguy cơ ung thư vú, ung thư tuyến tiền liệt. Đặc biệt, nấm vừa là “rau sạch”, vừa là “thịt sạch”.<br /><br />- Nấm hương có tác dụng điều tiết chuyển hóa, tăng cường năng lực miễn dịch của cơ thể, ức chế tế bào ung thư, hạ huyết áp, giảm cholesterol máu, phòng ngừa sỏi mật và sỏi tiết niệu, trợ tiêu hóa. Đây là thức ăn lý tưởng cho những người bị thiếu máu do thiếu sắt, cao huyết áp, tiểu đường, rối loạn lipid máu, trẻ em suy dinh dưỡng. Chất ergosterol trong nấm hương dưới tác dụng của tia cực tím trong ánh nắng mặt trời sẽ chuyển hóa thành vitamin D2 giúp cơ thể đề phòng và chữa bệnh còi xương rất hiệu quả.<br /><br />- Nấm rơm, nấm bào ngư, nấm mèo trắng có tác dụng tăng cường khả năng miễn dịch của cơ thể, nâng cao năng lực tạo máu của tủy xương, giảm cholesterol máu, phòng ngừa cao huyết áp, thiểu năng tuần hoàn não... Nấm mèo đen còn có khả năng ức chế quá trình ngưng tập tiểu cầu, phòng chống tình trạng đông máu do nghẽn mạch, ngăn cản sự hình thành các mảng vữa xơ trong lòng huyết quản, chống lão hóa, ung thư và phóng xạ.<br /><br />- Nấm kim châm rất hữu ích cho người già, người bị huyết áp cao. Loại nấm này chứa một chất có tác dụng chống ung thư rất hiệu quả. Nấm kim châm chứa nhiều lysine rất cần cho quá trình sinh trưởng, cải thiện chiều cao và trí tuệ trẻ em, hạ mỡ máu, phòng chống bệnh lý viêm loét đường tiêu hóa và bệnh gan mật.<br /><br />- Nấm mỡ rất thích hợp cho những người chán ăn, mệt mỏi, sản phụ thiếu sữa, viêm phế quản mãn tính, viêm gan mãn tính, hội chứng suy giảm bạch cầu, giúp hạ đường huyết, hạ cholesterol huyết và cải thiện chức năng tuyến tụy.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Nguy cơ ngộ độc</strong><br /><br />Tuy nhiên, khi ăn nấm cần chú ý các điều bất lợi sau đây:<br /><br />- Theo y học cổ truyền, nấm có vị ngọt, tính mát, nếu dùng nhiều và lâu dài có thể dẫn đến lạnh bụng, khó tiêu. Những người tì vị hư nhược, khi ăn hay đầy bụng, chậm tiêu, đại tiện lỏng, phân nát thì không nên dùng.<br /><br />- Trong số hơn 100 loài nấm ăn được, 10-20 loài có độc tố có thể gây chết người sau khi ăn. Thống kê cho thấy 95% ngộ độc nấm là do nhầm lẫn và 5% do chủ quan của người ăn nhầm nấm bị biến chất, hư hỏng trong quá trình bảo quản. Sự nguy hiểm của nấm độc còn tùy thuộc nhiều vào thổ nhưỡng, điều kiện phát triển, nồng độ độc tố hiện diện trong nấm và loài nấm. Đun, nấu, đông lạnh hoặc chế biến đều không làm giảm độc tính của nấm. Trẻ em, người già yếu, suy nhược thường dễ bị ngộ độc hơn những người trẻ khỏe mạnh.<br /><br />Nếu sau khi ăn nấm mà bị nôn mửa, toàn thân mệt mỏi, đi tiêu nhiều lần trong ngày thì đó là triệu chứng ngộ độc, cần đưa đến bệnh viện cấp cứu gần nhất. Để lâu mức độ ngộ độc nặng hơn có thể trụy tim mạch hoặc tử vong. Do vậy, cần hết sức lưu ý khi mua nấm.<br /><br />Các độc chất trong nấm có nhiều loại, thường là gây kích ứng đường tiêu hóa, hủy hoại tế bào gan, thận, làm tê liệt thần kinh. Đặc biệt, với những người khi uống rượu kèm ăn nấm thì nguy cơ ngộ độc rượu tăng lên vì sự tích tụ quá cao của lượng aldehyd trong máu, gây cảm giác nóng bừng mặt, nhức đầu, buồn nôn, đánh trống ngực và khó thở, nếu không điều trị kịp thời sẽ dẫn đến tử vong.<br /><br />Cần chú ý những trường hợp ăn nấm trong các bàn nhậu hay tiệc cưới vì luôn kèm bia rượu, nếu ăn nhầm nấm nhiễm độc tố thì hậu quả khó lường.<br /><br />Khi mua nấm nên chọn loại non và tươi. Nên mua ở những cơ sở có uy tín. Tốt nhất nên dùng nấm trong 12 giờ sau khi thu hái. Nấm độc có nhiều màu sắc đẹp, sặc sỡ, hay mọc nơi ẩm ướt và môi trường ô nhiễm, nhất là vào mùa mưa. Trong nấm độc có chứa nhiều nước màu trắng đục giống sữa bò. Đun nấu trong vật dụng bằng bạc hoặc kim loại, nấm độc có thể biến vật dụng này thành màu đen.<br />Mùa mưa đến nấm thường mọc nhiều ở các vùng ẩm ướt, rừng, nương rẫy, bờ ruộng, bờ ao, vì vậy cần tuyên truyền, khuyến cáo người dân không nên ăn nấm khi không biết đó là nấm lành hay nấm độc để tránh những vụ ngộ độc chết người do nấm gây ra.<br /> <em><strong><br />Theo Tuổi Trẻ</strong></em></p>', '1', '1', '0', '3', '2010-05-06 07:54:54', '62', '', '2010-05-15 14:18:25', '62', '0', '0000-00-00 00:00:00', '2010-05-06 07:54:54', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '8', 'Nấm', 'Nấm bổ nhưng phải biết ăn', '0', '11', 'robots=Nấm\nauthor=');
INSERT INTO `jos_content` VALUES ('86', ' Những cây thuốc và vị thuốc Việt Nam', '-nhng-cay-thuc-va-v-thuc-vit-nam', '', '<p>Xuất bản lần thứ 12. - Hà Nội: y học, 2004. - 1294 trang.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"http://songhuong.vn/imagesach/lon/13.45.04.28.12.07.jpg\" border=\"0\" width=\"210\" height=\"305\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">\"Giáo sư - Tiến sĩ Đỗ Tất Lợi là một nhà nghiên cứu dược liệu nổi tiếng ở nước ta. Từ khi còn ngồi trên ghế nhà trường Y Dược thời thuộc Pháp (1939 - 1944), ông đã quan tâm đến việc tìm tòi sưu tầm các cây thuốc và động vật làm thuốc có ở Việt Nam sử dụng trong y học cổ truyền. Từ những ngày đầu kháng chiến, dược sĩ Đỗ Tất Lợi với cương vị Viện trưởng Viện khảo cứu chế tạo dược phẩm Cục quân y, đã chịu khó đi công tác trên núi rừng Việt Bắc tìm kiếm sưu tầm các cây thuốc phòng chữa bệnh cho bộ đội và nhân dân. Sau ngày hòa bình lập lại, với nhiệm vụ Chủ nhiệm bộ môn dược liệu Trường Đại học Y dược Hà Nội, ông đã say mê nghiên cứu về dược liệu, vị thuốc Việt Nam và các cây di thực từ nước ngoài.<br /><br />Sau mấy chục năm lăn lộn với việc sưu tầm nghiên cứu dược liệu, Giáo sư - Tiến sĩ Đỗ Tất Lợi đã biên soạn được bộ sách Những cây thuốc và vị thuốc Việt Nam xuất bản đến nay là lần thứ tám. Đây là một công trình nghiên cứu rất có giá trị ở trong nước cũng như ở nước ngoài. Trên cơ sở cuốn sách này, năm 1968 Hội đồng chứng chỉ (khoa học) tối cao Liên Xô đã công nhận học vị Tiến sĩ khoa học cho dược sĩ Đỗ Tất Lợi. Năm 1983, tại Triển lãm hội chợ sách quốc tế Matxcơva, bộ sách Những cây thuốc và vị thuốc Việt Nam được bình chọn là một trong bảy viên ngọc quý của triển lãm sách. Đến năm 1980, dược sĩ được Chính phủ phong học hàm Giáo sư đại học.<br /><br />Từ năm 1960 đến nay, mỗi lần xuất bản bộ sách Những cây thuốc và vị thuốc Việt Nam tác giả đều sửa chữa bổ sung một cách thận trọng. Và ngay trong lần xuất bản thứ tám này, tuy tuổi đã cao, Giáo sư Đỗ Tất Lợi đã để mấy năm rà soát, sửa chữa lại nội dung cũ, sưu tầm nghiên cứu thêm một số cây mới, vị thuốc mới và hoàn chỉnh bản thảo một cách nghiêm túc. Lần này tác giả, trong phần phụ lục, có viết thêm hai bài nói về thân thế và sự nghiệp của cụ Tuệ Tĩnh (Ông Thánh thuốc Nam) và của nhà đại danh y Hải Thượng Lãn Ông Lê Hữu Trác.<br /><br />Cuốn sách Những cây thuốc và vị thuốc Việt Nam lần này được xuất bản sau khi tác giả được nhận Giải thưởng Hồ Chí Minh về khoa học kỹ thuật lần đầu năm 1996. Do đó giá trị cuốn sách lại càng được nâng cao.<br /><br />Tôi lấy làm vinh dự được giới thiệu với bạn đọc trong và ngoài ngành y tế cuốn sách Những cây thuốc và vị thuốc Việt Nam (xuất bản lần thứ tám), một công trình đã được xếp trong loại giải thưởng cao nhất ở nước ta hiện nay - Giải thưởng Hồ Chí Minh.<br /><br />Hy vọng bạn đọc sẽ tìm thấy trong cuốn sách nhiều điều bổ ích và sử dụng tốt cuốn sách này trong nghiên cứu cũng như trong đời sống hằng ngày, nhằm bảo vệ sức khỏe cho bản thân và cho cộng đồng\". (Nguyên Bộ trưởng Bộ Y tế - Giáo sư Đỗ Nguyên Phương).</p>\r\n<p style=\"text-align: justify;\"><br /><em><strong>Link download</strong></em><br /><br /></p>', '1', '5', '0', '21', '2010-04-26 13:11:46', '62', '', '2010-05-15 14:24:38', '62', '0', '0000-00-00 00:00:00', '2010-04-26 13:11:46', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '8', '0', '1', 'cây thuốc, vị thuốc', 'Những cây thuốc và vị thuốc Việt Nam', '0', '61', 'robots=cây thuốc, vị thuốc\nauthor=cây thuốc, vị thuốc');
INSERT INTO `jos_content` VALUES ('132', 'Từ điển tra cứu Đông Y Dược ', 't-in-tra-cu-ong-y-dc-', '', '<p style=\"text-align: justify;\">CD-ROM Tra Cứu Đông Y Dược bao gồm các mục Bệnh Học, Phương Thang, Dược Vị, Châm Cứu và Hệ Thống Huyệt. Đây là những thông tin khá đầy đủ và hữu ích cho bất kỳ ai quan tâm hoặc thích tìm hiểu thêm về Y Học Cổ Truyền …</p>\r\n', '\r\n<p>Bộ từ điển này được công ty LckSoft (tác giả của English Study 4) xây dựng với giao diện thân thiện, trình bày rõ ràng mạch lạc, bố cục gọn gẽ, rất thích hợp cho các bạn không chuyên về IT cũng có thể làm quen ngay.</p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/Thuvien/tudientracuudongyduoc.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br /><strong>1. Bệnh học: </strong>Bao gồm những những chứng bệnh thường gặp ở con người. Bạn chọn loại bệnh bên phía tay trái, click vào, lúc này phía bên phải sẽ hiển thị thông tin của loại bệnh mà bạn chọn bao gồm tên tiếng Việt, tiếng Hán Việt, tiếng Anh, Pháp. Phía dưới chia làm các mục nhỏ như Đại cương( mô tả tổng quát về loại bệnh này như các định nghĩa, các biểu hiện của bệnh), Nguyên nhân (các nguyên nhân dẫn đến bệnh), Chẩn đoán (dựa vào các đặc điểm biểu hiện của bệnh, và đưa ra các mức độ nặng nhẹ của căn bệnh), Điều trị (Đưa ra các giải pháp điều trị Đông-Tây đi kèm để bạn tiện theo dõi), Bệnh án (Cung cấp một số bệnh án và các phương thuốc cung cấp cho người bệnh).<br /><br /><strong><br />2. Dược vị:</strong> Bao gồm các phương thuốc, đi kèm là hình ảnh, xuất xứ, tên khoa học của loại thuốc… Cần tra cứu loại dược vị nào bạn chọn tên và xem các mục môt tả như: Tên khác (một số vị thuốc có thể có nhiều tên nên chương trình đã tích cung cấp khá đầy đủ các tên gọi khác nhau của từng vị thuốc), Mô tả (Quá trình xác định chính xác vị thuốc rất phức tạp vì nó nằm lẫn trong cỏ cây, tùy chọn này sẽ giải thích chi tiết từng đặc điểm của các loại này để bạn xác định đúng), Dược lý (Công dụng của thuốc), Nuôi dưỡng (nơi thường xuất hiện loại dược vị này, cách nuôi dưỡng), Bào chế (phương thức bào chế thành thuốc để sử dụng), Đơn thuốc, Công dụng, Chủ trị, Tham khảo…<br /><strong><br />3. Phương thang:</strong> Phần này cung cấp các thang thuốc thường cho bệnh nhân uống, trong đó mô tả chi tiết các loại thuốc dùng, cân lượng, tác dụng và tác giả của các phương thuốc này. Phần này là phần đồ sộ nhất của chương trình, có khoảng 14 ngàn phương thuốc khác nhau để bạn tiện tra cứu.<br /><br /><br /><strong>4. Huyệt:</strong> Cung cấp hình ảnh, tên huyệt, các tên khác, xuất xứ, vị trí, đặc tính, tác dụng của từng loại huyệt vị trên cơ thể con người, bạn có thể tra cứu chính xác các huyệt vị trên người dựa vào hình ảnh và thông tin rất trực quan…<br /><br /><br /><strong>5. Kinh mạch lạc: </strong>Hỗ trợ các thầy thuốc Đông Y trong việc xác định chu kỳ của kỳ kinh bát mạch trên cơ thể bệnh nhân bao gồm 2 phần chính: Kinh và Kỳ kinh bát mạch, bên trong mỗi phần, lại mô tả chi tiết bằng các đồ hình, đặc tính, biểu hiện bệnh lý…<br /><br /><br /><strong>6. Châm cứu điều trị:</strong> Cung cấp các chứng bệnh, biểu hiện, nguyên nhân dẫn đến bệnh và đưa ra cách châm cứu…<br /><br />Size: 500MB</p>', '1', '5', '0', '22', '2010-05-05 05:54:07', '62', '', '2010-05-15 14:27:45', '62', '0', '0000-00-00 00:00:00', '2010-05-05 05:54:07', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '7', '0', '3', 'Từ điển, Đông Y', 'Từ điển tra cứu Đông Y Dược ', '0', '26', 'robots=Từ điển tra cứu Đông Y Dược \nauthor=Hoàng Duy Tần, Trần Văn Nhủ');
INSERT INTO `jos_content` VALUES ('96', 'Uống nước chanh hàng ngày giúp phòng sỏi thận', 'ung-nc-chanh-hang-ngay-giup-phong-si-thn', '', '<p style=\"text-align: justify;\">Một phương pháp đơn giản và không hề tốn kém để ngăn ngừa căn bệnh sỏi thận đó là uống nước chanh hàng ngày.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/uongnuoccnhanhangngay.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br />Theo ông Roger Sur, chuyên gia của Trung tâm nghiên cứu các biện pháp phòng chống sỏi thận UC San Diego, Mỹ, việc sử dụng chanh là một trong năm biện pháp hiệu quả phòng chống bệnh sỏi thận.<br />Ngoài ra, việc uống nhiều nước chanh còn có tác dụng giảm sự hấp thụ đối với muối, canxi và protein đưa vào cơ thể qua đường tiêu hóa. Chanh chứa nhiều citrate (hợp chất tự nhiên có tác ngăn chặn việc tạo thành sỏi thận) nhất trong các loại quả.<br /> <br /><br />Nghiên cứu của ông Sur cho thấy việc uống mỗi ngày khoảng 140g chanh vắt lấy nước hòa vào hai lít nước có thể làm giảm khả năng mắc bệnh sỏi thận tới 7-8 lần.<br />Nước ép các loại quả khác chứa ít citrate hơn và thường chứa một lượng nhất định canxi và chất oxalate, một trong những thành phần cơ bản tạo ra sỏi thận.<br /> <br /><em><strong>Theo Vietnamplus</strong></em></p>', '1', '1', '0', '2', '2010-04-27 01:48:18', '62', '', '2010-05-15 09:44:49', '62', '0', '0000-00-00 00:00:00', '2010-04-27 01:48:18', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '7', '0', '15', 'chanh, sỏi thận', 'Uống nước chanh hàng ngày giúp phòng sỏi thận', '0', '5', 'robots=chanh, sỏi thận\nauthor=');
INSERT INTO `jos_content` VALUES ('98', 'Cá quả bổ khí huyết', 'ca-qu-b-khi-huyt', '', '<p style=\"text-align: justify;\">Cá quả tính hàn vị ngọt, có công năng bồi bổ khí huyết, kiện tỳ, lợi tiểu, ích tinh tủy. Ăn chín công hiệu tốt cho những bệnh như khí huyết bất túc, phụ nữ can huyết lao, kinh nguyệt bế ít, băng huyết, đau lưng, mỏi chân...</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/caqua.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br />Để tham khảo và có thể áp dụng, dưới đây xin giới thiệu những món ăn bài thuốc có tác dụng bổ khí huyết từ cá quả.<br /><br />Suy nhược sau khi ốm: Cá quả 1 con, rửa sạch cắt miếng, cho thêm một ít giăm bông, nấu thành canh, ăn cái uống nước canh, ngày 2 - 3 lần, cần ăn 5 - 7 ngày liền.<br /><br />Phụ nữ can huyết lao, kinh nguyệt bế ít: Cá quả tươi 1 con khoảng 400-500g, đương quy 15g, sinh địa 30g, hành củ, gừng tươi đủ dùng. Cá quả đánh sạch vảy, bỏ mang ruột, rửa sạch. Đương quy, sinh địa cho vào túi vải buộc kín. Sau cho túi thuốc cùng cá vào nồi cho nước vừa đủ, đun lửa to đến sôi, hạ lửa nhỏ hầm nhừ, vớt bỏ túi thuốc, nêm gia vị, gừng vừa miệng, ăn cá uống canh. Ngày ăn 1 thang, cần thường xuyên ăn.<br />Phù do viêm thận mạn, tràn dịch màng tụy do gan xơ: Cá quả 1 con 500g, bí xanh 500g để cả vỏ ngoài thái miếng, đậu đỏ 60g, hành 5 củ. Cá quả cạo sạch vảy, chặt vây, bỏ mang, ruột, rửa sạch cắt miếng, cho vào nồi cùng bí xanh, đậu đỏ, hành, đổ nước vừa phải nấu thành canh, không cho muối. Ăn cái, uống nước canh. Ngày 1 thang, cần ăn 7 - 10 ngày liền.<br /> <br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '3', '2010-04-28 10:31:06', '62', '', '2010-05-15 14:16:05', '62', '0', '0000-00-00 00:00:00', '2010-04-28 10:31:06', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '15', 'Cá quả, bổ, khí huyết', 'Cá quả bổ khí huyết', '0', '6', 'robots=Cá quả, bổ, khí huyết\nauthor=');
INSERT INTO `jos_content` VALUES ('99', 'Chữa sởi bằng ngoại đông y', 'cha-si-bng-ngoi-ong-y', '', '<p style=\"text-align: justify;\">Thời tiết nắng nóng khiến trẻ em thường mắc chứng ban sởi, thân nhiệt dễ bị sốt cao, hay bị nhầm là sốt siêu vi hoặc sốt xuất huyết.<br />Bằng biện pháp tắm hoặc uống, những bài thuốc nam tại nhà giúp các bậc phụ huynh trị bệnh cho trẻ hiệu quả mà không cần tới bệnh viện.<br />Khổ qua, cỏ mực...</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/chuasoibangdongysim.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br /><br />Bác sĩ Trần Lê Diệu Hương (bệnh viện y học cổ truyền TP.HCM) cho biết, sởi do siêu vi lây truyền bắt nguồn từ thời tiết và môi trường ô nhiễm. Trẻ em vốn sức đề kháng yếu nên là đối tượng dễ mắc bệnh, đặc biệt khi tiếp xúc với người bệnh hoặc lây từ các trẻ khác ở trường học.<br /><br />Thời gian ủ bệnh từ 3-7 ngày, sau đó nổi ban đỏ, trắng, dạng hột li ti kéo dài 3-5 ngày. Hiện nay, tây y chưa có thuốc đặc trị, chỉ có thể tiêm vắc-xin chủng ngừa siêu vi sởi nhưng chỉ giảm tỉ lệ chứ không trị dứt điểm.<br /><br />Nếu điều trị sớm, trẻ sẽ tránh được biến chứng viêm phổi (rất thường xảy ra), viêm thanh quản, viêm tai giữa, thậm chí viêm cả não tủy (rất hiếm gặp), nhiễm trùng răng, miệng, ruột, loét giác mạc.<br /><br />Trong đông y, thường phổ biến các bài thuốc dễ tìm, dễ làm mà không có tác dụng phụ như sau: <br /><br />* Lá xoan (theo cách gọi miền Bắc) hoặc sầu đông hay sầu đâu (cách gọi miền Trung, Nam). Chọn lá tươi khoảng 100gr, sau khi hái xuống thì rửa sạch, vò nát với ít muối. Pha với 5l  nước đun sôi để nguội rồi tắm cho trẻ. Sau vài ngày, khi các vết ban sởi trên người trẻ lặn hết thì ngưng tắm.<br /><br />* Lá, dây, bông cẩm lệ chi (dân gian quen gọi là khổ qua, hoặc mướp đắng) kết hợp các loại thảo dược khác gọi là phương ngoại: 100gr lá khổ qua xanh lục (luôn cả dây và hoa), 50gr sim dại và 50gr lá ổi non. Nấu trong 0,5l nước, còn 150ml. Chia làm 5 phần, cho trẻ uống trong ngày. Uống liên tục  từ 3-5 ngày sẽ hiệu quả.<br /><br />* 100gr cây cỏ mực (sử dụng toàn thân cây, lá, hoa), 50gr lá, hoa sầu đông, 50 búp ổi và hoa vừa rụng đài hoa, phơi hoặc sao khử thổ vàng nghệ. Tất cả nấu với 200ml nước (3 chén) còn 1 chén. Cho trẻ uống sáng (sau lúc ăn) và chiều (trước lúc ngủ). Sau 2-3 ngày sẽ lộ ban, hết sởi.<br /><br />* Trẻ từ 2-5 tuổi bị sởi, sốt về đêm, tăng nhiệt, nói sảng, khóc từng cơn: dùng 1 quả dưa hấu đỏ (cỡ 0,8-1,5kg) rửa sạch, để vỏ, thêm vào 20gr lá, hoa sim dại; 20gr lá, hoa khổ qua, ép lấy nước, cho trẻ uống nhiều lần trong ngày. Sau 3 ngày sẽ nổi ban, dứt bệnh.<br /><br />Cây sim<br /><br />Cây, lá và trái sim (còn tươi) vị chua ngọt pha chút nhẫn, có thể dùng chữa trị cho trẻ từ 1-10 tuổi chóng dứt sốt, lộ ban sởi, ăn uống, bú sữa trở lại bình thường bằng đơn thuốc sau:<br /><br />50gr cành, lá sim vừa già, còn tươi, rửa sạch, cắt khúc dài 3cm, sao khử thổ vừa vàng. 100gr trái sim tươi (nếu không có sim tươi thì đổi bằng 30gr trái sim khô mua ở hiệu đông y), 50gr rễ mua thấp (tên khoa học là Melastoma dodecandrum Lour). Tất cả cho vào siêu sắc thuốc, đổ ngập nước, thêm vào ½ muỗng muối và 3gr gừng già.<br /><br />Đợi thuốc sôi 30 phút rồi nhắc xuống. Cho trẻ uống 3 lần/ngày (khi thuốc còn ấm).<br /><br />Sau 3 ngày sẽ trổ ban hột đỏ li ti, dứt sốt. Ăn ngủ được.<br /><br />Ngoài ra, cây sim còn dùng điều trị các bệnh khác cho trẻ như:<br /><br />Trẻ em hư hàn biến chứng hen khò khè, thở mệt, mắt mờ (từ 6-15 tuổi): dùng 60gr rễ sim khô sắc với 50ml nước, còn 15ml nước. Chia làm 3 phần, uống mỗi ngày, trước bữa ăn.<br /><br />Trẻ dưới 10 tuổi bị bỏng (do nước sôi, lửa) lấy 50gr rễ sim và 50gr trái sim, sao vàng cháy, tán nhuyễn thành bột, trộn với 5 muỗng canh dầu thực vật hoặc mỡ bò (mỡ tươi thắng chảy), thoa lên chỗ bỏng. Sau 7 ngày sẽ liền da, tiếp tục thoa nghệ để tránh sẹo lồi.<br />Nếu bị vàng da do gan, sắc 50gr rễ sim; bạch hoa xà, thiệt thảo, nhân trần, kê cốt thảo, điền cơ hoàng (mỗi thứ 15-20gr) với 3 chén nước, còn lại một chén. Uống sau bữa ăn, liên tục trong 3 tuần.<br /> <br /><em><strong>Theo Thanh Niên</strong></em></p>', '1', '1', '0', '2', '2010-04-28 10:34:14', '62', '', '2010-05-15 09:44:35', '62', '0', '0000-00-00 00:00:00', '2010-04-28 10:34:14', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '14', 'sởi, đông y', 'Chữa sởi bằng ngoại đông y', '0', '5', 'robots=sởi, đông y\nauthor=');
INSERT INTO `jos_content` VALUES ('100', '6 ngũ cốc tốt hơn thuốc', '6-ng-cc-tt-hn-thuc', '', '<p style=\"text-align: justify;\">Ngô, lúa mạch, các loại khoai, yến mạch, kê là những loại thực phẩm trị bệnh tốt hơn thuốc chữa bệnh. Dưới đây là dẫn giải của GS Tề Quốc Lực, ĐH Y học Bắc Kinh.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/6ngucoctothonthuoc.jpg\" border=\"0\" /><br /><strong> </strong></p>\r\n<p style=\"text-align: justify;\"><strong><br />Ngô</strong><br /><br />Trong hội nghị quốc tế, từ trước đến giờ người ta không nhắc đến gạo, bột mỳ, cũng không nhắc đến đồ fast-food của châu Âu. Trong các loại ngũ cốc thì ngô được nhắc đến đầu tiên, mọi người đều cho rằng ngô là “thực phẩm hoàng kim”.<br /><br />Hiệp hội y học Mỹ sau khi khảo sát điều tra phát hiện người Ấn Độ rất ít bị cao huyết áp, xơ cứng động mạch, đó là do họ hay ăn ngô. Sau đó nghiên cứu phát hiện trong ngô hàm chứa đại lượng lecithin, axit lenoleic, sitosterod, vitamin E có thể phòng tránh cao huyết áp và xơ cứng động mạch. Từ đó trở đi người Mỹ đổi sang ăn ngô.<br /><br />Châu Mỹ, Châu Phi, Châu Âu, Nhật, Hồng Kong và Quảng Châu đều ăn súp ngô buổi sáng. Tôi cũng đã thay đổi ăn súp ngô vào bữa sáng thay cho uống sữa, sống ở Mỹ tôi cũng kiên trì như thế. Năm nay tôi đã 70 tuổi nhưng thể lực của tôi sung mãn, tinh thần thoải mái, giọng nói âm vang, khí công tràn đầy, đồng thời trên mặt không có nếp nhăn.<br /><br />Đó là do ăn súp ngô. Tin hay không là do các bạn, các bạn cứ uống sữa của các bạn, tôi ăn súp ngô của tôi để xem trong chúng ta ai sẽ sống thọ hơn?<br /><br /><strong>Lúa mạch</strong><br />Loại thứ hai trong ngũ cốc được nhắc đến đó là lúa mạch. Vì sao lại là lúa mạch? Hiện tại có rất nhiều người bị “tam cao” tức là cao huyết áp, cao mỡ máu, cao đường máu. Nhưng lúa mạch lại là “tam giảm”, nó có thể làm giảm huyết áp, giảm mỡ máu, giảm đường máu.<br /><br />Trong lúa mạch hàm chứa 13% chất xơ, người ăn lúa mạch không dễ mắc chứng ung thư đường ruột, dạ dày, ung thư trực tràng và cả ung thư kết tràng. Nhưng những người hay ngồi văn phòng như chúng ta thì lại mắc bệnh ung thư trực tràng và kết tràng rất nhiều.<br /><br /><strong>Các loại khoai</strong><br /><br />Khoai lang trắng, khoai lang đỏ và khoai tây có 3 hấp thụ: hấp thụ nước, hấp thụ mỡ và đường, hấp thụ độc tố. Hấp thụ nước làm trơn đường ruột, không bị ung thư trực tràng, kết tràng. Hấp thụ mỡ và đường, không mắc bệnh tiểu đường. Hấp thụ độc tố: không mắc chứng viêm dạ dày, đường ruột.<br /><br />Tôi cũng đã điều tra ở Mỹ, người Mỹ ăn khoai là chế biến thành các loại bánh, ăn cũng không ít. Mong mọi người ăn nhiều khoai vào, trong lương thực chính nên có các loại khoai.<br /><br /><strong>Yến mạch</strong><br /><br />Ở các nước châu Âu đã biết từ lâu nhưng rất nhiều người Trung Quốc lại chưa biết. Nếu bị tăng huyết áp, nhất định phải ăn yến mạch, cháo yến mạch, bởi vì yến mạch có thể hạ huyết áp, giảm mỡ máu.<br /><br /><strong>Đậu nành</strong><br /><br />Dưới đây xin nói về đậu: Kết quả điều tra của chúng tôi là tất cả dân Trung Quốc thiếu protein ưu chất. Cho nên chúng ta chơi bóng trận nhỏ thì luôn luôn thắng, nhưng chơi bóng trận lớn thì không thắng. Vì sao? Trên sân bóng đá một cú đá, một cú va chạm là ngã lộn nhào.<br />Hiện nay, tiền thuốc của chúng ta cao hơn rất nhiều lần so với Mỹ nhưng thể lực lại không bằng người ta. Trong khi đó, người Mỹ không thiếu Protein ưu chất nhưng họ cho rằng đậu nành là hoa của dinh dưỡng, là vua của các loại đậu.<br /><br />Người Trung Quốc thiếu protein ưu chất thì làm thế nào? Hiện nay Bộ y tế đã đề ra “kế hoạch hành động từ đậu nành” có nội dung là “một nắm rau, một nắm đậu, một quả trứng gà, cộng thêm một ít thịt”. Sau khi tôi giảng xong có học sinh đã nói thành “Nửa lạng trứng gà hai lạng thịt, thêm một chút rau thêm chút đậu”. Ai bảo anh ta thêm lượng cụ thể đó?<br /><br />Một quả trứng gà có 300mg cholestrerol là vừa thích hợp, 1 lạng đậu tương tương đương với 2 lạng thịt nạc, 3 lạng trứng gà và 4 lạng gạo. Các bạn thử nói xem nên ăn cái gì tốt hơn?<br /><br /><strong>Kê</strong><br /><br />Sau khi về nước tôi hỏi: Vì sao chúng ta không ăn kê nữa? Nhiều người bảo tôi: Cái thứ đó chỉ có đàn bà đẻ mới ăn! Thật ra, bản thảo cương mục đã nói rất rõ: Kê có thể trừ thấp, khỏe tỳ, an thần, ngủ ngon; Kê có nhiều ích lợi lớn như thế mà các bạn lại không ăn?<br /><br />Tôi đã quan sát kỹ, người ta ngủ được là nhờ ăn cháo kê. Cho nên bây giờ tôi đã thay đổi, sáng một bát cháo ngô tinh thần phấn chấn, tối một bát cháo kê ngủ khò khò. Chữa bệnh bằng ăn tốt hơn chữa bệnh bằng thuốc.<br />Vì sao chúng ta không giải quyết vấn đề bằng cái ăn, mà cứ nhất định phải dùng thuốc. Mười thứ thuốc thì chín thứ là độc, chưa từng nghe nói dùng thuốc để giữ gìn sức khoẻ. Tôi cũng phải nói rõ: tôi không hề phản đối dùng thuốc. Tôi phản đối dùng thuốc bừa bãi, tôi chủ trương dùng thuốc trong thời gian ngắn, uống thuốc đảm bảo, ngừng thuốc nhanh chóng.<br /> <strong><br />Theo Dân Trí</strong></p>', '1', '1', '0', '4', '2010-04-28 10:38:53', '62', '', '2010-05-15 14:22:07', '62', '0', '0000-00-00 00:00:00', '2010-04-28 10:38:53', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '5', 'ngũ cốc', '6 ngũ cốc tốt hơn thuốc', '0', '18', 'robots=ngũ cốc\nauthor=');
INSERT INTO `jos_content` VALUES ('101', 'QUẾ CHI THANG ', 'qu-chi-thang-', '', '', '\r\n<p style=\"text-align: justify;\"><strong>Thành phần:</strong><br /><br />Quế chi                12g<br /><br />Bạch thược          12g<br /><br />Chích Cam thảo     6g<br /><br />Sinh khương        12g<br /><br />Đại táo              4 quả</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/quchi.jpg\" border=\"0\" alt=\"fsd fsdf sdfs fsdf xxxx\" width=\"480\" style=\"border: 0pt none;\" /></p>\r\n<p style=\"text-align: center;\"><em>Quế chi</em></p>\r\n<p style=\"text-align: center;\"><em><br /></em></p>\r\n<p style=\"text-align: justify;\"><em><strong>Cách dùng: </strong></em>Uống lúc thuốc còn nóng hoặc là sau khi uống thuốc ăn cháo nóng về mùa đông, uống thuốc xong trùm chăn cho ra mồ hôi vừa phải.<br /><em><strong><br />Tác dụng:</strong></em> Giải cơ, phát hãn giải biểu, điều hòa dinh vệ.<br /><em><strong><br />Giải thích bài thuốc:</strong></em> Trong bài thuốc:<br /><br />Quế chi là chủ dược có tác dụng giải cơ biểu và thông dương khí. <br />Bạch thược liễm âm hòa vinh giúp cho Quế chi không làm tổn thương chân âm. Hai vị thuốc cùng dùng một tán, một thu điều hòa vinh vệ. <br />Những vị thuốc khác như Sinh khương, Đại táo, Chích Cam thảo đều có tác dụng điều hòa.<br /><em><strong>Ứng dụng lâm sàng:</strong></em> Bài thuốc này ngoài việc dùng chữa biểu chứng ngoại cảm phong hàn, biểu hư còn có thể dùng trong những trường hợp sau:<br /><br />1.     Nếu bệnh nhân kiêm ho suyễn gia Hậu phác, Hạnh nhân để bình suyễn chỉ khái gọi là bài QUẾ CHI GIA HẬU PHÁC HẠNH NHÂN THANG (Thương hàn luận). <br /><br />2.     Những trường hợp sau khi mắc bệnh, sau khi sanh mà có lúc hơi hàn có lúc hơi nhiệt, mạch hoãn ra mồ hôi có thể dùng Quế chi thang để điều trị. <br /><br />3.     Trường hợp phụ nữ có thai nôn nặng, khí huyết không điều hòa có thể dùng điều trị có kết quả tốt. <br /><br />4.     Trường hợp cảm phong hàn, hàn thấp, đau nhức mình mẩy có thể gia thêm các vị Uy linh tiên, Tục đoạn, Phòng phong, Khương hoạt, Ngũ gia bì, có thể có tác dụng tăng cường trừ phong thấp giảm đau. <br /><br />5.     Trường hợp chứng đã dùng Quế chi thang, có thêm chứng cứng gáy, đau lưng gia Cát căn gọi là Quế chi gia Cát căn thang (Thương hàn luận). <br /><br />6.     Trường hợp di tinh, chóng mặt, đạo hãn, tự hãn gia Long cốt, Mẫu lệ để vừa điều hòa âm dương vừa cố sáp gọi là bài QUẾ CHI MẪU LỆ LONG CỐT THANG (Kim quỹ yếu lược).<br /><br /><strong><em>Chú ý lúc sử dụng:</em></strong> Không dùng bài thuốc trong những trường hợp sau: Ngoại cảm phong hàn biểu thực chứng.<br /><br />Trường hợp bệnh nhiễm thời kỳ đầu sốt rét ra mồ hôi mà khát nước, lưỡi đỏ rêu vàng, mạch sác không dùng.<br /><br /><strong>Tài liệu tham khảo:</strong> Theo một số báo cáo lâm sàng bài Quế chi thang gia giảm như sau: Cát căn 20 - 40g, Ma hoàng 6g, Bạch thược 12g, Phòng phong 12g, Sài hồ 6g, Cam thảo 4g, Đại táo 6 quả. Sắc uống có thể chữa chứng cứng gáy tốt (Torticolis). Theo tài liệu, vị thuốc Cát căn có tác dụng giãn mạch tăng cường lưu lượng máu chống co thắt, làm giảm đau</p>', '1', '3', '0', '279', '2010-04-28 16:41:53', '62', '', '2010-05-04 16:00:13', '62', '0', '0000-00-00 00:00:00', '2010-04-28 16:41:53', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '15', '0', '16', '', '', '0', '23', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('102', 'THÔNG XỊ THANG (Cửu hậu phương)', 'thong-x-thang-cu-hu-phng', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Thông bạch (cả rễ) 5 củ<br /><br />Đạm đậu xị              12g</p>\r\n<p><br class=\"_mce_marker\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/uen.jpg\" border=\"0\" /><br class=\"_mce_marker\" />Đậu đen</p>\r\n<p style=\"text-align: justify;\"><strong><em>Cách dùng: </em></strong>sắc uống ngày 2 - 3 lần, uống lúc nóng.<br /><br /><em><strong>Tác dụng:</strong></em> Thông dương, giải biểu.<br /><em><strong><br />Giải thích bài thuốc:</strong></em><br /><br />Thông bạch là chủ dược có tác dụng tân ôn thông dương khí, sơ đạt cơ biểu, phát tán phong hàn. <br />Đạm đậu xị cay ngọt hổ trợ tuyên tán giải biểu. <br />Bài thuốc, tính dược bình tân ôn mà không táo dùng trong trường hợp phong hàn biểu chứng nhẹ.<br /><br /><em><strong>Ứng dụng lâm sàng:</strong></em><br /><br />1.     Trường hợp cảm phong hàn nặng, sợ lạnh, không có mồ hôi, đau đầu nhiều, có thể gia thêm Khương hoạt, Kinh giới, Phòng phong, Bạc hà. <br /><br />2.     Trường hợp sợ lạnh nhiều, gáy lưng đau, mạch khẩn, không ra mồ hôi, có thể gia thêm Ma hoàng, Cát căn để tăng cường phát hãn, giải cơ gọi là bài HOẠT NHÂN THÔNG KHÍ THANG (Loại chứng hoạt nhân thư). <br /><br />3.     Trường hợp bệnh nhiễm thời kỳ đầu, sốt hơi sợ lạnh và gió, mồm khô, khát gia Cát cánh, Bạc hà, Liên kiều, Chi tử, Cam thảo, Trúc diệp để giải nhiệt gọi là bài THÔNG XỊ CÁT CÁNH THANG (Thông tục thương hàn luận).<br /><br />Hoạt nhân thông khí thang và Thông xị cát cánh thang đều là bài Thông xị thang gia vị nhưng bài trước tác dụng chủ yếu là giải biểu tán hàn, bài sau là giải biểu thanh nhiệt.<br /><br /></p>', '1', '3', '0', '279', '2010-04-28 16:49:02', '62', '', '2010-05-03 06:35:42', '62', '0', '0000-00-00 00:00:00', '2010-04-28 16:49:02', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '10', '0', '15', '', '', '0', '10', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('103', 'Công ty TNHH Đông Dược Phúc Hưng', 'cong-ty-tnhh-ong-dc-phuc-hng', '', '', '\r\n<p><img src=\"http://t1.gstatic.com/images?q=tbn:HWBFB6cVRNS6pM:http://www.thegioiag.net/Portals/4/ArticleImages/TGAG_2009041448_10.jpg\" border=\"0\" width=\"91\" height=\"90\" /></p>', '1', '7', '0', '311', '2010-05-02 07:34:50', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-05-02 07:34:50', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '7', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('104', 'Công ty Cổ phần Dược Trung ương Mediplantex', 'cong-ty-c-phn-dc-trung-ng-mediplantex', '', '<p>\r\n', '\r\n<img src=\"http://t2.gstatic.com/images?q=tbn:N-kmaKCEb2vfbM:http://www.thuonghieuhanghoa.com.vn/imgs/logo/487855181158708logo05.jpg\" border=\"0\" width=\"88\" height=\"66\" /></p>', '1', '7', '0', '312', '2010-05-02 07:46:20', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-05-02 07:46:20', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('105', 'Những loại trái cây nhiều canxi', 'nhng-loi-trai-cay-nhiu-canxi', '', '<p style=\"text-align: justify;\">Ai cũng biết nguồn canxi dồi dào thường chứa nhiều trong các loại thực phẩm như sữa, sản phẩm từ sữa, một số loại rau đậu, hạt… mà ít biết rằng khoáng chất quan trọng này còn được tìm thấy trong những loại trái cây.</p>\r\n', '\r\n<p><strong> </strong></p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/nhungloaitraicaynhieucanxi.jpg\" border=\"0\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\"><strong>1. Quất vàng</strong><br /><br />Quất thuộc họ cam quýt, quả nhỏ, tròn dạng hình trứng. Ngoài nguồn canxi, quất cũng chứa nhiều vitamin C, chất xơ và các chất dinh dưỡng khác như: mangan, vitamin A, vitamin B2, sắt, magiê và đồng.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>2. Trái me</strong><br /><br />Trái me có chiều dài từ 7-20 cm, màu nâu, trái thường hơi cong, hạt màu nâu bóng. Me có vị chua chua, ngọt ngọt,để ăn sống hoặc chế biến thành kẹo, mứt, dùng làm gia vị nấu ăn.<br /><br />Cứ mỗi 100 g me chứa khoảng 74 mg canxi. Trái me cũng rất giàu vitamin B1, vitamin B3, magiê, chất xơ, kali, sắt, phốt pho.<br /><br /><strong>3. Cam</strong><br /><br />Cam “nổi tiếng” với hàm lượng vitamin C cao, ngoài ra nó cũng là một trong số những loại trái cây có chứa nhiều canxi. Mỗi 100 g cam tươi có thể cung cấp cho cơ thể 40 mg khoáng chất canxi.<br /><br />Trong cam còn chứa một số chất dinh dưỡng quan trọng khác bao gồm chất xơ, folate, vitamin B1 và kali.<br /><br /><strong>4. Dâu</strong><br /><br />Quả dâu thường dài 2-3 cm, tùy thuộc vào loài mà dâu có màu đỏ hoặc màu đen. Người ta hay dùng dâu để làm bánh nướng, nhân mứt, nhân bánh, rượu vang, mứt hoặc nước giải khát. Dâu cũng chứa khá nhiều canxi và các chất dinh dưỡng khác như vitamin C, vitamin K, sắt, chất xơ, kali, riboflavin.<br /><br /><strong>5. Sung</strong><br /><br />Sung hay còn gọi quả vả, nhiều hạt, có thể được ăn tươi hoặc sấy khô, còn dùng làm mứt. Ngoài canxi, sung cũng là nguồn cung cấp chất xơ, kali, vitamin K, B6 và mangan.<br /><br /><strong>6. Mít</strong><br /><br />Mít là loại trái cây vừa thơm ngon, vừa có chứa đầy đủ các chất dinh dưỡng quan trọng là canxi, vitamin A, C, mangan, magiê, đồng, kali và chất xơ.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>7. Kiwi</strong><br /><br />Kiwi có vỏ ngoài nham nhám, màu xanh nâu; phần thịt bên trong có màu xanh lá cây tươi sáng hoặc màu vàng nhạt, vị hơi chua. Đây là loại quả rất giàu vitamin C, bên cạnh đó nó cũng là nguồn cung cấp dồi dào vitamin K, chất xơ, kali, canxi, folate, đồng, vitamin E.<br /><br /><strong>8. Quả cơm cháy</strong><br /><br />Từ lâu, quả cơm cháy đã được sử dụng như phương thuốc dân gian truyền thống ở nhiều nơi trên thế giới. Nước trái cây này có thể dùng để chữa ho, cảm lạnh, cảm cúm, nhiễm trùng do vi khuẩn và virus, giảm cholesterol, cải thiện tầm nhìn và sức khỏe tim mạch. Nguồn vitamin C cao trong quả cơm cháy còn giúp tăng cường khả năng miễn dịch. Ngoài ra, quả cơm cháy còn chứa nhiều chất xơ, canxi, sắt, kali và các loại vitamin A, B6.<br /><strong><br />9. Quýt</strong><br />Quýt cũng là một nguồn cung cấp canxi tuyệt vời, bên cạnh đó trong loại quả này còn dồi dào các chất chống oxy hóa mạnh như vitamin A và C, giúp tăng cường sức đề kháng; phòng ngừa táo bón nhờ chất xơ và duy trì huyết áp ổn định nhờ kali. Vitamin B2 và B6 chứa trong quýt còn có tác dụng chống mệt mỏi. Quýt cũng cung cấp folate cho cơ thể giúp đẩy mạnh khả năng sinh sản.<br /> <em><strong><br />Theo Health</strong></em></p>', '1', '1', '0', '3', '2010-05-02 08:44:51', '62', '', '2010-05-15 14:16:24', '62', '0', '0000-00-00 00:00:00', '2010-05-02 08:44:51', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '7', '0', '14', 'trái cây, canxi', 'Những loại trái cây nhiều canxi', '0', '7', 'robots=trái cây, canxi\nauthor=');
INSERT INTO `jos_content` VALUES ('106', 'Cảnh giác với “đạm hoa quả” đẹp da', 'cnh-giac-vi-m-hoa-qu-p-da', '', '<p style=\"text-align: justify;\">Đang dấy lên phong trào chị em làm đẹp bằng cách truyền “nước hoa quả”...</p>\r\n', '\r\n<p>Ghé một hiệu thuốc bình dân trên phố Cầu Giấy, Hà Nội hỏi mua chai dịch truyền, cô nhân viên nhà thuốc lập tức giới thiệu ba sản phẩm, ngoài hai chai dịch truyền dạng nước muối 9 phần ngàn, còn có chai dung dịch màu vàng như nước pha viên vitamin C sủi bọt, trên nhãn phụ ghi nhập khẩu từ Đài Loan, nhãn chai thuốc lại ghi nhà phân phối là một công ty ở Myanmar! Theo cô bán hàng, đây là đạm hoa quả, giá chỉ 33.000 đồng/chai, truyền để bồi bổ sức khỏe, mát và đẹp da, các bà các chị đang dùng nhiều...</p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/canhgiacvoidamhoaqua.jpg\" border=\"0\" /><br /><strong> </strong></p>\r\n<p style=\"text-align: justify;\"><strong><br />Loạn truyền dịch</strong><br /><br />Chị Trần Thị Bích Hồng ở Thanh Xuân (Hà Nội) có thể coi là “con nghiện” dịch truyền. Nhà có người ốm, sốt, bất kể bệnh gì, nguyên nhân do đâu, mức độ ra sao, đã đến mức suy kiệt phải truyền dịch hay không, chị Hồng cũng giục đi...truyền dịch. Cách của chị là mời y tá gần nhà hay y tá quen, mua chai truyền dịch, dây, kim truyền ở hiệu thuốc về nhà và... truyền.<br /><br />Chị Hằng, một y tá ở trạm y tá phường, cũng hay được mời đến các gia đình trong khu vực quận Cầu Giấy chị ở để truyền dịch. Thôi thì đủ kiểu truyền, cụ già truyền đạm cho khỏe, em bé tiêu chảy, sốt thì cho truyền nước, các chị em truyền “đạm hoa quả”, vừa bồi bổ sức khỏe vừa đẹp da... Dịch truyền giờ rất rẻ, mua đâu cũng có, truyền vào ăn uống có kém thì người vẫn không sút, da dẻ sáng đẹp, ai cũng thích, nhất là các chị em độ tuổi thích làm đẹp.<br /><br />Thế nhưng khi chúng tôi gặp PGS.TS Nguyễn Đăng Hòa, giám đốc Trung tâm Theo dõi phản ứng phụ của thuốc (Trung tâm ADR, ĐH Dược Hà Nội), TS Hòa giật mình bởi cách suy nghĩ đơn giản của chị em. “Đúng là đang có tình trạng loạn truyền dịch. Bố mẹ già yếu, không ăn được cho truyền chai đạm; thấy cụ già nhà hàng xóm sau truyền đạm trông có vẻ khỏe cũng... mua đạm về truyền cho bố mẹ mình!<br /><br />Về nguyên tắc, tất cả thuốc tiêm, truyền là thuốc bán theo đơn, phải có bác sĩ chỉ định mới được sử dụng, nếu không có thể ảnh hưởng đến tính mạng. Như chai dịch truyền đạm là đạm thủy phân, là kháng nguyên; truyền chai thứ nhất, thứ hai không vấn đề gì nhưng đến chai thứ ba kháng thể chống lại kháng nguyên, người bệnh có thể tử vong” - ông Hòa khuyến cáo.<br /><br /><strong>Làm đẹp bằng thực phẩm là tốt nhất</strong><br /><br />Theo một dược sĩ làm việc tại Bộ Y tế, “đạm hoa quả” là cách nói của thị trường, thực tế sản phẩm này là dịch truyền có bổ sung vitamin. Nếu ăn uống được, tốt nhất nên bổ sung vitamin bằng cách ăn uống các thực phẩm tốt, đảm bảo vệ sinh thực phẩm và chất lượng dinh dưỡng.<br /><br />Còn PGS.TS Nguyễn Đăng Hòa nhấn mạnh đến yếu tố mất an toàn của tình trạng truyền dịch tại nhà hoặc tự ý truyền dịch. Theo PGS Hòa, từ đầu năm 2010 đến nay Trung tâm ADR nhận được hơn 300 báo cáo về các trường hợp gặp phản ứng phụ của thuốc, chủ yếu là sau khi điều trị bằng kháng sinh hoặc các thuốc kháng viêm (corticoid). Ngay giữa tháng 4 này, tại Bình Định có hai anh em ruột là học sinh lớp 8 và lớp 6 tử vong sau khi truyền dịch tại nhà nhân viên y tế, mặc dù nguyên nhân tử vong chưa được xác định, nhưng không thể coi thường tính mạng mà truyền dịch tại nhà.<br /><br />Theo ông Hòa, không thể lường hết mọi phản ứng phụ của thuốc. Mỗi sản phẩm dịch truyền có chỉ định riêng, dung dịch nước muối 9 phần ngàn bù nước trong trường hợp tiêu chảy, mất nước, mất điện giải. Dịch truyền đạm sử dụng trong trường hợp bệnh nhân suy kiệt... Nhưng bệnh nhân ở nhà thì làm sao xác định được mất nước, mất điện giải, suy kiệt đến mức độ nào và cần bù hay chưa.<br />Chưa kể truyền dịch tại nhà nếu gặp phản ứng phụ sẽ khó cứu chữa do không đủ thiết bị y tế. “Chỉ truyền dịch nếu có y lệnh của bác sĩ và sự giám sát của bác sĩ hoặc điều dưỡng, nhưng người dân còn coi thường nguyên tắc đó, phản ứng có hại là tất yếu” - PGS Hòa nhấn mạnh.<br /> <br /><strong>Theo Tuổi Trẻ</strong></p>', '1', '1', '0', '2', '2010-05-02 08:52:55', '62', '', '2010-05-15 09:44:19', '62', '0', '0000-00-00 00:00:00', '2010-05-02 08:52:55', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '13', 'hoa quả, đẹp da', 'Cảnh giác với “đạm hoa quả” đẹp da', '0', '11', 'robots=hoa quả, đẹp da\nauthor=');
INSERT INTO `jos_content` VALUES ('107', 'Tiếp xúc lợn dịch, 4 người nhập viện', 'tip-xuc-ln-dch-4-ngi-nhp-vin', '', '<p style=\"text-align: justify;\">Gần một tuần nay, mỗi ngày Bệnh viện Bệnh nhiệt đới ở Hà Nội tiếp nhận 1-2 bệnh nhân bị liên cầu khuẩn - một loại bệnh lây từ lợn sang người. 4 người đang điều trị tại đây, trong đó 2 ca rất nặng phải thở máy.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/tiepxucthitlon4nguoinhapvien.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br />Những trường hợp mắc bệnh này có thể do ăn thịt lợn bệnh chưa được nấu chín, ăn tiết canh hoặc tiếp xúc với máu, dịch tiết của lợn qua các vết thương ở da, đường hô hấp.<br /><br />Tiến sĩ Lý Ngọc Kính, Giám đốc Bệnh viện Bệnh nhiệt đới cho biết, bệnh liên cầu khuẩn lây từ lợn bệnh sang người gồm 3 thể: nhiễm trùng huyết, viêm màng não mủ hoặc kết hợp cả hai.<br /><br />Cũng theo ông, hiện bệnh chưa thành dịch. Các bệnh nhân mới chỉ rải rác ở các tỉnh đang có dịch tai xanh. Tuy nhiên, bệnh có thể dẫn đến tử vong nếu điều trị muộn. Hơn nữa, dịch lợn tai xanh đang bùng phát ở nhiều tỉnh, thành vì thế người dân cần rất cảnh giác, đề phòng bệnh.<br /><br />Theo các nghiên cứu y khoa, bệnh tai xanh không lây sang người. Tuy nhiên, bệnh này làm suy giảm miễn dịch, khiến các bệnh khác ở lợn phát triển nhanh, trong đó có liên cầu khuẩn, có thể lây truyền bệnh sang người. Bệnh nguy hiểm ở chỗ có thể dẫn đến tử vong nếu điều trị muộn. Tỷ lệ tử vong có thể lên tới 7%. Những người bị mắc bệnh chết còn do nhiễm độc tố vi khuẩn, gây hiện tượng sốc.<br /><br />Dịch tại xanh đang diễn biến rất nghiêm trọng và có nguy cơ lan từ miền Bắc vào miền Trung (lan rộng khắp 8 tỉnh miền Bắc). Vì thế, người tiêu dùng không nên mua bán, ăn lợn bệnh, không ăn thịt lợn sống, tiết canh, nội tạng lợn chưa nấu chín và đặc biệt không ăn thịt lợn ốm, chết.<br />Thời gian ủ bệnh ngắn, chỉ từ vài giờ đến 3 ngày. Khi có biểu hiện sốt cao (40,41 độ C), xuất hiện các mảng xuất huyết hoại tử dưới da, tiêu chảy, cứng cổ..., có thể khó thở, suy gan, suy thận thì người dân nên đến bệnh viện sớm, tránh nguy cơ tử vong.<br /> <br /><strong><em>Theo VnExpress</em></strong></p>', '1', '1', '0', '1', '2010-05-02 08:58:23', '62', '', '2010-05-15 09:36:05', '62', '0', '0000-00-00 00:00:00', '2010-05-02 08:58:23', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '9', 'lợn dịch', 'Tiếp xúc lợn dịch, 4 người nhập viện', '0', '4', 'robots=lợn dịch\nauthor=');
INSERT INTO `jos_content` VALUES ('108', 'Các hóa dược - thảo dược điều trị phì đại tuyến tiền liệt', 'cac-hoa-dc-tho-dc-iu-tr-phi-i-tuyn-tin-lit', '', '<p style=\"text-align: justify;\">Khoảng 60% nam từ 60 tuổi trở lên bị phì đại lành tính tuyến tiền liệt (PĐLTTLT). Trước kia, hầu hết đều phải phẫu thuật. Nay, chỉ khoảng 20% phải phẫu thuật ngay, còn 80% chưa cần hoặc điều trị nội khoa. Việc đánh giá hiệu quả thuốc dựa vào mức khống chế bệnh, mức giảm triệu chứng.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/hoachatphidaitienliet.jpg\" border=\"0\" /><br /><strong><br /></strong></p>\r\n<p style=\"text-align: justify;\"><strong>Các hóa dược</strong><br /><br />Ức chế 5-alpha reductase (5ARI): Enzym 5-alpha reductase có vai trò chuyển testosteron thành dihydrotestosteron; chất này kích hoạt thụ thể androgen trong tiền liệt tuyến (TLT) gây ra sự chuyển mã, giải mã một số yếu tố tăng trưởng (như yếu tố tăng trưởng biểu mô - EGF). Ức chế enzym 5 - alphareductase, làm chậm hay khống chế sự phát triển, giảm  triệu chứng bệnh. Hai thuốc hay dùng: dutasterid và finasterid<br /><br />PĐLTTLT phát triển chậm. Rối loạn tiểu tiện không tăng theo tỷ lệ thuận hoàn toàn với khối u do chèn ép, mà còn do sự thay đổi hormon. Chỉ  dùng các thuốc này khi có kích  thước TLT lớn. Không nên quá lo lắng, tự ý dùng khi chưa có chỉ định. Khi dùng cũng  không nên nôn nóng (sau 3 tháng mới thấy hiệu lực), không  tự ý ngừng thuốc ( khi chỉ mới gặp vài tác dụng phụ nhỏ).<br /><br />Chẹn alpha adrenergic: Trong PĐLTTLT, có khoảng 60% thành phần mô tăng sinh là cơ trơn, mô liên kết. Khi thụ thể alpha adrenergic nằm trong cơ trơn bị kích thích thì trương lực cơ trơn tăng, gây rối loạn tiểu. Chẹn alpha adrenergic ngăn sự tăng trương lực cơ, giúp cổ bàng quang mở ra dễ dàng, cải thiện các triệu chứng liên quan đến chức năng tống xuất của bàng quang, giảm rối loạn tiểu tiện. Chẹn alpha adrenergic cũng đối kháng với sự giảm phenylephrin có làm co tổ chức TLT nhưng kém hơn ức chế  5-alpha reductase. Hai thuốc hay dùng là terazosin và prazosin.<br /><br />Tuy nhiên, các thuốc này làm giảm sự cản trở ngoại vi, dẫn tới hạ huyết áp trên cả tâm thu và tâm trương, ở tư thế đứng và nằm nhưng chậm và ít ảnh hưởng đến nhịp tim. Đối với người bệnh có kèm theo tăng huyết áp cần dùng thận trọng.<br /><br />Thuốc có hiệu lực nhanh, sau 1-3 tuần các rối loạn tiểu giảm dần. Nếu sau 3 tháng dùng không thấy hiệu quả thì cần khám lại, chọn liệu pháp khác.</p>\r\n<p style=\"text-align: justify;\"><strong><br />Các thảo dược</strong><br /><br />Chiết xuất thảo dược (CXTD) chiếm tỷ lệ cao trong tổng số thuốc PĐLTTLT (Đức, Pháp 25,3%-36,8% - Italia, Tây Ban Nha 3,5-10%). Cơ chế mới được giả thiết (ức chế 5-alpha reductase, chẹn alpha adrenergic, ức chế tổng hợp prostaglandin) nhưng chưa được chứng minh lâm sàng, thiếu các nghiên cứu dược động học, sinh khả dụng. Chẳng hạn, không chứng minh được giảm PSA máu thì không chấp nhận có cơ chế ức chế 5-alpha reductase. Hiệp hội niệu khoa thế giới (SIU), Hiệp hội niệu khoa Mỹ (AUA) chưa đưa CXTD vào danh  mục điều trị.<br /><br />Permixon: Chiết từ quả cây cọ lùn Saw pametto (serenoa repens). Nghiên cứu (Carrano-1996) trên 1.098 người, dùng 6 tháng, thấy permison làm giảm các rối loạn tiểu, không giảm thể tích TLT như finasterid. Nghiên cứu (Debruyn-2002) trên 704 người thấy permison làm giảm rối loạn đường tiểu dưới như tamsulosin (chặn alpha adrenergic). Tuy nhiên, trong một nghiên cứu khác ở 112 người, theo đúng thiết kế của WHO (công bố trên NEJM - ) lại thấy hiệu quả permison trên mức giảm rối loạn tiểu, tăng lưu lượng dòng chảy tối đa, giảm thể tích TLT chỉ tương đương như dùng giả dược.<br /><br />Tadenan: Chiết xuất từ cây đào châu Phi (Pygeum africanum): Năm 2000, Ishani tổng hợp từ 18 nghiên cứu trên 1.562 người, song không có nghiên cứu nào đạt thiết kế như WHO. Các nghiên cứu ngẫu nhiên cho biết hiệu quả chỉ tương tự như permison.<br /><br />Pepopen: Chiết xuất từ hạt bí ngô (Curcubita ppepo curcubitaceae) có hoạt chất 7-phytosterol. Hiệu quả: giảm số lần tiểu đêm, tăng lưu lượng dòng tiểu tối đa, giảm tiểu sớm, tiểu dắt, tiểu buốt, khó tiểu.<br /><br />Trinh nữ hoàng cung: Cao lá đã chuẩn hóa alcaloid. Việt Nam đã công bố kết quả nghiên cứu tổng quát: thuốc làm giảm rối loạn tiểu, làm nhỏ thể tích TLT.<br /><br />Tóm lại: CXTD chỉ làm giảm rối loạn đường tiểu dưới, chỉ có thể dùng trong PĐLTTLT mức nhẹ, ít có nguy cơ  tiến triển.<br /><strong><br />Một số nghiên cứu mới</strong><br /><br />Phối hợp ức chế 5-alpha reductase với chẹn alpha adrenergic (ở 35 nước với 4.844 người tham gia trong đợt thử nghiệm đầu là 2 năm), thấy hiệu quả hơn  dùng riêng lẻ. Tiêm vào chỗ tận cùng đầu thần kinh độc tố butolotoxin, độc tố sẽ ức chế sự phóng thích chất dẫn truyền acetylcholin, làm giảm sự co cứng cơ nên giảm tắc nghẽn đường tiểu. Một số nước đã áp dụng, nước ta chưa dùng rộng rãi.<br />PĐLTTLT không đe đọa tính mạng, thường tiến triển chậm. Biết rõ hiệu năng từng loại  thuốc, dùng đúng thời điểm sẽ có hiệu quả, tránh sự tiến triển nhanh làm bệnh nặng thêm, có thể tránh được phẫu thuật, giúp người bệnh nâng cao chất lượng cuộc sống.<br /> <br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '2', '2010-05-02 09:01:53', '62', '', '2010-05-15 09:44:05', '62', '0', '0000-00-00 00:00:00', '2010-05-02 09:01:53', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '12', 'thảo dược, phì đại tuyến tiền liệt', 'Các hóa dược - thảo dược điều trị phì đại tuyến tiền liệt', '0', '5', 'robots=thảo dược, phì đại tuyến tiền liệt\nauthor=');
INSERT INTO `jos_content` VALUES ('109', 'Nhân trần, vị thuốc chữa viêm gan', 'nhan-trn-v-thuc-cha-viem-gan', '', '<p style=\"text-align: justify;\">Nhân trần tên khoa học Adenosma glutinosum (L.) Druce) thuộc họ hoa mõm chó (Scrophulariaceae), tên khác là chè nội, chè cát, hoắc hương núi, tuyến hương, mao xạ hương. Từ lâu, cả cây nhân trần được dùng làm thuốc với nhiều công dụng tốt. Dược liệu có vị đắng, the, mùi thơm, tính mát, không độc, có tác dụng thanh nhiệt, lợi thấp, thông tiểu tiện, làm ra mồ hôi.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/nhantran.jpg\" border=\"0\" width=\"333\" height=\"500\" /></p>\r\n<p style=\"text-align: center;\"><em><span style=\"font-size: small;\">Nhân trần</span></em></p>\r\n<p style=\"text-align: justify;\"><br />Tuệ Tĩnh đã dùng nhân trần 30g phối hợp với dành dành 24 quả, thạch cao 4 - 6g nung, sắc uống để chữa hoàng đản (vàng da).<br /><br />Chữa kém ăn, đầy bụng, khó tiêu: nhân trần 12g, kim tiền thảo 10g, cam thảo nam 10g. Các vị dùng cả cây trừ rễ, rửa sạch, thái nhỏ, phơi khô, sắc với 400ml nước còn 100ml, uống làm 2 lần trong ngày sau bữa ăn. Hoặc nhân trần 20g, ké hoa vàng 20g, thân và rễ mộc thông 10g, rễ móc diều 10g, sao vàng, sắc uống (phụ nữ có thai không được dùng).<br /><br />Dùng cho phụ nữ sau sinh:  nhân trần 8g sắc với mần tưới 20g, mạch môn 20g, ngải cứu 10g, rẻ quạt 4g, vỏ bưởi đầu khô 4g, tất cả cho vào sắc uống ngày 1 thang.<br /><br />Để điều hòa kinh nguyệt: Nhân trần 12g, ích mẫu 12g, lá đuôi lươn 10g, bạch đồng nữ 10g, rễ gắm 8g, nghệ đen 6g. Sắc hoặc nấu thành cao lỏng, uống trong ngày.<br />Trị hen suyễn: Nhân dân ở vùng đồng bằng sông Cửu Long dùng nhân trần phối hợp với hoa cúc vạn thọ, rau cần, củ tầm sét, thài lài tía, rễ bạch đồng nữ và tinh tre mỡ, mỗi thứ 10g, sắc uống.<br /><br />Đặc biệt nhân trần  có tác dụng chữa viêm gan do virut:<br /><br />- Nhân trần 16g, lá vọng cách 16g, lá cối xay 12g, sắc uống.<br /><br />- Nhân trần 16g, quả dành dành 12g, nghệ vàng 8g, sắc uống.<br /><br />- Nhân trần 3g, vỏ núc nác 3g, nghệ vàng 3g, rau má 4g, sài hồ nam 2g, dành dành 2g, nhọ nồi 2g, hậu phác nam 2g. Nhân trần, vỏ núc nác, sài hồ, nhọ nồi, rau má nấu thành cao lỏng. Các dược liệu khác phơi khô, tán nhỏ, rây bột mịn. Trộn cao với bột làm thành viên. Ngày uống 10g chia làm 2 lần.<br />- Nhân trần và vỏ quả bưởi (bỏ phần cùi trắng) lượng bằng nhau, thái nhỏ, phơi khô, tán bột. Mỗi lần uống 6g, ngày 3 lần.<br /> <em><strong><br />Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '2', '2010-05-02 09:06:39', '62', '', '2010-05-15 09:43:34', '62', '0', '0000-00-00 00:00:00', '2010-05-02 09:06:39', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '14', '0', '11', 'Nhân trần, Adenosma glutinosum, Scrophulariaceae, họ hoa mõm chó, viêm gan', 'Nhân trần, vị thuốc chữa viêm gan', '0', '25', 'robots=Nhân trần, Adenosma glutinosum, Scrophulariaceae, họ hoa mõm chó, viêm gan\nauthor=');
INSERT INTO `jos_content` VALUES ('110', 'Chữa chứng mất ngủ với rau rút', 'cha-chng-mt-ng-vi-rau-rut', '', '<p style=\"text-align: justify;\">Rau rút (rau nhút), là cây thảo nổi ngang mặt nước, quanh thân có phao xốp màu trắng. Cây có rễ mấu, lá kép lông chim hai lần. Hoa hợp thành đầu màu vàng. Rau rút thường mọc dưới nước ở mương rãnh, ao hồ. Toàn cây dùng làm thuốc, có thể dùng tươi hay khô. Ngoài được trồng làm rau ăn, kinh nghiệm dân gian còn sử dụng rau rút làm thuốc. Theo Đông y rau rút có vị ngọt, tính hàn, không độc, tác dụng an thần, mát gan, giải nhiệt độc, dùng chữa chứng mất ngủ, trị nóng trong sinh mụn...</p>\r\n', '\r\n<table border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"images/stories/tintucsukien/caythuoc/raurut.jpg\" border=\"0\" /><br /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">Rau rút</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\"><br />Chữa chứng mất ngủ: Rau rút phơi khô 25g, khoai sọ 25g, lá sen 10g tất cả rửa sạch đem ninh nhừ với nước, cho gia vị vừa đủ, ăn cả bã lẫn nước. Tuần ăn 3 - 5 lần, nên ăn khi còn ấm, tốt nhất ăn vào buổi tối. Hoặc có thể dùng canh rau rút nấu với cá rô: rau rút tươi 300g, cá rô 200g. Rau rút làm sạch (bỏ rễ và lớp phao trắng bên ngoài), rửa sạch, thái nhỏ. Cá làm sạch lọc lấy thịt, thái mỏng, ướp gia vị;  xương cá giã nhỏ lọc lấy nước khoảng 350ml. Đun sôi nước lọc xương cá, cho thịt cá vào, quấy đều, đun sôi khoảng 5 phút cho tiếp rau rút vào, nêm gia vị vừa đủ, khi canh sôi nhấc ra ngay, nên ăn khi canh còn nóng. Có thể dùng làm canh ăn với cơm. Ăn liền trong 7 ngày. Canh này rất tốt cho người mất ngủ, suy nhược thần kinh, ăn uống kém.<br /><br />Trị nóng trong sinh mụn: 30g rau rút khô, sắc với 400ml nước còn 200ml, uống thay nước uống trong ngày hoặc ăn thường xuyên rau rút sống trong bữa ăn (hái lấy đọt non, nhặt bỏ rễ và lớp phao trắng bên ngoài, rửa sạch, ăn cả cọng lẫn lá, như các loại rau tươi khác).<br /><em>Lưu ý:</em> Rau rút tính lạnh nên những người tạng hàn, dễ tiêu chảy và tre nhỏ không nên ăn.           <br /> <br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '3', '2010-05-02 13:18:32', '62', '', '2010-05-15 14:16:43', '62', '62', '2010-05-15 14:16:50', '2010-05-02 13:18:32', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '13', 'mất ngủ, rau rút', 'Chữa chứng mất ngủ với rau rút', '0', '10', 'robots=mất ngủ, rau rút\nauthor=');
INSERT INTO `jos_content` VALUES ('113', 'HƯƠNG TÔ TÁN (Hòa tễ cục phương)', 'hng-to-tan-hoa-t-cc-phng', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Hương phụ  160 g<br /><br />Tô diệp        160 g<br /><br />Trần bì          80 g<br /><br />Chích thảo    40 g</p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/huongphu.jpg\" border=\"0\" alt=\"Hương phụ\" title=\"Hương phụ\" /></p>\r\n<p style=\"text-align: center;\">Hương phụ</p>\r\n<p style=\"text-align: justify;\"><br /><em><strong>Cách dùng:</strong></em> Tán bột mịn làm thuốc tán mỗi lần sắc 12g uống. Có thể dùng làm thuốc thang với liều lượng giảm bớt.<br /><br /><em><strong>Tác dụng:</strong></em> Phát hãn, giải biểu lý khí hòa trung. <br /><br />Chữa chứng ngoại cảm phong hàn, kiêm khí trệ có các triệu chứng người nóng, sợ lạnh, đau đầu, ngực bụng đầy tức, chán ăn, không ra mồ hôi, rêu lưỡi trắng mỏng, mạch phù.<br /><br /><em><strong>Giải thích bài thuốc:</strong></em><br /><br />Tô diệp: tính cay ôn thơm có tác dụng giải biểu, lý khí điều trung là chủ dược. <br />Hương phụ:  lý khí, giải uất trệ. <br />Trần bì: lý khí, giảm đau tức bụng ngực. <br />Cam thảo: điều hòa các vị thuốc.<br />Ứng dụng lâm sàng:<br /><br /> Bài thuốc chữa có hiệu quả chứng cảm mạo thể tiêu hóa.<br /><br />1.     Nếu phong hàn nặng, nghẹt mũi, chảy nước mũi trong gia Thông bạch, Sinh khương. <br /><br />2.     Đau đầu gia Mạn kinh tử, Bạch tật lê để sơ phong chỉ thống. <br /><br />3.     Nếu khí nghịch ho và đàm nhiều gia Tô tử, Bán hạ để giáng khí hóa đàm. <br /><br />4.     Trong bài thuốc các vị thuốc Tô diệp, Hương phụ, Trần bì đều có tác dụng lý khí giải uất dùng tốt cho chứng đau bụng do khí trệ: nếu đau bụng đầy tức gia Hậu phác, Chỉ xác; thức ăn không tiêu gia Kê nội kim, Thần khúc để tiêu thực đạo trệ.<br /><br /><em><strong>Chú ý lúc sử dụng:</strong></em> Bài thuốc tính dược ôn nên dùng thận trọng đối với cơ thể âm hư.</p>', '1', '3', '0', '279', '2010-05-03 05:26:04', '62', '', '2010-05-03 06:36:56', '62', '0', '0000-00-00 00:00:00', '2010-05-03 05:26:04', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '13', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('111', 'Thuốc mới giúp đàn ông \'dai sức\' gấp ba lần', 'thuc-mi-giup-an-ong-dai-sc-gp-ba-ln', '', '<p style=\"text-align: justify;\">Thị trường châu Âu vừa xuất hiện Priligy, loại thuốc mới dành cho quý ông xuất tinh sớm, với khả năng kéo dài gấp ba thời gian \"hành sự\".<br />Priligy thay đổi mức độ serotonin (chất dẫn truyền thần kinh) trong não, giúp nam giới kiểm soát quá trình xuất tinh. Thuốc được chỉ định uống trong khoảng thời gian 1 - 3 giờ trước khi “lâm trận” và bảo đảm chủ nhân không lâm vào tình trạng “khóc ngoài quan ải”.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/thucmigipnngdaiscgpbaln.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br />Priligy đã được bán ở một số nước châu Âu. Riêng tại Anh, nó đang được dùng thử nghiệm trên 6.000 nam giới với giá 76 bảng cho một vỉ ba viên.<br />“Vì một số người rất miễn cưỡng khi đề cập đến chứng xuất tinh sớm của mình nên chúng tôi đang dần xóa bỏ rào cản trong việc điều trị cho họ. Chúng tôi tư vấn qua mạng về mức độ phù hợp của Priligy đối với từng người và sẽ bán thuốc cho họ nếu thấy phù hợp”, Nitin Makadia, người đứng đầu bộ phận chăm sóc sức khỏe tình dục nam giới của Lloydspharmacy (công ty đang điều hành dịch vụ tư vấn), nói.<br /><br />Xuất tinh sớm là một trong những rối loạn tình dục phổ biến nhất ở đàn ông. Cứ ba nam giới thì có một người từng gặp vấn đề này ở thời điểm nào đó trong cuộc đời. Một nghiên cứu gần đây cho thấy, về đời sống tình dục, đàn ông Anh và Đức cảm thấy phiền lòng nhất vì vấn đề “chưa đi đến chợ đã tiêu hết tiền”. Họ cũng cảm thấy vô cùng xấu hổ khi nói chuyện này với bạn tình và bác sĩ.<br /> <br /><em><strong>Theo Báo Đất Việt</strong></em></p>', '1', '1', '0', '1', '2010-05-02 13:27:55', '62', '', '2010-05-15 09:36:49', '62', '0', '0000-00-00 00:00:00', '2010-05-02 13:27:55', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '12', '0', '8', 'Thuốc mới', 'Thuốc mới giúp đàn ông \'dai sức\' gấp ba lần', '0', '28', 'robots=Thuốc mới\nauthor=');
INSERT INTO `jos_content` VALUES ('112', 'CỬU VỊ KHƯƠNG HOẠT THANG (Thử sự nan tri)', 'cu-v-khng-hot-thang-th-s-nan-tri', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Khương hoạt         6g<br /><br />Phòng phong         6g<br /><br />Xuyên khung         4g<br /><br />Sinh địa                4g<br /><br />Cam thảo              4g<br /><br />Thương truật         6g<br /><br />Tế tân                   2g<br /><br />Bạch chỉ               4g<br /><br />Hoàng cầm           4g</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/khnghot.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\">Khương hoạt</p>\r\n<p style=\"text-align: justify;\"><em><strong>Cách dùng:</strong></em> Gia Sinh khương 2 lát, Thông bạch 3 cọng, sắc uống.<br /><em><strong><br />Tác dụng:</strong></em> Phát hãn, trừ thấp, thanh lý nhiệt. <br /><br />Dùng trong các chứng ngoại cảm phong hàn thấp, sốt sợ lạnh, đau đầu, cơ thể nhức mỏi, mồm đắng hơi khát, không ra mồ hôi, rêu lưỡi trắng trơn, mạch phù khẩn.<br /><em><strong><br />Giải thích bài thuốc:</strong></em><br /><br />Khương hoạt là chủ dược có tác dụng phát tán phong hàn, trừ phong thấp. <br />Phòng phong, Thương truật phối hợp tăng thêm tác dụng trừ phong thấp, chỉ thống. <br />Tế tân, Xuyên khung, Bạch chỉ trừ phong, tán hàn, hành khí, hoạt huyết, chữa được đau đầu, mình. <br />Sinh địa, Hoàng cầm thanh lý nhiệt, giảm bớt tính cay ôn táo của các vị thuốc. <br />Cam thảo có tác dụng điều hòa thuốc.</p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\"><br /><em><strong>Ứng dụng lâm sàng:</strong></em><br /><br />Bài thuốc này chỉ dùng cho các chứng cảm mạo 4 mùa có tác dụng khu hàn, thanh nhiệt, giảm đau, nhức mình mẩy.<br /><br />1.     Nếu thấp tà nhẹ, mình mẩy đau ít bỏ Thương truật, Tế tân. <br /><br />2.     Nếu thấp nặng ngực đầy tức bỏ Sinh địa gia Chỉ xác, Hậu phác để hành khí hóa thấp. <br /><br />3.     Nếu mình mẩy chân tay đau nhiều tăng lượng Khương hoạt và trên lâm sàng sử dụng có kết quả với nhiều bệnh cảm cúm, thấp khớp cấp có những triệu chứng sốt, sợ lạnh, đau đầu không có mồ hôi, chân tay mình mẩy đau, mồm đắng hơi khát nước.<br /><br /><em><strong>Chú ý lúc sử dụng</strong></em>: Bài thuốc có nhiều vị cay ôn táo nên không dùng cho những trường hợp có triệu chứng âm hư.<br /><br /></p>', '1', '3', '0', '279', '2010-05-02 17:13:18', '62', '', '2010-05-03 06:36:45', '62', '0', '0000-00-00 00:00:00', '2010-05-02 17:13:18', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '14', '', '', '0', '22', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('114', 'ĐẠI THANH LONG THANG (Thương hàn luận)', 'i-thanh-long-thang-thng-han-lun', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Ma hoàng    16 g<br /><br />Chích thảo    8 g<br /><br />Thạch cao   32 g<br /><br />Đại táo      4 quả<br /><br />Quế chi        8 g<br /><br />Hạnh nhân    8 g<br /><br />Sinh khương 8 g</p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/mahoang.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\">Ma hoàng</p>\r\n<p style=\"text-align: justify;\"><br /><em><strong><br />Cách dùng:</strong></em> Thạch cao sắc trước, thuốc sắc chia 3 lần, uống trong ngày, ra mồ hôi nhiều ngưng dùng thuốc.<br /><br /><em><strong>Tác dụng:</strong></em> Phát hãn, giải biểu, thanh nhiệt, trừ phiền. <br /><br />Trị các chứng ngoại cảm phong hàn biểu thực kiêm lý nhiệt chứng thường thấy sốt sợ lạnh, đầu nặng, mình đau không ra mồ hôi, khó chịu, rêu lưỡi trắng hoặc hơi vàng, mạch phù khẩn có lực.<br /><br />Giải thích bài thuốc: Bài thuốc được tạo thành trên cơ sở bài Ma hoàng thang gia tăng lượng Ma hoàng và Cam thảo, có thêm Thạch cao, Gừng và Táo.<br /><br />Tăng lượng Ma hoàng để tăng tác dụng phát hãn và giải biểu. <br />Thạch cao: thanh nhiệt trừ phiền. <br />Thêm lượng Cam thảo để điều hòa trung khí. <br />Thêm Khương, Táo để điều hòa vinh vệ. <br />Ứng dụng lâm sàng:<br /><br />Bài thuốc được sử dụng chủ yếu đối với chứng sốt sợ lạnh, không ra mồ hôi, bứt rứt khó chịu mà mạch phù khẩn có lực. <br /><br />Bài thuốc cũng có thể dùng trong các trường hợp vốn cơ thể đàm ẩm, ho suyễn do cảm thụ ngoại tà gây nên, chân tay phù sốt, sợ lạnh không ra mồ hôi, bứt rứt khó chịu.<br /><br /><em><strong>Chú ý lúc sử dụng: </strong></em><br /><br />Bài thuốc tác dụng phát hãn mạnh dễ thương âm dương nên không dùng được với những người hư nhược.<br /><br /></p>', '1', '3', '0', '279', '2010-05-03 05:33:39', '62', '', '2010-05-03 06:37:13', '62', '0', '0000-00-00 00:00:00', '2010-05-03 05:33:39', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '12', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('116', 'TIỂU THANH LONG THANG (Thương hàn luận)', 'tiu-thanh-long-thang-thng-han-lun', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Ma hoàng              12 g<br /><br />Quế chi                 12 g<br /><br />Bán hạ                  12 g<br /><br />Tế tân                     6 g<br /><br />Bạch thược           12 g<br /><br />Can khương          12 g<br /><br />Chích thảo             12 g<br /><br />Ngũ vị tử 6g</p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/mahoang.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Ma hoàng</em></p>\r\n<p style=\"text-align: justify;\"><br /><br /><em><strong>Cách dùng: </strong></em>Sắc nước, chia 3 lần uống trong ngày.<br /><em><strong><br />Tác dụng:</strong></em> Giải biểu, tán hàn, ôn phế, hóa ẩm. <br /><br />Dùng trong các trường hợp ngoại cảm phong hàn bên trong thủy thấp, đờm ẩm ứ trệ có triệu chứng sợ lạnh, phát sốt không ra mồ hôi, ho suyễn, đờm trắng loãng; nặng thì khó thở không nằm được hoặc chân, mặt phù, miệng không khát, rêu lưỡi trắng, nhuận, mạch phù, khẩn.<br /><br /><em><strong>Giải thích bài thuốc:</strong></em><br /><br />Ma hoàng, Quế chi có tác dụng phát hãn, giải biểu, tuyên phế, bình suyễn. <br />Bạch thược hợp Quế chi để điều hòa vinh vệ. <br />Can khương, Tế tân vừa có tác dụng phát tán phong hàn, vừa ôn hóa đờm ẩm. <br />Bán hạ trị táo thấp, hóa đờm. <br />Ngũ vị tử liễm phế, chỉ khái. <br />Cam thảo làm giảm bớt tính cay nóng của Ma hoàng, Quế chi, Can khương.</p>\r\n<p style=\"text-align: justify;\"><br /><em><strong>Ứng dụng lâm sàng:</strong></em><br /><br />Bài thuốc được dùng nhiều để chữa các chứng viêm phế quản mạn tính, hen phế quản có các triệu chứng ho khó thở, đàm loãng trắng, rêu lưỡi trắng hoạt.<br /><br />1.     Trường hợp có chứng nhiệt, bệnh nhân bứt rứt gia Thạch cao gọi là bài: TIỂU THANH LONG GIA THẠCH CAO THANG (Kim quỹ yếu lược). <br /><br />2.     Bệnh nhân khát nhiều bỏ Bán hạ gia Thiên hoa phấn, Sinh địa để thanh nhiệt sinh tân</p>', '1', '3', '0', '279', '2010-05-03 06:30:25', '62', '', '2010-05-03 06:37:35', '62', '0', '0000-00-00 00:00:00', '2010-05-03 06:30:25', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '11', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('117', 'VIỆT TỲ THANG (Kim quỹ yếu lược)', 'vit-t-thang-kim-qu-yu-lc', '', '<p><strong> \r\n', '\r\nThành phần:</strong><br /><br />Ma hoàng      12 g<br /><br />Sinh Khương 12 g<br /><br />Chích thảo      6 g<br /><br />Thạch cao     24 g<br /><br />Đại táo        4 quả</p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/mahoang.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Ma hoàng</em></p>\r\n<p style=\"text-align: justify;\"><br /><br /><em><strong>Cách dùng:</strong></em> Sắc uống chia 3 lần trong ngày.<br /><em><strong><br />Tác dụng:</strong></em> Sơ tán thủy thấp, tuyên phế, thanh nhiệt. <br /><br />Dùng cho người bệnh có triệu chứng phù từ thắt lưng trở lên, mặt và mắt sưng phù nặng kèm theo ra mồ hôi, sợ gió, hơi sốt, mồm khát gặp trong bệnh viêm cầu thận cấp, phù.<br /><br /></p>', '1', '3', '0', '279', '2010-05-03 06:38:56', '62', '', '2010-05-04 16:58:52', '62', '0', '0000-00-00 00:00:00', '2010-05-03 06:38:56', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '10', '', '', '0', '4', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('118', 'XẠ CAN MA HOÀNG THANG (Kim quỹ yếu lược)', 'x-can-ma-hoang-thang-kim-qu-yu-lc', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Xạ can                  12 g<br /><br />Ma hoàng              12 g<br /><br />Tử uyển                12 g<br /><br />Khoản đông hoa    12 g<br /><br />Sinh khương         12 g<br /><br />Bán hạ                  12 g<br /><br />Tế tân                     4 g<br /><br />Ngũ vị tử                 6 g <br /><br />Đại táo                  3 quả</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/xacan.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Xạ can</em></p>\r\n<p><em><span style=\"text-decoration: underline;\"><strong><br /></strong></span></em></p>\r\n<p style=\"text-align: justify;\"><em><span style=\"text-decoration: underline;\"><strong>Cách dùng:</strong></span></em> Sắc nước chia 3 lần uống trong ngày.<br /><em><strong><br />Tác dụng: </strong></em>Ôn phế hóa đàm, chỉ khái, định suyễn. <br /><br />Được dùng có kết quả trong các bệnh viêm phế quản mạn tính, hen phế quản thể hàn.</p>', '1', '3', '0', '279', '2010-05-03 06:44:15', '62', '', '2010-05-04 16:56:53', '62', '0', '0000-00-00 00:00:00', '2010-05-03 06:44:15', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu,bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa,nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '9', '', '', '0', '4', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('119', 'Vỏ gòn xanh trị bệnh', 'v-gon-xanh-tr-bnh', '', '<p style=\"text-align: justify;\">Cây gòn cao từ 5-10 mét, có nhiều cành nhánh, xuân trổ hoa, hè-thu kết trái và trổ bông trắng mịn vào mùa đông. Dân miệt vườn thường sử dụng bông gòn dồn làm gối nằm hoặc kéo chỉ dệt khăn. Vỏ cây gòn xù xì, xanh lục hoặc vàng chanh khi được trên 8 năm tuổi.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/gn.jpg\" border=\"0\" alt=\"Cây gòn\" title=\"Cây gòn\" /></p>\r\n<p style=\"text-align: center;\"><em>Cây Gòn</em></p>\r\n<p style=\"text-align: justify;\">Đây cũng là vị thuốc nam quý thường được người dân Nam bộ ở ĐBSCL sử dụng chữa trị bị ngã trật khớp, bong gân khoeo hay gãy cẳng tay, cẳng chân. Bài thuốc phổ biến như sau: cắt mẩu vỏ cây gòn dài 10-15cm, rộng 3-5cm, tùy vị trí bị chấn thương, cạo bỏ lớp bột ngoài rửa lại với nước muối, đập giập, quét lên một lớp bột nghệ sệt (5-10gr) bó chặt với nẹp (gỗ, sắt) vào chỗ gãy. Sau 3 ngày thay mới. Liên tục 3-5 lần sẽ lành hẳn, cử động bình thường.<br />Ngoài ra, vỏ cây gòn (50gr) sao khử thổ, sắc với 0,5l nước, còn 250ml. Uống cả ngày, liên tục 5 ngày dứt viêm tiết niệu, tiểu gắt và đau bụng dưới. Cũng dùng vỏ cây gòn rửa sạch (1cm2 ) thoa thêm nước cốt một tép tỏi nhét vào kẽ răng đau. Sau 3 lần (cách 3 phút lần) sẽ hết nhức.<br /> <br /><em><strong>Theo Thanh Niên</strong></em></p>', '1', '1', '0', '2', '2010-05-03 06:54:08', '62', '', '2010-05-15 09:43:03', '62', '0', '0000-00-00 00:00:00', '2010-05-03 06:54:08', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '10', 'Vỏ gòn xanh', 'Vỏ gòn xanh trị bệnh', '0', '9', 'robots=Vỏ gòn xanh\nauthor=');
INSERT INTO `jos_content` VALUES ('120', 'Bệnh Viện Y Học Cổ Truyền Trung Ương', 'bnh-vin-y-hc-c-truyn-trung-ng', '', '', '\r\n<p style=\"text-align: left;\"><img src=\"images/stories/anhbenhvien/logocttw.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\">Bệnh viện Y học cổ truyền Trung ương là bệnh viện đầu ngành về YHCT - Trung tâm hợp tác về y học cổ truyền (YHCT) của Tổ chức y tế thế giới tại Việt Nam.</p>\r\n<p style=\"text-align: justify;\">Bệnh viện</p>\r\n<p style=\"text-align: justify;\">có 23 k</p>\r\n<p style=\"text-align: justify;\">hoa phòng, 3 trung tâm được chia thành 3 khối: lâm sàng, cận lâm sàng, và khối các phòng ban chức năng. Bệnh viện có 371 viên chức trong đó có 02 Phó Giáo sư, 14 Tiến sĩ, 35 Thạc sĩ, 9 Bác sĩ chuyên khoa cấp II, 20 Bác sĩ chuyên khoa cấp I . 1/3 cán bộ đại học và trên đại học.</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\">Với đội ngũ các giáo sư, tiến sĩ, thạc sĩ, bác sĩ chuyên khoa II, chuyên khoa I và các bác sĩ giàu kinh nghiệm, bệnh viện là cơ sở điều trị, nghiên cứu, và giảng dạy về YHCT lớn nhất trong cả nước.<br /><br /> Bệnh viện có 470 giường bệnh, có các khoa lâm sàng nội, ngoại, phụ, nhi, châm cứu dưỡng sinh, người có tuổi, hồi sức cấp cứu, v.v..., có đầy đủ các trang thiết bị hiện đại để phục vụ cho chẩn đoán, điều trị và nghiên cứu khoa học.</p>\r\n<p style=\"text-align: justify;\"><br /> Trong hơn 50 năm qua kể từ khi thành lập, với chức năng và nhiệ m vụ chính là kế thừa, phát huy và phát triển YHCT, kết hợp YHCT với YHHĐ trong điều trị và dự phòng, bệnh viện đã đạt được rất nhiều thành tựu trong phát triển YHCT.<br /><br />Nhiều công trình nghiên cứu khoa học cấp nhà nước, cấp bộ và cơ sở nhằm đánh giá tính an toàn và hiệu lực của thuốc YHCT, nghiên cứu xây dựng qui trình bào chế và tiêu chuẩn hóa thuốc YHCT, nghiên cứu ứng dụng các phương pháp dùng thuốc và không dùng thuốc YHCT trong điều trị và dự phòng các bệnh thường gặp, các bệnh mạn tính, khó chữa...đã được thực hiện và được đánh giá cao tại nhiều hội nghị YHCT trong nước và quốc tế<br /><br /> Với vai trò là trung tâm trao đổi thông tin trong và ngoài nước, hàng năm bệnh viện YHCT Trung ương xuất bản và phát hành tạp chí nghiên cứu Y dược học cổ truyền. Các chuyên gia và các bác sĩ của bệnh viện thường xuyên được cử đi nước ngoài để tham dự các hội nghị, hội thảo, giảng dạy, và nghiên cứu chuyên sâu. Bệnh viện cũng thường xuyên có nhiều chuyên gia, học sinh nước ngoài đến trao đổi kinh nghiệm, học tập, tìm hiểu và nghiên cứu về YHCT Việt Nam.</p>\r\n<p style=\"text-align: justify;\">Trong tiến trình phát triển, hội nhập YHCT với các nước trong khu vực và thế giới, bệnh viện đang từng bước hiện đại hóa trên cơ sở giữ vững bản sắc của YHCT, kết hợp tinh hoa của hai nền YHCT và YHHĐ góp phần phục vụ cho sức khỏe cộng đồng ngày một tốt hơn.<span style=\"color: #0000ff;\"> </span></p>\r\n<p style=\"text-align: justify;\"><span style=\"color: #000000;\">Địa chỉ: 29 Nguyễn Bỉnh Khiêm. Hà nội<br />Điện thoại:  84-4-38263616 - Fax: 84-4- 38229353</span></p>\r\n<p> </p>\r\n<p><span style=\"color: #0000ff;\"><br /></span></p>\r\n<p style=\"text-align: center;\" align=\"justify\"><img src=\"images/benh_vien/bando_vncttw.jpg\" border=\"0\" width=\"500\" /></p>\r\n<p style=\"text-align: center;\" align=\"justify\">Bản Đồ</p>', '1', '4', '0', '17', '2010-05-03 13:33:16', '62', '', '2010-05-07 23:52:49', '62', '0', '0000-00-00 00:00:00', '2010-05-03 13:33:16', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '22', '0', '2', '', '', '0', '27', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('121', 'KINH PHÒNG BẠI ĐỘC TÁN (Nhiếp sinh chứng diệu phương)', 'kinh-phong-bi-c-tan-nhip-sinh-chng-diu-phng', '', '<p><strong> \r\n', '\r\nThành phần:</strong><br /><br />Kinh giới       12g<br /><br />Độc hoạt       12g<br /><br />Khương hoạt 12g - 30g<br /><br />Sài hồ           12g<br /><br />Xuyên khung   8g<br /><br />Tiền hồ           8g<br /><br />Kiết cánh        8g<br /><br />Chỉ xác           8g<br /><br />Phục linh      12g<br /><br />Cam thảo       4g</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/kinhgioi.jpg\" border=\"0\" alt=\"Kinh giới\" /></p>\r\n<p style=\"text-align: center;\"><em>Kinh giới</em></p>\r\n<p> </p>\r\n<p><em><strong>Cách dùng:</strong></em> Nguyên là bài thuốc tán, mỗi lần uống 5 - 20g thêm Gừng tươi 3 - 5 lát, Bạc hà 4g sắc uống chia uống 2 lần trong ngày.<br /><br />Bài thuốc có thể dùng dạng thuốc thang sắc uống.<br /><br /><em><strong>Tác dụng:</strong></em> Phát tán, phong hàn, giải nhiệt, chỉ thống. <br /><br />Chữa bệnh ngoại cảm, chứng biểu hàn.<br /><br /><em><strong>Giải thích bài thuốc:</strong></em><br /><br />Khương hoạt, Kinh giới, Phòng phong: tác dụng tân ôn, giải biểu, phát tán phong hàn. <br />Độc hoạt: ôn thông kinh lạc. <br />Xuyên khung: hoạt huyết khu phong chữa đau đầu, nhức cơ bắp. <br />Sài hồ: giải cơ thanh nhiệt. <br />Bạc hà: sơ tán phong nhiệt. <br />Tiền hồ, Kiết cánh: thanh tuyên phế khí. <br />Chỉ xác: khoan trung lý khí. <br />Phục linh lợi thấp.</p>\r\n<p><br /><em><strong>Ứng dụng lâm sàng:</strong></em><br /><br />1.     Đối chứng biểu hàn trong các bệnh cảm viêm đường hô hấp trên có thể dùng cả bài không cần dùng gia giảm có kết quả tốt. <br /><br />2.     Nếu ngoại cảm biểu hàn mà cơ bắp đau không rõ rệt bớt Độc hoạt. <br /><br />3.     Nếu biểu hàn kiêm lý nhiệt rõ như họng sưng đau, đỏ, đầu lưỡi đỏ, miệng khô thì bỏ Độc hoạt, Xuyên khung thêm Kim ngân hoa, Liên kiều, Ngưu bàng tử, Lô căn, Trúc diệp để thanh nhiệt giải biểu. <br /><br />4.     Đối với trẻ em cảm viêm đường hô hấp trên, sốt cao có thể thêm Thuyền thoái, Câu đằng, Chu sa, Đăng tâm.<br /><br /></p>', '1', '3', '0', '279', '2010-05-03 14:07:25', '62', '', '2010-05-04 16:26:20', '62', '0', '0000-00-00 00:00:00', '2010-05-03 14:07:25', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '8', '', '', '0', '7', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('122', 'Bệnh Viện Y Học Cổ Truyền Tuệ Tĩnh', 'bnh-vin-y-hc-c-truyn-tu-tnh', '', '', '\r\n<p><img src=\"images/stories/anhbenhvien/logotuetinh.jpg\" border=\"0\" width=\"166\" height=\"169\" /></p>\r\n<p>Là một đơn vị thuộc Học vi</p>\r\n<p>ện Y Dược học cổ truyền Việt Nam và chịu sự quản lý, lãnh chỉ đạo trực tiếp của Bộ Y tế. Trong những năm qua, Bệnh viện Tuệ Tĩnh đã khẳng định được vị trí cũng như vai trò của mình trong công tác quản lý, cũng như khám chữa bệnh, chăm sóc sức khỏe cộng đồng.</p>\r\n<p style=\"text-align: justify;\">Kể từ khi thành lập tháng 5 năm 2006, mặc dù gặp rất nhiều khó khăn kể cả nhân lực và vật lực song với sự quyết tâm của ban lãnh đạo cùng sự chỉ đạo kịp thời của lãnh đạo Bộ bệnh viện Tuệ Tĩnh không ngừng phát triển để dần trở thành một trong những địa chỉ tin cậy của người bệnh trên cả nước<br /> <br />Giám đốc Học viện YDHCTVN kiêm Giám đốc Bệnh viện Tuệ Tĩnh- Trương Việt Bình được phong hàm Giáo sư tại Trung Quốc</p>\r\n<p style=\"text-align: justify;\">Với đội ngũ cán bộ gồm các Giáo sư, Phó giáo sư, Tiến sĩ cùng các phòng ban chức năng luôn quan tâm chỉ đạo cũng như hướng dẫn các cán bộ y bác sỹ thực hiện tốt nội quy và trách nhiệm của người thầy thuốc. Chính vì thế, chất lượng khám chữa bệnh được nâng cao và đạt được hiệu quả rõ rệt.Với số giường bệnh gần 160 giường đạt 92% so với yêu cầu đặt ra. Đã khám bệnh cho 122.440 lượt bệnh nhân, khám sức khỏe cho 1.200 lượt người. Riêng phòng thủ thuật của bệnh viện thực hiện vượt mức kế hoạch giao đạt 107,64%. Công tác điều trị cận Lâm sàng cũng đạt được những con số khả thi nhất là chỉ tiêu xét nghiệm đạt 196,8%. Các khoa lâm sàng và cận lâm sàng như khoa Nội, khoa Ung bướu, Châm cứu, Tai mũi họng, Răng hàm mặt…cũng đạt chỉ tiêu hiệu quả cao.Những con số nói trên có thể nói hết lên được những thành công ban đầu mà bệnh viên Tuệ Tĩnh đã đạt được trong những năm qua.<br /><br />Bên cạnh đó, công tác đào tạo cán bộ cũng được lãnh đạo bệnh viện quan tâm và đẩy mạnh ở các cấp cơ sở , với việc tổ chức đào tạo các lớp ngắn hạn cho cán bộ điều dưỡng ở các tỉnh xa như Quảng Bình, Thanh Hóa, Lào Cai..ở các tuyến công tác chỉ đạo khám chữa bệnh cũng được quan tâm, bệnh viện đã phối kết hợp với phòng đào tạo – Học viện Y dược học cổ truyền Việt Nam đi 20 tuyến xã ở Hà nội và các tỉnh lân cận, cùng với việc chuyển giao kỹ thuật, chương trình chăm sóc sức khỏe ban đầu cho một số xã như Vân Côn, Hoài Đức, Chương Mỹ (Hà Nội). Cùng với việc chuyển giao công nghệ trong chẩn đoán, điều trị và nghiên cứu khoa học.Thành công hơn cả là việc bệnh viện đã phối hợp cùng với học viện đào tạo liên kết với Thiên Tân – Trung Quốc nghiên cứu hợp tác song phương, tiếp thu những thành tựu lớn của y học. Đến nay, đã có nhiều đề tài nghiên cứu khoa học phục vụ cho công tác chuyên môn, đáng chú ý là việc bệnh viện đã thực hiện 1 đề tài cấp Bộ, nghiệm thu 18 đề tài cấp cơ sở và cũng đã đăng ký 11 đề tài nghiên cứu ở cấp này.<br /><br />Với phương châm phòng bệnh hơn chữa bệnh 100% toàn viện không hút thuốc lá, tổ chức tiêm phòng Vacxin Viêm gan B cho nhân viên các khoa lâm sàng, cận lâm sàng và phòng khám, thường xuyên tuyên truyền vệ sinh phòng bệnh và giáo dục sức khỏe cho các cán bộ công chức trong Học viện, bệnh viện , người bệnh và người nhà.<br />Bệnh viện Tuệ Tĩnh đang từng ngày khẳng định được vị thế của mình trong công cuộc xây dựng và phát triển nền y học cổ truyền theo hướng hiện đại hóa. Xứng đáng như chính tên gọi của Đại danh y Tuệ Tĩnh, Ông Tổ thuốc Nam, một vị thánh về nền y học cổ truyền của dân tộc. Bệnh viện Tuệ Tĩnh chính là nơi chắp cánh những niềm tin và hy vọng xứng đáng với sự tin yêu của những người bệnh trong công cuộc chăm sóc sức khỏe cộng đồng.</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"http://www.vatm.edu.vn/data/dulieuanh/anhhocvien/DSC01511.JPG\" border=\"0\" width=\"400\" height=\"300\" /></p>\r\n<p style=\"text-align: center;\"><em>Ban giám đốc nhận bằng khen của Bộ Y Tế</em></p>', '1', '4', '0', '17', '2010-05-03 14:16:26', '62', '', '2010-05-04 08:59:30', '62', '0', '0000-00-00 00:00:00', '2010-05-03 14:16:26', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '7', '0', '1', '', '', '0', '5', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('123', 'Miếng trầu phòng và trị nhiều chứng bệnh', 'ming-tru-phong-va-tr-nhiu-chng-bnh', '', '<p style=\"text-align: justify;\">Ngay từ thời các Vua Hùng, nhân dân ta đã có tục \"nhai trầu\", vì sau khi nhai người ta lại nhả cả nước và bã đi. Trầu như là một phương tiện đầu tiên của những cuộc giao tiếp \"miếng trầu là đầu câu chuyện\".</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/miengtrauphongvatrichungbenh.jpg\" border=\"0\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\"><strong>\"Miếng trầu\", bao gồm tới 4 dược liệu khác nhau:</strong><br /><br />Lá trầu không có mùi thơm, cay đặc biệt của tinh dầu. Thứ hai là cau hay còn gọi là binh lang hay tân lang. Trong quả cau chứa nhiều thành phần khác nhau, như tanin, các chất béo, các chất đường... Kế đến là một miếng \"vỏ\", là vỏ rễ còn tươi, có mau hồng đỏ của cây chay. Trong vỏ chủ yếu là thành phần tanin. Sau cùng là một chút vôi tôi là một chất kiềm.<br /><strong><br />Tác dụng trị bệnh của \"miếng trầu\"!</strong><br /><br />- Từ lá trầu không, nhất là thành phần tinh dầu có tác dụng kháng sinh rất mạnh với tụ cầu vàng liên cầu tan máu và hàng loạt các loại vi khuẩn khác... Trầu không có tác dụng chống co thắt trên mô cơ trơn, ức chế sự tăng quá mức của nhu động ruột... Trên thực tế, người ta sử dụng dịch chiết nước của lá trầu không để ngậm trị viêm răng, lợi, đau răng, nhất là bệnh nha chu viêm. Dùng nước đun sôi để nguội của lá trầu rửa các mụn ngứa, các vết thương... Cuống lá trầu, chỉ cần một cuống, ngắt ra, đặt dọc ở huyệt ấn đường, sẽ làm hết nấc ở trẻ em. Nước mầu đỏ khi nhai miếng trầu, bôi vào các nốt \"chàm\" ở trẻ sơ sinh, cũng có tác dụng tốt. Lá trầu hơ nóng chườm vào vùng chung quanh rốn trị đau bụng  ở trẻ em...     <br /><br />Cau trong \"miếng trầu\", thực chất lại được sử dụng tới hai vị thuốc của quả cau; đó là vị \"binh lang\", tức phần hạt của quả cau (<em>Semen Arecae catechi)</em> và đại phúc bì (<em>Pericarpium Arecae catech</em>i) phần vỏ day của quả cau. Cả hai bộ phận này đều chứa alcaloid,  có tác dụng làm tê liệt các cơ của con sán dây trong ruột, còn có tác dụng tăng tiết nước bọt. Ngoài ra đại phúc bì còn có tác dụng lợi tiểu. Trên thực tế, khi trị sán dây, người ta còn phối hợp binh lang (20 - 40g) với 40 g hạt bí ngô. Có thể sắc riêng binh lang, lấy nước uống với bột hạt bí ngô, uống vào lúc đói. Khi sán đã bắt đầu ra, bệnh nhân cần ngồi vào chậu nước ấm tới khi cho sán ra hết. Đối với đại phúc bì, dùng trị bệnh báng (chứng tích nước trong phúc mạc, viêm gan cổ trướng), tiểu tiện khó khăn, buốt dắt. Có thể phối hợp trong cổ phương Ngũ bì ẩm: đại phúc bì, khương bì, tang bạch bì, phục linh bì, trần bì, mỗi vị 12g. Sắc uống, ngày một thang, uống liền 2 - 3 tuần lễ.<br /><br />Vỏ trong miếng trầu  tức vỏ cây chay được dùng để trị đau răng và làm cho răng bền chắc, nhất là khi bị lung lay; có thể sắc nước ngậm nhiều lần trong ngày.<br />Vôi trong miếng trầu: Chất kiềm Ca(OH)<sub>2</sub> trong vôi tôi kết hợp với tinh dầu trong lá trầu không tạo phản ứng tỏa nhiệt do đó làm cơ thể ấm lên.<br /> <br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '3', '2010-05-04 09:15:47', '62', '', '2010-05-15 14:17:03', '62', '0', '0000-00-00 00:00:00', '2010-05-04 09:15:47', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '8', '0', '12', 'Miếng trầu', 'Miếng trầu phòng và trị nhiều chứng', '0', '14', 'robots=Miếng trầu\nauthor=');
INSERT INTO `jos_content` VALUES ('124', 'Ăn xoài chữa được bệnh gì?', 'n-xoai-cha-c-bnh-gi', '', '<p style=\"text-align: justify;\">Không chỉ có vị ngon ngọt, trái xoài chứa nhiều dưỡng chất rất tốt cho sức khỏe của bạn.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/anxoaichuaduocbenhgi.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\">Xoài giàu chất chống ô-xy hóa, làm mất tác dụng của các phân tử gốc tự do gây hại cho tế bào và gây ra những trục trặc cho sức khỏe như bệnh tim, già trước tuổi và ung thư.<br /><br />Sau đây là một số lý do khác vì sao bạn nên ăn xoài:<br /><br />- Vốn có hàm lượng chất sắt cao, xoài là một thực phẩm tuyệt vời cho thai phụ và những ai mắc bệnh thiếu máu.<br /><br />- Bạn muốn làm thông lỗ chân lông ư? Hãy đắp vài lát xoài lên da và sau đó rửa sạch sau 10 phút.<br /><br />- Nếu bạn mắc chứng khó tiêu, không có điều gì giúp bạn tốt như xoài. Xoài có tác dụng giảm tính a-xít và trợ giúp tiêu hóa vì chúng chứa nhiều enzyme hỗ trợ tiêu hóa giúp, phá vỡ chất đạm.<br /><br />- Giàu chất kali, xoài giúp giảm huyết áp cao. Xoài cũng chứa pectin, một loại chất xơ có tác dụng giảm nồng độ cholesterol trong máu.<br /><br />- Một số cuộc nghiên cứu cho thấy ăn xoài giúp giảm nguy cơ hình thành sỏi thận.<br /><br />- Trong y học cổ truyền Trung Quốc, xoài được xem có tính ngọt và chua. Xoài rất hữu ích cho những ai mắc bệnh thiếu máu, chảy máu nướu răng, ho, sốt, buồn nôn và thậm chí say sóng.<br /><br />- Bạn đang học thi ư? Loại quả này giàu chất a-xít glutamine - một loại protein quan trọng cho sự tập trung và trí nhớ. Thay vì ăn những món bánh có hại cho sức khỏe, tại sao bạn không thử dùng vài lát xoài.<br />- Mặc dù lâu nay xoài không được xem có tác dụng tăng ham muốn tình dục nhưng loại quả này chứa nhiều vitamin E, giúp cải thiện khả năng tình dục. Vitamin E giúp điều hòa lượng hormone tình dục<br /> <br /> <em><strong><br />Theo Bacsi.com</strong></em></p>', '1', '1', '0', '3', '2010-05-04 09:21:38', '62', '', '2010-05-15 14:17:24', '62', '0', '0000-00-00 00:00:00', '2010-05-04 09:21:38', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '11', 'xoài', 'Ăn xoài chữa được bệnh gì?', '0', '16', 'robots=xoài\nauthor=');
INSERT INTO `jos_content` VALUES ('125', 'Cỏ nhọ nồi, lương huyết cầm máu', 'c-nh-ni-lng-huyt-cm-mau', '', '<p style=\"text-align: justify;\">Cỏ nhọ nồi còn gọi là cỏ mực, hạn liên thảo, mặc thái, mặc hạn liên. Theo Đông y, cỏ nhọ nồi có tác dụng tư bổ can thận, lương huyết cầm máu, ngoài ra còn làm đen râu tóc... Cỏ nhọ nồi được dùng chữa bệnh trong những trường hợp sau:</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/conhonoi.jpg\" border=\"0\" alt=\"Cỏ nhọ nồi\" /></p>\r\n<p style=\"text-align: center;\"><em>Cỏ nhọ nồi</em></p>\r\n<p style=\"text-align: justify;\"><strong>Lương huyết cầm máu:</strong><br /><br />Trị phụ nữ băng huyết: Hạn liên thảo 20g, trắc bách 20g. Sắc uống.<br /><br />Trị tiểu tiện ra máu dùng bài \"Đan nhị thảo\": Hạn liên thảo 63g, xa tiền thảo 63g. Giã lấy nước, chiêu với nước đun sôi.<br /><br />Trị lao phổi khạc ra máu: Hạn liên thảo 60g - 250g, bột lá tử chu 4g. Hạn liên thảo sắc, nước cô đặc uống với bột lá tử chu, thêm lượng đường trắng vừa đủ để điều vị. Mỗi ngày uống 3 - 4 lần.<br /><br />Trị chảy máu chấn thương do dao, mụn nhọt sưng độc: Toàn cây Hạn liên thảo tươi, giã nát, loại khô nghiền thành bột, đắp lên vất thương.<br /><br />Trị tử cung chảy máu (rong huyết): Hạn liên thảo 16g, hoè hoa 16g, xuyến thảo 16g, bồ hoàng thán 16g, ô tặc cốt 16g, nữ trinh tử 16g, lưu ký nô 12g, tiểu kế thảo 30g. Người âm hư thêm sinh địa 16g, bạch thược 8g; người khí hư thêm đảng sâm 12g, bạch truật 8g. Sắc uống.<br /><br />Tư âm bổ thận: Dùng khi thận hư đau lưng, tóc và râu bạc sớm, lú lẫn giảm trí nhớ dùng một trong các bài thuốc sau:<br /><br />Hoàn nhị chí: Hạn liên thảo, nữ trinh tử, liều lượng bằng nhau. Nghiền thành bột, làm mật hoàn. Mỗi lần uống 8 - 12g, ngày uống 2 lần, chiêu với nước đun sôi.<br /><br />Thuốc sắc kim lăng: Hạn liên thảo một lượng vừa đủ, giã vắt lấy nước, thêm nước gừng sống, đường trắng, cô đặc làm hoàn. Mỗi lần uống 16g, ngày 2 lần, chiêu với nước đun sôi.<br /><br />Nhị chí hoàn: Hạn liên thảo, nữ trinh tử liều lượng như nhau, sấy khô tán mịn, thêm mật ong làm hoàn, mỗi lần uống 8 - 12g (khoảng 4 viên, viên to bằng quả táo chua nhỏ); ngày uống 2 lần với nước sôi.<br /><br /><strong>Một số thực đơn chữa bệnh có cỏ nhọ nồi:</strong><br /><br />Nước ép cỏ nhọ nồi: Cỏ nhọ nồi tươi rửa sạch, nghiền ép lấy nước, cho uống với nước sôi để nguội. Dùng cho các trường hợp chảy máu cam, khái huyết, huyết niệu...<br /><br />Canh thịt cỏ nhọ nồi: Cỏ nhọ nồi 60g, rửa sạch, nấu với nước luộc gà hoặc nước canh thịt. Dùng cho các trường hợp rong kinh huyết, trĩ xuất huyết.<br /><br />Xirô gừng tươi cỏ nhọ nồi: Cỏ nhọ nồi 500 - 1.000g, gừng tươi 30 - 60g. Sắc hoặc hãm lấy nước, cô thành dạng cao lỏng, thêm mật ong khuấy đều thành dạng cao. Mỗi lần uống 1 thìa canh, ngày uống 3 thìa. Dùng cho các trường hợp râu tóc bạc sớm, đau đầu, hoa mắt chóng mặt, đau mỏi vùng lưng, thắt lưng.<br />Kiêng kỵ: Người tỳ vị hư hàn, dễ ỉa chảy dùng phải cẩn thận. <br /> <em><strong><br />Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '2', '2010-05-04 09:31:03', '62', '', '2010-05-15 09:42:47', '62', '0', '0000-00-00 00:00:00', '2010-05-04 09:31:03', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '9', 'Cỏ nhọ nồi, lương huyết, cầm máu', 'Cỏ nhọ nồi, lương huyết cầm máu', '0', '8', 'robots=Cỏ nhọ nồi, lương huyết, cầm máu\nauthor=');
INSERT INTO `jos_content` VALUES ('126', 'Nở ngực nhờ thuốc tránh thai', 'n-ngc-nh-thuc-tranh-thai', '', '<p style=\"text-align: justify;\">Nhiều phụ nữ cảm thấy vòng một của mình trông nảy nở, hấp dẫn hơn khi dùng thuốc tranh thai. Các chuyên gia xác định, hiện tượng này có thật.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/ngucnonhothuoctranhthai.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\">Sau đây là một số thắc mắc về thuốc tránh thai và lời giải:<br /><br /><strong>Thuốc tránh thai làm cho vú to ra? </strong>Có, nhưng tùy từng người. Những hormone trong viên thuốc là oestrogen và progesteron thường làm tăng kích thước vú, nhưng vú sẽ lại nhỏ đi sau vài chu kỳ kinh hoặc sau khi ngừng thuốc. Viên thuốc tránh thai có hàm lượng hormone càng cao thì càng dễ làm tăng kích thước vú. <br />Thuốc tránh thai gây tăng cân? Hầu hết phụ nữ tăng cân khi dùng nó nhưng không tăng quá 2 kg. Đó là do tác dụng nhẹ của hormone nam trong quá trình chuyển hóa của viên thuốc.<br /><strong><br />Thuốc có gây tăng huyết áp?</strong> Có và nguy cơ này tăng lên theo tuổi và thời gian dùng thuốc. Vì thế, nếu dùng thuốc tránh thai thường xuyên, bạn nên được thầy thuốc định kỳ kiểm tra huyết áp. Những phụ nữ mắc bệnh tăng huyết áp không nên sử dụng.<br />Nguy cơ bệnh tim mạch tăng? Có thể, nhất là viêm tĩnh mạch và nghẽn mạch. Những trường hợp có tiền sử bệnh tim mạch, những người hút thuốc lá nên thận trọng khi dùng thuốc tránh thai.<br /><br />Có nên uống cùng kháng sinh hoặc vitamin C? Bạn nên tham khảo ý kiến của thầy thuốc trước khi kết hợp các loại thuốc này với nhau, vì một số kháng sinh như rifampicin, amoxillin, metronidazol, tetracyclin, isoniazid... có thể sẽ làm giảm hiệu quả ngăn cản rụng trứng của thuốc tránh thai. Còn vitamin C có thể làm ra máu ít, rải rác giữa kỳ kinh. Nếu uống vitamin C nhiều hơn 1.000 mg mỗi ngày thì nên dùng trước hoặc sau khi dùng thuốc tránh thai ít nhất 4 giờ.<br /><br />Có thể dùng thuốc tránh thai lâu dài không? Không có giới hạn về thời gian cho việc sử dụng viên tránh thai. Một phụ nữ có thể dùng nó an toàn từ khi có đời sống tình dục cho đến khi mãn kinh, nếu không nằm trong nhóm chống chỉ định.<br />Những ai không nên dùng? Đó là những người hút thuốc là trên 15 điếu mỗi ngày, từ 35 tuổi trở lên, bị cao huyết áp, có tiền sử nhồi máu cơ tim, đột quỵ, hay tạo thành cục máu, có tiền sử bị ung thư vú, tử cung hay gan,  mắc bệnh gan, thận, nội tiết, đang có thai hoặc nghi ngờ có thai, nhức đầu có nguyên nhân thực thể, chảy máu đường sinh dục bất thường chưa rõ nguyên nhân, hàm lượng cholesterol quá cao, mắc bệnh tiểu đường.<br /> <em><strong><br />Theo Báo Đất Việt</strong></em></p>', '1', '1', '0', '1', '2010-05-04 09:37:00', '62', '', '2010-05-15 09:37:27', '62', '0', '0000-00-00 00:00:00', '2010-05-04 09:37:00', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '7', 'Nở ngực, thuốc, tránh thai', 'Nở ngực nhờ thuốc tránh thai', '0', '6', 'robots=Nở ngực, thuốc, tránh tha\nauthor=');
INSERT INTO `jos_content` VALUES ('127', 'Phòng bệnh tả: 9 điều cần biết...', 'phong-bnh-t-9-iu-cn-bit', '', '<p style=\"text-align: justify;\">Tiêu chảy do phẩy khuẩn tả gây mất nước trầm trọng, có thể lên đến 15-20 lít nước dịch cơ thể tuôn ra mỗi ngày, kéo theo tình trạng mất quân bình điện giải trong cơ thể đi kèm với bệnh cường toan và giảm kali trong máu. Trên thế giới đã từng có bệnh dịch tả do chủng El tor xảy ra ở các thời điểm 1961 – 1971 và 1969 – 1974. Từ tháng 1/1991 đến tháng 9/1994 đã có tổng số 1.041.422 người mắc bệnh, trong đó có 9.642 ca tử vong chiếm tỉ lệ 0,9%. Vì thế tích cực phòng bệnh tả là nhiệm vụ của mọi người vì sức khỏe cộng đồng.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/phongbenhta.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: justify;\">1/Bệnh tả gây ra tình trạng tiêu chảy nguy hiểm cho cá nhân và cho cộng đồng. Trong đó có đến 75% nguời mang mầm bệnh tả mà không có biểu hiện gì, vì mang mầm bệnh mà không hay nhưng vẫn làm lây lan bệnh cho cộng đồng.<br /><br />2/Tác nhân gây bệnh là phẩy khuẩn tả (Vibrio cholera) thuộc nhóm vi khuẩn Gram âm có hình giống chiếc gậy uốn cong giống dấu phẩy. Trong vi trùng học, Gram là phương pháp nhuộm màu theo kỹ thuật Gram được nhà bác học Đan Mạch tên Hans Christian Gram (1853-1938) phát minh năm 1884, để phân biệt nhóm vi khuẩn ăn hoặc không ăn màu nhuộm gọi là Gram dương, Gram âm.<br /><br />3/Bệnh dễ lây lan vì người mang vi khuẩn tiềm ẩn chờ cơ hội phóng thích vi khuẩn gây bệnh ra môi trường sống làm lây lan bệnh. Độc tố của vi khuẩn gây tiêu chảy ồ ạt và làm rối loạn điện giải. Khi vào người, khuẩn tả bám vào ruột tiết nội độc tố A, B hoạt hóa trong niêm mạc ruột làm các tế bào trong lòng ruột trở thành những máy bơm tiết nước, tiết các ion điện giải như: Na+, K+, Cl-, HCO<sub>3</sub>- vào lòng ruột, dẫn đến hiện tượng tiêu chảy mất nước, mất chất điện giải.<br /><br />4/Bệnh dễ dàng lan truyền vì vi khuẩn tiết ra enzyme tên chitinase giúp vi khuẩn đi xuyên qua vỏ cứng để xâm nhập loài giáp xác như tôm, cua và khi xâm nhập người thì tiết ra enzyme mucinase để dễ xâm nhập vào đường tiêu hóa. Vi khuẩn còn tiết ra độc tố ZOT giúp vi khuẩn gắn kết vào thành ruột rồi sản xuất độc tố tác động trong đường tiêu hóa.<br /><br />5/Vi khuẩn dễ lây lan và tồn tại trong nhiều môi trường, nhất là các thực phẩm sống như ăn tái các loại sò, ốc, tôm cua, rau tươi sống. Trong một nghiên cứu về sinh học phẩy khuẩn tả, người ta nhận thấy vi khuẩn từ người bệnh phát tiết ra ngoài dễ lây lan mầm bệnh gấp 700 lần vi khuẩn ấy nhưng được nuôi cấy trong phòng thí nghiệm.<br /><br />6/Bệnh diễn biến nhanh chóng từ tiêu chảy nhẹ đến nặng chiếm tỉ lệ 1/20 người bị bệnh.<br /><br />- Bệnh lây nhiễm tất cả mọi người nhưng nguy hiểm nhất là ở trẻ em vì gây ra tình trạng mất nước trầm trọng, suy kiệt. Bệnh nhân tiêu chảy toàn nước, trụy tim mạch, suy thận dẫn đến sốc do mất nước, do rối loạn điện giải rồi tử vong.<br /><br />- Bệnh dễ trở nên trầm trọng với trẻ em bị suy dinh dưỡng, do thiếu acid trong dịch vị làm tình trạng nhiễm khuẩn càng dễ dàng hơn.<br /><br />-Người khỏe mạnh bị nhiễm khuẩn tả có thể bị hạ huyết áp trong vài giờ dẫn đến trụy tim mạch, sốc mất nước từ 4 - 12 giờ và có thể tử vong khoảng 18 giờ đến vài ngày. Bệnh nguy hiểm vì tử vong cao và có thể gây thành dịch tả.<br /><br />7/Phòng bệnh tả: Không ăn thức ăn tươi sống nhất là các loại rau sống, uống nước chưa đun sôi. Một số rau sống được tưới bằng nước nhiễm khuẩn hoặc bón phân từ phân người nên là nguồn lây nhiễm nguy hiểm đáng kể cho cộng đồng. Phát hiện gần đây ở những bệnh nhân mắc bệnh tả cho thấy 70% bệnh nhân đều có ăn rau sống.<br /><br />8/Ăn chín, uống chín, hạn chế ăn rau sống trong vùng có dịch. Tránh ăn uống ở hàng quán vỉa hè tại nơi nghi ngờ có dịch. Không được phóng uế bừa bãi vì người mắc bệnh là nguồn phóng thích mầm bệnh. Tăng cường vệ sinh cá nhân và cộng đồng như chú trọng rửa tay sạch bằng xà phòng diệt khuẩn khi ăn uống và chế biến thực phẩm. Chú trọng vệ sinh trong môi trường tập thể, bán trú...<br />9/ Cho uống bù nước bằng dung dịch oresol là biện pháp ban đầu quan trọng và nhanh chóng chuyển bệnh nhân đến cơ quan y tế.<br /> <em><strong><br />Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '4', '2010-05-04 09:41:16', '62', '', '2010-05-15 14:21:39', '62', '0', '0000-00-00 00:00:00', '2010-05-04 09:41:16', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '3', 'bệnh tả', 'Phòng bệnh tả: 9 điều cần biết', '0', '8', 'robots=bệnh tả\nauthor=');
INSERT INTO `jos_content` VALUES ('128', 'BA GẠC (Cortex et Radix Rauvolfiae)', 'ba-gc-cortex-et-radix-rauvolfiae', '', '<p><strong> </strong></p>\r\n<p><strong> </strong></p>\r\n<p><strong>\r\n', '\r\n</strong></p>\r\n<p> </p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/bagac.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\">Ba gạc</p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><strong>BA GẠC</strong></p>\r\n<p style=\"text-align: center;\">(Cortex et Radix Rauvolfiae)</p>\r\n<p style=\"text-align: justify;\"><strong>Tên khác:</strong> La phu mộc</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Tên khoa học:</strong> Rauvolfia verticillata (Lour.) Baill. = R. chinensis Hemsl. (Ba gạc); R. vomitoria Afz. (Ba gạc bốn lá); R. cambodiana Pierre (Ba gạc lá to); R. canescens L. (Ba gạc Cuba); R. serpentina (L.) Benth. ex Kurz. (Ba gạc Ấn Độ), họ Trúc đào (Apocynaceae). Những loài này mọc hoang hoặc được đưa từ các nước khác về trồng ở nước ta.</p>\r\n<p style=\"text-align: justify;\"><strong>Mô tả: </strong>Cây nhỏ, cao 1-1,5m. Thân nhẵn, có những nốt sần nhỏ màu lục sau xám. Lá mọc vòng 3 có khi 4-5; phiến lá hình ngọn giáo dài 4-16cm, rộng 1-3cm, gốc thuôn, chóp nhọn. Hoa nhỏ màu trắng, hình ống phình ở họng, mọc thành xim dạng tán kép dài 4-7cm. Quả dài xếp từng đôi, hình trứng, khi chín có màu đỏ tươi rồi chuyển sang màu tím đen.<br />Ra hoa tháng 3-12, có quả tháng 5 trở đi. Ở đồng bằng, có khi hoa nở quanh năm.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Bộ phận dùng:</strong> Vỏ rễ và rễ (Cortex et Radix Rauvolfiae)</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Phân bố:</strong> Cây mọc hoang ở Hà Giang, Lạng Sơn, Cao Bằng, Thanh Hoá, Lào Cai. Cùng phân bố ở Trung Quốc.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Thu hái:</strong> Vào mùa thu, đông, đào rễ về, rửa sạch đất, phơi hoặc sấy khô. Cần chú ý bảo vệ lớp vỏ vì lớp vỏ chứa nhiều hoạt chất nhất.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Tác dụng dược lý:</strong><br />+ Đối với huyết áp: dùng nước sắc Ba Gạc nghiên cứu trên thỏ và chó thấy có tác dụng giảm áp rõ với liều 0,5/kg thân thể súc vât (Bộ môn sinh lý đại học y dược Hà Nội 1960).<br />+Đối với tim: trên tim ếch cô lập và tại chỗ thấy nước sắc Ba Gạc làm chậm nhịp tim(do Ajmalin).<br /> Trên hệ mạch ngoại biên của thỏ không thấy có tác dụng trên mạch máu ngoại biên. <br />+Trên ruột thỏ cô lập thấy liều nhẹ làm tăng nhu động ruột.<br />+Trên hệ thần kinh trung ương thấy không làm giảm sốt.<br />+Có tác dụng trấn tĩnh, gây ngủ (do Reserpin, Retxinamin).<br />Theo ‘Tài Nguyên Cây Thuốc Việt Nam’: <br />* Reserpin được coi là Alcaloid quan trọng nhất, đại biểu cho dược tính của Ba Gạc. Hai tác dụng dược lý quan trọng của Reserpin được xử dụng trong điều trị là hạ huyết áp và an thần.  <br />Reserpin làm hạ huyết áp cả trên súc vật gây mê hoặc không gây mê. Tác dụng này xuất hiện chậm và kéo dài.cơ chế tác dụng hạ áp là do làm cạn dần kế hoạch dự trữ chất dẫn truyền trung gian Noradrenalin trong các dây thần kinh giao cảm, được coi như hiện tượng cắt hệ thần kinh giao cảm bằng hóa chất. Reserpin không có tác dụng làm liệt hạch, có tác dụng làm chậm nhịp tim, làm dãn các mạch máu dưới da.<br />* Đối với thần kinh trung ương, Reserpin có tác dụng ức chế, gây trấn tĩnh rõ, giông là các dẫn chất Phenothiazin<br />* Đối với mắt, Reserpin có tác dụng thu nhỏ đồng tử 1 cách rõ rệt (là 1 trong những triệu chứng sớm nhất sau khi dùng thuốc).<br />Reserpin còn làm sa mi mắt, làm thư dãn mi mắt thứ 3 (Nictitating membrane) của mèo và chó.<br />* Đối với hệ tiêu hóa: Reserpin làm tăng nhu động ruột và bài tiết phân.<br />* Đối với  thân nhiệt: sau khi dùng Reserpin, có sự rối loạn về điều hòa thân nhiệt.<br />* Đối với hệ nội tiết: Reserpin có tác dụng kích thích vỏ tuyến thượng thận giải phóng các Corticoid. Có tác dụng kháng lợi niệu yếu. Trên chuột cống cái, Reserpin làm ngừng chu kỳ động dục, ức chế sự phóng noãn. Trên chuột đực, ức chế sự phân tiết Androgen.<br />* Độc tính của Reserpin: <br />. Liều chịu đựng được bằng đường uống đối với súc vật: 10-2000mg/kg.<br />. LD50 bằng đường tiêm tĩnh mạch trên chuột cống trắng: 28 ± 1,6mg/kg, bằng đường uống trên chuột nhắt là 500mg/kg.<br />Thành phần hoá học chính: Nhiều alcaloid (0,8%), trong đó quan trọng nhất là reserpin, serpentin, ajmalin.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Công năng: </strong>Thanh nhiệt hoạt huyết, giải độc, giáng huyết áp. Nước sắc Ba gạc có tác dụng làm giảm huyết áp có nguồn gốc trung ương, làm tim đập chậm, lại có tác dụng an thần và gây ngủ.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Công dụng:</strong> Chiết xuất các alcaloid (reserpin, ajmalin, alcaloid toàn phần) dùng dưới dạng viên nén chữa cao huyết áp. Ajmalin dùng chữa loạn nhịp tim dưới dạng thuốc viên và thuốc tiêm.<br /><strong>Chế biến:</strong> Có thể dùng tươi, khô hoặc nấu thành cao.<br /><strong>Bài thuốc:</strong><br />* Reserpin: viên nén 0,0001g, 0,00025g và 0,0005g. Thuốc tiêm 5mg/2ml. <br />* Viên Rauviloid (2mg Alcaloid toàn phần của R. serpentina), liều dùng cho bệnh huyết áp cao là 2-4mg/ngày.<br />* Viên Raudixin (bôt rễ R. serpentina) 50-100mong, liều dùng trung  bình hàng ngày là 200-400mg.</p>', '1', '2', '0', '278', '2010-05-04 14:28:39', '62', '', '2010-05-18 09:21:52', '62', '62', '2010-05-18 09:21:53', '2010-05-04 14:28:39', '0000-00-00 00:00:00', '', '', 'tkh=Rauvolfia verticillata (Lour.) Baill.\nthv=Ba gạc\nhtvvn=Trúc đào\nhtvkh=Apocynaceae\ndvlt=\nbpd=rễ - thân - củ\ntphh=alcaloid\npltb=huyết áp\ntcdy=thuốc thanh nhiệt giải độc\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '12', '0', '3', 'Ba gạc, La phu mộc, Rauvolfia, Reserpin, Rauviloid, Ajmalin, Apocynaceae', 'BA GẠC (Cortex et Radix Rauvolfiae)', '0', '24', 'robots=Ba gạc, La phu mộc, Rauvolfia, Ba gạc, La phu mộc, Rauvolfia, Reserpin, Rauviloid, Ajmalin, Apocynaceae\nauthor=');
INSERT INTO `jos_content` VALUES ('130', 'HƯƠNG NHU ẨM (Hòa lợi cục phương)', 'hng-nhu-m-hoa-li-cc-phng', '', '', '\r\n<p style=\"text-align: justify;\"><strong>Thành phần:</strong><br /><br />Hương nhu         4 - 12g<br /><br />Bạch biển đậu          12g<br /><br />Hậu phác             4 - 8g<br /><br /><strong>Cách dùng:</strong> Sắc uống 2 lần, nếu dễ nôn pha thêm Gừng tươi 3 lát, sắc uống.<br /><br /><strong>Tác dụng:</strong> Phát hãn, giải biểu, giải thử, hóa thấp hòa trung.<br /><br />Thường dùng trong mùa hè, chữa chứng biểu, phong hàn thử thấp, sốt lạnh thấp nhiệt, đầu không ra mồ hôi, mạch phù hoặc nhu, buồn nôn hoặc nôn hoặc đau bụng đi tả, rêu lưỡi nhờn.<br /><br /><strong>Giải thích bài thuốc:</strong><br /><br />Hương nhu là chủ dược, tính tân ôn, có tác dụng phát hãn, giải biểu đồng thời lợi thấp, giải thử. <br />Hương nhu và Hậu phác phối hợp với Bạch biển đậu có tác dụng kiện tỳ, hòa trung.</p>\r\n<p style=\"text-align: justify;\"><strong><br />Ứng dụng lâm sàng:</strong><br /><br />1.     Bài thuốc có tác dụng chữa bệnh thử thấp. Thường dùng bài thuốc gia giảm để chữa các bệnh viêm đại tràng cấp, tiêu chảy, kiết lỵ.<br /><br />2.     Nếu bệnh nhân sốt cao, khát nước, rêu lưỡi vàng bỏ Bạch biển đậu gia Hoàng liên, Hậu phác. <br /><br />3.     Nếu bụng đầy đau gia Mộc hương, Sa nhân, Hoắc hương, Chỉ xác.</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/huongnhutia.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Hương nhu tía</em></p>', '1', '3', '0', '279', '2010-05-04 16:26:23', '62', '', '2010-05-04 16:35:14', '62', '0', '0000-00-00 00:00:00', '2010-05-04 16:26:23', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '7', '', '', '0', '8', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('131', 'Vị thuốc từ cá mè', 'v-thuc-t-ca-me', '', '<p>Cá mè còn có tên khác là : liên ngư, bạch cước liên, phường ngư. Có nhiều loài cá mè, nhưng cá mè trắng và mè hoa là phổ biến hơn cả.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/ca-me.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Cá mè</em></p>\r\n<p style=\"text-align: justify;\">Bộ phận dùng: Thịt, mỡ và mật cá. Thịt cá có nhiều protid; mỡ cá có nhiều acid béo không no; mật cá chứa sterol tương tự như mật cá trắm và cá chép.<br /><br />Theo y học cổ truyền cá mè vị ngọt, tính ấm, không độc, có tác dụng bổ não tuỷ, nhuận phế, ích tỳ vị. Trong sách thuốc cổ có ghi: Thịt cá mè trắng có tác dụng khai vị, hạ khí, điều hoà ngũ tạng, chống hư huyết mạch, bổ gan, sáng mắt. Dùng cho các trường hợp tỳ vị hư hàn, ăn kém, đau bụng, đầy bụng, da thô ráp, tróc da và da khô. Người cao tuổi dùng cá mè thường xuyên chống được đau đầu, giảm trí nhớ, ho đờm, hen suyễn.<br /><br />Dưới đây là một số món ăn bài thuốc có cá mè để bạn đọc tham khảo và áp dụng:<br /><br />+ Cá mè tươi 300g, khởi tử 30g. Cá mè làm sạch, bỏ đầu và xương, thái lát mỏng; nấu kỹ với khởi tử. Trước khi ăn có thể thêm giá đỗ xanh, gừng, rau mùi, rau cần, hành, muối, hồ tiêu; đun chín. Ăn trong ngày. Dùng cho người suy nhược, sốt, chán ăn.<br /><br />+ Canh cá mè hạt mướp: Cá mè 1 con, hạt mướp 30g, nghệ vàng 10g. Nấu ở dạng canh, mỗi ngày 1 lần. Dùng cho các trường hợp huyết hư sau đẻ và thiếu sữa.<br /><br />+ Canh cá mè gừng tươi: Cá mè 1 con, gừng tươi 18 - 30g. Cá mè làm sạch; gừng tươi 1 củ, cạo vỏ, đập giập nhưng vẫn còn cả thân củ; thêm hồ tiêu, hành tươi, gia vị nấu ở dạng canh cá. Cho ăn liên tục đợt 5  - 7 ngày. Dùng cho các trường hợp tỳ vị dương hư, hư hàn, ăn kém, chậm tiêu, đầy ợ hơi, sợ lạnh, ho suyễn, nôn ói.<br /><br />+ Cá mè hầm đậu đỏ: Cá mè 1 con, đậu đỏ hạt 30g. Cá mè làm sạch, cho vào nồi hầm nhừ với đậu đỏ, thêm gia vị thích hợp. Đợt dùng 5 - 7 ngày. Dùng cho các bệnh nhân phù nề, tiểu tiện ít.<br /><br />+ Đầu cá mè hầm thiên ma: Đầu cá mè 1 khúc, thiên ma 15g. Cho đầu cá, thiên ma, thêm muối gia vị và nước với số lượng thích hợp, hầm nhừ. Cho ăn một đợt 5 - 7 ngày. Dùng cho các trường hợp đau đầu hoa mắt chóng mặt (huyễn vững), mỏi mệt tay chân.<br /><br />+ Mỡ cá mè có nhiều ở phần bụng cá, rán lấy mỡ, dùng chữa bỏng.<br /><br />Kiêng kỵ: Cá mè tính chất ôn nhiệt, ăn nhiều sinh nội nhiệt khát nước loét miệng; vì vậy các trường hợp dương thịnh, nội nhiệt táo bón, lở ngứa, mụn nhọt không nên ăn. Không nên ăn gỏi cá mè hoặc ăn cá chưa nấu chín, do cá thường mang ấu trùng sán lá gan.<br /><br /><strong>TS. Nguyễn Đức Quang</strong></p>\r\n<p style=\"text-align: justify;\"><strong><em>Theo sức khỏe và đời sống</em><br /></strong></p>', '1', '1', '0', '3', '2010-05-05 02:00:52', '62', '', '2010-05-15 14:17:41', '62', '0', '0000-00-00 00:00:00', '2010-05-05 02:00:52', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '10', 'cá mè', 'Vị thuốc từ cá mè', '0', '14', 'robots=cá mè\nauthor=');
INSERT INTO `jos_content` VALUES ('133', 'TANG CÚC ẨM (Ôn bệnh điều biện)', 'tang-cuc-m-on-bnh-iu-bin', '', '', '\r\n<p><strong>Thành phần:</strong></p>\r\n<p style=\"text-align: justify;\"><br />Tang diệp          12g<br /><br />Cúc hoa             12g<br /><br />Hạnh nhân        12g<br /><br />Liên kiều       6 - 12g<br /><br />Cát cánh       8 - 12g<br /><br />Lô căn         8 - 12g<br /><br />Bạc hà            2 - 4g<br /><br />Cam thảo       2 - 4g<br /><br /><strong>Cách dùng:</strong> Sắc uống, mỗi ngày 1 - 2 thang.<br /><br /><strong>Tác dụng:</strong> Sơ phong, thanh nhiệt, tuyên phế, chỉ khái.<br /><br /><strong>Giải thích bài thuốc:</strong></p>\r\n<p style=\"text-align: justify;\"><strong> </strong><br />Tang diệp, Cúc hoa là chủ dược có tác dụng sơ tán phong nhiệt ở thượng tiêu.</p>\r\n<p style=\"text-align: justify;\"><br />Bạc hà phụ vào và gia tăng tác dụng của 2 vị trên.</p>\r\n<p style=\"text-align: justify;\"><br />Hạnh nhân, Cát cánh: tuyên phế chỉ khái.</p>\r\n<p style=\"text-align: justify;\"><br />Liên kiều: tính đắng, hàn, thanh nhiệt, giải độc.</p>\r\n<p style=\"text-align: justify;\"><br />Lô căn: tính ngọt hàn, thanh nhiệt, sinh tân, chỉ khái.</p>\r\n<p style=\"text-align: justify;\"><br />Cam thảo có tác dụng điều hòa các vị thuốc hợp với Cát căn thành bài Cát căn thang có tác dụng tuyên phế, chỉ khái, lợi yết hầu.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Ứng dụng lâm sàng:</strong><br /><br />Bài thuốc thường được dùng trị bệnh đường hô hấp trên, cảm cúm, viêm phế quản thực chứng phong nhiệt ảnh hưởng đến phế gây nên ho, sốt.<br /><br />1.     Nếu ho đờm nhiều gia thêm Qua lâu nhân, Bối mẫu để thanh phế hóa đờm. <br /><br />2.     Nếu đờm nhiều, vàng đặc, lưỡi đỏ rêu vàng thêm Hoàng cầm, Đông qua nhân để thanh nhiệt, hóa đờm. <br /><br />3.     Nếu trong đờm có máu gia Bạch mao căn, Thuyên thảo để lương huyết chỉ huyết. <br /><br />4.     Nếu mồm khát gia Thiên hoa phấn, Thạch hộc để thanh nhiệt, sinh tân. <br /><br />5.     Nếu sốt cao khó thở gia Sinh Thạch cao, Tri mẫu để thanh phế vị. <br /><br />6.     Bài thuốc này gia Bạch tật lê, Quyết minh tử, Hạ khô thảo trị viêm màng tiếp hợp, đau mắt đỏ có kết quả tốt. <br /><br />7.     Gia Ngưu bàng tử, Thổ ngưu tất, Liên kiều trị Viêm amygdal cấp.</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/random_images/487192_f520.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Cúc hoa</em></p>', '1', '3', '0', '279', '2010-05-05 09:29:10', '62', '', '2010-05-11 15:45:37', '62', '0', '0000-00-00 00:00:00', '2010-05-05 09:29:10', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân lương giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '7', '0', '6', '', '', '0', '15', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('134', 'NGÂN KIỀU TÁN (Ôn bệnh điều biện)', 'ngan-kiu-tan-on-bnh-iu-bin', '', '', '\r\n<p style=\"text-align: justify;\"><strong>Thành phần:</strong><br /><br />Liên kiều          8 - 12g<br /><br />Cát cánh          6 - 12g<br /><br />Trúc diệp           6 - 8g<br /><br />Kinh giới tuệ      4 - 6g<br /><br />Đạm đậu xị       8 - 12g<br /><br />Ngưu bàng tử   8 - 12g<br /><br />Kim ngân hoa   8 - 12g<br /><br />Bạc hà             8 - 12g<br /><br />Cam thảo           2 - 4g<br /><br />Cách dùng: Sắc uống, ngày 1 thang.<br /><br /><strong>Tác dụng:</strong> Tân lương, thấu biểu, thanh nhiệt, giải độc.<br /><br /><strong>Giải thích bài thuốc:</strong><br /><br />Kim ngân hoa, Liên kiều là chủ dược có tác dụng thanh nhiệt, giải độc, tân lương thấu biểu. <br />Bạc hà, Kinh giới, Đạm đậu xị có tác dụng hỗ trợ. <br />Cát cánh, Ngưu bàng tử, Cam thảo: tuyên phế hóa đờm. <br />Trúc diệp: thanh nhiệt, sinh tân, chỉ khái. <br />Các vị là một bài thuốc tốt dùng thanh nhiệt, giải độc.<br /><br /><strong>Ứng dụng lâm sàng:</strong><br /><br />Bài thuốc được dùng nhiều đối với những bệnh ôn sơ khởi như viêm đường hô hấp trên, cảm cúm, viêm phế quản cấp, ho gà, viêm amygdal cấp.<br /><br />Tùy theo tình hình bệnh lý:<br /><br />1.     Nếu đau đầu không có mồ hôi có thể tăng lượng Kinh giới, Bạc hà thêm Bạch tật lê, Mạn kinh tử. <br /><br />2.     Nếu sốt cao có mồ hôi gia lượng Kim ngân hoa, Liên kiều giảm lượng Kinh giới, Bạc hà. <br /><br />3.     Nếu có chứng kiêm thấp như ngực tức nôn, gia Hoắc hương, Bội lan để hóa thấp. <br /><br />4.     Nếu ho đờm đặc gia Hạnh nhân, Bối mẫu. <br /><br />5.     Nếu sốt cao gia Chi tử, Hoàng cầm để thanh lý nhiệt. <br /><br />6.     Nếu khát nhiều gia Thiên hoa phấn. <br /><br />7.     Nếu viêm họng đau sưng gia Mã bột, Huyền sâm, Bản lam căn để thanh nhiệt, giải độc. <br /><br />8.     Nếu có nhọt sưng tấy gia Bồ công anh, Đại thanh diệp để tiêu tán sang độc.</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/kimnganhoa.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Kim ngân hoa</em></p>', '1', '3', '0', '279', '2010-05-05 09:42:11', '62', '', '2010-05-05 09:48:27', '62', '0', '0000-00-00 00:00:00', '2010-05-05 09:42:11', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân lương giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '5', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('135', 'MA HẠNH THẠCH CAM THANG (Thương hàn luận)', 'ma-hnh-thch-cam-thang-thng-han-lun', '', '', '\r\n<p><strong>Thành phần:</strong><br /><br />Ma hoàng   8 - 12g<br /><br />Chích thảo   2 - 4g<br /><br />Hạnh nhân  6 - 12g<br /><br />Thạch cao  8 - 12g (sắc trước).<br /><br /><strong>Cách dùng:</strong> Sắc uống ngày 1 - 2 thang.<br /><br /><strong>Tác dụng:</strong> Tuyên phế, thanh nhiệt, giáng khí, bình suyễn. <br /><br /><strong>Giải thích bài thuốc: </strong><br /><br />Tác dụng phát hãn, tuyên phế, trọng dụng Thạch cao để hỗ trợ Ma hoàng chỉ khái, bình suyễn. <br />Cam thảo: điều hòa các vị thuốc.</p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">Trong bài thuốc 4 vị thuốc phối hợp có thể vừa giải biểu, vừa tuyên thông phế khí, vừa thanh lý nhiệt, cho nên có tác dụng tốt đối với bệnh hen suyễn có sốt.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Ứng dụng lâm sàng:</strong><br /><br />1.     Nếu suyễn ra mồ hôi tức phế nhiệt nặng, lượng Thạch cao tăng gấp 5 lần lượng Ma hoàng. <br /><br />2.     Nếu suyễn mà không có mồ hôi là triệu chứng nhiệt bế tại phế dùng lượng Thạch cao tăng gấp 3 lần Ma hoàng. <br /><br />3.     Trường hợp bệnh sởi, sốt cao, khát nước, bứt rứt, ho khó thở (có khả năng biến chứng viêm phổi), sởi có mọc hay chưa đều có thể sử dụng bài thuốc tốt nhưng lượng Ma hoàng tùy tình hình mà gia giảm và gia thêm những thuốc giải độc.<br /><br />Bài thuốc thường dùng có hiệu quả với các bệnh viêm phế quản cấp, viêm phổi thùy, phổi đốm.<br /><br />1.     Nếu đờm nhiều khó thở gia Đình lịch tử, Tang bạch bì, Tỳ bà diệp để túc giáng phế khí. <br /><br />2.     Nếu ho nhiều, đờm vàng đặc gia Qua lâu bì, Bối mẫu để thanh nhiệt hóa đờm. <br /><br />3.     Nếu ho suyễn sốt cao, khát nước ra mồ hôi, rêu lưỡi vàng tăng lượng Thạch cao, thêm Tri mẫu, Hoàng cầm, Qua lâu nhân để thanh tả phế vị nhiệt.<br /><br /><strong>Tài liệu tham khảo:</strong><br /><br />Theo tài liệu nước ngoài (Trung quốc) bài \"Ma hạnh thạch cam thang\" gia Địa long khô trị viêm xoang mũi mạn có kết quả tốt. Bài thuốc được dùng: <br /> Ma hoàng sống  8g</p>\r\n<p style=\"text-align: justify;\"><br />Sinh thạch cao 80g<br /><br />Hạnh nhân         8g<br /><br />Sinh Cam thảo   4g<br /><br />Địa long khô      7 con <br /><br />(Theo báo Trung y dược Phúc kiến).<br /><br />Bài thuốc có thể dùng để chữa viêm phổi trẻ em có kết quả, sử dụng thuốc cao có gia thêm các vị Mạch môn, Thiên hoa phấn, Bạch mao căn, Kim ngân hoa, Trắc bá diệp, Ngưu bàng tử, Xuyên bối mẫu. Chế thành Ma hạnh hợp tễ (Trung y dược tạp chí, Thượng hải 1959).</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/mahoang.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Ma hoàng</em></p>', '1', '3', '0', '279', '2010-05-05 09:51:46', '62', '', '2010-05-05 09:55:18', '62', '0', '0000-00-00 00:00:00', '2010-05-05 09:51:46', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân lương giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '4', '', '', '0', '12', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('136', 'SÀI CÁT GIẢI CƠ THANG (Thương hàn lục thư)', 'sai-cat-gii-c-thang-thng-han-lc-th', '', '', '\r\n<p><strong>Thành phần:</strong><br /><br />Sài hồ           6 - 12g<br /><br />Cát căn         8 - 16g<br /><br />Cam thảo        2 - 4g<br /><br />Khương hoạt   4 - 6g<br /><br />Bạch chỉ         4 - 6g<br /><br />Bạch thược   4 - 12g<br /><br />Cát cánh       4 - 12g<br /><br />Hoàng cầm    4 - 12g<br /><br />Thạch cao     8 - 12g (sắc trước).<br /><br /><strong>Cách dùng:</strong> Gia thêm Gừng tươi 3 lát, Đại táo 2 quả sắc uống.<br /><br /><strong>Tác dụng:</strong> Giải cơ, thanh nhiệt.<br /><br /><strong>Giải thích bài thuốc: </strong><br /><br />Cát căn, Sài hồ có tác dụng giải cơ, thanh nhiệt là chủ dược. <br />Khương hoạt, Bạch chỉ giải biểu, tán hàn, giảm đau. <br />Hoàng cầm, Thạch cao thanh lý nhiệt, đều là thuốc hỗ trợ Bạch thược. <br />Cam thảo hòa vinh vệ. <br />Cát cánh khai thông phế khí. <br />Gừng tươi, Đại táo điều hòa vinh vệ.</p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\"><strong><br />Ứng dụng lâm sàng:</strong><br /><br />1.     Trường hợp không có đau đầu và sợ lạnh bỏ Khương hoạt, Bạch chỉ. <br /><br />2.     Nếu có khát nước, rêu lưỡi khô gia Thiên hoa phấn, Sinh địa để thanh nhiệt sinh tân. <br /><br />3.     Nếu ho có đờm đặc gia Qua lâu bì để thanh nhiệt hóa đờm.<br /><br />Bài thuốc được dùng có kết quả đối với các bệnh cảm cúm, cảm sốt đau đầu, đau mình mẩy.</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/saihobupleurum02.jpg\" border=\"0\" width=\"480\" /></p>\r\n<p style=\"text-align: center;\"><em>Sài hồ</em></p>', '1', '3', '0', '279', '2010-05-05 09:56:54', '62', '', '2010-05-05 10:03:31', '62', '62', '2010-05-09 15:35:04', '2010-05-05 09:56:54', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân lương giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '3', '', '', '0', '9', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('137', 'THĂNG MA CÁT CĂN THANG (Tiểu nhi phương luận)', 'thng-ma-cat-cn-thang-tiu-nhi-phng-lun', '', '', '\r\n<p><strong>Thành phần:</strong><br /><br />Thăng ma        6 - 10g<br /><br />Thược dược    8 - 12g<br /><br />Cát căn           8 - 16g<br /><br />Chích thảo      2 - 4g<br /><br /><strong>Cách dùng:</strong> Sắc uống ngày 1 thang. Theo cổ phương các vị thuốc lượng đều bằng nhau, tán bột, hoặc sắc uống.<br /><br /><strong>Tác dụng:</strong> Giải cơ, thấu chẩn.<br /><br />Dùng trong trường hợp bệnh sởi, trẻ em khó mọc hoặc mọc không đều, phát sốt, sợ gió, ho, mắt đỏ, chảy nước mắt, lưỡi đỏ, rêu trắng, mạch phù sác.<br /><br /><strong>Giải thích bài thuốc:</strong><br /><br />Cát căn có tác dụng thanh nhiệt, giải cơ, thấu chẩn là chủ dược. <br />Thăng ma là thuốc hỗ trợ có tác dụng thăng dương thấu biểu hợp với Cát căn làm tăng tác dụng thấu chẩn giải độc. <br />Thược dược hòa vinh thanh nhiệt, giải độc. <br />Cam thảo điều hòa các vị thuốc có giải độc, hợp với Thược dược có tác dụng điều lý huyết phận, hợp với Thăng ma tăng tác dụng giải độc thấu chẩn.<br />Bốn vị hợp lại làm cho bài thuốc có tác dụng giải cơ, thấu chẩn, hòa vinh, giải độc.<br /><br /><strong>Ứng dụng lâm sàng:</strong><br /><br />1.     Đối với bệnh sởi mới phát có thể gia Bạc hà, Kinh giới, Thuyền thoái, Ngưu bàng tử, Kim ngân hoa để tăng cường giải độc, thấu chẩn. <br /><br />2.     Nếu bệnh nhi họng đau đỏ gia Cát cánh, Huyền sâm, Mã bột để thanh lợi yết hầu. <br /><br />3.     Nếu sởi chưa mọc hoặc sởi sắc đỏ thẫm dùng Xích thược thay cho Bạch thược gia Huyền sâm, Đơn bì, Tử thảo, Đại thanh diệp để lương huyết giải độc. <br /><br />4.     Trường hợp bệnh nhân sởi sốt cao, đau đầu có thể tămg cường thêm các thuốc thanh nhiệt, giải độc như: Hoàng cầm, Sinh địa, Liên kiều, Thiên hoa phấn, Trúc diệp.</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/thangma.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Thăng ma</em></p>', '1', '3', '0', '279', '2010-05-05 10:05:17', '62', '', '2010-05-09 15:39:15', '62', '0', '0000-00-00 00:00:00', '2010-05-05 10:05:17', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân lương giải biểu\nbt_pltb=nhi khoa,nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '2', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('138', 'Thuốc Đông y với thai phụ: \"Tẩm\" thế nào cho \"bổ\"?', 'thuc-ong-y-vi-thai-ph-qtmq-th-nao-cho-qbq', '', '<p style=\"text-align: justify;\">Nên hay không nên dùng thuốc y học cổ truyền trong thời kỳ mang thai? Các bác sĩ Đông y khuyên rằng \"nên\". Nhưng uống như thế nào và cắt thuốc ở đâu lại là vấn đề khác. Theo các chuyên gia, nếu lạm dụng thuốc hay dùng sai cách, hậu quả sẽ khôn lường...</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/thuocdongyvoithaiphu.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br /><br /><strong>Băn khoăn của nhiều bà mẹ</strong><br />Chị Minh Nguyệt, 32 tuổi, ở phường Kỳ Đồng, quận Hồng Bàng (Hải Phòng), chia sẻ: \"Mình đang mang bầu lần thứ 2, tháng thứ 5. Hồi mang bầu lần đầu, mình không uống thuốc Bắc, nhưng khi sinh,  em bé vẫn bình thường. Nhưng cô bạn của mình sinh con cùng đợt có uống thuốc Bắc thì sinh em bé có phần khoẻ mạnh hơn hẳn bé con nhà mình. Tuy nhiên, em gái mình ngày trước có bầu cũng uống rất nhiều thuốc Bắc, nhưng khi sinh, em bé nặng  chỉ  2kg  và phải nuôi lồng kính. Hiện mẹ chồng mình cứ giục đi cắt thuốc Bắc để uống cho bổ thai, mà mình thì vẫn đang băn khoăn không biết có nên uống hay không?!\"<br /><br />Chia sẻ với chúng tôi, bà mẹ trẻ Hoàng Thị Xuân (24 tuổi, ở Phương Mai, Đống Đa, Hà Nội) cho biết: \"Em mang bầu em bé được 19 tuần rồi. Đây là lần đầu tiên nên em cũng không có kinh nghiệm gì và cũng bị một phen hú vía về thuốc Bắc. Em nghe nhiều người nói là uống thuốc Bắc rất tốt cho em bé, nên đã đi cắt thuốc và uống ở tuần thứ 9. Đây là thang cuối cùng trong tổng số 5 thang em uống. Nhưng một hôm, em nói chuyện với bác sĩ tư vấn qua điện thoại thì vị bác sĩ này nói em không nên dùng nữa vì sợ các vị thuốc trong thang không đúng và có rất nhiều biến chứng cho thai (sảy thai, thai chết lưu...).<br /><br />Bác sĩ khuyên em nên đi siêu âm và khám thai ngay. Nghe lời bác sĩ, em đi khám ngay! May là không bị sao. Em còn nghe nói uống thuốc Bắc nhiều trong thời kỳ mang thai, con sinh ra dễ bị da đen và nhăn nheo lắm. Không biết thực hư như thế nào?!\".<br /><br />Chị Vũ Thị Hoa (thôn Lục Bắc, Thái Xuyên, Thái Thụy, Thái Bình) cho biết: Ở quê chị, mọi người không chỉ cắt thuốc Bắc mà còn tự tìm thầy đi cắt thuốc Nam về uống. Còn chuyện cắt thuốc Bắc hầm với gà hay chim, ăn tẩm bổ cho bà bầu là chuyện thường ngày. Người có điều kiện hay ít điều kiện, chỉ cần nghe nói có món nào đó tốt cho sức khoẻ mẹ và bé thì ai ai cũng cố lùng cho bằng được  mà không cần  biết cơ thể mình có cần  hay không!?</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Dùng sai cách, hậu quả khôn lường</strong><br /><br />Theo BS -  Thầy thuốc Ưu tú Phùng Đình Khánh- Uỷ viên Trung ương Hội Đông y Việt Nam, Chủ tịch Hội Đông y tỉnh Ninh Bình: Thuốc Đông y có nhiều vị, có một số vị tốt với phụ nữ, các bà mẹ mang thai và em bé trong bụng. Có thể kể ra như: Ích mẫu, ngải cứu, hoàng cầm, bạch truật, quy thân, đại táo, nhục thung dung, đỗ trọng, thỏ ti tử, tang ký sinh, thục địa, quy bản... Đây đồng thời là những vị thuốc an thai, dưỡng thai, không gây động thai, sảy thai, ra máu, đau bụng trong thời kỳ mang thai... Tuy nhiên, trước khi uống phải đi khám, bắt mạch, thầy thuốc sẽ cho bài thuốc phù hợp với mỗi người.<br /><br />BS. Khánh khuyên các thai phụ nên uống thuốc Bắc ngay và uống liên tục trong 3 tháng đầu của thời kỳ mang thai; đặc biệt với những người có tiền sử sảy thai, thai chết lưu thì càng lưu ý điểm này. Ở tháng 7, tháng 8 trước sinh, thai phụ cũng nên uống thuốc Bắc. Nếu kiểm tra xương thai thấy có dấu hiệu nhỏ hơn bình thường cũng nên uống cả 3 tháng cuối. Với 3 tháng giữa, thai phụ nên ăn, uống, ngủ, nghỉ và tập thể dục đều đặn. Nếu có nhu cầu uống cũng nên uống với liều lượng giảm hơn so với các thời kỳ khác như 1 tháng uống 1 tuần.<br /><br />Thường thì tuỳ vào cơ địa của từng người, thầy thuốc sẽ gia giảm thêm một số vị như quy thân, hoàng kỳ vào bài thuốc cho thai phụ, nhưng chủ yếu vẫn là các vị như thục tốt, hoài sơn (củ mài), cam thảo, đỗ trọng, đại táo... có tác dụng bổ huyết, bổ khí cho thai phụ.<br /><br />BS Khánh nói: \"Nhiều phụ nữ băn khoăn có nên uống thuốc Bắc trong thời kỳ mang thai hay không. Chúng tôi khẳng định là nên. Tuy nhiên, bốc thuốc ở đâu và uống như thế nào cũng là một vấn đề. Nhiều bệnh nhân đến với chúng tôi vẫn đặt những nghi ngại rằng: Thuốc y học cổ truyền phần lớn là các dược liệu chưa tinh chế. Một số vị thuốc trong đó có thể chứa nhiều hoạt chất. Không thể biết được trong mỗi thang thuốc gọi là \"dưỡng thai\" đó có những hoạt chất gì và có an toàn cho thai nhi hay không? Uống thuốc Bắc thì khi sinh, da em bé có bị đen, nhăn nheo(?!). Hay vấn đề vệ sinh khi chế biến, phơi phóng thuốc?... Chúng tôi hoàn toàn chia sẻ với những lo lắng rất thường tình này. Bởi nếu thuốc rửa không hết các tạp chất, thậm chí có cơ sở Đông y dùng diêm sinh để sấy khô, nếu cơ thể không thích ứng có thể gây ra những phản ứng như buồn nôn, đi ngoài, bứt rứt khó chịu, thậm chí có thể ngất xỉu\".<br /><br />“Cùng một vị thuốc nhưng công dụng có khi rất khác nhau. Ví dụ, cũng là vị toàn qui (hay còn gọi là đương qui) nhưng có các loại quy khác nhau như: Qui đầu (một phần ở phía đầu), qui vĩ (phần cuối), qui thân (phần trừ đầu và cuối). Thai phụ nếu được uống qui thân trong 2- 3 tháng đầu rất tốt. Nhưng nếu dùng qui vĩ (là vị có tính hoạt huyết) lại kích thích tử cung co bóp, có thể gây đau bụng, ra huyết, gây sảy thai. Thêm vào đó, giá cả của 2 vị này rất cách biệt: Qui thân (300.000 đồng/kg), qui vĩ: 70.000 đồng/kg. Nếu thai phụ bốc thuốc ở những nơi không đảm bảo, tham rẻ, hậu quả sẽ khôn lường...\".<br /><br />Theo BS Khánh, chị em còn sai lầm ở chỗ, nghe nhau mách và cố ăn cho thật nhiều các món ăn như gà tần thuốc Bắc, gà ngải cứu, chim tần, hay các bài thuốc dân gian như cá chép, trứng ngỗng... để tẩm bổ trong thời kỳ mang thai. \"Chúng tôi không phủ nhận công dụng của những món ăn đó. Nhưng thực tế cho thấy, bây giờ ở ngoài chợ hay các gánh hàng rong, người bán hàng thường gói các \"suất\" thuốc Bắc sẵn, thai phụ chỉ việc mua về và nấu theo cách của mình và không đếm xỉa đến sự chỉ dẫn của thầy thuốc. Đây  là sự nhầm lẫn tai hại. Cần lưu ý rằng, một bài thuốc gà tần, một chén thuốc Bắc ngâm rượu không phải ai cũng nấu được. Chưa nói đến việc nếu lạm dụng các bài thuốc dân gian này, lúc mắc các chứng bệnh khác, rất dễ bị \"nhờn\" thuốc\" - BS Khánh nói.<br /><br />Ths.BS Đỗ Thanh  Hà- Trưởng khoa Phụ - Bệnh viện Y học cổ truyền Trung ương cho rằng:  Thuốc Đông y cũng giống như thuốc Tây y, không phải tuyệt đối an toàn. Nếu dùng không đúng cách, bốc thuốc tại những nơi không đảm bảo vệ sinh, có thể gây nên những tác dụng không mong muốn như dị ứng, nổi mẩn, rối loạn tiêu hoá, nặng hơn có thể gây đau bụng, băng huyết, có nguy cơ sảy thai... “Chúng tôi xin khẳng định không có cơ sở khoa học nào cho rằng uống thuốc y học cổ truyền khi có thai sinh ra con da sẽ đen như lời đồn thổi bấy lâu nay. Điều này đã được thực tế chứng minh qua nhiều năm các bà mẹ nằm giữ thai tại Khoa Phụ - Bệnh viện Y học cổ truyền Trung ương” - BS Hà nói.<br />Còn theo BS. Khánh thì không thể có chuyện thai chết lưu, sảy thai hay biến dị hình thể nếu uống thuốc Bắc đúng cách.<br /> <br /><em><strong>Theo Gia Đình &amp; Xã Hội</strong></em></p>', '1', '1', '0', '2', '2010-05-05 11:06:29', '62', '', '2010-05-15 09:42:21', '62', '0', '0000-00-00 00:00:00', '2010-05-05 11:06:29', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '8', 'Đông y, bổ', 'Thuốc Đông y với thai phụ: Tẩm thế nào cho bổ?', '0', '11', 'robots=Đông y, bổ\nauthor=');
INSERT INTO `jos_content` VALUES ('139', 'Trà xanh có thể ngừa bệnh glaucoma', 'tra-xanh-co-th-nga-bnh-glaucoma', '', '<p style=\"text-align: justify;\">Hợp chất catechin trong trà xanh có tác dụng ngăn ngừa bệnh glaucoma và các bệnh về mắt khác.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><em><img src=\"images/stories/tintucsukien/tintuc/traxanhcothenguaglaucoma.jpg\" border=\"0\" /><br /></em></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\">Nghiên cứu mới đây nhất của các bác sỹ thuộc bệnh viện mắt Hồng Kông cho thấy, trà xanh có chứa hợp chất đặc biệt có tác dụng ngăn ngừa bệnh glaucoma (tăng nhãn áp, cườm nước) và các bệnh về mắt khác.<br /><br />Nghiên cứu này được tiến hành thử nghiệm trên chuột bạch về tác dụng của catechin-hợp chất đặc biệt có lợi cho mắt.<br /><br />Những con chuột thí nghiệm được uống trà hàng ngày, và thường xuyên được chụp cắt lớp giác mạc, thủy tinh thể, võng mạc, màng cứng, màng trạch, thủy dịch…Kết quả cho thấy, những cấu trúc trên mắt của từng cá thể có sự khác nhau sau khi hấp thụ lượng catechin. Tại võng mạc mắt, sự hấp thụ lượng gallocatechin cao nhất, ở thủy dịch là epigallocatechin( hai thành phần này có chứa trong trà xanh).<br /><br />Catechin là một loại chất chống oxy hóa, có tác dụng hiệu quả trong ngăn ngừa các bệnh về mắt, đặc biệt là bệnh cườm nước xuất hiện do áp lực nội nhãn tăng cao làm tổn thương thần kinh thị giác, nếu nặng có thể dẫn tới mù lòa.<br /><br />Catechin có tác dụng làm giảm quá trình lão hóa các bộ phận của mắt, giảm căng thẳng cho mắt kéo dài tới 20 giờ sau khi uống trà xanh.. Thời gian tập trung tối đa của nhóm catechin thay đổi từ 30 phút đến 12 giờ. Từ đó có tác dụng ngăn ngừa mắc các bệnh về mắt.<br />Kết quả nghiên cứu này được đăng tải trên tạp san Nông nghiệp và Thực phẩm hóa học của Hồng Kông. Hiện các nhà khoa học vẫn đang trong quá trình thực nghiệm trên người về tác dụng của catechin đối với mắt.<br /> <br /><em><strong>Theo Dân Trí</strong></em></p>', '1', '1', '0', '1', '2010-05-05 11:14:13', '62', '', '2010-05-15 09:37:44', '62', '0', '0000-00-00 00:00:00', '2010-05-05 11:14:13', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '6', 'Trà xanh, glaucoma, catechin', 'Trà xanh có thể ngừa bệnh glaucoma', '0', '9', 'robots=Trà xanh, glaucoma, catechin\nauthor=');
INSERT INTO `jos_content` VALUES ('140', 'Những bài tập chống lão hóa hiệu quả', 'nhng-bai-tp-chng-lao-hoa-hiu-qu', '', '<p style=\"text-align: justify;\">Sự trẻ trung, khỏe mạnh là điều mà bất cứ ai cũng mong muốn và phấn đấu để đạt tới. Tuy nhiên, chống lại tuổi già và sự lão hóa quả thực không phải là điều dễ dàng. Ngoài chế độ ăn uống điều độ, phù hợp và chế độ nghỉ ngơi hợp lý, việc tập luyện phù hợp với lứa tuổi cũng đóng một vai trò vô cùng quan trọng, giúp con người chống lại quá trình lão hóa một cách hiệu quả. Các chuyên gia chăm sóc sắc đẹp cho phụ nữ đã tập hợp và đưa ra một số bài tập chống lão hóa hiệu quả phù hợp với từng độ tuổi như sau.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><em><img src=\"images/stories/tintucsukien/tintuc/dabnhung-bai-tap-chong-lao-hoa1.jpg\" border=\"0\" /></em></p>\r\n<p style=\"text-align: center;\"><em>Ngồi thiền - bài tập phù hợp cho mọi lứa tuổi.</em></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><strong>Độ tuổi từ 20 - 30</strong><br /><br />Cách giữ gìn sức khỏe và sự dẻo dai tốt nhất là những bài tập thể dục đơn giản, chủ yếu là các bài tập cho phần xương chậu, eo và phần bụng.<br /><br />Bài tập 1: Nằm ngửa người trên sàn và sải chân rộng sang 2 bên hông. Sau đó đưa dần 2 chân lên phía trước mặt sao cho 2 chân chụm vào nhau, giữ nguyên tư thế đó 5 - 10 giây. Lặp lại động tác này nhiều lần một cách nhẹ nhàng và thường xuyên hàng ngày sẽ giúp bạn có cơ bụng săn chắc và một dáng hình gọn gàng, trẻ đẹp.<br /><br />Bài tập 2: Ngồi trên sàn với 2 chân duỗi thẳng phía trước, rướn người về phía trước sao cho 2 tay chạm vào đầu bàn chân. Cần chú ý: thẳng lưng khi tập động tác này. Đây là bài tập rất tốt cho phần eo và cơ bụng. Nó sẽ giúp các cơ săn chắc và giảm mỡ bụng, một trong những nguyên nhân làm mất đi vóc dáng trẻ đẹp của bạn.<br /><br />Các chuyên gia khuyên rằng, phụ nữ ở lứa tuổi này không nên quá tự tin rằng mình chưa bước vào thời kỳ lão hóa, bởi đôi khi quá trình lão hóa diễn ra khá sớm, ngay từ khi bạn còn chưa bước sang tuổi 30. Việc tập luyện thể chất ngay từ khi còn trẻ sẽ giúp bạn tạo được thói quen tốt và giúp bạn duy trì được sự trẻ trung lâu dài.<br /><br /><strong>Độ tuổi từ 30 -40</strong><br /><br />Bài tập dành cho độ tuổi này là những bài tập tăng cường hiệu quả thư giãn, chống stress, bởi đây chính là độ tuổi mà con người thường phải đau đầu với những bộn bề của công việc gia đình và công việc cơ quan. Cả nam giới và phụ nữ đều nên tập luyện đều đặn hàng ngày. Ngoài ra, cần bổ sung năng lượng và dưỡng chất đầy đủ sau khi tập luyện.<br /><br />Bài tập 1: Đứng thẳng trên sàn, sau đó cúi gập người thấp dần về phía trước, càng thấp càng tốt cho tới mức bạn có thể. Động tác này sẽ giúp ích rất nhiều cho lưng và cơ bụng.<br /><br />Bài tập 2: Chống 2 tay lên sườn, đưa một chân lên phía trước một khoảng rộng hơn vai, chân sau giữ nguyên, từ từ đẩy người về phía trước, chân trước hơi nhún, chân sau thẳng. Lặp lại động tác này với từng chân một sẽ có tác dụng giải tỏa mệt mỏi sau một ngày làm việc căng thẳng, nhất là những việc thường xuyên phải ngồi bàn giấy.<br /><br /><strong>Độ tuổi từ 40 - 50</strong><br /><br />Đây chính là độ tuổi cần duy trì thói quen tập luyện thường xuyên và tích cực nhất để chống lại quá trình lão hóa.<br /><br />Bài tập nhẹ nhàng nhất là yoga và dưỡng sinh. Ngoài ra, bạn có thể tập thêm một số động tác có lợi cho eo và hông khác.<br /><br />Bài tập 1: Tạo sự kết hợp giữa eo và hông: nằm ngửa trên sàn với một chân ở tư thế quì trên sàn, đặt tay kê vào phần xương cột sống lưng và đất. Giữ nguyên tư thế này trong vòng vài giây cho đến một phút. Đây là động tác giúp tăng cường sự dẻo dai cho cơ chân, bụng.<br /><br />Bài tập 2: Hai chân quì trên sàn, từ từ đưa 2 tay sang bên trái, rồi bên phải lườn kết hợp với xoay nhẹ thân trên giống như động tác vặn mình. Thở sâu khi tập xong động tác này, sau đó tập lại khoảng 5 - 10 lần.<br /><br />Bài tập thể chất dành cho mọi lứa tuổi<br /><br />Đó là duy trì chế độ sinh hoạt, tập luyện thể chất thật đều đặn, chẳng hạn như việc đi bộ, tập những bài tập thể dục nhẹ nhàng, hít thở sâu và đảm bảo giấc ngủ cân bằng, hợp lý. Ngồi thiền hoặc tập yoga là phương pháp phù hợp với mọi lứa tuổi. Tư thế ngồi thiền là khoanh chân, giữ lưng thẳng, hơi hóp bụng. 2 tay đặt 2 bên đùi. Hít sâu và thở ra nhẹ nhàng và liên tục như vậy trong khoảng 15 - 20 phút.<br /><br /><em><strong>MINH NGỌC<br /><br />(Theo Marie Claire - Update)</strong></em></p>', '1', '1', '0', '4', '2010-05-05 11:23:11', '62', '', '2010-05-15 14:21:11', '62', '0', '0000-00-00 00:00:00', '2010-05-05 11:23:11', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '2', 'bài tập, chống lão hóa hiệu quả', 'Những bài tập chống lão hóa hiệu quả', '0', '3', 'robots=Yoga, đôi chân\nauthor=');
INSERT INTO `jos_content` VALUES ('141', 'Kỳ nhông', 'k-nhong', '', '<p style=\"text-align: justify;\">Kỳ nhông hay cự đà (danh pháp khoa học Iguana) là một chi gồm các loài thằn lằn sống ở các khu vực nhiệt đới Trung  và Nam Mỹ và khu vực Caribbe, được nhà tự nhiên học người Áo Josephus Nicolaus Laurenti mô tả lần đầu trong quyển sách của ông Specimen Medicum, Exhibens Synopsin Reptilium Emendatam cum Experimentis circa Venena năm 1768. Chi này có hai loài: kỳ nhông xanh  và kỳ nhông Tiểu Antilles.</p>\r\n', '\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/Thegioianh/kynhong4sus.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/Thegioianh/kynhong2sua.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/Thegioianh/kynhngsua.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/Thegioianh/kynhong3sus.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/Thegioianh/nnngsua.jpg\" border=\"0\" /></p>', '1', '1', '0', '5', '2010-05-05 14:01:51', '62', '', '2010-05-12 11:53:26', '62', '0', '0000-00-00 00:00:00', '2010-05-05 14:01:51', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '1', 'Kỳ nhông', 'Kỳ nhông', '0', '26', 'robots=\nauthor=');

-- ----------------------------
-- Table structure for `jos_content_frontpage`
-- ----------------------------
DROP TABLE IF EXISTS `jos_content_frontpage`;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_content_frontpage
-- ----------------------------
INSERT INTO `jos_content_frontpage` VALUES ('94', '32');
INSERT INTO `jos_content_frontpage` VALUES ('170', '5');
INSERT INTO `jos_content_frontpage` VALUES ('15', '7');
INSERT INTO `jos_content_frontpage` VALUES ('62', '37');
INSERT INTO `jos_content_frontpage` VALUES ('87', '28');
INSERT INTO `jos_content_frontpage` VALUES ('155', '6');
INSERT INTO `jos_content_frontpage` VALUES ('173', '4');
INSERT INTO `jos_content_frontpage` VALUES ('88', '36');
INSERT INTO `jos_content_frontpage` VALUES ('147', '22');
INSERT INTO `jos_content_frontpage` VALUES ('150', '17');
INSERT INTO `jos_content_frontpage` VALUES ('40', '23');
INSERT INTO `jos_content_frontpage` VALUES ('71', '18');
INSERT INTO `jos_content_frontpage` VALUES ('69', '20');
INSERT INTO `jos_content_frontpage` VALUES ('89', '35');
INSERT INTO `jos_content_frontpage` VALUES ('97', '29');
INSERT INTO `jos_content_frontpage` VALUES ('93', '30');
INSERT INTO `jos_content_frontpage` VALUES ('95', '31');
INSERT INTO `jos_content_frontpage` VALUES ('91', '33');
INSERT INTO `jos_content_frontpage` VALUES ('92', '34');
INSERT INTO `jos_content_frontpage` VALUES ('104', '27');
INSERT INTO `jos_content_frontpage` VALUES ('121', '9');
INSERT INTO `jos_content_frontpage` VALUES ('136', '25');
INSERT INTO `jos_content_frontpage` VALUES ('74', '21');
INSERT INTO `jos_content_frontpage` VALUES ('164', '12');
INSERT INTO `jos_content_frontpage` VALUES ('78', '24');
INSERT INTO `jos_content_frontpage` VALUES ('103', '26');
INSERT INTO `jos_content_frontpage` VALUES ('161', '13');
INSERT INTO `jos_content_frontpage` VALUES ('174', '3');
INSERT INTO `jos_content_frontpage` VALUES ('133', '10');
INSERT INTO `jos_content_frontpage` VALUES ('149', '19');
INSERT INTO `jos_content_frontpage` VALUES ('151', '16');
INSERT INTO `jos_content_frontpage` VALUES ('19', '11');
INSERT INTO `jos_content_frontpage` VALUES ('153', '15');
INSERT INTO `jos_content_frontpage` VALUES ('154', '14');
INSERT INTO `jos_content_frontpage` VALUES ('162', '8');
INSERT INTO `jos_content_frontpage` VALUES ('175', '2');
INSERT INTO `jos_content_frontpage` VALUES ('176', '1');

-- ----------------------------
-- Table structure for `jos_content_rating`
-- ----------------------------
DROP TABLE IF EXISTS `jos_content_rating`;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_content_rating
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_core_acl_aro`
-- ----------------------------
DROP TABLE IF EXISTS `jos_core_acl_aro`;
CREATE TABLE `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_core_acl_aro
-- ----------------------------
INSERT INTO `jos_core_acl_aro` VALUES ('10', 'users', '62', '0', 'Administrator', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('11', 'users', '64', '0', 'long', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('12', 'users', '65', '0', 'theeyes26', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('13', 'users', '66', '0', 'Vũ Hoài Nam', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('14', 'users', '67', '0', 'Tuan', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('15', 'users', '68', '0', 'Phuong', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('16', 'users', '69', '0', 'Tung Nguyen', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('26', 'users', '79', '0', 'Tùng', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('23', 'users', '76', '0', 'Nam Trung', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('27', 'users', '80', '0', 'trauden30493', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('28', 'users', '81', '0', 'duyen', '0');

-- ----------------------------
-- Table structure for `jos_core_acl_aro_groups`
-- ----------------------------
DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;
CREATE TABLE `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_core_acl_aro_groups
-- ----------------------------
INSERT INTO `jos_core_acl_aro_groups` VALUES ('17', '0', 'ROOT', '1', '22', 'ROOT');
INSERT INTO `jos_core_acl_aro_groups` VALUES ('28', '17', 'USERS', '2', '21', 'USERS');
INSERT INTO `jos_core_acl_aro_groups` VALUES ('29', '28', 'Public Frontend', '3', '12', 'Public Frontend');
INSERT INTO `jos_core_acl_aro_groups` VALUES ('18', '29', 'Registered', '4', '11', 'Registered');
INSERT INTO `jos_core_acl_aro_groups` VALUES ('19', '18', 'Author', '5', '10', 'Author');
INSERT INTO `jos_core_acl_aro_groups` VALUES ('20', '19', 'Editor', '6', '9', 'Editor');
INSERT INTO `jos_core_acl_aro_groups` VALUES ('21', '20', 'Publisher', '7', '8', 'Publisher');
INSERT INTO `jos_core_acl_aro_groups` VALUES ('30', '28', 'Public Backend', '13', '20', 'Public Backend');
INSERT INTO `jos_core_acl_aro_groups` VALUES ('23', '30', 'Manager', '14', '19', 'Manager');
INSERT INTO `jos_core_acl_aro_groups` VALUES ('24', '23', 'Administrator', '15', '18', 'Administrator');
INSERT INTO `jos_core_acl_aro_groups` VALUES ('25', '24', 'Super Administrator', '16', '17', 'Super Administrator');

-- ----------------------------
-- Table structure for `jos_core_acl_aro_map`
-- ----------------------------
DROP TABLE IF EXISTS `jos_core_acl_aro_map`;
CREATE TABLE `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_core_acl_aro_map
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_core_acl_aro_sections`
-- ----------------------------
DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;
CREATE TABLE `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_core_acl_aro_sections
-- ----------------------------
INSERT INTO `jos_core_acl_aro_sections` VALUES ('10', 'users', '1', 'Users', '0');

-- ----------------------------
-- Table structure for `jos_core_acl_groups_aro_map`
-- ----------------------------
DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;
CREATE TABLE `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_core_acl_groups_aro_map
-- ----------------------------
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('18', '', '11');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('18', '', '12');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('18', '', '15');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('18', '', '16');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('18', '', '26');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('18', '', '27');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('18', '', '28');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('23', '', '13');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('23', '', '14');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('25', '', '10');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('25', '', '23');

-- ----------------------------
-- Table structure for `jos_core_log_items`
-- ----------------------------
DROP TABLE IF EXISTS `jos_core_log_items`;
CREATE TABLE `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_core_log_items
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_core_log_searches`
-- ----------------------------
DROP TABLE IF EXISTS `jos_core_log_searches`;
CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_core_log_searches
-- ----------------------------
INSERT INTO `jos_core_log_searches` VALUES ('', '10');
INSERT INTO `jos_core_log_searches` VALUES ('việt nam', '59');
INSERT INTO `jos_core_log_searches` VALUES ('a', '1');
INSERT INTO `jos_core_log_searches` VALUES ('loại', '1');
INSERT INTO `jos_core_log_searches` VALUES ('fsdfsf', '1');
INSERT INTO `jos_core_log_searches` VALUES ('vietnam', '15');
INSERT INTO `jos_core_log_searches` VALUES ('viet', '4');
INSERT INTO `jos_core_log_searches` VALUES ('Nga ra mắt tàu chiến tàng hình', '5');
INSERT INTO `jos_core_log_searches` VALUES ('Nga', '2');
INSERT INTO `jos_core_log_searches` VALUES ('actiso', '2');
INSERT INTO `jos_core_log_searches` VALUES ('thuốc', '1');
INSERT INTO `jos_core_log_searches` VALUES ('lo hoi', '2');
INSERT INTO `jos_core_log_searches` VALUES ('ma hoang', '2');
INSERT INTO `jos_core_log_searches` VALUES ('ba kích', '2');
INSERT INTO `jos_core_log_searches` VALUES ('hương phụ', '9');
INSERT INTO `jos_core_log_searches` VALUES ('Kinh giới', '1');
INSERT INTO `jos_core_log_searches` VALUES ('tang cúc ẩm', '1');
INSERT INTO `jos_core_log_searches` VALUES ('cúc hoa', '1');
INSERT INTO `jos_core_log_searches` VALUES ('Thăng ma', '1');
INSERT INTO `jos_core_log_searches` VALUES ('cát căn', '1');
INSERT INTO `jos_core_log_searches` VALUES ('Aloe vera', '1');
INSERT INTO `jos_core_log_searches` VALUES ('nhân trần', '1');
INSERT INTO `jos_core_log_searches` VALUES ('clerodendrum chinense', '1');
INSERT INTO `jos_core_log_searches` VALUES ('bạch đồng nữ', '1');
INSERT INTO `jos_core_log_searches` VALUES ('cá ngựa', '1');
INSERT INTO `jos_core_log_searches` VALUES ('nhân sâm', '17');
INSERT INTO `jos_core_log_searches` VALUES ('xx', '1');
INSERT INTO `jos_core_log_searches` VALUES ('nh', '1');
INSERT INTO `jos_core_log_searches` VALUES ('nh', '1');
INSERT INTO `jos_core_log_searches` VALUES ('nh', '1');

-- ----------------------------
-- Table structure for `jos_groups`
-- ----------------------------
DROP TABLE IF EXISTS `jos_groups`;
CREATE TABLE `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_groups
-- ----------------------------
INSERT INTO `jos_groups` VALUES ('0', 'Public');
INSERT INTO `jos_groups` VALUES ('1', 'Registered');
INSERT INTO `jos_groups` VALUES ('2', 'Special');

-- ----------------------------
-- Table structure for `jos_menu`
-- ----------------------------
DROP TABLE IF EXISTS `jos_menu`;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_menu
-- ----------------------------
INSERT INTO `jos_menu` VALUES ('40', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=category&layout=blog&id=6', 'component', '-2', '0', '20', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('2', 'topmenu', 'Trang chủ', 'trang-chu', 'index.php?option=com_content&view=frontpage', 'component', '1', '0', '20', '0', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=10\norderby_pri=\norderby_sec=front\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=1\nlink_section=1\nshow_category=1\nlink_category=1\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '1');
INSERT INTO `jos_menu` VALUES ('3', 'topmenu', 'Thuốc đông dược', 'thuoc-dong-duoc', 'index.php?option=com_content&view=section&id=4', 'component', '1', '0', '20', '0', '7', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=1\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('4', 'topmenu', 'Cây thuốc - Vị thuốc', 'cay-thuoc-vi-thuoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2', 'url', '1', '0', '0', '0', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('68', 'caythuoc-vithuoc', 'Họ thực vật khoa học', 'ho-thuc-vat-khoa-hoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=htvkh&Itemid=18', 'url', '1', '0', '0', '0', '12', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('65', 'caythuoc-vithuoc', 'Tên Việt Nam', 'ten-viet-nam', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=tvn&Itemid=15', 'url', '1', '0', '0', '0', '7', '62', '2010-05-11 07:09:30', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('5', 'topmenu', 'Bài thuốc', 'bai-thuoc', 'index.php?option=com_content&view=section&id=3', 'component', '1', '0', '20', '0', '6', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=1\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('6', 'topmenu', 'Chợ đông dược', 'cho-dong-duoc', 'index.php?option=com_adsmanager', 'component', '1', '0', '66', '0', '8', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('7', 'topmenu', 'Thư viện', 'thu-vien', 'index.php?option=com_content&view=section&layout=thuvien&id=5', 'url', '1', '0', '0', '0', '9', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('8', 'topmenu', 'Hỏi đáp', 'hoi-dap', 'index.php?option=com_comment&view=answer', 'component', '1', '0', '61', '0', '10', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'page_title=\nshow_page_title=1\npageclass_sfx=right_side\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('64', 'topmenu', 'Current Datetime & slogan', 'current-datetime-a-slogan', 'index.php?Itemid=', 'menulink', '1', '2', '0', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_item=\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('9', 'topmenu', 'Tin tức sự kiện', 'tin-tuc-su-kien', 'index.php?option=com_content&view=section&layout=blog&id=1', 'component', '1', '0', '20', '0', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=1\nshow_description_image=1\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=50\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=1\nlink_section=1\nshow_category=1\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('10', 'topmenu', 'Tin tức', 'tin-tuc', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', '1', '9', '20', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('11', 'topmenu', 'Sử dụng thuốc', 'su-dung-thuoc', 'index.php?option=com_content&view=category&layout=blog&id=2', 'component', '1', '9', '20', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('12', 'topmenu', 'Món ăn bài thuốc', 'mon-an-bai-thuoc', 'index.php?option=com_content&view=category&layout=blog&id=3', 'component', '1', '9', '20', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('13', 'topmenu', 'Sức khỏe đời sống', 'suc-khoe-doi-song', 'index.php?option=com_content&view=category&layout=blog&id=4', 'component', '1', '9', '20', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('14', 'topmenu', 'Thế giới ảnh', 'the-gioi-anh', 'index.php?option=com_content&view=category&layout=blog&id=5', 'component', '1', '9', '20', '1', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('15', 'topmenu', 'Tên Việt Nam', 'ten-viet-nam', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=tvn', 'url', '1', '4', '0', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('16', 'topmenu', 'Tên khoa học', 'ten-khoa-hoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=tkh', 'url', '1', '4', '0', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('17', 'topmenu', 'Họ thực vật Việt Nam', 'ho-thuc-vat-viet-nam', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=htvvn', 'url', '1', '4', '0', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('18', 'topmenu', 'Họ thực vật khoa học', 'ho-thuc-vat-khoa-hoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=htvkh', 'url', '1', '4', '0', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('19', 'topmenu', 'Bộ phận dùng', 'bo-phan-dung', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=bpd', 'url', '1', '4', '0', '1', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('69', 'caythuoc-vithuoc', 'Bộ phận dùng', 'bo-phan-dung', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=bpd&Itemid=19', 'url', '1', '0', '0', '0', '13', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('70', 'caythuoc-vithuoc', 'Thành phần hóa học', 'thanh-phan-hoa-hoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=tphh&Itemid=20', 'url', '1', '0', '0', '0', '14', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('20', 'topmenu', 'Thành phần hóa học', 'thanh-phan-hoa-hoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=tphh', 'url', '1', '4', '0', '1', '6', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('66', 'caythuoc-vithuoc', 'Tên khoa học', 'ten-khoa-hoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=tkh&Itemid=16', 'url', '1', '0', '0', '0', '9', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('67', 'caythuoc-vithuoc', 'Họ thực vật Việt Nam', 'ho-thuc-vat-viet-nam', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=htvvn&Itemid=17', 'url', '1', '0', '0', '0', '10', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('21', 'topmenu', 'Bài thuốc theo tên', 'bai-thuoc-theo-ten', 'index.php?option=com_content&view=section&id=3&filter=tvn', 'url', '1', '5', '0', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('22', 'topmenu', 'Phân loại theo tính chất đông y', 'phan-loai-theo-tinh-chat-dong-y', 'index.php?option=com_content&view=section&id=3&filter=bt_tcdy', 'url', '1', '5', '0', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('23', 'topmenu', 'Phân loại theo bệnh', 'phan-loai-theo-benh', 'index.php?option=com_content&view=section&id=3&filter=bt_pltb', 'url', '1', '5', '0', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('73', 'baithuoc', 'Phân loại theo bệnh', 'phan-loai-theo-benh', 'index.php?option=com_content&view=section&id=3&filter=bt_pltb&Itemid=23', 'url', '1', '0', '0', '0', '6', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('24', 'topmenu', 'Thuốc', 'thuoc', 'index.php?option=com_content&view=category&layout=blog&id=15', 'component', '1', '3', '20', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('25', 'topmenu', 'Phòng khám Đông Y', 'phong-kham-dong-y', 'index.php?option=com_content&view=category&layout=blog&id=16', 'component', '1', '3', '20', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('26', 'topmenu', 'Bệnh viên y học cổ truyền', 'benh-vien-y-hoc-co-truyen', 'index.php?option=com_content&view=category&layout=blog&id=17', 'component', '1', '3', '20', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('27', 'topmenu', 'Nguyên liệu đông dược', 'nguyen-lieu-dong-duoc', 'index.php?option=com_content&view=category&layout=blog&id=18', 'component', '1', '3', '20', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('28', 'topmenu', 'Tinh dầu', 'tinh-dau', 'index.php?option=com_content&view=category&layout=blog&id=19', 'component', '1', '3', '20', '1', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('29', 'topmenu', 'Cần bán', 'can-ban', 'index.php?option=com_adsmanager&page=show_category&catid=1', 'url', '1', '6', '0', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('30', 'topmenu', 'Cần mua', 'can-mua', 'index.php?option=com_adsmanager&page=show_category&catid=2', 'url', '1', '6', '0', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('31', 'topmenu', 'Thực vật', 'thuc-vat', 'index.php?option=com_content&view=category&layout=blog&id=20', 'component', '1', '7', '20', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('32', 'topmenu', 'Dược liệu', 'duoc-lieu', 'index.php?option=com_content&view=category&layout=blog&id=21', 'component', '1', '7', '20', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('33', 'topmenu', 'Đông Y', 'dong-y', 'index.php?option=com_content&view=category&layout=blog&id=22', 'component', '1', '7', '20', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('34', 'topmenu', 'Sách khác', 'sach-khac', 'index.php?option=com_content&view=category&layout=blog&id=23', 'component', '1', '7', '20', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('35', 'topmenu', 'Đặt câu hỏi', 'dat-cau-hoi', 'index.php?option=com_comment&view=comment', 'component', '1', '8', '61', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('36', 'topmenu', 'Câu hỏi đã trả lời', 'cau-hoi-da-tra-loi', 'index.php?option=com_comment&view=answer', 'component', '1', '8', '61', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('37', 'topmenu', 'Câu hỏi chưa trả lời', 'cau-hoi-chua-tra-loi', 'index.php?option=com_comment&view=question', 'component', '0', '8', '61', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('38', 'topmenu', 'tem', 'tem', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('39', 'topmenu', 'tem', 'tem', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('72', 'baithuoc', 'Theo tính chất đông y', 'theo-tinh-chat-dong-y', 'index.php?option=com_content&view=section&id=3&filter=bt_tcdy&Itemid=22', 'url', '1', '0', '0', '0', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('41', 'caythuoc-vithuoc', 'Tên khoa học', 'ten-khoa-hoc', 'index.php?option=com_content&view=category&layout=blog&id=7', 'component', '-2', '0', '20', '0', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('42', 'caythuoc-vithuoc', 'Họ thực vật việt nam', 'ho-thuc-vat-viet-nam', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', '-2', '0', '20', '0', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('43', 'caythuoc-vithuoc', 'Họ thực vật khoa học', 'ho-thuc-vat-khoa-hoc', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', '-2', '0', '20', '0', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('44', 'caythuoc-vithuoc', 'Thành phần hóa học', 'thanh-phan-hoa-hoc', 'index.php?option=com_content&view=category&layout=blog&id=11', 'component', '-2', '0', '20', '0', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('45', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '11', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('46', 'caythuoc-vithuoc', 'Động vật làm thuốc', 'dong-vat-lam-thuoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=dvlt&Itemid=4', 'url', '1', '0', '0', '0', '20', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('47', 'caythuoc-vithuoc', 'Khoáng vật làm thuốc', 'khoang-vat-lam-thuoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=kvlt&Itemid=4', 'url', '1', '0', '0', '0', '21', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('74', 'gianhang', 'Gian Hàng', 'gian-hang', '', 'url', '1', '0', '0', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('48', 'caythuoc-vithuoc', 'Theo tên Hán Việt', 'theo-ten-han-viet', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=thv&Itemid=4', 'url', '1', '0', '0', '0', '17', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('49', 'caythuoc-vithuoc', 'Bộ phận dùng', 'bo-phan-dung', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', '-2', '0', '20', '0', '6', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('50', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '8', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('51', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '24', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('52', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '23', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('53', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '22', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('54', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '19', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('55', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '15', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('56', 'caythuoc-vithuoc', 'Theo tính chất đông y', 'theo-tinh-chat-dong-y', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=tcdy&Itemid=4', 'url', '1', '0', '0', '0', '18', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('57', 'caythuoc-vithuoc', 'Phân loại theo bệnh', 'phan-loai-theo-benh', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=pltb&Itemid=75', 'url', '1', '0', '0', '0', '16', '62', '2010-05-11 04:00:26', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('58', 'topmenu', 'Liên hệ', 'lien-h', 'index.php?option=com_contact&view=contact&id=1', 'component', '0', '0', '7', '0', '11', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('59', 'footermenu', 'Email cho chúng tôi.', 'email-cho-chung-toi', 'index.php?option=com_contact&view=contact&id=1', 'component', '1', '0', '7', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('60', 'footermenu', 'Liên hệ quảng cáo', 'lien-h-qung-cao', 'index.php?option=com_contact&view=contact&id=2', 'component', '1', '0', '7', '0', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('71', 'baithuoc', 'Bài thuốc theo tên', 'bai-thuoc-theo-ten', 'index.php?option=com_content&view=section&id=3&filter=tvn&Itemid=21', 'url', '1', '0', '0', '0', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('61', 'baithuoc', 'Bài thuốc theo tên', 'bai-thuoc-theo-ten', 'index.php?option=com_content&view=category&layout=blog&id=12', 'component', '-2', '0', '20', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('62', 'baithuoc', 'Phân loại theo tính chất đông y', 'phan-loai-theo-tinh-chat-dong-y', 'index.php?option=com_content&view=category&layout=blog&id=13', 'component', '-2', '0', '20', '0', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('63', 'baithuoc', 'Phân loại theo bệnh', 'phan-loai-theo-benh', 'index.php?option=com_content&view=category&layout=blog&id=14', 'component', '-2', '0', '20', '0', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('75', 'topmenu', 'Phân loại theo bệnh', 'phan-loai-theo-benh', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=pltb', 'url', '1', '4', '0', '1', '7', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('76', 'footermenu', 'Duong day nong :97867', 'duong-day-nong-97867', '', 'separator', '1', '60', '0', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('77', 'usermenu', 'Đăng ký', 'ng-ky', 'index.php?option=com_user&view=register', 'component', '1', '0', '14', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('78', 'usermenu', 'Quên mật khẩu', 'quen-mt-khu', 'index.php?option=com_user&view=remind', 'component', '1', '0', '14', '0', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');

-- ----------------------------
-- Table structure for `jos_menu_types`
-- ----------------------------
DROP TABLE IF EXISTS `jos_menu_types`;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_menu_types
-- ----------------------------
INSERT INTO `jos_menu_types` VALUES ('3', 'caythuoc-vithuoc', 'Cây Thuốc Vị Thuốc', 'Menu  Bên Trái');
INSERT INTO `jos_menu_types` VALUES ('2', 'topmenu', 'Top Menu', 'Top Menu');
INSERT INTO `jos_menu_types` VALUES ('4', 'footermenu', 'Footer Menu', 'Footer menu');
INSERT INTO `jos_menu_types` VALUES ('5', 'baithuoc', 'Bài thuốc', 'Bài thuốc');
INSERT INTO `jos_menu_types` VALUES ('6', 'gianhang', 'Gian Hàng', 'Gian Hàng');
INSERT INTO `jos_menu_types` VALUES ('7', 'usermenu', 'User Menu', 'User Menu');

-- ----------------------------
-- Table structure for `jos_messages`
-- ----------------------------
DROP TABLE IF EXISTS `jos_messages`;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_messages
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_messages_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `jos_messages_cfg`;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_messages_cfg
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_migration_backlinks`
-- ----------------------------
DROP TABLE IF EXISTS `jos_migration_backlinks`;
CREATE TABLE `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_migration_backlinks
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_modules`
-- ----------------------------
DROP TABLE IF EXISTS `jos_modules`;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_modules
-- ----------------------------
INSERT INTO `jos_modules` VALUES ('1', 'Top Menu', '', '1', 'user3', '0', '0000-00-00 00:00:00', '1', 'mod_mainmenu', '0', '0', '1', 'menutype=topmenu\nmenu_style=list\nstartLevel=0\nendLevel=2\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=123\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=1\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', '1', '0', '');
INSERT INTO `jos_modules` VALUES ('2', 'Login', '', '1', 'login', '0', '0000-00-00 00:00:00', '1', 'mod_login', '0', '0', '1', '', '1', '1', '');
INSERT INTO `jos_modules` VALUES ('3', 'Popular', '', '3', 'cpanel', '0', '0000-00-00 00:00:00', '1', 'mod_popular', '0', '2', '1', '', '0', '1', '');
INSERT INTO `jos_modules` VALUES ('4', 'Recent added Articles', '', '4', 'cpanel', '0', '0000-00-00 00:00:00', '1', 'mod_latest', '0', '2', '1', 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', '0', '1', '');
INSERT INTO `jos_modules` VALUES ('5', 'Menu Stats', '', '5', 'cpanel', '0', '0000-00-00 00:00:00', '1', 'mod_stats', '0', '2', '1', '', '0', '1', '');
INSERT INTO `jos_modules` VALUES ('6', 'Unread Messages', '', '1', 'header', '0', '0000-00-00 00:00:00', '1', 'mod_unread', '0', '2', '1', '', '1', '1', '');
INSERT INTO `jos_modules` VALUES ('7', 'Online Users', '', '2', 'header', '0', '0000-00-00 00:00:00', '1', 'mod_online', '0', '2', '1', '', '1', '1', '');
INSERT INTO `jos_modules` VALUES ('8', 'Toolbar', '', '1', 'toolbar', '0', '0000-00-00 00:00:00', '1', 'mod_toolbar', '0', '2', '1', '', '1', '1', '');
INSERT INTO `jos_modules` VALUES ('9', 'Quick Icons', '', '1', 'icon', '0', '0000-00-00 00:00:00', '1', 'mod_quickicon', '0', '2', '1', '', '1', '1', '');
INSERT INTO `jos_modules` VALUES ('10', 'Logged in Users', '', '2', 'cpanel', '0', '0000-00-00 00:00:00', '1', 'mod_logged', '0', '2', '1', '', '0', '1', '');
INSERT INTO `jos_modules` VALUES ('11', 'Footer', '', '0', 'footer', '0', '0000-00-00 00:00:00', '1', 'mod_footer', '0', '0', '1', '', '1', '1', '');
INSERT INTO `jos_modules` VALUES ('12', 'Admin Menu', '', '1', 'menu', '0', '0000-00-00 00:00:00', '1', 'mod_menu', '0', '2', '1', '', '0', '1', '');
INSERT INTO `jos_modules` VALUES ('13', 'Admin SubMenu', '', '1', 'submenu', '0', '0000-00-00 00:00:00', '1', 'mod_submenu', '0', '2', '1', '', '0', '1', '');
INSERT INTO `jos_modules` VALUES ('14', 'User Status', '', '1', 'status', '0', '0000-00-00 00:00:00', '1', 'mod_status', '0', '2', '1', '', '0', '1', '');
INSERT INTO `jos_modules` VALUES ('15', 'Title', '', '1', 'title', '0', '0000-00-00 00:00:00', '1', 'mod_title', '0', '2', '1', '', '0', '1', '');
INSERT INTO `jos_modules` VALUES ('16', 'Banner - Trang chủ - giữa', '', '1', 'user1', '0', '0000-00-00 00:00:00', '0', 'mod_banners', '0', '0', '0', 'target=1\ncount=1\ncid=1\ncatid=24\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('18', 'Cây Thuốc Vị Thuốc', '', '4', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_mainmenu', '0', '0', '1', 'menutype=caythuoc-vithuoc\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=1\nmoduleclass_sfx=-a\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('44', 'Sản phẩm nổi bật', '', '2', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=999\ncatid=294\nsecid=9\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('45', 'Giới thiệu gian hàng', '', '7', 'left', '62', '2010-05-11 07:22:10', '0', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=7\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('27', 'Hỗ trợ trực tuyến', '', '11', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_jodev_ymcustomimage', '0', '0', '0', 'cache=0\nmoduleclass_sfx=-e\nyahooid=gio_doi.chieu\nstyle=2\nyahooimage=2\ncustomimage=0\nimage_online=templates/thuocdocduoc/images/yahoo_on.png\nimage_offline=templates/thuocdocduoc/images/yahoo_off.png\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('23', 'Vinaora Visitors Counter', '', '9', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_vvisit_counter', '0', '0', '0', 'moduleclass_sfx=-deleted\nmode=custom\ninitialvalue=0\ndigit_type=0\nnumber_digits=6\nstats_type=0\nwidthtable=90\ntoday=0\nyesterday=0\nweek=0\nlweek=0\nmonth=0\nlmonth=0\nall=All days\nautohide=1\nhrline=1\nbeginday=\nonline=We have\nguestip=Your IP\nguestinfo=Yes\nformattime=Today: %b %d, %Y\nissunday=1\ncache_time=15\npretext=\nposttext=\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('28', 'Footer', '', '1', 'footer', '0', '0000-00-00 00:00:00', '1', 'mod_footer', '0', '0', '0', 'cache=1\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('29', 'Tìm kiếm', '', '1', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_search', '0', '0', '0', 'moduleclass_sfx=-d\nwidth=20\ntext=\nbutton=1\nbutton_pos=right\nimagebutton=1\nbutton_text=\nset_itemid=\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('32', 'Đăng nhập', '', '7', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_login', '0', '0', '0', 'cache=0\nmoduleclass_sfx=-d\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('33', 'Lăng kính đông dược', '', '8', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_random_image', '0', '0', '1', 'type=jpg\nfolder=images/random_images/\nlink=http://thuocdongduoc.vn\nwidth=170px\nheight=\nmoduleclass_sfx=-b\ncache=0\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('34', 'footer menu', '', '5', 'left', '0', '0000-00-00 00:00:00', '0', 'mod_mainmenu', '0', '0', '1', 'menutype=footermenu', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('35', 'Liên kết website', '', '10', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_allweblinks', '0', '0', '0', 'Lcatids=1\nLexclude=1\nLCorder=a.catid\nLshowheader=1\nLshownumlnk=1\nLshowcdes=0\nLdropdown=1\nLcaticons=\nLcaticonh=\nLorder=date DESC\nLicon=-1\nLlengthoftitle=23\nLdotaddlenght=20\nLtitlepopuptxt=\nLshowhits=0\nLshownew=0\nLdaysnew=3\nLtxtnew=*\nLshowldes=0\nLpopuplinks=1\nmoduleclass_sfx=-e\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('49', 'Đăng nhập', '', '3', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_login', '0', '0', '0', 'cache=0\nmoduleclass_sfx=-d\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('41', 'Tin tức nổi bật', '', '3', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=1\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('42', 'Cây thuốc quý', '', '4', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=2\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('43', 'Bài thuốc hay', '', '5', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=3\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('39', 'Bài viết có liên quan', '', '1', 'user2', '0', '0000-00-00 00:00:00', '0', 'mod_related_items', '0', '0', '0', 'showDate=0\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('50', 'Nhóm thuốc', '', '2', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_nhomthuoc', '0', '0', '1', 'moduleclass_sfx=-a\nItemid=74\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('47', 'Giới Thiệu Gian Hàng', '', '8', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_store', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\nItemid=74\nsecid=7\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('40', 'Bài Thuốc', '', '6', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_mainmenu', '0', '0', '1', 'menutype=baithuoc\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=-\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=1\nmoduleclass_sfx=-a\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('51', 'Slide show images on FrontPage', '', '0', 'user1', '0', '0000-00-00 00:00:00', '1', 'mod_ccslideshow', '0', '0', '0', 'moduleclass_sfx=\npath=images/slideshow_home/\nimages=Cangua.jpg\\nbachqua.jpg\\ndaihoi1.jpg\\nlohoi.jpg\\ngung.jpg\\nnhansam.jpg\\nanhtuc.jpg\\nthuoc.jpg\\nLinhchi.jpg\\nDaihoi.jpg\\nruouran1.jpg\\nNhucque.jpg\\nchaycoi.jpg\\nsaobien.jpg\\nhoahoe.jpg\\ndaihoi2.jpg\\nruouran.jpg\\n\\n\ncaptions=\nlinks=\nwidth=550\nheight=300\nbackgroundColor=0xF0FAF1\nloops=0\nwait=3000\neffectTime=1\nincludeEffects=\nexcludeEffects=\nstopOnMouseOver=yes\nenableLinks=no\nlink=\nlinkTarget=_blank\norder=forward\nslides=0\nborderStyle=none\nborderColor=0x000000\nborderThickness=1\nborderAlpha=1.0\ncaptionStyle=none\ncaptionType=text\ncaptionBackgroundColor=0x000000\ncaptionColor=0xFFFFFF\ncaptionText=\ncaptionTextRightMargin=0\ncaptionTextLeftMargin=0\ncaptionTextBottomMargin=5\ncaptionTextFont=Times New Roman\ncaptionTextFontSize=12\ncaptionBackgroundAlpha=1.0\ncaptionPosition=top\ncaptionHorizontalOffset=0\ncaptionVerticalOffset=0\ncaptionImage=\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('52', 'Banner - trên cùng', '', '0', 'top', '0', '0000-00-00 00:00:00', '1', 'mod_ccslideshow', '0', '0', '0', 'moduleclass_sfx=\npath=images/slideshow_home/\nimages=logoi500x72.jpg\\nlohoi500x72to.jpg\\nsaobienlogodai.jpg\ncaptions=\nlinks=\nwidth=500\nheight=70\nbackgroundColor=0xFFFFFF\nloops=0\nwait=3000\neffectTime=1\nincludeEffects=\nexcludeEffects=\nstopOnMouseOver=no\nenableLinks=no\nlink=\nlinkTarget=_blank\norder=forward\nslides=0\nborderStyle=none\nborderColor=0x000000\nborderThickness=1\nborderAlpha=1.0\ncaptionStyle=none\ncaptionType=text\ncaptionBackgroundColor=0x000000\ncaptionColor=0xFFFFFF\ncaptionText=\ncaptionTextRightMargin=0\ncaptionTextLeftMargin=0\ncaptionTextBottomMargin=5\ncaptionTextFont=Times New Roman\ncaptionTextFontSize=12\ncaptionBackgroundAlpha=1.0\ncaptionPosition=top\ncaptionHorizontalOffset=0\ncaptionVerticalOffset=0\ncaptionImage=\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('53', 'Tủ sách hay', '', '2', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=5\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('54', 'User Menu', '', '1', 'left', '0', '0000-00-00 00:00:00', '0', 'mod_mainmenu', '0', '0', '1', 'menutype=usermenu', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('55', 'Câu hỏi hay', '', '6', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_cauhoihay', '0', '0', '1', 'moduleclass_sfx=-a\ncache=1\ncache_time=900\n\n', '0', '0', '');

-- ----------------------------
-- Table structure for `jos_modules_menu`
-- ----------------------------
DROP TABLE IF EXISTS `jos_modules_menu`;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_modules_menu
-- ----------------------------
INSERT INTO `jos_modules_menu` VALUES ('1', '0');
INSERT INTO `jos_modules_menu` VALUES ('16', '2');
INSERT INTO `jos_modules_menu` VALUES ('18', '2');
INSERT INTO `jos_modules_menu` VALUES ('18', '3');
INSERT INTO `jos_modules_menu` VALUES ('18', '4');
INSERT INTO `jos_modules_menu` VALUES ('18', '5');
INSERT INTO `jos_modules_menu` VALUES ('18', '7');
INSERT INTO `jos_modules_menu` VALUES ('18', '8');
INSERT INTO `jos_modules_menu` VALUES ('18', '9');
INSERT INTO `jos_modules_menu` VALUES ('18', '10');
INSERT INTO `jos_modules_menu` VALUES ('18', '11');
INSERT INTO `jos_modules_menu` VALUES ('18', '12');
INSERT INTO `jos_modules_menu` VALUES ('18', '13');
INSERT INTO `jos_modules_menu` VALUES ('18', '14');
INSERT INTO `jos_modules_menu` VALUES ('18', '15');
INSERT INTO `jos_modules_menu` VALUES ('18', '16');
INSERT INTO `jos_modules_menu` VALUES ('18', '17');
INSERT INTO `jos_modules_menu` VALUES ('18', '18');
INSERT INTO `jos_modules_menu` VALUES ('18', '19');
INSERT INTO `jos_modules_menu` VALUES ('18', '20');
INSERT INTO `jos_modules_menu` VALUES ('18', '21');
INSERT INTO `jos_modules_menu` VALUES ('18', '22');
INSERT INTO `jos_modules_menu` VALUES ('18', '23');
INSERT INTO `jos_modules_menu` VALUES ('18', '24');
INSERT INTO `jos_modules_menu` VALUES ('18', '25');
INSERT INTO `jos_modules_menu` VALUES ('18', '26');
INSERT INTO `jos_modules_menu` VALUES ('18', '27');
INSERT INTO `jos_modules_menu` VALUES ('18', '28');
INSERT INTO `jos_modules_menu` VALUES ('18', '29');
INSERT INTO `jos_modules_menu` VALUES ('18', '30');
INSERT INTO `jos_modules_menu` VALUES ('18', '31');
INSERT INTO `jos_modules_menu` VALUES ('18', '32');
INSERT INTO `jos_modules_menu` VALUES ('18', '33');
INSERT INTO `jos_modules_menu` VALUES ('18', '34');
INSERT INTO `jos_modules_menu` VALUES ('18', '35');
INSERT INTO `jos_modules_menu` VALUES ('18', '36');
INSERT INTO `jos_modules_menu` VALUES ('18', '46');
INSERT INTO `jos_modules_menu` VALUES ('18', '47');
INSERT INTO `jos_modules_menu` VALUES ('18', '48');
INSERT INTO `jos_modules_menu` VALUES ('18', '56');
INSERT INTO `jos_modules_menu` VALUES ('18', '57');
INSERT INTO `jos_modules_menu` VALUES ('18', '59');
INSERT INTO `jos_modules_menu` VALUES ('18', '60');
INSERT INTO `jos_modules_menu` VALUES ('18', '64');
INSERT INTO `jos_modules_menu` VALUES ('18', '65');
INSERT INTO `jos_modules_menu` VALUES ('18', '66');
INSERT INTO `jos_modules_menu` VALUES ('18', '67');
INSERT INTO `jos_modules_menu` VALUES ('18', '68');
INSERT INTO `jos_modules_menu` VALUES ('18', '69');
INSERT INTO `jos_modules_menu` VALUES ('18', '70');
INSERT INTO `jos_modules_menu` VALUES ('18', '71');
INSERT INTO `jos_modules_menu` VALUES ('18', '72');
INSERT INTO `jos_modules_menu` VALUES ('18', '73');
INSERT INTO `jos_modules_menu` VALUES ('18', '75');
INSERT INTO `jos_modules_menu` VALUES ('18', '77');
INSERT INTO `jos_modules_menu` VALUES ('18', '78');
INSERT INTO `jos_modules_menu` VALUES ('23', '0');
INSERT INTO `jos_modules_menu` VALUES ('27', '0');
INSERT INTO `jos_modules_menu` VALUES ('28', '0');
INSERT INTO `jos_modules_menu` VALUES ('29', '0');
INSERT INTO `jos_modules_menu` VALUES ('32', '2');
INSERT INTO `jos_modules_menu` VALUES ('32', '3');
INSERT INTO `jos_modules_menu` VALUES ('32', '4');
INSERT INTO `jos_modules_menu` VALUES ('32', '5');
INSERT INTO `jos_modules_menu` VALUES ('32', '6');
INSERT INTO `jos_modules_menu` VALUES ('32', '7');
INSERT INTO `jos_modules_menu` VALUES ('32', '8');
INSERT INTO `jos_modules_menu` VALUES ('32', '9');
INSERT INTO `jos_modules_menu` VALUES ('32', '10');
INSERT INTO `jos_modules_menu` VALUES ('32', '11');
INSERT INTO `jos_modules_menu` VALUES ('32', '12');
INSERT INTO `jos_modules_menu` VALUES ('32', '13');
INSERT INTO `jos_modules_menu` VALUES ('32', '14');
INSERT INTO `jos_modules_menu` VALUES ('32', '15');
INSERT INTO `jos_modules_menu` VALUES ('32', '16');
INSERT INTO `jos_modules_menu` VALUES ('32', '17');
INSERT INTO `jos_modules_menu` VALUES ('32', '18');
INSERT INTO `jos_modules_menu` VALUES ('32', '19');
INSERT INTO `jos_modules_menu` VALUES ('32', '20');
INSERT INTO `jos_modules_menu` VALUES ('32', '21');
INSERT INTO `jos_modules_menu` VALUES ('32', '22');
INSERT INTO `jos_modules_menu` VALUES ('32', '23');
INSERT INTO `jos_modules_menu` VALUES ('32', '24');
INSERT INTO `jos_modules_menu` VALUES ('32', '25');
INSERT INTO `jos_modules_menu` VALUES ('32', '26');
INSERT INTO `jos_modules_menu` VALUES ('32', '27');
INSERT INTO `jos_modules_menu` VALUES ('32', '28');
INSERT INTO `jos_modules_menu` VALUES ('32', '29');
INSERT INTO `jos_modules_menu` VALUES ('32', '30');
INSERT INTO `jos_modules_menu` VALUES ('32', '31');
INSERT INTO `jos_modules_menu` VALUES ('32', '32');
INSERT INTO `jos_modules_menu` VALUES ('32', '33');
INSERT INTO `jos_modules_menu` VALUES ('32', '34');
INSERT INTO `jos_modules_menu` VALUES ('32', '35');
INSERT INTO `jos_modules_menu` VALUES ('32', '36');
INSERT INTO `jos_modules_menu` VALUES ('32', '46');
INSERT INTO `jos_modules_menu` VALUES ('32', '47');
INSERT INTO `jos_modules_menu` VALUES ('32', '48');
INSERT INTO `jos_modules_menu` VALUES ('32', '56');
INSERT INTO `jos_modules_menu` VALUES ('32', '57');
INSERT INTO `jos_modules_menu` VALUES ('32', '59');
INSERT INTO `jos_modules_menu` VALUES ('32', '60');
INSERT INTO `jos_modules_menu` VALUES ('32', '64');
INSERT INTO `jos_modules_menu` VALUES ('32', '65');
INSERT INTO `jos_modules_menu` VALUES ('32', '66');
INSERT INTO `jos_modules_menu` VALUES ('32', '67');
INSERT INTO `jos_modules_menu` VALUES ('32', '68');
INSERT INTO `jos_modules_menu` VALUES ('32', '69');
INSERT INTO `jos_modules_menu` VALUES ('32', '70');
INSERT INTO `jos_modules_menu` VALUES ('32', '71');
INSERT INTO `jos_modules_menu` VALUES ('32', '72');
INSERT INTO `jos_modules_menu` VALUES ('32', '73');
INSERT INTO `jos_modules_menu` VALUES ('32', '75');
INSERT INTO `jos_modules_menu` VALUES ('33', '0');
INSERT INTO `jos_modules_menu` VALUES ('34', '0');
INSERT INTO `jos_modules_menu` VALUES ('35', '2');
INSERT INTO `jos_modules_menu` VALUES ('35', '3');
INSERT INTO `jos_modules_menu` VALUES ('35', '4');
INSERT INTO `jos_modules_menu` VALUES ('35', '5');
INSERT INTO `jos_modules_menu` VALUES ('35', '6');
INSERT INTO `jos_modules_menu` VALUES ('35', '7');
INSERT INTO `jos_modules_menu` VALUES ('35', '8');
INSERT INTO `jos_modules_menu` VALUES ('35', '9');
INSERT INTO `jos_modules_menu` VALUES ('35', '10');
INSERT INTO `jos_modules_menu` VALUES ('35', '11');
INSERT INTO `jos_modules_menu` VALUES ('35', '12');
INSERT INTO `jos_modules_menu` VALUES ('35', '13');
INSERT INTO `jos_modules_menu` VALUES ('35', '14');
INSERT INTO `jos_modules_menu` VALUES ('35', '15');
INSERT INTO `jos_modules_menu` VALUES ('35', '16');
INSERT INTO `jos_modules_menu` VALUES ('35', '17');
INSERT INTO `jos_modules_menu` VALUES ('35', '18');
INSERT INTO `jos_modules_menu` VALUES ('35', '19');
INSERT INTO `jos_modules_menu` VALUES ('35', '20');
INSERT INTO `jos_modules_menu` VALUES ('35', '21');
INSERT INTO `jos_modules_menu` VALUES ('35', '22');
INSERT INTO `jos_modules_menu` VALUES ('35', '23');
INSERT INTO `jos_modules_menu` VALUES ('35', '24');
INSERT INTO `jos_modules_menu` VALUES ('35', '25');
INSERT INTO `jos_modules_menu` VALUES ('35', '26');
INSERT INTO `jos_modules_menu` VALUES ('35', '27');
INSERT INTO `jos_modules_menu` VALUES ('35', '28');
INSERT INTO `jos_modules_menu` VALUES ('35', '29');
INSERT INTO `jos_modules_menu` VALUES ('35', '30');
INSERT INTO `jos_modules_menu` VALUES ('35', '31');
INSERT INTO `jos_modules_menu` VALUES ('35', '32');
INSERT INTO `jos_modules_menu` VALUES ('35', '33');
INSERT INTO `jos_modules_menu` VALUES ('35', '34');
INSERT INTO `jos_modules_menu` VALUES ('35', '35');
INSERT INTO `jos_modules_menu` VALUES ('35', '36');
INSERT INTO `jos_modules_menu` VALUES ('35', '46');
INSERT INTO `jos_modules_menu` VALUES ('35', '47');
INSERT INTO `jos_modules_menu` VALUES ('35', '48');
INSERT INTO `jos_modules_menu` VALUES ('35', '56');
INSERT INTO `jos_modules_menu` VALUES ('35', '57');
INSERT INTO `jos_modules_menu` VALUES ('35', '59');
INSERT INTO `jos_modules_menu` VALUES ('35', '60');
INSERT INTO `jos_modules_menu` VALUES ('35', '64');
INSERT INTO `jos_modules_menu` VALUES ('35', '65');
INSERT INTO `jos_modules_menu` VALUES ('35', '66');
INSERT INTO `jos_modules_menu` VALUES ('35', '67');
INSERT INTO `jos_modules_menu` VALUES ('35', '68');
INSERT INTO `jos_modules_menu` VALUES ('35', '69');
INSERT INTO `jos_modules_menu` VALUES ('35', '70');
INSERT INTO `jos_modules_menu` VALUES ('35', '71');
INSERT INTO `jos_modules_menu` VALUES ('35', '72');
INSERT INTO `jos_modules_menu` VALUES ('35', '73');
INSERT INTO `jos_modules_menu` VALUES ('39', '0');
INSERT INTO `jos_modules_menu` VALUES ('40', '2');
INSERT INTO `jos_modules_menu` VALUES ('40', '3');
INSERT INTO `jos_modules_menu` VALUES ('40', '4');
INSERT INTO `jos_modules_menu` VALUES ('40', '5');
INSERT INTO `jos_modules_menu` VALUES ('40', '7');
INSERT INTO `jos_modules_menu` VALUES ('40', '8');
INSERT INTO `jos_modules_menu` VALUES ('40', '9');
INSERT INTO `jos_modules_menu` VALUES ('40', '10');
INSERT INTO `jos_modules_menu` VALUES ('40', '11');
INSERT INTO `jos_modules_menu` VALUES ('40', '12');
INSERT INTO `jos_modules_menu` VALUES ('40', '13');
INSERT INTO `jos_modules_menu` VALUES ('40', '14');
INSERT INTO `jos_modules_menu` VALUES ('40', '15');
INSERT INTO `jos_modules_menu` VALUES ('40', '16');
INSERT INTO `jos_modules_menu` VALUES ('40', '17');
INSERT INTO `jos_modules_menu` VALUES ('40', '18');
INSERT INTO `jos_modules_menu` VALUES ('40', '19');
INSERT INTO `jos_modules_menu` VALUES ('40', '20');
INSERT INTO `jos_modules_menu` VALUES ('40', '21');
INSERT INTO `jos_modules_menu` VALUES ('40', '22');
INSERT INTO `jos_modules_menu` VALUES ('40', '23');
INSERT INTO `jos_modules_menu` VALUES ('40', '24');
INSERT INTO `jos_modules_menu` VALUES ('40', '25');
INSERT INTO `jos_modules_menu` VALUES ('40', '26');
INSERT INTO `jos_modules_menu` VALUES ('40', '27');
INSERT INTO `jos_modules_menu` VALUES ('40', '28');
INSERT INTO `jos_modules_menu` VALUES ('40', '29');
INSERT INTO `jos_modules_menu` VALUES ('40', '30');
INSERT INTO `jos_modules_menu` VALUES ('40', '31');
INSERT INTO `jos_modules_menu` VALUES ('40', '32');
INSERT INTO `jos_modules_menu` VALUES ('40', '33');
INSERT INTO `jos_modules_menu` VALUES ('40', '34');
INSERT INTO `jos_modules_menu` VALUES ('40', '35');
INSERT INTO `jos_modules_menu` VALUES ('40', '36');
INSERT INTO `jos_modules_menu` VALUES ('40', '46');
INSERT INTO `jos_modules_menu` VALUES ('40', '47');
INSERT INTO `jos_modules_menu` VALUES ('40', '48');
INSERT INTO `jos_modules_menu` VALUES ('40', '56');
INSERT INTO `jos_modules_menu` VALUES ('40', '57');
INSERT INTO `jos_modules_menu` VALUES ('40', '59');
INSERT INTO `jos_modules_menu` VALUES ('40', '60');
INSERT INTO `jos_modules_menu` VALUES ('40', '64');
INSERT INTO `jos_modules_menu` VALUES ('40', '65');
INSERT INTO `jos_modules_menu` VALUES ('40', '66');
INSERT INTO `jos_modules_menu` VALUES ('40', '67');
INSERT INTO `jos_modules_menu` VALUES ('40', '68');
INSERT INTO `jos_modules_menu` VALUES ('40', '69');
INSERT INTO `jos_modules_menu` VALUES ('40', '70');
INSERT INTO `jos_modules_menu` VALUES ('40', '71');
INSERT INTO `jos_modules_menu` VALUES ('40', '72');
INSERT INTO `jos_modules_menu` VALUES ('40', '73');
INSERT INTO `jos_modules_menu` VALUES ('40', '75');
INSERT INTO `jos_modules_menu` VALUES ('40', '77');
INSERT INTO `jos_modules_menu` VALUES ('40', '78');
INSERT INTO `jos_modules_menu` VALUES ('41', '9');
INSERT INTO `jos_modules_menu` VALUES ('41', '10');
INSERT INTO `jos_modules_menu` VALUES ('41', '11');
INSERT INTO `jos_modules_menu` VALUES ('41', '12');
INSERT INTO `jos_modules_menu` VALUES ('41', '13');
INSERT INTO `jos_modules_menu` VALUES ('41', '14');
INSERT INTO `jos_modules_menu` VALUES ('42', '4');
INSERT INTO `jos_modules_menu` VALUES ('42', '15');
INSERT INTO `jos_modules_menu` VALUES ('42', '16');
INSERT INTO `jos_modules_menu` VALUES ('42', '17');
INSERT INTO `jos_modules_menu` VALUES ('42', '18');
INSERT INTO `jos_modules_menu` VALUES ('42', '19');
INSERT INTO `jos_modules_menu` VALUES ('42', '20');
INSERT INTO `jos_modules_menu` VALUES ('42', '46');
INSERT INTO `jos_modules_menu` VALUES ('42', '47');
INSERT INTO `jos_modules_menu` VALUES ('42', '48');
INSERT INTO `jos_modules_menu` VALUES ('42', '56');
INSERT INTO `jos_modules_menu` VALUES ('42', '57');
INSERT INTO `jos_modules_menu` VALUES ('42', '65');
INSERT INTO `jos_modules_menu` VALUES ('42', '66');
INSERT INTO `jos_modules_menu` VALUES ('42', '67');
INSERT INTO `jos_modules_menu` VALUES ('42', '68');
INSERT INTO `jos_modules_menu` VALUES ('42', '69');
INSERT INTO `jos_modules_menu` VALUES ('42', '70');
INSERT INTO `jos_modules_menu` VALUES ('42', '75');
INSERT INTO `jos_modules_menu` VALUES ('43', '5');
INSERT INTO `jos_modules_menu` VALUES ('43', '21');
INSERT INTO `jos_modules_menu` VALUES ('43', '22');
INSERT INTO `jos_modules_menu` VALUES ('43', '23');
INSERT INTO `jos_modules_menu` VALUES ('43', '61');
INSERT INTO `jos_modules_menu` VALUES ('43', '62');
INSERT INTO `jos_modules_menu` VALUES ('43', '63');
INSERT INTO `jos_modules_menu` VALUES ('44', '2');
INSERT INTO `jos_modules_menu` VALUES ('44', '3');
INSERT INTO `jos_modules_menu` VALUES ('44', '24');
INSERT INTO `jos_modules_menu` VALUES ('44', '25');
INSERT INTO `jos_modules_menu` VALUES ('44', '26');
INSERT INTO `jos_modules_menu` VALUES ('44', '27');
INSERT INTO `jos_modules_menu` VALUES ('44', '28');
INSERT INTO `jos_modules_menu` VALUES ('44', '59');
INSERT INTO `jos_modules_menu` VALUES ('44', '60');
INSERT INTO `jos_modules_menu` VALUES ('44', '77');
INSERT INTO `jos_modules_menu` VALUES ('44', '78');
INSERT INTO `jos_modules_menu` VALUES ('45', '0');
INSERT INTO `jos_modules_menu` VALUES ('47', '2');
INSERT INTO `jos_modules_menu` VALUES ('47', '3');
INSERT INTO `jos_modules_menu` VALUES ('47', '4');
INSERT INTO `jos_modules_menu` VALUES ('47', '5');
INSERT INTO `jos_modules_menu` VALUES ('47', '6');
INSERT INTO `jos_modules_menu` VALUES ('47', '7');
INSERT INTO `jos_modules_menu` VALUES ('47', '8');
INSERT INTO `jos_modules_menu` VALUES ('47', '9');
INSERT INTO `jos_modules_menu` VALUES ('47', '10');
INSERT INTO `jos_modules_menu` VALUES ('47', '11');
INSERT INTO `jos_modules_menu` VALUES ('47', '12');
INSERT INTO `jos_modules_menu` VALUES ('47', '13');
INSERT INTO `jos_modules_menu` VALUES ('47', '14');
INSERT INTO `jos_modules_menu` VALUES ('47', '15');
INSERT INTO `jos_modules_menu` VALUES ('47', '16');
INSERT INTO `jos_modules_menu` VALUES ('47', '17');
INSERT INTO `jos_modules_menu` VALUES ('47', '18');
INSERT INTO `jos_modules_menu` VALUES ('47', '19');
INSERT INTO `jos_modules_menu` VALUES ('47', '20');
INSERT INTO `jos_modules_menu` VALUES ('47', '21');
INSERT INTO `jos_modules_menu` VALUES ('47', '22');
INSERT INTO `jos_modules_menu` VALUES ('47', '23');
INSERT INTO `jos_modules_menu` VALUES ('47', '24');
INSERT INTO `jos_modules_menu` VALUES ('47', '25');
INSERT INTO `jos_modules_menu` VALUES ('47', '26');
INSERT INTO `jos_modules_menu` VALUES ('47', '27');
INSERT INTO `jos_modules_menu` VALUES ('47', '28');
INSERT INTO `jos_modules_menu` VALUES ('47', '29');
INSERT INTO `jos_modules_menu` VALUES ('47', '30');
INSERT INTO `jos_modules_menu` VALUES ('47', '31');
INSERT INTO `jos_modules_menu` VALUES ('47', '32');
INSERT INTO `jos_modules_menu` VALUES ('47', '33');
INSERT INTO `jos_modules_menu` VALUES ('47', '34');
INSERT INTO `jos_modules_menu` VALUES ('47', '35');
INSERT INTO `jos_modules_menu` VALUES ('47', '36');
INSERT INTO `jos_modules_menu` VALUES ('47', '46');
INSERT INTO `jos_modules_menu` VALUES ('47', '47');
INSERT INTO `jos_modules_menu` VALUES ('47', '48');
INSERT INTO `jos_modules_menu` VALUES ('47', '56');
INSERT INTO `jos_modules_menu` VALUES ('47', '57');
INSERT INTO `jos_modules_menu` VALUES ('47', '59');
INSERT INTO `jos_modules_menu` VALUES ('47', '60');
INSERT INTO `jos_modules_menu` VALUES ('47', '64');
INSERT INTO `jos_modules_menu` VALUES ('47', '65');
INSERT INTO `jos_modules_menu` VALUES ('47', '66');
INSERT INTO `jos_modules_menu` VALUES ('47', '67');
INSERT INTO `jos_modules_menu` VALUES ('47', '68');
INSERT INTO `jos_modules_menu` VALUES ('47', '69');
INSERT INTO `jos_modules_menu` VALUES ('47', '70');
INSERT INTO `jos_modules_menu` VALUES ('47', '71');
INSERT INTO `jos_modules_menu` VALUES ('47', '72');
INSERT INTO `jos_modules_menu` VALUES ('47', '73');
INSERT INTO `jos_modules_menu` VALUES ('47', '75');
INSERT INTO `jos_modules_menu` VALUES ('47', '77');
INSERT INTO `jos_modules_menu` VALUES ('47', '78');
INSERT INTO `jos_modules_menu` VALUES ('49', '74');
INSERT INTO `jos_modules_menu` VALUES ('50', '74');
INSERT INTO `jos_modules_menu` VALUES ('51', '2');
INSERT INTO `jos_modules_menu` VALUES ('52', '0');
INSERT INTO `jos_modules_menu` VALUES ('53', '7');
INSERT INTO `jos_modules_menu` VALUES ('53', '31');
INSERT INTO `jos_modules_menu` VALUES ('53', '32');
INSERT INTO `jos_modules_menu` VALUES ('53', '33');
INSERT INTO `jos_modules_menu` VALUES ('53', '34');
INSERT INTO `jos_modules_menu` VALUES ('54', '0');
INSERT INTO `jos_modules_menu` VALUES ('55', '8');
INSERT INTO `jos_modules_menu` VALUES ('55', '35');
INSERT INTO `jos_modules_menu` VALUES ('55', '36');

-- ----------------------------
-- Table structure for `jos_newsfeeds`
-- ----------------------------
DROP TABLE IF EXISTS `jos_newsfeeds`;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_newsfeeds
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `jos_plugins`;
CREATE TABLE `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_plugins
-- ----------------------------
INSERT INTO `jos_plugins` VALUES ('1', 'Authentication - Joomla', 'joomla', 'authentication', '0', '1', '1', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('2', 'Authentication - LDAP', 'ldap', 'authentication', '0', '2', '0', '1', '0', '0', '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n');
INSERT INTO `jos_plugins` VALUES ('3', 'Authentication - GMail', 'gmail', 'authentication', '0', '4', '0', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('4', 'Authentication - OpenID', 'openid', 'authentication', '0', '3', '0', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('5', 'User - Joomla!', 'joomla', 'user', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', 'autoregister=1\n\n');
INSERT INTO `jos_plugins` VALUES ('6', 'Search - Content', 'content_extended', 'search', '0', '0', '1', '1', '0', '0', '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\nsearch_sections=2,3,4,5\n\n');
INSERT INTO `jos_plugins` VALUES ('7', 'Search - Contacts', 'contacts', 'search', '0', '3', '0', '1', '0', '0', '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES ('8', 'Search - Categories', 'categories', 'search', '0', '4', '0', '0', '0', '0', '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES ('9', 'Search - Sections', 'sections', 'search', '0', '5', '0', '0', '0', '0', '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES ('10', 'Search - Newsfeeds', 'newsfeeds', 'search', '0', '6', '0', '0', '0', '0', '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES ('11', 'Search - Weblinks', 'weblinks', 'search', '0', '2', '0', '1', '0', '0', '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES ('12', 'Content - Pagebreak', 'pagebreak', 'content', '0', '10000', '1', '1', '0', '0', '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n');
INSERT INTO `jos_plugins` VALUES ('13', 'Content - Rating', 'vote', 'content', '0', '4', '1', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('14', 'Content - Email Cloaking', 'emailcloak', 'content', '0', '5', '1', '0', '0', '0', '0000-00-00 00:00:00', 'mode=1\n\n');
INSERT INTO `jos_plugins` VALUES ('15', 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', '0', '5', '0', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('16', 'Content - Load Module', 'loadmodule', 'content', '0', '6', '1', '0', '0', '0', '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n');
INSERT INTO `jos_plugins` VALUES ('17', 'Content - Page Navigation', 'pagenavigation', 'content', '0', '2', '1', '1', '0', '0', '0000-00-00 00:00:00', 'position=1\n\n');
INSERT INTO `jos_plugins` VALUES ('18', 'Editor - No Editor', 'none', 'editors', '0', '0', '1', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('19', 'Editor - TinyMCE', 'tinymce', 'editors', '0', '0', '1', '1', '0', '0', '0000-00-00 00:00:00', 'mode=extended\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\nblockquote=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n');
INSERT INTO `jos_plugins` VALUES ('20', 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', '0', '0', '0', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('21', 'Editor Button - Image', 'image', 'editors-xtd', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('22', 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('23', 'Editor Button - Readmore', 'readmore', 'editors-xtd', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('24', 'XML-RPC - Joomla', 'joomla', 'xmlrpc', '0', '7', '0', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('25', 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', '0', '7', '0', '1', '0', '0', '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n');
INSERT INTO `jos_plugins` VALUES ('27', 'System - SEF', 'sef', 'system', '0', '1', '1', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('28', 'System - Debug', 'debug', 'system', '0', '2', '1', '0', '0', '0', '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n');
INSERT INTO `jos_plugins` VALUES ('29', 'System - Legacy', 'legacy', 'system', '0', '3', '1', '1', '0', '0', '0000-00-00 00:00:00', 'route=0\n\n');
INSERT INTO `jos_plugins` VALUES ('30', 'System - Cache', 'cache', 'system', '0', '4', '0', '1', '0', '0', '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n');
INSERT INTO `jos_plugins` VALUES ('31', 'System - Log', 'log', 'system', '0', '5', '0', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('32', 'System - Remember Me', 'remember', 'system', '0', '6', '1', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('33', 'System - Backlink', 'backlink', 'system', '0', '7', '0', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('35', 'System - Vinaora Visitors Counter', 'vvisit_counter', 'system', '0', '-100', '1', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('39', 'Search - Content ( By: YOpenSource.com )', 'plg_yos_search_content', 'search', '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\npoint_occurrence_in_title=10\npoint_occurrence_in_fulltext=1\n');
INSERT INTO `jos_plugins` VALUES ('37', 'Content - Joomla Imagesized Plugin', 'plg_imagesized', 'content', '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', 'enabled=1\nsized_img_article=1\nexpire=30\nquality=90\nar_width=400\nar_height=400\nar_remove_link=1\nar_link2originalimage=1\nextra_link2originalimage=\nexcluded_images=\nar_remove_img_tag=style:class\nicl_exc_catsect=1\nsectionid_list=x\ncatid_list=x\nitemid_list=x\nonly_frontpage=t\nfp_image_link=1\nfp_remove_class=1\nfp_default_image=plugins/content/imagesresizecache/blank.png\nfp_used_default_image=1\nextra_class=\nfp_width_l=130\nfp_height_l=90\nfp_align_l=left\nfp_position_l=0\nfp_textalign_l=justify\nfp_width=130\nfp_height=90\nfp_advanced_config=\nfp_frcolor=#ffffff\nfp_bocolor=#a0a0a0\nfp_vspace=0\nfp_hspace=6\nfp_chars_l=250\nfp_chars=300\nfp_more=\nallowed_tags=\nfp_align=left\nfp_position=0\nfp_textalign=justify\n\n');
INSERT INTO `jos_plugins` VALUES ('40', 'Content - Select Keywords for Filters', 'selectkeywords', 'editors-xtd', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', 'section_ctvt=2\nsection_bt=3\nsection_tdd=4\ncategory_tdd_t=15\n\n');
INSERT INTO `jos_plugins` VALUES ('41', 'Content - Joomla Extra News Plugin', 'extranews', 'content', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', 'enabled=1\ncache=0\nsectionid_list=7\ncatid_list=-\nid_list=-\nqueryby=c_dsc\nchar_count_title=0\nrelateditemscount=5\nneweritemscount=0\noderitemscount=5\nshowdate=0\nshowdateformat=d/m/Y H:i\nlinkedtitleformat=%1$s - %2$s\ntextbefore=<span></span>\ntextafter=<span></span>\nmarginleft=0\nmarginright=0\nenable_tooltip=no\nscript_tooltip=2\nload_mootools=no\nscriptIE6_tooltip=2\nt_char_count_title=100\nt_char_count_desc=300\ntooltip_desc_images=yes\nimg_width=100\nimg_height=100\ntooltip_width=270\ntooltip_height=120\ntooltip_bgcolor=#000000\ntooltip_capcolor=#ffffff\ntooltip_fgcolor=#ffffff\ntooltip_textcolor=#000000\ntooltip_border=1\ntooltip_extra_invocation_string=\njoos_comment=0\nuser_define=\nshow_view_date=1\nview_by_date_sections=1\n\n');
INSERT INTO `jos_plugins` VALUES ('42', 'Content - Image Resize', 'imageresize', 'content', '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('43', 'JUMultithumb', 'jumultithumb', 'content', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', 'menus_hide=\nresall=1\nsecimg=0\nquality=90\nf_width=130\nf_height=90\nf_cropzoom=0\nb_width=130\nb_height=90\nb_cropzoom=0\nnoresize=1\nwidth=160\nheight=160\ncropzoom=0\nmaxsize_orig=0\nmaxwidth=500\nmaxheight=500\nmenu_item1=\nnoresizenew1=0\nwidthnew1=160\nheightnew1=160\ncropzoomnew1=0\nmaxsize_orignew1=0\nmaxwidthnew1=800\nmaxheightnew1=500\nb_widthnew1=160\nb_heightnew1=160\nb_cropzoomnew1=0\nmenu_item2=\nnoresizenew2=0\nwidthnew2=160\nheightnew2=160\ncropzoomnew2=0\nmaxsize_orignew2=0\nmaxwidthnew2=800\nmaxheightnew2=500\nb_widthnew2=160\nb_heightnew2=160\nb_cropzoomnew2=0\nmenu_item3=\nnoresizenew3=0\nwidthnew3=160\nheightnew3=160\ncropzoomnew3=0\nmaxsize_orignew3=0\nmaxwidthnew3=800\nmaxheightnew3=500\nb_widthnew3=160\nb_heightnew3=160\nb_cropzoomnew3=0\nmenu_item4=\nnoresizenew4=0\nwidthnew4=160\nheightnew4=160\ncropzoomnew4=0\nmaxsize_orignew4=0\nmaxwidthnew4=800\nmaxheightnew4=500\nb_widthnew4=160\nb_heightnew4=160\nb_cropzoomnew4=0\nmenu_item5=\nnoresizenew5=0\nwidthnew5=160\nheightnew5=160\ncropzoomnew5=0\nmaxsize_orignew5=0\nmaxwidthnew5=800\nmaxheightnew5=500\nb_widthnew5=160\nb_heightnew5=160\nb_cropzoomnew5=0\nmenu_item6=\nnoresizenew6=0\nwidthnew6=160\nheightnew6=160\ncropzoomnew6=0\nmaxsize_orignew6=0\nmaxwidthnew6=800\nmaxheightnew6=500\nb_widthnew6=160\nb_heightnew6=160\nb_cropzoomnew6=0\nmenu_item7=\nnoresizenew7=0\nwidthnew7=160\nheightnew7=160\ncropzoomnew7=0\nmaxsize_orignew7=0\nmaxwidthnew7=800\nmaxheightnew7=500\nb_widthnew7=160\nb_heightnew7=160\nb_cropzoomnew7=0\nmenu_item8=\nnoresizenew8=0\nwidthnew8=160\nheightnew8=160\ncropzoomnew8=0\nmaxsize_orignew8=0\nmaxwidthnew8=800\nmaxheightnew8=500\nb_widthnew8=160\nb_heightnew8=160\nb_cropzoomnew8=0\nmenu_item9=\nnoresizenew9=0\nwidthnew9=160\nheightnew9=160\ncropzoomnew9=0\nmaxsize_orignew9=0\nmaxwidthnew9=800\nmaxheightnew9=500\nb_widthnew9=160\nb_heightnew9=160\nb_cropzoomnew9=0\nmenu_item10=\nnoresizenew10=0\nwidthnew10=160\nheightnew10=160\ncropzoomnew10=0\nmaxsize_orignew10=0\nmaxwidthnew10=800\nmaxheightnew10=500\nb_widthnew10=160\nb_heightnew10=160\nb_cropzoomnew10=0\na_watermark=1\nwmposition=bottomright\nuselightbox=0\njujq=0\nselectlightbox=jqlightbox\nskinshadowbox=denys\njqlightboxparam=0\noverlayBgColor=#fff\noverlayOpacity=0.6\nimageLoading=\nimageBtnClose=\nimageBtnPrev=\nimageBtnNext=\ncontainerResizeSpeed=350\ntxtImage=Image\ntxtOf=of\n\n');
INSERT INTO `jos_plugins` VALUES ('44', 'Editor Button - AddAttachment', 'add_attachment', 'editors-xtd', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('45', 'Content - Attachments', 'attachments', 'content', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('46', 'System - osolCaptcha', 'osolcaptcha', 'system', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', 'bgColor=#2c8007\ntextColor=#ffffff\nenableForModules=No\nimageFunction=Adv\nenableForContactUs=Yes\nenableForComLogin=No\nenableForRegistration=Yes\nenableForReset=Yes\nenableForRemind=Yes\nenableSecondLevelSecurity=No\nbotScoutProtection=Disable\nbotscoutAPIKey=\nreportBotscoutNegativeMail=\nredirectURLforSuspectedIPs=http://www.google.com/\n\n');

-- ----------------------------
-- Table structure for `jos_poll_data`
-- ----------------------------
DROP TABLE IF EXISTS `jos_poll_data`;
CREATE TABLE `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_poll_data
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_poll_date`
-- ----------------------------
DROP TABLE IF EXISTS `jos_poll_date`;
CREATE TABLE `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_poll_date
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_poll_menu`
-- ----------------------------
DROP TABLE IF EXISTS `jos_poll_menu`;
CREATE TABLE `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_poll_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_polls`
-- ----------------------------
DROP TABLE IF EXISTS `jos_polls`;
CREATE TABLE `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_polls
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_sections`
-- ----------------------------
DROP TABLE IF EXISTS `jos_sections`;
CREATE TABLE `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_sections
-- ----------------------------
INSERT INTO `jos_sections` VALUES ('1', 'Tin Tức Sự Kiện', '', 'tin-tuc-su-kien', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '1', '0', '6', '');
INSERT INTO `jos_sections` VALUES ('2', 'Cây Thuốc - Vị Thuốc', '', 'cay-thuoc-vi-thuoc', '', 'content', 'left', '', '1', '62', '2010-05-11 07:04:16', '2', '0', '13', '');
INSERT INTO `jos_sections` VALUES ('3', 'Bài Thuốc', '', 'bai-thuoc', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '3', '0', '4', 'tpl=bai_thuoc\r\nfilters=com_filter_alpha,com_filter_bt_phanloaitheotinhchatdongy,com_filter_bt_phanloaitheobenh');
INSERT INTO `jos_sections` VALUES ('4', 'Thuốc Đông Dược', '', 'thuoc-dong-duoc', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '4', '0', '6', 'tpl=thuoc_dong_duoc');
INSERT INTO `jos_sections` VALUES ('5', 'Thư Viện', '', 'thu-vien', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '5', '0', '4', '');
INSERT INTO `jos_sections` VALUES ('6', 'Thông báo', '', 'thong-bao', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '6', '0', '1', '');
INSERT INTO `jos_sections` VALUES ('7', 'Gian hàng', '', 'gian-hang', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '7', '0', '63', 'tpl=gian_hang\r\nItemid=74');
INSERT INTO `jos_sections` VALUES ('9', 'Sản phẩm nổi bật', '', 'san-pham-noi-bat', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '8', '0', '1', '');

-- ----------------------------
-- Table structure for `jos_session`
-- ----------------------------
DROP TABLE IF EXISTS `jos_session`;
CREATE TABLE `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_session
-- ----------------------------
INSERT INTO `jos_session` VALUES ('', '1275275475', 'e7dd1be7fd577b2110905a68838b477b', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1275275475;s:18:\"session.timer.last\";i:1275275475;s:17:\"session.timer.now\";i:1275275475;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"7e5a77e0c23597ec056f6c406ed60ceb\";}');
INSERT INTO `jos_session` VALUES ('admin', '1275275547', '0c3d5d395be25e87f379f3a0ba21b4fc', '0', '62', 'Super Administrator', '25', '1', '__default|a:8:{s:15:\"session.counter\";i:7;s:19:\"session.timer.start\";i:1275275496;s:18:\"session.timer.last\";i:1275275535;s:17:\"session.timer.now\";i:1275275547;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:2:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"longdt@live.com\";s:8:\"password\";s:65:\"cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2010-03-29 14:58:13\";s:13:\"lastvisitDate\";s:19:\"2010-05-24 07:35:06\";s:10:\"activation\";s:32:\"97e2da1bb7ec91921a5f383c8dda9a57\";s:6:\"params\";s:0:\"\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"c48e40ba356d817a6a3977f38b6cd1cf\";}');
INSERT INTO `jos_session` VALUES ('', '1275297798', '4f8f72e3eb10040afc27355ebbab878e', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1275297782;s:18:\"session.timer.last\";i:1275297782;s:17:\"session.timer.now\";i:1275297798;s:22:\"session.client.browser\";s:116:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.4 (KHTML, like Gecko) Chrome/5.0.375.55 Safari/533.4\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"34f65f49f489ac5edf51456eac0d7d02\";}');

-- ----------------------------
-- Table structure for `jos_stats_agents`
-- ----------------------------
DROP TABLE IF EXISTS `jos_stats_agents`;
CREATE TABLE `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_stats_agents
-- ----------------------------

-- ----------------------------
-- Table structure for `jos_templates_menu`
-- ----------------------------
DROP TABLE IF EXISTS `jos_templates_menu`;
CREATE TABLE `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_templates_menu
-- ----------------------------
INSERT INTO `jos_templates_menu` VALUES ('thuocdocduoc', '0', '0');
INSERT INTO `jos_templates_menu` VALUES ('thuocdocduoc', '0', '1');

-- ----------------------------
-- Table structure for `jos_users`
-- ----------------------------
DROP TABLE IF EXISTS `jos_users`;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_users
-- ----------------------------
INSERT INTO `jos_users` VALUES ('62', 'Administrator', 'admin', 'longdt@live.com', 'cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv', 'Super Administrator', '0', '1', '25', '2010-03-29 14:58:13', '2010-05-31 03:11:45', '97e2da1bb7ec91921a5f383c8dda9a57', '');
INSERT INTO `jos_users` VALUES ('63', 'Phuong', 'phuong', 'phuongtrau2000@yahoo.com', '629ed1923330ac7734f538e414e0d8f8:7CGohLW8c58X9acAPrzgDrrq0cdQbpWm', 'Registered', '1', '0', '18', '2010-04-16 16:53:46', '0000-00-00 00:00:00', '1ed5abd13bedb8079ca07486c11d3169', '\n');
INSERT INTO `jos_users` VALUES ('64', 'long', 'longdt', 'long.lh@catsoft.com.vn', '239ec335699eca9ecc8d4ae5f63da215:3vznNFtyMNYQmP3S26XQ6O5mHQLDZlPi', 'Registered', '0', '0', '18', '2010-04-21 07:53:28', '2010-05-04 07:55:29', '682e59bbfa044ac7c83e269cbecd9657', '\n');
INSERT INTO `jos_users` VALUES ('65', 'theeyes26', 'theeyes26', 'a1k60.dkh@gmail.com', '25b863d056a60f9060898a420420b988:PgvvgvC9woqKvTfM0AkWxKCPfPpwwVNS', 'Registered', '0', '0', '18', '2010-04-23 06:11:03', '0000-00-00 00:00:00', 'c1ceeaf828ca0d915dcc8bd5f220e1a9', '\n');
INSERT INTO `jos_users` VALUES ('66', 'Vũ Hoài Nam', 'bin', 'vuhoainampharma@gmail.com', 'd2a06d4700374a5aceb3acc6241f7152:Il3bplZKLAyYAMNVMHL655W6TUo24oWM', 'Manager', '0', '0', '23', '2010-04-26 16:55:48', '2010-05-12 12:48:40', 'fa6110f99a5ee32a5ba0db4276960a53', 'language=\ntimezone=7\n\n');
INSERT INTO `jos_users` VALUES ('67', 'Tuan', 'leroi', 'tuandl50@yahoo.com', 'b6737c568aa87187b0dd5055fd849b1c:QZuPAJfDvntdoUKuJPKEBUWNXD4eL0Ll', 'Manager', '0', '0', '23', '2010-04-28 15:02:51', '2010-05-18 02:30:43', 'd9fc91b901f6cae77bb188158692d5cb', 'language=\ntimezone=0\n\n');
INSERT INTO `jos_users` VALUES ('68', 'Phuong', 'thewarm', 'thewarm2000@gmail.com', 'b5aef3541dee4e4c878c65ed71adfeef:xGtD0XBqmiunSq1GurlgJo599RsVI44h', 'Registered', '0', '0', '18', '2010-04-28 15:13:06', '2010-05-04 13:56:19', '799cc8a041d9f46ba46a4d04413edfb1', '\n');
INSERT INTO `jos_users` VALUES ('69', 'Tung Nguyen', 'ncttung', 'ncttungvn@yahoo.com', '63b521950bc38171b7a6ca554164f950:zkaMaz9KYyKHR4mP6FwGuqV8l1F8blF5', 'Registered', '0', '0', '18', '2010-05-10 14:19:37', '2010-05-10 14:25:11', '45d5cde08e822c869e4ddd7bd25aa3f0', '\n');
INSERT INTO `jos_users` VALUES ('79', 'Tùng', 'lesytung', 'le.sytung@yahoo.com.vn', '782dea01a8bbf3ad5871ad414cc22de8:a1fG4eeOGSQEqycMRowpuVAAbtLtsSuP', 'Registered', '0', '0', '18', '2010-05-11 10:49:42', '2010-05-11 10:53:12', 'f8eb554b2841e28495c1a3057aa17701', '\n');
INSERT INTO `jos_users` VALUES ('76', 'Nam Trung', 'namtrung', 'namtrung@catsoft.com.vn', '422be377870da8cc4526866920f87c9b:kEmg41y8GrSSZKzmXbTnbdrdVdOkrSuV', 'Super Administrator', '0', '0', '25', '2010-05-11 08:14:25', '2010-05-13 05:03:29', '', 'admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=7\n\n');
INSERT INTO `jos_users` VALUES ('80', 'trauden30493', 'Do binh', 'trauden30493@yahoo.com', 'd35dcd54f565627e42c68c4e28e5d99f:GaQf6OybZgyreV1VHCMNnCdypsqeyzOz', 'Registered', '0', '0', '18', '2010-05-11 13:26:54', '0000-00-00 00:00:00', 'f24bf0a01e8583e3cd3b4d656fd5072c', '\n');
INSERT INTO `jos_users` VALUES ('81', 'duyen', 'duyencnd', 'nguyenthanhduyen1112@yahoo.com.vn', '07891b372d75603fd228a83b7630c52c:VYYUVjOahWRtUNp3ZQ7A2WOGVEYECbJu', 'Registered', '0', '0', '18', '2010-05-12 08:56:10', '2010-05-12 08:57:00', '', '\n');

-- ----------------------------
-- Table structure for `jos_vvcounter_logs`
-- ----------------------------
DROP TABLE IF EXISTS `jos_vvcounter_logs`;
CREATE TABLE `jos_vvcounter_logs` (
  `time` int(10) unsigned NOT NULL,
  `visits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `guests` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `members` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bots` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_vvcounter_logs
-- ----------------------------
INSERT INTO `jos_vvcounter_logs` VALUES ('1269937238', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1269938167', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1269939113', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1269939600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1269940505', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1269941444', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1269942427', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1269943200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270094400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270095726', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270096645', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270105200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270106994', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270108800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270111973', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270112400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270113447', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270114403', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270115485', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270116000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270170000', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270172078', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270173529', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270173600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270175049', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270175964', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270176952', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270177200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270180055', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270180800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270181717', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270188000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270190599', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270195200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270196934', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270198047', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270198800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270199736', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270200798', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270201723', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270202400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270256400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270258641', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270259552', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270260000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270260926', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270261829', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270262757', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270263600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270264514', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270265498', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270266404', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270267200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270268410', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270270652', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270270800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270432800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270433707', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270434660', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270435714', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270436400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270437365', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270438331', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270439943', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270440000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270441091', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270442086', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270442990', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270447200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270449513', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270450424', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270450800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270452051', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270452960', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270454400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270457046', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270458000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270458906', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270459958', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270461229', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270515600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270518724', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270519200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270520387', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270521570', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270522470', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270522800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270523974', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270525069', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270525985', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270526400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270527327', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270528267', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270533600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270536561', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270537200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270538115', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270539058', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270539958', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270540800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270542396', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270543694', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270544400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270545325', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270602000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270603813', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270604821', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270605600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270606514', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270607628', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270608700', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270609200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270610355', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270611289', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270612398', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270612800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270623600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270624509', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270625434', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270626449', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270627200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270628126', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270629105', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270630390', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270630800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270631704', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270692000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270692918', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270694022', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270695092', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270695600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270696543', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270697648', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270698586', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270710000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270711830', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270712820', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270713600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270714690', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270715636', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270716545', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270774800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270778365', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270778400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270779527', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270782000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270783091', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270783999', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270785239', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270785600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270786973', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270788190', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270792800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270796047', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270800000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270802024', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270802939', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270803600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270804507', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270805648', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270806554', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270807200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270808478', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270809450', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270810800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1270811701', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271034000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271037252', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271037600', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271038573', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271039562', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271040470', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271041200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271042823', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271043827', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271044761', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271044800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271045928', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271046836', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271052000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271054510', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271055600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271056521', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271059200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271061364', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271062285', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271062800', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271063825', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271064976', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271065880', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271210400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271211319', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271212315', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271213605', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271214000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271215015', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271216102', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271217002', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271217600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271218538', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271219540', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271220463', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271224800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271226833', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271227871', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271228400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271230344', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271231253', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271232000', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271232909', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271233855', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271235023', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271235600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271236518', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271237418', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271238351', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271296800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271297708', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271298936', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271299838', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271300400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271302051', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271302985', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271303905', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271304000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271304928', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271305947', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271307029', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271307600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271308589', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271309804', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271310736', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271311200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271313451', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271314405', '3', '1', '2', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271314800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271315754', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271316657', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271317624', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271318400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271319658', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271320562', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271321463', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271322000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271323211', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271324145', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271383200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271385596', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271386567', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271386800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271387708', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271388608', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271389620', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271390400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271391609', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271392523', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271397600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271400609', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271401200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271402203', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271403107', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271404800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271405706', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271406698', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271407606', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271408400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271409325', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271469600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271470541', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271472068', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271472990', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271473200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271474174', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271475094', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271475996', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271476800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271477702', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271478617', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271479604', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271728800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271729709', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271730760', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271731757', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271732400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271733314', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271734241', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271735439', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271736000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271737327', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271738741', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271739600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271746800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271747730', '4', '3', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271748698', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271749605', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271750400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271751327', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271752299', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271753202', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271754000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271754900', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271756478', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271811600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271814317', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271815200', '2', '0', '2', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271816100', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271817005', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271818261', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271818800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271820212', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271821417', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271822400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271823415', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271824329', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271825281', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271833200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271834779', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271835751', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271836658', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271836800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271837705', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271840400', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271841320', '4', '2', '2', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271842911', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271844000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271845736', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271846638', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271847600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271848877', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271851200', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271852120', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271853349', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271854800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271856087', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271857957', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271858400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271859514', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271860461', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271861382', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271862000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271862942', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271865600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271866875', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271867901', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271869200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271871339', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271898000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271899159', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271900383', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271901294', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271901600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271902512', '3', '2', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271903420', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271904407', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271905200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271906101', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271907202', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271908153', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271908800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271909725', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271912400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271913668', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271915712', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271916000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271919600', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271920666', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271921787', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271923200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271925180', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271926090', '3', '2', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271926800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271928163', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271930400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271932556', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271933511', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271934000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271937600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271939416', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271941200', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271944292', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271948400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271950531', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271952000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271953473', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271954693', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271955593', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271955600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271959200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271960322', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271984400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1271987691', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272002400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272003409', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272020400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272021375', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272023793', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272024000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272024904', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272027600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272029385', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272031200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272032297', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272033246', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272034426', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272034800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272036013', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272038400', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272041065', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272042000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272043902', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272070800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272072548', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272074125', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272078000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272080572', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272081600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272085200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272088062', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272088800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272091207', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272092400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272094417', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272096000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272096930', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272097845', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272098835', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272099600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272100505', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272103200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272105838', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272106751', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272106800', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272107823', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272110400', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272111314', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272113658', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272114000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272116814', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272117600', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272118802', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272120044', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272121019', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272121200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272123268', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272124800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272127608', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272132000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272133087', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272153600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272157200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272160800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272163784', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272164400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272165439', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272166411', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272167321', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272168000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272171600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272172884', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272174268', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272178800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272179861', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272182054', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272193200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272195059', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272196800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272199070', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272200400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272201300', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272202201', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272203104', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272207600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272210431', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272218400', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272240000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272242330', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272243474', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272243600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272245031', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272247200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272249417', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272250595', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272250800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272251957', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272254400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272255368', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272261600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272264777', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272265200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272266625', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272268120', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272268800', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272270250', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272271254', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272272251', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272272400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272273475', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272274390', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272275307', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272276000', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272276938', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272277908', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272279238', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272279600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272280665', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272282361', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272286800', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272287817', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272288720', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272289621', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272290400', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272291315', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272292215', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272293228', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272294000', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272295540', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272297600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272298780', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272299685', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272300622', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272301200', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272302104', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272303479', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272330000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272332690', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272333598', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272333600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272334503', '3', '2', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272336117', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272337200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272338234', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272339190', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272340800', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272341748', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272351600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272355062', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272355200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272357368', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272358286', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272358800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272359702', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272360769', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272362400', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272363411', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272366000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272367467', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272373200', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272374642', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272376006', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272376800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272378150', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272379055', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272380244', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272380400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272381391', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272382384', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272384000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272385219', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272387600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272389709', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272390915', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272391200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272394176', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272416400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272418626', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272419608', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272420000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272421825', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272422740', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272423600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272426314', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272427200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272445200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272448024', '4', '3', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272448800', '2', '0', '2', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272449702', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272450631', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272452099', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272452400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272456000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272458297', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272459594', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272463200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272464303', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272466290', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272466800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272467712', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272468772', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272470400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272471471', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272472736', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272473641', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272499200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272500609', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272502243', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272502800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272504167', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272505189', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272506092', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272506400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272507402', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272508354', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272510000', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272511269', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272513253', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272513600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272514661', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272524400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272527823', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272528000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272530345', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272531600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272533089', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272535200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272536695', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272537595', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272538800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272540795', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272542400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272546000', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272547346', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272549600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272551195', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272552762', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272553200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272555400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272556800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272558904', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272560098', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272560400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272582000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272585313', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272585600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272587319', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272614400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272616622', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272632400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272682800', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272684138', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272711600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272712873', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272715200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272716367', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272717435', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272722400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272725989', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272726000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272729600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272731348', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272732570', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272733200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272734206', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272735585', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272754800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272757941', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272758400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272759470', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272772800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272775373', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272776400', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272777633', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272779461', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272780000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272781693', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272783555', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272783600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272784552', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272785454', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272786356', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272787200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272788353', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272789281', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272790246', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272790800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272791700', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272792602', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272794400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272796981', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272798000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272800774', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272805200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272806155', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272807129', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272808036', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272808800', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272809769', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272812095', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272812400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272813304', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272816000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272817482', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272818880', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272819600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272820746', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272823200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272837600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272840310', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272844800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272847936', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272848400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272849443', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272850634', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272851672', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272852000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272852922', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272853934', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272855600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272858877', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272859200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272862038', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272862800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272863723', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272864663', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272865564', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272866400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272868133', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272869055', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272869988', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272870000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272870909', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272871894', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272873600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272877200', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272880368', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272888000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272889213', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272891600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272893022', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272893933', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272894912', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272895200', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272896114', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272897023', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272898054', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272898800', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272899825', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272901056', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272901988', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272902400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272903599', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272905382', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272906000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272906911', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272908195', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272934800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272938001', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272938400', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272939552', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272940478', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272941418', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272942000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272943557', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272944495', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272945415', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272945600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272946944', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272956400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272958514', '6', '5', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272959594', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272960000', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272960987', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272963085', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272963600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272964516', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272965420', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272966328', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272967200', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272968494', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272969676', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272970800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272972759', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272974400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272975573', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272978000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272979542', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272980652', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272981554', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272981600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272982502', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272983599', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272984505', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272985200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272986246', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272987228', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272988185', '3', '2', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272988800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272989715', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272990624', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272992094', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272992400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272993823', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272995043', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272995980', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272996000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1272996901', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273017600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273018860', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273020075', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273021006', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273021200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273023357', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273024262', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273024800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273025774', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273027051', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273027964', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273028400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273029306', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273030341', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273031305', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273032000', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273032900', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273035600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273037682', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273038842', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273039200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273041318', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273042225', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273042800', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273046400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273049142', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273050000', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273051024', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273052093', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273052999', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273053600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273054502', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273055487', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273056402', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273057200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273058196', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273060800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273062796', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273064223', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273064400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273065622', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273066546', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273067585', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273068000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273068902', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273070426', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273071600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273072509', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273073893', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273075200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273076765', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273077810', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273104000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273105302', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273106795', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273107600', '6', '6', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273110065', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273111015', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273111200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273112639', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273113555', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273114466', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273114800', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273115793', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273117212', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273118400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273119557', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273122000', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273124780', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273125600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273127218', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273129079', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273129200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273130460', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273131387', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273132398', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273132800', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273133719', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273134955', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273135857', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273136400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273137992', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273139379', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273140000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273140907', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273141923', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273143241', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273143600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273144540', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273145535', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273147200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273149844', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273150800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273151816', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273152773', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273154400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273156978', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273158000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273159031', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273160128', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273161600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273162504', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273164832', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273165200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273166122', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273179600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273183196', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273183200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273194000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273195133', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273197600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273199190', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273200107', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273201009', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273201200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273202215', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273203117', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273204083', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273204800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273206545', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273208400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273209893', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273212000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273215600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273216923', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273217931', '4', '3', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273218833', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273219200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273220152', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273221077', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273222052', '3', '2', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273222800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273223703', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273224618', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273226400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273227964', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273228883', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273229789', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273230000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273230977', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273233600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273234555', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273237200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273240800', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273242728', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273243658', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273244400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273245362', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273246265', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273247424', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273248000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273249563', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273273200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273275410', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273276310', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273276800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273277936', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273284000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273285141', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273286042', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273286989', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273287600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273288530', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273289431', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273290339', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273291200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273292750', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273294800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273295793', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273297820', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273298400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273299858', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273301074', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273302000', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273303067', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273304122', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273305202', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273305600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273307145', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273309200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273310123', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273312800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273315779', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273320000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273320945', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273323482', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273323600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273324557', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273325462', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273326742', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273327200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273329130', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273330193', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273330800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273331820', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273334400', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273335310', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273336538', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273337442', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273338000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273341600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273344884', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273366800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273369379', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273370336', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273370400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273372755', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273374000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273377366', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273377600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273380376', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273381200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273382969', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273384800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273388160', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273388400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273390426', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273391329', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273392000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273392947', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273393874', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273394970', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273395600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273396857', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273398217', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273402800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273404499', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273413600', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273414802', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273416531', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273417200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273418853', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273420333', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273420800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273421718', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273424400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273426829', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273428000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273428916', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273456800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273458527', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273459470', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273460400', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273461300', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273462360', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273463321', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273464000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273465177', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273466180', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273474800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273476621', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273477607', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273485600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273487448', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273488426', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273489200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273491431', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273496400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273498726', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273500000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273500920', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273503203', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273503600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273505162', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273506146', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273507200', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273508195', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273509131', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273510348', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273510800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273521600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273524620', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273525200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273527363', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273532400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273533828', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273534966', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273536000', '3', '0', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273537112', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273539600', '3', '0', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273540534', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273542032', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273543083', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273543200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273544319', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273545635', '4', '2', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273546800', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273548024', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273549067', '4', '1', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273550244', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273550400', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273551509', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273552855', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273553786', '4', '1', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273554000', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273555134', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273556132', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273557132', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273557600', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273559090', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273560347', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273561200', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273562271', '3', '0', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273563175', '3', '2', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273564475', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273564800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273565788', '3', '1', '1', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273566698', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273567655', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273568400', '5', '2', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273569313', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273570319', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273571606', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273572000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273572932', '3', '0', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273574131', '4', '2', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273575041', '3', '2', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273575600', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273578709', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273579200', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273580237', '4', '1', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273581324', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273582800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273584279', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273585276', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273586178', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273586400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273587305', '3', '2', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273588317', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273589266', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273590000', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273591004', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273591909', '4', '0', '0', '4');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273593214', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273593600', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273594552', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273595508', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273597114', '3', '2', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273597200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273598148', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273599162', '4', '1', '1', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273600800', '3', '0', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273601970', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273603390', '4', '1', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273604365', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273604400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273606912', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273608000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273609490', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273610596', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273611600', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273612577', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273613938', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273614940', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273615200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273616198', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273617565', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273622400', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273624885', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273626000', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273626922', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273627986', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273629125', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273629600', '3', '0', '1', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273630521', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273631565', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273632551', '3', '3', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273633200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273634533', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273635919', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273636800', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273639404', '5', '2', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273640400', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273642020', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273642945', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273644000', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273645579', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273647377', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273647600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273649019', '4', '2', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273649923', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273651200', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273652295', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273654087', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273654800', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273657570', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273658400', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273659372', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273661182', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273662000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273662959', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273664281', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273665184', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273665600', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273667599', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273668512', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273669200', '3', '1', '1', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273670126', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273671084', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273672018', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273672800', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273674344', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273712400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273713720', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273714675', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273716000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273716904', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273719600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273721216', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273723073', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273723200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273726800', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273728416', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273730400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273732856', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273733780', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273734000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273735993', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273737272', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273737600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273738896', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273741065', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273741200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273742148', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273743142', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273744048', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273755600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273758681', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273759200', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273760123', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273761039', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273761987', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273762800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273763866', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273765232', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273766400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273767996', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273768959', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273770000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273773600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273776629', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273780800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273783417', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273788000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273790119', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273795200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273796159', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273797065', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273798371', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273798800', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273800747', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273802400', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273805768', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273806000', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273809260', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273809600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273812863', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273813200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273816800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273817821', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273820400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273821308', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273822261', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273823319', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273824000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273824917', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273825846', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273826747', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273827600', '5', '5', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273828646', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273829590', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273830504', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273831200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273832101', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273834800', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273836113', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273837161', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273838400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273840482', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273841393', '3', '2', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273842000', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273844180', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273845386', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273845600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273846688', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273847676', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273848681', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273849200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273850148', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273851055', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273852406', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273852800', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273854051', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273854982', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273856400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273857362', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273858377', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273859456', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273860000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273861695', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273863227', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273863600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273866903', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273867200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273869065', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273870800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273874088', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273878000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273879514', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273881600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273883273', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273884523', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273885200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273886306', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273888055', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273888800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273891769', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273892400', '2', '0', '1', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273893445', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273894442', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273895353', '3', '1', '1', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273896000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273896902', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273897813', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273898763', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273899600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273902442', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273903200', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273904101', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273905950', '3', '3', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273906800', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273909906', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273910400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273913622', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273914000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273914997', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273915922', '2', '0', '1', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273917600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273918526', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273920326', '4', '2', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273921200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273922574', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273924738', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273924800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273926635', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273927674', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273928400', '3', '3', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273929394', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273930364', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273932000', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273932905', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273933825', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273934730', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273935600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273937446', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273939200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273940154', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273942800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273943729', '2', '0', '1', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273944683', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273945727', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273946400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273947748', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273949896', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273950000', '7', '0', '0', '7');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273953600', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273956162', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273957200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273960780', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273964400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273965466', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273968000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273971098', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273971600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273972907', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273975200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273976318', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273977276', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273978800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273980783', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273981709', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273982400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273983415', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273984728', '3', '2', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273986000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273987013', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273988026', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273988932', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273989600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273990553', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273991554', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273992949', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273993200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273996092', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273996800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1273998051', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274000398', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274000400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274001692', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274002653', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274003948', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274004000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274005269', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274006415', '4', '1', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274007416', '3', '3', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274007600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274008687', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274009662', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274010562', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274011200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274012210', '4', '1', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274013235', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274014165', '3', '0', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274014800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274015730', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274016642', '6', '1', '0', '5');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274017747', '4', '2', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274018400', '4', '2', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274019970', '4', '1', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274020958', '6', '2', '0', '4');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274021885', '5', '1', '0', '4');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274022000', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274022918', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274024510', '5', '1', '0', '4');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274025600', '3', '0', '0', '3');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274026565', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274029200', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274031386', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274032800', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274034748', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274035658', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274036400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274040000', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274043274', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274043600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274045944', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274050800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274052807', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274053897', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274054400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274055979', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274057599', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274058000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274060902', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274061600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274065200', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274066292', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274067712', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274068800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274070167', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274072400', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274073809', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274075635', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274079600', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274080848', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274083200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274084227', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274085782', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274086800', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274088175', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274089538', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274090400', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274092576', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274094000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274094963', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274096359', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274097600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274099088', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274101200', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274102337', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274104241', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274104800', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274105720', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274106746', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274107656', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274108400', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274109520', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274110491', '2', '0', '1', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274111991', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274112000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274113164', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274114280', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274115316', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274115600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274117064', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274119200', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274120679', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274122385', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274122800', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274123995', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274125905', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274126400', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274128820', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274130000', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274131293', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274132810', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274133600', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274136240', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274137200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274140297', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274140800', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274141842', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274143430', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274144400', '2', '0', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274145433', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274146764', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274147668', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274148000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274149205', '7', '4', '1', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274150121', '2', '2', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274151095', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274151600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274152511', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274153512', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274154435', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274155200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274156136', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274157355', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274158263', '2', '1', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274158800', '3', '1', '0', '2');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274160025', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274161390', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274162400', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274163856', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274164762', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274165683', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274166000', '1', '0', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274167093', '4', '3', '0', '1');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274168194', '1', '0', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274169202', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274169600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274170542', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274172106', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274173025', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274173200', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274174101', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274175600', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274176542', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274403600', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274405338', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274684400', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274686287', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274687262', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274688000', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274689038', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274690668', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274770800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1274773938', '1', '1', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1275274800', '0', '0', '0', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1275296400', '2', '1', '1', '0');
INSERT INTO `jos_vvcounter_logs` VALUES ('1275297783', '1', '1', '0', '0');

-- ----------------------------
-- Table structure for `jos_weblinks`
-- ----------------------------
DROP TABLE IF EXISTS `jos_weblinks`;
CREATE TABLE `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_weblinks
-- ----------------------------
INSERT INTO `jos_weblinks` VALUES ('1', '27', '0', 'VietNamNet.vn', 'vietnamnetvn', 'http://vietnamnet.vn', '', '2010-04-01 09:58:48', '1', '1', '0', '0000-00-00 00:00:00', '1', '0', '1', 'target=1\n\n');
INSERT INTO `jos_weblinks` VALUES ('2', '27', '0', 'Voz Express', 'voz-express', 'http://voz.vn', '', '2010-04-01 09:59:09', '5', '1', '0', '0000-00-00 00:00:00', '2', '0', '1', 'target=1\n\n');
