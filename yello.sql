-- MySQL dump 10.11
--
-- Host: localhost    Database: adafund
-- ------------------------------------------------------
-- Server version	5.0.77

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL,
  `pic_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `type` varchar(255) collate utf8_unicode_ci NOT NULL default 'static',
  `menucontent` tinyint(1) NOT NULL default '0',
  `front` tinyint(1) NOT NULL default '0',
  `right` tinyint(1) NOT NULL default '0',
  `date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,1,'','static',0,0,0,'2011-09-09 00:42:19'),(2,2,'','static',0,0,0,'2011-09-09 01:35:07'),(3,16,'','static',0,0,0,'2011-09-09 06:25:42'),(5,3,'','static',0,0,0,'2011-09-09 08:27:59'),(9,5,'','static',0,0,0,'2011-09-09 14:47:25'),(8,6,'','news',0,0,0,'2011-09-09 11:03:32'),(10,4,'','static',0,0,0,'2011-09-09 15:04:18'),(11,7,'','static',0,0,0,'2011-09-09 15:44:44'),(12,18,'','static',0,0,0,'2011-09-10 05:46:57'),(13,15,'','static',0,0,0,'2011-09-10 09:00:32');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles_translate`
--

DROP TABLE IF EXISTS `articles_translate`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `articles_translate` (
  `id` int(11) NOT NULL auto_increment,
  `articles_id` int(11) NOT NULL,
  `language` varchar(2) collate utf8_unicode_ci NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `summary` tinytext collate utf8_unicode_ci NOT NULL,
  `body` text collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_articles_id` (`articles_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `articles_translate`
--

LOCK TABLES `articles_translate` WRITE;
/*!40000 ALTER TABLE `articles_translate` DISABLE KEYS */;
INSERT INTO `articles_translate` VALUES (1,1,'en','ADA is unique because of its one-of-a-kind combination of innovative academic programs  ','The Advanced Foreign Service Program (AFSP), which is a highly flexible program offering professional training to Azerbaijani civil servants working in the area of international affairs The Master of Arts in Diplomacy and International Affairs (MADIA), a ','<div><div>Located in Baku, at the center of an increasingly significant part of the world, Azerbaijan Diplomatic Academy (ADA) has gone through a remarkable growth since its inception. We started as a training institute to meet urgtent needs of our expanding diplomatic service. Hence, our name: Diplomatic Academy. But fast we have grown into a school of international affairs, now with both graduate and undergraduate degree programs.&nbsp;<br><br><img src=\"http://boutique.az/adafund/css/img/cont_img.png\"><br><br><p>At ADA, we are motivated by a need to establish an outstanding education for our own citizens in Azerbaijan, but we know that our growing nation also has a responsibility to bring first-class international education and leadership training for others in the region and the world, and to promote intellectual inquiry on many topics.</p>\r\n<p>Our academic programs, which are attracting the best and brightest, are already making ADA a clear intellectual epicenter in the region. A focus on student’s individual strengths and professional goals, and a vision for a collaborative dialogue among scholars and practitioners, is helping cultivate a new, close-knit group of world-class leaders. ADA has started as a school of international affairs, but steady expansion of programs is leading us toward a university.</p>\r\n<p>We invite you to learn more about ADA, about why it is one of the most exciting places in the world to live and study, and about how your support can help us to make a difference in people\'s lives.</p><p><strong>Ambassador Hafiz Pashayev</strong></p><p><strong>Rector</strong></p><p><strong><br></strong></p><p><strong><br></strong></p></div></div><div><div></div></div>'),(2,3,'az','asdasd','asdasd','<div class=\"downloads\">\r\n  <ul>\r\n    <li>\r\n      <a href=\"#\"><img height=\"70\" src=\"/css/img/pdf.ico.png\"></a>\r\n  <br>\r\n      <a href=\"#\">Katalogu endir</a>\r\n    </li>\r\n    <li>\r\n      <a href=\"#\"><img height=\"70\" src=\"/css/img/logo.ico.png\"></a>\r\n   <br>\r\n     <a href=\"#\">Logoyu endir (cdr)</a>\r\n    </li>\r\n  </ul>\r\n</div>'),(12,3,'en','Downloads','','<div class=\"downloads\">\r\n  <ul>\r\n    <li>\r\n      <a href=\"#\"><img height=\"70\" src=\"/css/img/pdf.ico.png\"></a>\r\n  <br>\r\n      <a href=\"#\">Download Cataogue</a>\r\n    </li>\r\n    <li>\r\n      <a href=\"#\"><img height=\"70\" src=\"/css/img/logo.ico.png\"></a>\r\n   <br>\r\n     <a href=\"#\">Download Logo (cdr)</a>\r\n    </li>\r\n  </ul>\r\n</div>'),(3,5,'az','asdasdasdad','','<div></div>'),(14,2,'ru','haqqimizda','','<div><div><div><div><div><div><div><div><div><p><strong>&nbsp;«Аura Park»&nbsp;в Гяндже</strong></p><p><br></p>\r\n<p>1. Торговый\r\nи Развлекательный Центр «Аura Park», который будет функционировать в Гяндже и являющейся\r\nцентром северо-западного региона, примет всего 1 миллион клиентов, включая\r\nместное население и проживающих в окрестных районах.</p>\r\n<p>&nbsp;</p>\r\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Торговый и Развлекательный Центр «Аura\r\nPark», имея около 400 сотрудников, который будет принимать в месяц 250 тысяч\r\nклиентов и в год 250 тысяч клиентов, станет самым выгодным и доселе невиданным торговым\r\nцентром в городе Гяндже.</p>\r\n<p>&nbsp;</p>\r\n<p>3. «Aura\r\nPark» является центром, не встречавшемся по сей день в Гяндже и окрестных\r\nрайонах. Этот Торговый и Развлекательный Центр является одним из первых центров,\r\nпривлекающих внимание лучшим и отличающимся обслуживанием в торговом секторе Азербайджана,\r\nпривносящим новшество в эту область.</p>\r\n<p>&nbsp;</p>\r\n<p>4. Торговый\r\nи Развлекательный Центр «Аura Park», имея в своем составе кафе, рестораны,\r\nразвлекательные и торговые центры, будет принимать заказы клиентов 7 дней в\r\nнеделю. </p>\r\n<p>&nbsp;</p>\r\n<p>5.\r\n«Аura Park» имея крытую территорию&nbsp; в 9.000\r\nквадратных метров и арендованную территорию в 4.500 квадратных метров, станет\r\nсамым вместительным, самым крупным, самым лучшим и неповторимым торговым и\r\nразвлекательным центром. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;&nbsp;</p>  <br><br></div></div></div></div></div></div></div></div></div>'),(4,4,'az','Obyektler','Purus auctor. Dictumst enim vel nascetur, pid dapibus! Rhoncus lorem sed facilisis? Turpis dapibus dictumst in sit turpis. Sit nascetur parturient tempor urna ut! Eu amet! Scelerisque massa aliquet amet ridiculus tortor placerat a porta porttitor amet urn','Purus auctor. Dictumst enim vel nascetur, pid dapibus! Rhoncus lorem sed facilisis? Turpis dapibus dictumst in sit turpis. Sit nascetur parturient tempor urna ut! Eu amet! Scelerisque massa aliquet amet ridiculus tortor placerat a porta porttitor amet urna sit cum enim tincidunt parturient eu! Montes tincidunt tincidunt dis, dolor aliquam? Non massa aenean quis, phasellus nunc est vel velit in. A elit, duis vut, diam rhoncus sed magna quis! Integer, urna adipiscing et mattis cursus, cras ac, ut, rhoncus nec.Purus auctor. Dictumst enim vel nascetur, pid dapibus! Rhoncus lorem sed facilisis? Turpis dapibus dictumst in sit turpis. Sit nascetur parturient tempor urna ut! Eu amet! Scelerisque massa aliquet amet ridiculus tortor placerat a porta porttitor amet urna sit cum enim tincidunt parturient eu! Montes tincidunt tincidunt dis, dolor aliquam? Non massa aenean quis, phasellus nunc est vel velit in. A elit, duis vut, diam rhoncus sed magna quis! Integer, urna adipiscing et mattis cursus, cras ac, ut, rhoncus nec.Purus auctor. Dictumst enim vel nascetur, pid dapibus! Rhoncus lorem sed facilisis? Turpis dapibus dictumst in sit turpis. Sit nascetur parturient tempor urna ut! Eu amet! Scelerisque massa aliquet amet ridiculus tortor placerat a porta porttitor amet urna sit cum enim tincidunt parturient eu! Montes tincidunt tincidunt dis, dolor aliquam? Non massa aenean quis, phasellus nunc est vel velit in. A elit, duis vut, diam rhoncus sed magna quis! Integer, urna adipiscing et mattis cursus, cras ac, ut, rhoncus nec.'),(5,6,'az','asdasd','','asdasdasdasd'),(6,8,'az','asdasdasdasd','','asdasdasd'),(7,8,'ru','asdasd','','asdasd'),(8,11,'ru','E-Katalog','','<noscript>&amp;lt;object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0\" width=\"100%\" height=\"100%\"&amp;gt;\r\n  &amp;lt;br&amp;gt;\r\n  &amp;lt;br&amp;gt;\r\n  &amp;lt;br&amp;gt;\r\n  &amp;lt;br&amp;gt;\r\n  &amp;lt;br&amp;gt;\r\n  &amp;lt;embed src=\"swf/Magazine.swf\" width=\"100%\" height=\"100%\" quality=\"high\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" type=\"application/x-shockwave-flash\" wmode=\"transparent\" allowFullScreen=\"true\" allowScriptAccess=\"sameDomain\"&amp;gt;&amp;lt;/embed&amp;gt;\r\n&amp;lt;/object&amp;gt;</noscript>'),(9,12,'az','asdasd','','<img src=\"/files/contactPic.jpg\" style=\"width:348px;height:217px;margin-right:20px;float:left\"><div>Kəpəz rayonu, Şah İsmayıl Xətai pr. 93,Gəncə -&nbsp;Azərbaycan&nbsp;</div><div><div>T : (+994 22) 60 00 25&nbsp;</div><div><div>T : (+994 22) 60 00 35&nbsp;</div><div><div><div><div>T : (+994 22) 60 00 45&nbsp;</div></div></div>  <div><div><div><div>T : (+994 22) 60 00 55</div></div></div></div></div></div></div><div></div><div>E : info@aurapark.az</div><div><br></div><div>İcarə və idarəetmə:<br>www.martiavm.com<br>info@martiavm.com  <br></div><div><br></div><div><br></div><div><br></div>'),(10,12,'en','sdads','','<img src=\"/files/contactPic.jpg\" style=\"width:348px;height:217px;margin-right:20px;float:left\"><div>Kapaz region, Shah Ismayil Khatai ave. 93,Ganja-&nbsp;Azerbaijan&nbsp;</div><div><div>T : (+994 22) 60 00 25&nbsp;</div><div><div>T : (+994 22) 60 00 35&nbsp;</div><div><div><div><div>T : (+994 22) 60 00 45&nbsp;</div></div></div>  <div><div><div><div>T : (+994 22) 60 00 55</div></div></div></div></div></div></div><div></div><div>E : info@aurapark.az</div><div><br></div><div>Management and rental<br>www.martiavm.com<a href=\"http://www.martiavm.com/\" target=\"_blank\"></a><br>info@martiavm.com<a href=\"mailto:info@martiavm.com\" target=\"_blank\"></a>  <br></div><div><br></div><div><br></div><div><br></div>'),(11,12,'ru','asdasd','','<img src=\"/files/contactPic.jpg\" style=\"width:348px;height:217px;margin-right:20px;float:left\"><div>Kəpəz rayonu, Şah İsmayıl Xətai pr. 93,Gəncə -&nbsp;Azərbaycan&nbsp;</div><div><div>T : (+994 22) 60 00 25&nbsp;</div><div><div>T : (+994 22) 60 00 35&nbsp;</div><div><div><div><div>T : (+994 22) 60 00 45&nbsp;</div></div></div>  <div><div><div><div>T : (+994 22) 60 00 55</div></div></div></div></div></div></div><div></div><div>E : info@aurapark.az</div><div><br></div><div>İcarə və idarəetmə:<br>www.martiavm.com<br>info@martiavm.com  <br></div><div><br></div><div><br></div><div><br></div>'),(13,3,'ru','Downloads','','<div class=\"downloads\">\r\n  <ul>\r\n    <li>\r\n      <a href=\"#\"><img height=\"70\" src=\"/css/img/pdf.ico.png\"></a>\r\n  <br>\r\n      <a href=\"#\">Download Cataogue</a>\r\n    </li>\r\n    <li>\r\n      <a href=\"#\"><img height=\"70\" src=\"/css/img/logo.ico.png\"></a>\r\n   <br>\r\n     <a href=\"#\">Download Logo (cdr)</a>\r\n    </li>\r\n  </ul>\r\n</div>'),(15,2,'az','haqqimizda','','<div><div><div><div><div><div><div><div><div><div><div><div><div><div><div><p><strong>“Aura park” Gəncədə</strong></p><p><strong></strong></p><p><br></p><p>Şimali-qərb bölgəsinin mərkəzi Gəncədə fəaliyyət\r\ngöstərəcək “Aura park” Alış-Veriş və Əyləncə Mərkəzi yerli və ətraf rayonlarda\r\nyaşayanlar da daxil, ümumilikdə, 1 milyon müştəri qəbul edəcək.</p>\r\n<p>&nbsp;</p>\r\n<p>400-ə yaxın əməkdaşı, aylıq 250 min müştərinin\r\nqəbulu ilə hər il milyonlarla ziyarətçini qəbul edəcək “Aura park” Alış-Veriş\r\nvə Əyləncə Mərkəzi Gəncə şəhərində bu günə qədər görünməmiş ən sərfəli ticarət\r\nmərkəzi olacaq.</p>\r\n<p>&nbsp;</p>\r\n<p>“Aura park” Gəncədə və ətraf bölgədə bu günə qədər\r\nrast gəlinməyən bir mərkəzdir. Bu Alış-Veriş və Əyləncə Mərkəzi Azərbaycanın\r\nticarət sektorunda üstün və fərqli xidməti ilə diqqət çəkən, bu sahəyə yenilik\r\ngətirən ilklərdəndir.</p>\r\n<p>&nbsp;</p>\r\n<p>“Aura park” Alış-Veriş və Əyləncə Mərkəzi kafe və\r\nrestoranları, əyləncə və alış-veriş mərkəzləri ilə həftənin 7 günü müştərilərin\r\nsifarişlərini qəbul edəcək.</p>\r\n<p>&nbsp;</p>\r\n<p>9.000 kvadratmetr qapalı sahəsi və 4.500\r\nkvadratmetr icarə sahəsi olacaq “Aura park” Gəncənin ən geniş, ən böyük, ən\r\nüstü və bənzərsiz alış-veriş və əyləncə mərkəzi olacaq.</p>\r\n<p>&nbsp;&nbsp;</p>  <br><br></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div>'),(16,2,'en','haqqimizda','','<p style=\"\" margin-left:18.0pt;text-align:center;line-height:150%\"\"=\"\"><strong><br></strong></p><br>'),(22,5,'en','What we offer?','Our Leadership Development program, first-ever in the country, is well sought out across Azerbaijan�s civil service. Baku Summer Energy School has become international success with faculty and participants from about 40 countries across the globe.','<div><br></div><div><br></div>'),(17,13,'az','unvan','','<br><div><br></div>'),(20,8,'en','sdads','','<div><br></div><div><br></div>'),(21,11,'en','22','','<div><br></div><div><br></div>'),(18,13,'en','unvan','','<div><br></div><div><br></div>'),(19,13,'ru','unvan','','<iframe width=\"640\" height=\"480\" frameborder=\"0\" scrolling=\"no\" marginheight=\"0\" marginwidth=\"0\" src=\"http://maps.google.com/maps/ms?msa=0&amp;msid=202389199425841496719.0004ac9280ca11071df56&amp;ie=UTF8&amp;t=m&amp;vpsrc=6&amp;ll=40.69001,46.35149&amp;spn=0.00781,0.013733&amp;z=16&amp;output=embed\"></iframe><br><span style=\"font-size:small\">View <a href=\"http://maps.google.com/maps/ms?msa=0&amp;msid=202389199425841496719.0004ac9280ca11071df56&amp;ie=UTF8&amp;t=m&amp;vpsrc=6&amp;ll=40.69001,46.35149&amp;spn=0.00781,0.013733&amp;z=16&amp;source=embed\" style=\"color:#0000ff;text-align:left\">Aurapark, Azerbaijan</a> in a larger map</span>');
/*!40000 ALTER TABLE `articles_translate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `banners` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) collate utf8_unicode_ci NOT NULL,
  `teaser` text collate utf8_unicode_ci NOT NULL,
  `link` varchar(255) collate utf8_unicode_ci NOT NULL,
  `pic_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'ADA holds Honor Code Ceremony','ADA holds Honor Code Ceremony Baku, Azerbaijan — Before going to classes, ADA\'s new bachelor and master students went through special Honor Code Ceremony, which is held at the ADA annually.','/aboutus','banner1.jpg',0,'2011-10-04 14:07:03'),(3,'ADA holds Honor Code Ceremony','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ','/aboutus','banner1.jpg',0,'2011-10-04 14:07:11'),(4,'Steve Jobs','Steve Jobs was killed because of his help to Gaddafi','/aboutus','1319804861297387_226515050737149_100001359663362_517247_1916943405_n.jpg',0,'2011-10-04 14:07:11'),(5,'ADA holds Honor Code Ceremony','ADA holds Honor Code Ceremony Baku, Azerbaijan — Before going to classes, ADA\'s new bachelor and master students went through special Honor Code Ceremony, which is held at the ADA annually.','/aboutus','banner1.jpg',0,'2011-10-04 14:07:11');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gallery` (
  `id` int(11) NOT NULL auto_increment,
  `pic_name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `type` enum('image','video') collate utf8_unicode_ci NOT NULL default 'image',
  `link` varchar(255) collate utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `modify_date` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gallery`
--

LOCK TABLES `gallery` WRITE;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` VALUES (23,'131627079105.jpg','image','','2011-09-17 19:46:31','2011-09-17 19:46:31'),(15,'13162701581 etaj 06.jpg','image','','2011-09-17 19:35:58','2011-09-17 19:35:58'),(16,'131627066401.jpg','image','','2011-09-17 19:44:24','2011-09-17 19:44:24'),(17,'13162706791 etaj 08.jpg','image','','2011-09-17 19:44:39','2011-09-17 19:44:39'),(18,'13162706921 etaj 09.jpg','image','','2011-09-17 19:44:52','2011-09-17 19:44:52'),(19,'131627071302.jpg','image','','2011-09-17 19:45:13','2011-09-17 19:45:13'),(20,'13162707242 etaj 02.jpg','image','','2011-09-17 19:45:24','2011-09-17 19:45:24'),(21,'131627074303.jpg','image','','2011-09-17 19:45:43','2011-09-17 19:45:43'),(22,'131627077004.jpg','image','','2011-09-17 19:46:10','2011-09-17 19:46:10'),(14,'1316082608unicards.png','video','http://www.youtube.com/watch?v=8OO1pOqRJkA','2011-09-15 15:22:22','2011-09-15 15:22:22'),(24,'13162708106 etaj 01.jpg','image','','2011-09-17 19:46:50','2011-09-17 19:46:50'),(25,'1316270822DSC_0015.jpg','image','','2011-09-17 19:47:02','2011-09-17 19:47:02'),(26,'1316270835DSC_0021.jpg','image','','2011-09-17 19:47:15','2011-09-17 19:47:15'),(27,'1316270850DSC_0025.jpg','image','','2011-09-17 19:47:30','2011-09-17 19:47:30'),(28,'1316270865DSC_0029.jpg','image','','2011-09-17 19:47:45','2011-09-17 19:47:45'),(29,'1316270878DSC_0030.jpg','image','','2011-09-17 19:47:58','2011-09-17 19:47:58'),(30,'1316270890DSC_0040.jpg','image','','2011-09-17 19:48:10','2011-09-17 19:48:10'),(31,'1316270905DSC_0041.jpg','image','','2011-09-17 19:48:25','2011-09-17 19:48:25'),(32,'1316270916DSC_0058.jpg','image','','2011-09-17 19:48:36','2011-09-17 19:48:36'),(33,'1316270932ofis 001.jpg','image','','2011-09-17 19:48:52','2011-09-17 19:48:52'),(34,'1316270946ofis 004.jpg','image','','2011-09-17 19:49:06','2011-09-17 19:49:06'),(35,'1316270961ofis 006.jpg','image','','2011-09-17 19:49:21','2011-09-17 19:49:21');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_translate`
--

DROP TABLE IF EXISTS `gallery_translate`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `gallery_translate` (
  `id` int(11) NOT NULL auto_increment,
  `gallery_id` int(11) NOT NULL,
  `language` varchar(2) collate utf8_unicode_ci NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_gallery_id` (`gallery_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `gallery_translate`
--

LOCK TABLES `gallery_translate` WRITE;
/*!40000 ALTER TABLE `gallery_translate` DISABLE KEYS */;
INSERT INTO `gallery_translate` VALUES (3,1,'ru','Gallery 1'),(4,1,'az','Gallery 1'),(35,12,'en','Gallery 1'),(36,12,'ru','Gallery 1'),(37,12,'az','Gallery 1'),(39,14,'ru','Rabiosa');
/*!40000 ALTER TABLE `gallery_translate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `languages` (
  `code` varchar(2) collate utf8_unicode_ci NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES ('az',''),('en',''),('ru','');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `menus` (
  `id` int(11) NOT NULL auto_increment,
  `parent_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `keyword` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,-1,0,''),(2,-1,1,''),(3,-1,2,''),(4,-1,3,''),(5,-1,4,''),(6,-1,5,''),(7,-1,6,''),(15,-1,8,'');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_translate`
--

DROP TABLE IF EXISTS `menus_translate`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `menus_translate` (
  `id` int(11) NOT NULL auto_increment,
  `menus_id` int(11) NOT NULL,
  `language` varchar(2) collate utf8_unicode_ci NOT NULL,
  `name` varchar(255) collate utf8_unicode_ci NOT NULL,
  `link` varchar(255) collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_menus_id` (`menus_id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `menus_translate`
--

LOCK TABLES `menus_translate` WRITE;
/*!40000 ALTER TABLE `menus_translate` DISABLE KEYS */;
INSERT INTO `menus_translate` VALUES (1,1,'en','About us',''),(2,1,'az','Baş Səhifə','/az/site/index'),(3,1,'ru','Главная страница','/ru/site/index'),(4,1,'ge','Baş Səhifə',''),(5,2,'az','Haqqımızda',''),(6,2,'ru','О нас',''),(7,2,'ge','Haqqimizda',''),(8,3,'az','İcarə','/az/site/order'),(9,3,'ru','Аренда','/ru/site/order'),(10,3,'ge','İcarə',''),(11,2,'en','Why to give to ADA?',''),(12,3,'en','What we offer?',''),(13,4,'az','Obyektlər','/az/site/floors'),(14,4,'en','How to Give',''),(15,5,'az','Qalereya    ','/az/site/gallery'),(16,6,'az','Xəbərlər    ','/az/allnews'),(17,7,'az','E-Katalog','/ecatalog'),(18,15,'en','Contacts',''),(19,15,'az','Ünvan ','/az/site/maps'),(21,5,'en','Recognition',''),(22,6,'en','Our donors',''),(23,7,'en','Testimonials',''),(24,16,'en','Downloads',''),(25,4,'ru',' Объекты','/ru/site/floors'),(26,5,'ru','Галерея','/ru/site/gallery'),(27,6,'ru','Новости','/ru/allnews'),(28,7,'ru','E-Katalog','/ru/ecatalog'),(29,16,'ru','Загрузка',''),(30,15,'ru','Адрес ','/ru/site/maps'),(32,18,'en','Contacts','/en/site/contacts'),(33,18,'az','Əlaqə','/az/site/contacts');
/*!40000 ALTER TABLE `menus_translate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uname` varchar(255) character set cp1251 default NULL,
  `pass` varchar(45) character set cp1251 default NULL,
  `status` int(10) unsigned NOT NULL default '1',
  `firstname` varchar(45) character set cp1251 default NULL,
  `lastname` varchar(45) character set cp1251 default NULL,
  `middlename` varchar(45) character set cp1251 default NULL,
  `description` text character set cp1251,
  PRIMARY KEY  (`id`),
  KEY `fk_users_pribileges1` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'sahil','AsdAsd',1,'Sahil','Isayev',NULL,'');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-10-30 14:29:52
