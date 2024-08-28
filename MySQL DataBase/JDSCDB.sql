/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.1.37-MariaDB : Database - jdscdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jdscdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jdscdb`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(15) NOT NULL,
  `admin_pwd` varchar(15) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`admin_id`,`admin_name`,`admin_pwd`) values 
(1,'admin','123456');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) NOT NULL,
  `category_desc` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`category_id`,`category_name`,`category_desc`) values 
(1,'冰箱','家用电器'),
(2,'洗衣机','家用电器'),
(3,'空调','家用电器'),
(4,'电视','家用电器'),
(5,'厨房电器','家用电器'),
(6,'热水器','家用电器');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_model` varchar(30) NOT NULL,
  `goods_name` varchar(60) NOT NULL,
  `category_id` int(11) NOT NULL,
  `goods_desc` varchar(200) DEFAULT NULL,
  `stock_number` int(11) NOT NULL,
  `goods_price` int(11) NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`goods_id`,`goods_model`,`goods_name`,`category_id`,`goods_desc`,`stock_number`,`goods_price`) values 
(2,'BX-DK-004','	容声冰箱BCD-526WD11HY',1,'珍珠白；对开门；风冷；3级能效；电脑控温；自动除霜',55,2799),
(3,'BX-SH-002','	西门子冰箱BCD-610W',1,'变频风冷无霜 独立双循环 LED显示 对开门冰箱（浅金色）',70,5888),
(4,'BX-SM-001','海尔571升云智能大对开',1,'风冷无霜 中门可变温 智能杀菌 大冷冻力空间家用冰箱',60,2499),
(5,'BX-SM-003','美菱冰箱BCD-206L3CT',1,'直冷；3级能效；机械控温；手动除霜；非变频；三门冰箱 静音大容积 节能省电 软冷冻(银色)',70,1499),
(6,'CD-001','方太_触控式抽油烟机燃气灶',5,'欧式触控式油烟机吸油烟机 燃气灶具云魔方烟灶套餐 EM71T+HC26BE 风量18.5立方',55,5759),
(7,'CD-002','老板触控式侧吸式吸油烟机燃气灶套装',5,'触控式；侧吸式；天然气；触控式；双眼灶；钢化玻璃材质；1级能效',51,6111),
(8,'CD-003','帅康欧式抽烟机',5,'侧吸式欧式家用抽烟机按键式大吸力免拆洗大尺寸抽吸脱排烟机烟罩烟机侧吸',55,1349),
(9,'CD-004','帅康_塔式油烟机',5,'家用琴键大吸力免拆洗大尺寸抽吸脱排单烟机',55,2159),
(10,'CD-005','方太侧吸式油烟机',5,'侧吸式；触控式；噪音级别：52分贝',52,2339),
(11,'CD-006','西门子触控式油烟机烟灶套装',5,' 触控式;自清洁大吸力;抽油烟机烟灶套餐；18立方；天然气',55,4499),
(12,'CD-007','美的侧吸式油烟机',5,'侧吸式;17.5立方;触控式；四重油烟分离',52,2069),
(13,'CD-008','华帝自动洗碗机',5,'立嵌两用 6套餐具容量;睿士银;免安装;大容量家用;自动洗碗机',53,2699),
(14,'CD-009','海尔自动洗碗机',5,'自动洗碗机 6套餐具全不锈钢洗碗机立嵌两用 红外线',52,3239),
(15,'DS-001','三星55A液晶平板电视',4,'4K超高清 网络智能 LED液晶平板电视 纤窄边框 超高清面板 精准UHD色彩 轻盈质感始于纤细 内置视频 ',55,3288),
(16,'DS-002','夏普55A',4,'4K超高清20核HDR轻薄智能平板LED液晶电视机（黑色）',60,2099),
(17,'DS-004','创维电视55A液晶电视',4,'15核4K超高清HDR智能液晶平板LED电视；主流人工智能配置，搭载A73芯片，4K HDR显示，爱奇艺影视后台，丰富影视教育资源！  ',55,2299),
(18,'DS-005','海信55寸曲面电视',4,'55英寸4K超高清 曲面 人工智能语音 HDR 液晶平板电视机',55,4999),
(19,'DS-006','三星65寸曲面电视',4,'65英寸 4K超高清 曲面 HDR 智能 网络 液晶电视',52,6999),
(20,'DS-007','康佳55寸曲面电视',4,'55英寸超薄曲面36核4K HDR人工智能电视；1G+8G曲面影院，12mm纤薄机身三星4K曲面屏·HDR画质处理·36核畅快运行',53,4599),
(21,'DS-008','小米32寸平板电视',4,'32英寸 智能高清网络液晶平板电视机',53,898),
(22,'DS-PB-003','TCL65寸平板电视',4,'4K超高清智能平板LED液晶电视 超纤薄金属机身 人工智能语音',60,3499),
(23,'KT-001','格力大1匹变频空调',3,'大1匹 变频 冷暖 独立除湿 挂机空调 KFR-26GW/(26592)FNhDa-A3 品圆',52,2949),
(24,'KT-002','美的大1匹变空调频',3,'变频 智弧 静音云智能 冷暖 挂机空调KFR-26GW/WDBN8A3@',55,2399),
(25,'KT-003','美的1.5匹变频挂机空调',3,'二级能效 节能变频 百档风速 静音运行 挂壁式空调',51,2999),
(26,'KT-004','格力3匹变频空调',3,'变频 立柜式冷暖空调KFR-72LW/(72596)FNAa-A3 Q铂',53,6199),
(27,'KT-005','奥克斯1.5匹变频空调',3,' 变频 KFR-35GW/BpNFW+3 静音 冷暖 挂壁式空调挂机',55,2388),
(28,'KT-006','奥克斯2匹定频空调',3,'定频 KFR-51LW/R1TC01+2 2级能效 智能 冷暖 柜机空调',52,3899),
(29,'KT-007','美的3匹定频空调',3,'冷暖 定频 柜机空调KFR-72LW/DY-YA400(D3)',51,5399),
(30,'RSQ-001','海尔热水器60升热水器',6,'变容速热型电热水器EC6003-YT1 1级能效 高温抑菌 健康淋浴 3000W速热',52,1699),
(31,'RSQ-002','史密斯13L燃气热水器',6,'13升燃气热水器JSQ26-VN 宽频恒温 不锈钢水箱 天然气(美国灰)',55,3128),
(32,'RSQ-003','海尔100L电热热水器',6,'电热水器ES80H-HC(E) 专利防电墙 1500w 机械版 8年包修 金刚三层胆，插电即用，1500w功率',55,1199),
(33,'RSQ-004','美的80L电热热水器',6,'双3000W无线遥控式电热水器F8030-T6（HEY） 一级能效',55,1499),
(34,'RSQ-005','方太13L燃气热水器',6,'普通恒温；燃气热水器；非防冻型；天然气',52,2280),
(35,'RSQ-006','万家乐11L燃气热水器',6,'智能精控恒温 燃气热水器(天然气) JSQ22-T11整机三年质保',52,948),
(36,'XYJ-001','海尔8公滚筒洗衣机',2,'8公斤，BLDC变频电机，静音节能；AMT抗菌窗垫&筒自洁(银灰色)  ',55,1999),
(37,'XYJ-002','西门子10公斤滚筒洗衣机',2,'家居互联远程操控，特渍洗程序，256种水位调节，90℃高温筒清洁，LED全触控界面',51,4499),
(38,'XYJ-003','美的6.5公斤波轮洗衣机',2,'全自动波轮洗衣机 8大程序 独立洗漂脱 桶自洁 家用非变频 智力灰',52,829),
(39,'XYJ-004','小天鹅9公斤滚筒洗衣机',2,' 9公斤滚筒洗衣机 BLDC变频电机 智能操控 家用 金色',52,6589),
(40,'XYJ-005','海尔5.5公斤波轮洗衣机',2,'全自动家用波轮洗衣机  智能感知称重',10,829),
(41,'XYJ-006','美的8公斤洗干一体机',2,'变频滚筒洗衣机带烘干 洗干一体机 衣干即停 特色除菌洗深层洁净衣物',61,2599),
(42,'XYJ-007','西门子6公斤洗干一体机',2,'变频洗烘一体 热风除菌',62,3999),
(43,'XYJ-008','松下4.5公斤干衣机',2,'恒温烘干，衣物蓬松舒适，健康杀菌，家用优选',10,2298),
(44,'RSQ-007','万和10L恒温燃气热水器',6,'恒温热水',70,1299),
(45,'RSQ-008','林内10L燃气热水器',6,NULL,10,4799),
(46,'KT-008','科龙大3匹变频空调',3,NULL,46,6899);

/*Table structure for table `order_item` */

DROP TABLE IF EXISTS `order_item`;

CREATE TABLE `order_item` (
  `order_id` int(11) NOT NULL,
  `goods_id` char(10) NOT NULL,
  `order_number` int(11) NOT NULL,
  `goods_price` float NOT NULL,
  PRIMARY KEY (`goods_id`,`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_item` */

insert  into `order_item`(`order_id`,`goods_id`,`order_number`,`goods_price`) values 
(4,'18',1,4999),
(9,'18',2,4999),
(3,'19',1,6999),
(1,'2',1,2799),
(8,'21',1,898),
(7,'25',20,2999),
(3,'26',3,6199),
(6,'29',1,5399),
(4,'31',1,3128),
(3,'4',1,2499),
(5,'41',2,2599),
(10,'43',1,2599),
(2,'7',3,6790),
(1,'8',1,1499);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` char(8) NOT NULL,
  `order_date` datetime NOT NULL,
  `total_price` float NOT NULL,
  `order_status` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`order_id`,`user_id`,`order_date`,`total_price`,`order_status`) values 
(1,'000001','2018-06-04 16:00:00',0,'1'),
(2,'000002','2018-06-05 15:42:18',0,'1'),
(3,'000003','2018-06-06 17:05:10',0,'0'),
(4,'000002','2018-07-12 21:09:20',0,'0'),
(5,'000004','2018-06-11 20:37:11',0,'0'),
(6,'000005','2018-06-19 18:23:37',0,'1'),
(7,'000003','2018-08-09 22:20:22',0,'1'),
(8,'000006','2018-08-01 22:23:21',0,'0'),
(9,'000007','2018-07-25 17:28:51',0,'1'),
(10,'000008','2018-09-01 09:23:24',0,'0');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` char(8) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` char(8) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` char(11) NOT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`user_id`,`user_name`,`password`,`address`,`phone`,`birthday`,`email`) values 
('000001','刘梅','123456','湖南株洲田心区','18087902345','1990-10-10','liumei@126.com'),
('000002','李志军','126789','广西南宁市','18902876760','1989-12-21','lizhijun@126.com'),
('000003','王宇宁','123567','浙江杭州市','13589017689','1985-10-11','wyning@126.com'),
('000004','吴敏杰','123456','广东珠海市','13607389021','1982-09-11','wuminjie@126.com'),
('000005','孙钰','123456','广东深圳市','13512357890','1986-06-11','sunyu@126.com'),
('000006','罗美玲','123456','广东深圳市','13875602468','1989-11-09','luomeiling@126.com'),
('000007','李昊','123456','广西南宁市','13607891032','1986-08-21','lihao@126.com'),
('000008','谭娟','123459','浙江杭州市','13374892775','1999-12-30','tanjuan@126.com'),
('000009','孙熙','123489','四川成都市','18879302345','1998-12-23','sunxi@126.com'),
('000010','张明敏','123456','湖南湘潭市','18978901245','2001-10-11','zhangminmin@126.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
