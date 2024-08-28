/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.20 : Database - student
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`studentinfo` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `studentinfo`;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `cno` char(4) NOT NULL COMMENT '课程号',
  `cname` varchar(20) NOT NULL COMMENT '课程名',
  `ccredit` int DEFAULT NULL COMMENT '课程学分',
  `chours` int DEFAULT NULL COMMENT '课程学时',
  PRIMARY KEY (`cno`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `course` */

insert  into `course`(`cno`,`cname`,`ccredit`,`chours`) values 
('1','MYSQL',3,64),
('10','大学英语',6,128),
('11','会计电算化',3,64),
('2','计算机文化基础',2,64),
('3','操作系统',3,72),
('4','数据结构',3,54),
('5','PHOTOSHOP',2,48),
('6','思想政治',2,60),
('7','IT产品营销',2,48),
('8','公文写作',2,45),
('9','网页设计',1,32);

/*Table structure for table `sc` */

DROP TABLE IF EXISTS `sc`;

CREATE TABLE `sc` (
  `sno` char(9) NOT NULL COMMENT '学号',
  `cno` char(4) NOT NULL COMMENT '课程编号',
  `grade` float DEFAULT NULL COMMENT '成绩',
  KEY `S_FK` (`sno`),
  KEY `cno_fk` (`cno`),
  CONSTRAINT `cno_fk` FOREIGN KEY (`cno`) REFERENCES `course` (`cno`),
  CONSTRAINT `S_FK` FOREIGN KEY (`sno`) REFERENCES `student` (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `sc` */

insert  into `sc`(`sno`,`cno`,`grade`) values 
('202008001','1',75),
('0001','1',100),
('202008001','2',NULL),
('202008001','4',62),
('202008001','5',58),
('202008001','7',70),
('202008002','1',85),
('202008002','3',53),
('202008002','4',85),
('202008003','1',86),
('202008004','1',74),
('202008004','2',46),
('202008005','1',58),
('202008005','10',65),
('202008005','2',89),
('202008006','1',84),
('202008006','2',65),
('202008008','2',72),
('202008009','2',76),
('202008010','2',96),
('202008010','8',96),
('202008011','8',72),
('202008015','8',10),
('202008016','8',0),
('202008017','8',0),
('202008018','8',68),
('202008021','6',58),
('202008021','9',54);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `sno` char(9) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '' COMMENT '学号',
  `sname` varchar(10) NOT NULL COMMENT '姓名',
  `ssex` char(2) DEFAULT NULL COMMENT '性别',
  `sbirthday` date DEFAULT NULL COMMENT '年龄',
  `sdept` varchar(8) NOT NULL COMMENT '系别',
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `student` */

insert  into `student`(`sno`,`sname`,`ssex`,`sbirthday`,`sdept`) values 
('','李驯','男',NULL,'软件系'),
('0001','阿三','男','2001-01-01','通信系'),
('202008001','赵菁菁','女','2000-08-16','网络系'),
('202008002','李勇','男','2001-02-23','软件系'),
('202008003','张力','男','1999-08-15','网络系'),
('202008004','张衡','男','2001-02-23','软件系'),
('202008005','张向东','男','2002-01-15','软件系'),
('202008006','张向丽','女','2001-02-23','软件系'),
('202008007','王芳','女','1998-12-22','网络系'),
('202008008','王明生','男','2001-02-23','通信系'),
('202008009','王小丽','女','1999-04-19','通信系'),
('202008010','李晨','女','2001-02-23','通信系'),
('202008011','张毅','男','1999-01-15','英语系'),
('202008012','杨丽华','女','2001-02-23','英语系'),
('202008013','李芳','女','1999-11-15','通信系'),
('202008014','张丰毅','男','2001-02-23','网络系'),
('202008015','李蕾','女','1999-08-15','英语系'),
('202008016','刘杜','男','2000-03-12','中文系'),
('202008017','刘星耀','男','2001-09-02','数学系'),
('202008018','李贵','男','1999-02-07','英语系'),
('202008019','林自许','男','2000-12-01','网络系'),
('202008020','马翔','男','2001-09-23','网络系'),
('202008021','刘峰','男','2000-03-11','网络系'),
('202008022','朱晓鸥','女','2001-10-12','软件系'),
('202008023','牛站强','男','2001-02-19','中文系'),
('202008024','李婷婷','女','2000-12-02','通信系'),
('202008025','严丽','女','2001-04-30','数学系'),
('202008026','张小雨','女','2000-08-08','网络系'),
('202008027','何为','男',NULL,'软件系');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
