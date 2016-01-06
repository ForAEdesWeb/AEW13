-- 2015-03-26T13:35:58+00:00 - mysql:dbname=factory;host=127.0.0.1

-- Table structure for table `mp75b_assets`

DROP TABLE IF EXISTS `mp75b_assets`;
CREATE TABLE `mp75b_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=870 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_assets`

LOCK TABLES `mp75b_assets` WRITE;
INSERT INTO `mp75b_assets` VALUES (1,0,0,1699,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `mp75b_assets` VALUES (2,1,1,2,1,'com_admin','com_admin','{}');
INSERT INTO `mp75b_assets` VALUES (3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `mp75b_assets` VALUES (5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `mp75b_assets` VALUES (6,1,11,12,1,'com_config','com_config','{}');
INSERT INTO `mp75b_assets` VALUES (7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (8,1,17,30,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (9,1,31,32,1,'com_cpanel','com_cpanel','{}');
INSERT INTO `mp75b_assets` VALUES (10,1,33,34,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `mp75b_assets` VALUES (11,1,35,36,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (12,1,37,38,1,'com_login','com_login','{}');
INSERT INTO `mp75b_assets` VALUES (13,1,39,40,1,'com_mailto','com_mailto','{}');
INSERT INTO `mp75b_assets` VALUES (14,1,41,42,1,'com_massmail','com_massmail','{}');
INSERT INTO `mp75b_assets` VALUES (15,1,43,44,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (16,1,45,46,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (17,1,47,48,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `mp75b_assets` VALUES (18,1,49,146,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (19,1,147,150,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (20,1,151,152,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (21,1,153,154,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}');
INSERT INTO `mp75b_assets` VALUES (22,1,155,156,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `mp75b_assets` VALUES (23,1,157,158,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (24,1,159,162,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (25,1,163,166,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (26,1,167,168,1,'com_wrapper','com_wrapper','{}');
INSERT INTO `mp75b_assets` VALUES (27,8,18,19,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (30,19,148,149,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (31,25,164,165,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (32,24,160,161,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (33,1,169,170,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `mp75b_assets` VALUES (34,1,171,172,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (35,1,173,174,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (36,1,175,176,1,'com_contenthistory','com_contenthistory','{}');
INSERT INTO `mp75b_assets` VALUES (37,1,177,178,1,'com_ajax','com_ajax','{}');
INSERT INTO `mp75b_assets` VALUES (38,1,179,180,1,'com_postinstall','com_postinstall','{}');
INSERT INTO `mp75b_assets` VALUES (39,18,50,51,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (40,18,52,53,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (41,18,54,55,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (42,18,56,57,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (43,18,58,59,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (44,18,60,61,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (45,18,62,63,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (46,18,64,65,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (47,18,66,67,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (48,18,68,69,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (49,18,70,71,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (50,18,72,73,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (51,18,74,75,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (52,18,76,77,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (53,18,78,79,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (54,1,181,182,1,'com_djcatalog2','com_djcatalog2','{\"djcatalog2.filedownload\":[],\"core.admin\":[],\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.delete.own\":[],\"core.edit\":[],\"core.edit.own\":[],\"core.edit.state\":[],\"core.edit.state.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (55,18,80,81,2,'com_modules.module.87','DJ-Catalog2 Categories','');
INSERT INTO `mp75b_assets` VALUES (56,18,82,83,2,'com_modules.module.88','DJ-Catalog2 Frontpage','');
INSERT INTO `mp75b_assets` VALUES (57,18,84,85,2,'com_modules.module.89','DJ-Catalog2 Items','');
INSERT INTO `mp75b_assets` VALUES (58,18,86,87,2,'com_modules.module.90','DJ-Catalog2 Related Items','');
INSERT INTO `mp75b_assets` VALUES (59,18,88,89,2,'com_modules.module.91','DJ-Catalog2 Filters Module','');
INSERT INTO `mp75b_assets` VALUES (60,18,90,91,2,'com_modules.module.92','DJ-Catalog2 Producers','');
INSERT INTO `mp75b_assets` VALUES (61,18,92,93,2,'com_modules.module.93','DJ-Catalog2 Search Module','');
INSERT INTO `mp75b_assets` VALUES (62,1,183,184,1,'com_rsform','rsform','{}');
INSERT INTO `mp75b_assets` VALUES (63,1,185,186,1,'com_jaextmanager','com_jaextmanager','{}');
INSERT INTO `mp75b_assets` VALUES (64,1,187,188,1,'com_remoteimage','com_remoteimage','{\"core.admin\":[],\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (65,1,189,190,1,'com_echo','com_echo','{}');
INSERT INTO `mp75b_assets` VALUES (66,1,191,192,1,'com_m2c','com_m2c','{}');
INSERT INTO `mp75b_assets` VALUES (67,18,94,95,2,'com_modules.module.94','IndexHtml','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (68,18,96,97,2,'com_modules.module.95','header','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (69,18,98,99,2,'com_modules.module.96','advantage','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (70,18,100,101,2,'com_modules.module.97','project','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (71,1,193,196,1,'com_webgallery','com_webgallery','{}');
INSERT INTO `mp75b_assets` VALUES (72,71,194,195,2,'com_webgallery.category.8','一頁風格','');
INSERT INTO `mp75b_assets` VALUES (73,18,102,103,2,'com_modules.module.98','projectSetup1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (74,1,197,198,1,'com_modulesmanagerck','com_modulesmanagerck','{}');
INSERT INTO `mp75b_assets` VALUES (75,18,104,105,2,'com_modules.module.99','NEW MODULE','');
INSERT INTO `mp75b_assets` VALUES (76,18,106,107,2,'com_modules.module.100','projectSetup2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (77,18,108,109,2,'com_modules.module.101','projectSetup3','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (78,18,110,111,2,'com_modules.module.102','projectSetup3 (2)','');
INSERT INTO `mp75b_assets` VALUES (79,18,112,113,2,'com_modules.module.103','projectSetup4','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (80,18,114,115,2,'com_modules.module.104','projectSetupTitle','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (81,18,116,117,2,'com_modules.module.105','DJ-Catalog2 Cart Module','');
INSERT INTO `mp75b_assets` VALUES (82,18,118,119,2,'com_modules.module.106','userProject','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (83,18,120,121,2,'com_modules.module.107','userProject1','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (84,18,122,123,2,'com_modules.module.108','userProject2','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (85,18,124,125,2,'com_modules.module.109','userProject3','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (86,18,126,127,2,'com_modules.module.110','userProject4','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (87,18,128,129,2,'com_modules.module.111','userProject5','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (88,18,130,131,2,'com_modules.module.112','userProject6','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (89,18,132,133,2,'com_modules.module.113','price','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (90,18,134,135,2,'com_modules.module.114','setup','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (91,18,136,137,2,'com_modules.module.115','contact','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (92,18,138,139,2,'com_modules.module.116','contact (2)','');
INSERT INTO `mp75b_assets` VALUES (93,18,140,141,2,'com_modules.module.117','Custom CSS','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (94,18,142,143,2,'com_modules.module.118','advantagePage','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (95,1,199,204,1,'com_userxtd','com_userxtd','{}');
INSERT INTO `mp75b_assets` VALUES (96,95,200,201,2,'com_userxtd.category.9','Basic Info','');
INSERT INTO `mp75b_assets` VALUES (97,95,202,203,2,'com_userxtd.category.10','Living','');
INSERT INTO `mp75b_assets` VALUES (98,1,205,206,1,'#__userxtd_fields.1','#__userxtd_fields.1','');
INSERT INTO `mp75b_assets` VALUES (99,1,207,208,1,'#__userxtd_fields.2','#__userxtd_fields.2','');
INSERT INTO `mp75b_assets` VALUES (100,1,209,210,1,'#__userxtd_fields.3','#__userxtd_fields.3','');
INSERT INTO `mp75b_assets` VALUES (101,1,211,212,1,'#__userxtd_fields.4','#__userxtd_fields.4','');
INSERT INTO `mp75b_assets` VALUES (102,1,213,214,1,'#__userxtd_fields.5','#__userxtd_fields.5','');
INSERT INTO `mp75b_assets` VALUES (103,1,215,216,1,'#__userxtd_fields.6','#__userxtd_fields.6','');
INSERT INTO `mp75b_assets` VALUES (104,1,217,218,1,'#__userxtd_fields.7','#__userxtd_fields.7','');
INSERT INTO `mp75b_assets` VALUES (105,1,219,220,1,'#__userxtd_fields.8','#__userxtd_fields.8','');
INSERT INTO `mp75b_assets` VALUES (106,1,221,222,1,'#__userxtd_fields.9','#__userxtd_fields.9','');
INSERT INTO `mp75b_assets` VALUES (107,1,223,224,1,'#__userxtd_fields.10','#__userxtd_fields.10','');
INSERT INTO `mp75b_assets` VALUES (108,1,225,226,1,'#__userxtd_fields.11','#__userxtd_fields.11','');
INSERT INTO `mp75b_assets` VALUES (109,1,227,228,1,'#__userxtd_fields.12','#__userxtd_fields.12','');
INSERT INTO `mp75b_assets` VALUES (129,18,144,145,2,'com_modules.module.119','關於我們','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (130,1,229,230,1,'com_quickcontent','com_quickcontent','{}');
INSERT INTO `mp75b_assets` VALUES (131,8,20,29,2,'com_content.category.19','白紋收藏','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `mp75b_assets` VALUES (132,131,21,22,3,'com_content.article.12','網站假資料生產器','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (133,1,231,232,1,'#__ucm_content.1','#__ucm_content.1','[]');
INSERT INTO `mp75b_assets` VALUES (134,1,233,234,1,'com_jcomments','jcomments','{}');
INSERT INTO `mp75b_assets` VALUES (135,1,235,1690,1,'com_localise','com_localise','{}');
INSERT INTO `mp75b_assets` VALUES (136,135,236,453,2,'com_localise.1','en-GB.xml','');
INSERT INTO `mp75b_assets` VALUES (137,135,454,669,2,'com_localise.2','zh-TW.xml','');
INSERT INTO `mp75b_assets` VALUES (138,135,670,1151,2,'com_localise.3','en-GB.xml','');
INSERT INTO `mp75b_assets` VALUES (139,135,1152,1647,2,'com_localise.4','zh-TW.xml','');
INSERT INTO `mp75b_assets` VALUES (140,138,671,672,3,'com_localise.5','en-GB.com_djcatalog2.ini','');
INSERT INTO `mp75b_assets` VALUES (141,135,1648,1689,2,'com_localise.0','ca-ES.com_localise.ini','');
INSERT INTO `mp75b_assets` VALUES (142,141,1649,1650,3,'com_localise.6','ca-ES.com_localise.ini','');
INSERT INTO `mp75b_assets` VALUES (143,141,1651,1652,3,'com_localise.7','da-DK.com_localise.ini','');
INSERT INTO `mp75b_assets` VALUES (144,141,1653,1654,3,'com_localise.8','de-DE.com_localise.ini','');
INSERT INTO `mp75b_assets` VALUES (145,138,673,674,3,'com_localise.9','en-GB.com_localise.ini','');
INSERT INTO `mp75b_assets` VALUES (146,141,1655,1656,3,'com_localise.10','fa-IR.com_localise.ini','');
INSERT INTO `mp75b_assets` VALUES (147,141,1657,1658,3,'com_localise.11','fr-FR.com_localise.ini','');
INSERT INTO `mp75b_assets` VALUES (148,141,1659,1660,3,'com_localise.12','pt-BR.com_localise.ini','');
INSERT INTO `mp75b_assets` VALUES (149,141,1661,1662,3,'com_localise.13','pt-PT.com_localise.ini','');
INSERT INTO `mp75b_assets` VALUES (150,139,1153,1154,3,'com_localise.14','zh-TW.com_localise.ini','');
INSERT INTO `mp75b_assets` VALUES (151,138,675,676,3,'com_localise.15','en-GB.com_modulesmanagerck.ini','');
INSERT INTO `mp75b_assets` VALUES (152,141,1663,1664,3,'com_localise.16','fr-FR.com_modulesmanagerck.ini','');
INSERT INTO `mp75b_assets` VALUES (153,138,677,678,3,'com_localise.17','en-GB.com_quickcontent.ini','');
INSERT INTO `mp75b_assets` VALUES (154,139,1155,1156,3,'com_localise.18','zh-TW.com_quickcontent.ini','');
INSERT INTO `mp75b_assets` VALUES (155,138,679,680,3,'com_localise.19','en-GB.com_remoteimage.ini','');
INSERT INTO `mp75b_assets` VALUES (156,139,1157,1158,3,'com_localise.20','zh-TW.com_remoteimage.ini','');
INSERT INTO `mp75b_assets` VALUES (157,138,681,682,3,'com_localise.21','en-GB.com_userxtd.ini','');
INSERT INTO `mp75b_assets` VALUES (158,141,1665,1666,3,'com_localise.22','fa-IR.com_userxtd.ini','');
INSERT INTO `mp75b_assets` VALUES (159,139,1159,1160,3,'com_localise.23','zh-TW.com_userxtd.ini','');
INSERT INTO `mp75b_assets` VALUES (160,138,683,684,3,'com_localise.24','en-GB.com_webgallery.ini','');
INSERT INTO `mp75b_assets` VALUES (161,139,1161,1162,3,'com_localise.25','zh-TW.com_webgallery.ini','');
INSERT INTO `mp75b_assets` VALUES (162,138,685,686,3,'com_localise.26','en-GB.com_djcatalog2.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (163,141,1667,1668,3,'com_localise.27','ca-ES.com_localise.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (164,141,1669,1670,3,'com_localise.28','da-DK.com_localise.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (165,141,1671,1672,3,'com_localise.29','de-DE.com_localise.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (166,138,687,688,3,'com_localise.30','en-GB.com_localise.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (167,141,1673,1674,3,'com_localise.31','fa-IR.com_localise.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (168,141,1675,1676,3,'com_localise.32','fr-FR.com_localise.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (169,141,1677,1678,3,'com_localise.33','pt-BR.com_localise.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (170,141,1679,1680,3,'com_localise.34','pt-PT.com_localise.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (171,139,1163,1164,3,'com_localise.35','zh-TW.com_localise.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (172,138,689,690,3,'com_localise.36','en-GB.com_m2c.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (173,138,691,692,3,'com_localise.37','en-GB.com_modulesmanagerck.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (174,141,1681,1682,3,'com_localise.38','fr-FR.com_modulesmanagerck.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (175,138,693,694,3,'com_localise.39','en-GB.com_quickcontent.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (176,139,1165,1166,3,'com_localise.40','zh-TW.com_quickcontent.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (177,138,695,696,3,'com_localise.41','en-GB.com_remoteimage.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (178,139,1167,1168,3,'com_localise.42','zh-TW.com_remoteimage.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (179,138,697,698,3,'com_localise.43','en-GB.com_userxtd.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (180,141,1683,1684,3,'com_localise.44','fa-IR.com_userxtd.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (181,139,1169,1170,3,'com_localise.45','zh-TW.com_userxtd.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (182,138,699,700,3,'com_localise.46','en-GB.com_webgallery.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (183,139,1171,1172,3,'com_localise.47','zh-TW.com_webgallery.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (184,138,701,702,3,'com_localise.48','en-GB.mod_multilangstatus.ini','');
INSERT INTO `mp75b_assets` VALUES (185,138,703,704,3,'com_localise.49','en-GB.mod_version.ini','');
INSERT INTO `mp75b_assets` VALUES (186,138,705,706,3,'com_localise.50','en-GB.mod_multilangstatus.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (187,138,707,708,3,'com_localise.51','en-GB.mod_version.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (188,138,709,710,3,'com_localise.52','en-GB.tpl_hathor.ini','');
INSERT INTO `mp75b_assets` VALUES (189,138,711,712,3,'com_localise.53','en-GB.tpl_isis.ini','');
INSERT INTO `mp75b_assets` VALUES (190,138,713,714,3,'com_localise.54','en-GB.tpl_hathor.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (191,138,715,716,3,'com_localise.55','en-GB.tpl_isis.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (192,138,717,718,3,'com_localise.56','en-GB.com_admin.ini','');
INSERT INTO `mp75b_assets` VALUES (193,138,719,720,3,'com_localise.57','en-GB.com_admin.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (194,138,721,722,3,'com_localise.58','en-GB.com_ajax.ini','');
INSERT INTO `mp75b_assets` VALUES (195,138,723,724,3,'com_localise.59','en-GB.com_ajax.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (196,138,725,726,3,'com_localise.60','en-GB.com_banners.ini','');
INSERT INTO `mp75b_assets` VALUES (197,138,727,728,3,'com_localise.61','en-GB.com_banners.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (198,138,729,730,3,'com_localise.62','en-GB.com_cache.ini','');
INSERT INTO `mp75b_assets` VALUES (199,138,731,732,3,'com_localise.63','en-GB.com_cache.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (200,138,733,734,3,'com_localise.64','en-GB.com_categories.ini','');
INSERT INTO `mp75b_assets` VALUES (201,138,735,736,3,'com_localise.65','en-GB.com_categories.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (202,138,737,738,3,'com_localise.66','en-GB.com_checkin.ini','');
INSERT INTO `mp75b_assets` VALUES (203,138,739,740,3,'com_localise.67','en-GB.com_checkin.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (204,138,741,742,3,'com_localise.68','en-GB.com_config.ini','');
INSERT INTO `mp75b_assets` VALUES (205,138,743,744,3,'com_localise.69','en-GB.com_config.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (206,138,745,746,3,'com_localise.70','en-GB.com_contact.ini','');
INSERT INTO `mp75b_assets` VALUES (207,138,747,748,3,'com_localise.71','en-GB.com_contact.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (208,138,749,750,3,'com_localise.72','en-GB.com_content.ini','');
INSERT INTO `mp75b_assets` VALUES (209,138,751,752,3,'com_localise.73','en-GB.com_content.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (210,138,753,754,3,'com_localise.74','en-GB.com_contenthistory.ini','');
INSERT INTO `mp75b_assets` VALUES (211,138,755,756,3,'com_localise.75','en-GB.com_contenthistory.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (212,138,757,758,3,'com_localise.76','en-GB.com_cpanel.ini','');
INSERT INTO `mp75b_assets` VALUES (213,138,759,760,3,'com_localise.77','en-GB.com_cpanel.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (214,138,761,762,3,'com_localise.78','en-GB.com_finder.ini','');
INSERT INTO `mp75b_assets` VALUES (215,138,763,764,3,'com_localise.79','en-GB.com_finder.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (216,138,765,766,3,'com_localise.80','en-GB.com_installer.ini','');
INSERT INTO `mp75b_assets` VALUES (217,138,767,768,3,'com_localise.81','en-GB.com_installer.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (218,138,769,770,3,'com_localise.82','en-GB.com_jaextmanager.ini','');
INSERT INTO `mp75b_assets` VALUES (219,138,771,772,3,'com_localise.83','en-GB.com_jaextmanager.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (220,138,773,774,3,'com_localise.84','en-GB.com_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (221,138,775,776,3,'com_localise.85','en-GB.com_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (222,138,777,778,3,'com_localise.86','en-GB.com_joomlaupdate.ini','');
INSERT INTO `mp75b_assets` VALUES (223,138,779,780,3,'com_localise.87','en-GB.com_joomlaupdate.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (224,138,781,782,3,'com_localise.88','en-GB.com_languages.ini','');
INSERT INTO `mp75b_assets` VALUES (225,138,783,784,3,'com_localise.89','en-GB.com_languages.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (226,138,785,786,3,'com_localise.90','en-GB.com_login.ini','');
INSERT INTO `mp75b_assets` VALUES (227,138,787,788,3,'com_localise.91','en-GB.com_login.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (228,138,789,790,3,'com_localise.92','en-GB.com_mailto.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (229,138,791,792,3,'com_localise.93','en-GB.com_media.ini','');
INSERT INTO `mp75b_assets` VALUES (230,138,793,794,3,'com_localise.94','en-GB.com_media.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (231,138,795,796,3,'com_localise.95','en-GB.com_menus.ini','');
INSERT INTO `mp75b_assets` VALUES (232,138,797,798,3,'com_localise.96','en-GB.com_menus.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (233,138,799,800,3,'com_localise.97','en-GB.com_messages.ini','');
INSERT INTO `mp75b_assets` VALUES (234,138,801,802,3,'com_localise.98','en-GB.com_messages.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (235,138,803,804,3,'com_localise.99','en-GB.com_modules.ini','');
INSERT INTO `mp75b_assets` VALUES (236,138,805,806,3,'com_localise.100','en-GB.com_modules.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (237,138,807,808,3,'com_localise.101','en-GB.com_newsfeeds.ini','');
INSERT INTO `mp75b_assets` VALUES (238,138,809,810,3,'com_localise.102','en-GB.com_newsfeeds.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (239,138,811,812,3,'com_localise.103','en-GB.com_plugins.ini','');
INSERT INTO `mp75b_assets` VALUES (240,138,813,814,3,'com_localise.104','en-GB.com_plugins.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (241,138,815,816,3,'com_localise.105','en-GB.com_postinstall.ini','');
INSERT INTO `mp75b_assets` VALUES (242,138,817,818,3,'com_localise.106','en-GB.com_postinstall.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (243,138,819,820,3,'com_localise.107','en-GB.com_redirect.ini','');
INSERT INTO `mp75b_assets` VALUES (244,138,821,822,3,'com_localise.108','en-GB.com_redirect.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (245,138,823,824,3,'com_localise.109','en-GB.com_rsform.ini','');
INSERT INTO `mp75b_assets` VALUES (246,138,825,826,3,'com_localise.110','en-GB.com_rsform.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (247,138,827,828,3,'com_localise.111','en-GB.com_search.ini','');
INSERT INTO `mp75b_assets` VALUES (248,138,829,830,3,'com_localise.112','en-GB.com_search.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (249,138,831,832,3,'com_localise.113','en-GB.com_tags.ini','');
INSERT INTO `mp75b_assets` VALUES (250,138,833,834,3,'com_localise.114','en-GB.com_tags.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (251,138,835,836,3,'com_localise.115','en-GB.com_templates.ini','');
INSERT INTO `mp75b_assets` VALUES (252,138,837,838,3,'com_localise.116','en-GB.com_templates.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (253,138,839,840,3,'com_localise.117','en-GB.com_users.ini','');
INSERT INTO `mp75b_assets` VALUES (254,138,841,842,3,'com_localise.118','en-GB.com_users.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (255,138,843,844,3,'com_localise.119','en-GB.com_weblinks.ini','');
INSERT INTO `mp75b_assets` VALUES (256,138,845,846,3,'com_localise.120','en-GB.com_weblinks.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (257,138,847,848,3,'com_localise.121','en-GB.com_wrapper.ini','');
INSERT INTO `mp75b_assets` VALUES (258,138,849,850,3,'com_localise.122','en-GB.com_wrapper.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (259,138,851,852,3,'com_localise.123','en-GB.ini','');
INSERT INTO `mp75b_assets` VALUES (260,138,853,854,3,'com_localise.124','en-GB.lib_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (261,138,855,856,3,'com_localise.125','en-GB.mod_custom.ini','');
INSERT INTO `mp75b_assets` VALUES (262,138,857,858,3,'com_localise.126','en-GB.mod_custom.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (263,138,859,860,3,'com_localise.127','en-GB.mod_feed.ini','');
INSERT INTO `mp75b_assets` VALUES (264,138,861,862,3,'com_localise.128','en-GB.mod_feed.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (265,138,863,864,3,'com_localise.129','en-GB.mod_latest.ini','');
INSERT INTO `mp75b_assets` VALUES (266,138,865,866,3,'com_localise.130','en-GB.mod_latest.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (267,138,867,868,3,'com_localise.131','en-GB.mod_logged.ini','');
INSERT INTO `mp75b_assets` VALUES (268,138,869,870,3,'com_localise.132','en-GB.mod_logged.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (269,138,871,872,3,'com_localise.133','en-GB.mod_login.ini','');
INSERT INTO `mp75b_assets` VALUES (270,138,873,874,3,'com_localise.134','en-GB.mod_login.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (271,138,875,876,3,'com_localise.135','en-GB.mod_menu.ini','');
INSERT INTO `mp75b_assets` VALUES (272,138,877,878,3,'com_localise.136','en-GB.mod_menu.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (273,138,879,880,3,'com_localise.137','en-GB.mod_popular.ini','');
INSERT INTO `mp75b_assets` VALUES (274,138,881,882,3,'com_localise.138','en-GB.mod_popular.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (275,138,883,884,3,'com_localise.139','en-GB.mod_quickicon.ini','');
INSERT INTO `mp75b_assets` VALUES (276,138,885,886,3,'com_localise.140','en-GB.mod_quickicon.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (277,138,887,888,3,'com_localise.141','en-GB.mod_stats_admin.ini','');
INSERT INTO `mp75b_assets` VALUES (278,138,889,890,3,'com_localise.142','en-GB.mod_stats_admin.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (279,138,891,892,3,'com_localise.143','en-GB.mod_status.ini','');
INSERT INTO `mp75b_assets` VALUES (280,138,893,894,3,'com_localise.144','en-GB.mod_status.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (281,138,895,896,3,'com_localise.145','en-GB.mod_submenu.ini','');
INSERT INTO `mp75b_assets` VALUES (282,138,897,898,3,'com_localise.146','en-GB.mod_submenu.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (283,138,899,900,3,'com_localise.147','en-GB.mod_title.ini','');
INSERT INTO `mp75b_assets` VALUES (284,138,901,902,3,'com_localise.148','en-GB.mod_title.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (285,138,903,904,3,'com_localise.149','en-GB.mod_toolbar.ini','');
INSERT INTO `mp75b_assets` VALUES (286,138,905,906,3,'com_localise.150','en-GB.mod_toolbar.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (287,138,907,908,3,'com_localise.151','en-GB.plg_authentication_cookie.ini','');
INSERT INTO `mp75b_assets` VALUES (288,138,909,910,3,'com_localise.152','en-GB.plg_authentication_cookie.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (289,138,911,912,3,'com_localise.153','en-GB.plg_authentication_gmail.ini','');
INSERT INTO `mp75b_assets` VALUES (290,138,913,914,3,'com_localise.154','en-GB.plg_authentication_gmail.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (291,138,915,916,3,'com_localise.155','en-GB.plg_authentication_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (292,138,917,918,3,'com_localise.156','en-GB.plg_authentication_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (293,138,919,920,3,'com_localise.157','en-GB.plg_authentication_ldap.ini','');
INSERT INTO `mp75b_assets` VALUES (294,138,921,922,3,'com_localise.158','en-GB.plg_authentication_ldap.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (295,138,923,924,3,'com_localise.159','en-GB.plg_captcha_recaptcha.ini','');
INSERT INTO `mp75b_assets` VALUES (296,138,925,926,3,'com_localise.160','en-GB.plg_captcha_recaptcha.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (297,138,927,928,3,'com_localise.161','en-GB.plg_content_contact.ini','');
INSERT INTO `mp75b_assets` VALUES (298,138,929,930,3,'com_localise.162','en-GB.plg_content_contact.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (299,138,931,932,3,'com_localise.163','en-GB.plg_content_emailcloak.ini','');
INSERT INTO `mp75b_assets` VALUES (300,138,933,934,3,'com_localise.164','en-GB.plg_content_emailcloak.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (301,138,935,936,3,'com_localise.165','en-GB.plg_content_finder.ini','');
INSERT INTO `mp75b_assets` VALUES (302,138,937,938,3,'com_localise.166','en-GB.plg_content_finder.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (303,138,939,940,3,'com_localise.167','en-GB.plg_content_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (304,138,941,942,3,'com_localise.168','en-GB.plg_content_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (305,138,943,944,3,'com_localise.169','en-GB.plg_content_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (306,138,945,946,3,'com_localise.170','en-GB.plg_content_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (307,138,947,948,3,'com_localise.171','en-GB.plg_content_loadmodule.ini','');
INSERT INTO `mp75b_assets` VALUES (308,138,949,950,3,'com_localise.172','en-GB.plg_content_loadmodule.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (309,138,951,952,3,'com_localise.173','en-GB.plg_content_pagebreak.ini','');
INSERT INTO `mp75b_assets` VALUES (310,138,953,954,3,'com_localise.174','en-GB.plg_content_pagebreak.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (311,138,955,956,3,'com_localise.175','en-GB.plg_content_pagenavigation.ini','');
INSERT INTO `mp75b_assets` VALUES (312,138,957,958,3,'com_localise.176','en-GB.plg_content_pagenavigation.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (313,138,959,960,3,'com_localise.177','en-GB.plg_content_vote.ini','');
INSERT INTO `mp75b_assets` VALUES (314,138,961,962,3,'com_localise.178','en-GB.plg_content_vote.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (315,138,963,964,3,'com_localise.179','en-GB.plg_editors-xtd_article.ini','');
INSERT INTO `mp75b_assets` VALUES (316,138,965,966,3,'com_localise.180','en-GB.plg_editors-xtd_article.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (317,138,967,968,3,'com_localise.181','en-GB.plg_editors-xtd_image.ini','');
INSERT INTO `mp75b_assets` VALUES (318,138,969,970,3,'com_localise.182','en-GB.plg_editors-xtd_image.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (319,138,971,972,3,'com_localise.183','en-GB.plg_editors-xtd_jcommentsoff.ini','');
INSERT INTO `mp75b_assets` VALUES (320,138,973,974,3,'com_localise.184','en-GB.plg_editors-xtd_jcommentsoff.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (321,138,975,976,3,'com_localise.185','en-GB.plg_editors-xtd_jcommentson.ini','');
INSERT INTO `mp75b_assets` VALUES (322,138,977,978,3,'com_localise.186','en-GB.plg_editors-xtd_jcommentson.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (323,138,979,980,3,'com_localise.187','en-GB.plg_editors-xtd_pagebreak.ini','');
INSERT INTO `mp75b_assets` VALUES (324,138,981,982,3,'com_localise.188','en-GB.plg_editors-xtd_pagebreak.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (325,138,983,984,3,'com_localise.189','en-GB.plg_editors-xtd_readmore.ini','');
INSERT INTO `mp75b_assets` VALUES (326,138,985,986,3,'com_localise.190','en-GB.plg_editors-xtd_readmore.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (327,138,987,988,3,'com_localise.191','en-GB.plg_editors_codemirror.ini','');
INSERT INTO `mp75b_assets` VALUES (328,138,989,990,3,'com_localise.192','en-GB.plg_editors_codemirror.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (329,138,991,992,3,'com_localise.193','en-GB.plg_editors_none.ini','');
INSERT INTO `mp75b_assets` VALUES (330,138,993,994,3,'com_localise.194','en-GB.plg_editors_none.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (331,138,995,996,3,'com_localise.195','en-GB.plg_editors_tinymce.ini','');
INSERT INTO `mp75b_assets` VALUES (332,138,997,998,3,'com_localise.196','en-GB.plg_editors_tinymce.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (333,138,999,1000,3,'com_localise.197','en-GB.plg_extension_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (334,138,1001,1002,3,'com_localise.198','en-GB.plg_extension_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (335,138,1003,1004,3,'com_localise.199','en-GB.plg_finder_categories.ini','');
INSERT INTO `mp75b_assets` VALUES (336,138,1005,1006,3,'com_localise.200','en-GB.plg_finder_categories.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (337,138,1007,1008,3,'com_localise.201','en-GB.plg_finder_contacts.ini','');
INSERT INTO `mp75b_assets` VALUES (338,138,1009,1010,3,'com_localise.202','en-GB.plg_finder_contacts.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (339,138,1011,1012,3,'com_localise.203','en-GB.plg_finder_content.ini','');
INSERT INTO `mp75b_assets` VALUES (340,138,1013,1014,3,'com_localise.204','en-GB.plg_finder_content.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (341,138,1015,1016,3,'com_localise.205','en-GB.plg_finder_newsfeeds.ini','');
INSERT INTO `mp75b_assets` VALUES (342,138,1017,1018,3,'com_localise.206','en-GB.plg_finder_newsfeeds.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (343,138,1019,1020,3,'com_localise.207','en-GB.plg_finder_tags.ini','');
INSERT INTO `mp75b_assets` VALUES (344,138,1021,1022,3,'com_localise.208','en-GB.plg_finder_tags.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (345,138,1023,1024,3,'com_localise.209','en-GB.plg_finder_weblinks.ini','');
INSERT INTO `mp75b_assets` VALUES (346,138,1025,1026,3,'com_localise.210','en-GB.plg_finder_weblinks.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (347,138,1027,1028,3,'com_localise.211','en-GB.plg_installer_webinstaller.ini','');
INSERT INTO `mp75b_assets` VALUES (348,138,1029,1030,3,'com_localise.212','en-GB.plg_installer_webinstaller.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (349,138,1031,1032,3,'com_localise.213','en-GB.plg_quickicon_extensionupdate.ini','');
INSERT INTO `mp75b_assets` VALUES (350,138,1033,1034,3,'com_localise.214','en-GB.plg_quickicon_extensionupdate.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (351,138,1035,1036,3,'com_localise.215','en-GB.plg_quickicon_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (352,138,1037,1038,3,'com_localise.216','en-GB.plg_quickicon_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (353,138,1039,1040,3,'com_localise.217','en-GB.plg_quickicon_joomlaupdate.ini','');
INSERT INTO `mp75b_assets` VALUES (354,138,1041,1042,3,'com_localise.218','en-GB.plg_quickicon_joomlaupdate.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (355,138,1043,1044,3,'com_localise.219','en-GB.plg_search_categories.ini','');
INSERT INTO `mp75b_assets` VALUES (356,138,1045,1046,3,'com_localise.220','en-GB.plg_search_categories.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (357,138,1047,1048,3,'com_localise.221','en-GB.plg_search_contacts.ini','');
INSERT INTO `mp75b_assets` VALUES (358,138,1049,1050,3,'com_localise.222','en-GB.plg_search_contacts.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (359,138,1051,1052,3,'com_localise.223','en-GB.plg_search_content.ini','');
INSERT INTO `mp75b_assets` VALUES (360,138,1053,1054,3,'com_localise.224','en-GB.plg_search_content.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (361,138,1055,1056,3,'com_localise.225','en-GB.plg_search_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (362,138,1057,1058,3,'com_localise.226','en-GB.plg_search_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (363,138,1059,1060,3,'com_localise.227','en-GB.plg_search_newsfeeds.ini','');
INSERT INTO `mp75b_assets` VALUES (364,138,1061,1062,3,'com_localise.228','en-GB.plg_search_newsfeeds.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (365,138,1063,1064,3,'com_localise.229','en-GB.plg_search_tags.ini','');
INSERT INTO `mp75b_assets` VALUES (366,138,1065,1066,3,'com_localise.230','en-GB.plg_search_tags.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (367,138,1067,1068,3,'com_localise.231','en-GB.plg_search_weblinks.ini','');
INSERT INTO `mp75b_assets` VALUES (368,138,1069,1070,3,'com_localise.232','en-GB.plg_search_weblinks.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (369,138,1071,1072,3,'com_localise.233','en-GB.plg_system_cache.ini','');
INSERT INTO `mp75b_assets` VALUES (370,138,1073,1074,3,'com_localise.234','en-GB.plg_system_cache.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (371,138,1075,1076,3,'com_localise.235','en-GB.plg_system_debug.ini','');
INSERT INTO `mp75b_assets` VALUES (372,138,1077,1078,3,'com_localise.236','en-GB.plg_system_debug.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (373,138,1079,1080,3,'com_localise.237','en-GB.plg_system_highlight.ini','');
INSERT INTO `mp75b_assets` VALUES (374,138,1081,1082,3,'com_localise.238','en-GB.plg_system_highlight.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (375,138,1083,1084,3,'com_localise.239','en-GB.plg_system_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (376,138,1085,1086,3,'com_localise.240','en-GB.plg_system_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (377,138,1087,1088,3,'com_localise.241','en-GB.plg_system_languagecode.ini','');
INSERT INTO `mp75b_assets` VALUES (378,138,1089,1090,3,'com_localise.242','en-GB.plg_system_languagecode.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (379,138,1091,1092,3,'com_localise.243','en-GB.plg_system_languagefilter.ini','');
INSERT INTO `mp75b_assets` VALUES (380,138,1093,1094,3,'com_localise.244','en-GB.plg_system_languagefilter.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (381,138,1095,1096,3,'com_localise.245','en-GB.plg_system_log.ini','');
INSERT INTO `mp75b_assets` VALUES (382,138,1097,1098,3,'com_localise.246','en-GB.plg_system_log.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (383,138,1099,1100,3,'com_localise.247','en-GB.plg_system_logout.ini','');
INSERT INTO `mp75b_assets` VALUES (384,138,1101,1102,3,'com_localise.248','en-GB.plg_system_logout.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (385,138,1103,1104,3,'com_localise.249','en-GB.plg_system_p3p.ini','');
INSERT INTO `mp75b_assets` VALUES (386,138,1105,1106,3,'com_localise.250','en-GB.plg_system_p3p.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (387,138,1107,1108,3,'com_localise.251','en-GB.plg_system_redirect.ini','');
INSERT INTO `mp75b_assets` VALUES (388,138,1109,1110,3,'com_localise.252','en-GB.plg_system_redirect.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (389,138,1111,1112,3,'com_localise.253','en-GB.plg_system_remember.ini','');
INSERT INTO `mp75b_assets` VALUES (390,138,1113,1114,3,'com_localise.254','en-GB.plg_system_remember.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (391,138,1115,1116,3,'com_localise.255','en-GB.plg_system_sef.ini','');
INSERT INTO `mp75b_assets` VALUES (392,138,1117,1118,3,'com_localise.256','en-GB.plg_system_sef.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (393,138,1119,1120,3,'com_localise.257','en-GB.plg_system_t3.ini','');
INSERT INTO `mp75b_assets` VALUES (394,138,1121,1122,3,'com_localise.258','en-GB.plg_system_t3.j25.compat.ini','');
INSERT INTO `mp75b_assets` VALUES (395,138,1123,1124,3,'com_localise.259','en-GB.plg_system_t3.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (396,138,1125,1126,3,'com_localise.260','en-GB.plg_twofactorauth_totp.ini','');
INSERT INTO `mp75b_assets` VALUES (397,138,1127,1128,3,'com_localise.261','en-GB.plg_twofactorauth_totp.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (398,138,1129,1130,3,'com_localise.262','en-GB.plg_twofactorauth_yubikey.ini','');
INSERT INTO `mp75b_assets` VALUES (399,138,1131,1132,3,'com_localise.263','en-GB.plg_twofactorauth_yubikey.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (400,138,1133,1134,3,'com_localise.264','en-GB.plg_user_contactcreator.ini','');
INSERT INTO `mp75b_assets` VALUES (401,138,1135,1136,3,'com_localise.265','en-GB.plg_user_contactcreator.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (402,138,1137,1138,3,'com_localise.266','en-GB.plg_user_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (403,138,1139,1140,3,'com_localise.267','en-GB.plg_user_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (404,138,1141,1142,3,'com_localise.268','en-GB.plg_user_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (405,138,1143,1144,3,'com_localise.269','en-GB.plg_user_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (406,138,1145,1146,3,'com_localise.270','en-GB.plg_user_profile.ini','');
INSERT INTO `mp75b_assets` VALUES (407,138,1147,1148,3,'com_localise.271','en-GB.plg_user_profile.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (408,139,1173,1174,3,'com_localise.272','zh-TW.com_admin.ini','');
INSERT INTO `mp75b_assets` VALUES (409,139,1175,1176,3,'com_localise.273','zh-TW.com_admin.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (410,139,1177,1178,3,'com_localise.274','zh-TW.com_ajax.ini','');
INSERT INTO `mp75b_assets` VALUES (411,139,1179,1180,3,'com_localise.275','zh-TW.com_ajax.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (412,139,1181,1182,3,'com_localise.276','zh-TW.com_banners.ini','');
INSERT INTO `mp75b_assets` VALUES (413,139,1183,1184,3,'com_localise.277','zh-TW.com_banners.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (414,139,1185,1186,3,'com_localise.278','zh-TW.com_cache.ini','');
INSERT INTO `mp75b_assets` VALUES (415,139,1187,1188,3,'com_localise.279','zh-TW.com_cache.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (416,139,1189,1190,3,'com_localise.280','zh-TW.com_categories.ini','');
INSERT INTO `mp75b_assets` VALUES (417,139,1191,1192,3,'com_localise.281','zh-TW.com_categories.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (418,139,1193,1194,3,'com_localise.282','zh-TW.com_checkin.ini','');
INSERT INTO `mp75b_assets` VALUES (419,139,1195,1196,3,'com_localise.283','zh-TW.com_checkin.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (420,139,1197,1198,3,'com_localise.284','zh-TW.com_config.ini','');
INSERT INTO `mp75b_assets` VALUES (421,139,1199,1200,3,'com_localise.285','zh-TW.com_config.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (422,139,1201,1202,3,'com_localise.286','zh-TW.com_contact.ini','');
INSERT INTO `mp75b_assets` VALUES (423,139,1203,1204,3,'com_localise.287','zh-TW.com_contact.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (424,139,1205,1206,3,'com_localise.288','zh-TW.com_content.ini','');
INSERT INTO `mp75b_assets` VALUES (425,139,1207,1208,3,'com_localise.289','zh-TW.com_content.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (426,139,1209,1210,3,'com_localise.290','zh-TW.com_contenthistory.ini','');
INSERT INTO `mp75b_assets` VALUES (427,139,1211,1212,3,'com_localise.291','zh-TW.com_contenthistory.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (428,139,1213,1214,3,'com_localise.292','zh-TW.com_cpanel.ini','');
INSERT INTO `mp75b_assets` VALUES (429,139,1215,1216,3,'com_localise.293','zh-TW.com_cpanel.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (430,139,1217,1218,3,'com_localise.294','zh-TW.com_djcatalog2.ini','');
INSERT INTO `mp75b_assets` VALUES (431,139,1219,1220,3,'com_localise.295','zh-TW.com_djcatalog2.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (432,139,1221,1222,3,'com_localise.296','zh-TW.com_finder.ini','');
INSERT INTO `mp75b_assets` VALUES (433,139,1223,1224,3,'com_localise.297','zh-TW.com_finder.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (434,139,1225,1226,3,'com_localise.298','zh-TW.com_installer.ini','');
INSERT INTO `mp75b_assets` VALUES (435,139,1227,1228,3,'com_localise.299','zh-TW.com_installer.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (436,139,1229,1230,3,'com_localise.300','zh-TW.com_joomlaupdate.ini','');
INSERT INTO `mp75b_assets` VALUES (437,139,1231,1232,3,'com_localise.301','zh-TW.com_joomlaupdate.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (438,139,1233,1234,3,'com_localise.302','zh-TW.com_languages.ini','');
INSERT INTO `mp75b_assets` VALUES (439,139,1235,1236,3,'com_localise.303','zh-TW.com_languages.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (440,139,1237,1238,3,'com_localise.304','zh-TW.com_login.ini','');
INSERT INTO `mp75b_assets` VALUES (441,139,1239,1240,3,'com_localise.305','zh-TW.com_login.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (442,139,1241,1242,3,'com_localise.306','zh-TW.com_mailto.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (443,139,1243,1244,3,'com_localise.307','zh-TW.com_media.ini','');
INSERT INTO `mp75b_assets` VALUES (444,139,1245,1246,3,'com_localise.308','zh-TW.com_media.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (445,139,1247,1248,3,'com_localise.309','zh-TW.com_menus.ini','');
INSERT INTO `mp75b_assets` VALUES (446,139,1249,1250,3,'com_localise.310','zh-TW.com_menus.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (447,139,1251,1252,3,'com_localise.311','zh-TW.com_messages.ini','');
INSERT INTO `mp75b_assets` VALUES (448,139,1253,1254,3,'com_localise.312','zh-TW.com_messages.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (449,139,1255,1256,3,'com_localise.313','zh-TW.com_modules.ini','');
INSERT INTO `mp75b_assets` VALUES (450,139,1257,1258,3,'com_localise.314','zh-TW.com_modules.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (451,139,1259,1260,3,'com_localise.315','zh-TW.com_newsfeeds.ini','');
INSERT INTO `mp75b_assets` VALUES (452,139,1261,1262,3,'com_localise.316','zh-TW.com_newsfeeds.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (453,139,1263,1264,3,'com_localise.317','zh-TW.com_plugins.ini','');
INSERT INTO `mp75b_assets` VALUES (454,139,1265,1266,3,'com_localise.318','zh-TW.com_plugins.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (455,139,1267,1268,3,'com_localise.319','zh-TW.com_postinstall.ini','');
INSERT INTO `mp75b_assets` VALUES (456,139,1269,1270,3,'com_localise.320','zh-TW.com_postinstall.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (457,139,1271,1272,3,'com_localise.321','zh-TW.com_redirect.ini','');
INSERT INTO `mp75b_assets` VALUES (458,139,1273,1274,3,'com_localise.322','zh-TW.com_redirect.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (459,139,1275,1276,3,'com_localise.323','zh-TW.com_search.ini','');
INSERT INTO `mp75b_assets` VALUES (460,139,1277,1278,3,'com_localise.324','zh-TW.com_search.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (461,139,1279,1280,3,'com_localise.325','zh-TW.com_tags.ini','');
INSERT INTO `mp75b_assets` VALUES (462,139,1281,1282,3,'com_localise.326','zh-TW.com_tags.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (463,139,1283,1284,3,'com_localise.327','zh-TW.com_templates.ini','');
INSERT INTO `mp75b_assets` VALUES (464,139,1285,1286,3,'com_localise.328','zh-TW.com_templates.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (465,139,1287,1288,3,'com_localise.329','zh-TW.com_users.ini','');
INSERT INTO `mp75b_assets` VALUES (466,139,1289,1290,3,'com_localise.330','zh-TW.com_users.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (467,139,1291,1292,3,'com_localise.331','zh-TW.com_weblinks.ini','');
INSERT INTO `mp75b_assets` VALUES (468,139,1293,1294,3,'com_localise.332','zh-TW.com_weblinks.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (469,139,1295,1296,3,'com_localise.333','zh-TW.com_wrapper.ini','');
INSERT INTO `mp75b_assets` VALUES (470,139,1297,1298,3,'com_localise.334','zh-TW.com_wrapper.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (471,139,1299,1300,3,'com_localise.335','zh-TW.ini','');
INSERT INTO `mp75b_assets` VALUES (472,139,1301,1302,3,'com_localise.336','zh-TW.lib_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (473,139,1303,1304,3,'com_localise.337','zh-TW.mod_custom.ini','');
INSERT INTO `mp75b_assets` VALUES (474,139,1305,1306,3,'com_localise.338','zh-TW.mod_custom.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (475,139,1307,1308,3,'com_localise.339','zh-TW.mod_feed.ini','');
INSERT INTO `mp75b_assets` VALUES (476,139,1309,1310,3,'com_localise.340','zh-TW.mod_feed.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (477,139,1311,1312,3,'com_localise.341','zh-TW.mod_latest.ini','');
INSERT INTO `mp75b_assets` VALUES (478,139,1313,1314,3,'com_localise.342','zh-TW.mod_latest.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (479,139,1315,1316,3,'com_localise.343','zh-TW.mod_logged.ini','');
INSERT INTO `mp75b_assets` VALUES (480,139,1317,1318,3,'com_localise.344','zh-TW.mod_logged.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (481,139,1319,1320,3,'com_localise.345','zh-TW.mod_login.ini','');
INSERT INTO `mp75b_assets` VALUES (482,139,1321,1322,3,'com_localise.346','zh-TW.mod_login.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (483,139,1323,1324,3,'com_localise.347','zh-TW.mod_menu.ini','');
INSERT INTO `mp75b_assets` VALUES (484,139,1325,1326,3,'com_localise.348','zh-TW.mod_menu.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (485,139,1327,1328,3,'com_localise.349','zh-TW.mod_multilangstatus.ini','');
INSERT INTO `mp75b_assets` VALUES (486,139,1329,1330,3,'com_localise.350','zh-TW.mod_multilangstatus.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (487,139,1331,1332,3,'com_localise.351','zh-TW.mod_popular.ini','');
INSERT INTO `mp75b_assets` VALUES (488,139,1333,1334,3,'com_localise.352','zh-TW.mod_popular.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (489,139,1335,1336,3,'com_localise.353','zh-TW.mod_quickicon.ini','');
INSERT INTO `mp75b_assets` VALUES (490,139,1337,1338,3,'com_localise.354','zh-TW.mod_quickicon.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (491,139,1339,1340,3,'com_localise.355','zh-TW.mod_stats_admin.ini','');
INSERT INTO `mp75b_assets` VALUES (492,139,1341,1342,3,'com_localise.356','zh-TW.mod_stats_admin.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (493,139,1343,1344,3,'com_localise.357','zh-TW.mod_status.ini','');
INSERT INTO `mp75b_assets` VALUES (494,139,1345,1346,3,'com_localise.358','zh-TW.mod_status.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (495,139,1347,1348,3,'com_localise.359','zh-TW.mod_submenu.ini','');
INSERT INTO `mp75b_assets` VALUES (496,139,1349,1350,3,'com_localise.360','zh-TW.mod_submenu.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (497,139,1351,1352,3,'com_localise.361','zh-TW.mod_title.ini','');
INSERT INTO `mp75b_assets` VALUES (498,139,1353,1354,3,'com_localise.362','zh-TW.mod_title.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (499,139,1355,1356,3,'com_localise.363','zh-TW.mod_toolbar.ini','');
INSERT INTO `mp75b_assets` VALUES (500,139,1357,1358,3,'com_localise.364','zh-TW.mod_toolbar.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (501,139,1359,1360,3,'com_localise.365','zh-TW.mod_version.ini','');
INSERT INTO `mp75b_assets` VALUES (502,139,1361,1362,3,'com_localise.366','zh-TW.mod_version.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (503,139,1363,1364,3,'com_localise.367','zh-TW.plg_authentication_cookie.ini','');
INSERT INTO `mp75b_assets` VALUES (504,139,1365,1366,3,'com_localise.368','zh-TW.plg_authentication_cookie.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (505,139,1367,1368,3,'com_localise.369','zh-TW.plg_authentication_gmail.ini','');
INSERT INTO `mp75b_assets` VALUES (506,139,1369,1370,3,'com_localise.370','zh-TW.plg_authentication_gmail.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (507,139,1371,1372,3,'com_localise.371','zh-TW.plg_authentication_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (508,139,1373,1374,3,'com_localise.372','zh-TW.plg_authentication_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (509,139,1375,1376,3,'com_localise.373','zh-TW.plg_authentication_ldap.ini','');
INSERT INTO `mp75b_assets` VALUES (510,139,1377,1378,3,'com_localise.374','zh-TW.plg_authentication_ldap.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (511,139,1379,1380,3,'com_localise.375','zh-TW.plg_captcha_recaptcha.ini','');
INSERT INTO `mp75b_assets` VALUES (512,139,1381,1382,3,'com_localise.376','zh-TW.plg_captcha_recaptcha.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (513,139,1383,1384,3,'com_localise.377','zh-TW.plg_content_contact.ini','');
INSERT INTO `mp75b_assets` VALUES (514,139,1385,1386,3,'com_localise.378','zh-TW.plg_content_contact.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (515,139,1387,1388,3,'com_localise.379','zh-TW.plg_content_emailcloak.ini','');
INSERT INTO `mp75b_assets` VALUES (516,139,1389,1390,3,'com_localise.380','zh-TW.plg_content_emailcloak.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (517,139,1391,1392,3,'com_localise.381','zh-TW.plg_content_finder.ini','');
INSERT INTO `mp75b_assets` VALUES (518,139,1393,1394,3,'com_localise.382','zh-TW.plg_content_finder.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (519,139,1395,1396,3,'com_localise.383','zh-TW.plg_content_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (520,139,1397,1398,3,'com_localise.384','zh-TW.plg_content_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (521,139,1399,1400,3,'com_localise.385','zh-TW.plg_content_loadmodule.ini','');
INSERT INTO `mp75b_assets` VALUES (522,139,1401,1402,3,'com_localise.386','zh-TW.plg_content_loadmodule.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (523,139,1403,1404,3,'com_localise.387','zh-TW.plg_content_pagebreak.ini','');
INSERT INTO `mp75b_assets` VALUES (524,139,1405,1406,3,'com_localise.388','zh-TW.plg_content_pagebreak.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (525,139,1407,1408,3,'com_localise.389','zh-TW.plg_content_pagenavigation.ini','');
INSERT INTO `mp75b_assets` VALUES (526,139,1409,1410,3,'com_localise.390','zh-TW.plg_content_pagenavigation.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (527,139,1411,1412,3,'com_localise.391','zh-TW.plg_content_vote.ini','');
INSERT INTO `mp75b_assets` VALUES (528,139,1413,1414,3,'com_localise.392','zh-TW.plg_content_vote.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (529,139,1415,1416,3,'com_localise.393','zh-TW.plg_djcatalog2_pagebreak.ini','');
INSERT INTO `mp75b_assets` VALUES (530,139,1417,1418,3,'com_localise.394','zh-TW.plg_djcatalog2_pagebreak.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (531,139,1419,1420,3,'com_localise.395','zh-TW.plg_editors-xtd_article.ini','');
INSERT INTO `mp75b_assets` VALUES (532,139,1421,1422,3,'com_localise.396','zh-TW.plg_editors-xtd_article.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (533,139,1423,1424,3,'com_localise.397','zh-TW.plg_editors-xtd_image.ini','');
INSERT INTO `mp75b_assets` VALUES (534,139,1425,1426,3,'com_localise.398','zh-TW.plg_editors-xtd_image.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (535,139,1427,1428,3,'com_localise.399','zh-TW.plg_editors-xtd_pagebreak.ini','');
INSERT INTO `mp75b_assets` VALUES (536,139,1429,1430,3,'com_localise.400','zh-TW.plg_editors-xtd_pagebreak.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (537,139,1431,1432,3,'com_localise.401','zh-TW.plg_editors-xtd_readmore.ini','');
INSERT INTO `mp75b_assets` VALUES (538,139,1433,1434,3,'com_localise.402','zh-TW.plg_editors-xtd_readmore.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (539,139,1435,1436,3,'com_localise.403','zh-TW.plg_editors_codemirror.ini','');
INSERT INTO `mp75b_assets` VALUES (540,139,1437,1438,3,'com_localise.404','zh-TW.plg_editors_codemirror.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (541,139,1439,1440,3,'com_localise.405','zh-TW.plg_editors_none.ini','');
INSERT INTO `mp75b_assets` VALUES (542,139,1441,1442,3,'com_localise.406','zh-TW.plg_editors_none.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (543,139,1443,1444,3,'com_localise.407','zh-TW.plg_editors_tinymce.ini','');
INSERT INTO `mp75b_assets` VALUES (544,139,1445,1446,3,'com_localise.408','zh-TW.plg_editors_tinymce.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (545,139,1447,1448,3,'com_localise.409','zh-TW.plg_extension_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (546,139,1449,1450,3,'com_localise.410','zh-TW.plg_extension_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (547,139,1451,1452,3,'com_localise.411','zh-TW.plg_finder_categories.ini','');
INSERT INTO `mp75b_assets` VALUES (548,139,1453,1454,3,'com_localise.412','zh-TW.plg_finder_categories.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (549,139,1455,1456,3,'com_localise.413','zh-TW.plg_finder_contacts.ini','');
INSERT INTO `mp75b_assets` VALUES (550,139,1457,1458,3,'com_localise.414','zh-TW.plg_finder_contacts.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (551,139,1459,1460,3,'com_localise.415','zh-TW.plg_finder_content.ini','');
INSERT INTO `mp75b_assets` VALUES (552,139,1461,1462,3,'com_localise.416','zh-TW.plg_finder_content.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (553,139,1463,1464,3,'com_localise.417','zh-TW.plg_finder_newsfeeds.ini','');
INSERT INTO `mp75b_assets` VALUES (554,139,1465,1466,3,'com_localise.418','zh-TW.plg_finder_newsfeeds.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (555,139,1467,1468,3,'com_localise.419','zh-TW.plg_finder_tags.ini','');
INSERT INTO `mp75b_assets` VALUES (556,139,1469,1470,3,'com_localise.420','zh-TW.plg_finder_tags.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (557,139,1471,1472,3,'com_localise.421','zh-TW.plg_finder_weblinks.ini','');
INSERT INTO `mp75b_assets` VALUES (558,139,1473,1474,3,'com_localise.422','zh-TW.plg_finder_weblinks.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (559,139,1475,1476,3,'com_localise.423','zh-TW.plg_installer_webinstaller.ini','');
INSERT INTO `mp75b_assets` VALUES (560,139,1477,1478,3,'com_localise.424','zh-TW.plg_installer_webinstaller.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (561,139,1479,1480,3,'com_localise.425','zh-TW.plg_quickicon_djcatalog2.ini','');
INSERT INTO `mp75b_assets` VALUES (562,139,1481,1482,3,'com_localise.426','zh-TW.plg_quickicon_djcatalog2.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (563,139,1483,1484,3,'com_localise.427','zh-TW.plg_quickicon_extensionupdate.ini','');
INSERT INTO `mp75b_assets` VALUES (564,139,1485,1486,3,'com_localise.428','zh-TW.plg_quickicon_extensionupdate.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (565,139,1487,1488,3,'com_localise.429','zh-TW.plg_quickicon_joomlaupdate.ini','');
INSERT INTO `mp75b_assets` VALUES (566,139,1489,1490,3,'com_localise.430','zh-TW.plg_quickicon_joomlaupdate.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (567,139,1491,1492,3,'com_localise.431','zh-TW.plg_search_categories.ini','');
INSERT INTO `mp75b_assets` VALUES (568,139,1493,1494,3,'com_localise.432','zh-TW.plg_search_categories.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (569,139,1495,1496,3,'com_localise.433','zh-TW.plg_search_contacts.ini','');
INSERT INTO `mp75b_assets` VALUES (570,139,1497,1498,3,'com_localise.434','zh-TW.plg_search_contacts.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (571,139,1499,1500,3,'com_localise.435','zh-TW.plg_search_content.ini','');
INSERT INTO `mp75b_assets` VALUES (572,139,1501,1502,3,'com_localise.436','zh-TW.plg_search_content.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (573,139,1503,1504,3,'com_localise.437','zh-TW.plg_search_djcatalog2.ini','');
INSERT INTO `mp75b_assets` VALUES (574,139,1505,1506,3,'com_localise.438','zh-TW.plg_search_djcatalog2.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (575,139,1507,1508,3,'com_localise.439','zh-TW.plg_search_newsfeeds.ini','');
INSERT INTO `mp75b_assets` VALUES (576,139,1509,1510,3,'com_localise.440','zh-TW.plg_search_newsfeeds.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (577,139,1511,1512,3,'com_localise.441','zh-TW.plg_search_tags.ini','');
INSERT INTO `mp75b_assets` VALUES (578,139,1513,1514,3,'com_localise.442','zh-TW.plg_search_tags.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (579,139,1515,1516,3,'com_localise.443','zh-TW.plg_search_weblinks.ini','');
INSERT INTO `mp75b_assets` VALUES (580,139,1517,1518,3,'com_localise.444','zh-TW.plg_search_weblinks.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (581,139,1519,1520,3,'com_localise.445','zh-TW.plg_system_cache.ini','');
INSERT INTO `mp75b_assets` VALUES (582,139,1521,1522,3,'com_localise.446','zh-TW.plg_system_cache.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (583,139,1523,1524,3,'com_localise.447','zh-TW.plg_system_debug.ini','');
INSERT INTO `mp75b_assets` VALUES (584,139,1525,1526,3,'com_localise.448','zh-TW.plg_system_debug.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (585,139,1527,1528,3,'com_localise.449','zh-TW.plg_system_highlight.ini','');
INSERT INTO `mp75b_assets` VALUES (586,139,1529,1530,3,'com_localise.450','zh-TW.plg_system_highlight.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (587,139,1531,1532,3,'com_localise.451','zh-TW.plg_system_languagecode.ini','');
INSERT INTO `mp75b_assets` VALUES (588,139,1533,1534,3,'com_localise.452','zh-TW.plg_system_languagecode.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (589,139,1535,1536,3,'com_localise.453','zh-TW.plg_system_languagefilter.ini','');
INSERT INTO `mp75b_assets` VALUES (590,139,1537,1538,3,'com_localise.454','zh-TW.plg_system_languagefilter.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (591,139,1539,1540,3,'com_localise.455','zh-TW.plg_system_log.ini','');
INSERT INTO `mp75b_assets` VALUES (592,139,1541,1542,3,'com_localise.456','zh-TW.plg_system_log.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (593,139,1543,1544,3,'com_localise.457','zh-TW.plg_system_logout.ini','');
INSERT INTO `mp75b_assets` VALUES (594,139,1545,1546,3,'com_localise.458','zh-TW.plg_system_logout.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (595,139,1547,1548,3,'com_localise.459','zh-TW.plg_system_p3p.ini','');
INSERT INTO `mp75b_assets` VALUES (596,139,1549,1550,3,'com_localise.460','zh-TW.plg_system_p3p.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (597,139,1551,1552,3,'com_localise.461','zh-TW.plg_system_redirect.ini','');
INSERT INTO `mp75b_assets` VALUES (598,139,1553,1554,3,'com_localise.462','zh-TW.plg_system_redirect.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (599,139,1555,1556,3,'com_localise.463','zh-TW.plg_system_remember.ini','');
INSERT INTO `mp75b_assets` VALUES (600,139,1557,1558,3,'com_localise.464','zh-TW.plg_system_remember.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (601,139,1559,1560,3,'com_localise.465','zh-TW.plg_system_sef.ini','');
INSERT INTO `mp75b_assets` VALUES (602,139,1561,1562,3,'com_localise.466','zh-TW.plg_system_sef.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (603,139,1563,1564,3,'com_localise.467','zh-TW.plg_twofactorauth_totp.ini','');
INSERT INTO `mp75b_assets` VALUES (604,139,1565,1566,3,'com_localise.468','zh-TW.plg_twofactorauth_totp.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (605,139,1567,1568,3,'com_localise.469','zh-TW.plg_twofactorauth_yubikey.ini','');
INSERT INTO `mp75b_assets` VALUES (606,139,1569,1570,3,'com_localise.470','zh-TW.plg_twofactorauth_yubikey.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (607,139,1571,1572,3,'com_localise.471','zh-TW.plg_user_contactcreator.ini','');
INSERT INTO `mp75b_assets` VALUES (608,139,1573,1574,3,'com_localise.472','zh-TW.plg_user_contactcreator.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (609,139,1575,1576,3,'com_localise.473','zh-TW.plg_user_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (610,139,1577,1578,3,'com_localise.474','zh-TW.plg_user_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (611,139,1579,1580,3,'com_localise.475','zh-TW.plg_user_profile.ini','');
INSERT INTO `mp75b_assets` VALUES (612,139,1581,1582,3,'com_localise.476','zh-TW.plg_user_profile.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (613,139,1583,1584,3,'com_localise.477','zh-TW.plg_xmap_com_djcatalog2.ini','');
INSERT INTO `mp75b_assets` VALUES (614,139,1585,1586,3,'com_localise.478','zh-TW.plg_xmap_com_djcatalog2.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (615,139,1587,1588,3,'com_localise.479','zh-TW.tpl_hathor.ini','');
INSERT INTO `mp75b_assets` VALUES (616,139,1589,1590,3,'com_localise.480','zh-TW.tpl_hathor.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (617,139,1591,1592,3,'com_localise.481','zh-TW.tpl_isis.ini','');
INSERT INTO `mp75b_assets` VALUES (618,139,1593,1594,3,'com_localise.482','zh-TW.tpl_isis.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (619,138,1149,1150,3,'com_localise.483','en-GB.override.ini','');
INSERT INTO `mp75b_assets` VALUES (620,139,1595,1596,3,'com_localise.484','zh-TW.override.ini','');
INSERT INTO `mp75b_assets` VALUES (621,136,237,238,3,'com_localise.485','en-GB.com_djcatalog2.ini','');
INSERT INTO `mp75b_assets` VALUES (622,136,239,240,3,'com_localise.486','en-GB.com_modulesmanagerck.ini','');
INSERT INTO `mp75b_assets` VALUES (623,141,1685,1686,3,'com_localise.487','fr-FR.com_modulesmanagerck.ini','');
INSERT INTO `mp75b_assets` VALUES (624,136,241,242,3,'com_localise.488','en-GB.com_m2c.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (625,136,243,244,3,'com_localise.489','en-GB.com_modulesmanagerck.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (626,141,1687,1688,3,'com_localise.490','fr-FR.com_modulesmanagerck.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (627,136,245,246,3,'com_localise.491','en-GB.mod_djc2cart.ini','');
INSERT INTO `mp75b_assets` VALUES (628,136,247,248,3,'com_localise.492','en-GB.mod_djc2categories.ini','');
INSERT INTO `mp75b_assets` VALUES (629,136,249,250,3,'com_localise.493','en-GB.mod_djc2filters.ini','');
INSERT INTO `mp75b_assets` VALUES (630,136,251,252,3,'com_localise.494','en-GB.mod_djc2frontpage.ini','');
INSERT INTO `mp75b_assets` VALUES (631,136,253,254,3,'com_localise.495','en-GB.mod_djc2items.ini','');
INSERT INTO `mp75b_assets` VALUES (632,136,255,256,3,'com_localise.496','en-GB.mod_djc2producers.ini','');
INSERT INTO `mp75b_assets` VALUES (633,136,257,258,3,'com_localise.497','en-GB.mod_djc2relateditems.ini','');
INSERT INTO `mp75b_assets` VALUES (634,136,259,260,3,'com_localise.498','en-GB.mod_djc2search.ini','');
INSERT INTO `mp75b_assets` VALUES (635,136,261,262,3,'com_localise.499','en-GB.mod_djc2cart.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (636,136,263,264,3,'com_localise.500','en-GB.mod_djc2categories.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (637,136,265,266,3,'com_localise.501','en-GB.mod_djc2filters.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (638,136,267,268,3,'com_localise.502','en-GB.mod_djc2frontpage.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (639,136,269,270,3,'com_localise.503','en-GB.mod_djc2items.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (640,136,271,272,3,'com_localise.504','en-GB.mod_djc2producers.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (641,136,273,274,3,'com_localise.505','en-GB.mod_djc2relateditems.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (642,136,275,276,3,'com_localise.506','en-GB.mod_djc2search.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (643,136,277,278,3,'com_localise.507','en-GB.tpl_beez3.ini','');
INSERT INTO `mp75b_assets` VALUES (644,136,279,280,3,'com_localise.508','en-GB.tpl_protostar.ini','');
INSERT INTO `mp75b_assets` VALUES (645,136,281,282,3,'com_localise.509','en-GB.tpl_purity_iii.ini','');
INSERT INTO `mp75b_assets` VALUES (646,136,283,284,3,'com_localise.510','en-GB.tpl_beez3.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (647,136,285,286,3,'com_localise.511','en-GB.tpl_protostar.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (648,136,287,288,3,'com_localise.512','en-GB.tpl_purity_iii.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (649,136,289,290,3,'com_localise.513','en-GB.com_ajax.ini','');
INSERT INTO `mp75b_assets` VALUES (650,136,291,292,3,'com_localise.514','en-GB.com_config.ini','');
INSERT INTO `mp75b_assets` VALUES (651,136,293,294,3,'com_localise.515','en-GB.com_contact.ini','');
INSERT INTO `mp75b_assets` VALUES (652,136,295,296,3,'com_localise.516','en-GB.com_content.ini','');
INSERT INTO `mp75b_assets` VALUES (653,136,297,298,3,'com_localise.517','en-GB.com_finder.ini','');
INSERT INTO `mp75b_assets` VALUES (654,136,299,300,3,'com_localise.518','en-GB.com_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (655,136,301,302,3,'com_localise.519','en-GB.com_mailto.ini','');
INSERT INTO `mp75b_assets` VALUES (656,136,303,304,3,'com_localise.520','en-GB.com_media.ini','');
INSERT INTO `mp75b_assets` VALUES (657,136,305,306,3,'com_localise.521','en-GB.com_messages.ini','');
INSERT INTO `mp75b_assets` VALUES (658,136,307,308,3,'com_localise.522','en-GB.com_newsfeeds.ini','');
INSERT INTO `mp75b_assets` VALUES (659,136,309,310,3,'com_localise.523','en-GB.com_rsform.ini','');
INSERT INTO `mp75b_assets` VALUES (660,136,311,312,3,'com_localise.524','en-GB.com_search.ini','');
INSERT INTO `mp75b_assets` VALUES (661,136,313,314,3,'com_localise.525','en-GB.com_tags.ini','');
INSERT INTO `mp75b_assets` VALUES (662,136,315,316,3,'com_localise.526','en-GB.com_users.ini','');
INSERT INTO `mp75b_assets` VALUES (663,136,317,318,3,'com_localise.527','en-GB.com_weblinks.ini','');
INSERT INTO `mp75b_assets` VALUES (664,136,319,320,3,'com_localise.528','en-GB.com_wrapper.ini','');
INSERT INTO `mp75b_assets` VALUES (665,136,321,322,3,'com_localise.529','en-GB.files_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (666,136,323,324,3,'com_localise.530','en-GB.ini','');
INSERT INTO `mp75b_assets` VALUES (667,136,325,326,3,'com_localise.531','en-GB.lib_fof.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (668,136,327,328,3,'com_localise.532','en-GB.lib_idna_convert.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (669,136,329,330,3,'com_localise.533','en-GB.lib_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (670,136,331,332,3,'com_localise.534','en-GB.lib_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (671,136,333,334,3,'com_localise.535','en-GB.lib_phpass.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (672,136,335,336,3,'com_localise.536','en-GB.lib_phpmailer.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (673,136,337,338,3,'com_localise.537','en-GB.lib_phputf8.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (674,136,339,340,3,'com_localise.538','en-GB.lib_simplepie.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (675,136,341,342,3,'com_localise.539','en-GB.lib_windwalker.ini','');
INSERT INTO `mp75b_assets` VALUES (676,136,343,344,3,'com_localise.540','en-GB.lib_windwalker.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (677,136,345,346,3,'com_localise.541','en-GB.mod_articles_archive.ini','');
INSERT INTO `mp75b_assets` VALUES (678,136,347,348,3,'com_localise.542','en-GB.mod_articles_archive.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (679,136,349,350,3,'com_localise.543','en-GB.mod_articles_categories.ini','');
INSERT INTO `mp75b_assets` VALUES (680,136,351,352,3,'com_localise.544','en-GB.mod_articles_categories.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (681,136,353,354,3,'com_localise.545','en-GB.mod_articles_category.ini','');
INSERT INTO `mp75b_assets` VALUES (682,136,355,356,3,'com_localise.546','en-GB.mod_articles_category.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (683,136,357,358,3,'com_localise.547','en-GB.mod_articles_latest.ini','');
INSERT INTO `mp75b_assets` VALUES (684,136,359,360,3,'com_localise.548','en-GB.mod_articles_latest.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (685,136,361,362,3,'com_localise.549','en-GB.mod_articles_news.ini','');
INSERT INTO `mp75b_assets` VALUES (686,136,363,364,3,'com_localise.550','en-GB.mod_articles_news.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (687,136,365,366,3,'com_localise.551','en-GB.mod_articles_popular.ini','');
INSERT INTO `mp75b_assets` VALUES (688,136,367,368,3,'com_localise.552','en-GB.mod_articles_popular.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (689,136,369,370,3,'com_localise.553','en-GB.mod_banners.ini','');
INSERT INTO `mp75b_assets` VALUES (690,136,371,372,3,'com_localise.554','en-GB.mod_banners.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (691,136,373,374,3,'com_localise.555','en-GB.mod_breadcrumbs.ini','');
INSERT INTO `mp75b_assets` VALUES (692,136,375,376,3,'com_localise.556','en-GB.mod_breadcrumbs.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (693,136,377,378,3,'com_localise.557','en-GB.mod_custom.ini','');
INSERT INTO `mp75b_assets` VALUES (694,136,379,380,3,'com_localise.558','en-GB.mod_custom.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (695,136,381,382,3,'com_localise.559','en-GB.mod_feed.ini','');
INSERT INTO `mp75b_assets` VALUES (696,136,383,384,3,'com_localise.560','en-GB.mod_feed.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (697,136,385,386,3,'com_localise.561','en-GB.mod_finder.ini','');
INSERT INTO `mp75b_assets` VALUES (698,136,387,388,3,'com_localise.562','en-GB.mod_finder.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (699,136,389,390,3,'com_localise.563','en-GB.mod_footer.ini','');
INSERT INTO `mp75b_assets` VALUES (700,136,391,392,3,'com_localise.564','en-GB.mod_footer.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (701,136,393,394,3,'com_localise.565','en-GB.mod_languages.ini','');
INSERT INTO `mp75b_assets` VALUES (702,136,395,396,3,'com_localise.566','en-GB.mod_languages.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (703,136,397,398,3,'com_localise.567','en-GB.mod_login.ini','');
INSERT INTO `mp75b_assets` VALUES (704,136,399,400,3,'com_localise.568','en-GB.mod_login.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (705,136,401,402,3,'com_localise.569','en-GB.mod_menu.ini','');
INSERT INTO `mp75b_assets` VALUES (706,136,403,404,3,'com_localise.570','en-GB.mod_menu.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (707,136,405,406,3,'com_localise.571','en-GB.mod_random_image.ini','');
INSERT INTO `mp75b_assets` VALUES (708,136,407,408,3,'com_localise.572','en-GB.mod_random_image.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (709,136,409,410,3,'com_localise.573','en-GB.mod_related_items.ini','');
INSERT INTO `mp75b_assets` VALUES (710,136,411,412,3,'com_localise.574','en-GB.mod_related_items.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (711,136,413,414,3,'com_localise.575','en-GB.mod_search.ini','');
INSERT INTO `mp75b_assets` VALUES (712,136,415,416,3,'com_localise.576','en-GB.mod_search.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (713,136,417,418,3,'com_localise.577','en-GB.mod_stats.ini','');
INSERT INTO `mp75b_assets` VALUES (714,136,419,420,3,'com_localise.578','en-GB.mod_stats.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (715,136,421,422,3,'com_localise.579','en-GB.mod_syndicate.ini','');
INSERT INTO `mp75b_assets` VALUES (716,136,423,424,3,'com_localise.580','en-GB.mod_syndicate.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (717,136,425,426,3,'com_localise.581','en-GB.mod_tags_popular.ini','');
INSERT INTO `mp75b_assets` VALUES (718,136,427,428,3,'com_localise.582','en-GB.mod_tags_popular.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (719,136,429,430,3,'com_localise.583','en-GB.mod_tags_similar.ini','');
INSERT INTO `mp75b_assets` VALUES (720,136,431,432,3,'com_localise.584','en-GB.mod_tags_similar.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (721,136,433,434,3,'com_localise.585','en-GB.mod_users_latest.ini','');
INSERT INTO `mp75b_assets` VALUES (722,136,435,436,3,'com_localise.586','en-GB.mod_users_latest.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (723,136,437,438,3,'com_localise.587','en-GB.mod_weblinks.ini','');
INSERT INTO `mp75b_assets` VALUES (724,136,439,440,3,'com_localise.588','en-GB.mod_weblinks.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (725,136,441,442,3,'com_localise.589','en-GB.mod_whosonline.ini','');
INSERT INTO `mp75b_assets` VALUES (726,136,443,444,3,'com_localise.590','en-GB.mod_whosonline.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (727,136,445,446,3,'com_localise.591','en-GB.mod_wrapper.ini','');
INSERT INTO `mp75b_assets` VALUES (728,136,447,448,3,'com_localise.592','en-GB.mod_wrapper.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (729,136,449,450,3,'com_localise.593','en-GB.plg_search_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (730,137,455,456,3,'com_localise.594','zh-TW.com_ajax.ini','');
INSERT INTO `mp75b_assets` VALUES (731,137,457,458,3,'com_localise.595','zh-TW.com_config.ini','');
INSERT INTO `mp75b_assets` VALUES (732,137,459,460,3,'com_localise.596','zh-TW.com_contact.ini','');
INSERT INTO `mp75b_assets` VALUES (733,137,461,462,3,'com_localise.597','zh-TW.com_content.ini','');
INSERT INTO `mp75b_assets` VALUES (734,137,463,464,3,'com_localise.598','zh-TW.com_djcatalog2.ini','');
INSERT INTO `mp75b_assets` VALUES (735,137,465,466,3,'com_localise.599','zh-TW.com_finder.ini','');
INSERT INTO `mp75b_assets` VALUES (736,137,467,468,3,'com_localise.600','zh-TW.com_mailto.ini','');
INSERT INTO `mp75b_assets` VALUES (737,137,469,470,3,'com_localise.601','zh-TW.com_media.ini','');
INSERT INTO `mp75b_assets` VALUES (738,137,471,472,3,'com_localise.602','zh-TW.com_messages.ini','');
INSERT INTO `mp75b_assets` VALUES (739,137,473,474,3,'com_localise.603','zh-TW.com_newsfeeds.ini','');
INSERT INTO `mp75b_assets` VALUES (740,137,475,476,3,'com_localise.604','zh-TW.com_search.ini','');
INSERT INTO `mp75b_assets` VALUES (741,137,477,478,3,'com_localise.605','zh-TW.com_tags.ini','');
INSERT INTO `mp75b_assets` VALUES (742,137,479,480,3,'com_localise.606','zh-TW.com_users.ini','');
INSERT INTO `mp75b_assets` VALUES (743,137,481,482,3,'com_localise.607','zh-TW.com_weblinks.ini','');
INSERT INTO `mp75b_assets` VALUES (744,137,483,484,3,'com_localise.608','zh-TW.com_wrapper.ini','');
INSERT INTO `mp75b_assets` VALUES (745,137,485,486,3,'com_localise.609','zh-TW.files_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (746,137,487,488,3,'com_localise.610','zh-TW.ini','');
INSERT INTO `mp75b_assets` VALUES (747,137,489,490,3,'com_localise.611','zh-TW.lib_fof.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (748,137,491,492,3,'com_localise.612','zh-TW.lib_idna_convert.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (749,137,493,494,3,'com_localise.613','zh-TW.lib_joomla.ini','');
INSERT INTO `mp75b_assets` VALUES (750,137,495,496,3,'com_localise.614','zh-TW.lib_joomla.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (751,137,497,498,3,'com_localise.615','zh-TW.lib_phpass.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (752,137,499,500,3,'com_localise.616','zh-TW.lib_phpmailer.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (753,137,501,502,3,'com_localise.617','zh-TW.lib_phputf8.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (754,137,503,504,3,'com_localise.618','zh-TW.lib_simplepie.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (755,137,505,506,3,'com_localise.619','zh-TW.lib_windwalker.ini','');
INSERT INTO `mp75b_assets` VALUES (756,137,507,508,3,'com_localise.620','zh-TW.lib_windwalker.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (757,137,509,510,3,'com_localise.621','zh-TW.mod_articles_archive.ini','');
INSERT INTO `mp75b_assets` VALUES (758,137,511,512,3,'com_localise.622','zh-TW.mod_articles_archive.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (759,137,513,514,3,'com_localise.623','zh-TW.mod_articles_categories.ini','');
INSERT INTO `mp75b_assets` VALUES (760,137,515,516,3,'com_localise.624','zh-TW.mod_articles_categories.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (761,137,517,518,3,'com_localise.625','zh-TW.mod_articles_category.ini','');
INSERT INTO `mp75b_assets` VALUES (762,137,519,520,3,'com_localise.626','zh-TW.mod_articles_category.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (763,137,521,522,3,'com_localise.627','zh-TW.mod_articles_latest.ini','');
INSERT INTO `mp75b_assets` VALUES (764,137,523,524,3,'com_localise.628','zh-TW.mod_articles_latest.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (765,137,525,526,3,'com_localise.629','zh-TW.mod_articles_news.ini','');
INSERT INTO `mp75b_assets` VALUES (766,137,527,528,3,'com_localise.630','zh-TW.mod_articles_news.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (767,137,529,530,3,'com_localise.631','zh-TW.mod_articles_popular.ini','');
INSERT INTO `mp75b_assets` VALUES (768,137,531,532,3,'com_localise.632','zh-TW.mod_articles_popular.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (769,137,533,534,3,'com_localise.633','zh-TW.mod_banners.ini','');
INSERT INTO `mp75b_assets` VALUES (770,137,535,536,3,'com_localise.634','zh-TW.mod_banners.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (771,137,537,538,3,'com_localise.635','zh-TW.mod_breadcrumbs.ini','');
INSERT INTO `mp75b_assets` VALUES (772,137,539,540,3,'com_localise.636','zh-TW.mod_breadcrumbs.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (773,137,541,542,3,'com_localise.637','zh-TW.mod_custom.ini','');
INSERT INTO `mp75b_assets` VALUES (774,137,543,544,3,'com_localise.638','zh-TW.mod_custom.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (775,137,545,546,3,'com_localise.639','zh-TW.mod_djc2categories.ini','');
INSERT INTO `mp75b_assets` VALUES (776,137,547,548,3,'com_localise.640','zh-TW.mod_djc2categories.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (777,137,549,550,3,'com_localise.641','zh-TW.mod_djc2filters.ini','');
INSERT INTO `mp75b_assets` VALUES (778,137,551,552,3,'com_localise.642','zh-TW.mod_djc2filters.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (779,137,553,554,3,'com_localise.643','zh-TW.mod_djc2frontpage.ini','');
INSERT INTO `mp75b_assets` VALUES (780,137,555,556,3,'com_localise.644','zh-TW.mod_djc2frontpage.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (781,137,557,558,3,'com_localise.645','zh-TW.mod_djc2items.ini','');
INSERT INTO `mp75b_assets` VALUES (782,137,559,560,3,'com_localise.646','zh-TW.mod_djc2items.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (783,137,561,562,3,'com_localise.647','zh-TW.mod_djc2producers.ini','');
INSERT INTO `mp75b_assets` VALUES (784,137,563,564,3,'com_localise.648','zh-TW.mod_djc2producers.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (785,137,565,566,3,'com_localise.649','zh-TW.mod_djc2relateditems.ini','');
INSERT INTO `mp75b_assets` VALUES (786,137,567,568,3,'com_localise.650','zh-TW.mod_djc2relateditems.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (787,137,569,570,3,'com_localise.651','zh-TW.mod_djc2search.ini','');
INSERT INTO `mp75b_assets` VALUES (788,137,571,572,3,'com_localise.652','zh-TW.mod_djc2search.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (789,137,573,574,3,'com_localise.653','zh-TW.mod_feed.ini','');
INSERT INTO `mp75b_assets` VALUES (790,137,575,576,3,'com_localise.654','zh-TW.mod_feed.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (791,137,577,578,3,'com_localise.655','zh-TW.mod_finder.ini','');
INSERT INTO `mp75b_assets` VALUES (792,137,579,580,3,'com_localise.656','zh-TW.mod_finder.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (793,137,581,582,3,'com_localise.657','zh-TW.mod_footer.ini','');
INSERT INTO `mp75b_assets` VALUES (794,137,583,584,3,'com_localise.658','zh-TW.mod_footer.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (795,137,585,586,3,'com_localise.659','zh-TW.mod_languages.ini','');
INSERT INTO `mp75b_assets` VALUES (796,137,587,588,3,'com_localise.660','zh-TW.mod_languages.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (797,137,589,590,3,'com_localise.661','zh-TW.mod_login.ini','');
INSERT INTO `mp75b_assets` VALUES (798,137,591,592,3,'com_localise.662','zh-TW.mod_login.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (799,137,593,594,3,'com_localise.663','zh-TW.mod_menu.ini','');
INSERT INTO `mp75b_assets` VALUES (800,137,595,596,3,'com_localise.664','zh-TW.mod_menu.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (801,137,597,598,3,'com_localise.665','zh-TW.mod_random_image.ini','');
INSERT INTO `mp75b_assets` VALUES (802,137,599,600,3,'com_localise.666','zh-TW.mod_random_image.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (803,137,601,602,3,'com_localise.667','zh-TW.mod_related_items.ini','');
INSERT INTO `mp75b_assets` VALUES (804,137,603,604,3,'com_localise.668','zh-TW.mod_related_items.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (805,137,605,606,3,'com_localise.669','zh-TW.mod_search.ini','');
INSERT INTO `mp75b_assets` VALUES (806,137,607,608,3,'com_localise.670','zh-TW.mod_search.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (807,137,609,610,3,'com_localise.671','zh-TW.mod_stats.ini','');
INSERT INTO `mp75b_assets` VALUES (808,137,611,612,3,'com_localise.672','zh-TW.mod_stats.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (809,137,613,614,3,'com_localise.673','zh-TW.mod_syndicate.ini','');
INSERT INTO `mp75b_assets` VALUES (810,137,615,616,3,'com_localise.674','zh-TW.mod_syndicate.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (811,137,617,618,3,'com_localise.675','zh-TW.mod_tags_popular.ini','');
INSERT INTO `mp75b_assets` VALUES (812,137,619,620,3,'com_localise.676','zh-TW.mod_tags_popular.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (813,137,621,622,3,'com_localise.677','zh-TW.mod_tags_similar.ini','');
INSERT INTO `mp75b_assets` VALUES (814,137,623,624,3,'com_localise.678','zh-TW.mod_tags_similar.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (815,137,625,626,3,'com_localise.679','zh-TW.mod_users_latest.ini','');
INSERT INTO `mp75b_assets` VALUES (816,137,627,628,3,'com_localise.680','zh-TW.mod_users_latest.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (817,137,629,630,3,'com_localise.681','zh-TW.mod_weblinks.ini','');
INSERT INTO `mp75b_assets` VALUES (818,137,631,632,3,'com_localise.682','zh-TW.mod_weblinks.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (819,137,633,634,3,'com_localise.683','zh-TW.mod_whosonline.ini','');
INSERT INTO `mp75b_assets` VALUES (820,137,635,636,3,'com_localise.684','zh-TW.mod_whosonline.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (821,137,637,638,3,'com_localise.685','zh-TW.mod_wrapper.ini','');
INSERT INTO `mp75b_assets` VALUES (822,137,639,640,3,'com_localise.686','zh-TW.mod_wrapper.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (823,137,641,642,3,'com_localise.687','zh-TW.tpl_beez3.ini','');
INSERT INTO `mp75b_assets` VALUES (824,137,643,644,3,'com_localise.688','zh-TW.tpl_beez3.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (825,137,645,646,3,'com_localise.689','zh-TW.tpl_protostar.ini','');
INSERT INTO `mp75b_assets` VALUES (826,137,647,648,3,'com_localise.690','zh-TW.tpl_protostar.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (827,136,451,452,3,'com_localise.691','en-GB.override.ini','');
INSERT INTO `mp75b_assets` VALUES (828,137,649,650,3,'com_localise.692','zh-TW.override.ini','');
INSERT INTO `mp75b_assets` VALUES (829,139,1597,1598,3,'com_localise.693','zh-TW.com_jaextmanager.ini','');
INSERT INTO `mp75b_assets` VALUES (830,139,1599,1600,3,'com_localise.694','zh-TW.com_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (831,139,1601,1602,3,'com_localise.695','zh-TW.com_modulesmanagerck.ini','');
INSERT INTO `mp75b_assets` VALUES (832,139,1603,1604,3,'com_localise.696','zh-TW.com_rsform.ini','');
INSERT INTO `mp75b_assets` VALUES (833,139,1605,1606,3,'com_localise.697','zh-TW.com_jaextmanager.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (834,139,1607,1608,3,'com_localise.698','zh-TW.com_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (835,139,1609,1610,3,'com_localise.699','zh-TW.com_m2c.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (836,139,1611,1612,3,'com_localise.700','zh-TW.com_modulesmanagerck.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (837,139,1613,1614,3,'com_localise.701','zh-TW.com_rsform.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (838,137,651,652,3,'com_localise.702','zh-TW.com_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (839,137,653,654,3,'com_localise.703','zh-TW.com_modulesmanagerck.ini','');
INSERT INTO `mp75b_assets` VALUES (840,137,655,656,3,'com_localise.704','zh-TW.com_rsform.ini','');
INSERT INTO `mp75b_assets` VALUES (841,137,657,658,3,'com_localise.705','zh-TW.com_m2c.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (842,137,659,660,3,'com_localise.706','zh-TW.com_modulesmanagerck.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (843,137,661,662,3,'com_localise.707','zh-TW.mod_djc2cart.ini','');
INSERT INTO `mp75b_assets` VALUES (844,137,663,664,3,'com_localise.708','zh-TW.mod_djc2cart.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (845,137,665,666,3,'com_localise.709','zh-TW.tpl_purity_iii.ini','');
INSERT INTO `mp75b_assets` VALUES (846,137,667,668,3,'com_localise.710','zh-TW.tpl_purity_iii.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (847,139,1615,1616,3,'com_localise.711','zh-TW.plg_content_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (848,139,1617,1618,3,'com_localise.712','zh-TW.plg_content_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (849,139,1619,1620,3,'com_localise.713','zh-TW.plg_editors-xtd_jcommentsoff.ini','');
INSERT INTO `mp75b_assets` VALUES (850,139,1621,1622,3,'com_localise.714','zh-TW.plg_editors-xtd_jcommentson.ini','');
INSERT INTO `mp75b_assets` VALUES (851,139,1623,1624,3,'com_localise.715','zh-TW.plg_editors-xtd_jcommentsoff.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (852,139,1625,1626,3,'com_localise.716','zh-TW.plg_editors-xtd_jcommentson.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (853,139,1627,1628,3,'com_localise.717','zh-TW.plg_quickicon_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (854,139,1629,1630,3,'com_localise.718','zh-TW.plg_quickicon_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (855,139,1631,1632,3,'com_localise.719','zh-TW.plg_search_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (856,139,1633,1634,3,'com_localise.720','zh-TW.plg_search_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (857,139,1635,1636,3,'com_localise.721','zh-TW.plg_system_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (858,139,1637,1638,3,'com_localise.722','zh-TW.plg_system_t3.ini','');
INSERT INTO `mp75b_assets` VALUES (859,139,1639,1640,3,'com_localise.723','zh-TW.plg_system_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (860,139,1641,1642,3,'com_localise.724','zh-TW.plg_system_t3.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (861,139,1643,1644,3,'com_localise.725','zh-TW.plg_user_jcomments.ini','');
INSERT INTO `mp75b_assets` VALUES (862,139,1645,1646,3,'com_localise.726','zh-TW.plg_user_jcomments.sys.ini','');
INSERT INTO `mp75b_assets` VALUES (863,131,23,24,3,'com_content.article.13','Nginx Symfony2 設定','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (864,1,1691,1692,1,'#__ucm_content.2','#__ucm_content.2','[]');
INSERT INTO `mp75b_assets` VALUES (865,131,25,26,3,'com_content.article.14','簡單 css 讓網站動起來！','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (866,1,1693,1694,1,'#__ucm_content.3','#__ucm_content.3','[]');
INSERT INTO `mp75b_assets` VALUES (867,131,27,28,3,'com_content.article.15','JavaScript 編譯保護','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (868,1,1695,1696,1,'#__ucm_content.4','#__ucm_content.4','[]');
INSERT INTO `mp75b_assets` VALUES (869,1,1697,1698,1,'com_favicon','com_favicon','{}');
UNLOCK TABLES;

-- Table structure for table `mp75b_associations`

DROP TABLE IF EXISTS `mp75b_associations`;
CREATE TABLE `mp75b_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_associations`

LOCK TABLES `mp75b_associations` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_banner_clients`

DROP TABLE IF EXISTS `mp75b_banner_clients`;
CREATE TABLE `mp75b_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_banner_clients`

LOCK TABLES `mp75b_banner_clients` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_banner_tracks`

DROP TABLE IF EXISTS `mp75b_banner_tracks`;
CREATE TABLE `mp75b_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_banner_tracks`

LOCK TABLES `mp75b_banner_tracks` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_banners`

DROP TABLE IF EXISTS `mp75b_banners`;
CREATE TABLE `mp75b_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_banners`

LOCK TABLES `mp75b_banners` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_categories`

DROP TABLE IF EXISTS `mp75b_categories`;
CREATE TABLE `mp75b_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_categories`

LOCK TABLES `mp75b_categories` WRITE;
INSERT INTO `mp75b_categories` VALUES (1,0,0,0,21,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (8,72,1,13,14,1,'2014-08-20-17-23-17','com_webgallery','一頁風格','2014-08-20-17-23-17','','',1,0,'0000-00-00 00:00:00',1,'','','','',584,'2014-08-20 17:23:17',0,'0000-00-00 00:00:00',0,'',1);
INSERT INTO `mp75b_categories` VALUES (9,96,1,15,16,1,'basic-info','com_userxtd','Basic Info','userxtd-basic-info','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',584,'2014-09-07 09:58:40',584,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (10,97,1,17,18,1,'living','com_userxtd','Living','userxtd-living','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',584,'2014-09-07 09:58:40',584,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (19,131,1,19,20,1,'aedes-keep','com_content','白紋收藏','aedes-keep','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"t3_extrafields\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',584,'2015-01-31 08:07:02',0,'0000-00-00 00:00:00',0,'*',1);
UNLOCK TABLES;

-- Table structure for table `mp75b_contact_details`

DROP TABLE IF EXISTS `mp75b_contact_details`;
CREATE TABLE `mp75b_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
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
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_contact_details`

LOCK TABLES `mp75b_contact_details` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_content`

DROP TABLE IF EXISTS `mp75b_content`;
CREATE TABLE `mp75b_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_content`

LOCK TABLES `mp75b_content` WRITE;
INSERT INTO `mp75b_content` VALUES (12,132,'網站假資料生產器','網站假資料生產器','<h1 id=\"faker\">網站假資料生產器 Faker</h1>\r\n<p>當你在<strong>網站製作</strong>時，手動測試, 單元測試, 壓力測試。 不免都要新增些假資料吧？</p>\r\n<p>而<strong>網站製作</strong>時遇到的內容真是千奇百怪，</p>\r\n<p>在測試時看到一堆人名叫做 test, test1, test2, testn 帳號無法編輯... 等等？剛剛是哪個 test 無法編輯？</p>\r\n<p>Faker 是個專門新增假資料的 PHP library ，它會幫你生產出精美又漂亮的測試假資料，讓你再也看不到 test 出現在人名上。</p>\r\n<p>我們可以透過 composer 輕鬆的安裝起來並使用。 不管是輸出郵遞區號, 地址, 人名, 生日, 電話, 各種網站製作上用得到的資料都難不倒它。</p>\r\n<p>底下是簡易的使用範例。</p>\r\n<pre><code class=\"lang-php\"><span class=\"hljs-preprocessor\">&lt;?php</span>\r\n<span class=\"hljs-comment\">// 將 faker 載入</span>\r\n<span class=\"hljs-keyword\">require_once</span> <span class=\"hljs-string\">\'/path/to/Faker/src/autoload.php\'</span>;\r\n\r\n<span class=\"hljs-variable\">$faker</span> = Faker\\Factory::create();\r\n\r\n<span class=\"hljs-comment\">// 人名</span>\r\n<span class=\"hljs-keyword\">echo</span> <span class=\"hljs-variable\">$faker</span>-&gt;name;\r\n\r\n<span class=\"hljs-comment\">// 地址</span>\r\n<span class=\"hljs-keyword\">echo</span> <span class=\"hljs-variable\">$faker</span>-&gt;address;\r\n\r\n<span class=\"hljs-comment\">// 純文字</span>\r\n<span class=\"hljs-keyword\">echo</span> <span class=\"hljs-variable\">$faker</span>-&gt;text;\r\n</code></pre>\r\n<p>詳細可參閱 Faker 的 Github : <a href=\"https://github.com/fzaninotto/Faker\">https://github.com/fzaninotto/Faker</a></p>','',1,19,'2015-01-31 08:25:32',585,'','2015-01-31 08:32:36',585,0,'0000-00-00 00:00:00','2015-01-31 08:25:32','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',5,3,'','',1,21,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `mp75b_content` VALUES (13,863,'Nginx Symfony2 設定','nginx-symfony2-設定','<p>Symfony2 是一個頂尖，且傑出的 PHP 框架，</p>\r\n<p>預設的<strong>網頁伺服器</strong>是使用現在最多人使用的重兵器 Apache2，</p>\r\n<p>但有時為了特殊<strong>網站架設</strong>需求，如高<strong>流量網站</strong>，PHP fpm 模式</p>\r\n<p>或其他各種實際或非實際的應用層面，我們會改用輕量化的 Nginx，</p>\r\n<p>這時我們就需要重新撰寫 rewrite 的設定檔了。</p>\r\n<p>而在 Nginx 官方的文件中，也專門為了 Symfony2 撰寫了一份範例。</p>\r\n<pre>upstream phpfcgi {\r\n    server 127.0.0.1:9000;\r\n    # server unix:/var/run/php5-fpm.sock; #for PHP-FPM running on UNIX socket\r\n}\r\nserver {\r\n    listen 80;\r\n \r\n    server_name symfony2;\r\n    root /var/www/symfony2/web;\r\n \r\n    error_log /var/log/nginx/symfony2.error.log;\r\n    access_log /var/log/nginx/symfony2.access.log;\r\n \r\n    # strip app.php/ prefix if it is present\r\n    rewrite ^/app\\.php/?(.*)$ /$1 permanent;\r\n \r\n    location / {\r\n        index app.php;\r\n        try_files $uri @rewriteapp;\r\n    }\r\n \r\n    location @rewriteapp {\r\n        rewrite ^(.*)$ /app.php/$1 last;\r\n    }\r\n \r\n    # pass the PHP scripts to FastCGI server from upstream phpfcgi\r\n    location ~ ^/(app|app_dev|config)\\.php(/|$) {\r\n        fastcgi_pass phpfcgi;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.*)$;\r\n        include fastcgi_params;\r\n        fastcgi_param  SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param  HTTPS off;\r\n    }\r\n}\r\n \r\n \r\nserver {\r\n    listen 443;\r\n \r\n    server_name symfony2;\r\n    root /var/www/symfony2/web;\r\n \r\n    ssl on;\r\n    ssl_certificate /etc/ssl/certs/symfony2.crt;\r\n    ssl_certificate_key /etc/ssl/private/symfony2.key;\r\n \r\n    error_log /var/log/nginx/symfony2.error.log;\r\n    access_log /var/log/nginx/symfony2.access.log;\r\n \r\n    # strip app.php/ prefix if it is present\r\n    rewrite ^/app\\.php/?(.*)$ /$1 permanent;\r\n \r\n    location / {\r\n        index app.php;\r\n        try_files $uri @rewriteapp;\r\n    }\r\n \r\n    location @rewriteapp {\r\n        rewrite ^(.*)$ /app.php/$1 last;\r\n    }\r\n \r\n    # pass the PHP scripts to FastCGI server from upstream phpfcgi\r\n    location ~ ^/(app|app_dev|config)\\.php(/|$) {\r\n        fastcgi_pass phpfcgi;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.*)$;\r\n        include fastcgi_params;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param HTTPS on;\r\n    }\r\n}\r\n</pre>\r\n<p>原始連結 ： <a href=\"http://wiki.nginx.org/Symfony\">http://wiki.nginx.org/Symfony</a></p>','',1,19,'2015-01-31 09:21:41',585,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2015-01-31 09:21:41','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',1,2,'','',1,9,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `mp75b_content` VALUES (14,865,'簡單 css 讓網站動起來！','簡單-css-讓網站動起來！','<p>想要簡單讓網站有動畫效果，又不想寫一大堆煩人的 css 跟 javascript 嗎？</p>\r\n<p>Animate.css 是一個 css 的動畫 library ，</p>\r\n<p>你只要在你想呈現動畫的 Html 標籤中加入動畫效果 對應的 class 名稱，</p>\r\n<p>就能簡單的把動畫效果加入囉！</p>\r\n<p>相是</p>\r\n\r\n<div class=\"wow bounce\">\r\n<h1>網站動畫設計</h1>\r\n<p>bounce 動畫效果</p>\r\n</div>\r\n\r\n<pre><code class=\"lang-html\"><span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">div</span> <span class=\"hljs-attribute\">class</span>=<span class=\"hljs-value\">\"wow bounce\"</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">h1</span>&gt;</span>網站動畫設計<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">h1</span>&gt;</span>\r\n    <span class=\"hljs-tag\">&lt;<span class=\"hljs-title\">p</span>&gt;</span>bounce 動畫效果<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">p</span>&gt;</span>\r\n<span class=\"hljs-tag\">&lt;/<span class=\"hljs-title\">div</span>&gt;</span>\r\n</code></pre>\r\n\r\n<p>官方網站：<a href=\"http://daneden.github.io/animate.css/\">http://daneden.github.io/animate.css/</a></p>','',1,19,'2015-01-31 09:34:29',585,'','2015-01-31 09:46:41',585,0,'0000-00-00 00:00:00','2015-01-31 09:34:29','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',7,1,'','',1,23,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `mp75b_content` VALUES (15,867,'JavaScript 編譯保護','javascript-編譯保護','<p>很多時候<strong>架設網站</strong>不免會加上些頁面效果，</p>\r\n<p>而很多時候 JavaScript 的程式碼就被大拉拉的複製走了！！！（雖然我覺得沒什麼）</p>\r\n<p>但嚴重點，會有人透過你的 JavaScript 對你的網站逕行攻擊。</p>\r\n<p> </p>\r\n<p><a href=\"http://www.jsfuck.com/\">http://www.jsfuck.com/</a></p>\r\n<p>是一個將 JavaScript 編譯的 JavaScript library 可以防止原始碼被串改複製。</p>\r\n<p>例如</p>\r\n<p><span style=\"background-color: rgba(255, 255, 255, 0);\">alert(1)</span></p>\r\n<p>他會編譯成</p>\r\n<p><span style=\"background-color: rgba(255, 255, 255, 0);\">[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]][([][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]]+[])[!+[]+!+[]+!+[]]+(!![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[+!+[]+[+[]]]+([][[]]+[])[+!+[]]+(![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[+!+[]]+([][[]]+[])[+[]]+([][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[+!+[]+[+[]]]+(!![]+[])[+!+[]]]((![]+[])[+!+[]]+(![]+[])[!+[]+!+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]+(!![]+[])[+[]]+(![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[!+[]+!+[]+[+[]]]+[+!+[]]+(!![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[!+[]+!+[]+[+[]]])()</span></p>\r\n<p>把原本的 JavaScript 打到作者自己都認不得了。</p>','',1,19,'2015-02-02 07:46:37',584,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2015-02-02 07:46:37','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',1,0,'','',1,6,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
UNLOCK TABLES;

-- Table structure for table `mp75b_content_frontpage`

DROP TABLE IF EXISTS `mp75b_content_frontpage`;
CREATE TABLE `mp75b_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_content_frontpage`

LOCK TABLES `mp75b_content_frontpage` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_content_images`

DROP TABLE IF EXISTS `mp75b_content_images`;
CREATE TABLE `mp75b_content_images` (
  `contentid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `main` int(3) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table `mp75b_content_images`

LOCK TABLES `mp75b_content_images` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_content_rating`

DROP TABLE IF EXISTS `mp75b_content_rating`;
CREATE TABLE `mp75b_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_content_rating`

LOCK TABLES `mp75b_content_rating` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_content_types`

DROP TABLE IF EXISTS `mp75b_content_types`;
CREATE TABLE `mp75b_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_content_types`

LOCK TABLES `mp75b_content_types` WRITE;
INSERT INTO `mp75b_content_types` VALUES (0,'WebGallery Item','com_webgallery.item','{\"special\":{\"dbtable\":\"#__webgallery_items\",\"key\":\"id\",\"type\":\"Item\",\"prefix\":\"WebgalleryTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\r\n    \"common\": {\r\n        \"core_content_item_id\": \"id\",\r\n        \"core_title\": \"title\",\r\n        \"core_state\": \"published\",\r\n        \"core_alias\": \"alias\",\r\n        \"core_created_time\": \"created\",\r\n        \"core_modified_time\": \"modified\",\r\n        \"core_body\": \"introtext\",\r\n        \"core_publish_up\": \"publish_up\",\r\n        \"core_publish_down\": \"publish_down\",\r\n        \"core_access\": \"access\",\r\n        \"core_params\": \"params\",\r\n        \"core_language\": \"language\",\r\n        \"core_images\": \"images\",\r\n        \"core_urls\": \"urls\",\r\n        \"core_version\": \"version\",\r\n        \"core_ordering\": \"ordering\",\r\n        \"core_catid\": \"catid\",\r\n        \"asset_id\": \"asset_id\"\r\n    }\r\n}','WebgalleryHelperRoute::getItemRoute',NULL);
INSERT INTO `mp75b_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mp75b_content_types` VALUES (2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mp75b_content_types` VALUES (3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }');
INSERT INTO `mp75b_content_types` VALUES (4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mp75b_content_types` VALUES (5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute','');
INSERT INTO `mp75b_content_types` VALUES (6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mp75b_content_types` VALUES (7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mp75b_content_types` VALUES (8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mp75b_content_types` VALUES (9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mp75b_content_types` VALUES (10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `mp75b_content_types` VALUES (11,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mp75b_content_types` VALUES (12,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mp75b_content_types` VALUES (13,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}');
INSERT INTO `mp75b_content_types` VALUES (14,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `mp75b_content_types` VALUES (15,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
UNLOCK TABLES;

-- Table structure for table `mp75b_contentitem_tag_map`

DROP TABLE IF EXISTS `mp75b_contentitem_tag_map`;
CREATE TABLE `mp75b_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- Dumping data for table `mp75b_contentitem_tag_map`

LOCK TABLES `mp75b_contentitem_tag_map` WRITE;
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',1,12,2,'2015-01-31 03:32:36',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',1,12,3,'2015-01-31 03:32:36',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',1,12,4,'2015-01-31 03:32:36',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',1,12,5,'2015-01-31 03:32:36',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',1,12,6,'2015-01-31 03:32:36',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',1,12,7,'2015-01-31 03:32:36',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',1,12,8,'2015-01-31 03:32:36',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',1,12,9,'2015-01-31 03:32:36',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',2,13,2,'2015-01-31 04:21:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',2,13,4,'2015-01-31 04:21:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',2,13,5,'2015-01-31 04:21:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',2,13,6,'2015-01-31 04:21:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',2,13,10,'2015-01-31 04:21:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',2,13,11,'2015-01-31 04:21:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',2,13,12,'2015-01-31 04:21:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',2,13,13,'2015-01-31 04:21:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',3,14,3,'2015-01-31 04:46:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',3,14,5,'2015-01-31 04:46:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',3,14,14,'2015-01-31 04:46:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',3,14,16,'2015-01-31 04:46:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',3,14,17,'2015-01-31 04:46:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',3,14,20,'2015-01-31 04:46:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',3,14,21,'2015-01-31 04:46:41',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',4,15,3,'2015-02-02 02:46:38',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',4,15,4,'2015-02-02 02:46:38',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',4,15,5,'2015-02-02 02:46:38',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',4,15,17,'2015-02-02 02:46:38',1);
INSERT INTO `mp75b_contentitem_tag_map` VALUES ('com_content.article',4,15,20,'2015-02-02 02:46:38',1);
UNLOCK TABLES;

-- Table structure for table `mp75b_core_log_searches`

DROP TABLE IF EXISTS `mp75b_core_log_searches`;
CREATE TABLE `mp75b_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_core_log_searches`

LOCK TABLES `mp75b_core_log_searches` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_categories`

DROP TABLE IF EXISTS `mp75b_djc2_categories`;
CREATE TABLE `mp75b_djc2_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent_id` int(11) NOT NULL,
  `metatitle` varchar(255) DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `published` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL,
  `params` text,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`),
  KEY `idx_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_categories`

LOCK TABLES `mp75b_djc2_categories` WRITE;
INSERT INTO `mp75b_djc2_categories` VALUES (2,'website template','website-template','',0,'','','',1,1,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:23:06',584);
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_countries`

DROP TABLE IF EXISTS `mp75b_djc2_countries`;
CREATE TABLE `mp75b_djc2_countries` (
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `country_name` char(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `is_eu` smallint(6) NOT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_country_3_code` (`country_3_code`),
  KEY `idx_country_2_code` (`country_2_code`)
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_countries`

LOCK TABLES `mp75b_djc2_countries` WRITE;
INSERT INTO `mp75b_djc2_countries` VALUES (1,'Afghanistan','AFG','AF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (2,'Albania','ALB','AL',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (3,'Algeria','DZA','DZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (4,'American Samoa','ASM','AS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (5,'Andorra','AND','AD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (6,'Angola','AGO','AO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (7,'Anguilla','AIA','AI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (8,'Antarctica','ATA','AQ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (9,'Antigua and Barbuda','ATG','AG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (10,'Argentina','ARG','AR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (11,'Armenia','ARM','AM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (12,'Aruba','ABW','AW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (13,'Australia','AUS','AU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (14,'Austria','AUT','AT',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (15,'Azerbaijan','AZE','AZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (16,'Bahamas','BHS','BS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (17,'Bahrain','BHR','BH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (18,'Bangladesh','BGD','BD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (19,'Barbados','BRB','BB',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (20,'Belarus','BLR','BY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (21,'Belgium','BEL','BE',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (22,'Belize','BLZ','BZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (23,'Benin','BEN','BJ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (24,'Bermuda','BMU','BM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (25,'Bhutan','BTN','BT',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (26,'Bolivia','BOL','BO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (27,'Bosnia and Herzegowina','BIH','BA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (28,'Botswana','BWA','BW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (29,'Bouvet Island','BVT','BV',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (30,'Brazil','BRA','BR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (31,'British Indian Ocean Territory','IOT','IO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (32,'Brunei Darussalam','BRN','BN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (33,'Bulgaria','BGR','BG',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (34,'Burkina Faso','BFA','BF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (35,'Burundi','BDI','BI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (36,'Cambodia','KHM','KH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (37,'Cameroon','CMR','CM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (38,'Canada','CAN','CA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (39,'Cape Verde','CPV','CV',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (40,'Cayman Islands','CYM','KY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (41,'Central African Republic','CAF','CF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (42,'Chad','TCD','TD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (43,'Chile','CHL','CL',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (44,'China','CHN','CN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (45,'Christmas Island','CXR','CX',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (46,'Cocos (Keeling) Islands','CCK','CC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (47,'Colombia','COL','CO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (48,'Comoros','COM','KM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (49,'Congo','COG','CG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (50,'Cook Islands','COK','CK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (51,'Costa Rica','CRI','CR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (52,'Cote D\'Ivoire','CIV','CI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (53,'Croatia','HRV','HR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (54,'Cuba','CUB','CU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (55,'Cyprus','CYP','CY',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (56,'Czech Republic','CZE','CZ',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (57,'Denmark','DNK','DK',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (58,'Djibouti','DJI','DJ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (59,'Dominica','DMA','DM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (60,'Dominican Republic','DOM','DO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (61,'East Timor','TMP','TP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (62,'Ecuador','ECU','EC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (63,'Egypt','EGY','EG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (64,'El Salvador','SLV','SV',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (65,'Equatorial Guinea','GNQ','GQ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (66,'Eritrea','ERI','ER',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (67,'Estonia','EST','EE',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (68,'Ethiopia','ETH','ET',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (69,'Falkland Islands (Malvinas)','FLK','FK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (70,'Faroe Islands','FRO','FO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (71,'Fiji','FJI','FJ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (72,'Finland','FIN','FI',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (73,'France','FRA','FR',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (75,'French Guiana','GUF','GF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (76,'French Polynesia','PYF','PF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (77,'French Southern Territories','ATF','TF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (78,'Gabon','GAB','GA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (79,'Gambia','GMB','GM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (80,'Georgia','GEO','GE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (81,'Germany','DEU','DE',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (82,'Ghana','GHA','GH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (83,'Gibraltar','GIB','GI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (84,'Greece','GRC','GR',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (85,'Greenland','GRL','GL',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (86,'Grenada','GRD','GD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (87,'Guadeloupe','GLP','GP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (88,'Guam','GUM','GU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (89,'Guatemala','GTM','GT',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (90,'Guinea','GIN','GN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (91,'Guinea-bissau','GNB','GW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (92,'Guyana','GUY','GY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (93,'Haiti','HTI','HT',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (94,'Heard and Mc Donald Islands','HMD','HM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (95,'Honduras','HND','HN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (96,'Hong Kong','HKG','HK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (97,'Hungary','HUN','HU',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (98,'Iceland','ISL','IS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (99,'India','IND','IN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (100,'Indonesia','IDN','ID',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (101,'Iran (Islamic Republic of)','IRN','IR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (102,'Iraq','IRQ','IQ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (103,'Ireland','IRL','IE',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (104,'Israel','ISR','IL',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (105,'Italy','ITA','IT',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (106,'Jamaica','JAM','JM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (107,'Japan','JPN','JP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (108,'Jordan','JOR','JO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (109,'Kazakhstan','KAZ','KZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (110,'Kenya','KEN','KE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (111,'Kiribati','KIR','KI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (112,'Korea, Democratic People\'s Republic of','PRK','KP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (113,'Korea, Republic of','KOR','KR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (114,'Kuwait','KWT','KW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (115,'Kyrgyzstan','KGZ','KG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (116,'Lao People\'s Democratic Republic','LAO','LA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (117,'Latvia','LVA','LV',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (118,'Lebanon','LBN','LB',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (119,'Lesotho','LSO','LS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (120,'Liberia','LBR','LR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (121,'Libya','LBY','LY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (122,'Liechtenstein','LIE','LI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (123,'Lithuania','LTU','LT',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (124,'Luxembourg','LUX','LU',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (125,'Macau','MAC','MO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (126,'Macedonia, The Former Yugoslav Republic of','MKD','MK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (127,'Madagascar','MDG','MG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (128,'Malawi','MWI','MW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (129,'Malaysia','MYS','MY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (130,'Maldives','MDV','MV',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (131,'Mali','MLI','ML',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (132,'Malta','MLT','MT',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (133,'Marshall Islands','MHL','MH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (134,'Martinique','MTQ','MQ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (135,'Mauritania','MRT','MR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (136,'Mauritius','MUS','MU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (137,'Mayotte','MYT','YT',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (138,'Mexico','MEX','MX',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (139,'Micronesia, Federated States of','FSM','FM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (140,'Moldova, Republic of','MDA','MD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (141,'Monaco','MCO','MC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (142,'Mongolia','MNG','MN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (143,'Montserrat','MSR','MS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (144,'Morocco','MAR','MA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (145,'Mozambique','MOZ','MZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (146,'Myanmar','MMR','MM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (147,'Namibia','NAM','NA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (148,'Nauru','NRU','NR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (149,'Nepal','NPL','NP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (150,'Netherlands','NLD','NL',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (151,'Netherlands Antilles','ANT','AN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (152,'New Caledonia','NCL','NC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (153,'New Zealand','NZL','NZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (154,'Nicaragua','NIC','NI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (155,'Niger','NER','NE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (156,'Nigeria','NGA','NG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (157,'Niue','NIU','NU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (158,'Norfolk Island','NFK','NF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (159,'Northern Mariana Islands','MNP','MP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (160,'Norway','NOR','NO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (161,'Oman','OMN','OM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (162,'Pakistan','PAK','PK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (163,'Palau','PLW','PW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (164,'Panama','PAN','PA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (165,'Papua New Guinea','PNG','PG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (166,'Paraguay','PRY','PY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (167,'Peru','PER','PE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (168,'Philippines','PHL','PH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (169,'Pitcairn','PCN','PN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (170,'Poland','POL','PL',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (171,'Portugal','PRT','PT',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (172,'Puerto Rico','PRI','PR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (173,'Qatar','QAT','QA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (174,'Reunion','REU','RE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (175,'Romania','ROM','RO',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (176,'Russian Federation','RUS','RU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (177,'Rwanda','RWA','RW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (178,'Saint Kitts and Nevis','KNA','KN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (179,'Saint Lucia','LCA','LC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (180,'Saint Vincent and the Grenadines','VCT','VC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (181,'Samoa','WSM','WS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (182,'San Marino','SMR','SM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (183,'Sao Tome and Principe','STP','ST',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (184,'Saudi Arabia','SAU','SA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (185,'Senegal','SEN','SN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (186,'Seychelles','SYC','SC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (187,'Sierra Leone','SLE','SL',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (188,'Singapore','SGP','SG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (189,'Slovakia','SVK','SK',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (190,'Slovenia','SVN','SI',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (191,'Solomon Islands','SLB','SB',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (192,'Somalia','SOM','SO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (193,'South Africa','ZAF','ZA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (194,'South Georgia and the South Sandwich Islands','SGS','GS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (195,'Spain','ESP','ES',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (196,'Sri Lanka','LKA','LK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (197,'St. Helena','SHN','SH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (198,'St. Pierre and Miquelon','SPM','PM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (199,'Sudan','SDN','SD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (200,'Suriname','SUR','SR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (201,'Svalbard and Jan Mayen Islands','SJM','SJ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (202,'Swaziland','SWZ','SZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (203,'Sweden','SWE','SE',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (204,'Switzerland','CHE','CH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (205,'Syrian Arab Republic','SYR','SY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (206,'Taiwan','TWN','TW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (207,'Tajikistan','TJK','TJ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (208,'Tanzania, United Republic of','TZA','TZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (209,'Thailand','THA','TH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (210,'Togo','TGO','TG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (211,'Tokelau','TKL','TK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (212,'Tonga','TON','TO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (213,'Trinidad and Tobago','TTO','TT',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (214,'Tunisia','TUN','TN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (215,'Turkey','TUR','TR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (216,'Turkmenistan','TKM','TM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (217,'Turks and Caicos Islands','TCA','TC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (218,'Tuvalu','TUV','TV',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (219,'Uganda','UGA','UG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (220,'Ukraine','UKR','UA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (221,'United Arab Emirates','ARE','AE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (222,'United Kingdom','GBR','GB',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (223,'United States','USA','US',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (224,'United States Minor Outlying Islands','UMI','UM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (225,'Uruguay','URY','UY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (226,'Uzbekistan','UZB','UZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (227,'Vanuatu','VUT','VU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (228,'Vatican City State (Holy See)','VAT','VA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (229,'Venezuela','VEN','VE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (230,'Viet Nam','VNM','VN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (231,'Virgin Islands (British)','VGB','VG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (232,'Virgin Islands (U.S.)','VIR','VI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (233,'Wallis and Futuna Islands','WLF','WF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (234,'Western Sahara','ESH','EH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (235,'Yemen','YEM','YE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (237,'The Democratic Republic of Congo','DRC','DC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (238,'Zambia','ZMB','ZM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (239,'Zimbabwe','ZWE','ZW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (240,'East Timor','XET','XE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (241,'Jersey','JEY','JE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (242,'St. Barthelemy','XSB','XB',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (243,'St. Eustatius','XSE','XU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (244,'Canary Islands','XCA','XC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (245,'Serbia','SRB','RS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (246,'Sint Maarten (French Antilles)','MAF','MF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (247,'Sint Maarten (Netherlands Antilles)','SXM','SX',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (248,'Palestinian Territory, occupied','PSE','PS',1,0,0);
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_customer_groups`

DROP TABLE IF EXISTS `mp75b_djc2_customer_groups`;
CREATE TABLE `mp75b_djc2_customer_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_customer_groups`

LOCK TABLES `mp75b_djc2_customer_groups` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_files`

DROP TABLE IF EXISTS `mp75b_djc2_files`;
CREATE TABLE `mp75b_djc2_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ext` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `fullpath` varchar(255) DEFAULT NULL,
  `caption` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `item_id` (`item_id`),
  KEY `idx_item_type_ordering` (`item_id`,`type`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_files`

LOCK TABLES `mp75b_djc2_files` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_images`

DROP TABLE IF EXISTS `mp75b_djc2_images`;
CREATE TABLE `mp75b_djc2_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ext` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `fullpath` varchar(255) DEFAULT NULL,
  `caption` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `exclude` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `item_id` (`item_id`),
  KEY `idx_item_type_ordering` (`item_id`,`type`,`ordering`),
  KEY `idx_exclude` (`exclude`)
) ENGINE=MyISAM AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_images`

LOCK TABLES `mp75b_djc2_images` WRITE;
INSERT INTO `mp75b_djc2_images` VALUES (1,2,'item','gk-appsprotech.jpg','gk-appsprotech','jpg','item/0','item/0/gk-appsprotech.jpg','gk_appsprotech_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (2,2,'item','gk-appsprotech.1.jpg','gk-appsprotech.1','jpg','item/0','item/0/gk-appsprotech.1.jpg','gk_appsprotech_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (3,2,'item','gk-appsprotech.2.jpg','gk-appsprotech.2','jpg','item/0','item/0/gk-appsprotech.2.jpg','gk_appsprotech_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (4,1,'producer','gavick.png','gavick','png','producer/0','producer/0/gavick.png','logo',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (5,2,'item','gk-appsprotech.3.jpg','gk-appsprotech.3','jpg','item/0','item/0/gk-appsprotech.3.jpg','gk_appsprotech_1',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (6,3,'item','gk-bikestore.jpg','gk-bikestore','jpg','item/0','item/0/gk-bikestore.jpg','gk_bikestore_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (7,3,'item','gk-bikestore.1.jpg','gk-bikestore.1','jpg','item/0','item/0/gk-bikestore.1.jpg','gk_bikestore_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (8,3,'item','gk-bikestore.2.jpg','gk-bikestore.2','jpg','item/0','item/0/gk-bikestore.2.jpg','gk_bikestore_1',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (9,4,'item','gk-bluap.jpg','gk-bluap','jpg','item/0','item/0/gk-bluap.jpg','gk_bluap_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (10,4,'item','gk-bluap.1.jpg','gk-bluap.1','jpg','item/0','item/0/gk-bluap.1.jpg','gk_bluap_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (11,4,'item','gk-bluap.2.jpg','gk-bluap.2','jpg','item/0','item/0/gk-bluap.2.jpg','gk_bluap_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (12,4,'item','gk-bluap.3.jpg','gk-bluap.3','jpg','item/0','item/0/gk-bluap.3.jpg','gk_bluap_1_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (13,4,'item','gk-bluap.4.jpg','gk-bluap.4','jpg','item/0','item/0/gk-bluap.4.jpg','gk_bluap_1',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (14,5,'item','gk-boutique.jpg','gk-boutique','jpg','item/0','item/0/gk-boutique.jpg','gk_boutique_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (15,6,'item','gk-cloudhost.jpg','gk-cloudhost','jpg','item/0','item/0/gk-cloudhost.jpg','gk_cloudhost_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (16,6,'item','gk-cloudhost.1.jpg','gk-cloudhost.1','jpg','item/0','item/0/gk-cloudhost.1.jpg','gk_cloudhost_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (17,6,'item','gk-cloudhost.2.jpg','gk-cloudhost.2','jpg','item/0','item/0/gk-cloudhost.2.jpg','gk_cloudhost_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (18,6,'item','gk-cloudhost.3.jpg','gk-cloudhost.3','jpg','item/0','item/0/gk-cloudhost.3.jpg','gk_cloudhost_1_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (19,6,'item','gk-cloudhost.4.jpg','gk-cloudhost.4','jpg','item/0','item/0/gk-cloudhost.4.jpg','gk_cloudhost_1_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (20,6,'item','gk-cloudhost.5.jpg','gk-cloudhost.5','jpg','item/0','item/0/gk-cloudhost.5.jpg','gk_cloudhost_1',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (21,7,'item','gk-creative.jpg','gk-creative','jpg','item/0','item/0/gk-creative.jpg','gk_creative_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (22,7,'item','gk-creative.1.jpg','gk-creative.1','jpg','item/0','item/0/gk-creative.1.jpg','gk_creative_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (23,7,'item','gk-creative.2.jpg','gk-creative.2','jpg','item/0','item/0/gk-creative.2.jpg','gk_creative_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (24,7,'item','gk-creative.3.jpg','gk-creative.3','jpg','item/0','item/0/gk-creative.3.jpg','gk_creative_1_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (25,7,'item','gk-creative.4.jpg','gk-creative.4','jpg','item/0','item/0/gk-creative.4.jpg','gk_creative_1',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (26,8,'item','gk-creativity.jpg','gk-creativity','jpg','item/0','item/0/gk-creativity.jpg','gk_creativity_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (27,8,'item','gk-creativity.1.jpg','gk-creativity.1','jpg','item/0','item/0/gk-creativity.1.jpg','gk_creativity_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (28,8,'item','gk-creativity.2.jpg','gk-creativity.2','jpg','item/0','item/0/gk-creativity.2.jpg','gk_creativity_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (29,8,'item','gk-creativity.3.jpg','gk-creativity.3','jpg','item/0','item/0/gk-creativity.3.jpg','gk_creativity_1_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (30,8,'item','gk-creativity.4.jpg','gk-creativity.4','jpg','item/0','item/0/gk-creativity.4.jpg','gk_creativity_1',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (31,9,'item','gk-esport.jpg','gk-esport','jpg','item/0','item/0/gk-esport.jpg','gk_esport_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (32,9,'item','gk-esport.1.jpg','gk-esport.1','jpg','item/0','item/0/gk-esport.1.jpg','gk_esport_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (33,9,'item','gk-esport.2.jpg','gk-esport.2','jpg','item/0','item/0/gk-esport.2.jpg','gk_esport_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (34,9,'item','gk-esport.3.jpg','gk-esport.3','jpg','item/0','item/0/gk-esport.3.jpg','gk_esport_1',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (35,10,'item','gk-events.jpg','gk-events','jpg','item/0','item/0/gk-events.jpg','gk_events_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (36,10,'item','gk-events.1.jpg','gk-events.1','jpg','item/0','item/0/gk-events.1.jpg','gk_events_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (37,10,'item','gk-events.2.jpg','gk-events.2','jpg','item/0','item/0/gk-events.2.jpg','gk_events_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (38,10,'item','gk-events.3.jpg','gk-events.3','jpg','item/0','item/0/gk-events.3.jpg','gk_events_1_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (39,10,'item','gk-events.4.jpg','gk-events.4','jpg','item/0','item/0/gk-events.4.jpg','gk_events_1_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (40,10,'item','gk-events.5.jpg','gk-events.5','jpg','item/0','item/0/gk-events.5.jpg','gk_events_1',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (41,11,'item','gk-fashion.jpg','gk-fashion','jpg','item/0','item/0/gk-fashion.jpg','gk_fashion_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (42,12,'item','gk-fest.jpg','gk-fest','jpg','item/0','item/0/gk-fest.jpg','gk_fest_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (43,12,'item','gk-fest.1.jpg','gk-fest.1','jpg','item/0','item/0/gk-fest.1.jpg','gk_fest_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (44,12,'item','gk-fest.2.jpg','gk-fest.2','jpg','item/0','item/0/gk-fest.2.jpg','gk_fest_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (45,12,'item','gk-fest.3.jpg','gk-fest.3','jpg','item/0','item/0/gk-fest.3.jpg','gk_fest_1',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (46,13,'item','gk-game.jpg','gk-game','jpg','item/0','item/0/gk-game.jpg','gk_game_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (47,13,'item','gk-game.1.jpg','gk-game.1','jpg','item/0','item/0/gk-game.1.jpg','gk_game_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (48,13,'item','gk-game.2.jpg','gk-game.2','jpg','item/0','item/0/gk-game.2.jpg','gk_game_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (49,13,'item','gk-game.3.jpg','gk-game.3','jpg','item/0','item/0/gk-game.3.jpg','gk_game_1',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (50,14,'item','gk-game-magazine.jpg','gk-game-magazine','jpg','item/0','item/0/gk-game-magazine.jpg','gk_game_magazine_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (51,14,'item','gk-game-magazine.1.jpg','gk-game-magazine.1','jpg','item/0','item/0/gk-game-magazine.1.jpg','gk_game_magazine_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (52,14,'item','gk-game-magazine.2.jpg','gk-game-magazine.2','jpg','item/0','item/0/gk-game-magazine.2.jpg','gk_game_magazine_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (53,14,'item','gk-game-magazine.3.jpg','gk-game-magazine.3','jpg','item/0','item/0/gk-game-magazine.3.jpg','gk_game_magazine_1',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (54,15,'item','gk-gamenews.jpg','gk-gamenews','jpg','item/0','item/0/gk-gamenews.jpg','gk_gamenews_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (55,15,'item','gk-gamenews.1.jpg','gk-gamenews.1','jpg','item/0','item/0/gk-gamenews.1.jpg','gk_gamenews_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (56,15,'item','gk-gamenews.2.jpg','gk-gamenews.2','jpg','item/0','item/0/gk-gamenews.2.jpg','gk_gamenews_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (57,15,'item','gk-gamenews.3.jpg','gk-gamenews.3','jpg','item/0','item/0/gk-gamenews.3.jpg','gk_gamenews_1',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (58,16,'item','gk-instyle.jpg','gk-instyle','jpg','item/0','item/0/gk-instyle.jpg','gk_instyle_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (59,16,'item','gk-instyle.1.jpg','gk-instyle.1','jpg','item/0','item/0/gk-instyle.1.jpg','gk_instyle_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (60,16,'item','gk-instyle.2.jpg','gk-instyle.2','jpg','item/0','item/0/gk-instyle.2.jpg','gk_instyle_1',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (61,17,'item','gk-john-s.jpg','gk-john-s','jpg','item/0','item/0/gk-john-s.jpg','gk_john_s_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (62,17,'item','gk-john-s.1.jpg','gk-john-s.1','jpg','item/0','item/0/gk-john-s.1.jpg','gk_john_s_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (63,17,'item','gk-john-s.2.jpg','gk-john-s.2','jpg','item/0','item/0/gk-john-s.2.jpg','gk_john_s_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (64,17,'item','gk-john-s.3.jpg','gk-john-s.3','jpg','item/0','item/0/gk-john-s.3.jpg','gk_john_s_1_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (65,17,'item','gk-john-s.4.jpg','gk-john-s.4','jpg','item/0','item/0/gk-john-s.4.jpg','gk_john_s_1',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (66,18,'item','gk-league-news.jpg','gk-league-news','jpg','item/0','item/0/gk-league-news.jpg','gk_league_news_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (67,18,'item','gk-league-news.1.jpg','gk-league-news.1','jpg','item/0','item/0/gk-league-news.1.jpg','gk_league_news_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (68,18,'item','gk-league-news.2.jpg','gk-league-news.2','jpg','item/0','item/0/gk-league-news.2.jpg','gk_league_news_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (69,18,'item','gk-league-news.3.jpg','gk-league-news.3','jpg','item/0','item/0/gk-league-news.3.jpg','gk_league_news_1',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (70,19,'item','gk-magazine.jpg','gk-magazine','jpg','item/0','item/0/gk-magazine.jpg','gk_magazine_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (71,19,'item','gk-magazine.1.jpg','gk-magazine.1','jpg','item/0','item/0/gk-magazine.1.jpg','gk_magazine_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (72,19,'item','gk-magazine.2.jpg','gk-magazine.2','jpg','item/0','item/0/gk-magazine.2.jpg','gk_magazine_1',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (73,20,'item','gk-meet-gavern.jpg','gk-meet-gavern','jpg','item/0','item/0/gk-meet-gavern.jpg','gk_meet_gavern_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (74,20,'item','gk-meet-gavern.1.jpg','gk-meet-gavern.1','jpg','item/0','item/0/gk-meet-gavern.1.jpg','gk_meet_gavern_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (75,20,'item','gk-meet-gavern.2.jpg','gk-meet-gavern.2','jpg','item/0','item/0/gk-meet-gavern.2.jpg','gk_meet_gavern_1',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (76,21,'item','gk-mo.jpg','gk-mo','jpg','item/0','item/0/gk-mo.jpg','gk_mo_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (77,21,'item','gk-mo.1.jpg','gk-mo.1','jpg','item/0','item/0/gk-mo.1.jpg','gk_mo_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (78,21,'item','gk-mo.2.jpg','gk-mo.2','jpg','item/0','item/0/gk-mo.2.jpg','gk_mo_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (79,21,'item','gk-mo.3.jpg','gk-mo.3','jpg','item/0','item/0/gk-mo.3.jpg','gk_mo_1_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (80,22,'item','gk-msocial.jpg','gk-msocial','jpg','item/0','item/0/gk-msocial.jpg','gk_msocial_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (81,22,'item','gk-msocial.1.jpg','gk-msocial.1','jpg','item/0','item/0/gk-msocial.1.jpg','gk_msocial_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (82,22,'item','gk-msocial.2.jpg','gk-msocial.2','jpg','item/0','item/0/gk-msocial.2.jpg','gk_msocial_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (83,22,'item','gk-msocial.3.jpg','gk-msocial.3','jpg','item/0','item/0/gk-msocial.3.jpg','gk_msocial_1_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (84,22,'item','gk-msocial.4.jpg','gk-msocial.4','jpg','item/0','item/0/gk-msocial.4.jpg','gk_msocial_1',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (85,23,'item','gk-musicstate.jpg','gk-musicstate','jpg','item/0','item/0/gk-musicstate.jpg','gk_musicstate_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (86,23,'item','gk-musicstate.1.jpg','gk-musicstate.1','jpg','item/0','item/0/gk-musicstate.1.jpg','gk_musicstate_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (87,23,'item','gk-musicstate.2.jpg','gk-musicstate.2','jpg','item/0','item/0/gk-musicstate.2.jpg','gk_musicstate_1',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (88,24,'item','gk-news.jpg','gk-news','jpg','item/0','item/0/gk-news.jpg','gk_news_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (89,24,'item','gk-news.1.jpg','gk-news.1','jpg','item/0','item/0/gk-news.1.jpg','gk_news_1',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (90,25,'item','gk-news2.jpg','gk-news2','jpg','item/0','item/0/gk-news2.jpg','gk_news2_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (91,25,'item','gk-news2.1.jpg','gk-news2.1','jpg','item/0','item/0/gk-news2.1.jpg','gk_news2_1',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (92,26,'item','gk-publisher.jpg','gk-publisher','jpg','item/0','item/0/gk-publisher.jpg','gk_publisher_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (93,26,'item','gk-publisher.1.jpg','gk-publisher.1','jpg','item/0','item/0/gk-publisher.1.jpg','gk_publisher_1',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (94,27,'item','gk-restaurant.jpg','gk-restaurant','jpg','item/0','item/0/gk-restaurant.jpg','gk_restaurant_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (95,27,'item','gk-restaurant.1.jpg','gk-restaurant.1','jpg','item/0','item/0/gk-restaurant.1.jpg','gk_restaurant_1',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (96,28,'item','gk-rockwall.jpg','gk-rockwall','jpg','item/0','item/0/gk-rockwall.jpg','gk_rockwall_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (97,28,'item','gk-rockwall.1.jpg','gk-rockwall.1','jpg','item/0','item/0/gk-rockwall.1.jpg','gk_rockwall_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (98,28,'item','gk-rockwall.2.jpg','gk-rockwall.2','jpg','item/0','item/0/gk-rockwall.2.jpg','gk_rockwall_1',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (99,29,'item','gk-shop-and-buy.jpg','gk-shop-and-buy','jpg','item/0','item/0/gk-shop-and-buy.jpg','gk_shop_and_buy_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (100,29,'item','gk-shop-and-buy.1.jpg','gk-shop-and-buy.1','jpg','item/0','item/0/gk-shop-and-buy.1.jpg','gk_shop_and_buy_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (101,29,'item','gk-shop-and-buy.2.jpg','gk-shop-and-buy.2','jpg','item/0','item/0/gk-shop-and-buy.2.jpg','gk_shop_and_buy_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (102,29,'item','gk-shop-and-buy.3.jpg','gk-shop-and-buy.3','jpg','item/0','item/0/gk-shop-and-buy.3.jpg','gk_shop_and_buy_1',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (103,30,'item','gk-simplicity.jpg','gk-simplicity','jpg','item/0','item/0/gk-simplicity.jpg','gk_simplicity_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (104,30,'item','gk-simplicity.1.jpg','gk-simplicity.1','jpg','item/0','item/0/gk-simplicity.1.jpg','gk_simplicity_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (105,30,'item','gk-simplicity.2.jpg','gk-simplicity.2','jpg','item/0','item/0/gk-simplicity.2.jpg','gk_simplicity_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (106,30,'item','gk-simplicity.3.jpg','gk-simplicity.3','jpg','item/0','item/0/gk-simplicity.3.jpg','gk_simplicity_1_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (107,30,'item','gk-simplicity.4.jpg','gk-simplicity.4','jpg','item/0','item/0/gk-simplicity.4.jpg','gk_simplicity_1_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (108,30,'item','gk-simplicity.5.jpg','gk-simplicity.5','jpg','item/0','item/0/gk-simplicity.5.jpg','gk_simplicity_1',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (109,31,'item','gk-startup-1.jpg','gk-startup-1','jpg','item/0','item/0/gk-startup-1.jpg','gk_startup_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (110,31,'item','gk-startup-1.1.jpg','gk-startup-1.1','jpg','item/0','item/0/gk-startup-1.1.jpg','gk_startup_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (111,31,'item','gk-startup-1.2.jpg','gk-startup-1.2','jpg','item/0','item/0/gk-startup-1.2.jpg','gk_startup_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (112,31,'item','gk-startup-1.3.jpg','gk-startup-1.3','jpg','item/0','item/0/gk-startup-1.3.jpg','gk_startup_1',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (113,32,'item','gk-steakhouse.jpg','gk-steakhouse','jpg','item/0','item/0/gk-steakhouse.jpg','gk_steakhouse_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (114,32,'item','gk-steakhouse.1.jpg','gk-steakhouse.1','jpg','item/0','item/0/gk-steakhouse.1.jpg','gk_steakhouse_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (115,32,'item','gk-steakhouse.2.jpg','gk-steakhouse.2','jpg','item/0','item/0/gk-steakhouse.2.jpg','gk_steakhouse_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (116,32,'item','gk-steakhouse.3.jpg','gk-steakhouse.3','jpg','item/0','item/0/gk-steakhouse.3.jpg','gk_steakhouse_1_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (117,32,'item','gk-steakhouse.4.jpg','gk-steakhouse.4','jpg','item/0','item/0/gk-steakhouse.4.jpg','gk_steakhouse_1',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (118,33,'item','gk-storebox.jpg','gk-storebox','jpg','item/0','item/0/gk-storebox.jpg','gk_storebox_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (119,33,'item','gk-storebox.1.jpg','gk-storebox.1','jpg','item/0','item/0/gk-storebox.1.jpg','gk_storebox_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (120,33,'item','gk-storebox.2.jpg','gk-storebox.2','jpg','item/0','item/0/gk-storebox.2.jpg','gk_storebox_1',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (121,34,'item','gk-storefront.jpg','gk-storefront','jpg','item/0','item/0/gk-storefront.jpg','gk_storefront_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (122,34,'item','gk-storefront.1.jpg','gk-storefront.1','jpg','item/0','item/0/gk-storefront.1.jpg','gk_storefront_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (123,34,'item','gk-storefront.2.jpg','gk-storefront.2','jpg','item/0','item/0/gk-storefront.2.jpg','gk_storefront_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (124,34,'item','gk-storefront.3.jpg','gk-storefront.3','jpg','item/0','item/0/gk-storefront.3.jpg','gk_storefront_1',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (125,35,'item','gk-the-real-design.jpg','gk-the-real-design','jpg','item/0','item/0/gk-the-real-design.jpg','gk_the_real_design_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (126,36,'item','gk-university.jpg','gk-university','jpg','item/0','item/0/gk-university.jpg','gk_university_1_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (127,36,'item','gk-university.1.jpg','gk-university.1','jpg','item/0','item/0/gk-university.1.jpg','gk_university_1_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (128,36,'item','gk-university.2.jpg','gk-university.2','jpg','item/0','item/0/gk-university.2.jpg','gk_university_1_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (129,36,'item','gk-university.3.jpg','gk-university.3','jpg','item/0','item/0/gk-university.3.jpg','gk_university_1',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (130,37,'item','ja_appolio.jpg','ja_appolio','jpg','item/0','item/0/ja_appolio.jpg','ja_appolio_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (131,37,'item','ja_appolio.1.jpg','ja_appolio.1','jpg','item/0','item/0/ja_appolio.1.jpg','ja_appolio_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (132,37,'item','ja_appolio.2.jpg','ja_appolio.2','jpg','item/0','item/0/ja_appolio.2.jpg','ja_appolio_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (133,37,'item','ja_appolio.3.jpg','ja_appolio.3','jpg','item/0','item/0/ja_appolio.3.jpg','ja_appolio_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (134,37,'item','ja_appolio.4.jpg','ja_appolio.4','jpg','item/0','item/0/ja_appolio.4.jpg','ja_appolio_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (135,37,'item','ja_appolio.5.jpg','ja_appolio.5','jpg','item/0','item/0/ja_appolio.5.jpg','ja_appolio_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (136,37,'item','ja_appolio.6.jpg','ja_appolio.6','jpg','item/0','item/0/ja_appolio.6.jpg','ja_appolio_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (137,38,'item','ja_argo.jpg','ja_argo','jpg','item/0','item/0/ja_argo.jpg','ja_argo_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (138,38,'item','ja_argo.1.jpg','ja_argo.1','jpg','item/0','item/0/ja_argo.1.jpg','ja_argo_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (139,38,'item','ja_argo.2.jpg','ja_argo.2','jpg','item/0','item/0/ja_argo.2.jpg','ja_argo_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (140,38,'item','ja_argo.3.jpg','ja_argo.3','jpg','item/0','item/0/ja_argo.3.jpg','ja_argo_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (141,38,'item','ja_argo.4.jpg','ja_argo.4','jpg','item/0','item/0/ja_argo.4.jpg','ja_argo_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (142,38,'item','ja_argo.5.jpg','ja_argo.5','jpg','item/0','item/0/ja_argo.5.jpg','ja_argo_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (143,39,'item','ja_beranis.jpg','ja_beranis','jpg','item/0','item/0/ja_beranis.jpg','ja_beranis_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (144,39,'item','ja_beranis.1.jpg','ja_beranis.1','jpg','item/0','item/0/ja_beranis.1.jpg','ja_beranis_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (145,39,'item','ja_beranis.2.jpg','ja_beranis.2','jpg','item/0','item/0/ja_beranis.2.jpg','ja_beranis_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (146,39,'item','ja_beranis.3.jpg','ja_beranis.3','jpg','item/0','item/0/ja_beranis.3.jpg','ja_beranis_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (147,39,'item','ja_beranis.4.jpg','ja_beranis.4','jpg','item/0','item/0/ja_beranis.4.jpg','ja_beranis_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (148,39,'item','ja_beranis.5.jpg','ja_beranis.5','jpg','item/0','item/0/ja_beranis.5.jpg','ja_beranis_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (149,39,'item','ja_beranis.6.jpg','ja_beranis.6','jpg','item/0','item/0/ja_beranis.6.jpg','ja_beranis_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (150,40,'item','ja_biz.jpg','ja_biz','jpg','item/0','item/0/ja_biz.jpg','ja_biz_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (151,40,'item','ja_biz.1.jpg','ja_biz.1','jpg','item/0','item/0/ja_biz.1.jpg','ja_biz_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (152,40,'item','ja_biz.2.jpg','ja_biz.2','jpg','item/0','item/0/ja_biz.2.jpg','ja_biz_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (153,40,'item','ja_biz.3.jpg','ja_biz.3','jpg','item/0','item/0/ja_biz.3.jpg','ja_biz_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (154,40,'item','ja_biz.4.jpg','ja_biz.4','jpg','item/0','item/0/ja_biz.4.jpg','ja_biz_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (155,40,'item','ja_biz.5.jpg','ja_biz.5','jpg','item/0','item/0/ja_biz.5.jpg','ja_biz_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (156,41,'item','ja_bookshop.png','ja_bookshop','png','item/0','item/0/ja_bookshop.png','ja_bookshop_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (157,41,'item','ja_bookshop.1.png','ja_bookshop.1','png','item/0','item/0/ja_bookshop.1.png','ja_bookshop_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (158,41,'item','ja_bookshop.2.png','ja_bookshop.2','png','item/0','item/0/ja_bookshop.2.png','ja_bookshop_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (159,41,'item','ja_bookshop.3.png','ja_bookshop.3','png','item/0','item/0/ja_bookshop.3.png','ja_bookshop_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (160,41,'item','ja_bookshop.4.png','ja_bookshop.4','png','item/0','item/0/ja_bookshop.4.png','ja_bookshop_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (161,41,'item','ja_bookshop.5.png','ja_bookshop.5','png','item/0','item/0/ja_bookshop.5.png','ja_bookshop_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (162,41,'item','ja_bookshop.6.png','ja_bookshop.6','png','item/0','item/0/ja_bookshop.6.png','ja_bookshop_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (163,41,'item','ja_bookshop.7.png','ja_bookshop.7','png','item/0','item/0/ja_bookshop.7.png','ja_bookshop_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (164,41,'item','ja_bookshop.8.png','ja_bookshop.8','png','item/0','item/0/ja_bookshop.8.png','ja_bookshop_9',9,0);
INSERT INTO `mp75b_djc2_images` VALUES (165,41,'item','ja_bookshop.9.png','ja_bookshop.9','png','item/0','item/0/ja_bookshop.9.png','ja_bookshop_10',10,0);
INSERT INTO `mp75b_djc2_images` VALUES (166,42,'item','ja_brisk.jpg','ja_brisk','jpg','item/0','item/0/ja_brisk.jpg','ja_brisk_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (167,42,'item','ja_brisk.1.jpg','ja_brisk.1','jpg','item/0','item/0/ja_brisk.1.jpg','ja_brisk_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (168,42,'item','ja_brisk.2.jpg','ja_brisk.2','jpg','item/0','item/0/ja_brisk.2.jpg','ja_brisk_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (169,42,'item','ja_brisk.3.jpg','ja_brisk.3','jpg','item/0','item/0/ja_brisk.3.jpg','ja_brisk_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (170,42,'item','ja_brisk.4.jpg','ja_brisk.4','jpg','item/0','item/0/ja_brisk.4.jpg','ja_brisk_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (171,42,'item','ja_brisk.5.jpg','ja_brisk.5','jpg','item/0','item/0/ja_brisk.5.jpg','ja_brisk_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (172,42,'item','ja_brisk.6.jpg','ja_brisk.6','jpg','item/0','item/0/ja_brisk.6.jpg','ja_brisk_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (173,42,'item','ja_brisk.7.jpg','ja_brisk.7','jpg','item/0','item/0/ja_brisk.7.jpg','ja_brisk_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (174,43,'item','ja_decor.jpg','ja_decor','jpg','item/0','item/0/ja_decor.jpg','ja_decor_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (175,43,'item','ja_decor.1.jpg','ja_decor.1','jpg','item/0','item/0/ja_decor.1.jpg','ja_decor_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (176,43,'item','ja_decor.2.jpg','ja_decor.2','jpg','item/0','item/0/ja_decor.2.jpg','ja_decor_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (177,43,'item','ja_decor.3.jpg','ja_decor.3','jpg','item/0','item/0/ja_decor.3.jpg','ja_decor_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (178,43,'item','ja_decor.4.jpg','ja_decor.4','jpg','item/0','item/0/ja_decor.4.jpg','ja_decor_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (179,43,'item','ja_decor.5.jpg','ja_decor.5','jpg','item/0','item/0/ja_decor.5.jpg','ja_decor_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (180,43,'item','ja_decor.6.jpg','ja_decor.6','jpg','item/0','item/0/ja_decor.6.jpg','ja_decor_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (181,43,'item','ja_decor.7.jpg','ja_decor.7','jpg','item/0','item/0/ja_decor.7.jpg','ja_decor_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (182,43,'item','ja_decor.8.jpg','ja_decor.8','jpg','item/0','item/0/ja_decor.8.jpg','ja_decor_9',9,0);
INSERT INTO `mp75b_djc2_images` VALUES (183,43,'item','ja_decor.9.jpg','ja_decor.9','jpg','item/0','item/0/ja_decor.9.jpg','ja_decor_10',10,0);
INSERT INTO `mp75b_djc2_images` VALUES (184,44,'item','ja_fixel.jpg','ja_fixel','jpg','item/0','item/0/ja_fixel.jpg','ja_fixel_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (185,44,'item','ja_fixel.1.jpg','ja_fixel.1','jpg','item/0','item/0/ja_fixel.1.jpg','ja_fixel_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (186,44,'item','ja_fixel.2.jpg','ja_fixel.2','jpg','item/0','item/0/ja_fixel.2.jpg','ja_fixel_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (187,44,'item','ja_fixel.3.jpg','ja_fixel.3','jpg','item/0','item/0/ja_fixel.3.jpg','ja_fixel_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (188,44,'item','ja_fixel.4.jpg','ja_fixel.4','jpg','item/0','item/0/ja_fixel.4.jpg','ja_fixel_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (189,44,'item','ja_fixel.5.jpg','ja_fixel.5','jpg','item/0','item/0/ja_fixel.5.jpg','ja_fixel_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (190,44,'item','ja_fixel.6.jpg','ja_fixel.6','jpg','item/0','item/0/ja_fixel.6.jpg','ja_fixel_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (191,44,'item','ja_fixel.7.jpg','ja_fixel.7','jpg','item/0','item/0/ja_fixel.7.jpg','ja_fixel_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (192,45,'item','ja_fubix.jpg','ja_fubix','jpg','item/0','item/0/ja_fubix.jpg','ja_fubix_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (193,45,'item','ja_fubix.1.jpg','ja_fubix.1','jpg','item/0','item/0/ja_fubix.1.jpg','ja_fubix_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (194,45,'item','ja_fubix.2.jpg','ja_fubix.2','jpg','item/0','item/0/ja_fubix.2.jpg','ja_fubix_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (195,45,'item','ja_fubix.3.jpg','ja_fubix.3','jpg','item/0','item/0/ja_fubix.3.jpg','ja_fubix_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (196,45,'item','ja_fubix.4.jpg','ja_fubix.4','jpg','item/0','item/0/ja_fubix.4.jpg','ja_fubix_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (197,45,'item','ja_fubix.5.jpg','ja_fubix.5','jpg','item/0','item/0/ja_fubix.5.jpg','ja_fubix_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (198,46,'item','ja_jason.jpg','ja_jason','jpg','item/0','item/0/ja_jason.jpg','ja_jason_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (199,46,'item','ja_jason.1.jpg','ja_jason.1','jpg','item/0','item/0/ja_jason.1.jpg','ja_jason_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (200,46,'item','ja_jason.2.jpg','ja_jason.2','jpg','item/0','item/0/ja_jason.2.jpg','ja_jason_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (201,46,'item','ja_jason.3.jpg','ja_jason.3','jpg','item/0','item/0/ja_jason.3.jpg','ja_jason_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (202,46,'item','ja_jason.4.jpg','ja_jason.4','jpg','item/0','item/0/ja_jason.4.jpg','ja_jason_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (203,46,'item','ja_jason.5.jpg','ja_jason.5','jpg','item/0','item/0/ja_jason.5.jpg','ja_jason_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (204,46,'item','ja_jason.6.jpg','ja_jason.6','jpg','item/0','item/0/ja_jason.6.jpg','ja_jason_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (205,46,'item','ja_jason.7.jpg','ja_jason.7','jpg','item/0','item/0/ja_jason.7.jpg','ja_jason_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (206,46,'item','ja_jason.8.jpg','ja_jason.8','jpg','item/0','item/0/ja_jason.8.jpg','ja_jason_9',9,0);
INSERT INTO `mp75b_djc2_images` VALUES (207,47,'item','ja_magz.jpg','ja_magz','jpg','item/0','item/0/ja_magz.jpg','ja_magz_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (208,47,'item','ja_magz.1.jpg','ja_magz.1','jpg','item/0','item/0/ja_magz.1.jpg','ja_magz_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (209,47,'item','ja_magz.2.jpg','ja_magz.2','jpg','item/0','item/0/ja_magz.2.jpg','ja_magz_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (210,47,'item','ja_magz.3.jpg','ja_magz.3','jpg','item/0','item/0/ja_magz.3.jpg','ja_magz_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (211,47,'item','ja_magz.4.jpg','ja_magz.4','jpg','item/0','item/0/ja_magz.4.jpg','ja_magz_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (212,47,'item','ja_magz.5.jpg','ja_magz.5','jpg','item/0','item/0/ja_magz.5.jpg','ja_magz_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (213,47,'item','ja_magz.6.jpg','ja_magz.6','jpg','item/0','item/0/ja_magz.6.jpg','ja_magz_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (214,47,'item','ja_magz.7.jpg','ja_magz.7','jpg','item/0','item/0/ja_magz.7.jpg','ja_magz_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (215,48,'item','ja_medicare.jpg','ja_medicare','jpg','item/0','item/0/ja_medicare.jpg','ja_medicare_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (216,48,'item','ja_medicare.1.jpg','ja_medicare.1','jpg','item/0','item/0/ja_medicare.1.jpg','ja_medicare_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (217,48,'item','ja_medicare.2.jpg','ja_medicare.2','jpg','item/0','item/0/ja_medicare.2.jpg','ja_medicare_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (218,48,'item','ja_medicare.3.jpg','ja_medicare.3','jpg','item/0','item/0/ja_medicare.3.jpg','ja_medicare_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (219,48,'item','ja_medicare.4.jpg','ja_medicare.4','jpg','item/0','item/0/ja_medicare.4.jpg','ja_medicare_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (220,48,'item','ja_medicare.5.jpg','ja_medicare.5','jpg','item/0','item/0/ja_medicare.5.jpg','ja_medicare_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (221,48,'item','ja_medicare.6.jpg','ja_medicare.6','jpg','item/0','item/0/ja_medicare.6.jpg','ja_medicare_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (222,48,'item','ja_medicare.7.jpg','ja_medicare.7','jpg','item/0','item/0/ja_medicare.7.jpg','ja_medicare_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (223,48,'item','ja_medicare.8.jpg','ja_medicare.8','jpg','item/0','item/0/ja_medicare.8.jpg','ja_medicare_9',9,0);
INSERT INTO `mp75b_djc2_images` VALUES (224,48,'item','ja_medicare.9.jpg','ja_medicare.9','jpg','item/0','item/0/ja_medicare.9.jpg','ja_medicare_10',10,0);
INSERT INTO `mp75b_djc2_images` VALUES (225,48,'item','ja_medicare.10.jpg','ja_medicare.10','jpg','item/0','item/0/ja_medicare.10.jpg','ja_medicare_11',11,0);
INSERT INTO `mp75b_djc2_images` VALUES (226,49,'item','ja_mero.jpg','ja_mero','jpg','item/0','item/0/ja_mero.jpg','ja_mero_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (227,49,'item','ja_mero.1.jpg','ja_mero.1','jpg','item/0','item/0/ja_mero.1.jpg','ja_mero_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (228,49,'item','ja_mero.2.jpg','ja_mero.2','jpg','item/0','item/0/ja_mero.2.jpg','ja_mero_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (229,49,'item','ja_mero.3.jpg','ja_mero.3','jpg','item/0','item/0/ja_mero.3.jpg','ja_mero_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (230,49,'item','ja_mero.4.jpg','ja_mero.4','jpg','item/0','item/0/ja_mero.4.jpg','ja_mero_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (231,49,'item','ja_mero.5.jpg','ja_mero.5','jpg','item/0','item/0/ja_mero.5.jpg','ja_mero_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (232,50,'item','ja_mitius.jpg','ja_mitius','jpg','item/0','item/0/ja_mitius.jpg','ja_mitius_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (233,50,'item','ja_mitius.1.jpg','ja_mitius.1','jpg','item/0','item/0/ja_mitius.1.jpg','ja_mitius_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (234,50,'item','ja_mitius.2.jpg','ja_mitius.2','jpg','item/0','item/0/ja_mitius.2.jpg','ja_mitius_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (235,50,'item','ja_mitius.3.jpg','ja_mitius.3','jpg','item/0','item/0/ja_mitius.3.jpg','ja_mitius_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (236,50,'item','ja_mitius.4.jpg','ja_mitius.4','jpg','item/0','item/0/ja_mitius.4.jpg','ja_mitius_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (237,51,'item','ja_muzic.jpg','ja_muzic','jpg','item/0','item/0/ja_muzic.jpg','ja_muzic_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (238,51,'item','ja_muzic.1.jpg','ja_muzic.1','jpg','item/0','item/0/ja_muzic.1.jpg','ja_muzic_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (239,51,'item','ja_muzic.2.jpg','ja_muzic.2','jpg','item/0','item/0/ja_muzic.2.jpg','ja_muzic_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (240,51,'item','ja_muzic.3.jpg','ja_muzic.3','jpg','item/0','item/0/ja_muzic.3.jpg','ja_muzic_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (241,51,'item','ja_muzic.4.jpg','ja_muzic.4','jpg','item/0','item/0/ja_muzic.4.jpg','ja_muzic_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (242,51,'item','ja_muzic.5.jpg','ja_muzic.5','jpg','item/0','item/0/ja_muzic.5.jpg','ja_muzic_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (243,51,'item','ja_muzic.6.jpg','ja_muzic.6','jpg','item/0','item/0/ja_muzic.6.jpg','ja_muzic_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (244,51,'item','ja_muzic.7.jpg','ja_muzic.7','jpg','item/0','item/0/ja_muzic.7.jpg','ja_muzic_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (245,52,'item','ja_nex.jpg','ja_nex','jpg','item/0','item/0/ja_nex.jpg','ja_nex_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (246,52,'item','ja_nex.1.jpg','ja_nex.1','jpg','item/0','item/0/ja_nex.1.jpg','ja_nex_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (247,52,'item','ja_nex.2.jpg','ja_nex.2','jpg','item/0','item/0/ja_nex.2.jpg','ja_nex_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (248,52,'item','ja_nex.3.jpg','ja_nex.3','jpg','item/0','item/0/ja_nex.3.jpg','ja_nex_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (249,52,'item','ja_nex.4.jpg','ja_nex.4','jpg','item/0','item/0/ja_nex.4.jpg','ja_nex_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (250,52,'item','ja_nex.5.jpg','ja_nex.5','jpg','item/0','item/0/ja_nex.5.jpg','ja_nex_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (251,52,'item','ja_nex.6.jpg','ja_nex.6','jpg','item/0','item/0/ja_nex.6.jpg','ja_nex_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (252,53,'item','ja_nuevo.jpg','ja_nuevo','jpg','item/0','item/0/ja_nuevo.jpg','ja_nuevo_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (253,53,'item','ja_nuevo.1.jpg','ja_nuevo.1','jpg','item/0','item/0/ja_nuevo.1.jpg','ja_nuevo_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (254,53,'item','ja_nuevo.2.jpg','ja_nuevo.2','jpg','item/0','item/0/ja_nuevo.2.jpg','ja_nuevo_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (255,53,'item','ja_nuevo.3.jpg','ja_nuevo.3','jpg','item/0','item/0/ja_nuevo.3.jpg','ja_nuevo_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (256,53,'item','ja_nuevo.4.jpg','ja_nuevo.4','jpg','item/0','item/0/ja_nuevo.4.jpg','ja_nuevo_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (257,53,'item','ja_nuevo.5.jpg','ja_nuevo.5','jpg','item/0','item/0/ja_nuevo.5.jpg','ja_nuevo_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (258,53,'item','ja_nuevo.6.jpg','ja_nuevo.6','jpg','item/0','item/0/ja_nuevo.6.jpg','ja_nuevo_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (259,53,'item','ja_nuevo.7.jpg','ja_nuevo.7','jpg','item/0','item/0/ja_nuevo.7.jpg','ja_nuevo_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (260,54,'item','ja_obelisk.jpg','ja_obelisk','jpg','item/0','item/0/ja_obelisk.jpg','ja_obelisk_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (261,54,'item','ja_obelisk.1.jpg','ja_obelisk.1','jpg','item/0','item/0/ja_obelisk.1.jpg','ja_obelisk_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (262,54,'item','ja_obelisk.2.jpg','ja_obelisk.2','jpg','item/0','item/0/ja_obelisk.2.jpg','ja_obelisk_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (263,54,'item','ja_obelisk.3.jpg','ja_obelisk.3','jpg','item/0','item/0/ja_obelisk.3.jpg','ja_obelisk_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (264,54,'item','ja_obelisk.4.jpg','ja_obelisk.4','jpg','item/0','item/0/ja_obelisk.4.jpg','ja_obelisk_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (265,54,'item','ja_obelisk.5.jpg','ja_obelisk.5','jpg','item/0','item/0/ja_obelisk.5.jpg','ja_obelisk_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (266,54,'item','ja_obelisk.6.jpg','ja_obelisk.6','jpg','item/0','item/0/ja_obelisk.6.jpg','ja_obelisk_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (267,55,'item','ja_onepage.jpg','ja_onepage','jpg','item/0','item/0/ja_onepage.jpg','ja_onepage_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (268,55,'item','ja_onepage.1.jpg','ja_onepage.1','jpg','item/0','item/0/ja_onepage.1.jpg','ja_onepage_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (269,55,'item','ja_onepage.2.jpg','ja_onepage.2','jpg','item/0','item/0/ja_onepage.2.jpg','ja_onepage_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (270,55,'item','ja_onepage.3.jpg','ja_onepage.3','jpg','item/0','item/0/ja_onepage.3.jpg','ja_onepage_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (271,55,'item','ja_onepage.4.jpg','ja_onepage.4','jpg','item/0','item/0/ja_onepage.4.jpg','ja_onepage_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (272,55,'item','ja_onepage.5.jpg','ja_onepage.5','jpg','item/0','item/0/ja_onepage.5.jpg','ja_onepage_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (273,56,'item','ja_playmag.jpg','ja_playmag','jpg','item/0','item/0/ja_playmag.jpg','ja_playmag_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (274,56,'item','ja_playmag.1.jpg','ja_playmag.1','jpg','item/0','item/0/ja_playmag.1.jpg','ja_playmag_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (275,56,'item','ja_playmag.2.jpg','ja_playmag.2','jpg','item/0','item/0/ja_playmag.2.jpg','ja_playmag_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (276,56,'item','ja_playmag.3.jpg','ja_playmag.3','jpg','item/0','item/0/ja_playmag.3.jpg','ja_playmag_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (277,56,'item','ja_playmag.4.jpg','ja_playmag.4','jpg','item/0','item/0/ja_playmag.4.jpg','ja_playmag_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (278,56,'item','ja_playmag.5.jpg','ja_playmag.5','jpg','item/0','item/0/ja_playmag.5.jpg','ja_playmag_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (279,56,'item','ja_playmag.6.jpg','ja_playmag.6','jpg','item/0','item/0/ja_playmag.6.jpg','ja_playmag_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (280,56,'item','ja_playmag.7.jpg','ja_playmag.7','jpg','item/0','item/0/ja_playmag.7.jpg','ja_playmag_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (281,56,'item','ja_playmag.8.jpg','ja_playmag.8','jpg','item/0','item/0/ja_playmag.8.jpg','ja_playmag_9',9,0);
INSERT INTO `mp75b_djc2_images` VALUES (282,56,'item','ja_playmag.9.jpg','ja_playmag.9','jpg','item/0','item/0/ja_playmag.9.jpg','ja_playmag_10',10,0);
INSERT INTO `mp75b_djc2_images` VALUES (283,57,'item','ja_smashboard.png','ja_smashboard','png','item/0','item/0/ja_smashboard.png','ja_smashboard_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (284,57,'item','ja_smashboard.1.png','ja_smashboard.1','png','item/0','item/0/ja_smashboard.1.png','ja_smashboard_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (285,57,'item','ja_smashboard.2.png','ja_smashboard.2','png','item/0','item/0/ja_smashboard.2.png','ja_smashboard_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (286,57,'item','ja_smashboard.3.png','ja_smashboard.3','png','item/0','item/0/ja_smashboard.3.png','ja_smashboard_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (287,57,'item','ja_smashboard.4.png','ja_smashboard.4','png','item/0','item/0/ja_smashboard.4.png','ja_smashboard_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (288,57,'item','ja_smashboard.5.png','ja_smashboard.5','png','item/0','item/0/ja_smashboard.5.png','ja_smashboard_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (289,57,'item','ja_smashboard.6.png','ja_smashboard.6','png','item/0','item/0/ja_smashboard.6.png','ja_smashboard_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (290,57,'item','ja_smashboard.7.png','ja_smashboard.7','png','item/0','item/0/ja_smashboard.7.png','ja_smashboard_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (291,57,'item','ja_smashboard.8.png','ja_smashboard.8','png','item/0','item/0/ja_smashboard.8.png','ja_smashboard_9',9,0);
INSERT INTO `mp75b_djc2_images` VALUES (292,58,'item','ja_sugite.jpg','ja_sugite','jpg','item/0','item/0/ja_sugite.jpg','ja_sugite_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (293,58,'item','ja_sugite.1.jpg','ja_sugite.1','jpg','item/0','item/0/ja_sugite.1.jpg','ja_sugite_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (294,58,'item','ja_sugite.2.jpg','ja_sugite.2','jpg','item/0','item/0/ja_sugite.2.jpg','ja_sugite_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (295,58,'item','ja_sugite.3.jpg','ja_sugite.3','jpg','item/0','item/0/ja_sugite.3.jpg','ja_sugite_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (296,58,'item','ja_sugite.4.jpg','ja_sugite.4','jpg','item/0','item/0/ja_sugite.4.jpg','ja_sugite_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (297,58,'item','ja_sugite.5.jpg','ja_sugite.5','jpg','item/0','item/0/ja_sugite.5.jpg','ja_sugite_7',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (298,58,'item','ja_sugite.6.jpg','ja_sugite.6','jpg','item/0','item/0/ja_sugite.6.jpg','ja_sugite_8',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (299,58,'item','ja_sugite.7.jpg','ja_sugite.7','jpg','item/0','item/0/ja_sugite.7.jpg','ja_sugite_9',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (300,58,'item','ja_sugite.8.jpg','ja_sugite.8','jpg','item/0','item/0/ja_sugite.8.jpg','ja_sugite_10',9,0);
INSERT INTO `mp75b_djc2_images` VALUES (301,58,'item','ja_sugite.9.jpg','ja_sugite.9','jpg','item/0','item/0/ja_sugite.9.jpg','ja_sugite_11',10,0);
INSERT INTO `mp75b_djc2_images` VALUES (302,58,'item','ja_sugite.10.jpg','ja_sugite.10','jpg','item/0','item/0/ja_sugite.10.jpg','ja_sugite_12',11,0);
INSERT INTO `mp75b_djc2_images` VALUES (303,58,'item','ja_sugite.11.jpg','ja_sugite.11','jpg','item/0','item/0/ja_sugite.11.jpg','ja_sugite_36',12,0);
INSERT INTO `mp75b_djc2_images` VALUES (304,59,'item','ja_university.jpg','ja_university','jpg','item/0','item/0/ja_university.jpg','ja_university_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (305,59,'item','ja_university.1.jpg','ja_university.1','jpg','item/0','item/0/ja_university.1.jpg','ja_university_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (306,59,'item','ja_university.2.jpg','ja_university.2','jpg','item/0','item/0/ja_university.2.jpg','ja_university_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (307,59,'item','ja_university.3.jpg','ja_university.3','jpg','item/0','item/0/ja_university.3.jpg','ja_university_4',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (308,59,'item','ja_university.4.jpg','ja_university.4','jpg','item/0','item/0/ja_university.4.jpg','ja_university_5',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (309,59,'item','ja_university.5.jpg','ja_university.5','jpg','item/0','item/0/ja_university.5.jpg','ja_university_6',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (310,59,'item','ja_university.6.jpg','ja_university.6','jpg','item/0','item/0/ja_university.6.jpg','ja_university_7',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (311,59,'item','ja_university.7.jpg','ja_university.7','jpg','item/0','item/0/ja_university.7.jpg','ja_university_8',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (312,59,'item','ja_university.8.jpg','ja_university.8','jpg','item/0','item/0/ja_university.8.jpg','ja_university_9',9,0);
INSERT INTO `mp75b_djc2_images` VALUES (313,59,'item','ja_university.9.jpg','ja_university.9','jpg','item/0','item/0/ja_university.9.jpg','ja_university_10',10,0);
INSERT INTO `mp75b_djc2_images` VALUES (314,60,'item','ja_wall.jpg','ja_wall','jpg','item/0','item/0/ja_wall.jpg','ja_wall_1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (315,60,'item','ja_wall.1.jpg','ja_wall.1','jpg','item/0','item/0/ja_wall.1.jpg','ja_wall_2',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (316,60,'item','ja_wall.2.jpg','ja_wall.2','jpg','item/0','item/0/ja_wall.2.jpg','ja_wall_3',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (321,64,'item','ja_hotel.1.jpg','ja_hotel.1','jpg','item/0','item/0/ja_hotel.1.jpg','ja_hotel_2',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (320,64,'item','ja_hotel.jpg','ja_hotel','jpg','item/0','item/0/ja_hotel.jpg','ja_hotel_1',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (322,64,'item','ja_hotel.2.jpg','ja_hotel.2','jpg','item/0','item/0/ja_hotel.2.jpg','ja_hotel_3',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (323,64,'item','ja_hotel.3.jpg','ja_hotel.3','jpg','item/0','item/0/ja_hotel.3.jpg','ja_hotel_4',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (324,64,'item','ja_hotel.4.jpg','ja_hotel.4','jpg','item/0','item/0/ja_hotel.4.jpg','ja_hotel_5',6,0);
INSERT INTO `mp75b_djc2_images` VALUES (325,64,'item','ja_hotel.5.jpg','ja_hotel.5','jpg','item/0','item/0/ja_hotel.5.jpg','ja_hotel_6',7,0);
INSERT INTO `mp75b_djc2_images` VALUES (326,64,'item','ja_hotel.6.jpg','ja_hotel.6','jpg','item/0','item/0/ja_hotel.6.jpg','ja_hotel_7',8,0);
INSERT INTO `mp75b_djc2_images` VALUES (327,64,'item','ja_hotel.png','ja_hotel','png','item/0','item/0/ja_hotel.png','ja_hotel',1,0);
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items`

DROP TABLE IF EXISTS `mp75b_djc2_items`;
CREATE TABLE `mp75b_djc2_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `producer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` mediumtext,
  `intro_desc` text,
  `price` decimal(12,2) DEFAULT NULL,
  `special_price` decimal(12,2) DEFAULT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `available` int(11) NOT NULL DEFAULT '0',
  `metatitle` varchar(255) DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `published` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_cat_id` (`cat_id`),
  KEY `idx_group_id` (`group_id`),
  KEY `idx_producer_id` (`producer_id`),
  KEY `idx_published` (`published`),
  KEY `idx_featured` (`featured`),
  KEY `idx_created_by` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items`

LOCK TABLES `mp75b_djc2_items` WRITE;
INSERT INTO `mp75b_djc2_items` VALUES (2,0,2,1,'gk_appsprotech','gk-appsprotech','<p>充滿活力的畫面，乾淨、明亮的 <strong>網站版型設計</strong> 風格，</p>\r\n<p>可以很突出主要賣點的清晰網頁頁面。</p>\r\n<p>豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，</p>\r\n<p>開發新一代網站體驗，從 <strong>網站架構</strong>、使用流程規劃，</p>\r\n<p>到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，</p>\r\n<p>企業應用最有效的管理，帶給使用者流暢的使用經驗。</p>','','0.00','0.00',0,1,'gk_appsprotech','appsprotech, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理','充滿活力的畫面，乾淨、明亮的 網站版型設計 風格，可以很突出主要賣點的清晰網頁頁面。豐富而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗，從 網站架構、使用流程規劃，到專業文案撰寫、視覺設計 與 版型介面設計，企業應用最有效的管理，帶給使用者流暢的使用經驗。',1,1,0,32,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:24:52',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (3,0,2,1,'gk_bikestore','gk-bikestore','<p>自行車商店展示 <strong>網站版型</strong>，獨特的線上展示模板能完美呈現客戶的購物需求，</p>\r\n<p>能充分展現出您的產品的特色及吸引力，非常適合大型商家的 <strong>網站經營</strong>，</p>\r\n<p>簡單易上手的 <strong>購物車網站版型</strong>，支援明確易分類的零售商資訊內容，</p>\r\n<p>豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>大量改善客戶體驗的選擇和輕鬆管理您的購物商店。</p>','','0.00','0.00',0,1,'gk_bikestore','bike store, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 購物車系統, 網路商店, 產品展示','自行車商店展示 網站版型，獨特的線上展示模板能完美呈現客戶的購物需求，能充分展現出您的產品的特色及吸引力，非常適合大型商家的 網站經營，簡單易上手的 購物車網站版型，支援明確易分類的零售商資訊內容，豐富而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗，大量改善客戶體驗的選擇和輕鬆管理您的購物商店。',1,2,0,34,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:29:13',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (4,0,2,1,'gk_bluap','gk-bluap','<p>時尚的主題軟件或應用程序開發應用的 <strong>網站版型設計</strong>，完美顯示您的主題項目。</p>\r\n<p>設計簡潔響應乾淨背景下襯托出的產品之美，網頁畫面同時可在 <strong>電腦、平板和手機 </strong>等各式大小的 <strong>屏幕尺寸縮放</strong>。</p>\r\n<p>顏色和字體的多樣選擇可讓您創造出屬於自己的獨特 <strong>網站設計</strong> 風格，</p>\r\n<p>簡單易上手的 <strong>網站版型</strong>，明確易分類的資訊內容，</p>\r\n<p>快速發布消息及瀏覽資訊的 網站頁面，適合社交圈廣且喜愛分享事物的您。</p>','','0.00','0.00',0,1,'gk_bluap','bluap, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 產品展示','時尚的主題軟件或應用程序開發應用的 網站版型設計，完美顯示您的主題項目。設計簡潔響應乾淨背景下襯托出的產品之美，網頁畫面同時可在 電腦、平板和手機 等各式大小的 屏幕尺寸縮放。顏色和字體的多樣選擇可讓您創造出屬於自己的獨特 網站設計 風格，簡單易上手的 網站版型，明確易分類的資訊內容，快速發布消息及瀏覽資訊的 網站頁面，適合社交圈廣且喜愛分享事物的您。',1,3,0,15,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:29:57',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (5,0,2,1,'gk_boutique','gk-boutique','<p>這個 <strong>網站版型設計</strong> 是結合了電子商務和資訊消息的網站，</p>\r\n<p>為促進您的業務留下令人印象深刻的新思路最佳元素，</p>\r\n<p>基於網路的頭版提供連結文章或產品，使客戶可以閱讀或購買您的電子商務內容，</p>\r\n<p>支援明確易分類的零售商資訊內容，豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，</p>\r\n<p>開發新一代網站體驗，給您多種選擇的銷售管理流程系統。</p>','','0.00','0.00',0,1,'gk_boutique','boutique, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 電子商務, 頭版資訊消息, 銷售管理流程系統','這個 網站版型設計 是結合了電子商務和資訊消息的網站，為促進您的業務留下令人印象深刻的新思路最佳元素，基於網路的頭版提供連結文章或產品，使客戶可以閱讀或購買您的電子商務內容，支援明確易分類的零售商資訊內容，豐富而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗，給您多種選擇的銷售管理流程系統。',1,4,0,12,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:30:26',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (6,0,2,1,'gk_cloudhost','gk-cloudhost','<p>互聯網主機或通訊類科技公司的 <strong>網頁版型設計</strong>，提供了一個乾淨的 <strong>版面設計</strong>，</p>\r\n<p>適合介紹您的服務項目內容以及詳細豐富的價格表，</p>\r\n<p>常見問題解答和技術支持的網頁和語法，通過NSP模組顯示的文章，</p>\r\n<p>可以讓您與您的客戶群之間快速建立良好的合作互助橋梁。</p>','','0.00','0.00',0,1,'gk_cloudhost','cloudhost, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理','互聯網主機或通訊類科技公司的 網頁版型設計，提供了一個乾淨的 版面設計，適合介紹您的服務項目內容以及詳細豐富的價格表，常見問題解答和技術支持的網頁和語法，通過NSP模組顯示的文章，可以讓您與您的客戶群之間快速建立良好的合作互助橋梁。',1,5,0,15,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:31:22',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (7,0,2,1,'gk_creative','gk-creative','<p>如果您是一個設計師、顧問或其他服務業，這個 <strong>網頁版型設計</strong> 提供豐富而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>獨特的美感設計動畫將推動您的品牌優勢，可點擊變色圖標上所提供的更多信息，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，令人無法忘懷的第一印象，</p>\r\n<p>使您從人群中脫穎而出的創意 <strong>網站設計</strong>！</p>','','0.00','0.00',0,1,'gk_creative','creative, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 品牌優勢, 網站前端, 網站後端, 後台管理','如果您是一個設計師、顧問或其他服務業，這個 網頁版型設計 提供豐富而視覺導向的 介面設計，獨特的美感設計動畫將推動您的品牌優勢，可點擊變色圖標上所提供的更多信息，脫離傳統框架，開發新一代網站體驗，令人無法忘懷的第一印象，使您從人群中脫穎而出的創意 網站設計！',1,6,0,12,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:32:02',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (8,0,2,1,'gk_creativity','gk-creativity','<p>以攝影創造力為主題所設計出的攝影 <strong>網站設計</strong>，</p>\r\n<p>非常適合攝影師或藝術家創造互聯網的一個創作小天地。</p>\r\n<p>具有功能模組特別適用於圖片或相片集，可與圖像、圖標和文字與動畫進行設定，</p>\r\n<p>簡單易上手的 <strong>網站版型</strong>，明確易分類的資訊內容，快速發布消息及分享圖片和創作，</p>\r\n<p>適合天馬行空、想像力豐富、極具創意的您！</p>','','0.00','0.00',0,1,'gk_creativity','creativity, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 個人網站, 相簿網站, 創意網站','以攝影創造力為主題所設計出的攝影 網站設計，非常適合攝影師或藝術家創造互聯網的一個創作小天地。具有功能模組特別適用於圖片或相片集，可與圖像、圖標和文字與動畫進行設定，簡單易上手的 網站版型，明確易分類的資訊內容，快速發布消息及分享圖片和創作，適合天馬行空、想像力豐富、極具創意的您！',1,7,0,18,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:32:36',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (9,0,2,1,'gk_esport','gk-esport','<p>大型運動用品的 <strong>購物網站版型設計</strong>，以冬季運動的產品為主題，</p>\r\n<p>正好適合冬季檔賣家尋找以拓展業務。支援明確易分類的零售商資訊內容，</p>\r\n<p>對各項產品的管理操作和數量龐大且突出的頭版來吸引顧客的購物慾。</p>\r\n<p>更重要的是，購物車系統功能可以覆蓋即時更新，</p>\r\n<p>豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，開發新一代網站體驗！</p>','','0.00','0.00',0,1,'gk_esport','esport, store, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 購物車系統, 網路商店, 產品展示','大型運動用品的 購物網站版型設計，以冬季運動的產品為主題，正好適合冬季檔賣家尋找以拓展業務。支援明確易分類的零售商資訊內容，對各項產品的管理操作和數量龐大且突出的頭版來吸引顧客的購物慾。更重要的是，購物車系統功能可以覆蓋即時更新，豐富而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗！',1,8,0,16,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:33:18',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (10,0,2,1,'gk_events','gk-events','<p>為活動會議開發的 <strong>網站版型設計</strong>，功能強大、精心設計的輕型，</p>\r\n<p>從 <strong>網站架構</strong>、使用流程規劃，到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，</p>\r\n<p>帶給使用者流暢的使用經驗。這個 <strong>活動網站</strong> 的主題可以很容易的宣傳您的各種活動，</p>\r\n<p>無論它是一個漫長的培訓計劃、簡單的商務會議、大規模的音樂活動或安靜的私人聚會，</p>\r\n<p>只要便攜功能，您就可以擁有一個全功能的 <strong>活動官方網站</strong>。</p>','','0.00','0.00',0,1,'gk_events','events, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 活動官方網站','為活動會議開發的 網站版型設計，功能強大、精心設計的輕型，從 網站架構、使用流程規劃，到專業文案撰寫、視覺設計 與 版型介面設計，帶給使用者流暢的使用經驗。這個 活動網站 的主題可以很容易的宣傳您的各種活動，無論它是一個漫長的培訓計劃、簡單的商務會議、大規模的音樂活動或安靜的私人聚會，只要便攜功能，您就可以擁有一個全功能的 活動官方網站。',1,9,0,16,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:34:02',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (11,0,2,1,'gk_fashion','gk-fashion','<p>時尚風格為主題的<strong> 網站版型設計</strong>，我們提供了一個能引領潮流的動畫響應設計，</p>\r\n<p>絢麗的時尚追隨者可使用的全新樣式。別緻的佈局 <strong>bounce 動畫效果</strong> 以適應各種屏幕尺寸，</p>\r\n<p>擁有特別的 <strong>bounce 動畫效果</strong> 可以打動你的讀者。</p>\r\n<p>每個區域都可以配置為您想要呈現的內容，以確保您的最好的作品內容被大眾看到。</p>','','0.00','0.00',0,1,'gk_fashion','fashion, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, bounce動畫效果','時尚風格為主題的 網站版型設計，我們提供了一個能引領潮流的動畫響應設計，絢麗的時尚追隨者可使用的全新樣式。別緻的佈局 bounce 動畫效果 以適應各種屏幕尺寸，擁有特別的 bounce 動畫效果 可以打動你的讀者。每個區域都可以配置為您想要呈現的內容，以確保您的最好的作品內容被大眾看到。',1,10,0,17,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:34:36',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (12,0,2,1,'gk_fest','gk-fest','<p>明星音樂活動為主題的 <strong>網站版型設計</strong>，驚人的顯眼主題和推廣活動功能 ，</p>\r\n<p>包括活動、會議研討和展覽，以及日程表頁面和倒數計時功能，</p>\r\n<p>使瀏覽者都能清楚知道您的活動在哪個時間點揭開序幕，</p>\r\n<p>簡單易上手的 <strong>網站版型</strong>，明確易分類的資訊內容，</p>\r\n<p>快速發布消息及分享影片、瀏覽資訊的 <strong>活動官方網站</strong>。</p>','','0.00','0.00',0,1,'gk_fest','fest, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 活動官方網站','明星音樂活動為主題的 網站版型設計，驚人的顯眼主題和推廣活動功能 ，包括活動、會議研討和展覽，以及日程表頁面和倒數計時功能，使瀏覽者都能清楚知道您的活動在哪個時間點揭開序幕，簡單易上手的 網站版型，明確易分類的資訊內容，快速發布消息及分享影片、瀏覽資訊的 活動官方網站。',1,11,0,18,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:35:09',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (13,0,2,1,'gk_game','gk-game','<p>以遊戲為主題的 <strong>網站版型設計</strong>，展現出您開發獲得成功的遊戲相關內容或技術主題與特色介紹，</p>\r\n<p>可用文章篇幅、截取遊戲畫面的圖片或視頻，詳細介紹可以容納所有媒體技術層面的需求，</p>\r\n<p>配備了專業的審美及豐富而視覺導向的<strong> 介面設計</strong>，脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗的 <strong>遊戲官方網站</strong>。</p>','','0.00','0.00',0,1,'gk_game','game, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 遊戲官方網站','以遊戲為主題的 網站版型設計，展現出您開發獲得成功的遊戲相關內容或技術主題與特色介紹，可用文章篇幅、截取遊戲畫面的圖片或視頻，詳細介紹可以容納所有媒體技術層面的需求，配備了專業的審美及豐富而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗的 遊戲官方網站。',1,12,0,19,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:35:56',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (14,0,2,1,'gk_game','gk-game-magazine','<p>以遊戲為主題的 <strong>網站版型設計</strong>，展現出您開發獲得成功的遊戲相關內容或技術主題與特色介紹，</p>\r\n<p>可用文章篇幅、截取遊戲畫面的圖片或視頻，詳細介紹可以容納所有媒體技術層面的需求，</p>\r\n<p>配備了專業的審美及豐富而視覺導向的<strong> 介面設計</strong>，脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗的 <strong>遊戲官方網站</strong>。</p>','','0.00','0.00',0,1,'gk_game','game, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 遊戲官方網站','以遊戲為主題的 網站版型設計，展現出您開發獲得成功的遊戲相關內容或技術主題與特色介紹，可用文章篇幅、截取遊戲畫面的圖片或視頻，詳細介紹可以容納所有媒體技術層面的需求，配備了專業的審美及豐富而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗的 遊戲官方網站。',1,13,0,20,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:36:41',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (15,0,2,1,'gk_gamenews','gk-gamenews','<p>以發佈遊戲最新消息為主題的 <strong>網站版型設計</strong>，</p>\r\n<p>展現出您開發獲得成功的遊戲相關內容或技術主題與特色介紹，</p>\r\n<p>可用文章篇幅、截取遊戲畫面的圖片或視頻，詳細介紹可以容納所有媒體技術層面的需求，</p>\r\n<p>配備了專業的審美及豐富而視覺導向的<strong> 介面設計</strong>，脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗的 <strong>遊戲官方網站</strong>。</p>','','0.00','0.00',0,1,'gk_gamenews','game, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 遊戲官方網站','以發佈遊戲最新消息為主題的 網站版型設計，展現出您開發獲得成功的遊戲相關內容或技術主題與特色介紹，可用文章篇幅、截取遊戲畫面的圖片或視頻，詳細介紹可以容納所有媒體技術層面的需求，配備了專業的審美及豐富而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗，讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗的 遊戲官方網站。',1,14,0,14,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:37:30',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (16,0,2,1,'gk_instyle','gk-instyle','<p>服飾商店展示 <strong>網站版型</strong>，獨特的線上展示模板能完美呈現客戶的購物需求，</p>\r\n<p>能充分展現出您的產品的特色及吸引力，簡單易上手的 <strong>購物車網站版型</strong>，</p>\r\n<p>支援明確易分類的零售商資訊內容，優雅豐富而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>大量改善客戶體驗的選擇和輕鬆管理您的購物商店。</p>','','0.00','0.00',0,1,'gk_instyle','instyle, store, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 購物車系統, 網路商店, 產品展示','服飾商店展示網站版型，獨特的線上展示模板能完美呈現客戶的購物需求，能充分展現出您的產品的特色及吸引力，簡單易上手的 購物車網站版型，支援明確易分類的零售商資訊內容，優雅豐富而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，大量改善客戶體驗的選擇和輕鬆管理您的購物商店。',1,15,0,15,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:38:00',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (17,0,2,1,'gk_john','gk-john-s','<p>介紹您自己或您的個人工作室企業走向世界的 <strong>網站版型設計</strong>，</p>\r\n<p>響應主題有設計師、自由職業者等創作式 <strong>個人網站</strong>。</p>\r\n<p>令人驚嘆的動畫展示功能，簡單易上手的 <strong>網站版型</strong>，</p>\r\n<p>明確易分類的資訊內容，豐富而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>表現出一個充滿活力的 <strong>設計公司網站</strong>。</p>','','0.00','0.00',0,1,'gk_john','john, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 個人網站, 設計公司網站','介紹您自己或您的個人工作室企業走向世界的 網站版型設計，響應主題有設計師、自由職業者等創作式 個人網站。令人驚嘆的動畫展示功能，簡單易上手的 網站版型，明確易分類的資訊內容，豐富而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗，表現出一個充滿活力的設計公司網站。',1,16,0,23,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:39:10',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (18,0,2,1,'gk_league_news','gk-league-news','<p>以體育新聞類為主題的 <strong>網站版型設計</strong>，提供最新的體育新聞主題，</p>\r\n<p>簡易的套件功能，使管理您的網站變得輕而易舉。</p>\r\n<p>可將重要或最新消息著重添加在頭版上吸引多人瀏覽，</p>\r\n<p>文章分類及詳細內容的完美設定，評論和突發新聞等功能都能得到最有效的管理，</p>\r\n<p>促進您廣泛的獲取或分享各項社交媒體資訊。</p>','','0.00','0.00',0,1,'gk_league_news','league news, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 頭版資訊消息, 新聞網站','以體育新聞類為主題的 網站版型設計，提供最新的體育新聞主題，簡易的套件功能，使管理您的網站變得輕而易舉。可將重要或最新消息著重添加在頭版上吸引多人瀏覽，文章分類及詳細內容的完美設定，評論和突發新聞等功能都能得到最有效的管理，促進您廣泛的獲取或分享各項社交媒體資訊。',1,17,0,18,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:41:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (19,0,2,1,'gk_magazine','gk-magazine','<p>刊登雜誌或其他資訊內容的 <strong>部落格式網站版型設計</strong>，</p>\r\n<p>打造現代風格的 <strong>部落格網站</strong>，</p>\r\n<p>支援頭版單一文章功能和精選文章等多樣功能，</p>\r\n<p>側邊欄位的分類選單和底部的文章鏈接都可以方便快速的瀏覽您整個網站，</p>\r\n<p>簡單易上手的 <strong>網站版型</strong>，明確易分類的資訊內容。</p>\r\n<p>快速發布消息及分享影片、瀏覽資訊的 <strong>網站版型</strong>，</p>\r\n<p>適合社交圈廣且喜愛分享事物的您！</p>','','0.00','0.00',0,1,'gk_magazine','magazine, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 頭版資訊消息, 部落格式網站','刊登雜誌或其他資訊內容的 部落格式網站版型設計，打造現代風格的部落格網站，支援頭版單一文章功能和精選文章等多樣功能，側邊欄位的分類選單和底部的文章鏈接都可以方便快速的瀏覽您整個網站，簡單易上手的 網站版型，明確易分類的資訊內容。快速發布消息及分享影片、瀏覽資訊的 網站版型，適合社交圈廣且喜愛分享事物的您！',1,18,0,14,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:44:24',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (20,0,2,1,'gk_meet_gavern','gk-meet-gavern','<p>充滿活力的畫面，乾淨、明亮的 <strong>網站版型設計</strong> 風格，</p>\r\n<p>可以很突出主要賣點的清晰網頁頁面。豐富而視覺導向的 <em>介面設計</em>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，</p>\r\n<p>到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，</p>\r\n<p>企業應用最有效的管理，帶給使用者流暢的使用經驗。</p>','','0.00','0.00',0,1,'gk_meet_gavern','meet gavern, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理','充滿活力的畫面，乾淨、明亮的 網站版型設計 風格，可以很突出主要賣點的清晰網頁頁面。豐富而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計與版型介面設計，企業應用最有效的管理，帶給使用者流暢的使用經驗。',1,19,0,20,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:44:50',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (21,0,2,1,'gk_mo','gk-mo','<p>適用於您的手機、平板和電腦的APP應用程序式的 <strong>網站版型設計</strong>，</p>\r\n<p>重量輕、簡易響應主題，精美的作品在所有的設備的各種屏幕尺寸下，</p>\r\n<p>充分展現出您的產品的特色及吸引力，豐富而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，讓每件作品都能得到最有效的管理，</p>\r\n<p>帶給使用者流暢的使用經驗，完美的構建自己的粉絲群。</p>','','0.00','0.00',0,1,'gk_mo','mo, app, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理','適用於您的手機、平板和電腦的APP應用程序式的 網站版型設計，重量輕、簡易響應主題，精美的作品在所有的設備的各種屏幕尺寸下，充分展現出您的產品的特色及吸引力，豐富而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗，讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗，完美的構建自己的粉絲群。',1,20,0,17,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:45:35',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (22,0,2,1,'gk_msocial','gk-msocial','<p>時尚風格為主題的 <strong>網站版型設計</strong>，我們提供了一個能引領潮流的動畫響應設計，</p>\r\n<p>視覺醒目的時尚追隨者可使用的全新樣式。別緻的佈局 <strong>bounce 動畫效果</strong> 以適應各種屏幕尺寸，</p>\r\n<p>擁有特別的 <strong>bounce 動畫效果</strong> 可以打動你的讀者。</p>\r\n<p>每個區域都可以配置為您想要呈現的內容，於手機、平板或電腦等兼容各種屏幕大小，</p>\r\n<p>以您的需求架設出首屈一指的 <strong>社交網絡</strong>，使運行一個 <strong>社交網路</strong> 變得輕而易舉。</p>','','0.00','0.00',0,1,'gk_msocial','msocial, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 社交網路, bounce動畫效果','時尚風格為主題的 網站版型設計，我們提供了一個能引領潮流的動畫響應設計，視覺醒目的時尚追隨者可使用的全新樣式。別緻的佈局 bounce 動畫效果 以適應各種屏幕尺寸，擁有特別的 bounce 動畫效果 可以打動你的讀者。每個區域都可以配置為您想要呈現的內容，於手機、平板或電腦等兼容各種屏幕大小，以您的需求架設出首屈一指的社交網絡，使運行一個社交網路變得輕而易舉。',1,21,0,20,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:46:06',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (23,0,2,1,'gk_musicstate','gk-musicstate','<p>音樂娛樂為主題的 <strong>網站版型設計</strong>，為音樂家提供了驚人的顯眼主題和推廣活動功能，</p>\r\n<p>共享和討論他們喜歡的活動，簡單易上手的 <strong>網站版型</strong>，</p>\r\n<p>明確易分類的資訊內容，快速發布消息及分享影片、瀏覽資訊的 <strong>音樂娛樂網站</strong>。</p>','','0.00','0.00',0,1,'gk_musicstate','musicstate, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 音樂娛樂網站','音樂娛樂為主題的 網站版型設計，為音樂家提供了驚人的顯眼主題和推廣活動功能 ，共享和討論他們喜歡的活動，簡單易上手的 網站版型，明確易分類的資訊內容，快速發布消息及分享影片、瀏覽資訊的 音樂娛樂網站。',1,22,0,16,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:46:48',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (24,0,2,1,'gk_news','gk-news','<p>以新聞類為主題的 <strong>網站版型設計</strong>，提供最新的新聞主題，簡易的套件功能，</p>\r\n<p>使管理您的網站變得輕而易舉。可將重要或最新消息著重添加在頭版上吸引多人瀏覽，</p>\r\n<p>文章分類及詳細內容的完美設定，評論和突發新聞等功能都能得到最有效的管理，</p>\r\n<p>促進您廣泛的獲取或分享各項社交媒體資訊。</p>','','0.00','0.00',0,1,'gk_news','news, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 頭版資訊消息, 新聞網站','以新聞類為主題的 網站版型設計，提供最新的新聞主題，簡易的套件功能，使管理您的網站變得輕而易舉。可將重要或最新消息著重添加在頭版上吸引多人瀏覽，文章分類及詳細內容的完美設定，評論和突發新聞等功能都能得到最有效的管理，促進您廣泛的獲取或分享各項社交媒體資訊。',1,23,0,11,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:48:04',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (25,0,2,1,'gk_news2','gk-news2','<p>以新聞類為主題的 <strong>網站版型設計</strong>，提供最新的新聞主題，簡易的套件功能，</p>\r\n<p>使管理您的網站變得輕而易舉。可將重要或最新消息著重添加在頭版上吸引多人瀏覽，</p>\r\n<p>文章分類及詳細內容的完美設定，評論和突發新聞等功能都能得到最有效的管理，</p>\r\n<p>促進您廣泛的獲取或分享各項社交媒體資訊。</p>','','0.00','0.00',0,1,'gk_news2','news, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 頭版資訊消息, 新聞網站','以新聞類為主題的 網站版型設計，提供最新的新聞主題，簡易的套件功能，使管理您的網站變得輕而易舉。可將重要或最新消息著重添加在頭版上吸引多人瀏覽，文章分類及詳細內容的完美設定，評論和突發新聞等功能都能得到最有效的管理，促進您廣泛的獲取或分享各項社交媒體資訊。',1,24,0,15,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:48:37',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (26,0,2,1,'gk_publisher','gk-publisher','<p>以寫作為主題的<strong> 部落格式網站版型設計</strong>，打造現代風格的 <strong>部落格網站</strong>，</p>\r\n<p>支援頭版單一文章功能和精選文章等多樣功能，</p>\r\n<p>側邊欄位的分類選單和底部的文章鏈接都可以方便快速的瀏覽您整個網站，</p>\r\n<p>簡單易上手的 <strong>網站版型</strong>，明確易分類的資訊內容。</p>\r\n<p>快速發布消息及分享影片、瀏覽資訊的 <strong>網站版型</strong>，</p>\r\n<p>適合社交圈廣且喜愛分享事物的您！</p>','','0.00','0.00',0,1,'gk_publisher','publisher, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 部落格網站','以寫作為主題的 部落格式網站版型設計，打造現代風格的 部落格網站，支援頭版單一文章功能和精選文章等多樣功能，側邊欄位的分類選單和底部的文章鏈接都可以方便快速的瀏覽您整個網站，簡單易上手的 網站版型，明確易分類的資訊內容。快速發布消息及分享影片、瀏覽資訊的 網站版型，適合社交圈廣且喜愛分享事物的您。',1,25,0,17,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:50:06',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (27,0,2,1,'gk_restaurant','gk-restaurant','<p>以美食餐廳為主題的<strong> 網站版型設計</strong>，可用於推廣您的餐廳、咖啡館或酒吧，</p>\r\n<p>也可以單純作為您的食譜日記或評論家的 <strong>部落格網站</strong>。</p>\r\n<p>從網站架構、使用流程規劃，到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，</p>\r\n<p>簡單易上手的 <strong>網站版型</strong>，明確易分類的資訊內容，</p>\r\n<p>快速發布消息及分享影片、瀏覽資訊的 <strong>網站版型</strong>，</p>\r\n<p>帶給您豐富流暢的視覺饗宴。</p>','','0.00','0.00',0,1,'gk_restaurant','restaurant, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 美食餐廳網站, 部落格網站','以美食餐廳為主題的 網站版型設計，可用於推廣您的餐廳、咖啡館或酒吧，也可以單純作為您的食譜日記或評論家的部落格網站。從網站架構、使用流程規劃，到專業文案撰寫、視覺設計與版型介面設計，簡單易上手的 網站版型，明確易分類的資訊內容，快速發布消息及分享影片、瀏覽資訊的 網站版型，帶給您豐富流暢的視覺饗宴。',1,26,0,22,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:50:53',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (28,0,2,1,'gk_rockwall','gk-rockwall','<p>音樂娛樂為主題的 <strong>網站版型設計</strong>，為音樂家提供了驚人的顯眼主題和推廣活動功能，</p>\r\n<p>共享和討論他們喜歡的活動，簡單易上手的 <strong>網站版型</strong>，明確易分類的資訊內容，</p>\r\n<p>快速發布消息及分享影片、瀏覽資訊的 <strong>音樂娛樂網站</strong>。</p>','','0.00','0.00',0,1,'gk_rockwall','rockwall, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 音樂娛樂網站','音樂娛樂為主題的 網站版型設計，為音樂家提供了驚人的顯眼主題和推廣活動功能，共享和討論他們喜歡的活動，簡單易上手的 網站版型，明確易分類的資訊內容，快速發布消息及分享影片、瀏覽資訊的 音樂娛樂網站。',1,27,0,14,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 09:33:47',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (29,0,2,1,'gk_shop_and_buy','gk-shop-and-buy','<p>購物車商店展示 <strong>網站版型</strong>，獨特的線上展示模板能完美呈現客戶的購物需求，</p>\r\n<p>能充分展現出您的產品的特色及吸引力，非常適合大型商家的 <strong>網站經營</strong>，</p>\r\n<p>簡單易上手的 <strong>購物車網站版型</strong>，支援明確易分類的零售商資訊內容，</p>\r\n<p>豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>大量改善客戶體驗的選擇和輕鬆管理您的購物商店。</p>','','0.00','0.00',0,1,'gk_shop_and_buy','shop, buy, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 購物車網站','自行車商店展示網站版型，獨特的線上展示模板能完美呈現客戶的購物需求，能充分展現出您的產品的特色及吸引力，非常適合大型商家的網站經營，簡單易上手的 購物車網站版型，支援明確易分類的零售商資訊內容，豐富而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，大量改善客戶體驗的選擇和輕鬆管理您的購物商店。',1,28,0,15,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 09:35:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (30,0,2,1,'gk_simplicity','gk-simplicity','<p>以簡約商務為主題，乾淨、清晰明亮的 <strong>網站版型設計</strong> 風格，</p>\r\n<p>可以很突出主要賣點的清晰網頁頁面。簡約而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，</p>\r\n<p>到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，</p>\r\n<p>企業應用最有效的管理，帶給使用者流暢的使用經驗。</p>','','0.00','0.00',0,1,'gk_simplicity','simplicity, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 企業網站','以簡約商務為主題，乾淨、清晰明亮的 網站版型設計 風格，可以很突出主要賣點的清晰網頁頁面。簡約而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計與版型介面設計，企業應用最有效的管理，帶給使用者流暢的使用經驗。',1,29,0,13,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 09:36:51',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (31,0,2,1,'gk_startup_1','gk-startup-1','<p>以企業形象為主題的 <strong>網站版型設計</strong>，可以很突出主要賣點的清晰網頁頁面。</p>\r\n<p>您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，</p>\r\n<p>都有助於您的企業形象及品牌效益提升。</p>\r\n<p>簡約而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>從網站架構、使用流程規劃，到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，</p>\r\n<p>企業應用最有效的管理，讓您可於這個 <strong>企業形象網站</strong> 從中受益。</p>','','0.00','0.00',0,1,'gk_startup_1','startup, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 企業形象網站','以企業形象為主題的 網站版型設計，可以很突出主要賣點的清晰網頁頁面。您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，都有助於您的企業形象及品牌效益提升。簡約而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計與版型介面設計，企業應用最有效的管理，讓您可於這個 企業形象網站 從中受益。',1,30,0,15,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 09:37:18',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (32,0,2,1,'gk_steakhouse','gk-steakhouse','<p>以美食餐廳為主題的 <strong>網站版型設計</strong>，可用於推廣您的餐廳、咖啡館或酒吧。</p>\r\n<p>從網站架構、使用流程規劃，到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，</p>\r\n<p>簡單易上手的 <strong>網站版型</strong>，明確易分類的資訊內容，</p>\r\n<p>快速發布消息及分享影片、瀏覽資訊的 <strong>網站版型</strong>，</p>\r\n<p>帶給您豐富流暢的視覺饗宴。</p>','','0.00','0.00',0,1,'gk_steakhouse','steakhouse, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 美食餐廳網站','以美食餐廳為主題的 網站版型設計，可用於推廣您的餐廳、咖啡館或酒吧。從網站架構、使用流程規劃，到專業文案撰寫、視覺設計與版型介面設計，簡單易上手的 網站版型，明確易分類的資訊內容，快速發布消息及分享影片、瀏覽資訊的 網站版型，帶給您豐富流暢的視覺饗宴。',1,31,0,34,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 09:38:51',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (33,0,2,1,'gk_storebox','gk-storebox','<p>大型冬季服飾的<strong> 購物網站版型設計</strong>，以冬季服裝的產品為主題，</p>\r\n<p>正好適合冬季檔賣家尋找以拓展業務。支援明確易分類的零售商資訊內容，</p>\r\n<p>對各項產品的管理操作和數量龐大且突出的頭版來吸引顧客的購物慾。</p>\r\n<p>更重要的是，購物車系統功能可以覆蓋即時更新，</p>\r\n<p>豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，開發新一代網站體驗！</p>','','0.00','0.00',0,1,'gk_storebox','storebox, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 購物車系統, 網路商店, 產品展示','大型冬季服飾的 購物網站版型設計，以冬季服裝的產品為主題，正好適合冬季檔賣家尋找以拓展業務。支援明確易分類的零售商資訊內容，對各項產品的管理操作和數量龐大且突出的頭版來吸引顧客的購物慾。更重要的是，購物車系統功能可以覆蓋即時更新，豐富而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗！',1,32,0,22,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 09:42:20',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (34,0,2,1,'gk_storefront','gk-storefront','<p>大型服飾的<strong> 購物網站版型設計</strong>，以服飾的產品為主題，</p>\r\n<p>正好適合服飾業賣家尋找以拓展業務。支援明確易分類的零售商資訊內容，</p>\r\n<p>對各項產品的管理操作和數量龐大且突出的頭版來吸引顧客的購物慾。</p>\r\n<p>更重要的是，購物車系統功能可以覆蓋即時更新，</p>\r\n<p>豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，開發新一代網站體驗！</p>','','0.00','0.00',0,1,'gk_storefront','storefront, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 購物車系統, 網路商店, 產品展示','大型服飾的 購物網站版型設計，以服飾的產品為主題，正好適合服飾業賣家尋找以拓展業務。支援明確易分類的零售商資訊內容，對各項產品的管理操作和數量龐大且突出的頭版來吸引顧客的購物慾。更重要的是，購物車系統功能可以覆蓋即時更新，豐富而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗！',1,33,0,19,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 09:44:24',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (35,0,2,1,'gk_the_real_design','gk-the-real-design','<p>如果您是一個設計師、顧問或其他服務業，</p>\r\n<p>這個 <strong>網頁版型設計</strong> 提供豐富而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>獨特的美感設計將推動您的品牌優勢，可點擊瀏覽更多信息，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，令人無法忘懷的第一印象，</p>\r\n<p>使您從人群中脫穎而出的 <strong>創意網站設計</strong>！</p>','','0.00','0.00',0,1,'gk_the_real_design','design, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 創意網站設計','如果您是一個設計師、顧問或其他服務業，這個 網頁版型設計 提供豐富而視覺導向的 介面設計，獨特的美感設計將推動您的品牌優勢，可點擊瀏覽更多信息，脫離傳統框架，開發新一代網站體驗，令人無法忘懷的第一印象，使您從人群中脫穎而出的 創意網站設計！',1,34,0,14,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 09:45:03',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (36,0,2,1,'gk_university','gk-university','<p>以企業形象為主題的 <strong>網站版型設計</strong>，可以很突出主要賣點的清晰網頁頁面。</p>\r\n<p>您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，</p>\r\n<p>都有助於您的企業形象及品牌效益提升。簡約而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，</p>\r\n<p>到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，</p>\r\n<p>企業應用最有效的管理，讓您可於這個 企業形象網站 從中受益。</p>','','0.00','0.00',0,1,'gk_university','university, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 企業形象網站','以企業形象為主題的 網站版型設計，可以很突出主要賣點的清晰網頁頁面。您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，都有助於您的企業形象及品牌效益提升。簡約而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計與版型介面設計，企業應用最有效的管理，讓您可於這個 企業形象網站 從中受益。',1,35,0,21,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 09:45:35',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (37,0,2,2,'ja_appolio','ja_appolio','<p>清晰明亮的 <strong>網站版型設計</strong>，我們提供了一個能引領潮流的動畫響應設計，</p>\r\n<p>視覺醒目的時尚追隨者可使用的全新樣式。除了令人驚嘆的bundle功能，</p>\r\n<p>還採用了觸控的設計視差，保證讓每個人都關注您的網站。</p>\r\n<p>每個區域都可以配置為您想要呈現的內容，</p>\r\n<p>於手機、平板或電腦等兼容各種屏幕大小，</p>\r\n<p>以您的需求架設出首屈一指的 <strong>形象網站</strong>，</p>\r\n<p>使運行一個 <strong>形象網站</strong> 變得輕而易舉。</p>','','0.00','0.00',0,1,'ja_appolio','appsprotech, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 形象網站','清晰明亮的 網站版型設計，我們提供了一個能引領潮流的動畫響應設計，視覺醒目的時尚追隨者可使用的全新樣式。除了令人驚嘆的bundle功能，還採用了觸控的設計視差，保證讓每個人都關注您的網站。每個區域都可以配置為您想要呈現的內容，於手機、平板或電腦等兼容各種屏幕大小，以您的需求架設出首屈一指的 形象網站，使運行一個 形象網站 變得輕而易舉。',1,36,0,19,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:27:39',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (38,0,2,2,'ja_argo','ja_argo','<p>以文章資訊為主題的 <strong>部落格式網站版型設計</strong>，打造現代風格的 <strong>部落格網站</strong>，</p>\r\n<p>支援頭版單一文章功能和精選文章等多樣功能，</p>\r\n<p>側邊欄位的分類選單和底部的文章鏈接都可以方便快速的瀏覽您整個網站，</p>\r\n<p>簡單易上手的 <strong>網站版型</strong>，明確易分類的資訊內容。快速發布消息及分享影片、</p>\r\n<p>瀏覽資訊的 <strong>網站版型</strong>，適合社交圈廣且喜愛分享事物的你！</p>','','0.00','0.00',0,1,'ja_argo','appsprotech, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 部落格網站','以文章資訊為主題的 部落格式網站版型設計，打造現代風格的 部落格網站，支援頭版單一文章功能和精選文章等多樣功能，側邊欄位的分類選單和底部的文章鏈接都可以方便快速的瀏覽您整個網站，簡單易上手的 網站版型，明確易分類的資訊內容。快速發布消息及分享影片、瀏覽資訊的 網站版型，適合社交圈廣且喜愛分享事物的你！',1,37,0,10,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:28:30',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (39,0,2,2,'ja_beranis','ja_beranis','<p>以企業形象為主題的 <strong>網站版型設計</strong>，可以很突出主要賣點的清晰網頁頁面。</p>\r\n<p>您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，</p>\r\n<p>都有助於您的企業形象及品牌效益提升。簡約而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，</p>\r\n<p>到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，企業應用最有效的管理，</p>\r\n<p>讓您可於這個 <strong>企業形象網站</strong> 從中受益。</p>','','0.00','0.00',0,1,'ja_beranis','beranis, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 企業形象網站','以企業形象為主題的 網站版型設計，可以很突出主要賣點的清晰網頁頁面。您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，都有助於您的企業形象及品牌效益提升。簡約而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計 與 版型介面設計，企業應用最有效的管理，讓您可於這個 企業形象網站 從中受益。',1,38,0,16,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:30:53',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (40,0,2,2,'ja_biz','ja_biz','<p>以企業形象為主題的 <strong>網站版型設計</strong>，可以很突出主要賣點的清晰網頁頁面。</p>\r\n<p>您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，</p>\r\n<p>都有助於您的企業形象及品牌效益提升。簡約而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，</p>\r\n<p>到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，企業應用最有效的管理，</p>\r\n<p>讓您可於這個 <strong>企業形象網站</strong> 從中受益。</p>','','0.00','0.00',0,1,'ja_biz','biz, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 企業形象網站','以企業形象為主題的 網站版型設計，可以很突出主要賣點的清晰網頁頁面。您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，都有助於您的企業形象及品牌效益提升。簡約而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計 與 版型介面設計，企業應用最有效的管理，讓您可於這個 企業形象網站 從中受益。',1,39,0,20,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:31:22',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (41,0,2,2,'ja_bookshop','ja_bookshop','<p>書籍商店展示 <strong>網站版型</strong>，獨特的線上展示模板能完美呈現客戶的購物需求，</p>\r\n<p>能充分展現出您的產品的特色及吸引力，非常適合大型商家的網站經營，</p>\r\n<p>簡單易上手的 <strong>購物車網站版型</strong>，支援明確易分類的零售商資訊內容，</p>\r\n<p>豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>大量改善客戶體驗的選擇和輕鬆管理您的購物商店。</p>','','0.00','0.00',0,1,'ja_bookshop','book shop, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 購物車系統, 網路商店, 產品展示','書籍商店展示 網站版型，獨特的線上展示模板能完美呈現客戶的購物需求，能充分展現出您的產品的特色及吸引力，非常適合大型商家的網站經營，簡單易上手的 購物車網站版型，支援明確易分類的零售商資訊內容，豐富而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗，大量改善客戶體驗的選擇和輕鬆管理您的購物商店。',1,40,0,15,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:32:25',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (42,0,2,2,'ja_brisk','ja_brisk','<p>以簡約商務為主題，乾淨、清晰明亮的 <strong>網站版型設計</strong> 風格，</p>\r\n<p>可以很突出主要賣點的清晰網頁頁面。簡約而視覺導向的<strong> 介面設</strong>計，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、</p>\r\n<p><strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，企業應用最有效的管理，帶給使用者流暢的使用經驗。</p>','','0.00','0.00',0,1,'ja_brisk','brisk, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理','以簡約商務為主題，乾淨、清晰明亮的 網站版型設計 風格，可以很突出主要賣點的清晰網頁頁面。簡約而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計 與 版型介面設計，企業應用最有效的管理，帶給使用者流暢的使用經驗。',1,41,0,16,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:34:20',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (43,0,2,2,'ja_decor','ja_decor','<p>以室內設計裝潢為主題的 <strong>網站版型設計</strong>，</p>\r\n<p>獨特的線上展示模板能完美呈現您的產品的特色及吸引力，</p>\r\n<p>簡單易上手的 <strong>網站版型</strong>，支援明確易分類的資訊內容，</p>\r\n<p>優雅豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，</p>\r\n<p>開發新一代網站體驗，大量改善客戶體驗的選擇，</p>\r\n<p>讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗。</p>','','0.00','0.00',0,1,'ja_decor','decor, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理','以室內設計裝潢為主題的 網站版型設計，獨特的線上展示模板能完美呈現您的產品的特色及吸引力，簡單易上手的 網站版型，支援明確易分類的資訊內容，優雅豐富而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，大量改善客戶體驗的選擇，讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗。',1,42,0,17,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:36:15',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (44,0,2,2,'ja_fixel','ja_fixel','<p>創新簡約的扁平化設計是現代流行趨勢的 <strong>網站版型設計</strong>，</p>\r\n<p>我們提供了一個能引領潮流的動畫響應設計，視覺醒目的時尚追隨者可使用的全新樣式。</p>\r\n<p>別緻的佈局 <strong>bounce 動畫效果</strong> 以適應各種屏幕尺寸，</p>\r\n<p>擁有特別的 <strong>bounce 動畫效果</strong> 可以吸引更多的讀者。</p>\r\n<p>每個區域都可以配置為您想要呈現的內容，於手機、平板或電腦等兼容各種屏幕大小，</p>\r\n<p>以您的需求架設出首屈一指的 <strong>視覺創新網站</strong>。</p>','','0.00','0.00',0,1,'ja_fixel','fixel, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 扁平化網站設計, bounce動畫效果','創新簡約的扁平化設計是現代流行趨勢的 網站版型設計，我們提供了一個能引領潮流的動畫響應設計，視覺醒目的時尚追隨者可使用的全新樣式。別緻的佈局 bounce 動畫效果 以適應各種屏幕尺寸，擁有特別的 bounce 動畫效果 可以吸引更多的讀者。每個區域都可以配置為您想要呈現的內容，於手機、平板或電腦等兼容各種屏幕大小，以您的需求架設出首屈一指的 視覺創新網站。',1,43,0,19,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:37:07',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (45,0,2,2,'ja_fubix','ja_fubix','<p>以體育新聞類為主題的 <strong>網站版型設計</strong>，提供最新的體育新聞主題，</p>\r\n<p>簡易的套件功能，使管理您的網站變得輕而易舉。</p>\r\n<p>可將重要或最新消息著重添加在頭版上吸引多人瀏覽，</p>\r\n<p>文章分類及詳細內容的完美設定，評論和突發新聞等功能都能得到最有效的管理，</p>\r\n<p>促進您廣泛的獲取或分享各項社交媒體資訊。</p>','','0.00','0.00',0,1,'ja_fubix','fubix, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 電子商務, 頭版資訊消息, 管理流程系統','以體育新聞類為主題的 網站版型設計，提供最新的體育新聞主題，簡易的套件功能，使管理您的網站變得輕而易舉。可將重要或最新消息著重添加在頭版上吸引多人瀏覽，文章分類及詳細內容的完美設定，評論和突發新聞等功能都能得到最有效的管理，促進您廣泛的獲取或分享各項社交媒體資訊。',1,44,0,14,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:38:29',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (46,0,2,2,'ja_jason','ja_jason','<p>如果您是一個設計師、顧問或其他服務業，</p>\r\n<p>這個 <strong>網頁版型設計</strong> 提供豐富而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>獨特的美感設計動畫將推動您的品牌優勢，</p>\r\n<p>可點擊變獲取更多信息，脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>令人無法忘懷的第一印象，使您從人群中脫穎而出的 <strong>創意網站設計</strong>！</p>','','0.00','0.00',0,1,'ja_jason','jason, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 創意網站設計','如果您是一個設計師、顧問或其他服務業，這個 網頁版型設計 提供豐富而視覺導向的 介面設計，獨特的美感設計動畫將推動您的品牌優勢，可點擊變獲取更多信息，脫離傳統框架，開發新一代網站體驗，令人無法忘懷的第一印象，使您從人群中脫穎而出的 創意網站設計！',1,45,0,25,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:40:31',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (47,0,2,2,'ja_magz','ja_magz','<p>刊登雜誌或其他資訊內容的 <strong>部落格式網站版型設計</strong>，打造現代風格的 <strong>部落格網站</strong>，</p>\r\n<p>支援頭版單一文章功能和精選文章等多樣功能，</p>\r\n<p>側邊欄位的分類選單和底部的文章鏈接都可以方便快速的瀏覽您整個網站，</p>\r\n<p>簡單易上手的 <strong>網站版型</strong>，明確易分類的資訊內容。</p>\r\n<p>快速發布消息及分享影片、瀏覽資訊的 <strong>網站版型</strong>，適合社交圈廣且喜愛分享事物的您！</p>','','0.00','0.00',0,1,'ja_magz','magz, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 電子商務, 頭版資訊消息, 管理流程系統','刊登雜誌或其他資訊內容的 部落格式網站版型設計，打造現代風格的部落格網站，支援頭版單一文章功能和精選文章等多樣功能，側邊欄位的分類選單和底部的文章鏈接都可以方便快速的瀏覽您整個網站，簡單易上手的 網站版型，明確易分類的資訊內容。快速發布消息及分享影片、瀏覽資訊的 網站版型，適合社交圈廣且喜愛分享事物的您！',1,46,0,15,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:41:07',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (48,0,2,2,'ja_medicare','ja_medicare','<p>以醫學保健為主題的 <strong>網站版型設計</strong>，簡約與獨特的佈局結構。</p>\r\n<p>您可以介紹您診所的目標、醫療團隊或展示您最近取得的成功，</p>\r\n<p>都有助於您的醫學形象保健牌效益提升。簡約而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，</p>\r\n<p>到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，企業應用最有效的管理，</p>\r\n<p>讓您可於這個 <strong>形象網站</strong> 從中受益。</p>','','0.00','0.00',0,1,'ja_medicare','medicare, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 醫療保健網站, 形象網站','以醫學保健為主題的 網站版型設計，簡約與獨特的佈局結構。您可以介紹您診所的目標、醫療團隊或展示您最近取得的成功，都有助於您的醫學形象保健牌效益提升。簡約而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計與版型介面設計，企業應用最有效的管理，讓您可於這個 形象網站 從中受益。',1,47,0,19,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:42:08',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (49,0,2,2,'ja_mero','ja_mero','<p>創新簡約的扁平化設計是現代流行趨勢的 <strong>網站版型設計</strong>，</p>\r\n<p>我們提供了一個能引領潮流的動畫響應設計，視覺醒目的時尚追隨者可使用的全新樣式。</p>\r\n<p>別緻的佈局 <strong>bounce 動畫效果</strong> 以適應各種屏幕尺寸，</p>\r\n<p>擁有特別的 <strong>bounce 動畫效果</strong> 可以吸引更多的讀者。</p>\r\n<p>每個區域都可以配置為您想要呈現的內容，於手機、平板或電腦等兼容各種屏幕大小，</p>\r\n<p>以您的需求架設出首屈一指的 <strong>視覺創新網站</strong>。</p>','','0.00','0.00',0,1,'ja_mero','mero, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 扁平化網站設計, bounce動畫效果','創新簡約的扁平化設計是現代流行趨勢的 網站版型設計，我們提供了一個能引領潮流的動畫響應設計，視覺醒目的時尚追隨者可使用的全新樣式。別緻的佈局 bounce 動畫效果 以適應各種屏幕尺寸，擁有特別的 bounce 動畫效果 可以吸引更多的讀者。每個區域都可以配置為您想要呈現的內容，於手機、平板或電腦等兼容各種屏幕大小，以您的需求架設出首屈一指的 視覺創新網站。',1,48,0,20,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:43:44',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (50,0,2,2,'ja_mitius','ja_mitius','<p>以遊戲為主題的 <strong>網站版型設計</strong>，展現出您開發獲得成功的遊戲相關內容或技術主題與特色介紹，</p>\r\n<p>可用文章篇幅、截取遊戲畫面的圖片或視頻，詳細介紹可以容納所有媒體技術層面的需求，</p>\r\n<p>配備了專業的審美及豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗。</p>','','0.00','0.00',0,1,'ja_mitius','mitius, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計,  網站前端, 網站後端, 後台管理, 遊戲網站','以遊戲為主題的 網站版型設計，展現出您開發獲得成功的遊戲相關內容或技術主題與特色介紹，可用文章篇幅、截取遊戲畫面的圖片或視頻，詳細介紹可以容納所有媒體技術層面的需求，配備了專業的審美及豐富而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗。',1,49,0,15,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:44:43',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (51,0,2,2,'ja_muzic','ja_muzic','<p>音樂會活動為主題的<strong> 網站版型設計</strong>，驚人的顯眼主題和推廣活動功能，</p>\r\n<p>包括活動、會議研討和展覽，以及日程表頁面和倒數計時功能，</p>\r\n<p>使瀏覽者都能清楚知道您的活動在哪個時間點揭開序幕，</p>\r\n<p>簡單易上手的<strong> 網站版型</strong>，明確易分類的資訊內容，</p>\r\n<p>快速發布消息及分享影片、瀏覽資訊的 <strong>活動官方網站</strong>。</p>','','0.00','0.00',0,1,'ja_muzic','muzic, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 活動官方網站','音樂會活動為主題的 網站版型設計，驚人的顯眼主題和推廣活動功能 ，包括活動、會議研討和展覽，以及日程表頁面和倒數計時功能，使瀏覽者都能清楚知道您的活動在哪個時間點揭開序幕，簡單易上手的 網站版型，明確易分類的資訊內容，快速發布消息及分享影片、瀏覽資訊的 活動官方網站。',1,50,0,13,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:45:19',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (52,0,2,2,'ja_nex','ja_nex','<p>以新聞類為主題的 <strong>網站版型設計</strong>，提供最新的新聞主題，簡易的套件功能，</p>\r\n<p>使管理您的網站變得輕而易舉。可將重要或最新消息著重添加在頭版上吸引多人瀏覽，</p>\r\n<p>文章分類及詳細內容的完美設定，評論和突發新聞等功能都能得到最有效的管理，</p>\r\n<p>促進您廣泛的獲取或分享各項社交媒體資訊。</p>','','0.00','0.00',0,1,'ja_nex','nex, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 頭版資訊消息, 新聞網站','以新聞類為主題的 網站版型設計，提供最新的新聞主題，簡易的套件功能，使管理您的網站變得輕而易舉。可將重要或最新消息著重添加在頭版上吸引多人瀏覽，文章分類及詳細內容的完美設定，評論和突發新聞等功能都能得到最有效的管理，促進您廣泛的獲取或分享各項社交媒體資訊。',1,51,0,17,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:45:51',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (53,0,2,2,'ja_nuevo','ja_nuevo','<p>以企業形象為主題的 <strong>網站版型設計</strong>，可以很突出主要賣點的清晰網頁頁面。</p>\r\n<p>您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，</p>\r\n<p>都有助於您的企業形象及品牌效益提升。簡約而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，</p>\r\n<p>到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，企業應用最有效的管理，</p>\r\n<p>讓您可於這個 <strong>企業形象網站</strong> 從中受益。</p>','','0.00','0.00',0,1,'ja_nuevo','appsprotech, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 企業形象網站','以企業形象為主題的 網站版型設計，可以很突出主要賣點的清晰網頁頁面。您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，都有助於您的企業形象及品牌效益提升。簡約而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計與版型介面設計，企業應用最有效的管理，讓您可於這個 企業形象網站 從中受益。',1,52,0,25,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:46:23',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (54,0,2,2,'ja_obelisk','ja_obelisk','<p>電影娛樂為主題的 <strong>網站版型設計</strong>，為影視觀眾提供了驚人的顯眼主題和推廣活動功能，</p>\r\n<p>共享和討論他們喜歡的電影活動，簡單易上手的 <strong>網站版型</strong>，明確易分類的資訊內容，</p>\r\n<p>快速發布消息及分享影片、瀏覽資訊的 <strong>電影娛樂網站</strong>。</p>','','0.00','0.00',0,1,'ja_obelisk','obelisk, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 電影娛樂網站','電影娛樂為主題的 網站版型設計，為影視觀眾提供了驚人的顯眼主題和推廣活動功能 ，共享和討論他們喜歡的電影活動，簡單易上手的 網站版型，明確易分類的資訊內容，快速發布消息及分享影片、瀏覽資訊的 電影娛樂網站。',1,53,0,16,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:47:02',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (55,0,2,2,'ja_onepage','ja_onepage','<p><strong>One page</strong> 為目前流行的 <strong>網頁設計</strong> 趨勢，讓您的內容於一個頁面就能完整呈現，</p>\r\n<p>獨特的動態設計，適合用於行銷及形象的展示，</p>\r\n<p>或是中小企業以至 <strong>個人作品集網站</strong>， 省去繁複的資訊，</p>\r\n<p>提供您精美且別具風格的 <strong>一頁式網站</strong>！</p>','','0.00','0.00',0,1,'ja_onepage','One page, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 一頁式網站, 個人作品集網站','One page 為目前流行的網頁設計趨勢，讓您的內容於一個頁面就能完整呈現，獨特的動態設計，適合用於行銷及形象的展示，或是中小企業以至個人作品集網站， 省去繁複的資訊，提供您精美且別具風格的一頁式網站！',1,54,0,29,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:47:46',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (56,0,2,2,'ja_playmag','ja_playmag','<p>以遊戲為主題的 <strong>網站版型設計</strong>，展現出您開發獲得成功的遊戲相關內容或技術主題與特色介紹，</p>\r\n<p>可用文章篇幅、截取遊戲畫面的圖片或視頻，詳細介紹可以容納所有媒體技術層面的需求，</p>\r\n<p>配備了專業的審美及豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗。</p>','','0.00','0.00',0,1,'ja_playmag','playmag, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計,  網站前端, 網站後端, 後台管理, 遊戲網站','以遊戲為主題的 網站版型設計，展現出您開發獲得成功的遊戲相關內容或技術主題與特色介紹，可用文章篇幅、截取遊戲畫面的圖片或視頻，詳細介紹可以容納所有媒體技術層面的需求，配備了專業的審美及豐富而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，讓每件作品都能得到最有效的管理，帶給使用者流暢的使用經驗。',1,55,0,15,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:49:09',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (57,0,2,2,'ja_smashboard','ja_smashboard','<p>排版簡約的 <strong>網站版型設計</strong> 風格，非常獨特的<strong> 版型樣式設計</strong>，</p>\r\n<p>它的功能是以水平滾動的方式呈現，及支援垂直選單和鍵盤導航。</p>\r\n<p>非常適合產品陳列宣傳或組合畫廊、音樂和娛樂，甚至可做為您的個人獨特部落格。</p>\r\n<p>豐富而視覺導向的 <strong>介面設計</strong>，脫離傳統框架，開發新一代網站體驗，</p>\r\n<p>從網站架構、使用流程規劃，到專業文案撰寫、</p>\r\n<p><strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，帶給使用者流暢的使用經驗。</p>','','0.00','0.00',0,1,'ja_smashboard','smashboard, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 產品展示, 個人部落格網站, 音樂娛樂網站','排版簡約的 網站版型設計 風格，非常獨特的版型樣式設計，它的功能是以水平滾動的方式呈現，及支援垂直選單和鍵盤導航。非常適合產品陳列宣傳或組合畫廊、音樂和娛樂，甚至可做為您的個人獨特部落格。豐富而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計與版型介面設計，帶給使用者流暢的使用經驗。',1,56,0,29,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:49:56',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (58,0,2,2,'ja_sugite','ja_sugite','<p>以企業形象為主題的 <strong>網站版型設計</strong>，可以很突出主要賣點的清晰網頁頁面。</p>\r\n<p>您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，</p>\r\n<p>都有助於您的企業形象及品牌效益提升。簡約而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，</p>\r\n<p>到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，企業應用最有效的管理，</p>\r\n<p>讓您可於這個 <strong>企業形象網站</strong> 從中受益。</p>','','0.00','0.00',0,1,'ja_sugite','sugite, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 企業形象網站','以企業形象為主題的 網站版型設計，可以很突出主要賣點的清晰網頁頁面。您可以介紹您公司的目標、作業團隊或展示您最近取得的成功，都有助於您的企業形象及品牌效益提升。簡約而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計與版型介面設計，企業應用最有效的管理，讓您可於這個 企業形象網站 從中受益。',1,57,0,58,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:51:41',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (59,0,2,2,'ja_university','ja_university','<p>簡單清新的<strong>網站結構</strong>，讓使用者一看就明瞭親切的<strong>網站版型</strong>。</p>\r\n<p>網站上方的<strong>投影跳動圖</strong>，讓觀看者更容易了解。</p>\r\n<p>適合<strong>企業形象</strong>的<strong>網站版面</strong>，帶給客戶美好印象！</p>\r\n<p> </p>\r\n<p>以教育為主題的 <strong>網站版型設計</strong>，簡約與獨特的佈局結構。</p>\r\n<p>您可以介紹您學院的目標、師資團隊或展示您最近取得的成功，</p>\r\n<p>都有助於您的教育形象效益提升。簡約而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，</p>\r\n<p>到專業文案撰寫、<strong>視覺設計</strong> 與 <strong>版型介面設計</strong>，企業應用最有效的管理，</p>\r\n<p>讓您可於這個 <strong>形象網站</strong> 從中受益。</p>','','0.00','0.00',0,1,'ja_university','university, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理, 教育網站','以教育為主題的 網站版型設計，簡約與獨特的佈局結構。您可以介紹您學院的目標、師資團隊或展示您最近取得的成功，都有助於您的教育形象效益提升。簡約而視覺導向的介面設計，脫離傳統框架，開發新一代網站體驗，從網站架構、使用流程規劃，到專業文案撰寫、視覺設計與版型介面設計，企業應用最有效的管理，讓您可於這個 形象網站 從中受益。',1,58,0,56,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:52:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (60,0,2,2,'ja_wall','ja_wall','<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">簡單易上手的<strong>網站版型</strong>，明確易分類的資訊內容。</p>\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">快速發布消息及分享影片、瀏覽資訊的<strong>網站版型</strong>，</p>\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\">適合社交圈廣且喜愛分享事物的你！</p>\r\n<p style=\"font-size: 12.1599998474121px; line-height: 15.8079996109009px;\"> </p>\r\n<p>清晰明亮的 <strong>網站版型設計</strong>，一個版型樣式即可滿足您的所有需求！</p>\r\n<p>有文章、圖片、視頻、圖像畫廊和附件文檔等眾多功能。</p>\r\n<p>每個區域都可以配置為您想要呈現的內容，於手機、平板或電腦等兼容各種屏幕大小，</p>\r\n<p>以您的需求架設出首屈一指的 <strong>形象網站</strong>，使運行一個 <strong>形象網站</strong> 變得輕而易舉。</p>','','0.00','0.00',0,1,'ja_wall','wall, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 企業應用, 網站前端, 網站後端, 後台管理','清晰明亮的 網站版型設計，一個版型樣式即可滿足您的所有需求！有文章、圖片、視頻、圖像畫廊和附件文檔等眾多功能。每個區域都可以配置為您想要呈現的內容，於手機、平板或電腦等兼容各種屏幕大小，以您的需求架設出首屈一指的形象網站，使運行一個形象網站變得輕而易舉。',1,59,0,97,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-09-17 01:53:20',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (64,0,2,2,'ja_hotel','ja_hotel','<p>以飯店住宿為主題的 <strong>網站版型設計</strong>，是您旅遊及於網站上預訂飯店的一流解決方案，</p>\r\n<p>主頁可幫助旅客了解當地旅遊勝地、美味的食物、當地文化、有趣的旅行計劃和優惠等有用的信息。</p>\r\n<p>簡易訂票系統可以幫助收集房型和價格、檢查時間、顧客人數、付款和聯繫方式，</p>\r\n<p>同時也簡化了繁複的預訂過程。優雅豐富而視覺導向的 <strong>介面設計</strong>，</p>\r\n<p>脫離傳統框架，開發新一代網站體驗，大量改善客戶體驗的選擇，</p>\r\n<p>帶給您流暢的使用體驗。</p>','','0.00','0.00',0,1,'ja_hotel','hotel, 網站版型設計, 介面設計, 網站架構, 視覺設計, 版型介面設計, 網站前端, 網站後端, 後台管理, 預定表單系統, 網路商店, 飯店網站, 旅遊網站','以飯店住宿為主題的 網站版型設計，是您旅遊及於網站上預訂飯店的一流解決方案，主頁可幫助旅客了解當地旅遊勝地、美味的食物、當地文化、有趣的旅行計劃和優惠等有用的信息。簡易訂票系統可以幫助收集房型和價格、檢查時間、顧客人數、付款和聯繫方式，同時也簡化了繁複的預訂過程。優雅豐富而視覺導向的 介面設計，脫離傳統框架，開發新一代網站體驗，大量改善客戶體驗的選擇，帶給您流暢的使用體驗。',1,60,0,13,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2015-02-02 14:06:36',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_categories`

DROP TABLE IF EXISTS `mp75b_djc2_items_categories`;
CREATE TABLE `mp75b_djc2_items_categories` (
  `item_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`item_id`),
  UNIQUE KEY `item_category` (`item_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_categories`

LOCK TABLES `mp75b_djc2_items_categories` WRITE;
INSERT INTO `mp75b_djc2_items_categories` VALUES (2,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (3,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (4,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (5,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (6,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (7,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (8,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (9,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (10,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (11,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (12,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (13,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (14,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (15,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (16,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (17,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (18,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (19,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (20,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (21,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (22,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (23,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (24,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (25,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (26,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (27,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (28,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (29,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (30,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (31,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (32,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (33,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (34,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (35,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (36,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (37,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (38,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (39,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (40,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (41,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (42,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (43,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (44,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (45,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (46,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (47,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (48,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (49,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (50,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (51,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (52,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (53,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (54,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (55,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (56,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (57,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (58,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (59,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (60,2);
INSERT INTO `mp75b_djc2_items_categories` VALUES (64,2);
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields`;
CREATE TABLE `mp75b_djc2_items_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `imagelabel` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL,
  `filterable` int(11) NOT NULL,
  `searchable` int(11) NOT NULL,
  `visibility` int(11) NOT NULL,
  `separate_column` int(11) NOT NULL DEFAULT '0',
  `required` smallint(6) NOT NULL DEFAULT '0',
  `sortable` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_published` (`published`),
  KEY `idx_filterable` (`filterable`),
  KEY `idx_searchable` (`searchable`),
  KEY `idx_separate_column` (`separate_column`),
  KEY `idx_type` (`type`),
  KEY `idx_group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields`

LOCK TABLES `mp75b_djc2_items_extra_fields` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields_groups`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields_groups`;
CREATE TABLE `mp75b_djc2_items_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields_groups`

LOCK TABLES `mp75b_djc2_items_extra_fields_groups` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields_options`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields_options`;
CREATE TABLE `mp75b_djc2_items_extra_fields_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_field_id` (`field_id`),
  KEY `idx_value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields_options`

LOCK TABLES `mp75b_djc2_items_extra_fields_options` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields_values_date`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields_values_date`;
CREATE TABLE `mp75b_djc2_items_extra_fields_values_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_field` (`item_id`,`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields_values_date`

LOCK TABLES `mp75b_djc2_items_extra_fields_values_date` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields_values_int`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields_values_int`;
CREATE TABLE `mp75b_djc2_items_extra_fields_values_int` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_field` (`item_id`,`field_id`),
  KEY `idx_value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields_values_int`

LOCK TABLES `mp75b_djc2_items_extra_fields_values_int` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields_values_text`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields_values_text`;
CREATE TABLE `mp75b_djc2_items_extra_fields_values_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_field` (`item_id`,`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields_values_text`

LOCK TABLES `mp75b_djc2_items_extra_fields_values_text` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_related`

DROP TABLE IF EXISTS `mp75b_djc2_items_related`;
CREATE TABLE `mp75b_djc2_items_related` (
  `item_id` int(11) NOT NULL,
  `related_item` int(11) NOT NULL,
  PRIMARY KEY (`related_item`,`item_id`),
  UNIQUE KEY `item_related` (`item_id`,`related_item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_related`

LOCK TABLES `mp75b_djc2_items_related` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_order_items`

DROP TABLE IF EXISTS `mp75b_djc2_order_items`;
CREATE TABLE `mp75b_djc2_order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT '0',
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` decimal(10,4) NOT NULL,
  `base_cost` decimal(10,4) NOT NULL,
  `tax` decimal(10,4) NOT NULL,
  `tax_rate` decimal(10,4) NOT NULL,
  `total` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_order_items`

LOCK TABLES `mp75b_djc2_order_items` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_orders`

DROP TABLE IF EXISTS `mp75b_djc2_orders`;
CREATE TABLE `mp75b_djc2_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` int(11) NOT NULL,
  `invoice_number` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` datetime DEFAULT '0000-00-00 00:00:00',
  `invoice_date` datetime DEFAULT '0000-00-00 00:00:00',
  `total` decimal(10,4) NOT NULL,
  `grand_total` decimal(10,4) NOT NULL,
  `tax` decimal(10,4) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'N',
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `vat_id` varchar(20) DEFAULT NULL,
  `customer_note` mediumtext,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_orders`

LOCK TABLES `mp75b_djc2_orders` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_prices`

DROP TABLE IF EXISTS `mp75b_djc2_prices`;
CREATE TABLE `mp75b_djc2_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_group` (`item_id`,`group_id`),
  UNIQUE KEY `group_item` (`group_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_prices`

LOCK TABLES `mp75b_djc2_prices` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_producers`

DROP TABLE IF EXISTS `mp75b_djc2_producers`;
CREATE TABLE `mp75b_djc2_producers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` mediumtext,
  `metatitle` varchar(255) DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `published` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_published` (`published`),
  KEY `idx_created_by` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_producers`

LOCK TABLES `mp75b_djc2_producers` WRITE;
INSERT INTO `mp75b_djc2_producers` VALUES (1,'gavick','gavick','','','','',1,1,0,'0000-00-00 00:00:00','2014-08-26 08:25:51',584);
INSERT INTO `mp75b_djc2_producers` VALUES (2,'joomlart','joomlart','','','','',1,2,0,'0000-00-00 00:00:00','2014-09-12 06:41:56',584);
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_quote_items`

DROP TABLE IF EXISTS `mp75b_djc2_quote_items`;
CREATE TABLE `mp75b_djc2_quote_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT '0',
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_quote_id` (`quote_id`),
  KEY `idx_item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_quote_items`

LOCK TABLES `mp75b_djc2_quote_items` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_quotes`

DROP TABLE IF EXISTS `mp75b_djc2_quotes`;
CREATE TABLE `mp75b_djc2_quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime DEFAULT '0000-00-00 00:00:00',
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `vat_id` varchar(20) DEFAULT NULL,
  `customer_note` mediumtext,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_quotes`

LOCK TABLES `mp75b_djc2_quotes` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_tax_rates`

DROP TABLE IF EXISTS `mp75b_djc2_tax_rates`;
CREATE TABLE `mp75b_djc2_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_tax_rates`

LOCK TABLES `mp75b_djc2_tax_rates` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_tax_rules`

DROP TABLE IF EXISTS `mp75b_djc2_tax_rules`;
CREATE TABLE `mp75b_djc2_tax_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_rate_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  `client_type` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_tax_rate_id` (`tax_rate_id`,`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_tax_rules`

LOCK TABLES `mp75b_djc2_tax_rules` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_users`

DROP TABLE IF EXISTS `mp75b_djc2_users`;
CREATE TABLE `mp75b_djc2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `client_type` char(1) NOT NULL DEFAULT 'A',
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `company` varchar(100) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postcode` varchar(20) NOT NULL,
  `country_id` int(11) NOT NULL,
  `vat_id` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `www` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_id` (`user_id`),
  KEY `idx_customer_group_id` (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_users`

LOCK TABLES `mp75b_djc2_users` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_extensions`

DROP TABLE IF EXISTS `mp75b_extensions`;
CREATE TABLE `mp75b_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10057 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_extensions`

LOCK TABLES `mp75b_extensions` WRITE;
INSERT INTO `mp75b_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"zh-TW\",\"site\":\"zh-TW\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"target\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"count_clicks\":\"1\",\"icons\":1,\"link_icons\":\"\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_links\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_links_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"0\",\"show_link_description\":\"1\",\"show_link_hits\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer\",\"version\":\"5.2.6\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"cc0853b94f8cfa6c04e97fff317b0175\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2014-03-09 12:54:48\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.2.1\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `mp75b_extensions` VALUES (403,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0);
INSERT INTO `mp75b_extensions` VALUES (407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0);
INSERT INTO `mp75b_extensions` VALUES (408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0);
INSERT INTO `mp75b_extensions` VALUES (409,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0);
INSERT INTO `mp75b_extensions` VALUES (410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `mp75b_extensions` VALUES (412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.2\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `mp75b_extensions` VALUES (413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `mp75b_extensions` VALUES (415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `mp75b_extensions` VALUES (416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0);
INSERT INTO `mp75b_extensions` VALUES (417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `mp75b_extensions` VALUES (424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0);
INSERT INTO `mp75b_extensions` VALUES (425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0);
INSERT INTO `mp75b_extensions` VALUES (426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0);
INSERT INTO `mp75b_extensions` VALUES (427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0);
INSERT INTO `mp75b_extensions` VALUES (428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0);
INSERT INTO `mp75b_extensions` VALUES (429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',8,0);
INSERT INTO `mp75b_extensions` VALUES (430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `mp75b_extensions` VALUES (431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"strong_passwords\":\"1\",\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `mp75b_extensions` VALUES (433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',10,0);
INSERT INTO `mp75b_extensions` VALUES (437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0);
INSERT INTO `mp75b_extensions` VALUES (441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `mp75b_extensions` VALUES (444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `mp75b_extensions` VALUES (445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0);
INSERT INTO `mp75b_extensions` VALUES (446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0);
INSERT INTO `mp75b_extensions` VALUES (447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"July 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.3\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10000,'','language','zh-TW','',0,1,0,0,'{\"name\":\"\\u4e2d\\u6587(\\u7e41\\u9ad4\\uff0e\\u53f0\\u7063)\",\"type\":\"language\",\"creationDate\":\"2014-7-30\",\"author\":\"Joomla! Taiwan User Community\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"eddy@joomla.org.tw\",\"authorUrl\":\"www.joomla.org.tw\",\"version\":\"3.3.3.1\",\"description\":\"zh-TW site language\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10001,'','language','zh-TW','',1,1,0,0,'{\"name\":\"\\u4e2d\\u6587(\\u7e41\\u9ad4\\uff0e\\u53f0\\u7063)\",\"type\":\"language\",\"creationDate\":\"2014-7-30\",\"author\":\"Joomla! Taiwan User Community\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters All rights reserved. \",\"authorEmail\":\"eddy@joomla.org.tw\",\"authorUrl\":\"www.joomla.org.tw\",\"version\":\"3.3.3.1\",\"description\":\"zh-TW administrator language\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10002,'zh-TW','package','pkg_zh-TW','',0,1,1,0,'{\"name\":\"\\u4e2d\\u6587(\\u7e41\\u9ad4\\uff0e\\u53f0\\u7063)\\u5b8c\\u6574\\u8a9e\\u8a00\\u5305\",\"type\":\"package\",\"creationDate\":\"2014-7-30\",\"author\":\"Joomla! Taiwan User Community\",\"copyright\":\"Copyright (C) 2005 - 2012 Copyright (C) 2005 - 2014 Open Source Matters  All rights reserved.\",\"authorEmail\":\"eddy@joomla.org.tw\",\"authorUrl\":\"www.joomla.org.tw\",\"version\":\"3.3.3.1\",\"description\":\"\\n      \\n      <h3>Joomla! 3.3.3v1 \\u4e2d\\u6587(\\u7e41\\u9ad4\\uff0e\\u53f0\\u7063)\\u5b8c\\u6574\\u8a9e\\u8a00\\u5305<\\/h3>\\n      <h3>Joomla! 3.3.3v1 Traditional Chinese (Taiwan) Language Package<\\/h3>\\n      \\n   \",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10003,'com_djcatalog2','component','com_djcatalog2','',1,1,0,0,'{\"name\":\"com_djcatalog2\",\"type\":\"component\",\"creationDate\":\"January 2013\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.4.1.1\",\"description\":\"\",\"group\":\"\"}','{\"theme\":\"default\",\"theme_responsive\":\"1\",\"allowed_image_types\":\"jpg,png,gif\",\"allowed_attachment_types\":\"jpg,png,bmp,gif,pdf,tif,tiff,txt,csv,doc,docx,xls,xlsx,xlt,pps,ppt,pptx,ods,odp,odt,rar,zip,tar,bz2,gz2,7z\",\"multiple_image_upload\":\"1\",\"multiple_file_upload\":\"1\",\"show_contact_form\":\"0\",\"contact_list\":\"\",\"contact_sender\":\"0\",\"contact_captcha\":\"\",\"contact_company_name_field\":\"0\",\"contact_street_field\":\"0\",\"contact_city_field\":\"0\",\"contact_zip_field\":\"0\",\"contact_country_field\":\"0\",\"contact_phone_field\":\"0\",\"contact_copy_field\":\"1\",\"price_restrict\":\"0\",\"price_unit\":\"$\",\"thousand_separator\":\"0\",\"decimal_separator\":\"0\",\"decimals\":\"2\",\"unit_side\":\"1\",\"social_code\":\"\",\"social_code_position\":\"bottom\",\"comments\":\"0\",\"facebook-sdk\":\"1\",\"disqus_shortname\":\"\",\"show_footer\":\"0\",\"product_catalogue\":\"0\",\"showcatdesc\":\"0\",\"showcatimg\":\"0\",\"category_ordering\":\"c.ordering\",\"showsubcategories\":\"1\",\"showsubcategories_label\":\"1\",\"category_columns\":\"2\",\"category_show_intro\":\"1\",\"category_intro_trunc\":\"0\",\"category_intro_length\":\"0\",\"image_link_subcategory\":\"0\",\"showreadmore_subcategory\":\"1\",\"subcategory_showchildren\":\"0\",\"limit_items_show\":\"50\",\"list_layout\":\"items\",\"show_layout_switch\":\"0\",\"items_columns\":\"4\",\"items_default_order\":\"i.ordering\",\"items_default_order_dir\":\"desc\",\"items_category_ordering\":\"1\",\"featured_only\":\"0\",\"featured_first\":\"0\",\"show_category_filter\":\"0\",\"category_filter_type\":\"0\",\"show_producer_filter\":\"0\",\"show_price_filter\":\"0\",\"show_search\":\"0\",\"show_atoz_filter\":\"0\",\"atoz_letters\":\"a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z\",\"atoz_check_available\":\"0\",\"show_category_orderby\":\"0\",\"show_producer_orderby\":\"0\",\"show_name_orderby\":\"0\",\"show_price_orderby\":\"0\",\"show_date_orderby\":\"0\",\"show_item_name\":\"1\",\"show_category_name\":\"0\",\"show_producer_name\":\"0\",\"show_producers_items\":\"0\",\"show_price\":\"1\",\"show_old_price\":\"0\",\"show_author\":\"0\",\"show_hits\":\"0\",\"show_date\":\"0\",\"show_publishdate\":\"0\",\"items_show_attributes\":\"1\",\"items_show_cart_button\":\"0\",\"items_show_intro\":\"0\",\"items_intro_trunc\":\"0\",\"items_intro_length\":\"0\",\"image_link_item\":\"0\",\"showreadmore_item\":\"0\",\"rss_enabled\":\"1\",\"rss_feed_icon\":\"0\",\"rss_limit_items_show\":\"8\",\"rss_items_default_order\":\"i.created\",\"rss_items_default_order_dir\":\"desc\",\"rss_description_type\":\"1\",\"rss_image_link_item\":\"1\",\"rss_showreadmore_item\":\"1\",\"show_image_item\":\"1\",\"show_category_name_item\":\"0\",\"show_producer_name_item\":\"2\",\"show_producers_items_item\":\"1\",\"show_price_item\":\"1\",\"show_old_price_item\":\"0\",\"show_author_item\":\"0\",\"show_hits_item\":\"0\",\"show_date_item\":\"0\",\"show_publishdate_item\":\"0\",\"items_show_cart_button_item\":\"0\",\"show_intro_desc_item\":\"0\",\"show_navigation\":\"0\",\"related_items_columns\":\"2\",\"related_items_count\":\"2\",\"producers_pagination_limit\":\"8\",\"producers_columns\":\"2\",\"producers_default_order\":\"a.ordering\",\"producers_default_order_dir\":\"asc\",\"producers_show_name\":\"2\",\"producers_show_intro\":\"0\",\"producers_intro_trunc\":\"0\",\"producers_intro_length\":\"0\",\"producers_image_link\":\"0\",\"producers_readmore\":\"0\",\"cart_show_prices\":\"0\",\"cart_query_enabled\":\"0\",\"cart_query_registered\":\"1\",\"cart_query_captcha\":\"\",\"cart_queryfield_company\":\"1\",\"cart_queryfield_position\":\"0\",\"cart_queryfield_address\":\"1\",\"cart_queryfield_city\":\"1\",\"cart_queryfield_postcode\":\"1\",\"cart_queryfield_country_id\":\"1\",\"cart_queryfield_vat_id\":\"0\",\"cart_queryfield_phone\":\"1\",\"cart_queryfield_fax\":\"0\",\"cart_queryfield_www\":\"0\",\"cart_queryfield_customer_note\":\"2\",\"lightbox_type\":\"slimbox\",\"resize\":\"0\",\"image_jpg_quality\":\"85\",\"crop_alignment_h\":\"m\",\"crop_alignment_v\":\"m\",\"width\":\"600\",\"height\":\"600\",\"th_width\":\"250\",\"th_height\":\"250\",\"smallth_width\":\"150\",\"smallth_height\":\"150\",\"smallth_spacing_v\":\"4\",\"smallth_spacing_h\":\"4\",\"smallth_padding_h\":\"4\",\"category_resize\":\"\",\"category_width\":\"\",\"category_height\":\"\",\"category_th_width\":\"\",\"category_th_height\":\"\",\"category_smallth_width\":\"\",\"category_smallth_height\":\"\",\"category_smallth_spacing_v\":\"\",\"category_smallth_spacing_h\":\"\",\"category_smallth_padding_h\":\"\",\"producer_resize\":\"\",\"producer_width\":\"\",\"producer_height\":\"\",\"producer_th_width\":\"\",\"producer_th_height\":\"\",\"producer_smallth_width\":\"\",\"producer_smallth_height\":\"\",\"producer_smallth_spacing_v\":\"\",\"producer_smallth_spacing_h\":\"\",\"producer_smallth_padding_h\":\"\",\"seo_items_view\":\"items\",\"seo_item_view\":\"item\",\"seo_producer_view\":\"producer\",\"seo_producers_view\":\"producers\",\"seo_myitems_view\":\"myitems\",\"seo_itemform_view\":\"itemform\",\"seo_cart_view\":\"cart\",\"seo_query_view\":\"query\",\"seo_alias_separator\":\"0\",\"seo_id_position\":\"-1\",\"fed_edit_button\":\"0\",\"fed_max_products\":\"0\",\"fed_multiple_categories\":\"0\",\"fed_multiple_categories_limit\":\"3\",\"fed_default_state\":\"0\",\"fed_producer\":\"0\",\"fed_producer_restrict\":\"0\",\"fed_price\":\"0\",\"fed_featured\":\"0\",\"fed_group\":\"0\",\"fed_intro_description\":\"1\",\"fed_intro_description_editor\":\"codemirror\",\"fed_description\":\"1\",\"fed_description_editor\":\"codemirror\",\"fed_meta\":\"0\",\"fed_contact\":\"0\",\"fed_max_images\":\"6\",\"fed_max_image_size\":\"2048\",\"fed_max_files\":\"6\",\"fed_max_file_size\":\"2048\",\"fed_multiple_image_upload\":\"1\",\"fed_multiple_file_upload\":\"1\",\"fed_notify\":\"1\",\"fed_notify_list\":\"\",\"fed_myitems_list\":\"0\",\"fed_show_category_name\":\"1\",\"fed_show_producer_name\":\"3\",\"fed_show_price\":\"2\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10004,'mod_djc2categories','module','mod_djc2categories','',0,1,0,0,'{\"name\":\"mod_djc2categories\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.4\",\"description\":\"MOD_DJC2CATEGORIES_DESC\",\"group\":\"\"}','{\"moduleclass_sfx\":\"_menu\",\"expand\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10005,'mod_djc2frontpage','module','mod_djc2frontpage','',0,1,0,0,'{\"name\":\"mod_djc2frontpage\",\"type\":\"module\",\"creationDate\":\"August 2012\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.3\",\"description\":\"MOD_DJC2FRONTPAGE_MODULE_DESCRIPTION\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"css\":\"0\",\"responsive_width\":\"\",\"showtitle\":\"1\",\"linktitle\":\"1\",\"showcattitle\":\"1\",\"showpagination\":\"1\",\"orderby\":\"0\",\"orderbydir\":\"0\",\"featured_only\":\"0\",\"featured_first\":\"0\",\"@spacer\":\"\",\"catsw\":\"0\",\"catid\":\"0\",\"cols\":\"1\",\"rows\":\"3\",\"largeprocess\":\"1\",\"largewidth\":\"400\",\"largeheight\":\"240\",\"smallprocess\":\"1\",\"smallwidth\":\"90\",\"smallheight\":\"70\",\"trunc\":\"0\",\"trunclimit\":\"0\",\"showreadmore\":\"1\",\"readmoretext\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10006,'mod_djc2items','module','mod_djc2items','',0,1,0,0,'{\"name\":\"mod_djc2items\",\"type\":\"module\",\"creationDate\":\"November 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.6\",\"description\":\"MOD_DJC2ITEMS_MODULE_DESCRIPTION\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"featured_only\":\"0\",\"featured_first\":\"0\",\"orderby\":\"0\",\"orderdir\":\"0\",\"catid\":\"0\",\"items_limit\":\"0\",\"showimage\":\"1\",\"show_category_name\":\"1\",\"show_producer_name\":\"3\",\"show_price\":\"1\",\"items_show_intro\":\"1\",\"items_intro_trunc\":\"0\",\"items_intro_length\":\"0\",\"showreadmore_item\":\"1\",\"imageprocess\":\"1\",\"imagewidth\":\"120\",\"imageheight\":\"120\",\"module_float\":\"\",\"module_width\":\"\",\"module_height\":\"\",\"module_text_align\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10007,'mod_djc2relateditems','module','mod_djc2relateditems','',0,1,0,0,'{\"name\":\"mod_djc2relateditems\",\"type\":\"module\",\"creationDate\":\"October 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.6\",\"description\":\"MOD_DJC2RELATEDITEMS_MODULE_DESCRIPTION\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"featured_only\":\"0\",\"featured_first\":\"0\",\"orderby\":\"0\",\"orderdir\":\"0\",\"items_limit\":\"0\",\"showimage\":\"1\",\"show_category_name\":\"1\",\"show_producer_name\":\"3\",\"show_price\":\"1\",\"items_show_intro\":\"1\",\"items_intro_trunc\":\"0\",\"items_intro_length\":\"0\",\"showreadmore_item\":\"1\",\"imageprocess\":\"1\",\"imagewidth\":\"120\",\"imageheight\":\"120\",\"module_float\":\"\",\"module_width\":\"\",\"module_height\":\"\",\"module_text_align\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10008,'mod_djc2filters','module','mod_djc2filters','',0,1,0,0,'{\"name\":\"mod_djc2filters\",\"type\":\"module\",\"creationDate\":\"September 2012\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.8\",\"description\":\"MOD_DJC2FILTERS_DESC\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"visibility\":\"\",\"group_title\":\"1\",\"categories\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10009,'mod_djc2producers','module','mod_djc2producers','',0,1,0,0,'{\"name\":\"mod_djc2producers\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.4\",\"description\":\"MOD_DJC2PRODUCERS_DESC\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"filter\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10010,'mod_djc2search','module','mod_djc2search','',0,1,0,0,'{\"name\":\"mod_djc2search\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.4\",\"description\":\"MOD_DJC2SEARCH\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"filter\":\"1\",\"show_label\":\"1\",\"show_button\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10011,'plg_djcatalog2_pagebreak','plugin','pagebreak','djcatalog2',0,0,1,0,'{\"name\":\"plg_djcatalog2_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.2\",\"description\":\"PLG_DJCATALOG2_PAGEBREAK_DJCATALOGPAGEBREAK\",\"group\":\"\"}','{\"enabled\":\"1\",\"accordion\":\"2\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10012,'plg_search_djcatalog2','plugin','djcatalog2','search',0,0,1,0,'{\"name\":\"plg_search_djcatalog2\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"2.4\",\"description\":\"PLG_SEARCH_DJCATALOG2_DJPLGSEARCHDESC\",\"group\":\"\"}','{\"search_limit\":\"50\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10013,'plg_xmap_com_djcatalog2','plugin','com_djcatalog2','xmap',0,0,1,0,'{\"name\":\"plg_xmap_com_djcatalog2\",\"type\":\"plugin\",\"creationDate\":\"January 2012\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.4\",\"description\":\"PLG_XMAP_COM_DJCATALOG2_DESC\",\"group\":\"\"}','{\"include_products\":\"1\",\"cat_priority\":\"0.5\",\"cat_changefreq\":\"weekly\",\"link_priority\":\"0.5\",\"link_changefreq\":\"weekly\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10014,'plg_quickicon_djcatalog','plugin','djcatalog2','quickicon',0,0,1,0,'{\"name\":\"plg_quickicon_djcatalog\",\"type\":\"plugin\",\"creationDate\":\"August 2012\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.0\",\"description\":\"PLG_QUICKICON_DJCATALOG2_DESCRIPTION\",\"group\":\"\"}','{\"context\":\"mod_quickicon\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10015,'dj-catalog2','package','pkg_dj-catalog2','',0,1,1,0,'{\"name\":\"DJ-Catalog2 Package\",\"type\":\"package\",\"creationDate\":\"August 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.4.1\",\"description\":\"DJ-Catalog2 All-in-one Package\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10016,'rsform','component','com_rsform','',1,1,0,0,'{\"name\":\"RSForm!\",\"type\":\"component\",\"creationDate\":\"October 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0 R45\",\"description\":\"COM_RSFORM_INSTALL_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10017,'TCPDF','library','tcpdf','',0,1,1,0,'{\"name\":\"TCPDF\",\"type\":\"library\",\"creationDate\":\"28 January 2011\",\"author\":\"Nicola Asuni\",\"copyright\":\"http:\\/\\/www.tcpdf.org\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.tcpdf.org\",\"version\":\"2.5.0\",\"description\":\"Class for generating PDF files on-the-fly without requiring external extensions.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10018,'com_jaextmanager','component','com_jaextmanager','',1,1,0,0,'{\"name\":\"com_jaextmanager\",\"type\":\"component\",\"creationDate\":\"12 February 2014\",\"author\":\"JoomlArt\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.joomlart.com\",\"version\":\"2.5.8\",\"description\":\"JA Extension Manager Component\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10019,'T3 Framework','plugin','t3','system',0,1,1,0,'{\"name\":\"T3 Framework\",\"type\":\"plugin\",\"creationDate\":\"June 23, 2014\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.t3-framework.org\",\"version\":\"2.3.0\",\"description\":\"\\n\\t\\n\\t<div align=\\\"center\\\">\\n\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<a href=\\\"http:\\/\\/t3-framework.org\\/\\\"><img src=\\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\\" alt=\\\"some_text\\\" width=\\\"300\\\" height=\\\"99\\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/t3-framework.org\\/\\\" title=\\\"\\\">Home<\\/a> | <a href=\\\"http:\\/\\/demo.t3-framework.org\\/\\\" title=\\\"\\\">Demo<\\/a> | <a href=\\\"http:\\/\\/t3-framework.org\\/documentation\\\" title=\\\"\\\">Document<\\/a> | <a href=\\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\\" title=\\\"\\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2014 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10020,'purity_III','template','purity_iii','',0,1,1,0,'{\"name\":\"purity_III\",\"type\":\"template\",\"creationDate\":\"July 2014\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.t3-framework.org\",\"version\":\"1.1.1\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"center\\\">\\n\\t\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<h2>Purity III Template references<\\/h2>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/joomla-templates.joomlart.com\\/purity_iii\\/\\\" title=\\\"Purity III Template demo\\\">Live Demo<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/documentation\\/joomla-templates\\/purity-iii\\\" title=\\\"purity iii template documentation\\\">Documentation<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?542-Purity-III\\\" title=\\\"purity iii forum\\\">Forum<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/joomla\\/templates\\/purity-iii\\\" title=\\\"Purity III template more info\\\">More Info<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\\"color:#FF0000\\\">Note: Purity III requires T3 plugin to be installed and enabled.<\\/span>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2014 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}','{\"tpl_article_info_datetime_format\":\"d M Y\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10021,'com_remoteimage','component','com_remoteimage','',1,1,0,0,'{\"name\":\"com_remoteimage\",\"type\":\"component\",\"creationDate\":\"2012-11-12\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2012. All rights reserved.\",\"authorEmail\":\"asika32764@gmail.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.1.5\",\"description\":\"COM_REMOTEIMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{\"Connection_Local\":\"1\",\"Connection_Ftp\":\"1\",\"Local_Root\":\"images\",\"Ftp_Host\":\"127.0.0.1\",\"Ftp_User\":\"sense\",\"Ftp_Password\":\"22331841\",\"Ftp_Port\":\"21\",\"Ftp_Active\":\"passive\",\"Ftp_Root\":\"\",\"Ftp_Url\":\"\",\"Onlyimage\":\"0\",\"Safemode\":\"1\",\"Integrate_InsertTemplateImage\":\"<p>{%CONTENT%}<\\/p>\",\"Integrate_InsertTemplateLink\":\"{%CONTENT%}\",\"Image_DefaultWidth_Midium\":640,\"Image_DefaultHeight_Midium\":640,\"Integrate_Override_MediaManager\":\"1\",\"Integrate_Override_MediaFormField\":\"1\",\"Integrate_Override_InsertImageArticle\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10023,'plg_editors-xtd_remoteimage','plugin','remoteimage','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_remoteimage\",\"type\":\"plugin\",\"creationDate\":\"2012-11-12\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2012 Asikart.com\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.1.5\",\"description\":\"PLG_EDITORS-XTD_REMOTEIMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10024,'plg_system_remoteimage','plugin','remoteimage','system',0,1,1,0,'{\"name\":\"plg_system_remoteimage\",\"type\":\"plugin\",\"creationDate\":\"2012-11-12\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2012 Asikart.com\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.0.2\",\"description\":\"PLG_SYSTEM_REMOTEIMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10025,'System - Asikart Easy Set','plugin','asikart_easyset','system',0,1,1,0,'{\"name\":\"System - Asikart Easy Set\",\"type\":\"plugin\",\"creationDate\":\"2011-06-28\",\"author\":\"Asikart.com\",\"copyright\":\"(C) 2013 Asikart.com. All rights reserved.\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"2.6.4\",\"description\":\"Asikart Easy Set. Easy setup Joomla! Site!\",\"group\":\"\"}','{\"includejQuery\":\"0\",\"includeBootstrap\":\"0\",\"colorTable\":\"0\",\"tidyRepair\":\"0\",\"smoothScroll\":\"0\",\"getImages\":\"0\",\"blogViewClearly\":\"0\",\"blogViewImgWidth\":\"150\",\"blogViewImgCrop\":\"0\",\"blogViewCleanTags\":\"0\",\"blogViewTagsAllow\":\"\",\"blogViewMaxChar\":\"250\",\"autoThumbnail\":\"0\",\"onlyLocalhostThumb\":\"1\",\"tranAlias\":\"0\",\"originLan\":\"\",\"tranLan\":\"\",\"seo\":\"0\",\"titleFix\":\"{%TITLE%} | {%SITE%}\",\"titleSeparator\":\"|\",\"getMeta\":\"0\",\"maxMetaChar\":\"250\",\"generator\":\"\",\"insertHeader\":\"<script>\\r\\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\\r\\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\\r\\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\\r\\n  })(window,document,\'script\',\'\\/\\/www.google-analytics.com\\/analytics.js\',\'ga\');\\r\\n\\r\\n  ga(\'create\', \'UA-60891931-1\', \'auto\');\\r\\n  ga(\'send\', \'pageview\');\\r\\n\\r\\n<\\/script>\",\"openGraph\":\"0\",\"ogDefaultImage\":\"\",\"ogDefaultImageOnlyFrontPage\":\"1\",\"ogAdminId\":\"\",\"ogPageId\":\"\",\"ogAppId\":\"\",\"fbLike\":\"0\",\"fbLikeOnBlog\":\"0\",\"fbLikePosition\":\"3\",\"inputCodeBase\":\"\",\"insertArticleTop\":\"\",\"insertTitleBottom\":\"\",\"insertContentTop\":\"\",\"insertContentBottom\":\"\",\"showOnBlog\":\"1\",\"showNumber\":\"3\",\"adminSecure\":\"\",\"adminSecureCode\":\"ezset\",\"languageOrphan\":\"0\",\"languageOrphanPath\":\"logs\\/language.ini\",\"cacheManagerEnabled\":\"0\",\"cacheControlType\":\"exclude\",\"CacheQueries\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10027,'com_echo','component','com_echo','',1,1,0,0,'{\"name\":\"com_echo\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10028,'com_m2c','component','com_m2c','',1,1,0,0,'{\"name\":\"COM_M2C\",\"type\":\"component\",\"creationDate\":\"21-Jun-2013\",\"author\":\"Douglas Machado\",\"copyright\":\"2006 - 2013 - Ideal Extensions for Joomla - All rights reserved.\",\"authorEmail\":\"admin@fok.com.br\",\"authorUrl\":\"http:\\/\\/idealextensions.com\",\"version\":\"3.0\",\"description\":\"Module to Component - Loads a Module position in the component area of the site (template)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10029,'com_webgallery','component','com_webgallery','',1,1,0,0,'{\"name\":\"com_webgallery\",\"type\":\"component\",\"creationDate\":\"2012-11-12\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2012. All rights reserved.\",\"authorEmail\":\"asika32764@gmail.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.0.0\",\"description\":\"COM_WEBGALLERY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10030,'com_modulesmanagerck','component','com_modulesmanagerck','',1,1,0,0,'{\"name\":\"com_modulesmanagerck\",\"type\":\"component\",\"creationDate\":\"April 2013\",\"author\":\"Cedric Keiflin\",\"copyright\":\"Copyright (C) 2013. All rights reserved.\",\"authorEmail\":\"ced1870@gmail.com\",\"authorUrl\":\"http:\\/\\/www.joomlack.fr\",\"version\":\"1.0.1\",\"description\":\"COM_MODULESMANAGERCK_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10031,'System - Modules Manager CK','plugin','modulesmanagersystemck','system',0,0,1,0,'{\"name\":\"System - Modules Manager CK\",\"type\":\"plugin\",\"creationDate\":\"June 2013\",\"author\":\"Cedric KEIFLIN\",\"copyright\":\"Copyright (C) 2013   . All rights reserved.\",\"authorEmail\":\" \",\"authorUrl\":\" \",\"version\":\"1.0.1\",\"description\":\"System plugin for the component Modules Manager CK\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10032,'modulesmanagerck','package','pkg_modulesmanagerck','',0,1,1,0,'{\"name\":\"Modules Manager CK Package\",\"type\":\"package\",\"creationDate\":\"Mai 2013\",\"author\":\"C\\u00e9dric KEIFLIN\",\"copyright\":\"Copyright (C) 2013. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.joomlack.fr\",\"version\":\"1.0.2\",\"description\":\"Manages your modules with drag and drop into your template with Modules Manager CK.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10033,'mod_djc2cart','module','mod_djc2cart','',0,1,0,0,'{\"name\":\"mod_djc2cart\",\"type\":\"module\",\"creationDate\":\"February 2014\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.0\",\"description\":\"MOD_DJC2CART\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10034,'plg_djcatalog2_customfield','plugin','customfield','djcatalog2',0,0,1,0,'{\"name\":\"plg_djcatalog2_customfield\",\"type\":\"plugin\",\"creationDate\":\"April 2014\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.0\",\"description\":\"PLG_DJCATALOG2_CUSTOMFIELD_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10035,'plg_djcatalog2_jlexreview','plugin','jlexreview','djcatalog2',0,0,1,0,'{\"name\":\"plg_djcatalog2_jlexreview\",\"type\":\"plugin\",\"creationDate\":\"February 2014\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.0\",\"description\":\"PLG_DJCATALOG2_JLEXREVIEW\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10036,'plg_user_djcatalog2','plugin','djcatalog2','user',0,0,1,0,'{\"name\":\"plg_user_djcatalog2\",\"type\":\"plugin\",\"creationDate\":\"October 2013\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.0\",\"description\":\"PLG_USER_DJCATALOG2_DESCRIPTION\",\"group\":\"\"}','{\"field_firstname\":\"2\",\"field_lastname\":\"2\",\"field_company\":\"1\",\"field_position\":\"0\",\"field_address\":\"1\",\"field_city\":\"1\",\"field_postcode\":\"1\",\"field_country_id\":\"1\",\"field_vat_id\":\"0\",\"field_phone\":\"1\",\"field_fax\":\"0\",\"field_www\":\"0\",\"field_customer_note\":\"2\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10037,'Chinese language pack for DJ-Catalog2','file','zh-TW-djcatalog2','',0,1,0,0,'{\"name\":\"Chinese language pack for DJ-Catalog2\",\"type\":\"file\",\"creationDate\":\"September 2013\",\"author\":\"Blue Constant Media LTD\",\"copyright\":\"2010 Blue Constant Media LTD\",\"authorEmail\":\"\",\"authorUrl\":\"dj-extensions.com\",\"version\":\"3.2.11\",\"description\":\"DJ-Catalog2 Chinese-traditional translation\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10038,'Custom CSS','module','mod_customcss','',0,1,0,0,'{\"name\":\"Custom CSS\",\"type\":\"module\",\"creationDate\":\"July 2013\",\"author\":\"Hyde-Design\",\"copyright\":\"2013\",\"authorEmail\":\"sales@hyde-design.co.uk\",\"authorUrl\":\"www.hyde-design.co.uk\",\"version\":\"1.8\",\"description\":\"A simple Joomla 2.5 \\/ 3 module to enable you to style individual pages with CSS.\",\"group\":\"\"}','{\"customcss\":\"\\/* Custom CSS *\\/\",\"browsercss\":\"all\",\"externalcss\":\"0\",\"externalcssfile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10039,'com_userxtd','component','com_userxtd','',1,1,0,0,'{\"name\":\"com_userxtd\",\"type\":\"component\",\"creationDate\":\"2014-6-4\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2014. All rights reserved.\",\"authorEmail\":\"asika32764@gmail.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.0.1\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10040,'windwalker','library','windwalker','',0,1,1,0,'{\"name\":\"windwalker\",\"type\":\"library\",\"creationDate\":\"2012-11-23\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) Asikart 2008 - 2014. All rights reserved.\",\"authorEmail\":\"asika32764@gmail.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"4.0.7\",\"description\":\"LIB_WINDWALKER_XML_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10041,'plg_system_userxtd','plugin','userxtd','system',0,1,1,0,'{\"name\":\"plg_system_userxtd\",\"type\":\"plugin\",\"creationDate\":\"2013-2-15\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2012 Asikart.com\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.0.1\",\"description\":\"PLG_SYSTEM_USERXTD_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10042,'plg_system_akmarkdown','plugin','akmarkdown','system',0,0,1,0,'{\"name\":\"plg_system_akmarkdown\",\"type\":\"plugin\",\"creationDate\":\"2013-05-07\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2014 Asikart.com\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.1.2\",\"description\":\"\",\"group\":\"\"}','{\"Markdown_Extra\":\"1\",\"Article_Prettify\":\"2\",\"Article_ForceNewWindow\":\"0\",\"Article_NavList\":\"0\",\"Article_ForceImageAlign\":\"center\",\"Article_ImageClass\":\"akmarkdown-img img-polaroid\",\"Article_NavList_Class\":\"akmarkdown-nav-box well well-small\",\"Article_TableClass\":\"akmarkdown-table table-bordered table-striped table-hover center\",\"Highlight_Enabled\":\"1\",\"Highlight_Theme\":\"default\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10043,'plg_editors_akmarkdown','plugin','akmarkdown','editors',0,1,1,0,'{\"name\":\"plg_editors_akmarkdown\",\"type\":\"plugin\",\"creationDate\":\"2013-05-07\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2014 Asikart.com\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.1.2\",\"description\":\"PLG_EDITORS_AKMARKDOWN_XML_DESCRIPTION\",\"group\":\"\"}','{\"EditorButton_ConvertMarkdown\":\"1\",\"Editor_WordWrap\":\"1\",\"Editor_SoftWrapNum\":\"0\",\"AceEditor_Theme\":\"twilight\",\"MarkItUp_Theme\":\"simple\",\"MarkItUp_ButtonSet\":\"markdown\",\"Upload_Handler\":\"\",\"Upload_S3_Key\":\"\",\"Upload_S3_SecretKey\":\"\",\"Upload_S3_Bucket\":\"\",\"Upload_S3_Subfolder\":\"\",\"Upload_AllowExtension\":\"png,gif,jpg,jpeg,zip,txt,rar\",\"Upload_ButtonCss\":\"btn pull-right fltrt btn-inverse btn-upload delicious light green-pastel\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10044,'com_quickcontent','component','com_quickcontent','',1,1,0,0,'{\"name\":\"com_quickcontent\",\"type\":\"component\",\"creationDate\":\"2013-1-8\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2014. All rights reserved.\",\"authorEmail\":\"asika32764@gmail.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"2.0.1\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10045,'com_jcomments','component','com_jcomments','',1,1,0,0,'{\"name\":\"JComments\",\"type\":\"component\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"3.0.5\",\"description\":\"JComments lets your users comment on content items.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10046,'plg_content_jcomments','plugin','jcomments','content',0,1,1,0,'{\"name\":\"plg_content_jcomments\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_CONTENT_JCOMMENTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_frontpage\":\"1\",\"enable_for_archived\":\"0\",\"comments_count\":\"1\",\"add_comments\":\"1\",\"links_position\":\"1\",\"readmore_link\":\"1\",\"readmore_css_class\":\"readmore-link\",\"comments_css_class\":\"comments-link\",\"show_hits\":\"0\",\"show_comments_event\":\"onAfterDisplayContent\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10047,'plg_editors-xtd_jcommentson','plugin','jcommentson','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_jcommentson\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_EDITORS-XTD_JCOMMENTSON_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10048,'plg_editors-xtd_jcommentsoff','plugin','jcommentsoff','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_jcommentsoff\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_EDITORS-XTD_JCOMMENTSOFF_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10049,'plg_search_jcomments','plugin','jcomments','search',0,1,1,0,'{\"name\":\"plg_search_jcomments\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_SEARCH_JCOMMENTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10050,'plg_system_jcomments','plugin','jcomments','system',0,1,1,0,'{\"name\":\"plg_system_jcomments\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_SYSTEM_JCOMMENTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"disable_template_css\":\"0\",\"disable_error_reporting\":\"0\",\"clear_rss\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10051,'plg_user_jcomments','plugin','jcomments','user',0,1,1,0,'{\"name\":\"plg_user_jcomments\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_USER_JCOMMENTS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10052,'plg_quickicon_jcomments','plugin','jcomments','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_jcomments\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_QUICKICON_JCOMMENTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"context\":\"mod_quickicon\",\"displayedtext\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10053,'com_localise','component','com_localise','',1,1,0,0,'{\"name\":\"com_localise\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Mohammad Hasani Eghtedar\",\"copyright\":\"(C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"m.h.eghtedar@gmail.com\",\"authorUrl\":\"http:\\/\\/joomlacode.org\\/gf\\/project\\/com_localise\\/\",\"version\":\"3.2.1\",\"description\":\"COM_LOCALISE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10054,'plg_system_favicon','plugin','favicon','system',0,1,1,0,'{\"name\":\"plg_system_favicon\",\"type\":\"plugin\",\"creationDate\":\"April 2011\",\"author\":\"Michael Richey\",\"copyright\":\"Copyright (C) 2005 - 2011 Michael Richey. All rights reserved.\",\"authorEmail\":\"favicon@richeyweb.com\",\"authorUrl\":\"www.richeyweb.com\",\"version\":\"1.16\",\"description\":\"PLG_SYSTEM_FAVICON_XML_DESCRIPTION\",\"group\":\"\"}','{\"default\":\"0\",\"assignments\":{\"1\":[\"101\",\"125\",\"128\",\"149\",\"152\",\"169\",\"167\",\"166\",\"168\"]}}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10055,'com_favicon','component','com_favicon','',1,1,0,0,'{\"name\":\"COM_FAVICON\",\"type\":\"component\",\"creationDate\":\"March 2011\",\"author\":\"Michael Richey\",\"copyright\":\"(C) 2005 - 2011 Michael Richey. All rights reserved.\",\"authorEmail\":\"favicon@richeyweb.com\",\"authorUrl\":\"www.richeyweb.com\",\"version\":\"1.16\",\"description\":\"COM_FAVICON_XML_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10056,'favicon','package','pkg_favicon','',0,1,1,0,'{\"name\":\"Favicon Package\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.16\",\"description\":\"<p>Favicon Component and Plugin package.<\\/p>\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_filters`

DROP TABLE IF EXISTS `mp75b_finder_filters`;
CREATE TABLE `mp75b_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_filters`

LOCK TABLES `mp75b_finder_filters` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links`

DROP TABLE IF EXISTS `mp75b_finder_links`;
CREATE TABLE `mp75b_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links`

LOCK TABLES `mp75b_finder_links` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms0`

DROP TABLE IF EXISTS `mp75b_finder_links_terms0`;
CREATE TABLE `mp75b_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms0`

LOCK TABLES `mp75b_finder_links_terms0` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms1`

DROP TABLE IF EXISTS `mp75b_finder_links_terms1`;
CREATE TABLE `mp75b_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms1`

LOCK TABLES `mp75b_finder_links_terms1` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms2`

DROP TABLE IF EXISTS `mp75b_finder_links_terms2`;
CREATE TABLE `mp75b_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms2`

LOCK TABLES `mp75b_finder_links_terms2` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms3`

DROP TABLE IF EXISTS `mp75b_finder_links_terms3`;
CREATE TABLE `mp75b_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms3`

LOCK TABLES `mp75b_finder_links_terms3` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms4`

DROP TABLE IF EXISTS `mp75b_finder_links_terms4`;
CREATE TABLE `mp75b_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms4`

LOCK TABLES `mp75b_finder_links_terms4` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms5`

DROP TABLE IF EXISTS `mp75b_finder_links_terms5`;
CREATE TABLE `mp75b_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms5`

LOCK TABLES `mp75b_finder_links_terms5` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms6`

DROP TABLE IF EXISTS `mp75b_finder_links_terms6`;
CREATE TABLE `mp75b_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms6`

LOCK TABLES `mp75b_finder_links_terms6` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms7`

DROP TABLE IF EXISTS `mp75b_finder_links_terms7`;
CREATE TABLE `mp75b_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms7`

LOCK TABLES `mp75b_finder_links_terms7` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms8`

DROP TABLE IF EXISTS `mp75b_finder_links_terms8`;
CREATE TABLE `mp75b_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms8`

LOCK TABLES `mp75b_finder_links_terms8` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms9`

DROP TABLE IF EXISTS `mp75b_finder_links_terms9`;
CREATE TABLE `mp75b_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms9`

LOCK TABLES `mp75b_finder_links_terms9` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termsa`

DROP TABLE IF EXISTS `mp75b_finder_links_termsa`;
CREATE TABLE `mp75b_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termsa`

LOCK TABLES `mp75b_finder_links_termsa` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termsb`

DROP TABLE IF EXISTS `mp75b_finder_links_termsb`;
CREATE TABLE `mp75b_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termsb`

LOCK TABLES `mp75b_finder_links_termsb` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termsc`

DROP TABLE IF EXISTS `mp75b_finder_links_termsc`;
CREATE TABLE `mp75b_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termsc`

LOCK TABLES `mp75b_finder_links_termsc` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termsd`

DROP TABLE IF EXISTS `mp75b_finder_links_termsd`;
CREATE TABLE `mp75b_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termsd`

LOCK TABLES `mp75b_finder_links_termsd` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termse`

DROP TABLE IF EXISTS `mp75b_finder_links_termse`;
CREATE TABLE `mp75b_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termse`

LOCK TABLES `mp75b_finder_links_termse` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termsf`

DROP TABLE IF EXISTS `mp75b_finder_links_termsf`;
CREATE TABLE `mp75b_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termsf`

LOCK TABLES `mp75b_finder_links_termsf` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_taxonomy`

DROP TABLE IF EXISTS `mp75b_finder_taxonomy`;
CREATE TABLE `mp75b_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_taxonomy`

LOCK TABLES `mp75b_finder_taxonomy` WRITE;
INSERT INTO `mp75b_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_taxonomy_map`

DROP TABLE IF EXISTS `mp75b_finder_taxonomy_map`;
CREATE TABLE `mp75b_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_taxonomy_map`

LOCK TABLES `mp75b_finder_taxonomy_map` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_terms`

DROP TABLE IF EXISTS `mp75b_finder_terms`;
CREATE TABLE `mp75b_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_terms`

LOCK TABLES `mp75b_finder_terms` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_terms_common`

DROP TABLE IF EXISTS `mp75b_finder_terms_common`;
CREATE TABLE `mp75b_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_terms_common`

LOCK TABLES `mp75b_finder_terms_common` WRITE;
INSERT INTO `mp75b_finder_terms_common` VALUES ('a','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('about','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('after','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('ago','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('all','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('am','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('an','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('and','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('ani','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('any','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('are','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('aren\'t','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('as','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('at','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('be','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('but','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('by','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('for','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('from','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('get','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('go','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('how','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('if','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('in','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('into','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('is','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('isn\'t','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('it','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('its','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('me','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('more','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('most','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('must','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('my','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('new','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('no','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('none','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('not','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('noth','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('nothing','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('of','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('off','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('often','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('old','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('on','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('onc','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('once','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('onli','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('only','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('or','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('other','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('our','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('ours','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('out','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('over','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('page','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('she','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('should','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('small','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('so','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('some','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('than','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('thank','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('that','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('the','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('their','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('theirs','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('them','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('then','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('there','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('these','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('they','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('this','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('those','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('thus','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('time','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('times','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('to','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('too','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('true','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('under','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('until','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('up','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('upon','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('use','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('user','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('users','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('veri','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('version','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('very','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('via','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('want','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('was','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('way','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('were','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('what','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('when','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('where','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('whi','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('which','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('who','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('whom','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('whose','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('why','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('wide','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('will','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('with','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('within','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('without','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('would','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('yes','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('yet','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('you','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('your','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('yours','en');
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_tokens`

DROP TABLE IF EXISTS `mp75b_finder_tokens`;
CREATE TABLE `mp75b_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_tokens`

LOCK TABLES `mp75b_finder_tokens` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_tokens_aggregate`

DROP TABLE IF EXISTS `mp75b_finder_tokens_aggregate`;
CREATE TABLE `mp75b_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_tokens_aggregate`

LOCK TABLES `mp75b_finder_tokens_aggregate` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_types`

DROP TABLE IF EXISTS `mp75b_finder_types`;
CREATE TABLE `mp75b_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_types`

LOCK TABLES `mp75b_finder_types` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_jaem_log`

DROP TABLE IF EXISTS `mp75b_jaem_log`;
CREATE TABLE `mp75b_jaem_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ext_id` varchar(50) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `check_date` datetime DEFAULT NULL,
  `check_info` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ext_id` (`ext_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jaem_log`

LOCK TABLES `mp75b_jaem_log` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_jaem_services`

DROP TABLE IF EXISTS `mp75b_jaem_services`;
CREATE TABLE `mp75b_jaem_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ws_name` varchar(255) NOT NULL,
  `ws_mode` varchar(50) NOT NULL DEFAULT 'local',
  `ws_uri` varchar(255) NOT NULL,
  `ws_user` varchar(100) NOT NULL,
  `ws_pass` varchar(100) NOT NULL,
  `ws_default` tinyint(1) NOT NULL DEFAULT '0',
  `ws_core` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jaem_services`

LOCK TABLES `mp75b_jaem_services` WRITE;
INSERT INTO `mp75b_jaem_services` VALUES (1,'Local Service','local','','','',1,1);
INSERT INTO `mp75b_jaem_services` VALUES (2,'JoomlArt Updates','remote','http://update.joomlart.com/service/','','',0,1);
UNLOCK TABLES;

-- Table structure for table `mp75b_jcomments`

DROP TABLE IF EXISTS `mp75b_jcomments`;
CREATE TABLE `mp75b_jcomments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `thread_id` int(11) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `object_params` text NOT NULL,
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isgood` smallint(5) NOT NULL DEFAULT '0',
  `ispoor` smallint(5) NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `source_id` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`userid`),
  KEY `idx_source` (`source`),
  KEY `idx_email` (`email`),
  KEY `idx_lang` (`lang`),
  KEY `idx_subscribe` (`subscribe`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_object` (`object_id`,`object_group`,`published`,`date`),
  KEY `idx_path` (`path`,`level`),
  KEY `idx_thread` (`thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jcomments`

LOCK TABLES `mp75b_jcomments` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_jcomments_blacklist`

DROP TABLE IF EXISTS `mp75b_jcomments_blacklist`;
CREATE TABLE `mp75b_jcomments_blacklist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `notes` tinytext NOT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jcomments_blacklist`

LOCK TABLES `mp75b_jcomments_blacklist` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_jcomments_custom_bbcodes`

DROP TABLE IF EXISTS `mp75b_jcomments_custom_bbcodes`;
CREATE TABLE `mp75b_jcomments_custom_bbcodes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `simple_pattern` varchar(255) NOT NULL DEFAULT '',
  `simple_replacement_html` text NOT NULL,
  `simple_replacement_text` text NOT NULL,
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `replacement_html` text NOT NULL,
  `replacement_text` text NOT NULL,
  `button_acl` text NOT NULL,
  `button_open_tag` varchar(16) NOT NULL DEFAULT '',
  `button_close_tag` varchar(16) NOT NULL DEFAULT '',
  `button_title` varchar(255) NOT NULL DEFAULT '',
  `button_prompt` varchar(255) NOT NULL DEFAULT '',
  `button_image` varchar(255) NOT NULL DEFAULT '',
  `button_css` varchar(255) NOT NULL DEFAULT '',
  `button_enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jcomments_custom_bbcodes`

LOCK TABLES `mp75b_jcomments_custom_bbcodes` WRITE;
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (1,'YouTube Video','[youtube]http://www.youtube.com/watch?v={IDENTIFIER}[/youtube]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/{IDENTIFIER}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/{IDENTIFIER}','\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/${1}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/${1}','1,2,3,4,5,6,7,8,9','[youtube]','[/youtube]','YouTube Video','','','bbcode-youtube',1,1,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (2,'YouTube Video (short syntax)','[youtube]{IDENTIFIER}[/youtube]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/{IDENTIFIER}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/{IDENTIFIER}','\\[youtube\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/${1}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/${1}','1,2,3,4,5,6,7,8,9','','','','','','',0,2,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (3,'YouTube Video (alternate syntax)','[youtube]http://www.youtube.com/watch?v={IDENTIFIER}{TEXT}[/youtube]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/{IDENTIFIER}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/{IDENTIFIER}','\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([\\w0-9-\\+\\=\\!\\?\\(\\)\\[\\]\\{\\}\\&\\%\\*\\#\\.,_ ]+)\\[\\/youtube\\]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/${1}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/${1}','1,2,3,4,5,6,7,8,9','[youtube]','[/youtube]','YouTube Video','','','',0,3,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (4,'YouTube Video (alternate syntax)','[youtube]http://www.youtube.com/watch?feature=player_embedded&v={IDENTIFIER}[/youtube]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/{IDENTIFIER}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/{IDENTIFIER}','\\[youtube\\]http\\://www\\.youtube\\.com/watch\\?feature\\=player_embedded&v\\=([\\w0-9-_]+)\\[/youtube\\]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/${1}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/${1}','1,2,3,4,5,6,7,8,9','','','','','','',0,4,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (5,'YouTube Video (alternate syntax)','[youtube]http://youtu.be/{IDENTIFIER}[/youtube]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/{IDENTIFIER}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/{IDENTIFIER}','\\[youtube\\]http\\://youtu\\.be/([\\w0-9-_]+)\\[/youtube\\]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/${1}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/${1}','1,2,3,4,5,6,7,8,9','','','','','','',0,5,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (6,'Facebook Video','[fv]http://www.facebook.com/video/video.php?v={IDENTIFIER}[/fv]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id={IDENTIFIER}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v={IDENTIFIER}','\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/video\\/video\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id=${1}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v=${1}','1,2,3,4,5,6,7,8,9','[fv]','[/fv]','Facebook Video','','','bbcode-facebook',1,6,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (7,'Facebook Video (short syntax)','[fv]{IDENTIFIER}[/fv]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id={IDENTIFIER}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v={IDENTIFIER}','\\[fv\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id=${1}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v=${1}','1,2,3,4,5,6,7,8,9','','','','','','',0,7,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (8,'Facebook Video (alternate syntax)','[fv]http://www.facebook.com/photo.php?v={IDENTIFIER}[/fv]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id={IDENTIFIER}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v={IDENTIFIER}','\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/photo\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id=${1}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v=${1}','1,2,3,4,5,6,7,8,9','','','','','','',0,8,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (9,'Instagram','[instagram]http://instagram.com/p/{IDENTIFIER}/[/instagram]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/{IDENTIFIER}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/{IDENTIFIER}/','\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\/\\[/instagram\\]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/${1}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/${1}/','1,2,3,4,5,6,7,8,9','[instagram]','[/instagram]','Instagram Photo','','','bbcode-instagram',1,9,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (10,'Instagram (short syntax)','[instagram]{IDENTIFIER}[/instagram]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/{IDENTIFIER}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/{IDENTIFIER}/','\\[instagram\\]([\\w0-9-_]+)\\[/instagram\\]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/${1}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/${1}/','1,2,3,4,5,6,7,8,9','','','','','','',0,10,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (11,'Instagram (alternate syntax)','[instagram]http://instagram.com/p/{IDENTIFIER}[/instagram]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/{IDENTIFIER}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/{IDENTIFIER}/','\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\[/instagram\\]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/${1}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/${1}/','1,2,3,4,5,6,7,8,9','','','','','','',0,11,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (12,'Vimeo','[vimeo]http://vimeo.com/{IDENTIFIER}/[/vimeo]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/{IDENTIFIER}/\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','http://vimeo.com/{IDENTIFIER}/','\\[vimeo\\]http\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/${1}\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','http://vimeo.com/${1}/','1,2,3,4,5,6,7,8,9','[vimeo]','[/vimeo]','Vimeo Video','','','bbcode-vimeo',1,12,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (13,'Vimeo (short syntax)','[vimeo]{IDENTIFIER}[/vimeo]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/{IDENTIFIER}/\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','http://vimeo.com/{IDENTIFIER}/','\\[vimeo\\]([\\w0-9-_]+)\\[/vimeo\\]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/${1}\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','http://vimeo.com/${1}/','1,2,3,4,5,6,7,8,9','','','','','','',0,13,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (14,'Vimeo (alternate syntax)','[vimeo]https://vimeo.com/{IDENTIFIER}/[/vimeo]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/{IDENTIFIER}/\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','https://vimeo.com/{IDENTIFIER}/','\\[vimeo\\]https\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/${1}\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','https://vimeo.com/${1}/','1,2,3,4,5,6,7,8,9','','','','','','',0,13,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_custom_bbcodes` VALUES (15,'Wiki','[wiki]{SIMPLETEXT}[/wiki]','<a href=\"http://www.wikipedia.org/wiki/{SIMPLETEXT}\" title=\"{SIMPLETEXT}\" target=\"_blank\">{SIMPLETEXT}</a>','{SIMPLETEXT}','\\[wiki\\]([A-Za-z0-9\\-\\+\\.,_ ]+)\\[\\/wiki\\]','<a href=\"http://www.wikipedia.org/wiki/${1}\" title=\"${1}\" target=\"_blank\">${1}</a>','${1}','1,2,3,4,5,6,7,8,9','[wiki]','[/wiki]','Wikipedia','','','bbcode-wiki',1,14,1,0,'0000-00-00 00:00:00');
UNLOCK TABLES;

-- Table structure for table `mp75b_jcomments_mailq`

DROP TABLE IF EXISTS `mp75b_jcomments_mailq`;
CREATE TABLE `mp75b_jcomments_mailq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_priority` (`priority`),
  KEY `idx_attempts` (`attempts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jcomments_mailq`

LOCK TABLES `mp75b_jcomments_mailq` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_jcomments_objects`

DROP TABLE IF EXISTS `mp75b_jcomments_objects`;
CREATE TABLE `mp75b_jcomments_objects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `expired` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_object` (`object_id`,`object_group`,`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jcomments_objects`

LOCK TABLES `mp75b_jcomments_objects` WRITE;
INSERT INTO `mp75b_jcomments_objects` VALUES (1,12,'com_content',19,'zh-TW','網站假資料生產器','/web-keep-share/12-網站假資料生產器.html',1,585,0,'2015-01-31 08:46:14');
INSERT INTO `mp75b_jcomments_objects` VALUES (2,13,'com_content',19,'zh-TW','Nginx Symfony2 設定','/web-keep-share/13-nginx-symfony2-設定.html',1,585,0,'2015-01-31 09:24:48');
INSERT INTO `mp75b_jcomments_objects` VALUES (3,14,'com_content',19,'zh-TW','簡單 css 讓網站動起來！','/web-keep-share/14-簡單-css-讓網站動起來！.html',1,585,0,'2015-01-31 09:40:57');
INSERT INTO `mp75b_jcomments_objects` VALUES (4,15,'com_content',19,'zh-TW','JavaScript 編譯保護','/web-keep-share/15-javascript-編譯保護.html',1,584,0,'2015-02-02 17:46:09');
UNLOCK TABLES;

-- Table structure for table `mp75b_jcomments_reports`

DROP TABLE IF EXISTS `mp75b_jcomments_reports`;
CREATE TABLE `mp75b_jcomments_reports` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jcomments_reports`

LOCK TABLES `mp75b_jcomments_reports` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_jcomments_settings`

DROP TABLE IF EXISTS `mp75b_jcomments_settings`;
CREATE TABLE `mp75b_jcomments_settings` (
  `component` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`component`,`lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jcomments_settings`

LOCK TABLES `mp75b_jcomments_settings` WRITE;
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','author_email',2);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','author_homepage',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','author_name',2);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','autolinkurls','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','autopublish','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','badwords','');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_ban','7,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_comment','1,9,6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_delete','6,7,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_delete_for_my_object','');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_delete_own','6,7,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_edit','6,7,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_edit_for_my_object','');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_edit_own','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_publish','6,7,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_publish_for_my_object','');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_reply','1,9,6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_report','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_view_email','6,7,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_view_homepage','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_view_ip','7,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','can_vote','1,9,6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','captcha_engine','kcaptcha');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','censor_replace_word','[censored]');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','comments_list_order','DESC');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','comments_page_limit',15);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','comments_pagination','both');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','comments_per_page',10);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','comments_tree_order',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','comment_maxlength',1000);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','comment_minlength',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','comment_title',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','delete_mode',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','display_author','name');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','emailprotection','1,9');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_autocensor','1,9');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_bbcode_b','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_bbcode_code','2,3,4,5,6,7,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_bbcode_hide','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_bbcode_i','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_bbcode_img','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_bbcode_list','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_bbcode_quote','1,9,6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_bbcode_s','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_bbcode_u','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_bbcode_url','6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_blacklist',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_captcha','1,9');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_categories',19);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_comment_length_check','1,9,2');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_comment_maxlength_check','');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_custom_bbcode',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_geshi',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_gravatar','');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_nested_quotes',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_notification',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_plugins',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_quick_moderation',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_reports',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_rss',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_smilies',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_subscribe','1,9,6,7,2,3,4,5,8');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_username_check',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','enable_voting',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','feed_limit',100);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','floodprotection','1,9,2,3,4');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','flood_time',30);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','forbidden_names','administrator,moderator');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','form_position',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','form_show',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','link_maxlength',50);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','load_cached_comments',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','max_comments_per_object',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','merge_time',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','message_banned','');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','message_locked','Comments are now closed for this entry');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','message_policy_post','');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','message_policy_whocancomment','You have no rights to post comments');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','notification_email','');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','notification_type','1,2');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','reports_before_unpublish',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','reports_per_comment',0);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','report_reason_required',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','show_commentlength',1);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','show_policy','1,9,2');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','smilies',':D	laugh.gif\n:lol:	lol.gif\n:-)	smile.gif\n;-)	wink.gif\n8)	cool.gif\n:-|	normal.gif\n:-*	whistling.gif\n:oops:	redface.gif\n:sad:	sad.gif\n:cry:	cry.gif\n:o	surprised.gif\n:-?	confused.gif\n:-x	sick.gif\n:eek:	shocked.gif\n:zzz	sleeping.gif\n:P	tongue.gif\n:roll:	rolleyes.gif\n:sigh:	unsure.gif');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','smilies_path','/components/com_jcomments/images/smilies/');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','template','default');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','template_view','list');
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','username_maxlength',20);
INSERT INTO `mp75b_jcomments_settings` VALUES ('','','word_maxlength',50);
UNLOCK TABLES;

-- Table structure for table `mp75b_jcomments_smilies`

DROP TABLE IF EXISTS `mp75b_jcomments_smilies`;
CREATE TABLE `mp75b_jcomments_smilies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(39) NOT NULL DEFAULT '',
  `alias` varchar(39) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jcomments_smilies`

LOCK TABLES `mp75b_jcomments_smilies` WRITE;
INSERT INTO `mp75b_jcomments_smilies` VALUES (1,':D','','laugh.gif','Laugh',1,1,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (2,':lol:','','lol.gif','Lol',1,2,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (3,':-)','','smile.gif','Smile',1,3,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (4,';-)','','wink.gif','Wink',1,4,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (5,'8)','','cool.gif','Cool',1,5,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (6,':-|','','normal.gif','Normal',1,6,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (7,':-*','','whistling.gif','Whistling',1,7,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (8,':oops:','','redface.gif','Redface',1,8,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (9,':sad:','','sad.gif','Sad',1,9,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (10,':cry:','','cry.gif','Cry',1,10,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (11,':o','','surprised.gif','Surprised',1,11,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (12,':-?','','confused.gif','Confused',1,12,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (13,':-x','','sick.gif','Sick',1,13,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (14,':eek:','','shocked.gif','Shocked',1,14,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (15,':zzz','','sleeping.gif','Sleeping',1,15,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (16,':P','','tongue.gif','Tongue',1,16,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (17,':roll:','','rolleyes.gif','Rolleyes',1,17,0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_jcomments_smilies` VALUES (18,':sigh:','','unsure.gif','Unsure',1,18,0,'0000-00-00 00:00:00');
UNLOCK TABLES;

-- Table structure for table `mp75b_jcomments_subscriptions`

DROP TABLE IF EXISTS `mp75b_jcomments_subscriptions`;
CREATE TABLE `mp75b_jcomments_subscriptions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_object` (`object_id`,`object_group`),
  KEY `idx_lang` (`lang`),
  KEY `idx_source` (`source`),
  KEY `idx_hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jcomments_subscriptions`

LOCK TABLES `mp75b_jcomments_subscriptions` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_jcomments_version`

DROP TABLE IF EXISTS `mp75b_jcomments_version`;
CREATE TABLE `mp75b_jcomments_version` (
  `version` varchar(16) NOT NULL DEFAULT '',
  `previous` varchar(16) NOT NULL DEFAULT '',
  `installed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jcomments_version`

LOCK TABLES `mp75b_jcomments_version` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_jcomments_votes`

DROP TABLE IF EXISTS `mp75b_jcomments_votes`;
CREATE TABLE `mp75b_jcomments_votes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_comment` (`commentid`,`userid`),
  KEY `idx_user` (`userid`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jcomments_votes`

LOCK TABLES `mp75b_jcomments_votes` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_languages`

DROP TABLE IF EXISTS `mp75b_languages`;
CREATE TABLE `mp75b_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_languages`

LOCK TABLES `mp75b_languages` WRITE;
INSERT INTO `mp75b_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
UNLOCK TABLES;

-- Table structure for table `mp75b_localise`

DROP TABLE IF EXISTS `mp75b_localise`;
CREATE TABLE `mp75b_localise` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_path` (`path`)
) ENGINE=MyISAM AUTO_INCREMENT=727 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_localise`

LOCK TABLES `mp75b_localise` WRITE;
INSERT INTO `mp75b_localise` VALUES (1,136,'/var/www/factory.aedew.com/language/en-GB/en-GB.xml',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (2,137,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.xml',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (3,138,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.xml',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (4,139,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.xml',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (5,140,'/var/www/factory.aedew.com/administrator/components/com_djcatalog2/language/en-GB/en-GB.com_djcatalog2.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (6,142,'/var/www/factory.aedew.com/administrator/components/com_localise/language/ca-ES/ca-ES.com_localise.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (7,143,'/var/www/factory.aedew.com/administrator/components/com_localise/language/da-DK/da-DK.com_localise.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (8,144,'/var/www/factory.aedew.com/administrator/components/com_localise/language/de-DE/de-DE.com_localise.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (9,145,'/var/www/factory.aedew.com/administrator/components/com_localise/language/en-GB/en-GB.com_localise.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (10,146,'/var/www/factory.aedew.com/administrator/components/com_localise/language/fa-IR/fa-IR.com_localise.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (11,147,'/var/www/factory.aedew.com/administrator/components/com_localise/language/fr-FR/fr-FR.com_localise.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (12,148,'/var/www/factory.aedew.com/administrator/components/com_localise/language/pt-BR/pt-BR.com_localise.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (13,149,'/var/www/factory.aedew.com/administrator/components/com_localise/language/pt-PT/pt-PT.com_localise.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (14,150,'/var/www/factory.aedew.com/administrator/components/com_localise/language/zh-TW/zh-TW.com_localise.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (15,151,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_modulesmanagerck.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (16,152,'/var/www/factory.aedew.com/administrator/components/com_modulesmanagerck/language/fr-FR/fr-FR.com_modulesmanagerck.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (17,153,'/var/www/factory.aedew.com/administrator/components/com_quickcontent/language/en-GB/en-GB.com_quickcontent.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (18,154,'/var/www/factory.aedew.com/administrator/components/com_quickcontent/language/zh-TW/zh-TW.com_quickcontent.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (19,155,'/var/www/factory.aedew.com/administrator/components/com_remoteimage/language/en-GB/en-GB.com_remoteimage.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (20,156,'/var/www/factory.aedew.com/administrator/components/com_remoteimage/language/zh-TW/zh-TW.com_remoteimage.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (21,157,'/var/www/factory.aedew.com/administrator/components/com_userxtd/language/en-GB/en-GB.com_userxtd.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (22,158,'/var/www/factory.aedew.com/administrator/components/com_userxtd/language/fa-IR/fa-IR.com_userxtd.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (23,159,'/var/www/factory.aedew.com/administrator/components/com_userxtd/language/zh-TW/zh-TW.com_userxtd.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (24,160,'/var/www/factory.aedew.com/administrator/components/com_webgallery/language/en-GB/en-GB.com_webgallery.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (25,161,'/var/www/factory.aedew.com/administrator/components/com_webgallery/language/zh-TW/zh-TW.com_webgallery.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (26,162,'/var/www/factory.aedew.com/administrator/components/com_djcatalog2/language/en-GB/en-GB.com_djcatalog2.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (27,163,'/var/www/factory.aedew.com/administrator/components/com_localise/language/ca-ES/ca-ES.com_localise.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (28,164,'/var/www/factory.aedew.com/administrator/components/com_localise/language/da-DK/da-DK.com_localise.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (29,165,'/var/www/factory.aedew.com/administrator/components/com_localise/language/de-DE/de-DE.com_localise.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (30,166,'/var/www/factory.aedew.com/administrator/components/com_localise/language/en-GB/en-GB.com_localise.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (31,167,'/var/www/factory.aedew.com/administrator/components/com_localise/language/fa-IR/fa-IR.com_localise.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (32,168,'/var/www/factory.aedew.com/administrator/components/com_localise/language/fr-FR/fr-FR.com_localise.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (33,169,'/var/www/factory.aedew.com/administrator/components/com_localise/language/pt-BR/pt-BR.com_localise.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (34,170,'/var/www/factory.aedew.com/administrator/components/com_localise/language/pt-PT/pt-PT.com_localise.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (35,171,'/var/www/factory.aedew.com/administrator/components/com_localise/language/zh-TW/zh-TW.com_localise.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (36,172,'/var/www/factory.aedew.com/administrator/components/com_m2c/language/en-GB/en-GB.com_m2c.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (37,173,'/var/www/factory.aedew.com/administrator/components/com_modulesmanagerck/language/en-GB/en-GB.com_modulesmanagerck.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (38,174,'/var/www/factory.aedew.com/administrator/components/com_modulesmanagerck/language/fr-FR/fr-FR.com_modulesmanagerck.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (39,175,'/var/www/factory.aedew.com/administrator/components/com_quickcontent/language/en-GB/en-GB.com_quickcontent.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (40,176,'/var/www/factory.aedew.com/administrator/components/com_quickcontent/language/zh-TW/zh-TW.com_quickcontent.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (41,177,'/var/www/factory.aedew.com/administrator/components/com_remoteimage/language/en-GB/en-GB.com_remoteimage.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (42,178,'/var/www/factory.aedew.com/administrator/components/com_remoteimage/language/zh-TW/zh-TW.com_remoteimage.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (43,179,'/var/www/factory.aedew.com/administrator/components/com_userxtd/language/en-GB/en-GB.com_userxtd.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (44,180,'/var/www/factory.aedew.com/administrator/components/com_userxtd/language/fa-IR/fa-IR.com_userxtd.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (45,181,'/var/www/factory.aedew.com/administrator/components/com_userxtd/language/zh-TW/zh-TW.com_userxtd.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (46,182,'/var/www/factory.aedew.com/administrator/components/com_webgallery/language/en-GB/en-GB.com_webgallery.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (47,183,'/var/www/factory.aedew.com/administrator/components/com_webgallery/language/zh-TW/zh-TW.com_webgallery.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (48,184,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_multilangstatus.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (49,185,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_version.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (50,186,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_multilangstatus.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (51,187,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_version.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (52,188,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.tpl_hathor.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (53,189,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.tpl_isis.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (54,190,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.tpl_hathor.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (55,191,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.tpl_isis.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (56,192,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_admin.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (57,193,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_admin.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (58,194,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_ajax.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (59,195,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_ajax.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (60,196,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_banners.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (61,197,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_banners.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (62,198,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_cache.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (63,199,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_cache.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (64,200,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_categories.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (65,201,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_categories.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (66,202,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_checkin.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (67,203,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_checkin.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (68,204,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_config.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (69,205,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_config.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (70,206,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_contact.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (71,207,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_contact.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (72,208,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_content.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (73,209,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_content.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (74,210,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_contenthistory.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (75,211,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_contenthistory.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (76,212,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_cpanel.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (77,213,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_cpanel.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (78,214,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_finder.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (79,215,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_finder.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (80,216,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_installer.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (81,217,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_installer.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (82,218,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_jaextmanager.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (83,219,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_jaextmanager.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (84,220,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (85,221,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_jcomments.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (86,222,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_joomlaupdate.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (87,223,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_joomlaupdate.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (88,224,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_languages.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (89,225,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_languages.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (90,226,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_login.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (91,227,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_login.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (92,228,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_mailto.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (93,229,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_media.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (94,230,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_media.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (95,231,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_menus.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (96,232,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_menus.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (97,233,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_messages.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (98,234,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_messages.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (99,235,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_modules.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (100,236,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_modules.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (101,237,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_newsfeeds.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (102,238,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_newsfeeds.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (103,239,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_plugins.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (104,240,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_plugins.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (105,241,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_postinstall.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (106,242,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_postinstall.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (107,243,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_redirect.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (108,244,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_redirect.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (109,245,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_rsform.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (110,246,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_rsform.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (111,247,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_search.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (112,248,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_search.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (113,249,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_tags.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (114,250,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_tags.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (115,251,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_templates.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (116,252,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_templates.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (117,253,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_users.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (118,254,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_users.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (119,255,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_weblinks.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (120,256,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_weblinks.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (121,257,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_wrapper.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (122,258,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.com_wrapper.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (123,259,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (124,260,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.lib_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (125,261,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_custom.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (126,262,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_custom.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (127,263,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_feed.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (128,264,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_feed.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (129,265,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_latest.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (130,266,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_latest.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (131,267,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_logged.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (132,268,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_logged.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (133,269,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_login.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (134,270,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_login.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (135,271,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_menu.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (136,272,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_menu.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (137,273,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_popular.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (138,274,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_popular.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (139,275,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_quickicon.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (140,276,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_quickicon.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (141,277,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_stats_admin.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (142,278,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_stats_admin.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (143,279,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_status.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (144,280,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_status.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (145,281,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_submenu.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (146,282,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_submenu.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (147,283,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_title.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (148,284,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_title.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (149,285,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_toolbar.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (150,286,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.mod_toolbar.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (151,287,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_authentication_cookie.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (152,288,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_authentication_cookie.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (153,289,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_authentication_gmail.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (154,290,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_authentication_gmail.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (155,291,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_authentication_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (156,292,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_authentication_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (157,293,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_authentication_ldap.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (158,294,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_authentication_ldap.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (159,295,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_captcha_recaptcha.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (160,296,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_captcha_recaptcha.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (161,297,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_contact.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (162,298,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_contact.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (163,299,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_emailcloak.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (164,300,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_emailcloak.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (165,301,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_finder.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (166,302,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_finder.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (167,303,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (168,304,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_jcomments.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (169,305,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (170,306,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (171,307,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_loadmodule.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (172,308,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_loadmodule.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (173,309,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_pagebreak.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (174,310,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_pagebreak.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (175,311,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_pagenavigation.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (176,312,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_pagenavigation.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (177,313,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_vote.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (178,314,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_content_vote.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (179,315,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_article.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (180,316,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_article.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (181,317,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_image.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (182,318,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_image.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (183,319,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_jcommentsoff.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (184,320,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_jcommentsoff.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (185,321,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_jcommentson.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (186,322,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_jcommentson.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (187,323,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_pagebreak.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (188,324,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_pagebreak.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (189,325,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_readmore.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (190,326,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors-xtd_readmore.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (191,327,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors_codemirror.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (192,328,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors_codemirror.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (193,329,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors_none.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (194,330,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors_none.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (195,331,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors_tinymce.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (196,332,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_editors_tinymce.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (197,333,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_extension_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (198,334,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_extension_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (199,335,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_categories.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (200,336,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_categories.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (201,337,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_contacts.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (202,338,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_contacts.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (203,339,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_content.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (204,340,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_content.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (205,341,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_newsfeeds.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (206,342,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_newsfeeds.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (207,343,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_tags.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (208,344,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_tags.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (209,345,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_weblinks.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (210,346,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_finder_weblinks.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (211,347,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_installer_webinstaller.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (212,348,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_installer_webinstaller.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (213,349,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_quickicon_extensionupdate.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (214,350,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_quickicon_extensionupdate.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (215,351,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_quickicon_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (216,352,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_quickicon_jcomments.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (217,353,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_quickicon_joomlaupdate.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (218,354,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_quickicon_joomlaupdate.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (219,355,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_categories.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (220,356,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_categories.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (221,357,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_contacts.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (222,358,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_contacts.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (223,359,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_content.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (224,360,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_content.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (225,361,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (226,362,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_jcomments.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (227,363,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_newsfeeds.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (228,364,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_newsfeeds.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (229,365,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_tags.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (230,366,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_tags.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (231,367,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_weblinks.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (232,368,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_search_weblinks.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (233,369,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_cache.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (234,370,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_cache.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (235,371,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_debug.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (236,372,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_debug.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (237,373,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_highlight.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (238,374,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_highlight.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (239,375,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (240,376,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_jcomments.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (241,377,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_languagecode.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (242,378,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_languagecode.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (243,379,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_languagefilter.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (244,380,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_languagefilter.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (245,381,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_log.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (246,382,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_log.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (247,383,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_logout.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (248,384,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_logout.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (249,385,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_p3p.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (250,386,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_p3p.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (251,387,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_redirect.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (252,388,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_redirect.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (253,389,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_remember.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (254,390,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_remember.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (255,391,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_sef.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (256,392,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_sef.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (257,393,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_t3.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (258,394,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_t3.j25.compat.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (259,395,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_system_t3.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (260,396,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_twofactorauth_totp.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (261,397,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_twofactorauth_totp.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (262,398,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_twofactorauth_yubikey.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (263,399,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_twofactorauth_yubikey.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (264,400,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_user_contactcreator.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (265,401,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_user_contactcreator.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (266,402,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_user_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (267,403,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_user_jcomments.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (268,404,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_user_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (269,405,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_user_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (270,406,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_user_profile.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (271,407,'/var/www/factory.aedew.com/administrator/language/en-GB/en-GB.plg_user_profile.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (272,408,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_admin.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (273,409,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_admin.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (274,410,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_ajax.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (275,411,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_ajax.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (276,412,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_banners.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (277,413,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_banners.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (278,414,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_cache.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (279,415,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_cache.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (280,416,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_categories.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (281,417,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_categories.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (282,418,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_checkin.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (283,419,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_checkin.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (284,420,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_config.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (285,421,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_config.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (286,422,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_contact.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (287,423,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_contact.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (288,424,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_content.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (289,425,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_content.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (290,426,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_contenthistory.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (291,427,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_contenthistory.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (292,428,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_cpanel.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (293,429,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_cpanel.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (294,430,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_djcatalog2.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (295,431,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_djcatalog2.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (296,432,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_finder.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (297,433,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_finder.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (298,434,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_installer.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (299,435,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_installer.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (300,436,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_joomlaupdate.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (301,437,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_joomlaupdate.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (302,438,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_languages.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (303,439,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_languages.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (304,440,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_login.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (305,441,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_login.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (306,442,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_mailto.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (307,443,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_media.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (308,444,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_media.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (309,445,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_menus.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (310,446,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_menus.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (311,447,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_messages.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (312,448,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_messages.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (313,449,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_modules.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (314,450,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_modules.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (315,451,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_newsfeeds.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (316,452,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_newsfeeds.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (317,453,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_plugins.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (318,454,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_plugins.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (319,455,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_postinstall.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (320,456,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_postinstall.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (321,457,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_redirect.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (322,458,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_redirect.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (323,459,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_search.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (324,460,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_search.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (325,461,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_tags.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (326,462,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_tags.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (327,463,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_templates.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (328,464,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_templates.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (329,465,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_users.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (330,466,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_users.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (331,467,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_weblinks.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (332,468,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_weblinks.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (333,469,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_wrapper.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (334,470,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_wrapper.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (335,471,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (336,472,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.lib_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (337,473,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_custom.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (338,474,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_custom.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (339,475,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_feed.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (340,476,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_feed.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (341,477,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_latest.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (342,478,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_latest.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (343,479,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_logged.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (344,480,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_logged.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (345,481,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_login.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (346,482,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_login.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (347,483,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_menu.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (348,484,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_menu.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (349,485,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_multilangstatus.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (350,486,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_multilangstatus.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (351,487,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_popular.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (352,488,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_popular.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (353,489,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_quickicon.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (354,490,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_quickicon.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (355,491,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_stats_admin.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (356,492,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_stats_admin.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (357,493,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_status.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (358,494,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_status.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (359,495,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_submenu.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (360,496,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_submenu.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (361,497,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_title.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (362,498,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_title.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (363,499,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_toolbar.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (364,500,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_toolbar.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (365,501,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_version.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (366,502,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.mod_version.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (367,503,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_authentication_cookie.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (368,504,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_authentication_cookie.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (369,505,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_authentication_gmail.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (370,506,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_authentication_gmail.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (371,507,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_authentication_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (372,508,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_authentication_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (373,509,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_authentication_ldap.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (374,510,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_authentication_ldap.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (375,511,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_captcha_recaptcha.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (376,512,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_captcha_recaptcha.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (377,513,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_contact.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (378,514,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_contact.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (379,515,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_emailcloak.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (380,516,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_emailcloak.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (381,517,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_finder.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (382,518,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_finder.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (383,519,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (384,520,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (385,521,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_loadmodule.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (386,522,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_loadmodule.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (387,523,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_pagebreak.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (388,524,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_pagebreak.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (389,525,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_pagenavigation.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (390,526,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_pagenavigation.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (391,527,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_vote.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (392,528,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_vote.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (393,529,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_djcatalog2_pagebreak.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (394,530,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_djcatalog2_pagebreak.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (395,531,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_article.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (396,532,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_article.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (397,533,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_image.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (398,534,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_image.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (399,535,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_pagebreak.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (400,536,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_pagebreak.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (401,537,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_readmore.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (402,538,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_readmore.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (403,539,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors_codemirror.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (404,540,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors_codemirror.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (405,541,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors_none.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (406,542,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors_none.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (407,543,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors_tinymce.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (408,544,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors_tinymce.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (409,545,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_extension_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (410,546,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_extension_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (411,547,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_categories.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (412,548,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_categories.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (413,549,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_contacts.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (414,550,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_contacts.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (415,551,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_content.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (416,552,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_content.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (417,553,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_newsfeeds.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (418,554,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_newsfeeds.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (419,555,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_tags.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (420,556,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_tags.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (421,557,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_weblinks.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (422,558,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_finder_weblinks.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (423,559,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_installer_webinstaller.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (424,560,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_installer_webinstaller.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (425,561,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_quickicon_djcatalog2.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (426,562,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_quickicon_djcatalog2.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (427,563,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_quickicon_extensionupdate.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (428,564,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_quickicon_extensionupdate.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (429,565,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_quickicon_joomlaupdate.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (430,566,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_quickicon_joomlaupdate.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (431,567,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_categories.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (432,568,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_categories.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (433,569,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_contacts.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (434,570,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_contacts.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (435,571,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_content.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (436,572,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_content.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (437,573,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_djcatalog2.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (438,574,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_djcatalog2.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (439,575,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_newsfeeds.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (440,576,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_newsfeeds.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (441,577,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_tags.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (442,578,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_tags.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (443,579,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_weblinks.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (444,580,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_weblinks.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (445,581,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_cache.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (446,582,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_cache.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (447,583,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_debug.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (448,584,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_debug.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (449,585,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_highlight.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (450,586,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_highlight.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (451,587,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_languagecode.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (452,588,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_languagecode.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (453,589,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_languagefilter.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (454,590,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_languagefilter.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (455,591,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_log.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (456,592,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_log.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (457,593,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_logout.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (458,594,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_logout.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (459,595,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_p3p.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (460,596,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_p3p.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (461,597,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_redirect.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (462,598,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_redirect.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (463,599,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_remember.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (464,600,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_remember.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (465,601,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_sef.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (466,602,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_sef.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (467,603,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_twofactorauth_totp.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (468,604,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_twofactorauth_totp.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (469,605,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_twofactorauth_yubikey.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (470,606,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_twofactorauth_yubikey.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (471,607,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_user_contactcreator.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (472,608,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_user_contactcreator.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (473,609,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_user_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (474,610,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_user_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (475,611,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_user_profile.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (476,612,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_user_profile.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (477,613,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_xmap_com_djcatalog2.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (478,614,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_xmap_com_djcatalog2.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (479,615,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.tpl_hathor.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (480,616,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.tpl_hathor.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (481,617,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.tpl_isis.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (482,618,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.tpl_isis.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (483,619,'/var/www/factory.aedew.com/administrator/language/overrides/en-GB.override.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (484,620,'/var/www/factory.aedew.com/administrator/language/overrides/zh-TW.override.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (485,621,'/var/www/factory.aedew.com/components/com_djcatalog2/language/en-GB/en-GB.com_djcatalog2.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (486,622,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_modulesmanagerck.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (487,623,'/var/www/factory.aedew.com/components/com_modulesmanagerck/language/fr-FR/fr-FR.com_modulesmanagerck.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (488,624,'/var/www/factory.aedew.com/components/com_m2c/language/en-GB/en-GB.com_m2c.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (489,625,'/var/www/factory.aedew.com/components/com_modulesmanagerck/language/en-GB/en-GB.com_modulesmanagerck.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (490,626,'/var/www/factory.aedew.com/components/com_modulesmanagerck/language/fr-FR/fr-FR.com_modulesmanagerck.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (491,627,'/var/www/factory.aedew.com/modules/mod_djc2cart/language/en-GB/en-GB.mod_djc2cart.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (492,628,'/var/www/factory.aedew.com/modules/mod_djc2categories/language/en-GB/en-GB.mod_djc2categories.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (493,629,'/var/www/factory.aedew.com/modules/mod_djc2filters/language/en-GB/en-GB.mod_djc2filters.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (494,630,'/var/www/factory.aedew.com/modules/mod_djc2frontpage/language/en-GB/en-GB.mod_djc2frontpage.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (495,631,'/var/www/factory.aedew.com/modules/mod_djc2items/language/en-GB/en-GB.mod_djc2items.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (496,632,'/var/www/factory.aedew.com/modules/mod_djc2producers/language/en-GB/en-GB.mod_djc2producers.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (497,633,'/var/www/factory.aedew.com/modules/mod_djc2relateditems/language/en-GB/en-GB.mod_djc2relateditems.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (498,634,'/var/www/factory.aedew.com/modules/mod_djc2search/language/en-GB/en-GB.mod_djc2search.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (499,635,'/var/www/factory.aedew.com/modules/mod_djc2cart/language/en-GB/en-GB.mod_djc2cart.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (500,636,'/var/www/factory.aedew.com/modules/mod_djc2categories/language/en-GB/en-GB.mod_djc2categories.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (501,637,'/var/www/factory.aedew.com/modules/mod_djc2filters/language/en-GB/en-GB.mod_djc2filters.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (502,638,'/var/www/factory.aedew.com/modules/mod_djc2frontpage/language/en-GB/en-GB.mod_djc2frontpage.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (503,639,'/var/www/factory.aedew.com/modules/mod_djc2items/language/en-GB/en-GB.mod_djc2items.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (504,640,'/var/www/factory.aedew.com/modules/mod_djc2producers/language/en-GB/en-GB.mod_djc2producers.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (505,641,'/var/www/factory.aedew.com/modules/mod_djc2relateditems/language/en-GB/en-GB.mod_djc2relateditems.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (506,642,'/var/www/factory.aedew.com/modules/mod_djc2search/language/en-GB/en-GB.mod_djc2search.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (507,643,'/var/www/factory.aedew.com/language/en-GB/en-GB.tpl_beez3.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (508,644,'/var/www/factory.aedew.com/language/en-GB/en-GB.tpl_protostar.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (509,645,'/var/www/factory.aedew.com/language/en-GB/en-GB.tpl_purity_iii.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (510,646,'/var/www/factory.aedew.com/language/en-GB/en-GB.tpl_beez3.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (511,647,'/var/www/factory.aedew.com/language/en-GB/en-GB.tpl_protostar.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (512,648,'/var/www/factory.aedew.com/language/en-GB/en-GB.tpl_purity_iii.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (513,649,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_ajax.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (514,650,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_config.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (515,651,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_contact.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (516,652,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_content.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (517,653,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_finder.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (518,654,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (519,655,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_mailto.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (520,656,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_media.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (521,657,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_messages.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (522,658,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_newsfeeds.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (523,659,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_rsform.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (524,660,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_search.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (525,661,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_tags.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (526,662,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_users.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (527,663,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_weblinks.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (528,664,'/var/www/factory.aedew.com/language/en-GB/en-GB.com_wrapper.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (529,665,'/var/www/factory.aedew.com/language/en-GB/en-GB.files_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (530,666,'/var/www/factory.aedew.com/language/en-GB/en-GB.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (531,667,'/var/www/factory.aedew.com/language/en-GB/en-GB.lib_fof.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (532,668,'/var/www/factory.aedew.com/language/en-GB/en-GB.lib_idna_convert.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (533,669,'/var/www/factory.aedew.com/language/en-GB/en-GB.lib_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (534,670,'/var/www/factory.aedew.com/language/en-GB/en-GB.lib_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (535,671,'/var/www/factory.aedew.com/language/en-GB/en-GB.lib_phpass.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (536,672,'/var/www/factory.aedew.com/language/en-GB/en-GB.lib_phpmailer.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (537,673,'/var/www/factory.aedew.com/language/en-GB/en-GB.lib_phputf8.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (538,674,'/var/www/factory.aedew.com/language/en-GB/en-GB.lib_simplepie.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (539,675,'/var/www/factory.aedew.com/language/en-GB/en-GB.lib_windwalker.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (540,676,'/var/www/factory.aedew.com/language/en-GB/en-GB.lib_windwalker.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (541,677,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_archive.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (542,678,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_archive.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (543,679,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_categories.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (544,680,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_categories.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (545,681,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_category.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (546,682,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_category.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (547,683,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_latest.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (548,684,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_latest.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (549,685,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_news.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (550,686,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_news.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (551,687,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_popular.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (552,688,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_articles_popular.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (553,689,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_banners.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (554,690,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_banners.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (555,691,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_breadcrumbs.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (556,692,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_breadcrumbs.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (557,693,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_custom.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (558,694,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_custom.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (559,695,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_feed.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (560,696,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_feed.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (561,697,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_finder.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (562,698,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_finder.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (563,699,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_footer.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (564,700,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_footer.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (565,701,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_languages.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (566,702,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_languages.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (567,703,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_login.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (568,704,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_login.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (569,705,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_menu.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (570,706,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_menu.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (571,707,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_random_image.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (572,708,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_random_image.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (573,709,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_related_items.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (574,710,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_related_items.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (575,711,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_search.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (576,712,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_search.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (577,713,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_stats.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (578,714,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_stats.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (579,715,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_syndicate.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (580,716,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_syndicate.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (581,717,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_tags_popular.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (582,718,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_tags_popular.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (583,719,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_tags_similar.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (584,720,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_tags_similar.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (585,721,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_users_latest.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (586,722,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_users_latest.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (587,723,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_weblinks.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (588,724,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_weblinks.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (589,725,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_whosonline.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (590,726,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_whosonline.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (591,727,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_wrapper.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (592,728,'/var/www/factory.aedew.com/language/en-GB/en-GB.mod_wrapper.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (593,729,'/var/www/factory.aedew.com/language/en-GB/en-GB.plg_search_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (594,730,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_ajax.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (595,731,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_config.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (596,732,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_contact.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (597,733,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_content.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (598,734,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_djcatalog2.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (599,735,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_finder.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (600,736,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_mailto.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (601,737,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_media.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (602,738,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_messages.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (603,739,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_newsfeeds.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (604,740,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_search.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (605,741,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_tags.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (606,742,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_users.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (607,743,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_weblinks.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (608,744,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_wrapper.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (609,745,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.files_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (610,746,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (611,747,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.lib_fof.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (612,748,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.lib_idna_convert.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (613,749,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.lib_joomla.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (614,750,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.lib_joomla.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (615,751,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.lib_phpass.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (616,752,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.lib_phpmailer.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (617,753,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.lib_phputf8.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (618,754,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.lib_simplepie.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (619,755,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.lib_windwalker.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (620,756,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.lib_windwalker.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (621,757,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_archive.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (622,758,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_archive.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (623,759,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_categories.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (624,760,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_categories.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (625,761,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_category.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (626,762,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_category.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (627,763,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_latest.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (628,764,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_latest.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (629,765,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_news.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (630,766,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_news.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (631,767,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_popular.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (632,768,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_articles_popular.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (633,769,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_banners.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (634,770,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_banners.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (635,771,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_breadcrumbs.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (636,772,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_breadcrumbs.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (637,773,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_custom.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (638,774,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_custom.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (639,775,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2categories.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (640,776,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2categories.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (641,777,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2filters.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (642,778,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2filters.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (643,779,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2frontpage.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (644,780,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2frontpage.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (645,781,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2items.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (646,782,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2items.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (647,783,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2producers.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (648,784,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2producers.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (649,785,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2relateditems.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (650,786,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2relateditems.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (651,787,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2search.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (652,788,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2search.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (653,789,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_feed.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (654,790,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_feed.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (655,791,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_finder.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (656,792,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_finder.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (657,793,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_footer.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (658,794,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_footer.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (659,795,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_languages.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (660,796,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_languages.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (661,797,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_login.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (662,798,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_login.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (663,799,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_menu.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (664,800,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_menu.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (665,801,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_random_image.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (666,802,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_random_image.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (667,803,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_related_items.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (668,804,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_related_items.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (669,805,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_search.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (670,806,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_search.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (671,807,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_stats.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (672,808,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_stats.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (673,809,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_syndicate.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (674,810,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_syndicate.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (675,811,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_tags_popular.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (676,812,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_tags_popular.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (677,813,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_tags_similar.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (678,814,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_tags_similar.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (679,815,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_users_latest.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (680,816,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_users_latest.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (681,817,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_weblinks.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (682,818,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_weblinks.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (683,819,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_whosonline.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (684,820,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_whosonline.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (685,821,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_wrapper.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (686,822,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_wrapper.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (687,823,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.tpl_beez3.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (688,824,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.tpl_beez3.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (689,825,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.tpl_protostar.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (690,826,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.tpl_protostar.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (691,827,'/var/www/factory.aedew.com/language/overrides/en-GB.override.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (692,828,'/var/www/factory.aedew.com/language/overrides/zh-TW.override.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (693,829,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_jaextmanager.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (694,830,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (695,831,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_modulesmanagerck.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (696,832,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_rsform.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (697,833,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_jaextmanager.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (698,834,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_jcomments.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (699,835,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_m2c.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (700,836,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_modulesmanagerck.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (701,837,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.com_rsform.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (702,838,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (703,839,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_modulesmanagerck.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (704,840,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_rsform.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (705,841,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_m2c.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (706,842,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.com_modulesmanagerck.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (707,843,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2cart.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (708,844,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.mod_djc2cart.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (709,845,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.tpl_purity_iii.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (710,846,'/var/www/factory.aedew.com/language/zh-TW/zh-TW.tpl_purity_iii.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (711,847,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (712,848,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_content_jcomments.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (713,849,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_jcommentsoff.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (714,850,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_jcommentson.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (715,851,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_jcommentsoff.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (716,852,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_editors-xtd_jcommentson.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (717,853,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_quickicon_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (718,854,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_quickicon_jcomments.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (719,855,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (720,856,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_search_jcomments.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (721,857,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (722,858,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_t3.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (723,859,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_jcomments.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (724,860,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_system_t3.sys.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (725,861,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_user_jcomments.ini',0,'0000-00-00 00:00:00');
INSERT INTO `mp75b_localise` VALUES (726,862,'/var/www/factory.aedew.com/administrator/language/zh-TW/zh-TW.plg_user_jcomments.sys.ini',0,'0000-00-00 00:00:00');
UNLOCK TABLES;

-- Table structure for table `mp75b_menu`

DROP TABLE IF EXISTS `mp75b_menu`;
CREATE TABLE `mp75b_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_menu`

LOCK TABLES `mp75b_menu` WRITE;
INSERT INTO `mp75b_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,143,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',29,30,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',31,32,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',33,38,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',34,35,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',36,37,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',39,40,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (23,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',43,44,0,'',1);
INSERT INTO `mp75b_menu` VALUES (24,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',45,46,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (101,'mainmenu','網站設計','web','','web','index.php?option=com_m2c&view=m2c','component',1,1,1,10028,0,'0000-00-00 00:00:00',0,1,'',0,'{\"position\":\"content\",\"mdescription\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',47,48,1,'*',0);
INSERT INTO `mp75b_menu` VALUES (103,'main','RSFormPro','rsformpro','','rsformpro','index.php?option=com_rsform','component',0,1,1,10016,0,'0000-00-00 00:00:00',0,1,'components/com_rsform/assets/images/rsformpro.gif',0,'',49,62,0,'',1);
INSERT INTO `mp75b_menu` VALUES (104,'main','COM_RSFORM_MANAGE_FORMS','com-rsform-manage-forms','','rsformpro/com-rsform-manage-forms','index.php?option=com_rsform&view=forms','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',50,51,0,'',1);
INSERT INTO `mp75b_menu` VALUES (105,'main','COM_RSFORM_MANAGE_SUBMISSIONS','com-rsform-manage-submissions','','rsformpro/com-rsform-manage-submissions','index.php?option=com_rsform&view=submissions','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',52,53,0,'',1);
INSERT INTO `mp75b_menu` VALUES (106,'main','COM_RSFORM_CONFIGURATION','com-rsform-configuration','','rsformpro/com-rsform-configuration','index.php?option=com_rsform&view=configuration','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',54,55,0,'',1);
INSERT INTO `mp75b_menu` VALUES (107,'main','COM_RSFORM_BACKUP_RESTORE','com-rsform-backup-restore','','rsformpro/com-rsform-backup-restore','index.php?option=com_rsform&view=backuprestore','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',56,57,0,'',1);
INSERT INTO `mp75b_menu` VALUES (108,'main','COM_RSFORM_UPDATES','com-rsform-updates','','rsformpro/com-rsform-updates','index.php?option=com_rsform&view=updates','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',58,59,0,'',1);
INSERT INTO `mp75b_menu` VALUES (109,'main','COM_RSFORM_PLUGINS','com-rsform-plugins','','rsformpro/com-rsform-plugins','index.php?option=com_rsform&task=goto.plugins','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',60,61,0,'',1);
INSERT INTO `mp75b_menu` VALUES (110,'main','COM_JAEXTMANAGER','com-jaextmanager','','com-jaextmanager','index.php?option=com_jaextmanager','component',0,1,1,10018,0,'0000-00-00 00:00:00',0,1,'components/com_jaextmanager/assets/images/jauc.png',0,'',63,64,0,'',1);
INSERT INTO `mp75b_menu` VALUES (112,'main','Just echo','just-echo','','just-echo','index.php?option=com_echo','component',0,1,1,10027,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',65,66,0,'',1);
INSERT INTO `mp75b_menu` VALUES (114,'main','M2C','m2c','','m2c','index.php?option=com_m2c','component',0,1,1,10028,0,'0000-00-00 00:00:00',0,1,'../media/com_m2c/images/com_m2c-16x16.png',0,'',67,68,0,'',1);
INSERT INTO `mp75b_menu` VALUES (115,'main','COM_WEBGALLERY','com-webgallery','','com-webgallery','index.php?option=com_webgallery','component',0,1,1,10029,0,'0000-00-00 00:00:00',0,1,'components/com_webgallery/images/admin-icons/menu-webgallery.png',0,'',69,78,0,'',1);
INSERT INTO `mp75b_menu` VALUES (116,'main','jcategories','jcategories','','com-webgallery/jcategories','index.php?option=com_categories&extension=com_webgallery','component',0,115,2,10029,0,'0000-00-00 00:00:00',0,1,'class:category',0,'',70,71,0,'',1);
INSERT INTO `mp75b_menu` VALUES (117,'main','com_webgallery_items','com-webgallery-items','','com-webgallery/com-webgallery-items','index.php?option=com_webgallery&view=items','component',0,115,2,10029,0,'0000-00-00 00:00:00',0,1,'components/com_webgallery/images/admin-icons/menu-items.png',0,'',72,73,0,'',1);
INSERT INTO `mp75b_menu` VALUES (118,'main','COM_WEBGALLERY_QUEUES','com-webgallery-queues','','com-webgallery/com-webgallery-queues','index.php?option=com_webgallery&view=queues','component',0,115,2,10029,0,'0000-00-00 00:00:00',0,1,'components/com_webgallery/images/admin-icons/menu-items.png',0,'',74,75,0,'',1);
INSERT INTO `mp75b_menu` VALUES (119,'main','COM_WEBGALLERY_THUMBNAILS','com-webgallery-thumbnails','','com-webgallery/com-webgallery-thumbnails','index.php?option=com_webgallery&view=thumbnails','component',0,115,2,10029,0,'0000-00-00 00:00:00',0,1,'components/com_webgallery/images/admin-icons/menu-items.png',0,'',76,77,0,'',1);
INSERT INTO `mp75b_menu` VALUES (120,'main','COM_REMOTEIMAGE','com-remoteimage','','com-remoteimage','index.php?option=com_remoteimage','component',0,1,1,10021,0,'0000-00-00 00:00:00',0,1,'components/com_remoteimage/images/admin-icons/menu-remoteimage.png',0,'',79,80,0,'',1);
INSERT INTO `mp75b_menu` VALUES (122,'main','COM_MODULESMANAGERCK','com-modulesmanagerck','','com-modulesmanagerck','index.php?option=com_modulesmanagerck','component',0,1,1,10030,0,'0000-00-00 00:00:00',0,1,'components/com_modulesmanagerck/images/logo_modulesmanagerck_16.png',0,'',81,82,0,'',1);
INSERT INTO `mp75b_menu` VALUES (124,'main','COM_DJCATALOG2','com-djcatalog2','','com-djcatalog2','index.php?option=com_djcatalog2','component',0,1,1,10003,0,'0000-00-00 00:00:00',0,1,'components/com_djcatalog2/assets/images/icon-16-djcatalog.png',0,'',83,84,0,'',1);
INSERT INTO `mp75b_menu` VALUES (125,'mainmenu','網站版型','template','','template','index.php?option=com_djcatalog2&view=items&cid=2','component',1,1,1,10003,0,'0000-00-00 00:00:00',0,1,'',0,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',85,86,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (128,'mainmenu','選用我們三大原因','advantage','','advantage','index.php?option=com_m2c&view=m2c','component',0,1,1,10028,0,'0000-00-00 00:00:00',0,1,'',0,'{\"position\":\"content\",\"mdescription\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',87,88,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (129,'main','COM_USERXTD','com_userxtd','','com_userxtd','index.php?option=com_userxtd','component',0,1,1,10039,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',89,98,0,'',1);
INSERT INTO `mp75b_menu` VALUES (130,'main','jcategory','jcategory','','com_userxtd/jcategory','index.php?option=com_categories&extension=com_userxtd','component',0,129,2,10039,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',90,91,0,'',1);
INSERT INTO `mp75b_menu` VALUES (131,'main','com_userxtd_fields','com_userxtd_fields','','com_userxtd/com_userxtd_fields','index.php?option=com_userxtd&view=fields','component',0,129,2,10039,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',92,93,0,'',1);
INSERT INTO `mp75b_menu` VALUES (132,'main','com_userxtd_profiles','com_userxtd_profiles','','com_userxtd/com_userxtd_profiles','index.php?option=com_userxtd&view=profiles','component',0,129,2,10039,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',94,95,0,'',1);
INSERT INTO `mp75b_menu` VALUES (133,'main','com_userxtd_users','com_userxtd_users','','com_userxtd/com_userxtd_users','index.php?option=com_userxtd&view=users','component',0,129,2,10039,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',96,97,0,'',1);
INSERT INTO `mp75b_menu` VALUES (149,'mainmenu','關於我們','about-us','','about-us','index.php?option=com_m2c&view=m2c','component',0,1,1,10028,0,'0000-00-00 00:00:00',0,1,'',0,'{\"position\":\"content\",\"mdescription\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',99,100,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (150,'mainmenu',13,13,'',13,'index.php?option=com_m2c&view=m2c','component',-2,1,1,10028,0,'0000-00-00 00:00:00',0,1,'',0,'{\"position\":\"masthead\",\"mdescription\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',101,102,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (151,'main','COM_QUICKCONTENT','com_quickcontent','','com_quickcontent','index.php?option=com_quickcontent','component',0,1,1,10044,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',103,104,0,'',1);
INSERT INTO `mp75b_menu` VALUES (152,'mainmenu','白紋收藏分享','web-keep-share','','web-keep-share','index.php?option=com_content&view=category&layout=blog&id=19','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"1\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',105,114,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (153,'main','COM_JCOMMENTS','com_jcomments','','com_jcomments','index.php?option=com_jcomments','component',0,1,1,10045,0,'0000-00-00 00:00:00',0,1,'components/com_jcomments/assets/images/icon-16-jcomments.png',0,'',115,134,0,'',1);
INSERT INTO `mp75b_menu` VALUES (154,'main','COM_JCOMMENTS_COMMENTS','com_jcomments_comments','','com_jcomments/com_jcomments_comments','index.php?option=com_jcomments&view=comments','component',0,153,2,10045,0,'0000-00-00 00:00:00',0,1,'class:jcomments-comments',0,'',116,117,0,'',1);
INSERT INTO `mp75b_menu` VALUES (155,'main','COM_JCOMMENTS_SETTINGS','com_jcomments_settings','','com_jcomments/com_jcomments_settings','index.php?option=com_jcomments&view=settings','component',0,153,2,10045,0,'0000-00-00 00:00:00',0,1,'class:jcomments-settings',0,'',118,119,0,'',1);
INSERT INTO `mp75b_menu` VALUES (156,'main','COM_JCOMMENTS_SMILIES','com_jcomments_smilies','','com_jcomments/com_jcomments_smilies','index.php?option=com_jcomments&view=smilies','component',0,153,2,10045,0,'0000-00-00 00:00:00',0,1,'class:jcomments-smilies',0,'',120,121,0,'',1);
INSERT INTO `mp75b_menu` VALUES (157,'main','COM_JCOMMENTS_SUBSCRIPTIONS','com_jcomments_subscriptions','','com_jcomments/com_jcomments_subscriptions','index.php?option=com_jcomments&view=subscriptions','component',0,153,2,10045,0,'0000-00-00 00:00:00',0,1,'class:jcomments-subscriptions',0,'',122,123,0,'',1);
INSERT INTO `mp75b_menu` VALUES (158,'main','COM_JCOMMENTS_CUSTOM_BBCODE','com_jcomments_custom_bbcode','','com_jcomments/com_jcomments_custom_bbcode','index.php?option=com_jcomments&view=custombbcodes','component',0,153,2,10045,0,'0000-00-00 00:00:00',0,1,'class:jcomments-custombbcodes',0,'',124,125,0,'',1);
INSERT INTO `mp75b_menu` VALUES (159,'main','COM_JCOMMENTS_BLACKLIST','com_jcomments_blacklist','','com_jcomments/com_jcomments_blacklist','index.php?option=com_jcomments&view=blacklists','component',0,153,2,10045,0,'0000-00-00 00:00:00',0,1,'class:jcomments-blacklist',0,'',126,127,0,'',1);
INSERT INTO `mp75b_menu` VALUES (160,'main','COM_JCOMMENTS_MAILQ','com_jcomments_mailq','','com_jcomments/com_jcomments_mailq','index.php?option=com_jcomments&view=mailq','component',0,153,2,10045,0,'0000-00-00 00:00:00',0,1,'class:jcomments-mailq',0,'',128,129,0,'',1);
INSERT INTO `mp75b_menu` VALUES (161,'main','COM_JCOMMENTS_IMPORT','com_jcomments_import','','com_jcomments/com_jcomments_import','index.php?option=com_jcomments&view=import','component',0,153,2,10045,0,'0000-00-00 00:00:00',0,1,'class:jcomments-import',0,'',130,131,0,'',1);
INSERT INTO `mp75b_menu` VALUES (162,'main','COM_JCOMMENTS_ABOUT','com_jcomments_about','','com_jcomments/com_jcomments_about','index.php?option=com_jcomments&view=about','component',0,153,2,10045,0,'0000-00-00 00:00:00',0,1,'class:jcomments-about',0,'',132,133,0,'',1);
INSERT INTO `mp75b_menu` VALUES (163,'main','COM_LOCALISE','com_localise','','com_localise','index.php?option=com_localise','component',0,1,1,10053,0,'0000-00-00 00:00:00',0,1,'class:localise',0,'',135,140,0,'',1);
INSERT INTO `mp75b_menu` VALUES (164,'main','COM_LOCALISE_LANGUAGES','com_localise_languages','','com_localise/com_localise_languages','index.php?option=com_localise&view=languages','component',0,163,2,10053,0,'0000-00-00 00:00:00',0,1,'class:languages',0,'',136,137,0,'',1);
INSERT INTO `mp75b_menu` VALUES (165,'main','COM_LOCALISE_TRANSLATIONS','com_localise_translations','','com_localise/com_localise_translations','index.php?option=com_localise&view=translations','component',0,163,2,10053,0,'0000-00-00 00:00:00',0,1,'class:translations',0,'',138,139,0,'',1);
INSERT INTO `mp75b_menu` VALUES (166,'mainmenu','網站後端','backend','','web-keep-share/backend','index.php?option=com_tags&view=tag&id[0]=2&id[1]=6&types[0]=1','component',1,152,2,29,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_tag_title\":\"\",\"tag_list_show_tag_image\":\"\",\"tag_list_show_tag_description\":\"\",\"tag_list_image\":\"\",\"tag_list_description\":\"\",\"show_tag_num_items\":\"\",\"tag_list_orderby\":\"\",\"tag_list_orderby_direction\":\"\",\"tag_list_show_item_image\":\"\",\"tag_list_show_item_description\":\"\",\"tag_list_item_maximum_characters\":0,\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"return_any_or_all\":\"\",\"include_children\":\"\",\"maximum\":200,\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',110,111,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (167,'mainmenu','網站前端','frontend','','web-keep-share/frontend','index.php?option=com_tags&view=tag&id[0]=14&id[1]=17&types[0]=1','component',1,152,2,29,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_tag_title\":\"\",\"tag_list_show_tag_image\":\"\",\"tag_list_show_tag_description\":\"\",\"tag_list_image\":\"\",\"tag_list_description\":\"\",\"show_tag_num_items\":\"\",\"tag_list_orderby\":\"\",\"tag_list_orderby_direction\":\"\",\"tag_list_show_item_image\":\"\",\"tag_list_show_item_description\":\"\",\"tag_list_item_maximum_characters\":0,\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"return_any_or_all\":\"\",\"include_children\":\"\",\"maximum\":200,\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',108,109,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (168,'mainmenu','css, less, sass','css-less-sass','','web-keep-share/css-less-sass','index.php?option=com_tags&view=tag&id[0]=16&id[1]=18&id[2]=19&types[0]=1','component',1,152,2,29,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_tag_title\":\"\",\"tag_list_show_tag_image\":\"\",\"tag_list_show_tag_description\":\"\",\"tag_list_image\":\"\",\"tag_list_description\":\"\",\"show_tag_num_items\":\"\",\"tag_list_orderby\":\"\",\"tag_list_orderby_direction\":\"\",\"tag_list_show_item_image\":\"\",\"tag_list_show_item_description\":\"\",\"tag_list_item_maximum_characters\":0,\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"return_any_or_all\":\"\",\"include_children\":\"\",\"maximum\":200,\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',112,113,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (169,'mainmenu','網站設計','網站設計','','web-keep-share/網站設計','index.php?option=com_tags&view=tag&id[0]=14&types[0]=1','component',1,152,2,29,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_tag_title\":\"\",\"tag_list_show_tag_image\":\"\",\"tag_list_show_tag_description\":\"\",\"tag_list_image\":\"\",\"tag_list_description\":\"\",\"show_tag_num_items\":\"\",\"tag_list_orderby\":\"\",\"tag_list_orderby_direction\":\"\",\"tag_list_show_item_image\":\"\",\"tag_list_show_item_description\":\"\",\"tag_list_item_maximum_characters\":0,\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"return_any_or_all\":\"\",\"include_children\":\"\",\"maximum\":200,\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',106,107,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (170,'main','COM_FAVICON','com_favicon','','com_favicon','index.php?option=com_favicon','component',0,1,1,10055,0,'0000-00-00 00:00:00',0,1,'../media/com_favicon/assets/images/favicon16.png',0,'',141,142,0,'',1);
UNLOCK TABLES;

-- Table structure for table `mp75b_menu_types`

DROP TABLE IF EXISTS `mp75b_menu_types`;
CREATE TABLE `mp75b_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_menu_types`

LOCK TABLES `mp75b_menu_types` WRITE;
INSERT INTO `mp75b_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
UNLOCK TABLES;

-- Table structure for table `mp75b_messages`

DROP TABLE IF EXISTS `mp75b_messages`;
CREATE TABLE `mp75b_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_messages`

LOCK TABLES `mp75b_messages` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_messages_cfg`

DROP TABLE IF EXISTS `mp75b_messages_cfg`;
CREATE TABLE `mp75b_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_messages_cfg`

LOCK TABLES `mp75b_messages_cfg` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_modules`

DROP TABLE IF EXISTS `mp75b_modules`;
CREATE TABLE `mp75b_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_modules`

LOCK TABLES `mp75b_modules` WRITE;
INSERT INTO `mp75b_modules` VALUES (1,55,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (2,56,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (3,57,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (4,58,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (8,59,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (9,60,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (10,61,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (12,62,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (13,63,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (14,64,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (15,65,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (16,66,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (17,67,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (79,68,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (86,69,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (87,55,'DJ-Catalog2 Categories','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2categories',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (88,56,'DJ-Catalog2 Frontpage','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2frontpage',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (89,57,'DJ-Catalog2 Items','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2items',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (90,58,'DJ-Catalog2 Related Items','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2relateditems',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (91,59,'DJ-Catalog2 Filters Module','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2filters',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (92,60,'DJ-Catalog2 Producers','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2producers',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (93,61,'DJ-Catalog2 Search Module','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2search',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (94,67,'IndexHtml','','',1,'content',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (95,68,'header','','<div class=\"custom row-feature-primary\">\r\n<div class=\"jumbotron jumbotron-primary masthead\">\r\n<h2>不可思議的 <strong>網站設計</strong></h2>\r\n<p>手機, 電腦, 平板 三個願望一次滿足，</p>\r\n<p>畫面內容隨心所欲，卻如此簡單迅速。</p>\r\n<p class=\"btn-actions\"><a class=\"btn btn-primary btn-lg\" href=\"#contact\">立即體驗</a> 這 <strong>不可思議</strong> 的感覺吧！</p>\r\n</div>\r\n</div>',1,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"row-feature-primary\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (96,69,'advantage','','<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-12 text-center\" style=\"margin-bottom: 25px;\"><img class=\"wow fadeInDown\" src=\"images/upload/index.png\" alt=\"\" /></div>\r\n</div>\r\n</div>\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 text-center\"><img class=\"wow zoomIn\" src=\"images/upload/icon/language.png\" alt=\"\" />\r\n<div class=\"wow fadeInUp\" data-wow-delay=\"0.05s\">\r\n<h2>多語言網站</h2>\r\n<h4>讓全世界，認識您。</h4>\r\n<p>透過專業的多國語言網站系統，能替您快速打造專業且全面的國際化網站，讓您的網路門面成為真正創造營收的通路來源，讓企業走向國際舞台！</p>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-4 text-center\"><img class=\"wow zoomIn\" src=\"images/upload/icon/page.png\" alt=\"\" data-wow-delay=\"0.1s\" />\r\n<div class=\"wow fadeInUp\" data-wow-delay=\"0.2s\">\r\n<h2>簡單的網站管理介面</h2>\r\n<h4>隨心所欲，想變就變。</h4>\r\n<p>我們大量代理許多國際品牌的網站，讓您隨時隨性可更換樣板，國際等級的規格，讓您的網站呈現絕佳質感，使用者好感度大幅提升！</p>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-4 text-center\"><img class=\"wow zoomIn\" src=\"images/upload/icon/team.png\" alt=\"\" data-wow-delay=\"0.2s\" />\r\n<div class=\"wow fadeInUp\" data-wow-delay=\"0.3s\">\r\n<h2>前後端的專業</h2>\r\n<h4>您專業的網路後盾。</h4>\r\n<p>由一群對網站解決方案充滿熱誠的專業團隊成員，在幾年來的網站設計經驗中，制定個案進行評估，透過會議確定相關專業服務之重點及目標，完成專案之擬定。</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 text-center\"><img class=\"wow zoomIn\" src=\"images/upload/icon/seo_b.png\" alt=\"\" data-wow-delay=\"0.1s\" />\r\n<div class=\"wow fadeInUp\" data-wow-delay=\"0.2s\">\r\n<h2>SEO 內容整合</h2>\r\n<h4>讓全世界，找到您。</h4>\r\n<p>網站讓世界找得到，依照搜尋引擎的規定打造出的網站，讓網站輕鬆符合 Google Yahoo 的遊戲規則。</p>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-4 text-center\"><img class=\"wow zoomIn\" src=\"images/upload/icon/responsive.png\" alt=\"\" data-wow-delay=\"0.2s\" />\r\n<div class=\"wow fadeInUp\" data-wow-delay=\"0.3s\">\r\n<h2>響應式網站</h2>\r\n<h4>三個願望一次滿足</h4>\r\n<p>手機 電腦 與 平板 三個網站一次滿足，我們網站採用先進的 Responsive 技術，讓網站適應任何尺寸的螢幕，省去其他平台網站的製作費用。</p>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-4 text-center\"><img class=\"wow zoomIn\" src=\"images/upload/icon/price.png\" alt=\"\" data-wow-delay=\"0.3s\" />\r\n<div class=\"wow fadeInUp\" data-wow-delay=\"0.35s\">\r\n<h2>透明的價格</h2>\r\n<h4>同等級卻如此便宜</h4>\r\n<p>我們的網站皆有以下特點，便宜、好用、符合搜尋引擎 (SEO) 精打細算的您，一定不會錯過。</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>',2,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" row-feature-content\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-html5\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (97,70,'project','','<div class=\"row row-feature-ct\">\r\n<div class=\"custom\"><header class=\"jumbotron\">\r\n<h2>優惠方案</h2>\r\n</header>\r\n<table class=\"aedesProject table table-striped\">\r\n<thead>\r\n<tr><th> </th><th>無修改方案</th><th>評價奢華</th><th class=\"active\">高貴不貴</th><th>華麗登場</th><th>客製化</th><th class=\"disable\"><i>購物車方案</i></th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>製作服務</td>\r\n<td>精美製作</td>\r\n<td>樣板色系調整</td>\r\n<td class=\"active\">樣板色系調整</td>\r\n<td>樣板色系調整</td>\r\n<td>詳談</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>網站空間</td>\r\n<td>30 GB</td>\r\n<td>40 GB</td>\r\n<td class=\"active\">100 GB</td>\r\n<td>無限制</td>\r\n<td>無限制</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>流量限制</td>\r\n<td>100 GB</td>\r\n<td>100 GB</td>\r\n<td class=\"active\">500 GB</td>\r\n<td>無限制</td>\r\n<td>無限制</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>網址</td>\r\n<td style=\"text-align: center;\" colspan=\"5\">贈送一組免費網區名稱<br /> (無重複任意).dsa.tw</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>首年頁面代理上傳</td>\r\n<td>5 頁</td>\r\n<td>20 頁</td>\r\n<td class=\"active\">30 頁</td>\r\n<td>50 頁</td>\r\n<td>詳談</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>製作費用 與 首年合約</td>\r\n<td><small>$</small> 10000</td>\r\n<td><small>$</small> 25000</td>\r\n<td class=\"active\"><small>$</small> 30000</td>\r\n<td><small>$</small> 50000</td>\r\n<td>詳談</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>續約，含<br /> <small>服務費, 主機費用, <br /> 網站樣板合法授權</small></td>\r\n<td><small>$</small> 5000</td>\r\n<td><small>$</small> 6000</td>\r\n<td class=\"active\"><small>$</small> 8000</td>\r\n<td><small>$</small> 10000</td>\r\n<td>詳談</td>\r\n<td>籌備中</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>',10,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (98,73,'projectSetup1','','<div class=\"container\">\r\n<div class=\"row clearfix wow fadeInLeft\">\r\n<div class=\"col-md-6 column wow slideInRight\">\r\n<h3 class=\"text-right\">第一步 - 選擇方案與版型。</h3>\r\n<blockquote class=\"pull-right\">\r\n<p><strong>挑選</strong>一個喜歡的版型，適合的<strong>方案</strong>。</p>\r\n</blockquote>\r\n</div>\r\n<div class=\"col-md-6 column wow slideInRight\"><img src=\"images/com_aedes/boostrap3.png\" alt=\"140x140\" /></div>\r\n</div>\r\n</div>',13,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (99,75,'NEW MODULE','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_articles_news',1,1,'{\"catid\":\"\",\"image\":\"0\",\"item_title\":\"0\",\"link_titles\":\"\",\"item_heading\":\"h4\",\"showLastSeparator\":\"1\",\"readmore\":\"0\",\"count\":\"5\",\"ordering\":\"a.publish_up\",\"direction\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (100,76,'projectSetup2','','<div class=\"container\">\r\n<div class=\"row clearfix wow fadeInRight\">\r\n<div class=\"col-md-6 column\"><img src=\"images/com_aedes/typography.png\" alt=\"140x140\" /></div>\r\n<div class=\"col-md-6 column\">\r\n<h3>第二步 - 簽約</h3>\r\n<blockquote>\r\n<p>我們<strong>簽約</strong>後支付 50 ％ 訂金。</p>\r\n</blockquote>\r\n</div>\r\n</div>\r\n</div>',14,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (101,77,'projectSetup3','','<div class=\"container\">\r\n<div class=\"row clearfix wow fadeInLeft\">\r\n<div class=\"col-md-6 column\">\r\n<h3 class=\"text-right\">h3. Lorem ipsum dolor sit amet.</h3>\r\n<blockquote class=\"pull-right\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n<small>Someone famous <cite>Source Title</cite></small></blockquote>\r\n</div>\r\n<div class=\"col-md-6 column\"><img src=\"images/com_aedes/boostrap3.png\" alt=\"140x140\" /></div>\r\n</div>\r\n</div>',15,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (102,78,'projectSetup3 (2)','','<div class=\"container\">\r\n<div class=\"row clearfix\">\r\n<div class=\"col-md-12 column\">\r\n<h2 class=\"text-center\">服務流程</h2>\r\n<h3 class=\"text-center\">簡單又快速的高品質服務</h3>\r\n</div>\r\n</div>\r\n<div class=\"row clearfix\">\r\n<div class=\"col-md-6 column\">\r\n<h3 class=\"text-right\">h3. Lorem ipsum dolor sit amet.</h3>\r\n<blockquote class=\"pull-right\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n<small>Someone famous <cite>Source Title</cite></small></blockquote>\r\n</div>\r\n<div class=\"col-md-6 column\"><img src=\"images/com_aedes/boostrap3.png\" alt=\"140x140\" /></div>\r\n</div>\r\n</div>',11,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (103,79,'projectSetup4','','<div class=\"container\">\r\n<div class=\"row clearfix wow fadeInRight\">\r\n<div class=\"col-md-6 column\"><img src=\"images/com_aedes/boostrap3.png\" alt=\"140x140\" /></div>\r\n<div class=\"col-md-6 column\">\r\n<h3>h3. Lorem ipsum dolor sit amet.</h3>\r\n<blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n<small>Someone famous <cite>Source Title</cite></small></blockquote>\r\n</div>\r\n</div>\r\n</div>',16,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (104,80,'projectSetupTitle','','<div class=\"container\">\r\n<div class=\"row clearfix\">\r\n<div class=\"col-md-12 column\">\r\n<h2 class=\"text-center\">服務流程</h2>\r\n<h3 class=\"text-center\">簡單又快速可享有的高品質服務</h3>\r\n</div>\r\n</div>\r\n</div>',12,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (105,81,'DJ-Catalog2 Cart Module','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2cart',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (106,82,'userProject','','<div class=\"page-header text-center\">\r\n<h2 class=\"wow zoomIn\">適合您的<strong>網站設計</strong></h2>\r\n<h3 class=\"wow zoomIn\" data-wow-delay=\"0.08s\">嶄新的企業形象，就在這點擊的瞬間。</h3>\r\n</div>',3,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (107,83,'userProject1','','<div class=\"container\"><!-- image at right -->\r\n<div class=\"row wow fadeInLeft\">\r\n<div class=\"col-sm-6 text-right\">\r\n<h3>極簡美學，<strong>一頁式網站</strong>。</h3>\r\n<p>One page 為目前流行的<strong>網頁設計</strong>趨勢，<br /> 讓您的內容於一個頁面就能完整呈現，<br /> 獨特的動態設計，適合用於行銷及形象的展示，<br /> 或是中小企業以至個人作品集網站， 省去繁複的資訊，<br /> 提供您精美且別具風格的一頁式網站！</p>\r\n</div>\r\n<div class=\"col-sm-6 hidden-xs\"><img src=\"images/upload/onepage_1.png\" alt=\"\" /></div>\r\n</div>\r\n</div>',4,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (108,84,'userProject2','','<div class=\"container\"><!-- image at left -->\r\n<div class=\"row wow fadeInRight\">\r\n<div class=\"col-sm-6 hidden-xs text-right\"><img src=\"images/upload/activity_1.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-6\">\r\n<h3><strong>互動</strong>就此開始，<strong>活動官方網站</strong>。</h3>\r\n<p>仍然只是在臉書上面開活動頁面嗎？ <br /> 活動式方案擁有完整的管理系統，讓報名成為一件簡單的事。<br /> 辦活動選擇我們的活動式方案，是您的最佳選擇！</p>\r\n</div>\r\n</div>\r\n</div>',5,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (109,85,'userProject3','','<div class=\"container\"><!-- image at right -->\r\n<div class=\"row wow fadeInLeft\">\r\n<div class=\"col-sm-6 text-right\">\r\n<h3>成就從此開始，<strong>企業形象網站</strong>。</h3>\r\n<p><strong>企業網站</strong>，讓網站成為通路來源之一，<br /> 優良的<strong>形象首頁</strong>就像裝潢美麗的店門口，<br />帶給客戶美好印象。<br /> 本方案可提供更多的<strong>企業網站</strong>常見頁面，<br />讓您在網路上有一定程度的形象展現。</p>\r\n</div>\r\n<div class=\"col-sm-6 hidden-xs\"><img src=\"images/upload/company_1.png\" alt=\"\" /></div>\r\n</div>\r\n</div>',6,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (110,86,'userProject4','','<div class=\"container\"><!-- image at left -->\r\n<div class=\"row wow fadeInRight\">\r\n<div class=\"col-sm-6 hidden-xs text-right\"><img src=\"images/upload/product_1.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-6\">\r\n<h3><strong>專業</strong>不言而喻，<strong>電子型錄網站</strong>。</h3>\r\n<p>仍在浪費紙張寄送沒用的廣告目錄嗎？<br /> 完善的企業服務導引、<strong>電子型錄</strong>、<strong>線上客服</strong>等系統，<br /> 搭配產品分類管理系統，讓您的網路門面成為真正創造營收的通路來源。</p>\r\n</div>\r\n</div>\r\n</div>',7,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (111,87,'userProject5','','<div class=\"container\"><!-- image at right -->\r\n<div class=\"row wow fadeInLeft\">\r\n<div class=\"col-sm-6 text-right\">\r\n<h3>精實創業，簡易<strong>購物車網站</strong>。</h3>\r\n<p>小資本玩出大事業，拋開設定複雜又惱人的<strong>購物車系統</strong>吧！<br /> 我們為您設計了簡潔明快又低成本、高效率的購物方案，<br />搭配上第三方<strong>線上刷卡</strong>、<strong>超商代收</strong>、<strong>貨到付款</strong><br />輕輕鬆鬆就能上架開始做生意！</p>\r\n</div>\r\n<div class=\"col-sm-6 hidden-xs\"><img src=\"images/upload/store_1.png\" alt=\"\" /></div>\r\n</div>\r\n</div>',8,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (112,88,'userProject6','','<div class=\"container\"><!-- image at left -->\r\n<div class=\"row wow fadeInRight\">\r\n<div class=\"col-sm-6 hidden-xs text-right\"><img src=\"images/upload/customer_1.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-6\">\r\n<h3>極致完美，<strong>客製化網站</strong>。</h3>\r\n<p>如果以上皆不能滿足您的需求，我們也提供量身訂做的服務，<br /> 替您從品牌形象、網路行銷策略等各方面進行完整規劃，<br /> 並建置符合您需求的獨一無二的<strong>客製化網站</strong>。</p>\r\n</div>\r\n</div>\r\n</div>',9,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (113,89,'price','','<div class=\"container\">\r\n<div class=\"row text-center\">\r\n<h3>價目表</h3>\r\n<p><img src=\"images/upload/price_list.png\" alt=\"\" /></p>\r\n</div>\r\n</div>',10,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (114,90,'setup','','<div class=\"container\">\r\n<div class=\"page-header text-center\">\r\n<h2 class=\"wow zoomIn\">製作流程</h2>\r\n</div>\r\n</div>\r\n<div class=\"container\">\r\n<div class=\"row text-center\">\r\n<div class=\"col-md-3 wow fadeInRight\">\r\n<h3>第一步 <small>Setup 1</small></h3>\r\n<h4>選擇版型，方案。</h4>\r\n<p><img src=\"images/upload/icon/select.png\" alt=\"\" /></p>\r\n</div>\r\n<div class=\"col-md-3 wow fadeInRight\" data-wow-delay=\"0.08s\">\r\n<h3>第二步 <small>Setup 2</small></h3>\r\n<h4>簽約，定金。</h4>\r\n<p><img src=\"images/upload/icon/list.png\" alt=\"\" /></p>\r\n</div>\r\n<div class=\"col-md-3 wow fadeInRight\" data-wow-delay=\"0.18s\">\r\n<h3>第三步 <small>Setup 3</small></h3>\r\n<h4>製作與上傳資料。</h4>\r\n<p><img src=\"images/upload/icon/updata.png\" alt=\"\" /></p>\r\n</div>\r\n<div class=\"col-md-3 wow fadeInRight\" data-wow-delay=\"0.28s\">\r\n<h3>第四步 <small>Setup 4</small></h3>\r\n<h4>尾款與驗收。</h4>\r\n<p><img src=\"images/upload/icon/accepting.png\" alt=\"\" /></p>\r\n</div>\r\n</div>\r\n</div>',11,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (115,91,'contact','','<div id=\"contact-form-src\" class=\"contact-option\">https://docs.google.com/forms/d/1YLblA2ZRmUlC7RCHp7nyDOkYu_h8Z0IvIkQ8FcfwHaI/viewform?usp=send_form</div>\r\n<div id=\"address-position-x\" class=\"contact-option\">24.1554399</div>\r\n<div id=\"address-position-y\" class=\"contact-option\">120.6867363</div>\r\n<div id=\"address-label\" class=\"contact-option\">40445 台中市北區三民路三段 241 - 1 號</div>\r\n<div id=\"contact\" class=\"contact-box\">\r\n<div id=\"contact-map\"> </div>\r\n<div id=\"sr-contact\">\r\n<div id=\"sr-contact-grid\">\r\n<div id=\"sr-contact-body\" class=\"wow fadeInRight\">\r\n<div id=\"contact-form\">Loading...</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>',20,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-html5\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (116,92,'contact (2)','','<div id=\"contact\" class=\"contact-box\">\r\n<div id=\"contact-map\"> </div>\r\n<div id=\"sr-contact\">\r\n<div id=\"sr-contact-grid\">\r\n<div id=\"sr-contact-body\" class=\"wow fadeInRight\">\r\n<div id=\"contact-form\">Loading...</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>',14,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-html5\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (117,93,'Custom CSS','','',1,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_customcss',1,0,'{\"customcss\":\"\\/* Custom CSS *\\/\\r\\nbody\\r\\n{\\r\\n    backround-color: #ff00;\\r\\n}\",\"browsercss\":\"all\",\"externalcss\":\"0\",\"externalcssfile\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (118,94,'advantagePage','','<div class=\"container\">\r\n<h2 class=\"wow fadeInDown\">製作或上傳廉價。</h2>\r\n<p class=\"wow fadeInRight\">先撇開，勞資糾紛、人員流動、員工反咬、 低抗壓性、態度極差、公司洩密、員工意外、 勞保、健保、等等出錯的可能性。 您僱用一位資訊人員，大學畢業兩萬多元。 加上面試時間，面試人員的時間薪資，教育訓練， 網站製作相關主管的時間成本，還需將網站上傳完成， 也撇開，技術生疏無法完成，畫面設計時間，調整與美編。 您覺得需要幾個月？ 如果非常幸運，三個月順利完成，沒有發生上面撇開不談的問題， 非常恭喜，您的成本是高於六萬。 而依照我們的經驗，網站製作上年的，大有人在。 這也是我們不願樂見的。 而讓我們合作，最少、最少、最少、能讓您避開人員相關上述的所有風險。</p>\r\n</div>\r\n<div class=\"container\">\r\n<h2 class=\"wow fadeInDown\">合法租用。</h2>\r\n<p class=\"wow fadeInRight\">如果您自行製作網站。 如此繁多的系統， 樣樣都購買合法授權， 或者冒上，有刑事責任風險的法規， 更別提自行聘請人員撰寫（可參閱第一點） 一點也不划算。 而託付給其他業者，還能比我們便宜有品質的， 您能擔心扛上，法律風險嗎？ 我們所有的系統、版型、主機， 皆有合法授權， 且會不定時的更新與購買更多廠商， 我們合作，您可放心。</p>\r\n</div>\r\n<div class=\"container\">\r\n<h2 class=\"wow fadeInDown\">大量版型，且手機平板電腦，皆可瀏覽。</h2>\r\n<p class=\"wow fadeInRight\">我們大量購買版型發布商之合法授權。 您可以隨時更換您喜歡的版性， 在選用精美的版型同時，也能兼顧到其他應體， 如今，手機、平板是現在不可或缺的瀏覽工具。 您難道需要製作兩種版本以上的網站？ 我們網站，經 Responsive 技術， 讓您省去不必要的支出。 共創我們的雙贏局面。</p>\r\n</div>',1,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (119,129,'關於我們','','<div class=\"page-header text-center\">\r\n<h2>關於白紋資訊</h2>\r\n<p> </p>\r\n</div>',1,'content',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
UNLOCK TABLES;

-- Table structure for table `mp75b_modules_menu`

DROP TABLE IF EXISTS `mp75b_modules_menu`;
CREATE TABLE `mp75b_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_modules_menu`

LOCK TABLES `mp75b_modules_menu` WRITE;
INSERT INTO `mp75b_modules_menu` VALUES (1,0);
INSERT INTO `mp75b_modules_menu` VALUES (2,0);
INSERT INTO `mp75b_modules_menu` VALUES (3,0);
INSERT INTO `mp75b_modules_menu` VALUES (4,0);
INSERT INTO `mp75b_modules_menu` VALUES (6,0);
INSERT INTO `mp75b_modules_menu` VALUES (7,0);
INSERT INTO `mp75b_modules_menu` VALUES (8,0);
INSERT INTO `mp75b_modules_menu` VALUES (9,0);
INSERT INTO `mp75b_modules_menu` VALUES (10,0);
INSERT INTO `mp75b_modules_menu` VALUES (12,0);
INSERT INTO `mp75b_modules_menu` VALUES (13,0);
INSERT INTO `mp75b_modules_menu` VALUES (14,0);
INSERT INTO `mp75b_modules_menu` VALUES (15,0);
INSERT INTO `mp75b_modules_menu` VALUES (16,0);
INSERT INTO `mp75b_modules_menu` VALUES (17,0);
INSERT INTO `mp75b_modules_menu` VALUES (79,0);
INSERT INTO `mp75b_modules_menu` VALUES (86,0);
INSERT INTO `mp75b_modules_menu` VALUES (94,0);
INSERT INTO `mp75b_modules_menu` VALUES (95,0);
INSERT INTO `mp75b_modules_menu` VALUES (96,101);
INSERT INTO `mp75b_modules_menu` VALUES (97,101);
INSERT INTO `mp75b_modules_menu` VALUES (98,101);
INSERT INTO `mp75b_modules_menu` VALUES (99,0);
INSERT INTO `mp75b_modules_menu` VALUES (100,101);
INSERT INTO `mp75b_modules_menu` VALUES (101,101);
INSERT INTO `mp75b_modules_menu` VALUES (102,0);
INSERT INTO `mp75b_modules_menu` VALUES (103,101);
INSERT INTO `mp75b_modules_menu` VALUES (104,101);
INSERT INTO `mp75b_modules_menu` VALUES (106,101);
INSERT INTO `mp75b_modules_menu` VALUES (107,101);
INSERT INTO `mp75b_modules_menu` VALUES (108,101);
INSERT INTO `mp75b_modules_menu` VALUES (109,101);
INSERT INTO `mp75b_modules_menu` VALUES (110,101);
INSERT INTO `mp75b_modules_menu` VALUES (111,101);
INSERT INTO `mp75b_modules_menu` VALUES (112,101);
INSERT INTO `mp75b_modules_menu` VALUES (113,101);
INSERT INTO `mp75b_modules_menu` VALUES (114,101);
INSERT INTO `mp75b_modules_menu` VALUES (115,101);
INSERT INTO `mp75b_modules_menu` VALUES (115,128);
INSERT INTO `mp75b_modules_menu` VALUES (116,101);
INSERT INTO `mp75b_modules_menu` VALUES (116,125);
INSERT INTO `mp75b_modules_menu` VALUES (117,0);
INSERT INTO `mp75b_modules_menu` VALUES (118,128);
INSERT INTO `mp75b_modules_menu` VALUES (119,149);
UNLOCK TABLES;

-- Table structure for table `mp75b_newsfeeds`

DROP TABLE IF EXISTS `mp75b_newsfeeds`;
CREATE TABLE `mp75b_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_newsfeeds`

LOCK TABLES `mp75b_newsfeeds` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_overrider`

DROP TABLE IF EXISTS `mp75b_overrider`;
CREATE TABLE `mp75b_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_overrider`

LOCK TABLES `mp75b_overrider` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_postinstall_messages`

DROP TABLE IF EXISTS `mp75b_postinstall_messages`;
CREATE TABLE `mp75b_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_postinstall_messages`

LOCK TABLES `mp75b_postinstall_messages` WRITE;
INSERT INTO `mp75b_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1);
INSERT INTO `mp75b_postinstall_messages` VALUES (2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1);
INSERT INTO `mp75b_postinstall_messages` VALUES (3,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1);
INSERT INTO `mp75b_postinstall_messages` VALUES (4,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1);
UNLOCK TABLES;

-- Table structure for table `mp75b_quickcontent_lists`

DROP TABLE IF EXISTS `mp75b_quickcontent_lists`;
CREATE TABLE `mp75b_quickcontent_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `menutype` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `delete_existing` int(3) NOT NULL,
  `category_menutype` varchar(255) NOT NULL,
  `list` text NOT NULL,
  `blog` text NOT NULL,
  `article` text NOT NULL,
  `generated` tinyint(4) NOT NULL DEFAULT '0',
  `restore` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_alias` (`alias`),
  KEY `idx_checkout` (`checked_out`),
  KEY `cat_index` (`published`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_quickcontent_lists`

LOCK TABLES `mp75b_quickcontent_lists` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_redirect_links`

DROP TABLE IF EXISTS `mp75b_redirect_links`;
CREATE TABLE `mp75b_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_redirect_links`

LOCK TABLES `mp75b_redirect_links` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_component_type_fields`

DROP TABLE IF EXISTS `mp75b_rsform_component_type_fields`;
CREATE TABLE `mp75b_rsform_component_type_fields` (
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select','emailattach') NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_component_type_fields`

LOCK TABLES `mp75b_rsform_component_type_fields` WRITE;
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'REQUIRED','select','NO\r\nYES',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'SIZE','textbox',20,4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'MAXSIZE','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'ADDITIONALATTRIBUTES','textarea','',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'DEFAULTVALUE','textarea','',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'DESCRIPTION','textarea','',11);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'COMPONENTTYPE','hidden',1,15);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'VALIDATIONEXTRA','textbox','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'REQUIRED','select','NO\r\nYES',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'COLS','textbox',50,4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'ROWS','textbox',5,5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'ADDITIONALATTRIBUTES','textarea','',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'DEFAULTVALUE','textarea','',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'DESCRIPTION','textarea','',10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'COMPONENTTYPE','hidden',2,10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'WYSIWYG','select','NO\r\nYES',11);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'VALIDATIONEXTRA','textbox','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'SIZE','textbox','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'MULTIPLE','select','NO\r\nYES',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'ITEMS','textarea','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'REQUIRED','select','NO\r\nYES',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'ADDITIONALATTRIBUTES','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'DESCRIPTION','textarea','',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'COMPONENTTYPE','hidden',3,10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'ITEMS','textarea','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'FLOW','select','HORIZONTAL\r\nVERTICAL',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'REQUIRED','select','NO\r\nYES',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'ADDITIONALATTRIBUTES','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'DESCRIPTION','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'COMPONENTTYPE','hidden',4,7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'ITEMS','textarea','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'FLOW','select','HORIZONTAL\r\nVERTICAL',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'REQUIRED','select','NO\r\nYES',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'ADDITIONALATTRIBUTES','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'DESCRIPTION','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'COMPONENTTYPE','hidden',5,7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'REQUIRED','select','NO\r\nYES',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'DATEFORMAT','textbox','DDMMYYYY',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'CALENDARLAYOUT','select','FLAT\r\nPOPUP',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'ADDITIONALATTRIBUTES','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'DESCRIPTION','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'COMPONENTTYPE','hidden',6,8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'READONLY','select','NO\r\nYES',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'POPUPLABEL','textbox','...',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'MINDATE','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'MAXDATE','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'DEFAULTVALUE','textarea','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'LABEL','textbox','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'RESET','select','NO\r\nYES',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'RESETLABEL','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'ADDITIONALATTRIBUTES','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'DESCRIPTION','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'COMPONENTTYPE','hidden',7,8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'BUTTONTYPE','select','TYPEINPUT\nTYPEBUTTON',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'LENGTH','textbox',4,3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'BACKGROUNDCOLOR','textbox','#FFFFFF',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'TEXTCOLOR','textbox','#000000',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'TYPE','select','ALPHA\r\nNUMERIC\r\nALPHANUMERIC',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'ADDITIONALATTRIBUTES','textarea','style=\"text-align:center;width:75px;\"',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'DESCRIPTION','textarea','',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'COMPONENTTYPE','hidden',8,9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'FLOW','select','VERTICAL\r\nHORIZONTAL',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'SHOWREFRESH','select','NO\r\nYES',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'REFRESHTEXT','textbox','REFRESH',11);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'SIZE','textbox',15,12);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'IMAGETYPE','select','FREETYPE\r\nNOFREETYPE\r\nINVISIBLE',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'FILESIZE','textbox','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'REQUIRED','select','NO\r\nYES',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'ACCEPTEDFILES','textarea','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'DESTINATION','textbox','//<code>\r\nreturn JPATH_SITE.\'/components/com_rsform/uploads/\';\r\n//</code>',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'ADDITIONALATTRIBUTES','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'DESCRIPTION','textarea','',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'COMPONENTTYPE','hidden',9,9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'PREFIX','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'EMAILATTACH','emailattach','',102);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (10,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (10,'TEXT','textarea','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (10,'COMPONENTTYPE','hidden',10,9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (11,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (11,'DEFAULTVALUE','textarea','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (11,'ADDITIONALATTRIBUTES','textarea','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (11,'COMPONENTTYPE','hidden',11,9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'COMPONENTTYPE','hidden',12,10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'ADDITIONALATTRIBUTES','textarea','',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'RESETLABEL','textbox','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'RESET','select','NO\r\nYES',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'IMAGERESET','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'IMAGEBUTTON','textbox','',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'LABEL','textbox','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'DESCRIPTION','textarea','',10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'CAPTION','textbox','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'LABEL','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'RESET','select','NO\r\nYES',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'RESETLABEL','textbox','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'ADDITIONALATTRIBUTES','textarea','',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'COMPONENTTYPE','hidden',13,10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'BUTTONTYPE','select','TYPEINPUT\nTYPEBUTTON',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'PREVBUTTON','textbox','//<code>\r\nreturn JText::_(\'PREV\');\r\n//</code>',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'DISPLAYPROGRESS','select','NO\r\nYES',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'DISPLAYPROGRESSMSG','textarea','<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'REQUIRED','select','NO\r\nYES',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'SIZE','textbox','',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'MAXSIZE','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'DEFAULTVALUE','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'ADDITIONALATTRIBUTES','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'COMPONENTTYPE','hidden',14,8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'DESCRIPTION','textarea','',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (15,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (15,'LENGTH','textbox',8,4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (15,'ADDITIONALATTRIBUTES','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (15,'COMPONENTTYPE','hidden',15,8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (15,'CHARACTERS','select','ALPHANUMERIC\r\nALPHA\r\nNUMERIC',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'COMPONENTTYPE','hidden',41,5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'NEXTBUTTON','textbox','//<code>\r\nreturn JText::_(\'NEXT\');\r\n//</code>',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'PREVBUTTON','textbox','//<code>\r\nreturn JText::_(\'PREV\');\r\n//</code>',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'ADDITIONALATTRIBUTES','textarea','',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'VALIDATENEXTPAGE','select','NO\r\nYES',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'DISPLAYPROGRESS','select','NO\r\nYES',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'DISPLAYPROGRESSMSG','textarea','<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>',7);
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_component_types`

DROP TABLE IF EXISTS `mp75b_rsform_component_types`;
CREATE TABLE `mp75b_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_component_types`

LOCK TABLES `mp75b_rsform_component_types` WRITE;
INSERT INTO `mp75b_rsform_component_types` VALUES (1,'textBox');
INSERT INTO `mp75b_rsform_component_types` VALUES (2,'textArea');
INSERT INTO `mp75b_rsform_component_types` VALUES (3,'selectList');
INSERT INTO `mp75b_rsform_component_types` VALUES (4,'checkboxGroup');
INSERT INTO `mp75b_rsform_component_types` VALUES (5,'radioGroup');
INSERT INTO `mp75b_rsform_component_types` VALUES (6,'calendar');
INSERT INTO `mp75b_rsform_component_types` VALUES (7,'button');
INSERT INTO `mp75b_rsform_component_types` VALUES (8,'captcha');
INSERT INTO `mp75b_rsform_component_types` VALUES (9,'fileUpload');
INSERT INTO `mp75b_rsform_component_types` VALUES (10,'freeText');
INSERT INTO `mp75b_rsform_component_types` VALUES (11,'hidden');
INSERT INTO `mp75b_rsform_component_types` VALUES (12,'imageButton');
INSERT INTO `mp75b_rsform_component_types` VALUES (13,'submitButton');
INSERT INTO `mp75b_rsform_component_types` VALUES (14,'password');
INSERT INTO `mp75b_rsform_component_types` VALUES (15,'ticket');
INSERT INTO `mp75b_rsform_component_types` VALUES (41,'pageBreak');
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_components`

DROP TABLE IF EXISTS `mp75b_rsform_components`;
CREATE TABLE `mp75b_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_components`

LOCK TABLES `mp75b_rsform_components` WRITE;
INSERT INTO `mp75b_rsform_components` VALUES (1,1,1,2,1);
INSERT INTO `mp75b_rsform_components` VALUES (2,1,10,1,1);
INSERT INTO `mp75b_rsform_components` VALUES (3,1,1,3,1);
INSERT INTO `mp75b_rsform_components` VALUES (4,1,3,4,1);
INSERT INTO `mp75b_rsform_components` VALUES (5,1,5,5,1);
INSERT INTO `mp75b_rsform_components` VALUES (6,1,4,6,1);
INSERT INTO `mp75b_rsform_components` VALUES (7,1,6,7,1);
INSERT INTO `mp75b_rsform_components` VALUES (8,1,13,8,1);
INSERT INTO `mp75b_rsform_components` VALUES (9,1,10,9,1);
INSERT INTO `mp75b_rsform_components` VALUES (10,2,1,2,1);
INSERT INTO `mp75b_rsform_components` VALUES (11,2,10,1,1);
INSERT INTO `mp75b_rsform_components` VALUES (12,2,1,3,1);
INSERT INTO `mp75b_rsform_components` VALUES (13,2,3,6,1);
INSERT INTO `mp75b_rsform_components` VALUES (14,2,5,7,1);
INSERT INTO `mp75b_rsform_components` VALUES (15,2,4,10,1);
INSERT INTO `mp75b_rsform_components` VALUES (16,2,6,11,1);
INSERT INTO `mp75b_rsform_components` VALUES (17,2,13,12,1);
INSERT INTO `mp75b_rsform_components` VALUES (18,2,10,13,1);
INSERT INTO `mp75b_rsform_components` VALUES (19,2,41,4,1);
INSERT INTO `mp75b_rsform_components` VALUES (20,2,41,8,1);
INSERT INTO `mp75b_rsform_components` VALUES (21,2,10,5,1);
INSERT INTO `mp75b_rsform_components` VALUES (22,2,10,9,1);
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_condition_details`

DROP TABLE IF EXISTS `mp75b_rsform_condition_details`;
CREATE TABLE `mp75b_rsform_condition_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condition_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `operator` varchar(16) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `condition_id` (`condition_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_condition_details`

LOCK TABLES `mp75b_rsform_condition_details` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_conditions`

DROP TABLE IF EXISTS `mp75b_rsform_conditions`;
CREATE TABLE `mp75b_rsform_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `action` varchar(16) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `component_id` int(11) NOT NULL,
  `condition` varchar(16) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_conditions`

LOCK TABLES `mp75b_rsform_conditions` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_config`

DROP TABLE IF EXISTS `mp75b_rsform_config`;
CREATE TABLE `mp75b_rsform_config` (
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`SettingName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_config`

LOCK TABLES `mp75b_rsform_config` WRITE;
INSERT INTO `mp75b_rsform_config` VALUES ('global.register.code','');
INSERT INTO `mp75b_rsform_config` VALUES ('global.debug.mode',0);
INSERT INTO `mp75b_rsform_config` VALUES ('global.iis',0);
INSERT INTO `mp75b_rsform_config` VALUES ('global.editor',1);
INSERT INTO `mp75b_rsform_config` VALUES ('global.codemirror',0);
INSERT INTO `mp75b_rsform_config` VALUES ('auto_responsive',1);
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_emails`

DROP TABLE IF EXISTS `mp75b_rsform_emails`;
CREATE TABLE `mp75b_rsform_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_emails`

LOCK TABLES `mp75b_rsform_emails` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_forms`

DROP TABLE IF EXISTS `mp75b_rsform_forms`;
CREATE TABLE `mp75b_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ThemeParams` text NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_forms`

LOCK TABLES `mp75b_rsform_forms` WRITE;
INSERT INTO `mp75b_rsform_forms` VALUES (1,'RSformPro example','<h2>{global:formtitle}</h2>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_1_page_0\">\n	<div class=\"rsform-block rsform-block-header\">\n		<div class=\"formControlLabel\">{Header:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Header:body}<span class=\"formValidation\">{Header:validation}</span></div>\n		<p class=\"formDescription\">{Header:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-fullname\">\n		<div class=\"formControlLabel\">{FullName:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{FullName:body}<span class=\"formValidation\">{FullName:validation}</span></div>\n		<p class=\"formDescription\">{FullName:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-email\">\n		<div class=\"formControlLabel\">{Email:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Email:body}<span class=\"formValidation\">{Email:validation}</span></div>\n		<p class=\"formDescription\">{Email:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-companysize\">\n		<div class=\"formControlLabel\">{CompanySize:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{CompanySize:body}<span class=\"formValidation\">{CompanySize:validation}</span></div>\n		<p class=\"formDescription\">{CompanySize:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-position\">\n		<div class=\"formControlLabel\">{Position:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Position:body}<span class=\"formValidation\">{Position:validation}</span></div>\n		<p class=\"formDescription\">{Position:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-contactby\">\n		<div class=\"formControlLabel\">{ContactBy:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{ContactBy:body}<span class=\"formValidation\">{ContactBy:validation}</span></div>\n		<p class=\"formDescription\">{ContactBy:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-contactwhen\">\n		<div class=\"formControlLabel\">{ContactWhen:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{ContactWhen:body}<span class=\"formValidation\">{ContactWhen:validation}</span></div>\n		<p class=\"formDescription\">{ContactWhen:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-submit\">\n		<div class=\"formControlLabel\">{Submit:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Submit:body}<span class=\"formValidation\">{Submit:validation}</span></div>\n		<p class=\"formDescription\">{Submit:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-footer\">\n		<div class=\"formControlLabel\">{Footer:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Footer:body}<span class=\"formValidation\">{Footer:validation}</span></div>\n		<p class=\"formDescription\">{Footer:description}</p>\n		</div>\n	</div>\n</fieldset>\n','responsive',1,'','','RSForm! Pro example',1,'','',1,'<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>',1,'<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>','{Email:value}','','','your@email.com','','Your Company','Contact confirmation',1,0,'','<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>','youradminemail@email.com','','','{Email:value}','','Your Company','Contact',1,'','','','','','',0,'','','(*)','',', ',1,'','userForm','','','',0,'',1,0,0);
INSERT INTO `mp75b_rsform_forms` VALUES (2,'RSformPro Multipage example','<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_0\">\r\n	<div class=\"rsform-block rsform-block-header\">\r\n		<div class=\"formControlLabel\">{Header:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Header:body}<span class=\"formValidation\">{Header:validation}</span></div>\r\n		<p class=\"formDescription\">{Header:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-fullname\">\r\n		<div class=\"formControlLabel\">{FullName:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{FullName:body}<span class=\"formValidation\">{FullName:validation}</span></div>\r\n		<p class=\"formDescription\">{FullName:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-email\">\r\n		<div class=\"formControlLabel\">{Email:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Email:body}<span class=\"formValidation\">{Email:validation}</span></div>\r\n		<p class=\"formDescription\">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-page1\">\r\n		<div class=\"formControlLabel\">&nbsp;</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Page1:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_1\">\r\n	<div class=\"rsform-block rsform-block-companyheader\">\r\n		<div class=\"formControlLabel\">{CompanyHeader:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{CompanyHeader:body}<span class=\"formValidation\">{CompanyHeader:validation}</span></div>\r\n		<p class=\"formDescription\">{CompanyHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-companysize\">\r\n		<div class=\"formControlLabel\">{CompanySize:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{CompanySize:body}<span class=\"formValidation\">{CompanySize:validation}</span></div>\r\n		<p class=\"formDescription\">{CompanySize:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-position\">\r\n		<div class=\"formControlLabel\">{Position:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Position:body}<span class=\"formValidation\">{Position:validation}</span></div>\r\n		<p class=\"formDescription\">{Position:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-page2\">\r\n		<div class=\"formControlLabel\">&nbsp;</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Page2:body}</div>\r\n		</div>\r\n	</div>\r\n	</fieldset>\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_2\">\r\n	<div class=\"rsform-block rsform-block-contactheader\">\r\n		<div class=\"formControlLabel\">{ContactHeader:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactHeader:body}<span class=\"formValidation\">{ContactHeader:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactHeader:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-contactby\">\r\n		<div class=\"formControlLabel\">{ContactBy:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactBy:body}<span class=\"formValidation\">{ContactBy:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactBy:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-contactwhen\">\r\n		<div class=\"formControlLabel\">{ContactWhen:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactWhen:body}<span class=\"formValidation\">{ContactWhen:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactWhen:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-submit\">\r\n		<div class=\"formControlLabel\">{Submit:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Submit:body}<span class=\"formValidation\">{Submit:validation}</span></div>\r\n		<p class=\"formDescription\">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-footer\">\r\n		<div class=\"formControlLabel\">{Footer:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Footer:body}<span class=\"formValidation\">{Footer:validation}</span></div>\r\n		<p class=\"formDescription\">{Footer:description}</p>\r\n		</div>\r\n	</div>\r\n</fieldset>\r\n','responsive',1,'','','RSForm! Pro Multipage example',1,'','',0,'<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>',1,'<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>','{Email:value}','','','your@email.com','','Your Company','Contact confirmation',1,0,'','<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>','youradminemail@email.com','','','{Email:value}','','Your Company','Contact',1,'','','','','','',0,'This is the meta description of your form. You can use it for SEO purposes.','rsform, contact, form, joomla','(*)','<p class=\"formRed\">Please complete all required fields!</p>',', ',1,'','userForm','','','',0,'',1,0,0);
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_mappings`

DROP TABLE IF EXISTS `mp75b_rsform_mappings`;
CREATE TABLE `mp75b_rsform_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_mappings`

LOCK TABLES `mp75b_rsform_mappings` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_posts`

DROP TABLE IF EXISTS `mp75b_rsform_posts`;
CREATE TABLE `mp75b_rsform_posts` (
  `form_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `silent` tinyint(1) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_posts`

LOCK TABLES `mp75b_rsform_posts` WRITE;
INSERT INTO `mp75b_rsform_posts` VALUES (3,0,1,1,'http://');
INSERT INTO `mp75b_rsform_posts` VALUES (4,0,1,1,'http://');
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_properties`

DROP TABLE IF EXISTS `mp75b_rsform_properties`;
CREATE TABLE `mp75b_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_properties`

LOCK TABLES `mp75b_rsform_properties` WRITE;
INSERT INTO `mp75b_rsform_properties` VALUES (1,1,'NAME','FullName');
INSERT INTO `mp75b_rsform_properties` VALUES (2,1,'CAPTION','Full Name');
INSERT INTO `mp75b_rsform_properties` VALUES (3,1,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (4,1,'SIZE',20);
INSERT INTO `mp75b_rsform_properties` VALUES (5,1,'MAXSIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (6,1,'VALIDATIONRULE','none');
INSERT INTO `mp75b_rsform_properties` VALUES (7,1,'VALIDATIONMESSAGE','Please type your full name.');
INSERT INTO `mp75b_rsform_properties` VALUES (8,1,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (9,1,'DEFAULTVALUE','');
INSERT INTO `mp75b_rsform_properties` VALUES (10,1,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (11,2,'NAME','Header');
INSERT INTO `mp75b_rsform_properties` VALUES (12,2,'TEXT','<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.');
INSERT INTO `mp75b_rsform_properties` VALUES (13,3,'NAME','Email');
INSERT INTO `mp75b_rsform_properties` VALUES (14,3,'CAPTION','E-mail');
INSERT INTO `mp75b_rsform_properties` VALUES (15,3,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (16,3,'SIZE',20);
INSERT INTO `mp75b_rsform_properties` VALUES (17,3,'MAXSIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (18,3,'VALIDATIONRULE','email');
INSERT INTO `mp75b_rsform_properties` VALUES (19,3,'VALIDATIONMESSAGE','Invalid email address.');
INSERT INTO `mp75b_rsform_properties` VALUES (20,3,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (21,3,'DEFAULTVALUE','');
INSERT INTO `mp75b_rsform_properties` VALUES (22,3,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (23,4,'NAME','CompanySize');
INSERT INTO `mp75b_rsform_properties` VALUES (24,4,'CAPTION','Number of Employees');
INSERT INTO `mp75b_rsform_properties` VALUES (25,4,'SIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (26,4,'MULTIPLE','NO');
INSERT INTO `mp75b_rsform_properties` VALUES (27,4,'ITEMS','|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100');
INSERT INTO `mp75b_rsform_properties` VALUES (28,4,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (29,4,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (30,4,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (31,4,'VALIDATIONMESSAGE','Please tell us how big is your company.');
INSERT INTO `mp75b_rsform_properties` VALUES (32,5,'NAME','Position');
INSERT INTO `mp75b_rsform_properties` VALUES (33,5,'CAPTION','Position');
INSERT INTO `mp75b_rsform_properties` VALUES (34,5,'ITEMS','CEO\nCFO\nCTO\nHR[c]');
INSERT INTO `mp75b_rsform_properties` VALUES (35,5,'FLOW','HORIZONTAL');
INSERT INTO `mp75b_rsform_properties` VALUES (36,5,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (37,5,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (38,5,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (39,5,'VALIDATIONMESSAGE','Please specify your position in the company');
INSERT INTO `mp75b_rsform_properties` VALUES (40,6,'NAME','ContactBy');
INSERT INTO `mp75b_rsform_properties` VALUES (41,6,'CAPTION','How should we contact you?');
INSERT INTO `mp75b_rsform_properties` VALUES (42,6,'ITEMS','E-mail[c]\nPhone\nNewsletter[c]\nMail');
INSERT INTO `mp75b_rsform_properties` VALUES (43,6,'FLOW','HORIZONTAL');
INSERT INTO `mp75b_rsform_properties` VALUES (44,6,'REQUIRED','NO');
INSERT INTO `mp75b_rsform_properties` VALUES (45,6,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (46,6,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (47,6,'VALIDATIONMESSAGE','');
INSERT INTO `mp75b_rsform_properties` VALUES (48,7,'NAME','ContactWhen');
INSERT INTO `mp75b_rsform_properties` VALUES (49,7,'CAPTION','When would you like to be contacted?');
INSERT INTO `mp75b_rsform_properties` VALUES (50,7,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (51,7,'DATEFORMAT','dd.mm.yyyy');
INSERT INTO `mp75b_rsform_properties` VALUES (52,7,'CALENDARLAYOUT','POPUP');
INSERT INTO `mp75b_rsform_properties` VALUES (53,7,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (54,7,'READONLY','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (55,7,'POPUPLABEL','...');
INSERT INTO `mp75b_rsform_properties` VALUES (56,7,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (57,7,'VALIDATIONMESSAGE','Please select a date when we should contact you.');
INSERT INTO `mp75b_rsform_properties` VALUES (58,8,'NAME','Submit');
INSERT INTO `mp75b_rsform_properties` VALUES (59,8,'LABEL','Submit');
INSERT INTO `mp75b_rsform_properties` VALUES (60,8,'CAPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (61,8,'RESET','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (62,8,'RESETLABEL','Reset');
INSERT INTO `mp75b_rsform_properties` VALUES (63,8,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (64,9,'NAME','Footer');
INSERT INTO `mp75b_rsform_properties` VALUES (65,9,'TEXT','This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href=\"http://www.rsjoomla.com/\" target=\"_blank\">http://www.rsjoomla.com/</a>');
INSERT INTO `mp75b_rsform_properties` VALUES (66,10,'NAME','FullName');
INSERT INTO `mp75b_rsform_properties` VALUES (67,10,'CAPTION','Full Name');
INSERT INTO `mp75b_rsform_properties` VALUES (68,10,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (69,10,'SIZE',20);
INSERT INTO `mp75b_rsform_properties` VALUES (70,10,'MAXSIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (71,10,'VALIDATIONRULE','none');
INSERT INTO `mp75b_rsform_properties` VALUES (72,10,'VALIDATIONMESSAGE','Please type your full name.');
INSERT INTO `mp75b_rsform_properties` VALUES (73,10,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (74,10,'DEFAULTVALUE','');
INSERT INTO `mp75b_rsform_properties` VALUES (75,10,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (76,10,'VALIDATIONEXTRA','');
INSERT INTO `mp75b_rsform_properties` VALUES (77,11,'NAME','Header');
INSERT INTO `mp75b_rsform_properties` VALUES (78,11,'TEXT','<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.');
INSERT INTO `mp75b_rsform_properties` VALUES (79,12,'NAME','Email');
INSERT INTO `mp75b_rsform_properties` VALUES (80,12,'CAPTION','E-mail');
INSERT INTO `mp75b_rsform_properties` VALUES (81,12,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (82,12,'SIZE',20);
INSERT INTO `mp75b_rsform_properties` VALUES (83,12,'MAXSIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (84,12,'VALIDATIONRULE','email');
INSERT INTO `mp75b_rsform_properties` VALUES (85,12,'VALIDATIONMESSAGE','Invalid email address.');
INSERT INTO `mp75b_rsform_properties` VALUES (86,12,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (87,12,'DEFAULTVALUE','');
INSERT INTO `mp75b_rsform_properties` VALUES (88,12,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (89,12,'VALIDATIONEXTRA','');
INSERT INTO `mp75b_rsform_properties` VALUES (90,13,'NAME','CompanySize');
INSERT INTO `mp75b_rsform_properties` VALUES (91,13,'CAPTION','Number of Employees');
INSERT INTO `mp75b_rsform_properties` VALUES (92,13,'SIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (93,13,'MULTIPLE','NO');
INSERT INTO `mp75b_rsform_properties` VALUES (94,13,'ITEMS','|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100');
INSERT INTO `mp75b_rsform_properties` VALUES (95,13,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (96,13,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (97,13,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (98,13,'VALIDATIONMESSAGE','Please tell us how big is your company.');
INSERT INTO `mp75b_rsform_properties` VALUES (99,14,'NAME','Position');
INSERT INTO `mp75b_rsform_properties` VALUES (100,14,'CAPTION','Position');
INSERT INTO `mp75b_rsform_properties` VALUES (101,14,'ITEMS','CEO\nCFO\nCTO\nHR[c]');
INSERT INTO `mp75b_rsform_properties` VALUES (102,14,'FLOW','HORIZONTAL');
INSERT INTO `mp75b_rsform_properties` VALUES (103,14,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (104,14,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (105,14,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (106,14,'VALIDATIONMESSAGE','Please specify your position in the company');
INSERT INTO `mp75b_rsform_properties` VALUES (107,15,'NAME','ContactBy');
INSERT INTO `mp75b_rsform_properties` VALUES (108,15,'CAPTION','How should we contact you?');
INSERT INTO `mp75b_rsform_properties` VALUES (109,15,'ITEMS','E-mail[c]\nPhone\nNewsletter[c]\nMail');
INSERT INTO `mp75b_rsform_properties` VALUES (110,15,'FLOW','HORIZONTAL');
INSERT INTO `mp75b_rsform_properties` VALUES (111,15,'REQUIRED','NO');
INSERT INTO `mp75b_rsform_properties` VALUES (112,15,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (113,15,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (114,15,'VALIDATIONMESSAGE','');
INSERT INTO `mp75b_rsform_properties` VALUES (115,16,'NAME','ContactWhen');
INSERT INTO `mp75b_rsform_properties` VALUES (116,16,'CAPTION','When would you like to be contacted?');
INSERT INTO `mp75b_rsform_properties` VALUES (117,16,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (118,16,'DATEFORMAT','dd.mm.yyyy');
INSERT INTO `mp75b_rsform_properties` VALUES (119,16,'CALENDARLAYOUT','POPUP');
INSERT INTO `mp75b_rsform_properties` VALUES (120,16,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (121,16,'READONLY','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (122,16,'POPUPLABEL','...');
INSERT INTO `mp75b_rsform_properties` VALUES (123,16,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (124,16,'VALIDATIONMESSAGE','Please select a date when we should contact you.');
INSERT INTO `mp75b_rsform_properties` VALUES (125,17,'NAME','Submit');
INSERT INTO `mp75b_rsform_properties` VALUES (126,17,'LABEL','Submit');
INSERT INTO `mp75b_rsform_properties` VALUES (127,17,'CAPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (128,17,'RESET','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (129,17,'RESETLABEL','Reset');
INSERT INTO `mp75b_rsform_properties` VALUES (130,17,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (131,18,'NAME','Footer');
INSERT INTO `mp75b_rsform_properties` VALUES (132,18,'TEXT','This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href=\"http://www.rsjoomla.com/\" target=\"_blank\">http://www.rsjoomla.com/</a>');
INSERT INTO `mp75b_rsform_properties` VALUES (133,19,'NAME','Page1');
INSERT INTO `mp75b_rsform_properties` VALUES (134,19,'NEXTBUTTON','Next >');
INSERT INTO `mp75b_rsform_properties` VALUES (135,19,'PREVBUTTON','Prev');
INSERT INTO `mp75b_rsform_properties` VALUES (136,19,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (137,20,'NAME','Page2');
INSERT INTO `mp75b_rsform_properties` VALUES (138,20,'NEXTBUTTON','Next >');
INSERT INTO `mp75b_rsform_properties` VALUES (139,20,'PREVBUTTON','Prev');
INSERT INTO `mp75b_rsform_properties` VALUES (140,20,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (141,21,'NAME','CompanyHeader');
INSERT INTO `mp75b_rsform_properties` VALUES (142,21,'TEXT','Please tell us a little about your company.');
INSERT INTO `mp75b_rsform_properties` VALUES (143,22,'NAME','ContactHeader');
INSERT INTO `mp75b_rsform_properties` VALUES (144,22,'TEXT','Please let us know how and when to contact you.');
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_submission_columns`

DROP TABLE IF EXISTS `mp75b_rsform_submission_columns`;
CREATE TABLE `mp75b_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL,
  PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_submission_columns`

LOCK TABLES `mp75b_rsform_submission_columns` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_submission_values`

DROP TABLE IF EXISTS `mp75b_rsform_submission_values`;
CREATE TABLE `mp75b_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_submission_values`

LOCK TABLES `mp75b_rsform_submission_values` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_submissions`

DROP TABLE IF EXISTS `mp75b_rsform_submissions`;
CREATE TABLE `mp75b_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_submissions`

LOCK TABLES `mp75b_rsform_submissions` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_translations`

DROP TABLE IF EXISTS `mp75b_rsform_translations`;
CREATE TABLE `mp75b_rsform_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_translations`

LOCK TABLES `mp75b_rsform_translations` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_schemas`

DROP TABLE IF EXISTS `mp75b_schemas`;
CREATE TABLE `mp75b_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_schemas`

LOCK TABLES `mp75b_schemas` WRITE;
INSERT INTO `mp75b_schemas` VALUES (700,'3.3.0-2014-04-02');
INSERT INTO `mp75b_schemas` VALUES (10003,'3.4');
INSERT INTO `mp75b_schemas` VALUES (10053,'0.0.1');
UNLOCK TABLES;

-- Table structure for table `mp75b_session`

DROP TABLE IF EXISTS `mp75b_session`;
CREATE TABLE `mp75b_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_session`

LOCK TABLES `mp75b_session` WRITE;
INSERT INTO `mp75b_session` VALUES ('870ulj61u0lqek3iqj69pkn251',0,1,1427338867,'__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1427338867;s:18:\"session.timer.last\";i:1427338867;s:17:\"session.timer.now\";i:1427338867;s:22:\"session.client.browser\";s:78:\"Mozilla/5.0 (Windows NT 6.1; rv:6.0) Gecko/20110814 Firefox/6.0 Google favicon\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
UNLOCK TABLES;

-- Table structure for table `mp75b_tags`

DROP TABLE IF EXISTS `mp75b_tags`;
CREATE TABLE `mp75b_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_tags`

LOCK TABLES `mp75b_tags` WRITE;
INSERT INTO `mp75b_tags` VALUES (1,0,0,41,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (2,1,1,2,1,'backend','backend','backend','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 08:26:59','',0,'0000-00-00 00:00:00','','',37,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (3,1,3,4,1,'web','web','web','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 08:26:59','',0,'0000-00-00 00:00:00','','',8,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (4,1,5,6,1,'網站架設','網站架設','網站架設','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 08:26:59','',0,'0000-00-00 00:00:00','','',8,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (5,1,7,8,1,'網站製作','網站製作','網站製作','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 08:26:59','',0,'0000-00-00 00:00:00','','',8,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (6,1,9,10,1,'網站後端','網站後端','網站後端','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 08:26:59','',0,'0000-00-00 00:00:00','','',8,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (7,1,11,12,1,'網站假資料','網站假資料','網站假資料','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 08:26:59','',0,'0000-00-00 00:00:00','','',7,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (8,1,13,14,1,'github','Github','github','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 08:27:25','',0,'0000-00-00 00:00:00','','',8,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (9,1,15,16,1,'composer','Composer','composer','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 08:27:25','',0,'0000-00-00 00:00:00','','',6,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (10,1,17,18,1,'nginx','Nginx','nginx','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 09:21:41','',0,'0000-00-00 00:00:00','','',7,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (11,1,19,20,1,'symfony2','Symfony2','symfony2','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 09:21:41','',0,'0000-00-00 00:00:00','','',8,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (12,1,21,22,1,'php','PHP','php','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 09:21:41','',0,'0000-00-00 00:00:00','','',9,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (13,1,23,24,1,'php-framework','PHP Framework','php-framework','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 09:21:41','',0,'0000-00-00 00:00:00','','',7,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (14,1,25,26,1,'網站設計','網站設計','網站設計','','',1,0,'0000-00-00 00:00:00',1,'{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\",\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',585,'2015-01-31 09:32:53','',0,'0000-00-00 00:00:00','','',76,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (15,1,27,28,1,'網站動畫','網站動畫','網站動畫','','',1,0,'0000-00-00 00:00:00',1,'{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\",\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',585,'2015-01-31 09:33:21','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (16,1,29,30,1,'css','css','css','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 09:34:29','',0,'0000-00-00 00:00:00','','',44,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (17,1,31,32,1,'frontend','frontend','frontend','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 09:34:29','',0,'0000-00-00 00:00:00','','',7,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (18,1,33,34,1,'less','less','less','','',1,0,'0000-00-00 00:00:00',1,'{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\",\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',585,'2015-01-31 09:35:52','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (19,1,35,36,1,'sass','sass','sass','','',1,0,'0000-00-00 00:00:00',1,'{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\",\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',585,'2015-01-31 09:35:58','',585,'2015-01-31 09:36:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (20,1,37,38,1,'javascript','javascript','javascript','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 09:40:49','',0,'0000-00-00 00:00:00','','',7,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_tags` VALUES (21,1,39,40,1,'html','Html','html','','',1,0,'0000-00-00 00:00:00',1,'','','','',585,'2015-01-31 09:40:49','',0,'0000-00-00 00:00:00','','',7,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
UNLOCK TABLES;

-- Table structure for table `mp75b_template_styles`

DROP TABLE IF EXISTS `mp75b_template_styles`;
CREATE TABLE `mp75b_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_template_styles`

LOCK TABLES `mp75b_template_styles` WRITE;
INSERT INTO `mp75b_template_styles` VALUES (4,'beez3',0,0,'Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `mp75b_template_styles` VALUES (5,'hathor',1,0,'Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
INSERT INTO `mp75b_template_styles` VALUES (7,'protostar',0,0,'protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');
INSERT INTO `mp75b_template_styles` VALUES (8,'isis',1,1,'isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
INSERT INTO `mp75b_template_styles` VALUES (9,'purity_iii',0,1,'purity_III - 預設','{\"tpl_article_info_datetime_format\":\"d M Y\",\"t3_template\":\"1\",\"devmode\":\"0\",\"themermode\":\"1\",\"legacy_css\":\"0\",\"responsive\":\"1\",\"non_responsive_width\":\"970px\",\"build_rtl\":\"0\",\"t3-assets\":\"t3-assets\",\"t3-rmvlogo\":\"0\",\"minify\":\"0\",\"minify_js\":\"0\",\"minify_js_tool\":\"jsmin\",\"minify_exclude\":\"\",\"link_titles\":\"\",\"theme\":\"\",\"logotype\":\"text\",\"sitename\":\"\",\"slogan\":\"\",\"logoimage\":\"\",\"enable_logoimage_sm\":\"0\",\"logoimage_sm\":\"\",\"mainlayout\":\"blog\",\"mm_type\":\"mainmenu\",\"navigation_trigger\":\"hover\",\"navigation_type\":\"megamenu\",\"navigation_animation\":\"\",\"navigation_animation_duration\":\"400\",\"mm_config\":\"\",\"navigation_collapse_enable\":\"1\",\"addon_offcanvas_enable\":\"0\",\"addon_offcanvas_effect\":\"off-canvas-effect-4\",\"snippet_open_head\":\"\",\"snippet_close_head\":\"<style>\\r\\n.contact-option {\\r\\n    display: none;\\r\\n}\\r\\n<\\/style>\",\"snippet_open_body\":\"\",\"snippet_close_body\":\"\",\"snippet_debug\":\"0\"}');
UNLOCK TABLES;

-- Table structure for table `mp75b_ucm_base`

DROP TABLE IF EXISTS `mp75b_ucm_base`;
CREATE TABLE `mp75b_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_ucm_base`

LOCK TABLES `mp75b_ucm_base` WRITE;
INSERT INTO `mp75b_ucm_base` VALUES (1,12,1,0);
INSERT INTO `mp75b_ucm_base` VALUES (2,13,1,0);
INSERT INTO `mp75b_ucm_base` VALUES (3,14,1,0);
INSERT INTO `mp75b_ucm_base` VALUES (4,15,1,0);
UNLOCK TABLES;

-- Table structure for table `mp75b_ucm_content`

DROP TABLE IF EXISTS `mp75b_ucm_content`;
CREATE TABLE `mp75b_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- Dumping data for table `mp75b_ucm_content`

LOCK TABLES `mp75b_ucm_content` WRITE;
INSERT INTO `mp75b_ucm_content` VALUES (1,'com_content.article','網站假資料生產器','網站假資料生產器','<h1 id=\"faker\">網站假資料生產器 Faker</h1>\r\n<p>當你在<strong>網站製作</strong>時，手動測試, 單元測試, 壓力測試。 不免都要新增些假資料吧？</p>\r\n<p>而<strong>網站製作</strong>時遇到的內容真是千奇百怪，</p>\r\n<p>在測試時看到一堆人名叫做 test, test1, test2, testn 帳號無法編輯... 等等？剛剛是哪個 test 無法編輯？</p>\r\n<p>Faker 是個專門新增假資料的 PHP library ，它會幫你生產出精美又漂亮的測試假資料，讓你再也看不到 test 出現在人名上。</p>\r\n<p>我們可以透過 composer 輕鬆的安裝起來並使用。 不管是輸出郵遞區號, 地址, 人名, 生日, 電話, 各種網站製作上用得到的資料都難不倒它。</p>\r\n<p>底下是簡易的使用範例。</p>\r\n<pre><code class=\"lang-php\"><span class=\"hljs-preprocessor\">&lt;?php</span>\r\n<span class=\"hljs-comment\">// 將 faker 載入</span>\r\n<span class=\"hljs-keyword\">require_once</span> <span class=\"hljs-string\">\'/path/to/Faker/src/autoload.php\'</span>;\r\n\r\n<span class=\"hljs-variable\">$faker</span> = Faker\\Factory::create();\r\n\r\n<span class=\"hljs-comment\">// 人名</span>\r\n<span class=\"hljs-keyword\">echo</span> <span class=\"hljs-variable\">$faker</span>-&gt;name;\r\n\r\n<span class=\"hljs-comment\">// 地址</span>\r\n<span class=\"hljs-keyword\">echo</span> <span class=\"hljs-variable\">$faker</span>-&gt;address;\r\n\r\n<span class=\"hljs-comment\">// 純文字</span>\r\n<span class=\"hljs-keyword\">echo</span> <span class=\"hljs-variable\">$faker</span>-&gt;text;\r\n</code></pre>\r\n<p>詳細可參閱 Faker 的 Github : <a href=\"https://github.com/fzaninotto/Faker\">https://github.com/fzaninotto/Faker</a></p>',1,'',0,1,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',585,'','2015-01-31 08:25:32',585,'2015-01-31 08:32:36','*','2015-01-31 08:25:32','0000-00-00 00:00:00',12,133,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',0,5,0,'','',19,'',1);
INSERT INTO `mp75b_ucm_content` VALUES (2,'com_content.article','Nginx Symfony2 設定','nginx-symfony2-設定','<p>Symfony2 是一個頂尖，且傑出的 PHP 框架，</p>\r\n<p>預設的<strong>網頁伺服器</strong>是使用現在最多人使用的重兵器 Apache2，</p>\r\n<p>但有時為了特殊<strong>網站架設</strong>需求，如高<strong>流量網站</strong>，PHP fpm 模式</p>\r\n<p>或其他各種實際或非實際的應用層面，我們會改用輕量化的 Nginx，</p>\r\n<p>這時我們就需要重新撰寫 rewrite 的設定檔了。</p>\r\n<p>而在 Nginx 官方的文件中，也專門為了 Symfony2 撰寫了一份範例。</p>\r\n<pre>upstream phpfcgi {\r\n    server 127.0.0.1:9000;\r\n    # server unix:/var/run/php5-fpm.sock; #for PHP-FPM running on UNIX socket\r\n}\r\nserver {\r\n    listen 80;\r\n \r\n    server_name symfony2;\r\n    root /var/www/symfony2/web;\r\n \r\n    error_log /var/log/nginx/symfony2.error.log;\r\n    access_log /var/log/nginx/symfony2.access.log;\r\n \r\n    # strip app.php/ prefix if it is present\r\n    rewrite ^/app\\.php/?(.*)$ /$1 permanent;\r\n \r\n    location / {\r\n        index app.php;\r\n        try_files $uri @rewriteapp;\r\n    }\r\n \r\n    location @rewriteapp {\r\n        rewrite ^(.*)$ /app.php/$1 last;\r\n    }\r\n \r\n    # pass the PHP scripts to FastCGI server from upstream phpfcgi\r\n    location ~ ^/(app|app_dev|config)\\.php(/|$) {\r\n        fastcgi_pass phpfcgi;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.*)$;\r\n        include fastcgi_params;\r\n        fastcgi_param  SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param  HTTPS off;\r\n    }\r\n}\r\n \r\n \r\nserver {\r\n    listen 443;\r\n \r\n    server_name symfony2;\r\n    root /var/www/symfony2/web;\r\n \r\n    ssl on;\r\n    ssl_certificate /etc/ssl/certs/symfony2.crt;\r\n    ssl_certificate_key /etc/ssl/private/symfony2.key;\r\n \r\n    error_log /var/log/nginx/symfony2.error.log;\r\n    access_log /var/log/nginx/symfony2.access.log;\r\n \r\n    # strip app.php/ prefix if it is present\r\n    rewrite ^/app\\.php/?(.*)$ /$1 permanent;\r\n \r\n    location / {\r\n        index app.php;\r\n        try_files $uri @rewriteapp;\r\n    }\r\n \r\n    location @rewriteapp {\r\n        rewrite ^(.*)$ /app.php/$1 last;\r\n    }\r\n \r\n    # pass the PHP scripts to FastCGI server from upstream phpfcgi\r\n    location ~ ^/(app|app_dev|config)\\.php(/|$) {\r\n        fastcgi_pass phpfcgi;\r\n        fastcgi_split_path_info ^(.+\\.php)(/.*)$;\r\n        include fastcgi_params;\r\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\r\n        fastcgi_param HTTPS on;\r\n    }\r\n}\r\n</pre>\r\n<p>原始連結 ： <a href=\"http://wiki.nginx.org/Symfony\">http://wiki.nginx.org/Symfony</a></p>',1,'',0,1,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',585,'','2015-01-31 09:21:41',0,'0000-00-00 00:00:00','*','2015-01-31 09:21:41','0000-00-00 00:00:00',13,864,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',0,1,0,'','',19,'',1);
INSERT INTO `mp75b_ucm_content` VALUES (3,'com_content.article','簡單 css 讓網站動起來！','簡單-css-讓網站動起來！','<p>想要簡單讓網站有動畫效果，又不想寫一大堆煩人的 css 跟 javascript 嗎？</p>\r\n<p>Animate.css 是一個 css 的動畫 library ，</p>\r\n<p>你只要在你想呈現動畫的 Html 標籤中加入動畫效果 對應的 class 名稱，</p>\r\n<p>就能簡單的把動畫效果加入囉！</p>\r\n<p>相是</p>\r\n<div class=\"wow bounce\">\r\n<h1>網站動畫設計</h1>\r\n<p>bounce 動畫效果</p>\r\n</div>\r\n<p>官方網站：<a href=\"http://daneden.github.io/animate.css/\">http://daneden.github.io/animate.css/</a></p>',1,'',0,1,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',585,'','2015-01-31 09:34:29',585,'2015-01-31 09:46:41','*','2015-01-31 09:34:29','0000-00-00 00:00:00',14,866,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',2,7,0,'','',19,'',1);
INSERT INTO `mp75b_ucm_content` VALUES (4,'com_content.article','JavaScript 編譯保護','javascript-編譯保護','<p>很多時候<strong>架設網站</strong>不免會加上些頁面效果，</p>\r\n<p>而很多時候 JavaScript 的程式碼就被大拉拉的複製走了！！！（雖然我覺得沒什麼）</p>\r\n<p>但嚴重點，會有人透過你的 JavaScript 對你的網站逕行攻擊。</p>\r\n<p> </p>\r\n<p><a href=\"http://www.jsfuck.com/\">http://www.jsfuck.com/</a></p>\r\n<p>是一個將 JavaScript 編譯的 JavaScript library 可以防止原始碼被串改複製。</p>\r\n<p>例如</p>\r\n<p><span style=\"background-color: rgba(255, 255, 255, 0);\">alert(1)</span></p>\r\n<p>他會編譯成</p>\r\n<p><span style=\"background-color: rgba(255, 255, 255, 0);\">[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]][([][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]]+[])[!+[]+!+[]+!+[]]+(!![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[+!+[]+[+[]]]+([][[]]+[])[+!+[]]+(![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[+!+[]]+([][[]]+[])[+[]]+([][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[+!+[]+[+[]]]+(!![]+[])[+!+[]]]((![]+[])[+!+[]]+(![]+[])[!+[]+!+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]+(!![]+[])[+[]]+(![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[!+[]+!+[]+[+[]]]+[+!+[]]+(!![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[!+[]+!+[]+[+[]]])()</span></p>\r\n<p>把原本的 JavaScript 打到作者自己都認不得了。</p>',1,'',0,1,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',584,'','2015-02-02 07:46:37',0,'0000-00-00 00:00:00','*','2015-02-02 07:46:37','0000-00-00 00:00:00',15,868,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',0,1,0,'','',19,'',1);
UNLOCK TABLES;

-- Table structure for table `mp75b_ucm_history`

DROP TABLE IF EXISTS `mp75b_ucm_history`;
CREATE TABLE `mp75b_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_ucm_history`

LOCK TABLES `mp75b_ucm_history` WRITE;
INSERT INTO `mp75b_ucm_history` VALUES (23,19,6,'','2015-01-31 08:07:02',584,561,'8f3a90e36bb8d8967ef6d18cb09006c7a604322b','{\"id\":19,\"asset_id\":131,\"parent_id\":\"1\",\"lft\":\"19\",\"rgt\":20,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"\\u767d\\u7d0b\\u6536\\u85cf\",\"alias\":\"aedes-keep\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"584\",\"created_time\":\"2015-01-31 08:07:02\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (24,12,1,'','2015-01-31 08:25:32',585,4132,'b038b5aa93afd6acbe137bf145e810c75f350358','{\"id\":12,\"asset_id\":132,\"title\":\"\\u7db2\\u7ad9\\u5047\\u8cc7\\u6599\\u751f\\u7522\\u5668\",\"alias\":\"\\u7db2\\u7ad9\\u5047\\u8cc7\\u6599\\u751f\\u7522\\u5668\",\"introtext\":\"<h1 id=\\\"faker\\\">Faker<\\/h1>\\r\\n<p>\\u7576\\u59b3\\u5728\\u7db2\\u7ad9\\u88fd\\u4f5c\\u6642\\uff0c\\u624b\\u52d5\\u6e2c\\u8a66, \\u55ae\\u5143\\u6e2c\\u8a66, \\u58d3\\u529b\\u6e2c\\u8a66\\u3002 \\u4e0d\\u514d\\u90fd\\u8981\\u65b0\\u589e\\u4e9b\\u5047\\u8cc7\\u6599\\u5427\\uff1f<\\/p>\\r\\n<p>\\u800c<strong>\\u7db2\\u7ad9\\u88fd\\u4f5c<\\/strong>\\u6642\\u9047\\u5230\\u7684\\u5167\\u5bb9\\u771f\\u662f\\u5343\\u5947\\u767e\\u602a\\uff0c<\\/p>\\r\\n<p>\\u5728\\u6e2c\\u8a66\\u6642\\u770b\\u5230\\u4e00\\u5806\\u4eba\\u540d\\u53eb\\u505a test, test1, test2, testn \\u5e33\\u865f\\u7121\\u6cd5\\u7de8\\u8f2f... \\u7b49\\u7b49\\uff1f\\u525b\\u525b\\u662f\\u54ea\\u500b test \\u7121\\u6cd5\\u7de8\\u8f2f\\uff1f<\\/p>\\r\\n<p>Faker \\u662f\\u500b\\u5c08\\u9580\\u65b0\\u589e\\u5047\\u8cc7\\u6599\\u7684 PHP library \\uff0c\\u5b83\\u6703\\u5e6b\\u4f60\\u751f\\u7522\\u51fa\\u7cbe\\u7f8e\\u53c8\\u6f02\\u4eae\\u7684\\u6e2c\\u8a66\\u5047\\u8cc7\\u6599\\uff0c\\u8b93\\u4f60\\u518d\\u4e5f\\u770b\\u4e0d\\u5230 test \\u51fa\\u73fe\\u5728\\u4eba\\u540d\\u4e0a\\u3002<\\/p>\\r\\n<p>\\u6211\\u5011\\u53ef\\u4ee5\\u900f\\u904e composer \\u8f15\\u9b06\\u7684\\u5b89\\u88dd\\u8d77\\u4f86\\u4e26\\u4f7f\\u7528\\u3002 \\u4e0d\\u7ba1\\u662f\\u8f38\\u51fa\\u90f5\\u905e\\u5340\\u865f, \\u5730\\u5740, \\u4eba\\u540d, \\u751f\\u65e5, \\u96fb\\u8a71, \\u5404\\u7a2e\\u7db2\\u7ad9\\u88fd\\u4f5c\\u4e0a\\u7528\\u5f97\\u5230\\u7684\\u8cc7\\u6599\\u90fd\\u96e3\\u4e0d\\u5012\\u5b83\\u3002<\\/p>\\r\\n<p>\\u5e95\\u4e0b\\u662f\\u7c21\\u6613\\u7684\\u4f7f\\u7528\\u7bc4\\u4f8b\\u3002<\\/p>\\r\\n<pre><code class=\\\"lang-php\\\"><span class=\\\"hljs-preprocessor\\\">&lt;?php<\\/span>\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u5c07 faker \\u8f09\\u5165<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">require_once<\\/span> <span class=\\\"hljs-string\\\">\'\\/path\\/to\\/Faker\\/src\\/autoload.php\'<\\/span>;\\r\\n\\r\\n<span class=\\\"hljs-variable\\\">$faker<\\/span> = Faker\\\\Factory::create();\\r\\n\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u4eba\\u540d<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">echo<\\/span> <span class=\\\"hljs-variable\\\">$faker<\\/span>-&gt;name;\\r\\n\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u5730\\u5740<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">echo<\\/span> <span class=\\\"hljs-variable\\\">$faker<\\/span>-&gt;address;\\r\\n\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u7d14\\u6587\\u5b57<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">echo<\\/span> <span class=\\\"hljs-variable\\\">$faker<\\/span>-&gt;text;\\r\\n<\\/code><\\/pre>\\r\\n<p>\\u8a73\\u7d30\\u53ef\\u53c3\\u95b1 Faker \\u7684 Github : <a href=\\\"https:\\/\\/github.com\\/fzaninotto\\/Faker\\\">https:\\/\\/github.com\\/fzaninotto\\/Faker<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"19\",\"created\":\"2015-01-31 08:25:32\",\"created_by\":\"585\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-01-31 08:25:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (25,2,10,'','2015-01-31 08:26:59',585,561,'b658c33e735ddd73804ef3c1965d6435098c92b2','{\"id\":2,\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":2,\"level\":1,\"path\":\"backend\",\"title\":\"backend\",\"alias\":\"backend\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 08:26:59\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (26,3,10,'','2015-01-31 08:26:59',585,549,'d9fddb53029e762ac32b074e7cdc136018b8d227','{\"id\":3,\"parent_id\":\"1\",\"lft\":\"3\",\"rgt\":4,\"level\":1,\"path\":\"web\",\"title\":\"web\",\"alias\":\"web\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 08:26:59\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (27,4,10,'','2015-01-31 08:26:59',585,612,'e619fa9c35e8b18be6d9572816d99ca88ac3f677','{\"id\":4,\"parent_id\":\"1\",\"lft\":\"5\",\"rgt\":6,\"level\":1,\"path\":\"\\u7db2\\u7ad9\\u67b6\\u8a2d\",\"title\":\"\\u7db2\\u7ad9\\u67b6\\u8a2d\",\"alias\":\"\\u7db2\\u7ad9\\u67b6\\u8a2d\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 08:26:59\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (28,5,10,'','2015-01-31 08:26:59',585,612,'d0053c976b8705fbe13f900fdf49aff5239c1192','{\"id\":5,\"parent_id\":\"1\",\"lft\":\"7\",\"rgt\":8,\"level\":1,\"path\":\"\\u7db2\\u7ad9\\u88fd\\u4f5c\",\"title\":\"\\u7db2\\u7ad9\\u88fd\\u4f5c\",\"alias\":\"\\u7db2\\u7ad9\\u88fd\\u4f5c\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 08:26:59\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (29,6,10,'','2015-01-31 08:26:59',585,613,'4b04151f17348c5d08efc8f04e8c67985ca4cb5e','{\"id\":6,\"parent_id\":\"1\",\"lft\":\"9\",\"rgt\":10,\"level\":1,\"path\":\"\\u7db2\\u7ad9\\u5f8c\\u7aef\",\"title\":\"\\u7db2\\u7ad9\\u5f8c\\u7aef\",\"alias\":\"\\u7db2\\u7ad9\\u5f8c\\u7aef\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 08:26:59\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (30,7,10,'','2015-01-31 08:26:59',585,632,'0d7d4b821a4aea22b02bd13aefab6b655f41e16e','{\"id\":7,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":\"\\u7db2\\u7ad9\\u5047\\u8cc7\\u6599\",\"title\":\"\\u7db2\\u7ad9\\u5047\\u8cc7\\u6599\",\"alias\":\"\\u7db2\\u7ad9\\u5047\\u8cc7\\u6599\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 08:26:59\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (31,8,10,'','2015-01-31 08:27:25',585,560,'cb75430dd1707fb73ae1b3ce9f5428e7f3d8a380','{\"id\":8,\"parent_id\":\"1\",\"lft\":\"13\",\"rgt\":14,\"level\":1,\"path\":\"github\",\"title\":\"Github\",\"alias\":\"github\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 08:27:25\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (32,9,10,'','2015-01-31 08:27:25',585,566,'5ad4935115770c7805de917ae4db179bc137b945','{\"id\":9,\"parent_id\":\"1\",\"lft\":\"15\",\"rgt\":16,\"level\":1,\"path\":\"composer\",\"title\":\"Composer\",\"alias\":\"composer\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 08:27:25\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (33,12,1,'','2015-01-31 08:28:40',585,4188,'55908cf0b9a3c9585d011aca6e2cdb7cf56a4e39','{\"id\":12,\"asset_id\":\"132\",\"title\":\"\\u7db2\\u7ad9\\u5047\\u8cc7\\u6599\\u751f\\u7522\\u5668\",\"alias\":\"\\u7db2\\u7ad9\\u5047\\u8cc7\\u6599\\u751f\\u7522\\u5668\",\"introtext\":\"<h1 id=\\\"faker\\\">Faker<\\/h1>\\r\\n<p>\\u7576\\u4f60\\u5728<strong>\\u7db2\\u7ad9\\u88fd\\u4f5c<\\/strong>\\u6642\\uff0c\\u624b\\u52d5\\u6e2c\\u8a66, \\u55ae\\u5143\\u6e2c\\u8a66, \\u58d3\\u529b\\u6e2c\\u8a66\\u3002 \\u4e0d\\u514d\\u90fd\\u8981\\u65b0\\u589e\\u4e9b\\u5047\\u8cc7\\u6599\\u5427\\uff1f<\\/p>\\r\\n<p>\\u800c<strong>\\u7db2\\u7ad9\\u88fd\\u4f5c<\\/strong>\\u6642\\u9047\\u5230\\u7684\\u5167\\u5bb9\\u771f\\u662f\\u5343\\u5947\\u767e\\u602a\\uff0c<\\/p>\\r\\n<p>\\u5728\\u6e2c\\u8a66\\u6642\\u770b\\u5230\\u4e00\\u5806\\u4eba\\u540d\\u53eb\\u505a test, test1, test2, testn \\u5e33\\u865f\\u7121\\u6cd5\\u7de8\\u8f2f... \\u7b49\\u7b49\\uff1f\\u525b\\u525b\\u662f\\u54ea\\u500b test \\u7121\\u6cd5\\u7de8\\u8f2f\\uff1f<\\/p>\\r\\n<p>Faker \\u662f\\u500b\\u5c08\\u9580\\u65b0\\u589e\\u5047\\u8cc7\\u6599\\u7684 PHP library \\uff0c\\u5b83\\u6703\\u5e6b\\u4f60\\u751f\\u7522\\u51fa\\u7cbe\\u7f8e\\u53c8\\u6f02\\u4eae\\u7684\\u6e2c\\u8a66\\u5047\\u8cc7\\u6599\\uff0c\\u8b93\\u4f60\\u518d\\u4e5f\\u770b\\u4e0d\\u5230 test \\u51fa\\u73fe\\u5728\\u4eba\\u540d\\u4e0a\\u3002<\\/p>\\r\\n<p>\\u6211\\u5011\\u53ef\\u4ee5\\u900f\\u904e composer \\u8f15\\u9b06\\u7684\\u5b89\\u88dd\\u8d77\\u4f86\\u4e26\\u4f7f\\u7528\\u3002 \\u4e0d\\u7ba1\\u662f\\u8f38\\u51fa\\u90f5\\u905e\\u5340\\u865f, \\u5730\\u5740, \\u4eba\\u540d, \\u751f\\u65e5, \\u96fb\\u8a71, \\u5404\\u7a2e\\u7db2\\u7ad9\\u88fd\\u4f5c\\u4e0a\\u7528\\u5f97\\u5230\\u7684\\u8cc7\\u6599\\u90fd\\u96e3\\u4e0d\\u5012\\u5b83\\u3002<\\/p>\\r\\n<p>\\u5e95\\u4e0b\\u662f\\u7c21\\u6613\\u7684\\u4f7f\\u7528\\u7bc4\\u4f8b\\u3002<\\/p>\\r\\n<pre><code class=\\\"lang-php\\\"><span class=\\\"hljs-preprocessor\\\">&lt;?php<\\/span>\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u5c07 faker \\u8f09\\u5165<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">require_once<\\/span> <span class=\\\"hljs-string\\\">\'\\/path\\/to\\/Faker\\/src\\/autoload.php\'<\\/span>;\\r\\n\\r\\n<span class=\\\"hljs-variable\\\">$faker<\\/span> = Faker\\\\Factory::create();\\r\\n\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u4eba\\u540d<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">echo<\\/span> <span class=\\\"hljs-variable\\\">$faker<\\/span>-&gt;name;\\r\\n\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u5730\\u5740<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">echo<\\/span> <span class=\\\"hljs-variable\\\">$faker<\\/span>-&gt;address;\\r\\n\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u7d14\\u6587\\u5b57<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">echo<\\/span> <span class=\\\"hljs-variable\\\">$faker<\\/span>-&gt;text;\\r\\n<\\/code><\\/pre>\\r\\n<p>\\u8a73\\u7d30\\u53ef\\u53c3\\u95b1 Faker \\u7684 Github : <a href=\\\"https:\\/\\/github.com\\/fzaninotto\\/Faker\\\">https:\\/\\/github.com\\/fzaninotto\\/Faker<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"19\",\"created\":\"2015-01-31 08:25:32\",\"created_by\":\"585\",\"created_by_alias\":\"\",\"modified\":\"2015-01-31 08:28:40\",\"modified_by\":\"585\",\"checked_out\":\"585\",\"checked_out_time\":\"2015-01-31 08:28:08\",\"publish_up\":\"2015-01-31 08:25:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (34,12,1,'','2015-01-31 08:32:36',585,4237,'7b5ce1bd01097f5478331be17beb724d946a5afa','{\"id\":12,\"asset_id\":\"132\",\"title\":\"\\u7db2\\u7ad9\\u5047\\u8cc7\\u6599\\u751f\\u7522\\u5668\",\"alias\":\"\\u7db2\\u7ad9\\u5047\\u8cc7\\u6599\\u751f\\u7522\\u5668\",\"introtext\":\"<h1 id=\\\"faker\\\">\\u7db2\\u7ad9\\u5047\\u8cc7\\u6599\\u751f\\u7522\\u5668 Faker<\\/h1>\\r\\n<p>\\u7576\\u4f60\\u5728<strong>\\u7db2\\u7ad9\\u88fd\\u4f5c<\\/strong>\\u6642\\uff0c\\u624b\\u52d5\\u6e2c\\u8a66, \\u55ae\\u5143\\u6e2c\\u8a66, \\u58d3\\u529b\\u6e2c\\u8a66\\u3002 \\u4e0d\\u514d\\u90fd\\u8981\\u65b0\\u589e\\u4e9b\\u5047\\u8cc7\\u6599\\u5427\\uff1f<\\/p>\\r\\n<p>\\u800c<strong>\\u7db2\\u7ad9\\u88fd\\u4f5c<\\/strong>\\u6642\\u9047\\u5230\\u7684\\u5167\\u5bb9\\u771f\\u662f\\u5343\\u5947\\u767e\\u602a\\uff0c<\\/p>\\r\\n<p>\\u5728\\u6e2c\\u8a66\\u6642\\u770b\\u5230\\u4e00\\u5806\\u4eba\\u540d\\u53eb\\u505a test, test1, test2, testn \\u5e33\\u865f\\u7121\\u6cd5\\u7de8\\u8f2f... \\u7b49\\u7b49\\uff1f\\u525b\\u525b\\u662f\\u54ea\\u500b test \\u7121\\u6cd5\\u7de8\\u8f2f\\uff1f<\\/p>\\r\\n<p>Faker \\u662f\\u500b\\u5c08\\u9580\\u65b0\\u589e\\u5047\\u8cc7\\u6599\\u7684 PHP library \\uff0c\\u5b83\\u6703\\u5e6b\\u4f60\\u751f\\u7522\\u51fa\\u7cbe\\u7f8e\\u53c8\\u6f02\\u4eae\\u7684\\u6e2c\\u8a66\\u5047\\u8cc7\\u6599\\uff0c\\u8b93\\u4f60\\u518d\\u4e5f\\u770b\\u4e0d\\u5230 test \\u51fa\\u73fe\\u5728\\u4eba\\u540d\\u4e0a\\u3002<\\/p>\\r\\n<p>\\u6211\\u5011\\u53ef\\u4ee5\\u900f\\u904e composer \\u8f15\\u9b06\\u7684\\u5b89\\u88dd\\u8d77\\u4f86\\u4e26\\u4f7f\\u7528\\u3002 \\u4e0d\\u7ba1\\u662f\\u8f38\\u51fa\\u90f5\\u905e\\u5340\\u865f, \\u5730\\u5740, \\u4eba\\u540d, \\u751f\\u65e5, \\u96fb\\u8a71, \\u5404\\u7a2e\\u7db2\\u7ad9\\u88fd\\u4f5c\\u4e0a\\u7528\\u5f97\\u5230\\u7684\\u8cc7\\u6599\\u90fd\\u96e3\\u4e0d\\u5012\\u5b83\\u3002<\\/p>\\r\\n<p>\\u5e95\\u4e0b\\u662f\\u7c21\\u6613\\u7684\\u4f7f\\u7528\\u7bc4\\u4f8b\\u3002<\\/p>\\r\\n<pre><code class=\\\"lang-php\\\"><span class=\\\"hljs-preprocessor\\\">&lt;?php<\\/span>\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u5c07 faker \\u8f09\\u5165<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">require_once<\\/span> <span class=\\\"hljs-string\\\">\'\\/path\\/to\\/Faker\\/src\\/autoload.php\'<\\/span>;\\r\\n\\r\\n<span class=\\\"hljs-variable\\\">$faker<\\/span> = Faker\\\\Factory::create();\\r\\n\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u4eba\\u540d<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">echo<\\/span> <span class=\\\"hljs-variable\\\">$faker<\\/span>-&gt;name;\\r\\n\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u5730\\u5740<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">echo<\\/span> <span class=\\\"hljs-variable\\\">$faker<\\/span>-&gt;address;\\r\\n\\r\\n<span class=\\\"hljs-comment\\\">\\/\\/ \\u7d14\\u6587\\u5b57<\\/span>\\r\\n<span class=\\\"hljs-keyword\\\">echo<\\/span> <span class=\\\"hljs-variable\\\">$faker<\\/span>-&gt;text;\\r\\n<\\/code><\\/pre>\\r\\n<p>\\u8a73\\u7d30\\u53ef\\u53c3\\u95b1 Faker \\u7684 Github : <a href=\\\"https:\\/\\/github.com\\/fzaninotto\\/Faker\\\">https:\\/\\/github.com\\/fzaninotto\\/Faker<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"19\",\"created\":\"2015-01-31 08:25:32\",\"created_by\":\"585\",\"created_by_alias\":\"\",\"modified\":\"2015-01-31 08:32:36\",\"modified_by\":\"585\",\"checked_out\":\"585\",\"checked_out_time\":\"2015-01-31 08:32:24\",\"publish_up\":\"2015-01-31 08:25:32\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (35,10,10,'','2015-01-31 09:21:41',585,558,'405893519c3169918753d42700c19440ed68bebf','{\"id\":10,\"parent_id\":\"1\",\"lft\":\"17\",\"rgt\":18,\"level\":1,\"path\":\"nginx\",\"title\":\"Nginx\",\"alias\":\"nginx\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:21:41\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (36,11,10,'','2015-01-31 09:21:41',585,567,'33623ac5a0c6e9668e8a7afc29580859819c3bc0','{\"id\":11,\"parent_id\":\"1\",\"lft\":\"19\",\"rgt\":20,\"level\":1,\"path\":\"symfony2\",\"title\":\"Symfony2\",\"alias\":\"symfony2\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:21:41\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (37,12,10,'','2015-01-31 09:21:41',585,552,'f6fd057bc0189054e54485779d3304c76479563f','{\"id\":12,\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":22,\"level\":1,\"path\":\"php\",\"title\":\"PHP\",\"alias\":\"php\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:21:41\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (38,13,10,'','2015-01-31 09:21:41',585,582,'5c4fd084f9582f25d8efb042d0da1a65eae579c9','{\"id\":13,\"parent_id\":\"1\",\"lft\":\"23\",\"rgt\":24,\"level\":1,\"path\":\"php-framework\",\"title\":\"PHP Framework\",\"alias\":\"php-framework\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:21:41\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (39,13,1,'','2015-01-31 09:21:41',585,4869,'af112436b96bee1a221ed35d9a62d3c39c4904d5','{\"id\":13,\"asset_id\":863,\"title\":\"Nginx Symfony2 \\u8a2d\\u5b9a\",\"alias\":\"nginx-symfony2-\\u8a2d\\u5b9a\",\"introtext\":\"<p>Symfony2 \\u662f\\u4e00\\u500b\\u9802\\u5c16\\uff0c\\u4e14\\u5091\\u51fa\\u7684 PHP \\u6846\\u67b6\\uff0c<\\/p>\\r\\n<p>\\u9810\\u8a2d\\u7684<strong>\\u7db2\\u9801\\u4f3a\\u670d\\u5668<\\/strong>\\u662f\\u4f7f\\u7528\\u73fe\\u5728\\u6700\\u591a\\u4eba\\u4f7f\\u7528\\u7684\\u91cd\\u5175\\u5668 Apache2\\uff0c<\\/p>\\r\\n<p>\\u4f46\\u6709\\u6642\\u70ba\\u4e86\\u7279\\u6b8a<strong>\\u7db2\\u7ad9\\u67b6\\u8a2d<\\/strong>\\u9700\\u6c42\\uff0c\\u5982\\u9ad8<strong>\\u6d41\\u91cf\\u7db2\\u7ad9<\\/strong>\\uff0cPHP fpm\\u00a0\\u6a21\\u5f0f<\\/p>\\r\\n<p>\\u6216\\u5176\\u4ed6\\u5404\\u7a2e\\u5be6\\u969b\\u6216\\u975e\\u5be6\\u969b\\u7684\\u61c9\\u7528\\u5c64\\u9762\\uff0c\\u6211\\u5011\\u6703\\u6539\\u7528\\u8f15\\u91cf\\u5316\\u7684 Nginx\\uff0c<\\/p>\\r\\n<p>\\u9019\\u6642\\u6211\\u5011\\u5c31\\u9700\\u8981\\u91cd\\u65b0\\u64b0\\u5beb rewrite \\u7684\\u8a2d\\u5b9a\\u6a94\\u4e86\\u3002<\\/p>\\r\\n<p>\\u800c\\u5728 Nginx \\u5b98\\u65b9\\u7684\\u6587\\u4ef6\\u4e2d\\uff0c\\u4e5f\\u5c08\\u9580\\u70ba\\u4e86 Symfony2 \\u64b0\\u5beb\\u4e86\\u4e00\\u4efd\\u7bc4\\u4f8b\\u3002<\\/p>\\r\\n<pre>upstream phpfcgi {\\r\\n    server 127.0.0.1:9000;\\r\\n    # server unix:\\/var\\/run\\/php5-fpm.sock; #for PHP-FPM running on UNIX socket\\r\\n}\\r\\nserver {\\r\\n    listen 80;\\r\\n \\r\\n    server_name symfony2;\\r\\n    root \\/var\\/www\\/symfony2\\/web;\\r\\n \\r\\n    error_log \\/var\\/log\\/nginx\\/symfony2.error.log;\\r\\n    access_log \\/var\\/log\\/nginx\\/symfony2.access.log;\\r\\n \\r\\n    # strip app.php\\/ prefix if it is present\\r\\n    rewrite ^\\/app\\\\.php\\/?(.*)$ \\/$1 permanent;\\r\\n \\r\\n    location \\/ {\\r\\n        index app.php;\\r\\n        try_files $uri @rewriteapp;\\r\\n    }\\r\\n \\r\\n    location @rewriteapp {\\r\\n        rewrite ^(.*)$ \\/app.php\\/$1 last;\\r\\n    }\\r\\n \\r\\n    # pass the PHP scripts to FastCGI server from upstream phpfcgi\\r\\n    location ~ ^\\/(app|app_dev|config)\\\\.php(\\/|$) {\\r\\n        fastcgi_pass phpfcgi;\\r\\n        fastcgi_split_path_info ^(.+\\\\.php)(\\/.*)$;\\r\\n        include fastcgi_params;\\r\\n        fastcgi_param  SCRIPT_FILENAME $document_root$fastcgi_script_name;\\r\\n        fastcgi_param  HTTPS off;\\r\\n    }\\r\\n}\\r\\n \\r\\n \\r\\nserver {\\r\\n    listen 443;\\r\\n \\r\\n    server_name symfony2;\\r\\n    root \\/var\\/www\\/symfony2\\/web;\\r\\n \\r\\n    ssl on;\\r\\n    ssl_certificate \\/etc\\/ssl\\/certs\\/symfony2.crt;\\r\\n    ssl_certificate_key \\/etc\\/ssl\\/private\\/symfony2.key;\\r\\n \\r\\n    error_log \\/var\\/log\\/nginx\\/symfony2.error.log;\\r\\n    access_log \\/var\\/log\\/nginx\\/symfony2.access.log;\\r\\n \\r\\n    # strip app.php\\/ prefix if it is present\\r\\n    rewrite ^\\/app\\\\.php\\/?(.*)$ \\/$1 permanent;\\r\\n \\r\\n    location \\/ {\\r\\n        index app.php;\\r\\n        try_files $uri @rewriteapp;\\r\\n    }\\r\\n \\r\\n    location @rewriteapp {\\r\\n        rewrite ^(.*)$ \\/app.php\\/$1 last;\\r\\n    }\\r\\n \\r\\n    # pass the PHP scripts to FastCGI server from upstream phpfcgi\\r\\n    location ~ ^\\/(app|app_dev|config)\\\\.php(\\/|$) {\\r\\n        fastcgi_pass phpfcgi;\\r\\n        fastcgi_split_path_info ^(.+\\\\.php)(\\/.*)$;\\r\\n        include fastcgi_params;\\r\\n        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;\\r\\n        fastcgi_param HTTPS on;\\r\\n    }\\r\\n}\\r\\n<\\/pre>\\r\\n<p>\\u539f\\u59cb\\u9023\\u7d50 \\uff1a <a href=\\\"http:\\/\\/wiki.nginx.org\\/Symfony\\\">http:\\/\\/wiki.nginx.org\\/Symfony<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"19\",\"created\":\"2015-01-31 09:21:41\",\"created_by\":\"585\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-01-31 09:21:41\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (40,14,10,'','2015-01-31 09:32:53',585,820,'436b4e584a6d7d3e15c966d11d8b49c57c2637e6','{\"id\":14,\"parent_id\":\"1\",\"lft\":\"25\",\"rgt\":26,\"level\":1,\"path\":null,\"title\":\"\\u7db2\\u7ad9\\u8a2d\\u8a08\",\"alias\":\"\\u7db2\\u7ad9\\u8a2d\\u8a08\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"tag_layout\\\":\\\"\\\",\\\"tag_link_class\\\":\\\"label label-info\\\",\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:32:53\",\"created_by_alias\":\"\",\"modified_user_id\":null,\"modified_time\":null,\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null,\"publish_up\":null,\"publish_down\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (41,15,10,'','2015-01-31 09:33:21',585,820,'70fb8d1ab47faebd06ceebe2b799fb1a2400899d','{\"id\":15,\"parent_id\":\"1\",\"lft\":\"27\",\"rgt\":28,\"level\":1,\"path\":null,\"title\":\"\\u7db2\\u7ad9\\u52d5\\u756b\",\"alias\":\"\\u7db2\\u7ad9\\u52d5\\u756b\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"tag_layout\\\":\\\"\\\",\\\"tag_link_class\\\":\\\"label label-info\\\",\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:33:21\",\"created_by_alias\":\"\",\"modified_user_id\":null,\"modified_time\":null,\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null,\"publish_up\":null,\"publish_down\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (42,16,10,'','2015-01-31 09:34:29',585,552,'d87ef375ca7b8f9b6a2bd8acb108ebedaadc3039','{\"id\":16,\"parent_id\":\"1\",\"lft\":\"29\",\"rgt\":30,\"level\":1,\"path\":\"css\",\"title\":\"css\",\"alias\":\"css\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:34:29\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (43,17,10,'','2015-01-31 09:34:29',585,567,'844563d5df141fe436d9a3990383f1bdf35b57e7','{\"id\":17,\"parent_id\":\"1\",\"lft\":\"31\",\"rgt\":32,\"level\":1,\"path\":\"frontend\",\"title\":\"frontend\",\"alias\":\"frontend\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:34:29\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (44,14,1,'','2015-01-31 09:34:29',585,1763,'5bc0650dc9757d67e44105acec5af0aa3be22493','{\"id\":14,\"asset_id\":865,\"title\":\"\\u7c21\\u55ae css \\u8b93\\u7db2\\u7ad9\\u52d5\\u8d77\\u4f86\\uff01\",\"alias\":\"\\u7c21\\u55ae-css-\\u8b93\\u7db2\\u7ad9\\u52d5\\u8d77\\u4f86\\uff01\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"19\",\"created\":\"2015-01-31 09:34:29\",\"created_by\":\"585\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-01-31 09:34:29\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (45,18,10,'','2015-01-31 09:35:52',585,780,'b6c214ccb7f9dfee268e24a271fc0805f4dacb19','{\"id\":18,\"parent_id\":\"1\",\"lft\":\"33\",\"rgt\":34,\"level\":1,\"path\":null,\"title\":\"less\",\"alias\":\"less\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"tag_layout\\\":\\\"\\\",\\\"tag_link_class\\\":\\\"label label-info\\\",\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:35:52\",\"created_by_alias\":\"\",\"modified_user_id\":null,\"modified_time\":null,\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null,\"publish_up\":null,\"publish_down\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (46,19,10,'','2015-01-31 09:35:58',585,780,'23364251a4e7f3fb38d2813aede31ca1e3673027','{\"id\":19,\"parent_id\":\"1\",\"lft\":\"35\",\"rgt\":36,\"level\":1,\"path\":null,\"title\":\"sass\",\"alias\":\"sass\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"tag_layout\\\":\\\"\\\",\\\"tag_link_class\\\":\\\"label label-info\\\",\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:35:58\",\"created_by_alias\":\"\",\"modified_user_id\":null,\"modified_time\":null,\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null,\"publish_up\":null,\"publish_down\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (47,20,10,'','2015-01-31 09:40:49',585,573,'4e3a892be2178654081c184035a0b51909b7f328','{\"id\":20,\"parent_id\":\"1\",\"lft\":\"37\",\"rgt\":38,\"level\":1,\"path\":\"javascript\",\"title\":\"javascript\",\"alias\":\"javascript\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:40:49\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (48,21,10,'','2015-01-31 09:40:49',585,555,'722d805a9b1d29ca3a0c4f53bbedaf0482aa0f0a','{\"id\":21,\"parent_id\":\"1\",\"lft\":\"39\",\"rgt\":40,\"level\":1,\"path\":\"html\",\"title\":\"Html\",\"alias\":\"html\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"585\",\"created_time\":\"2015-01-31 09:40:49\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (49,14,1,'','2015-01-31 09:40:49',585,2438,'a282a656d4839f6b7aeb2614d1ae497202cafbe2','{\"id\":14,\"asset_id\":\"865\",\"title\":\"\\u7c21\\u55ae css \\u8b93\\u7db2\\u7ad9\\u52d5\\u8d77\\u4f86\\uff01\",\"alias\":\"\\u7c21\\u55ae-css-\\u8b93\\u7db2\\u7ad9\\u52d5\\u8d77\\u4f86\\uff01\",\"introtext\":\"<p>\\u60f3\\u8981\\u7c21\\u55ae\\u8b93\\u7db2\\u7ad9\\u6709\\u52d5\\u756b\\u6548\\u679c\\uff0c\\u53c8\\u4e0d\\u60f3\\u5beb\\u4e00\\u5927\\u5806\\u7169\\u4eba\\u7684 css \\u8ddf javascript \\u55ce\\uff1f<\\/p>\\r\\n<p>Animate.css \\u662f\\u4e00\\u500b css \\u7684\\u52d5\\u756b library \\uff0c<\\/p>\\r\\n<p>\\u4f60\\u53ea\\u8981\\u5728\\u4f60\\u60f3\\u5448\\u73fe\\u52d5\\u756b\\u7684 Html \\u6a19\\u7c64\\u4e2d\\u52a0\\u5165\\u52d5\\u756b\\u6548\\u679c \\u5c0d\\u61c9\\u7684 class \\u540d\\u7a31\\uff0c<\\/p>\\r\\n<p>\\u5c31\\u80fd\\u7c21\\u55ae\\u7684\\u628a\\u52d5\\u756b\\u6548\\u679c\\u52a0\\u5165\\u56c9\\uff01<\\/p>\\r\\n<p>\\u76f8\\u662f<\\/p>\\r\\n<p class=\\\"wow bounce\\\">bounce<\\/p>\\r\\n<p class=\\\"bounce\\\">bounce<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"19\",\"created\":\"2015-01-31 09:34:29\",\"created_by\":\"585\",\"created_by_alias\":\"\",\"modified\":\"2015-01-31 09:40:49\",\"modified_by\":\"585\",\"checked_out\":\"585\",\"checked_out_time\":\"2015-01-31 09:34:29\",\"publish_up\":\"2015-01-31 09:34:29\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (50,14,1,'','2015-01-31 09:43:04',585,2774,'ef24a208b0e6df4690824c181eb30a72912b5b4d','{\"id\":14,\"asset_id\":\"865\",\"title\":\"\\u7c21\\u55ae css \\u8b93\\u7db2\\u7ad9\\u52d5\\u8d77\\u4f86\\uff01\",\"alias\":\"\\u7c21\\u55ae-css-\\u8b93\\u7db2\\u7ad9\\u52d5\\u8d77\\u4f86\\uff01\",\"introtext\":\"<p>\\u60f3\\u8981\\u7c21\\u55ae\\u8b93\\u7db2\\u7ad9\\u6709\\u52d5\\u756b\\u6548\\u679c\\uff0c\\u53c8\\u4e0d\\u60f3\\u5beb\\u4e00\\u5927\\u5806\\u7169\\u4eba\\u7684 css \\u8ddf javascript \\u55ce\\uff1f<\\/p>\\r\\n<p>Animate.css \\u662f\\u4e00\\u500b css \\u7684\\u52d5\\u756b library \\uff0c<\\/p>\\r\\n<p>\\u4f60\\u53ea\\u8981\\u5728\\u4f60\\u60f3\\u5448\\u73fe\\u52d5\\u756b\\u7684 Html \\u6a19\\u7c64\\u4e2d\\u52a0\\u5165\\u52d5\\u756b\\u6548\\u679c \\u5c0d\\u61c9\\u7684 class \\u540d\\u7a31\\uff0c<\\/p>\\r\\n<p>\\u5c31\\u80fd\\u7c21\\u55ae\\u7684\\u628a\\u52d5\\u756b\\u6548\\u679c\\u52a0\\u5165\\u56c9\\uff01<\\/p>\\r\\n<p>\\u76f8\\u662f<\\/p>\\r\\n<div class=\\\"wow bounce\\\">\\r\\n<h1>\\u7db2\\u7ad9\\u52d5\\u756b\\u8a2d\\u8a08<\\/h1>\\r\\n<p>bounce \\u52d5\\u756b\\u6548\\u679c<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"wow bounce\\\">\\r\\n<h1>\\u7db2\\u7ad9\\u52d5\\u756b\\u8a2d\\u8a08<\\/h1>\\r\\n<p>bounce \\u52d5\\u756b\\u6548\\u679c<\\/p>\\r\\n<\\/div>\\r\\n<p>\\u5b98\\u65b9\\u7db2\\u7ad9\\uff1a<a href=\\\"http:\\/\\/daneden.github.io\\/animate.css\\/\\\">http:\\/\\/daneden.github.io\\/animate.css\\/<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"19\",\"created\":\"2015-01-31 09:34:29\",\"created_by\":\"585\",\"created_by_alias\":\"\",\"modified\":\"2015-01-31 09:43:04\",\"modified_by\":\"585\",\"checked_out\":\"585\",\"checked_out_time\":\"2015-01-31 09:40:49\",\"publish_up\":\"2015-01-31 09:34:29\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (51,14,1,'','2015-01-31 09:45:32',585,2640,'77e7aed13a058fc060b6efd8b95d37cdd6c2b796','{\"id\":14,\"asset_id\":\"865\",\"title\":\"\\u7c21\\u55ae css \\u8b93\\u7db2\\u7ad9\\u52d5\\u8d77\\u4f86\\uff01\",\"alias\":\"\\u7c21\\u55ae-css-\\u8b93\\u7db2\\u7ad9\\u52d5\\u8d77\\u4f86\\uff01\",\"introtext\":\"<p>\\u60f3\\u8981\\u7c21\\u55ae\\u8b93\\u7db2\\u7ad9\\u6709\\u52d5\\u756b\\u6548\\u679c\\uff0c\\u53c8\\u4e0d\\u60f3\\u5beb\\u4e00\\u5927\\u5806\\u7169\\u4eba\\u7684 css \\u8ddf javascript \\u55ce\\uff1f<\\/p>\\r\\n<p>Animate.css \\u662f\\u4e00\\u500b css \\u7684\\u52d5\\u756b library \\uff0c<\\/p>\\r\\n<p>\\u4f60\\u53ea\\u8981\\u5728\\u4f60\\u60f3\\u5448\\u73fe\\u52d5\\u756b\\u7684 Html \\u6a19\\u7c64\\u4e2d\\u52a0\\u5165\\u52d5\\u756b\\u6548\\u679c \\u5c0d\\u61c9\\u7684 class \\u540d\\u7a31\\uff0c<\\/p>\\r\\n<p>\\u5c31\\u80fd\\u7c21\\u55ae\\u7684\\u628a\\u52d5\\u756b\\u6548\\u679c\\u52a0\\u5165\\u56c9\\uff01<\\/p>\\r\\n<p>\\u76f8\\u662f<\\/p>\\r\\n<div class=\\\"wow bounce\\\">\\r\\n<h1>\\u7db2\\u7ad9\\u52d5\\u756b\\u8a2d\\u8a08<\\/h1>\\r\\n<p>bounce \\u52d5\\u756b\\u6548\\u679c<\\/p>\\r\\n<\\/div>\\r\\n<p>\\u5b98\\u65b9\\u7db2\\u7ad9\\uff1a<a href=\\\"http:\\/\\/daneden.github.io\\/animate.css\\/\\\">http:\\/\\/daneden.github.io\\/animate.css\\/<\\/a><\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"19\",\"created\":\"2015-01-31 09:34:29\",\"created_by\":\"585\",\"created_by_alias\":\"\",\"modified\":\"2015-01-31 09:45:32\",\"modified_by\":\"585\",\"checked_out\":\"585\",\"checked_out_time\":\"2015-01-31 09:44:41\",\"publish_up\":\"2015-01-31 09:34:29\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (52,15,1,'','2015-02-02 07:46:37',584,4066,'1b31f0c00d66aafc2d715678256113eaf94e1a35','{\"id\":15,\"asset_id\":867,\"title\":\"JavaScript \\u7de8\\u8b6f\\u4fdd\\u8b77\",\"alias\":\"javascript-\\u7de8\\u8b6f\\u4fdd\\u8b77\",\"introtext\":\"<p>\\u5f88\\u591a\\u6642\\u5019<strong>\\u67b6\\u8a2d\\u7db2\\u7ad9<\\/strong>\\u4e0d\\u514d\\u6703\\u52a0\\u4e0a\\u4e9b\\u9801\\u9762\\u6548\\u679c\\uff0c<\\/p>\\r\\n<p>\\u800c\\u5f88\\u591a\\u6642\\u5019 JavaScript \\u7684\\u7a0b\\u5f0f\\u78bc\\u5c31\\u88ab\\u5927\\u62c9\\u62c9\\u7684\\u8907\\u88fd\\u8d70\\u4e86\\uff01\\uff01\\uff01\\uff08\\u96d6\\u7136\\u6211\\u89ba\\u5f97\\u6c92\\u4ec0\\u9ebc\\uff09<\\/p>\\r\\n<p>\\u4f46\\u56b4\\u91cd\\u9ede\\uff0c\\u6703\\u6709\\u4eba\\u900f\\u904e\\u4f60\\u7684 JavaScript \\u5c0d\\u4f60\\u7684\\u7db2\\u7ad9\\u9015\\u884c\\u653b\\u64ca\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><a href=\\\"http:\\/\\/www.jsfuck.com\\/\\\">http:\\/\\/www.jsfuck.com\\/<\\/a><\\/p>\\r\\n<p>\\u662f\\u4e00\\u500b\\u5c07 JavaScript \\u7de8\\u8b6f\\u7684 JavaScript library \\u53ef\\u4ee5\\u9632\\u6b62\\u539f\\u59cb\\u78bc\\u88ab\\u4e32\\u6539\\u8907\\u88fd\\u3002<\\/p>\\r\\n<p>\\u4f8b\\u5982<\\/p>\\r\\n<p><span style=\\\"background-color: rgba(255, 255, 255, 0);\\\">alert(1)<\\/span><\\/p>\\r\\n<p>\\u4ed6\\u6703\\u7de8\\u8b6f\\u6210<\\/p>\\r\\n<p><span style=\\\"background-color: rgba(255, 255, 255, 0);\\\">[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]][([][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]]+[])[!+[]+!+[]+!+[]]+(!![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[+!+[]+[+[]]]+([][[]]+[])[+!+[]]+(![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[+!+[]]+([][[]]+[])[+[]]+([][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[+!+[]+[+[]]]+(!![]+[])[+!+[]]]((![]+[])[+!+[]]+(![]+[])[!+[]+!+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]+(!![]+[])[+[]]+(![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[!+[]+!+[]+[+[]]]+[+!+[]]+(!![]+[][(![]+[])[+[]]+([![]]+[][[]])[+!+[]+[+[]]]+(![]+[])[!+[]+!+[]]+(!![]+[])[+[]]+(!![]+[])[!+[]+!+[]+!+[]]+(!![]+[])[+!+[]]])[!+[]+!+[]+[+[]]])()<\\/span><\\/p>\\r\\n<p>\\u628a\\u539f\\u672c\\u7684 JavaScript \\u6253\\u5230\\u4f5c\\u8005\\u81ea\\u5df1\\u90fd\\u8a8d\\u4e0d\\u5f97\\u4e86\\u3002<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"19\",\"created\":\"2015-02-02 07:46:37\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2015-02-02 07:46:37\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
UNLOCK TABLES;

-- Table structure for table `mp75b_update_sites`

DROP TABLE IF EXISTS `mp75b_update_sites`;
CREATE TABLE `mp75b_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

-- Dumping data for table `mp75b_update_sites`

LOCK TABLES `mp75b_update_sites` WRITE;
INSERT INTO `mp75b_update_sites` VALUES (1,'Joomla! Core','collection','http://update.joomla.org/core/list.xml',1,1427336810,'');
INSERT INTO `mp75b_update_sites` VALUES (2,'Joomla! Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1427336810,'');
INSERT INTO `mp75b_update_sites` VALUES (3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',0,0,'');
INSERT INTO `mp75b_update_sites` VALUES (4,'','collection','http://update.joomlart.com/service/tracking/list.xml',1,1427336810,'');
INSERT INTO `mp75b_update_sites` VALUES (5,'Asikart Remoteimage Component','extension','http://update.asikart.com/component/com_remoteimage.xml',0,0,'');
INSERT INTO `mp75b_update_sites` VALUES (6,'Asikart Easyset','extension','http://update.asikart.com/plugin/system/asikart_easyset.xml',0,0,'');
INSERT INTO `mp75b_update_sites` VALUES (7,'Asikart Userxtd Component','extension','https://raw.githubusercontent.com/asikart/userxtd/staging/update.xml',1,1427336810,'');
INSERT INTO `mp75b_update_sites` VALUES (8,'Asikart Markdown Plugins','extension','http://update.asikart.com/plugin/plg_akmarkdown.xml',0,0,'');
INSERT INTO `mp75b_update_sites` VALUES (9,'JComments Update Site','extension','http://www.joomlatune.ru/updates/jcomments.xml',1,1427336810,'');
INSERT INTO `mp75b_update_sites` VALUES (10,'Localise Update Site','extension','http://joomlacode.org/gf/project/com_localise/scmsvn/?action=browse&path=%2F*checkout*%2Ftrunk%2Flocalise-update.xml',1,1427336810,'');
UNLOCK TABLES;

-- Table structure for table `mp75b_update_sites_extensions`

DROP TABLE IF EXISTS `mp75b_update_sites_extensions`;
CREATE TABLE `mp75b_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

-- Dumping data for table `mp75b_update_sites_extensions`

LOCK TABLES `mp75b_update_sites_extensions` WRITE;
INSERT INTO `mp75b_update_sites_extensions` VALUES (1,700);
INSERT INTO `mp75b_update_sites_extensions` VALUES (2,700);
INSERT INTO `mp75b_update_sites_extensions` VALUES (3,600);
INSERT INTO `mp75b_update_sites_extensions` VALUES (3,10002);
INSERT INTO `mp75b_update_sites_extensions` VALUES (4,10018);
INSERT INTO `mp75b_update_sites_extensions` VALUES (4,10019);
INSERT INTO `mp75b_update_sites_extensions` VALUES (4,10020);
INSERT INTO `mp75b_update_sites_extensions` VALUES (5,10021);
INSERT INTO `mp75b_update_sites_extensions` VALUES (6,10025);
INSERT INTO `mp75b_update_sites_extensions` VALUES (7,10039);
INSERT INTO `mp75b_update_sites_extensions` VALUES (8,10042);
INSERT INTO `mp75b_update_sites_extensions` VALUES (9,10045);
INSERT INTO `mp75b_update_sites_extensions` VALUES (10,10053);
UNLOCK TABLES;

-- Table structure for table `mp75b_updates`

DROP TABLE IF EXISTS `mp75b_updates`;
CREATE TABLE `mp75b_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=252 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

-- Dumping data for table `mp75b_updates`

LOCK TABLES `mp75b_updates` WRITE;
INSERT INTO `mp75b_updates` VALUES (1,1,700,'Joomla','','joomla','file','',0,'3.4.1','','http://update.joomla.org/core/sts/extension_sts.xml','','');
INSERT INTO `mp75b_updates` VALUES (2,4,0,'JA Amazon S3 for joomla 16','','com_com_jaamazons3','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/com_com_jaamazons3.xml','','');
INSERT INTO `mp75b_updates` VALUES (3,4,0,'JA Extenstion Manager Component j16','','com_com_jaextmanager','file','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml','','');
INSERT INTO `mp75b_updates` VALUES (4,4,0,'JA Amazon S3 for joomla 2.5 & 3.x','','com_jaamazons3','component','',1,'2.5.6','','http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml','','');
INSERT INTO `mp75b_updates` VALUES (5,4,0,'JA Comment Package for Joomla 2.5 & 3.3','','com_jacomment','component','',1,'2.5.4','','http://update.joomlart.com/service/tracking/j16/com_jacomment.xml','','');
INSERT INTO `mp75b_updates` VALUES (6,4,10018,'JA Extenstion Manager Component for J25 & J3','','com_jaextmanager','component','',1,'2.6.0','','http://update.joomlart.com/service/tracking/j16/com_jaextmanager.xml','','');
INSERT INTO `mp75b_updates` VALUES (7,4,0,'JA Google Storage Package for J2.5 & J3.0','','com_jagooglestorage','component','',1,'1.0.0','','http://update.joomlart.com/service/tracking/j16/com_jagooglestorage.xml','','');
INSERT INTO `mp75b_updates` VALUES (8,4,0,'JA Job Board Package For J25','','com_jajobboard','component','',1,'1.0.6','','http://update.joomlart.com/service/tracking/j16/com_jajobboard.xml','','');
INSERT INTO `mp75b_updates` VALUES (9,4,0,'JA K2 Filter Package for J25 & J3.3','','com_jak2filter','component','',1,'1.1.8','','http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (10,4,0,'JA K2 Filter Package for J25 & J30','','com_jak2fiter','component','',1,'1.0.4','','http://update.joomlart.com/service/tracking/j16/com_jak2fiter.xml','','');
INSERT INTO `mp75b_updates` VALUES (11,4,0,'JA Showcase component for Joomla 1.7','','com_jashowcase','component','',1,'1.1.0','','http://update.joomlart.com/service/tracking/j16/com_jashowcase.xml','','');
INSERT INTO `mp75b_updates` VALUES (12,4,0,'JA Voice Package for Joomla 2.5 & 3.x','','com_javoice','component','',1,'1.1.0','','http://update.joomlart.com/service/tracking/j16/com_javoice.xml','','');
INSERT INTO `mp75b_updates` VALUES (13,4,0,'JA Appolio Theme for EasyBlog','','easyblog_theme_appolio','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_appolio.xml','','');
INSERT INTO `mp75b_updates` VALUES (14,4,0,'JA Biz Theme for EasyBlog','','easyblog_theme_biz','custom','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_biz.xml','','');
INSERT INTO `mp75b_updates` VALUES (15,4,0,'JA Bookshop Theme for EasyBlog','','easyblog_theme_bookshop','custom','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_bookshop.xml','','');
INSERT INTO `mp75b_updates` VALUES (16,4,0,'JA Decor Theme for EasyBlog','','easyblog_theme_decor','custom','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_decor.xml','','');
INSERT INTO `mp75b_updates` VALUES (17,4,0,'Theme Fixel for Easyblog J25 & J32','','easyblog_theme_fixel','custom','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_fixel.xml','','');
INSERT INTO `mp75b_updates` VALUES (18,4,0,'Theme Magz for Easyblog J25 & J32','','easyblog_theme_magz','custom','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_magz.xml','','');
INSERT INTO `mp75b_updates` VALUES (19,4,0,'JA Muzic Theme for EasyBlog','','easyblog_theme_muzic','custom','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_muzic.xml','','');
INSERT INTO `mp75b_updates` VALUES (20,4,0,'JA Obelisk Theme for EasyBlog','','easyblog_theme_obelisk','custom','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_obelisk.xml','','');
INSERT INTO `mp75b_updates` VALUES (21,4,0,'JA Sugite Theme for EasyBlog','','easyblog_theme_sugite','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_sugite.xml','','');
INSERT INTO `mp75b_updates` VALUES (22,4,0,'JA Anion template for Joomla 2.5','','ja_anion','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_anion.xml','','');
INSERT INTO `mp75b_updates` VALUES (23,4,0,'JA Appolio Template','','ja_appolio','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_appolio.xml','','');
INSERT INTO `mp75b_updates` VALUES (24,4,0,'JA Argo Template for J25 & J33','','ja_argo','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_argo.xml','','');
INSERT INTO `mp75b_updates` VALUES (25,4,0,'JA Beranis Template','','ja_beranis','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_beranis.xml','','');
INSERT INTO `mp75b_updates` VALUES (26,4,0,'JA Bistro Template for Joomla 2.5','','ja_bistro','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_bistro.xml','','');
INSERT INTO `mp75b_updates` VALUES (27,4,0,'JA Blazes Template for J25 & J31','','ja_blazes','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_blazes.xml','','');
INSERT INTO `mp75b_updates` VALUES (28,4,0,'JA Bookshop Template','','ja_bookshop','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_bookshop.xml','','');
INSERT INTO `mp75b_updates` VALUES (29,4,0,'JA Brisk Template for J25 & J33','','ja_brisk','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_brisk.xml','','');
INSERT INTO `mp75b_updates` VALUES (30,4,0,'JA Business Template for Joomla 2.5','','ja_business','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_business.xml','','');
INSERT INTO `mp75b_updates` VALUES (31,4,0,'JA Cloris Template for Joomla 2.5.x','','ja_cloris','template','',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/ja_cloris.xml','','');
INSERT INTO `mp75b_updates` VALUES (32,4,0,'JA Community PLus Template for Joomla 2.5','','ja_community_plus','template','',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml','','');
INSERT INTO `mp75b_updates` VALUES (33,4,0,'JA Decor Template','','ja_decor','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_decor.xml','','');
INSERT INTO `mp75b_updates` VALUES (34,4,0,'JA Droid Template for Joomla 2.5','','ja_droid','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_droid.xml','','');
INSERT INTO `mp75b_updates` VALUES (35,4,0,'JA Edenite Template for J25 & J30','','ja_edenite','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_edenite.xml','','');
INSERT INTO `mp75b_updates` VALUES (36,4,0,'JA Elastica Template for J25 & J32','','ja_elastica','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_elastica.xml','','');
INSERT INTO `mp75b_updates` VALUES (37,4,0,'JA Erio Template for Joomla 2.5 & 3.1','','ja_erio','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_erio.xml','','');
INSERT INTO `mp75b_updates` VALUES (38,4,0,'Ja Events Template for Joomla 2.5','','ja_events','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_events.xml','','');
INSERT INTO `mp75b_updates` VALUES (39,4,0,'JA Fubix Template for J25 & J33','','ja_fubix','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_fubix.xml','','');
INSERT INTO `mp75b_updates` VALUES (40,4,0,'JA Graphite Template for Joomla 2.5','','ja_graphite','template','',0,'2.5.6','','http://update.joomlart.com/service/tracking/j16/ja_graphite.xml','','');
INSERT INTO `mp75b_updates` VALUES (41,4,0,'JA Hawkstore Template','','ja_hawkstore','template','',0,'1.1.0','','http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml','','');
INSERT INTO `mp75b_updates` VALUES (42,4,0,'JA Ironis Template for Joomla 2.5 & 3.1','','ja_ironis','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_ironis.xml','','');
INSERT INTO `mp75b_updates` VALUES (43,4,0,'JA Jason template','','ja_jason','template','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/ja_jason.xml','','');
INSERT INTO `mp75b_updates` VALUES (44,4,0,'JA Kranos Template for J25 & J30','','ja_kranos','template','',0,'2.5.6','','http://update.joomlart.com/service/tracking/j16/ja_kranos.xml','','');
INSERT INTO `mp75b_updates` VALUES (45,4,0,'JA Lens Template for Joomla 2.5 & 3.1','','ja_lens','template','',0,'1.0.6','','http://update.joomlart.com/service/tracking/j16/ja_lens.xml','','');
INSERT INTO `mp75b_updates` VALUES (46,4,0,'Ja Lime Template for Joomla 2.5 & J31','','ja_lime','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_lime.xml','','');
INSERT INTO `mp75b_updates` VALUES (47,4,0,'JA Magz Template for J25 & J33','','ja_magz','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_magz.xml','','');
INSERT INTO `mp75b_updates` VALUES (48,4,0,'JA Medicare Template','','ja_medicare','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_medicare.xml','','');
INSERT INTO `mp75b_updates` VALUES (49,4,0,'JA Mendozite Template for J25 & J32','','ja_mendozite','template','',0,'1.0.6','','http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml','','');
INSERT INTO `mp75b_updates` VALUES (50,4,0,'JA Mero Template for J25 & J32','','ja_mero','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_mero.xml','','');
INSERT INTO `mp75b_updates` VALUES (51,4,0,'JA Mers Template for J25 & J32','','ja_mers','template','',0,'1.0.7','','http://update.joomlart.com/service/tracking/j16/ja_mers.xml','','');
INSERT INTO `mp75b_updates` VALUES (52,4,0,'JA Methys Template for Joomla 2.5','','ja_methys','template','',0,'2.5.6','','http://update.joomlart.com/service/tracking/j16/ja_methys.xml','','');
INSERT INTO `mp75b_updates` VALUES (53,4,0,'Ja Minisite Template for Joomla 2.5','','ja_minisite','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_minisite.xml','','');
INSERT INTO `mp75b_updates` VALUES (54,4,0,'JA Mitius Template','','ja_mitius','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_mitius.xml','','');
INSERT INTO `mp75b_updates` VALUES (55,4,0,'JA Mixmaz Template','','ja_mixmaz','template','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml','','');
INSERT INTO `mp75b_updates` VALUES (56,4,0,'JA Nex Template for J25 & J30','','ja_nex','template','',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/ja_nex.xml','','');
INSERT INTO `mp75b_updates` VALUES (57,4,0,'JA Nex T3 Template','','ja_nex_t3','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_nex_t3.xml','','');
INSERT INTO `mp75b_updates` VALUES (58,4,0,'JA Norite Template for J2.5 & J31','','ja_norite','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_norite.xml','','');
INSERT INTO `mp75b_updates` VALUES (59,4,0,'JA Nuevo template','','ja_nuevo','template','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/ja_nuevo.xml','','');
INSERT INTO `mp75b_updates` VALUES (60,4,0,'JA Obelisk Template','','ja_obelisk','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_obelisk.xml','','');
INSERT INTO `mp75b_updates` VALUES (61,4,0,'JA Onepage Template','','ja_onepage','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_onepage.xml','','');
INSERT INTO `mp75b_updates` VALUES (62,4,0,'JA ores template for Joomla 2.5 & 3.1','','ja_ores','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_ores.xml','','');
INSERT INTO `mp75b_updates` VALUES (63,4,0,'JA Orisite Template  for J25 & J32','','ja_orisite','template','',0,'1.1.6','','http://update.joomlart.com/service/tracking/j16/ja_orisite.xml','','');
INSERT INTO `mp75b_updates` VALUES (64,4,0,'JA Playmag Template','','ja_playmag','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_playmag.xml','','');
INSERT INTO `mp75b_updates` VALUES (65,4,0,'JA Portfolio Real Estate template for Joomla 1.6.x','','ja_portfolio','file','',0,'1.0.0 beta','','http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml','','');
INSERT INTO `mp75b_updates` VALUES (66,4,0,'JA Portfolio Template for Joomla 2.5','','ja_portfolio_real_estate','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml','','');
INSERT INTO `mp75b_updates` VALUES (67,4,0,'JA Puresite Template for J25 & J31','','ja_puresite','template','',0,'1.0.7','','http://update.joomlart.com/service/tracking/j16/ja_puresite.xml','','');
INSERT INTO `mp75b_updates` VALUES (68,4,0,'JA Purity II template for Joomla 2.5 & 3.2','','ja_purity_ii','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml','','');
INSERT INTO `mp75b_updates` VALUES (69,4,0,'JA Pyro Template for Joomla 2.5','','ja_pyro','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_pyro.xml','','');
INSERT INTO `mp75b_updates` VALUES (70,4,0,'JA Rasite Template for J2.5 & J31','','ja_rasite','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_rasite.xml','','');
INSERT INTO `mp75b_updates` VALUES (71,4,0,'JA Rave Template for Joomla 2.5','','ja_rave','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_rave.xml','','');
INSERT INTO `mp75b_updates` VALUES (72,4,0,'JA Smashboard Template','','ja_smashboard','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml','','');
INSERT INTO `mp75b_updates` VALUES (73,4,0,'JA Social Template for Joomla 2.5','','ja_social','template','',0,'2.5.8','','http://update.joomlart.com/service/tracking/j16/ja_social.xml','','');
INSERT INTO `mp75b_updates` VALUES (74,4,0,'JA Social T3 Template for J25 & J33','','ja_social_ii','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_social_ii.xml','','');
INSERT INTO `mp75b_updates` VALUES (75,4,0,'JA Sugite Template','','ja_sugite','template','',0,'1.1.3','','http://update.joomlart.com/service/tracking/j16/ja_sugite.xml','','');
INSERT INTO `mp75b_updates` VALUES (76,4,0,'JA System Pager Plugin for J25 & J30','','ja_system_japager','plugin','ja_system_japager',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml','','');
INSERT INTO `mp75b_updates` VALUES (77,4,0,'JA T3V2 Blank Template','','ja_t3_blank','template','',0,'2.5.8','','http://update.joomlart.com/service/tracking/j16/ja_t3_blank.xml','','');
INSERT INTO `mp75b_updates` VALUES (78,4,0,'JA T3 Blank template for joomla 1.6','','ja_t3_blank_j16','template','',0,'1.0.0 Beta','','http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml','','');
INSERT INTO `mp75b_updates` VALUES (79,4,0,'JA Blank Template for T3v3','','ja_t3v3_blank','template','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml','','');
INSERT INTO `mp75b_updates` VALUES (80,4,0,'JA Teline III  Template for Joomla 1.6','','ja_teline_iii','file','',0,'1.0.0 Beta','','http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml','','');
INSERT INTO `mp75b_updates` VALUES (81,4,0,'JA Teline IV Template for J2.5 and J3.2','','ja_teline_iv','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml','','');
INSERT INTO `mp75b_updates` VALUES (82,4,0,'JA Teline IV T3 Template','','ja_teline_iv_t3','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_teline_iv_t3.xml','','');
INSERT INTO `mp75b_updates` VALUES (83,4,0,'JA Tiris Template for J25 & J30','','ja_tiris','template','',0,'2.5.6','','http://update.joomlart.com/service/tracking/j16/ja_tiris.xml','','');
INSERT INTO `mp75b_updates` VALUES (84,4,0,'JA Travel Template for Joomla 2.5 & 3.0','','ja_travel','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_travel.xml','','');
INSERT INTO `mp75b_updates` VALUES (85,4,0,'JA University Template for J25 & J32','','ja_university','template','',0,'1.0.6','','http://update.joomlart.com/service/tracking/j16/ja_university.xml','','');
INSERT INTO `mp75b_updates` VALUES (86,4,0,'JA University T3 template','','ja_university_t3','template','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/ja_university_t3.xml','','');
INSERT INTO `mp75b_updates` VALUES (87,4,0,'JA Vintas Template for J25 & J31','','ja_vintas','template','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/ja_vintas.xml','','');
INSERT INTO `mp75b_updates` VALUES (88,4,0,'JA Wall Template for J25 & J33','','ja_wall','template','',0,'1.2.0','','http://update.joomlart.com/service/tracking/j16/ja_wall.xml','','');
INSERT INTO `mp75b_updates` VALUES (89,4,0,'JA ZiteTemplate','','ja_zite','template','',0,'1.0.5','','http://update.joomlart.com/service/tracking/j16/ja_zite.xml','','');
INSERT INTO `mp75b_updates` VALUES (90,4,0,'JA Bookmark plugin for Joomla 1.6.x','','jabookmark','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jabookmark.xml','','');
INSERT INTO `mp75b_updates` VALUES (91,4,0,'JA Comment plugin for Joomla 1.6.x','','jacomment','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jacomment.xml','','');
INSERT INTO `mp75b_updates` VALUES (92,4,0,'JA Comment Off Plugin for Joomla 1.6','','jacommentoff','file','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/jacommentoff.xml','','');
INSERT INTO `mp75b_updates` VALUES (93,4,0,'JA Comment On Plugin for Joomla 1.6','','jacommenton','file','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/jacommenton.xml','','');
INSERT INTO `mp75b_updates` VALUES (94,4,0,'JA Content Extra Fields for Joomla 1.6','','jacontentextrafields','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml','','');
INSERT INTO `mp75b_updates` VALUES (95,4,0,'JA Disqus Debate Echo plugin for Joomla 1.6.x','','jadisqus_debate_echo','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml','','');
INSERT INTO `mp75b_updates` VALUES (96,4,0,'JA System Google Map plugin for Joomla 1.6.x','','jagooglemap','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jagooglemap.xml','','');
INSERT INTO `mp75b_updates` VALUES (97,4,0,'JA Google Translate plugin for Joomla 1.6.x','','jagoogletranslate','plugin','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml','','');
INSERT INTO `mp75b_updates` VALUES (98,4,0,'JA Highslide plugin for Joomla 1.6.x','','jahighslide','plugin','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jahighslide.xml','','');
INSERT INTO `mp75b_updates` VALUES (99,4,0,'JA K2 Search Plugin for Joomla 2.5','','jak2_filter','plugin','',0,'1.0.0 Alpha','','http://update.joomlart.com/service/tracking/j16/jak2_filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (100,4,0,'JA K2 Extra Fields Plugin for Joomla 2.5','','jak2_indexing','plugin','',0,'1.0.0 Alpha','','http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml','','');
INSERT INTO `mp75b_updates` VALUES (101,4,0,'JA Load module Plugin for Joomla 2.5','','jaloadmodule','plugin','jaloadmodule',0,'2.5.1','','http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml','','');
INSERT INTO `mp75b_updates` VALUES (102,4,0,'JA System Nrain plugin for Joomla 1.6.x','','janrain','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/janrain.xml','','');
INSERT INTO `mp75b_updates` VALUES (103,4,0,'JA Popup plugin for Joomla 1.6','','japopup','file','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/japopup.xml','','');
INSERT INTO `mp75b_updates` VALUES (104,4,0,'JA System Social plugin for Joomla 1.7','','jasocial','file','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/jasocial.xml','','');
INSERT INTO `mp75b_updates` VALUES (105,4,0,'JA T3 System plugin for Joomla 1.6','','jat3','plugin','',0,'1.0.0 Beta','','http://update.joomlart.com/service/tracking/j16/jat3.xml','','');
INSERT INTO `mp75b_updates` VALUES (106,4,0,'JA Tabs plugin for Joomla 1.6.x','','jatabs','plugin','jatabs',0,'2.5.6','','http://update.joomlart.com/service/tracking/j16/jatabs.xml','','');
INSERT INTO `mp75b_updates` VALUES (107,4,0,'JA Typo plugin For Joomla 1.6','','jatypo','plugin','jatypo',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jatypo.xml','','');
INSERT INTO `mp75b_updates` VALUES (108,4,0,'Jomsocial Theme 3.x for JA Social','','jomsocial_theme_social','custom','',0,'3.2.x','','http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social.xml','','');
INSERT INTO `mp75b_updates` VALUES (109,4,0,'JA Jomsocial theme for Joomla 2.5','','jomsocial_theme_social_j16','file','',0,'2.5.1','','http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml','','');
INSERT INTO `mp75b_updates` VALUES (110,4,0,'JA Jomsocial theme for Joomla 2.5','','jomsocial_theme_social_j16_26','custom','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml','','');
INSERT INTO `mp75b_updates` VALUES (111,4,0,'JShopping Template for Ja Orisite','','jshopping_theme_orisite','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml','','');
INSERT INTO `mp75b_updates` VALUES (112,4,0,'JA Tiris Jshopping theme for J25 & J30','','jshopping_theme_tiris','custom','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml','','');
INSERT INTO `mp75b_updates` VALUES (113,4,0,'Theme for Jshopping j17','','jshopping_theme_tiris_j17','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml','','');
INSERT INTO `mp75b_updates` VALUES (114,4,0,'JA Kranos kunena theme for Joomla 2.5','','kunena_theme_kranos_j17','custom','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml','','');
INSERT INTO `mp75b_updates` VALUES (115,4,0,'Kunena Template for JA Mendozite','','kunena_theme_mendozite','custom','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml','','');
INSERT INTO `mp75b_updates` VALUES (116,4,0,'JA Mitius Kunena Theme for Joomla 25 ','','kunena_theme_mitius','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml','','');
INSERT INTO `mp75b_updates` VALUES (117,4,0,'Kunena theme for JA Nex J2.5','','kunena_theme_nex_j17','custom','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml','','');
INSERT INTO `mp75b_updates` VALUES (118,4,0,'Kunena theme for JA Nex T3','','kunena_theme_nex_t3','custom','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_t3.xml','','');
INSERT INTO `mp75b_updates` VALUES (119,4,0,'Kunena Template for Ja Orisite','','kunena_theme_orisite','custom','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml','','');
INSERT INTO `mp75b_updates` VALUES (120,4,0,'Kunena theme for ja PlayMag','','kunena_theme_playmag','custom','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/kunena_theme_playmag.xml','','');
INSERT INTO `mp75b_updates` VALUES (121,4,0,'Kunena theme for JA Social T3','','kunena_theme_social','custom','',0,'1.1.0','','http://update.joomlart.com/service/tracking/j16/kunena_theme_social.xml','','');
INSERT INTO `mp75b_updates` VALUES (122,4,0,'Kunena theme for Joomla 2.5','','kunena_theme_social_j16','custom','',0,'2.5.1','','http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml','','');
INSERT INTO `mp75b_updates` VALUES (123,4,0,'JA Tiris kunena theme for Joomla 2.5','','kunena_theme_tiris_j16','custom','',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml','','');
INSERT INTO `mp75b_updates` VALUES (124,4,0,'JA Bookshop Theme for Mijoshop','','mijoshop_theme_bookshop','custom','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/mijoshop_theme_bookshop.xml','','');
INSERT INTO `mp75b_updates` VALUES (125,4,0,'JA Decor Theme for Mijoshop','','mijoshop_theme_decor','custom','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor.xml','','');
INSERT INTO `mp75b_updates` VALUES (126,4,0,'JA ACM Module','','mod_ja_acm','module','',0,'2.0.5','','http://update.joomlart.com/service/tracking/j16/mod_ja_acm.xml','','');
INSERT INTO `mp75b_updates` VALUES (127,4,0,'JA Jobs Tags module for Joomla 2.5','','mod_ja_jobs_tags','module','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml','','');
INSERT INTO `mp75b_updates` VALUES (128,4,0,'JA Accordion Module for J25 & J33','','mod_jaaccordion','module','',0,'2.5.8','','http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml','','');
INSERT INTO `mp75b_updates` VALUES (129,4,0,'JA Animation module for Joomla 2.5 & 3.2','','mod_jaanimation','module','',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml','','');
INSERT INTO `mp75b_updates` VALUES (130,4,0,'JA Bulletin Module for J25 & J3','','mod_jabulletin','module','',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml','','');
INSERT INTO `mp75b_updates` VALUES (131,4,0,'JA Latest Comment Module for Joomla 2.5 & 3.3','','mod_jaclatest_comments','module','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml','','');
INSERT INTO `mp75b_updates` VALUES (132,4,0,'JA Content Popup Module for J25 & J33','','mod_jacontentpopup','module','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml','','');
INSERT INTO `mp75b_updates` VALUES (133,4,0,'JA Content Scroll module for Joomla 1.6','','mod_jacontentscroll','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml','','');
INSERT INTO `mp75b_updates` VALUES (134,4,0,'JA Contenslider module for Joomla 1.6','','mod_jacontentslide','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml','','');
INSERT INTO `mp75b_updates` VALUES (135,4,0,'JA Content Slider Module for J25 & J33','','mod_jacontentslider','module','',0,'2.7.1','','http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml','','');
INSERT INTO `mp75b_updates` VALUES (136,4,0,'JA CountDown Module for J25 & J33','','mod_jacountdown','module','',0,'1.0.5','','http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml','','');
INSERT INTO `mp75b_updates` VALUES (137,4,0,'JA Facebook Activity Module for J25 & J30','','mod_jafacebookactivity','module','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/mod_jafacebookactivity.xml','','');
INSERT INTO `mp75b_updates` VALUES (138,4,0,'JA Facebook Like Box Module for J25 & J30','','mod_jafacebooklikebox','module','',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml','','');
INSERT INTO `mp75b_updates` VALUES (139,4,0,'JA Featured Employer module for Joomla 2.5','','mod_jafeatured_employer','module','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml','','');
INSERT INTO `mp75b_updates` VALUES (140,4,0,'JA Filter Jobs module for Joomla 2.5','','mod_jafilter_jobs','module','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml','','');
INSERT INTO `mp75b_updates` VALUES (141,4,0,'JA flowlist module for Joomla 2.5 & 3.0','','mod_jaflowlist','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml','','');
INSERT INTO `mp75b_updates` VALUES (142,4,0,'JAEC Halloween Module for Joomla 2.5 & 3','','mod_jahalloween','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml','','');
INSERT INTO `mp75b_updates` VALUES (143,4,0,'JA Image Hotspot Module for Joomla 2.5 & 3.4','','mod_jaimagehotspot','module','',0,'1.0.8','','http://update.joomlart.com/service/tracking/j16/mod_jaimagehotspot.xml','','');
INSERT INTO `mp75b_updates` VALUES (144,4,0,'JA static module for Joomla 2.5','','mod_jajb_statistic','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml','','');
INSERT INTO `mp75b_updates` VALUES (145,4,0,'JA Jobboard Menu module for Joomla 2.5','','mod_jajobboard_menu','module','',0,'1.0.5','','http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml','','');
INSERT INTO `mp75b_updates` VALUES (146,4,0,'JA Jobs Counter module for Joomla 2.5','','mod_jajobs_counter','module','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml','','');
INSERT INTO `mp75b_updates` VALUES (147,4,0,'JA Jobs Map module for Joomla 2.5','','mod_jajobs_map','module','',0,'1.0.5','','http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml','','');
INSERT INTO `mp75b_updates` VALUES (148,4,0,'JA K2 Fillter Module for Joomla 2.5','','mod_jak2_filter','module','',0,'1.0.0 Alpha','','http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (149,4,0,'JA K2 Filter Module for J25 & J3.3','','mod_jak2filter','module','',0,'1.1.8','','http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (150,4,0,'JA K2 Timeline','','mod_jak2timeline','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml','','');
INSERT INTO `mp75b_updates` VALUES (151,4,0,'JA Latest Resumes module for Joomla 2.5','','mod_jalatest_resumes','module','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml','','');
INSERT INTO `mp75b_updates` VALUES (152,4,0,'JA List Employer module for Joomla 2.5','','mod_jalist_employers','module','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml','','');
INSERT INTO `mp75b_updates` VALUES (153,4,0,'JA List Jobs module for Joomla 2.5','','mod_jalist_jobs','module','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml','','');
INSERT INTO `mp75b_updates` VALUES (154,4,0,'JA List Resumes module for Joomla 2.5','','mod_jalist_resumes','module','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml','','');
INSERT INTO `mp75b_updates` VALUES (155,4,0,'JA Login module for J25 & J33','','mod_jalogin','module','',0,'2.6.4','','http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml','','');
INSERT INTO `mp75b_updates` VALUES (156,4,0,'JA Masshead Module for J25 & J33','','mod_jamasshead','module','',0,'2.6.0','','http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml','','');
INSERT INTO `mp75b_updates` VALUES (157,4,0,'JA News Featured Module for J25 & J33','','mod_janews_featured','module','',0,'2.6.0','','http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml','','');
INSERT INTO `mp75b_updates` VALUES (158,4,0,'JA Newsflash module for Joomla 1.6.x','','mod_janewsflash','module','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml','','');
INSERT INTO `mp75b_updates` VALUES (159,4,0,'JA Newsmoo module for Joomla 1.6.x','','mod_janewsmoo','module','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml','','');
INSERT INTO `mp75b_updates` VALUES (160,4,0,'JA News Pro Module for J25 & J33','','mod_janewspro','module','',0,'2.6.1','','http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml','','');
INSERT INTO `mp75b_updates` VALUES (161,4,0,'JA Newsticker Module for J25 & J33','','mod_janewsticker','module','',0,'2.6.1','','http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml','','');
INSERT INTO `mp75b_updates` VALUES (162,4,0,'JA Quick Contact Module for J25 & J33','','mod_jaquickcontact','module','',0,'2.5.8','','http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml','','');
INSERT INTO `mp75b_updates` VALUES (163,4,0,'JA Recent Viewed Jobs module for Joomla 2.5','','mod_jarecent_viewed_jobs','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml','','');
INSERT INTO `mp75b_updates` VALUES (164,4,0,'JA SideNews Module for J25 & J33','','mod_jasidenews','module','',0,'2.6.6','','http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml','','');
INSERT INTO `mp75b_updates` VALUES (165,4,0,'JA Slideshow Module for J25 & J33','','mod_jaslideshow','module','',0,'2.7.4','','http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml','','');
INSERT INTO `mp75b_updates` VALUES (166,4,0,'JA Slideshow Lite Module for J25 & J3.3','','mod_jaslideshowlite','module','',0,'1.2.2','','http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml','','');
INSERT INTO `mp75b_updates` VALUES (167,4,0,'JA Soccerway Module for J25 & J33','','mod_jasoccerway','module','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml','','');
INSERT INTO `mp75b_updates` VALUES (168,4,0,'JA Social Locker module','','mod_jasocial_locker','module','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/mod_jasocial_locker.xml','','');
INSERT INTO `mp75b_updates` VALUES (169,4,0,'JA Tab module for Joomla 2.5','','mod_jatabs','module','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml','','');
INSERT INTO `mp75b_updates` VALUES (170,4,0,'JA Toppanel Module for Joomla 2.5 & Joomla 3.3','','mod_jatoppanel','module','',0,'2.5.7','','http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml','','');
INSERT INTO `mp75b_updates` VALUES (171,4,0,'JA Twitter Module for J25 & J3.3','','mod_jatwitter','module','',0,'2.6.2','','http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml','','');
INSERT INTO `mp75b_updates` VALUES (172,4,0,'JA List of Voices Module for J2.5 & J3.x','','mod_javlist_voices','module','',0,'1.1.0','','http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml','','');
INSERT INTO `mp75b_updates` VALUES (173,4,0,'JA VMProducts Module','','mod_javmproducts','module','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml','','');
INSERT INTO `mp75b_updates` VALUES (174,4,0,'JA Voice  Work Flow Module for J2.5 & J3.x','','mod_javwork_flow','module','',0,'1.1.0','','http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml','','');
INSERT INTO `mp75b_updates` VALUES (175,4,0,'JA Amazon S3 Button Plugin for joomla 2.5 & 3.1','','jaamazons3','plugin','button',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml','','');
INSERT INTO `mp75b_updates` VALUES (176,4,0,'JA AVTracklist Button plugin for J2.5 & J3.3','','jaavtracklist','plugin','button',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/plg_button_jaavtracklist.xml','','');
INSERT INTO `mp75b_updates` VALUES (177,4,0,'JA Comment Off Plugin for Joomla 2.5 & 3.3','','jacommentoff','plugin','button',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml','','');
INSERT INTO `mp75b_updates` VALUES (178,4,0,'JA Comment On Plugin for Joomla 2.5 & 3.3','','jacommenton','plugin','button',0,'2.5.2','','http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml','','');
INSERT INTO `mp75b_updates` VALUES (179,4,0,'JA Amazon S3 System plugin for joomla 2.5 & 3.1','','plg_jaamazons3','plugin','plg_jaamazons3',0,'2.5.2','','http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml','','');
INSERT INTO `mp75b_updates` VALUES (180,4,0,'JA AVTracklist plugin for J2.5 & J3.3','','plg_jaavtracklist','plugin','plg_jaavtracklist',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/plg_jaavtracklist.xml','','');
INSERT INTO `mp75b_updates` VALUES (181,4,0,'JA Bookmark plugin for J2.5 & J3.2','','plg_jabookmark','plugin','plg_jabookmark',0,'2.5.8','','http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml','','');
INSERT INTO `mp75b_updates` VALUES (182,4,0,'JA Comment Plugin for Joomla 2.5 & 3.3','','plg_jacomment','plugin','plg_jacomment',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml','','');
INSERT INTO `mp75b_updates` VALUES (183,4,0,'JA Disqus Debate Echo plugin for J2.5 & J3.2','','debate_echo','plugin','jadisqus',0,'2.6.2','','http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml','','');
INSERT INTO `mp75b_updates` VALUES (184,4,0,'JA Google Storage Plugin for j25 & j30','','plg_jagooglestorage','plugin','plg_jagooglestorage',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml','','');
INSERT INTO `mp75b_updates` VALUES (185,4,0,'JA Translate plugin for Joomla 1.6.x','','plg_jagoogletranslate','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml','','');
INSERT INTO `mp75b_updates` VALUES (186,4,0,'JA Thumbnail Plugin for J25 & J3','','plg_jathumbnail','plugin','plg_jathumbnail',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml','','');
INSERT INTO `mp75b_updates` VALUES (187,4,0,'JA Tooltips plugin for Joomla 1.6.x','','plg_jatooltips','plugin','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml','','');
INSERT INTO `mp75b_updates` VALUES (188,4,0,'JA Typo Button Plugin for J25 & J32','','plg_jatypobutton','plugin','plg_jatypobutton',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml','','');
INSERT INTO `mp75b_updates` VALUES (189,4,0,'JA K2 Filter Plg for J25 & J3.2','','jak2filter','plugin','k2',0,'1.1.8','','http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (190,4,0,'JA K2 Timeline Plugin','','jak2timeline','plugin','k2',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml','','');
INSERT INTO `mp75b_updates` VALUES (191,4,0,'Multi Capcha Engine Plugin for J25 & J32','','captcha_engine','plugin','multiple',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml','','');
INSERT INTO `mp75b_updates` VALUES (192,4,0,'JA JobBoard Payment Plugin Authorize for Joomla 2.5','','plg_payment_jajb_authorize_25','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml','','');
INSERT INTO `mp75b_updates` VALUES (193,4,0,'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5','','plg_payment_jajb_moneybooker_25','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml','','');
INSERT INTO `mp75b_updates` VALUES (194,4,0,'JA JobBoard Payment Plugin Paypal for Joomla 2.5','','plg_payment_jajb_paypal_25','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml','','');
INSERT INTO `mp75b_updates` VALUES (195,4,0,'JA JobBoard Payment Plugin BankWire for Joomla 2.5','','plg_payment_jajb_wirebank_25','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml','','');
INSERT INTO `mp75b_updates` VALUES (196,4,0,'JA Search Comment Plugin for Joomla J2.5 & 3.0','','jacomment','plugin','search',0,'2.5.2','','http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml','','');
INSERT INTO `mp75b_updates` VALUES (197,4,0,'JA Search Jobs plugin for Joomla 2.5','','jajob','plugin','search',0,'1.0.0 stable','','http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml','','');
INSERT INTO `mp75b_updates` VALUES (198,4,0,'JA System Comment Plugin for Joomla 2.5 & 3.3','','jacomment','plugin','system',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml','','');
INSERT INTO `mp75b_updates` VALUES (199,4,0,'JA Content Extra Fields for Joomla 2.5','','jacontentextrafields','plugin','system',0,'2.5.1','','http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml','','');
INSERT INTO `mp75b_updates` VALUES (200,4,0,'JA System Google Map plugin for J2.5 & J3.3','','jagooglemap','plugin','system',0,'2.5.8','','http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml','','');
INSERT INTO `mp75b_updates` VALUES (201,4,0,'JAEC PLG System Jobboad Jomsocial Synchonization','','jajb_jomsocial','plugin','system',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml','','');
INSERT INTO `mp75b_updates` VALUES (202,4,0,'JA System Lazyload Plugin for J25 & J32','','jalazyload','plugin','system',0,'1.0.6','','http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml','','');
INSERT INTO `mp75b_updates` VALUES (203,4,0,'JA System Nrain Plugin for Joomla 2.5 & 3.3','','janrain','plugin','system',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml','','');
INSERT INTO `mp75b_updates` VALUES (204,4,0,'JA Popup Plugin for J25 & J33','','japopup','plugin','system',0,'2.6.2','','http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml','','');
INSERT INTO `mp75b_updates` VALUES (205,4,0,'JA System Social Plugin for Joomla 2.5 & 3.0','','jasocial','plugin','system',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml','','');
INSERT INTO `mp75b_updates` VALUES (206,4,0,'JA System Social Feed Plugin for J25 & J3.3','','jasocial_feed','plugin','system',0,'1.1.9','','http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml','','');
INSERT INTO `mp75b_updates` VALUES (207,4,0,'JA T3v2 System Plugin for J25 & J32','','jat3','plugin','system',0,'2.7.1','','http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml','','');
INSERT INTO `mp75b_updates` VALUES (208,4,0,'JA T3v3 System Plugin','','jat3v3','plugin','system',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml','','');
INSERT INTO `mp75b_updates` VALUES (209,4,0,'JA Tabs Plugin for J25 & J3.3','','jatabs','plugin','system',0,'2.6.5','','http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml','','');
INSERT INTO `mp75b_updates` VALUES (210,4,0,'JA Typo Plugin for J25 & J32','','jatypo','plugin','system',0,'2.5.6','','http://update.joomlart.com/service/tracking/j16/plg_system_jatypo.xml','','');
INSERT INTO `mp75b_updates` VALUES (211,4,10019,'T3 System Plugin','','t3','plugin','system',0,'2.4.6','','http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml','','');
INSERT INTO `mp75b_updates` VALUES (212,4,0,'T3 Blank Template','','t3_blank','template','',0,'2.1.9','','http://update.joomlart.com/service/tracking/j16/t3_blank.xml','','');
INSERT INTO `mp75b_updates` VALUES (213,4,0,'T3 B3 Blank Template','','t3_bs3_blank','template','',0,'2.1.4','','http://update.joomlart.com/service/tracking/j16/t3_bs3_blank.xml','','');
INSERT INTO `mp75b_updates` VALUES (214,4,0,'JA Teline III Template for Joomla 2.5','','teline_iii','template','',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/teline_iii.xml','','');
INSERT INTO `mp75b_updates` VALUES (215,4,0,'Thirdparty Extensions Compatibility Bundle','','thirdparty_exts_compatibility','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/thirdparty_exts_compatibility.xml','','');
INSERT INTO `mp75b_updates` VALUES (216,4,0,'Uber Template','','uber','template','',0,'2.0.3','','http://update.joomlart.com/service/tracking/j16/uber.xml','','');
INSERT INTO `mp75b_updates` VALUES (217,4,0,'T3 B3 Blank Template','','t3_bs3_blank','template','',0,'2.1.9','','http://update.joomlart.com/service/tracking/j30/t3_bs3_blank.xml','','');
INSERT INTO `mp75b_updates` VALUES (218,4,0,'JA K2 v3 Filter package for J33','','com_jak2v3filter','component','',1,'3.0.0 preview ','','http://update.joomlart.com/service/tracking/j31/com_jak2v3filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (219,4,0,'JA Multilingual Component for J25 & J3','','com_jalang','component','',1,'1.0.6','','http://update.joomlart.com/service/tracking/j31/com_jalang.xml','','');
INSERT INTO `mp75b_updates` VALUES (220,4,0,'JA Sugite Theme for EasyBlog','','easyblog_theme_sugite','custom','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j31/easyblog_theme_sugite.xml','','');
INSERT INTO `mp75b_updates` VALUES (221,4,0,'JA Biz Template','','ja_biz','template','',0,'1.1.3','','http://update.joomlart.com/service/tracking/j31/ja_biz.xml','','');
INSERT INTO `mp75b_updates` VALUES (222,4,0,'JA Cago template','','ja_cago','template','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j31/ja_cago.xml','','');
INSERT INTO `mp75b_updates` VALUES (223,4,0,'JA Cagox template','','ja_cagox','template','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j31/ja_cagox.xml','','');
INSERT INTO `mp75b_updates` VALUES (224,4,0,'JA Fixel Template','','ja_fixel','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j31/ja_fixel.xml','','');
INSERT INTO `mp75b_updates` VALUES (225,4,0,'JA Hotel Template','','ja_hotel','template','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j31/ja_hotel.xml','','');
INSERT INTO `mp75b_updates` VALUES (226,4,0,'JA Muzic Template for J25 & J33','','ja_muzic','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j31/ja_muzic.xml','','');
INSERT INTO `mp75b_updates` VALUES (227,4,0,'JA Teline V Template','','ja_teline_v','template','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j31/ja_teline_v.xml','','');
INSERT INTO `mp75b_updates` VALUES (228,4,0,'Theme Fixel for JShopping J25 & J32','','jshopping_theme_fixel','custom','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j31/jshopping_theme_fixel.xml','','');
INSERT INTO `mp75b_updates` VALUES (229,4,0,'JA Google Chart Module','','mod_jagooglechart','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j31/mod_jagooglechart.xml','','');
INSERT INTO `mp75b_updates` VALUES (230,4,0,'JA K2 v3 Filter Module for J33','','mod_jak2v3filter','module','',0,'3.0.0 preview ','','http://update.joomlart.com/service/tracking/j31/mod_jak2v3filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (231,4,0,'JA Promo Bar module','','mod_japromobar','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j31/mod_japromobar.xml','','');
INSERT INTO `mp75b_updates` VALUES (232,4,0,'Ja Yahoo Finance','','mod_jayahoo_finance','module','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j31/mod_jayahoo_finance.xml','','');
INSERT INTO `mp75b_updates` VALUES (233,4,0,'Ja Yahoo Weather','','mod_jayahoo_weather','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j31/mod_jayahoo_weather.xml','','');
INSERT INTO `mp75b_updates` VALUES (234,4,0,'Plugin Ajax JA Content Type','','jacontenttype','plugin','ajax',0,'1.0.0 Beta','','http://update.joomlart.com/service/tracking/j31/plg_ajax_jacontenttype.xml','','');
INSERT INTO `mp75b_updates` VALUES (235,4,0,'JA K2 v3 Filter Plugin for J33','','jak2v3filter','plugin','k2',0,'3.0.0 preview ','','http://update.joomlart.com/service/tracking/j31/plg_k2_jak2v3filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (236,4,0,'Plugin JA Content Type','','jacontenttype','plugin','system',0,'1.0.2','','http://update.joomlart.com/service/tracking/j31/plg_system_jacontenttype.xml','','');
INSERT INTO `mp75b_updates` VALUES (237,4,10020,'Purity III Template','','purity_iii','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j31/purity_iii.xml','','');
INSERT INTO `mp75b_updates` VALUES (238,4,0,'Sample package for Uber App','','uber_app','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_app.xml','','');
INSERT INTO `mp75b_updates` VALUES (239,4,0,'Sample package for Uber Business','','uber_business','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_business.xml','','');
INSERT INTO `mp75b_updates` VALUES (240,4,0,'Sample package for Uber Charity','','uber_charity','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_charity.xml','','');
INSERT INTO `mp75b_updates` VALUES (241,4,0,'Sample package for Uber Church','','uber_church','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_church.xml','','');
INSERT INTO `mp75b_updates` VALUES (242,4,0,'Sample package for Uber Construction','','uber_construction','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_construction.xml','','');
INSERT INTO `mp75b_updates` VALUES (243,4,0,'Sample package for Uber Corporate','','uber_corporate','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_corporate.xml','','');
INSERT INTO `mp75b_updates` VALUES (244,4,0,'Sample package for Uber Gym','','uber_gym','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_gym.xml','','');
INSERT INTO `mp75b_updates` VALUES (245,4,0,'Sample package for Uber Home','','uber_home','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_home.xml','','');
INSERT INTO `mp75b_updates` VALUES (246,4,0,'Sample package for Uber Lawyer','','uber_lawyer','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_lawyer.xml','','');
INSERT INTO `mp75b_updates` VALUES (247,4,0,'Sample package for Uber Music','','uber_music','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_music.xml','','');
INSERT INTO `mp75b_updates` VALUES (248,4,0,'Sample package for Uber Restaurant','','uber_restaurant','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_restaurant.xml','','');
INSERT INTO `mp75b_updates` VALUES (249,4,0,'Sample package for Uber Spa','','uber_spa','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_spa.xml','','');
INSERT INTO `mp75b_updates` VALUES (250,4,0,'Sample package for Uber University','','uber_university','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_university.xml','','');
INSERT INTO `mp75b_updates` VALUES (251,4,0,'Sample package for Uber Wedding','','uber_wedding','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_wedding.xml','','');
UNLOCK TABLES;

-- Table structure for table `mp75b_user_keys`

DROP TABLE IF EXISTS `mp75b_user_keys`;
CREATE TABLE `mp75b_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_user_keys`

LOCK TABLES `mp75b_user_keys` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_user_notes`

DROP TABLE IF EXISTS `mp75b_user_notes`;
CREATE TABLE `mp75b_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_user_notes`

LOCK TABLES `mp75b_user_notes` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_user_profiles`

DROP TABLE IF EXISTS `mp75b_user_profiles`;
CREATE TABLE `mp75b_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- Dumping data for table `mp75b_user_profiles`

LOCK TABLES `mp75b_user_profiles` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_user_usergroup_map`

DROP TABLE IF EXISTS `mp75b_user_usergroup_map`;
CREATE TABLE `mp75b_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_user_usergroup_map`

LOCK TABLES `mp75b_user_usergroup_map` WRITE;
INSERT INTO `mp75b_user_usergroup_map` VALUES (584,8);
INSERT INTO `mp75b_user_usergroup_map` VALUES (585,7);
INSERT INTO `mp75b_user_usergroup_map` VALUES (585,8);
UNLOCK TABLES;

-- Table structure for table `mp75b_usergroups`

DROP TABLE IF EXISTS `mp75b_usergroups`;
CREATE TABLE `mp75b_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_usergroups`

LOCK TABLES `mp75b_usergroups` WRITE;
INSERT INTO `mp75b_usergroups` VALUES (1,0,1,18,'Public');
INSERT INTO `mp75b_usergroups` VALUES (2,1,8,15,'Registered');
INSERT INTO `mp75b_usergroups` VALUES (3,2,9,14,'Author');
INSERT INTO `mp75b_usergroups` VALUES (4,3,10,13,'Editor');
INSERT INTO `mp75b_usergroups` VALUES (5,4,11,12,'Publisher');
INSERT INTO `mp75b_usergroups` VALUES (6,1,4,7,'Manager');
INSERT INTO `mp75b_usergroups` VALUES (7,6,5,6,'Administrator');
INSERT INTO `mp75b_usergroups` VALUES (8,1,16,17,'Super Users');
INSERT INTO `mp75b_usergroups` VALUES (9,1,2,3,'Guest');
UNLOCK TABLES;

-- Table structure for table `mp75b_users`

DROP TABLE IF EXISTS `mp75b_users`;
CREATE TABLE `mp75b_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=586 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_users`

LOCK TABLES `mp75b_users` WRITE;
INSERT INTO `mp75b_users` VALUES (584,'Super User','sense','sense.katherine@gmail.com','$2y$10$9END94DwB7tqxzU7OeZNuuJvsNY6llfzRj83ciO2q3YI500HrMdJi',0,1,'2014-08-08 10:03:19','2015-03-26 02:26:54',0,'','0000-00-00 00:00:00',0,'','',0);
INSERT INTO `mp75b_users` VALUES (585,'Lewis','lewis','lewis.aedes@gmail.com','$2y$10$aMDse68eg9LITMdGRTzJ2.v3/C2FPbF.uiTftlc5JAFN3yYxoQnEy',0,0,'2015-01-31 08:11:58','2015-01-31 08:12:08','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0);
UNLOCK TABLES;

-- Table structure for table `mp75b_userxtd_fields`

DROP TABLE IF EXISTS `mp75b_userxtd_fields`;
CREATE TABLE `mp75b_userxtd_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `attrs` text NOT NULL,
  `field_type` char(20) NOT NULL,
  `required` int(1) NOT NULL,
  `element` mediumtext NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL,
  `language` char(7) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_createdby` (`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_checkout` (`checked_out`),
  KEY `cat_index` (`published`,`access`,`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_userxtd_fields`

LOCK TABLES `mp75b_userxtd_fields` WRITE;
INSERT INTO `mp75b_userxtd_fields` VALUES (1,98,9,'Avatar','Avatar','BASIC_AVATAR','{\"name\":\"BASIC_AVATAR\",\"label\":\"Avatar\",\"description\":\"Upload your Avatar\",\"default\":\"\",\"required\":\"0\",\"width\":\"\",\"height\":\"\",\"crop\":\"0\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"1\"}','uploadimage',0,'<fieldname=\"BASIC_AVATAR\"label=\"Avatar\"description=\"Upload your Avatar\"hide_in_registration=\"1\"type=\"uploadimage\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:56:32',584,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (2,99,9,'Career','Career','BASIC_CAREER','{\"name\":\"BASIC_CAREER\",\"label\":\"Career\",\"description\":\"Your Career\",\"default\":\"\",\"required\":\"true\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"BASIC_CAREER\"label=\"Career\"description=\"Your Career\"required=\"true\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:56:46',584,2,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (3,100,9,'Telephone','Tel','BASIC_TEL','{\"name\":\"BASIC_TEL\",\"label\":\"Tel\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"BASIC_TEL\"label=\"Tel\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:56:48',584,3,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (4,101,9,'Ages','Ages','BASIC_AGES','{\"name\":\"BASIC_AGES\",\"label\":\"Ages\",\"description\":\"Your Ages\",\"default\":\"\",\"required\":\"true\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',1,'<fieldname=\"BASIC_AGES\"label=\"Ages\"description=\"Your Ages\"required=\"true\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 15:04:12',584,5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (5,102,9,'About','About Me','BASIC_ABOUT','{\"name\":\"BASIC_ABOUT\",\"label\":\"About Me\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"cols\":60,\"rows\":10,\"class\":\"\",\"filter\":\"safehtml\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','textarea',0,'<fieldname=\"BASIC_ABOUT\"label=\"About Me\"cols=\"60\"rows=\"10\"filter=\"safehtml\"type=\"textarea\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:10',584,6,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (6,103,9,'Website','Website','BASIC_WEBSITE','{\"name\":\"BASIC_WEBSITE\",\"label\":\"Website\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"BASIC_WEBSITE\"label=\"Website\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:56:55',584,7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (7,104,9,'Birth Day','Birth Day','BASIC_BIRTHDAY','{\"name\":\"BASIC_BIRTHDAY\",\"label\":\"Birth Day\",\"description\":\"\",\"default\":\"\",\"required\":\"true\",\"format\":\"%Y-%m-%d %H:%M:%S\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','calendar',1,'<fieldname=\"BASIC_BIRTHDAY\"label=\"Birth Day\"required=\"true\"format=\"%Y-%m-%d %H:%M:%S\"type=\"calendar\"></field>','2014-09-07 09:58:40',584,'2013-03-22 15:31:55',584,4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (8,105,10,'Country','Country','LIVING_COUNTRY','{\"name\":\"LIVING_COUNTRY\",\"label\":\"Country\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"LIVING_COUNTRY\"label=\"Country\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:24',584,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (9,106,10,'Zip Code','Zip Code','LIVING_ZIPCODE','{\"name\":\"LIVING_ZIPCODE\",\"label\":\"Zip Code\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"4\",\"class\":\"input-small\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"LIVING_ZIPCODE\"label=\"Zip Code\"size=\"4\"class=\"input-small\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:36',584,3,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (10,107,10,'City','City','LIVING_CITY','{\"name\":\"LIVING_CITY\",\"label\":\"City\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"LIVING_CITY\"label=\"City\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:41',584,4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (11,108,10,'Address','Address','LIVING_ADDRESS','{\"name\":\"LIVING_ADDRESS\",\"label\":\"Address\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"40\",\"class\":\"input-xlarge\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"LIVING_ADDRESS\"label=\"Address\"size=\"40\"class=\"input-xlarge\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:47',584,5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (12,109,10,'Region','Region','LIVING_REGION','{\"name\":\"LIVING_REGION\",\"label\":\"Region\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"LIVING_REGION\"label=\"Region\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:30',584,2,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
UNLOCK TABLES;

-- Table structure for table `mp75b_userxtd_profiles`

DROP TABLE IF EXISTS `mp75b_userxtd_profiles`;
CREATE TABLE `mp75b_userxtd_profiles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `access` int(10) unsigned NOT NULL,
  `language` char(7) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_language` (`language`),
  KEY `cat_index` (`access`),
  KEY `idx_value` (`value`),
  KEY `user_id` (`user_id`),
  KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_userxtd_profiles`

LOCK TABLES `mp75b_userxtd_profiles` WRITE;
INSERT INTO `mp75b_userxtd_profiles` VALUES (1,585,'BASIC_AVATAR','','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (2,585,'BASIC_CAREER','backend developer','0000-00-00 00:00:00','0000-00-00 00:00:00',2,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (3,585,'BASIC_TEL','','0000-00-00 00:00:00','0000-00-00 00:00:00',3,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (4,585,'BASIC_BIRTHDAY','1992-04-19 16:11:24','0000-00-00 00:00:00','0000-00-00 00:00:00',4,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (5,585,'BASIC_AGES',22,'0000-00-00 00:00:00','0000-00-00 00:00:00',5,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (6,585,'BASIC_ABOUT','','0000-00-00 00:00:00','0000-00-00 00:00:00',6,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (7,585,'BASIC_WEBSITE','','0000-00-00 00:00:00','0000-00-00 00:00:00',7,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (8,585,'LIVING_COUNTRY','','0000-00-00 00:00:00','0000-00-00 00:00:00',8,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (9,585,'LIVING_REGION','','0000-00-00 00:00:00','0000-00-00 00:00:00',9,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (10,585,'LIVING_ZIPCODE','','0000-00-00 00:00:00','0000-00-00 00:00:00',10,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (11,585,'LIVING_CITY','','0000-00-00 00:00:00','0000-00-00 00:00:00',11,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (12,585,'LIVING_ADDRESS','','0000-00-00 00:00:00','0000-00-00 00:00:00',12,0,'','');
UNLOCK TABLES;

-- Table structure for table `mp75b_viewlevels`

DROP TABLE IF EXISTS `mp75b_viewlevels`;
CREATE TABLE `mp75b_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_viewlevels`

LOCK TABLES `mp75b_viewlevels` WRITE;
INSERT INTO `mp75b_viewlevels` VALUES (1,'Public',0,'[1]');
INSERT INTO `mp75b_viewlevels` VALUES (2,'Registered',1,'[6,2,8]');
INSERT INTO `mp75b_viewlevels` VALUES (3,'Special',2,'[6,3,8]');
INSERT INTO `mp75b_viewlevels` VALUES (5,'Guest',0,'[9]');
INSERT INTO `mp75b_viewlevels` VALUES (6,'Super Users',0,'[8]');
UNLOCK TABLES;

-- Table structure for table `mp75b_webgallery_items`

DROP TABLE IF EXISTS `mp75b_webgallery_items`;
CREATE TABLE `mp75b_webgallery_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `introtext` mediumtext NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL,
  `language` char(7) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_alias` (`alias`),
  KEY `idx_createdby` (`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_checkout` (`checked_out`),
  KEY `cat_index` (`published`,`access`,`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_webgallery_items`

LOCK TABLES `mp75b_webgallery_items` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_webgallery_queues`

DROP TABLE IF EXISTS `mp75b_webgallery_queues`;
CREATE TABLE `mp75b_webgallery_queues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_webgallery_queues`

LOCK TABLES `mp75b_webgallery_queues` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_webgallery_thumbnails`

DROP TABLE IF EXISTS `mp75b_webgallery_thumbnails`;
CREATE TABLE `mp75b_webgallery_thumbnails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `scanned` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_path` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_webgallery_thumbnails`

LOCK TABLES `mp75b_webgallery_thumbnails` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_weblinks`

DROP TABLE IF EXISTS `mp75b_weblinks`;
CREATE TABLE `mp75b_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_weblinks`

LOCK TABLES `mp75b_weblinks` WRITE;
UNLOCK TABLES;

-- Completed on: 2015-03-26T13:35:59+00:00
