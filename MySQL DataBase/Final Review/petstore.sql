/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 10.1.37-MariaDB : Database - petstore
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`petstore` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `petstore`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `userid` char(6) NOT NULL,
  `fullname` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sex` char(2) NOT NULL,
  `address` varchar(40) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`userid`,`fullname`,`password`,`sex`,`address`,`email`,`phone`) values 
('u0001','刘晓和','123456','男','广东深圳市','liuxh@163.com','13512345678'),
('u0002','张嘉庆','123456','男','广东深圳市','zhangjq@163.com','13512345679'),
('u0003','罗红红','123456','女','广东深圳市','longhh@163.com','13512345689'),
('u0004','李昊华','123456','女','广东广州市','lihh@163.com','13812345679'),
('u0005','吴美霞','123456','女','广东珠海市','wumx@163.com','13512345879'),
('u0006','王天赐','123456','男','广东中山市','wangtc@163.com','13802345679');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `catid` char(10) NOT NULL,
  `catname` varchar(20) DEFAULT NULL,
  `cades` text,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`catid`,`catname`,`cades`) values 
('01','鸟类',''),
('02','猫',''),
('03','狗',''),
('04','鱼',''),
('05','爬行类','');

/*Table structure for table `lineitem` */

DROP TABLE IF EXISTS `lineitem`;

CREATE TABLE `lineitem` (
  `orderid` int(11) NOT NULL,
  `itemid` char(10) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`orderid`,`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lineitem` */

insert  into `lineitem`(`orderid`,`itemid`,`quantity`,`unitprice`) values 
(20130411,'FI-SW-01',10,18.50),
(20130411,'FI-SW-02',12,16.50),
(20130412,'K9-BD-01',2,120.00),
(20130412,'K9-PO-02',1,220.00),
(20130413,'K9-DL-01',1,130.00),
(20130414,'RP-SN-01',2,125.00),
(20130415,'AV-SB-02',2,50.00);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` char(6) NOT NULL,
  `orderdate` datetime NOT NULL,
  `totalprice` decimal(10,2) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=20130416 DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

insert  into `orders`(`orderid`,`userid`,`orderdate`,`totalprice`,`status`) values 
(20130411,'u0001','2013-04-11 15:07:34',500.00,0),
(20130412,'u0002','2013-04-09 15:08:11',305.60,0),
(20130413,'u0003','2013-04-15 15:09:00',212.40,0),
(20130414,'u0003','2013-04-16 15:09:30',120.45,1),
(20130415,'u0004','2013-04-02 15:10:05',120.30,0);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productid` char(10) NOT NULL,
  `catid` char(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `descn` text,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`productid`,`catid`,`name`,`descn`,`listprice`,`unitcost`,`qty`) values 
('AV-CB-01','05','亚马逊鹦鹉','75 岁以上高龄的好伙伴',50.00,60.00,100),
('AV-SB-02','05','燕雀','非常好的减压宠物',45.00,50.00,98),
('FI-FW-01','01','锦鲤','来自日本的淡水鱼',45.50,45.50,300),
('FI-FW-02','01','金鱼','来自中国的淡水鱼',6.80,6.80,100),
('FI-SW-01','01','天使鱼','来自澳大利亚的海水鱼',10.00,10.00,100),
('FI-SW-02','01','虎鲨','来自澳大利亚的海水鱼',18.50,20.00,200),
('FL-DLH-02','04','波斯猫','友好的家居猫, 像公主一样高贵',1000.00,1200.00,15),
('FL-DSH-01','04','马恩岛猫','灭鼠能手',80.00,100.00,40),
('K9-BD-01','02','牛头犬','来自英格兰的友好的狗',1350.00,1500.00,5),
('K9-CW-01','02','吉娃娃犬','很好的陪伴狗',180.00,200.00,120),
('K9-DL-01','02','斑点狗','来自消防队的大狗',3000.00,3000.00,1),
('K9-PO-02','02','狮子犬','来自法国的可爱的狗',2000.00,2000.00,3),
('K9-RT-01','02','金毛猎犬','大家庭的狗',300.00,300.00,200),
('K9-RT-02','02','拉布拉多猎犬','大猎狗',800.00,800.00,30),
('RP-LI-02','03','鬣蜥','友好的绿色朋友',60.00,78.00,40),
('RP-SN-01','03','响尾蛇','兼当看门狗',200.00,240.00,10);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
