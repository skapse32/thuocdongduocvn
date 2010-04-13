DROP TABLE IF EXISTS `jos_comment`;
CREATE TABLE IF NOT EXISTS `jos_comment` (
  `id` int(11) NOT NULL auto_increment,
  `username` text collate utf8_unicode_ci,
  `address` text collate utf8_unicode_ci,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `title` text collate utf8_unicode_ci,
  `content` text collate utf8_unicode_ci,
  `created` datetime NOT NULL,
  `del_flag` smallint(6) NOT NULL,
  `answer_username` varchar(255) collate utf8_unicode_ci default NULL,
  `answer_email` varchar(255) collate utf8_unicode_ci default NULL,
  `answer_content` text collate utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_comment`
--

INSERT INTO `jos_comment` (`id`, `username`, `address`, `email`, `title`, `content`, `created`, `del_flag`, `answer_username`, `answer_email`, `answer_content`, `status`) VALUES
(1, 'Lê Huy', 'Hà Ðông', '98237874', 'Thu?c dông tây y', 'Ð?a ch?: 14 Tr?n Phú, Hà Ðông, Hà N?i', '2010-04-08 16:18:51', 1, 'dgasdg', 'asdg', '', 1),
(5, 'asgahsadh', 'hsadhas', 'gasgasdg', 'sadgasd', 'gasdgasdg', '0000-00-00 00:00:00', 1, NULL, NULL, '', 0),
(6, 'sadgsadgsad', 'gasdgasdg', 'gasdg', 'sdgasd', 'asdgasdg', '0000-00-00 00:00:00', 1, NULL, NULL, '', 0),
(7, 'asghashsadh', 'dsafsadgsad', 'gsadg', 'sadfsad', 'asdgsadg', '0000-00-00 00:00:00', 1, NULL, NULL, '', 0),
(8, 'sadgsadgsad', 'ghsadhsahs', 'adhsadhsa', 'adhs', 'hsadhasdsda', '2010-04-09 15:34:42', 1, NULL, NULL, '', 0),
(9, 'ahsdhsadhsadh', 'asdhsadhasdh', 'dsah', 'hasdhsadh', 'asghdhdsa', '0000-00-00 00:00:00', 1, NULL, NULL, '', 0),
(14, 'fsdfsfsf', '', '', '', '', '0000-00-00 00:00:00', 0, NULL, NULL, '', 0),
(18, 'fsfsfaaaaaaaaaaaaaaaaaaaaaaaaaa', '', 'fsdfsdfsdfs@gmail.com', '', '', '0000-00-00 00:00:00', 0, NULL, NULL, '', 0),
(19, 'dágsdag', '', 'postdgasdg@gmail.com', '', '', '2010-04-09 15:34:42', 1, NULL, NULL, '', 0),
(20, 'dsgsdag', '', 'dsag@dsa.com', '', '', '0000-00-00 00:00:00', 0, NULL, NULL, '', 0),
(21, 'dafhdf', 'shdfh', 'dsfhdsfh@asdf.com', 'asgasd', 'sadh', '0000-00-00 00:00:00', 0, NULL, NULL, '', 0),
(22, 'Lê dình Liên', 'Hà Ðông', 'lien@gmail.com', 'kksadklgsalkd', 'laglsdklgdsakl', '2010-04-09 15:24:47', 1, 'sdfsadg', 'sadgsad', 'gasdgsadgsdag', 0),
(23, 'Giang', 'Hà Ðông', 'gh@gamo.com', 'kasdkgkl', 'lalsglkdgsaklgd', '0000-00-00 00:00:00', 0, NULL, NULL, '', 0),
(24, 'Giang 2', 'kjasgdlk', 'ls@mgadl.com', 'ládlkl', 'lkasdgkl', '0000-00-00 00:00:00', 0, NULL, NULL, '', 0),
(25, 'Nam dôi', 'Hà dông', 'd@a.com', 'klasdlgkl', 'lklfaklgksad', '0000-00-00 00:00:00', 0, NULL, NULL, '', 0),
(26, 'nam d?i ', 'kjasd', 'lksa@gma.com', 'láldkl', 'lkklgasdgd', '0000-00-00 00:00:00', 0, NULL, NULL, '', 0),
(27, 'nam', 'asg,', 'g@a.com', 'kllasdgl', 'lfgslka', '0000-00-00 00:00:00', 0, NULL, NULL, '', 0),
(28, 'hâh', 'kask', 'ka@sm.com', 'ksdk', 'lsag', '0000-00-00 00:00:00', 0, NULL, NULL, '', 0),
(29, 'gád', 'gádgasdd', 'sd@yak.com', 'ládlgl', 'l;ádgl', '0000-00-00 00:00:00', 0, NULL, NULL, '', 0);