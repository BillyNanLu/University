
/*
	第2次课内容：建库，数据类型，建表
	时间：2023.09.26
	农信506机房

*/
USE mysql;
#修改root密码
SET PASSWORD FOR 'root'@'localhost'=PASSWORD('123');

mysqladmin -uroot -p PASSWORD 123456
#查看当前mysql实例所能支持的字符集
SHOW CHARACTER SET;

#查看当前数据库实例的默认字符集
SHOW VARIABLES LIKE 'character_set%';

CREATE DATABASE demodb;
USE demodb;
#查看当前使用的数据库的符集
SHOW VARIABLES LIKE 'character_set_database';

#创建数据库语法
CREATE DATABASE [IF NOT EXISTS] database_name
[CHARACTER SET charset_name][COLLATE collation_name];

#创建一个studentdb数据库
CREATE DATABASE sutdentdb;
-- 如果数据库对象已经存在了，那就不创建了
[]
CREATE DATABASE sutdentdb;

CREATE DATABASE IF NOT EXISTS sutdentdb;

#指定utf8字符集
CREATE DATABASE IF NOT EXISTS sutdentinfo CHARACTER SET utf8;
#查看系统中有哪些数据库
SHOW DATABASES;

#删除数据库，一定要慎用
DROP 哪种对象 对象名称
DROP DATABASE jdsc;

#设置当前数据库
USE 数据库名称;
USE sutdentinfo;
#查看当前使用的数据库的符集
SHOW VARIABLES LIKE 'character_set_database';

SHOW VARIABLES LIKE 'storage_engine';
/*
	在销售数据库系统中去创建一个客户表
	创建一个客户表
*/
CREATE TABLE `customer` (
  `customerid` INT(11) NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `companyname` VARCHAR(50) NOT NULL COMMENT '公司名称',
  `contactname` CHAR(8) NOT NULL COMMENT '联系人姓名',
  `phone` VARCHAR(20) DEFAULT NULL COMMENT '联系电话',
  `address` VARCHAR(100) DEFAULT NULL COMMENT '地址',
  `email` VARCHAR(50) DEFAULT NULL COMMENT 'email',
  PRIMARY KEY (`customerid`)
) ENGINE=INNODB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
#创建一个销售数据库
#指定utf8字符集
CREATE DATABASE IF NOT EXISTS salesdb DEFAULT CHARACTER SET utf8;
#使用salesdb数据库
USE salesdb;

CREATE TABLE customer(
	customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT '客户编号',
	comany_name VARCHAR(100) NOT NULL COMMENT '公司名称',
	contact_name VARCHAR(100) NOT NULL,
	phone_number VARCHAR(30),
	address VARCHAR(150),
	email VARCHAR(80)
);

SHOW CREATE DATABASE salesdb;

SHOW CREATE TABLE customer;

CREATE DATABASE `salesdb` /*!40100 DEFAULT CHARACTER SET utf8 */

CREATE TABLE `customer` (
  `customer_id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `comany_name` VARCHAR(100) NOT NULL COMMENT '公司名称',
  `contact_name` VARCHAR(100) NOT NULL,
  `phone_number` VARCHAR(30) DEFAULT NULL,
  `address` VARCHAR(150) DEFAULT NULL,
  `email` VARCHAR(80) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8

#最后一个字段时，那个逗号不能写
#查看表结构的命令describe,desc
DESC customer;

#建表操作实验：教材73页

/*
	第3次课内容

	表结构修改两种方式，至少掌握图形界面操作方式

	记录的添加

	简单查询
*/

