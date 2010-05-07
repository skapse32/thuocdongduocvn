/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50136
Source Host           : localhost:3306
Source Database       : thuocdongduoc.vn

Target Server Type    : MYSQL
Target Server Version : 50136
File Encoding         : 65001

Date: 2010-05-04 14:42:05
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_adsmanager_ads
-- ----------------------------
INSERT INTO `jos_adsmanager_ads` VALUES ('1', '1', '64', 'long', null, '2', '', 'long.lh@catsoft.com.vn', null, 'Bán người đê hê hê', 'Bán người làm Osin dài hạn\r\n\r\n200k/1ng/10 năm', null, '200000', '2010-04-28 00:00:00', null, '0', '7', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('2', '1', '64', 'long', null, '2', '', 'long.lh@catsoft.com.vn', null, 'express myseft', 'Bán lấy tiền đây', null, '1000000000', '2010-04-28 00:00:00', null, '0', '3', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('3', '2', '64', 'long', null, '3', '', 'long.lh@catsoft.com.vn', null, 'Cần mua thuốc', 'Chuyên dụng trị ung thư \r\ngiá cả thỏa thuận', null, '10', '2010-04-28 00:00:00', null, '0', '0', '1');
INSERT INTO `jos_adsmanager_ads` VALUES ('4', '2', '64', 'long', null, '3', '', 'long.lh@catsoft.com.vn', null, 'Bạn có thể đăng 5 ảnh định dạng JPEG/PNG/GIf với dung lượng', 'xxxxxxxxxxxxfsdf sdfsfsd fsf', null, '34', '2010-04-28 08:01:42', null, '0', '4', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_attachments
-- ----------------------------
INSERT INTO `jos_attachments` VALUES ('1', 'add_attachment_btn_plugin.zip', 'C:\\Working\\thuocdongduoc.vn\\attachments\\027_add_attachment_btn_plugin.zip', 'application/octet-stream', '3785', 'zip.gif', 'Tên file', 'Mô tả file', 'attachments/027_add_attachment_btn_plugin.zip', '62', '27', '1', '', '', '', '2010-04-21 07:49:44', '2010-04-21 07:49:44', '0');
INSERT INTO `jos_attachments` VALUES ('2', 'attachments_plugin.zip', 'C:\\Working\\thuocdongduoc.vn\\attachments\\027_attachments_plugin.zip', 'application/octet-stream', '5242', 'zip.gif', 'plugin', 'plugin', 'attachments/027_attachments_plugin.zip', '62', '27', '0', '', '', '', '2010-04-21 07:51:31', '2010-04-21 07:51:31', '0');

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
INSERT INTO `jos_banner` VALUES ('1', '1', '', 'Banner - Trang chủ - Center', 'banner-trang-ch-center', '0', '1738', '0', 'osmbanner1.png', '', '2010-04-26 11:03:03', '1', '62', '2010-04-26 11:04:55', '', '<img src=\"templates/thuocdocduoc/images/news&event_33.png\" />', '24', '', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0');

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
INSERT INTO `jos_bannerclient` VALUES ('1', 'Thuốc Đông Dược', 'Administrator', 'longdt@live.com', 'Banner quảng cáo của trang.', '62', '10:36:07', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_categories
-- ----------------------------
INSERT INTO `jos_categories` VALUES ('1', '0', 'Tin tức', '', 'tin-tuc', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('2', '0', 'Sử dụng thuốc', '', 'su-dung-thuoc', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('3', '0', 'Món ăn bài thuốc', '', 'mon-an-bai-thuoc', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('4', '0', 'Sức khỏe đời sống', '', 'suc-khoe-doi-song', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('5', '0', 'Thế giới ảnh', '', 'the-gioi-anh', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('284', '0', 'Gian hàng HOAINAMPHARMA', '', 'gian-hang-hoainampharma', '', '7', 'left', '<p><img src=\"http://www.hongbang.vn/data/data/news/images/SP_Ho%20tang%20duong.JPG\" border=\"0\" /></p>', '1', '62', '2010-04-26 16:35:35', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('15', '0', 'Thuốc', '', 'thuoc', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('16', '0', 'Phòng khám Đông Y', '', 'phong-kham-dong-y', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '6', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('17', '0', 'Bệnh viên y học cổ truyền', '', 'benh-vien-y-hoc-co-truyen', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('18', '0', 'Nguyên liệu đông dược', '', 'nguyen-lieu-dong-duoc', '', '4', 'left', '', '1', '62', '2010-04-26 14:30:41', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('19', '0', 'Tinh dầu', '', 'tinh-dau', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('20', '0', 'Thực vật', '', 'thuc-vat', '', '5', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('21', '0', 'Dược liệu', '', 'duoc-lieu', '', '5', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('22', '0', 'Đông y', '', 'dong-y', '', '5', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('23', '0', 'Sách khác', '', 'sach-khac', '', '5', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('24', '0', 'Trang Chủ', '', 'trang-chu', '', 'com_banner', 'left', '', '1', '62', '2010-04-26 10:36:30', null, '1', '0', '0', '');
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
INSERT INTO `jos_categories` VALUES ('59', '0', 'V', '', 'v', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '22', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('60', '0', 'W', '', 'w', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '23', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('61', '0', 'X', '', 'x', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '24', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('62', '0', 'Y', '', 'y', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '25', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('63', '0', 'Z', '', 'z', '', 'com_filter_alpha', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '26', '0', '0', '');
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
INSERT INTO `jos_categories` VALUES ('160', '0', 'Acid hữu cơ', '', 'acid-huu-co', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('161', '0', 'Alcaloid', '', 'alcaloid', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('162', '0', 'Carbohydrat', '', 'carbohydrat', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('163', '0', 'Glycosid', '', 'glycosid', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('164', '0', 'Lipid', '', 'lipid', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('165', '0', 'Tinh dầu', '', 'tinh-dau', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
INSERT INTO `jos_categories` VALUES ('166', '0', 'chất nhựa', '', 'chat-nhua', '', 'com_filter_ctvt_thanhphanhoahoc', 'left', ' ', '1', '0', '0000-00-00 00:00:00', null, '0', '0', '0', ' ');
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of jos_comment
-- ----------------------------
INSERT INTO `jos_comment` VALUES ('1', 'L', 'H', '98237874', 'Thu?c d', '', '2010-04-08 16:18:51', '1', 'dgasdg', 'asdg', '', '1');
INSERT INTO `jos_comment` VALUES ('5', 'asgahsadh', 'hsadhas', 'gasgasdg', 'sadgasd', 'gasdgasdg', '0000-00-00 00:00:00', '1', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('6', 'sadgsadgsad', 'gasdgasdg', 'gasdg', 'sdgasd', 'asdgasdg', '0000-00-00 00:00:00', '1', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('7', 'asghashsadh', 'dsafsadgsad', 'gsadg', 'sadfsad', 'asdgsadg', '0000-00-00 00:00:00', '1', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('8', 'sadgsadgsad', 'ghsadhsahs', 'adhsadhsa', 'adhs', 'hsadhasdsda', '2010-04-09 15:34:42', '1', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('9', 'ahsdhsadhsadh', 'asdhsadhasdh', 'dsah', 'hasdhsadh', 'asghdhdsa', '0000-00-00 00:00:00', '1', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('14', 'fsdfsfsf', '', '', '', '', '0000-00-00 00:00:00', '0', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('18', 'fsfsfaaaaaaaaaaaaaaaaaaaaaaaaaa', '', 'fsdfsdfsdfs@gmail.com', '', '', '0000-00-00 00:00:00', '0', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('19', 'd', '', 'postdgasdg@gmail.com', '', '', '2010-04-09 15:34:42', '1', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('20', 'dsgsdag', '', 'dsag@dsa.com', '', '', '0000-00-00 00:00:00', '0', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('21', 'dafhdf', 'shdfh', 'dsfhdsfh@asdf.com', 'asgasd', 'sadh', '0000-00-00 00:00:00', '0', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('22', 'L', 'H', 'lien@gmail.com', 'kksadklgsalkd', 'laglsdklgdsakl', '2010-04-09 15:24:47', '1', 'sdfsadg', 'sadgsad', 'gasdgsadgsdag', '0');
INSERT INTO `jos_comment` VALUES ('23', 'Giang', 'H', 'gh@gamo.com', 'kasdkgkl', 'lalsglkdgsaklgd', '0000-00-00 00:00:00', '0', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('24', 'Giang 2', 'kjasgdlk', 'ls@mgadl.com', 'l', 'lkasdgkl', '0000-00-00 00:00:00', '0', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('25', 'Nam d', 'H', 'd@a.com', 'klasdlgkl', 'lklfaklgksad', '0000-00-00 00:00:00', '0', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('26', 'nam d?i ', 'kjasd', 'lksa@gma.com', 'l', 'lkklgasdgd', '0000-00-00 00:00:00', '0', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('27', 'nam', 'asg,', 'g@a.com', 'kllasdgl', 'lfgslka', '0000-00-00 00:00:00', '0', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('28', 'h', 'kask', 'ka@sm.com', 'ksdk', 'lsag', '0000-00-00 00:00:00', '0', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('29', 'g', 'g', 'sd@yak.com', 'l', 'l;', '0000-00-00 00:00:00', '0', null, null, '', '0');
INSERT INTO `jos_comment` VALUES ('31', 'fsdfs', 'fsdfsdf', 'longdt@live.com', 'he he', 'nội dung câu hỏi', '2010-04-12 04:13:00', '1', null, null, '', '1');
INSERT INTO `jos_comment` VALUES ('32', 'Vũ Thuý Hiền', 'Hà Nội', 'thewarm2000@gmail.com', 'Bệnh huyết áp thấp có nguy hiểm không?', 'Bệnh huyết áp thấp có nguy hiểm không?  	\r\n		\r\n	\r\n\r\nKính gửi chuyên mục hỏi đáp thuốc biệt dược ! Tôi tên là Hiền, năm nay 37 tuổi, thời gian gần đây tôi rất hay bị đau đầu, chóng mặt, buồn nôn, thường có cảm giác như say tàu xe, người chông chênh rất khó chịu, và mệt mỏi, khi đó đo huyết áp thường dao động ở khoảng 80/60, 85/60, 90/65, rất hiếm khi HA tối đa lên đến 100. Tôi được bác sỹ chẩn đoán là Huyết áp thấp, Rối loạn tuần hoàn naõ . Tôi rất lo lắng, buồn phiền . Xin hỏi chuyên mục là bệnh đó có nguy hiểm không ? và tôi phải điều trị như thế nào ? Rất mong được chuyên mục tư vấn cho tôi . Xin chân thành cảm ơn .', '2010-05-03 07:35:00', '0', null, null, '', '0');

-- ----------------------------
-- Table structure for `jos_comment_category`
-- ----------------------------
DROP TABLE IF EXISTS `jos_comment_category`;
CREATE TABLE `jos_comment_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(350) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_comment_category
-- ----------------------------
INSERT INTO `jos_comment_category` VALUES ('1', 'Câu hỏi chung');
INSERT INTO `jos_comment_category` VALUES ('2', 'Câu hỏi về Cây Thuốc - Vị Thuốc');
INSERT INTO `jos_comment_category` VALUES ('3', 'Câu hỏi về Bài Thuốc');
INSERT INTO `jos_comment_category` VALUES ('4', 'Câu hỏi về sử dụng Thuốc');

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
INSERT INTO `jos_components` VALUES ('23', 'Language Manager', '', '0', '0', '', 'Languages', 'com_languages', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('24', 'Mass mail', '', '0', '0', '', 'Mass Mail', 'com_massmail', '0', '', '1', 'mailSubjectPrefix=\nmailBodySuffix=\n\n', '1');
INSERT INTO `jos_components` VALUES ('25', 'Menu Editor', '', '0', '0', '', 'Menu Editor', 'com_menus', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('27', 'Messaging', '', '0', '0', '', 'Messages', 'com_messages', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('28', 'Modules Manager', '', '0', '0', '', 'Modules', 'com_modules', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('29', 'Plugin Manager', '', '0', '0', '', 'Plugins', 'com_plugins', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('30', 'Template Manager', '', '0', '0', '', 'Templates', 'com_templates', '0', '', '1', '', '1');
INSERT INTO `jos_components` VALUES ('31', 'User Manager', '', '0', '0', '', 'Users', 'com_users', '0', '', '1', 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', '1');
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
INSERT INTO `jos_contact_details` VALUES ('1', 'Email cho chúng tôi.', 'email-cho-chung-toi', 'Position', '', '', '', '', '', '', '', '', '', null, '', '0', '1', '0', '0000-00-00 00:00:00', '1', 'show_name=1\nshow_position=0\nshow_email=1\nshow_street_address=1\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=0\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', '62', '25', '0', '', '');
INSERT INTO `jos_contact_details` VALUES ('2', 'Liên hệ quảng cáo', 'lien-h-qung-cao', '', '', '', '', '', '', '', '', '', '', null, '', '0', '1', '0', '0000-00-00 00:00:00', '1', 'show_name=1\nshow_position=1\nshow_email=1\nshow_street_address=1\nshow_suburb=1\nshow_state=1\nshow_postcode=1\nshow_country=1\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nshow_webpage=1\nshow_misc=1\nshow_image=1\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=fsdfsfs\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', '62', '26', '0', '', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_content
-- ----------------------------
INSERT INTO `jos_content` VALUES ('1', 'Cậu bé có trái tim hình quả bầu', 'cu-be-co-trai-tim-hinh-qu-bu', '', '<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span class=\"Apple-style-span\" style=\"border-collapse: separate; color: #000000; font-family: \'Times New Roman\'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px;\"><span class=\"Apple-style-span\" style=\"color: #333333; font-family: Tahoma,Helvetica,Arial,sans-serif; line-height: 15px;\">Ho, tức ngực, thở mệt, được chẩn đoán ban đầu là nhiễm trùng huyết nhưng điều trị không khỏi, bé trai 7 tuổi đã được các bác sĩ Bệnh viện Nhi Đồng 1 xác định quả tim phình to dài do màng bọc bên ngoài tim bị viêm.        \r\n', '\r\n</span></span></span></p>\r\n<table style=\"width: 1px; text-align: justify;\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><span style=\"font-size: medium;\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/4E/tim-1.jpg\" border=\"1\" width=\"250\" height=\"195\" /></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">\r\n<p><span style=\"font-size: medium;\">Quả tim của bệnh nhân trên phim Xquang. Ảnh: <em>Bác  sĩ Minh Tiến.</em></span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"caption\" style=\"text-align: justify;\"><span style=\"font-size: medium;\">Gia đình bệnh nhi cho hay, bé bị ho liên tục trong 4  ngày, sau đó than khó thở rồi nằm li bì và tím tái. Tại bệnh viện tỉnh  Bà Rịa, nghi ngờ bệnh nhi nhiễm trùng huyết, bác sĩ đã điều trị bằng  kháng sinh nhưng tình trạng bệnh không cải thiện. Bé được chuyển viện  tuyến trên.</span></p>\r\n<p class=\"caption\" style=\"text-align: justify;\"><span style=\"font-size: medium;\">Tại Bệnh viện Nhi Đồng 1, TP HCM, các bác sĩ nghe  không rõ nhịp tim của bệnh nhân, bên cạnh đó, tĩnh mạch cổ nổi hằn trên  da. Nghi ngờ có liên quan đến bệnh lý về tim, bé được đưa đi chụp  X-quang. Kết quả cho thấy, tim có hình dạng dài và phình to như quả bầu.  Kết quả siêu âm tim cũng ghi nhận tình trạng có dịch tràn ở màng tim.  Bé được xác định bị viêm màng ngoài tim.</span></p>\r\n<p class=\"caption\" style=\"text-align: justify;\"><span style=\"font-size: medium;\">Việc chọc hút và dẫn lưu màng ngoài tim được tiến hành  ngay sau đó. Gần nửa lít dịch vàng hồng được lấy ra, đây cũng là nguyên  nhân làm phù hình dạng tim như ghi nhận qua X-quang.</span></p>\r\n<p class=\"caption\" style=\"text-align: justify;\"><span style=\"font-size: medium;\">Đến nay, sau hơn một tuần điều trị, tình trạng sức  khỏe của bệnh nhân đã dần cải thiện. Ống dẫn lưu màng ngoài tim cũng đã  được rút ra thành công mà không gây tai biến.</span></p>\r\n<p class=\"caption\" style=\"text-align: justify;\"><span style=\"font-size: medium;\">Theo bác sĩ Nguyễn Minh Tiến, Phó khoa Hồi sức - cấp  cứu, Bệnh viện Nhi Đồng 1, viêm màng ngoài tim là bệnh lý hiếm gặp ở trẻ  em.</span></p>\r\n<p class=\"caption\" style=\"text-align: justify;\"><span style=\"font-size: medium;\">Màng ngoài gồm hai lớp bao quanh tim để bảo vệ tim và  hỗ trợ chức năng co bóp cơ tim. Một nguyên nhân nào đó như nhiễm trùng,  do bệnh ác tính, sau chấn thương, phẫu thuật, nhồi máu cơ tim, dị ứng…  sẽ làm màng này bị sưng viêm. Dịch tiết trong quá trình viêm nằm ở màng  ngoài tim, gây đau tức ngực, khó thở, chèn ép tim, đưa đến tử vong nếu  không điều trị kịp thời.</span></p>', '1', '1', '0', '1', '2010-03-29 08:16:01', '62', '', '2010-04-25 03:26:18', '62', '0', '0000-00-00 00:00:00', '2010-03-29 08:16:01', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '9', '0', '8', '', '', '0', '15', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('2', 'Dầu ăn làm từ nước cống ', 'du-n-lam-t-nc-cng-', '', '<p>Những thùng dầu ăn nâu bóng hóa ra được tinh chế lại từ nước cống, nước  rác. Ước tính \"công nghệ\" đáng sợ này đã mang lại 1/10 số lượng dầu ăn  cho Trung Quốc, chủ yếu được các nhà hàng hoặc người bán rong sử dụng.\r\n', '\r\n<tr>\r\n<td align=\"middle\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/35/dau1.jpg\" border=\"1\" width=\"450\" height=\"325\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Những người đi vớt chuyên nghiệp sẽ mang xô chậu tới  gần cống, rãnh nước thải của các nhà hàng, quán ăn, quán cơm để múc lớp  bọt, váng dầu lẫn thức ăn thừa, mang về chế biến. Nguồn: <em>ChinaSmack.</em></td>\r\n</tr>\r\n<tr>\r\n<td align=\"middle\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/35/dau2.jpg\" border=\"1\" width=\"450\" height=\"482\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Trong những cái thùng, bể cáu bẩn thế này, nước thải  được đun nóng để dầu nhẹ lẫn thức ăn thừa nổi lên, lọc ra chắt riêng lấy  lớp chất nhầy bẩn. Nguồn: <em>ChinaSmack.</em></td>\r\n</tr>\r\n<tr>\r\n<td align=\"middle\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/35/dau4.jpg\" border=\"1\" width=\"450\" height=\"482\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"BreakLine\"><span style=\"color: #ffffff;\"> </span></td>\r\n</tr>\r\n<tr>\r\n<td align=\"middle\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/35/dau3.jpg\" border=\"1\" width=\"450\" height=\"508\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Dầu lọc thu được tiếp tục qua chắt lọc lần nữa, và đổ  vào thùng dự trữ, chuẩn bị xuất xưởng. Bề ngoài của chúng lúc này đã khá  bắt mắt. Hàng triệu tấn dầu bẩn như vậy đã quay trở lại bàn ăn của  người Trung Quốc. Nguồn: <em>ChinaSmack.</em></td>\r\n</tr>\r\n<tr>\r\n<td align=\"middle\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/35/dau5.jpg\" border=\"1\" width=\"400\" height=\"267\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Cơ quan chức năng kiểm tra dầu ăn bẩn được làm tại một  cơ sở thủ công. Vụ việc đang gây xôn xao dư luận nước này. Loại dầu này  không chỉ bẩn, mà còn chứa vô số chất độc hại và các chất có khả năng  gây ung thư. Ảnh: <em>CFP.</em></td>\r\n</tr>\r\n</p>', '1', '1', '0', '1', '2010-03-29 08:24:51', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-03-29 08:24:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '7', '', '', '0', '10', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('3', 'Dùng thuốc đông y không đơn giản như nhiều người vẫn nghĩ', 'dung-thuc-ong-y-khong-n-gin-nh-nhiu-ngi-vn-ngh', '', '<p><span><span style=\"font-family: Arial;\">Nhiều người cho rằng uống thuốc  Đông y không sợ phản ứng phụ vì thuốc chế biến từ thực vật (cây cỏ, hoa  trái) hoặc động vật có trong tự nhiên. Có người lại uống thuốc theo sự  mách bảo hoặc kinh nghiệm của người khác. </span></p>\r\n\r\n', '\r\n</em></p>\r\n<p> </p>\r\n<p> </p>\r\n<table style=\"border-collapse: collapse;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<table style=\"border-collapse: collapse;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnmedia.vn/images_upload/small_136806.jpg\" border=\"0\" /></td>\r\n</tr>\r\n<tr>\r\n<td align=\"center\"><span style=\"font-family: Arial; font-size: xx-small;\">Bắt mạch cho bệnh  nhân</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- DESCRIPTION --> <!-- Nhiều người cho rằng uống thuốc Đông y không sợ phản ứng phụ vì thuốc chế biến từ thực vật (cây cỏ, hoa trái) hoặc động vật có trong tự nhiên. Có người lại uống thuốc theo sự mách bảo hoặc kinh nghiệm của người khác. --> <!-- END DESCRIPTION --> <!-- BODY -->\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: small;\">Nhất là khi sử dụng thuốc bổ Đông y là dùng bạt mạng, nghĩ  rằng “không bổ âm cũng bổ dương” mà điển hình là dùng các thang thuốc bổ  ngâm rượu ai uống cũng “tốt”, nam nữ, già trẻ đều uống được... và rất  “bổ”. Nghĩ như thế, hiểu thế thật sai lầm và nguy hiểm.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\"><br />Trước hết dù là thảo dược hay động vật  hoặc sa khoáng trong tự nhiên nhưng trong các vị thuốc đều có thể gây  độc cho con người khi đưa vào cơ thể, vì bản thân chúng có chứa các chất  độc hại như: Ba đậu, ô đầu, mã tiền, ban miêu, bọ cạp, ngưu hoàng,  khinh phấn, chu sa, thần sa... Ngoài ra còn phải kể đến khi phối ngẫu  với nhau các vị thuốc nếu đứng một mình thì không độc hại, lại trở thành  độc hại do chúng phản nhau như lê lô với nhân sâm, huyền sâm hoặc chúng  kỵ nhau như nhân sâm với ngũ linh chi. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Theo y học cổ truyền, thuốc (dược vật) luôn tồn tại tứ khí  (tứ tính) là hàn, lương, ôn, nhiệt để nói lên mức độc nóng (nhiệt) lạnh  (hàn) của chúng. Còn bệnh tật của con người cũng được phân làm bệnh  nhiệt hay hàn và cơ địa con người cũng vậy thuộc nhiệt hay hàn. Về  nguyên lý chữa bệnh thì bệnh hoặc cơ địa nhiệt thì phải dùng thuốc có  tính hàn để lặp lại cân bằng âm dương và ngược lại. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Nếu dùng sai, dùng nhầm thì sẽ nguy hiểm cho người bệnh. Ví  như một người tỳ vị hư hàn (lạnh) mà cho uống nhâm sâm là một vị thuốc  bổ, quý hiếm nhưng có tính hàn thì bệnh chẳng khỏi, người chẳng khỏe lên  mà còn nguy hiểm. Chả thế mà y văn cổ có dặn: “phúc thống” (đau bụng),  phục (uống) nhâm sâm tắc tử. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Các bậc danh y ngày xưa đã tổng kết và căn dặn lại như một  nguyên lý bất di, bất dịch là “Nhiệt ngộ nhiệt tắc cuồng” (người có bệnh  nhiệt hoặc cơ địa nhiệt dùng thuốc nhiệt thì phát điên cuồng) “Hàn ngộ  hàn tắc tử” (người có bệnh hàn hoặc cơ địa hàn mà dùng thuốc hàn có thể  dẫn tới chết người). </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in  0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Một dẫn chứng  đơn giản nếu bị cảm mạo phong hàn thường sợ lạnh, không có mồ hôi, ngạt  mũi... thì phải dùng phép phát tán phong hàn (tân ôn giải biểu) tức phải  dùng các vị thuốc cay nóng như ma hoàng, quế chi, tía tô, hương phụ và  xông bằng các lá có tinh dầu như cam, bưởi, sả, kinh giới, tía tô để ra  mồ hôi thì sẽ khỏi bệnh. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Ngược lại nếu bị cảm mạo do phong nhiệt thì nặng đầu, miệng  khô, ra nhiều mồ hôi thì phải dùng phép tân lương giải biểu với các vị  thuốc mát như liên kiều, bạc hà, lá dâu, rễ sậy, thạch cao. Trong trường  hợp này dùng các vị thuốc cay nóng, ra mồ hôi như trường hợp cảm mạo  phong hàn thì bệnh chẳng những không khỏi mà còn gây nguy hiểm cho bệnh  nhân. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Theo lý luận, việc sử dụng thuốc Đông y muốn  đạt hiệu quả chữa bệnh và bảo đảm an toàn rất sâu sắc, uyên thâm. Theo  đó việc dùng thuốc, chữa bệnh phải theo “Nhân thời, nhân địa, nhân bệnh  chế nghi” có nghĩa là đối với các chứng bệnh, cần căn cứ sự khác nhau về  mùa, khu vực, thể chất, lứa tuổi, giới tính... mà quyết định phương  pháp trị liệu và dùng thuốc. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Về mùa, tức là căn cứ sự biến đổi khí hậu 4 mùa có ảnh  hưởng nhất định tới sinh lý. Khi chữa bệnh, dùng thuốc phải chú ý tới  yếu tố này. Ví dụ, mùa hạ tấu lý (lỗ chân lông) mở rộng không nên dùng  nhiều vị thuốc có tính tân ôn (cay âm). Mùa đông tấu lý co hại, có thể  dùng nhiều hơn các vị thuốc cay ấm (tân ôn). </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Về khu vực, căn cứ vào đặc điểm môi trường của địa phương  mà chọn phương pháp và dược vật thích hợp. Ví dụ: Phương Nam  nóng bức, ẩm thấp có nhiều chứng bệnh thấp nhiệt, thì nên chọn phép  thanh nhiệt hóa thấp làm chính. Phương Bắc lạnh lẽo và khô ráo, có nhiều  chứng bệnh phong hàn táo thì nên lấy phép chữa và dược vật có tính ôn  nhiệt, nhuận táo là chủ yếu. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Về người, phải căn cứ vào lứa tuổi, giới tính, thể chất,  thói quen sinh hoạt của người bệnh mà chọn phương pháp và dược vật thích  hợp. Ví dụ người già khí huyết suy kiệt, trẻ em tạng phủ mềm yếu, sợ  đắng, cay, nam nữ sinh lý và thói quen khác nhau đều bị các chứng bệnh  như nhau không thể dùng phép chữa, bài thuốc, vị thuốc, liều lượng như  nhau mà phải “tùy cơ ứng biến”. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\">Đối  với người bệnh khi dùng thuốc Đông y xin đừng chủ quan, tùy tiện hoặc  nghe theo sự mách bảo của người khác mà phải đến khám, bắt mạch, mua  thuốc theo đơn ở các phòng chẩn trị y học cổ truyền được phép hành nghề  để tránh “tiền mất tật mang”.</span></p>', '1', '1', '0', '2', '2010-03-29 08:28:23', '62', '', '2010-03-29 08:29:50', '62', '0', '0000-00-00 00:00:00', '2010-03-29 08:28:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '10', '', '', '0', '16', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('22', 'Yêu cầu rà soát ATM trên toàn quốc', 'yeu-cu-ra-soat-atm-tren-toan-quc', '', '<p class=\"Lead\">Ngân hàng Nhà nước sẽ có công văn đề nghị toàn ngành vào  cuộc rà soát hệ thống máy rút tiền tự động sau sự cố điện giật gây chết  người tại TP HCM hôm 1/4.<a class=\"Lead\" href=\"http://vnexpress.net/GL/Xa-hoi/2010/04/3BA1A5BD/\"></a></p>\r\n<p class=\"Normal\"> </p>\r\n', '\r\n<p>Trao đổi với <em>VnExpress.net</em> sáng nay, Vụ  trưởng Vụ Thanh toán (Ngân hàng Nhà nước) Bùi Quang Tiên cho biết Ngân  hàng Nhà nước đang soạn thảo công văn yêu cầu các ngân hàng, các tổ chức  phát hành và thanh toán thẻ khẩn trương kiểm tra lại toàn bộ hệ thống  ATM của mình trên toàn quốc, nhằm đảm bảo an toàn cho người sử dụng. Các  ngân hàng thương mại sẽ phải báo cáo kết quả rà soát và xử lý về Ngân  hàng Nhà nước. Giám đốc các chi nhánh Ngân hàng Nhà nước tỉnh, thành phố  sẽ là đầu mối đôn đốc và giám sát việc này.</p>\r\n<p> </p>\r\n<table style=\"width: 1px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/36/atm1.jpg\" border=\"1\" alt=\"ATM nơi bé Uyên bị điện giật.\" width=\"480\" height=\"368\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">ATM nơi bé Uyên bị điện giật. Ảnh: <em>An Nhơn</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Yêu cầu của Ngân hàng Nhà nước được đưa ra 4 ngày sau  cái chết của một em học sinh lớp 4 tại khu vực buồng ATM Ngân hàng Nông  nghiệp và Phát triển nông thôn Agribank (đường Nguyễn Thái Bình, quận 1,  TP HCM). Chiều 1/4 sau khi tan học, em Châu Linh Uyên đứng chơi cạnh  ATM này thì bất ngờ co rút, bất tỉnh. Chỗ Uyên bị nạn có một sợi dây  diện móc nối từ buồng ATM ra bên ngoài. Nạn nhân được xác định chết do  điện giật.</p>\r\n<p class=\"Normal\">Điện lực TP HCM cũng đã kiểm tra toàn bộ 866 ATM của  tất cả các ngân hàng trên địa bàn thành phố. Kết quả cho thấy hơn 60 máy  bị rò điện, đa phần là do nguồn điện không chuẩn, không đóng tiếp điện  và đi dây không đúng kỹ thuật, đấu nối dây bất cẩn... Các máy này đã bị  ngắt nguồn điện và cô lập, chờ khắc phục.</p>\r\n<p class=\"Normal\">Đây là lần đầu tiên xảy ra sự cố chết người vì điện  giật ở khu vực ATM. Tuy nhiên trước đó, nhiều khách hàng phản ánh bị tê  tê, giật điện nhẹ khi rút tiền tại máy, đặc biệt những hôm trời mưa, ẩm  ướt.</p>', '-2', '3', '0', '279', '2010-04-05 04:06:25', '62', 'xx', '2010-04-14 07:00:13', '62', '0', '0000-00-00 00:00:00', '2010-04-05 04:06:25', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tkh=bài thuốc tân ôn giải biểu\nbt_pltb=làm đẹp,ngoại khoa,ung thư\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=xxxxx\nreadmore=', '7', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('4', 'Tạm ngừng sử dụng văcxin Rotarix', 'tm-ngng-s-dng-vcxin-rotarix', '', '<p>Cục Quản lý dược (Bộ Y tế) vừa có văn bản yêu cầu tạm ngừng sử dụng  văcxin Rotarix do Công ty GlaxoSmithKline sản xuất, để đảm bảo an toàn  cho người sử dụng. Trong khi đó, WHO không khuyến cáo thay đổi cách sử  dụng văcxin này.</p>\r\n<p>\r\n', '\r\n</p>\r\n<table style=\"width: 1px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A2/4D/va11.jpg\" border=\"1\" width=\"210\" height=\"164\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Văcxin Rotarix phòng tiêu chảy do virus rota. Ảnh: <em>Standford.  edu.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Cục Quản lý dược yêu cầu Sở y tế, Trung tâm y tế dự  phòng các tỉnh, thành trực thuộc Trung ương thông báo cho các cơ sở kinh  doanh, sử dụng văcxin, đồng thời thực hiện việc bảo quản theo đúng điều  kiện quy định ghi trên nhãn và kiểm tra, giám sát các đơn vị thực hiện  thông báo này.</p>\r\n<p class=\"Normal\">Ngoài ra, Cục cũng yêu cầu văn phòng đại diện Công ty  GlaxoSmithKline tại Việt Nam phối hợp với nhà nhập khẩu, nhà phân phối  gửi thông báo tạm ngừng sử dụng tới những nơi phân phối, sử dụng văcxin  Rotarix do công ty sản xuất. Đồng thời, báo cáo tình hình nhập khẩu và  quá trình phân phối văcxin trên về Cục Quản lý Dược trước ngày  31/3/2010.</p>\r\n<p class=\"Normal\">Trước đó, văn phòng đại diện GlaxoSmithKline Việt Nam  đã thông báo về việc phát hiện ADN của virus lợn PCV-1 trong văcxin  Rotarix. Các thành phần này không được công bố trong hồ sơ đăng ký tại  Bộ Y tế.</p>\r\n<p class=\"Normal\">Văcxin Rorarix phòng tiêu chảy do rotavirus, dành cho  trẻ em từ 6 tuần tuổi đến dưới 6 tháng tuổi. Văcxin có mặt tại thị  trường Việt Nam được 2 năm, chủ yếu được tiêm dịch vụ tại các thành phố  lớn, khu vực nông thôn hầu như không có.</p>\r\n<p class=\"Normal\"><strong><span style=\"color: #4f4f4f;\">Trong khi đó, theo thông  báo trên trang web chính thức ngày 22/3, Tổ chức Y tế thế giới (WHO)  khuyến khích tất cả các quốc gia đang sử dụng văcxin cân nhắc kỹ về  những lợi ích đáng kể của việc tiếp tục sử dụng văcxin</span> <span style=\"color: #4f4f4f;\">này.</span></strong></p>\r\n<p class=\"Normal\">WHO cũng đồng tình với quan điểm của Cục Quản lý Thực  phẩm và Dược phẩm Mỹ (FDA) và Cục quản lý Dược phẩm châu Âu (EMA) rằng  những phát hiện này không hiện diện bất kỳ nguy cơ nào đối với sức khỏe  cộng đồng.</p>\r\n<p class=\"Normal\">Hơn nữa, rotavirus là nguyên nhân thường gặp nhất gây  tiêu chảy cấp nặng ở trẻ nhỏ trên khắp thế giới, với ước tính 527.000  trường hợp tử vong ở trẻ dưới 5 tuổi mỗi năm. Hầu hết những trẻ này sống  ở các quốc gia có thu nhập thấp.</p>\r\n<p class=\"Normal\">Vì thế, WHO không khuyến cáo bất kỳ sự thay đổi nào về  cách thức sử dụng Rotarix. Văcxin này đã được chứng nhận chất lượng bởi  WHO và tình trạng chứng nhận chất lượng vẫn không đổi.</p>\r\n<p>WHO sẽ tiếp tục làm việc sát với FDA, EMA và các cơ  quan quản lý đăng ký một cách khẩn trương để đánh giá thông tin thêm mà  nhà sản xuất sẽ cung cấp.</p>', '-2', '0', '0', '0', '2010-03-29 08:33:17', '62', '', '2010-04-22 04:14:57', '62', '0', '0000-00-00 00:00:00', '2010-03-29 08:33:17', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('5', 'Tăng gấp đôi mức phạt giao thông tại Hà Nội, TP HCM', 'tng-gp-oi-mc-pht-giao-thong-ti-ha-ni-tp-hcm', '', '<p>Chính phủ vừa đồng ý cho Hà Nội và TP HCM tăng mức xử phạt vi phạm giao  thông 40-200% so với mức chung của cả nước. Cụ thể, người đi xe máy vượt  đèn đỏ sẽ bị phạt đến 500.000 đồng và tước bằng lái 30 ngày.\r\n', '\r\n</p>\r\n<p class=\"Normal\">Tại buổi họp báo thường kỳ của Văn phòng Chính phủ  chiều 1/4, Thứ trưởng Bộ Giao thông Vận tải Nguyễn Hồng Trường cho biết,  mức phạt mới sẽ được thực hiện thí điểm trong 36 tháng, kể từ quý 2 năm  nay. Sau khi kết thúc thí điểm, Bộ Giao thông Vận tải, Bộ Công an, UBND  Hà Nội, TP HCM sẽ tổng hợp, đánh giá và đề xuất Chính phủ chủ trương  thực hiện tiếp theo.</p>\r\n<p class=\"Normal\">Theo dự thảo Nghị định Quy định xử phạt vi phạm hành  chính trong lĩnh vực giao thông đường bộ, tại Hà Nội, TP HCM người đi xe  máy vượt đèn đỏ, không chấp hành hiệu lệnh, đi vào đường cấm, đi ngược  chiều vào đường một chiều... sẽ bị phạt 300.000-500.000 đồng và tước  bằng lái 30 ngày (mức chung là 100.000-400.000 đồng).</p>\r\n<p class=\"Normal\">Đối với ôtô, các hành vi dừng đỗ, quay đầu xe không  đúng quy định bị phạt 600.000-1 triệu đồng (tăng gấp đôi so với mức  chung). Hành vi vượt đèn đỏ, lái ôtô khi có nồng độ cồn vượt mức cho  phép sẽ bị xử phạt 1-1,4 triệu đồng (mức chung là 600.000-800.000 đồng).  Hành vi dừng đỗ, quay đầu xe gây ùn tắc giao thông sẽ bị phạt đến 2  triệu đồng.</p>\r\n<p class=\"Normal\">Dự thảo cũng tăng mức xử phạt đối với hành vi đi bộ  qua dải phân cách, mang vác cồng kềnh gây cản trở giao thông. Mức phạt  cao nhất là 120.000 đồng.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/AF/99.jpg\" border=\"1\" width=\"450\" height=\"350\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Người vi phạm giao thông ở Hà Nội sẽ phải chịu mức  phạt cao. Ảnh: <em>Hoàng Hà.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Trước đó, dự thảo Nghị định Quy định xử phạt vi phạm  hành chính trong lĩnh vực giao thông đường bộ đã nhận được nhiều ý kiến  trái chiều. Nhiều ý kiến cho rằng, đây là giải pháp hữu hiệu nhằm khắc  phục ùn tắc giao thông tại các thành phố lớn. Tuy nhiên, cũng có quan  điểm là Hà Nội và TP HCM hiện còn nhiều người thu nhập thấp, nếu áp dụng  mức xử phạt trên sẽ gây sự bất bình đẳng, không khả thi.</p>\r\n<p> </p>', '1', '1', '0', '1', '2010-04-02 04:05:26', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:05:26', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '6', '', '', '0', '35', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('6', 'Những chiêu \'rút ruột\' bệnh nhân của bác sĩ', 'nhng-chieu-rut-rut-bnh-nhan-ca-bac-s', '', '<p>Đưa mẹ đi khám thoát vị đĩa đệm tại một phòng mạch tư ở gần Bệnh viện  103, chị Nhu (Phúc Thọ, Hà Nội) ngẩn người khi bác sĩ kê thuốc tiêm rồi  dặn \"phải ra đúng nhà thuốc X, ngay đầu ngõ mua về đây tôi mới tiêm  cho\".</p>\r\n', '\r\n<p class=\"Normal\">Sau này, chị Nhu biết thêm, ai đến khám cũng được vị  bác sĩ này cho loại thuốc tiêm đó và dặn mua ở đúng nhà thuốc như vậy.  Một lần, chị cầm đơn thuốc rồi mua ngay ở một đại lý trên đường Ngọc  Khánh thì thấy giá rẻ hơn rất nhiều.</p>\r\n<p class=\"Normal\">Không chỉ chị Nhu, rất nhiều người bệnh mất tiền oan  khi bác sĩ \"kết thân\" với nhà thuốc hay các hãng dược, thực phẩm chức  năng.</p>\r\n<p class=\"normal\">Đưa con gái đi khám ở nhà riêng một bác sĩ da liễu  quân đội, chị Mai, ở Hà Đông, Hà Nội được bác sĩ thăm hỏi rất nhiệt  tình, vì thế, chị quyết định bám trụ ở đây cả tháng trời để điều trị cho  con. Có lần được bác sĩ nhắc khéo là mua thuốc \"Noni\" để bồi bổ cơ thể  cho cháu, dù không biết thực hư tác dụng thế nào, nhưng chị Mai vẫn phải  bấm bụng mua một chai có giá đến 800.000 đồng, chỉ vì \"sợ bác sĩ tự ái,  không chữa cho con mình nữa\".</p>\r\n<p class=\"normal\">Uống cả tháng, thấy con chẳng có gì khá hơn, mà bác sĩ  lại nhắc mua tiếp, chị Mai đành lấy cớ \"cháu uống chưa hết\". Mãi về  sau, chị mới biết vị bác sĩ này là đại lý bán hàng đa cấp cho thực phẩm  chức năng Noni. Không chỉ có chị, nhiều bệnh nhân khác đến chữa ở nhà  riêng của ông đều nhận được gợi ý như vậy, và đa số họ đành mua để chiều  lòng người chữa bệnh cho thân nhân mình.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/91/vien1.jpg\" border=\"1\" alt=\"Ảnh minh họa: Hoàng Hà.\" width=\"450\" height=\"299\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Đi khám bệnh, người dân chỉ mong được bác sĩ tận tình  và kê đơn thuốc chính xác, công tâm. Ảnh minh họa: <em>Hoàng Hà.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"normal\">Không trực tiếp như vậy, nhiều bác sĩ khác gián tiếp  \"câu\" người bệnh bằng cách liên kết với một hãng dược \"ruột\" nào đó, và  chỉ kê thuốc của riêng hãng ấy, trong khi, nhiều trường hợp bệnh nhân có  thể dùng thuốc khác, thậm chí chỉ cần những thuốc nhẹ, rẻ tiền hơn là  khỏi.</p>\r\n<p class=\"normal\">Chị Loan (Thanh Xuân, Hà Nội) từng đưa con trai 2 tuổi  bị viêm phế quản đến chữa ở nhà riêng một bác sĩ nhi gần khu Trung Hòa,  Nhân Chính, đã tấm tắc vì \"đơn thuốc\" của bác sĩ hiệu nghiệm quá, chỉ  một ngày con chị đã thấy lui bệnh. Thuốc con chị được kê có một loại  kháng sinh rất lạ, đắt tiền, được cô phụ việc bán ngay tại chỗ.</p>\r\n<p class=\"normal\">Tuy nhiên, vài ngày sau chị giật mình khi thấy đơn  thuốc của hai đứa cháu cũng có loại thuốc y chang. Khi đưa bé đến khám  lại tại một bác sĩ quen gần nhà, chị được người này cho biết loại \"kháng  sinh lạ\" kia thực chất là kháng sinh thế hệ mới, ít được dùng, thường  là bác sĩ kê cho một hãng thuốc quen nào đó. Trường hợp con chị chỉ cần  dùng các loại kháng sinh thông thường là đủ chữa bệnh. Một vài lần sau  có việc tình cờ qua phòng khám này, chị vẫn thấy đơn thuốc y nguyên được  bác sĩ áp dụng cho các bệnh nhân khác.</p>\r\n<p class=\"normal\">Còn anh Thanh (khu đô thị mới Pháp Vân, Hà Nội) cho  biết, mấy lần con anh bị ho, đưa lên khám một bác sĩ nhi có tiếng ở phố  Đội Cấn thì đều được cho kháng sinh Cefimed hoặc nặng hơn thì Zithromax  (cả hai đều là thuốc thế hệ mới, khá đắt tiền) và thường là mua ngay tại  chỗ. Có lần, bác sĩ này kê thêm một loại cốm để tăng miễn dịch. Thấy  mỗi gói thuốc bổ nhỏ xíu tới 6.000 đồng, chị không đành lấy tại phòng  khám mà nghĩ về gần nhà cho rẻ, ai ngờ đi khắp các cửa hàng không có,  đành quay lại phòng khám để lấy. Khi ấy chị mới biết đó chỉ là thuốc  nội, do một công ty ít tên tuổi sản xuất.</p>\r\n<p class=\"normal\">Không chỉ ưu tiên kê toa những loại thuốc mình được  nhận hoa hồng, nhiều bác sĩ còn có những chiêu \"bắt\" bệnh nhân mua thuốc  tại các nhà thuốc thân quen của mình.</p>\r\n<p class=\"normal\">Chị Duyên (ở Ngã Tư Sở) khi đi khám phụ khoa ở một  bệnh viện phụ sản lớn tại Hà Nội được bác sĩ kê đơn, và dặn chị ra nhà  thuốc ở cổng viện mua, sau đó quay lại mới hướng dẫn cách sử dụng.</p>\r\n<p class=\"normal\">\"Tôi thấy lạ, nhưng ngại không dám hỏi lại nên làm  đúng theo lời dặn. Quay lại bác sĩ ấy chỉ ghi thêm là dùng ngày mấy lần,  mỗi lần mấy viên, trong khi đáng lý phải ghi điều đó ngay trong lúc kê  đơn. Lúc về hỏi lại bà chị họ bán thuốc, tôi mới biết mình bị mua đắt  hơn đáng kể\", chị Duyên nói.</p>\r\n<p class=\"Normal\">Ở vào tình cảnh tương tự chị Duyên, nhưng anh Bình  (huyện Đông Anh) còn ăn mắng vì đã dám \"cãi lời\" bác sĩ. Đi khám bệnh  bazedo tại một bệnh viện nội thành có tiếng, anh Bình được một nam bác  sĩ kê đơn và bảo xuống nhà thuốc bệnh viện để mua, mang lên ông sẽ dặn  cách dùng.</p>\r\n<p class=\"Normal\">Nghe theo một lần, biết là mua phải thuốc đắt, nên lần  sau đó anh Bình rút kinh nghiệm, đề nghị vị bác sĩ này cứ ghi cách uống  vào đơn, để anh mua thuốc ở đại lý gần nhà cho tiện. Nhưng bác sĩ không  đồng ý, nói rằng nếu mua thuốc ở các đại lý bên ngoài thì sẽ không đủ  chất lượng, bệnh sẽ không giảm, ông sẽ yêu cầu anh phải nhập viện. Trước  thái độ kiên quyết của anh Bình, vị bác sĩ nọ giật lại tờ đơn, kê lại  vào sổ khám bệnh và tuyên bố “không chịu tránh nhiệm”, và rằng “anh sẽ  phải nhập viện”…</p>\r\n<p class=\"normal\">\"Khi bác sĩ bị chi phối bởi các hãng dược trong quá  trình kê đơn, tất nhiên người bệnh phải chịu thiệt rồi\", một bác sĩ Bệnh  viện Bạch Mai thổ lộ.</p>\r\n<p class=\"normal\">Ông cho biết, mình từng khám chữa cho nhiều người sinh  thêm bệnh vì tự ý dùng thuốc hay nhờ người bán thuốc \"kê đơn\" mà không  chịu đi khám và tư vấn bác sĩ. Lý do có nhiều, vì người dân mình ngại  cảnh chen lấn ở bệnh viện, chủ quan với bệnh tật, thiếu kiến thức về sử  dụng thuốc... Nhưng một nguyên nhân khác, ít ai nói đến, đó là vì niềm  tin của họ vào bác sĩ giảm đi sau vài lần nhận được các đơn vô số thuốc  với số tiền ngất ngưởng mà hiệu quả chẳng thấy đâu của những bác sĩ được  \"lót tay\".</p>\r\n<p class=\"normal\">\"Khi nhận hoa hồng từ các hãng dược hay nhà thuốc thì  kê càng nhiều thuốc, loại càng đắt tiền, bác sĩ càng được lợi, và gánh  nặng thì đổ lên vai người bệnh khiến nhiều khi họ không thể kham nổi nên  đành \'bỏ\' bác sĩ\", ông tâm sự.</p>\r\n<p class=\"normal\">Từ năm 2003, để hạn chế tiêu cực bác sĩ nhận hoa hồng  từ các hãng dược, Bộ Y tế đã quy định rõ: Khi kê toa, phải viết tên  thuốc theo tên quốc tế (tên chất trị liệu chứa trong thuốc) với thuốc có  một thành phần. Tuy nhiên, bác sĩ ở các bệnh viện, chứ chưa nói đến các  cơ sở tư nhân, đều ít thực hiện quy định này, hầu hết đều kê thẳng tên  thương mại của một loại thuốc nào đó.</p>\r\n<p class=\"normal\">\"Đây là quy định có ý nghĩa tốt, nhằm hạn chế việc bác  sĩ kê các tên thuốc cụ thể mà mình được nhận phần trăm, nhưng đó không  phải là biện pháp tích cực bởi nó có thể tạo điều kiện cho người bán  thuốc trục lợi, bán cho người bệnh những thuốc họ được nhận lợi nhuận  cao\", ông Hoàng Đình Ngọc, trưởng phòng kế hoạch tổng hợp, Bệnh viện Tai  Mũi Họng Trung ương bộc bạch.</p>\r\n<p class=\"normal\">Ông lý giải thêm, nếu bác sĩ kê đơn mà chỉ ghi tên gốc  thì người bệnh lại phải nhờ nhân viên bán thuốc tư vấn loại biệt dược  nên mua, bởi đâu phải ai cũng hiểu biết xem cùng là gốc thuốc ấy nhưng  thuốc nào đắt, thuốc nào rẻ, cái nào tốt hơn.</p>\r\n<p class=\"normal\">Ông Ngọc cho biết, tình trạng bác sĩ \"bắt tay\" với  hãng dược đã có từ rất lâu và bệnh viện nào cũng biết rõ. Ở Bệnh viện  Tai Mũi Họng, để hạn chế tình trạng này, bệnh viện đã cấm trình dược  viên vào các phòng khám bệnh và nếu bác sĩ nào bị phát hiện tiếp trình  dược viên trong phòng sẽ bị kỷ luật. Tuy nhiên, ông cũng thổ lộ, điều  quan trọng là đánh vào lòng tự trọng của người thầy thuốc thôi, chứ \"ở  cơ quan còn cấm được, nếu họ \'bắt tay\' nhau tại nhà hay chỗ khác thì ai  hay và xử lý sao được\".</p>\r\n<p class=\"normal\">Theo ông, dù trong hoàn cảnh nào, cuối cùng người khổ  nhất vẫn là bệnh nhân. Ngay cả việc các bác sĩ bị phanh phui về hành vi  thiếu lương tâm và trách nhiệm khi kê đơn thuốc thì không chỉ người làm  nghề y bị mất uy tín mà chính người bệnh bị thiệt. \"Khi đó, họ hoang  mang, mất niềm tin vào đội ngũ thầy thuốc - trong đó có cả những người  thực sự tận tâm với nghề và bệnh nhân - lại đi nhờ những người không có  chuyên môn chữa, kê đơn thì rất tai hại\", ông chia sẻ.</p>\r\n<p> </p>', '1', '1', '0', '3', '2010-04-02 04:08:24', '62', '', '2010-04-05 09:26:55', '62', '62', '2010-05-02 09:32:02', '2010-04-02 04:08:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '8', 'bac si, pháp luật', '', '0', '10', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('7', 'Đi rừng bị vắt chui vào phổi', 'i-rng-b-vt-chui-vao-phi', '', '<p>Các bác sĩ Khoa Tai - Mũi - Họng, Bệnh viện hữu nghị Việt Nam - Cu Ba  (Quảng Bình) vừa gắp thành công một con vắt nằm trong phổi của người đàn  ông 42 tuổi ở thành phố Đồng Hới bằng phương pháp nội soi.</p>\r\n', '\r\n<p class=\"Normal\">Cách đây khoảng 3 tháng, khi đi rừng khai thác lâm  sản, người đàn ông này bị một con vắt bé tí chui vào miệng. Sau một thời  gian no nê hút máu, con vắt này đã lớn và dài gần 10 cm, gây ra hiện  tượng ho ra máu, nhiều đờm và khó thở cho bệnh nhân.</p>\r\n<p class=\"Normal\">Theo các bác sĩ, khu vực núi rừng miền trung, các loại  côn trùng như vắt, đỉa, sên rất nhiều, nhiều người dân khi đi rừng, lúc  uống nước ở các khe suối đã bị những loài côn trùng này chui vào mũi.  Ban đầu chúng thường nhỏ xúi, sau một thời gian hút máu, chúng phát  triển rất nhanh và gây nên những hiện tượng như khó thở, nôn ọe, ho ra  máu, nhiều đờm.</p>\r\n<p class=\"Normal\">Vì vậy, các bác sĩ khuyến cáo người dân những khu vực  này khi đi rừng cần trang bị bảo hộ lao động như mũ, nón, găng tay, khẩu  trang, và không nên uống nước suối. Khi thấy hiện tượng lạ như chảy máu  mũi, ho ra máu liên tục, khó thở,… cần sớm đến bệnh viện để kiểm tra.</p>\r\n<p class=\"Normal\">Trước đây, các bác sĩ ở Thanh Hóa, Nghệ An cũng đã  nhiều lần thực hiện việc thành công các ca phẫu thuật, gắp nhiều con  đỉa, vắt ra khỏi phổi, mũi của bệnh nhân.</p>\r\n<p> </p>', '1', '1', '0', '3', '2010-04-02 04:09:18', '62', '', '2010-04-05 09:26:41', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:09:18', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '7', '', 'bac si, di rung', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('8', 'Khối u to như cái thúng trong bụng bà già', 'khi-u-to-nh-cai-thung-trong-bng-ba-gia', '', '<p>Hôm qua, các bác sĩ khoa Ngoại phụ khoa, Bệnh viện K đã phẫu thuật lấy  ra khối u buồng trứng nặng 19kg cùng với 2,5 lít dịch trong bụng của một  phụ nữ 57 tuổi. \r\n', '\r\n</p>\r\n<p class=\"Normal\">Bệnh nhân là bà Mai Thị Kết, ở xã Nga Hải, huyện Nga  Sơn, Thanh Hóa.</p>\r\n<p class=\"Normal\">Theo bác sĩ Nguyễn Văn Tuyên, trưởng khoa Ngoại phụ  khoa, Bệnh viện K, người trực tiếp mổ cho bệnh nhân thì đây là một khối u  to hiếm gặp. Trước đó, bệnh viện từng phẫu thuật cho một bệnh nhân khác  có khối u buồng trứng lên tới 27 kg.</p>\r\n<p class=\"Normal\">Theo ông, đây nhiều khả năng là một khối u lành tính  hoặc khối u hỗn hợp lành và ác tính. Để biết kết quả chính xác phải đợi  kết quả làm xét nghiệm. Nếu là u ác, bệnh nhân sẽ tiếp tục được điều trị  hóa chất.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/62/benh1.jpg\" border=\"1\" width=\"344\" height=\"461\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Bà Kết trước khi mổ với khối u to như cái thúng trước  bụng. Ảnh: Do bệnh viện cung cấp.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Theo lời kể của bà Ma Thị Nhiệm, em gái bà Kết thì  cách đây 3 năm, bà Kết thấy bụng tưng tức, ăn vào càng khó chịu nên đã  đã đi khám ở Bệnh viện huyện Nga Sơn. Các bác sĩ chẩn đoán bà bị u nang  buồng trứng và tiến hành phẫu thuật lấy khối u vào tháng 6/2007. Tuy  nhiên, sau khi mổ được vài tháng, bụng bà Kết ngày càng to ra. Không  những thế, bà còn hay bị đau bụng và ra rất nhiều dịch, phải liên tục  đóng bỉm.</p>\r\n<p class=\"Normal\">Năm 2008, bà Kết được người nhà đưa lên Bệnh viện K  khám và cũng được chẩn đoán là có khối u buồng trứng khá to, hẹn khám  lại. Tuy nhiên, người bệnh phần vì kinh tế khó khăn, lại nghĩ bệnh mình  đã ở giai đoạn cuối, không thể chữa trị nên không lên khám lại nữa.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/62/u1.jpg\" border=\"1\" alt=\"Ảnh: Do bệnh viện cung cấp.\" width=\"400\" height=\"293\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Ảnh: Do bệnh viện cung cấp.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Trong thời gian đó, bụng mỗi ngày một to khiến bà Kết  khó thở, khó ngủ. Mỗi ngày bà chỉ ngủ được khoảng 1-2 giờ. Việc đi lại  cũng rất vất vả và bà hầu như chẳng đi đâu vì sợ làm hàng xóm hoảng hồn  nếu nhìn thấy bộ dạng của mình.</p>\r\n<p class=\"Normal\">Em gái bà Kết cho biết, người bệnh thấy khó chịu trong  người quá, cũng nhờ con đèo xuống bệnh viện huyện khám lại thì được các  bác sĩ cho biết bệnh tình của mình đã ở giai đoạn cuối, khuyên bà nên  sống vui vẻ thời gian còn lại, thích ăn gì, uống gì thì bảo con cháu mua  cho.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/62/mo1.jpg\" border=\"1\" alt=\"Ảnh: MT.\" width=\"400\" height=\"266\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">\"Chúng tôi chưa từng nhìn thấy ai như bà ấy. Bụng to  như cái thúng, chân tay, mặt thì tong teo, nhưng lại lạc quan, vui tính  lạ, vẫn nói cười vô tư lắm\", những người nhà bệnh nhân rôm rả bàn tán về  trường hợp hy hữu của bà Kết. Ảnh: <em>MT.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Sau lần khám này, bà Kết cũng như cả gia đình đã xác  định tâm lý chờ chết. Bà trở nên hoạt bát, vui vẻ, ăn uống cũng ngon  miệng hơn. 3 tuần trước, thấy sức khỏe của bà tốt hơn, người thân lại  động viên bà lên Hà Nội khám lần nữa. Tại đây, các bác sĩ viện K đã  khám, chụp CT để chẩn đoán chỉnh xác khối u và quyết định sẽ phẫu thuật.</p>\r\n<p class=\"Normal\">Hiện tại, bà Kết đã hồi tỉnh và đang được hồi sức tích  cực. Tiến sĩ Nguyễn Thế Trí, trưởng khoa Phẫu thuật gây mê hồi sức,  Bệnh viện K cho biết, do khối u quá lớn nên khi phẫu thuật bệnh nhân mất  rất nhiều máu (phải truyền tới 4 lít), sau đó lại bị rối loạn đông máu.  Ngoài ra, khối u chèn ép đã làm hỏng một thận bên phải. Việc lấy khối u  nặng bằng gần một nửa trọng lượng cơ thể bệnh nhân khiến thay đổi áp  lực rất lớn trong cơ thể, gây nên tình trạng tràn dịch màng phổi, tràn  dịch màng tim.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/62/mo2.jpg\" border=\"1\" alt=\"Ảnh: MT.\" width=\"400\" height=\"282\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Bà Kết đang được hồi sức tích cực tại Bệnh viện K sáng  nay. Ảnh: <em>MT.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">\"Phần nặng nề nhất đã được xử lý rồi nhưng nhiều biến  chứng vẫn có thể xảy ra. Chúng tôi vẫn rất hồi hộp lo lắng nhưng cũng đã  tìm mọi cách xử trí và dự phòng các tình huống xấu nên tin rằng bệnh  nhân sẽ qua khỏi\", bác sĩ Trí chia sẻ.</p>\r\n<p> </p>', '1', '1', '0', '4', '2010-04-02 04:10:13', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:10:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '6', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('9', 'Bé gái 13 tuổi bị cháy trong đống rơm', 'be-gai-13-tui-b-chay-trong-ng-rm', '', '<p>Đang sạ lúa trên mảnh ruộng cạnh nhà, anh Ngô Văn Tâm nhìn thấy một cô  bé bị cháy đen chạy về phía mình cầu cứu. Sau vài phút định thần, người  nông dân 38 tuổi (Long An) mới nhận ra đó chính là con gái - bé Hiệp.\r\n', '\r\n</p>\r\n<p class=\"Normal\">Chiều 31/3, tức 9 ngày sau khi xảy ra vụ việc, tại  khoa Phỏng - Chỉnh hình, Bệnh viện Nhi Đồng 1, TP HCM, dù đã qua cơn  nguy kịch song toàn thân bé Ngô Thị Bé Hiệp vẫn trắng toát bông băng do  bỏng nặng. Trên gương mặt cháy đen, chiếc mũi bé gần như bị tiêu hủy,  chỉ có đôi mắt đen nháy thì vẫn chớp chớp mở to mỗi khi có người đến  thăm.</p>\r\n<p class=\"Normal\">Trao đổi với <em>VnExpress.net</em>, người bố nói  không bao giờ quên cảnh tượng kinh hoàng của ngày hôm ấy, khi nhìn thấy  đứa con gái nhỏ chạy trong tình trạng đen như than, nhiều nơi trên cơ  thể vẫn còn khét mùi cháy.</p>\r\n<p class=\"Normal\">\"Trỏ tay về phía ngọn khói trên cánh đồng phía xa,  cháu vừa khóc vừa nói mình bị cháy trong đống rơm. Rồi giải thích thêm  vài câu nữa là cháu ngất đi\", anh Tâm cho biết.</p>\r\n<p class=\"Normal\">Trong cơn hoảng loạn, Hiệp cho bố biết khi em đi từ  nhà người cô về, ngang qua ruộng ông hàng xóm, ông ấy bảo ghé chơi rồi  sau đó ôm lấy em. Hiệp vùng vẫy nên bị ông bế quăng vô đống rơm đang  cháy. Cũng trong lời kể với bố, cô bé cho biết, sau khi bị ném vào lửa,  em cố thoát chạy ra nhưng người đàn ông ôm lại và ném tiếp vào lửa lần  nữa.</p>\r\n<p class=\"Normal\">Hay tin, người bác của Hiệp tìm đến ông hàng xóm ấy để  hỏi chuyện. Tuy nhiên ông này phủ nhận sự việc và khẳng định không nhìn  thấy ai khi đốt rơm trên ruộng của mình. Hiện công an huyện Tân Hưng  tiến hành điều tra vụ việc.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/F7/chay.jpg\" border=\"1\" width=\"450\" height=\"350\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Bé Hiệp đang điều trị tại Bệnh viện Nhi Đồng 1. Ảnh: <em>Thiên  Chương.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Bé Hiệp được gia đình lập tức đưa đi bệnh viện từ  tuyến xã đến tỉnh rồi lên Sài Gòn và đang trải qua những ngày thập tử  nhất sinh. Ngồi bẹp ngoài hành lang Bệnh viện Nhi đồng 1, gương mặt xanh  xao hốc hác, chị Võ Thị Cúc, mẹ bé Hiệp nước mắt đầm đìa, cứ ngất đi  mỗi khi vào phòng thăm con. Sợ người mẹ lên cơn đau tim, từ khi bé gặp  nạn, người chị dâu đã không cho chị Cúc vào nhìn mặt Hiệp mà buộc phải  ngồi ở ngoài.</p>\r\n<p class=\"Normal\">\"Ngoài mảnh ruộng nhỏ trồng lúa, hai vợ chồng em tôi  phải đi làm thuê làm mướn để nuôi năm đứa con trong đó có bốn đứa đến  trường. Được cái mấy đứa nhỏ đều ngoan. Thấy em bị nạn, cô chị học lớp 8  đòi nghỉ học phụ cha. Cả nhà khuyên trở lại trường nhưng mấy ngày nay  nó vẫn chưa chịu\", mợ của Hiệp cho biết.</p>\r\n<p class=\"Normal\">Nằm trên giường bệnh, nghe loáng thoáng lời mợ nói,  như quên đi đôi tay đang bị cột vào thành giường, Hiệp giật giật cánh  tay khe khẽ: \"Mợ gọi điện nói chị Hai đi học lại dùm con. Con không muốn  Hai bỏ học vì con. Nói với chị ấy, bé Hiệp sẽ sớm về với chị và mấy  em\".</p>\r\n<p class=\"Normal\">Nói chuyện với mợ xong, Hiệp đưa ánh mắt về phía  khách, rồi tiếp: \"Con đau lắm, nhưng khi ra ngoài nếu có gặp mẹ con, chú  nhớ nói với mẹ là con đã khỏe nhiều rồi. Mẹ con bị bệnh tim nên dễ xỉu  lắm. Chú nhớ dùm con nha chú. Con cám ơn chú\".</p>\r\n<p class=\"Normal\">Nhìn đôi môi bị cháy héo của bé Hiệp, những người có  mặt trong phòng cấp cứu thuộc khoa Phỏng lặng thinh nhìn nhau. Nhiều  người khẽ gật đầu như thể hứa giữ lời với bé mà nước mắt lưng tròng.</p>\r\n<p class=\"Normal\">Theo Điều dưỡng trưởng Phạm Thị Hoàng Oanh, phòng cấp  cứu khoa phỏng Bệnh viện Nhi Đồng 1, Hiệp bị bỏng nặng nhất ở mặt, tay  và toàn thân, với tỷ lệ khoảng 47,5%. Cũng theo bà Oanh, sau khi xuất  viện, gương mặt của bé gái sẽ bị biến dạng do các vết bỏng sâu.</p>\r\n<p class=\"Normal\"><em>Bé Hiệp hiện nằm điều trị tại khoa Phỏng - Chỉnh  hình, Bệnh viện Nhi Đồng 1, TP HCM. Địa chỉ nhà: ấp Võ Văn Be, xã Vĩnh  Bửu, huyện Tân Hưng, tỉnh Long An.</em></p>\r\n<p> </p>', '1', '1', '0', '5', '2010-04-02 04:11:12', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:11:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('10', 'Hôn mê vì ruồi trâu đốt', 'hon-me-vi-rui-trau-t', '', '<p>Ông Mai, 56 tuổi, quê ở xã Cẩm Hà (Hội An) nhập viện trong tình trạng  sức khỏe nguy kịch, hôn mê sâu, liệt nhẹ mặt bên phải, co giật toàn  thân, sốt cao đến 40 độ C, nôn mửa, chân phải nhiễm trùng sưng đỏ. \r\n', '\r\n</p>\r\n<p class=\"Normal\">Sau khi xét nghiệm máu và dịch não tủy, các bác sĩ  Bệnh viện Thái Bình Dương (Quảng Nam) nhận định, đây là trường hợp viêm  màng não do nhiễm liên cầu lợn, một căn bệnh hiếm gặp ở người. Khi tiếp  xúc với phân gia súc, hay ăn thịt gia súc bị bệnh không nấu chín kỹ hoặc  qua trung gian ruồi, bệnh liên cầu lợn có thể lây nhiễm sang người.</p>\r\n<p class=\"Normal\">Ông Mai kể lại: “Khi vào chuồng trâu dọn phân, tôi đã  bị ruồi trâu đốt vào mu chân phải, gây vết loét đã hơn một tuần\". Vết  loét sau đó lan dần lên nửa người, thấy nguy hiểm đến tính mạng gia đình  mới vội vàng đưa người đàn ông này đi bệnh viện.</p>\r\n<p class=\"Normal\">Sau gần một tuần điều trị, đến sáng ngày 1/ 4, Bệnh  viện Thái Bình Dương ở Hội An xác nhận tình trạng sức khỏe của ông Mai  đã thoát nguy kịch.</p>\r\n<p class=\"Normal\"><em>* Tên bệnh nhân đã được thay đổi</em></p>\r\n<p> </p>', '1', '1', '0', '4', '2010-04-02 04:11:54', '62', '', '0000-00-00 00:00:00', '0', '62', '2010-04-25 13:30:13', '2010-04-02 04:11:54', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '5', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('11', '\'Cậu bé chào cờ\' suốt 21 ngày', 'cu-be-chao-c-sut-21-ngay', '', '<p>Một người đàn ông 55 tuổi ở Kolkata, Ấn Độ, đã phải chạy tới phòng cấp  cứu sau khi chịu đựng cơn cương dương kéo dài đến 21 ngày.\r\n', '\r\n</p>\r\n<p class=\"Normal\">Theo các bác sĩ thăm khám, ông bố 2 con này gặp phải  Priapism - dạng cương dương kéo dài đau đớn bất thường, có thể kéo dài  hơn 4 tiếng và xảy ra mà không cần bất kỳ kích thích tình dục nào.</p>\r\n<p class=\"Normal\">Tờ <em>AsiaOne</em> cho biết tình trạng này xuất hiện  do máu bị kẹt trong dương vật và không thể chảy ra ngoài. Tuy nó có thể  ảnh hưởng đến đàn ông ở bất cứ lứa tuổi nào, kể cả trẻ sơ sinh, song  chứng Priapism thường gặp ở đàn ông tuổi từ 20 đến 50.</p>\r\n<p class=\"Normal\">\"Ông ấy mất 3 tuần mới chịu đi khám. Đã quá muộn\", bác  sĩ Avishek Mukherjee, trưởng nhóm phẫu thuật, cho biết.</p>\r\n<p class=\"Normal\">\"Đáng lý ông ấy nên đến gặp bác sĩ sau khi bị cương  dương liên tục trong 6 giờ, vì tình trạng này kéo dài có thể khiến ông  ấy tử vong hoặc hoại tử dương vật\".</p>\r\n<p class=\"Normal\">Bác sĩ đã tiến hành mổ khẩn cấp cho bệnh nhân, nhưng  đã quá muộn. Ông này đã bị liệt dương vĩnh viễn.</p>\r\n<p> </p>', '1', '1', '0', '4', '2010-04-02 04:13:23', '62', '', '0000-00-00 00:00:00', '0', '62', '2010-04-25 13:30:01', '2010-04-02 04:13:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '4', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('12', 'Bi hài chuyện tự chữa bỏng cho con', 'bi-hai-chuyn-t-cha-bng-cho-con', '', '<p>Cô con gái 5 tuổi bị bỏng bô xe máy, bố mẹ liền lấy cả kg muối cho vào  một chiếc túi vải rồi quấn vào vết bỏng ở chân con, khiến gần tháng trời  vết thương không lành, ngày càng đau đớn. \r\n', '\r\n</p>\r\n<p class=\"Normal\">Trường hợp bệnh nhân quê Hải Hậu, Nam Định này khiến  các bác sĩ Viện Bỏng Quốc Gia nhớ mãi. Khi tới viện, vết bỏng của em bé  đã rất sâu. Bố mẹ em cho biết, quê họ miền biển, lưu truyền bài thuốc  dân gian chữa bỏng bằng muối rất hiệu nghiệm và họ áp dụng ngay để chữa  cho con.</p>\r\n<p class=\"Normal\">Tuy nhiên theo các bác sĩ, muối có tính kiềm, có khả  năng \"ăn\" da, không thể dùng để chữa bỏng. Chính bởi thế, ngay cả thuốc  đánh răng - một thứ \"thuốc\" được nhiều người dùng bôi khi bị bỏng - dù  chỉ chứa một lượng kiềm rất nhỏ - cũng không tốt.</p>\r\n<p class=\"Normal\">Tiến sĩ Nguyễn Hải An, phó chủ nhiệm Khoa Trẻ em, Viện  Bỏng Quốc Gia cho biết, rất nhiều trường hợp trẻ bị bỏng nhẹ nhưng do  người nhà không biết cách xử lý hoặc áp dụng các kinh nghiệm chữa sai,  khiến vết thương nặng hơn rất nhiều.</p>\r\n<p class=\"Normal\">Vào viện hai hôm trước, cháu Hà, 5 tuổi ở Quảng Ninh  bị bỏng khi ngồi nướng mực cùng bố mẹ. Khi thấy lửa yếu đi, bố em liền  đổ cả nửa lọ cồn vào khiến ngọn lửa bốc lên. Mẹ em thấy vậy lấy luôn ca  nước cần đó hất vào khiến lửa càng bùng lên cao, \"liếm\" trọn từ ngực lên  mặt của cô con gái nhỏ.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/79/bong1.jpg\" border=\"1\" alt=\"Ảnh: MT.\" width=\"400\" height=\"289\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Nhiều trẻ được bố mẹ áp dụng các cách chữa bỏng lạ  khiến vết thương càng nặng hơn. Ảnh: <em>MT.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Theo các bác sĩ, trong trường hợp này, người mẹ chỉ  cần dùng một tấm vải ướt phủ lên thì có thể dập tắt lửa ngay. Chị không  biết là cồn nhẹ nổi trên nước nên nếu lượng cồn nhiều thì việc thêm nước  chẳng khác nào \"bỏ dầu vào lửa\".</p>\r\n<p class=\"Normal\">Ngay gần đây, cháu Nam, 14 tháng ở Tứ Kỳ, Hải Dương bị  vấp vào phích nước sôi khi đang chơi ở nhà cùng cụ nội. Bà cụ 85 tuổi  không biết phải xử trí thế nào bèn gọi hàng xóm sang giúp. Khi ấy, mấy  người bổ về nhà lấy đá đến đắp vào vết bỏng cho bé để... hạ nhiệt. Sau  đó, vùng da này bị hoại tử, em bé phải phẫu thuật cấy da.</p>\r\n<p class=\"Normal\">Bác sĩ cho biết, việc áp ngay đá lạnh vào vết thương  trong thời gian dài có thể làm tê bì các mút thần kinh và gây bỏng lạnh.  Trong trường hợp của bé Nam, chỉ cần ngâm vùng cơ thể bị bỏng của em  vào nước lạnh sạch trong 15-20 phút thì vết thương của em sẽ dịu lại  ngay.</p>\r\n<p class=\"Normal\">Tuy nhiên, việc đơn giản này không phải ai cũng hiểu  đúng và làm đúng. Cũng nghe nói nên ngâm vùng bỏng vào nước lạnh mà anh  Hảo (Thường Tín, Hà Nội) đã \"dìm\" ngay cậu con trai gần một tuổi vào xô  nước giếng khi cậu bé bị nồi canh nóng làm bỏng phần mặt và cổ.</p>\r\n<p class=\"Normal\">Lúc đưa đến Viện Bỏng khám, các bác sĩ xác định vùng  tổn thương của bé rất nhẹ nhưng cuối cùng em rơi vào tình trạng nguy  kịch, phải hồi sức cấp cứu vì bị viêm phế quản do sặc nước và nhiễm  lạnh.</p>\r\n<p class=\"Normal\">Trường hợp khác, cách đây đã vài năm, một người đàn  ông ở Bình Đà (Thanh Oai, Hà Nội), khi thấy vợ bị bỏng do pháo nổ, đã  lẳng ngay chị vào bể nước mưa của gia đình, khiến người vợ suýt chết  đuối và sau đó phải điều trị về hô hấp.</p>\r\n<p class=\"Normal\">Bác sĩ Hải An cho biết, chính ông và các đồng nghiệp  trong khoa nhiều khi phải giật mình trước những cách chữa bỏng rất \"sáng  tạo\" của nhiều vị phụ huynh. Có mẹ dùng vôi bôi lên vùng da tổn thương  của con vì bà nội hay ăn trầu bảo vôi mát, lại lành. Người khác thì dùng  tỏi đắp vào vết rộp ở chân con khiến vùng tổn thương càng phỏng nặng.  Rồi những thứ như trứng, nhựa chuối, tương, mắm... cũng được họ biến  thành \"thuốc\" chữa bỏng.</p>\r\n<p class=\"Normal\">Ngoài ra, không ít người lại chuộng đắp lá, dùng thuốc  đông y để chữa bỏng cho trẻ vì cho rằng như vậy mới lành, lại rẻ.</p>\r\n<p class=\"Normal\">Ca bệnh của cháu Dung, Vĩnh Phúc ở một điển hình. Cháu  bị bỏng nước sôi cả vùng bụng, bố mẹ nghe mách một thày lang trong vùng  có loại lá thuốc chữa bỏng rất tốt bèn tìm đến nhờ chữa cho con. Đắp lá  hơn một tháng mà con vẫn chẳng khỏi, gia đình mới đưa bé vào viện. Lúc  này, da vùng tổn thương của em đã bị hoại tử, các bác sĩ phải phẫu thuật  mấy lần để cắt bỏ phần da chết và cấy da mới em mới khỏi được.</p>\r\n<p class=\"Normal\">Bác sĩ Nguyễn Hải An cho biết, thực ra, việc xử lý khi  trẻ bị bỏng khá đơn giản. Nước - liệu pháp rẻ tiền, sẵn có nhất đã được  nghiên cứu và chứng minh là rất hiệu quả. Ngâm nước lạnh 15-30 phút vừa  giúp vết bỏng hạ nhiệt, vừa giảm đau, giảm phù nề cho vết thương. Sau  đó, đắp gạc ướt lên rồi băng ép và đưa con đến cơ sở y tế chuyên môn để  được các bác sĩ tư vấn và điều trị thích hợp.</p>\r\n<p class=\"Normal\">Nếu bị bỏng ở những vùng cơ thể khó ngâm nước như mặt,  cổ... thì có thể dùng khăn sạch, ướt đắp lên.</p>\r\n<p class=\"Normal\">Theo bác sĩ, khi bị bỏng cần được xử lý ngay lập tức,  tốt nhất là trong 15 phút đầu. Nếu để muộn, tổn thương càng sâu thì việc  điều trị càng mất nhiều thời gian, phức tạp và để lại di chứng, sẹo  xấu. Da trẻ còn rất non nớt, mỏng manh, non nên bố mẹ tuyệt đối càng  không được đắp các loại lá, hay \"thuốc\" tự chế cho con, khiến bệnh càng  nặng thêm.</p>\r\n<p> </p>', '1', '1', '0', '4', '2010-04-02 04:14:07', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:14:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '3', '', '', '0', '8', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('13', 'Trường hợp bệnh nhân quê Hải Hậu, Nam Định ...', 'trng-hp-bnh-nhan-que-hi-hu-nam-nh-nay-khin-cac-bac-s-vin-bng-quc-gia-nh-mai-khi-ti-vin-vt-bng-ca-em-be-a-rt-sau-b-m-em-cho-bit-que-h-min-bin-lu-truyn-bai-thuc-dan-gian-cha-bng-bng-mui-rt-hiu-nghim-va-h-ap-dng-n', '', '<p>Gần đây, bạn cảm thấy khó chịu khi người ấy luôn phàn nàn rằng bạn đang  làm cho anh ấy (cô ấy) phải điên đầu. Tuy nhiên nếu bạn xem nhẹ những  lời ca thán đó, rằng đó chỉ là phản ứng quá khích mà thôi thì có lẽ bạn  nên xem lại cách cư xử của mình.</p>\r\n', '\r\n<table style=\"width: 1px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/34/cai1.jpg\" border=\"1\" width=\"250\" height=\"195\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Ảnh: <em>co-parentingworks.com.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Lead\">Gần đây, bạn cảm thấy khó chịu khi người ấy luôn phàn nàn  rằng bạn đang làm cho anh ấy (cô ấy) phải điên đầu. Tuy nhiên nếu bạn  xem nhẹ những lời ca thán đó, rằng đó chỉ là phản ứng quá khích mà thôi  thì có lẽ bạn nên xem lại cách cư xử của mình.</p>\r\n<p class=\"Normal\">Dưới đây là 10 điều có thể khiến người bạn đời cảm  thấy khó chịu được đăng trên <em>Times of India.</em></p>\r\n<p class=\"Normal\"><strong>1. Ngáy như một chiếc máy khoan: </strong>Đó  là một việc ngoài ý muốn, nhưng nó sẽ trở nên rất đáng lo ngại khi làm  người khác khó chịu vì bị ảnh hưởng đến giấc ngủ. Để giải quyết triệt để  nạn “ngáy như máy khoan” thì trước tiên tự bản thân bạn phải cố gắng và  thừa nhận thói xấu của mình. Ngay khi bạn phát hiện ra mình có tật xấu  đó, bạn nên tìm đến bác sĩ để giải quyết vấn đề này một cách kịp thời. <br /><br /><strong>2.  Sống dựa dẫm: </strong>Sống dựa dẫm vào bạn đời của mình sẽ khiến cuộc  sống thực sự của bạn trở nên ngột ngạt, khó thở. Lúc nào cũng mong đợi  người khác phải chịu trách nhiệm về niềm vui và hạnh phúc của mình. Đó  là con đường ngắn nhất khiến người bạn đời cảm thấy mệt mỏi vì bị ràng  buộc, gò bó và muốn tìm đường trốn chạy. Với hành động đó, bạn sẽ khiến  cho những mối quan hệ trong cuộc sống của mình tưởng như không còn có  thể tiếp tục được nữa.<br /><br /><strong>3. Luôn có sự so sánh: </strong>Chẳng  ai muốn bị đem ra so sánh. Ở bất kỳ đâu cũng sẽ có người gầy hơn, người  đẹp hơn, người giàu hơn, người hóm hỉnh hơn, người khéo tay hơn, người  bảnh bao hơn, người điều khiển mọi thứ tốt hơn…Trong một hoàn cảnh nào  đó, khi mình bị đưa ra so sánh với bất kì ai chỉ cần một tiêu chí không  tương xứng, nó sẽ làm giảm thiện chí của người khác về những việc mình  làm.<br /><br /><strong>4. Không biết lắng nghe:</strong> Không ai có thể dự  báo được tất cả những điều sẽ xảy ra, nhưng khi có ai đó có những góp ý  quan trọng hoặc tranh luận thì sự chú ý lắng nghe của bạn sẽ khiến họ  cảm thấy thực sự có thiện cảm. Đôi khi người bạn đời của bạn chia sẻ về  những khó khăn hoặc những thất bại, đau đớn, nếu bạn không chú ý lắng  nghe, những lần sau đó họ có thể sẽ không chia sẻ với bạn nữa mà tìm đến  người khác.<br /><br /><strong>5. Ghen tuông và sở hữu quá mức:</strong> Điều này một lần nữa cho thấy bản thân bạn đang đánh mất sự tin tưởng và  niềm tin của chính mình, rằng sự thực là bạn không xứng đáng với người  ấy.</p>\r\n<p class=\"Normal\">Một chút ghen tuông là rất tự nhiên, nhưng nếu bạn chỉ  khư khư giữ làm sở hữu riêng mình, ích kỉ quá mức thì có thể sẽ làm  người kia phát cáu và gây hậu quả nghiêm trọng.</p>\r\n<p class=\"Normal\"><strong>6. Luôn trễ hẹn.</strong> Không có quy ước nào  quy định chặt chẽ về mặt thời gian nhưng nếu bạn luôn trễ hẹn thì người  bạn đời sẽ cảm thấy rất khó chịu. Việc cố gắng đảm bảo đúng giờ giấc  cho thấy sự tôn trọng của bạn đối với người khác.<br /><br /><strong>7. Liên  tục phàn nàn. </strong>Có những khi thắc mắc là hoàn toàn thích đáng,  chẳng hạn như khi bạn nhận ra mình đang phải trả cho hóa đơn nước của cả  khu phố. Nhưng đối với nhiều người phàn nàn đơn giản chỉ là một thói  quen xấu. Thời tiết, những người hàng xóm, tin tức, các vấn đề thuộc sự  quản lý của chính phủ … tất cả đều vượt quá tầm kiểm soát của bạn hoặc  những hiểu biết của bạn về nó còn quá ít ỏi. Bạn thường xuyên phàn nàn  về hững điều ngoài tầm kiểm soát của bất kỳ ai khiến những người xung  quanh cảm thấy hết sức tiêu cực, nản chí, không giúp đỡ được và tìm cách  tránh mặt bạn.</p>\r\n<p class=\"Normal\"><strong>8. Không ngớt lời khuyên: </strong>Thông cảm  không có nghĩa là không đưa ra lời khuyên, nhưng trước tiên hãy biết  lắng nghe. Rất khó để kiểm soát thường xuyên những điều bạn nói với  người khác về những điều họ cần phải làm với tiền bạc, sự nghiệp, với  gia đình và những thói quen của họ . Đừng đưa ra lời khuyên trừ khi bạn  hiểu rõ ngọn ngành về nó. Bạn có thể cảm thấy phật ý khi bị xem là soi  mói vào chuyện người khác.</p>\r\n<p class=\"Normal\"><strong>9. Nhai đi nhai lại những chuyện cũ: </strong>Bạn  luôn tranh cãi về ngày “đáng nhớ” của anh ấy (hoặc cô ấy) và kết thúc  trong sự hằn học về gia đình và sự thiếu sót của nhau. Chuyện anh ấy  (hoặc cô ấy) bị cuốn hút bởi một ai đó vô cùng hấp dẫn trong một buổi  tiệc cách đây bốn tháng trước. Bạn đã hình dung cảnh tượng đó? Những  tranh cãi trên thực tế còn hơn thế và thậm chí còn trong thời gian vài  năm nhưng cái mà họ nhận được chỉ là sự mắng nhiếc thậm tệ và khiến  người kia phải tức giận bỏ đi và đi kiếm tìm lại quá khứ. Đừng làm điều  đó - bạn sẽ chẳng nhận được một điều gì hết.</p>\r\n<p class=\"Normal\"><strong>10. Chỉ trích bạn đời trước mặt người khác: </strong>Đây  là yếu tố “chán ngấy” cuối cùng khiến bạn trở nên quê mùa, thô kệch.  Nếu bạn chỉ trích bạn đời của mình trước mặt người khác, nó chỉ thể hiện  sự thiếu tự tin của chính bạn. Nói với người bạn đời của mình rằng họ  trông thật ngốc nghếch, kém cỏi đến mức không thể kể chính xác một câu  chuyện hoặc làm theo đúng những điều đã hướng dẫn trước mặt người khác  sẽ biến bạn trở thành một con người vô duyên và thô lỗ.</p>', '1', '1', '0', '5', '2010-04-02 04:15:17', '62', '', '2010-04-22 04:06:54', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:15:17', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '1', '', '', '0', '5', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('14', 'Nghi án hai bác sĩ kê toa thuốc nhận \'hoa hồng\' tiền tỷ', 'nghi-an-hai-bac-s-ke-toa-thuc-nhn-hoa-hng-tin-t', '', '<p>Bán mỗi lọ thuốc khoảng 3 triệu đồng, người kê toa được hưởng gần một  triệu đồng từ công ty dược. Hai bác sĩ khoa Gan Mật, Bệnh viện ĐH Y dược  TP HCM, đã bị tạm ngưng hành nghề để giải trình vụ việc.</p>\r\n', '\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/15/tto.jpg\" border=\"1\" width=\"250\" height=\"195\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Loại thuốc đặc trị chữa viêm gan được kê toa.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Một phó giáo sư - tiến sĩ, giảng viên trường ĐH Y dược  TP HCM, cũng bị buộc tạm ngưng lên lớp vì liên quan.</p>\r\n<p class=\"Normal\">Sáng nay, ông Nguyễn Hoàng Bắc, Phó giám đốc Bệnh viện  Đại học Y dược TP HCM cho biết, hai bác sĩ khoa Gan Mật bị tạm đình chỉ  công tác 15 ngày để làm rõ sự việc.</p>\r\n<p class=\"Normal\">Trước đó, nhiều nguồn tin cho rằng hai bác sĩ này liên  quan đến việc \"ăn\" chiết khấu đến 30% từ Công ty Schering-Plough, thông  qua việc kê toa cho người bệnh ra nhà thuốc tây của mình mua hai loại  thuốc đặc trị viêm gan Peg-intron 50 mcg và Peg-intron 80 mcg. Đây là  thuốc của Công ty Schering-Plough.</p>\r\n<p class=\"Normal\">Cũng theo bác sĩ Bắc, trong giải trình ban đầu với ban  giám đốc bệnh viện, một trong hai bác sĩ có liên quan phủ nhận việc ăn  tiền hoa hồng. Người còn lại giải trình không thỏa đáng với yêu cầu của  bệnh viện nên bị đề nghị giải trình lại.</p>\r\n<p class=\"Normal\">Cùng liên quan đến sự việc trên, hôm 29/3, một phó  giáo sư - tiến sĩ hiện là giảng viên bộ môn hóa kiểm nghiệm của trường  ĐH Y dược TP HCM cũng bị tạm đình chỉ công tác. Theo phản ánh, vị phó  giáo sư - tiến sĩ này chính là giám đốc tiếp thị hai loại thuốc  Pegintron 50mcg và Pegintron 80mcg của Công ty Schering-Plough; và cũng  là người được công ty trích hoa hồng.</p>\r\n<p class=\"Normal\"><strong><span style=\"color: #4f4f4f;\">Dư luận gần đây xôn xao  thông tin một số bác sĩ đang công tác tại các bệnh viện và trường y tại  TP HCM, bắt tay với công ty dược để kê toa thuốc hưởng hoa hồng.</span></strong> Trong khoảng thời gian từ các tháng 6-7-8 và 9/2009, những vị trên đã  nhận tiền hoa hồng từ Công ty Schering-Plough để kê toa thuốc đặc trị  viêm gan Peg-intron 50 mcg và Peg-intron 80 mcg. Mức chiết khấu cao đến  gần 30%, người nhận nhiều nhất mỗi tháng khoảng 500 triệu đồng.</p>\r\n<p class=\"Normal\">Để nhận được khoản hoa hồng lớn này, các bác sĩ trên  tranh thủ giới thiệu bệnh nhân đến khám tại bệnh viện nơi mình công tác,  đi mua thuốc Peg-intron 50 mcg và Peg-intron 80 mcg ở nhà thuốc, phòng  mạch tư của mình. Bán được càng nhiều thuốc, phần trăm hoa hồng càng  cao.</p>\r\n<p class=\"Normal\">Ngày 26/3, Văn phòng Chính phủ có công văn truyền đạt ý  kiến Thủ tướng yêu cầu làm rõ vụ chiết khấu nêu trên. Vụ việc đang được  Bộ Y tế tiến hành làm rõ.</p>\r\n<p class=\"Normal\">Từ tháng 11/2009, Công ty Schering-Plough phân phối  thuốc Peg-intron 50 mcg và Peg-intron 80 mcg đã được Công ty Dược phẩm  Merck Sharp &amp; Dohme (Mỹ) tại Việt Nam mua lại. Giá bán lẻ một lọ  Peg-intron 80 mcg tại các hiệu thuốc là gần 3 triệu đồng. Như vậy, với  mức chiết khấu được Schering-Plough chấp thuận, bán mỗi lọ thuốc, người  kê toa bỏ túi gần 1 triệu đồng.</p>\r\n<p class=\"Normal\">Tại Bệnh viện ĐH Y dược TP HCM, lượng người đến khám  rất lớn. Trong đó, số người mắc viêm gan siêu vi C chỉ định điều trị  không ít. Hiện có nhiều loại thuốc khác nhau trên thị trường để điều trị  căn bệnh này.</p>\r\n<p> </p>', '1', '1', '0', '3', '2010-04-02 04:16:12', '62', '', '2010-04-05 09:26:21', '62', '62', '2010-04-18 03:43:55', '2010-04-02 04:16:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '6', 'bac si, pháp luật', '', '0', '27', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('15', 'ACTISO', 'suyt-cht-vi-treo-ct-in-cao-th-bt-chim', '', '<h2 style=\"text-align: justify;\">\r\n', '\r\n</h2>\r\n<p style=\"text-align: center;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong>ACTISO (菊芋)</strong></span></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><em>Folium et Flos Cynarae scolymi</em></span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><em><strong>Tên khoa học</strong></em>: Cynara scolymus L., họ Cúc (Asteraceae).</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><em><strong>Mô tả:</strong></em> Lá nhăn nheo, dài khoảng 1 - 1,2 m, rộng khoảng 0,5 m hay được chia nhỏ. Phiến lá xẻ thùy sâu hình lông chim, mép thuỳ khía răng cưa to, đỉnh răng cưa thường có gai rất nhỏ, mềm. Mặt trên lá màu nâu hoặc lục, mặt dưới màu xám trắng, lồi nhiều và những rãnh dọc rất nhỏ, song song. Lá có nhiều lông trắng vón vào nhau. Vị hơi mặn chát và hơi đắng.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><em><img src=\"http://www.pgrvietnam.org.vn/userfiles/image/He%20thong%20bao%20ton/Trung%20tam%20NC%20Khoai%20tay%20Rau%20va%20Hoa%20Da%20Lat/Cay%20Actiso%20(Cynara%20scolymus%20L.)2.JPG\" border=\"0\" width=\"600\" style=\"border: 0pt none;\" /></em></strong></span></span></p>\r\n<p style=\"text-align: justify;\"><strong><em>T<span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">hu hái: </span></span></em></strong><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">Cụm hoa chưa nở làm rau ăn vào tháng 12 đến tháng 2. Còn lá cũng được thu hái lúc cây sắp ra hoa hoặc đang có hoa, rọc bỏ sống lá đem phơi khô hay sấy khô.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><em>Bộ phận dùng:</em></strong></span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- Lá (<strong><em>Folium Cynarae scolymi</em></strong>)</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- Hoa (<strong><em>Flos Cynarae scolymi</em></strong>)</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><em>Phân bố:</em></strong> Cây được trồng ở một số vùng núi nước ta (Đà lạt, Sapa, Tam Đảo).</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><em>Thành phần hoá học chính: </em></strong>Cynarin, flavonoid, chất nhầy, pectin...</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><em>Công năng: </em></strong>Chống lão hóa, giải độc, hạ mỡ máu, mát gan, lợi tiểu.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><em>Công dụng:</em></strong> Thông tiểu, thông mật, dùng cho người yếu gan, thận, làm hạ cholesterol, phòng ngừa bệnh xơ vữa động mạch.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><em>Cách dùng, liều lượng:</em></strong> Ngày 6-12g dưới dạng thuốc sắc hay chè thuốc, cao mềm, dùng riêng hay phối hợp với các vị thuốc khác. Trên thị trường có chế phẩm cao actiso dưới dạng viên nang và các chế phẩm dạng trà thuốc.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><em>Chế biến: </em></strong>Lá được thu hái vào năm thứ nhất của thời kỳ sinh trưởng hoặc vào cuối mùa hoa, đem phơi hoặc sấy khô ở 50 - 60<sup>0</sup>C. Lá cần được ổn định trước rồi mới bào chế thành dạng thuốc. Có thể dùng hơi nước sôi có áp lực cao để xử lý nhanh thân, lá. Sau đó phơi hoặc sấy khô.</span></span></p>', '1', '2', '0', '278', '2010-04-02 04:17:05', '62', '', '2010-04-24 08:30:45', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:17:05', '0000-00-00 00:00:00', '', '', 'tkh=Cynara scolymus L.\nthv=\nhtvvn=Cúc\nhtvkh=Asteraceae\nkvlt=\ndvlt=\nbpd=hoa,lá\ntphh=glycosid\npltb=lợi tiểu- thông mật\ntcdy=thuốc thanh nhiệt giải độc\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '9', '0', '1', '', '', '0', '23', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('40', 'Hộ Tạng Đường', 'ho-tang-duong', '', '', '\r\n<p><img src=\"http://www.thuocbietduoc.com.vn/images/drugs/2009/9/ho-tang-duong_7-25909.JPG\" border=\"0\" width=\"320\" height=\"250\" /></p>\r\n<p>SĐK:   Hotangduong</p>\r\n<p>Dạng thuốc:      viên nén bao phim</p>\r\n<p>Đóng gói:          Mỗi vỉ có 10 viên nén bao phim màu trắng. Mỗi hộp có 3 vỉ.</p>\r\n<p>Giá kê khai:</p>\r\n<p>Chỉ định:</p>\r\n<p> </p>\r\n<p>- Đặc tính sản phẩm</p>\r\n<p> </p>\r\n<p>Hộ Tạng Đường là sự phối hợp toàn diện giữa α-lipoic acid và các dược thảo có tác dụng điều hòa đường huyết, ngăn ngừa biến chứng và làm chậm tiến trình biến chứng tiểu đường. Nhờ vậy Hộ Tạng Đường giúp phòng ngừa biến chứng và hỗ trợ điều trị hiệu quả bệnh tiểu đường (týp I và týp II) cùng các biến chứng của nó.</p>\r\n<p> </p>\r\n<p>α-lipoic acid (ALA): ALA là một chất chống oxi hóa mạnh. ALA có tác dụng tấn công các gốc tự do – sản phẩm thải ra khi cơ thể chuyển thức ăn thành năng lượng – giúp làm giảm các stress oxi hóa trong tế bào. ALA còn có tác dụng độc đáo là tái sử dụng các chất chống oxi hóa khác như vitamin C, vitamin E, Glutathione và tăng sản sinh Glutathione. Nhờ vậy, ALA có tác dụng bảo vệ mạch máu nhất là các mạch máu nhỏ ở võng mạc nên phòng ngừa bệnh võng mạc, ngăn ngừa tổn thương thận, tổn thương thần kinh ngoại biên &amp; xơ vữa động mạch. ALA dễ dàng đi qua hàng rào máu não nên có tác dụng bảo vệ não trong tai biến mạch máu não. Khi đường huyết tăng, ALA có tác dụng “dọn dẹp” glucose trong máu nên có tác dụng hỗ trợ cho các thuốc hạ đường huyết.</p>\r\n<p>Hoài sơn (Dioscorea persimlis) được coi là một vị thuốc bổ, chữa ăn uống kém tiêu, bệnh tiểu đường. khả năng thủy phân chất đường của men trong Hoài sơn rất cao do đó giúp hạ đường huyết.</p>\r\n<p>Câu kỷ (Lycium chinensis Mill.) được coi là vị thuốc bổ toàn thân, dùng cho các trường hợp bệnh nhân bị tiểu đường, sáng mắt, bổ thận, suy nhược thần kinh, mệt mỏi. Các thử nghiệm dược lý cho thấy câu kỷ có tác dụng bổ gan, hạ cholesteron huyết và tăng cường miễn dịch, hạ đường huyết.</p>\r\n<p>Nhàu (Morinda citrifolia L. ) có tác dụng thanh nhiệt, giải độc, giúp hạ huyết áp.</p>\r\n<p>Mạch môn (Ophiopogon japonicus) có tác dụng tăng huyết lượng động mạch vành trong thiếu máu cơ tim, giúp hạ đường huyết.</p>\r\n<p> </p>\r\n<p>- Tác dụng:</p>\r\n<p> </p>\r\n<p>Hộ Tạng Đường có tác dụng chống oxi hóa nên giúp bảo vệ mạch máu nhất là các mạch máu nhỏ ở võng mạc, thần kinh &amp; cầu thận, chống xơ vữa động mạch. Ngoài ra, Hộ Tạng Đường còn giúp hạ đường huyết, cholesterol, huyết áp và tăng cường miễn dịch.</p>\r\n<p> </p>\r\n<p>- Công dụng:</p>\r\n<p> </p>\r\n<p>Phòng ngừa và hỗ trợ điều trị các biến chứng của bệnh tiểu đường: Bệnh võng mạc, bệnh thần kinh ngoại biên , suy thận và các bệnh tim mạch &amp; đột quỵ do xơ vữa động mạch.</p>\r\n<p> </p>\r\n<p>Liều lượng:</p>', '1', '4', '0', '15', '2010-04-19 14:26:25', '62', '', '2010-05-03 14:27:57', '62', '0', '0000-00-00 00:00:00', '2010-04-19 14:26:25', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=viên nén\nt_ndt=tim mạch-huyết áp\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '2', '', '', '0', '9', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('16', 'Cánh gà chiên mắm', 'canh-ga-chien-mm', '', '<p class=\"Lead\">Món ngon này làm rất đơn giản, lại đậm đà, dễ ăn, bạn có  thể làm ngay để cả nhà được thưởng thức tối nay.</p>\r\n<p class=\"Normal\">Nguyên liệu: Cánh gà: 2 cái, gia vị, mì  chính, hạt nêm, tiêu bột, đường, mạch nha, gừng, xả, ớt, hành khô, dầu  ăn, nước mắm.\r\n', '\r\n</p>\r\n<p><em><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/6C/ga1.jpg\" border=\"1\" width=\"210\" height=\"164\" align=\"left\" /></em></p>\r\n<p> </p>\r\n<p class=\"Normal\"><em>Cách làm:</em></p>\r\n<p class=\"Normal\">- Nướng thơm gừng, xả, giã dập ớt rồi bỏ tất cả vào  nồi. Thêm nước, nước mắm, gia vị, mì chính, hạt nêm, mạch nha vào cùng,  đun sôi rồi cho cánh gà vào ngâm khoảng 15 phút cho ngấm.</p>\r\n<p class=\"Normal\">- Vớt cánh gà ra chiên giòn.</p>\r\n<p class=\"Normal\">- Hành khô phi với nước mắm nêm gia vị vừa ăn cho cánh  gà đã chiên vào sóc đều.</p>\r\n<p class=\"Normal\">(<em>Trung tâm hướng dẫn nấu ăn Ezcooking Class, số 49  ngõ 49 Huỳnh Thúc Kháng, Hà Nội. Điện thoại: 04.7325732)</em></p>\r\n<p> </p>', '-2', '3', '0', '279', '2010-04-02 04:19:23', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:19:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '0', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('17', 'Thưởng thức thịt nướng Singapore tại Việt Nam', 'thng-thc-tht-nng-singapore-ti-vit-nam', '', '<p class=\"Lead\">Thịt nướng nổi tiếng Fragrance Xiang Wei của Singapore  có mặt tại cửa hàng Neta TP HCM với nhiều sản phẩm thơm ngon, bổ dưỡng.\r\n', '\r\n</p>\r\n<p class=\"Normal\">Thịt nướng nhân sâm và que xiên Fragrance là sản phẩm  chế biến sẵn có nhân sâm và các loại thảo mộc rất tốt cho sức khỏe. Thịt  nướng Fragrance có nguyên liệu là thịt heo tươi kết hợp với 18 loại  thảo mộc khác nhau. Sản phẩm được pha trộn theo kiểu truyền thống và  quản lý chặt chẽ về chất lượng. Món ăn này giữ được sự tươi ngon, không  chất bảo quản và giữ được lâu hơn các loại thịt khác đến 2 tuần mà không  cần bảo quản ở nhiệt độ lạnh.</p>\r\n<p class=\"Normal\">Công ty Fragrance cũng đưa ra thị trường sản phẩm  Bak-kwa chế biến từ thịt cá sấu, gà tây và sản phẩm Bak-kwa với thành  phần men bia đỏ giúp giảm lượng cholesterol trong cơ thể. Hiện nay,  Fragrance đã cho ra mắt sản phẩm ‘‘Bak-kwa với que xiên’’. Đây là món ăn  kết hợp Bak-kwa truyền thống trên que xiên bằng tre. Mỗi que xiên chỉ  với giá 19.000 đồng rất thuận tiện cho thực khách muốn dùng thử.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/3C/Anh1.jpg\" border=\"1\" width=\"400\" height=\"266\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Ngoài thịt nướng, Fragrance Foodstuff còn sản xuất các  loại thực phẩm ngon cho gia đình như: lạp xưởng kiểu Hong Kong, thịt  sợi, mực sợi và bánh Trung thu. Lạp xưởng kiểu Hong Kong luôn sự lựa  chọn tối ưu cho những người thích ăn chung với cháo. Loại lạp xưởng này  có sự pha trộn rượu Mei Kuei Lu. Lạp xưởng được đóng thành hộp thích hợp  để làm quà. Các sản phẩm ruốc từ thịt gà, heo và cá cũng được đóng gói  hoặc cho vào hộp tiện lợi.</p>\r\n<p class=\"Normal\">Đáp ứng cầu của người tiêu dùng, Fragrance Foodstuff  cũng cho ra đời hàng loạt các loại sản phẩm mực cay hoặc không cay được  đóng gói hay cho vào hộp tiện lợi.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/3C/Anh02.jpg\" border=\"1\" width=\"400\" height=\"394\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Fragrance Foodstuff Mooncakes rất phổ biến trong lễ  hội Trung Thu hàng năm bởi các kiểu dáng và hương vị đa dạng. Bánh Trung  thu da tuyết nhân sầu riêng, hạt sen, pandan, khoai lang là lựa chọn  của những người trẻ tuổi thích ăn ngọt, trong khi đó loại bánh nướng  truyền thống với lòng đỏ trứng luôn hấp dẫn thế hệ thực khách lớn tuổi.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/3C/Anh3.jpg\" border=\"1\" width=\"400\" height=\"266\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Neta là công ty đầu tiên mua nhượng quyền thương mại  từ Singapore Fragrance và trở thành công ty duy nhất được quyền phân  phối và bán các sản phẩm của Fragrance Foodstuff tại Việt Nam. Neta nhập  khẩu trực tiếp sản phẩm từ nhà máy của Fragrance tại Singapore. Các sản  phẩm Neta phân phối đã được cấp giấy chứng nhận về an toàn vệ sinh thực  phẩm như HACCP, ISO22000, cũng như đạt các yêu cầu về chất lượng sản  phẩm bởi các cơ quan có thẩm quyền trước khi xuất khẩu tại Singapore hay  nhập khẩu vào Việt Nam.</p>\r\n<p class=\"Normal\">Nhân dịp khai trương, cửa hàng Neta giảm giá 20% hóa  đơn thanh toán từ nay đến 31/5.</p>\r\n<p class=\"Normal\">Công ty TNHH MTV Hương Vị Mới</p>\r\n<p class=\"Normal\">144 Nguyễn Trãi, phường Bến Thành, quận 1</p>\r\n<p class=\"Normal\">ĐT: 39259656 - Fax: 39259657</p>', '-2', '3', '0', '279', '2010-04-02 04:20:34', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:20:34', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('18', 'ANH TÚC XÁC (罂粟壳)', 'b-sung-gia-v-cho-chao-b-dng', '', '<p style=\"text-align: justify;\">Pericarpium Papaveris<br /><br /><strong>Tên khoa học:</strong> Papaver somniferum L., họ Thuốc phiện (Papaveraceae)</p>\r\n<p style=\"text-align: justify;\"><br /><strong>Tên khác:</strong> Cù túc xác</p>\r\n', '\r\n<p style=\"text-align: justify;\"><img src=\"http://www.khoahoc.com.vn/photos/Image/2006/05/04/quaanhtuc.jpg\" border=\"0\" width=\"450\" height=\"332\" /></p>\r\n<p style=\"text-align: justify;\"><br /><em><strong>Bộ phận dùng: </strong></em>Vỏ quả khô đã trích nhựa của cây Thuốc phiện (Papaver somniferum L.), họ Thuốc phiện (Papaveraceae).</p>\r\n<p style=\"text-align: justify;\"><br /><em><strong>Mô tả:</strong></em> Anh túc xác là qủa (trái) cây A phiến (Thuốc phiện). Qủa là một nang hình cầu hoặc trụ dài 4~7cm, đường kính 3~6cm, khi chín có mầu vàng xám, cuống qủa phình to ra, đỉnh qủa còn núm. Trong qủa chín có nhiều hạt nhỏ hơi giống hình thận, trên mặt có vân  hình mạng mầu xám trắng hoặc xám đen. Khi hái để làm Anh túc xác thường thấy trên mặt qủa có các vết ngang hoặc dọc tùy theo cách lấy nhựa, mỗi vết gồm 3~4 đường.<br /><em><strong><br />Phân bố:</strong></em> Cây này trước đây có trồng ở một số vùng núi cao nước ta, ngày nay cấm trồng vì liên quan tới tệ nạn ma tuý.</p>\r\n<p style=\"text-align: justify;\"><br /><em><strong>Thành phần hoá học chính:</strong></em> Nhựa thuốc phiện, alcaloid (morphin, codein, papaverin...).<br /><br /><em><strong>Tác dụng dược lý:</strong></em><br /><br />- Đối với hệ hô hấp: Morphin là một chất ức chế mạnh và cao đối với hệ hô hấp. Liều có tác dụng đối với hệ hô hấp nhỏ hơn là liều giảm đau. Cơ chế của hậu qủa này là do sự cảm nhận thấp của hệ thần kinh hô hấp đối với mức độ của Carbon Dioxid. Dấu hiệu ức chế hô hấp bao gồm thở nhanh và thở dốc. Nếu dùng qúa liều hô hấp có thể trở nên khó khăn và có thể  ngưng hô hấp. Tác dụng của Codein đối với hệ hô hấp  yếu hơn là Morphin. Morphin cũng ức chế cơn ho với lều nhỏ hơn liều dùng để giảm đau. Codein có tác dụng long đờm yếu hơn nhưng thường được dùng nhiều hơn vì ít tác dụng phụ.<br /><br />- Đối với hệ tuầøn hoàn: Morphin  gây ra gĩan mạch ngoại vi và giải phóng Histamin có thể dẫn đến huyết áp thấp. Vì thế phải dùng rất cẩn thận đối với bệnh nhân mệt lả do thiếu máu.<br /><br />- Đối với vết vị trường: Morphin dùng với liều rất thấp gây ra bón do nó làm tăng trương lực  và giảm sự thúc đẩy co cơ  trong thành ruột đồng thời làm giảm dịch nội tiết tiêu hóa. Ngoài ra, nó gia tăng sứs ép trong ống mật. Những hậu qủa này gây ra ói mửa, bụng đau cơn đau mật. Codein tác dụng yếu hơn đối với vết vị trường.<br /><br />- Đối với hệ sinh dục  niệu: Morphin gia tăng trương lực nơi đường tiểu và cơ bàng quang.<br /><strong><em><br />Công năng:</em></strong> Thu liễm phế khí, cầm tiêu chảy, giảm ho, giảm đau<br /><em><strong><br />Công dụng:</strong></em> Trị ho lâu ngày, ỉa chảy lâu ngày, giảm đau trong các cơn đau như đau bụng, đau gân cốt.<br /><em><strong><br />Cách dùng, liều lượng:</strong></em> Ngày dùng 2-6g, dạng thuốc sắc hay thuốc bột.<br /><br />+ Rửa sạch, loại bỏ hết hạt và gân màng , chỉ lấy vỏ ngoài, xắt mỏng, sấy khô hoặc tẩm mật ong (sao qua) hoặc sao với dấm cho hơi vàng, tán nhuyễn để dành dùng (Bản Thảo Cương Mục).<br /><br />+ Lấy nước rửa ướt rồi bỏ tai và gân màng, chỉ lấy vỏ màng ngoài, phơi trong râm, xắt nhỏ, tẩm dấm, sao hoặc tẩm mật sao (Trung Hoa Nhân Dân Cộng Hòa Quốc Dược Điển).<br /><br />+ Rửa sạch bụi, bỏ hết hột, bỏ tai và gân màng, chỉ lấy vỏ ngoài, xắt nhỏ, phơi trong râm cho khô để dùng hoặc tẩm mật sao qua hoặc tẩm giấm sao vàng (Phương Pháp Bào Chế Đông Dược).<br /><em><strong><br />Bài thuốc:</strong></em><br /><br />+  Trị ho lâu ngày: Anh túc xác, bỏ gân, nướng mật, tán bột. Mỗi lần uống 2g với nước pha mật (Thế Y Đắc Hiệu Phương).<br /><br />+ Trị lao, suyễn, ho lâu năm, mồ hôi tự ra: Anh túc xác 100g, bỏ đế và màng, sao với giấm, lấy 1 nửa. Ô mai 20g. Tán bột, mỗi lần uống 8g khi đi ngủ (Tiểu Bách Lao Tán  Tuyên Minh Phương).<br /><br />+  Trị thủy tả không cầm: Anh túc xác 1 cái, Ô mai nhục, Đại táo nhục đều 10 cái, sắc với 1 chén nước còn 7 phân, uống ấm (Kinh Nghiệm Phương).<br /><br />+  Trị lỵ: Anh túc xác (bỏ núm trên và dưới, đập dập, nướng với mật cho hơi đỏ), Hậu phác (bỏ vỏ, ngâm nước cốt gừng 1 đêm, nướng). 2 vị tán thành bột. Mỗi lần dùng 8~12g với nước cơm (Bách Trung Tán  - Bách Nhất Tuyển Phương).<br /><br />+  Trị lỵ lâu ngày:<br /><br />1- Anh túc xác, nướng với dấm, tán bột, trộn với mật làm hoàn. Ngày uống 6~8g với nước sắc gừng ấm (Bản Thảo Cương Mục).<br /><br />2- Anh túc xác 400g, bỏ màng, chia làm 3 phần: 1 phần sao với dấm, 1 phần sao với mật, 1 phần để sống. Tán bột, trộn với mật làm hoàn. Ngày uống 8~12g với nước cơm (Y Học Nhập Môn).<br /><br />+ Trị trẻ nhỏ bị xích bạch lỵ: Anh túc xác 20g, sao với giấm, tán nhỏ, lấy chảo đồng sao qua. Binh lang 20g,  sao đỏ, nghiền nhỏ. Xích lỵ uống với mật ong, bạch lỵ uống với nang đường (Toàn Ấu Tâm Giám Phương).<br /><br />+  Trị trẻ nhỏ bị thổ tả, không muốn ăn uống, bạch lỵ: Anh túc xác  (sao), Trần bì  (sao), Kha  tử (nướng, bỏ hạt), đều 40g Sa nhân, Chích thảo đều 8g. Tán bột. Ngày uống 8~12g với nước cơm (Anh Túc Tán - Phổ Tế Phương).<br /><br /></p>', '1', '2', '0', '278', '2010-04-02 04:21:20', '62', '', '2010-04-26 13:34:02', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:21:20', '0000-00-00 00:00:00', '', '', 'tkh=Papaver somniferum L.\nthv=Anh túc xác\nhtvvn=Thuốc phiện\nhtvkh=Papaveraceae\nkvlt=\ndvlt=\nbpd=quả\ntphh=alcaloid\npltb=an thần-ngủ-nhức đầu,ho hen\ntcdy=thuốc chữa ho bình suyễn\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '12', '0', '2', '', '', '0', '27', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('91', 'Công ty Đông Nam Dược Bảo Long', 'cong-ty-ong-nam-dc-bo-long', '', '<p>Giới thiệu gian hàng Đông nam dược Bảo Long</p>\r\n', '\r\n<p><img src=\"http://www.vinasme.com.vn/img1/store/danhba/baolong.jpg\" border=\"0\" width=\"300\" height=\"300\" /></p>', '1', '7', '0', '295', '2010-04-26 14:13:45', '62', '', '2010-05-02 06:33:39', '62', '0', '0000-00-00 00:00:00', '2010-04-26 14:13:45', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '1', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('92', 'Công ty TNHH Đầu tư và Phát triển Đông Tây', 'gian-hang-cong-ty-tnhh-u-t-va-phat-trin-ong-t', '', '<p>Giới thiệu gian hàng Công ty TNHH Đầu tư và Phát triển Đông Tây</p>\r\n', '\r\n<p><img src=\"http://danhba.bacsi.com/user_media/logo/images/5546.jpg\" border=\"0\" width=\"300\" height=\"236\" /></p>\r\n<p> </p>', '1', '7', '0', '304', '2010-04-26 14:28:17', '62', '', '2010-05-02 07:16:57', '62', '0', '0000-00-00 00:00:00', '2010-04-26 14:28:17', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('93', 'Công ty cổ phần xuất nhập khẩu Y tế Domesco', 'giang-hang-cong-ty-c-phn-xut-nhp-khu-y-t-dom', '', '<p>Giới thiệu gian hàng <a href=\"http://www.thuocbietduoc.com.vn/home/clickAd.aspx?comptyp=1&amp;compid=483\">Công  ty cổ phần xuất nhập khẩu Y tế Domesco </a></p>\r\n', '\r\n<p><img src=\"http://danhba.bacsi.com/user_media/logo/images/707.jpg\" border=\"0\" width=\"267\" height=\"300\" /></p>\r\n<p> </p>', '1', '7', '0', '305', '2010-04-26 14:33:24', '62', '', '2010-05-02 07:11:01', '62', '0', '0000-00-00 00:00:00', '2010-04-26 14:33:24', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('94', 'Công ty TNHH dược Phẩm Á Âu', 'cong-ty-tnhh-dc-phm-a-au', '', '<p>Giới thiệu gian hàng <strong>Công ty TNHH dược Phẩm Á Âu \r\n', '\r\n<img src=\"http://khoedepvietnam.com/quantrinoidung%5CIMAGES1%5Clogo_thanhvien%5Cduocaau.jpg\" border=\"0\" width=\"200\" height=\"200\" /></strong></p>', '1', '7', '0', '306', '2010-04-26 16:38:23', '62', '', '2010-05-02 07:28:24', '62', '0', '0000-00-00 00:00:00', '2010-04-26 16:38:23', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('95', 'Công Ty Cổ Phần Dược Phẩm Trường Thọ', 'gian-hang-cong-ty-c-phn-dc-phm-trng-th', '', '<p>Giới thiệu gian hàng <strong>Công Ty Cổ Phần Dược Phẩm Trường Thọ \r\n', '\r\n<img src=\"http://timkiem24h.com/uploads/News/pic/1201339096.gif\" border=\"0\" width=\"150\" height=\"150\" /></strong></p>', '1', '7', '0', '307', '2010-04-26 16:44:45', '62', '', '2010-05-02 07:27:28', '62', '0', '0000-00-00 00:00:00', '2010-04-26 16:44:45', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('19', 'BA CHẠC', 'sn-non-hm-tng-qu-lam', '', '<p align=\"center\"><strong>\r\n', '\r\nBA CHẠC</strong></p>\r\n<p align=\"center\"><strong><em>Folium et Radix Euodiae Leptae</em></strong><strong></strong></p>\r\n<p><strong><em>Tên khoa học:</em></strong> <em>Euodia lepta</em> (Spreng.) Merr., họ Cam (<em>Rutaceae</em>). Cây mọc hoang ở nhiều nơi trong nước ta.</p>\r\n<p><strong><em>Tên khác:</em></strong> Chè đắng. Chè cỏ. Cây dầu dầu</p>\r\n<p><strong><em>Mô tả:</em> </strong>Cây nhỡ cao 2-8m, có nhánh màu đỏ tro. Lá có 3 lá chét, với lá chét nguyên. Cụm hoa ở nách các lá và ngắn hơn lá. Quả nang, thành cụm thưa, có 1-4 hạch nhẵn, nhăn nheo ở cạnh ngoài, chứa mỗi cái một hạt hình cầu đường kính 2mm, đen lam, bóng. Hoa tháng 4-5. Quả tháng 6-7.</p>\r\n<p><img src=\"http://static.flickr.com/68/225120724_759b75643d_o.jpg\" border=\"0\" style=\"border: 2px solid black;\" /></p>\r\n<p><strong><em>Bộ phận dùng:</em></strong> Lá, cành, thân, rễ.</p>\r\n<p><strong><em>Phân bố:</em></strong> Rất phổ biến khắp nước ta trên các đồi cây bụi, ở rìa rừng và trong rừng thưa, ở cả vùng đất núi và đồng bằng. Còn phân bố ở Trung Quốc, Philippin vv...</p>\r\n<p><strong><em>Thu hái:</em></strong> Rễ và lá quanh năm. Rửa sạch rễ thái nhỏ và phơi khô ngoài nắng. Lá sấy khô hay phơi trong râm.</p>\r\n<p><strong><em>Thành phần hoá học chính: </em></strong>Rễ chứa alcaloid; lá có tinh dầu thơm nhẹ..<em></em></p>\r\n<p><strong><em>Công năng:</em></strong> Thanh nhiệt, chống ngứa, giảm đau.<strong><em></em></strong></p>\r\n<p><strong><em>Công dụng, cách dùng: </em></strong></p>\r\n<p>- Lá và cành tươi nấu với nước để rửa các vết thương, vết loét, chốc đầu.</p>\r\n<p>- Thân và rễ được làm thuốc bổ đắng, dùng làm chè uống cho phụ nữ sau khi đẻ, mỗi ngày uống 4-12g.<em></em></p>\r\n<p><strong><em>Bài thuốc: </em></strong>Dự phòng cúm truyền nhiễm và viêm não: Ba chạc 15g. Rau má 30g. Ðơn buốt 15g. Cúc chỉ thiên 15g, sắc uống.<strong><em></em></strong></p>', '1', '2', '0', '278', '2010-04-02 04:22:14', '62', '', '2010-04-19 14:50:55', '62', '62', '2010-04-19 14:51:14', '2010-04-02 04:22:14', '0000-00-00 00:00:00', '', '', 'tkh=Euodia lepta (Spreng.) Merr.\nthv=\nhtvvn=Cam\nhtvkh=Rutaceae\nkvlt=\ndvlt=\nbpd=cành,lá\ntphh=alcaloid\npltb=mụn nhọt- mẩn ngứa- lở loét\ntcdy=thuốc thanh nhiệt lương huyết\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '3', '', '', '0', '9', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('20', 'Dung dịch vệ sinh phụ nữ Dạ Hương', 'ga-trng-nng-st-t', '', '<p> </p>\r\n', '\r\n<p><img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/44ed62664dc24040aa6c4bd3e836c0b6-Anh-DH-thuong.gif/Anh-DH-thuong.gif\" border=\"0\" alt=\"Dung dịch vệ sinh phụ nữ Dạ Hương  Muối – Thảo dược – Acid lactic\" width=\"500\" height=\"390\" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Đặc điểm</strong>: </span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><br />Là sản phẩm chuyên dùng để chăm sóc và vệ  sinh vùng kín (âm hộ) phụ nữ. Công thức Dạ Hương được nghiên cứu, xây  dựng dưới sự tham vấn của các Bác sỹ chuyên khoa Phụ sản và các Dược sỹ  chuyên ngành bào chế. Kết hợp các thành phần tự nhiên Dạ  Hương an toàn, không khô rát, phù hợp với sinh lý vùng kín và không ảnh  hưởng tới pH sinh lý âm đạo.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Dạng dung dịch  tiện dụng, không phải pha loãng trước khi sử dụng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Được bào chế đậm đặc  nên dùng tiết kiệm, được nhiều lần.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Dạng bào chế và trình bày</strong>: Dạng gel,  chai 100ml, chai 120 ml (có vòi bơm)</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Thành phần</strong>:</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Muối tinh khiết (NaCl) 0,9%; Lô hội (Aloe vera)  0,01%; Tinh dầu Bạc hà 0,085%; Tinh dầu Bách lý hương 0,005%; Acid  Lactic 0,05%; Vitamin E 0,01%; Hương liệu; Các thành phần khác vừa đủ  100ml.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Công dụng: </strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><br />Làm sạch nhẹ nhàng, khử mùi hôi, bảo vệ vùng  kín, ngăn ngừa vi trùng gây bệnh viêm nhiễm phụ khoa, mang lại cảm giác  tự tin với hương thơm quyến rũ.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Vệ sinh vùng  kín hàng ngày, vệ sinh vùng kín thời kỳ kinh nguyệt, thai nghén, hậu  sản.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Vệ sinh bộ phận  sinh dục ngoài cho cả nam, nữ trước và sau khi quan hệ tình dục.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Hỗ trợ điều trị  viêm nhiễm phụ khoa (sử dụng phối hợp trong phác đồ điều trị): Viêm âm  đạo, viêm âm hộ, ngứa âm hộ, huyết trắng…</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Liều dùng, cách dùng</strong>:</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Làm ướt vùng  kín, lấy 2-3 ml dung dịch vào lòng bàn tay, thoa rửa nhẹ vùng kín trong 1  phút, sau đó rửa lại thật kỹ bằng nước sạch.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Nên dùng hàng  ngày, nhất là thời kỳ kinh nguyệt, hậu sản.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Trong những  ngày hành kinh, tùy mức độ huyết ra nhiều hay ít mà rửa âm hộ từ 2-4  lần/ngày.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Bảo quản</strong>: Để nơi thoáng  mát.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Tiêu chuẩn</strong>: TCCS</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Hạn dùng</strong>: 36 tháng kể  từ ngày xuất xưởng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Lưu ý:</strong> Sản phẩm này  chỉ dùng để rửa ngoài, không dùng để thụt rửa âm đạo, không được uống.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>SĐK:  1221/07/QLD-MP</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>ĐỂ XA TẦM TAY  TRẺ EM</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>ĐỌC KỸ HƯỚNG DẪN SỬ DỤNG TRƯỚC KHI  DÙNG</strong></span></span></p>', '1', '4', '0', '15', '2010-04-02 04:23:07', '62', '', '2010-05-03 16:56:30', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:23:07', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=thuốc dùng ngoài\nt_ndt=phụ khoa\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '7', '', '', '0', '4', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('21', 'Rượu vang Ona Syrah và canh nấm', 'ru-vang-ona-syrah-va-canh-nm', '', '<p class=\"Lead\" align=\"left\">Nấm, rượu vang đều đến từ những vùng đất có  khí hậu, vị trị địa lý tương đồng và đều có lợi cho sức khỏe, dễ sử  dụng.\r\n', '\r\n</p>\r\n<p class=\"Normal\" align=\"left\">Xu hướng ăn tiệc tại các nhà hàng  Fine-dinning cho những dịp gặp mặt với đồng nghiệp, đối tác, bạn bè hay  những buổi kỷ niệm của gia đình đã phổ biến trong một xã hội năng động.  Phong cách thưởng thức và sự tinh tế trong việc kết hợp giữa đồ ăn, thức  uống giúp bữa tiệc trở nên ngon miệng và thú vị. Những món ăn ngon nếu  biết thưởng thức cùng các loại đồ uống thích hợp sẽ kích thích vị giác  và đánh thức các giác quan của người dùng.</p>\r\n<p class=\"Normal\" align=\"left\">Lẩu nấm ngon và bổ dưỡng là món ăn yêu  thích của nhiều thực khách trong xu hướng tìm lại với thiên nhiên. Nấm  vốn là thân cỏ, mềm, mát dịu, rất hợp với những đồ uống cùng có vị ngọt,  hơi chát, không quá nồng, thơm mùi thiên nhiên đặc biệt phù hợp với  rượu vang.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A0/9F/Nam_bung_lon_va_ruou_Ona_Syrah.jpg\" border=\"1\" width=\"350\" height=\"250\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Vẻ đẹp của ly rượu vang cùng độ rượu nhẹ  nhàng, thơm quyện với hương nấm rất thích hợp với phụ nữ và cả những quý  ông “sành” thưởng thức giúp cho bữa tiệc trở nên nhẹ nhàng nhưng không  kém phần ấm cúng và sang trọng. Nấm và rượu vang có rất nhiều điểm tương  đồng với nhau nhưng điểm chung và cũng là ưu điểm lớn nhất đó là rất có  lợi cho sức khỏe nếu sử dụng hợp lý và đều đặn.</p>\r\n<p class=\"Normal\" align=\"left\">Ngoài ra, chất lượng của chúng đều phụ  thuộc vào vị trí địa lý và khí hậu của nơi xuất xứ. Những cây nấm quý  thường ở những vùng đất có khí hậu trong lành. Những loại rượu vang  thượng hạng đều phải làm từ những chùm nho căng mọng được trồng trên  vùng đồi cao, lộng gió như vang Ona Premium Syrah của hãng Anakena -  hãng rượu vang Chile danh tiếng được Đại sứ quán nước này lựa chọn giới  thiệu tới người tiêu dùng Việt Nam.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A0/9F/Nam_mang_hoa_va_ruou_Ona_Syrah_%282%29.jpg\" border=\"1\" width=\"350\" height=\"250\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Loại rượu này được làm ra từ loại nho  Syrah trồng trên đồi Rapel, Layda ở San Antonio và đồi Ninquen vùng  Colchogua, Chile, thơm ngon bởi chất lượng nho trồng và công thức chế  biến cũng như bảo quản khắt khe. Loại vang Chile này có sắc màu đỏ thậm,  mùi thơm quyến rũ từ quả mâm xôi và chocolate đen cùng các gia vị đặc  biệt. Khi thưởng thức cùng lẩu nấm, thực khách cảm nhận được sự hài hòa  giữa vị thanh, ngọt của nấm, vị giác đậm đà pha với vị chát của vang Ona  Premium Syrah lưu lại rất lâu trong họng.</p>\r\n<p class=\"Normal\" align=\"left\">Rượu vang Ona Premium Syrah có giá ưu đãi  (giảm từ 719.000 đồng xuống còn 579.000 đồng một chai) từ 22/3 đến  22/5.</p>\r\n<p class=\"Normal\" align=\"left\">Địa chỉ nhà hàng lẩu nấm Ashima:</p>\r\n<p class=\"Normal\" align=\"left\"><em>Tại Hà Nội</em></p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 44 Phan Đình Phùng, quận Ba  Đình, Hà Nội. ĐT: 04. 37344600</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 182 Triệu Việt Vương, quận Hai  Bà Trưng, Hà Nội. ĐT: 04. 29743675</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 60 Giang Văn Minh, quận Ba Đình,  Hà Nội. ĐT: 04. 37226353</p>\r\n<p class=\"Normal\" align=\"left\"><em>Tại TP HCM:</em></p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 35A Nguyễn Đình Chiểu, quận 1.  ĐT: 08. 38241966</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 11 Công Trường Mê Linh, quận 1.  ĐT: 08. 38238799</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 11 Tú Xương, phường 7, quận 3.  ĐT: 08. 39320828</p>', '1', '4', '0', '16', '2010-04-02 04:23:46', '62', '', '0000-00-00 00:00:00', '0', '62', '2010-04-19 09:39:24', '2010-04-02 04:23:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('23', 'Nguy cơ bùng phát sim rác 3G', 'nguy-c-bung-phat-sim-rac-3g', '', '<p class=\"Lead\">Nhiều khách hàng mua sim 3G về dùng hết tiền trong tài  khoản thì bỏ, họ chỉ mua thẻ cào để nạp khi có khuyến mại.</p>\r\n', '\r\n<p> </p>\r\n<table style=\"width: 1px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/F0/3g.jpg\" border=\"0\" width=\"450\" height=\"323\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Theo số liệu thống kê của nhà mạng, cả nước đã có trên  14 triệu thuê bao 3G. Ảnh: <em>ICT.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Anh Trịnh Vũ, chủ một cửa hàng sim thẻ trên phố Bà  Triệu, Hà Nội cho biết thực tế tồn tại trên thị trường di động hiện nay  là khi nhà mạng khuyến mãi tặng 50% giá trị thẻ nạp, người tiêu dùng mua  thẻ cào nạp tiền cho thuê bao chính dùng để thường xuyên liên lạc. Hết  chương trình khuyến mãi, họ lại chuyển sang mua sim. Sim dùng hết tiền  trong tài khoản lại bị vứt bỏ, thành thử thị trường sim vẫn sôi động và  có sức tiêu thụ lớn.</p>\r\n<p class=\"Normal\">Theo anh Vũ, kể từ khi 3 mạng di động đại gia lần lượt  khai trương 3G, kinh doanh sim thẻ cũng “hốt” hơn. Gần đây, thẻ sim  khan hiếm, giá bị đội lên nhưng những sim còn tài khoản khuyến mãi vẫn  bán rất chạy. Nhiều người mua sim không chỉ để nghe và gọi mà còn lướt  web, sử dụng các dịch vụ 3G. “Lượng sim tiêu thụ do nhu cầu 3G cũng phần  nào khiến sim đợt này liên tục hết hàng”, anh cho biết.</p>\r\n<p class=\"Normal\">Là dịch vụ công nghệ cao được các nhà mạng đầu tư hàng  chục nghìn tỷ đồng nhưng giá cước thực tế của 3G lại rẻ. Khách hàng chỉ  cần mua một bộ kit từ 50.000 đến 60.000 đồng, sau khi kích hoạt được  160.000 đồng và đăng ký 3G là có thể dùng cả tháng.</p>\r\n<p class=\"Normal\">Trong số 3 nhà mạng đã cung cấp 3G, Viettel trừ cước  3G thẳng vào tài khoản chính. VinaPhone và MobiFone đều trừ vào tài  khoản thưởng trước, trong trường hợp tài khoản thưởng không đủ tiền để  trừ hoặc hết tiền mới tiếp tục trừ vào tài khoản chính của khách hàng.  Chính vì thế, sim của MobiFone và VinaPhone rất đắt hàng cho việc dùng  các dịch vụ 3G. Chỉ có điều, giống như xu hướng xài sim thay thẻ cào,  những thuê bao này sau khi dùng hết tiền trong tài khoản sẽ bị bỏ đi.</p>\r\n<p class=\"Normal\">Theo anh Nguyễn Đắc Dư, một chủ đại lý kinh doanh sim ở  Bắc Ninh, hiện nay, học sinh, sinh viên được coi là đối tượng tiêu thụ  sim khuyến mãi để sử dụng 3G nhiều nhất. Thông thường các bạn này mua  một bộ sim trả trước về đăng ký 3G gói 30 ngày, cắm vào ổ USB 3G dùng  thay modem, lướt web thoải mái chơi game, xem phim. \"Dùng USB 3G này  không phải đăng ký thuê bao Internet, di chuyển dễ và quan trọng là giá  rẻ hơn khá nhiều”, anh cho biết.</p>\r\n<p class=\"Normal\">Dân sành dế cũng rỉ tai nhau các chiêu lướt 3G giá  siêu rẻ. Một mẹo được khá nhiều người sử dụng đó là mua tạm máy điện  thoại hỗ trợ 3G cũ giá rẻ (khoảng dưới 1 triệu đồng), dùng nó làm modem,  cắm thẳng vào máy tính và tha hồ truy cập Internet.</p>\r\n<p class=\"Normal\">Quan chức một mạng di động lớn cho rằng do đưa ra gói  cước truy cập Internet 3G chỉ mất 250.000 đồng nên khá nhiều khách hàng  đã chuyển sang dùng 3G để truy cập Internet bằng USB thay cho ADSL. \"Với  khách hàng thì có lợi, nhưng với xu hướng mua sim thay thẻ cào dùng  dịch vụ 3G như vậy thì nhà mạng sẽ lỗ\", vị quan chức này nói.</p>\r\n<p class=\"Normal\">Giới chuyên gia nhìn nhận, nhìn vào thực tế thị trường  hiện nay càng có lý do để nghi ngờ số thuê bao 3G mà nhà mạng công bố.  Theo số liệu mà nhà mạng công bố, đã có trên 14 triệu thuê bao 3G. Trong  đó VinaPhone giữ vị trí số một với hơn 7 triệu, MobiFone với 6 triệu,  Viettel 1 triệu, còn lại là các mạng khác.</p>\r\n<p class=\"Normal\">Hiện cả nước có gần 120 triệu thuê bao di động. Tuy  nhiên, số thuê bao thực chỉ khoảng 50 triệu, trong đó, thuê bao 2G vẫn  chiếm vai trò chủ đạo. Số liệu thống kê của nhà mạng cho thấy tại Việt  Nam vẫn còn khoảng 20 triệu người chưa dùng di động, tương đương với 30  triệu thuê bao. Khoảng 92% dân số chưa có phương tiện để truy cập  Internet. Do đó, thị trường viễn thông vẫn được coi là tiềm năng và là  mảnh đất màu mỡ để 3G phát triển.</p>', '-2', '3', '0', '279', '2010-04-05 06:52:24', '62', '', '2010-04-17 03:17:03', '62', '0', '0000-00-00 00:00:00', '2010-04-05 06:52:24', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc hàn hạ\nbt_pltb=nam khoa,ngũ quan khoa,nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('24', 'Nhiều trai Trung Quốc mơ lấy vợ Việt', 'nhiu-trai-trung-quc-m-ly-v-vit', '', '<p class=\"Normal\">Cộng đồng mạng ở Trung Quốc từ lâu lưu truyền lời  đồn rằng phụ nữ Việt Nam luôn mong ngóng lấy chồng Trung Quốc. Các hãng  môi giới quảng cáo rằng các cô dâu Việt Nam \"ngoan ngoãn và hiền dịu\",  và các chàng không tốn quá nhiều tiên cũng như thời gian để lấy vợ. Báo  China Daily viết bài về hiện tượng nhiều đàn ông nước này bắt đầu theo  xu hướng đi tour tìm vợ ở Việt Nam.</p>\r\n', '\r\n<p> </p>\r\n<p class=\"Lead\"><a class=\"Lead\" href=\"http://vnexpress.net/GL/The-gioi/Anh/2010/04/3BA1A704/\"></a></p>\r\n<table style=\"width: 1px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/0F/d.jpg\" border=\"1\" alt=\"Dai và vợ - Ngân - trong ngày cưới. Ảnh: China Daily.\" width=\"392\" height=\"431\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Dai và vợ - Ngân - trong ngày cưới. Ảnh: <em>China  Daily.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Anh chàng 43 tuổi người Nam Kinh tìm được ý trung nhân  - Ngân, người Việt Nam - hồi tháng 8 năm ngoái. \"Tôi biết nàng không  giống những phụ nữ khác. Khi tôi giương ô che cho nàng khỏi nắng gắt,  nàng giành lấy và che cho tôi\", Dai kể lại.</p>\r\n<p class=\"Normal\">Họ cưới nhau chỉ hai tháng sau và Ngân giờ đây đã mang  bầu 1 tháng. Cô hòa nhập khá nhanh, đã biết một chút tiếng Trung và  thậm chí đã quen với cái lạnh ở Nam Kinh.</p>\r\n<p class=\"Normal\">Từ tháng 9 năm ngoái, Dai bắt đầu tổ chức các tour hôn  nhân cho những người như anh. Hơn một nửa những chàng này xuất thân từ  Bắc Kinh hoặc Thượng Hải. Các chàng đều có ít nhất một tấm bằng cử nhân,  tuổi từ 35 tới 45. Một phần ba trong số đó nắm chức vụ khá lớn trong  các công ty đa quốc gia.</p>\r\n<p class=\"Normal\">Những chàng rể tiềm năng nói trên được đưa đến Việt  Nam và tham gia các cuộc hẹn hò chóng vánh với 10 cô gái từ 18 tới 25  tuổi mỗi ngày. Đối tác ở Việt Nam của Dai chọn các cô có ít nhất trình  độ trung học trở lên. Kết quả là, họ đã kết duyên cho gần 50 cặp mà họ  mô tả là \"trời sinh\".</p>\r\n<p class=\"Normal\"><strong><span style=\"color: #4f4f4f;\">Trào lưu này vẫn còn khá  mới ở đại lục</span></strong> dù ở Đài Loan chuyện này đã cũ. Có tới  87.000 phụ nữ Việt lấy chồng Đài Loan trong khoảng thời gian từ tháng  1/1987 tới tháng 3/2008, theo kết quả khảo sát trên mạng của Mạng lưới  hôn nhân xuyên biên giới châu Á. <em>China Daily</em> nhận định khó có  thể xác định số cô dâu Việt ở đại lục vì họ có thể đăng ký kết hôn với  chính quyền một trong hai nước.</p>\r\n<p class=\"Normal\">Chuyên gia về hôn nhân xuyên quốc gia ở Đại học Thượng  Hải Deng Weizhi cho rằng nguyên nhân của hiện tượng trên một phần là do  vị thế của phụ nữ Trung Quốc trong xã hội đã tăng lên. Ngoài ra, tỷ lệ  mất cân bằng nam nữ cũng là một yếu tố đáng kể. Trung Quốc, theo ông,  cũng là một nơi khá hấp dẫn với phụ nữ Việt vì văn hóa hai nước có nhiều  điểm tương đồng. \"Chính tính cách nhu mì và việc luôn tôn trọng chồng  khiến phụ nữ Việt Nam có giá\", Deng nói thêm.</p>\r\n<p class=\"Normal\">Zhou, quản lý trang web Vietnam Blind Dating, đồng  tình. Anh nói một trong những động cơ khiến đàn ông Trung Quốc tìm tới  Việt Nam là vì họ \"chán ngấy thái độ cao ngạo\" của con gái trong nước.  Zhou, 40 tuổi, cũng tổ chức các tour hôn nhân tới Việt Nam. Mỗi tháng  anh đưa 3 người tới Việt Nam và từ chối những anh nào mới ngoài 20 tuổi  vì cho rằng họ chưa nghiêm túc về hôn nhân.</p>\r\n<table style=\"width: 1px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/0F/d2.jpg\" border=\"1\" alt=\"Đám cưới của Đông - người Trung Quốc - và cô dâu Việt Nam -  Tiến. Ảnh: China Daily.\" width=\"391\" height=\"431\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Đám cưới của Đông - người Trung Quốc - và cô dâu Việt  Nam - Tiến. Ảnh:<em> China Daily.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Dai Wensheng nảy ra ý định tìm kiếm vợ Việt khi anh  đọc một bài báo nói về hiện tượng này năm 2008. Hai năm hẹn hò thất bại  cũng là nguyên nhân khiến anh tìm tới phương nam. \"Tôi có cảm giác những  phụ nữ tôi gặp trước đó chỉ muốn kết hôn vì tiền và địa vị\", Dai nói.</p>\r\n<p class=\"Normal\">Sau 3 tháng chuẩn bị, Dai lên đường tới Việt Nam vào  tháng 8 năm ngoái. Anh tường thuật trực tiếp 1 tháng kiếm vợ trên blog  và thu hút được nhiều sự quan tâm. Phần lớn những người đọc blog bày tỏ ý  muốn theo chân anh. Một người trong số họ là Zhao, người Bắc Kinh, đã  tìm được vợ nhờ sự giúp đỡ của Dai. Anh chàng quản lý trang web 39 tuổi  này vốn rất ngượng ngùng khi đứng cạnh phụ nữ. Viễn cảnh yêu đương của  chàng cũng không mấy sáng sủa khi anh nghĩ cần thăng tiến trong sự  nghiệp và kiếm nhiều tiền hơn.</p>\r\n<p class=\"Normal\">Zhao tham gia tour hôn nhân lần đầu vào tháng 2 để  trải nghiệm văn hóa Việt Nam. Tháng này, anh trở lại và tìm được một cô  gái ưng ý. Họ đang chờ sự đồng ý của cha mẹ cô. \"Phụ nữ Việt Nam có  những tiêu chuẩn hoàn toàn khác\", Zhao nói. \"Tất cả những gì họ cần là  một người chồng biết yêu thương, chân thành và một gia đình hạnh phúc\",  Zhao nói.</p>\r\n<p class=\"Normal\">Những anh muốn kiếm vợ sẽ phải trả khoảng 5.100 USD để  tham gia các tour này. Một số người còn trả thêm để đi tour tìm hiểu  đất nước Việt Nam. Dai chọn khoảng 10 chàng trong số 100 ứng viên mỗi  tháng.</p>\r\n<p class=\"Normal\">Do 50% những chàng rể tương lai đều đã ly hôn, Dai  phỏng vấn để bỏ những người có ý định không tốt. Dai thường chọn những  người có lương trên trung bình bởi vì phụ nữ khi tới Trung Quốc thường  phải sống nhờ chồng do rào cản ngôn ngữ khiến họ khó kiếm việc. Họ cũng  không được hưởng phúc lợi xã hội trong 5 năm đầu tiên.</p>\r\n<p class=\"Normal\">Dù nhiều cặp yêu từ cái nhìn đầu tiên, việc giành được  tình cảm của cha mẹ nàng không dễ dàng. Nhiều anh phải trở lại Việt Nam  tới hai, ba lần để cưới vợ. May mắn cho Dai, vợ anh rất muốn lấy chồng  Trung Quốc vì anh rể của cô là người Hong Kong và Đài Loan và họ đều là  những anh chồng tốt.</p>\r\n<p class=\"Normal\">Dai - cũng sở hữu một công ty truyền thông - thường tổ  chức các cuộc gặp gỡ cho những cô dâu Việt ở Thượng Hải. Anh cũng mở  một diễn đàn trên mạng cho các anh chồng để bàn luận về chuyện gia đình,  ví dụ như quốc tịch cho con.</p>\r\n<p class=\"Normal\">Dai đã đăng thông tin cho tour tháng sau tới Việt Nam.  \"Tôi rất hài lòng khi giúp nhiều người gặp được nhau\", anh nói, song  cũng cảnh báo các ứng viên nhớ rằng những thứ như rào cản ngôn ngữ, khác  biệt văn hóa có thể gây cản trở cho cuộc sống của họ sau này.</p>', '-2', '3', '0', '279', '2010-04-05 06:53:44', '62', '', '2010-04-07 07:26:21', '62', '0', '0000-00-00 00:00:00', '2010-04-05 06:53:44', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '0', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('25', 'Trang này đang được xây dựng', 'trang-nay-ang-c-xay-dng', '', '<p>...</p>', '', '1', '6', '0', '33', '2010-04-06 07:32:19', '62', '', '2010-04-06 07:38:39', '62', '0', '0000-00-00 00:00:00', '2010-04-06 07:32:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '44', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('26', 'Chiếc răng khổng lồ nặng hơn 300 kg tại TP HCM', 'chic-rng-khng-l-nng-hn-300-kg-ti-tp-hcm', '', '<p class=\"Lead\" align=\"left\">Chiếc răng khổng lồ cao 3m, đường kính 3 m  đặt tại công viên 23/9, TP HCM từ ngày 5/4 và những trò chơi thú vị  quanh nó giúp các bé dễ dàng tiếp thu những kiến thức về sức khoẻ răng  miệng.\r\n', '\r\n</p>\r\n<p class=\"Normal\" align=\"left\">Mỗi tối, nơi đây thu hút các em bé và cha  mẹ bởi ánh sáng rực rỡ của của hệ thống đèn chiếu. Chiếc răng không chỉ  thu hút người dân bởi kích thước khác thường mà còn vì nó bị vàng ố với  nhiều mảng bám trên thân răng. Với hình ảnh trực quan này, trẻ em có  thể thấy hậu quả của việc không đánh răng. Các em sẽ thấy răng của mình  sẽ biến đổi nhanh thế nào nếu không đánh trước khi đi ngủ.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/DD/Hinh1.jpg\" border=\"1\" alt=\"Chiếc răng khổng lồ ở công viên 23/9- Tp.HCM đã góp phần  tạo ra sự hứng thú cho các bé trong khóa học về chăm sóc sức khỏe răng  miệng.\" width=\"400\" height=\"289\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Chiếc răng khổng lồ ở công viên 23/9, TP HCM đã góp  phần tạo ra sự hứng thú cho các bé trong khóa học về chăm sóc sức khỏe  răng miệng.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Không ít bà mẹ than phiền con mình không  chịu đánh răng hoặc rất khó khăn. Có nhiều lý do khác nhau khiến trẻ  ghét hoạt động này, thường là do không muốn bị cắt ngang các trò thú vị  khác như chơi game, xem TV… Ngoài ra, do người lớn bận việc quên nhắc  nhở con mình đánh răng, lâu ngày sẽ khiến trẻ không có thói quen vệ sinh  tự giác. Trẻ sẽ chống đối mỗi khi bị bắt đánh răng, đặc biệt là trước  khi đi ngủ nên phụ huynh thường phải dùng những biện pháp “mạnh”, ép  buộc trẻ tuân thủ mệnh lệnh của mình.</p>\r\n<p class=\"Normal\" align=\"left\">Đến nơi trưng bày này, ngoài việc hướng  dẫn thông qua hình ảnh trực quan để thực hành tốt nhất, phụ huynh còn  được hướng dẫn cách truyền tải phù hợp với tâm lý trẻ nhỏ để khuyến  khích các em đánh răng, đặc biệt trước khi đi ngủ một cách tự nguyện và  vui vẻ.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/DD/Hinh-31.jpg\" border=\"1\" width=\"254\" height=\"400\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Ngoài chiếc răng khổng lồ, những trò chơi tại công  viên 23/9 giúp bé hiểu được tầm quan trọng của việc đánh răng vào buổi  sáng và tối.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '1', '5', '0', '20', '2010-04-06 07:41:03', '62', '', '2010-04-06 07:41:46', '62', '0', '0000-00-00 00:00:00', '2010-04-06 07:41:03', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '2', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('27', 'Suýt đè chết bạn trai vì bộ ngực bự', 'suyt-e-cht-bn-trai-vi-b-ngc-b', '', '<p class=\"Lead\">Claire Smedley đã khiến bạn trai suýt chết ngạt khi đôi  gò bồng đảo quá khổ của chị đè lên ngực anh lúc hai người đang ân ái.\r\n', '\r\n</p>\r\n<p class=\"Normal\">Bà mẹ 3 con người Anh - với bộ ngực cỡ 40 LL - hoảng  sợ khi nhấc bộ ngực ra và thấy người yêu Steven đã ngừng thở.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/D7/nguc1.jpg\" border=\"1\" width=\"311\" height=\"235\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Claire Smedley với bộ ngực to thứ hai nước Anh. Ảnh: <em>newsoftheworld.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">\"Lần đó, anh ấy đã đập đập vào tôi, nhưng tôi nghĩ do  anh ấy đang cao hứng nên không ngừng lại. Vài phút sau đó tôi nhận thấy  anh ấy ngừng cử động, rồi dường như không còn thở nữa\", chị kể với <em>newsoftheworld</em>.</p>\r\n<p class=\"Normal\">\"Tôi đã hoảng sợ và chực gọi cứu thương thì may thay  anh ấy bắt đầu tỉnh lại. Anh ấy thực sự chóng mặt, giống như trong một  cơn hôn mê. Sau đó anh ấy ho và ngồi dậy. Tôi nhẹ hết cả người\", chị  nói.</p>\r\n<p class=\"Normal\">Còn Steven thì nói thêm \"Tôi đã nghĩ mình tận số rồi.  Tôi cố gắng vỗ vào tay cô ấy để bảo cô ấy ngừng lại và nhấc người ra,  nhưng tôi nghĩ cô ấy hiểu sai tín hiệu\".</p>\r\n<p class=\"Normal\">Anh chàng may mắn này đã sống sót, nhưng mối quan hệ  của họ thì không, và họ chia tay nhau 3 tháng trước. \"Sau lần đó anh ấy  từ chối sex\", chị nói.</p>', '1', '5', '0', '20', '2010-04-06 07:42:00', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 07:42:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '21', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('28', 'Nước có thể ngăn chặn chiến tranh', 'nc-co-th-ngn-chn-chin-tranh', '', '<p class=\"Lead\">Công nghệ từng được Cơ quan hàng không vũ trụ Mỹ (NASA)  dùng để tìm kiếm nước trên sao Hỏa có thể giúp con người tránh được  nhiều cuộc chiến tranh vì nguồn nước. \r\n', '\r\n</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/52/DESERT.jpg\" border=\"0\" alt=\"Một người đàn ông cưỡi lạc đà\" width=\"450\" height=\"263\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Một người đàn ông cưỡi lạc đà gần các kim tự tháp trên  sa mạc Meroe ở phía bắc Sudan vào ngày 26/2. Ảnh: <em>AFP</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Vào năm 2007, NASA phóng thiết bị thăm dò nước mang  tên Marsis để thăm dò nước bên dưới bề mặt hành tinh đỏ. <em>Telegraph</em> cho biết, thiết bị gồm một máy thu nhận âm thanh, một ăng ten phát sóng  dài 40 m gắn trên một tàu thăm dò trên quỹ đạo sao Hỏa. Ăng ten có thể  phát ra sóng radio xuống độ sâu tới 3,7 km bên dưới bề mặt hành tinh đỏ.</p>\r\n<p class=\"Normal\">Dữ liệu mà Marisi gửi về cho thấy có một lượng nước  đóng băng lớn bên dưới sa mạc bao phủ bề mặt sao Hỏa.</p>\r\n<p class=\"Normal\">Tiến sĩ Essam Heggy, một nhà nghiên cứu trái đất thuộc  NASA, cho rằng công nghệ tìm nước trên sao Hỏa có thể được áp dụng trên  các sa mạc rộng lớn ở Trung Đông và Bắc Phi. Heggy đưa ra ý kiến trong  một hội nghị về nước do Liên Hợp Quốc tổ chức đang diễn ra tại thành phố  Alexandria, Ai Cập.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/52/Marsis.jpg\" border=\"0\" alt=\"Hình minh họa thiết bị Marsis với ăng ten dài 40 m bay  trên quỹ đạo sao Hỏa. Ảnh: nasa.gov.\" width=\"450\" height=\"377\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Hình minh họa thiết bị Marsis với ăng ten dài 40 m bay  trên quỹ đạo sao Hỏa. Ảnh: <em>nasa.gov</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">“Chẳng thứ gì có thể thay thế nước. Nhưng trong nhiều  năm qua con người vẫn chưa cố gắng tìm ra nó. Nước là một tài nguyên,  giống như mọi tài nguyên khác, và chúng ta từng chứng kiến nhiều cuộc  xung đột vì tài nguyên”, <em>Telegraph</em> dẫn lời Heggy.</p>\r\n<p class=\"Normal\">Tiến sĩ này khẳng định tình trạng khan hiếm nước có  thể gây nên nhiều cuộc xung đột tại Bắc Phi và Trung Đông trong tương  lai. Nhưng nếu sử dụng những thiết bị như Marsis, các quốc gia có thể  tìm thấy những nguồn nước nằm ở độ sâu hàng nghìn mét dưới các sa mạc.  Nhiều nghiên cứu của NASA cho thấy nhiều thung lũng và hồ nước nằm bên  dưới một vùng sa mạc tại Darfur, Sudan.</p>\r\n<p class=\"Normal\">Giới khoa học lo ngại hiện tượng ấm lên sẽ gây nên  nhiều thiệt hại cho địa cầu trong thế kỷ tới, trong đó thiếu nước chỉ là  một hiểm họa. Chẳng hạn, trong lúc loài người ngày càng cần thêm đất  đai thì tình trạng sa mạc hóa đang biến hàng triệu thửa ruộng màu mỡ  thành những mảnh đất chết. Theo <em>AFP</em>, một báo cáo của  Chương trình Phát triển Liên Hợp Quốc cho thấy 2,87 triệu km2 đất có  nguy cơ biến thành sa mạc. Một nghiên cứu khác của Liên Hợp Quốc vào năm  2007 chỉ ra rằng khoảng 50 triệu người sẽ phải rời khỏi nơi sinh sống  vì sa mạc hóa.</p>', '1', '5', '0', '21', '2010-04-06 07:42:33', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 07:42:33', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('29', 'Trái đất nhìn từ vũ trụ', 'trai-t-nhin-t-v-tr', '', '<p class=\"Lead\">Soichi Noguchi và Jose Hernandez, hai nhà du hành trên  Trạm không gian quốc tế, chụp nhiều ảnh về trái đất. \r\n', '\r\n</p>\r\n<p class=\"Normal\">Những bức ảnh của Soichi Noguchi (Nhật Bản) và Jose  Hernandez đã được đăng trên trang <em>Telegraph</em>.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/1.jpg\" border=\"0\" alt=\"Quần đảo Maldives trên Ấn Độ Dương.\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Quần đảo Maldives trên Ấn Độ Dương. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/2.jpg\" border=\"0\" alt=\"Trung tâm vũ trụ\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Trung tâm vũ trụ Kennedy, bang Florida, Mỹ. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/3.jpg\" border=\"0\" alt=\"Cầu Golden Gate nổi tiếng tại thành phố San Francisco,  Mỹ.\" width=\"460\" height=\"307\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Cầu Golden Gate nổi tiếng tại thành phố San Francisco,  Mỹ. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/4.jpg\" border=\"0\" alt=\"Thành phố\" width=\"460\" height=\"304\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Thành phố Port-Au-Prince tại Haiti vào cuối tháng 1.  Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/5.jpg\" border=\"0\" alt=\"Núi Phú Sĩ tại Nhật Bản.\" width=\"460\" height=\"302\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Núi Phú Sĩ tại Nhật Bản. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/6.jpg\" border=\"0\" alt=\"Núi\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Kilimanjaro - ngọn núi cao nhất châu Phi - ở đông bắc  Tanzania. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/7.jpg\" border=\"0\" alt=\"Mây dạ quang phía trên Đại Tây Dương.\" width=\"380\" height=\"445\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Mây dạ quang phía trên Đại Tây Dương. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/8.jpg\" border=\"0\" alt=\"Thủ đô Rome của Italy.\" width=\"460\" height=\"306\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Thủ đô Rome của Italy. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/9.jpg\" border=\"0\" alt=\"Mặt trăng nhìn từ Trạm Không gian quốc tế.\" width=\"460\" height=\"333\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Mặt trăng nhìn từ Trạm Không gian quốc tế. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/10.jpg\" border=\"0\" alt=\"Các nhà du hành trên Trạm Không gian quốc tế.\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Các nhà du hành trên Trạm Không gian quốc tế. Ảnh: <em>Jose  Hernandez</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/11.jpg\" border=\"0\" width=\"460\" height=\"367\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Trạm Không gian quốc tế và trái đất ở phía sau. Ảnh: <em>Jose  Hernandez</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/12.jpg\" border=\"0\" alt=\"Mặt trăng và một phần trái đất. Ảnh: Soichi Noguchi.\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Mặt trăng và một phần trái đất. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '1', '5', '0', '22', '2010-04-06 07:44:48', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 07:44:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '7', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('30', '4 phút uy hiếp của tên cướp ngân hàng', '4-phut-uy-hip-ca-ten-cp-ngan-hang', '', '<p class=\"Lead\">\"Người đàn ông khoảng 1m7, áo đen, đội mũ sùm sụp và bịt  mặt xuất hiện, cầm súng chĩa về phía quầy giao dịch. Hắn lớn tiếng: Đưa  đây ít tiền\", nữ nhân viên Ngân hàng thương mại cổ phần (TMCP) Hàng hải  kể lại vụ cướp trưa 5/4.\r\n', '\r\n<br /><a class=\"Lead\" href=\"http://vnexpress.net/GL/Phap-luat/2010/04/3BA1A778/\"><br /></a></p>\r\n<p class=\"Normal\">Chiều 5/4, 6 tiếng sau khi xảy ra vụ cướp tại chi  nhánh Ngân hàng TMCP Hàng hải ở tầng một trung tâm thương mại trên đường  La Thành, Hà Nội, chị Hà Thủy (kiểm soát viên, một trong ba nữ nhân  viên đối mặt với tên cướp) đã kể lại sự việc với <em>VnExpress.net.</em></p>\r\n<p class=\"Normal\">Theo chị Thủy, sáng 5/4 một khách hàng gọi điện đến  chi nhánh yêu cầu rút 3 tỷ đồng gửi từ trước. Ngay sau đó, tiền được  chuyển về địa điểm giao dịch này để buổi chiều chi trả.</p>\r\n<p class=\"Normal\">\"Khoảng 12h, khi ôtô chở tiền vừa rời đi được ít phút,  một thanh niên cao khoảng 1m7, áo đen, đội mũ sùm sụp và che mặt kín  mít bất ngờ xuất hiện, cầm súng chĩa vào phía quầy giao dịch.\", chị Thủy  cho hay.</p>\r\n<p class=\"Normal\">\"Hắn gằn giọng: \'Đưa đây ít tiền\'. Chúng tôi cố gắng  kéo dài thời gian để trì hoãn nhưng tên này luôn chĩa súng, uy hiếp bắt  bỏ tiền vào chiếc cặp mở sẵn\", chị Thủy kể giọng chưa hết bàng hoàng.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/BB/1.jpg\" border=\"1\" alt=\"Chị Thủy và Cẩm Vân (giao dịch viên) vẫn đang miệt mài làm  việc sau khi vụ cướp xảy ra. Ảnh: Anh Thư\" width=\"400\" height=\"300\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Các nhân viên chi nhánh Ngân hàng TMCP Hàng hải vẫn  miệt mài làm việc sau khi vụ cướp xảy ra. Ảnh chụp chiều 5/4: <em>Anh  Thư.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Lúc này giờ nghỉ trưa nên ngân hàng vắng người. Chị  định với tay đến chiếc điện thoại bàn, tên cướp rút con dao bầu giấu sẵn  trong người đe dọa \"giết\" nếu gọi cảnh sát.</p>\r\n<p class=\"Normal\">Hắn lăm lăm khua con dao trước mặt khiến 3 nữ nhân  viên hoảng sợ không dám bấm nút chuông báo động.</p>\r\n<p class=\"Normal\">\"Theo yêu cầu của tên cướp, tôi nhét từng thếp tiền  mệnh giá 50.000 đồng vào cặp, đồng thời cố gắng nhìn để nhận dạng nhưng  không được vì hắn đã che kín mặt, chỉ nhìn thấy đôi mắt sắc lạnh\", nữ  nhân viên này cho hay.</p>\r\n<p class=\"Normal\">Sự việc diễn ra chỉ trong vòng 4 phút. Tên cướp chạy  ra cửa. Trước khi đi ra, hắn còn dùng áo lau vết tay trên cửa kính.</p>\r\n<p class=\"Normal\">Khi đó, chị Thủy cùng 2 nữ đồng nghiệp mới định thần  lại, hô hoán \"cướp, cướp\". Do kính dán đề can mờ, nên các nhân viên  không biết tên cướp tẩu thoát một mình hay có đồng bọn bên ngoài chờ  sẵn. Hiện cũng chưa có nguồn tin nào xác nhận, khẩu súng tên cướp sử  dụng là thật hay giả.</p>\r\n<p class=\"Normal\">Theo Ngân hàng Hàng hải, số tiền bị cướp hơn 90 triệu  đồng, chủ yếu là lượng tiền nhỏ lẻ đang được kiểm đếm tại quầy. “Rất may  túi tiền 2 tỷ đồng vừa chuyển về chúng tôi chưa kịp kiểm tra đang để  phía dưới chân, tên cướp không phát hiện được”, chị Thủy cho hay.</p>\r\n<p class=\"Normal\">Trao đổi với <em>VnExpress.net</em>, ông Nguyễn Hoàng  An (Giám đốc chi nhánh Hà Nội, Ngân hàng Hàng hải) nhận định, có lẽ tên  cướp đã theo dõi và rình rập từ trước nên lợi dụng lúc mọi người chuẩn  bị nghỉ trưa mới ra tay.</p>\r\n<p class=\"Normal\">\"Chúng tôi đã chuyển toàn bộ băng ghi hình từ một  camera gắn ở phía ngoài và 3 camera bên trong cho cảnh sát. Hy vọng  những thông tin nhận dạng từ nhân chứng và các dữ liệu từ camera sẽ giúp  cảnh sát sớm tìm được thủ phạm\", vị giám đốc nói.</p>\r\n<p class=\"Normal\">Sáng nay, thông tin về hung thủ vẫn đang được cảnh sát  khẩn trương xác minh. Vụ việc được chuyển Cơ quan cảnh sát điều tra  Công an Hà Nội thụ lý theo thẩm quyền.</p>\r\n<p class=\"Normal\">Chi nhánh Ngân hàng TMCP Hàng hải nằm dưới tầng 1 của  Trung tâm thương mại ngay ngã tư Ô Chợ dừa, một khu vực đông đúc thường  xảy ra ùn tắc giao thông. Nơi xảy ra vụ cướp cách trụ sở công an phường  khoảng 10 mét.</p>', '1', '4', '0', '16', '2010-04-06 08:56:48', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 08:56:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('31', 'BOGANIC', 'nga-ra-mt-tau-chien-tang-hinh', '', '<p>\r\n', '\r\n</p>\r\n<p><img src=\"http://www.traphaco.com.vn/san-pham/atproductlist/atproductlist.2007-09-19.5558750653/atproduct.2007-09-26.6547743926/Photo_preview\" border=\"0\" width=\"300\" height=\"175\" /></p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>\r\n<p>Trình bày:</p>\r\n<br /> </strong></span></span><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> Viên bao đường: - Hộp 2 vỉ x 20 viên - Hộp 5 vỉ x 20 viên Viên bao film: - Hộp 2 vỉ x 20 viên - Hộp 5 vỉ x 20 viên Viên nang mềm: - Hộp 5 vỉ x 10 viên. </span></span></p>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_components_label\" > </p>\r\n-->\r\n<p>Thành phần:</p>\r\n</strong></span></span>\r\n<p>Cao Actiso</p>\r\n<p>Cao biển súc</p>\r\n<p>Bột bìm bìm biếc</p>\r\n<p>Tá dược...vđ... 1 viên</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_indications_label\" > </p>\r\n-->\r\n<p>Chỉ định:</p>\r\n</strong></span></span>\r\n<p>- Dùng cho những người thiểu năng gan, viêm gan gây  mệt mỏi, khó tiêu, vàng da, mụn nhọt, lở ngứa, bí đại tiểu tiện, táo  bón. <br />- Giải độc, chống dị ứng. Đặc biệt suy giảm chức năng gan do  dùng nhiều bia rượu. - Xơ vữa động mạch, mỡ trong máu cao.</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_dosage_label\" > </p>\r\n-->\r\n<p>Liều dùng-cách dùng:</p>\r\n</strong></span></span>\r\n<p><em>*</em><strong> <em>Viên bao đường, bao phim:</em></strong></p>\r\n<p>- Người lớn: mỗi lần 2-4 viên, ngày 3 lần.<br />- Trẻ  em: mỗi lần 1-2 viên, ngày 3 lần.</p>\r\n<p><em><strong>* Viên nang mềm:</strong></em></p>\r\n<p>- Người lớn: mỗi lần 1 – 2 viên, ngày 3 lần.</p>\r\n<p>- Trẻ em trên 8 tuổi: mỗi lần 1 viên, ngày 3 lần.</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_contraindications_label\" > </p>\r\n-->\r\n<p>Chống chỉ định:</p>\r\n</strong></span></span>\r\n<p>Mẫn cảm với bất cứ thành phần nào của thuốc.</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_selflife_label\" > </p>\r\n-->\r\n<p>Hạn sử dụng:</p>\r\n</strong></span></span><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> 24 tháng </span></span></div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_specification_label\" > </p>\r\n-->\r\n<p>Chứng nhận:</p>\r\n</strong></span></span><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> TCCS</span></span></div>', '1', '4', '0', '15', '2010-04-06 09:03:03', '62', '', '2010-04-22 02:01:22', '62', '0', '0000-00-00 00:00:00', '2010-04-06 09:03:03', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '6', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('32', 'Thuốc ho Bảo Thanh', 'goa-ph-en-la-ai', '', '', '\r\n<p><img src=\"http://www.hoalinhpharma.com.vn/Image.aspx/image=pjpeg/3766a224361eb2251781001219094ef2-Bao-Thanh-dang-trong-bai-vi.jpg/Bao-Thanh-dang-trong-bai-vi.jpg\" border=\"0\" width=\"215\" height=\"228\" /></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span style=\"color: #008000;\"><strong>Thông  tin sản phẩm:</strong></span></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong>Thành  phần: </strong></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">Ô mai 12,5g; Mật ong 25g; Xuyên bối  mẫu 10g; Tỳ bà diệp 12,5g; Sa sâm 2,5g; Phục linh 2,5g; Trần bì 2,5g;  Cát cánh 10g; Bán hạ 2,5g; Ngũ vị tử 1,25g; Qua lâu nhân 5,0g; Khoản  đông hoa 2,5g; Viễn chí 2,5g; Khổ hạnh nhân 5,0g; Gừng 2,5g; Cam thảo  2,5g; Tinh dầu bạc hà 2,5mg và Các tá d­ược.</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span style=\"color: #008000;\"><strong>Quy  cách đóng gói và dạng bào chế: </strong></span></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- Hộp 1 chai Siro 125ml.</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Noi-dung/Thuoc-ho-Bao-Thanh-dang-Vien-ngam/Vien_ngam_Thuoc_ho_Bao_Thanh/\">Hộp  24 viên ngậm </a>(Dạng kẹo ngậm Lozenge vị ngọt thơm, dễ dùng,  chứa hàm lượng tối đa cao dược liệu trong một viên)</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><span style=\"color: #008000;\">Đặc  điểm thành phần, tác dụng:</span></strong></span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">\r\n<p align=\"justify\">Thuốc ho Bảo Thanh phối hợp 2 vị thuốc dân gian quen  thuộc <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Thuoc-ho-Bao-Thanh/Thong-tin-lien-quan-Thuoc-ho-Bao-Thanh/O_mai-Mon_an_ngon_vi_thuoc_quy/\">Ô  mai</a> - <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Thuoc-ho-Bao-Thanh/Thong-tin-lien-quan-Thuoc-ho-Bao-Thanh/Mat_ong_voi_suc_khoe_va_doi_song/\">Mật  ong </a>và bài thuốc Đông y trị ho nổi tiếng của Trung Quốc <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Dong-y-va-kinh-nghiem-DG/Dong-y-va-kinh-nghiem-dan-gian/Xuyen_boi_ty_ba_cao-Tu_huyen_thoai_den_hien_thuc/\">\"Xuyên  bối tỳ bà cao\".</a></p>\r\n<p align=\"justify\"><span style=\"color: #008000;\"><strong>Ô mai: </strong></span></p>\r\n<p align=\"justify\">Ô mai không chỉ là món ăn quen thuộc, được  nhiều người Việt Nam ưa chuộng mà còn là vị thuốc dân gian giúp trừ ho,  tiêu đờm công hiệu, đặc biệt trong các trường hợp ho mãn tính, ho dai  dẳng lâu ngày.</p>\r\n<p align=\"justify\">Ghi nhận công dụng của Ô mai trong điều trị các chứng  ho, Hải Thượng Lãn Ông có phân tích: Tạng phế sắc trắng, là bẩm thụ khí  của hành Kim, nó như cái tán, cái lọng che chở cho các tạng khác, không  thể chịu được bất kì một vật gì làm chướng ngại. Tỳ là gốc sinh đờm,  Phế là đồ chứa đờm. Nếu đờm ở Phế nhiều thì khí nghịch lên mà gây thành  ho. Phế là chỗ then chốt, cửa ngõ của toàn thân, không chỗ nào quan  trọng hơn chỗ đó. Do vậy, bệnh phế khí nghịch, nhiều đờm không thể không  tìm cách trị gấp. Hải Thượng Lãn Ông viết: Ô mai có vị chua tính liễm,  có thể thăng, có thể giáng, giúp thuận khí chỉ ho, tiêu đờm. Điều đó  khẳng định vai trò cốt yếu của Ô mai trong các bài thuốc trị ho, đặc  biệt các chứng ho dai dẳng, lâu ngày không khỏi.</p>\r\n<p align=\"justify\"><strong><span style=\"color: #008000;\">Mật ong:</span></strong></p>\r\n<p align=\"justify\">Theo dân gian, mật ong là một món ăn ngon, có tác  dụng bồi bổ cơ thể đồng thời giúp giảm ho. Mỗi sáng uống một ly nước pha  mật ong giúp cơ thể khỏe mạnh, trẻ lâu, phòng ngừa được nhiều bệnh tật.  Khi bị ho kéo dài khiến cơ thể mệt mỏi, suy nhược, dùng mật ong sẽ giúp  phục hồi sinh lực, bệnh mau khỏi hơn.</p>\r\n<p align=\"justify\">Từ hàng thế kỉ nay, mật ong vẫn là phương thuốc cổ  truyền dùng trị ho và cảm lạnh. Công dụng này ngày càng được khoa học  chứng minh và củng cố. Tiến sĩ Ian Paul, trưởng nhóm nghiên cứu trường  đại học Dược bang Pennsylvania, Hershey (Mỹ), khi so sánh hiệu quả giảm  ho của mật ong với Dextromethorphan (DM), một hoạt chất giảm ho được sử  dụng phổ biến, đã kết luận: “Kết quả rõ rệt đến nỗi chúng tôi có thể  khẳng định rằng mật ong tốt hơn hẳn các loại thuốc mua ở quầy”. Nghiêu  cứu cũng được tiến hành trên trẻ nhỏ và cho kết quả tương tự: 105 trẻ từ  2 đến 18 tuổi, chia 2 nhóm: nhóm uống mật ong 30 phút trước khi đi ngủ  và nhóm sử dụng DM có hương vị mật ong cũng 30 phút trước khi đi ngủ.  Kết quả là những trẻ uống mật ong giảm được các cơn ho và co thắt hơn  hẳn những trẻ sử dụng DM. Tiến sĩ Paul nói: “Sử dụng mật ong là một liệu  pháp an toàn, hiệu quả mà các bậc cha mẹ nên sử dụng cho trẻ trên 1  tuổi khi chúng bị ho hay cảm cúm”.</p>\r\n<p align=\"justify\">Mật ong còn có tác dụng kháng khuẩn tự nhiên và làm  dịu niêm mạc hầu họng (do thành phần chứa acid Panthotenic và Albumin  giúp phục hồi và tái tạo niêm mạc bị tổn thương: viêm, đau rát do ho kéo  dài…). Vai trò của mật ong ngày càng được khẳng định trong hệ thống y  học chính thống “Tổ chức y tế thế giới đã xem mật ong như một phương  thuốc trị bệnh tiềm năng”.</p>\r\n<p align=\"justify\"><strong><span style=\"color: #008000;\">Bài thuốc \"Xuyên bối tỳ  bà cao\":</span></strong></p>\r\n<p align=\"justify\">Là bài thuốc Đông y trị ho nổi tiếng của Trung Quốc,  được đưa vào Dược điển Trung Quốc, trở thành bài thuốc chính thống được  sử dụng rộng rãi.</p>\r\n<p align=\"justify\">\"Xuyên bối tỳ bà cao\" phối hợp các vị dược liệu theo  bố cục chặt chẽ của một bài thuốc Đông y gồm Quân - Thần - Tá - Sứ, có  tác dụng bổ trợ lẫn nhau, tăng cường công năng: Bổ phế - Trừ ho - Tiêu  đờm.</p>\r\n</span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Bào chế  và quản lý chất lượng: </span></strong></p>\r\n</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\">Quá trình nghiên cứu bào chế  thuốc ho cao cấp Bảo Thanh được thực hiện dưới sự tham vấn của các Lương  y, Bác sĩ y học cổ truyền, Dược sĩ chuyên ngành bào chế. Công tác đảm  bảo chất lượng được thực hiện xuyên suốt từ khâu tuyển chọn nguyên liệu,  qui trình bào chế tới việc bảo quản và phân phối thành phẩm.Nguyên liệu  làm thuốc được tuyển chọn kỹ, đảm bảo nguyên liệu sạch, an toàn, không  có thuốc bảo vệ thực vật và hóa chất bảo quản. Qui trình sản xuất được  giám sát chặt chẽ. Thuốc ho Bảo Thanh được đựng trong chai thủy tinh  dày, kín, tối màu, đảm bảo chất lượng trong toàn khâu lưu kho và phân  phối.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Công  năng</span></strong>:</p>\r\n<p dir=\"ltr\" align=\"justify\">Bổ phế (Chữa tận gốc theo quan điểm  Đông y)</p>\r\n<p dir=\"ltr\" align=\"justify\">Trừ ho, tiêu đờm (Chữa triệu chứng -  Chữa phần ngọn theo quan điểm Đông y)</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Chủ trị: </span></strong></p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho mãn tính, ho dai dẳng lâu ngày  không khỏi</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho do dị ứng thời tiết</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho do cảm lạnh, cảm cúm</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho gió, ho khan, ho có đờm</p>\r\n<p dir=\"ltr\" align=\"justify\">- Hỗ trợ điều trị viêm họng, viêm phế  quản</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Liều  dùng, cách dùng: </span></strong></p>\r\n<p dir=\"ltr\" align=\"justify\">- Trẻ em dư­ới 3 tuổi: ngày uống 3  lần, mỗi lần 5 ml.<br />- Trẻ em trên 3 tuổi: ngày uống 3 lần, mỗi  lần 10 ml.<br />- Ngư­ời lớn: ngày uống 3 lần, mỗi lần 15 ml</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Tác  dụng không mong muốn</span></strong>: Chưa nhận thấy tác  dụng không mong muốn nào của thuốc</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Hạn dùng:</span></strong> 24 tháng kể từ ngày sản  xuất. Không dùng nếu thấy thuốc có hiện tượng mốc, hỏng hoặc có dấu  hiệu khác lạ; đồng thời báo ngay cho nhà sản xuất biết.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Bảo  quản</span></strong>: Nơi khô mát, tránh ánh sáng.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Tiêu  chuẩn</span></strong>: TCCS.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Lưu  hành số</span></strong>: V184 – H12 – 10.</p>\r\n<p dir=\"ltr\" align=\"justify\">Đọc kĩ hướng dẫn sử dụng trước khi dùng.</p>\r\n<p dir=\"ltr\" align=\"justify\">Sản phẩm được phân phối tại các nhà thuốc  trên toàn quốc.</p>', '1', '4', '0', '15', '2010-04-06 09:03:57', '62', '', '2010-04-22 01:54:07', '62', '0', '0000-00-00 00:00:00', '2010-04-06 09:03:57', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=thuốc nước\nt_ndt=hô hấp\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '5', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('33', 'Gian hàng thuốc Đông dược', 'gian-hang-test', '', '<p>Thuốc cảm lạnh An Nhân</p>\r\n<p>\r\n', '\r\n<img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/5306274ac95f4eeea9a3e6724f02f042-an-nhan.gif/an-nhan.gif\" border=\"0\" width=\"300\" height=\"375\" /></p>', '1', '7', '0', '285', '2010-04-12 09:01:00', '62', '', '2010-04-21 14:32:27', '62', '0', '0000-00-00 00:00:00', '2010-04-12 09:01:00', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('34', 'Phụ Bì Khang', 'ph-bi-khang', '', '<p>\r\n', '\r\n</p>\r\n<p>Hỗ trợ điều trị mề đay cấp và mạn tính   <br /> <br />Đối tượng sử dụng: dùng cho người bị mề đay, bị mẩn đỏ thành từng  đám trên da, ngứa ngáy khó chịu.</p>\r\n<p> </p>\r\n<p><img src=\"http://thuocbietduoc.com.vn/images/drugs/PHU-BI-KHANG.jpg\" border=\"0\" width=\"400\" height=\"293\" /><br />- Cơ chế tác dụng:  <br /> <br />Mề đay là tình trạng da nổi lên từng đám nhiều hoặc ít, không đều,  màu hồng hoặc xanh trắng, các mụn thường tự biến mất và di chuyển,  thường rất ngứa. Mề đay là một trong những bệnh ngoài da phổ biến tiến  triển theo 2 thể bệnh khác nhau: Thể cấp tính và mãn tính. Theo Y học  hiện đại, Mề đay xảy ra do những yếu tố dị nguyên (chất gây dị ứng: như  thời tiết, thức ăn, lông động vật, phấn hoa, côn trùng...) tác động vào  cơ thể. Việc điều trị phải loại bỏ nguyên nhân (dị nguyên) đồng thời  điều trị triệu chứng (giảm mẩn ngứa, viêm). Bên cạnh đó phải tăng cường  chức năng gan (giải độc) và chức năng thận (tăng đào thải các chất độc  hại ra khỏi cơ thể) và tăng cường năng lượng tế bào giúp bảo vệ tế bào .   <br /> <br />PHỤ BÌ KHANG là sự phối hợp toàn diện các thành phần giúp điều trị  triệu chứng giảm viêm, ngứa (cao nhàu); các thành phần giúp tăng cường  chức năng giải độc của cơ thể (cao gan); các thành phần giúp tăng cường  chức năng thận (cao nhàu) và tăng cường năng lượng tế bào, giúp bảo vệ  tế bào ( L- carnitin fumarat ) . Nhờ vậy PHỤ BÌ KHANG giúp hỗ trợ phòng  và điều trị hiệu quả các trường hợp mề đay cả cấp tính và mãn tính.  <br /> <br />Cao nhàu : có tác dụng thanh nhiệt, giải độc, bồi bổ sức khỏe, tăng  cường khả năng miễn dịch, phục hồi các tế bào bị thương tổn suy yếu,  chống viêm nhiễm, làm mụn nhọt mau lành, chóng lên da non, chống sung  huyết, giảm đau nhức mệt mỏi cơ thể. (Cây thuốc và động vật làm thuốc  Việt Nam- tập 2- trang 445)  <br /> <br />Cao gan : Được chiết xuất từ gan động vật, cao gan chứa nhiều chất  dinh dưỡng như sắt, protein, các<a href=\"http://thuocbietduoc.com.vn/home/search.aspx?desc=suc-khoe&amp;key=%20vitamin&amp;opt=1\" title=\"Các bài  liên quan tới  vitamin\"> vitamin</a>. Cao gan có tác dụng bổ máu, giúp tăng cường chức năng gan,  tăng khả năng giải độc của cơ thể.  <br /> <br />L-carnitine fumarate : L- carnitine là 1 acid amin có trong cơ thể  con người. Nó đóng vai trò then chốt trong việc vận chuyển các acid béo  vào ty thể- nơi sản xuất năng lượng cho tế bào. Sự thiếu hụt L-  carnitine có thể sẽ dẫn đến các biểu hiện thiếu năng lượng hay tình  trạng mệt mỏi, nhược cơ. L-Carnitine đóng vai trò vô cùng quan trọng  giúp cơ thể tự cân bằng năng lượng và tăng khả năng miễn dịch. Fumarate  là 1 muối/ester tự nhiên được tạo ra từ acid fumaric có trong cơ thể  người. Fumarate đóng 1 vai trò quan trọng trong chu trình Krebs- là chìa  khoá của chu trình sản xuất năng lượng tế bào. Fumarate hỗ trợ một cách  tích cực đối với tác dụng chuyển hoá năng lượng của L- carnitine.</p>\r\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div>Liều lượng:</div>\r\n</td>\r\n<td align=\"right\"><img src=\"http://thuocbietduoc.com.vn/interface/BtMinus.gif\" border=\"0\" style=\"cursor: pointer;\" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div id=\"DossuuuPlus\" style=\"display: block;\">Ngày uống 4-6viên, chia 2 lần, trước bữa ăn 30  phút. <br /> <br />Nên dùng một đợt liên tục từ 2 đến 3 tháng để có kết quả tốt nhất.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div>Bảo quản:</div>\r\n</td>\r\n<td align=\"right\"><img src=\"http://thuocbietduoc.com.vn/interface/BtMinus.gif\" border=\"0\" style=\"cursor: pointer;\" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div id=\"Dossuuu11Plus\" style=\"display: block;\">Để nơi khô mát, tránh ánh sáng. Đậy nắp hộp sau  khi sử dụng.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '1', '4', '0', '15', '2010-04-16 08:10:34', '62', '', '2010-05-03 16:54:54', '62', '0', '0000-00-00 00:00:00', '2010-04-16 08:10:34', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=viên nang cứng,viên nang mềm\nt_ndt= kháng viêm giải độc\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '4', '', '', '0', '7', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('35', 'Bạc hà chữa cảm mạo', 'bc-ha-cha-cm-mo', '', '<p><span id=\"lblMain\">\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Bạc hà hay còn gọi là bạc hà nam, tên khoa học là  Mentha arvensis L, thuộc họ hoa môi (Labiatae).</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Bộ phận sử dụng để  chế biến là toàn cây bỏ rễ. Chặt ngắn khoảng 3cm hoặc dùng lá được thu  hái khi cây sắp ra hoa để phơi khô trong râm mát (âm can), cũng có thể  sử dụng tươi.\r\n', '\r\n</span></span></p>\r\n<div style=\"text-align: justify;\"><img src=\"http://www.thuoc.net.vn/uploads/368t.jpg\" border=\"0\" width=\"400\" height=\"290\" /></div>\r\n<div style=\"text-align: justify;\"></div>\r\n<div style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Đông y cho rằng: bạc hà có vị cay, tính mát, không  độc, chữa trị cảm mạo, tán phong nhiệt, chữa sốt, nhức đầu, hắt hơi sổ  mũi, ngạt mũi, không ra mồ hôi, chữa nôn mửa không tiêu. Có tác dụng  kích thích tiêu hóa, chữa kém ăn, không ra mồ hôi.</span></span></div>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Liều sử dụng  trung bình từ 10 - 12g dưới dạng thuốc sắc hay giã tươi vắt lấy nước cốt  uống. Lưu ý không sử dụng trong trường hợp ra nhiều mồ hôi hay trẻ sơ  sinh. Khi sắc, chú ý không lâu quá 15 phút để bảo tồn được tinh dầu bạc  hà không bị bay hơi làm giảm thiểu lượng tinh dầu cần thiết.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Ngoài  ra, người ta còn điều chế tinh dầu bạc hà dùng trị nhiều bệnh chứng.  Hoặc trong tân dược đã điều chế tinh dầu bạc hà dưới dạng tinh thể  menthol để nạp vào các lọ nhựa làm ống hít xông họng mũi. Hoặc còn cho  tinh thể menthol vào các nguyên liệu để làm thành bánh kẹo bạc hà...</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\"><strong>Những  phương thuốc chữa trị bệnh từ cây bạc hà</strong></span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Chữa các chứng  cảm sốt: Khi thấy cảm sốt nóng không gai rét, nhức đầu, mặt đau sưng,  nôn ọe hoặc là trẻ sốt nóng hay lên sởi lúc bắt đầu mọc. Dùng bạc hà 10 -  15g, sắn dây 10 - 15g. Đổ chừng 1/3 lít nước vào siêu, đậy nắp bịt kín  vòi đun sôi một dạo thì bắc xuống để xông và rót 1 chén uống. Sau đó lại  sắc và uống thêm từ 1 - 2 nước nữa. Nếu lúc này thấy xuất hiện mồ hôi  thì thôi không xông nữa và uống thuốc nguội.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Hoặc lấy lá bạc hà  tươi hay khô có lượng bằng nhau. Mỗi thang thuốc lấy 8 -15g, sắc lấy  nước thuốc uống.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Chữa dị ứng: Dùng lá bạc hà tươi giã nát xát vào  nơi ngứa.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Giải cảm, sốt nóng không có mồ hôi: Dùng tinh dầu bạc  hà, mỗi lần uống từ 8 - 15 giọt chiêu với nước nóng.</span></span></p>\r\n<div style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\">Chữa nôn  mửa, không tiêu: Dùng tinh dầu bạc hà, mỗi lần uống 4 - 8 giọt, chiêu  với nước nguội. Chú ý: khi uống tinh dầu bạc hà cần rót tinh dầu vào  chén, hay thìa nước rồi chiêu vào họng, sau đó lại uống nước tráng  miệng.</span></span></div>\r\n</span></p>\r\n<p> </p>\r\n<p><span id=\"lblMain\"> </span><span id=\"lblMain\">\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: small;\"><br /></span></span></div>\r\n<div><span style=\"font-size: small;\"><strong><em>Theo SK&amp;ĐS</em></strong></span></div>\r\n</span></p>', '1', '1', '0', '1', '2010-04-15 15:02:32', '62', '', '2010-05-02 09:29:40', '62', '0', '0000-00-00 00:00:00', '2010-04-15 15:02:32', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '9', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('36', 'Cốt khí củ trị bệnh đau khớp', 'ct-khi-c-tr-bnh-au-khp', '', '<p><span id=\"lblMain\">\r\n<p>Mỗi khi nhắc đến các vị thuốc mang tên là “cốt”,  điều trước tiên đã gợi cho người ta có một  cái gì đó liên quan đến việc  chữa trị các bệnh về xương, ví dụ như cốt toái bổ, bổ cốt chi (phá cố  chỉ)... Như vậy cốt khí củ cũng không nằm ngoài cái quy luật đó. Nếu nói  về cốt khí, người ta lại có quyền nghĩ tới,  ít nhất là hai cây: cốt  khí củ (Polygonum cuspidatum Sieb. et  Zucc., họ rau răm (Polygonaceae)  và cốt khí muồng (Cassia ocidentalis L., họ vang Caesalpiniaceeae).\r\n', '\r\n</p>\r\n<img src=\"http://www.thuoc.net.vn/uploads/503t.JPG\" border=\"0\" width=\"200\" style=\"float: left;\" />\r\n<p>Thành phần hóa học trong cốt khí củ  chủ yếu là các hợp chất anthanoid. Dịch chiết nước của cốt khí củ có  tác dụng chống viêm ức chế sự tăng sinh của các khối u trong cơ thể, ức  chế sự đột biến và khép AND bởi 1- nitropyren. Là một trong những vị  thuốc có tác dụng chống lão hóa. Dịch chiết từ rễ còn có tác dụng cầm  máu, chống ho, giãn phế quản, hạ cholesterol, ức chế tụ cầu vàng, trực  khuẩn mủ xanh và trực khuẩn lỵ... Các stiben trong cốt khí củ,  đặc biệt  resveratrol có tác dụng làm giảm sự lắng đọng lipoprotein (LDL), chống  ôxy hóa, ngăn chặn sự phát triển của ung thư da, còn có khả năng làm  biến đổi sự tổng hợp triglycerid và cholesterol... làm giảm tổn thương  các tổ chức ở gan.</p>\r\n<div>Theo YHCT, cốt khí củ có vị đắng, tính ấm.  Quy kinh can, tâm bào với công năng hoạt huyết thông kinh, chỉ thống,  trừ phong thấp, thanh thấp nhiệt, tiêu viêm, sát khuẩn.</div>\r\n<div>Cốt  khí củ được dùng làm thuốc như sau:</div>\r\n<p>Trị các bệnh phong tê thấp,  đau nhức gân xương cốt, đau gối, đau vai, lưng, và các khớp ngón tay,  ngón chân... do có tính họat huyết.</p>\r\n<p>Bài thuốc: Cốt khí củ, rễ tầm  soọng, rễ cỏ xước, lá lốt, cam thảo dây, dây đau xương, mỗi vị 20g, sắc  uống, ngày 1 thang. Uống liền 2-3 tuần. hoặc dùng Cốt khí củ, rễ gối  hạc, mỗi vị 12g, mộc thông, lá bìm bìm, mỗi vị 20g, sắc uống trị đau đầu  gối, sưng đau mu ban chân...</p>\r\n<p>Ngoài ra, cốt khí củ thường phối hợp  với các vị thuốc hoạt huyết: Ích mẫu, hồng hoa, đào nhân, kê huyết  đằng... trị các bệnh đau bụng do bế kinh, đau bụng kinh nguyệt,  sau đẻ  huyết ứ, bụng căng trướng gây đau đớn hoặc sưng đau do sang chấn, té  ngã...</p>\r\n<p>Bài thuốc: Cốt khí củ 20g, lá móng 30g. Sắc uống, chia 2  lần trong ngày.</p>\r\n<p>Để trị viêm gan cấp tính, có thể dùng cốt khí củ,  chút chít, mỗi vị 15g, Lá móng 20g. Sắc uống, ngày một thang. Uống liền  3- 4 tuần lễ; hoặc phối hợp với kim tiền thảo, xa tiền tử, tỳ giải, mỗi  vị 12-16g để trị viêm gan, viêm túi mật, sỏi mật, sỏi tiết niệu.</p>\r\n<div>Cốt  khí củ còn được dùng để trị các bệnh xơ cứng động mạch, bệnh ho, hen  suyễn và tăng huyết áp... Tuy nhiên trong những trường hợp cụ thể, người  ta thường phối hợp với các vị thuốc khác để tăng thêm hiệu quả điều  trị.</div>\r\n<div><strong><em>Theo SK&amp;ĐS</em></strong></div>\r\n</span></p>', '1', '1', '0', '1', '2010-04-18 03:10:10', '62', '', '2010-04-18 03:14:49', '62', '62', '2010-04-18 03:20:35', '2010-04-18 03:10:10', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '5', '', '', '0', '4', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('37', 'Ăn trái cây khi đói là tốt nhất?', 'n-trai-cay-khi-oi-la-tt-nht', '', '<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><span id=\"lblMain\">\r\n<p align=\"justify\">Các chuyên gia dinh dưỡng khuyên,  nên ăn trái cây khi bụng đói (trừ chuối, bơ, cà chua và các loại hoa quả  chua) sẽ giúp cơ thể giải độc và nhận được lợi ích tối đa từ trái cây.  Điều này cũng rất tốt cho những người muốn giảm cân.</p>\r\n', '\r\n</span></span></span></p>\r\n<div>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><img src=\"http://www.thuoc.net.vn/uploads/492t.jpg\" border=\"0\" style=\"float: left; border: 3px solid black;\" />Trái cây giàu chất xơ, vitamin, mang lại nhiều lợi ích  cho sức khỏe, nhưng bạn đừng nghĩ cứ gọt ra, cắt miếng rồi \"bỏ miệng\" là  hấp thụ được toàn bộ chất dinh dưỡng từ trái cây. Ăn trái cây cũng phải  đúng cách.</span></span></p>\r\n</div>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Sau bữa ăn, nhiều người thường có  thói quen tráng miệng bằng trái cây. Thực ra điều này là không tốt. Chất  đường trong hoa quả rất dễ hấp thu ở ruột non sau khi đi qua dạ dày,  trong khi những thành phần tinh bột như cơm, bánh mỳ… cần có thời gian  tiêu hóa ở dạ dày.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Do đó, nếu ăn trái cây ngay  sau bữa ăn, những chất tiêu hóa chậm sẽ cản trở trái cây tiêu hóa nhanh,  lượng trái cây bạn đưa vào dạ dày có thể sẽ bị lên men, hay thối rữa  gây ra các triệu chứng đầy bụng, khó tiêu… ảnh hưởng xấu đến tiêu hóa.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Ngoài ra, sau bữa ăn, lượng đường trong máu cũng sẽ  tăng lên, nếu ăn thêm trái cây ngọt, nguy cơ tăng đường huyết sẽ càng  cao.</span></span></p>\r\n<div>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Bạn cũng không nên ăn trái cây cùng với  các loại thực phẩm khác, không nấu chín trái cây vì sẽ làm mất chất. Hạn  chế sử dụng trái cây đóng hộp vì chúng thường chứa lượng đường cao,  ngoài ra còn chứa các chất phụ gia, chất bảo quản có thể gây ngộ độc  hoặc những ảnh hưởng không tốt cho sức khỏe.</span></span></p>\r\n</div>\r\n<div>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><em>Theo  SK&amp;ĐS</em></strong></span></span></p>\r\n</div>', '1', '1', '0', '3', '2010-04-18 03:34:54', '62', '', '2010-04-18 04:01:25', '62', '0', '0000-00-00 00:00:00', '2010-04-18 03:34:54', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '12', '0', '5', '', '', '0', '19', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('38', 'Công dụng mới của trà', 'cong-dng-mi-ca-tra', '', '<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">Trà không chứa nhiều calo, nhưng lại cung cấp khá đầy đủ các chất chống oxi hóa, và cũng thể giúp thân hình của bạn trở nên mảnh dẻ hơn.  \r\n', '\r\n<img src=\"http://www.thuoc.net.vn/uploads/484t.jpg\" border=\"0\" width=\"319\" height=\"480\" /></span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">Con người ngày càng có xu hướng ưa chuộng trà vì rất nhiều ích lợi mà thức uống này mang lại. Và giờ đây, một học thuyết mới lại vừa được công bố, uống một tách trà nóng mỗi ngày có thể giúp tâm hồn bạn thư giãn, sảng khoái hơn và giúp bạn loại bỏ mọi lo lắng đang quấy nhiễu.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">Trong một nghiên cứu, những tình nguyện viên bị stress giống nhau được yêu cầu thể hiện sự lo lắng của mình. Và sau đó, những người được uống một tách trà nóng đã trở nên hoạt bát hơn, nói chuyện nhiều và cảm thấy thư giãn lên đáng kể.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">Mức độ lo lắng của những người này cũng nhanh chóng giảm xuống chỉ còn 4%. Và, đối với những người chỉ uống nước lọc thì sao? Câu trả lời là: “chẳng có gì thay đổi”.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong>Bị stress và không muốn ăn</strong></span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">Hãy xem trà có thể “đánh bại” bệnh stress như thế nào. Với trường hợp này, trà trở thành chất theanine, một dạng chất của axit amino được phát hiện thấy trong trà, vốn lâu nay được biết đến như chất tạo sự tỉnh táo và thư giãn tinh thần. Những người tham gia vào cuộc nghiên cứu cũng bày tỏ với các nhà khoa học rằng họ</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">cảm thấy dễ chịu hơn rất nhiều khi được uống trà.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">Vì vậy, còn chần chờ gì nữa mà bạn không uống trà mỗi ngày?</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong>Và, hãy khám phá thêm một số ích lợi tuyệt vời khác mà trà xanh đem lại:</strong></span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- Đối với dạ dày: Uống trà xanh mỗi ngày có thể giúp bạn đốt cháy nhiều chất béo nhất là ở phần bụng khi tập thể dục thể thao.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- Rất có lợi cho lượng đường trong máu: Trà đen có tác dụng giữ cho lượng đường luôn ở mức cân bằng và ổn định, sao cho tốt nhất cho sức khỏe.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- Giữ dung nhan tươi tỉnh: Hãy tận hưởng những ích lợi mà trà đem lại đối với làn da của bạn. Trà là công cụ tuyệt vời để chiến đấu với sự lão hóa mỗi ngày của làn da.</span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><br /></span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><em>Theo Xinh Xinh</em></strong></span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><br /></span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><br /></span></span></p>', '1', '1', '0', '4', '2010-04-18 06:34:33', '62', '', '2010-04-25 13:46:07', '62', '0', '0000-00-00 00:00:00', '2010-04-18 06:34:33', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '23', '0', '2', '', '', '0', '33', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('83', 'Thuốc “rón rén” tăng giá', 'thuc-ron-ren-tng-gia', '', '<p style=\"text-align: justify;\">Việc kê khai giá thuốc hiện nay đang tạo kẽ hở để doanh nghiệp hợp lý hóa giá thuốc ở mức cao.<br /><br />Từ sau Tết đến nay, giá thuốc nội, ngoại trên thị trường Hà Nội tiếp tục tăng từ 5%-20%, trong đó chủ yếu là thuốc kháng sinh và biệt dược.<br />Nội - ngoại đều tăng giá</p>\r\n', '\r\n<p style=\"text-align: justify;\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/B2/D4/21-cau-Can-Tho-to.jpg\" border=\"0\" width=\"490\" height=\"302\" /><br /><br />Tại một hiệu thuốc GPP (nhà thuốc thực hành tốt) trên phố Trần Hưng Đạo, chị Phương, dược sĩ phụ trách nhà thuốc này, cho biết thời gian gần đây, nhiều loại thuốc kháng sinh ngoại đã ào ào tăng giá, trong đó, kháng sinh Zinat thuộc loại tăng giá mạnh nhất.<br /><br />Theo chị Phương, so với trước Tết Nguyên đán, hiện nay, giá thuốc kháng sinh Zinat dạng xi rô, gói và viên mà cửa hàng của chị vừa nhập đều tăng từ 10.000- 25.000 đồng/hộp (chai). Ngoài ra, một số thuốc khác cũng tăng giá như: Exomuc,  Motilium, Obimin, kháng sinh Rodogyl, Utrogestal, Dopegyt... Cùng đó, một số loại thuốc xông họng, dịch truyền và thuốc bôi ngoài da cũng tăng giá do thời tiết thay đổi, nhu cầu sử dụng tăng cao.<br /><br />“Tính từ đầu năm 2010 đến nay, đã có khoảng 5 đợt điều chỉnh giá thuốc nhưng chủ yếu là tăng chứ giảm không đáng kể. Có lẽ do thời gian gần đây, các cơ quan quản lý liên tục kiểm tra nên dược phẩm không ồ ạt tăng giá như trước đây mà “rón rén” điều chỉnh giá hoặc nếu có tăng cũng chia thành nhiều đợt và tăng mỗi lần một chút để không bị chú ý”- chị Phương cho biết.<br /><br />Không chỉ thuốc ngoại, một số thuốc sản xuất trong nước như kháng sinh, kháng viêm, giảm đau, cảm cúm... cũng tăng giá. Theo nhiều nhà thuốc bán lẻ ở Hà Nội, kể cả những thuốc sản xuất từ dược liệu trong nước, không liên quan đến tỉ giá ngoại tệ, cũng tăng giá. Đáng nói, trong những báo cáo gần đây của Hiệp hội Sản xuất Kinh doanh dược VN đều thông báo giá một số nguyên liệu kháng sinh, hạ sốt, kháng viêm nhập khẩu giảm nhưng trong thời gian này, trong các loại thuốc giảm giá hầu như hiếm thấy có thuốc kháng sinh.<br /><br />Nhiều kẽ hở trong kê khai giá thuốc<br /><br />Lý giải việc giá thuốc đang ở mức cao, ông Trương Quốc Cường, Cục trưởng Cục Quản lý dược, nói: Thị trường dược phẩm VN đang phụ thuộc nhiều vào nguyên liệu nhập khẩu, trên 50% số thuốc sử dụng phải nhập khẩu. Do vậy, việc bình ổn giá thuốc không thể sử dụng các biện pháp hành chính để buộc giá thuốc đứng hoặc giảm giá bán... mà quan trọng là bảo đảm đủ thuốc, không để tình trạng tăng giá đột biến, bất hợp lý và tăng giá đồng loạt.<br /><br />Cũng theo ông Cường, theo quy định của Pháp lệnh Giá, Luật Dược, hiện nay, giá thuốc ở VN hoàn toàn do các đơn vị sản xuất, kinh doanh tự quyết định và kê khai với cơ quan quản lý. Đối với các cơ sở sản xuất, nhập khẩu phải kê khai giá thuốc trước khi lưu hành trên thị trường và khi thay đổi giá phải được kê khai lại với cơ quan quản lý Nhà nước có thẩm quyền... Việc kê khai giá thuốc hiện nay đang tạo kẽ hở để doanh nghiệp hợp lý hóa giá thuốc ở mức cao.<br /><br />Vì thế, Cục Quản lý dược đang xây dựng phần mềm quản lý liên thông giữa y tế và hải quan để kiểm soát giá thuốc nhập vào VN và giá thuốc tại các nước trước khi khai báo tại hải quan. Đồng thời, hàng loạt quy định liên quan đến vấn đề quản lý giá thuốc đang được sửa đổi theo hướng tăng nặng chế tài trong xử lý.<br />Thuốc được coi là mặt hàng cá biệt vì người mua không trả giá và người bán cũng không thông báo trước khi tăng giá. Tuy nhiên, trước những cơn lốc tăng giá, người bệnh vẫn phải chấp nhận. Mặc dù Cục Quản lý dược thường xuyên có văn bản yêu cầu các sở y tế trên toàn quốc tăng cường quản lý giá thuốc trên địa bàn, xử lý nghiêm các hành vi tăng giá thuốc phi lý, đầu cơ, găm hàng, tuy nhiên, hiệu quả bình ổn thị trường dược vẫn chưa được như mong muốn.<br /> <br />Theo NLĐ<br />Các tin khác</p>\r\n<p> </p>', '1', '1', '0', '1', '2010-04-26 09:27:01', '62', '', '2010-04-26 11:00:37', '62', '0', '0000-00-00 00:00:00', '2010-04-26 09:27:01', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '3', '', '', '0', '14', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('39', 'Thế giới côn trùng', 'th-gii-con-trung', '', '', '\r\n<p> </p>\r\n<p><img src=\"images/stories/contrung/17055_1271512895.jpg\" border=\"0\" /></p>\r\n<p> </p>\r\n<p><img src=\"images/stories/contrung/21749_1271129205.jpg\" border=\"0\" /></p>', '1', '1', '0', '5', '2010-04-18 07:01:56', '62', '', '2010-04-21 10:40:04', '62', '0', '0000-00-00 00:00:00', '2010-04-18 07:01:56', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '8', '0', '3', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('55', 'Gian hàng HOAINAMPHARMA', 'gian-hang-hoainampharma', '', '<p>Giới thiệu ngán gọn gian hàng. Các thông tinh chính</p>\r\n<p> </p>\r\n', '\r\n<p><img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"400\" height=\"199\" style=\"border: 0px initial initial;\" /></p>\r\n<p>Giới thiệu chi tiết gian hàng, mọi thứ về gian hàng gồm có logo, hình ảnh, text. điểm đặc biệt. sản phẩm cung cấp.</p>', '-2', '7', '0', '284', '2010-04-20 02:21:05', '62', '', '2010-04-21 09:45:38', '62', '0', '0000-00-00 00:00:00', '2010-04-20 02:21:05', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '8', '0', '0', '', '', '0', '26', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('56', 'Sản phẩm thuốc nội 2', 'sn-phm-thuc-ni-2', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '1', '7', '0', '285', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:51:46', '62', '0', '0000-00-00 00:00:00', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '3', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('57', 'Sản phẩm thuốc nội 1', 'sn-phm-thuc-ni-1', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '1', '7', '0', '285', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:46:42', '62', '0', '0000-00-00 00:00:00', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '2', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('58', 'Sản phẩm thuốc nội 1', 'sn-phm-thuc-ni-1', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '1', '7', '0', '287', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:46:42', '62', '0', '0000-00-00 00:00:00', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '2', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('59', 'Sản phẩm thuốc nội 2', 'sn-phm-thuc-ni-2', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '1', '7', '0', '287', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:51:46', '62', '62', '2010-04-20 09:52:29', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('60', 'Sản phẩm thuốc nội 1', 'sn-phm-thuc-ni-1', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '1', '7', '0', '286', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:46:42', '62', '0', '0000-00-00 00:00:00', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '2', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('61', 'Sản phẩm thuốc nội 2', 'sn-phm-thuc-ni-2', '', '<table border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Dạng bào chế:</strong></span></td>\r\n<td width=\"15\"></td>\r\n<td>Viên nén bao đường</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà sản xuất:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n<tr>\r\n<td><span style=\"color: #575d10;\"><strong>Nhà phân phối:</strong></span></td>\r\n<td></td>\r\n<td>Công ty cổ phần dược phẩm HOAINAM</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n', '\r\n<p> </p>\r\n<p>Mô tả sản phẩm ở đây.</p>\r\n<p>ảnh sản phẩm <img src=\"http://www.pharma-connect.nl/Pharma-Connect.JPG\" border=\"0\" width=\"646\" height=\"321\" /></p>', '1', '7', '0', '286', '2010-04-20 09:29:27', '62', '', '2010-04-20 09:51:46', '62', '0', '0000-00-00 00:00:00', '2010-04-20 09:29:27', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '1', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('63', 'Thuốc cảm lạnh An Nhân', 'thuc-cm-lnh-an-nhan', '', '', '\r\n<p><img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/5306274ac95f4eeea9a3e6724f02f042-an-nhan.gif/an-nhan.gif\" border=\"0\" width=\"300\" height=\"375\" /></p>\r\n<p> </p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Công thức bào chế</strong>: Cho 125 ml Dịch  chiết dược liệu tương đương với:</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Gừng tươi 12.5g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Bạch chỉ 31.25g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Thảo ma hoàng 21.25g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Quế chi 15g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Cam thảo 8.75g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Hòe hoa 8.75g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Xuyên khung 8.75g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Tá dược (Nipagin, Nipazol, đường kính, nước cất) vừa  đủ 125 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Dạng bào chế</strong>: Thuốc nước</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Qui cách đóng gói</strong>: Hộp 1 chai 125 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Chủ trị: </strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Các trường hợp cảm lạnh, cảm phong hàn với các biểu  hiện: sốt nhẹ, sợ lạnh, sợ gió, nhức đầu, ngạt mũi hoặc chảy nước mũi  trong, sưng họng, ho có đờm trắng loãng, người mệt mỏi, rêu lưỡi trắng,  không ra mồ hôi…</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Liều dùng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Người lớn (từ 15 tuổi trở lên): Ngày 3 lần, mỗi lần  20 – 25 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Trẻ em từ 6 – 15 tuổi: ngày 2 lần, mỗi lần 10 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Cách dùng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/ddc3c0aadaaf4f678a86d76d167afb6a-annhan.gif/annhan.gif\" border=\"0\" width=\"500\" height=\"188\" /></strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Lấy thuốc vào cốc (theo liều hướng dẫn) thêm khoảng  200 ml nước sôi</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Uống thuốc khi còn nóng, uống xong đắp chăn ấm cho  ra mồ hôi</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Chống chỉ định: </strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Không dùng thuốc cho phụ nữ có thai, phụ nữ cho con  bú, trẻ em dưới 6 tuổi, người suy tim, người phong nhiệt hay người mẫn  cảm với bất cứ thành phần nào của thuốc.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Những lưu ý đặc biệt và cảnh báo trước khi sử  dụng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Không dùng thuốc quá hạn sử dụng, thuốc bị mốc, đọc  kĩ hướng dẫn trước khi dùng</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Những người mắc chứng cảm mạo phong nhiệt, với các  triệu chứng: sốt, đỏ mặt, miệng khô, khát nước, ho ra đờm vàng, họng  sưng đỏ…không nên dùng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Những người mắc bệnh cao huyết áp, bệnh huyết khối  động mạch vành, bệnh tuyến giáp không nên dùng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Tác dụng không mong muốn:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Chưa nhận thấy tác dụng không mong muốn nào của thuốc  (chú ý: nếu gặp phải tác dụng không mong muốn nào thì báo ngay cho bác  sĩ hoặc nhà sản xuất)</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Hạn dùng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">24 tháng kể từ ngày sản xuất. Không dùng nếu thấy có  hiện tượng mốc, hỏng hoặc có dấu hiệu khác lạ, đồng thời báo ngay cho  nhà sản xuất biết.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Bảo quản</strong>: Nơi khô mát</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Tiêu chuẩn áp dụng</strong>: TCCS</span></span></p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>SĐK:</strong> V1097 – H12 - 10</span></span></p>', '1', '4', '0', '15', '2010-04-21 17:40:12', '62', '', '2010-05-03 16:53:28', '62', '0', '0000-00-00 00:00:00', '2010-04-21 17:40:12', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=thuốc nước\nt_ndt=hạ nhiệt- cảm sốt\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '3', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('62', 'Công ty Cổ phần SAMAN', 'cong-ty-c-phn-saman', '', '', '\r\n<p><img src=\"http://saman.com.vn/uploads/images/quangcao/logo.jpg\" border=\"0\" width=\"180\" height=\"54\" /></p>\r\n<p> </p>', '1', '7', '0', '310', '2010-04-21 14:21:39', '62', '', '2010-05-02 07:25:19', '62', '0', '0000-00-00 00:00:00', '2010-04-21 14:21:39', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '1', '', '', '0', '16', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('64', 'Dung dịch vệ sinh phụ nữ Dạ Hương', 'ga-trng-nng-st-t', '', '<p>\r\n', '\r\n<img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/44ed62664dc24040aa6c4bd3e836c0b6-Anh-DH-thuong.gif/Anh-DH-thuong.gif\" border=\"0\" alt=\"Dung dịch vệ sinh phụ nữ Dạ Hương  Muối – Thảo dược – Acid lactic\" width=\"500\" height=\"390\" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Đặc điểm</strong>: </span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><br />Là sản phẩm chuyên dùng để chăm sóc và vệ  sinh vùng kín (âm hộ) phụ nữ. Công thức Dạ Hương được nghiên cứu, xây  dựng dưới sự tham vấn của các Bác sỹ chuyên khoa Phụ sản và các Dược sỹ  chuyên ngành bào chế. Kết hợp các thành phần tự nhiên Dạ  Hương an toàn, không khô rát, phù hợp với sinh lý vùng kín và không ảnh  hưởng tới pH sinh lý âm đạo.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Dạng dung dịch  tiện dụng, không phải pha loãng trước khi sử dụng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Được bào chế đậm đặc  nên dùng tiết kiệm, được nhiều lần.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Dạng bào chế và trình bày</strong>: Dạng gel,  chai 100ml, chai 120 ml (có vòi bơm)</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Thành phần</strong>:</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Muối tinh khiết (NaCl) 0,9%; Lô hội (Aloe vera)  0,01%; Tinh dầu Bạc hà 0,085%; Tinh dầu Bách lý hương 0,005%; Acid  Lactic 0,05%; Vitamin E 0,01%; Hương liệu; Các thành phần khác vừa đủ  100ml.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Công dụng: </strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><br />Làm sạch nhẹ nhàng, khử mùi hôi, bảo vệ vùng  kín, ngăn ngừa vi trùng gây bệnh viêm nhiễm phụ khoa, mang lại cảm giác  tự tin với hương thơm quyến rũ.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Vệ sinh vùng  kín hàng ngày, vệ sinh vùng kín thời kỳ kinh nguyệt, thai nghén, hậu  sản.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Vệ sinh bộ phận  sinh dục ngoài cho cả nam, nữ trước và sau khi quan hệ tình dục.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Hỗ trợ điều trị  viêm nhiễm phụ khoa (sử dụng phối hợp trong phác đồ điều trị): Viêm âm  đạo, viêm âm hộ, ngứa âm hộ, huyết trắng…</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Liều dùng, cách dùng</strong>:</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Làm ướt vùng  kín, lấy 2-3 ml dung dịch vào lòng bàn tay, thoa rửa nhẹ vùng kín trong 1  phút, sau đó rửa lại thật kỹ bằng nước sạch.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Nên dùng hàng  ngày, nhất là thời kỳ kinh nguyệt, hậu sản.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Trong những  ngày hành kinh, tùy mức độ huyết ra nhiều hay ít mà rửa âm hộ từ 2-4  lần/ngày.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Bảo quản</strong>: Để nơi thoáng  mát.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Tiêu chuẩn</strong>: TCCS</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Hạn dùng</strong>: 36 tháng kể  từ ngày xuất xưởng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Lưu ý:</strong> Sản phẩm này  chỉ dùng để rửa ngoài, không dùng để thụt rửa âm đạo, không được uống.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>SĐK:  1221/07/QLD-MP</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>ĐỂ XA TẦM TAY  TRẺ EM</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>ĐỌC KỸ HƯỚNG DẪN SỬ DỤNG TRƯỚC KHI  DÙNG</strong></span></span></p>', '-2', '9', '0', '294', '2010-04-02 04:23:07', '62', '', '2010-04-22 02:04:37', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:23:07', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '0', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('65', 'Thuốc ho Bảo Thanh', 'goa-ph-en-la-ai', '', '', '\r\n<p><img src=\"http://www.hoalinhpharma.com.vn/Image.aspx/image=pjpeg/3766a224361eb2251781001219094ef2-Bao-Thanh-dang-trong-bai-vi.jpg/Bao-Thanh-dang-trong-bai-vi.jpg\" border=\"0\" width=\"215\" height=\"228\" /></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span style=\"color: #008000;\"><strong>Thông  tin sản phẩm:</strong></span></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong>Thành  phần: </strong></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">Ô mai 12,5g; Mật ong 25g; Xuyên bối  mẫu 10g; Tỳ bà diệp 12,5g; Sa sâm 2,5g; Phục linh 2,5g; Trần bì 2,5g;  Cát cánh 10g; Bán hạ 2,5g; Ngũ vị tử 1,25g; Qua lâu nhân 5,0g; Khoản  đông hoa 2,5g; Viễn chí 2,5g; Khổ hạnh nhân 5,0g; Gừng 2,5g; Cam thảo  2,5g; Tinh dầu bạc hà 2,5mg và Các tá d­ược.</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span style=\"color: #008000;\"><strong>Quy  cách đóng gói và dạng bào chế: </strong></span></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- Hộp 1 chai Siro 125ml.</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Noi-dung/Thuoc-ho-Bao-Thanh-dang-Vien-ngam/Vien_ngam_Thuoc_ho_Bao_Thanh/\">Hộp  24 viên ngậm </a>(Dạng kẹo ngậm Lozenge vị ngọt thơm, dễ dùng,  chứa hàm lượng tối đa cao dược liệu trong một viên)</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><span style=\"color: #008000;\">Đặc  điểm thành phần, tác dụng:</span></strong></span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">\r\n<p align=\"justify\">Thuốc ho Bảo Thanh phối hợp 2 vị thuốc dân gian quen  thuộc <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Thuoc-ho-Bao-Thanh/Thong-tin-lien-quan-Thuoc-ho-Bao-Thanh/O_mai-Mon_an_ngon_vi_thuoc_quy/\">Ô  mai</a> - <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Thuoc-ho-Bao-Thanh/Thong-tin-lien-quan-Thuoc-ho-Bao-Thanh/Mat_ong_voi_suc_khoe_va_doi_song/\">Mật  ong </a>và bài thuốc Đông y trị ho nổi tiếng của Trung Quốc <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Dong-y-va-kinh-nghiem-DG/Dong-y-va-kinh-nghiem-dan-gian/Xuyen_boi_ty_ba_cao-Tu_huyen_thoai_den_hien_thuc/\">\"Xuyên  bối tỳ bà cao\".</a></p>\r\n<p align=\"justify\"><span style=\"color: #008000;\"><strong>Ô mai: </strong></span></p>\r\n<p align=\"justify\">Ô mai không chỉ là món ăn quen thuộc, được  nhiều người Việt Nam ưa chuộng mà còn là vị thuốc dân gian giúp trừ ho,  tiêu đờm công hiệu, đặc biệt trong các trường hợp ho mãn tính, ho dai  dẳng lâu ngày.</p>\r\n<p align=\"justify\">Ghi nhận công dụng của Ô mai trong điều trị các chứng  ho, Hải Thượng Lãn Ông có phân tích: Tạng phế sắc trắng, là bẩm thụ khí  của hành Kim, nó như cái tán, cái lọng che chở cho các tạng khác, không  thể chịu được bất kì một vật gì làm chướng ngại. Tỳ là gốc sinh đờm,  Phế là đồ chứa đờm. Nếu đờm ở Phế nhiều thì khí nghịch lên mà gây thành  ho. Phế là chỗ then chốt, cửa ngõ của toàn thân, không chỗ nào quan  trọng hơn chỗ đó. Do vậy, bệnh phế khí nghịch, nhiều đờm không thể không  tìm cách trị gấp. Hải Thượng Lãn Ông viết: Ô mai có vị chua tính liễm,  có thể thăng, có thể giáng, giúp thuận khí chỉ ho, tiêu đờm. Điều đó  khẳng định vai trò cốt yếu của Ô mai trong các bài thuốc trị ho, đặc  biệt các chứng ho dai dẳng, lâu ngày không khỏi.</p>\r\n<p align=\"justify\"><strong><span style=\"color: #008000;\">Mật ong:</span></strong></p>\r\n<p align=\"justify\">Theo dân gian, mật ong là một món ăn ngon, có tác  dụng bồi bổ cơ thể đồng thời giúp giảm ho. Mỗi sáng uống một ly nước pha  mật ong giúp cơ thể khỏe mạnh, trẻ lâu, phòng ngừa được nhiều bệnh tật.  Khi bị ho kéo dài khiến cơ thể mệt mỏi, suy nhược, dùng mật ong sẽ giúp  phục hồi sinh lực, bệnh mau khỏi hơn.</p>\r\n<p align=\"justify\">Từ hàng thế kỉ nay, mật ong vẫn là phương thuốc cổ  truyền dùng trị ho và cảm lạnh. Công dụng này ngày càng được khoa học  chứng minh và củng cố. Tiến sĩ Ian Paul, trưởng nhóm nghiên cứu trường  đại học Dược bang Pennsylvania, Hershey (Mỹ), khi so sánh hiệu quả giảm  ho của mật ong với Dextromethorphan (DM), một hoạt chất giảm ho được sử  dụng phổ biến, đã kết luận: “Kết quả rõ rệt đến nỗi chúng tôi có thể  khẳng định rằng mật ong tốt hơn hẳn các loại thuốc mua ở quầy”. Nghiêu  cứu cũng được tiến hành trên trẻ nhỏ và cho kết quả tương tự: 105 trẻ từ  2 đến 18 tuổi, chia 2 nhóm: nhóm uống mật ong 30 phút trước khi đi ngủ  và nhóm sử dụng DM có hương vị mật ong cũng 30 phút trước khi đi ngủ.  Kết quả là những trẻ uống mật ong giảm được các cơn ho và co thắt hơn  hẳn những trẻ sử dụng DM. Tiến sĩ Paul nói: “Sử dụng mật ong là một liệu  pháp an toàn, hiệu quả mà các bậc cha mẹ nên sử dụng cho trẻ trên 1  tuổi khi chúng bị ho hay cảm cúm”.</p>\r\n<p align=\"justify\">Mật ong còn có tác dụng kháng khuẩn tự nhiên và làm  dịu niêm mạc hầu họng (do thành phần chứa acid Panthotenic và Albumin  giúp phục hồi và tái tạo niêm mạc bị tổn thương: viêm, đau rát do ho kéo  dài…). Vai trò của mật ong ngày càng được khẳng định trong hệ thống y  học chính thống “Tổ chức y tế thế giới đã xem mật ong như một phương  thuốc trị bệnh tiềm năng”.</p>\r\n<p align=\"justify\"><strong><span style=\"color: #008000;\">Bài thuốc \"Xuyên bối tỳ  bà cao\":</span></strong></p>\r\n<p align=\"justify\">Là bài thuốc Đông y trị ho nổi tiếng của Trung Quốc,  được đưa vào Dược điển Trung Quốc, trở thành bài thuốc chính thống được  sử dụng rộng rãi.</p>\r\n<p align=\"justify\">\"Xuyên bối tỳ bà cao\" phối hợp các vị dược liệu theo  bố cục chặt chẽ của một bài thuốc Đông y gồm Quân - Thần - Tá - Sứ, có  tác dụng bổ trợ lẫn nhau, tăng cường công năng: Bổ phế - Trừ ho - Tiêu  đờm.</p>\r\n</span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Bào chế  và quản lý chất lượng: </span></strong></p>\r\n</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\">Quá trình nghiên cứu bào chế  thuốc ho cao cấp Bảo Thanh được thực hiện dưới sự tham vấn của các Lương  y, Bác sĩ y học cổ truyền, Dược sĩ chuyên ngành bào chế. Công tác đảm  bảo chất lượng được thực hiện xuyên suốt từ khâu tuyển chọn nguyên liệu,  qui trình bào chế tới việc bảo quản và phân phối thành phẩm.Nguyên liệu  làm thuốc được tuyển chọn kỹ, đảm bảo nguyên liệu sạch, an toàn, không  có thuốc bảo vệ thực vật và hóa chất bảo quản. Qui trình sản xuất được  giám sát chặt chẽ. Thuốc ho Bảo Thanh được đựng trong chai thủy tinh  dày, kín, tối màu, đảm bảo chất lượng trong toàn khâu lưu kho và phân  phối.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Công  năng</span></strong>:</p>\r\n<p dir=\"ltr\" align=\"justify\">Bổ phế (Chữa tận gốc theo quan điểm  Đông y)</p>\r\n<p dir=\"ltr\" align=\"justify\">Trừ ho, tiêu đờm (Chữa triệu chứng -  Chữa phần ngọn theo quan điểm Đông y)</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Chủ trị: </span></strong></p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho mãn tính, ho dai dẳng lâu ngày  không khỏi</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho do dị ứng thời tiết</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho do cảm lạnh, cảm cúm</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho gió, ho khan, ho có đờm</p>\r\n<p dir=\"ltr\" align=\"justify\">- Hỗ trợ điều trị viêm họng, viêm phế  quản</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Liều  dùng, cách dùng: </span></strong></p>\r\n<p dir=\"ltr\" align=\"justify\">- Trẻ em dư­ới 3 tuổi: ngày uống 3  lần, mỗi lần 5 ml.<br />- Trẻ em trên 3 tuổi: ngày uống 3 lần, mỗi  lần 10 ml.<br />- Ngư­ời lớn: ngày uống 3 lần, mỗi lần 15 ml</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Tác  dụng không mong muốn</span></strong>: Chưa nhận thấy tác  dụng không mong muốn nào của thuốc</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Hạn dùng:</span></strong> 24 tháng kể từ ngày sản  xuất. Không dùng nếu thấy thuốc có hiện tượng mốc, hỏng hoặc có dấu  hiệu khác lạ; đồng thời báo ngay cho nhà sản xuất biết.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Bảo  quản</span></strong>: Nơi khô mát, tránh ánh sáng.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Tiêu  chuẩn</span></strong>: TCCS.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Lưu  hành số</span></strong>: V184 – H12 – 10.</p>\r\n<p dir=\"ltr\" align=\"justify\">Đọc kĩ hướng dẫn sử dụng trước khi dùng.</p>\r\n<p dir=\"ltr\" align=\"justify\">Sản phẩm được phân phối tại các nhà thuốc  trên toàn quốc.</p>', '-2', '9', '0', '294', '2010-04-06 09:03:57', '62', '', '2010-04-22 01:54:07', '62', '0', '0000-00-00 00:00:00', '2010-04-06 09:03:57', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=thuốc nước\nt_ndt=hô hấp\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '0', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('66', 'Phụ Bì Khang', 'ph-bi-khang', '', '<p>Hỗ trợ điều trị mề đay cấp và mạn tính   <br /> <br />Đối tượng sử dụng: dùng cho người bị mề đay, bị mẩn đỏ thành từng  đám trên da, ngứa ngáy khó chịu.</p>\r\n', '\r\n<p><br /> <img src=\"http://thuocbietduoc.com.vn/images/drugs/PHU-BI-KHANG.jpg\" border=\"0\" width=\"400\" height=\"293\" /><br />- Cơ chế tác dụng:  <br /> <br />Mề đay là tình trạng da nổi lên từng đám nhiều hoặc ít, không đều,  màu hồng hoặc xanh trắng, các mụn thường tự biến mất và di chuyển,  thường rất ngứa. Mề đay là một trong những bệnh ngoài da phổ biến tiến  triển theo 2 thể bệnh khác nhau: Thể cấp tính và mãn tính. Theo Y học  hiện đại, Mề đay xảy ra do những yếu tố dị nguyên (chất gây dị ứng: như  thời tiết, thức ăn, lông động vật, phấn hoa, côn trùng...) tác động vào  cơ thể. Việc điều trị phải loại bỏ nguyên nhân (dị nguyên) đồng thời  điều trị triệu chứng (giảm mẩn ngứa, viêm). Bên cạnh đó phải tăng cường  chức năng gan (giải độc) và chức năng thận (tăng đào thải các chất độc  hại ra khỏi cơ thể) và tăng cường năng lượng tế bào giúp bảo vệ tế bào .   <br /> <br />PHỤ BÌ KHANG là sự phối hợp toàn diện các thành phần giúp điều trị  triệu chứng giảm viêm, ngứa (cao nhàu); các thành phần giúp tăng cường  chức năng giải độc của cơ thể (cao gan); các thành phần giúp tăng cường  chức năng thận (cao nhàu) và tăng cường năng lượng tế bào, giúp bảo vệ  tế bào ( L- carnitin fumarat ) . Nhờ vậy PHỤ BÌ KHANG giúp hỗ trợ phòng  và điều trị hiệu quả các trường hợp mề đay cả cấp tính và mãn tính.  <br /> <br />Cao nhàu : có tác dụng thanh nhiệt, giải độc, bồi bổ sức khỏe, tăng  cường khả năng miễn dịch, phục hồi các tế bào bị thương tổn suy yếu,  chống viêm nhiễm, làm mụn nhọt mau lành, chóng lên da non, chống sung  huyết, giảm đau nhức mệt mỏi cơ thể. (Cây thuốc và động vật làm thuốc  Việt Nam- tập 2- trang 445)  <br /> <br />Cao gan : Được chiết xuất từ gan động vật, cao gan chứa nhiều chất  dinh dưỡng như sắt, protein, các<a href=\"http://thuocbietduoc.com.vn/home/search.aspx?desc=suc-khoe&amp;key=%20vitamin&amp;opt=1\" title=\"Các bài  liên quan tới  vitamin\"> vitamin</a>. Cao gan có tác dụng bổ máu, giúp tăng cường chức năng gan,  tăng khả năng giải độc của cơ thể.  <br /> <br />L-carnitine fumarate : L- carnitine là 1 acid amin có trong cơ thể  con người. Nó đóng vai trò then chốt trong việc vận chuyển các acid béo  vào ty thể- nơi sản xuất năng lượng cho tế bào. Sự thiếu hụt L-  carnitine có thể sẽ dẫn đến các biểu hiện thiếu năng lượng hay tình  trạng mệt mỏi, nhược cơ. L-Carnitine đóng vai trò vô cùng quan trọng  giúp cơ thể tự cân bằng năng lượng và tăng khả năng miễn dịch. Fumarate  là 1 muối/ester tự nhiên được tạo ra từ acid fumaric có trong cơ thể  người. Fumarate đóng 1 vai trò quan trọng trong chu trình Krebs- là chìa  khoá của chu trình sản xuất năng lượng tế bào. Fumarate hỗ trợ một cách  tích cực đối với tác dụng chuyển hoá năng lượng của L- carnitine.</p>\r\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div>Liều lượng:</div>\r\n</td>\r\n<td align=\"right\"><img src=\"http://thuocbietduoc.com.vn/interface/BtMinus.gif\" border=\"0\" style=\"cursor: pointer;\" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div id=\"DossuuuPlus\" style=\"display: block;\">Ngày uống 4-6viên, chia 2 lần, trước bữa ăn 30  phút. <br /> <br />Nên dùng một đợt liên tục từ 2 đến 3 tháng để có kết quả tốt nhất.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div>Bảo quản:</div>\r\n</td>\r\n<td align=\"right\"><img src=\"http://thuocbietduoc.com.vn/interface/BtMinus.gif\" border=\"0\" style=\"cursor: pointer;\" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div id=\"Dossuuu11Plus\" style=\"display: block;\">Để nơi khô mát, tránh ánh sáng. Đậy nắp hộp sau  khi sử dụng.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '-2', '9', '0', '294', '2010-04-16 08:10:34', '62', '', '2010-04-16 08:16:56', '62', '0', '0000-00-00 00:00:00', '2010-04-16 08:10:34', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tkh=\nbt_pltb=\nt_dbc=viên nang cứng,viên nang mềm\nt_ndt= kháng viêm giải độc\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '0', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('67', '4 phút uy hiếp của tên cướp ngân hàng', '4-phut-uy-hip-ca-ten-cp-ngan-hang', '', '<p class=\"Lead\">\"Người đàn ông khoảng 1m7, áo đen, đội mũ sùm sụp và bịt  mặt xuất hiện, cầm súng chĩa về phía quầy giao dịch. Hắn lớn tiếng: Đưa  đây ít tiền\", nữ nhân viên Ngân hàng thương mại cổ phần (TMCP) Hàng hải  kể lại vụ cướp trưa 5/4.\r\n', '\r\n<br /><a class=\"Lead\" href=\"http://vnexpress.net/GL/Phap-luat/2010/04/3BA1A778/\"><br /></a></p>\r\n<p class=\"Normal\">Chiều 5/4, 6 tiếng sau khi xảy ra vụ cướp tại chi  nhánh Ngân hàng TMCP Hàng hải ở tầng một trung tâm thương mại trên đường  La Thành, Hà Nội, chị Hà Thủy (kiểm soát viên, một trong ba nữ nhân  viên đối mặt với tên cướp) đã kể lại sự việc với <em>VnExpress.net.</em></p>\r\n<p class=\"Normal\">Theo chị Thủy, sáng 5/4 một khách hàng gọi điện đến  chi nhánh yêu cầu rút 3 tỷ đồng gửi từ trước. Ngay sau đó, tiền được  chuyển về địa điểm giao dịch này để buổi chiều chi trả.</p>\r\n<p class=\"Normal\">\"Khoảng 12h, khi ôtô chở tiền vừa rời đi được ít phút,  một thanh niên cao khoảng 1m7, áo đen, đội mũ sùm sụp và che mặt kín  mít bất ngờ xuất hiện, cầm súng chĩa vào phía quầy giao dịch.\", chị Thủy  cho hay.</p>\r\n<p class=\"Normal\">\"Hắn gằn giọng: \'Đưa đây ít tiền\'. Chúng tôi cố gắng  kéo dài thời gian để trì hoãn nhưng tên này luôn chĩa súng, uy hiếp bắt  bỏ tiền vào chiếc cặp mở sẵn\", chị Thủy kể giọng chưa hết bàng hoàng.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/BB/1.jpg\" border=\"1\" alt=\"Chị Thủy và Cẩm Vân (giao dịch viên) vẫn đang miệt mài làm  việc sau khi vụ cướp xảy ra. Ảnh: Anh Thư\" width=\"400\" height=\"300\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Các nhân viên chi nhánh Ngân hàng TMCP Hàng hải vẫn  miệt mài làm việc sau khi vụ cướp xảy ra. Ảnh chụp chiều 5/4: <em>Anh  Thư.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Lúc này giờ nghỉ trưa nên ngân hàng vắng người. Chị  định với tay đến chiếc điện thoại bàn, tên cướp rút con dao bầu giấu sẵn  trong người đe dọa \"giết\" nếu gọi cảnh sát.</p>\r\n<p class=\"Normal\">Hắn lăm lăm khua con dao trước mặt khiến 3 nữ nhân  viên hoảng sợ không dám bấm nút chuông báo động.</p>\r\n<p class=\"Normal\">\"Theo yêu cầu của tên cướp, tôi nhét từng thếp tiền  mệnh giá 50.000 đồng vào cặp, đồng thời cố gắng nhìn để nhận dạng nhưng  không được vì hắn đã che kín mặt, chỉ nhìn thấy đôi mắt sắc lạnh\", nữ  nhân viên này cho hay.</p>\r\n<p class=\"Normal\">Sự việc diễn ra chỉ trong vòng 4 phút. Tên cướp chạy  ra cửa. Trước khi đi ra, hắn còn dùng áo lau vết tay trên cửa kính.</p>\r\n<p class=\"Normal\">Khi đó, chị Thủy cùng 2 nữ đồng nghiệp mới định thần  lại, hô hoán \"cướp, cướp\". Do kính dán đề can mờ, nên các nhân viên  không biết tên cướp tẩu thoát một mình hay có đồng bọn bên ngoài chờ  sẵn. Hiện cũng chưa có nguồn tin nào xác nhận, khẩu súng tên cướp sử  dụng là thật hay giả.</p>\r\n<p class=\"Normal\">Theo Ngân hàng Hàng hải, số tiền bị cướp hơn 90 triệu  đồng, chủ yếu là lượng tiền nhỏ lẻ đang được kiểm đếm tại quầy. “Rất may  túi tiền 2 tỷ đồng vừa chuyển về chúng tôi chưa kịp kiểm tra đang để  phía dưới chân, tên cướp không phát hiện được”, chị Thủy cho hay.</p>\r\n<p class=\"Normal\">Trao đổi với <em>VnExpress.net</em>, ông Nguyễn Hoàng  An (Giám đốc chi nhánh Hà Nội, Ngân hàng Hàng hải) nhận định, có lẽ tên  cướp đã theo dõi và rình rập từ trước nên lợi dụng lúc mọi người chuẩn  bị nghỉ trưa mới ra tay.</p>\r\n<p class=\"Normal\">\"Chúng tôi đã chuyển toàn bộ băng ghi hình từ một  camera gắn ở phía ngoài và 3 camera bên trong cho cảnh sát. Hy vọng  những thông tin nhận dạng từ nhân chứng và các dữ liệu từ camera sẽ giúp  cảnh sát sớm tìm được thủ phạm\", vị giám đốc nói.</p>\r\n<p class=\"Normal\">Sáng nay, thông tin về hung thủ vẫn đang được cảnh sát  khẩn trương xác minh. Vụ việc được chuyển Cơ quan cảnh sát điều tra  Công an Hà Nội thụ lý theo thẩm quyền.</p>\r\n<p class=\"Normal\">Chi nhánh Ngân hàng TMCP Hàng hải nằm dưới tầng 1 của  Trung tâm thương mại ngay ngã tư Ô Chợ dừa, một khu vực đông đúc thường  xảy ra ùn tắc giao thông. Nơi xảy ra vụ cướp cách trụ sở công an phường  khoảng 10 mét.</p>', '-2', '9', '0', '294', '2010-04-06 08:56:48', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 08:56:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('68', 'Rượu vang Ona Syrah và canh nấm', 'ru-vang-ona-syrah-va-canh-nm', '', '<p class=\"Lead\" align=\"left\">Nấm, rượu vang đều đến từ những vùng đất có  khí hậu, vị trị địa lý tương đồng và đều có lợi cho sức khỏe, dễ sử  dụng.\r\n', '\r\n</p>\r\n<p class=\"Normal\" align=\"left\">Xu hướng ăn tiệc tại các nhà hàng  Fine-dinning cho những dịp gặp mặt với đồng nghiệp, đối tác, bạn bè hay  những buổi kỷ niệm của gia đình đã phổ biến trong một xã hội năng động.  Phong cách thưởng thức và sự tinh tế trong việc kết hợp giữa đồ ăn, thức  uống giúp bữa tiệc trở nên ngon miệng và thú vị. Những món ăn ngon nếu  biết thưởng thức cùng các loại đồ uống thích hợp sẽ kích thích vị giác  và đánh thức các giác quan của người dùng.</p>\r\n<p class=\"Normal\" align=\"left\">Lẩu nấm ngon và bổ dưỡng là món ăn yêu  thích của nhiều thực khách trong xu hướng tìm lại với thiên nhiên. Nấm  vốn là thân cỏ, mềm, mát dịu, rất hợp với những đồ uống cùng có vị ngọt,  hơi chát, không quá nồng, thơm mùi thiên nhiên đặc biệt phù hợp với  rượu vang.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A0/9F/Nam_bung_lon_va_ruou_Ona_Syrah.jpg\" border=\"1\" width=\"350\" height=\"250\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Vẻ đẹp của ly rượu vang cùng độ rượu nhẹ  nhàng, thơm quyện với hương nấm rất thích hợp với phụ nữ và cả những quý  ông “sành” thưởng thức giúp cho bữa tiệc trở nên nhẹ nhàng nhưng không  kém phần ấm cúng và sang trọng. Nấm và rượu vang có rất nhiều điểm tương  đồng với nhau nhưng điểm chung và cũng là ưu điểm lớn nhất đó là rất có  lợi cho sức khỏe nếu sử dụng hợp lý và đều đặn.</p>\r\n<p class=\"Normal\" align=\"left\">Ngoài ra, chất lượng của chúng đều phụ  thuộc vào vị trí địa lý và khí hậu của nơi xuất xứ. Những cây nấm quý  thường ở những vùng đất có khí hậu trong lành. Những loại rượu vang  thượng hạng đều phải làm từ những chùm nho căng mọng được trồng trên  vùng đồi cao, lộng gió như vang Ona Premium Syrah của hãng Anakena -  hãng rượu vang Chile danh tiếng được Đại sứ quán nước này lựa chọn giới  thiệu tới người tiêu dùng Việt Nam.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A0/9F/Nam_mang_hoa_va_ruou_Ona_Syrah_%282%29.jpg\" border=\"1\" width=\"350\" height=\"250\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Loại rượu này được làm ra từ loại nho  Syrah trồng trên đồi Rapel, Layda ở San Antonio và đồi Ninquen vùng  Colchogua, Chile, thơm ngon bởi chất lượng nho trồng và công thức chế  biến cũng như bảo quản khắt khe. Loại vang Chile này có sắc màu đỏ thậm,  mùi thơm quyến rũ từ quả mâm xôi và chocolate đen cùng các gia vị đặc  biệt. Khi thưởng thức cùng lẩu nấm, thực khách cảm nhận được sự hài hòa  giữa vị thanh, ngọt của nấm, vị giác đậm đà pha với vị chát của vang Ona  Premium Syrah lưu lại rất lâu trong họng.</p>\r\n<p class=\"Normal\" align=\"left\">Rượu vang Ona Premium Syrah có giá ưu đãi  (giảm từ 719.000 đồng xuống còn 579.000 đồng một chai) từ 22/3 đến  22/5.</p>\r\n<p class=\"Normal\" align=\"left\">Địa chỉ nhà hàng lẩu nấm Ashima:</p>\r\n<p class=\"Normal\" align=\"left\"><em>Tại Hà Nội</em></p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 44 Phan Đình Phùng, quận Ba  Đình, Hà Nội. ĐT: 04. 37344600</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 182 Triệu Việt Vương, quận Hai  Bà Trưng, Hà Nội. ĐT: 04. 29743675</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 60 Giang Văn Minh, quận Ba Đình,  Hà Nội. ĐT: 04. 37226353</p>\r\n<p class=\"Normal\" align=\"left\"><em>Tại TP HCM:</em></p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 35A Nguyễn Đình Chiểu, quận 1.  ĐT: 08. 38241966</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 11 Công Trường Mê Linh, quận 1.  ĐT: 08. 38238799</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 11 Tú Xương, phường 7, quận 3.  ĐT: 08. 39320828</p>', '-2', '9', '0', '294', '2010-04-02 04:23:46', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:23:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('75', 'NƯỚC NGÂM CHÂN SALUS', 'nc-ngam-chan-salus', '', '<p> </p>\r\n', '\r\n<p><img src=\"images/anhthuoc/untitled-1.jpg\" border=\"0\" width=\"400\" height=\"331\" /></p>\r\n<p> </p>\r\n<p><span style=\"font-size: small;\">Salus Relaxo được gọi là sản phẩm Chăm sóc Bàn chân, sản phẩm có dạng dung dịch được dùng để ngâm chân, bàn chân là nơi có hơn 60 huyệt đạo thông với 360 huyệt đạo trên cơ thể, còn gan bàn chân là nơi phản ánh sức khỏe của con người, nó còn được coi là “trái tim” thứ 2 của cơ thể. Chăm sóc bàn chân cũng là chăm sóc sức khỏe cho toàn thân. </span></p>\r\n<p><span style=\"font-size: small;\"><br /> Ngâm chân với Salus Relaxo giúp tăng cường lưu thông huyết mạch, làm dãn các cơ bắp, tạo cho các giây thần kinh hoạt động mạnh mẽ, giảm mệt mỏi.</span><span style=\"font-size: small;\"> Đây là một sản phẩm chăm sóc sức khỏe truyền thống của người Dao đỏ có nguồn gốc từ thiên nhiên và đang được khách du lịch nước ngoài rất ưa chuộng tại Sapa. Sản phẩm sử dụng công thức phát triển bởi Bộ môn Thực vật – Trường Đại học Dược Hà Nội từ bài thuốc cổ truyền dân tộc Dao đỏ, Tả Phìn, Sapa. Là sự kết hợp hài hòa giữa công nghệ kỹ thuật cao với các nguyên liệu tự nhiên quý hiếm như :</span></p>\r\n<p><span style=\"font-size: small;\">Sambucus javanica, Cinnamomum cassia Blume, Scheffera, Elsholtzia<br /> Cây cơm cháy (Sambucus javanica )<br /> - Cành, lá tắm cho phụ nữ mới sinh nở<br /> - Quả, hoa, vỏ làm thuốc lợi tiểu, ra mồ hôi, nhuận tràng<br /> - Quả ngâm rượu uống chữa thấp khớp <br /> Cây quế (Cinnamomum cassia Blume)<br /> - Quế nhục chữa bệnh do lạnh như lạnh chân tay, đau bụng trúng  thực, phong tê bại, ỉa chảy<br /> - Quế chi chữa cảm lạnh, sốt không ra mồ hôi<br /> Cây chân chim (Scheffera sp.)<br /> - Chữa đau lưng, nhức xương, tê bại chân tay, phù thũng<br /> Cây chùa dù (Elsholtzia penduliflora W.W.Sm.)<br /> - Trị viêm họng, cảm, viêm phổi, viêm tuyến sữa</span></p>', '1', '9', '0', '294', '2010-04-22 16:45:51', '62', '', '2010-04-29 10:36:32', '62', '0', '0000-00-00 00:00:00', '2010-04-22 16:45:51', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '1', '', '', '0', '19', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('69', 'Dung dịch vệ sinh phụ nữ Dạ Hương', 'ga-trng-nng-st-t', '', '<p>\r\n', '\r\n<img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/44ed62664dc24040aa6c4bd3e836c0b6-Anh-DH-thuong.gif/Anh-DH-thuong.gif\" border=\"0\" alt=\"Dung dịch vệ sinh phụ nữ Dạ Hương  Muối – Thảo dược – Acid lactic\" width=\"500\" height=\"390\" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Đặc điểm</strong>: </span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><br />Là sản phẩm chuyên dùng để chăm sóc và vệ  sinh vùng kín (âm hộ) phụ nữ. Công thức Dạ Hương được nghiên cứu, xây  dựng dưới sự tham vấn của các Bác sỹ chuyên khoa Phụ sản và các Dược sỹ  chuyên ngành bào chế. Kết hợp các thành phần tự nhiên Dạ  Hương an toàn, không khô rát, phù hợp với sinh lý vùng kín và không ảnh  hưởng tới pH sinh lý âm đạo.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Dạng dung dịch  tiện dụng, không phải pha loãng trước khi sử dụng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Được bào chế đậm đặc  nên dùng tiết kiệm, được nhiều lần.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Dạng bào chế và trình bày</strong>: Dạng gel,  chai 100ml, chai 120 ml (có vòi bơm)</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Thành phần</strong>:</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Muối tinh khiết (NaCl) 0,9%; Lô hội (Aloe vera)  0,01%; Tinh dầu Bạc hà 0,085%; Tinh dầu Bách lý hương 0,005%; Acid  Lactic 0,05%; Vitamin E 0,01%; Hương liệu; Các thành phần khác vừa đủ  100ml.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Công dụng: </strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><br />Làm sạch nhẹ nhàng, khử mùi hôi, bảo vệ vùng  kín, ngăn ngừa vi trùng gây bệnh viêm nhiễm phụ khoa, mang lại cảm giác  tự tin với hương thơm quyến rũ.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Vệ sinh vùng  kín hàng ngày, vệ sinh vùng kín thời kỳ kinh nguyệt, thai nghén, hậu  sản.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Vệ sinh bộ phận  sinh dục ngoài cho cả nam, nữ trước và sau khi quan hệ tình dục.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Hỗ trợ điều trị  viêm nhiễm phụ khoa (sử dụng phối hợp trong phác đồ điều trị): Viêm âm  đạo, viêm âm hộ, ngứa âm hộ, huyết trắng…</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Liều dùng, cách dùng</strong>:</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Làm ướt vùng  kín, lấy 2-3 ml dung dịch vào lòng bàn tay, thoa rửa nhẹ vùng kín trong 1  phút, sau đó rửa lại thật kỹ bằng nước sạch.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Nên dùng hàng  ngày, nhất là thời kỳ kinh nguyệt, hậu sản.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Trong những  ngày hành kinh, tùy mức độ huyết ra nhiều hay ít mà rửa âm hộ từ 2-4  lần/ngày.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><br />Bảo quản</strong>: Để nơi thoáng  mát.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Tiêu chuẩn</strong>: TCCS</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Hạn dùng</strong>: 36 tháng kể  từ ngày xuất xưởng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Lưu ý:</strong> Sản phẩm này  chỉ dùng để rửa ngoài, không dùng để thụt rửa âm đạo, không được uống.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>SĐK:  1221/07/QLD-MP</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>ĐỂ XA TẦM TAY  TRẺ EM</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>ĐỌC KỸ HƯỚNG DẪN SỬ DỤNG TRƯỚC KHI  DÙNG</strong></span></span></p>', '1', '9', '0', '294', '2010-04-02 04:23:07', '62', '', '2010-04-22 02:04:37', '62', '62', '2010-04-22 12:32:01', '2010-04-02 04:23:07', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '7', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('70', 'BOGANIC', 'nga-ra-mt-tau-chien-tang-hinh', '', '<p>\r\n', '\r\n</p>\r\n<p><img src=\"http://www.traphaco.com.vn/san-pham/atproductlist/atproductlist.2007-09-19.5558750653/atproduct.2007-09-26.6547743926/Photo_preview\" border=\"0\" width=\"300\" height=\"175\" /></p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>\r\n<p>Trình bày:</p>\r\n<br /> </strong></span></span><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> Viên bao đường: - Hộp 2 vỉ x 20 viên - Hộp 5 vỉ x 20 viên Viên bao film: - Hộp 2 vỉ x 20 viên - Hộp 5 vỉ x 20 viên Viên nang mềm: - Hộp 5 vỉ x 10 viên. </span></span></p>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_components_label\" > </p>\r\n-->\r\n<p>Thành phần:</p>\r\n</strong></span></span>\r\n<p>Cao Actiso</p>\r\n<p>Cao biển súc</p>\r\n<p>Bột bìm bìm biếc</p>\r\n<p>Tá dược...vđ... 1 viên</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_indications_label\" > </p>\r\n-->\r\n<p>Chỉ định:</p>\r\n</strong></span></span>\r\n<p>- Dùng cho những người thiểu năng gan, viêm gan gây  mệt mỏi, khó tiêu, vàng da, mụn nhọt, lở ngứa, bí đại tiểu tiện, táo  bón. <br />- Giải độc, chống dị ứng. Đặc biệt suy giảm chức năng gan do  dùng nhiều bia rượu. - Xơ vữa động mạch, mỡ trong máu cao.</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_dosage_label\" > </p>\r\n-->\r\n<p>Liều dùng-cách dùng:</p>\r\n</strong></span></span>\r\n<p><em>*</em><strong> <em>Viên bao đường, bao phim:</em></strong></p>\r\n<p>- Người lớn: mỗi lần 2-4 viên, ngày 3 lần.<br />- Trẻ  em: mỗi lần 1-2 viên, ngày 3 lần.</p>\r\n<p><em><strong>* Viên nang mềm:</strong></em></p>\r\n<p>- Người lớn: mỗi lần 1 – 2 viên, ngày 3 lần.</p>\r\n<p>- Trẻ em trên 8 tuổi: mỗi lần 1 viên, ngày 3 lần.</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_contraindications_label\" > </p>\r\n-->\r\n<p>Chống chỉ định:</p>\r\n</strong></span></span>\r\n<p>Mẫn cảm với bất cứ thành phần nào của thuốc.</p>\r\n</div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_selflife_label\" > </p>\r\n-->\r\n<p>Hạn sử dụng:</p>\r\n</strong></span></span><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> 24 tháng </span></span></div>\r\n<div><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong> <!--\r\n<p i18n:translate=\"product_specification_label\" > </p>\r\n-->\r\n<p>Chứng nhận:</p>\r\n</strong></span></span><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> TCCS</span></span></div>', '1', '9', '0', '294', '2010-04-06 09:03:03', '62', '', '2010-04-22 02:01:22', '62', '0', '0000-00-00 00:00:00', '2010-04-06 09:03:03', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '6', '', '', '0', '7', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('71', 'Thuốc ho Bảo Thanh', 'goa-ph-en-la-ai', '', '', '\r\n<p><img src=\"http://www.hoalinhpharma.com.vn/Image.aspx/image=pjpeg/3766a224361eb2251781001219094ef2-Bao-Thanh-dang-trong-bai-vi.jpg/Bao-Thanh-dang-trong-bai-vi.jpg\" border=\"0\" width=\"215\" height=\"228\" /></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span style=\"color: #008000;\"><strong>Thông  tin sản phẩm:</strong></span></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong>Thành  phần: </strong></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">Ô mai 12,5g; Mật ong 25g; Xuyên bối  mẫu 10g; Tỳ bà diệp 12,5g; Sa sâm 2,5g; Phục linh 2,5g; Trần bì 2,5g;  Cát cánh 10g; Bán hạ 2,5g; Ngũ vị tử 1,25g; Qua lâu nhân 5,0g; Khoản  đông hoa 2,5g; Viễn chí 2,5g; Khổ hạnh nhân 5,0g; Gừng 2,5g; Cam thảo  2,5g; Tinh dầu bạc hà 2,5mg và Các tá d­ược.</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span style=\"color: #008000;\"><strong>Quy  cách đóng gói và dạng bào chế: </strong></span></span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- Hộp 1 chai Siro 125ml.</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">- <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Noi-dung/Thuoc-ho-Bao-Thanh-dang-Vien-ngam/Vien_ngam_Thuoc_ho_Bao_Thanh/\">Hộp  24 viên ngậm </a>(Dạng kẹo ngậm Lozenge vị ngọt thơm, dễ dùng,  chứa hàm lượng tối đa cao dược liệu trong một viên)</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\"><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><strong><span style=\"color: #008000;\">Đặc  điểm thành phần, tác dụng:</span></strong></span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">\r\n<p align=\"justify\">Thuốc ho Bảo Thanh phối hợp 2 vị thuốc dân gian quen  thuộc <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Thuoc-ho-Bao-Thanh/Thong-tin-lien-quan-Thuoc-ho-Bao-Thanh/O_mai-Mon_an_ngon_vi_thuoc_quy/\">Ô  mai</a> - <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Thuoc-ho-Bao-Thanh/Thong-tin-lien-quan-Thuoc-ho-Bao-Thanh/Mat_ong_voi_suc_khoe_va_doi_song/\">Mật  ong </a>và bài thuốc Đông y trị ho nổi tiếng của Trung Quốc <a href=\"http://www.hoalinhpharma.com.vn/Desktop.aspx/Dong-y-va-kinh-nghiem-DG/Dong-y-va-kinh-nghiem-dan-gian/Xuyen_boi_ty_ba_cao-Tu_huyen_thoai_den_hien_thuc/\">\"Xuyên  bối tỳ bà cao\".</a></p>\r\n<p align=\"justify\"><span style=\"color: #008000;\"><strong>Ô mai: </strong></span></p>\r\n<p align=\"justify\">Ô mai không chỉ là món ăn quen thuộc, được  nhiều người Việt Nam ưa chuộng mà còn là vị thuốc dân gian giúp trừ ho,  tiêu đờm công hiệu, đặc biệt trong các trường hợp ho mãn tính, ho dai  dẳng lâu ngày.</p>\r\n<p align=\"justify\">Ghi nhận công dụng của Ô mai trong điều trị các chứng  ho, Hải Thượng Lãn Ông có phân tích: Tạng phế sắc trắng, là bẩm thụ khí  của hành Kim, nó như cái tán, cái lọng che chở cho các tạng khác, không  thể chịu được bất kì một vật gì làm chướng ngại. Tỳ là gốc sinh đờm,  Phế là đồ chứa đờm. Nếu đờm ở Phế nhiều thì khí nghịch lên mà gây thành  ho. Phế là chỗ then chốt, cửa ngõ của toàn thân, không chỗ nào quan  trọng hơn chỗ đó. Do vậy, bệnh phế khí nghịch, nhiều đờm không thể không  tìm cách trị gấp. Hải Thượng Lãn Ông viết: Ô mai có vị chua tính liễm,  có thể thăng, có thể giáng, giúp thuận khí chỉ ho, tiêu đờm. Điều đó  khẳng định vai trò cốt yếu của Ô mai trong các bài thuốc trị ho, đặc  biệt các chứng ho dai dẳng, lâu ngày không khỏi.</p>\r\n<p align=\"justify\"><strong><span style=\"color: #008000;\">Mật ong:</span></strong></p>\r\n<p align=\"justify\">Theo dân gian, mật ong là một món ăn ngon, có tác  dụng bồi bổ cơ thể đồng thời giúp giảm ho. Mỗi sáng uống một ly nước pha  mật ong giúp cơ thể khỏe mạnh, trẻ lâu, phòng ngừa được nhiều bệnh tật.  Khi bị ho kéo dài khiến cơ thể mệt mỏi, suy nhược, dùng mật ong sẽ giúp  phục hồi sinh lực, bệnh mau khỏi hơn.</p>\r\n<p align=\"justify\">Từ hàng thế kỉ nay, mật ong vẫn là phương thuốc cổ  truyền dùng trị ho và cảm lạnh. Công dụng này ngày càng được khoa học  chứng minh và củng cố. Tiến sĩ Ian Paul, trưởng nhóm nghiên cứu trường  đại học Dược bang Pennsylvania, Hershey (Mỹ), khi so sánh hiệu quả giảm  ho của mật ong với Dextromethorphan (DM), một hoạt chất giảm ho được sử  dụng phổ biến, đã kết luận: “Kết quả rõ rệt đến nỗi chúng tôi có thể  khẳng định rằng mật ong tốt hơn hẳn các loại thuốc mua ở quầy”. Nghiêu  cứu cũng được tiến hành trên trẻ nhỏ và cho kết quả tương tự: 105 trẻ từ  2 đến 18 tuổi, chia 2 nhóm: nhóm uống mật ong 30 phút trước khi đi ngủ  và nhóm sử dụng DM có hương vị mật ong cũng 30 phút trước khi đi ngủ.  Kết quả là những trẻ uống mật ong giảm được các cơn ho và co thắt hơn  hẳn những trẻ sử dụng DM. Tiến sĩ Paul nói: “Sử dụng mật ong là một liệu  pháp an toàn, hiệu quả mà các bậc cha mẹ nên sử dụng cho trẻ trên 1  tuổi khi chúng bị ho hay cảm cúm”.</p>\r\n<p align=\"justify\">Mật ong còn có tác dụng kháng khuẩn tự nhiên và làm  dịu niêm mạc hầu họng (do thành phần chứa acid Panthotenic và Albumin  giúp phục hồi và tái tạo niêm mạc bị tổn thương: viêm, đau rát do ho kéo  dài…). Vai trò của mật ong ngày càng được khẳng định trong hệ thống y  học chính thống “Tổ chức y tế thế giới đã xem mật ong như một phương  thuốc trị bệnh tiềm năng”.</p>\r\n<p align=\"justify\"><strong><span style=\"color: #008000;\">Bài thuốc \"Xuyên bối tỳ  bà cao\":</span></strong></p>\r\n<p align=\"justify\">Là bài thuốc Đông y trị ho nổi tiếng của Trung Quốc,  được đưa vào Dược điển Trung Quốc, trở thành bài thuốc chính thống được  sử dụng rộng rãi.</p>\r\n<p align=\"justify\">\"Xuyên bối tỳ bà cao\" phối hợp các vị dược liệu theo  bố cục chặt chẽ của một bài thuốc Đông y gồm Quân - Thần - Tá - Sứ, có  tác dụng bổ trợ lẫn nhau, tăng cường công năng: Bổ phế - Trừ ho - Tiêu  đờm.</p>\r\n</span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\">\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Bào chế  và quản lý chất lượng: </span></strong></p>\r\n</span></span></p>\r\n<p dir=\"ltr\" align=\"justify\">Quá trình nghiên cứu bào chế  thuốc ho cao cấp Bảo Thanh được thực hiện dưới sự tham vấn của các Lương  y, Bác sĩ y học cổ truyền, Dược sĩ chuyên ngành bào chế. Công tác đảm  bảo chất lượng được thực hiện xuyên suốt từ khâu tuyển chọn nguyên liệu,  qui trình bào chế tới việc bảo quản và phân phối thành phẩm.Nguyên liệu  làm thuốc được tuyển chọn kỹ, đảm bảo nguyên liệu sạch, an toàn, không  có thuốc bảo vệ thực vật và hóa chất bảo quản. Qui trình sản xuất được  giám sát chặt chẽ. Thuốc ho Bảo Thanh được đựng trong chai thủy tinh  dày, kín, tối màu, đảm bảo chất lượng trong toàn khâu lưu kho và phân  phối.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Công  năng</span></strong>:</p>\r\n<p dir=\"ltr\" align=\"justify\">Bổ phế (Chữa tận gốc theo quan điểm  Đông y)</p>\r\n<p dir=\"ltr\" align=\"justify\">Trừ ho, tiêu đờm (Chữa triệu chứng -  Chữa phần ngọn theo quan điểm Đông y)</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Chủ trị: </span></strong></p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho mãn tính, ho dai dẳng lâu ngày  không khỏi</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho do dị ứng thời tiết</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho do cảm lạnh, cảm cúm</p>\r\n<p dir=\"ltr\" align=\"justify\">- Ho gió, ho khan, ho có đờm</p>\r\n<p dir=\"ltr\" align=\"justify\">- Hỗ trợ điều trị viêm họng, viêm phế  quản</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Liều  dùng, cách dùng: </span></strong></p>\r\n<p dir=\"ltr\" align=\"justify\">- Trẻ em dư­ới 3 tuổi: ngày uống 3  lần, mỗi lần 5 ml.<br />- Trẻ em trên 3 tuổi: ngày uống 3 lần, mỗi  lần 10 ml.<br />- Ngư­ời lớn: ngày uống 3 lần, mỗi lần 15 ml</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Tác  dụng không mong muốn</span></strong>: Chưa nhận thấy tác  dụng không mong muốn nào của thuốc</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Hạn dùng:</span></strong> 24 tháng kể từ ngày sản  xuất. Không dùng nếu thấy thuốc có hiện tượng mốc, hỏng hoặc có dấu  hiệu khác lạ; đồng thời báo ngay cho nhà sản xuất biết.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Bảo  quản</span></strong>: Nơi khô mát, tránh ánh sáng.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Tiêu  chuẩn</span></strong>: TCCS.</p>\r\n<p dir=\"ltr\" align=\"justify\"><strong><span style=\"color: #008000;\">Lưu  hành số</span></strong>: V184 – H12 – 10.</p>\r\n<p dir=\"ltr\" align=\"justify\">Đọc kĩ hướng dẫn sử dụng trước khi dùng.</p>\r\n<p dir=\"ltr\" align=\"justify\">Sản phẩm được phân phối tại các nhà thuốc  trên toàn quốc.</p>', '1', '9', '0', '294', '2010-04-06 09:03:57', '62', '', '2010-04-22 01:54:07', '62', '0', '0000-00-00 00:00:00', '2010-04-06 09:03:57', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=thuốc nước\nt_ndt=hô hấp\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '5', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('72', 'Phụ Bì Khang', 'ph-bi-khang', '', '<p>Hỗ trợ điều trị mề đay cấp và mạn tính   <br /> <br />Đối tượng sử dụng: dùng cho người bị mề đay, bị mẩn đỏ thành từng  đám trên da, ngứa ngáy khó chịu.</p>\r\n', '\r\n<p><br /> <img src=\"http://thuocbietduoc.com.vn/images/drugs/PHU-BI-KHANG.jpg\" border=\"0\" width=\"400\" height=\"293\" /><br />- Cơ chế tác dụng:  <br /> <br />Mề đay là tình trạng da nổi lên từng đám nhiều hoặc ít, không đều,  màu hồng hoặc xanh trắng, các mụn thường tự biến mất và di chuyển,  thường rất ngứa. Mề đay là một trong những bệnh ngoài da phổ biến tiến  triển theo 2 thể bệnh khác nhau: Thể cấp tính và mãn tính. Theo Y học  hiện đại, Mề đay xảy ra do những yếu tố dị nguyên (chất gây dị ứng: như  thời tiết, thức ăn, lông động vật, phấn hoa, côn trùng...) tác động vào  cơ thể. Việc điều trị phải loại bỏ nguyên nhân (dị nguyên) đồng thời  điều trị triệu chứng (giảm mẩn ngứa, viêm). Bên cạnh đó phải tăng cường  chức năng gan (giải độc) và chức năng thận (tăng đào thải các chất độc  hại ra khỏi cơ thể) và tăng cường năng lượng tế bào giúp bảo vệ tế bào .   <br /> <br />PHỤ BÌ KHANG là sự phối hợp toàn diện các thành phần giúp điều trị  triệu chứng giảm viêm, ngứa (cao nhàu); các thành phần giúp tăng cường  chức năng giải độc của cơ thể (cao gan); các thành phần giúp tăng cường  chức năng thận (cao nhàu) và tăng cường năng lượng tế bào, giúp bảo vệ  tế bào ( L- carnitin fumarat ) . Nhờ vậy PHỤ BÌ KHANG giúp hỗ trợ phòng  và điều trị hiệu quả các trường hợp mề đay cả cấp tính và mãn tính.  <br /> <br />Cao nhàu : có tác dụng thanh nhiệt, giải độc, bồi bổ sức khỏe, tăng  cường khả năng miễn dịch, phục hồi các tế bào bị thương tổn suy yếu,  chống viêm nhiễm, làm mụn nhọt mau lành, chóng lên da non, chống sung  huyết, giảm đau nhức mệt mỏi cơ thể. (Cây thuốc và động vật làm thuốc  Việt Nam- tập 2- trang 445)  <br /> <br />Cao gan : Được chiết xuất từ gan động vật, cao gan chứa nhiều chất  dinh dưỡng như sắt, protein, các<a href=\"http://thuocbietduoc.com.vn/home/search.aspx?desc=suc-khoe&amp;key=%20vitamin&amp;opt=1\" title=\"Các bài  liên quan tới  vitamin\"> vitamin</a>. Cao gan có tác dụng bổ máu, giúp tăng cường chức năng gan,  tăng khả năng giải độc của cơ thể.  <br /> <br />L-carnitine fumarate : L- carnitine là 1 acid amin có trong cơ thể  con người. Nó đóng vai trò then chốt trong việc vận chuyển các acid béo  vào ty thể- nơi sản xuất năng lượng cho tế bào. Sự thiếu hụt L-  carnitine có thể sẽ dẫn đến các biểu hiện thiếu năng lượng hay tình  trạng mệt mỏi, nhược cơ. L-Carnitine đóng vai trò vô cùng quan trọng  giúp cơ thể tự cân bằng năng lượng và tăng khả năng miễn dịch. Fumarate  là 1 muối/ester tự nhiên được tạo ra từ acid fumaric có trong cơ thể  người. Fumarate đóng 1 vai trò quan trọng trong chu trình Krebs- là chìa  khoá của chu trình sản xuất năng lượng tế bào. Fumarate hỗ trợ một cách  tích cực đối với tác dụng chuyển hoá năng lượng của L- carnitine.</p>\r\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div>Liều lượng:</div>\r\n</td>\r\n<td align=\"right\"><img src=\"http://thuocbietduoc.com.vn/interface/BtMinus.gif\" border=\"0\" style=\"cursor: pointer;\" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div id=\"DossuuuPlus\" style=\"display: block;\">Ngày uống 4-6viên, chia 2 lần, trước bữa ăn 30  phút. <br /> <br />Nên dùng một đợt liên tục từ 2 đến 3 tháng để có kết quả tốt nhất.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div>Bảo quản:</div>\r\n</td>\r\n<td align=\"right\"><img src=\"http://thuocbietduoc.com.vn/interface/BtMinus.gif\" border=\"0\" style=\"cursor: pointer;\" /></td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<div id=\"Dossuuu11Plus\" style=\"display: block;\">Để nơi khô mát, tránh ánh sáng. Đậy nắp hộp sau  khi sử dụng.</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '1', '9', '0', '294', '2010-04-16 08:10:34', '62', '', '2010-04-16 08:16:56', '62', '0', '0000-00-00 00:00:00', '2010-04-16 08:10:34', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tkh=\nbt_pltb=\nt_dbc=viên nang cứng,viên nang mềm\nt_ndt= kháng viêm giải độc\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '4', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('73', 'Hộ Tạng Đường', 'ho-tang-duong', '', '', '\r\n<p><img src=\"http://www.thuocbietduoc.com.vn/images/drugs/2009/9/ho-tang-duong_7-25909.JPG\" border=\"0\" width=\"320\" height=\"250\" /></p>\r\n<p>SĐK:   Hotangduong</p>\r\n<p>Dạng thuốc:      viên nén bao phim</p>\r\n<p>Đóng gói:          Mỗi vỉ có 10 viên nén bao phim màu trắng. Mỗi hộp có 3 vỉ.</p>\r\n<p>Giá kê khai:</p>\r\n<p>Chỉ định:</p>\r\n<p> </p>\r\n<p>- Đặc tính sản phẩm</p>\r\n<p> </p>\r\n<p>Hộ Tạng Đường là sự phối hợp toàn diện giữa α-lipoic acid và các dược thảo có tác dụng điều hòa đường huyết, ngăn ngừa biến chứng và làm chậm tiến trình biến chứng tiểu đường. Nhờ vậy Hộ Tạng Đường giúp phòng ngừa biến chứng và hỗ trợ điều trị hiệu quả bệnh tiểu đường (týp I và týp II) cùng các biến chứng của nó.</p>\r\n<p> </p>\r\n<p>α-lipoic acid (ALA): ALA là một chất chống oxi hóa mạnh. ALA có tác dụng tấn công các gốc tự do – sản phẩm thải ra khi cơ thể chuyển thức ăn thành năng lượng – giúp làm giảm các stress oxi hóa trong tế bào. ALA còn có tác dụng độc đáo là tái sử dụng các chất chống oxi hóa khác như vitamin C, vitamin E, Glutathione và tăng sản sinh Glutathione. Nhờ vậy, ALA có tác dụng bảo vệ mạch máu nhất là các mạch máu nhỏ ở võng mạc nên phòng ngừa bệnh võng mạc, ngăn ngừa tổn thương thận, tổn thương thần kinh ngoại biên &amp; xơ vữa động mạch. ALA dễ dàng đi qua hàng rào máu não nên có tác dụng bảo vệ não trong tai biến mạch máu não. Khi đường huyết tăng, ALA có tác dụng “dọn dẹp” glucose trong máu nên có tác dụng hỗ trợ cho các thuốc hạ đường huyết.</p>\r\n<p>Hoài sơn (Dioscorea persimlis) được coi là một vị thuốc bổ, chữa ăn uống kém tiêu, bệnh tiểu đường. khả năng thủy phân chất đường của men trong Hoài sơn rất cao do đó giúp hạ đường huyết.</p>\r\n<p>Câu kỷ (Lycium chinensis Mill.) được coi là vị thuốc bổ toàn thân, dùng cho các trường hợp bệnh nhân bị tiểu đường, sáng mắt, bổ thận, suy nhược thần kinh, mệt mỏi. Các thử nghiệm dược lý cho thấy câu kỷ có tác dụng bổ gan, hạ cholesteron huyết và tăng cường miễn dịch, hạ đường huyết.</p>\r\n<p>Nhàu (Morinda citrifolia L. ) có tác dụng thanh nhiệt, giải độc, giúp hạ huyết áp.</p>\r\n<p>Mạch môn (Ophiopogon japonicus) có tác dụng tăng huyết lượng động mạch vành trong thiếu máu cơ tim, giúp hạ đường huyết.</p>\r\n<p> </p>\r\n<p>- Tác dụng:</p>\r\n<p> </p>\r\n<p>Hộ Tạng Đường có tác dụng chống oxi hóa nên giúp bảo vệ mạch máu nhất là các mạch máu nhỏ ở võng mạc, thần kinh &amp; cầu thận, chống xơ vữa động mạch. Ngoài ra, Hộ Tạng Đường còn giúp hạ đường huyết, cholesterol, huyết áp và tăng cường miễn dịch.</p>\r\n<p> </p>\r\n<p>- Công dụng:</p>\r\n<p> </p>\r\n<p>Phòng ngừa và hỗ trợ điều trị các biến chứng của bệnh tiểu đường: Bệnh võng mạc, bệnh thần kinh ngoại biên , suy thận và các bệnh tim mạch &amp; đột quỵ do xơ vữa động mạch.</p>\r\n<p> </p>\r\n<p>Liều lượng:</p>', '1', '9', '0', '294', '2010-04-19 14:26:25', '62', '', '2010-04-22 16:50:46', '62', '0', '0000-00-00 00:00:00', '2010-04-19 14:26:25', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=viên nén\nt_ndt=tim mạch-huyết áp\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '3', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('74', 'Thuốc cảm lạnh An Nhân', 'thuc-cm-lnh-an-nhan', '', '', '\r\n<p> </p>\r\n<p><img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/5306274ac95f4eeea9a3e6724f02f042-an-nhan.gif/an-nhan.gif\" border=\"0\" width=\"300\" height=\"375\" /></p>\r\n<p> </p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Công thức bào chế</strong>: Cho 125 ml Dịch  chiết dược liệu tương đương với:</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Gừng tươi 12.5g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Bạch chỉ 31.25g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Thảo ma hoàng 21.25g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Quế chi 15g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Cam thảo 8.75g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Hòe hoa 8.75g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Xuyên khung 8.75g</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Tá dược (Nipagin, Nipazol, đường kính, nước cất) vừa  đủ 125 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Dạng bào chế</strong>: Thuốc nước</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Qui cách đóng gói</strong>: Hộp 1 chai 125 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Chủ trị: </strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Các trường hợp cảm lạnh, cảm phong hàn với các biểu  hiện: sốt nhẹ, sợ lạnh, sợ gió, nhức đầu, ngạt mũi hoặc chảy nước mũi  trong, sưng họng, ho có đờm trắng loãng, người mệt mỏi, rêu lưỡi trắng,  không ra mồ hôi…</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Liều dùng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Người lớn (từ 15 tuổi trở lên): Ngày 3 lần, mỗi lần  20 – 25 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Trẻ em từ 6 – 15 tuổi: ngày 2 lần, mỗi lần 10 ml</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Cách dùng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong><img src=\"http://www.hoalinhpharma.com.vn/Image.ashx/image=gif/ddc3c0aadaaf4f678a86d76d167afb6a-annhan.gif/annhan.gif\" border=\"0\" width=\"500\" height=\"188\" /></strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Lấy thuốc vào cốc (theo liều hướng dẫn) thêm khoảng  200 ml nước sôi</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Uống thuốc khi còn nóng, uống xong đắp chăn ấm cho  ra mồ hôi</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Chống chỉ định: </strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Không dùng thuốc cho phụ nữ có thai, phụ nữ cho con  bú, trẻ em dưới 6 tuổi, người suy tim, người phong nhiệt hay người mẫn  cảm với bất cứ thành phần nào của thuốc.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Những lưu ý đặc biệt và cảnh báo trước khi sử  dụng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Không dùng thuốc quá hạn sử dụng, thuốc bị mốc, đọc  kĩ hướng dẫn trước khi dùng</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Những người mắc chứng cảm mạo phong nhiệt, với các  triệu chứng: sốt, đỏ mặt, miệng khô, khát nước, ho ra đờm vàng, họng  sưng đỏ…không nên dùng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Những người mắc bệnh cao huyết áp, bệnh huyết khối  động mạch vành, bệnh tuyến giáp không nên dùng.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Tác dụng không mong muốn:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Chưa nhận thấy tác dụng không mong muốn nào của thuốc  (chú ý: nếu gặp phải tác dụng không mong muốn nào thì báo ngay cho bác  sĩ hoặc nhà sản xuất)</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Hạn dùng:</strong></span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">24 tháng kể từ ngày sản xuất. Không dùng nếu thấy có  hiện tượng mốc, hỏng hoặc có dấu hiệu khác lạ, đồng thời báo ngay cho  nhà sản xuất biết.</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Bảo quản</strong>: Nơi khô mát</span></span></p>\r\n<p align=\"justify\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>Tiêu chuẩn áp dụng</strong>: TCCS</span></span></p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><strong>SĐK:</strong> V1097 – H12 - 10</span></span></p>', '1', '9', '0', '294', '2010-04-21 17:40:12', '62', '', '2010-04-21 17:45:39', '62', '0', '0000-00-00 00:00:00', '2010-04-21 17:40:12', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=thuốc nước\nt_ndt=hạ nhiệt- cảm sốt\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '0', '0', '2', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('76', 'Đông y điều trị viêm khí quản mạn tính', 'ong-y-iu-tr-viem-khi-qun-mn-tinh', '', '<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><span id=\"lblMain\">Bệnh viêm khí quản mạn tính thường do người bệnh khi  bị viêm khí quản cấp tính nhưng không điều trị kịp thời hoặc điều trị  không dứt điểm nên chuyển thành mạn tính. Triệu chứng chủ yếu là ho  không và ho có đờm kéo dài, đôi khi kèm theo thở suyễn. Khi mới phát  bệnh thường nhẹ, sau khi ho thường nhổ ra đờm loãng có bọt trắng, loại  đờm này rất dính thường khó nhổ ra ngoài. Bệnh nhân có thể sốt cao, lạnh  run, ho nhiều, đờm nhiều quánh hoặc vàng đặc. Một số ít bệnh nhân bị  nặng thường dẫn tới chứng giãn nở khí quản, bệnh tim.   \r\n', '\r\n</span></span></span></p>\r\n<p><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"><span id=\"lblMain\">\r\n<p><img src=\"http://www.thuoc.net.vn/uploads/603t.JPG\" border=\"0\" width=\"250\" height=\"187\" /></p>\r\n<p>Đông y cho rằng bệnh này có quan hệ với thể chất và công năng tạng  phủ, khi điều trị cần chú ý điều trị công năng của tỳ và thận. Xin giới  thiệu một số bài thuốc chữa viêm khí quản mạn tính:</p>\r\n<p>Bài 1: Ma  hoàng 1,5g, lê 1 quả bỏ hạt đi cho ma hoàng vào, đem chưng cách thuỷ, ăn  lê và uống nước, mỗi buổi tối dùng một lần. Dùng cho bệnh nhân ho  nhiều, khó khạc đờm.</p>\r\n<p>Bài 2: Thịt dê 500g, tiểu mạch 60g, gừng sống  9g, muối vừa đủ dùng. Cách làm: Tất cả cho vào nồi, thêm nước vừa đủ  hầm thành cháo loãng, khi chín nêm muối vừa ăn, chia thành hai phần dùng  buổi sáng sớm và chiều tối. Dùng trong 1 tháng.</p>\r\n<p>Bài 3: Rễ cây  trà 100g, gừng 50g, mật ong đủ dùng. Cách làm: Rễ cây trà và gừng sắc  lấy nước, đổ mật ong khuấy đều. Mỗi lần uống 20ml, ngày uống 2 lần. Công  dụng: nhuận phổi, trừ đờm, ngăn ho. Chủ trị viêm khí quản nhánh mạn  tính.</p>\r\n<p>Bài 4: Gừng 6g; hạnh nhân, tang bạch bì, mỗi thứ 10g; đảng  sâm 30g; đại táo 7 quả; sữa bò tươi 200ml, gạo tẻ 100g. Cách làm: Ngâm  hạnh nhân, bóc bỏ lớp ngoài vỏ, vớt ra để ráo, tán nhuyễn hòa vào sữa  bò, lọc lấy nước. Đảng sâm, tang bạch bì, gừng, táo, sắc lấy nước, cho  gạo vào nấu cháo. Khi cháo chín, đổ nước hạnh nhân vào khuấy đều. Ăn lúc  bụng đói, không hạn chế số lượng. Công dụng: Thanh phế, hạ khí, chặn  ho, ngăn suyễn. Chủ trị chứng ho do viêm khí quản nhánh gây ra, nặng  ngực, thở mệt, nhiều đờm...</p>\r\n<p>Bài 5: Cá diếc sống 250g, bột trần bì  30g, đường đỏ 20g. Cách làm: Rửa sạch cá, nhét trần bì và đường đỏ vào  bụng cá đem hấp cách thuỷ, ăn cả nước và cái, mỗi ngày một lần, ăn trong  3 ngày liền.</p>\r\n<div>Ngoài ra nếu đờm nhiều, khó khạc, có thể dùng  phương pháp xông đơn giản để khử đờm: Lấy một chiếc cốc to, đổ vào một  lượng nước sôi nửa cốc, người bệnh ghé mũi vào vào cốc, miệng ở bên  ngoài cốc, dùng khăn mặt trùm cả đầu và cốc. Hít khí nóng vào mũi, thở  khí đục bằng miệng. Mỗi lần làm khoảng 20 phút, luôn giữ cho nước nóng.  Nếu ngứa họng hay ho có thể cho thêm một ít loại dầu có tinh chất bạc hà  vào nước để xông.</div>\r\n<div><strong><em>Theo SK&amp;ĐS</em></strong></div>\r\n</span></span></span></p>', '1', '1', '0', '2', '2010-04-22 16:56:51', '62', '', '2010-04-22 17:00:12', '62', '0', '0000-00-00 00:00:00', '2010-04-22 16:56:51', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '9', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('77', 'Hải sản: ăn đúng cách, không khóc nửa đêm', 'hi-sn-n-ung-cach-khong-khoc-na-em', '', '<p style=\"text-align: justify;\">Hải sản thường giàu đạm và các dưỡng chất cần thiết khác. Hải sản cũng rất ít chất béo no và chứa axit béo không no omega-3, là chất béo thiết yếu cho cơ thể. Hải sản còn giàu vitamin (đặc biệt là vitamin nhóm B) và khoáng chất (canxi, kẽm, sắt, đồng, kali…). Do đó, hải sản sẽ góp phần đa dạng cho chế độ ăn cân đối, khoẻ mạnh và giúp trẻ tăng trưởng. Tuy nhiên, hải sản cũng ẩn chứa một số nguy cơ đối với sức khoẻ.\r\n', '\r\n</p>\r\n<p><img src=\"http://www.thuoc.net.vn/uploads/602t.jpg\" border=\"0\" width=\"300\" height=\"225\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">Trong số các loại hải sản, cá biển là thực phẩm tuyệt vời đối với sức khoẻ do chứa đạm có giá trị sinh học cao với tỷ lệ cân đối, phù hợp với cơ thể người. Cá còn rất giàu chất béo không no omega-3 cần để tạo màng tế bào thần kinh và có tác dụng phòng chống bệnh tim mạch. Do đó, ăn cá ít nhất 3 lần/tuần rất có lợi cho sức khoẻ. Gan cá còn rất giàu vitamin A và D. Hàu thì rất giàu kẽm là thành phần của hơn 300 enzyme bên trong cơ thể, là chất cần thiết để trẻ tăng trưởng, và cũng rất cần để phát triển hệ sinh dục. Hầu hết các loại hải sản đều giàu canxi (nhất là các loại cá nhỏ ăn được cả xương) nên rất cần cho xương và răng. Nhưng nếu không biết lựa chọn, bảo quản, chế biến hải sản đúng cách và ăn có mức độ thì có thể “lợi bất cập hại”.<br /><br /><br />Lượng cholesterol trong hải sản thường thấp so với các thực phẩm khác như thịt heo, bò, gia cầm và nội tạng động vật (gan, cật, lòng…). Tuy nhiên, lượng cholesterol trong từng loại hải sản rất khác nhau và cao nhất là trong tôm và mực (trên dưới 200mg cholesterol/100g tôm hoặc mực), kế đến là cua (khoảng 100mg cholesterol/100g cua không tính vỏ). Trong khi đó, lượng khuyến cáo cho một người bình thường khoẻ mạnh là không quá 300mg/ngày. Người có cholesterol trong máu cao cần hạn chế lượng cholesterol trong chế độ ăn không quá 100mg/ngày. Người thừa cân – béo phì thường có nguy cơ cholesterol trong máu cao cũng không nên ăn “thoải mái” các loại hải sản như tôm, mực, cua.<br /><br />Các món ăn từ hải sản cũng là những thực đơn “kiêng kỵ” đối với bệnh gout, căn bệnh viêm khớp cấp do tăng axit uric trong máu và gây lắng đọng các thể purin ở khớp (thường ở ngón chân cái). Đây là căn bệnh được mệnh danh là “bệnh nhà giàu” do chế độ ăn nhiều thịt, hải sản, và uống rượu bia làm tăng axit uric trong máu. Người thừa cân, béo phì nguy cơ bị gout cũng cao. Nếu không tiết chế kịp thời thì đến một lúc nào đó sẽ “bật khóc trong đêm” do cơn đau khớp đến đột ngột giữa giấc ngủ!<br /><br />Cách chế biến hải sản cũng có thể gây bất lợi cho cơ thể. Hải sản chế biến chưa chín hẳn (gỏi cá sống, hàu sống, sò, mực nướng…) có thể ẩn chứa vi trùng và ký sinh trùng. Đó là nguyên nhân của không ít trường hợp nhiễm trùng đường ruột khi ăn hải sản. Ngày nay, khi môi trường ngày một ô nhiễm thì một nguy cơ nữa phải kể đến khi ăn nhiều hải sản là khả năng nhiễm kim loại nặng như thuỷ ngân.<br /><br />Theo Sài Gòn Tiếp Thị</p>', '1', '1', '0', '3', '2010-04-23 14:13:00', '62', '', '2010-04-27 01:57:33', '62', '0', '0000-00-00 00:00:00', '2010-04-23 14:13:00', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '4', '', '', '0', '7', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('97', 'Công ty TNHH dược thảo Phúc Vinh', 'gian-hang-cong-ty-tnhh-dc-tho-phuc-vinh', '', '<p>Giới thiệu gian hàng <span lang=\"en-us\">Công ty TNHH dược thảo Phúc Vinh \r\n', '\r\n<img src=\"http://khoedepvietnam.com/quantrinoidung%5CIMAGES1%5Clogo_thanhvien%5Cpv.jpg\" border=\"0\" width=\"366\" height=\"366\" /></span></p>', '1', '7', '0', '309', '2010-04-27 14:27:45', '62', '', '2010-05-02 07:26:34', '62', '0', '0000-00-00 00:00:00', '2010-04-27 14:27:45', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('78', 'Amorvita Hải Sâm', 'amorvita-hi-sam', '', '', '\r\n<p> </p>\r\n<p><img src=\"http://www.traphaco.com.vn/san-pham/atproductlist/atproductlist.2007-09-19.0574909861/atproduct.2007-10-26.6565803898/Photo_preview\" border=\"0\" /></p>\r\n<p>SĐK VNB-1397-04</p>\r\n<p>Hộp 2 vỉ x 10 viên nang</p>\r\n<p>Nhà  sản Xuất : <span id=\"comnamesx\">Công ty cổ phần TRAPHACO</span></p>\r\n<p>Chỉ định:<br /> <br />- Các trường hợp cần tăng cường sinh lực: Các vận động viên thể thao, người hoạt động ở cường độ cao, người làm việc trí óc căng thẳng.<br />- Nam giới yếu sinh lý.<br />- Các trường hợp suy nhược cơ thể, người mới ốm dậy, sau phẫu thuật, thiếu máu, người già yếu.<br />Chống chỉ định:<br /> <br />- Mẫn cảm với thành phần của thuốc.<br />- Không dùng cho trẻ em<br />Chú ý đề phòng:<br /> <br />Thận trọng: Khi dùng cho phụ nữ có thai.<br />Liều lượng:<br /> <br />- Thông thường: 1viên/lần x 3lần/ngày.<br />- Nam giới yếu sinh lý: Liều khởi đầu (1-2 tháng đầu): 2viên/lần x 2-3 lần/ngày.<br />- Liều duy trì: 1viên/lần x 2-3lần/ngày hoặc theo chỉ dẫn của bác sỹ.</p>', '1', '4', '0', '15', '2010-04-24 11:12:06', '62', '', '2010-05-03 16:56:48', '62', '0', '0000-00-00 00:00:00', '2010-04-24 11:12:06', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=viên nang mềm\nt_ndt=bổ dưỡng\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '1', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('79', 'MA HOÀNG THANG (Thương hàn luận)', 'ma-hoang-thang', '', '<p><strong> \r\n', '\r\nThành phần:</strong></em><br />Ma hoàng  12g<br /><br />Quế chi       8g<br /><br />Hạnh nhân 12g<br /><br />Chích thảo  4g</p>\r\n<p><em><strong><img src=\"http://whatever.losito.net/images/ephedra-sinica.jpg\" border=\"0\" width=\"250\" height=\"165\" /></strong></em></p>\r\n<p style=\"text-align: justify;\"><em><strong><br />Cách dùng: </strong></em>Sắc uống ngày 3 lần, uống lúc thuốc nóng khi ra mồ hôi là được, không cần uống tiếp.<br /><br /><em><strong>Tác dụng:</strong></em> Phát hãn, giải biểu, tuyên phế, bình suyễn.<br /><br /><em><strong>Giải thích bài thuốc:</strong></em> Trong bài thuốc vị:<br /><br /> * Ma hoàng là chủ dược có tác dụng phát hãn, giải biểu, tán phong hàn, tuyên phế, định suyễn.<br /> * Quế chi phát hãn giải cơ, ôn thông kinh lạc làm tăng thêm tác dụng phát hãn của Ma hoàng và chứng đau nhức mình mẩy.<br /> * Hạnh nhân tuyên phế, giáng khí giúp Ma hoàng tăng thêm tác dụng định suyễn.<br /> * Chích thảo tác dụng điều hòa các vị thuốc làm giảm tính cay táo của Quế chi và làm giảm tác dụng phát tán của Ma hoàng.<br /><br /><em><strong>Ứng dụng lâm sàng: </strong></em>Thường dùng trong các trường hợp sau:<br /><br />1.     Đối với chứng ngoại cảm phong hàn, nghẹt mũi, ho hen, khó thở nhiều đàm có thể bỏ Quế chi gọi là bài Tam ảo thang (Hòa tể cục phương).<br /><br />2.     Trường hợp ngoại cảm, phong hàn thấp, sợ lạnh không ra mồ hôi, nhức mỏi cơ xương, gia Bạch truật để trừ thấp gọi là bài Ma hoàng gia Truật thang (Kim quỹ yếu lược).<br /><br />3.     Trên lâm sàng thường hay dùng bài Ma hoàng thang gia giảm để trị các chứng cảm mạo, cảm cúm, viêm đường hô hấp trên, hội chứng biểu thực, bài thuốc còn có tác dụng cả đối với những bệnh viêm phế quản mạn tính, hen phế quản, lên cơn ho suyễn lúc cảm lạnh.<br /><br /><em><strong>Chú ý lúc sử dụng:</strong></em> Bài thuốc có tác dụng phát hãn mạnh nên chỉ dùng trong trường hợp ngoại cảm phong hàn biểu thực, chứng không ra mồ hôi, đối với chứng biểu hư ra mồ hôi nhiều, ngoại cảm phong nhiệt, cơ thể hư nhược, bệnh sản phụ mới sanh, người bị bệnh mất nước, mất máu nhiều đều không nên dùng.<br /><br /><em><strong>Tài liệu tham khảo:</strong></em> Theo thử nghiệm kháng khuẩn các vị thuốc Ma hoàng, Quế chi, Cam thảo đều có tác dụng ức chế mạnh đối với virus cúm (theo Phương tể học).</p>', '1', '3', '0', '279', '2010-04-24 13:51:58', '62', '', '2010-05-03 06:35:02', '62', '0', '0000-00-00 00:00:00', '2010-04-24 13:51:58', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '12', '0', '10', '', '', '0', '14', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('87', 'Công ty Nata-Hoa Linh', 'cong-ty-nata-hoa-linh', '', '<p>Giới thiệu gian hàng Hoa Linh</p>\r\n<p> </p>\r\n', '\r\n<p><img src=\"http://t3.gstatic.com/images?q=tbn:shHvlZckGFHT8M:http://www.cimsi.org.vn/Images/ADV/Logo_Doitac_HoaLinhPharma.jpg\" border=\"0\" width=\"110\" height=\"78\" /></p>\r\n<p> </p>', '1', '7', '0', '300', '2010-04-26 13:58:37', '62', '', '2010-05-02 07:02:47', '62', '0', '0000-00-00 00:00:00', '2010-04-26 13:58:37', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '4', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('88', 'Công ty cổ phần Traphaco', 'cong-ty-c-phn-traphaco', '', '<p>Giới thiệu gian hàng Traphaco</p>\r\n', '\r\n<p><img src=\"http://t1.gstatic.com/images?q=tbn:JkGBKgRhMkuQQM:http://www.kls.vn/Images/ContentImages/200711/c926467a-4a19-4f28-a0f2-5f2055e55654.jpg\" border=\"0\" width=\"149\" height=\"150\" /></p>', '1', '7', '0', '301', '2010-04-26 14:04:26', '62', '', '2010-05-02 07:10:18', '62', '0', '0000-00-00 00:00:00', '2010-04-26 14:04:26', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '1', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('89', 'Công ty Cổ Phần Dược Phẩm Đông Dược', 'cong-ty-c-phn-dc-phm-ong-dc', '', '<p>Giới thiệu gian hàng Nam Dược</p>\r\n', '\r\n<p><img src=\"http://www.camnangthuoc.vn/news/images/member/namduoc7.jpg\" border=\"0\" width=\"120\" height=\"120\" /></p>\r\n<p> </p>', '1', '7', '0', '302', '2010-04-26 14:06:49', '62', '', '2010-05-02 07:13:07', '62', '0', '0000-00-00 00:00:00', '2010-04-26 14:06:49', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('90', 'Gian Hàng Bảo Long', 'gian-hang-bo-long', '', '<p>Giới thiệu gian hàng Bảo Long\r\n', '\r\n<img src=\"http://www.vinasme.com.vn/img1/store/danhba/baolong.jpg\" border=\"0\" width=\"300\" height=\"300\" /></p>', '-2', '7', '0', '284', '2010-04-26 14:11:08', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-26 14:11:08', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('80', 'Ké đầu ngựa - Vị thuốc trừ thấp, tiêu phong', 'ke-u-nga-v-thuc-tr-thp-tieu-phong', '', '<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span id=\"lblMain\">\r\n<p>Ké đầu ngựa còn gọi là thương nhĩ, phắt ma, mác  nháng. Bộ phận dùng làm thuốc thường là quả (ké đầu ngựa), có thể dùng  cả cây.</p>\r\n', '\r\n</span></span></span></p>\r\n<div>Theo Đông y, ké đầu ngựa vị ngọt, tính ôn, có ít độc;  vào kinh phế, can. Có tác dụng khu phong chỉ thống, trừ thấp sát khuẩn.  Dùng cho các trường hợp đau đầu, tắc ngạt mũi, viêm xoang mũi dị ứng  xuất tiết; viêm mũi họng, đau nhức răng; đau co quắp tay chân, lở ngứa  viêm da dị ứng; ngoài ra, có tác dụng chữa bướu cổ, làm ra mồ hôi.</div>\r\n<p>Liều  dùng: 6 - 12g. Thường được sao vàng trước khi dùng để loại bỏ tác dụng  độc hại (kích ứng dạ dày ruột, mẩn ngứa ngoài da).</p>\r\n<p><img src=\"http://www.thuoc.net.vn/uploads/18.jpg\" border=\"0\" width=\"400\" height=\"282\" /></p>\r\n<p><strong>Một số  bài thuốc chữa bệnh có dùng ké đầu ngựa:</strong></p>\r\n<p>Trừ thấp, giảm  đau:</p>\r\n<p>+ Ké đầu ngựa 8g. Sắc uống. Dùng cho các chứng bệnh phong  thấp, đau khớp, thiên về thấp tà, sưng đau tê bại. Đau nặng nhưng không  di chuyển chỗ đau; ngoài ra còn dùng cho chứng nhức đầu do cảm lạnh.</p>\r\n<p>+  Ké đầu ngựa 10g, vòi voi 20g, lá lốt 10g, ngưu tất 10g. Các dược liệu  tán vụn thành chè thuốc. Hãm với nước sôi, chia uống nhiều lần trong  ngày. Chữa thấp khớp, viêm khớp.</p>\r\n<p>+ Ké đầu ngựa 12g, ngưu tất 16g,  hy thiêm 16g, thổ phục linh 12g, cành dâu 12g, tỳ giải 12g, cà gai leo  12g, lá lốt 10g. Sắc uống, ngày 1 thang. Chữa viêm đa khớp tiến triển.</p>\r\n<p>Tuyên  phế (giúp hô hấp), thông mũi:</p>\r\n<p>+ Ké đầu ngựa 8g, tân di 8g, bạch  chỉ 12g, bạc hà 4g. Sắc uống. Dùng với chứng bệnh phổi chứa thấp trọc,  khi chất đục đi ngược lên lỗ mũi gây tắc không thông, chảy nước mũi,  viêm mũi, viêm xoang mũi.</p>\r\n<p>+ Cháo ké bạch chỉ: Ké đầu ngựa 20g,  bạch chỉ 6g, hoàng kỳ 30g, kinh giới 10g, tế tân 4g, gạo tẻ 60g, đường  trắng lượng thích hợp. Đem các dược liệu sắc lấy nước, cho vào nấu với  gạo tẻ, khi cháo được cho thêm đường. Ngày ăn 1 lần, đợt 7 - 10 ngày.  Dùng cho các bệnh nhân viêm xoang mũi họng, đau nhức đầu tắc mũi, ngạt  mũi.</p>\r\n<p>+ Lợi đàm trà: Chi tử 20g, bạc hà 6g, ké đầu ngựa 12g, tân di  12g. Các dược liệu cùng tán vụn, đem pha hãm cùng với chè uống ngày 1  ấm. Đợt dùng 7 - 20 ngày. Dùng cho các trường hợp viêm mũi xuất tiết,  đờm đặc vàng, niêm mạc mũi sưng phù nề, đau đầu, đau vùng cánh mũi.</p>\r\n<p>Tiêu  phong, khỏi ngứa:</p>\r\n<p>+ Ké đầu ngựa 8g, địa phu tử 8g. Sắc uống. Trị  lên sởi, ngứa phát ban, mụn lở loét.</p>\r\n<p>+ Ké đầu ngựa 10g,  kinh giới 12g, kim ngân 10g, sài hồ 10g, bồ công anh 10g, bạc hà 8g, cam  thảo nam 6g. Sắc uống. Dùng cho các chứng bệnh ngứa nổi ban, mụn, ngứa  ngáy ngoài da.</p>\r\n<div>Kiêng kỵ: Người huyết hư gây đau đầu choáng váng,  đau mỏi toàn thân không được dùng. Dược liệu có độc nên chú ý liều  dùng. Không dung dược liệu đã mọc mầm.</div>\r\n<div><strong><em>Theo  SK&amp;ĐS</em></strong></div>\r\n<p> </p>', '1', '1', '0', '2', '2010-04-24 14:21:41', '62', '', '2010-04-24 14:25:30', '62', '0', '0000-00-00 00:00:00', '2010-04-24 14:21:41', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '8', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('81', 'Nga tuyên bố thực phẩm biến đổi gene là độc hại', 'nga-tuyen-b-thc-phm-bin-i-gene-la-c-hi', '', '<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span id=\"lblMain\">Trong một nghiên cứu độc lập mới đây, các nhà khoa  học Nga phát hiện động vật ăn đậu nành biến đổi gene mất khả năng sinh  sản.\r\n', '\r\n<img src=\"http://www.thuoc.net.vn/uploads/605t.jpg\" border=\"0\" width=\"250\" height=\"193\" /></span></span></span></p>\r\n<p><span style=\"font-size: medium;\"><span style=\"font-family: times new roman,times;\"><span id=\"lblMain\">\r\n<p>Trong nghiên cứu, người ta nuôi các con chuột  hamster mắn đẻ trong 2 năm bằng các loại đậu nành biến đổi gene (vốn  được sử dụng rộng rãi trong nông nghiệp), chia làm 3 nhóm, tùy thuộc vào  mức độ biến đổi gene nhiều hay ít của loại đậu mà chúng ăn.</p>\r\n<p>Một  nhóm chuột khác (nhóm đối chứng) được cho ăn bằng đậu nguyên chất, chưa  hề có biến đổi gene.</p>\r\n<p>“Chúng tôi lựa chọn vài nhóm chuột hamster,  nuôi chúng thành đôi trong các lồng và cho chúng ăn thực phẩm biến đổi  gene. Chúng tôi quan sát hành vi, tốc độ tăng cân và thời điểm sinh sản  của chúng”, tiến sĩ Alexei Surov nói về các thí nghiệm được hợp tác thực  hiện bởi Hiệp hội An ninh gene quốc gia và Viện Sinh thái và Các vấn đề  tiến hóa.</p>\r\n<p>Ban đầu, người ta nhận thấy mọi việc rất suôn sẻ. Tuy  nhiên, đến thế hệ con của chúng đã ghi nhận những ảnh hưởng khá nghiêm  trọng.</p>\r\n<p>Tiếp tục được nuôi bằng chế độ ăn như cha mẹ chúng, các nhà  nghiên cứu nhận thấy tốc độ tăng trưởng của các cặp chuột này chậm hơn,  và trưởng thành muộn hơn.</p>\r\n<p>Khi thu thập con của thế hệ này để ghép  đôi thành các cặp (là thế hệ thứ ba), nhóm nghiên cứu nhận thấy chúng  không sinh nở nữa.</p>\r\n<p>“Điều đó chứng tỏ thế hệ chuột thứ ba đã mất  khả năng sinh đẻ”, tiến sĩ Alexei Surov nói.</p>\r\n<p>Nhóm nghiên cứu còn  phát hiện ra điều ngạc nhiên khác ở thế hệ chuột thứ ba này: lông mọc  trong miệng chúng, dù chưa rõ nguyên nhân tại sao.</p>\r\n<p>Theo Voice of  Russia, các chuyên gia không hiểu tại sao tình trạng hư hại này lại xảy  ra khi các con vật ăn đồ biến đổi gene. Theo họ, cách duy nhất có thể  hóa giải điều này là ngừng ăn các thực phẩm nói trên.</p>\r\n<p>Bởi thế, các  nhà khoa học đã đề xuất đưa ra lệnh cấm sử dụng thực phẩm biến đổi gene  cho đến khi chúng được kiểm nghiệm về an toàn sinh học.</p>\r\n<p>Kết luận  của các chuyên gia Nga cũng trùng hợp với kết luận của các đồng nghiệp ở  Pháp và Áo. Khi chứng minh được rằng ngô biến đổi gene gây hại cho động  vật có vú, Pháp đã ngay lập tức cấm việc sản xuất và buôn bán sản phẩm  này.</p>\r\n<div>Tuy nhiên, nhóm nghiên cứu Nga cũng cho biết còn quá sớm để  đưa ra kết luận về tính nguy hại của thực phẩm biến đổi gene, mà cần có  các nghiên cứu chi tiết hơn nữa.</div>\r\n<div><strong><em>Theo  VnExpress</em></strong></div>\r\n</span></span></span></p>', '1', '1', '0', '1', '2010-04-24 14:26:20', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-24 14:26:20', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '4', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('82', 'Kinh nghiệm trị thủy đậu của Tuệ Tĩnh', 'kinh-nghim-tr-thy-u-ca-tu-tnh', '', '<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Bệnh thuỷ đậu (còn gọi bệnh trái rạ) do virut gây ra, bệnh dễ lây trực tiếp qua đường hô hấp hoặc do tiếp xúc. Bệnh lành tính nhưng đôi khi để lại biến chứng nguy hiểm nếu không được điều trị đúng. Vì bệnh do virut nên hiện nay chưa có thuốc điều trị đặc hiệu. Xin giới thiệu kinh nghiệm trị bệnh của Danh y Tuệ Tĩnh. \r\n', '\r\n<img src=\"http://www.thuoc.net.vn/uploads/15.jpg\" border=\"0\" width=\"250\" height=\"117\" /></span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Khi có bệnh thuỷ đậu ở địa phương, ở các gia đình xung quanh nên tham khảo mấy bài thuốc sau cho trẻ uống để phòng ngừa, nếu có lên thuỷ đậu cũng nhẹ.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Đậu xanh 150g, đậu đỏ 140g, đậu đen 150g, cam thảo 15g. Nước vừa đủ, nấu chín đậu cho trẻ ăn tuỳ thích.  Ăn 7 ngày thì thôi.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Cá diếc 1 con, đánh vảy bỏ ruột, không cho dính nước lã, lấy rau mùi giã nhỏ cho một ít muối rồi dồn vào bụng cá. Dùng giấy ướt gói cá nhiều lớp vùi vào lửa than cho chín. Chờ cá nguội cho trẻ ăn.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Dây mướp phơi trong bóng râm cho khô, nấu nước tắm cho trẻ.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Khi trẻ chớm phát sốt dùng tam đậu thang để kịp thời thanh hoả giải biểu ngay cho nhẹ: đậu xanh, đậu đỏ, đậu đen, lượng bằng nhau, nấu chín cho trẻ ăn đậu và uống nước. Hoặc dùng một trong các bài sau:</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Cát căn 20g, tía tô 20g, cam thảo 10g. Sắc uống ấm trong ngày.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Chi tử 15g, rễ tranh 15g, tía tô 15g, cam thảo 6g, gừng sống 3 lát. Sắc uống.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Hoa mai phơi khô, tán nhỏ, giã  nhuyễn hoà mật ong làm viên bằng hạt ngô đồng cho trẻ uống. Trẻ 1 tuổi uống 1 viên và cứ thêm mỗi tuổi uống thêm 3 viên. Ngày uống 2-3  lần với nước ấm.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Thuốc dùng khi lên đậu:</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Lúc đậu mọc: Cây nọc rắn, cỏ nhọ nồi, lá thanh táo, lá dâu tằm, lá rau má, măng lau, lá mũi mác, lá chân vịt. Các vị lượng bằng nhau, giã nát, hoà với nước, lọc bỏ bã, lau  khắp mình mẩy, ngày làm 2 lần. Chỉ dùng trong trường hợp mình nóng dữ dội, nốt đậu bầm tím.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Đậu mọc quá 3 ngày mà chưa hết sốt: Củ sắn dây 20g, đậu xanh 20g, lá chàm 20g, rễ tranh 20g, cam thảo 10g, gừng sống 3 lát, nước vừa đủ sắc uống. Tác dụng giải nhiệt để thúc cho đậu ra thì bệnh khỏi.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Trị đậu mọc không tốt, hắc hãm khát nước: Hạt củ cải nghiền nhỏ hoà với nước nóng mà uống. Hoặc vỏ quả vải sắc cho uống.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">- Thuốc tắm sau khi đậu thu áp: Bạc hà, lá từ bi, lá thanh táo, lá bồ hòn, kinh giới, củ nghệ, lá mần tưới đều băng nhau, nấu nước mà tắm.</span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\"> </span></span></p>\r\n<p style=\"text-align: justify;\"><span style=\"font-family: times new roman,times;\"><span style=\"font-size: medium;\">Theo SK&amp;ĐS</span></span></p>', '1', '1', '0', '2', '2010-04-25 13:16:48', '62', '', '2010-04-25 13:26:14', '62', '0', '0000-00-00 00:00:00', '2010-04-25 13:16:48', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '5', '0', '7', '', '', '0', '11', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('84', 'Giới thiệu gian hàng tinh dầu', 'gii-thiu-gian-hang-tinh-du', '', '<p>giới thiệu gian hàng</p>', '', '-2', '7', '0', '295', '2010-04-26 09:58:58', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-26 09:58:58', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '0', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('85', ' gian hàng tinh dầu', '-gian-hang-tinh-du', '', '<p>Giới thiệu gian hàng tinh dầu</p>', '', '-2', '7', '0', '295', '2010-04-26 09:57:48', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-26 09:57:48', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '0', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('86', ' Những cây thuốc và vị thuốc Việt Nam', '-nhng-cay-thuc-va-v-thuc-vit-nam', '', '<p>Xuất bản lần thứ 12. - Hà Nội: y học, 2004. - 1294 trang.</p>\r\n', '\r\n<p><img src=\"http://songhuong.vn/imagesach/lon/13.45.04.28.12.07.jpg\" border=\"0\" width=\"210\" height=\"305\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\">\"Giáo sư - Tiến sĩ Đỗ Tất Lợi là một nhà nghiên cứu dược liệu nổi tiếng ở nước ta. Từ khi còn ngồi trên ghế nhà trường Y Dược thời thuộc Pháp (1939 - 1944), ông đã quan tâm đến việc tìm tòi sưu tầm các cây thuốc và động vật làm thuốc có ở Việt Nam sử dụng trong y học cổ truyền. Từ những ngày đầu kháng chiến, dược sĩ Đỗ Tất Lợi với cương vị Viện trưởng Viện khảo cứu chế tạo dược phẩm Cục quân y, đã chịu khó đi công tác trên núi rừng Việt Bắc tìm kiếm sưu tầm các cây thuốc phòng chữa bệnh cho bộ đội và nhân dân. Sau ngày hòa bình lập lại, với nhiệm vụ Chủ nhiệm bộ môn dược liệu Trường Đại học Y dược Hà Nội, ông đã say mê nghiên cứu về dược liệu, vị thuốc Việt Nam và các cây di thực từ nước ngoài.<br /><br />Sau mấy chục năm lăn lộn với việc sưu tầm nghiên cứu dược liệu, Giáo sư - Tiến sĩ Đỗ Tất Lợi đã biên soạn được bộ sách Những cây thuốc và vị thuốc Việt Nam xuất bản đến nay là lần thứ tám. Đây là một công trình nghiên cứu rất có giá trị ở trong nước cũng như ở nước ngoài. Trên cơ sở cuốn sách này, năm 1968 Hội đồng chứng chỉ (khoa học) tối cao Liên Xô đã công nhận học vị Tiến sĩ khoa học cho dược sĩ Đỗ Tất Lợi. Năm 1983, tại Triển lãm hội chợ sách quốc tế Matxcơva, bộ sách Những cây thuốc và vị thuốc Việt Nam được bình chọn là một trong bảy viên ngọc quý của triển lãm sách. Đến năm 1980, dược sĩ được Chính phủ phong học hàm Giáo sư đại học.<br /><br />Từ năm 1960 đến nay, mỗi lần xuất bản bộ sách Những cây thuốc và vị thuốc Việt Nam tác giả đều sửa chữa bổ sung một cách thận trọng. Và ngay trong lần xuất bản thứ tám này, tuy tuổi đã cao, Giáo sư Đỗ Tất Lợi đã để mấy năm rà soát, sửa chữa lại nội dung cũ, sưu tầm nghiên cứu thêm một số cây mới, vị thuốc mới và hoàn chỉnh bản thảo một cách nghiêm túc. Lần này tác giả, trong phần phụ lục, có viết thêm hai bài nói về thân thế và sự nghiệp của cụ Tuệ Tĩnh (Ông Thánh thuốc Nam) và của nhà đại danh y Hải Thượng Lãn Ông Lê Hữu Trác.<br /><br />Cuốn sách Những cây thuốc và vị thuốc Việt Nam lần này được xuất bản sau khi tác giả được nhận Giải thưởng Hồ Chí Minh về khoa học kỹ thuật lần đầu năm 1996. Do đó giá trị cuốn sách lại càng được nâng cao.<br /><br />Tôi lấy làm vinh dự được giới thiệu với bạn đọc trong và ngoài ngành y tế cuốn sách Những cây thuốc và vị thuốc Việt Nam (xuất bản lần thứ tám), một công trình đã được xếp trong loại giải thưởng cao nhất ở nước ta hiện nay - Giải thưởng Hồ Chí Minh.<br /><br />Hy vọng bạn đọc sẽ tìm thấy trong cuốn sách nhiều điều bổ ích và sử dụng tốt cuốn sách này trong nghiên cứu cũng như trong đời sống hằng ngày, nhằm bảo vệ sức khỏe cho bản thân và cho cộng đồng\". (Nguyên Bộ trưởng Bộ Y tế - Giáo sư Đỗ Nguyên Phương).<br />Link download<br /><br /></p>\r\n<p>http://rapidshare.com/files/331163752/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part1.rar</p>\r\n<p>http://rapidshare.com/files/331183524/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part2.rar</p>\r\n<p>http://rapidshare.com/files/331198177/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part3.rar</p>\r\n<p>http://rapidshare.com/files/331213505/Nhung_cay_thuoc_va_vi_thuoc_Viet_Nam.part4.rar</p>', '1', '5', '0', '21', '2010-04-26 13:11:46', '62', '', '2010-04-26 13:18:08', '62', '0', '0000-00-00 00:00:00', '2010-04-26 13:11:46', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '21', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('96', 'Uống nước chanh hàng ngày giúp phòng sỏi thận', 'ung-nc-chanh-hang-ngay-giup-phong-si-thn', '', '<p>Một phương pháp đơn giản và không hề tốn kém để ngăn ngừa căn bệnh sỏi thận đó là uống nước chanh hàng ngày.</p>\r\n', '\r\n<p style=\"text-align: justify;\"><img src=\"http://www.thuoc.net.vn/uploads/636t.jpg\" border=\"0\" width=\"266\" height=\"305\" /><br /><br />Theo ông Roger Sur, chuyên gia của Trung tâm nghiên cứu các biện pháp phòng chống sỏi thận UC San Diego, Mỹ, việc sử dụng chanh là một trong năm biện pháp hiệu quả phòng chống bệnh sỏi thận.<br />Ngoài ra, việc uống nhiều nước chanh còn có tác dụng giảm sự hấp thụ đối với muối, canxi và protein đưa vào cơ thể qua đường tiêu hóa. Chanh chứa nhiều citrate (hợp chất tự nhiên có tác ngăn chặn việc tạo thành sỏi thận) nhất trong các loại quả.<br /> <br /><br />Nghiên cứu của ông Sur cho thấy việc uống mỗi ngày khoảng 140g chanh vắt lấy nước hòa vào hai lít nước có thể làm giảm khả năng mắc bệnh sỏi thận tới 7-8 lần.<br />Nước ép các loại quả khác chứa ít citrate hơn và thường chứa một lượng nhất định canxi và chất oxalate, một trong những thành phần cơ bản tạo ra sỏi thận.<br /> <br />Theo Vietnamplus</p>\r\n<p> </p>', '1', '1', '0', '2', '2010-04-27 01:48:18', '62', '', '2010-04-27 01:50:07', '62', '0', '0000-00-00 00:00:00', '2010-04-27 01:48:18', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '6', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('98', 'Cá quả bổ khí huyết', 'ca-qu-b-khi-huyt', '', '<p style=\"text-align: justify;\">Cá quả tính hàn vị ngọt, có công năng bồi bổ khí huyết, kiện tỳ, lợi tiểu, ích tinh tủy. Ăn chín công hiệu tốt cho những bệnh như khí huyết bất túc, phụ nữ can huyết lao, kinh nguyệt bế ít, băng huyết, đau lưng, mỏi chân...\r\n', '\r\n<img src=\"http://www.thuoc.net.vn/uploads/687t.JPG\" border=\"0\" width=\"250\" height=\"197\" /><br />Để tham khảo và có thể áp dụng, dưới đây xin giới thiệu những món ăn bài thuốc có tác dụng bổ khí huyết từ cá quả.<br /><br />Suy nhược sau khi ốm: Cá quả 1 con, rửa sạch cắt miếng, cho thêm một ít giăm bông, nấu thành canh, ăn cái uống nước canh, ngày 2 - 3 lần, cần ăn 5 - 7 ngày liền.<br /><br />Phụ nữ can huyết lao, kinh nguyệt bế ít: Cá quả tươi 1 con khoảng 400-500g, đương quy 15g, sinh địa 30g, hành củ, gừng tươi đủ dùng. Cá quả đánh sạch vảy, bỏ mang ruột, rửa sạch. Đương quy, sinh địa cho vào túi vải buộc kín. Sau cho túi thuốc cùng cá vào nồi cho nước vừa đủ, đun lửa to đến sôi, hạ lửa nhỏ hầm nhừ, vớt bỏ túi thuốc, nêm gia vị, gừng vừa miệng, ăn cá uống canh. Ngày ăn 1 thang, cần thường xuyên ăn.<br />Phù do viêm thận mạn, tràn dịch màng tụy do gan xơ: Cá quả 1 con 500g, bí xanh 500g để cả vỏ ngoài thái miếng, đậu đỏ 60g, hành 5 củ. Cá quả cạo sạch vảy, chặt vây, bỏ mang, ruột, rửa sạch cắt miếng, cho vào nồi cùng bí xanh, đậu đỏ, hành, đổ nước vừa phải nấu thành canh, không cho muối. Ăn cái, uống nước canh. Ngày 1 thang, cần ăn 7 - 10 ngày liền.<br /> <br />Theo SK&amp;ĐS</p>', '1', '1', '0', '3', '2010-04-28 10:31:06', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-28 10:31:06', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '3', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('99', 'Chữa sởi bằng ngoại đông y', 'cha-si-bng-ngoi-ong-y', '', '<p style=\"text-align: justify;\">Thời tiết nắng nóng khiến trẻ em thường mắc chứng ban sởi, thân nhiệt dễ bị sốt cao, hay bị nhầm là sốt siêu vi hoặc sốt xuất huyết.<br /><br />Bằng biện pháp tắm hoặc uống, những bài thuốc nam tại nhà giúp các bậc phụ huynh trị bệnh cho trẻ hiệu quả mà không cần tới bệnh viện.<br /><br />Khổ qua, cỏ mực...\r\n', '\r\n<img src=\"http://www.thuoc.net.vn/uploads/679t.jpg\" border=\"0\" width=\"250\" height=\"161\" /><br /><br />Bác sĩ Trần Lê Diệu Hương (bệnh viện y học cổ truyền TP.HCM) cho biết, sởi do siêu vi lây truyền bắt nguồn từ thời tiết và môi trường ô nhiễm. Trẻ em vốn sức đề kháng yếu nên là đối tượng dễ mắc bệnh, đặc biệt khi tiếp xúc với người bệnh hoặc lây từ các trẻ khác ở trường học.<br /><br />Thời gian ủ bệnh từ 3-7 ngày, sau đó nổi ban đỏ, trắng, dạng hột li ti kéo dài 3-5 ngày. Hiện nay, tây y chưa có thuốc đặc trị, chỉ có thể tiêm vắc-xin chủng ngừa siêu vi sởi nhưng chỉ giảm tỉ lệ chứ không trị dứt điểm.<br /><br />Nếu điều trị sớm, trẻ sẽ tránh được biến chứng viêm phổi (rất thường xảy ra), viêm thanh quản, viêm tai giữa, thậm chí viêm cả não tủy (rất hiếm gặp), nhiễm trùng răng, miệng, ruột, loét giác mạc.<br /><br />Trong đông y, thường phổ biến các bài thuốc dễ tìm, dễ làm mà không có tác dụng phụ như sau: <br /><br />* Lá xoan (theo cách gọi miền Bắc) hoặc sầu đông hay sầu đâu (cách gọi miền Trung, Nam). Chọn lá tươi khoảng 100gr, sau khi hái xuống thì rửa sạch, vò nát với ít muối. Pha với 5l  nước đun sôi để nguội rồi tắm cho trẻ. Sau vài ngày, khi các vết ban sởi trên người trẻ lặn hết thì ngưng tắm.<br /><br />* Lá, dây, bông cẩm lệ chi (dân gian quen gọi là khổ qua, hoặc mướp đắng) kết hợp các loại thảo dược khác gọi là phương ngoại: 100gr lá khổ qua xanh lục (luôn cả dây và hoa), 50gr sim dại và 50gr lá ổi non. Nấu trong 0,5l nước, còn 150ml. Chia làm 5 phần, cho trẻ uống trong ngày. Uống liên tục  từ 3-5 ngày sẽ hiệu quả.<br /><br />* 100gr cây cỏ mực (sử dụng toàn thân cây, lá, hoa), 50gr lá, hoa sầu đông, 50 búp ổi và hoa vừa rụng đài hoa, phơi hoặc sao khử thổ vàng nghệ. Tất cả nấu với 200ml nước (3 chén) còn 1 chén. Cho trẻ uống sáng (sau lúc ăn) và chiều (trước lúc ngủ). Sau 2-3 ngày sẽ lộ ban, hết sởi.<br /><br />* Trẻ từ 2-5 tuổi bị sởi, sốt về đêm, tăng nhiệt, nói sảng, khóc từng cơn: dùng 1 quả dưa hấu đỏ (cỡ 0,8-1,5kg) rửa sạch, để vỏ, thêm vào 20gr lá, hoa sim dại; 20gr lá, hoa khổ qua, ép lấy nước, cho trẻ uống nhiều lần trong ngày. Sau 3 ngày sẽ nổi ban, dứt bệnh.<br /><br />Cây sim<br /><br />Cây, lá và trái sim (còn tươi) vị chua ngọt pha chút nhẫn, có thể dùng chữa trị cho trẻ từ 1-10 tuổi chóng dứt sốt, lộ ban sởi, ăn uống, bú sữa trở lại bình thường bằng đơn thuốc sau:<br /><br />50gr cành, lá sim vừa già, còn tươi, rửa sạch, cắt khúc dài 3cm, sao khử thổ vừa vàng. 100gr trái sim tươi (nếu không có sim tươi thì đổi bằng 30gr trái sim khô mua ở hiệu đông y), 50gr rễ mua thấp (tên khoa học là Melastoma dodecandrum Lour). Tất cả cho vào siêu sắc thuốc, đổ ngập nước, thêm vào ½ muỗng muối và 3gr gừng già.<br /><br />Đợi thuốc sôi 30 phút rồi nhắc xuống. Cho trẻ uống 3 lần/ngày (khi thuốc còn ấm).<br /><br />Sau 3 ngày sẽ trổ ban hột đỏ li ti, dứt sốt. Ăn ngủ được.<br /><br />Ngoài ra, cây sim còn dùng điều trị các bệnh khác cho trẻ như:<br /><br />Trẻ em hư hàn biến chứng hen khò khè, thở mệt, mắt mờ (từ 6-15 tuổi): dùng 60gr rễ sim khô sắc với 50ml nước, còn 15ml nước. Chia làm 3 phần, uống mỗi ngày, trước bữa ăn.<br /><br />Trẻ dưới 10 tuổi bị bỏng (do nước sôi, lửa) lấy 50gr rễ sim và 50gr trái sim, sao vàng cháy, tán nhuyễn thành bột, trộn với 5 muỗng canh dầu thực vật hoặc mỡ bò (mỡ tươi thắng chảy), thoa lên chỗ bỏng. Sau 7 ngày sẽ liền da, tiếp tục thoa nghệ để tránh sẹo lồi.<br />Nếu bị vàng da do gan, sắc 50gr rễ sim; bạch hoa xà, thiệt thảo, nhân trần, kê cốt thảo, điền cơ hoàng (mỗi thứ 15-20gr) với 3 chén nước, còn lại một chén. Uống sau bữa ăn, liên tục trong 3 tuần.<br /> <br />Theo Thanh Niên</p>', '1', '1', '0', '2', '2010-04-28 10:34:14', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-28 10:34:14', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '5', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('100', '6 ngũ cốc tốt hơn thuốc', '6-ng-cc-tt-hn-thuc', '', '<p style=\"text-align: justify;\">Ngô, lúa mạch, các loại khoai, yến mạch, kê là những loại thực phẩm trị bệnh tốt hơn thuốc chữa bệnh. Dưới đây là dẫn giải của GS Tề Quốc Lực, ĐH Y học Bắc Kinh. </p>\r\n', '\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: center;\"><img src=\"http://www.thuoc.net.vn/uploads/664t.jpg\" border=\"0\" width=\"450\" height=\"344\" /><br /><strong> </strong></p>\r\n<p style=\"text-align: justify;\"><strong><br />Ngô</strong><br /><br />Trong hội nghị quốc tế, từ trước đến giờ người ta không nhắc đến gạo, bột mỳ, cũng không nhắc đến đồ fast-food của châu Âu. Trong các loại ngũ cốc thì ngô được nhắc đến đầu tiên, mọi người đều cho rằng ngô là “thực phẩm hoàng kim”.<br /><br />Hiệp hội y học Mỹ sau khi khảo sát điều tra phát hiện người Ấn Độ rất ít bị cao huyết áp, xơ cứng động mạch, đó là do họ hay ăn ngô. Sau đó nghiên cứu phát hiện trong ngô hàm chứa đại lượng lecithin, axit lenoleic, sitosterod, vitamin E có thể phòng tránh cao huyết áp và xơ cứng động mạch. Từ đó trở đi người Mỹ đổi sang ăn ngô.<br /><br />Châu Mỹ, Châu Phi, Châu Âu, Nhật, Hồng Kong và Quảng Châu đều ăn súp ngô buổi sáng. Tôi cũng đã thay đổi ăn súp ngô vào bữa sáng thay cho uống sữa, sống ở Mỹ tôi cũng kiên trì như thế. Năm nay tôi đã 70 tuổi nhưng thể lực của tôi sung mãn, tinh thần thoải mái, giọng nói âm vang, khí công tràn đầy, đồng thời trên mặt không có nếp nhăn.<br /><br />Đó là do ăn súp ngô. Tin hay không là do các bạn, các bạn cứ uống sữa của các bạn, tôi ăn súp ngô của tôi để xem trong chúng ta ai sẽ sống thọ hơn?<br /><br /><strong>Lúa mạch</strong><br />Loại thứ hai trong ngũ cốc được nhắc đến đó là lúa mạch. Vì sao lại là lúa mạch? Hiện tại có rất nhiều người bị “tam cao” tức là cao huyết áp, cao mỡ máu, cao đường máu. Nhưng lúa mạch lại là “tam giảm”, nó có thể làm giảm huyết áp, giảm mỡ máu, giảm đường máu.<br /><br />Trong lúa mạch hàm chứa 13% chất xơ, người ăn lúa mạch không dễ mắc chứng ung thư đường ruột, dạ dày, ung thư trực tràng và cả ung thư kết tràng. Nhưng những người hay ngồi văn phòng như chúng ta thì lại mắc bệnh ung thư trực tràng và kết tràng rất nhiều.<br /><br /><strong>Các loại khoai</strong><br /><br />Khoai lang trắng, khoai lang đỏ và khoai tây có 3 hấp thụ: hấp thụ nước, hấp thụ mỡ và đường, hấp thụ độc tố. Hấp thụ nước làm trơn đường ruột, không bị ung thư trực tràng, kết tràng. Hấp thụ mỡ và đường, không mắc bệnh tiểu đường. Hấp thụ độc tố: không mắc chứng viêm dạ dày, đường ruột.<br /><br />Tôi cũng đã điều tra ở Mỹ, người Mỹ ăn khoai là chế biến thành các loại bánh, ăn cũng không ít. Mong mọi người ăn nhiều khoai vào, trong lương thực chính nên có các loại khoai.<br /><br /><strong>Yến mạch</strong><br /><br />Ở các nước châu Âu đã biết từ lâu nhưng rất nhiều người Trung Quốc lại chưa biết. Nếu bị tăng huyết áp, nhất định phải ăn yến mạch, cháo yến mạch, bởi vì yến mạch có thể hạ huyết áp, giảm mỡ máu.<br /><br /><strong>Đậu nành</strong><br /><br />Dưới đây xin nói về đậu: Kết quả điều tra của chúng tôi là tất cả dân Trung Quốc thiếu protein ưu chất. Cho nên chúng ta chơi bóng trận nhỏ thì luôn luôn thắng, nhưng chơi bóng trận lớn thì không thắng. Vì sao? Trên sân bóng đá một cú đá, một cú va chạm là ngã lộn nhào.<br />Hiện nay, tiền thuốc của chúng ta cao hơn rất nhiều lần so với Mỹ nhưng thể lực lại không bằng người ta. Trong khi đó, người Mỹ không thiếu Protein ưu chất nhưng họ cho rằng đậu nành là hoa của dinh dưỡng, là vua của các loại đậu.<br /><br />Người Trung Quốc thiếu protein ưu chất thì làm thế nào? Hiện nay Bộ y tế đã đề ra “kế hoạch hành động từ đậu nành” có nội dung là “một nắm rau, một nắm đậu, một quả trứng gà, cộng thêm một ít thịt”. Sau khi tôi giảng xong có học sinh đã nói thành “Nửa lạng trứng gà hai lạng thịt, thêm một chút rau thêm chút đậu”. Ai bảo anh ta thêm lượng cụ thể đó?<br /><br />Một quả trứng gà có 300mg cholestrerol là vừa thích hợp, 1 lạng đậu tương tương đương với 2 lạng thịt nạc, 3 lạng trứng gà và 4 lạng gạo. Các bạn thử nói xem nên ăn cái gì tốt hơn?<br /><br /><strong>Kê</strong><br /><br />Sau khi về nước tôi hỏi: Vì sao chúng ta không ăn kê nữa? Nhiều người bảo tôi: Cái thứ đó chỉ có đàn bà đẻ mới ăn! Thật ra, bản thảo cương mục đã nói rất rõ: Kê có thể trừ thấp, khỏe tỳ, an thần, ngủ ngon; Kê có nhiều ích lợi lớn như thế mà các bạn lại không ăn?<br /><br />Tôi đã quan sát kỹ, người ta ngủ được là nhờ ăn cháo kê. Cho nên bây giờ tôi đã thay đổi, sáng một bát cháo ngô tinh thần phấn chấn, tối một bát cháo kê ngủ khò khò. Chữa bệnh bằng ăn tốt hơn chữa bệnh bằng thuốc.<br />Vì sao chúng ta không giải quyết vấn đề bằng cái ăn, mà cứ nhất định phải dùng thuốc. Mười thứ thuốc thì chín thứ là độc, chưa từng nghe nói dùng thuốc để giữ gìn sức khoẻ. Tôi cũng phải nói rõ: tôi không hề phản đối dùng thuốc. Tôi phản đối dùng thuốc bừa bãi, tôi chủ trương dùng thuốc trong thời gian ngắn, uống thuốc đảm bảo, ngừng thuốc nhanh chóng.<br /> <strong><br />Theo Dân Trí</strong></p>', '1', '1', '0', '4', '2010-04-28 10:38:53', '62', '', '2010-05-03 17:03:19', '62', '0', '0000-00-00 00:00:00', '2010-04-28 10:38:53', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '1', '', '', '0', '7', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('101', 'QUẾ CHI THANG ', 'qu-chi-thang-', '', '', '\r\n<p style=\"text-align: justify;\"><strong>Thành phần:</strong><br /><br />Quế chi                12g<br /><br />Bạch thược          12g<br /><br />Chích Cam thảo     6g<br /><br />Sinh khương        12g<br /><br />Đại táo              4 quả</p>\r\n<p><img src=\"images/stories/tintucsukien/caythuoc/quchi.jpg\" border=\"0\" alt=\"fsd fsdf sdfs fsdf xxxx\" style=\"border: 0px initial initial;\" /></p>\r\n<p style=\"text-align: center;\">Quế chi</p>\r\n<p><em><strong>Cách dùng: </strong></em>Uống lúc thuốc còn nóng hoặc là sau khi uống thuốc ăn cháo nóng về mùa đông, uống thuốc xong trùm chăn cho ra mồ hôi vừa phải.<br /><em><strong><br />Tác dụng:</strong></em> Giải cơ, phát hãn giải biểu, điều hòa dinh vệ.<br /><em><strong><br />Giải thích bài thuốc:</strong></em> Trong bài thuốc:<br /><br />Quế chi là chủ dược có tác dụng giải cơ biểu và thông dương khí. <br />Bạch thược liễm âm hòa vinh giúp cho Quế chi không làm tổn thương chân âm. Hai vị thuốc cùng dùng một tán, một thu điều hòa vinh vệ. <br />Những vị thuốc khác như Sinh khương, Đại táo, Chích Cam thảo đều có tác dụng điều hòa.<br /><em><strong>Ứng dụng lâm sàng:</strong></em> Bài thuốc này ngoài việc dùng chữa biểu chứng ngoại cảm phong hàn, biểu hư còn có thể dùng trong những trường hợp sau:<br /><br />1.     Nếu bệnh nhân kiêm ho suyễn gia Hậu phác, Hạnh nhân để bình suyễn chỉ khái gọi là bài QUẾ CHI GIA HẬU PHÁC HẠNH NHÂN THANG (Thương hàn luận). <br /><br />2.     Những trường hợp sau khi mắc bệnh, sau khi sanh mà có lúc hơi hàn có lúc hơi nhiệt, mạch hoãn ra mồ hôi có thể dùng Quế chi thang để điều trị. <br /><br />3.     Trường hợp phụ nữ có thai nôn nặng, khí huyết không điều hòa có thể dùng điều trị có kết quả tốt. <br /><br />4.     Trường hợp cảm phong hàn, hàn thấp, đau nhức mình mẩy có thể gia thêm các vị Uy linh tiên, Tục đoạn, Phòng phong, Khương hoạt, Ngũ gia bì, có thể có tác dụng tăng cường trừ phong thấp giảm đau. <br /><br />5.     Trường hợp chứng đã dùng Quế chi thang, có thêm chứng cứng gáy, đau lưng gia Cát căn gọi là Quế chi gia Cát căn thang (Thương hàn luận). <br /><br />6.     Trường hợp di tinh, chóng mặt, đạo hãn, tự hãn gia Long cốt, Mẫu lệ để vừa điều hòa âm dương vừa cố sáp gọi là bài QUẾ CHI MẪU LỆ LONG CỐT THANG (Kim quỹ yếu lược).<br /><br /><strong><em>Chú ý lúc sử dụng:</em></strong> Không dùng bài thuốc trong những trường hợp sau: Ngoại cảm phong hàn biểu thực chứng.<br /><br />Trường hợp bệnh nhiễm thời kỳ đầu sốt rét ra mồ hôi mà khát nước, lưỡi đỏ rêu vàng, mạch sác không dùng.<br /><br />Tài liệu tham khảo: Theo một số báo cáo lâm sàng bài Quế chi thang gia giảm như sau: Cát căn 20 - 40g, Ma hoàng 6g, Bạch thược 12g, Phòng phong 12g, Sài hồ 6g, Cam thảo 4g, Đại táo 6 quả. Sắc uống có thể chữa chứng cứng gáy tốt (Torticolis). Theo tài liệu, vị thuốc Cát căn có tác dụng giãn mạch tăng cường lưu lượng máu chống co thắt, làm giảm đau</p>', '1', '3', '0', '279', '2010-04-28 16:41:53', '62', '', '2010-05-03 06:35:17', '62', '0', '0000-00-00 00:00:00', '2010-04-28 16:41:53', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '11', '0', '9', '', '', '0', '11', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('102', 'THÔNG XỊ THANG (Cửu hậu phương)', 'thong-x-thang-cu-hu-phng', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Thông bạch (cả rễ) 5 củ<br /><br />Đạm đậu xị              12g</p>\r\n<p><br class=\"_mce_marker\" /></p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/uen.jpg\" border=\"0\" /><br class=\"_mce_marker\" />Đậu đen</p>\r\n<p style=\"text-align: justify;\"><strong><em>Cách dùng: </em></strong>sắc uống ngày 2 - 3 lần, uống lúc nóng.<br /><br /><em><strong>Tác dụng:</strong></em> Thông dương, giải biểu.<br /><em><strong><br />Giải thích bài thuốc:</strong></em><br /><br />Thông bạch là chủ dược có tác dụng tân ôn thông dương khí, sơ đạt cơ biểu, phát tán phong hàn. <br />Đạm đậu xị cay ngọt hổ trợ tuyên tán giải biểu. <br />Bài thuốc, tính dược bình tân ôn mà không táo dùng trong trường hợp phong hàn biểu chứng nhẹ.<br /><br /><em><strong>Ứng dụng lâm sàng:</strong></em><br /><br />1.     Trường hợp cảm phong hàn nặng, sợ lạnh, không có mồ hôi, đau đầu nhiều, có thể gia thêm Khương hoạt, Kinh giới, Phòng phong, Bạc hà. <br /><br />2.     Trường hợp sợ lạnh nhiều, gáy lưng đau, mạch khẩn, không ra mồ hôi, có thể gia thêm Ma hoàng, Cát căn để tăng cường phát hãn, giải cơ gọi là bài HOẠT NHÂN THÔNG KHÍ THANG (Loại chứng hoạt nhân thư). <br /><br />3.     Trường hợp bệnh nhiễm thời kỳ đầu, sốt hơi sợ lạnh và gió, mồm khô, khát gia Cát cánh, Bạc hà, Liên kiều, Chi tử, Cam thảo, Trúc diệp để giải nhiệt gọi là bài THÔNG XỊ CÁT CÁNH THANG (Thông tục thương hàn luận).<br /><br />Hoạt nhân thông khí thang và Thông xị cát cánh thang đều là bài Thông xị thang gia vị nhưng bài trước tác dụng chủ yếu là giải biểu tán hàn, bài sau là giải biểu thanh nhiệt.<br /><br /></p>', '1', '3', '0', '279', '2010-04-28 16:49:02', '62', '', '2010-05-03 06:35:42', '62', '62', '2010-05-03 06:36:09', '2010-04-28 16:49:02', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '10', '0', '8', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('103', 'Công ty TNHH Đông Dược Phúc Hưng', 'cong-ty-tnhh-ong-dc-phuc-hng', '', '', '\r\n<p><img src=\"http://t1.gstatic.com/images?q=tbn:HWBFB6cVRNS6pM:http://www.thegioiag.net/Portals/4/ArticleImages/TGAG_2009041448_10.jpg\" border=\"0\" width=\"91\" height=\"90\" /></p>', '1', '7', '0', '311', '2010-05-02 07:34:50', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-05-02 07:34:50', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('104', 'Công ty Cổ phần Dược Trung ương Mediplantex', 'cong-ty-c-phn-dc-trung-ng-mediplantex', '', '<p>\r\n', '\r\n<img src=\"http://t2.gstatic.com/images?q=tbn:N-kmaKCEb2vfbM:http://www.thuonghieuhanghoa.com.vn/imgs/logo/487855181158708logo05.jpg\" border=\"0\" width=\"88\" height=\"66\" /></p>', '1', '7', '0', '312', '2010-05-02 07:46:20', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-05-02 07:46:20', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('105', 'Những loại trái cây nhiều canxi', 'nhng-loi-trai-cay-nhiu-canxi', '', '<p style=\"text-align: justify;\">Ai cũng biết nguồn canxi dồi dào thường chứa nhiều trong các loại thực phẩm như sữa, sản phẩm từ sữa, một số loại rau đậu, hạt… mà ít biết rằng khoáng chất quan trọng này còn được tìm thấy trong những loại trái cây.</p>\r\n', '\r\n<p><strong> </strong></p>\r\n<p style=\"text-align: center;\"><img src=\"http://www.thuoc.net.vn/uploads/695t.jpg\" border=\"0\" width=\"401\" height=\"333\" style=\"border: 0pt none;\" /></p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\"><strong>1. Quất vàng</strong><br /><br />Quất thuộc họ cam quýt, quả nhỏ, tròn dạng hình trứng. Ngoài nguồn canxi, quất cũng chứa nhiều vitamin C, chất xơ và các chất dinh dưỡng khác như: mangan, vitamin A, vitamin B2, sắt, magiê và đồng.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>2. Trái me</strong><br /><br />Trái me có chiều dài từ 7-20 cm, màu nâu, trái thường hơi cong, hạt màu nâu bóng. Me có vị chua chua, ngọt ngọt,để ăn sống hoặc chế biến thành kẹo, mứt, dùng làm gia vị nấu ăn.<br /><br />Cứ mỗi 100 g me chứa khoảng 74 mg canxi. Trái me cũng rất giàu vitamin B1, vitamin B3, magiê, chất xơ, kali, sắt, phốt pho.<br /><br /><strong>3. Cam</strong><br /><br />Cam “nổi tiếng” với hàm lượng vitamin C cao, ngoài ra nó cũng là một trong số những loại trái cây có chứa nhiều canxi. Mỗi 100 g cam tươi có thể cung cấp cho cơ thể 40 mg khoáng chất canxi.<br /><br />Trong cam còn chứa một số chất dinh dưỡng quan trọng khác bao gồm chất xơ, folate, vitamin B1 và kali.<br /><br /><strong>4. Dâu</strong><br /><br />Quả dâu thường dài 2-3 cm, tùy thuộc vào loài mà dâu có màu đỏ hoặc màu đen. Người ta hay dùng dâu để làm bánh nướng, nhân mứt, nhân bánh, rượu vang, mứt hoặc nước giải khát. Dâu cũng chứa khá nhiều canxi và các chất dinh dưỡng khác như vitamin C, vitamin K, sắt, chất xơ, kali, riboflavin.<br /><br /><strong>5. Sung</strong><br /><br />Sung hay còn gọi quả vả, nhiều hạt, có thể được ăn tươi hoặc sấy khô, còn dùng làm mứt. Ngoài canxi, sung cũng là nguồn cung cấp chất xơ, kali, vitamin K, B6 và mangan.<br /><br /><strong>6. Mít</strong><br /><br />Mít là loại trái cây vừa thơm ngon, vừa có chứa đầy đủ các chất dinh dưỡng quan trọng là canxi, vitamin A, C, mangan, magiê, đồng, kali và chất xơ.</p>\r\n<p style=\"text-align: justify;\"><br /><strong>7. Kiwi</strong><br /><br />Kiwi có vỏ ngoài nham nhám, màu xanh nâu; phần thịt bên trong có màu xanh lá cây tươi sáng hoặc màu vàng nhạt, vị hơi chua. Đây là loại quả rất giàu vitamin C, bên cạnh đó nó cũng là nguồn cung cấp dồi dào vitamin K, chất xơ, kali, canxi, folate, đồng, vitamin E.<br /><br /><strong>8. Quả cơm cháy</strong><br /><br />Từ lâu, quả cơm cháy đã được sử dụng như phương thuốc dân gian truyền thống ở nhiều nơi trên thế giới. Nước trái cây này có thể dùng để chữa ho, cảm lạnh, cảm cúm, nhiễm trùng do vi khuẩn và virus, giảm cholesterol, cải thiện tầm nhìn và sức khỏe tim mạch. Nguồn vitamin C cao trong quả cơm cháy còn giúp tăng cường khả năng miễn dịch. Ngoài ra, quả cơm cháy còn chứa nhiều chất xơ, canxi, sắt, kali và các loại vitamin A, B6.<br /><strong><br />9. Quýt</strong><br />Quýt cũng là một nguồn cung cấp canxi tuyệt vời, bên cạnh đó trong loại quả này còn dồi dào các chất chống oxy hóa mạnh như vitamin A và C, giúp tăng cường sức đề kháng; phòng ngừa táo bón nhờ chất xơ và duy trì huyết áp ổn định nhờ kali. Vitamin B2 và B6 chứa trong quýt còn có tác dụng chống mệt mỏi. Quýt cũng cung cấp folate cho cơ thể giúp đẩy mạnh khả năng sinh sản.<br /> <em><strong><br />Theo Health</strong></em></p>', '1', '1', '0', '3', '2010-05-02 08:44:51', '62', '', '2010-05-02 08:51:13', '62', '0', '0000-00-00 00:00:00', '2010-05-02 08:44:51', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '2', '', '', '0', '5', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('106', 'Cảnh giác với “đạm hoa quả” đẹp da', 'cnh-giac-vi-m-hoa-qu-p-da', '', '<p style=\"text-align: justify;\">Đang dấy lên phong trào chị em làm đẹp bằng cách truyền “nước hoa quả”...<br />Ghé một hiệu thuốc bình dân trên phố Cầu Giấy, Hà Nội hỏi mua chai dịch truyền, cô nhân viên nhà thuốc lập tức giới thiệu ba sản phẩm, ngoài hai chai dịch truyền dạng nước muối 9 phần ngàn, còn có chai dung dịch màu vàng như nước pha viên vitamin C sủi bọt, trên nhãn phụ ghi nhập khẩu từ Đài Loan, nhãn chai thuốc lại ghi nhà phân phối là một công ty ở Myanmar! Theo cô bán hàng, đây là đạm hoa quả, giá chỉ 33.000 đồng/chai, truyền để bồi bổ sức khỏe, mát và đẹp da, các bà các chị đang dùng nhiều...</p>\r\n', '\r\n<p style=\"text-align: justify;\"><img src=\"http://www.thuoc.net.vn/uploads/697t.jpg\" border=\"0\" width=\"100\" height=\"100\" /><br /><strong><br />Loạn truyền dịch</strong><br /><br />Chị Trần Thị Bích Hồng ở Thanh Xuân (Hà Nội) có thể coi là “con nghiện” dịch truyền. Nhà có người ốm, sốt, bất kể bệnh gì, nguyên nhân do đâu, mức độ ra sao, đã đến mức suy kiệt phải truyền dịch hay không, chị Hồng cũng giục đi...truyền dịch. Cách của chị là mời y tá gần nhà hay y tá quen, mua chai truyền dịch, dây, kim truyền ở hiệu thuốc về nhà và... truyền.<br /><br />Chị Hằng, một y tá ở trạm y tá phường, cũng hay được mời đến các gia đình trong khu vực quận Cầu Giấy chị ở để truyền dịch. Thôi thì đủ kiểu truyền, cụ già truyền đạm cho khỏe, em bé tiêu chảy, sốt thì cho truyền nước, các chị em truyền “đạm hoa quả”, vừa bồi bổ sức khỏe vừa đẹp da... Dịch truyền giờ rất rẻ, mua đâu cũng có, truyền vào ăn uống có kém thì người vẫn không sút, da dẻ sáng đẹp, ai cũng thích, nhất là các chị em độ tuổi thích làm đẹp.<br /><br />Thế nhưng khi chúng tôi gặp PGS.TS Nguyễn Đăng Hòa, giám đốc Trung tâm Theo dõi phản ứng phụ của thuốc (Trung tâm ADR, ĐH Dược Hà Nội), TS Hòa giật mình bởi cách suy nghĩ đơn giản của chị em. “Đúng là đang có tình trạng loạn truyền dịch. Bố mẹ già yếu, không ăn được cho truyền chai đạm; thấy cụ già nhà hàng xóm sau truyền đạm trông có vẻ khỏe cũng... mua đạm về truyền cho bố mẹ mình!<br /><br />Về nguyên tắc, tất cả thuốc tiêm, truyền là thuốc bán theo đơn, phải có bác sĩ chỉ định mới được sử dụng, nếu không có thể ảnh hưởng đến tính mạng. Như chai dịch truyền đạm là đạm thủy phân, là kháng nguyên; truyền chai thứ nhất, thứ hai không vấn đề gì nhưng đến chai thứ ba kháng thể chống lại kháng nguyên, người bệnh có thể tử vong” - ông Hòa khuyến cáo.<br /><br /><strong>Làm đẹp bằng thực phẩm là tốt nhất</strong><br /><br />Theo một dược sĩ làm việc tại Bộ Y tế, “đạm hoa quả” là cách nói của thị trường, thực tế sản phẩm này là dịch truyền có bổ sung vitamin. Nếu ăn uống được, tốt nhất nên bổ sung vitamin bằng cách ăn uống các thực phẩm tốt, đảm bảo vệ sinh thực phẩm và chất lượng dinh dưỡng.<br /><br />Còn PGS.TS Nguyễn Đăng Hòa nhấn mạnh đến yếu tố mất an toàn của tình trạng truyền dịch tại nhà hoặc tự ý truyền dịch. Theo PGS Hòa, từ đầu năm 2010 đến nay Trung tâm ADR nhận được hơn 300 báo cáo về các trường hợp gặp phản ứng phụ của thuốc, chủ yếu là sau khi điều trị bằng kháng sinh hoặc các thuốc kháng viêm (corticoid). Ngay giữa tháng 4 này, tại Bình Định có hai anh em ruột là học sinh lớp 8 và lớp 6 tử vong sau khi truyền dịch tại nhà nhân viên y tế, mặc dù nguyên nhân tử vong chưa được xác định, nhưng không thể coi thường tính mạng mà truyền dịch tại nhà.<br /><br />Theo ông Hòa, không thể lường hết mọi phản ứng phụ của thuốc. Mỗi sản phẩm dịch truyền có chỉ định riêng, dung dịch nước muối 9 phần ngàn bù nước trong trường hợp tiêu chảy, mất nước, mất điện giải. Dịch truyền đạm sử dụng trong trường hợp bệnh nhân suy kiệt... Nhưng bệnh nhân ở nhà thì làm sao xác định được mất nước, mất điện giải, suy kiệt đến mức độ nào và cần bù hay chưa.<br />Chưa kể truyền dịch tại nhà nếu gặp phản ứng phụ sẽ khó cứu chữa do không đủ thiết bị y tế. “Chỉ truyền dịch nếu có y lệnh của bác sĩ và sự giám sát của bác sĩ hoặc điều dưỡng, nhưng người dân còn coi thường nguyên tắc đó, phản ứng có hại là tất yếu” - PGS Hòa nhấn mạnh.<br /> <br /><strong>Theo Tuổi Trẻ</strong></p>\r\n<p style=\"text-align: justify;\"> </p>', '1', '1', '0', '2', '2010-05-02 08:52:55', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-05-02 08:52:55', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '4', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('107', 'Tiếp xúc lợn dịch, 4 người nhập viện', 'tip-xuc-ln-dch-4-ngi-nhp-vin', '', '<p style=\"text-align: justify;\">Gần một tuần nay, mỗi ngày Bệnh viện Bệnh nhiệt đới ở Hà Nội tiếp nhận 1-2 bệnh nhân bị liên cầu khuẩn - một loại bệnh lây từ lợn sang người. 4 người đang điều trị tại đây, trong đó 2 ca rất nặng phải thở máy.</p>\r\n', '\r\n<p style=\"text-align: justify;\"><img src=\"http://www.thuoc.net.vn/uploads/698t.jpg\" border=\"0\" width=\"210\" height=\"164\" /><br /><br />Những trường hợp mắc bệnh này có thể do ăn thịt lợn bệnh chưa được nấu chín, ăn tiết canh hoặc tiếp xúc với máu, dịch tiết của lợn qua các vết thương ở da, đường hô hấp.<br /><br />Tiến sĩ Lý Ngọc Kính, Giám đốc Bệnh viện Bệnh nhiệt đới cho biết, bệnh liên cầu khuẩn lây từ lợn bệnh sang người gồm 3 thể: nhiễm trùng huyết, viêm màng não mủ hoặc kết hợp cả hai.<br /><br />Cũng theo ông, hiện bệnh chưa thành dịch. Các bệnh nhân mới chỉ rải rác ở các tỉnh đang có dịch tai xanh. Tuy nhiên, bệnh có thể dẫn đến tử vong nếu điều trị muộn. Hơn nữa, dịch lợn tai xanh đang bùng phát ở nhiều tỉnh, thành vì thế người dân cần rất cảnh giác, đề phòng bệnh.<br /><br />Theo các nghiên cứu y khoa, bệnh tai xanh không lây sang người. Tuy nhiên, bệnh này làm suy giảm miễn dịch, khiến các bệnh khác ở lợn phát triển nhanh, trong đó có liên cầu khuẩn, có thể lây truyền bệnh sang người. Bệnh nguy hiểm ở chỗ có thể dẫn đến tử vong nếu điều trị muộn. Tỷ lệ tử vong có thể lên tới 7%. Những người bị mắc bệnh chết còn do nhiễm độc tố vi khuẩn, gây hiện tượng sốc.<br /><br />Dịch tại xanh đang diễn biến rất nghiêm trọng và có nguy cơ lan từ miền Bắc vào miền Trung (lan rộng khắp 8 tỉnh miền Bắc). Vì thế, người tiêu dùng không nên mua bán, ăn lợn bệnh, không ăn thịt lợn sống, tiết canh, nội tạng lợn chưa nấu chín và đặc biệt không ăn thịt lợn ốm, chết.<br />Thời gian ủ bệnh ngắn, chỉ từ vài giờ đến 3 ngày. Khi có biểu hiện sốt cao (40,41 độ C), xuất hiện các mảng xuất huyết hoại tử dưới da, tiêu chảy, cứng cổ..., có thể khó thở, suy gan, suy thận thì người dân nên đến bệnh viện sớm, tránh nguy cơ tử vong.<br /> <br /><strong><em>Theo VnExpress</em></strong></p>', '1', '1', '0', '1', '2010-05-02 08:58:23', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-05-02 08:58:23', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '4', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('108', 'Các hóa dược - thảo dược điều trị phì đại tuyến tiền liệt', 'cac-hoa-dc-tho-dc-iu-tr-phi-i-tuyn-tin-lit', '', '<p>Khoảng 60% nam từ 60 tuổi trở lên bị phì đại lành tính tuyến tiền liệt (PĐLTTLT). Trước kia, hầu hết đều phải phẫu thuật. Nay, chỉ khoảng 20% phải phẫu thuật ngay, còn 80% chưa cần hoặc điều trị nội khoa. Việc đánh giá hiệu quả thuốc dựa vào mức khống chế bệnh, mức giảm triệu chứng.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"http://www.thuoc.net.vn/uploads/703t.jpg\" border=\"0\" width=\"400\" height=\"300\" /><br /><strong><br /></strong></p>\r\n<p style=\"text-align: justify;\"><strong>Các hóa dược</strong><br /><br />Ức chế 5-alpha reductase (5ARI): Enzym 5-alpha reductase có vai trò chuyển testosteron thành dihydrotestosteron; chất này kích hoạt thụ thể androgen trong tiền liệt tuyến (TLT) gây ra sự chuyển mã, giải mã một số yếu tố tăng trưởng (như yếu tố tăng trưởng biểu mô - EGF). Ức chế enzym 5 - alphareductase, làm chậm hay khống chế sự phát triển, giảm  triệu chứng bệnh. Hai thuốc hay dùng: dutasterid và finasterid<br /><br />PĐLTTLT phát triển chậm. Rối loạn tiểu tiện không tăng theo tỷ lệ thuận hoàn toàn với khối u do chèn ép, mà còn do sự thay đổi hormon. Chỉ  dùng các thuốc này khi có kích  thước TLT lớn. Không nên quá lo lắng, tự ý dùng khi chưa có chỉ định. Khi dùng cũng  không nên nôn nóng (sau 3 tháng mới thấy hiệu lực), không  tự ý ngừng thuốc ( khi chỉ mới gặp vài tác dụng phụ nhỏ).<br /><br />Chẹn alpha adrenergic: Trong PĐLTTLT, có khoảng 60% thành phần mô tăng sinh là cơ trơn, mô liên kết. Khi thụ thể alpha adrenergic nằm trong cơ trơn bị kích thích thì trương lực cơ trơn tăng, gây rối loạn tiểu. Chẹn alpha adrenergic ngăn sự tăng trương lực cơ, giúp cổ bàng quang mở ra dễ dàng, cải thiện các triệu chứng liên quan đến chức năng tống xuất của bàng quang, giảm rối loạn tiểu tiện. Chẹn alpha adrenergic cũng đối kháng với sự giảm phenylephrin có làm co tổ chức TLT nhưng kém hơn ức chế  5-alpha reductase. Hai thuốc hay dùng là terazosin và prazosin.<br /><br />Tuy nhiên, các thuốc này làm giảm sự cản trở ngoại vi, dẫn tới hạ huyết áp trên cả tâm thu và tâm trương, ở tư thế đứng và nằm nhưng chậm và ít ảnh hưởng đến nhịp tim. Đối với người bệnh có kèm theo tăng huyết áp cần dùng thận trọng.<br /><br />Thuốc có hiệu lực nhanh, sau 1-3 tuần các rối loạn tiểu giảm dần. Nếu sau 3 tháng dùng không thấy hiệu quả thì cần khám lại, chọn liệu pháp khác.</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\"><strong><br />Các thảo dược</strong><br /><br />Chiết xuất thảo dược (CXTD) chiếm tỷ lệ cao trong tổng số thuốc PĐLTTLT (Đức, Pháp 25,3%-36,8% - Italia, Tây Ban Nha 3,5-10%). Cơ chế mới được giả thiết (ức chế 5-alpha reductase, chẹn alpha adrenergic, ức chế tổng hợp prostaglandin) nhưng chưa được chứng minh lâm sàng, thiếu các nghiên cứu dược động học, sinh khả dụng. Chẳng hạn, không chứng minh được giảm PSA máu thì không chấp nhận có cơ chế ức chế 5-alpha reductase. Hiệp hội niệu khoa thế giới (SIU), Hiệp hội niệu khoa Mỹ (AUA) chưa đưa CXTD vào danh  mục điều trị.<br /><br />Permixon: Chiết từ quả cây cọ lùn Saw pametto (serenoa repens). Nghiên cứu (Carrano-1996) trên 1.098 người, dùng 6 tháng, thấy permison làm giảm các rối loạn tiểu, không giảm thể tích TLT như finasterid. Nghiên cứu (Debruyn-2002) trên 704 người thấy permison làm giảm rối loạn đường tiểu dưới như tamsulosin (chặn alpha adrenergic). Tuy nhiên, trong một nghiên cứu khác ở 112 người, theo đúng thiết kế của WHO (công bố trên NEJM - ) lại thấy hiệu quả permison trên mức giảm rối loạn tiểu, tăng lưu lượng dòng chảy tối đa, giảm thể tích TLT chỉ tương đương như dùng giả dược.<br /><br />Tadenan: Chiết xuất từ cây đào châu Phi (Pygeum africanum): Năm 2000, Ishani tổng hợp từ 18 nghiên cứu trên 1.562 người, song không có nghiên cứu nào đạt thiết kế như WHO. Các nghiên cứu ngẫu nhiên cho biết hiệu quả chỉ tương tự như permison.<br /><br />Pepopen: Chiết xuất từ hạt bí ngô (Curcubita ppepo curcubitaceae) có hoạt chất 7-phytosterol. Hiệu quả: giảm số lần tiểu đêm, tăng lưu lượng dòng tiểu tối đa, giảm tiểu sớm, tiểu dắt, tiểu buốt, khó tiểu.<br /><br />Trinh nữ hoàng cung: Cao lá đã chuẩn hóa alcaloid. Việt Nam đã công bố kết quả nghiên cứu tổng quát: thuốc làm giảm rối loạn tiểu, làm nhỏ thể tích TLT.<br /><br />Tóm lại: CXTD chỉ làm giảm rối loạn đường tiểu dưới, chỉ có thể dùng trong PĐLTTLT mức nhẹ, ít có nguy cơ  tiến triển.<br /><strong><br />Một số nghiên cứu mới</strong><br /><br />Phối hợp ức chế 5-alpha reductase với chẹn alpha adrenergic (ở 35 nước với 4.844 người tham gia trong đợt thử nghiệm đầu là 2 năm), thấy hiệu quả hơn  dùng riêng lẻ. Tiêm vào chỗ tận cùng đầu thần kinh độc tố butolotoxin, độc tố sẽ ức chế sự phóng thích chất dẫn truyền acetylcholin, làm giảm sự co cứng cơ nên giảm tắc nghẽn đường tiểu. Một số nước đã áp dụng, nước ta chưa dùng rộng rãi.<br />PĐLTTLT không đe đọa tính mạng, thường tiến triển chậm. Biết rõ hiệu năng từng loại  thuốc, dùng đúng thời điểm sẽ có hiệu quả, tránh sự tiến triển nhanh làm bệnh nặng thêm, có thể tránh được phẫu thuật, giúp người bệnh nâng cao chất lượng cuộc sống.<br /> <br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '2', '2010-05-02 09:01:53', '62', '', '2010-05-03 16:27:36', '62', '0', '0000-00-00 00:00:00', '2010-05-02 09:01:53', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '3', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('109', 'Nhân trần, vị thuốc chữa viêm gan', 'nhan-trn-v-thuc-cha-viem-gan', '', '<p style=\"text-align: justify;\">Nhân trần tên khoa học Adenosma glutinosum (L.) Druce) thuộc họ hoa mõm chó (Scrophulariaceae), tên khác là chè nội, chè cát, hoắc hương núi, tuyến hương, mao xạ hương. Từ lâu, cả cây nhân trần được dùng làm thuốc với nhiều công dụng tốt. Dược liệu có vị đắng, the, mùi thơm, tính mát, không độc, có tác dụng thanh nhiệt, lợi thấp, thông tiểu tiện, làm ra mồ hôi.</p>\r\n', '\r\n<table style=\"width: 10px; height: 40px;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><img src=\"images/stories/tintucsukien/caythuoc/nhantran.jpg\" border=\"0\" /></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\"><span style=\"font-size: small;\">Nhân trần</span><br /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\"><br />Tuệ Tĩnh đã dùng nhân trần 30g phối hợp với dành dành 24 quả, thạch cao 4 - 6g nung, sắc uống để chữa hoàng đản (vàng da).<br /><br />Chữa kém ăn, đầy bụng, khó tiêu: nhân trần 12g, kim tiền thảo 10g, cam thảo nam 10g. Các vị dùng cả cây trừ rễ, rửa sạch, thái nhỏ, phơi khô, sắc với 400ml nước còn 100ml, uống làm 2 lần trong ngày sau bữa ăn. Hoặc nhân trần 20g, ké hoa vàng 20g, thân và rễ mộc thông 10g, rễ móc diều 10g, sao vàng, sắc uống (phụ nữ có thai không được dùng).<br /><br />Dùng cho phụ nữ sau sinh:  nhân trần 8g sắc với mần tưới 20g, mạch môn 20g, ngải cứu 10g, rẻ quạt 4g, vỏ bưởi đầu khô 4g, tất cả cho vào sắc uống ngày 1 thang.<br /><br />Để điều hòa kinh nguyệt: Nhân trần 12g, ích mẫu 12g, lá đuôi lươn 10g, bạch đồng nữ 10g, rễ gắm 8g, nghệ đen 6g. Sắc hoặc nấu thành cao lỏng, uống trong ngày.<br />Trị hen suyễn: Nhân dân ở vùng đồng bằng sông Cửu Long dùng nhân trần phối hợp với hoa cúc vạn thọ, rau cần, củ tầm sét, thài lài tía, rễ bạch đồng nữ và tinh tre mỡ, mỗi thứ 10g, sắc uống.<br /><br />Đặc biệt nhân trần  có tác dụng chữa viêm gan do virut:<br /><br />- Nhân trần 16g, lá vọng cách 16g, lá cối xay 12g, sắc uống.<br /><br />- Nhân trần 16g, quả dành dành 12g, nghệ vàng 8g, sắc uống.<br /><br />- Nhân trần 3g, vỏ núc nác 3g, nghệ vàng 3g, rau má 4g, sài hồ nam 2g, dành dành 2g, nhọ nồi 2g, hậu phác nam 2g. Nhân trần, vỏ núc nác, sài hồ, nhọ nồi, rau má nấu thành cao lỏng. Các dược liệu khác phơi khô, tán nhỏ, rây bột mịn. Trộn cao với bột làm thành viên. Ngày uống 10g chia làm 2 lần.<br />- Nhân trần và vỏ quả bưởi (bỏ phần cùi trắng) lượng bằng nhau, thái nhỏ, phơi khô, tán bột. Mỗi lần uống 6g, ngày 3 lần.<br /> <em><strong><br />Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '2', '2010-05-02 09:06:39', '62', '', '2010-05-03 05:07:14', '62', '0', '0000-00-00 00:00:00', '2010-05-02 09:06:39', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '10', '0', '2', '', '', '0', '14', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('110', 'Chữa chứng mất ngủ với rau rút', 'cha-chng-mt-ng-vi-rau-rut', '', '<p style=\"text-align: justify;\">Rau rút (rau nhút), là cây thảo nổi ngang mặt nước, quanh thân có phao xốp màu trắng. Cây có rễ mấu, lá kép lông chim hai lần. Hoa hợp thành đầu màu vàng. Rau rút thường mọc dưới nước ở mương rãnh, ao hồ. Toàn cây dùng làm thuốc, có thể dùng tươi hay khô. Ngoài được trồng làm rau ăn, kinh nghiệm dân gian còn sử dụng rau rút làm thuốc. Theo Đông y rau rút có vị ngọt, tính hàn, không độc, tác dụng an thần, mát gan, giải nhiệt độc, dùng chữa chứng mất ngủ, trị nóng trong sinh mụn...</p>\r\n', '\r\n<table border=\"0\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"images/stories/tintucsukien/caythuoc/raurut.jpg\" border=\"0\" /><br /></td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align: center;\">Rau rút</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\"><br />Chữa chứng mất ngủ: Rau rút phơi khô 25g, khoai sọ 25g, lá sen 10g tất cả rửa sạch đem ninh nhừ với nước, cho gia vị vừa đủ, ăn cả bã lẫn nước. Tuần ăn 3 - 5 lần, nên ăn khi còn ấm, tốt nhất ăn vào buổi tối. Hoặc có thể dùng canh rau rút nấu với cá rô: rau rút tươi 300g, cá rô 200g. Rau rút làm sạch (bỏ rễ và lớp phao trắng bên ngoài), rửa sạch, thái nhỏ. Cá làm sạch lọc lấy thịt, thái mỏng, ướp gia vị;  xương cá giã nhỏ lọc lấy nước khoảng 350ml. Đun sôi nước lọc xương cá, cho thịt cá vào, quấy đều, đun sôi khoảng 5 phút cho tiếp rau rút vào, nêm gia vị vừa đủ, khi canh sôi nhấc ra ngay, nên ăn khi canh còn nóng. Có thể dùng làm canh ăn với cơm. Ăn liền trong 7 ngày. Canh này rất tốt cho người mất ngủ, suy nhược thần kinh, ăn uống kém.<br /><br />Trị nóng trong sinh mụn: 30g rau rút khô, sắc với 400ml nước còn 200ml, uống thay nước uống trong ngày hoặc ăn thường xuyên rau rút sống trong bữa ăn (hái lấy đọt non, nhặt bỏ rễ và lớp phao trắng bên ngoài, rửa sạch, ăn cả cọng lẫn lá, như các loại rau tươi khác).<br /><em>Lưu ý:</em> Rau rút tính lạnh nên những người tạng hàn, dễ tiêu chảy và tre nhỏ không nên ăn.           <br /> <br /><em><strong>Theo SK&amp;ĐS</strong></em></p>', '1', '1', '0', '3', '2010-05-02 13:18:32', '62', '', '2010-05-03 05:07:50', '62', '0', '0000-00-00 00:00:00', '2010-05-02 13:18:32', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '1', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('113', 'HƯƠNG TÔ TÁN (Hòa tễ cục phương)', 'hng-to-tan-hoa-t-cc-phng', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Hương phụ  160 g<br /><br />Tô diệp        160 g<br /><br />Trần bì          80 g<br /><br />Chích thảo    40 g</p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/huongphu.jpg\" border=\"0\" alt=\"Hương phụ\" title=\"Hương phụ\" /></p>\r\n<p style=\"text-align: center;\">Hương phụ</p>\r\n<p style=\"text-align: justify;\"><br /><em><strong>Cách dùng:</strong></em> Tán bột mịn làm thuốc tán mỗi lần sắc 12g uống. Có thể dùng làm thuốc thang với liều lượng giảm bớt.<br /><br /><em><strong>Tác dụng:</strong></em> Phát hãn, giải biểu lý khí hòa trung. <br /><br />Chữa chứng ngoại cảm phong hàn, kiêm khí trệ có các triệu chứng người nóng, sợ lạnh, đau đầu, ngực bụng đầy tức, chán ăn, không ra mồ hôi, rêu lưỡi trắng mỏng, mạch phù.<br /><br /><em><strong>Giải thích bài thuốc:</strong></em><br /><br />Tô diệp: tính cay ôn thơm có tác dụng giải biểu, lý khí điều trung là chủ dược. <br />Hương phụ:  lý khí, giải uất trệ. <br />Trần bì: lý khí, giảm đau tức bụng ngực. <br />Cam thảo: điều hòa các vị thuốc.<br />Ứng dụng lâm sàng:<br /><br /> Bài thuốc chữa có hiệu quả chứng cảm mạo thể tiêu hóa.<br /><br />1.     Nếu phong hàn nặng, nghẹt mũi, chảy nước mũi trong gia Thông bạch, Sinh khương. <br /><br />2.     Đau đầu gia Mạn kinh tử, Bạch tật lê để sơ phong chỉ thống. <br /><br />3.     Nếu khí nghịch ho và đàm nhiều gia Tô tử, Bán hạ để giáng khí hóa đàm. <br /><br />4.     Trong bài thuốc các vị thuốc Tô diệp, Hương phụ, Trần bì đều có tác dụng lý khí giải uất dùng tốt cho chứng đau bụng do khí trệ: nếu đau bụng đầy tức gia Hậu phác, Chỉ xác; thức ăn không tiêu gia Kê nội kim, Thần khúc để tiêu thực đạo trệ.<br /><br /><em><strong>Chú ý lúc sử dụng:</strong></em> Bài thuốc tính dược ôn nên dùng thận trọng đối với cơ thể âm hư.</p>', '1', '3', '0', '279', '2010-05-03 05:26:04', '62', '', '2010-05-03 06:36:56', '62', '0', '0000-00-00 00:00:00', '2010-05-03 05:26:04', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '6', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('111', 'Thuốc mới giúp đàn ông \'dai sức\' gấp ba lần', 'thuc-mi-giup-an-ong-dai-sc-gp-ba-ln', '', '<p style=\"text-align: justify;\">Thị trường châu Âu vừa xuất hiện Priligy, loại thuốc mới dành cho quý ông xuất tinh sớm, với khả năng kéo dài gấp ba thời gian \"hành sự\".<br />Priligy thay đổi mức độ serotonin (chất dẫn truyền thần kinh) trong não, giúp nam giới kiểm soát quá trình xuất tinh. Thuốc được chỉ định uống trong khoảng thời gian 1 - 3 giờ trước khi “lâm trận” và bảo đảm chủ nhân không lâm vào tình trạng “khóc ngoài quan ải”.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/tintuc/thucmigipnngdaiscgpbaln.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: justify;\"><br />Priligy đã được bán ở một số nước châu Âu. Riêng tại Anh, nó đang được dùng thử nghiệm trên 6.000 nam giới với giá 76 bảng cho một vỉ ba viên.<br />“Vì một số người rất miễn cưỡng khi đề cập đến chứng xuất tinh sớm của mình nên chúng tôi đang dần xóa bỏ rào cản trong việc điều trị cho họ. Chúng tôi tư vấn qua mạng về mức độ phù hợp của Priligy đối với từng người và sẽ bán thuốc cho họ nếu thấy phù hợp”, Nitin Makadia, người đứng đầu bộ phận chăm sóc sức khỏe tình dục nam giới của Lloydspharmacy (công ty đang điều hành dịch vụ tư vấn), nói.<br /><br />Xuất tinh sớm là một trong những rối loạn tình dục phổ biến nhất ở đàn ông. Cứ ba nam giới thì có một người từng gặp vấn đề này ở thời điểm nào đó trong cuộc đời. Một nghiên cứu gần đây cho thấy, về đời sống tình dục, đàn ông Anh và Đức cảm thấy phiền lòng nhất vì vấn đề “chưa đi đến chợ đã tiêu hết tiền”. Họ cũng cảm thấy vô cùng xấu hổ khi nói chuyện này với bạn tình và bác sĩ.<br /> <br /><em><strong>Theo Báo Đất Việt</strong></em></p>', '1', '1', '0', '1', '2010-05-02 13:27:55', '62', '', '2010-05-03 05:08:22', '62', '0', '0000-00-00 00:00:00', '2010-05-02 13:27:55', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '9', '0', '1', '', '', '0', '13', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('112', 'CỬU VỊ KHƯƠNG HOẠT THANG (Thử sự nan tri)', 'cu-v-khng-hot-thang-th-s-nan-tri', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Khương hoạt         6g<br /><br />Phòng phong         6g<br /><br />Xuyên khung         4g<br /><br />Sinh địa                4g<br /><br />Cam thảo              4g<br /><br />Thương truật         6g<br /><br />Tế tân                   2g<br /><br />Bạch chỉ               4g<br /><br />Hoàng cầm           4g</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/khnghot.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\">Khương hoạt</p>\r\n<p style=\"text-align: justify;\"><em><strong>Cách dùng:</strong></em> Gia Sinh khương 2 lát, Thông bạch 3 cọng, sắc uống.<br /><em><strong><br />Tác dụng:</strong></em> Phát hãn, trừ thấp, thanh lý nhiệt. <br /><br />Dùng trong các chứng ngoại cảm phong hàn thấp, sốt sợ lạnh, đau đầu, cơ thể nhức mỏi, mồm đắng hơi khát, không ra mồ hôi, rêu lưỡi trắng trơn, mạch phù khẩn.<br /><em><strong><br />Giải thích bài thuốc:</strong></em><br /><br />Khương hoạt là chủ dược có tác dụng phát tán phong hàn, trừ phong thấp. <br />Phòng phong, Thương truật phối hợp tăng thêm tác dụng trừ phong thấp, chỉ thống. <br />Tế tân, Xuyên khung, Bạch chỉ trừ phong, tán hàn, hành khí, hoạt huyết, chữa được đau đầu, mình. <br />Sinh địa, Hoàng cầm thanh lý nhiệt, giảm bớt tính cay ôn táo của các vị thuốc. <br />Cam thảo có tác dụng điều hòa thuốc.</p>\r\n<p> </p>\r\n<p style=\"text-align: justify;\"><br /><em><strong>Ứng dụng lâm sàng:</strong></em><br /><br />Bài thuốc này chỉ dùng cho các chứng cảm mạo 4 mùa có tác dụng khu hàn, thanh nhiệt, giảm đau, nhức mình mẩy.<br /><br />1.     Nếu thấp tà nhẹ, mình mẩy đau ít bỏ Thương truật, Tế tân. <br /><br />2.     Nếu thấp nặng ngực đầy tức bỏ Sinh địa gia Chỉ xác, Hậu phác để hành khí hóa thấp. <br /><br />3.     Nếu mình mẩy chân tay đau nhiều tăng lượng Khương hoạt và trên lâm sàng sử dụng có kết quả với nhiều bệnh cảm cúm, thấp khớp cấp có những triệu chứng sốt, sợ lạnh, đau đầu không có mồ hôi, chân tay mình mẩy đau, mồm đắng hơi khát nước.<br /><br /><em><strong>Chú ý lúc sử dụng</strong></em>: Bài thuốc có nhiều vị cay ôn táo nên không dùng cho những trường hợp có triệu chứng âm hư.<br /><br /></p>', '1', '3', '0', '279', '2010-05-02 17:13:18', '62', '', '2010-05-03 06:36:45', '62', '0', '0000-00-00 00:00:00', '2010-05-02 17:13:18', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '7', '', '', '0', '7', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('114', 'ĐẠI THANH LONG THANG (Thương hàn luận)', 'i-thanh-long-thang-thng-han-lun', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Ma hoàng    16 g<br /><br />Chích thảo    8 g<br /><br />Thạch cao   32 g<br /><br />Đại táo      4 quả<br /><br />Quế chi        8 g<br /><br />Hạnh nhân    8 g<br /><br />Sinh khương 8 g</p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/mahoang.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\">Ma hoàng</p>\r\n<p style=\"text-align: justify;\"><br /><em><strong><br />Cách dùng:</strong></em> Thạch cao sắc trước, thuốc sắc chia 3 lần, uống trong ngày, ra mồ hôi nhiều ngưng dùng thuốc.<br /><br /><em><strong>Tác dụng:</strong></em> Phát hãn, giải biểu, thanh nhiệt, trừ phiền. <br /><br />Trị các chứng ngoại cảm phong hàn biểu thực kiêm lý nhiệt chứng thường thấy sốt sợ lạnh, đầu nặng, mình đau không ra mồ hôi, khó chịu, rêu lưỡi trắng hoặc hơi vàng, mạch phù khẩn có lực.<br /><br />Giải thích bài thuốc: Bài thuốc được tạo thành trên cơ sở bài Ma hoàng thang gia tăng lượng Ma hoàng và Cam thảo, có thêm Thạch cao, Gừng và Táo.<br /><br />Tăng lượng Ma hoàng để tăng tác dụng phát hãn và giải biểu. <br />Thạch cao: thanh nhiệt trừ phiền. <br />Thêm lượng Cam thảo để điều hòa trung khí. <br />Thêm Khương, Táo để điều hòa vinh vệ. <br />Ứng dụng lâm sàng:<br /><br />Bài thuốc được sử dụng chủ yếu đối với chứng sốt sợ lạnh, không ra mồ hôi, bứt rứt khó chịu mà mạch phù khẩn có lực. <br /><br />Bài thuốc cũng có thể dùng trong các trường hợp vốn cơ thể đàm ẩm, ho suyễn do cảm thụ ngoại tà gây nên, chân tay phù sốt, sợ lạnh không ra mồ hôi, bứt rứt khó chịu.<br /><br /><em><strong>Chú ý lúc sử dụng: </strong></em><br /><br />Bài thuốc tác dụng phát hãn mạnh dễ thương âm dương nên không dùng được với những người hư nhược.<br /><br /></p>', '1', '3', '0', '279', '2010-05-03 05:33:39', '62', '', '2010-05-03 06:37:13', '62', '0', '0000-00-00 00:00:00', '2010-05-03 05:33:39', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '5', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('115', 'VIỆT TỲ THANG (Kim quỹ yếu lược)', 'vit-t-thang-kim-qu-yu-lc', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Ma hoàng      12 g<br /><br />Sinh Khương 12 g<br /><br />Chích thảo      6 g<br /><br />Thạch cao     24 g<br /><br />Đại táo        4 quả</p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/mahoang.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Ma hoàng</em></p>\r\n<p style=\"text-align: justify;\"><br /><br /><em><strong>Cách dùng:</strong></em> Sắc uống chia 3 lần trong ngày.<br /><em><strong><br />Tác dụng:</strong></em> Sơ tán thủy thấp, tuyên phế, thanh nhiệt. <br /><br />Dùng cho người bệnh có triệu chứng phù từ thắt lưng trở lên, mặt và mắt sưng phù nặng kèm theo ra mồ hôi, sợ gió, hơi sốt, mồm khát gặp trong bệnh viêm cầu thận cấp, phù.<br /><br /><br /><br /></p>', '-2', '3', '0', '279', '2010-05-03 05:51:13', '62', '', '2010-05-03 06:37:42', '62', '0', '0000-00-00 00:00:00', '2010-05-03 05:51:13', '2010-05-03 05:51:13', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '0', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('116', 'TIỂU THANH LONG THANG (Thương hàn luận)', 'tiu-thanh-long-thang-thng-han-lun', '', '', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Ma hoàng              12 g<br /><br />Quế chi                 12 g<br /><br />Bán hạ                  12 g<br /><br />Tế tân                     6 g<br /><br />Bạch thược           12 g<br /><br />Can khương          12 g<br /><br />Chích thảo             12 g<br /><br />Ngũ vị tử 6g</p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/mahoang.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Ma hoàng</em></p>\r\n<p style=\"text-align: justify;\"><br /><br /><em><strong>Cách dùng: </strong></em>Sắc nước, chia 3 lần uống trong ngày.<br /><em><strong><br />Tác dụng:</strong></em> Giải biểu, tán hàn, ôn phế, hóa ẩm. <br /><br />Dùng trong các trường hợp ngoại cảm phong hàn bên trong thủy thấp, đờm ẩm ứ trệ có triệu chứng sợ lạnh, phát sốt không ra mồ hôi, ho suyễn, đờm trắng loãng; nặng thì khó thở không nằm được hoặc chân, mặt phù, miệng không khát, rêu lưỡi trắng, nhuận, mạch phù, khẩn.<br /><br /><em><strong>Giải thích bài thuốc:</strong></em><br /><br />Ma hoàng, Quế chi có tác dụng phát hãn, giải biểu, tuyên phế, bình suyễn. <br />Bạch thược hợp Quế chi để điều hòa vinh vệ. <br />Can khương, Tế tân vừa có tác dụng phát tán phong hàn, vừa ôn hóa đờm ẩm. <br />Bán hạ trị táo thấp, hóa đờm. <br />Ngũ vị tử liễm phế, chỉ khái. <br />Cam thảo làm giảm bớt tính cay nóng của Ma hoàng, Quế chi, Can khương.</p>\r\n<p style=\"text-align: justify;\"><br /><em><strong>Ứng dụng lâm sàng:</strong></em><br /><br />Bài thuốc được dùng nhiều để chữa các chứng viêm phế quản mạn tính, hen phế quản có các triệu chứng ho khó thở, đàm loãng trắng, rêu lưỡi trắng hoạt.<br /><br />1.     Trường hợp có chứng nhiệt, bệnh nhân bứt rứt gia Thạch cao gọi là bài: TIỂU THANH LONG GIA THẠCH CAO THANG (Kim quỹ yếu lược). <br /><br />2.     Bệnh nhân khát nhiều bỏ Bán hạ gia Thiên hoa phấn, Sinh địa để thanh nhiệt sinh tân</p>', '1', '3', '0', '279', '2010-05-03 06:30:25', '62', '', '2010-05-03 06:37:35', '62', '0', '0000-00-00 00:00:00', '2010-05-03 06:30:25', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '4', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('117', 'VIỆT TỲ THANG (Kim quỹ yếu lược)', 'vit-t-thang-kim-qu-yu-lc', '', '<p><strong> \r\n', '\r\nThành phần:</strong></em><br /><br />Ma hoàng      12 g<br /><br />Sinh Khương 12 g<br /><br />Chích thảo      6 g<br /><br />Thạch cao     24 g<br /><br />Đại táo        4 quả</p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/mahoang.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Ma hoàng</em></p>\r\n<p style=\"text-align: justify;\"><br /><br /><em><strong>Cách dùng:</strong></em> Sắc uống chia 3 lần trong ngày.<br /><em><strong><br />Tác dụng:</strong></em> Sơ tán thủy thấp, tuyên phế, thanh nhiệt. <br /><br />Dùng cho người bệnh có triệu chứng phù từ thắt lưng trở lên, mặt và mắt sưng phù nặng kèm theo ra mồ hôi, sợ gió, hơi sốt, mồm khát gặp trong bệnh viêm cầu thận cấp, phù.<br /><br /></p>', '1', '3', '0', '279', '2010-05-03 06:38:56', '62', '', '2010-05-03 06:53:55', '62', '0', '0000-00-00 00:00:00', '2010-05-03 06:38:56', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '3', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('118', 'XẠ CAN MA HOÀNG THANG (Kim quỹ yếu lược)', 'x-can-ma-hoang-thang-kim-qu-yu-lc', '', '<p> </p>\r\n', '\r\n<p><em><strong>Thành phần:</strong></em><br /><br />Xạ can                  12 g<br /><br />Ma hoàng              12 g<br /><br />Tử uyển                12 g<br /><br />Khoản đông hoa    12 g<br /><br />Sinh khương         12 g<br /><br />Bán hạ                  12 g<br /><br />Tế tân                     4 g<br /><br />Ngũ vị tử                 6 g <br /><br />Đại táo                  3 quả</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/xacan.jpg\" border=\"0\" /></p>\r\n<p style=\"text-align: center;\"><em>Xạ can</em></p>\r\n<p><em><span style=\"text-decoration: underline;\"><strong><br /></strong></span></em></p>\r\n<p style=\"text-align: justify;\"><em><span style=\"text-decoration: underline;\"><strong>Cách dùng:</strong></span></em> Sắc nước chia 3 lần uống trong ngày.<br /><em><strong><br />Tác dụng: </strong></em>Ôn phế hóa đàm, chỉ khái, định suyễn. <br /><br />Được dùng có kết quả trong các bệnh viêm phế quản mạn tính, hen phế quản thể hàn.</p>', '1', '3', '0', '279', '2010-05-03 06:44:15', '62', '', '2010-05-03 06:49:41', '62', '0', '0000-00-00 00:00:00', '2010-05-03 06:44:15', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu,bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa,nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '2', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('119', 'Vỏ gòn xanh trị bệnh', 'v-gon-xanh-tr-bnh', '', '<p>Cây gòn cao từ 5-10 mét, có nhiều cành nhánh, xuân trổ hoa, hè-thu kết trái và trổ bông trắng mịn vào mùa đông. Dân miệt vườn thường sử dụng bông gòn dồn làm gối nằm hoặc kéo chỉ dệt khăn. Vỏ cây gòn xù xì, xanh lục hoặc vàng chanh khi được trên 8 năm tuổi.</p>\r\n', '\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/gn.jpg\" border=\"0\" alt=\"Cây gòn\" title=\"Cây gòn\" /></p>\r\n<p style=\"text-align: center;\"><em>Cây Gòn</em></p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\">Đây cũng là vị thuốc nam quý thường được người dân Nam bộ ở ĐBSCL sử dụng chữa trị bị ngã trật khớp, bong gân khoeo hay gãy cẳng tay, cẳng chân. Bài thuốc phổ biến như sau: cắt mẩu vỏ cây gòn dài 10-15cm, rộng 3-5cm, tùy vị trí bị chấn thương, cạo bỏ lớp bột ngoài rửa lại với nước muối, đập giập, quét lên một lớp bột nghệ sệt (5-10gr) bó chặt với nẹp (gỗ, sắt) vào chỗ gãy. Sau 3 ngày thay mới. Liên tục 3-5 lần sẽ lành hẳn, cử động bình thường.<br />Ngoài ra, vỏ cây gòn (50gr) sao khử thổ, sắc với 0,5l nước, còn 250ml. Uống cả ngày, liên tục 5 ngày dứt viêm tiết niệu, tiểu gắt và đau bụng dưới. Cũng dùng vỏ cây gòn rửa sạch (1cm2 ) thoa thêm nước cốt một tép tỏi nhét vào kẽ răng đau. Sau 3 lần (cách 3 phút lần) sẽ hết nhức.<br /> <br /><em><strong>Theo Thanh Niên</strong></em></p>', '1', '1', '0', '2', '2010-05-03 06:54:08', '62', '', '2010-05-03 06:57:47', '62', '0', '0000-00-00 00:00:00', '2010-05-03 06:54:08', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('120', 'Bệnh Viện Y Học Cổ Truyền Trung Ương', 'bnh-vin-y-hc-c-truyn-trung-ng', '', '<p style=\"text-align: left;\"><img src=\"images/stories/anhbenhvien/logocttw.jpg\" border=\"0\" /></p>\r\n', '\r\n<p style=\"text-align: justify;\">Bệnh viện Y học cổ truyền Trung ương là bệnh viện đầu ngành về YHCT - Trung tâm hợp tác về y học cổ truyền (YHCT) của Tổ chức y tế thế giới tại Việt Nam.</p>\r\n<p style=\"text-align: justify;\">Bệnh viện có 23 khoa phòng, 3 trung tâm được chia thành 3 khối: lâm sàng, cận lâm sàng, và khối các phòng ban chức năng. Bệnh viện có 371 viên chức trong đó có 02 Phó Giáo sư, 14 Tiến sĩ, 35 Thạc sĩ, 9 Bác sĩ chuyên khoa cấp II, 20 Bác sĩ chuyên khoa cấp I . 1/3 cán bộ đại học và trên đại học.</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<p style=\"text-align: justify;\">Với đội ngũ các giáo sư, tiến sĩ, thạc sĩ, bác sĩ chuyên khoa II, chuyên khoa I và các bác sĩ giàu kinh nghiệm, bệnh viện là cơ sở điều trị, nghiên cứu, và giảng dạy về YHCT lớn nhất trong cả nước.<br /><br /> Bệnh viện có 470 giường bệnh, có các khoa lâm sàng nội, ngoại, phụ, nhi, châm cứu dưỡng sinh, người có tuổi, hồi sức cấp cứu, v.v..., có đầy đủ các trang thiết bị hiện đại để phục vụ cho chẩn đoán, điều trị và nghiên cứu khoa học.</p>\r\n<p style=\"text-align: justify;\"><br /> Trong hơn 50 năm qua kể từ khi thành lập, với chức năng và nhiệ m vụ chính là kế thừa, phát huy và phát triển YHCT, kết hợp YHCT với YHHĐ trong điều trị và dự phòng, bệnh viện đã đạt được rất nhiều thành tựu trong phát triển YHCT.<br /><br />Nhiều công trình nghiên cứu khoa học cấp nhà nước, cấp bộ và cơ sở nhằm đánh giá tính an toàn và hiệu lực của thuốc YHCT, nghiên cứu xây dựng qui trình bào chế và tiêu chuẩn hóa thuốc YHCT, nghiên cứu ứng dụng các phương pháp dùng thuốc và không dùng thuốc YHCT trong điều trị và dự phòng các bệnh thường gặp, các bệnh mạn tính, khó chữa...đã được thực hiện và được đánh giá cao tại nhiều hội nghị YHCT trong nước và quốc tế<br /><br /> Với vai trò là trung tâm trao đổi thông tin trong và ngoài nước, hàng năm bệnh viện YHCT Trung ương xuất bản và phát hành tạp chí nghiên cứu Y dược học cổ truyền. Các chuyên gia và các bác sĩ của bệnh viện thường xuyên được cử đi nước ngoài để tham dự các hội nghị, hội thảo, giảng dạy, và nghiên cứu chuyên sâu. Bệnh viện cũng thường xuyên có nhiều chuyên gia, học sinh nước ngoài đến trao đổi kinh nghiệm, học tập, tìm hiểu và nghiên cứu về YHCT Việt Nam.</p>\r\n<p>Trong tiến trình phát triển, hội nhập YHCT với các nước trong khu vực và thế giới, bệnh viện đang từng bước hiện đại hóa trên cơ sở giữ vững bản sắc của YHCT, kết hợp tinh hoa của hai nền YHCT và YHHĐ góp phần phục vụ cho sức khỏe cộng đồng ngày một tốt hơn.<span style=\"color: #0000ff;\"> </span></p>\r\n<p><span style=\"color: #000000;\">Địa chỉ: 29 Nguyễn Bỉnh Khiêm. Hà nội<br />Điện thoại:  84-4-38263616 - Fax: 84-4- 38229353</span></p>\r\n<p> </p>\r\n<p><span style=\"color: #0000ff;\"><br /></span></p>\r\n<p style=\"text-align: center;\" align=\"justify\"><img src=\"images/benh_vien/bando_vncttw.jpg\" border=\"0\" width=\"500\" /></p>\r\n<p style=\"text-align: center;\" align=\"justify\"><strong><em>Bản Đồ</em></strong></p>', '1', '4', '0', '17', '2010-05-03 13:33:16', '62', '', '2010-05-03 14:40:54', '62', '0', '0000-00-00 00:00:00', '2010-05-03 13:33:16', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '20', '0', '2', '', '', '0', '23', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('121', 'KINH PHÒNG BẠI ĐỘC TÁN (Nhiếp sinh chứng diệu phương)', 'kinh-phong-bi-c-tan-nhip-sinh-chng-diu-phng', '', '<p><strong> \r\n', '\r\nThành phần:</strong></em><br /><br />Kinh giới       12g<br /><br />Độc hoạt       12g<br /><br />Khương hoạt 12g - 30g<br /><br />Sài hồ           12g<br /><br />Xuyên khung   8g<br /><br />Tiền hồ           8g<br /><br />Kiết cánh        8g<br /><br />Chỉ xác           8g<br /><br />Phục linh      12g<br /><br />Cam thảo       4g</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"images/stories/tintucsukien/caythuoc/kinhgioi.jpg\" border=\"0\" alt=\"Kinh giới\" /></p>\r\n<p style=\"text-align: center;\"><em>Kinh giới</em></p>\r\n<p> </p>\r\n<p><em><strong>Cách dùng:</strong></em> Nguyên là bài thuốc tán, mỗi lần uống 5 - 20g thêm Gừng tươi 3 - 5 lát, Bạc hà 4g sắc uống chia uống 2 lần trong ngày.<br /><br />Bài thuốc có thể dùng dạng thuốc thang sắc uống.<br /><br /><em><strong>Tác dụng:</strong></em> Phát tán, phong hàn, giải nhiệt, chỉ thống. <br /><br />Chữa bệnh ngoại cảm, chứng biểu hàn.<br /><br /><em><strong>Giải thích bài thuốc:</strong></em><br /><br />Khương hoạt, Kinh giới, Phòng phong: tác dụng tân ôn, giải biểu, phát tán phong hàn. <br />Độc hoạt: ôn thông kinh lạc. <br />Xuyên khung: hoạt huyết khu phong chữa đau đầu, nhức cơ bắp. <br />Sài hồ: giải cơ thanh nhiệt. <br />Bạc hà: sơ tán phong nhiệt. <br />Tiền hồ, Kiết cánh: thanh tuyên phế khí. <br />Chỉ xác: khoan trung lý khí. <br />Phục linh lợi thấp.</p>\r\n<p><br /><em><strong>Ứng dụng lâm sàng:</strong></em><br /><br />1.     Đối chứng biểu hàn trong các bệnh cảm viêm đường hô hấp trên có thể dùng cả bài không cần dùng gia giảm có kết quả tốt. <br /><br />2.     Nếu ngoại cảm biểu hàn mà cơ bắp đau không rõ rệt bớt Độc hoạt. <br /><br />3.     Nếu biểu hàn kiêm lý nhiệt rõ như họng sưng đau, đỏ, đầu lưỡi đỏ, miệng khô thì bỏ Độc hoạt, Xuyên khung thêm Kim ngân hoa, Liên kiều, Ngưu bàng tử, Lô căn, Trúc diệp để thanh nhiệt giải biểu. <br /><br />4.     Đối với trẻ em cảm viêm đường hô hấp trên, sốt cao có thể thêm Thuyền thoái, Câu đằng, Chu sa, Đăng tâm.<br /><br /></p>', '1', '3', '0', '279', '2010-05-03 14:07:25', '62', '', '2010-05-03 14:17:26', '62', '62', '2010-05-04 07:07:46', '2010-05-03 14:07:25', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=bài thuốc tân ôn giải biểu\nbt_pltb=nội khoa\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '4', '0', '1', '', '', '0', '2', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('122', 'Bệnh Viện Y Học Cổ Truyền Tuệ Tĩnh', 'bnh-vin-y-hc-c-truyn-tu-tnh', '', '<p><img src=\"images/stories/anhbenhvien/logotuetinh.jpg\" border=\"0\" width=\"166\" height=\"169\" /></p>\r\n<p> </p>\r\n', '\r\n<p> </p>\r\n<p>Là một đơn vị thuộc Học viện Y Dược học cổ truyền Việt Nam và chịu sự quản lý, lãnh chỉ đạo trực tiếp của Bộ Y tế. Trong những năm qua, Bệnh viện Tuệ Tĩnh đã khẳng định được vị trí cũng như vai trò của mình trong công tác quản lý, cũng như khám chữa bệnh, chăm sóc sức khỏe cộng đồng.</p>\r\n<p style=\"text-align: justify;\">Kể từ khi thành lập tháng 5 năm 2006, mặc dù gặp rất nhiều khó khăn kể cả nhân lực và vật lực song với sự quyết tâm của ban lãnh đạo cùng sự chỉ đạo kịp thời của lãnh đạo Bộ bệnh viện Tuệ Tĩnh không ngừng phát triển để dần trở thành một trong những địa chỉ tin cậy của người bệnh trên cả nước<br /> <br />Giám đốc Học viện YDHCTVN kiêm Giám đốc Bệnh viện Tuệ Tĩnh- Trương Việt Bình được phong hàm Giáo sư tại Trung Quốc</p>\r\n<p style=\"text-align: justify;\">Với đội ngũ cán bộ gồm các Giáo sư, Phó giáo sư, Tiến sĩ cùng các phòng ban chức năng luôn quan tâm chỉ đạo cũng như hướng dẫn các cán bộ y bác sỹ thực hiện tốt nội quy và trách nhiệm của người thầy thuốc. Chính vì thế, chất lượng khám chữa bệnh được nâng cao và đạt được hiệu quả rõ rệt.Với số giường bệnh gần 160 giường đạt 92% so với yêu cầu đặt ra. Đã khám bệnh cho 122.440 lượt bệnh nhân, khám sức khỏe cho 1.200 lượt người. Riêng phòng thủ thuật của bệnh viện thực hiện vượt mức kế hoạch giao đạt 107,64%. Công tác điều trị cận Lâm sàng cũng đạt được những con số khả thi nhất là chỉ tiêu xét nghiệm đạt 196,8%. Các khoa lâm sàng và cận lâm sàng như khoa Nội, khoa Ung bướu, Châm cứu, Tai mũi họng, Răng hàm mặt…cũng đạt chỉ tiêu hiệu quả cao.Những con số nói trên có thể nói hết lên được những thành công ban đầu mà bệnh viên Tuệ Tĩnh đã đạt được trong những năm qua.<br /><br />Bên cạnh đó, công tác đào tạo cán bộ cũng được lãnh đạo bệnh viện quan tâm và đẩy mạnh ở các cấp cơ sở , với việc tổ chức đào tạo các lớp ngắn hạn cho cán bộ điều dưỡng ở các tỉnh xa như Quảng Bình, Thanh Hóa, Lào Cai..ở các tuyến công tác chỉ đạo khám chữa bệnh cũng được quan tâm, bệnh viện đã phối kết hợp với phòng đào tạo – Học viện Y dược học cổ truyền Việt Nam đi 20 tuyến xã ở Hà nội và các tỉnh lân cận, cùng với việc chuyển giao kỹ thuật, chương trình chăm sóc sức khỏe ban đầu cho một số xã như Vân Côn, Hoài Đức, Chương Mỹ (Hà Nội). Cùng với việc chuyển giao công nghệ trong chẩn đoán, điều trị và nghiên cứu khoa học.Thành công hơn cả là việc bệnh viện đã phối hợp cùng với học viện đào tạo liên kết với Thiên Tân – Trung Quốc nghiên cứu hợp tác song phương, tiếp thu những thành tựu lớn của y học. Đến nay, đã có nhiều đề tài nghiên cứu khoa học phục vụ cho công tác chuyên môn, đáng chú ý là việc bệnh viện đã thực hiện 1 đề tài cấp Bộ, nghiệm thu 18 đề tài cấp cơ sở và cũng đã đăng ký 11 đề tài nghiên cứu ở cấp này.<br /><br />Với phương châm phòng bệnh hơn chữa bệnh 100% toàn viện không hút thuốc lá, tổ chức tiêm phòng Vacxin Viêm gan B cho nhân viên các khoa lâm sàng, cận lâm sàng và phòng khám, thường xuyên tuyên truyền vệ sinh phòng bệnh và giáo dục sức khỏe cho các cán bộ công chức trong Học viện, bệnh viện , người bệnh và người nhà.<br />Bệnh viện Tuệ Tĩnh đang từng ngày khẳng định được vị thế của mình trong công cuộc xây dựng và phát triển nền y học cổ truyền theo hướng hiện đại hóa. Xứng đáng như chính tên gọi của Đại danh y Tuệ Tĩnh, Ông Tổ thuốc Nam, một vị thánh về nền y học cổ truyền của dân tộc. Bệnh viện Tuệ Tĩnh chính là nơi chắp cánh những niềm tin và hy vọng xứng đáng với sự tin yêu của những người bệnh trong công cuộc chăm sóc sức khỏe cộng đồng.</p>\r\n<p> </p>\r\n<p style=\"text-align: center;\"><img src=\"http://www.vatm.edu.vn/data/dulieuanh/anhhocvien/DSC01511.JPG\" border=\"0\" width=\"400\" height=\"300\" /></p>\r\n<p style=\"text-align: center;\"><em>Ban giám đốc nhận bằng khen của Bộ Y Tế</em></p>', '1', '4', '0', '17', '2010-05-03 14:16:26', '62', '', '2010-05-03 14:41:35', '62', '0', '0000-00-00 00:00:00', '2010-05-03 14:16:26', '0000-00-00 00:00:00', '', '', 'tkh=\nthv=\nhtvvn=\nhtvkh=\nkvlt=\ndvlt=\nbpd=\ntphh=\npltb=\ntcdy=\nbt_tcdy=\nbt_pltb=\nt_dbc=\nt_ndt=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_edit_icon=\nlanguage=\nkeyref=\nreadmore=', '6', '0', '1', '', '', '0', '4', 'robots=\nauthor=');

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
INSERT INTO `jos_content_frontpage` VALUES ('94', '15');
INSERT INTO `jos_content_frontpage` VALUES ('78', '21');
INSERT INTO `jos_content_frontpage` VALUES ('4', '26');
INSERT INTO `jos_content_frontpage` VALUES ('62', '20');
INSERT INTO `jos_content_frontpage` VALUES ('87', '10');
INSERT INTO `jos_content_frontpage` VALUES ('19', '22');
INSERT INTO `jos_content_frontpage` VALUES ('86', '24');
INSERT INTO `jos_content_frontpage` VALUES ('18', '25');
INSERT INTO `jos_content_frontpage` VALUES ('88', '19');
INSERT INTO `jos_content_frontpage` VALUES ('15', '23');
INSERT INTO `jos_content_frontpage` VALUES ('111', '8');
INSERT INTO `jos_content_frontpage` VALUES ('110', '9');
INSERT INTO `jos_content_frontpage` VALUES ('119', '4');
INSERT INTO `jos_content_frontpage` VALUES ('120', '2');
INSERT INTO `jos_content_frontpage` VALUES ('115', '7');
INSERT INTO `jos_content_frontpage` VALUES ('89', '18');
INSERT INTO `jos_content_frontpage` VALUES ('97', '12');
INSERT INTO `jos_content_frontpage` VALUES ('93', '13');
INSERT INTO `jos_content_frontpage` VALUES ('95', '14');
INSERT INTO `jos_content_frontpage` VALUES ('91', '16');
INSERT INTO `jos_content_frontpage` VALUES ('92', '17');
INSERT INTO `jos_content_frontpage` VALUES ('117', '6');
INSERT INTO `jos_content_frontpage` VALUES ('100', '11');
INSERT INTO `jos_content_frontpage` VALUES ('121', '3');
INSERT INTO `jos_content_frontpage` VALUES ('118', '5');
INSERT INTO `jos_content_frontpage` VALUES ('122', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_core_acl_aro
-- ----------------------------
INSERT INTO `jos_core_acl_aro` VALUES ('10', 'users', '62', '0', 'Administrator', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('11', 'users', '64', '0', 'long', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('12', 'users', '65', '0', 'theeyes26', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('13', 'users', '66', '0', 'Vũ Hoài Nam', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('14', 'users', '67', '0', 'Tuan', '0');
INSERT INTO `jos_core_acl_aro` VALUES ('15', 'users', '68', '0', 'Phuong', '0');

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
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('18', '', '13');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('18', '', '14');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('18', '', '15');
INSERT INTO `jos_core_acl_groups_aro_map` VALUES ('25', '', '10');

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
INSERT INTO `jos_core_log_searches` VALUES ('việt nam', '54');
INSERT INTO `jos_core_log_searches` VALUES ('a', '1');
INSERT INTO `jos_core_log_searches` VALUES ('loại', '1');
INSERT INTO `jos_core_log_searches` VALUES ('fsdfsf', '1');
INSERT INTO `jos_core_log_searches` VALUES ('vietnam', '15');
INSERT INTO `jos_core_log_searches` VALUES ('viet', '4');
INSERT INTO `jos_core_log_searches` VALUES ('Nga ra mắt tàu chiến tàng hình', '5');
INSERT INTO `jos_core_log_searches` VALUES ('Nga', '2');
INSERT INTO `jos_core_log_searches` VALUES ('actiso', '1');
INSERT INTO `jos_core_log_searches` VALUES ('thuốc', '1');
INSERT INTO `jos_core_log_searches` VALUES ('lo hoi', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_menu
-- ----------------------------
INSERT INTO `jos_menu` VALUES ('40', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=category&layout=blog&id=6', 'component', '-2', '0', '20', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('2', 'topmenu', 'Trang chủ', 'trang-chu', 'index.php?option=com_content&view=frontpage', 'component', '1', '0', '20', '0', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=10\norderby_pri=\norderby_sec=front\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=1\nlink_section=1\nshow_category=1\nlink_category=1\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '1');
INSERT INTO `jos_menu` VALUES ('3', 'topmenu', 'Thuốc đông dược', 'thuoc-dong-duoc', 'index.php?option=com_content&view=section&id=4', 'component', '1', '0', '20', '0', '7', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=1\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('4', 'topmenu', 'Cây thuốc - Vị thuốc', 'cay-thuoc-vi-thuoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2', 'url', '1', '0', '0', '0', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('68', 'caythuoc-vithuoc', 'Họ thực vật khoa học', 'ho-thuc-vat-khoa-hoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=htvkh&Itemid=18', 'url', '1', '0', '0', '0', '12', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('65', 'caythuoc-vithuoc', 'Tên Việt Nam', 'ten-viet-nam', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=tvn&Itemid=15', 'url', '1', '0', '0', '0', '7', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
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
INSERT INTO `jos_menu` VALUES ('74', 'gianhang', 'Gian Hàng', 'gian-hang', '', 'url', '1', '0', '0', '0', '1', '62', '2010-04-24 09:15:09', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('48', 'caythuoc-vithuoc', 'Theo tên Hán Việt', 'theo-ten-han-viet', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=thv&Itemid=4', 'url', '1', '0', '0', '0', '17', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('49', 'caythuoc-vithuoc', 'Bộ phận dùng', 'bo-phan-dung', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', '-2', '0', '20', '0', '6', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('50', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '8', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('51', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '24', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('52', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '23', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('53', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '22', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('54', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '19', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('55', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '15', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('56', 'caythuoc-vithuoc', 'Theo tính chất đông y', 'theo-tinh-chat-dong-y', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=tcdy&Itemid=4', 'url', '1', '0', '0', '0', '18', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('57', 'caythuoc-vithuoc', 'Phân loại theo bệnh', 'phan-loai-theo-benh', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=pltb&Itemid=4', 'url', '1', '0', '0', '0', '16', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('58', 'topmenu', 'Liên hệ', 'lien-h', 'index.php?option=com_contact&view=contact&id=1', 'component', '0', '0', '7', '0', '11', '62', '2010-04-01 09:52:02', '0', '0', '0', '0', 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('59', 'footermenu', 'Email cho chúng tôi.', 'email-cho-chung-toi', 'index.php?option=com_contact&view=contact&id=1', 'component', '1', '0', '7', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('60', 'footermenu', 'Liên hệ quảng cáo', 'lien-h-qung-cao', 'index.php?option=com_contact&view=contact&id=2', 'component', '1', '0', '7', '0', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('71', 'baithuoc', 'Bài thuốc theo tên', 'bai-thuoc-theo-ten', 'index.php?option=com_content&view=section&id=3&filter=tvn&Itemid=21', 'url', '1', '0', '0', '0', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('61', 'baithuoc', 'Bài thuốc theo tên', 'bai-thuoc-theo-ten', 'index.php?option=com_content&view=category&layout=blog&id=12', 'component', '-2', '0', '20', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('62', 'baithuoc', 'Phân loại theo tính chất đông y', 'phan-loai-theo-tinh-chat-dong-y', 'index.php?option=com_content&view=category&layout=blog&id=13', 'component', '-2', '0', '20', '0', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('63', 'baithuoc', 'Phân loại theo bệnh', 'phan-loai-theo-benh', 'index.php?option=com_content&view=category&layout=blog&id=14', 'component', '-2', '0', '20', '0', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('75', 'topmenu', 'Phân loại theo bệnh', 'phan-loai-theo-benh', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2&filter=pltb', 'url', '1', '4', '0', '1', '7', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_menu_types
-- ----------------------------
INSERT INTO `jos_menu_types` VALUES ('3', 'caythuoc-vithuoc', 'Cây Thuốc Vị Thuốc', 'Menu  Bên Trái');
INSERT INTO `jos_menu_types` VALUES ('2', 'topmenu', 'Top Menu', 'Top Menu');
INSERT INTO `jos_menu_types` VALUES ('4', 'footermenu', 'Footer Menu', 'Footer menu');
INSERT INTO `jos_menu_types` VALUES ('5', 'baithuoc', 'Bài thuốc', 'Bài thuốc');
INSERT INTO `jos_menu_types` VALUES ('6', 'gianhang', 'Gian Hàng', 'Gian Hàng');

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
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

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
INSERT INTO `jos_modules` VALUES ('16', 'Banner - Trang chủ - giữa', '', '1', 'user1', '62', '2010-04-27 03:35:21', '0', 'mod_banners', '0', '0', '0', 'target=1\ncount=1\ncid=1\ncatid=24\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('18', 'Cây Thuốc Vị Thuốc', '', '2', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_mainmenu', '0', '0', '1', 'menutype=caythuoc-vithuoc\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=1\nmoduleclass_sfx=-a\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('44', 'Sản phẩm nổi bật', '', '2', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=999\ncatid=294\nsecid=9\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('45', 'Giới thiệu gian hàng', '', '5', 'left', '0', '0000-00-00 00:00:00', '0', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=7\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('27', 'Hỗ trợ trực tuyến', '', '9', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_jodev_ymcustomimage', '0', '0', '1', 'cache=0\nmoduleclass_sfx=-a\nyahooid=gio_doi.chieu\nstyle=1\nyahooimage=7\ncustomimage=0\nimage_online=modules/jodev_ymcustomimage/customonline0.gif\nimage_offline=modules/jodev_ymcustomimage/customoffline0.gif\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('23', 'Vinaora Visitors Counter', '', '7', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_vvisit_counter', '0', '0', '0', 'moduleclass_sfx=-deleted\nmode=custom\ninitialvalue=0\ndigit_type=0\nnumber_digits=6\nstats_type=0\nwidthtable=90\ntoday=0\nyesterday=0\nweek=0\nlweek=0\nmonth=0\nlmonth=0\nall=All days\nautohide=1\nhrline=1\nbeginday=\nonline=We have\nguestip=Your IP\nguestinfo=Yes\nformattime=Today: %b %d, %Y\nissunday=1\ncache_time=15\npretext=\nposttext=\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('28', 'Footer', '', '1', 'footer', '0', '0000-00-00 00:00:00', '1', 'mod_footer', '0', '0', '0', 'cache=1\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('29', 'Tìm kiếm', '', '1', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_search', '0', '0', '0', 'moduleclass_sfx=-d\nwidth=20\ntext=\nbutton=1\nbutton_pos=right\nimagebutton=1\nbutton_text=\nset_itemid=\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('32', 'Đăng nhập', '', '6', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_login', '0', '0', '0', 'cache=0\nmoduleclass_sfx=-d\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('33', 'Ảnh ngẫu nhiên', '', '7', 'right', '62', '2010-04-29 01:54:35', '1', 'mod_random_image', '0', '0', '1', 'type=jpg\nfolder=images/random_images/\nlink=http://voz.vn\nwidth=170px\nheight=\nmoduleclass_sfx=-b\ncache=0\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('34', 'footer menu', '', '3', 'left', '0', '0000-00-00 00:00:00', '0', 'mod_mainmenu', '0', '0', '1', 'menutype=footermenu', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('35', 'Liên kết website', '', '8', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_allweblinks', '0', '0', '1', 'Lcatids=1\nLexclude=1\nLCorder=a.catid\nLshowheader=1\nLshownumlnk=1\nLshowcdes=0\nLdropdown=1\nLcaticons=\nLcaticonh=\nLorder=date DESC\nLicon=-1\nLlengthoftitle=23\nLdotaddlenght=20\nLtitlepopuptxt=\nLshowhits=0\nLshownew=0\nLdaysnew=3\nLtxtnew=*\nLshowldes=0\nLpopuplinks=1\nmoduleclass_sfx=-a\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('49', 'Đăng nhập', '', '1', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_login', '0', '0', '0', 'cache=0\nmoduleclass_sfx=-d\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('41', 'Tin tức nổi bật', '', '3', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=1\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('42', 'Cây thuốc quý', '', '4', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=2\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('43', 'Bài thuốc hay', '', '5', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=3\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('39', 'Bài viết có liên quan', '', '1', 'user2', '0', '0000-00-00 00:00:00', '0', 'mod_related_items', '0', '0', '0', 'showDate=0\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('50', 'Nhóm thuốc', '', '0', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_nhomthuoc', '0', '0', '1', 'moduleclass_sfx=-a\nItemid=74\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('47', 'Giới Thiệu Gian Hàng', '', '6', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_store', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\nItemid=74\nsecid=7\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('40', 'Bài Thuốc', '', '4', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_mainmenu', '0', '0', '1', 'menutype=baithuoc\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=-\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=1\nmoduleclass_sfx=-a\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('51', 'Slide show images on FrontPage', '', '0', 'user1', '0', '0000-00-00 00:00:00', '1', 'mod_ccslideshow', '0', '0', '0', 'moduleclass_sfx=\npath=images/slideshow_home/\nimages=cangua.jpg\\nnhansam.jpg\\nherbalsupplements-01.jpg\\nnaturalwesternmedicine.jpg\\nhoi.jpg\\nNamlinhchi.jpg\\nque.jpg\\nhaiquy.jpg\\nsaobien.jpg\\nhoahoe.jpg\\n\ncaptions=\nlinks=\nwidth=550\nheight=300\nbackgroundColor=0xF0FAF1\nloops=0\nwait=3000\neffectTime=1\nincludeEffects=\nexcludeEffects=\nstopOnMouseOver=yes\nenableLinks=no\nlink=\nlinkTarget=_blank\norder=forward\nslides=0\nborderStyle=none\nborderColor=0x000000\nborderThickness=1\nborderAlpha=1.0\ncaptionStyle=none\ncaptionType=text\ncaptionBackgroundColor=0x000000\ncaptionColor=0xFFFFFF\ncaptionText=\ncaptionTextRightMargin=0\ncaptionTextLeftMargin=0\ncaptionTextBottomMargin=5\ncaptionTextFont=Times New Roman\ncaptionTextFontSize=12\ncaptionBackgroundAlpha=1.0\ncaptionPosition=top\ncaptionHorizontalOffset=0\ncaptionVerticalOffset=0\ncaptionImage=\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('52', 'Banner - trên cùng', '', '0', 'top', '62', '2010-04-29 01:55:05', '1', 'mod_ccslideshow', '0', '0', '0', 'moduleclass_sfx=\npath=images/slideshow_home/\nimages=logoi500x72.jpg\\nlohoi500x72to.jpg\ncaptions=\nlinks=\nwidth=500\nheight=70\nbackgroundColor=0xFFFFFF\nloops=0\nwait=3000\neffectTime=1\nincludeEffects=\nexcludeEffects=\nstopOnMouseOver=no\nenableLinks=no\nlink=\nlinkTarget=_blank\norder=forward\nslides=0\nborderStyle=none\nborderColor=0x000000\nborderThickness=1\nborderAlpha=1.0\ncaptionStyle=none\ncaptionType=text\ncaptionBackgroundColor=0x000000\ncaptionColor=0xFFFFFF\ncaptionText=\ncaptionTextRightMargin=0\ncaptionTextLeftMargin=0\ncaptionTextBottomMargin=5\ncaptionTextFont=Times New Roman\ncaptionTextFontSize=12\ncaptionBackgroundAlpha=1.0\ncaptionPosition=top\ncaptionHorizontalOffset=0\ncaptionVerticalOffset=0\ncaptionImage=\n\n', '0', '0', '');

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
INSERT INTO `jos_modules_menu` VALUES ('18', '6');
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
INSERT INTO `jos_modules_menu` VALUES ('18', '37');
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
INSERT INTO `jos_modules_menu` VALUES ('32', '37');
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
INSERT INTO `jos_modules_menu` VALUES ('35', '37');
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
INSERT INTO `jos_modules_menu` VALUES ('40', '6');
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
INSERT INTO `jos_modules_menu` VALUES ('40', '37');
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
INSERT INTO `jos_modules_menu` VALUES ('42', '40');
INSERT INTO `jos_modules_menu` VALUES ('42', '41');
INSERT INTO `jos_modules_menu` VALUES ('42', '42');
INSERT INTO `jos_modules_menu` VALUES ('42', '43');
INSERT INTO `jos_modules_menu` VALUES ('42', '44');
INSERT INTO `jos_modules_menu` VALUES ('42', '46');
INSERT INTO `jos_modules_menu` VALUES ('42', '47');
INSERT INTO `jos_modules_menu` VALUES ('42', '48');
INSERT INTO `jos_modules_menu` VALUES ('42', '49');
INSERT INTO `jos_modules_menu` VALUES ('42', '56');
INSERT INTO `jos_modules_menu` VALUES ('42', '57');
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
INSERT INTO `jos_modules_menu` VALUES ('47', '37');
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
INSERT INTO `jos_modules_menu` VALUES ('49', '74');
INSERT INTO `jos_modules_menu` VALUES ('50', '74');
INSERT INTO `jos_modules_menu` VALUES ('51', '2');
INSERT INTO `jos_modules_menu` VALUES ('52', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

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
INSERT INTO `jos_plugins` VALUES ('43', 'JUMultithumb', 'jumultithumb', 'content', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', 'menus_hide=\nresall=1\nsecimg=0\nquality=90\nf_width=130\nf_height=90\nf_cropzoom=1\nb_width=130\nb_height=90\nb_cropzoom=1\nnoresize=1\nwidth=160\nheight=160\ncropzoom=0\nmaxsize_orig=0\nmaxwidth=500\nmaxheight=500\nmenu_item1=\nnoresizenew1=0\nwidthnew1=160\nheightnew1=160\ncropzoomnew1=0\nmaxsize_orignew1=0\nmaxwidthnew1=800\nmaxheightnew1=500\nb_widthnew1=160\nb_heightnew1=160\nb_cropzoomnew1=0\nmenu_item2=\nnoresizenew2=0\nwidthnew2=160\nheightnew2=160\ncropzoomnew2=0\nmaxsize_orignew2=0\nmaxwidthnew2=800\nmaxheightnew2=500\nb_widthnew2=160\nb_heightnew2=160\nb_cropzoomnew2=0\nmenu_item3=\nnoresizenew3=0\nwidthnew3=160\nheightnew3=160\ncropzoomnew3=0\nmaxsize_orignew3=0\nmaxwidthnew3=800\nmaxheightnew3=500\nb_widthnew3=160\nb_heightnew3=160\nb_cropzoomnew3=0\nmenu_item4=\nnoresizenew4=0\nwidthnew4=160\nheightnew4=160\ncropzoomnew4=0\nmaxsize_orignew4=0\nmaxwidthnew4=800\nmaxheightnew4=500\nb_widthnew4=160\nb_heightnew4=160\nb_cropzoomnew4=0\nmenu_item5=\nnoresizenew5=0\nwidthnew5=160\nheightnew5=160\ncropzoomnew5=0\nmaxsize_orignew5=0\nmaxwidthnew5=800\nmaxheightnew5=500\nb_widthnew5=160\nb_heightnew5=160\nb_cropzoomnew5=0\nmenu_item6=\nnoresizenew6=0\nwidthnew6=160\nheightnew6=160\ncropzoomnew6=0\nmaxsize_orignew6=0\nmaxwidthnew6=800\nmaxheightnew6=500\nb_widthnew6=160\nb_heightnew6=160\nb_cropzoomnew6=0\nmenu_item7=\nnoresizenew7=0\nwidthnew7=160\nheightnew7=160\ncropzoomnew7=0\nmaxsize_orignew7=0\nmaxwidthnew7=800\nmaxheightnew7=500\nb_widthnew7=160\nb_heightnew7=160\nb_cropzoomnew7=0\nmenu_item8=\nnoresizenew8=0\nwidthnew8=160\nheightnew8=160\ncropzoomnew8=0\nmaxsize_orignew8=0\nmaxwidthnew8=800\nmaxheightnew8=500\nb_widthnew8=160\nb_heightnew8=160\nb_cropzoomnew8=0\nmenu_item9=\nnoresizenew9=0\nwidthnew9=160\nheightnew9=160\ncropzoomnew9=0\nmaxsize_orignew9=0\nmaxwidthnew9=800\nmaxheightnew9=500\nb_widthnew9=160\nb_heightnew9=160\nb_cropzoomnew9=0\nmenu_item10=\nnoresizenew10=0\nwidthnew10=160\nheightnew10=160\ncropzoomnew10=0\nmaxsize_orignew10=0\nmaxwidthnew10=800\nmaxheightnew10=500\nb_widthnew10=160\nb_heightnew10=160\nb_cropzoomnew10=0\na_watermark=1\nwmposition=bottomright\nuselightbox=0\njujq=0\nselectlightbox=jqlightbox\nskinshadowbox=denys\njqlightboxparam=0\noverlayBgColor=#fff\noverlayOpacity=0.6\nimageLoading=\nimageBtnClose=\nimageBtnPrev=\nimageBtnNext=\ncontainerResizeSpeed=350\ntxtImage=Image\ntxtOf=of\n\n');
INSERT INTO `jos_plugins` VALUES ('44', 'Editor Button - AddAttachment', 'add_attachment', 'editors-xtd', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('45', 'Content - Attachments', 'attachments', 'content', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', '');

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
INSERT INTO `jos_sections` VALUES ('1', 'Tin Tức Sự Kiện', '', 'tin-tuc-su-kien', '', 'content', 'left', '', '1', '62', '2010-05-03 13:42:24', '1', '0', '6', '');
INSERT INTO `jos_sections` VALUES ('2', 'Cây Thuốc - Vị Thuốc', '', 'cay-thuoc-vi-thuoc', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '2', '0', '13', '');
INSERT INTO `jos_sections` VALUES ('3', 'Bài Thuốc', '', 'bai-thuoc', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '3', '0', '4', 'tpl=bai_thuoc\r\nfilters=com_filter_alpha,com_filter_bt_phanloaitheotinhchatdongy,com_filter_bt_phanloaitheobenh');
INSERT INTO `jos_sections` VALUES ('4', 'Thuốc Đông Dược', '', 'thuoc-dong-duoc', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '4', '0', '6', 'tpl=thuoc_dong_duoc');
INSERT INTO `jos_sections` VALUES ('5', 'Thư Viện', '', 'thu-vien', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '5', '0', '4', '');
INSERT INTO `jos_sections` VALUES ('6', 'Thông báo', '', 'thong-bao', '', 'content', 'left', '', '1', '62', '2010-04-23 14:55:07', '6', '0', '1', '');
INSERT INTO `jos_sections` VALUES ('7', 'Gian hàng', '', 'gian-hang', '', 'content', 'left', '', '1', '62', '2010-04-24 09:07:23', '7', '0', '47', 'tpl=gian_hang\r\nItemid=74');
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
INSERT INTO `jos_session` VALUES ('', '1272945069', '47a87165905f0e7288b9c972841c4e90', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1272945069;s:18:\"session.timer.last\";i:1272945069;s:17:\"session.timer.now\";i:1272945069;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"c910ae1cf91aa24dc21ecd34b142bede\";}');
INSERT INTO `jos_session` VALUES ('', '1272946101', '1b85202f0a91a43609801d947259c319', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:28;s:19:\"session.timer.start\";i:1272945079;s:18:\"session.timer.last\";i:1272946092;s:17:\"session.timer.now\";i:1272946101;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"ea1655464f02dea5eb608e0145f9258e\";}');
INSERT INTO `jos_session` VALUES ('', '1272944495', '39d01010794226eb0fc265ea4b38d715', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1272944439;s:18:\"session.timer.last\";i:1272944439;s:17:\"session.timer.now\";i:1272944495;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"defa53618e150036e831ac499fbe8fcb\";}');
INSERT INTO `jos_session` VALUES ('', '1272946944', 'a72a5e566f463eb8e4f8af05d9af3e6c', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1272941265;s:18:\"session.timer.last\";i:1272941265;s:17:\"session.timer.now\";i:1272946944;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"06bfb3eca3e419b3f753fd7e114d3b02\";}');
INSERT INTO `jos_session` VALUES ('', '1272895013', 'ea0c6d1735da5bb60f7f4ea93a8e805d', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1272895013;s:18:\"session.timer.last\";i:1272895013;s:17:\"session.timer.now\";i:1272895013;s:22:\"session.client.browser\";s:95:\"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 2.0.50727; InfoPath.2)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"36e72e55b817e1c8ce932e3e9705e015\";}');
INSERT INTO `jos_session` VALUES ('', '1272941511', '6bc526454f899f41a3e33e034af0a21d', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:8;s:19:\"session.timer.start\";i:1272938000;s:18:\"session.timer.last\";i:1272941509;s:17:\"session.timer.now\";i:1272941511;s:22:\"session.client.browser\";s:62:\"Opera/9.80 (Windows NT 6.1; U; en) Presto/2.5.24 Version/10.53\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"3b8d3fa6d6cfd053469f83683bf8c8ef\";}');
INSERT INTO `jos_session` VALUES ('', '1272900507', '0bac7a0788a50fb265007fdf699217a4', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:65;s:19:\"session.timer.start\";i:1272893022;s:18:\"session.timer.last\";i:1272899240;s:17:\"session.timer.now\";i:1272900507;s:22:\"session.client.browser\";s:94:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.3) Gecko/20090824 YFF35 Firefox/3.5.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"aa4034e65feaebe5befdcf1d1166c083\";}');
INSERT INTO `jos_session` VALUES ('', '1272943859', '4530ce5478906519ba3fa452efadbbd4', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:477;s:19:\"session.timer.start\";i:1272805548;s:18:\"session.timer.last\";i:1272943687;s:17:\"session.timer.now\";i:1272943859;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"1736d1daa9822c80995be722cce28342\";}');
INSERT INTO `jos_session` VALUES ('admin', '1272906794', '80ba9d5d7f472c8df723098912c0d588', '0', '62', 'Super Administrator', '25', '1', '__default|a:8:{s:15:\"session.counter\";i:663;s:19:\"session.timer.start\";i:1272805657;s:18:\"session.timer.last\";i:1272906199;s:17:\"session.timer.now\";i:1272906794;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:4:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}s:11:\"com_content\";a:1:{s:4:\"data\";O:8:\"stdClass\":8:{s:23:\"viewcontentfilter_order\";s:12:\"section_name\";s:27:\"viewcontentfilter_order_Dir\";s:0:\"\";s:23:\"viewcontentfilter_state\";s:0:\"\";s:16:\"viewcontentcatid\";s:1:\"4\";s:26:\"viewcontentfilter_authorid\";i:0;s:27:\"viewcontentfilter_sectionid\";s:1:\"1\";s:17:\"viewcontentsearch\";s:0:\"\";s:21:\"viewcontentlimitstart\";i:0;}}s:6:\"global\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";s:2:\"20\";}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"longdt@live.com\";s:8:\"password\";s:65:\"cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2010-03-29 14:58:13\";s:13:\"lastvisitDate\";s:19:\"2010-05-01 17:16:51\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:0:\"\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"dd1bf4339065fa432231f9af22e7cdef\";}');
INSERT INTO `jos_session` VALUES ('admin', '1272897695', 'bcceb763cd00f38bfcad392d3b62759b', '0', '62', 'Super Administrator', '25', '1', '__default|a:8:{s:15:\"session.counter\";i:145;s:19:\"session.timer.start\";i:1272893321;s:18:\"session.timer.last\";i:1272897695;s:17:\"session.timer.now\";i:1272897695;s:22:\"session.client.browser\";s:94:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.3) Gecko/20090824 YFF35 Firefox/3.5.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:4:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}s:11:\"com_content\";a:1:{s:4:\"data\";O:8:\"stdClass\":8:{s:23:\"viewcontentfilter_order\";s:12:\"section_name\";s:27:\"viewcontentfilter_order_Dir\";s:0:\"\";s:23:\"viewcontentfilter_state\";s:0:\"\";s:16:\"viewcontentcatid\";i:0;s:26:\"viewcontentfilter_authorid\";i:0;s:27:\"viewcontentfilter_sectionid\";s:1:\"4\";s:17:\"viewcontentsearch\";s:0:\"\";s:21:\"viewcontentlimitstart\";i:0;}}s:6:\"global\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";s:2:\"20\";}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"longdt@live.com\";s:8:\"password\";s:65:\"cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2010-03-29 14:58:13\";s:13:\"lastvisitDate\";s:19:\"2010-05-03 05:17:16\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:0:\"\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"37779813760044cce19bdf5fc7ec057c\";}');
INSERT INTO `jos_session` VALUES ('', '1272904172', '5f5d2c46979b9bb218b079b27f22447b', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1272904165;s:18:\"session.timer.last\";i:1272904165;s:17:\"session.timer.now\";i:1272904172;s:22:\"session.client.browser\";s:95:\"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; GTB6.4; .NET CLR 2.0.50727; InfoPath.2)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"b316a446d99debb8ef82bb17092334f5\";}');
INSERT INTO `jos_session` VALUES ('', '1272956721', 'd67413eee63611225cf09b3304c861b3', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1272956721;s:18:\"session.timer.last\";i:1272956721;s:17:\"session.timer.now\";i:1272956721;s:22:\"session.client.browser\";s:62:\"Opera/9.80 (Windows NT 6.1; U; en) Presto/2.5.24 Version/10.53\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"224f7cf8efd4dd8cd1b480088f29fb48\";}');
INSERT INTO `jos_session` VALUES ('', '1272956815', '6be30fa4e1ea438ef190a452cc564783', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1272956766;s:18:\"session.timer.last\";i:1272956766;s:17:\"session.timer.now\";i:1272956815;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"d35a87d36f1c4baddb1d09c438f2f9eb\";}');
INSERT INTO `jos_session` VALUES ('', '1272896099', 'f3aa2118d6de6fcf083a52be0947fb2f', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1272895927;s:18:\"session.timer.last\";i:1272895927;s:17:\"session.timer.now\";i:1272896099;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"c3d776cc9e659f61881275abebbea604\";}');
INSERT INTO `jos_session` VALUES ('', '1272898183', 'dbaca9b873a6c76d00112a5976809d96', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:7;s:19:\"session.timer.start\";i:1272898110;s:18:\"session.timer.last\";i:1272898181;s:17:\"session.timer.now\";i:1272898183;s:22:\"session.client.browser\";s:50:\"Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:2:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:10:\"com_search\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:5:\"limit\";s:2:\"20\";}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"ce4b0056746b342e522895873a46e9b6\";}');
INSERT INTO `jos_session` VALUES ('admin', '1272939596', 'f6919aef5c6cb84fa42d5db13af8bd40', '0', '62', 'Super Administrator', '25', '1', '__default|a:8:{s:15:\"session.counter\";i:5;s:19:\"session.timer.start\";i:1272938053;s:18:\"session.timer.last\";i:1272938133;s:17:\"session.timer.now\";i:1272939596;s:22:\"session.client.browser\";s:62:\"Opera/9.80 (Windows NT 6.1; U; en) Presto/2.5.24 Version/10.53\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:2:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"longdt@live.com\";s:8:\"password\";s:65:\"cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2010-03-29 14:58:13\";s:13:\"lastvisitDate\";s:19:\"2010-05-03 13:28:44\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:0:\"\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"5d7bcc1d2e0868c97207e0ec228a14df\";}');
INSERT INTO `jos_session` VALUES ('admin', '1272956866', '05bdd09e7c3d5ad6d5761129d6e5ab04', '0', '62', 'Super Administrator', '25', '1', '__default|a:8:{s:15:\"session.counter\";i:7;s:19:\"session.timer.start\";i:1272956841;s:18:\"session.timer.last\";i:1272956861;s:17:\"session.timer.now\";i:1272956866;s:22:\"session.client.browser\";s:62:\"Opera/9.80 (Windows NT 6.1; U; en) Presto/2.5.24 Version/10.53\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:2:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"longdt@live.com\";s:8:\"password\";s:65:\"cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2010-03-29 14:58:13\";s:13:\"lastvisitDate\";s:19:\"2010-05-04 01:54:56\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:0:\"\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"cdb237cb1cdcf5ff2c2f508ac5121158\";}');
INSERT INTO `jos_session` VALUES ('', '1272873709', '39b8fb93f0d87db6c7be6fe664ec8831', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1272873709;s:18:\"session.timer.last\";i:1272873709;s:17:\"session.timer.now\";i:1272873709;s:22:\"session.client.browser\";s:126:\"Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_4_11; en) AppleWebKit/531.21.8 (KHTML, like Gecko) Version/4.0.4 Safari/531.21.10\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"70b2c2fe948c1b54309a0ae8b5605214\";}');
INSERT INTO `jos_session` VALUES ('', '1272880452', '39c06b7d8c6781cb7b5cc39aa29ef9ca', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:8;s:19:\"session.timer.start\";i:1272880367;s:18:\"session.timer.last\";i:1272880448;s:17:\"session.timer.now\";i:1272880452;s:22:\"session.client.browser\";s:118:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/532.5 (KHTML, like Gecko) Chrome/4.1.249.1064 Safari/532.5\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:75:\"D:\\vhosts\\thuocdongduoc.vn\\httpdocs\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"3be2872ef65ca5884031cd776fb8fdb8\";}');
INSERT INTO `jos_session` VALUES ('longdt', '1272958902', '0ubdvu77c93k1c191mj1g7hs44', '0', '64', 'Registered', '18', '0', '__default|a:8:{s:15:\"session.counter\";i:49;s:19:\"session.timer.start\";i:1272956996;s:18:\"session.timer.last\";i:1272958896;s:17:\"session.timer.now\";i:1272958902;s:22:\"session.client.browser\";s:62:\"Opera/9.80 (Windows NT 6.1; U; en) Presto/2.5.24 Version/10.53\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"64\";s:4:\"name\";s:4:\"long\";s:8:\"username\";s:6:\"longdt\";s:5:\"email\";s:22:\"long.lh@catsoft.com.vn\";s:8:\"password\";s:65:\"239ec335699eca9ecc8d4ae5f63da215:3vznNFtyMNYQmP3S26XQ6O5mHQLDZlPi\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:10:\"Registered\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"0\";s:3:\"gid\";s:2:\"18\";s:12:\"registerDate\";s:19:\"2010-04-21 07:53:28\";s:13:\"lastvisitDate\";s:19:\"2010-04-21 08:04:54\";s:10:\"activation\";s:32:\"682e59bbfa044ac7c83e269cbecd9657\";s:6:\"params\";s:1:\"\n\";s:3:\"aid\";i:1;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"9430061b93f789da68ef2e3a6600d051\";}');
INSERT INTO `jos_session` VALUES ('', '1272957111', '10d2fdea196dbeafbf77ad462aa6c9bb', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1272957111;s:18:\"session.timer.last\";i:1272957111;s:17:\"session.timer.now\";i:1272957111;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"17ca58e7f32d1bb7b4237ed0750c3abe\";}');
INSERT INTO `jos_session` VALUES ('', '1272958433', '5ab0aafcf2496c337b2d7a347fba90bf', '1', '0', '', '0', '0', '__default|a:7:{s:15:\"session.counter\";i:6;s:19:\"session.timer.start\";i:1272957334;s:18:\"session.timer.last\";i:1272958301;s:17:\"session.timer.now\";i:1272958433;s:22:\"session.client.browser\";s:62:\"Opera/9.80 (Windows NT 6.1; U; en) Presto/2.5.24 Version/10.53\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}}');
INSERT INTO `jos_session` VALUES ('admin', '1272958771', 'amkp8vukb9eddhk5q155aqee33', '0', '62', 'Super Administrator', '25', '1', '__default|a:8:{s:15:\"session.counter\";i:23;s:19:\"session.timer.start\";i:1272958569;s:18:\"session.timer.last\";i:1272958771;s:17:\"session.timer.now\";i:1272958771;s:22:\"session.client.browser\";s:62:\"Opera/9.80 (Windows NT 6.1; U; en) Presto/2.5.24 Version/10.53\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:4:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}s:9:\"com_menus\";a:1:{s:4:\"data\";O:8:\"stdClass\":2:{s:8:\"menutype\";s:7:\"topmenu\";s:7:\"topmenu\";O:8:\"stdClass\":6:{s:12:\"filter_order\";s:10:\"m.ordering\";s:16:\"filter_order_Dir\";s:3:\"ASC\";s:12:\"filter_state\";s:0:\"\";s:10:\"limitstart\";i:0;s:10:\"levellimit\";s:2:\"10\";s:6:\"search\";s:0:\"\";}}}s:6:\"global\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:0;}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"longdt@live.com\";s:8:\"password\";s:65:\"cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2010-03-29 14:58:13\";s:13:\"lastvisitDate\";s:19:\"2010-05-04 07:07:26\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:0:\"\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"f21d786e5ffa90ca5807d57e9146f1ba\";}');

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
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_users
-- ----------------------------
INSERT INTO `jos_users` VALUES ('62', 'Administrator', 'admin', 'longdt@live.com', 'cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv', 'Super Administrator', '0', '1', '25', '2010-03-29 14:58:13', '2010-05-04 07:36:14', '', '');
INSERT INTO `jos_users` VALUES ('63', 'Phuong', 'phuong', 'phuongtrau2000@yahoo.com', '629ed1923330ac7734f538e414e0d8f8:7CGohLW8c58X9acAPrzgDrrq0cdQbpWm', 'Registered', '1', '0', '18', '2010-04-16 16:53:46', '0000-00-00 00:00:00', '1ed5abd13bedb8079ca07486c11d3169', '\n');
INSERT INTO `jos_users` VALUES ('64', 'long', 'longdt', 'long.lh@catsoft.com.vn', '239ec335699eca9ecc8d4ae5f63da215:3vznNFtyMNYQmP3S26XQ6O5mHQLDZlPi', 'Registered', '0', '0', '18', '2010-04-21 07:53:28', '2010-05-04 07:37:14', '682e59bbfa044ac7c83e269cbecd9657', '\n');
INSERT INTO `jos_users` VALUES ('65', 'theeyes26', 'theeyes26', 'a1k60.dkh@gmail.com', '25b863d056a60f9060898a420420b988:PgvvgvC9woqKvTfM0AkWxKCPfPpwwVNS', 'Registered', '0', '0', '18', '2010-04-23 06:11:03', '0000-00-00 00:00:00', 'c1ceeaf828ca0d915dcc8bd5f220e1a9', '\n');
INSERT INTO `jos_users` VALUES ('66', 'Vũ Hoài Nam', 'Bin', 'vuhoainampharma@gmail.com', 'e73f1eb5ba68113003e611d3403170f0:9jSohz4cFtZKC9JBEuYpgo7m2AFL1oIw', 'Registered', '0', '0', '18', '2010-04-26 16:55:48', '0000-00-00 00:00:00', 'fa6110f99a5ee32a5ba0db4276960a53', '\n');
INSERT INTO `jos_users` VALUES ('67', 'Tuan', 'leroi', 'tuandl50@yahoo.com', 'b6737c568aa87187b0dd5055fd849b1c:QZuPAJfDvntdoUKuJPKEBUWNXD4eL0Ll', 'Registered', '0', '0', '18', '2010-04-28 15:02:51', '2010-04-28 16:29:16', 'd9fc91b901f6cae77bb188158692d5cb', '\n');
INSERT INTO `jos_users` VALUES ('68', 'Phuong', 'thewarm', 'thewarm2000@gmail.com', 'b5aef3541dee4e4c878c65ed71adfeef:xGtD0XBqmiunSq1GurlgJo599RsVI44h', 'Registered', '0', '0', '18', '2010-04-28 15:13:06', '2010-05-02 04:45:29', '799cc8a041d9f46ba46a4d04413edfb1', '\n');

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
INSERT INTO `jos_weblinks` VALUES ('2', '27', '0', 'Voz Express', 'voz-express', 'http://voz.vn', '', '2010-04-01 09:59:09', '4', '1', '0', '0000-00-00 00:00:00', '2', '0', '1', 'target=1\n\n');
