/*
Navicat MySQL Data Transfer

Source Server         : Local
Source Server Version : 50136
Source Host           : localhost:3306
Source Database       : thuocdongduoc.vn

Target Server Type    : MYSQL
Target Server Version : 50136
File Encoding         : 65001

Date: 2010-04-08 10:57:40
*/

SET FOREIGN_KEY_CHECKS=0;
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
INSERT INTO `jos_banner` VALUES ('1', '1', '', 'Banner - Trang chủ - Center', 'banner-trang-ch-center', '0', '493', '0', '', '', '2010-03-30 02:08:40', '1', '0', '0000-00-00 00:00:00', '', '<img src=\"templates/thuocdocduoc/images/news&event_33.png\" />', '24', '', '0', '1', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0');

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
INSERT INTO `jos_bannerclient` VALUES ('1', 'Thuốc Đông Dược', 'Administrator', 'longdt@live.com', 'Banner quảng cáo của trang.', '0', '00:00:00', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_categories
-- ----------------------------
INSERT INTO `jos_categories` VALUES ('1', '0', 'Tin tức', '', 'tin-tuc', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('2', '0', 'Sử dụng thuốc', '', 'su-dung-thuoc', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('3', '0', 'Món ăn bài thuốc', '', 'mon-an-bai-thuoc', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('4', '0', 'Sức khỏe đời sống', '', 'suc-khoe-doi-song', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('5', '0', 'Thế giới ảnh', '', 'the-gioi-anh', '', '1', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('6', '0', 'Tên việt nam', '', 'ten-viet-nam', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('7', '0', 'Tên khoa học', '', 'ten-khoa-hoc', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('8', '0', 'Họ thực vật Việt Nam', '', 'ho-thuc-vat-viet-nam', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('9', '0', 'Họ thực vật khoa học', '', 'ho-thuc-vat-khoa-hoc', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('10', '0', 'Bộ phận dùng', '', 'bo-phan-dung', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('11', '0', 'Thành phần hóa học', '', 'thanh-phan-hoa-hoc', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '6', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('12', '0', 'Bài thuốc theo tên', '', 'bai-thuoc-theo-ten', '', '3', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('13', '0', 'Phân loại theo tính chất đông y', '', 'phan-loai-theo-tinh-chat-dong-y', '', '3', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '2', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('14', '0', 'Phân loại theo bệnh', '', 'phan-loai-theo-benh', '', '3', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '3', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('15', '0', 'Thuốc', '', 'thuoc', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '1', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('16', '0', 'Phòng khám Đông Y', '', 'phong-kham-dong-y', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '5', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('17', '0', 'Bệnh viên y học cổ truyền', '', 'benh-vien-y-hoc-co-truyen', '', '4', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '4', '0', '0', '');
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
INSERT INTO `jos_categories` VALUES ('28', '0', 'Phân loại theo tên hán việt', '', 'phan-loai-theo-ten-han-viet', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '7', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('29', '0', 'Phân loại theo bệnh', '', 'phan-loai-theo-benh', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '8', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('30', '0', 'Phân loại theo tính chất đông y', '', 'phan-loi-theo-tinh-chat-dong-y', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '9', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('31', '0', 'Động vật làm thuốc', '', 'dong-vat-lam-thuoc', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '10', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('32', '0', 'Khóang vật làm thuốc', '', 'khoang-vat-lam-thuoc', '', '2', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '11', '0', '0', '');
INSERT INTO `jos_categories` VALUES ('33', '0', 'Thông báo hệ thống', '', 'thong-bao-he-thong', '', '6', 'left', '', '1', '0', '0000-00-00 00:00:00', null, '6', '0', '0', '');

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
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

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
INSERT INTO `jos_components` VALUES ('19', 'Media Manager', '', '0', '0', 'option=com_media', 'Media Manager', 'com_media', '0', '', '1', 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', '1');
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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_content
-- ----------------------------
INSERT INTO `jos_content` VALUES ('1', 'Cậu bé có trái tim hình quả bầu', 'cu-be-co-trai-tim-hinh-qu-bu', '', '<p><span class=\"Apple-style-span\" style=\"border-collapse: separate; color: #000000; font-family: \'Times New Roman\'; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; font-size: medium;\"><span class=\"Apple-style-span\" style=\"color: #333333; font-family: Tahoma,Helvetica,Arial,sans-serif; font-size: 12px; line-height: 15px;\">Ho, tức ngực, thở mệt, được chẩn đoán ban đầu là nhiễm trùng huyết nhưng điều trị không khỏi, bé trai 7 tuổi đã được các bác sĩ Bệnh viện Nhi Đồng 1 xác định quả tim phình to dài do màng bọc bên ngoài tim bị viêm. \r\n', '\r\n</span></span></p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/4E/tim-1.jpg\" border=\"1\" width=\"250\" height=\"195\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Quả tim của bệnh nhân trên phim Xquang. Ảnh: <em>Bác  sĩ Minh Tiến.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Gia đình bệnh nhi cho hay, bé bị ho liên tục trong 4  ngày, sau đó than khó thở rồi nằm li bì và tím tái. Tại bệnh viện tỉnh  Bà Rịa, nghi ngờ bệnh nhi nhiễm trùng huyết, bác sĩ đã điều trị bằng  kháng sinh nhưng tình trạng bệnh không cải thiện. Bé được chuyển viện  tuyến trên.</p>\r\n<p class=\"Normal\">Tại Bệnh viện Nhi Đồng 1, TP HCM, các bác sĩ nghe  không rõ nhịp tim của bệnh nhân, bên cạnh đó, tĩnh mạch cổ nổi hằn trên  da. Nghi ngờ có liên quan đến bệnh lý về tim, bé được đưa đi chụp  X-quang. Kết quả cho thấy, tim có hình dạng dài và phình to như quả bầu.  Kết quả siêu âm tim cũng ghi nhận tình trạng có dịch tràn ở màng tim.  Bé được xác định bị viêm màng ngoài tim.</p>\r\n<p class=\"Normal\">Việc chọc hút và dẫn lưu màng ngoài tim được tiến hành  ngay sau đó. Gần nửa lít dịch vàng hồng được lấy ra, đây cũng là nguyên  nhân làm phù hình dạng tim như ghi nhận qua X-quang.</p>\r\n<p class=\"Normal\">Đến nay, sau hơn một tuần điều trị, tình trạng sức  khỏe của bệnh nhân đã dần cải thiện. Ống dẫn lưu màng ngoài tim cũng đã  được rút ra thành công mà không gây tai biến.</p>\r\n<p class=\"Normal\">Theo bác sĩ Nguyễn Minh Tiến, Phó khoa Hồi sức - cấp  cứu, Bệnh viện Nhi Đồng 1, viêm màng ngoài tim là bệnh lý hiếm gặp ở trẻ  em.</p>\r\n<p class=\"Normal\">Màng ngoài gồm hai lớp bao quanh tim để bảo vệ tim và  hỗ trợ chức năng co bóp cơ tim. Một nguyên nhân nào đó như nhiễm trùng,  do bệnh ác tính, sau chấn thương, phẫu thuật, nhồi máu cơ tim, dị ứng…  sẽ làm màng này bị sưng viêm. Dịch tiết trong quá trình viêm nằm ở màng  ngoài tim, gây đau tức ngực, khó thở, chèn ép tim, đưa đến tử vong nếu  không điều trị kịp thời.</p>', '1', '1', '0', '1', '2010-03-29 08:16:01', '62', '', '2010-03-29 08:17:05', '62', '0', '0000-00-00 00:00:00', '2010-03-29 08:16:01', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '3', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('2', 'Dầu ăn làm từ nước cống ', 'du-n-lam-t-nc-cng-', '', '<p>Những thùng dầu ăn nâu bóng hóa ra được tinh chế lại từ nước cống, nước  rác. Ước tính \"công nghệ\" đáng sợ này đã mang lại 1/10 số lượng dầu ăn  cho Trung Quốc, chủ yếu được các nhà hàng hoặc người bán rong sử dụng.\r\n', '\r\n<tr>\r\n<td align=\"middle\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/35/dau1.jpg\" border=\"1\" width=\"450\" height=\"325\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Những người đi vớt chuyên nghiệp sẽ mang xô chậu tới  gần cống, rãnh nước thải của các nhà hàng, quán ăn, quán cơm để múc lớp  bọt, váng dầu lẫn thức ăn thừa, mang về chế biến. Nguồn: <em>ChinaSmack.</em></td>\r\n</tr>\r\n<tr>\r\n<td align=\"middle\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/35/dau2.jpg\" border=\"1\" width=\"450\" height=\"482\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Trong những cái thùng, bể cáu bẩn thế này, nước thải  được đun nóng để dầu nhẹ lẫn thức ăn thừa nổi lên, lọc ra chắt riêng lấy  lớp chất nhầy bẩn. Nguồn: <em>ChinaSmack.</em></td>\r\n</tr>\r\n<tr>\r\n<td align=\"middle\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/35/dau4.jpg\" border=\"1\" width=\"450\" height=\"482\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"BreakLine\"><span style=\"color: #ffffff;\"> </span></td>\r\n</tr>\r\n<tr>\r\n<td align=\"middle\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/35/dau3.jpg\" border=\"1\" width=\"450\" height=\"508\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Dầu lọc thu được tiếp tục qua chắt lọc lần nữa, và đổ  vào thùng dự trữ, chuẩn bị xuất xưởng. Bề ngoài của chúng lúc này đã khá  bắt mắt. Hàng triệu tấn dầu bẩn như vậy đã quay trở lại bàn ăn của  người Trung Quốc. Nguồn: <em>ChinaSmack.</em></td>\r\n</tr>\r\n<tr>\r\n<td align=\"middle\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/35/dau5.jpg\" border=\"1\" width=\"400\" height=\"267\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Cơ quan chức năng kiểm tra dầu ăn bẩn được làm tại một  cơ sở thủ công. Vụ việc đang gây xôn xao dư luận nước này. Loại dầu này  không chỉ bẩn, mà còn chứa vô số chất độc hại và các chất có khả năng  gây ung thư. Ảnh: <em>CFP.</em></td>\r\n</tr>\r\n</p>', '1', '1', '0', '1', '2010-03-29 08:24:51', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-03-29 08:24:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('3', 'Dùng thuốc đông y không đơn giản như nhiều người vẫn nghĩ', 'dung-thuc-ong-y-khong-n-gin-nh-nhiu-ngi-vn-ngh', '', '<p><span><span style=\"font-family: Arial;\">Nhiều người cho rằng uống thuốc  Đông y không sợ phản ứng phụ vì thuốc chế biến từ thực vật (cây cỏ, hoa  trái) hoặc động vật có trong tự nhiên. Có người lại uống thuốc theo sự  mách bảo hoặc kinh nghiệm của người khác. </span></p>\r\n\r\n', '\r\n</em></p>\r\n<p> </p>\r\n<p> </p>\r\n<table style=\"border-collapse: collapse;\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<table style=\"border-collapse: collapse;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnmedia.vn/images_upload/small_136806.jpg\" border=\"0\" /></td>\r\n</tr>\r\n<tr>\r\n<td align=\"center\"><span style=\"font-family: Arial; font-size: xx-small;\">Bắt mạch cho bệnh  nhân</span></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<!-- DESCRIPTION --> <!-- Nhiều người cho rằng uống thuốc Đông y không sợ phản ứng phụ vì thuốc chế biến từ thực vật (cây cỏ, hoa trái) hoặc động vật có trong tự nhiên. Có người lại uống thuốc theo sự mách bảo hoặc kinh nghiệm của người khác. --> <!-- END DESCRIPTION --> <!-- BODY -->\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: small;\">Nhất là khi sử dụng thuốc bổ Đông y là dùng bạt mạng, nghĩ  rằng “không bổ âm cũng bổ dương” mà điển hình là dùng các thang thuốc bổ  ngâm rượu ai uống cũng “tốt”, nam nữ, già trẻ đều uống được... và rất  “bổ”. Nghĩ như thế, hiểu thế thật sai lầm và nguy hiểm.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\"><br />Trước hết dù là thảo dược hay động vật  hoặc sa khoáng trong tự nhiên nhưng trong các vị thuốc đều có thể gây  độc cho con người khi đưa vào cơ thể, vì bản thân chúng có chứa các chất  độc hại như: Ba đậu, ô đầu, mã tiền, ban miêu, bọ cạp, ngưu hoàng,  khinh phấn, chu sa, thần sa... Ngoài ra còn phải kể đến khi phối ngẫu  với nhau các vị thuốc nếu đứng một mình thì không độc hại, lại trở thành  độc hại do chúng phản nhau như lê lô với nhân sâm, huyền sâm hoặc chúng  kỵ nhau như nhân sâm với ngũ linh chi. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Theo y học cổ truyền, thuốc (dược vật) luôn tồn tại tứ khí  (tứ tính) là hàn, lương, ôn, nhiệt để nói lên mức độc nóng (nhiệt) lạnh  (hàn) của chúng. Còn bệnh tật của con người cũng được phân làm bệnh  nhiệt hay hàn và cơ địa con người cũng vậy thuộc nhiệt hay hàn. Về  nguyên lý chữa bệnh thì bệnh hoặc cơ địa nhiệt thì phải dùng thuốc có  tính hàn để lặp lại cân bằng âm dương và ngược lại. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Nếu dùng sai, dùng nhầm thì sẽ nguy hiểm cho người bệnh. Ví  như một người tỳ vị hư hàn (lạnh) mà cho uống nhâm sâm là một vị thuốc  bổ, quý hiếm nhưng có tính hàn thì bệnh chẳng khỏi, người chẳng khỏe lên  mà còn nguy hiểm. Chả thế mà y văn cổ có dặn: “phúc thống” (đau bụng),  phục (uống) nhâm sâm tắc tử. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Các bậc danh y ngày xưa đã tổng kết và căn dặn lại như một  nguyên lý bất di, bất dịch là “Nhiệt ngộ nhiệt tắc cuồng” (người có bệnh  nhiệt hoặc cơ địa nhiệt dùng thuốc nhiệt thì phát điên cuồng) “Hàn ngộ  hàn tắc tử” (người có bệnh hàn hoặc cơ địa hàn mà dùng thuốc hàn có thể  dẫn tới chết người). </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in  0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Một dẫn chứng  đơn giản nếu bị cảm mạo phong hàn thường sợ lạnh, không có mồ hôi, ngạt  mũi... thì phải dùng phép phát tán phong hàn (tân ôn giải biểu) tức phải  dùng các vị thuốc cay nóng như ma hoàng, quế chi, tía tô, hương phụ và  xông bằng các lá có tinh dầu như cam, bưởi, sả, kinh giới, tía tô để ra  mồ hôi thì sẽ khỏi bệnh. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Ngược lại nếu bị cảm mạo do phong nhiệt thì nặng đầu, miệng  khô, ra nhiều mồ hôi thì phải dùng phép tân lương giải biểu với các vị  thuốc mát như liên kiều, bạc hà, lá dâu, rễ sậy, thạch cao. Trong trường  hợp này dùng các vị thuốc cay nóng, ra mồ hôi như trường hợp cảm mạo  phong hàn thì bệnh chẳng những không khỏi mà còn gây nguy hiểm cho bệnh  nhân. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Theo lý luận, việc sử dụng thuốc Đông y muốn  đạt hiệu quả chữa bệnh và bảo đảm an toàn rất sâu sắc, uyên thâm. Theo  đó việc dùng thuốc, chữa bệnh phải theo “Nhân thời, nhân địa, nhân bệnh  chế nghi” có nghĩa là đối với các chứng bệnh, cần căn cứ sự khác nhau về  mùa, khu vực, thể chất, lứa tuổi, giới tính... mà quyết định phương  pháp trị liệu và dùng thuốc. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Về mùa, tức là căn cứ sự biến đổi khí hậu 4 mùa có ảnh  hưởng nhất định tới sinh lý. Khi chữa bệnh, dùng thuốc phải chú ý tới  yếu tố này. Ví dụ, mùa hạ tấu lý (lỗ chân lông) mở rộng không nên dùng  nhiều vị thuốc có tính tân ôn (cay âm). Mùa đông tấu lý co hại, có thể  dùng nhiều hơn các vị thuốc cay ấm (tân ôn). </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Về khu vực, căn cứ vào đặc điểm môi trường của địa phương  mà chọn phương pháp và dược vật thích hợp. Ví dụ: Phương Nam  nóng bức, ẩm thấp có nhiều chứng bệnh thấp nhiệt, thì nên chọn phép  thanh nhiệt hóa thấp làm chính. Phương Bắc lạnh lẽo và khô ráo, có nhiều  chứng bệnh phong hàn táo thì nên lấy phép chữa và dược vật có tính ôn  nhiệt, nhuận táo là chủ yếu. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-size: x-small;\"><span style=\"font-family: Arial;\">Về người, phải căn cứ vào lứa tuổi, giới tính, thể chất,  thói quen sinh hoạt của người bệnh mà chọn phương pháp và dược vật thích  hợp. Ví dụ người già khí huyết suy kiệt, trẻ em tạng phủ mềm yếu, sợ  đắng, cay, nam nữ sinh lý và thói quen khác nhau đều bị các chứng bệnh  như nhau không thể dùng phép chữa, bài thuốc, vị thuốc, liều lượng như  nhau mà phải “tùy cơ ứng biến”. </span></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\"> </span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0in 0in 0pt;\" align=\"justify\"><span style=\"font-family: Arial; font-size: x-small;\">Đối  với người bệnh khi dùng thuốc Đông y xin đừng chủ quan, tùy tiện hoặc  nghe theo sự mách bảo của người khác mà phải đến khám, bắt mạch, mua  thuốc theo đơn ở các phòng chẩn trị y học cổ truyền được phép hành nghề  để tránh “tiền mất tật mang”.</span></p>', '1', '1', '0', '2', '2010-03-29 08:28:23', '62', '', '2010-03-29 08:29:50', '62', '0', '0000-00-00 00:00:00', '2010-03-29 08:28:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '5', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('22', 'Yêu cầu rà soát ATM trên toàn quốc', 'yeu-cu-ra-soat-atm-tren-toan-quc', '', '<p class=\"Lead\">Ngân hàng Nhà nước sẽ có công văn đề nghị toàn ngành vào  cuộc rà soát hệ thống máy rút tiền tự động sau sự cố điện giật gây chết  người tại TP HCM hôm 1/4.<a class=\"Lead\" href=\"http://vnexpress.net/GL/Xa-hoi/2010/04/3BA1A5BD/\"></a></p>\r\n<p class=\"Normal\">\r\n', '\r\nTrao đổi với <em>VnExpress.net</em> sáng nay, Vụ  trưởng Vụ Thanh toán (Ngân hàng Nhà nước) Bùi Quang Tiên cho biết Ngân  hàng Nhà nước đang soạn thảo công văn yêu cầu các ngân hàng, các tổ chức  phát hành và thanh toán thẻ khẩn trương kiểm tra lại toàn bộ hệ thống  ATM của mình trên toàn quốc, nhằm đảm bảo an toàn cho người sử dụng. Các  ngân hàng thương mại sẽ phải báo cáo kết quả rà soát và xử lý về Ngân  hàng Nhà nước. Giám đốc các chi nhánh Ngân hàng Nhà nước tỉnh, thành phố  sẽ là đầu mối đôn đốc và giám sát việc này.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/36/atm1.jpg\" border=\"1\" alt=\"ATM nơi bé Uyên bị điện giật.\" width=\"480\" height=\"368\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">ATM nơi bé Uyên bị điện giật. Ảnh: <em>An Nhơn</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Yêu cầu của Ngân hàng Nhà nước được đưa ra 4 ngày sau  cái chết của một em học sinh lớp 4 tại khu vực buồng ATM Ngân hàng Nông  nghiệp và Phát triển nông thôn Agribank (đường Nguyễn Thái Bình, quận 1,  TP HCM). Chiều 1/4 sau khi tan học, em Châu Linh Uyên đứng chơi cạnh  ATM này thì bất ngờ co rút, bất tỉnh. Chỗ Uyên bị nạn có một sợi dây  diện móc nối từ buồng ATM ra bên ngoài. Nạn nhân được xác định chết do  điện giật.</p>\r\n<p class=\"Normal\">Điện lực TP HCM cũng đã kiểm tra toàn bộ 866 ATM của  tất cả các ngân hàng trên địa bàn thành phố. Kết quả cho thấy hơn 60 máy  bị rò điện, đa phần là do nguồn điện không chuẩn, không đóng tiếp điện  và đi dây không đúng kỹ thuật, đấu nối dây bất cẩn... Các máy này đã bị  ngắt nguồn điện và cô lập, chờ khắc phục.</p>\r\n<p class=\"Normal\">Đây là lần đầu tiên xảy ra sự cố chết người vì điện  giật ở khu vực ATM. Tuy nhiên trước đó, nhiều khách hàng phản ánh bị tê  tê, giật điện nhẹ khi rút tiền tại máy, đặc biệt những hôm trời mưa, ẩm  ướt.</p>', '1', '3', '0', '12', '2010-04-05 04:06:25', '62', '', '0000-00-00 00:00:00', '0', '62', '2010-04-05 04:07:27', '2010-04-05 04:06:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('4', 'Tạm ngừng sử dụng văcxin Rotarix', 'tm-ngng-s-dng-vcxin-rotarix', '', '<p>Cục Quản lý dược (Bộ Y tế) vừa có văn bản yêu cầu tạm ngừng sử dụng  văcxin Rotarix do Công ty GlaxoSmithKline sản xuất, để đảm bảo an toàn  cho người sử dụng. Trong khi đó, WHO không khuyến cáo thay đổi cách sử  dụng văcxin này.</p>\r\n', '\r\n<p> </p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A2/4D/va11.jpg\" border=\"1\" width=\"210\" height=\"164\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Văcxin Rotarix phòng tiêu chảy do virus rota. Ảnh: <em>Standford.  edu.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Cục Quản lý dược yêu cầu Sở y tế, Trung tâm y tế dự  phòng các tỉnh, thành trực thuộc Trung ương thông báo cho các cơ sở kinh  doanh, sử dụng văcxin, đồng thời thực hiện việc bảo quản theo đúng điều  kiện quy định ghi trên nhãn và kiểm tra, giám sát các đơn vị thực hiện  thông báo này.</p>\r\n<p class=\"Normal\">Ngoài ra, Cục cũng yêu cầu văn phòng đại diện Công ty  GlaxoSmithKline tại Việt Nam phối hợp với nhà nhập khẩu, nhà phân phối  gửi thông báo tạm ngừng sử dụng tới những nơi phân phối, sử dụng văcxin  Rotarix do công ty sản xuất. Đồng thời, báo cáo tình hình nhập khẩu và  quá trình phân phối văcxin trên về Cục Quản lý Dược trước ngày  31/3/2010.</p>\r\n<p class=\"Normal\">Trước đó, văn phòng đại diện GlaxoSmithKline Việt Nam  đã thông báo về việc phát hiện ADN của virus lợn PCV-1 trong văcxin  Rotarix. Các thành phần này không được công bố trong hồ sơ đăng ký tại  Bộ Y tế.</p>\r\n<p class=\"Normal\">Văcxin Rorarix phòng tiêu chảy do rotavirus, dành cho  trẻ em từ 6 tuần tuổi đến dưới 6 tháng tuổi. Văcxin có mặt tại thị  trường Việt Nam được 2 năm, chủ yếu được tiêm dịch vụ tại các thành phố  lớn, khu vực nông thôn hầu như không có.</p>\r\n<p class=\"Normal\"><strong><span style=\"color: #4f4f4f;\">Trong khi đó, theo thông  báo trên trang web chính thức ngày 22/3, Tổ chức Y tế thế giới (WHO)  khuyến khích tất cả các quốc gia đang sử dụng văcxin cân nhắc kỹ về  những lợi ích đáng kể của việc tiếp tục sử dụng văcxin</span> <span style=\"color: #4f4f4f;\">này.</span></strong></p>\r\n<p class=\"Normal\">WHO cũng đồng tình với quan điểm của Cục Quản lý Thực  phẩm và Dược phẩm Mỹ (FDA) và Cục quản lý Dược phẩm châu Âu (EMA) rằng  những phát hiện này không hiện diện bất kỳ nguy cơ nào đối với sức khỏe  cộng đồng.</p>\r\n<p class=\"Normal\">Hơn nữa, rotavirus là nguyên nhân thường gặp nhất gây  tiêu chảy cấp nặng ở trẻ nhỏ trên khắp thế giới, với ước tính 527.000  trường hợp tử vong ở trẻ dưới 5 tuổi mỗi năm. Hầu hết những trẻ này sống  ở các quốc gia có thu nhập thấp.</p>\r\n<p class=\"Normal\">Vì thế, WHO không khuyến cáo bất kỳ sự thay đổi nào về  cách thức sử dụng Rotarix. Văcxin này đã được chứng nhận chất lượng bởi  WHO và tình trạng chứng nhận chất lượng vẫn không đổi.</p>\r\n<p>WHO sẽ tiếp tục làm việc sát với FDA, EMA và các cơ  quan quản lý đăng ký một cách khẩn trương để đánh giá thông tin thêm mà  nhà sản xuất sẽ cung cấp.</p>\r\n<p> </p>', '1', '0', '0', '0', '2010-03-29 08:33:17', '62', '', '2010-03-29 08:43:05', '62', '0', '0000-00-00 00:00:00', '2010-03-29 08:33:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '2', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('5', 'Tăng gấp đôi mức phạt giao thông tại Hà Nội, TP HCM', 'tng-gp-oi-mc-pht-giao-thong-ti-ha-ni-tp-hcm', '', '<p>Chính phủ vừa đồng ý cho Hà Nội và TP HCM tăng mức xử phạt vi phạm giao  thông 40-200% so với mức chung của cả nước. Cụ thể, người đi xe máy vượt  đèn đỏ sẽ bị phạt đến 500.000 đồng và tước bằng lái 30 ngày.\r\n', '\r\n</p>\r\n<p class=\"Normal\">Tại buổi họp báo thường kỳ của Văn phòng Chính phủ  chiều 1/4, Thứ trưởng Bộ Giao thông Vận tải Nguyễn Hồng Trường cho biết,  mức phạt mới sẽ được thực hiện thí điểm trong 36 tháng, kể từ quý 2 năm  nay. Sau khi kết thúc thí điểm, Bộ Giao thông Vận tải, Bộ Công an, UBND  Hà Nội, TP HCM sẽ tổng hợp, đánh giá và đề xuất Chính phủ chủ trương  thực hiện tiếp theo.</p>\r\n<p class=\"Normal\">Theo dự thảo Nghị định Quy định xử phạt vi phạm hành  chính trong lĩnh vực giao thông đường bộ, tại Hà Nội, TP HCM người đi xe  máy vượt đèn đỏ, không chấp hành hiệu lệnh, đi vào đường cấm, đi ngược  chiều vào đường một chiều... sẽ bị phạt 300.000-500.000 đồng và tước  bằng lái 30 ngày (mức chung là 100.000-400.000 đồng).</p>\r\n<p class=\"Normal\">Đối với ôtô, các hành vi dừng đỗ, quay đầu xe không  đúng quy định bị phạt 600.000-1 triệu đồng (tăng gấp đôi so với mức  chung). Hành vi vượt đèn đỏ, lái ôtô khi có nồng độ cồn vượt mức cho  phép sẽ bị xử phạt 1-1,4 triệu đồng (mức chung là 600.000-800.000 đồng).  Hành vi dừng đỗ, quay đầu xe gây ùn tắc giao thông sẽ bị phạt đến 2  triệu đồng.</p>\r\n<p class=\"Normal\">Dự thảo cũng tăng mức xử phạt đối với hành vi đi bộ  qua dải phân cách, mang vác cồng kềnh gây cản trở giao thông. Mức phạt  cao nhất là 120.000 đồng.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/AF/99.jpg\" border=\"1\" width=\"450\" height=\"350\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Người vi phạm giao thông ở Hà Nội sẽ phải chịu mức  phạt cao. Ảnh: <em>Hoàng Hà.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Trước đó, dự thảo Nghị định Quy định xử phạt vi phạm  hành chính trong lĩnh vực giao thông đường bộ đã nhận được nhiều ý kiến  trái chiều. Nhiều ý kiến cho rằng, đây là giải pháp hữu hiệu nhằm khắc  phục ùn tắc giao thông tại các thành phố lớn. Tuy nhiên, cũng có quan  điểm là Hà Nội và TP HCM hiện còn nhiều người thu nhập thấp, nếu áp dụng  mức xử phạt trên sẽ gây sự bất bình đẳng, không khả thi.</p>\r\n<p> </p>', '1', '1', '0', '1', '2010-04-02 04:05:26', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:05:26', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '21', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('6', 'Những chiêu \'rút ruột\' bệnh nhân của bác sĩ', 'nhng-chieu-rut-rut-bnh-nhan-ca-bac-s', '', '<p>Đưa mẹ đi khám thoát vị đĩa đệm tại một phòng mạch tư ở gần Bệnh viện  103, chị Nhu (Phúc Thọ, Hà Nội) ngẩn người khi bác sĩ kê thuốc tiêm rồi  dặn \"phải ra đúng nhà thuốc X, ngay đầu ngõ mua về đây tôi mới tiêm  cho\".</p>\r\n', '\r\n<p class=\"Normal\">Sau này, chị Nhu biết thêm, ai đến khám cũng được vị  bác sĩ này cho loại thuốc tiêm đó và dặn mua ở đúng nhà thuốc như vậy.  Một lần, chị cầm đơn thuốc rồi mua ngay ở một đại lý trên đường Ngọc  Khánh thì thấy giá rẻ hơn rất nhiều.</p>\r\n<p class=\"Normal\">Không chỉ chị Nhu, rất nhiều người bệnh mất tiền oan  khi bác sĩ \"kết thân\" với nhà thuốc hay các hãng dược, thực phẩm chức  năng.</p>\r\n<p class=\"normal\">Đưa con gái đi khám ở nhà riêng một bác sĩ da liễu  quân đội, chị Mai, ở Hà Đông, Hà Nội được bác sĩ thăm hỏi rất nhiệt  tình, vì thế, chị quyết định bám trụ ở đây cả tháng trời để điều trị cho  con. Có lần được bác sĩ nhắc khéo là mua thuốc \"Noni\" để bồi bổ cơ thể  cho cháu, dù không biết thực hư tác dụng thế nào, nhưng chị Mai vẫn phải  bấm bụng mua một chai có giá đến 800.000 đồng, chỉ vì \"sợ bác sĩ tự ái,  không chữa cho con mình nữa\".</p>\r\n<p class=\"normal\">Uống cả tháng, thấy con chẳng có gì khá hơn, mà bác sĩ  lại nhắc mua tiếp, chị Mai đành lấy cớ \"cháu uống chưa hết\". Mãi về  sau, chị mới biết vị bác sĩ này là đại lý bán hàng đa cấp cho thực phẩm  chức năng Noni. Không chỉ có chị, nhiều bệnh nhân khác đến chữa ở nhà  riêng của ông đều nhận được gợi ý như vậy, và đa số họ đành mua để chiều  lòng người chữa bệnh cho thân nhân mình.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/91/vien1.jpg\" border=\"1\" alt=\"Ảnh minh họa: Hoàng Hà.\" width=\"450\" height=\"299\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Đi khám bệnh, người dân chỉ mong được bác sĩ tận tình  và kê đơn thuốc chính xác, công tâm. Ảnh minh họa: <em>Hoàng Hà.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"normal\">Không trực tiếp như vậy, nhiều bác sĩ khác gián tiếp  \"câu\" người bệnh bằng cách liên kết với một hãng dược \"ruột\" nào đó, và  chỉ kê thuốc của riêng hãng ấy, trong khi, nhiều trường hợp bệnh nhân có  thể dùng thuốc khác, thậm chí chỉ cần những thuốc nhẹ, rẻ tiền hơn là  khỏi.</p>\r\n<p class=\"normal\">Chị Loan (Thanh Xuân, Hà Nội) từng đưa con trai 2 tuổi  bị viêm phế quản đến chữa ở nhà riêng một bác sĩ nhi gần khu Trung Hòa,  Nhân Chính, đã tấm tắc vì \"đơn thuốc\" của bác sĩ hiệu nghiệm quá, chỉ  một ngày con chị đã thấy lui bệnh. Thuốc con chị được kê có một loại  kháng sinh rất lạ, đắt tiền, được cô phụ việc bán ngay tại chỗ.</p>\r\n<p class=\"normal\">Tuy nhiên, vài ngày sau chị giật mình khi thấy đơn  thuốc của hai đứa cháu cũng có loại thuốc y chang. Khi đưa bé đến khám  lại tại một bác sĩ quen gần nhà, chị được người này cho biết loại \"kháng  sinh lạ\" kia thực chất là kháng sinh thế hệ mới, ít được dùng, thường  là bác sĩ kê cho một hãng thuốc quen nào đó. Trường hợp con chị chỉ cần  dùng các loại kháng sinh thông thường là đủ chữa bệnh. Một vài lần sau  có việc tình cờ qua phòng khám này, chị vẫn thấy đơn thuốc y nguyên được  bác sĩ áp dụng cho các bệnh nhân khác.</p>\r\n<p class=\"normal\">Còn anh Thanh (khu đô thị mới Pháp Vân, Hà Nội) cho  biết, mấy lần con anh bị ho, đưa lên khám một bác sĩ nhi có tiếng ở phố  Đội Cấn thì đều được cho kháng sinh Cefimed hoặc nặng hơn thì Zithromax  (cả hai đều là thuốc thế hệ mới, khá đắt tiền) và thường là mua ngay tại  chỗ. Có lần, bác sĩ này kê thêm một loại cốm để tăng miễn dịch. Thấy  mỗi gói thuốc bổ nhỏ xíu tới 6.000 đồng, chị không đành lấy tại phòng  khám mà nghĩ về gần nhà cho rẻ, ai ngờ đi khắp các cửa hàng không có,  đành quay lại phòng khám để lấy. Khi ấy chị mới biết đó chỉ là thuốc  nội, do một công ty ít tên tuổi sản xuất.</p>\r\n<p class=\"normal\">Không chỉ ưu tiên kê toa những loại thuốc mình được  nhận hoa hồng, nhiều bác sĩ còn có những chiêu \"bắt\" bệnh nhân mua thuốc  tại các nhà thuốc thân quen của mình.</p>\r\n<p class=\"normal\">Chị Duyên (ở Ngã Tư Sở) khi đi khám phụ khoa ở một  bệnh viện phụ sản lớn tại Hà Nội được bác sĩ kê đơn, và dặn chị ra nhà  thuốc ở cổng viện mua, sau đó quay lại mới hướng dẫn cách sử dụng.</p>\r\n<p class=\"normal\">\"Tôi thấy lạ, nhưng ngại không dám hỏi lại nên làm  đúng theo lời dặn. Quay lại bác sĩ ấy chỉ ghi thêm là dùng ngày mấy lần,  mỗi lần mấy viên, trong khi đáng lý phải ghi điều đó ngay trong lúc kê  đơn. Lúc về hỏi lại bà chị họ bán thuốc, tôi mới biết mình bị mua đắt  hơn đáng kể\", chị Duyên nói.</p>\r\n<p class=\"Normal\">Ở vào tình cảnh tương tự chị Duyên, nhưng anh Bình  (huyện Đông Anh) còn ăn mắng vì đã dám \"cãi lời\" bác sĩ. Đi khám bệnh  bazedo tại một bệnh viện nội thành có tiếng, anh Bình được một nam bác  sĩ kê đơn và bảo xuống nhà thuốc bệnh viện để mua, mang lên ông sẽ dặn  cách dùng.</p>\r\n<p class=\"Normal\">Nghe theo một lần, biết là mua phải thuốc đắt, nên lần  sau đó anh Bình rút kinh nghiệm, đề nghị vị bác sĩ này cứ ghi cách uống  vào đơn, để anh mua thuốc ở đại lý gần nhà cho tiện. Nhưng bác sĩ không  đồng ý, nói rằng nếu mua thuốc ở các đại lý bên ngoài thì sẽ không đủ  chất lượng, bệnh sẽ không giảm, ông sẽ yêu cầu anh phải nhập viện. Trước  thái độ kiên quyết của anh Bình, vị bác sĩ nọ giật lại tờ đơn, kê lại  vào sổ khám bệnh và tuyên bố “không chịu tránh nhiệm”, và rằng “anh sẽ  phải nhập viện”…</p>\r\n<p class=\"normal\">\"Khi bác sĩ bị chi phối bởi các hãng dược trong quá  trình kê đơn, tất nhiên người bệnh phải chịu thiệt rồi\", một bác sĩ Bệnh  viện Bạch Mai thổ lộ.</p>\r\n<p class=\"normal\">Ông cho biết, mình từng khám chữa cho nhiều người sinh  thêm bệnh vì tự ý dùng thuốc hay nhờ người bán thuốc \"kê đơn\" mà không  chịu đi khám và tư vấn bác sĩ. Lý do có nhiều, vì người dân mình ngại  cảnh chen lấn ở bệnh viện, chủ quan với bệnh tật, thiếu kiến thức về sử  dụng thuốc... Nhưng một nguyên nhân khác, ít ai nói đến, đó là vì niềm  tin của họ vào bác sĩ giảm đi sau vài lần nhận được các đơn vô số thuốc  với số tiền ngất ngưởng mà hiệu quả chẳng thấy đâu của những bác sĩ được  \"lót tay\".</p>\r\n<p class=\"normal\">\"Khi nhận hoa hồng từ các hãng dược hay nhà thuốc thì  kê càng nhiều thuốc, loại càng đắt tiền, bác sĩ càng được lợi, và gánh  nặng thì đổ lên vai người bệnh khiến nhiều khi họ không thể kham nổi nên  đành \'bỏ\' bác sĩ\", ông tâm sự.</p>\r\n<p class=\"normal\">Từ năm 2003, để hạn chế tiêu cực bác sĩ nhận hoa hồng  từ các hãng dược, Bộ Y tế đã quy định rõ: Khi kê toa, phải viết tên  thuốc theo tên quốc tế (tên chất trị liệu chứa trong thuốc) với thuốc có  một thành phần. Tuy nhiên, bác sĩ ở các bệnh viện, chứ chưa nói đến các  cơ sở tư nhân, đều ít thực hiện quy định này, hầu hết đều kê thẳng tên  thương mại của một loại thuốc nào đó.</p>\r\n<p class=\"normal\">\"Đây là quy định có ý nghĩa tốt, nhằm hạn chế việc bác  sĩ kê các tên thuốc cụ thể mà mình được nhận phần trăm, nhưng đó không  phải là biện pháp tích cực bởi nó có thể tạo điều kiện cho người bán  thuốc trục lợi, bán cho người bệnh những thuốc họ được nhận lợi nhuận  cao\", ông Hoàng Đình Ngọc, trưởng phòng kế hoạch tổng hợp, Bệnh viện Tai  Mũi Họng Trung ương bộc bạch.</p>\r\n<p class=\"normal\">Ông lý giải thêm, nếu bác sĩ kê đơn mà chỉ ghi tên gốc  thì người bệnh lại phải nhờ nhân viên bán thuốc tư vấn loại biệt dược  nên mua, bởi đâu phải ai cũng hiểu biết xem cùng là gốc thuốc ấy nhưng  thuốc nào đắt, thuốc nào rẻ, cái nào tốt hơn.</p>\r\n<p class=\"normal\">Ông Ngọc cho biết, tình trạng bác sĩ \"bắt tay\" với  hãng dược đã có từ rất lâu và bệnh viện nào cũng biết rõ. Ở Bệnh viện  Tai Mũi Họng, để hạn chế tình trạng này, bệnh viện đã cấm trình dược  viên vào các phòng khám bệnh và nếu bác sĩ nào bị phát hiện tiếp trình  dược viên trong phòng sẽ bị kỷ luật. Tuy nhiên, ông cũng thổ lộ, điều  quan trọng là đánh vào lòng tự trọng của người thầy thuốc thôi, chứ \"ở  cơ quan còn cấm được, nếu họ \'bắt tay\' nhau tại nhà hay chỗ khác thì ai  hay và xử lý sao được\".</p>\r\n<p class=\"normal\">Theo ông, dù trong hoàn cảnh nào, cuối cùng người khổ  nhất vẫn là bệnh nhân. Ngay cả việc các bác sĩ bị phanh phui về hành vi  thiếu lương tâm và trách nhiệm khi kê đơn thuốc thì không chỉ người làm  nghề y bị mất uy tín mà chính người bệnh bị thiệt. \"Khi đó, họ hoang  mang, mất niềm tin vào đội ngũ thầy thuốc - trong đó có cả những người  thực sự tận tâm với nghề và bệnh nhân - lại đi nhờ những người không có  chuyên môn chữa, kê đơn thì rất tai hại\", ông chia sẻ.</p>\r\n<p> </p>', '1', '1', '0', '3', '2010-04-02 04:08:24', '62', '', '2010-04-05 09:26:55', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:08:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '3', 'bac si, pháp luật', '', '0', '6', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('7', 'Đi rừng bị vắt chui vào phổi', 'i-rng-b-vt-chui-vao-phi', '', '<p>Các bác sĩ Khoa Tai - Mũi - Họng, Bệnh viện hữu nghị Việt Nam - Cu Ba  (Quảng Bình) vừa gắp thành công một con vắt nằm trong phổi của người đàn  ông 42 tuổi ở thành phố Đồng Hới bằng phương pháp nội soi.</p>\r\n', '\r\n<p class=\"Normal\">Cách đây khoảng 3 tháng, khi đi rừng khai thác lâm  sản, người đàn ông này bị một con vắt bé tí chui vào miệng. Sau một thời  gian no nê hút máu, con vắt này đã lớn và dài gần 10 cm, gây ra hiện  tượng ho ra máu, nhiều đờm và khó thở cho bệnh nhân.</p>\r\n<p class=\"Normal\">Theo các bác sĩ, khu vực núi rừng miền trung, các loại  côn trùng như vắt, đỉa, sên rất nhiều, nhiều người dân khi đi rừng, lúc  uống nước ở các khe suối đã bị những loài côn trùng này chui vào mũi.  Ban đầu chúng thường nhỏ xúi, sau một thời gian hút máu, chúng phát  triển rất nhanh và gây nên những hiện tượng như khó thở, nôn ọe, ho ra  máu, nhiều đờm.</p>\r\n<p class=\"Normal\">Vì vậy, các bác sĩ khuyến cáo người dân những khu vực  này khi đi rừng cần trang bị bảo hộ lao động như mũ, nón, găng tay, khẩu  trang, và không nên uống nước suối. Khi thấy hiện tượng lạ như chảy máu  mũi, ho ra máu liên tục, khó thở,… cần sớm đến bệnh viện để kiểm tra.</p>\r\n<p class=\"Normal\">Trước đây, các bác sĩ ở Thanh Hóa, Nghệ An cũng đã  nhiều lần thực hiện việc thành công các ca phẫu thuật, gắp nhiều con  đỉa, vắt ra khỏi phổi, mũi của bệnh nhân.</p>\r\n<p> </p>', '1', '1', '0', '3', '2010-04-02 04:09:18', '62', '', '2010-04-05 09:26:41', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:09:18', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '2', '', 'bac si, di rung', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('8', 'Khối u to như cái thúng trong bụng bà già', 'khi-u-to-nh-cai-thung-trong-bng-ba-gia', '', '<p>Hôm qua, các bác sĩ khoa Ngoại phụ khoa, Bệnh viện K đã phẫu thuật lấy  ra khối u buồng trứng nặng 19kg cùng với 2,5 lít dịch trong bụng của một  phụ nữ 57 tuổi. \r\n', '\r\n</p>\r\n<p class=\"Normal\">Bệnh nhân là bà Mai Thị Kết, ở xã Nga Hải, huyện Nga  Sơn, Thanh Hóa.</p>\r\n<p class=\"Normal\">Theo bác sĩ Nguyễn Văn Tuyên, trưởng khoa Ngoại phụ  khoa, Bệnh viện K, người trực tiếp mổ cho bệnh nhân thì đây là một khối u  to hiếm gặp. Trước đó, bệnh viện từng phẫu thuật cho một bệnh nhân khác  có khối u buồng trứng lên tới 27 kg.</p>\r\n<p class=\"Normal\">Theo ông, đây nhiều khả năng là một khối u lành tính  hoặc khối u hỗn hợp lành và ác tính. Để biết kết quả chính xác phải đợi  kết quả làm xét nghiệm. Nếu là u ác, bệnh nhân sẽ tiếp tục được điều trị  hóa chất.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/62/benh1.jpg\" border=\"1\" width=\"344\" height=\"461\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Bà Kết trước khi mổ với khối u to như cái thúng trước  bụng. Ảnh: Do bệnh viện cung cấp.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Theo lời kể của bà Ma Thị Nhiệm, em gái bà Kết thì  cách đây 3 năm, bà Kết thấy bụng tưng tức, ăn vào càng khó chịu nên đã  đã đi khám ở Bệnh viện huyện Nga Sơn. Các bác sĩ chẩn đoán bà bị u nang  buồng trứng và tiến hành phẫu thuật lấy khối u vào tháng 6/2007. Tuy  nhiên, sau khi mổ được vài tháng, bụng bà Kết ngày càng to ra. Không  những thế, bà còn hay bị đau bụng và ra rất nhiều dịch, phải liên tục  đóng bỉm.</p>\r\n<p class=\"Normal\">Năm 2008, bà Kết được người nhà đưa lên Bệnh viện K  khám và cũng được chẩn đoán là có khối u buồng trứng khá to, hẹn khám  lại. Tuy nhiên, người bệnh phần vì kinh tế khó khăn, lại nghĩ bệnh mình  đã ở giai đoạn cuối, không thể chữa trị nên không lên khám lại nữa.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/62/u1.jpg\" border=\"1\" alt=\"Ảnh: Do bệnh viện cung cấp.\" width=\"400\" height=\"293\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Ảnh: Do bệnh viện cung cấp.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Trong thời gian đó, bụng mỗi ngày một to khiến bà Kết  khó thở, khó ngủ. Mỗi ngày bà chỉ ngủ được khoảng 1-2 giờ. Việc đi lại  cũng rất vất vả và bà hầu như chẳng đi đâu vì sợ làm hàng xóm hoảng hồn  nếu nhìn thấy bộ dạng của mình.</p>\r\n<p class=\"Normal\">Em gái bà Kết cho biết, người bệnh thấy khó chịu trong  người quá, cũng nhờ con đèo xuống bệnh viện huyện khám lại thì được các  bác sĩ cho biết bệnh tình của mình đã ở giai đoạn cuối, khuyên bà nên  sống vui vẻ thời gian còn lại, thích ăn gì, uống gì thì bảo con cháu mua  cho.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/62/mo1.jpg\" border=\"1\" alt=\"Ảnh: MT.\" width=\"400\" height=\"266\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">\"Chúng tôi chưa từng nhìn thấy ai như bà ấy. Bụng to  như cái thúng, chân tay, mặt thì tong teo, nhưng lại lạc quan, vui tính  lạ, vẫn nói cười vô tư lắm\", những người nhà bệnh nhân rôm rả bàn tán về  trường hợp hy hữu của bà Kết. Ảnh: <em>MT.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Sau lần khám này, bà Kết cũng như cả gia đình đã xác  định tâm lý chờ chết. Bà trở nên hoạt bát, vui vẻ, ăn uống cũng ngon  miệng hơn. 3 tuần trước, thấy sức khỏe của bà tốt hơn, người thân lại  động viên bà lên Hà Nội khám lần nữa. Tại đây, các bác sĩ viện K đã  khám, chụp CT để chẩn đoán chỉnh xác khối u và quyết định sẽ phẫu thuật.</p>\r\n<p class=\"Normal\">Hiện tại, bà Kết đã hồi tỉnh và đang được hồi sức tích  cực. Tiến sĩ Nguyễn Thế Trí, trưởng khoa Phẫu thuật gây mê hồi sức,  Bệnh viện K cho biết, do khối u quá lớn nên khi phẫu thuật bệnh nhân mất  rất nhiều máu (phải truyền tới 4 lít), sau đó lại bị rối loạn đông máu.  Ngoài ra, khối u chèn ép đã làm hỏng một thận bên phải. Việc lấy khối u  nặng bằng gần một nửa trọng lượng cơ thể bệnh nhân khiến thay đổi áp  lực rất lớn trong cơ thể, gây nên tình trạng tràn dịch màng phổi, tràn  dịch màng tim.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/62/mo2.jpg\" border=\"1\" alt=\"Ảnh: MT.\" width=\"400\" height=\"282\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Bà Kết đang được hồi sức tích cực tại Bệnh viện K sáng  nay. Ảnh: <em>MT.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">\"Phần nặng nề nhất đã được xử lý rồi nhưng nhiều biến  chứng vẫn có thể xảy ra. Chúng tôi vẫn rất hồi hộp lo lắng nhưng cũng đã  tìm mọi cách xử trí và dự phòng các tình huống xấu nên tin rằng bệnh  nhân sẽ qua khỏi\", bác sĩ Trí chia sẻ.</p>\r\n<p> </p>', '1', '1', '0', '4', '2010-04-02 04:10:13', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:10:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '4', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('9', 'Bé gái 13 tuổi bị cháy trong đống rơm', 'be-gai-13-tui-b-chay-trong-ng-rm', '', '<p>Đang sạ lúa trên mảnh ruộng cạnh nhà, anh Ngô Văn Tâm nhìn thấy một cô  bé bị cháy đen chạy về phía mình cầu cứu. Sau vài phút định thần, người  nông dân 38 tuổi (Long An) mới nhận ra đó chính là con gái - bé Hiệp.\r\n', '\r\n</p>\r\n<p class=\"Normal\">Chiều 31/3, tức 9 ngày sau khi xảy ra vụ việc, tại  khoa Phỏng - Chỉnh hình, Bệnh viện Nhi Đồng 1, TP HCM, dù đã qua cơn  nguy kịch song toàn thân bé Ngô Thị Bé Hiệp vẫn trắng toát bông băng do  bỏng nặng. Trên gương mặt cháy đen, chiếc mũi bé gần như bị tiêu hủy,  chỉ có đôi mắt đen nháy thì vẫn chớp chớp mở to mỗi khi có người đến  thăm.</p>\r\n<p class=\"Normal\">Trao đổi với <em>VnExpress.net</em>, người bố nói  không bao giờ quên cảnh tượng kinh hoàng của ngày hôm ấy, khi nhìn thấy  đứa con gái nhỏ chạy trong tình trạng đen như than, nhiều nơi trên cơ  thể vẫn còn khét mùi cháy.</p>\r\n<p class=\"Normal\">\"Trỏ tay về phía ngọn khói trên cánh đồng phía xa,  cháu vừa khóc vừa nói mình bị cháy trong đống rơm. Rồi giải thích thêm  vài câu nữa là cháu ngất đi\", anh Tâm cho biết.</p>\r\n<p class=\"Normal\">Trong cơn hoảng loạn, Hiệp cho bố biết khi em đi từ  nhà người cô về, ngang qua ruộng ông hàng xóm, ông ấy bảo ghé chơi rồi  sau đó ôm lấy em. Hiệp vùng vẫy nên bị ông bế quăng vô đống rơm đang  cháy. Cũng trong lời kể với bố, cô bé cho biết, sau khi bị ném vào lửa,  em cố thoát chạy ra nhưng người đàn ông ôm lại và ném tiếp vào lửa lần  nữa.</p>\r\n<p class=\"Normal\">Hay tin, người bác của Hiệp tìm đến ông hàng xóm ấy để  hỏi chuyện. Tuy nhiên ông này phủ nhận sự việc và khẳng định không nhìn  thấy ai khi đốt rơm trên ruộng của mình. Hiện công an huyện Tân Hưng  tiến hành điều tra vụ việc.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/F7/chay.jpg\" border=\"1\" width=\"450\" height=\"350\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Bé Hiệp đang điều trị tại Bệnh viện Nhi Đồng 1. Ảnh: <em>Thiên  Chương.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Bé Hiệp được gia đình lập tức đưa đi bệnh viện từ  tuyến xã đến tỉnh rồi lên Sài Gòn và đang trải qua những ngày thập tử  nhất sinh. Ngồi bẹp ngoài hành lang Bệnh viện Nhi đồng 1, gương mặt xanh  xao hốc hác, chị Võ Thị Cúc, mẹ bé Hiệp nước mắt đầm đìa, cứ ngất đi  mỗi khi vào phòng thăm con. Sợ người mẹ lên cơn đau tim, từ khi bé gặp  nạn, người chị dâu đã không cho chị Cúc vào nhìn mặt Hiệp mà buộc phải  ngồi ở ngoài.</p>\r\n<p class=\"Normal\">\"Ngoài mảnh ruộng nhỏ trồng lúa, hai vợ chồng em tôi  phải đi làm thuê làm mướn để nuôi năm đứa con trong đó có bốn đứa đến  trường. Được cái mấy đứa nhỏ đều ngoan. Thấy em bị nạn, cô chị học lớp 8  đòi nghỉ học phụ cha. Cả nhà khuyên trở lại trường nhưng mấy ngày nay  nó vẫn chưa chịu\", mợ của Hiệp cho biết.</p>\r\n<p class=\"Normal\">Nằm trên giường bệnh, nghe loáng thoáng lời mợ nói,  như quên đi đôi tay đang bị cột vào thành giường, Hiệp giật giật cánh  tay khe khẽ: \"Mợ gọi điện nói chị Hai đi học lại dùm con. Con không muốn  Hai bỏ học vì con. Nói với chị ấy, bé Hiệp sẽ sớm về với chị và mấy  em\".</p>\r\n<p class=\"Normal\">Nói chuyện với mợ xong, Hiệp đưa ánh mắt về phía  khách, rồi tiếp: \"Con đau lắm, nhưng khi ra ngoài nếu có gặp mẹ con, chú  nhớ nói với mẹ là con đã khỏe nhiều rồi. Mẹ con bị bệnh tim nên dễ xỉu  lắm. Chú nhớ dùm con nha chú. Con cám ơn chú\".</p>\r\n<p class=\"Normal\">Nhìn đôi môi bị cháy héo của bé Hiệp, những người có  mặt trong phòng cấp cứu thuộc khoa Phỏng lặng thinh nhìn nhau. Nhiều  người khẽ gật đầu như thể hứa giữ lời với bé mà nước mắt lưng tròng.</p>\r\n<p class=\"Normal\">Theo Điều dưỡng trưởng Phạm Thị Hoàng Oanh, phòng cấp  cứu khoa phỏng Bệnh viện Nhi Đồng 1, Hiệp bị bỏng nặng nhất ở mặt, tay  và toàn thân, với tỷ lệ khoảng 47,5%. Cũng theo bà Oanh, sau khi xuất  viện, gương mặt của bé gái sẽ bị biến dạng do các vết bỏng sâu.</p>\r\n<p class=\"Normal\"><em>Bé Hiệp hiện nằm điều trị tại khoa Phỏng - Chỉnh  hình, Bệnh viện Nhi Đồng 1, TP HCM. Địa chỉ nhà: ấp Võ Văn Be, xã Vĩnh  Bửu, huyện Tân Hưng, tỉnh Long An.</em></p>\r\n<p> </p>', '1', '1', '0', '5', '2010-04-02 04:11:12', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:11:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('10', 'Hôn mê vì ruồi trâu đốt', 'hon-me-vi-rui-trau-t', '', '<p>Ông Mai, 56 tuổi, quê ở xã Cẩm Hà (Hội An) nhập viện trong tình trạng  sức khỏe nguy kịch, hôn mê sâu, liệt nhẹ mặt bên phải, co giật toàn  thân, sốt cao đến 40 độ C, nôn mửa, chân phải nhiễm trùng sưng đỏ. \r\n', '\r\n</p>\r\n<p class=\"Normal\">Sau khi xét nghiệm máu và dịch não tủy, các bác sĩ  Bệnh viện Thái Bình Dương (Quảng Nam) nhận định, đây là trường hợp viêm  màng não do nhiễm liên cầu lợn, một căn bệnh hiếm gặp ở người. Khi tiếp  xúc với phân gia súc, hay ăn thịt gia súc bị bệnh không nấu chín kỹ hoặc  qua trung gian ruồi, bệnh liên cầu lợn có thể lây nhiễm sang người.</p>\r\n<p class=\"Normal\">Ông Mai kể lại: “Khi vào chuồng trâu dọn phân, tôi đã  bị ruồi trâu đốt vào mu chân phải, gây vết loét đã hơn một tuần\". Vết  loét sau đó lan dần lên nửa người, thấy nguy hiểm đến tính mạng gia đình  mới vội vàng đưa người đàn ông này đi bệnh viện.</p>\r\n<p class=\"Normal\">Sau gần một tuần điều trị, đến sáng ngày 1/ 4, Bệnh  viện Thái Bình Dương ở Hội An xác nhận tình trạng sức khỏe của ông Mai  đã thoát nguy kịch.</p>\r\n<p class=\"Normal\"><em>* Tên bệnh nhân đã được thay đổi</em></p>\r\n<p> </p>', '1', '1', '0', '4', '2010-04-02 04:11:54', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:11:54', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '3', '', '', '0', '4', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('11', '\'Cậu bé chào cờ\' suốt 21 ngày', 'cu-be-chao-c-sut-21-ngay', '', '<p>Một người đàn ông 55 tuổi ở Kolkata, Ấn Độ, đã phải chạy tới phòng cấp  cứu sau khi chịu đựng cơn cương dương kéo dài đến 21 ngày.\r\n', '\r\n</p>\r\n<p class=\"Normal\">Theo các bác sĩ thăm khám, ông bố 2 con này gặp phải  Priapism - dạng cương dương kéo dài đau đớn bất thường, có thể kéo dài  hơn 4 tiếng và xảy ra mà không cần bất kỳ kích thích tình dục nào.</p>\r\n<p class=\"Normal\">Tờ <em>AsiaOne</em> cho biết tình trạng này xuất hiện  do máu bị kẹt trong dương vật và không thể chảy ra ngoài. Tuy nó có thể  ảnh hưởng đến đàn ông ở bất cứ lứa tuổi nào, kể cả trẻ sơ sinh, song  chứng Priapism thường gặp ở đàn ông tuổi từ 20 đến 50.</p>\r\n<p class=\"Normal\">\"Ông ấy mất 3 tuần mới chịu đi khám. Đã quá muộn\", bác  sĩ Avishek Mukherjee, trưởng nhóm phẫu thuật, cho biết.</p>\r\n<p class=\"Normal\">\"Đáng lý ông ấy nên đến gặp bác sĩ sau khi bị cương  dương liên tục trong 6 giờ, vì tình trạng này kéo dài có thể khiến ông  ấy tử vong hoặc hoại tử dương vật\".</p>\r\n<p class=\"Normal\">Bác sĩ đã tiến hành mổ khẩn cấp cho bệnh nhân, nhưng  đã quá muộn. Ông này đã bị liệt dương vĩnh viễn.</p>\r\n<p> </p>', '1', '1', '0', '4', '2010-04-02 04:13:23', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:13:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('12', 'Bi hài chuyện tự chữa bỏng cho con', 'bi-hai-chuyn-t-cha-bng-cho-con', '', '<p>Cô con gái 5 tuổi bị bỏng bô xe máy, bố mẹ liền lấy cả kg muối cho vào  một chiếc túi vải rồi quấn vào vết bỏng ở chân con, khiến gần tháng trời  vết thương không lành, ngày càng đau đớn. \r\n', '\r\n</p>\r\n<p class=\"Normal\">Trường hợp bệnh nhân quê Hải Hậu, Nam Định này khiến  các bác sĩ Viện Bỏng Quốc Gia nhớ mãi. Khi tới viện, vết bỏng của em bé  đã rất sâu. Bố mẹ em cho biết, quê họ miền biển, lưu truyền bài thuốc  dân gian chữa bỏng bằng muối rất hiệu nghiệm và họ áp dụng ngay để chữa  cho con.</p>\r\n<p class=\"Normal\">Tuy nhiên theo các bác sĩ, muối có tính kiềm, có khả  năng \"ăn\" da, không thể dùng để chữa bỏng. Chính bởi thế, ngay cả thuốc  đánh răng - một thứ \"thuốc\" được nhiều người dùng bôi khi bị bỏng - dù  chỉ chứa một lượng kiềm rất nhỏ - cũng không tốt.</p>\r\n<p class=\"Normal\">Tiến sĩ Nguyễn Hải An, phó chủ nhiệm Khoa Trẻ em, Viện  Bỏng Quốc Gia cho biết, rất nhiều trường hợp trẻ bị bỏng nhẹ nhưng do  người nhà không biết cách xử lý hoặc áp dụng các kinh nghiệm chữa sai,  khiến vết thương nặng hơn rất nhiều.</p>\r\n<p class=\"Normal\">Vào viện hai hôm trước, cháu Hà, 5 tuổi ở Quảng Ninh  bị bỏng khi ngồi nướng mực cùng bố mẹ. Khi thấy lửa yếu đi, bố em liền  đổ cả nửa lọ cồn vào khiến ngọn lửa bốc lên. Mẹ em thấy vậy lấy luôn ca  nước cần đó hất vào khiến lửa càng bùng lên cao, \"liếm\" trọn từ ngực lên  mặt của cô con gái nhỏ.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/79/bong1.jpg\" border=\"1\" alt=\"Ảnh: MT.\" width=\"400\" height=\"289\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Nhiều trẻ được bố mẹ áp dụng các cách chữa bỏng lạ  khiến vết thương càng nặng hơn. Ảnh: <em>MT.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Theo các bác sĩ, trong trường hợp này, người mẹ chỉ  cần dùng một tấm vải ướt phủ lên thì có thể dập tắt lửa ngay. Chị không  biết là cồn nhẹ nổi trên nước nên nếu lượng cồn nhiều thì việc thêm nước  chẳng khác nào \"bỏ dầu vào lửa\".</p>\r\n<p class=\"Normal\">Ngay gần đây, cháu Nam, 14 tháng ở Tứ Kỳ, Hải Dương bị  vấp vào phích nước sôi khi đang chơi ở nhà cùng cụ nội. Bà cụ 85 tuổi  không biết phải xử trí thế nào bèn gọi hàng xóm sang giúp. Khi ấy, mấy  người bổ về nhà lấy đá đến đắp vào vết bỏng cho bé để... hạ nhiệt. Sau  đó, vùng da này bị hoại tử, em bé phải phẫu thuật cấy da.</p>\r\n<p class=\"Normal\">Bác sĩ cho biết, việc áp ngay đá lạnh vào vết thương  trong thời gian dài có thể làm tê bì các mút thần kinh và gây bỏng lạnh.  Trong trường hợp của bé Nam, chỉ cần ngâm vùng cơ thể bị bỏng của em  vào nước lạnh sạch trong 15-20 phút thì vết thương của em sẽ dịu lại  ngay.</p>\r\n<p class=\"Normal\">Tuy nhiên, việc đơn giản này không phải ai cũng hiểu  đúng và làm đúng. Cũng nghe nói nên ngâm vùng bỏng vào nước lạnh mà anh  Hảo (Thường Tín, Hà Nội) đã \"dìm\" ngay cậu con trai gần một tuổi vào xô  nước giếng khi cậu bé bị nồi canh nóng làm bỏng phần mặt và cổ.</p>\r\n<p class=\"Normal\">Lúc đưa đến Viện Bỏng khám, các bác sĩ xác định vùng  tổn thương của bé rất nhẹ nhưng cuối cùng em rơi vào tình trạng nguy  kịch, phải hồi sức cấp cứu vì bị viêm phế quản do sặc nước và nhiễm  lạnh.</p>\r\n<p class=\"Normal\">Trường hợp khác, cách đây đã vài năm, một người đàn  ông ở Bình Đà (Thanh Oai, Hà Nội), khi thấy vợ bị bỏng do pháo nổ, đã  lẳng ngay chị vào bể nước mưa của gia đình, khiến người vợ suýt chết  đuối và sau đó phải điều trị về hô hấp.</p>\r\n<p class=\"Normal\">Bác sĩ Hải An cho biết, chính ông và các đồng nghiệp  trong khoa nhiều khi phải giật mình trước những cách chữa bỏng rất \"sáng  tạo\" của nhiều vị phụ huynh. Có mẹ dùng vôi bôi lên vùng da tổn thương  của con vì bà nội hay ăn trầu bảo vôi mát, lại lành. Người khác thì dùng  tỏi đắp vào vết rộp ở chân con khiến vùng tổn thương càng phỏng nặng.  Rồi những thứ như trứng, nhựa chuối, tương, mắm... cũng được họ biến  thành \"thuốc\" chữa bỏng.</p>\r\n<p class=\"Normal\">Ngoài ra, không ít người lại chuộng đắp lá, dùng thuốc  đông y để chữa bỏng cho trẻ vì cho rằng như vậy mới lành, lại rẻ.</p>\r\n<p class=\"Normal\">Ca bệnh của cháu Dung, Vĩnh Phúc ở một điển hình. Cháu  bị bỏng nước sôi cả vùng bụng, bố mẹ nghe mách một thày lang trong vùng  có loại lá thuốc chữa bỏng rất tốt bèn tìm đến nhờ chữa cho con. Đắp lá  hơn một tháng mà con vẫn chẳng khỏi, gia đình mới đưa bé vào viện. Lúc  này, da vùng tổn thương của em đã bị hoại tử, các bác sĩ phải phẫu thuật  mấy lần để cắt bỏ phần da chết và cấy da mới em mới khỏi được.</p>\r\n<p class=\"Normal\">Bác sĩ Nguyễn Hải An cho biết, thực ra, việc xử lý khi  trẻ bị bỏng khá đơn giản. Nước - liệu pháp rẻ tiền, sẵn có nhất đã được  nghiên cứu và chứng minh là rất hiệu quả. Ngâm nước lạnh 15-30 phút vừa  giúp vết bỏng hạ nhiệt, vừa giảm đau, giảm phù nề cho vết thương. Sau  đó, đắp gạc ướt lên rồi băng ép và đưa con đến cơ sở y tế chuyên môn để  được các bác sĩ tư vấn và điều trị thích hợp.</p>\r\n<p class=\"Normal\">Nếu bị bỏng ở những vùng cơ thể khó ngâm nước như mặt,  cổ... thì có thể dùng khăn sạch, ướt đắp lên.</p>\r\n<p class=\"Normal\">Theo bác sĩ, khi bị bỏng cần được xử lý ngay lập tức,  tốt nhất là trong 15 phút đầu. Nếu để muộn, tổn thương càng sâu thì việc  điều trị càng mất nhiều thời gian, phức tạp và để lại di chứng, sẹo  xấu. Da trẻ còn rất non nớt, mỏng manh, non nên bố mẹ tuyệt đối càng  không được đắp các loại lá, hay \"thuốc\" tự chế cho con, khiến bệnh càng  nặng thêm.</p>\r\n<p> </p>', '1', '1', '0', '4', '2010-04-02 04:14:07', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:14:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '3', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('13', 'Trường hợp bệnh nhân quê Hải Hậu, Nam Định này khiến các bác sĩ Viện Bỏng Quốc Gia nhớ mãi. Khi tới viện, vết bỏng của em bé đã rất sâu. Bố mẹ em cho biết, quê họ miền biển, lưu truyền bài thuốc dân gian chữa bỏng bằng muối rất hiệu nghiệm và họ áp dụng n', 'trng-hp-bnh-nhan-que-hi-hu-nam-nh-nay-khin-cac-bac-s-vin-bng-quc-gia-nh-mai-khi-ti-vin-vt-bng-ca-em-be-a-rt-sau-b-m-em-cho-bit-que-h-min-bin-lu-truyn-bai-thuc-dan-gian-cha-bng-bng-mui-rt-hiu-nghim-va-h-ap-dng-n', '', '<p>Gần đây, bạn cảm thấy khó chịu khi người ấy luôn phàn nàn rằng bạn đang  làm cho anh ấy (cô ấy) phải điên đầu. Tuy nhiên nếu bạn xem nhẹ những  lời ca thán đó, rằng đó chỉ là phản ứng quá khích mà thôi thì có lẽ bạn  nên xem lại cách cư xử của mình.</p>\r\n', '\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/34/cai1.jpg\" border=\"1\" width=\"250\" height=\"195\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Ảnh: <em>co-parentingworks.com.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Lead\">Gần đây, bạn cảm thấy khó chịu khi người ấy luôn phàn nàn  rằng bạn đang làm cho anh ấy (cô ấy) phải điên đầu. Tuy nhiên nếu bạn  xem nhẹ những lời ca thán đó, rằng đó chỉ là phản ứng quá khích mà thôi  thì có lẽ bạn nên xem lại cách cư xử của mình.</p>\r\n<p class=\"Normal\">Dưới đây là 10 điều có thể khiến người bạn đời cảm  thấy khó chịu được đăng trên <em>Times of India.</em></p>\r\n<p class=\"Normal\"><strong>1. Ngáy như một chiếc máy khoan: </strong>Đó  là một việc ngoài ý muốn, nhưng nó sẽ trở nên rất đáng lo ngại khi làm  người khác khó chịu vì bị ảnh hưởng đến giấc ngủ. Để giải quyết triệt để  nạn “ngáy như máy khoan” thì trước tiên tự bản thân bạn phải cố gắng và  thừa nhận thói xấu của mình. Ngay khi bạn phát hiện ra mình có tật xấu  đó, bạn nên tìm đến bác sĩ để giải quyết vấn đề này một cách kịp thời. <br /><br /><strong>2.  Sống dựa dẫm: </strong>Sống dựa dẫm vào bạn đời của mình sẽ khiến cuộc  sống thực sự của bạn trở nên ngột ngạt, khó thở. Lúc nào cũng mong đợi  người khác phải chịu trách nhiệm về niềm vui và hạnh phúc của mình. Đó  là con đường ngắn nhất khiến người bạn đời cảm thấy mệt mỏi vì bị ràng  buộc, gò bó và muốn tìm đường trốn chạy. Với hành động đó, bạn sẽ khiến  cho những mối quan hệ trong cuộc sống của mình tưởng như không còn có  thể tiếp tục được nữa.<br /><br /><strong>3. Luôn có sự so sánh: </strong>Chẳng  ai muốn bị đem ra so sánh. Ở bất kỳ đâu cũng sẽ có người gầy hơn, người  đẹp hơn, người giàu hơn, người hóm hỉnh hơn, người khéo tay hơn, người  bảnh bao hơn, người điều khiển mọi thứ tốt hơn…Trong một hoàn cảnh nào  đó, khi mình bị đưa ra so sánh với bất kì ai chỉ cần một tiêu chí không  tương xứng, nó sẽ làm giảm thiện chí của người khác về những việc mình  làm.<br /><br /><strong>4. Không biết lắng nghe:</strong> Không ai có thể dự  báo được tất cả những điều sẽ xảy ra, nhưng khi có ai đó có những góp ý  quan trọng hoặc tranh luận thì sự chú ý lắng nghe của bạn sẽ khiến họ  cảm thấy thực sự có thiện cảm. Đôi khi người bạn đời của bạn chia sẻ về  những khó khăn hoặc những thất bại, đau đớn, nếu bạn không chú ý lắng  nghe, những lần sau đó họ có thể sẽ không chia sẻ với bạn nữa mà tìm đến  người khác.<br /><br /><strong>5. Ghen tuông và sở hữu quá mức:</strong> Điều này một lần nữa cho thấy bản thân bạn đang đánh mất sự tin tưởng và  niềm tin của chính mình, rằng sự thực là bạn không xứng đáng với người  ấy.</p>\r\n<p class=\"Normal\">Một chút ghen tuông là rất tự nhiên, nhưng nếu bạn chỉ  khư khư giữ làm sở hữu riêng mình, ích kỉ quá mức thì có thể sẽ làm  người kia phát cáu và gây hậu quả nghiêm trọng.</p>\r\n<p class=\"Normal\"><strong>6. Luôn trễ hẹn.</strong> Không có quy ước nào  quy định chặt chẽ về mặt thời gian nhưng nếu bạn luôn trễ hẹn thì người  bạn đời sẽ cảm thấy rất khó chịu. Việc cố gắng đảm bảo đúng giờ giấc  cho thấy sự tôn trọng của bạn đối với người khác.<br /><br /><strong>7. Liên  tục phàn nàn. </strong>Có những khi thắc mắc là hoàn toàn thích đáng,  chẳng hạn như khi bạn nhận ra mình đang phải trả cho hóa đơn nước của cả  khu phố. Nhưng đối với nhiều người phàn nàn đơn giản chỉ là một thói  quen xấu. Thời tiết, những người hàng xóm, tin tức, các vấn đề thuộc sự  quản lý của chính phủ … tất cả đều vượt quá tầm kiểm soát của bạn hoặc  những hiểu biết của bạn về nó còn quá ít ỏi. Bạn thường xuyên phàn nàn  về hững điều ngoài tầm kiểm soát của bất kỳ ai khiến những người xung  quanh cảm thấy hết sức tiêu cực, nản chí, không giúp đỡ được và tìm cách  tránh mặt bạn.</p>\r\n<p class=\"Normal\"><strong>8. Không ngớt lời khuyên: </strong>Thông cảm  không có nghĩa là không đưa ra lời khuyên, nhưng trước tiên hãy biết  lắng nghe. Rất khó để kiểm soát thường xuyên những điều bạn nói với  người khác về những điều họ cần phải làm với tiền bạc, sự nghiệp, với  gia đình và những thói quen của họ . Đừng đưa ra lời khuyên trừ khi bạn  hiểu rõ ngọn ngành về nó. Bạn có thể cảm thấy phật ý khi bị xem là soi  mói vào chuyện người khác.</p>\r\n<p class=\"Normal\"><strong>9. Nhai đi nhai lại những chuyện cũ: </strong>Bạn  luôn tranh cãi về ngày “đáng nhớ” của anh ấy (hoặc cô ấy) và kết thúc  trong sự hằn học về gia đình và sự thiếu sót của nhau. Chuyện anh ấy  (hoặc cô ấy) bị cuốn hút bởi một ai đó vô cùng hấp dẫn trong một buổi  tiệc cách đây bốn tháng trước. Bạn đã hình dung cảnh tượng đó? Những  tranh cãi trên thực tế còn hơn thế và thậm chí còn trong thời gian vài  năm nhưng cái mà họ nhận được chỉ là sự mắng nhiếc thậm tệ và khiến  người kia phải tức giận bỏ đi và đi kiếm tìm lại quá khứ. Đừng làm điều  đó - bạn sẽ chẳng nhận được một điều gì hết.</p>\r\n<p class=\"Normal\"><strong>10. Chỉ trích bạn đời trước mặt người khác: </strong>Đây  là yếu tố “chán ngấy” cuối cùng khiến bạn trở nên quê mùa, thô kệch.  Nếu bạn chỉ trích bạn đời của mình trước mặt người khác, nó chỉ thể hiện  sự thiếu tự tin của chính bạn. Nói với người bạn đời của mình rằng họ  trông thật ngốc nghếch, kém cỏi đến mức không thể kể chính xác một câu  chuyện hoặc làm theo đúng những điều đã hướng dẫn trước mặt người khác  sẽ biến bạn trở thành một con người vô duyên và thô lỗ.</p>\r\n<p> </p>', '1', '1', '0', '5', '2010-04-02 04:15:17', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:15:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('14', 'Nghi án hai bác sĩ kê toa thuốc nhận \'hoa hồng\' tiền tỷ', 'nghi-an-hai-bac-s-ke-toa-thuc-nhn-hoa-hng-tin-t', '', '<p>Bán mỗi lọ thuốc khoảng 3 triệu đồng, người kê toa được hưởng gần một  triệu đồng từ công ty dược. Hai bác sĩ khoa Gan Mật, Bệnh viện ĐH Y dược  TP HCM, đã bị tạm ngưng hành nghề để giải trình vụ việc.</p>\r\n', '\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/15/tto.jpg\" border=\"1\" width=\"250\" height=\"195\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Loại thuốc đặc trị chữa viêm gan được kê toa.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Một phó giáo sư - tiến sĩ, giảng viên trường ĐH Y dược  TP HCM, cũng bị buộc tạm ngưng lên lớp vì liên quan.</p>\r\n<p class=\"Normal\">Sáng nay, ông Nguyễn Hoàng Bắc, Phó giám đốc Bệnh viện  Đại học Y dược TP HCM cho biết, hai bác sĩ khoa Gan Mật bị tạm đình chỉ  công tác 15 ngày để làm rõ sự việc.</p>\r\n<p class=\"Normal\">Trước đó, nhiều nguồn tin cho rằng hai bác sĩ này liên  quan đến việc \"ăn\" chiết khấu đến 30% từ Công ty Schering-Plough, thông  qua việc kê toa cho người bệnh ra nhà thuốc tây của mình mua hai loại  thuốc đặc trị viêm gan Peg-intron 50 mcg và Peg-intron 80 mcg. Đây là  thuốc của Công ty Schering-Plough.</p>\r\n<p class=\"Normal\">Cũng theo bác sĩ Bắc, trong giải trình ban đầu với ban  giám đốc bệnh viện, một trong hai bác sĩ có liên quan phủ nhận việc ăn  tiền hoa hồng. Người còn lại giải trình không thỏa đáng với yêu cầu của  bệnh viện nên bị đề nghị giải trình lại.</p>\r\n<p class=\"Normal\">Cùng liên quan đến sự việc trên, hôm 29/3, một phó  giáo sư - tiến sĩ hiện là giảng viên bộ môn hóa kiểm nghiệm của trường  ĐH Y dược TP HCM cũng bị tạm đình chỉ công tác. Theo phản ánh, vị phó  giáo sư - tiến sĩ này chính là giám đốc tiếp thị hai loại thuốc  Pegintron 50mcg và Pegintron 80mcg của Công ty Schering-Plough; và cũng  là người được công ty trích hoa hồng.</p>\r\n<p class=\"Normal\"><strong><span style=\"color: #4f4f4f;\">Dư luận gần đây xôn xao  thông tin một số bác sĩ đang công tác tại các bệnh viện và trường y tại  TP HCM, bắt tay với công ty dược để kê toa thuốc hưởng hoa hồng.</span></strong> Trong khoảng thời gian từ các tháng 6-7-8 và 9/2009, những vị trên đã  nhận tiền hoa hồng từ Công ty Schering-Plough để kê toa thuốc đặc trị  viêm gan Peg-intron 50 mcg và Peg-intron 80 mcg. Mức chiết khấu cao đến  gần 30%, người nhận nhiều nhất mỗi tháng khoảng 500 triệu đồng.</p>\r\n<p class=\"Normal\">Để nhận được khoản hoa hồng lớn này, các bác sĩ trên  tranh thủ giới thiệu bệnh nhân đến khám tại bệnh viện nơi mình công tác,  đi mua thuốc Peg-intron 50 mcg và Peg-intron 80 mcg ở nhà thuốc, phòng  mạch tư của mình. Bán được càng nhiều thuốc, phần trăm hoa hồng càng  cao.</p>\r\n<p class=\"Normal\">Ngày 26/3, Văn phòng Chính phủ có công văn truyền đạt ý  kiến Thủ tướng yêu cầu làm rõ vụ chiết khấu nêu trên. Vụ việc đang được  Bộ Y tế tiến hành làm rõ.</p>\r\n<p class=\"Normal\">Từ tháng 11/2009, Công ty Schering-Plough phân phối  thuốc Peg-intron 50 mcg và Peg-intron 80 mcg đã được Công ty Dược phẩm  Merck Sharp &amp; Dohme (Mỹ) tại Việt Nam mua lại. Giá bán lẻ một lọ  Peg-intron 80 mcg tại các hiệu thuốc là gần 3 triệu đồng. Như vậy, với  mức chiết khấu được Schering-Plough chấp thuận, bán mỗi lọ thuốc, người  kê toa bỏ túi gần 1 triệu đồng.</p>\r\n<p class=\"Normal\">Tại Bệnh viện ĐH Y dược TP HCM, lượng người đến khám  rất lớn. Trong đó, số người mắc viêm gan siêu vi C chỉ định điều trị  không ít. Hiện có nhiều loại thuốc khác nhau trên thị trường để điều trị  căn bệnh này.</p>\r\n<p> </p>', '1', '1', '0', '3', '2010-04-02 04:16:12', '62', '', '2010-04-05 09:26:21', '62', '0', '0000-00-00 00:00:00', '2010-04-02 04:16:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', 'bac si, pháp luật', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('15', 'Suýt chết vì trèo cột điện cao thế bắt chim', 'suyt-cht-vi-treo-ct-in-cao-th-bt-chim', '', '<p>Trốn học đi chơi, cậu bé Âu Văn Cường (Tuyên Quang) bị bỏng điện khi  trèo lên cột điện để bắt chim. Khi đó, em ngất luôn, người treo lơ lửng  bởi thân trên ngã ngửa ra sau nhưng hai chân vẫn quặp vào thanh ngang  cột điện\r\n', '\r\n.</p>\r\n<p class=\"Normal\">Sự việc xảy ra vào hôm 23/3. Rất may, lúc ấy, một  người đàn ông có nhà gần đó nhìn thấy đã gọi những người xung quanh tới  giúp và loay hoay mất hơn một giờ mọi người mới đưa được cậu bé 13 tuổi  này xuống đất.</p>\r\n<p class=\"Normal\">Khi được đưa vào trạm y tế xã Đội Cấn (huyện Yên Sơn,  Tuyên Quang) ở gần đó, Cường đã rơi vào trạng thái hôn mê và được chuyển  ngay lên bệnh viện huyện. Tại đây, em được cấp cứu, truyền nước nhưng  không có dấu hiệu tiếp nhận nên lại được chuyển tiếp lên bệnh viện tỉnh.  Mặc dù hơi tỉnh lại nhưng vì tổn thương quá nhiều, lại sâu, nên ngay  đêm đó gia đình đã đưa em đến Viện Bỏng trung ương.</p>\r\n<p class=\"Normal\">Anh Âu Văn Sĩ, bố cháu Cường cho biết, khi ở bệnh viện  địa phương, anh đã nghĩ con không thể sống nữa. Khi đó, người cháu khô  quắt, từ vai trở xuống, hai bên cánh tay, chân, bụng đều bị bỏng nặng,  có chỗ hở cả xương.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A4/0C/cuong1.jpg\" border=\"1\" alt=\"Ảnh: MT.\" width=\"350\" height=\"267\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Khi qua khỏi cơn hôn mê, cậu bé nghịch ngợm người dân  tộc Cao Lan đã nức nở: \"Con biết lỗi rồi, xin bố mẹ cứu con, sau này con  lớn con sẽ báo đáp bố mẹ\". Ảnh: <em>MT.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Tại Viện Bỏng, cháu được hồi sức cấp cứu và đã dần  tỉnh lại. Hiện tại, cháu đã tỉnh táo và vừa được phẫu thuật cắt phần  hoại tử và cấy da hôm qua<span style=\"font-family: Arial;\">.</span></p>\r\n<p class=\"Normal\">Tiến sĩ Nguyễn Hải An, phó chủ nhiệm khoa trẻ em, Viện  Bỏng Quốc gia cho biết, ít nhất Cường phải trải qua 3-5 ca phẫu thuật  nữa mới có thể bình phục.</p>\r\n<p class=\"Normal\">Theo bác sĩ An, bỏng điện cao thế rất nguy hiểm, có  thể khiến nạn nhân chết ngay lập tức do tim ngừng đập. Nếu có cứu được,  thường người bệnh cũng chịu những di chứng rất nặng nề như phải cắt cụt  chi, lộ sọ và các nội tạng... Trường hợp cháu Cường khá may mắn vì cháu  không phải cắt cụt tay, chân và ảnh hưởng nội tạng nhưng các vết bỏng  rất sâu, cần điều trị kéo dài.</p>\r\n<p class=\"Normal\">Bác sĩ An cho biết, năm nào vào mùa hè khoa cũng tiếp  nhận những trường hợp bị bỏng điện. Đó chủ yếu là các cháu ở vùng nông  thôn, gặp nạn vào kỳ nghỉ hè, khi thả diều, bắt chim gần khu vực cột  điện cao thế. Ông khuyến cáo, các bậc phụ huynh cần nhắc nhở con em  không được đến gần, trèo lên cột điện. Ngoài ra, ở các khu vực này, địa  phương nên có hành lang chắn để mọi người không ra vào, và không cho làm  nhà xung quanh. Bác sĩ cho hay, nhiều trẻ đã bị tật oan khi lên sân  thượng chơi, cất quần áo hay ra ban công hóng gió... chẳng may bị luồng  điện cao thế đánh vào.</p>', '1', '2', '0', '6', '2010-04-02 04:17:05', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:17:05', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('16', 'Cánh gà chiên mắm', 'canh-ga-chien-mm', '', '<p class=\"Lead\">Món ngon này làm rất đơn giản, lại đậm đà, dễ ăn, bạn có  thể làm ngay để cả nhà được thưởng thức tối nay.</p>\r\n<p class=\"Normal\"><em>Nguyên liệu:</em> Cánh gà: 2 cái, gia vị, mì  chính, hạt nêm, tiêu bột, đường, mạch nha, gừng, xả, ớt, hành khô, dầu  ăn, nước mắm.\r\n', '\r\n</p>\r\n<p><em><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/6C/ga1.jpg\" border=\"1\" width=\"210\" height=\"164\" align=\"left\" /></em></p>\r\n<p> </p>\r\n<p class=\"Normal\"><em>Cách làm:</em></p>\r\n<p class=\"Normal\">- Nướng thơm gừng, xả, giã dập ớt rồi bỏ tất cả vào  nồi. Thêm nước, nước mắm, gia vị, mì chính, hạt nêm, mạch nha vào cùng,  đun sôi rồi cho cánh gà vào ngâm khoảng 15 phút cho ngấm.</p>\r\n<p class=\"Normal\">- Vớt cánh gà ra chiên giòn.</p>\r\n<p class=\"Normal\">- Hành khô phi với nước mắm nêm gia vị vừa ăn cho cánh  gà đã chiên vào sóc đều.</p>\r\n<p class=\"Normal\">(<em>Trung tâm hướng dẫn nấu ăn Ezcooking Class, số 49  ngõ 49 Huỳnh Thúc Kháng, Hà Nội. Điện thoại: 04.7325732)</em></p>\r\n<p> </p>', '1', '3', '0', '12', '2010-04-02 04:19:23', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:19:23', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '3', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('17', 'Thưởng thức thịt nướng Singapore tại Việt Nam', 'thng-thc-tht-nng-singapore-ti-vit-nam', '', '<p class=\"Lead\">Thịt nướng nổi tiếng Fragrance Xiang Wei của Singapore  có mặt tại cửa hàng Neta TP HCM với nhiều sản phẩm thơm ngon, bổ dưỡng.\r\n', '\r\n</p>\r\n<p class=\"Normal\">Thịt nướng nhân sâm và que xiên Fragrance là sản phẩm  chế biến sẵn có nhân sâm và các loại thảo mộc rất tốt cho sức khỏe. Thịt  nướng Fragrance có nguyên liệu là thịt heo tươi kết hợp với 18 loại  thảo mộc khác nhau. Sản phẩm được pha trộn theo kiểu truyền thống và  quản lý chặt chẽ về chất lượng. Món ăn này giữ được sự tươi ngon, không  chất bảo quản và giữ được lâu hơn các loại thịt khác đến 2 tuần mà không  cần bảo quản ở nhiệt độ lạnh.</p>\r\n<p class=\"Normal\">Công ty Fragrance cũng đưa ra thị trường sản phẩm  Bak-kwa chế biến từ thịt cá sấu, gà tây và sản phẩm Bak-kwa với thành  phần men bia đỏ giúp giảm lượng cholesterol trong cơ thể. Hiện nay,  Fragrance đã cho ra mắt sản phẩm ‘‘Bak-kwa với que xiên’’. Đây là món ăn  kết hợp Bak-kwa truyền thống trên que xiên bằng tre. Mỗi que xiên chỉ  với giá 19.000 đồng rất thuận tiện cho thực khách muốn dùng thử.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/3C/Anh1.jpg\" border=\"1\" width=\"400\" height=\"266\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Ngoài thịt nướng, Fragrance Foodstuff còn sản xuất các  loại thực phẩm ngon cho gia đình như: lạp xưởng kiểu Hong Kong, thịt  sợi, mực sợi và bánh Trung thu. Lạp xưởng kiểu Hong Kong luôn sự lựa  chọn tối ưu cho những người thích ăn chung với cháo. Loại lạp xưởng này  có sự pha trộn rượu Mei Kuei Lu. Lạp xưởng được đóng thành hộp thích hợp  để làm quà. Các sản phẩm ruốc từ thịt gà, heo và cá cũng được đóng gói  hoặc cho vào hộp tiện lợi.</p>\r\n<p class=\"Normal\">Đáp ứng cầu của người tiêu dùng, Fragrance Foodstuff  cũng cho ra đời hàng loạt các loại sản phẩm mực cay hoặc không cay được  đóng gói hay cho vào hộp tiện lợi.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/3C/Anh02.jpg\" border=\"1\" width=\"400\" height=\"394\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Fragrance Foodstuff Mooncakes rất phổ biến trong lễ  hội Trung Thu hàng năm bởi các kiểu dáng và hương vị đa dạng. Bánh Trung  thu da tuyết nhân sầu riêng, hạt sen, pandan, khoai lang là lựa chọn  của những người trẻ tuổi thích ăn ngọt, trong khi đó loại bánh nướng  truyền thống với lòng đỏ trứng luôn hấp dẫn thế hệ thực khách lớn tuổi.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/3C/Anh3.jpg\" border=\"1\" width=\"400\" height=\"266\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Neta là công ty đầu tiên mua nhượng quyền thương mại  từ Singapore Fragrance và trở thành công ty duy nhất được quyền phân  phối và bán các sản phẩm của Fragrance Foodstuff tại Việt Nam. Neta nhập  khẩu trực tiếp sản phẩm từ nhà máy của Fragrance tại Singapore. Các sản  phẩm Neta phân phối đã được cấp giấy chứng nhận về an toàn vệ sinh thực  phẩm như HACCP, ISO22000, cũng như đạt các yêu cầu về chất lượng sản  phẩm bởi các cơ quan có thẩm quyền trước khi xuất khẩu tại Singapore hay  nhập khẩu vào Việt Nam.</p>\r\n<p class=\"Normal\">Nhân dịp khai trương, cửa hàng Neta giảm giá 20% hóa  đơn thanh toán từ nay đến 31/5.</p>\r\n<p class=\"Normal\">Công ty TNHH MTV Hương Vị Mới</p>\r\n<p class=\"Normal\">144 Nguyễn Trãi, phường Bến Thành, quận 1</p>\r\n<p class=\"Normal\">ĐT: 39259656 - Fax: 39259657</p>', '1', '3', '0', '12', '2010-04-02 04:20:34', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:20:34', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('18', 'Bổ sung gia vị cho cháo bổ dưỡng', 'b-sung-gia-v-cho-chao-b-dng', '', '<p class=\"Lead\" align=\"left\">30g lá bạc hà tươi, sắc lên lấy nước cho  vào nồi cháo, cho thêm ít đường phèn, ăn trong ngày để chữa bệnh sốt  nóng, đau đầu, mắt đỏ, đau họng, nói khàn, giải cảm.\r\n', '\r\n</p>\r\n<p class=\"Normal\" align=\"left\">Ngoài việc nâng cao thể trạng, chống đỡ  với các loại bệnh khác nhau, cháo còn góp phần đẩy lui nhiều căn bệnh  nguy hiểm. Chỉ cần bổ sung vài gia vị khác, bạn sẽ có vị thuốc chữa bệnh  tốt. Bà Vũ Thị Liên, Giám đốc chuỗi cửa hàng “Cháo Gia Đình” chia sẻ  kinh nghiệm để giúp món cháo ngon, bổ dưỡng hơn.</p>\r\n<p class=\"Normal\" align=\"left\">Một quả mướp (đã thái nhỏ và luộc chín)  cho vào một bát cháo nấu sẵn giúp những người bị cảm, ho cảm thấy dễ  chịu hơn rất nhiều. Loại cháo này làm mát huyết, trừ cảm gió, ho có đờm,  giải độc, thanh nhiệt, thông kinh hoạt lạc, băng huyết. Đây là món ăn  bổ trợ cho những người đang chữa viêm khí phế quản mạn tính, lở ngứa do  nóng nhiệt.</p>\r\n<p class=\"Normal\" align=\"left\">Khoảng 20-30g sắn dây thêm vào bát cháo  nấu sẵn, ăn khi còn nóng rất tốt cho những người bị huyết áp cao. Ngoài  ra, loại cháo này cũng bổ trợ cho người bị bệnh mạch vành, đái tháo  đường, tả lị gây tỳ hư, miệng khô, khát nước nhiều trong mùa hè.</p>\r\n<p class=\"Normal\" align=\"left\">Bạn có thể dùng 30g tỏi bóc vỏ, xát mỏng,  nấu sôi 5 phút, chắt lấy nước cho vào bát cháo, ăn nguội rất tốt cho  những người không có cảm giác thèm ăn. Loại cháo ăn hơi cay vì có tỏi,  có khả năng làm giảm chất mỡ trong máu, sát trùng diệt khuẩn. Ngoài ra,  món ăn còn kích thích tiêu hóa gây thèm ăn, hạ huyết áp và chống ung  thư.</p>\r\n<p class=\"Normal\" align=\"left\">60g rau răng ngựa hay còn gọi là rau  trường thọ, rửa sạch thái nhỏ, quấy vào nồi cháo đang sôi sẽ có tác dụng  chữa bệnh lỵ cấp tính, viêm ruột mùa hè gây rối loạn tiêu hóa, đau  quặn, mót rặn đi ngoài lúc loãng toàn nước lúc phân lẫn chất nhày như  mũi.</p>\r\n<p class=\"Normal\" align=\"left\">Bên cạnh đó, 30g lá tre đun lấy nước rồi  cho vào cháo, ăn nguội có tác dụng làm cơ thể đỡ khát nước trong mùa hè,  hết lo âu phiền muộn, chữa mắt đỏ do can uất, nước giải vàng do thận  hư, thanh nhiệt trong mùa hè oi bức.</p>\r\n<p class=\"Normal\" align=\"left\">30g lá bạc hà tươi, sắc lên lấy nước cho  vào nồi cháo, cho thêm ít đường phèn, ăn trong ngày để chữa bệnh sốt  nóng, đau đầu, mắt đỏ, đau họng, nói khàn, giải cảm.</p>\r\n<p class=\"Normal\" align=\"left\">Những người bị bệnh đau đầu khó chịu, tức  ngực đau sườn, nôn mửa đi lỏng, bụng ấm ách không tiêu, tinh thần buồn  bã, ăn ngủ thất thường có thể được chữa khỏi nếu dùng 15g hoắc hương đun  sôi lấy nước cho vào cháo, thêm một chút đường đỏ hay muối vừa đủ, để  nguội, ăn trong ngày.</p>\r\n<p class=\"Normal\" align=\"left\">100g hoài sơn (củ mài) nấu lẫn với cháo,  khi chín cho gia vị vừa đủ, ăn nguội có tác dụng bổ tỳ vị, bổ phế thận,  sinh tân chỉ khát, bình xuyễn, sáp tinh. Cháo ăn chữa được bệnh tả lỵ  lâu ngày, hư lao, tiểu đêm nhiều lần, thận hư yếu.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/B1/CGD_1.jpg\" border=\"1\" width=\"350\" height=\"250\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Hiện nay, thương hiệu Cháo Gia Đình có  rất nhiều loại cháo để khách hàng lựa chọn như cháo gà, cháo bò, cháo  tôm, cháo thịt heo, cháo cá, cháo tim - bầu dục... Mới đây, thương hiệu  Cháo Gia Đình ra mắt cửa hàng đầu tiên tại 26 Hòe Nhai (ĐT:  04.22600680). Trong thời gian tới, một chuỗi cửa hàng Cháo Gia Đình sẽ  được triển khai để phục vụ thực khách tại Hà Nội với dịch vụ giao cháo  tận nhà.</p>', '1', '2', '0', '7', '2010-04-02 04:21:20', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:21:20', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('19', 'Sườn non hầm tương Quế lâm', 'sn-non-hm-tng-qu-lam', '', '<p>Món sườn này rất lạ  miệng bởi có vị đặc trưng của tương Quế lâm và các loại gia vị. Mời bạn  cùng các đầu bếp Rosa trổ tài đãi gia đình vào bữa cơm đầu tuần. \r\n', '\r\n</p>\r\n<p class=\"Lead\"><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A3/53/suon.jpg\" border=\"1\" width=\"210\" height=\"164\" align=\"left\" /></p>\r\n<p class=\"Normal\"><em>Nguyên liệu:</em> 300g sườn non, một củ cà rốt,  1/3 trái thơm, 1/3 cây mía, một củ gừng, 20g tiêu xanh, một trái dừa  tươi, một trái ớt sừng, một củ hành tây. Gia vị gồm: một hũ hủ sauce  tương quế lâm, nửa muỗng muối, một muỗng bột ngọt, một muỗng bột nêm,  tiêu xay.</p>\r\n<p class=\"Normal\"><em>Cách làm</em></p>\r\n<p class=\"Normal\">- Sườn non chặt khúc, rửa sạch và chần sơ, cà rốt bào  vỏ tỉa hoa. Thơm rửa sạch cắt lát. Mía róc vỏ chặt khúc. Gừng gọt sạch  vỏ cắt lát. Tiêu xanh rửa sạch. Hành tây lột vỏ xắt múi cau.</p>\r\n<p class=\"Normal\">- Sườn non ướp gia vị: muối + bột nêm + sauce tương  Quế lâm cho thấm 20 phút. Cho vào nồi đất xào cho săn và vàng thịt.</p>\r\n<p class=\"Normal\">- Cho các loại rau củ đã làm sạch cho nồi + nước dừa  tươi vào để lửa riu riu đến khi nước keo lại là được. Nêm lại cho vừa  ăn.</p>\r\n<p class=\"Normal\">Món này kèm với bánh mì.</p>\r\n<p class=\"Normal\" align=\"left\">(<em>Công ty Đào tạo nghiệp vụ Rosa.</em> <em>Địa chỉ: 75C Hà Huy Giáp, phường Quyết Thắng, Biên Hòa, Đồng Nai.  Điện thoại: 061.88.20.369)</em></p>', '1', '2', '0', '10', '2010-04-02 04:22:14', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:22:14', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('20', 'Gà trống nướng sốt ớt', 'ga-trng-nng-st-t', '', '<p class=\"Lead\">Vẫn từ nguyên liệu rất quen thuộc nhưng với cách chế  biến khác lạ này, bạn sẽ có một món gà với hương vị thật đặc biệt, hấp  dẫn. \r\n', '\r\n</p>\r\n<p class=\"Normal\"><em>Nguyên liệu</em>: Một con gà trống hấp khoảng 20  phút (nước hấp cho gừng + rượu), 100g ớt đỏ bằm, muối, tương ớt, tỏi +  sả + ớt xay nhuyễn, xà lách + dưa leo, xôi chiên phồng.</p>\r\n<p><img src=\"http://vnexpress.net/Files/Subject/3B/A1/9C/62/nuong.jpg\" border=\"1\" width=\"350\" height=\"228\" /></p>\r\n<p class=\"Normal\"><em>Cách làm</em>:</p>\r\n<p class=\"Normal\">- Làm sốt: Bắc chảo, cho một muỗng súp dầu ăn + tỏi +  ớt + sả xay nhuyễn + một muỗng canh muối + một muỗng súp tương ớt + một  muỗng canh đường quậy đều lên + 1,5 muỗng súp nước đun sệt lại và tắt  bếp.</p>\r\n<p class=\"Normal\">- Gà hấp chín, ướp với hỗn hợp trên khoảng 30 phút rồi  đem đi nướng. Khi thưởng thức chấm với muối ớt.</p>\r\n<p class=\"Normal\">- Cách làm muối ớt: Một muỗng cà phê muối + một muỗng  canh sả + một muỗng canh ớt rồi xào khô, cho thêm một muỗng canh hạt nêm  và tắt bếp ngay, đem đi xay nhuyễn.</p>\r\n<p class=\"Normal\" align=\"left\">(<em>Công ty Đào tạo nghiệp vụ Rosa.</em> <em>Địa chỉ: 75C Hà Huy Giáp, phường Quyết Thắng, Biên Hòa, Đồng Nai.  Điện thoại: 061.88.20.369)</em></p>', '1', '4', '0', '15', '2010-04-02 04:23:07', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:23:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '3', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('21', 'Rượu vang Ona Syrah và canh nấm', 'ru-vang-ona-syrah-va-canh-nm', '', '<p class=\"Lead\" align=\"left\">Nấm, rượu vang đều đến từ những vùng đất có  khí hậu, vị trị địa lý tương đồng và đều có lợi cho sức khỏe, dễ sử  dụng.\r\n', '\r\n</p>\r\n<p class=\"Normal\" align=\"left\">Xu hướng ăn tiệc tại các nhà hàng  Fine-dinning cho những dịp gặp mặt với đồng nghiệp, đối tác, bạn bè hay  những buổi kỷ niệm của gia đình đã phổ biến trong một xã hội năng động.  Phong cách thưởng thức và sự tinh tế trong việc kết hợp giữa đồ ăn, thức  uống giúp bữa tiệc trở nên ngon miệng và thú vị. Những món ăn ngon nếu  biết thưởng thức cùng các loại đồ uống thích hợp sẽ kích thích vị giác  và đánh thức các giác quan của người dùng.</p>\r\n<p class=\"Normal\" align=\"left\">Lẩu nấm ngon và bổ dưỡng là món ăn yêu  thích của nhiều thực khách trong xu hướng tìm lại với thiên nhiên. Nấm  vốn là thân cỏ, mềm, mát dịu, rất hợp với những đồ uống cùng có vị ngọt,  hơi chát, không quá nồng, thơm mùi thiên nhiên đặc biệt phù hợp với  rượu vang.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A0/9F/Nam_bung_lon_va_ruou_Ona_Syrah.jpg\" border=\"1\" width=\"350\" height=\"250\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Vẻ đẹp của ly rượu vang cùng độ rượu nhẹ  nhàng, thơm quyện với hương nấm rất thích hợp với phụ nữ và cả những quý  ông “sành” thưởng thức giúp cho bữa tiệc trở nên nhẹ nhàng nhưng không  kém phần ấm cúng và sang trọng. Nấm và rượu vang có rất nhiều điểm tương  đồng với nhau nhưng điểm chung và cũng là ưu điểm lớn nhất đó là rất có  lợi cho sức khỏe nếu sử dụng hợp lý và đều đặn.</p>\r\n<p class=\"Normal\" align=\"left\">Ngoài ra, chất lượng của chúng đều phụ  thuộc vào vị trí địa lý và khí hậu của nơi xuất xứ. Những cây nấm quý  thường ở những vùng đất có khí hậu trong lành. Những loại rượu vang  thượng hạng đều phải làm từ những chùm nho căng mọng được trồng trên  vùng đồi cao, lộng gió như vang Ona Premium Syrah của hãng Anakena -  hãng rượu vang Chile danh tiếng được Đại sứ quán nước này lựa chọn giới  thiệu tới người tiêu dùng Việt Nam.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A0/9F/Nam_mang_hoa_va_ruou_Ona_Syrah_%282%29.jpg\" border=\"1\" width=\"350\" height=\"250\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Loại rượu này được làm ra từ loại nho  Syrah trồng trên đồi Rapel, Layda ở San Antonio và đồi Ninquen vùng  Colchogua, Chile, thơm ngon bởi chất lượng nho trồng và công thức chế  biến cũng như bảo quản khắt khe. Loại vang Chile này có sắc màu đỏ thậm,  mùi thơm quyến rũ từ quả mâm xôi và chocolate đen cùng các gia vị đặc  biệt. Khi thưởng thức cùng lẩu nấm, thực khách cảm nhận được sự hài hòa  giữa vị thanh, ngọt của nấm, vị giác đậm đà pha với vị chát của vang Ona  Premium Syrah lưu lại rất lâu trong họng.</p>\r\n<p class=\"Normal\" align=\"left\">Rượu vang Ona Premium Syrah có giá ưu đãi  (giảm từ 719.000 đồng xuống còn 579.000 đồng một chai) từ 22/3 đến  22/5.</p>\r\n<p class=\"Normal\" align=\"left\">Địa chỉ nhà hàng lẩu nấm Ashima:</p>\r\n<p class=\"Normal\" align=\"left\"><em>Tại Hà Nội</em></p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 44 Phan Đình Phùng, quận Ba  Đình, Hà Nội. ĐT: 04. 37344600</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 182 Triệu Việt Vương, quận Hai  Bà Trưng, Hà Nội. ĐT: 04. 29743675</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 60 Giang Văn Minh, quận Ba Đình,  Hà Nội. ĐT: 04. 37226353</p>\r\n<p class=\"Normal\" align=\"left\"><em>Tại TP HCM:</em></p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 35A Nguyễn Đình Chiểu, quận 1.  ĐT: 08. 38241966</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 11 Công Trường Mê Linh, quận 1.  ĐT: 08. 38238799</p>\r\n<p class=\"Normal\" align=\"left\">- Ashima 11 Tú Xương, phường 7, quận 3.  ĐT: 08. 39320828</p>', '1', '4', '0', '16', '2010-04-02 04:23:46', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-02 04:23:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('23', 'Nguy cơ bùng phát sim rác 3G', 'nguy-c-bung-phat-sim-rac-3g', '', '<p class=\"Lead\">Nhiều khách hàng mua sim 3G về dùng hết tiền trong tài  khoản thì bỏ, họ chỉ mua thẻ cào để nạp khi có khuyến mại.\r\n', '\r\n</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/F0/3g.jpg\" border=\"0\" width=\"450\" height=\"323\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Theo số liệu thống kê của nhà mạng, cả nước đã có trên  14 triệu thuê bao 3G. Ảnh: <em>ICT.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Anh Trịnh Vũ, chủ một cửa hàng sim thẻ trên phố Bà  Triệu, Hà Nội cho biết thực tế tồn tại trên thị trường di động hiện nay  là khi nhà mạng khuyến mãi tặng 50% giá trị thẻ nạp, người tiêu dùng mua  thẻ cào nạp tiền cho thuê bao chính dùng để thường xuyên liên lạc. Hết  chương trình khuyến mãi, họ lại chuyển sang mua sim. Sim dùng hết tiền  trong tài khoản lại bị vứt bỏ, thành thử thị trường sim vẫn sôi động và  có sức tiêu thụ lớn.</p>\r\n<p class=\"Normal\">Theo anh Vũ, kể từ khi 3 mạng di động đại gia lần lượt  khai trương 3G, kinh doanh sim thẻ cũng “hốt” hơn. Gần đây, thẻ sim  khan hiếm, giá bị đội lên nhưng những sim còn tài khoản khuyến mãi vẫn  bán rất chạy. Nhiều người mua sim không chỉ để nghe và gọi mà còn lướt  web, sử dụng các dịch vụ 3G. “Lượng sim tiêu thụ do nhu cầu 3G cũng phần  nào khiến sim đợt này liên tục hết hàng”, anh cho biết.</p>\r\n<p class=\"Normal\">Là dịch vụ công nghệ cao được các nhà mạng đầu tư hàng  chục nghìn tỷ đồng nhưng giá cước thực tế của 3G lại rẻ. Khách hàng chỉ  cần mua một bộ kit từ 50.000 đến 60.000 đồng, sau khi kích hoạt được  160.000 đồng và đăng ký 3G là có thể dùng cả tháng.</p>\r\n<p class=\"Normal\">Trong số 3 nhà mạng đã cung cấp 3G, Viettel trừ cước  3G thẳng vào tài khoản chính. VinaPhone và MobiFone đều trừ vào tài  khoản thưởng trước, trong trường hợp tài khoản thưởng không đủ tiền để  trừ hoặc hết tiền mới tiếp tục trừ vào tài khoản chính của khách hàng.  Chính vì thế, sim của MobiFone và VinaPhone rất đắt hàng cho việc dùng  các dịch vụ 3G. Chỉ có điều, giống như xu hướng xài sim thay thẻ cào,  những thuê bao này sau khi dùng hết tiền trong tài khoản sẽ bị bỏ đi.</p>\r\n<p class=\"Normal\">Theo anh Nguyễn Đắc Dư, một chủ đại lý kinh doanh sim ở  Bắc Ninh, hiện nay, học sinh, sinh viên được coi là đối tượng tiêu thụ  sim khuyến mãi để sử dụng 3G nhiều nhất. Thông thường các bạn này mua  một bộ sim trả trước về đăng ký 3G gói 30 ngày, cắm vào ổ USB 3G dùng  thay modem, lướt web thoải mái chơi game, xem phim. \"Dùng USB 3G này  không phải đăng ký thuê bao Internet, di chuyển dễ và quan trọng là giá  rẻ hơn khá nhiều”, anh cho biết.</p>\r\n<p class=\"Normal\">Dân sành dế cũng rỉ tai nhau các chiêu lướt 3G giá  siêu rẻ. Một mẹo được khá nhiều người sử dụng đó là mua tạm máy điện  thoại hỗ trợ 3G cũ giá rẻ (khoảng dưới 1 triệu đồng), dùng nó làm modem,  cắm thẳng vào máy tính và tha hồ truy cập Internet.</p>\r\n<p class=\"Normal\">Quan chức một mạng di động lớn cho rằng do đưa ra gói  cước truy cập Internet 3G chỉ mất 250.000 đồng nên khá nhiều khách hàng  đã chuyển sang dùng 3G để truy cập Internet bằng USB thay cho ADSL. \"Với  khách hàng thì có lợi, nhưng với xu hướng mua sim thay thẻ cào dùng  dịch vụ 3G như vậy thì nhà mạng sẽ lỗ\", vị quan chức này nói.</p>\r\n<p class=\"Normal\">Giới chuyên gia nhìn nhận, nhìn vào thực tế thị trường  hiện nay càng có lý do để nghi ngờ số thuê bao 3G mà nhà mạng công bố.  Theo số liệu mà nhà mạng công bố, đã có trên 14 triệu thuê bao 3G. Trong  đó VinaPhone giữ vị trí số một với hơn 7 triệu, MobiFone với 6 triệu,  Viettel 1 triệu, còn lại là các mạng khác.</p>\r\n<p class=\"Normal\">Hiện cả nước có gần 120 triệu thuê bao di động. Tuy  nhiên, số thuê bao thực chỉ khoảng 50 triệu, trong đó, thuê bao 2G vẫn  chiếm vai trò chủ đạo. Số liệu thống kê của nhà mạng cho thấy tại Việt  Nam vẫn còn khoảng 20 triệu người chưa dùng di động, tương đương với 30  triệu thuê bao. Khoảng 92% dân số chưa có phương tiện để truy cập  Internet. Do đó, thị trường viễn thông vẫn được coi là tiềm năng và là  mảnh đất màu mỡ để 3G phát triển.</p>', '1', '3', '0', '13', '2010-04-05 06:52:24', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-05 06:52:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('24', 'Nhiều trai Trung Quốc mơ lấy vợ Việt', 'nhiu-trai-trung-quc-m-ly-v-vit', '', '<p class=\"Normal\">Cộng đồng mạng ở Trung Quốc từ lâu lưu truyền lời  đồn rằng phụ nữ Việt Nam luôn mong ngóng lấy chồng Trung Quốc. Các hãng  môi giới quảng cáo rằng các cô dâu Việt Nam \"ngoan ngoãn và hiền dịu\",  và các chàng không tốn quá nhiều tiên cũng như thời gian để lấy vợ. Báo  China Daily viết bài về hiện tượng nhiều đàn ông nước này bắt đầu theo  xu hướng đi tour tìm vợ ở Việt Nam.</p>\r\n', '\r\n<p> </p>\r\n<p class=\"Lead\"><a class=\"Lead\" href=\"http://vnexpress.net/GL/The-gioi/Anh/2010/04/3BA1A704/\"></a></p>\r\n<table style=\"width: 1px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/0F/d.jpg\" border=\"1\" alt=\"Dai và vợ - Ngân - trong ngày cưới. Ảnh: China Daily.\" width=\"392\" height=\"431\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Dai và vợ - Ngân - trong ngày cưới. Ảnh: <em>China  Daily.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Anh chàng 43 tuổi người Nam Kinh tìm được ý trung nhân  - Ngân, người Việt Nam - hồi tháng 8 năm ngoái. \"Tôi biết nàng không  giống những phụ nữ khác. Khi tôi giương ô che cho nàng khỏi nắng gắt,  nàng giành lấy và che cho tôi\", Dai kể lại.</p>\r\n<p class=\"Normal\">Họ cưới nhau chỉ hai tháng sau và Ngân giờ đây đã mang  bầu 1 tháng. Cô hòa nhập khá nhanh, đã biết một chút tiếng Trung và  thậm chí đã quen với cái lạnh ở Nam Kinh.</p>\r\n<p class=\"Normal\">Từ tháng 9 năm ngoái, Dai bắt đầu tổ chức các tour hôn  nhân cho những người như anh. Hơn một nửa những chàng này xuất thân từ  Bắc Kinh hoặc Thượng Hải. Các chàng đều có ít nhất một tấm bằng cử nhân,  tuổi từ 35 tới 45. Một phần ba trong số đó nắm chức vụ khá lớn trong  các công ty đa quốc gia.</p>\r\n<p class=\"Normal\">Những chàng rể tiềm năng nói trên được đưa đến Việt  Nam và tham gia các cuộc hẹn hò chóng vánh với 10 cô gái từ 18 tới 25  tuổi mỗi ngày. Đối tác ở Việt Nam của Dai chọn các cô có ít nhất trình  độ trung học trở lên. Kết quả là, họ đã kết duyên cho gần 50 cặp mà họ  mô tả là \"trời sinh\".</p>\r\n<p class=\"Normal\"><strong><span style=\"color: #4f4f4f;\">Trào lưu này vẫn còn khá  mới ở đại lục</span></strong> dù ở Đài Loan chuyện này đã cũ. Có tới  87.000 phụ nữ Việt lấy chồng Đài Loan trong khoảng thời gian từ tháng  1/1987 tới tháng 3/2008, theo kết quả khảo sát trên mạng của Mạng lưới  hôn nhân xuyên biên giới châu Á. <em>China Daily</em> nhận định khó có  thể xác định số cô dâu Việt ở đại lục vì họ có thể đăng ký kết hôn với  chính quyền một trong hai nước.</p>\r\n<p class=\"Normal\">Chuyên gia về hôn nhân xuyên quốc gia ở Đại học Thượng  Hải Deng Weizhi cho rằng nguyên nhân của hiện tượng trên một phần là do  vị thế của phụ nữ Trung Quốc trong xã hội đã tăng lên. Ngoài ra, tỷ lệ  mất cân bằng nam nữ cũng là một yếu tố đáng kể. Trung Quốc, theo ông,  cũng là một nơi khá hấp dẫn với phụ nữ Việt vì văn hóa hai nước có nhiều  điểm tương đồng. \"Chính tính cách nhu mì và việc luôn tôn trọng chồng  khiến phụ nữ Việt Nam có giá\", Deng nói thêm.</p>\r\n<p class=\"Normal\">Zhou, quản lý trang web Vietnam Blind Dating, đồng  tình. Anh nói một trong những động cơ khiến đàn ông Trung Quốc tìm tới  Việt Nam là vì họ \"chán ngấy thái độ cao ngạo\" của con gái trong nước.  Zhou, 40 tuổi, cũng tổ chức các tour hôn nhân tới Việt Nam. Mỗi tháng  anh đưa 3 người tới Việt Nam và từ chối những anh nào mới ngoài 20 tuổi  vì cho rằng họ chưa nghiêm túc về hôn nhân.</p>\r\n<table style=\"width: 1px;\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/0F/d2.jpg\" border=\"1\" alt=\"Đám cưới của Đông - người Trung Quốc - và cô dâu Việt Nam -  Tiến. Ảnh: China Daily.\" width=\"391\" height=\"431\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Đám cưới của Đông - người Trung Quốc - và cô dâu Việt  Nam - Tiến. Ảnh:<em> China Daily.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Dai Wensheng nảy ra ý định tìm kiếm vợ Việt khi anh  đọc một bài báo nói về hiện tượng này năm 2008. Hai năm hẹn hò thất bại  cũng là nguyên nhân khiến anh tìm tới phương nam. \"Tôi có cảm giác những  phụ nữ tôi gặp trước đó chỉ muốn kết hôn vì tiền và địa vị\", Dai nói.</p>\r\n<p class=\"Normal\">Sau 3 tháng chuẩn bị, Dai lên đường tới Việt Nam vào  tháng 8 năm ngoái. Anh tường thuật trực tiếp 1 tháng kiếm vợ trên blog  và thu hút được nhiều sự quan tâm. Phần lớn những người đọc blog bày tỏ ý  muốn theo chân anh. Một người trong số họ là Zhao, người Bắc Kinh, đã  tìm được vợ nhờ sự giúp đỡ của Dai. Anh chàng quản lý trang web 39 tuổi  này vốn rất ngượng ngùng khi đứng cạnh phụ nữ. Viễn cảnh yêu đương của  chàng cũng không mấy sáng sủa khi anh nghĩ cần thăng tiến trong sự  nghiệp và kiếm nhiều tiền hơn.</p>\r\n<p class=\"Normal\">Zhao tham gia tour hôn nhân lần đầu vào tháng 2 để  trải nghiệm văn hóa Việt Nam. Tháng này, anh trở lại và tìm được một cô  gái ưng ý. Họ đang chờ sự đồng ý của cha mẹ cô. \"Phụ nữ Việt Nam có  những tiêu chuẩn hoàn toàn khác\", Zhao nói. \"Tất cả những gì họ cần là  một người chồng biết yêu thương, chân thành và một gia đình hạnh phúc\",  Zhao nói.</p>\r\n<p class=\"Normal\">Những anh muốn kiếm vợ sẽ phải trả khoảng 5.100 USD để  tham gia các tour này. Một số người còn trả thêm để đi tour tìm hiểu  đất nước Việt Nam. Dai chọn khoảng 10 chàng trong số 100 ứng viên mỗi  tháng.</p>\r\n<p class=\"Normal\">Do 50% những chàng rể tương lai đều đã ly hôn, Dai  phỏng vấn để bỏ những người có ý định không tốt. Dai thường chọn những  người có lương trên trung bình bởi vì phụ nữ khi tới Trung Quốc thường  phải sống nhờ chồng do rào cản ngôn ngữ khiến họ khó kiếm việc. Họ cũng  không được hưởng phúc lợi xã hội trong 5 năm đầu tiên.</p>\r\n<p class=\"Normal\">Dù nhiều cặp yêu từ cái nhìn đầu tiên, việc giành được  tình cảm của cha mẹ nàng không dễ dàng. Nhiều anh phải trở lại Việt Nam  tới hai, ba lần để cưới vợ. May mắn cho Dai, vợ anh rất muốn lấy chồng  Trung Quốc vì anh rể của cô là người Hong Kong và Đài Loan và họ đều là  những anh chồng tốt.</p>\r\n<p class=\"Normal\">Dai - cũng sở hữu một công ty truyền thông - thường tổ  chức các cuộc gặp gỡ cho những cô dâu Việt ở Thượng Hải. Anh cũng mở  một diễn đàn trên mạng cho các anh chồng để bàn luận về chuyện gia đình,  ví dụ như quốc tịch cho con.</p>\r\n<p class=\"Normal\">Dai đã đăng thông tin cho tour tháng sau tới Việt Nam.  \"Tôi rất hài lòng khi giúp nhiều người gặp được nhau\", anh nói, song  cũng cảnh báo các ứng viên nhớ rằng những thứ như rào cản ngôn ngữ, khác  biệt văn hóa có thể gây cản trở cho cuộc sống của họ sau này.</p>', '1', '3', '0', '13', '2010-04-05 06:53:44', '62', '', '2010-04-07 07:26:21', '62', '0', '0000-00-00 00:00:00', '2010-04-05 06:53:44', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '3', '0', '1', '', '', '0', '1', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('25', 'Trang này đang được xây dựng', 'trang-nay-ang-c-xay-dng', '', '<p>...</p>', '', '1', '6', '0', '33', '2010-04-06 07:32:19', '62', '', '2010-04-06 07:38:39', '62', '0', '0000-00-00 00:00:00', '2010-04-06 07:32:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '1', '', '', '0', '8', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('26', 'Chiếc răng khổng lồ nặng hơn 300 kg tại TP HCM', 'chic-rng-khng-l-nng-hn-300-kg-ti-tp-hcm', '', '<p class=\"Lead\" align=\"left\">Chiếc răng khổng lồ cao 3m, đường kính 3 m  đặt tại công viên 23/9, TP HCM từ ngày 5/4 và những trò chơi thú vị  quanh nó giúp các bé dễ dàng tiếp thu những kiến thức về sức khoẻ răng  miệng.\r\n', '\r\n</p>\r\n<p class=\"Normal\" align=\"left\">Mỗi tối, nơi đây thu hút các em bé và cha  mẹ bởi ánh sáng rực rỡ của của hệ thống đèn chiếu. Chiếc răng không chỉ  thu hút người dân bởi kích thước khác thường mà còn vì nó bị vàng ố với  nhiều mảng bám trên thân răng. Với hình ảnh trực quan này, trẻ em có  thể thấy hậu quả của việc không đánh răng. Các em sẽ thấy răng của mình  sẽ biến đổi nhanh thế nào nếu không đánh trước khi đi ngủ.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/DD/Hinh1.jpg\" border=\"1\" alt=\"Chiếc răng khổng lồ ở công viên 23/9- Tp.HCM đã góp phần  tạo ra sự hứng thú cho các bé trong khóa học về chăm sóc sức khỏe răng  miệng.\" width=\"400\" height=\"289\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Chiếc răng khổng lồ ở công viên 23/9, TP HCM đã góp  phần tạo ra sự hứng thú cho các bé trong khóa học về chăm sóc sức khỏe  răng miệng.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\" align=\"left\">Không ít bà mẹ than phiền con mình không  chịu đánh răng hoặc rất khó khăn. Có nhiều lý do khác nhau khiến trẻ  ghét hoạt động này, thường là do không muốn bị cắt ngang các trò thú vị  khác như chơi game, xem TV… Ngoài ra, do người lớn bận việc quên nhắc  nhở con mình đánh răng, lâu ngày sẽ khiến trẻ không có thói quen vệ sinh  tự giác. Trẻ sẽ chống đối mỗi khi bị bắt đánh răng, đặc biệt là trước  khi đi ngủ nên phụ huynh thường phải dùng những biện pháp “mạnh”, ép  buộc trẻ tuân thủ mệnh lệnh của mình.</p>\r\n<p class=\"Normal\" align=\"left\">Đến nơi trưng bày này, ngoài việc hướng  dẫn thông qua hình ảnh trực quan để thực hành tốt nhất, phụ huynh còn  được hướng dẫn cách truyền tải phù hợp với tâm lý trẻ nhỏ để khuyến  khích các em đánh răng, đặc biệt trước khi đi ngủ một cách tự nguyện và  vui vẻ.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/DD/Hinh-31.jpg\" border=\"1\" width=\"254\" height=\"400\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Ngoài chiếc răng khổng lồ, những trò chơi tại công  viên 23/9 giúp bé hiểu được tầm quan trọng của việc đánh răng vào buổi  sáng và tối.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '1', '5', '0', '20', '2010-04-06 07:41:03', '62', '', '2010-04-06 07:41:46', '62', '0', '0000-00-00 00:00:00', '2010-04-06 07:41:03', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '2', '0', '2', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('27', 'Suýt đè chết bạn trai vì bộ ngực bự', 'suyt-e-cht-bn-trai-vi-b-ngc-b', '', '<p class=\"Lead\">Claire Smedley đã khiến bạn trai suýt chết ngạt khi đôi  gò bồng đảo quá khổ của chị đè lên ngực anh lúc hai người đang ân ái.\r\n', '\r\n</p>\r\n<p class=\"Normal\">Bà mẹ 3 con người Anh - với bộ ngực cỡ 40 LL - hoảng  sợ khi nhấc bộ ngực ra và thấy người yêu Steven đã ngừng thở.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/D7/nguc1.jpg\" border=\"1\" width=\"311\" height=\"235\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Claire Smedley với bộ ngực to thứ hai nước Anh. Ảnh: <em>newsoftheworld.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">\"Lần đó, anh ấy đã đập đập vào tôi, nhưng tôi nghĩ do  anh ấy đang cao hứng nên không ngừng lại. Vài phút sau đó tôi nhận thấy  anh ấy ngừng cử động, rồi dường như không còn thở nữa\", chị kể với <em>newsoftheworld</em>.</p>\r\n<p class=\"Normal\">\"Tôi đã hoảng sợ và chực gọi cứu thương thì may thay  anh ấy bắt đầu tỉnh lại. Anh ấy thực sự chóng mặt, giống như trong một  cơn hôn mê. Sau đó anh ấy ho và ngồi dậy. Tôi nhẹ hết cả người\", chị  nói.</p>\r\n<p class=\"Normal\">Còn Steven thì nói thêm \"Tôi đã nghĩ mình tận số rồi.  Tôi cố gắng vỗ vào tay cô ấy để bảo cô ấy ngừng lại và nhấc người ra,  nhưng tôi nghĩ cô ấy hiểu sai tín hiệu\".</p>\r\n<p class=\"Normal\">Anh chàng may mắn này đã sống sót, nhưng mối quan hệ  của họ thì không, và họ chia tay nhau 3 tháng trước. \"Sau lần đó anh ấy  từ chối sex\", chị nói.</p>', '1', '5', '0', '20', '2010-04-06 07:42:00', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 07:42:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('28', 'Nước có thể ngăn chặn chiến tranh', 'nc-co-th-ngn-chn-chin-tranh', '', '<p class=\"Lead\">Công nghệ từng được Cơ quan hàng không vũ trụ Mỹ (NASA)  dùng để tìm kiếm nước trên sao Hỏa có thể giúp con người tránh được  nhiều cuộc chiến tranh vì nguồn nước. \r\n', '\r\n</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/52/DESERT.jpg\" border=\"0\" alt=\"Một người đàn ông cưỡi lạc đà\" width=\"450\" height=\"263\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Một người đàn ông cưỡi lạc đà gần các kim tự tháp trên  sa mạc Meroe ở phía bắc Sudan vào ngày 26/2. Ảnh: <em>AFP</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Vào năm 2007, NASA phóng thiết bị thăm dò nước mang  tên Marsis để thăm dò nước bên dưới bề mặt hành tinh đỏ. <em>Telegraph</em> cho biết, thiết bị gồm một máy thu nhận âm thanh, một ăng ten phát sóng  dài 40 m gắn trên một tàu thăm dò trên quỹ đạo sao Hỏa. Ăng ten có thể  phát ra sóng radio xuống độ sâu tới 3,7 km bên dưới bề mặt hành tinh đỏ.</p>\r\n<p class=\"Normal\">Dữ liệu mà Marisi gửi về cho thấy có một lượng nước  đóng băng lớn bên dưới sa mạc bao phủ bề mặt sao Hỏa.</p>\r\n<p class=\"Normal\">Tiến sĩ Essam Heggy, một nhà nghiên cứu trái đất thuộc  NASA, cho rằng công nghệ tìm nước trên sao Hỏa có thể được áp dụng trên  các sa mạc rộng lớn ở Trung Đông và Bắc Phi. Heggy đưa ra ý kiến trong  một hội nghị về nước do Liên Hợp Quốc tổ chức đang diễn ra tại thành phố  Alexandria, Ai Cập.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/52/Marsis.jpg\" border=\"0\" alt=\"Hình minh họa thiết bị Marsis với ăng ten dài 40 m bay  trên quỹ đạo sao Hỏa. Ảnh: nasa.gov.\" width=\"450\" height=\"377\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Hình minh họa thiết bị Marsis với ăng ten dài 40 m bay  trên quỹ đạo sao Hỏa. Ảnh: <em>nasa.gov</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">“Chẳng thứ gì có thể thay thế nước. Nhưng trong nhiều  năm qua con người vẫn chưa cố gắng tìm ra nó. Nước là một tài nguyên,  giống như mọi tài nguyên khác, và chúng ta từng chứng kiến nhiều cuộc  xung đột vì tài nguyên”, <em>Telegraph</em> dẫn lời Heggy.</p>\r\n<p class=\"Normal\">Tiến sĩ này khẳng định tình trạng khan hiếm nước có  thể gây nên nhiều cuộc xung đột tại Bắc Phi và Trung Đông trong tương  lai. Nhưng nếu sử dụng những thiết bị như Marsis, các quốc gia có thể  tìm thấy những nguồn nước nằm ở độ sâu hàng nghìn mét dưới các sa mạc.  Nhiều nghiên cứu của NASA cho thấy nhiều thung lũng và hồ nước nằm bên  dưới một vùng sa mạc tại Darfur, Sudan.</p>\r\n<p class=\"Normal\">Giới khoa học lo ngại hiện tượng ấm lên sẽ gây nên  nhiều thiệt hại cho địa cầu trong thế kỷ tới, trong đó thiếu nước chỉ là  một hiểm họa. Chẳng hạn, trong lúc loài người ngày càng cần thêm đất  đai thì tình trạng sa mạc hóa đang biến hàng triệu thửa ruộng màu mỡ  thành những mảnh đất chết. Theo <em>AFP</em>, một báo cáo của  Chương trình Phát triển Liên Hợp Quốc cho thấy 2,87 triệu km2 đất có  nguy cơ biến thành sa mạc. Một nghiên cứu khác của Liên Hợp Quốc vào năm  2007 chỉ ra rằng khoảng 50 triệu người sẽ phải rời khỏi nơi sinh sống  vì sa mạc hóa.</p>', '1', '5', '0', '21', '2010-04-06 07:42:33', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 07:42:33', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('29', 'Trái đất nhìn từ vũ trụ', 'trai-t-nhin-t-v-tr', '', '<p class=\"Lead\">Soichi Noguchi và Jose Hernandez, hai nhà du hành trên  Trạm không gian quốc tế, chụp nhiều ảnh về trái đất. \r\n', '\r\n</p>\r\n<p class=\"Normal\">Những bức ảnh của Soichi Noguchi (Nhật Bản) và Jose  Hernandez đã được đăng trên trang <em>Telegraph</em>.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/1.jpg\" border=\"0\" alt=\"Quần đảo Maldives trên Ấn Độ Dương.\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Quần đảo Maldives trên Ấn Độ Dương. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/2.jpg\" border=\"0\" alt=\"Trung tâm vũ trụ\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Trung tâm vũ trụ Kennedy, bang Florida, Mỹ. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/3.jpg\" border=\"0\" alt=\"Cầu Golden Gate nổi tiếng tại thành phố San Francisco,  Mỹ.\" width=\"460\" height=\"307\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Cầu Golden Gate nổi tiếng tại thành phố San Francisco,  Mỹ. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/4.jpg\" border=\"0\" alt=\"Thành phố\" width=\"460\" height=\"304\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Thành phố Port-Au-Prince tại Haiti vào cuối tháng 1.  Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/5.jpg\" border=\"0\" alt=\"Núi Phú Sĩ tại Nhật Bản.\" width=\"460\" height=\"302\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Núi Phú Sĩ tại Nhật Bản. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/6.jpg\" border=\"0\" alt=\"Núi\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Kilimanjaro - ngọn núi cao nhất châu Phi - ở đông bắc  Tanzania. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/7.jpg\" border=\"0\" alt=\"Mây dạ quang phía trên Đại Tây Dương.\" width=\"380\" height=\"445\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Mây dạ quang phía trên Đại Tây Dương. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/8.jpg\" border=\"0\" alt=\"Thủ đô Rome của Italy.\" width=\"460\" height=\"306\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Thủ đô Rome của Italy. Ảnh: <em>Soichi Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/9.jpg\" border=\"0\" alt=\"Mặt trăng nhìn từ Trạm Không gian quốc tế.\" width=\"460\" height=\"333\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Mặt trăng nhìn từ Trạm Không gian quốc tế. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/10.jpg\" border=\"0\" alt=\"Các nhà du hành trên Trạm Không gian quốc tế.\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Các nhà du hành trên Trạm Không gian quốc tế. Ảnh: <em>Jose  Hernandez</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/11.jpg\" border=\"0\" width=\"460\" height=\"367\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Trạm Không gian quốc tế và trái đất ở phía sau. Ảnh: <em>Jose  Hernandez</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/A2/12.jpg\" border=\"0\" alt=\"Mặt trăng và một phần trái đất. Ảnh: Soichi Noguchi.\" width=\"460\" height=\"305\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Mặt trăng và một phần trái đất. Ảnh: <em>Soichi  Noguchi</em>.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '1', '5', '0', '22', '2010-04-06 07:44:48', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 07:44:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('30', '4 phút uy hiếp của tên cướp ngân hàng', '4-phut-uy-hip-ca-ten-cp-ngan-hang', '', '<p class=\"Lead\">\"Người đàn ông khoảng 1m7, áo đen, đội mũ sùm sụp và bịt  mặt xuất hiện, cầm súng chĩa về phía quầy giao dịch. Hắn lớn tiếng: Đưa  đây ít tiền\", nữ nhân viên Ngân hàng thương mại cổ phần (TMCP) Hàng hải  kể lại vụ cướp trưa 5/4.\r\n', '\r\n<br /><a class=\"Lead\" href=\"http://vnexpress.net/GL/Phap-luat/2010/04/3BA1A778/\"><br /></a></p>\r\n<p class=\"Normal\">Chiều 5/4, 6 tiếng sau khi xảy ra vụ cướp tại chi  nhánh Ngân hàng TMCP Hàng hải ở tầng một trung tâm thương mại trên đường  La Thành, Hà Nội, chị Hà Thủy (kiểm soát viên, một trong ba nữ nhân  viên đối mặt với tên cướp) đã kể lại sự việc với <em>VnExpress.net.</em></p>\r\n<p class=\"Normal\">Theo chị Thủy, sáng 5/4 một khách hàng gọi điện đến  chi nhánh yêu cầu rút 3 tỷ đồng gửi từ trước. Ngay sau đó, tiền được  chuyển về địa điểm giao dịch này để buổi chiều chi trả.</p>\r\n<p class=\"Normal\">\"Khoảng 12h, khi ôtô chở tiền vừa rời đi được ít phút,  một thanh niên cao khoảng 1m7, áo đen, đội mũ sùm sụp và che mặt kín  mít bất ngờ xuất hiện, cầm súng chĩa vào phía quầy giao dịch.\", chị Thủy  cho hay.</p>\r\n<p class=\"Normal\">\"Hắn gằn giọng: \'Đưa đây ít tiền\'. Chúng tôi cố gắng  kéo dài thời gian để trì hoãn nhưng tên này luôn chĩa súng, uy hiếp bắt  bỏ tiền vào chiếc cặp mở sẵn\", chị Thủy kể giọng chưa hết bàng hoàng.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/BB/1.jpg\" border=\"1\" alt=\"Chị Thủy và Cẩm Vân (giao dịch viên) vẫn đang miệt mài làm  việc sau khi vụ cướp xảy ra. Ảnh: Anh Thư\" width=\"400\" height=\"300\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Các nhân viên chi nhánh Ngân hàng TMCP Hàng hải vẫn  miệt mài làm việc sau khi vụ cướp xảy ra. Ảnh chụp chiều 5/4: <em>Anh  Thư.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Lúc này giờ nghỉ trưa nên ngân hàng vắng người. Chị  định với tay đến chiếc điện thoại bàn, tên cướp rút con dao bầu giấu sẵn  trong người đe dọa \"giết\" nếu gọi cảnh sát.</p>\r\n<p class=\"Normal\">Hắn lăm lăm khua con dao trước mặt khiến 3 nữ nhân  viên hoảng sợ không dám bấm nút chuông báo động.</p>\r\n<p class=\"Normal\">\"Theo yêu cầu của tên cướp, tôi nhét từng thếp tiền  mệnh giá 50.000 đồng vào cặp, đồng thời cố gắng nhìn để nhận dạng nhưng  không được vì hắn đã che kín mặt, chỉ nhìn thấy đôi mắt sắc lạnh\", nữ  nhân viên này cho hay.</p>\r\n<p class=\"Normal\">Sự việc diễn ra chỉ trong vòng 4 phút. Tên cướp chạy  ra cửa. Trước khi đi ra, hắn còn dùng áo lau vết tay trên cửa kính.</p>\r\n<p class=\"Normal\">Khi đó, chị Thủy cùng 2 nữ đồng nghiệp mới định thần  lại, hô hoán \"cướp, cướp\". Do kính dán đề can mờ, nên các nhân viên  không biết tên cướp tẩu thoát một mình hay có đồng bọn bên ngoài chờ  sẵn. Hiện cũng chưa có nguồn tin nào xác nhận, khẩu súng tên cướp sử  dụng là thật hay giả.</p>\r\n<p class=\"Normal\">Theo Ngân hàng Hàng hải, số tiền bị cướp hơn 90 triệu  đồng, chủ yếu là lượng tiền nhỏ lẻ đang được kiểm đếm tại quầy. “Rất may  túi tiền 2 tỷ đồng vừa chuyển về chúng tôi chưa kịp kiểm tra đang để  phía dưới chân, tên cướp không phát hiện được”, chị Thủy cho hay.</p>\r\n<p class=\"Normal\">Trao đổi với <em>VnExpress.net</em>, ông Nguyễn Hoàng  An (Giám đốc chi nhánh Hà Nội, Ngân hàng Hàng hải) nhận định, có lẽ tên  cướp đã theo dõi và rình rập từ trước nên lợi dụng lúc mọi người chuẩn  bị nghỉ trưa mới ra tay.</p>\r\n<p class=\"Normal\">\"Chúng tôi đã chuyển toàn bộ băng ghi hình từ một  camera gắn ở phía ngoài và 3 camera bên trong cho cảnh sát. Hy vọng  những thông tin nhận dạng từ nhân chứng và các dữ liệu từ camera sẽ giúp  cảnh sát sớm tìm được thủ phạm\", vị giám đốc nói.</p>\r\n<p class=\"Normal\">Sáng nay, thông tin về hung thủ vẫn đang được cảnh sát  khẩn trương xác minh. Vụ việc được chuyển Cơ quan cảnh sát điều tra  Công an Hà Nội thụ lý theo thẩm quyền.</p>\r\n<p class=\"Normal\">Chi nhánh Ngân hàng TMCP Hàng hải nằm dưới tầng 1 của  Trung tâm thương mại ngay ngã tư Ô Chợ dừa, một khu vực đông đúc thường  xảy ra ùn tắc giao thông. Nơi xảy ra vụ cướp cách trụ sở công an phường  khoảng 10 mét.</p>', '1', '4', '0', '16', '2010-04-06 08:56:48', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 08:56:48', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('31', 'Nga ra mắt tàu chiến tàng hình', 'nga-ra-mt-tau-chien-tang-hinh', '', '<p class=\"Lead\">Một con tàu chiến tàng hình ứng dụng các kỹ  thuật chế tạo tàu tiên tiến nhất của hải quân Nga vừa được hạ  thủy. \r\n', '\r\n</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/F1/01.jpg\" border=\"0\" width=\"450\" height=\"294\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Xưởng đóng tàu Severnaya Verf ở thành phố St.  Petersburg vừa cho hạ thủy tàu hộ tống Soobrazitelny. Tàu chiến  trang bị kỹ thuật tàng hình được chế tạo với mục đích bảo  vệ vùng bờ biển của Nga và yểm trợ pháo binh khi đổ bộ lên bờ.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/F1/02.jpg\" border=\"0\" width=\"450\" height=\"266\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Soobrazitelny có nhiều điểm cải tiến ở thiết  kế thân, hệ thống vũ khí, thiết bị liên lạc và điện tử.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/F1/03.jpg\" border=\"0\" width=\"350\" height=\"604\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Tàu chiến này có thể phá hủy tàu nổi, tàu  ngầm và phi cơ của đối phương. Ngoài ra, kỹ thuật tàng hình có  thể giúp tàu giảm trường radar cũng như che giấu những dấu vết  âm thanh, hồng ngoại, từ trường và hình ảnh của nó.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/F1/04.jpg\" border=\"0\" width=\"350\" height=\"559\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">\"Con tàu này được ứng dụng những kỹ thuật chế  tạo tàu hải quân tiên tiến nhất\", Tư lệnh Hạm đội Baltic, Phó Đô  đốc Viktor Chirkov, nói trong buổi lễ hạ thủy tàu hôm 31/3.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/F1/05.jpg\" border=\"0\" width=\"450\" height=\"285\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Nga dự định sẽ sản xuất đến 30 con tàu loại  này để đảm bảo việc bảo vệ bờ biển, cũng như các tuyến đường  dẫn dầu khí, đặc biệt là ở vùng biển Đen và Baltic.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A7/F1/06.jpg\" border=\"0\" width=\"450\" height=\"300\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Hai con tàu khác cùng chủng loại là Boyky và  Stoyky đang được chế tạo tại xưởng Severnaya Verf. Mỗi tàu có tải  trọng 2.000 tấn, tốc độ cực đại là 27 hải lý mỗi giờ và đội  thủy thủ là 100 người.</td>\r\n</tr>\r\n</tbody>\r\n</table>', '1', '4', '0', '15', '2010-04-06 09:03:03', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 09:03:03', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '2', '', '', '0', '0', 'robots=\nauthor=');
INSERT INTO `jos_content` VALUES ('32', '\'Góa phụ đen\' là ai?', 'goa-ph-en-la-ai', '', '<p>\"Góa phụ đen\" là từ mà giới phóng viên Nga gọi những phụ  nữ Hồi giáo đánh bom liều chết từng tham gia một loạt vụ tấn công làm  hơn 900 người thiệt mạng kể từ năm 2001.\r\n', '\r\n</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"left\">\r\n<tbody>\r\n<tr>\r\n<td><img src=\"http://vnexpress.net/Files/Subject/3B/A1/A5/92/g1.jpg\" border=\"1\" alt=\"Ảnh minh họa của womensenews.org.\" width=\"250\" height=\"195\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Ảnh minh họa của womensenews.org.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Vụ tấn công đầu tiên xảy ra vào tháng 7/2001 khi hai  góa phụ Khava Barayeva và Luisa Magomadova lao chiếc xe chở thuốc nổ vào  trụ sở của quân đội nga tại làng Alkhan Yurt ở Chechnya, <em>CBC News</em> cho hay.</p>\r\n<p class=\"Normal\">Thủ lĩnh phiến quân Chechnya Shamil Basayev, kẻ chủ  mưu vụ <a class=\"Normal\" href=\"http://vnexpress.net/GL/Topic/?ID=3367\">tấn  công trường học</a> ở Beslan năm 2004, đã lập nên lữ đoàn bao gồm những  phụ nữ này. An ninh Nga khẳng định đã tiêu diệt Basayev năm 2006 trong  khi một số nói rằng hắn ta vô ý tự nổ tung.</p>\r\n<p class=\"Normal\">Basayev thử nghiệm lý thuyết của y rằng khi lực lượng  an ninh Nga đề cao cảnh giác phòng các cuộc khủng bố, phụ nữ trẻ mặc  quần jeans hoặc các bà già sẽ ít gây nghi ngờ hơn những người đàn ông  Chechnya trong chiếc áo khoác rẻ tiền.</p>\r\n<p class=\"Normal\">Từ năm 2002 đến 2004, các “shahidka” của Basayev -  biến thể tiếng Nga của từ \"shahid\" hay còn có nghĩa những phụ nữ tử vì  đạo - đã gây ra hàng loạt các cuộc tấn công nhằm vào dân thường.</p>\r\n<p class=\"Normal\">Baseyev muốn ép người dân Nga phải thừa nhận rằng để  Chechnya ly khai còn tốt hơn dính vào cuộc chiến đẫm máu tại một nơi  cách Matxcơva cả nghìn km.</p>\r\n<p class=\"Normal\">Hồi tháng 10/2002, một nhóm 19 góa phụ đen cùng 20 nam  giới Chechnya bắt cóc và giữ hơn 900 người làm con tin tại nhà hát  Matxcơva. Một năm sau, các góa phụ đen tấn công buổi hòa nhạc ngoài trời  ở Matxcơva, một tàu chở khách ở miền nam nước Nga và khách sạn hạng  sang National ở thủ đô, đối diện với điện Kremlin.</p>\r\n<p class=\"Normal\">Năm 2004, chính những phụ nữ này đã khiến hai phi cơ  chở khách của Nga nổ tung, tấn công ga tàu điện ngầm Rizhskaya ở  Matxcơva và tham gia vụ khủng bố trường học ở Beslan.</p>\r\n<p class=\"Normal\">Nhà tâm lý học Anne Speckhard và Khapta Akhmedova tìm  hiểu cuộc sống của 47 góa phụ đen tuổi từ 15 đến 38. Câu trả lời chung  cho động cơ của họ là để trả thù cho chồng, anh trai hoặc con trai,  những người nam giới trong gia đình bị quân đội Nga tiêu diệt.</p>\r\n<p class=\"Normal\">Chechnya là một trong 6 khu vực mà đa số người Hồi  giáo sống ở vùng Bắc Kavkaz. Đây là xã hội mà mối quan hệ dòng họ rất  chặt chẽ và sự trả thù chính là giá trị cốt lõi của các dòng họ. Nếu kẻ  ngoại tộc giết một thành viên nào đó trong dòng họ, cả gia tộc đó có  trách nhiệm trả thù bằng cách giết thủ phạm hoặc ít nhất là một thành  viên của dòng tộc kia.</p>\r\n<p class=\"Normal\">Cuộc tấn công kép ở ga tàu điện ngầm tại Matxcơva  khiến người ta lo ngại rằng nỗi khiếp sợ vì các góa phụ đen đang trở  lại. 39 người thiệt mạng và hơn 60 người bị thương khi bom phát nổ tại  nhà ga đúng vào giờ cao điểm hôm 29/3.</p>', '1', '4', '0', '15', '2010-04-06 09:03:57', '62', '', '0000-00-00 00:00:00', '0', '0', '0000-00-00 00:00:00', '2010-04-06 09:03:57', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', '1', '0', '1', '', '', '0', '0', 'robots=\nauthor=');

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
INSERT INTO `jos_content_frontpage` VALUES ('1', '4');
INSERT INTO `jos_content_frontpage` VALUES ('2', '3');
INSERT INTO `jos_content_frontpage` VALUES ('3', '2');
INSERT INTO `jos_content_frontpage` VALUES ('4', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_core_acl_aro
-- ----------------------------
INSERT INTO `jos_core_acl_aro` VALUES ('10', 'users', '62', '0', 'Administrator', '0');

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
INSERT INTO `jos_core_log_searches` VALUES ('', '9');
INSERT INTO `jos_core_log_searches` VALUES ('việt nam', '53');
INSERT INTO `jos_core_log_searches` VALUES ('a', '1');
INSERT INTO `jos_core_log_searches` VALUES ('loại', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_menu
-- ----------------------------
INSERT INTO `jos_menu` VALUES ('40', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=category&layout=blog&id=6', 'component', '1', '0', '20', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('2', 'topmenu', 'Trang chủ', 'trang-chu', 'index.php?option=com_content&view=frontpage', 'component', '1', '0', '20', '0', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=10\norderby_pri=\norderby_sec=front\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=1\nlink_section=1\nshow_category=1\nlink_category=1\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '1');
INSERT INTO `jos_menu` VALUES ('3', 'topmenu', 'Thuốc đông dược', 'thuoc-dong-duoc', 'index.php?option=com_content&view=section&id=4', 'component', '1', '0', '20', '0', '7', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=1\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('4', 'topmenu', 'Cây thuốc - Vị thuốc', 'cay-thuoc-vi-thuoc', 'index.php?option=com_content&view=section&layout=caythuoc_vithuoc&id=2', 'url', '1', '0', '0', '0', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('5', 'topmenu', 'Bài thuốc', 'bai-thuoc', 'index.php?option=com_content&view=section&id=3', 'component', '1', '0', '20', '0', '6', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=1\nshow_cat_num_articles=1\nshow_category_description=1\norderby=\norderby_sec=\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('6', 'topmenu', 'Chợ đông dược', 'cho-dong-duoc', 'index.php?option=com_content&view=article&id=25', 'component', '1', '0', '20', '0', '8', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('7', 'topmenu', 'Thư viện', 'thu-vien', 'index.php?option=com_content&view=section&layout=thuvien&id=5', 'url', '1', '0', '0', '0', '9', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_image=-1\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('8', 'topmenu', 'Hỏi đáp', 'hoi-dap', 'index.php?option=com_content&view=article&id=25', 'component', '1', '0', '20', '0', '10', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=right_side\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('64', 'topmenu', 'Current Datetime & slogan', 'current-datetime-a-slogan', 'index.php?Itemid=', 'menulink', '1', '2', '0', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'menu_item=\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('9', 'topmenu', 'Tin tức sự kiện', 'tin-tuc-su-kien', 'index.php?option=com_content&view=section&layout=blog&id=1', 'component', '1', '0', '20', '0', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=1\nshow_description_image=1\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=50\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=1\nlink_section=1\nshow_category=1\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('10', 'topmenu', 'Tin tức', 'tin-tuc', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', '1', '9', '20', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('11', 'topmenu', 'Sử dụng thuốc', 'su-dung-thuoc', 'index.php?option=com_content&view=category&layout=blog&id=2', 'component', '1', '9', '20', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('12', 'topmenu', 'Món ăn bài thuốc', 'mon-an-bai-thuoc', 'index.php?option=com_content&view=category&layout=blog&id=3', 'component', '1', '9', '20', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('13', 'topmenu', 'Sức khỏe đời sống', 'suc-khoe-doi-song', 'index.php?option=com_content&view=category&layout=blog&id=4', 'component', '1', '9', '20', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('14', 'topmenu', 'Thế giới ảnh', 'the-gioi-anh', 'index.php?option=com_content&view=category&layout=blog&id=5', 'component', '1', '9', '20', '1', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('15', 'topmenu', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=category&layout=blog&id=6', 'component', '1', '4', '20', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('16', 'topmenu', 'Tên khoa học', 'ten-khoa-hoc', 'index.php?option=com_content&view=category&layout=blog&id=7', 'component', '1', '4', '20', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('17', 'topmenu', 'Họ thực vật Việt Nam', 'ho-thuc-vat-viet-nam', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', '1', '4', '20', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('18', 'topmenu', 'Họ thực vật khoa học', 'ho-thuc-vat-khoa-hoc', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', '1', '4', '20', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('19', 'topmenu', 'Bộ phận dùng', 'bo-phan-dung', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', '1', '4', '20', '1', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('20', 'topmenu', 'Thành phần hóa học', 'thanh-phan-hoa-hoc', 'index.php?option=com_content&view=category&layout=blog&id=11', 'component', '1', '4', '20', '1', '6', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('21', 'topmenu', 'Bài thuốc theo tên', 'bai-thuoc-theo-ten', 'index.php?option=com_content&view=category&layout=blog&id=12', 'component', '1', '5', '20', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('22', 'topmenu', 'Phân loại theo tính chất đông y', 'phan-loai-theo-tinh-chat-dong-y', 'index.php?option=com_content&view=category&layout=blog&id=13', 'component', '1', '5', '20', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('23', 'topmenu', 'Phân loại theo bệnh', 'phan-loai-theo-benh', 'index.php?option=com_content&view=category&layout=blog&id=14', 'component', '1', '5', '20', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('24', 'topmenu', 'Thuốc', 'thuoc', 'index.php?option=com_content&view=category&layout=blog&id=15', 'component', '1', '3', '20', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('25', 'topmenu', 'Phòng khám Đông Y', 'phong-kham-dong-y', 'index.php?option=com_content&view=category&layout=blog&id=16', 'component', '1', '3', '20', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('26', 'topmenu', 'Bệnh viên y học cổ truyền', 'benh-vien-y-hoc-co-truyen', 'index.php?option=com_content&view=category&layout=blog&id=17', 'component', '1', '3', '20', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('27', 'topmenu', 'Nguyên liệu đông dược', 'nguyen-lieu-dong-duoc', 'index.php?option=com_content&view=category&layout=blog&id=18', 'component', '1', '3', '20', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('28', 'topmenu', 'Tinh dầu', 'tinh-dau', 'index.php?option=com_content&view=category&layout=blog&id=19', 'component', '1', '3', '20', '1', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('29', 'topmenu', 'Cần bán', 'can-ban', 'index.php?option=com_content&view=article&id=25', 'component', '1', '6', '20', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('30', 'topmenu', 'Cần mua', 'can-mua', 'index.php?option=com_content&view=article&id=25', 'component', '1', '6', '20', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('31', 'topmenu', 'Thực vật', 'thuc-vat', 'index.php?option=com_content&view=category&layout=blog&id=20', 'component', '1', '7', '20', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('32', 'topmenu', 'Dược liệu', 'duoc-lieu', 'index.php?option=com_content&view=category&layout=blog&id=21', 'component', '1', '7', '20', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('33', 'topmenu', 'Đông Y', 'dong-y', 'index.php?option=com_content&view=category&layout=blog&id=22', 'component', '1', '7', '20', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('34', 'topmenu', 'Sách khác', 'sach-khac', 'index.php?option=com_content&view=category&layout=blog&id=23', 'component', '1', '7', '20', '1', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('35', 'topmenu', 'Đặt câu hỏi', 'dat-cau-hoi', 'index.php?option=com_content&view=article&id=25', 'component', '1', '8', '20', '1', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('36', 'topmenu', 'Câu hỏi đã trả lời', 'cau-hoi-da-tra-loi', 'index.php?option=com_content&view=article&id=25', 'component', '1', '8', '20', '1', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('37', 'topmenu', 'Câu hỏi chưa trả lời', 'cau-hoi-chua-tra-loi', 'index.php?option=com_content&view=article&id=25', 'component', '1', '8', '20', '1', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('38', 'topmenu', 'tem', 'tem', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('39', 'topmenu', 'tem', 'tem', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('41', 'caythuoc-vithuoc', 'Tên khoa học', 'ten-khoa-hoc', 'index.php?option=com_content&view=category&layout=blog&id=7', 'component', '1', '0', '20', '0', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('42', 'caythuoc-vithuoc', 'Họ thực vật việt nam', 'ho-thuc-vat-viet-nam', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', '1', '0', '20', '0', '5', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('43', 'caythuoc-vithuoc', 'Họ thực vật khoa học', 'ho-thuc-vat-khoa-hoc', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', '1', '0', '20', '0', '7', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('44', 'caythuoc-vithuoc', 'Thành phần hóa học', 'thanh-phan-hoa-hoc', 'index.php?option=com_content&view=category&layout=blog&id=11', 'component', '1', '0', '20', '0', '9', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('45', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '4', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('46', 'caythuoc-vithuoc', 'Động vật làm thuốc', 'dong-vat-lam-thuoc', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', '1', '0', '20', '0', '16', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('47', 'caythuoc-vithuoc', 'Khoáng vật làm thuốc', 'khoang-vat-lam-thuoc', 'index.php?option=com_content&view=category&layout=blog&id=32', 'component', '1', '0', '20', '0', '17', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('48', 'caythuoc-vithuoc', 'Phân loại theo tên hán việt', 'phan-loai-theo-ten-han-viet', 'index.php?option=com_content&view=category&layout=blog&id=28', 'component', '1', '0', '20', '0', '11', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('49', 'caythuoc-vithuoc', 'Bộ phận dùng', 'bo-phan-dung', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', '1', '0', '20', '0', '8', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('50', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('51', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '18', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('52', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '15', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('53', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '12', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('54', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '10', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('55', 'caythuoc-vithuoc', 'Tên việt nam', 'ten-viet-nam', 'index.php?option=com_content&view=frontpage', 'component', '-2', '0', '20', '0', '6', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'num_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('56', 'caythuoc-vithuoc', 'Phân loại theo tính chất đông y', 'phan-loai-theo-tinh-chat-dong-y', 'index.php?option=com_content&view=category&layout=blog&id=30', 'component', '1', '0', '20', '0', '14', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('57', 'caythuoc-vithuoc', 'Phân loại theo bệnh', 'phan-loai-theo-benh', 'index.php?option=com_content&view=category&layout=blog&id=29', 'component', '1', '0', '20', '0', '13', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('58', 'topmenu', 'Liên hệ', 'lien-h', 'index.php?option=com_contact&view=contact&id=1', 'component', '0', '0', '7', '0', '11', '62', '2010-04-01 09:52:02', '0', '0', '0', '0', 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('59', 'footermenu', 'Email cho chúng tôi.', 'email-cho-chung-toi', 'index.php?option=com_contact&view=contact&id=1', 'component', '1', '0', '7', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('60', 'footermenu', 'Liên hệ quảng cáo', 'lien-h-qung-cao', 'index.php?option=com_contact&view=contact&id=2', 'component', '1', '0', '7', '0', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('61', 'baithuoc', 'Bài thuốc theo tên', 'bai-thuoc-theo-ten', 'index.php?option=com_content&view=category&layout=blog&id=12', 'component', '1', '0', '20', '0', '1', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('62', 'baithuoc', 'Phân loại theo tính chất đông y', 'phan-loai-theo-tinh-chat-dong-y', 'index.php?option=com_content&view=category&layout=blog&id=13', 'component', '1', '0', '20', '0', '2', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');
INSERT INTO `jos_menu` VALUES ('63', 'baithuoc', 'Phân loại theo bệnh', 'phan-loai-theo-benh', 'index.php?option=com_content&view=category&layout=blog&id=14', 'component', '1', '0', '20', '0', '3', '0', '0000-00-00 00:00:00', '0', '0', '0', '0', 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', '0', '0', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_menu_types
-- ----------------------------
INSERT INTO `jos_menu_types` VALUES ('3', 'caythuoc-vithuoc', 'Cây Thuốc Vị Thuốc', 'Menu  Bên Trái');
INSERT INTO `jos_menu_types` VALUES ('2', 'topmenu', 'Top Menu', 'Top Menu');
INSERT INTO `jos_menu_types` VALUES ('4', 'footermenu', 'Footer Menu', 'Footer menu');
INSERT INTO `jos_menu_types` VALUES ('5', 'baithuoc', 'Bài thuốc', 'Bài thuốc');

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
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

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
INSERT INTO `jos_modules` VALUES ('16', 'Banner - Trang chủ - giữa', '', '1', 'user1', '0', '0000-00-00 00:00:00', '1', 'mod_banners', '0', '0', '0', 'target=1\ncount=1\ncid=1\ncatid=24\ntag_search=0\nordering=0\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('18', 'Cây Thuốc Vị Thuốc', '', '0', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_mainmenu', '0', '0', '1', 'menutype=caythuoc-vithuoc\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=1\nmoduleclass_sfx=-a\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('44', 'Sản phẩm nổi bật', '', '2', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=4\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('27', 'Hỗ trợ trực tuyến', '', '7', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_jodev_ymcustomimage', '0', '0', '1', 'cache=0\nmoduleclass_sfx=-a\nyahooid=gio_doi.chieu\nstyle=1\nyahooimage=7\ncustomimage=0\nimage_online=modules/jodev_ymcustomimage/customonline0.gif\nimage_offline=modules/jodev_ymcustomimage/customoffline0.gif\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('23', 'Vinaora Visitors Counter', '', '5', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_vvisit_counter', '0', '0', '0', 'moduleclass_sfx=-deleted\nmode=custom\ninitialvalue=0\ndigit_type=0\nnumber_digits=6\nstats_type=0\nwidthtable=90\ntoday=0\nyesterday=0\nweek=0\nlweek=0\nmonth=0\nlmonth=0\nall=All days\nautohide=1\nhrline=1\nbeginday=\nonline=We have\nguestip=Your IP\nguestinfo=Yes\nformattime=Today: %b %d, %Y\nissunday=1\ncache_time=15\npretext=\nposttext=\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('28', 'Footer', '', '1', 'footer', '0', '0000-00-00 00:00:00', '1', 'mod_footer', '0', '0', '0', 'cache=1\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('29', 'Tìm kiếm', '', '1', 'right', '62', '2010-04-07 09:00:30', '1', 'mod_search', '0', '0', '1', 'moduleclass_sfx=-c\nwidth=20\ntext=\nbutton=1\nbutton_pos=right\nimagebutton=1\nbutton_text=\nset_itemid=\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('31', 'Giới thiệu gian hàng', '<p>Chưa có gian hàng nào</p>', '4', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_custom', '0', '0', '1', 'moduleclass_sfx=-a\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('32', 'Đăng nhập', '', '3', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_login', '0', '0', '1', 'cache=0\nmoduleclass_sfx=-a\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=0\nusesecure=0\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('33', 'Ảnh ngẫu nhiên', '', '4', 'right', '62', '2010-04-01 04:37:26', '1', 'mod_random_image', '0', '0', '1', 'type=jpg\nfolder=images/random_images/\nlink=http://voz.vn\nwidth=170px\nheight=\nmoduleclass_sfx=-b\ncache=0\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('34', 'footer menu', '', '1', 'left', '0', '0000-00-00 00:00:00', '0', 'mod_mainmenu', '0', '0', '1', 'menutype=footermenu', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('35', 'Liên kết website', '', '6', 'left', '62', '2010-04-01 10:00:48', '1', 'mod_allweblinks', '0', '0', '1', 'Lcatids=1\nLexclude=1\nLCorder=a.catid\nLshowheader=1\nLshownumlnk=1\nLshowcdes=0\nLdropdown=1\nLcaticons=\nLcaticonh=\nLorder=date DESC\nLicon=-1\nLlengthoftitle=23\nLdotaddlenght=20\nLtitlepopuptxt=\nLshowhits=0\nLshownew=0\nLdaysnew=3\nLtxtnew=*\nLshowldes=0\nLpopuplinks=1\nmoduleclass_sfx=-a\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('41', 'Tin tức nổi bật', '', '2', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=2\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('42', 'Cây thuốc quý', '', '2', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=2\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('43', 'Bài thuốc hay', '', '2', 'right', '0', '0000-00-00 00:00:00', '1', 'mod_mostread', '0', '0', '1', 'moduleclass_sfx=-a\nshow_front=1\ncount=5\ncatid=\nsecid=3\ncache=1\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('39', 'Bài viết có liên quan', '', '0', 'user2', '62', '2010-04-05 09:30:00', '1', 'mod_related_items', '0', '0', '0', 'showDate=0\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', '0', '0', '');
INSERT INTO `jos_modules` VALUES ('40', 'Bài Thuốc', '', '3', 'left', '0', '0000-00-00 00:00:00', '1', 'mod_mainmenu', '0', '0', '1', 'menutype=baithuoc\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=-\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=1\nmoduleclass_sfx=-a\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', '0', '0', '');

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
INSERT INTO `jos_modules_menu` VALUES ('18', '0');
INSERT INTO `jos_modules_menu` VALUES ('23', '0');
INSERT INTO `jos_modules_menu` VALUES ('27', '0');
INSERT INTO `jos_modules_menu` VALUES ('28', '0');
INSERT INTO `jos_modules_menu` VALUES ('29', '0');
INSERT INTO `jos_modules_menu` VALUES ('31', '0');
INSERT INTO `jos_modules_menu` VALUES ('32', '0');
INSERT INTO `jos_modules_menu` VALUES ('33', '0');
INSERT INTO `jos_modules_menu` VALUES ('34', '0');
INSERT INTO `jos_modules_menu` VALUES ('35', '0');
INSERT INTO `jos_modules_menu` VALUES ('39', '0');
INSERT INTO `jos_modules_menu` VALUES ('40', '0');
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
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_plugins
-- ----------------------------
INSERT INTO `jos_plugins` VALUES ('1', 'Authentication - Joomla', 'joomla', 'authentication', '0', '1', '1', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('2', 'Authentication - LDAP', 'ldap', 'authentication', '0', '2', '0', '1', '0', '0', '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n');
INSERT INTO `jos_plugins` VALUES ('3', 'Authentication - GMail', 'gmail', 'authentication', '0', '4', '0', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('4', 'Authentication - OpenID', 'openid', 'authentication', '0', '3', '0', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('5', 'User - Joomla!', 'joomla', 'user', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', 'autoregister=1\n\n');
INSERT INTO `jos_plugins` VALUES ('6', 'Search - Content', 'content_extended', 'search', '0', '0', '1', '1', '0', '62', '2010-04-08 03:40:09', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n');
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
INSERT INTO `jos_plugins` VALUES ('29', 'System - Legacy', 'legacy', 'system', '0', '3', '0', '1', '0', '0', '0000-00-00 00:00:00', 'route=0\n\n');
INSERT INTO `jos_plugins` VALUES ('30', 'System - Cache', 'cache', 'system', '0', '4', '0', '1', '0', '0', '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n');
INSERT INTO `jos_plugins` VALUES ('31', 'System - Log', 'log', 'system', '0', '5', '0', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('32', 'System - Remember Me', 'remember', 'system', '0', '6', '1', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('33', 'System - Backlink', 'backlink', 'system', '0', '7', '0', '1', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('35', 'System - Vinaora Visitors Counter', 'vvisit_counter', 'system', '0', '-100', '1', '0', '0', '0', '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES ('39', 'Search - Content ( By: YOpenSource.com )', 'plg_yos_search_content', 'search', '0', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\npoint_occurrence_in_title=10\npoint_occurrence_in_fulltext=1\n');
INSERT INTO `jos_plugins` VALUES ('37', 'Content - Joomla Imagesized Plugin', 'plg_imagesized', 'content', '0', '0', '1', '0', '0', '0', '0000-00-00 00:00:00', 'enabled=1\nsized_img_article=1\nexpire=30\nquality=90\nar_width=400\nar_height=400\nar_remove_link=1\nar_link2originalimage=1\nextra_link2originalimage=\nexcluded_images=\nar_remove_img_tag=style:class\nicl_exc_catsect=1\nsectionid_list=x\ncatid_list=x\nitemid_list=x\nonly_frontpage=t\nfp_image_link=1\nfp_remove_class=1\nfp_default_image=plugins/content/imagesresizecache/blank.png\nfp_used_default_image=1\nextra_class=\nfp_width_l=130\nfp_height_l=90\nfp_align_l=left\nfp_position_l=0\nfp_textalign_l=justify\nfp_width=130\nfp_height=90\nfp_advanced_config=\nfp_frcolor=#ffffff\nfp_bocolor=#a0a0a0\nfp_vspace=0\nfp_hspace=6\nfp_chars_l=250\nfp_chars=300\nfp_more=\nallowed_tags=\nfp_align=left\nfp_position=0\nfp_textalign=justify\n\n');

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_sections
-- ----------------------------
INSERT INTO `jos_sections` VALUES ('1', 'Tin Tức Sự Kiện', '', 'tin-tuc-su-kien', '', 'content', 'left', '', '1', '62', '2010-04-05 02:42:22', '1', '0', '6', '');
INSERT INTO `jos_sections` VALUES ('2', 'Cây Thuốc - Vị Thuốc', '', 'cay-thuoc-vi-thuoc', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '2', '0', '12', '');
INSERT INTO `jos_sections` VALUES ('3', 'Bài Thuốc', '', 'bai-thuoc', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '3', '0', '3', 'tpl=blog_list');
INSERT INTO `jos_sections` VALUES ('4', 'Thuốc Đông Dược', '', 'thuoc-dong-duoc', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '4', '0', '5', 'tpl=thuoc_dong_duoc');
INSERT INTO `jos_sections` VALUES ('5', 'Thư Viện', '', 'thu-vien', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '5', '0', '4', '');
INSERT INTO `jos_sections` VALUES ('6', 'Thông báo', '', 'thong-bao', '', 'content', 'left', '', '1', '0', '0000-00-00 00:00:00', '6', '0', '1', '');

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
INSERT INTO `jos_session` VALUES ('', '1270632026', 'ptb16e01egn4vtslhm6ki1tpb2', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:87;s:19:\"session.timer.start\";i:1270623730;s:18:\"session.timer.last\";i:1270632002;s:17:\"session.timer.now\";i:1270632026;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:2:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"com_content\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:8:\"category\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:3:\"3:5\";O:8:\"stdClass\":2:{s:12:\"filter_order\";s:5:\"title\";s:16:\"filter_order_Dir\";s:3:\"ASC\";}}}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"52e06b723dce08082489ce3943d5b3fa\";}');
INSERT INTO `jos_session` VALUES ('admin', '1270630830', '2jhmsohuqbl6543sjubjejn324', '0', '62', 'Super Administrator', '25', '1', '__default|a:8:{s:15:\"session.counter\";i:98;s:19:\"session.timer.start\";i:1270623731;s:18:\"session.timer.last\";i:1270630811;s:17:\"session.timer.now\";i:1270630830;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:5:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}s:11:\"com_content\";a:1:{s:4:\"data\";O:8:\"stdClass\":8:{s:23:\"viewcontentfilter_order\";s:12:\"section_name\";s:27:\"viewcontentfilter_order_Dir\";s:0:\"\";s:23:\"viewcontentfilter_state\";s:0:\"\";s:16:\"viewcontentcatid\";i:0;s:26:\"viewcontentfilter_authorid\";i:0;s:27:\"viewcontentfilter_sectionid\";s:2:\"-1\";s:17:\"viewcontentsearch\";s:0:\"\";s:21:\"viewcontentlimitstart\";i:0;}}s:6:\"global\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:0;}}}s:9:\"com_menus\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:8:\"menutype\";s:7:\"topmenu\";}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"longdt@live.com\";s:8:\"password\";s:65:\"cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2010-03-29 14:58:13\";s:13:\"lastvisitDate\";s:19:\"2010-04-07 03:54:34\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:0:\"\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"70344e44a3dfbc99b34397a34b4e50b3\";}');
INSERT INTO `jos_session` VALUES ('', '1270698634', '58ba5fe0d2896d2ba55c1cbea6afa3d3', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:49;s:19:\"session.timer.start\";i:1270696668;s:18:\"session.timer.last\";i:1270698611;s:17:\"session.timer.now\";i:1270698634;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:2:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:10:\"com_search\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:5:\"limit\";s:1:\"5\";}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"6499b4276cb6337f52cbcfc9787d1126\";}');
INSERT INTO `jos_session` VALUES ('', '1270631890', 'b9c524e95dae19f46415bff17186d70d', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:8;s:19:\"session.timer.start\";i:1270627780;s:18:\"session.timer.last\";i:1270631868;s:17:\"session.timer.now\";i:1270631890;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:1:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"745579ebef3cc5a3f33531633a363c07\";}');
INSERT INTO `jos_session` VALUES ('', '1270609703', '5add35987da4bdfaaad896170d7699ae', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:37;s:19:\"session.timer.start\";i:1270603812;s:18:\"session.timer.last\";i:1270609695;s:17:\"session.timer.now\";i:1270609702;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:2:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"com_content\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:8:\"category\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:3:\"3:5\";O:8:\"stdClass\":2:{s:12:\"filter_order\";s:5:\"title\";s:16:\"filter_order_Dir\";s:3:\"ASC\";}}}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"4fcdb714bc5a77dc9167a7c158323528\";}');
INSERT INTO `jos_session` VALUES ('admin', '1270698009', 'mr0r5ivnn9ks87cfgqpr5j60n3', '0', '62', 'Super Administrator', '25', '1', '__default|a:8:{s:15:\"session.counter\";i:32;s:19:\"session.timer.start\";i:1270693081;s:18:\"session.timer.last\";i:1270698009;s:17:\"session.timer.now\";i:1270698009;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:4:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}s:11:\"com_plugins\";a:1:{s:4:\"data\";O:8:\"stdClass\":2:{s:4:\"site\";O:8:\"stdClass\":5:{s:12:\"filter_order\";s:8:\"p.folder\";s:16:\"filter_order_Dir\";s:0:\"\";s:12:\"filter_state\";s:0:\"\";s:11:\"filter_type\";s:6:\"search\";s:6:\"search\";s:0:\"\";}s:10:\"limitstart\";i:0;}}s:6:\"global\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";s:3:\"100\";}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"longdt@live.com\";s:8:\"password\";s:65:\"cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2010-03-29 14:58:13\";s:13:\"lastvisitDate\";s:19:\"2010-04-07 07:02:19\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:0:\"\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"c50f7621eaa872c85b96429dc50024a9\";}');
INSERT INTO `jos_session` VALUES ('', '1270698739', 'v650c049gjpblnubr4o5304qn0', '1', '0', '', '0', '0', '__default|a:8:{s:15:\"session.counter\";i:60;s:19:\"session.timer.start\";i:1270692038;s:18:\"session.timer.last\";i:1270698739;s:17:\"session.timer.now\";i:1270698739;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:2:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:10:\"com_search\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:5:\"limit\";s:1:\"5\";}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:3:\"gid\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:3:\"aid\";i:0;s:5:\"guest\";i:1;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"386254d9edc586d8944d3e4b0350bbb1\";}');
INSERT INTO `jos_session` VALUES ('admin', '1270610948', '4vftqa2kd10od0vlfba96fsgm0', '0', '62', 'Super Administrator', '25', '1', '__default|a:8:{s:15:\"session.counter\";i:17;s:19:\"session.timer.start\";i:1270603950;s:18:\"session.timer.last\";i:1270610948;s:17:\"session.timer.now\";i:1270610948;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:4:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"application\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}}s:9:\"com_menus\";a:1:{s:4:\"data\";O:8:\"stdClass\":2:{s:8:\"menutype\";s:7:\"topmenu\";s:7:\"topmenu\";O:8:\"stdClass\":6:{s:12:\"filter_order\";s:10:\"m.ordering\";s:16:\"filter_order_Dir\";s:3:\"ASC\";s:12:\"filter_state\";s:0:\"\";s:10:\"limitstart\";i:0;s:10:\"levellimit\";s:2:\"10\";s:6:\"search\";s:0:\"\";}}}s:6:\"global\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";s:3:\"100\";}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"longdt@live.com\";s:8:\"password\";s:65:\"cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2010-03-29 14:58:13\";s:13:\"lastvisitDate\";s:19:\"2010-04-06 06:49:55\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:0:\"\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"42208b5a47fa256ba439f7267f656673\";}');
INSERT INTO `jos_session` VALUES ('admin', '1270613069', '7kt3mpi4tvh6a98d213s3013r1', '0', '62', 'Super Administrator', '25', '0', '__default|a:8:{s:15:\"session.counter\";i:21;s:19:\"session.timer.start\";i:1270610355;s:18:\"session.timer.last\";i:1270613057;s:17:\"session.timer.now\";i:1270613069;s:22:\"session.client.browser\";s:88:\"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3\";s:8:\"registry\";O:9:\"JRegistry\":3:{s:17:\"_defaultNameSpace\";s:7:\"session\";s:9:\"_registry\";a:2:{s:7:\"session\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}s:11:\"com_content\";a:1:{s:4:\"data\";O:8:\"stdClass\":1:{s:8:\"category\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:3:\"3:5\";O:8:\"stdClass\":2:{s:12:\"filter_order\";s:5:\"title\";s:16:\"filter_order_Dir\";s:3:\"ASC\";}}}}}}s:7:\"_errors\";a:0:{}}s:4:\"user\";O:5:\"JUser\":19:{s:2:\"id\";s:2:\"62\";s:4:\"name\";s:13:\"Administrator\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:15:\"longdt@live.com\";s:8:\"password\";s:65:\"cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv\";s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";s:19:\"Super Administrator\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:3:\"gid\";s:2:\"25\";s:12:\"registerDate\";s:19:\"2010-03-29 14:58:13\";s:13:\"lastvisitDate\";s:19:\"2010-04-07 01:36:03\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:0:\"\";s:3:\"aid\";i:2;s:5:\"guest\";i:0;s:7:\"_params\";O:10:\"JParameter\":7:{s:4:\"_raw\";s:0:\"\";s:4:\"_xml\";N;s:9:\"_elements\";a:0:{}s:12:\"_elementPath\";a:1:{i:0;s:67:\"C:\\Working\\thuocdongduoc.vn\\libraries\\joomla\\html\\parameter\\element\";}s:17:\"_defaultNameSpace\";s:8:\"_default\";s:9:\"_registry\";a:1:{s:8:\"_default\";a:1:{s:4:\"data\";O:8:\"stdClass\":0:{}}}s:7:\"_errors\";a:0:{}}s:9:\"_errorMsg\";N;s:7:\"_errors\";a:0:{}}s:13:\"session.token\";s:32:\"8ae2f846d2b8437cc1cb2682e99b6c35\";}');

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
INSERT INTO `jos_templates_menu` VALUES ('khepri', '0', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jos_users
-- ----------------------------
INSERT INTO `jos_users` VALUES ('62', 'Administrator', 'admin', 'longdt@live.com', 'cd6d6e8191df743f3c9a31df9985e80f:6FyRFUOJmEHZ4rKsJT79VyaQ9anE05uv', 'Super Administrator', '0', '1', '25', '2010-03-29 14:58:13', '2010-04-08 02:18:10', '', '');

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
INSERT INTO `jos_weblinks` VALUES ('2', '27', '0', 'Voz Express', 'voz-express', 'http://voz.vn', '', '2010-04-01 09:59:09', '2', '1', '0', '0000-00-00 00:00:00', '2', '0', '1', 'target=1\n\n');
