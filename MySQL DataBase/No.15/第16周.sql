/*
1  备份与还原
2  事务

*/

/*
	 1 备份与还原
	 
	 温热备份  逻辑备份，自己开发一个小的系统，移植数据库，数据量小，在10万条以内
	 
		 通过mysqldump命令机制，来把我们数据库中的数据结构，数据记录，数据库里面对象，视图...
		 来生成创建这些对象和数据的sql语句
		 
		 服务器不用停服务
		 
		 备份来讲，速还是相对较快
		 但是：恢复的速度比较慢，甚至很慢，实际上再次执行这个sql语句
		 
		 硬盘IO操作：写入速度是远远要慢于读取速度，小碎文件写入也是非常慢
		 
		 这个命令mysqldump是直接在cmd控制台下支行，或者linux的shell中直接，不用登录mysql数据库
		 
			增量备份：日志
	 
	 冷备份  物理文件备份，需要停止mysq数据库之后再操作
	 
		停止mysql服务
		直接copy数据库存放的数据库文件目录中的所有数据
	
	
	备份与还原常用的操作
	增量备份与还原
	
	用命令是因为要自动运行，备份
*/
#查看数据库的文件存放目录
SHOW VARIABLES LIKE 'datadir';

SHOW VARIABLES LIKE 'general%';

SHOW VARIABLES LIKE '%log-error%';

下面操作是在命令控制台直接操作

下面是备份实例

mysqldump -uroot -p  -P 3309  --databases testdb > C:\mysqlbak\studb.sql

恢复
mysql -uroot -p  -P 3309 < C:\mysqlbak\studb.sql

#备份所有数据库
mysqldump -u root -p --all-DATABASES > /opt/mysql_bak/all.sql　



SHOW VARIABLES LIKE 'log_bin';

SHOW MASTER STATUS;

# 2 事务

DDL  创建对象，建库，建表，这个直接就会提交，不能使用事务

DML  支持这种  INSERT UPDATE DELETE 

DCL

/*
	什么是事务
	事务的类型
	默认的mysql的隔离级别
	事务的异常捕获与提交

*/
SHOW  VARIABLES   LIKE  'transaction_isolation';
SELECT @@tx_isolation;

#  查看隔离级别，MySQL  5 .7 .20的版本之前：
mysql>  SHOW  VARIABLES   LIKE   'tx_isolation';
+ ---------------+ -----------------+
|  Variable_name   |  VALUE                         |
+ ---------------+ -----------------+
|  tx_isolation     |  REPEATABLE-READ   |
+ ---------------+ -----------------+
1  ROW  IN  SET  (0 .00  sec)

#  MySQL  5 .7 .20版本之后，引入transaction_isolation来替换tx_isolation

#  查看隔离级别，MySQL  5 .7 .20的版本及之后：
mysql>  SHOW  VARIABLES   LIKE   'transaction_isolation ' ;
+ -----------------------+-----------------+
|  Variable_name                     |  VALUE                         |
+ -----------------------+-----------------+

#或者不同MySQL版本中都可以使用的：
SELECT  @@transaction_isolation;
#查看事务的值，自动提交事务是否打开的
SHOW VARIABLES LIKE 'autocommit';
SHOW ENGINES;


CREATE DATABASE testDB;

USE testdb;

DROP TABLE account;

CREATE TABLE account(
username VARCHAR(50),
balance INT) DEFAULT CHARSET utf8;

SELECT * FROM account;

INSERT INTO account VALUES('张无忌',50000),('赵敏',50000);

#1.演示事务的使用步骤

#开启事务
-- SET autocommit=0;
START TRANSACTION;
#编写一组事务的语句
	UPDATE account SET balance = balance-10000 WHERE username='张无忌';
	UPDATE account SET balance = balance+10000 WHERE username='赵敏';


COMMIT;
ROLLBACK;



#结束事务
ROLLBACK;
#commit;

SELECT * FROM account;

-- 通过向表里面添加主键重复值来捕获异常让事务回滚



#2.演示事务对于delete和truncate的处理的区别

SET autocommit=0;
START TRANSACTION;

DELETE FROM account;
ROLLBACK;



#3.演示savepoint 的使用
SET autocommit=0;
START TRANSACTION;
DELETE FROM account WHERE id=25;
SAVEPOINT a;#设置保存点
DELETE FROM account WHERE id=28;
ROLLBACK TO a;#回滚到保存点


SELECT * FROM account;


#事务要判断异常进行处理
CREATE TABLE tran_test(  
f1 VARCHAR(10) NOT NULL,  
f2 INT DEFAULT NULL,  
PRIMARY KEY (f1)  
)ENGINE=INNODB CHARSET=utf8;


START TRANSACTION;    
INSERT INTO tran_test VALUES('A',1);  
INSERT INTO tran_test VALUES('B',2);  
ROLLBACK;


START TRANSACTION;    
 TRUNCATE tran_test;
ROLLBACK;


START TRANSACTION;    
 DELETE FROM tran_test;
ROLLBACK;

SELECT * FROM tran_test;

START TRANSACTION;    
INSERT INTO tran_test VALUES('A',1);  
INSERT INTO tran_test VALUES('B',2);  
COMMIT;


/*

第一种是对我们要执行的sql进行异常捕获，
我们再定义一个变量t_error，当捕获到异常的时候，
让t_error=1。再对t_error进行条件判断，如果t_error=1则进行ROLLBACK，否则进行COMMIT。

*/

DROP PROCEDURE IF EXISTS t_test;  

DELIMITER //  

CREATE PROCEDURE t_test()  
  BEGIN  
    DECLARE t_error INTEGER;  
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error = 1;  
    
    START TRANSACTION;  
        INSERT INTO tran_test VALUES('AAa',1);  
	INSERT INTO tran_test VALUES('BBa',2);  
         IF t_error = 1 THEN  
             ROLLBACK;  
         ELSE  
             COMMIT;  
         END IF;  
END//
DELIMITER ; 
 
SELECT * FROM tran_test; 
 
CALL t_test();
/*另一只则是第一种的简化，即捕获到异常直接进行ROLLBACK，如果没捕获到异常，直接COMMIT*/

DROP PROCEDURE  IF EXISTS t_test;  

DELIMITER //
 
CREATE PROCEDURE t_test()  
BEGIN  

	DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
	  
	START TRANSACTION;  
		INSERT INTO tran_test VALUES('A',1);  
		INSERT INTO tran_test VALUES('B',2);  
	COMMIT;  
	END//
DELIMITER ; 
 
CALL t_test();


这样，这两个insert语句便真正的被控制在了一个事务内了。



