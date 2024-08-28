/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.6.35-log : Database - companysales
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`companysales` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `companysales`;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `companyname` varchar(50) NOT NULL COMMENT '公司名称',
  `contactname` char(8) NOT NULL COMMENT '联系人姓名',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `email` varchar(50) DEFAULT NULL COMMENT 'email',
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;



insert  into `customer`(`CustomerID`,`CompanyName`,`ContactName`,`Phone`,`Address`,`Email`) values (1,'三川实业有限公司','刘明','030-88355547','上海市大崇明路 50 号','guy1@163.com'),(2,'远东科技有限公司','王丽丽','030-88355547','大连市沙河区承德西路 80 号','kevin0@163.com'),(3,'坦森行贸易有限公司','王炫皓','0321-88755539','上海市黄台北路 780 号','roberto0@163.com'),(4,'国顶有限公司','方小峰','0571-87465557','杭州市海淀区天府东街 30 号','rob0@163.com'),(5,'通恒机械有限公司','黄国栋','0921-85791234','天津市南开区东园西甲 30 号','robme@163.com'),(6,'森通科技有限公司','张孔苗','030-88300584','大连市沙河区常保阁东 80 号','yund@163.com'),(7,'国皓科技有限公司','黄雅玲','0671-68788601','杭州市海淀区广发北路 10 号','yalin@163.com'),(8,'迈多贸易科技有限公司','李丽珊','0533-87855522','天津市南开区临翠大街 80 号','lishan@163.com'),(9,'祥通科技有限公司','姚苗波','0678-85912445','大连市沙河区花园东街 90 号','miaopo@163.com'),(10,'广通网络信息有限公司','谢久久','0478-85955547','大连市沙河区平谷嘉石大街 38 号','jiujiu@163.com'),(11,'光明杂志社','谢丽秋','0571-87545551','上海市黄石路 50 号','liqiu@163.com'),(12,'威航货运有限公司','黄小欧','0610-80113555','天津市经七纬二路 13 号','xiaoou@mail.zjitc.com'),(13,'三捷实业有限公司','徐慧','0616-86155533','重庆市英雄山路 84 号','xuhui@mail.zjitc.com'),(14,'浩天旅行社','洪瑞强','0306-67300765','杭州市海淀区白广路 314 号','huidf@mail.zjitc.com'),(15,'同恒软件有限公司','陈云海','0306-78355576','天津市七一路 37 号','yunhai@mail.zjitc.com'),(16,'万海房产有限公司','台融岛','0717- 87455522','天津市劳动路 23 号','rongdo@mail.zjitc.com'),(17,'世邦房产有限公司','高强','0241- 83410391','天津市南开区光明东路 395 号','gaoq@mail.zjitc.com'),(18,'迈策船舶有限公司','郑莉晓','0567-56306788','天津市南开区沉香街 329 号','lixiao@mail.zjitc.com'),(19,'中通软件有限公司','张小平','0307- 45555502','厦门市光复北路 895 号','xiaopin@mail.zjitc.com'),(20,'正人资源有限公司','张耀','0571-45576753','杭州市临江东街 62 号','zhanoq@mail.zjitc.com'),(21,'红阳事业有限公司','杨晓鹏','0571-45275559','杭州市海淀区外滩西路 238 号','zgab1@mail.zjitc.com'),(22,'嘉元实业有限公司','李霞','0919-87255594','武汉市东湖大街 28 号','xiao34@mail.zjitc.com'),(23,'嘉业房产有限公司','黄丹和','0321-78820161','瑞安市经三纬二路 8 号','danhe@mail.zjitc.com'),(24,'五洲信托投资有限公司','张玉','0876-67695346','天津市沿江北路 942 号','zhany34@mail.zjitc.com'),(25,'友恒信托投资有限公司','戴瑶','0896-67387731','天津市经二路 9 号','dail4@mail.zjitc.com'),(26,'国银贸易有限公司','吴晓贵','0876-76703221','福州市嘉禾区辅城街 42 号','xiaogui@mail.zjitc.com'),(27,'文成软件有限公司','汤蓬蓬','0569-67349882','福州市嘉禾区临江街 32 号','penpen@mail.zjitc.com'),(28,'康浦房产有限公司','黄振','0687- 67435425','厦门市授业路 361 号','huangzheng@mail.zjitc.com'),(29,'东旗有限公司','莫笑笑','0571-26760334','温州市尊石路 238 号','xiao3@mail.zjitc.com'),(30,'建资房产有限公司','赵凯','0922-67755582','广州市广惠东路 38 号','zhaokai@mail.zjitc.com'),(31,'温州中学','李德奇','0577-68235423','温州市市府路23号','deqi4@mail.zjitc.com'),(32,'均瑶航空公司','何燕','0577-82635423','温州市学院路24号','heyan3@mail.zjitc.com'),(33,'清华大学出版社','李明明','010-92929332','北京市朝阳路23号','mingmin3@mail.zjitc.com'),(35,'北京秦峰昕鑫商贸有限公司','李俊峰','0135-53583789','北京市 北京复兴路83号东九楼504大厦１8c','rr45@mail.zjitc.com'),(36,'深圳市金丰达科技有限公司','董小姐','0755-83789290','中国 广东 深圳市 福田区福华路２９号京海大厦１８Ｃ','hjyu7@mail.zjitc.com'),(37,'上海友谊卷笔刀有限公司','马颖达','021-58033688','上海市南汇区南六公路1125弄三灶工业园区发展西路11号','5er6@mail.zjitc.com'),(38,'林川中学','毛梅捷','13858235423','新居市学院路24号','lincun@lczxmail.com.cn');

/*Table structure for table `department` */




DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `departmentid` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `departmentname` varchar(30) NOT NULL COMMENT '部门名称',
  `manager` char(8) DEFAULT NULL COMMENT '部门主管',
  `depart_description` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;



insert  into `department`(`DepartmentID`,`DepartmentName`,`Manager`,`Depart_Description`) values (1,'销售部','王丽丽','主管销售'),(2,'采购部','李嘉明','主管公司的产品采购'),(3,'人事部','蒋柯南','主管公司的人事关系'),(4,'后勤部','张绵荷','主管公司的后勤工作'),(5,'安保部','金杰','主管公司的安保工作'),(6,'会务部','李尚彪','主管公司的会务和接待');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `employeeid` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `employeename` varchar(50) NOT NULL COMMENT '姓名',
  `sex` enum('男','女') NOT NULL DEFAULT '男' COMMENT '性别',
  `birthdate` date DEFAULT NULL COMMENT '出生日期',
  `hiredate` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '聘任日期',
  `salary` decimal(12,4) unsigned DEFAULT NULL COMMENT '工资',
  `departmentid` int(11) NOT NULL COMMENT '部门编号',
  PRIMARY KEY (`employeeid`),
  KEY `fr_deparment_departmentID` (`departmentid`),
  CONSTRAINT `fr_deparment_departmentID` FOREIGN KEY (`departmentid`) REFERENCES `department` (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;




insert  into `employee`(`EmployeeID`,`EmployeeName`,`Sex`,`BirthDate`,`HireDate`,`Salary`,`DepartmentID`) values (1,'章宏','男','1969-10-28','1993-10-28 00:00:00','3100.0000',1),(2,'李立三  ','女','1970-05-13','1998-02-01 00:00:00','3460.2000',1),(3,'王孔若  ','女','1974-12-17','2000-03-20 00:00:00','3800.8000',1),(4,'余杰    ','男','1973-07-11','2000-03-21 00:00:00','3315.0000',1),(5,'蔡慧敏  ','男','1957-08-12','1996-08-12 00:00:00','3453.7000',1),(6,'孔高铁  ','男','1974-11-17','1998-12-27 00:00:00','3600.5000',1),(7,'姚晓力  ','女','1969-08-14','1997-08-14 00:00:00','3313.8000',1),(8,'宋振辉  ','男','1975-05-16','1996-06-08 00:00:00','3376.6000',2),(9,'刘丽    ','男','1960-08-21','1994-08-21 00:00:00','3421.9000',2),(10,'姜玲娜  ','女','1980-08-02','2008-08-02 00:00:00','3200.0000',2),(11,'崔军利  ','男','1966-07-23','1998-07-23 00:00:00','3392.0000',1),(12,'金林皎  ','男','1968-08-22','2000-04-02 00:00:00','3366.0000',1),(13,'唐军芳  ','男','1978-06-15','2006-12-26 00:00:00','3304.1000',2),(14,'郑阿齐  ','女','1960-08-04','1999-08-04 00:00:00','3409.8000',1),(15,'刘启芬  ','男','1970-11-19','1994-11-19 00:00:00','3432.5000',1),(16,'吴昊    ','男','1963-09-13','1999-04-27 00:00:00','3361.3000',1),(17,'何文华  ','女','1965-01-13','1999-08-03 00:00:00','3306.2000',1),(18,'李萍    ','女','1974-04-28','1999-04-28 00:00:00','3295.7000',2),(19,'宋广科  ','男','1965-06-29','1991-06-29 00:00:00','3384.5000',1),(20,'罗耀祖  ','女','1975-03-23','1998-02-02 00:00:00','3286.0000',1),(21,'吴晓松  ','男','1969-12-28','1998-12-28 00:00:00','3282.5000',1),(22,'钱其娜  ','女','1964-12-15','1987-12-15 00:00:00','3378.3000',1),(23,'章明铁  ','女','1958-02-24','1996-02-24 00:00:00','3400.0000',1),(24,'张晓明  ','男','1960-01-18','1984-01-18 00:00:00','3376.0000',2),(25,'李丽丽  ','男','1962-09-20','1995-09-20 00:00:00','3408.8000',1),(26,'欧阳天民','女','1964-03-17','1998-03-17 00:00:00','3359.9000',2),(27,'陈晓东  ','女','1972-02-15','1996-06-09 00:00:00','3374.2000',1),(28,'金恰亦  ','女','1961-09-12','1984-09-12 00:00:00','3318.5000',1),(29,'王辉    ','男','1980-09-08','2008-07-22 00:00:00','3450.0000',3),(30,'柯小於','男','1964-12-29','2008-02-03 00:00:00','3566.0000',3),(31,'吴玲    ','女','1979-03-04','2000-08-01 00:00:00','3410.0000',3),(32,'任洁    ','女','1972-04-02','1998-02-01 00:00:00','3340.0000',2),(33,'洪皓    ','男','1967-04-03','2000-04-03 00:00:00','3410.0000',2),(34,'金圆圆  ','女','1960-03-02','1988-02-01 00:00:00','3410.0000',2),(35,'柯敏    ','女','1972-10-01','1999-08-02 00:00:00','3410.0000',1),(36,'姚安娜','女','1953-04-26','1994-11-19 00:00:00','3456.0000',3),(37,'张希希','男','1968-03-02','1994-08-21 00:00:00','3400.0000',2),(38,'张琪琪','女','1958-04-26','1985-04-26 00:00:00','4000.0000',2),(39,'李亮    ','男','1968-03-02','1998-03-02 00:00:00','3400.0000',5),(40,'高思修','女','1980-06-07','2006-06-07 00:00:00','3400.0000',3),(41,'凃米明','女','1989-09-02','2013-10-28 00:00:00','3200.0000',2),(42,'金一名','男','1970-03-22','2000-03-22 00:00:00','3200.0000',2),(43,'童金星','男','1958-02-02','1993-02-02 00:00:00','3300.2000',1),(44,'李利明','男','1964-03-03','1988-03-03 00:00:00','5300.0000',1),(45,'贾振旺','女','1975-04-05','1998-07-21 00:00:00','5000.0000',2),(46,'王百静','男','1988-04-26','2018-02-01 00:00:00','5000.0000',1),(47,'吴剑波','男','1965-04-30','2008-02-02 00:00:00','6443.0000',1),(48,'田大海','男','1988-04-26','2017-02-03 00:00:00','4800.0000',1),(49,'李央','女','1958-05-02','1997-02-04 00:00:00','3000.0000',1),(50,'林圆','女','1960-11-27','1997-02-05 00:00:00','1500.0000',1),(51,'胡健军','男','1967-02-28','1997-02-06 00:00:00','1500.0000',5),(52,'何思婧','女','1960-10-20','1997-02-07 00:00:00','1500.0000',1),(53,'任开义','男','1970-04-11','1997-02-08 00:00:00','1500.0000',1),(54,'李郁剑','男','1968-07-20','1997-02-09 00:00:00','1500.0000',1),(55,'芮红燕','女','1970-11-24','1997-02-10 00:00:00','1500.0000',1),(56,'贾倩倩','女','1968-09-23','1997-02-11 00:00:00','1500.0000',5),(57,'李鑫','男','1970-12-18','1997-02-12 00:00:00','1500.0000',1),(58,'马晶晶','女','1968-08-13','1997-02-13 00:00:00','1500.0000',1),(59,'王智','男','1968-08-16','1997-02-14 00:00:00','1500.0000',1),(60,'方卉','女','1970-03-01','1997-02-15 00:00:00','1500.0000',5),(61,'孙文超','男','1976-12-18','1998-02-16 00:00:00','1500.0000',1),(62,'曾琳琳','女','1967-08-16','1998-02-17 00:00:00','1500.0000',1),(63,'房妤','女','1960-04-22','1998-02-18 00:00:00','1500.0000',1),(64,'赵腾','男','1978-02-12','1998-02-19 00:00:00','1500.0000',1),(65,'施超','男','1968-09-23','1998-02-20 00:00:00','1500.0000',5),(66,'方倩','女','1969-11-05','1998-02-21 00:00:00','1500.0000',1),(67,'赵娜','女','1959-01-27','1998-02-22 00:00:00','1500.0000',1),(68,'苏林','男','1969-11-01','1998-02-23 00:00:00','1500.0000',4),(69,'黄文文','女','1977-10-13','1998-02-24 00:00:00','1500.0000',1),(71,'吴康','男','1950-01-07','1998-02-25 00:00:00','1500.0000',4),(72,'杨雪','女','1968-11-14','1998-02-26 00:00:00','1500.0000',1),(73,'张志远','男','1969-08-03','1998-02-27 00:00:00','1500.0000',4),(74,'邓小抗','男','1969-12-15','1998-02-28 00:00:00','1500.0000',1),(75,'曹亮','男','1960-12-06','1989-02-02 00:00:00','1500.0000',2),(76,'王晓萍','女','1968-12-03','1994-11-19 00:00:00','1500.0000',2),(77,'张蔓蔓','女','1968-05-16','1994-08-21 00:00:00','1500.0000',2),(78,'张璐','女','1957-01-24','1991-01-24 00:00:00','1500.0000',2),(79,'黄兵','男','1967-01-28','1993-10-28 00:00:00','1500.0000',6),(80,'余若兰','女','1958-01-29','1992-01-29 00:00:00','1500.0000',2),(81,'张霆','男','1969-11-11','1993-02-02 00:00:00','1500.0000',2),(82,'夏文强','男','1969-03-04','1992-01-29 00:00:00','1500.0000',6),(83,'胡娟','女','1969-01-08','1991-06-29 00:00:00','1500.0000',2),(85,'黄赛楠','女','1968-11-24','1994-08-21 00:00:00','1500.0000',4),(86,'徐宗华','男','1969-05-14','1993-10-28 00:00:00','1500.0000',2),(87,'邢兵','男','1968-10-14','1993-02-02 00:00:00','1500.0000',2),(88,'刘洋','女','1969-08-22','1992-01-29 00:00:00','1500.0000',2),(89,'谷珂珂','男','1950-06-28','1991-06-29 00:00:00','1500.0000',4),(90,'方鼎琴','女','1957-03-01','1981-03-01 00:00:00','1500.0000',2),(91,'黄莹','女','1960-03-31','1994-11-19 00:00:00','1500.0000',2),(92,'杨秀云','女','1968-12-16','1994-08-21 00:00:00','1500.0000',6),(93,'胡陈瑞','男','1969-12-13','1993-10-28 00:00:00','1500.0000',2),(94,'林栋财','男','1964-05-01','1993-02-02 00:00:00','1500.0000',2),(95,'郭玮玥','女','1960-02-18','1992-01-29 00:00:00','1500.0000',2),(96,'郭利利','女','1968-12-20','1991-06-29 00:00:00','1500.0000',4),(97,'柳芬','女','1979-02-02','2010-02-01 00:00:00','1500.0000',2),(99,'孔珺','女','1970-08-07','1994-11-19 00:00:00','1500.0000',2),(100,'蒙曼如','女','1969-10-15','1994-08-21 00:00:00','1500.0000',2),(101,'陈枝','女','1966-12-18','1999-04-26 00:00:00','1500.0000',6),(102,'高敏','女','1967-10-31','1993-10-28 00:00:00','1500.0000',2),(103,'张萍萍','女','1960-04-05','1993-02-02 00:00:00','1500.0000',4),(104,'蔡文靖','女','1960-10-07','1994-11-19 00:00:00','1500.0000',2),(105,'宋辉','男','1968-10-17','1994-08-21 00:00:00','1500.0000',2),(106,'张涛','男','1959-01-09','1993-10-28 00:00:00','1500.0000',4),(107,'张红星','男','1957-12-01','1993-02-02 00:00:00','1500.0000',2),(108,'王慧珍','女','1969-02-07','1992-01-29 00:00:00','1500.0000',2),(109,'叶蕃','男','1959-08-14','1991-06-29 00:00:00','1500.0000',2),(110,'刘红先','男','1966-11-22','2000-04-01 00:00:00','1500.0000',2);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT COMMENT '产品编号',
  `productname` varchar(50) DEFAULT NULL COMMENT '产品名称',
  `price` decimal(18,2) NOT NULL COMMENT '价格',
  `productstocknumber` int(11) DEFAULT '0' COMMENT '库存量',
  `productsellnumber` int(11) DEFAULT '0' COMMENT '已销售量',
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;



insert  into `product`(`ProductID`,`ProductName`,`Price`,`ProductStockNumber`,`ProductSellNumber`) values (1,'路由器','450.00',100,40),(2,'果冻','1.00',2000,1000),(3,'打印纸','20.00',100,1000),(4,'墨盒','200.00',3400,3000),(5,'鼠标','40.00',4566,4500),(6,'键盘','80.00',500,500),(7,'U盘64G','40.00',9000,7000),(8,'牙刷','6.05',9000,8900),(9,'电吹风','50.00',870,80),(10,'圆珠笔','6.00',8000,450),(11,'水笔','13.00',5400,4000),(12,'水彩笔','16.50',100,10),(13,'蜡笔','70.00',20,10),(14,'橡皮','20.00',30,10),(15,'苹果汁','42.00',70,30),(16,'橘子汁','45.00',100,20),(17,'无线鼠标','80.00',100,10),(18,'订书机','50.00',600,30),(19,'铅笔','20.00',500,500),(20,'DELL显示器','700.00',20,1120),(21,'HP显示器','800.00',600,300),(22,'直尺','8.00',900,0),(23,'实木笔筒','50.00',800,30),(24,'得力钢笔','40.00',760,300),(25,'毛巾','10.00',3400,2000),(26,'实践报告本','5.00',10000,2000),(27,'桌面吸尘器','39.00',900,300),(28,'键盘保护膜','5.00',700,700),(29,'白板','100.00',560,300),(30,'鼠标垫','34.00',870,300),(31,'手账本','3.00',900,100),(32,'牛奶','5.00',800,110),(33,'玻璃茶杯','5.00',300,50),(34,'移动硬盘1T','580.00',200,10),(35,'高清投影机','4480.00',100,30),(36,'游戏耳麦','580.00',200,50);


/*Table structure for table `provider` */

DROP TABLE IF EXISTS `provider`;

CREATE TABLE `provider` (
  `providerid` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商编号',
  `providername` varchar(50) NOT NULL COMMENT '供应商名称',
  `contactname` char(8) NOT NULL COMMENT '联系人的姓名',
  `providerphone` varchar(20) DEFAULT NULL COMMENT '供应商联系电话',
  `provideraddress` varchar(100) DEFAULT NULL COMMENT '供应商的地址',
  `provideremail` varchar(50) DEFAULT NULL COMMENT '供应商的email',
  PRIMARY KEY (`providerid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


insert  into `provider`(`ProviderID`,`ProviderName`,`ContactName`,`ProviderPhone`,`ProviderAddress`,`ProviderEmail`) values (1,'上海友谊卷笔刀有限公司','陈云海','0577-88335572','上海市南汇区南六公路1125弄三灶工业园区发展西路11号','5er6@mail.zjitc.com'),(2,'深圳市金丰达科技有限公司','张小平','0577-88335573','中国 广东 深圳市 福田区福华路２９号京海大厦１８Ｃ','hjyu7@mail.zjitc.com'),(3,'文成软件有限公司','汤蓬蓬','0569-67349882','福州市嘉禾区临江街 32 号','liqiu@163.com'),(4,'温州神话软件有限公司','吴慧','0577-89574833','温州东游大夏1203','shenghua@163.com');


/*Table structure for table `purchase_order` */

DROP TABLE IF EXISTS `purchase_order`;

CREATE TABLE `purchase_order` (
  `purchaseorderid` int(11) NOT NULL AUTO_INCREMENT COMMENT '采购订单号',
  `productid` int(11) NOT NULL COMMENT '商品编号',
  `employeeid` int(11) NOT NULL COMMENT '员工编号',
  `providerid` int(11) NOT NULL COMMENT '供应商号',
  `purchaseordernumber` int(11) DEFAULT NULL COMMENT '采购数量',
  `purchaseorderdate` date DEFAULT NULL COMMENT '订单签订的日期',
  PRIMARY KEY (`purchaseorderid`),
  KEY `fr_employee_employeeID` (`employeeid`),
  KEY `fr_product_productID` (`productid`),
  KEY `fr_provider_providerID` (`providerid`),
  CONSTRAINT `fr_product_productID` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `fr_provider_providerID` FOREIGN KEY (`providerid`) REFERENCES `provider` (`providerid`),
  CONSTRAINT `pfr_employee_employeeID` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;


insert  into `purchase_order`(`PurchaseOrderID`,`ProductID`,`EmployeeID`,`ProviderID`,`PurchaseOrderNumber`,`PurchaseOrderDate`) values (1,9,18,1,210,'2012-03-16'),(2,8,26,2,210,'2012-07-16'),(3,9,32,2,110,'2012-08-16'),(4,2,7,2,210,'2013-09-15'),(5,3,26,2,110,'2014-09-11'),(6,4,18,2,610,'2014-11-15'),(7,5,32,1,210,'2014-08-22'),(8,2,7,1,210,'2014-05-16'),(9,4,18,1,110,'2014-08-22'),(10,5,34,2,30,'2014-12-03'),(11,6,46,3,60,'2014-12-04'),(12,6,8,3,60,'2014-12-04'),(13,8,46,2,22,'2014-12-03'),(14,5,18,1,21,'2014-12-03'),(15,10,9,1,21,'2014-12-04'),(16,7,26,1,66,'2014-02-15'),(17,6,32,1,77,'2014-05-17'),(18,7,7,3,99,'2014-08-18'),(19,5,34,3,410,'2014-09-14'),(20,6,34,2,344,'2014-03-14'),(21,6,7,2,40,'2014-03-14'),(22,9,47,3,50,'2014-04-15'),(23,7,32,2,60,'2014-04-15'),(24,8,7,1,50,'2014-03-15'),(25,10,47,1,79,'2014-07-18'),(26,10,24,2,79,'2014-02-12'),(27,10,8,3,70,'2014-02-13'),(28,13,47,1,40,'2015-12-16'),(29,11,34,3,70,'2014-07-18'),(30,11,9,3,50,'2014-11-13'),(31,11,8,2,100,'2014-11-15'),(32,7,32,2,50,'2014-01-11'),(33,5,18,2,510,'2014-12-12'),(34,9,32,1,60,'2015-12-16'),(35,2,24,1,110,'2016-05-10'),(36,6,18,1,600,'2016-05-02'),(37,8,7,2,900,'2016-05-10'),(38,5,8,3,98,'2016-05-10'),(39,4,24,3,108,'2016-05-10'),(40,19,24,3,33,'2016-05-02');

/*Table structure for table `sell_order` */

DROP TABLE IF EXISTS `sell_order`;

CREATE TABLE `sell_order` (
  `sellorderid` int(11) NOT NULL AUTO_INCREMENT COMMENT '销售订单号',
  `productid` int(11) NOT NULL COMMENT '商品编号',
  `employeeid` int(11) NOT NULL COMMENT '员工号',
  `customerid` int(11) NOT NULL COMMENT '客户号',
  `sellordernumber` int(11) DEFAULT NULL COMMENT '订货数量',
  `sellorderdate` date DEFAULT NULL COMMENT '订单签订的日期',
  PRIMARY KEY (`sellorderid`),
  KEY `fr_product_productID` (`productid`),
  KEY `fr_employee_employeeID` (`employeeid`),
  KEY `fr_customer_customerID` (`customerid`),
  CONSTRAINT `fr_customer_customerID` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`),
  CONSTRAINT `fr_employee_employeeID` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`employeeid`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;



insert  into `sell_order`(`SellOrderID`,`ProductID`,`EmployeeID`,`CustomerID`,`SellOrderNumber`,`SellOrderDate`) values (1,8,3,1,200,'2017-02-06'),(2,7,3,2,200,'2016-06-06'),(3,8,3,2,100,'2016-07-06'),(4,1,5,5,200,'2016-08-05'),(5,2,15,8,100,'2015-08-01'),(6,3,14,20,600,'2015-10-05'),(7,4,20,4,200,'2015-07-12'),(8,1,23,4,200,'2015-04-06'),(9,3,21,4,100,'2015-07-12'),(10,4,12,5,20,'2013-10-23'),(11,5,25,6,50,'2013-10-24'),(12,5,25,6,50,'2013-10-24'),(13,7,27,13,12,'2013-10-23'),(14,4,28,16,11,'2013-10-23'),(15,9,3,20,11,'2013-10-24'),(16,6,4,1,56,'2013-01-05'),(17,5,1,1,67,'2013-04-07'),(18,6,2,3,89,'2013-07-08'),(19,4,6,7,400,'2013-08-04'),(20,5,7,3,334,'2013-02-04'),(21,5,2,12,30,'2013-02-04'),(22,8,5,13,40,'2013-03-05'),(23,6,6,24,50,'2013-03-05'),(24,7,17,15,40,'2013-02-05'),(25,9,19,17,69,'2013-06-08'),(26,9,20,20,69,'2013-01-02'),(27,9,20,21,60,'2013-01-03'),(28,12,5,4,30,'2014-11-06'),(29,10,21,24,60,'2013-06-08'),(30,10,22,26,40,'2013-10-03'),(31,10,2,20,90,'2013-10-05'),(32,6,5,21,40,'2012-12-01'),(33,4,6,7,500,'2013-11-02'),(34,8,3,31,50,'2014-11-06'),(35,1,1,1,100,'2015-03-30'),(36,5,6,5,590,'2015-03-22'),(37,7,7,4,890,'2015-03-30'),(38,4,7,5,88,'2015-03-30'),(39,3,3,2,98,'2015-03-30'),(40,18,43,29,23,'2015-03-22'),(41,6,48,3,90,'2015-03-30'),(42,4,3,3,87,'2015-03-30'),(43,5,7,15,90,'2015-03-28'),(44,15,16,5,8000,'2015-03-30'),(45,3,11,24,300,'2015-04-01'),(46,10,5,1,3000,'2015-04-01'),(47,4,7,6,300,'2015-04-02'),(48,32,6,11,100,'2015-04-13'),(49,6,6,24,233,'2015-03-03'),(50,29,6,7,2000,'2015-04-03'),(51,3,6,7,344,'2015-04-08'),(52,32,35,33,560,'2015-04-08'),(53,20,10,38,600,'2016-08-05'),(54,3,4,5,200,'2016-08-10'),(55,3,4,5,200,'2016-08-10'),(56,3,4,5,200,'2016-08-10'),(57,32,3,1,100,'2016-02-01');
/* Procedure structure for procedure `curdemo` */

/*!50003 DROP PROCEDURE IF EXISTS  `curdemo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `curdemo`()
begin
declare var_id varchar(32);
declare var_number varchar(32);
DECLARE var_model VARCHAR(32);
declare rs cursor for select  `CustomerID`, `CompanyName` from  `customer`;
end */$$
DELIMITER ;

/* Procedure structure for procedure `customer_order` */

/*!50003 DROP PROCEDURE IF EXISTS  `customer_order` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `customer_order`(in   customername  varchar(50))
begin
SELECT customer.companyname,  `ContactName`, productname, 
 product.price, sell_order.sellordernumber, sell_order.`SellOrderDate`
FROM  customer  JOIN     `sell_order`
ON customer.customerID = sell_order.customerID
  JOIN   product
 ON sell_order.productID = product. productID
 --  where  customer.companyname ='通恒机械有限公司'
where customer.companyname = customername;
end */$$
DELIMITER ;

/* Procedure structure for procedure `cu_tonghen_order` */

/*!50003 DROP PROCEDURE IF EXISTS  `cu_tonghen_order` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `cu_tonghen_order`()
    COMMENT '查询通恒机械有限公司'
begin 
SELECT customer.companyname, `customer`.`ContactName`,`ProductName` ,`product`.`Price`,`sell_order`.`SellOrderNumber`
FROM  customer  JOIN     sell_order
ON customer.customerID = sell_order.customerID
  JOIN   product
 ON sell_order.productID = product.productID
where  customer.companyname ='通恒机械有限公司';
end */$$
DELIMITER ;

/* Procedure structure for procedure `em_order_sum` */

/*!50003 DROP PROCEDURE IF EXISTS  `em_order_sum` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `em_order_sum`( in   emn varchar(50), out  sum_pro  int(11))
begin
if  exists(select * from sell_order
           where   `EmployeeID`=
                    (select   `EmployeeID`    from `employee`
                        where   `EmployeeName`= emn)
)  then 
    SELECT sum(sell_order.sellordernumber*product.price)  into  sum_pro  
     FROM   sell_order  JOIN   `product`
            ON sell_order.productID =product.productID
            join `employee`
            on `employee`.`EmployeeID`=`sell_order`.`EmployeeID`
       where   `employee`.`EmployeeName`=emn ;
 
else
     set  sum_pro=0;
end if;
end */$$
DELIMITER ;

/* Procedure structure for procedure `em_sex_gj` */

/*!50003 DROP PROCEDURE IF EXISTS  `em_sex_gj` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `em_sex_gj`( in ename varchar(50),out tishi varchar(50))
begin 
 if exists(select * from `employee`  where `EmployeeName`=ename)
 then
    select  concat(`EmployeeName`,if(sex='女','过节','不过节') )  into  tishi from  `employee`
    where  `EmployeeName`=ename;
 else
     select concat(ename,'没有此人') as tishi ; 
  end if;
end */$$
DELIMITER ;

/* Procedure structure for procedure `listem` */

/*!50003 DROP PROCEDURE IF EXISTS  `listem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listem`(in  ssex char(2),in ssal decimal(12,4))
begin
select  * from `employee` 
where (`Sex`=ssex ) and ( `Salary`>ssal);
end */$$
DELIMITER ;

/* Procedure structure for procedure `orde` */

/*!50003 DROP PROCEDURE IF EXISTS  `orde` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `orde`( in aa int(11))
begin
select * from `employee`  where `EmployeeID`=aa;
end */$$
DELIMITER ;

/* Procedure structure for procedure `proc_select_em` */

/*!50003 DROP PROCEDURE IF EXISTS  `proc_select_em` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_select_em`()
    COMMENT '查询员工'
BEGIn
    select * from employee;
END */$$
DELIMITER ;

/* Procedure structure for procedure `product_order_sum` */

/*!50003 DROP PROCEDURE IF EXISTS  `product_order_sum` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `product_order_sum`( in   pn varchar(11), out  sum_pro  int(11))
begin
if  exists(select * from sell_order
           where  productid=
                    (select  productid    from  product 
                        where productname =pn)
)  then 
    SELECT sum(sell_order.sellordernumber*product.price)  into  sum_pro  
     FROM   sell_order  JOIN   product
            ON sell_order.productID =product.productID
       where  product. productname =pn   ;
 
else
     set  sum_pro=0;
end if;
end */$$
DELIMITER ;

/*Table structure for table `depart_sal_avg` */

DROP TABLE IF EXISTS `depart_sal_avg`;

/*!50001 DROP VIEW IF EXISTS `depart_sal_avg` */;
/*!50001 DROP TABLE IF EXISTS `depart_sal_avg` */;

/*!50001 CREATE TABLE  `depart_sal_avg`(
 `departmentname` varchar(30) ,
 `avg_salary` decimal(16,8) 
)*/;

/*Table structure for table `view_employee` */

DROP TABLE IF EXISTS `view_employee`;

/*!50001 DROP VIEW IF EXISTS `view_employee` */;
/*!50001 DROP TABLE IF EXISTS `view_employee` */;

/*!50001 CREATE TABLE  `view_employee`(
 `employeeid` int(11) ,
 `employeename` varchar(50) ,
 `sex` enum('男','女') ,
 `bbirthdate` date ,
 `hiredate` timestamp ,
 `salary` decimal(12,4) unsigned ,
 `departmentid` int(11) ,
 `departmentname` varchar(30) 
)*/;

/*Table structure for table `view_sal_em` */

DROP TABLE IF EXISTS `view_sal_em`;

/*!50001 DROP VIEW IF EXISTS `view_sal_em` */;
/*!50001 DROP TABLE IF EXISTS `view_sal_em` */;

/*!50001 CREATE TABLE  `view_sal_em`(
 `姓名` varchar(50) ,
 `奖金` decimal(14,5) ,
 `所得税` decimal(16,6) ,
 `实发工资` decimal(17,6) 
)*/;

/*View structure for view depart_sal_avg */

/*!50001 DROP TABLE IF EXISTS `depart_sal_avg` */;
/*!50001 DROP VIEW IF EXISTS `depart_sal_avg` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `depart_sal_avg` AS select `view_employee`.`departmentname` AS `departmentname`,avg(`view_employee`.`salary`) AS `avg_salary` from `view_employee` group by `view_employee`.`departmentname` */;

/*View structure for view view_employee */

/*!50001 DROP TABLE IF EXISTS `view_employee` */;
/*!50001 DROP VIEW IF EXISTS `view_employee` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_employee` AS select `employee`.`employeeid` AS `employeeid`,`employee`.`employeename` AS `employeename`,`employee`.`sex` AS `sex`,`employee`.`birthdate` AS `bbirthdate`,`employee`.`hiredate` AS `hiredate`,`employee`.`salary` AS `salary`,`employee`.`departmentid` AS `departmentid`,`department`.`departmentname` AS `departmentname` from (`employee` join `department` on((`employee`.`departmentid` = `department`.`departmentid`))) */;

/*View structure for view view_sal_em */

/*!50001 DROP TABLE IF EXISTS `view_sal_em` */;
/*!50001 DROP VIEW IF EXISTS `view_sal_em` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_sal_em` AS select `employee`.`employeename` AS `姓名`,(`employee`.`salary` * 0.1) AS `奖金`,((`employee`.`salary` - 800) * 0.15) AS `所得税`,((`employee`.`salary` + (`employee`.`salary` * 0.1)) - ((`employee`.`salary` - 800) * 0.15)) AS `实发工资` from `employee` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
