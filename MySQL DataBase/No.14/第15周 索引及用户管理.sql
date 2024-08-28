# 索引的简单使用与测试
CREATE DATABASE indexdb;
USE indexdb;

#索引效率测试例子
#1. 准备表
CREATE TABLE s1(
	id INT,
	NAME VARCHAR(20),
	gender CHAR(6),
	email VARCHAR(50)
);

DELIMITER $$ #声明存储过程的结束符号为$$
CREATE PROCEDURE auto_insert1()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE(i<10000)DO
        INSERT INTO s1 VALUES(i,CONCAT('egon',i),'male',CONCAT('egon',i,'@oldboy'));
        SET i=i+1;
    END WHILE;
END$$ #$$结束
DELIMITER ; #重新声明分号为结束符号

CALL auto_insert1();


SELECT * FROM s1;

#无索引：从头到尾扫描一遍，所以查询速度很慢
SELECT * FROM s1 WHERE id=333;

SELECT * FROM s1 WHERE email='egon333@oldboy';

-- 模糊查询中，左边%号会让索引失效

SELECT * FROM s1 WHERE `name` LIKE 'egon333%';

CREATE INDEX index_s1_id ON s1(id);

CREATE INDEX index_s1_name ON s1(`name`);

#有索引：查询速度快，注意查看执行的时间
SELECT * FROM s1 WHERE id=333;

SELECT * FROM s1 WHERE `name`='egon333';

EXPLAIN SELECT * FROM s1 WHERE id=333;

EXPLAIN SELECT * FROM s1 WHERE `name`='egon333';

# 用户管理
/*
创建用户

CREATE  USER  用户名 [IDENTIFIED  BY   '密码 ' ][ ,用户名 [IDENTIFIED  BY   '密码 ' ]] ;

    1  用户名参数表示新建用户的账户，由 用户（User） 和 主机名（Host） 构成；
    
    2  “ [ ]”表示可选，也就是说，可以指定用户登录时需要密码验证，
    也可以不指定密码验证，这样用户 可以直接登录。不过，不指定密码的方式不安全，不推荐使用。
    
    3 如果指定密码值，这里需要使用   IDENTIFIED BY指定明文密码值。
    
    4 CREATE USER语句可以同时创建多个用户。
   
   栗子：
	CREATE  USER  zhang3  IDENTIFIED  BY   '123123 ' ;    #  默认host是 %

	CREATE  USER   'kangshifu '@ 'localhost '  IDENTIFIED  BY   '123456 ' ;

*/
USE mysql;

UPDATE `user` SET HOST='%' WHERE USER='root';

SELECT * FROM USER;

FLUSH  PRIVILEGES;



-- 用户创建分两步：
# 第1步：创建用户，并设置密码，这个时候这个用户只能登录服务器，不能干其它事情，对于数据库没有操作权限
CREATE USER 'zhangsan'@'%' IDENTIFIED BY '123456';
FLUSH  PRIVILEGES;
#第2步：授权
--  GRANT  ALL  PRIVILEGES  ON  * .*  TO   joe@ '% '  IDENTIFIED  BY   '123 ' ;

# 给某一个用户数据库服务器的所有权限，权限仅次于root
GRANT ALL PRIVILEGES ON *.* TO 'zhangsan'@'%';

FLUSH  PRIVILEGES;

CREATE DATABASE c001starDB;

# 给某一个用户对数据库服务器只能操作一个数据库的所有权限
USE mysql;
#第1步：创建用户并设置密码及访问主机，这个没有任何权限
CREATE USER 'jack'@'%' IDENTIFIED BY '123';
SELECT * FROM USER;
#第2步：授权
GRANT ALL PRIVILEGES ON c001starDB.* TO 'jack'@'%' WITH GRANT OPTION;
#第3步：刷新权限,重载权限让其生效
FLUSH PRIVILEGES;

# 修改用户密码
#修改当用户密码
SET PASSWORD=PASSWORD('123456');  -- 5.7有效，8.0后不支持

#1. 使用ALTER USER命令来修改当前用户密码 用户可以使用ALTER命令来修改自身密码，
#如下语句代表修 改当前登录用户的密码。基本语法如下：
USE mysql;
-- 修改当前登录用户的密码

ALTER USER USER() IDENTIFIED BY '12345678';

SET PASSWORD='12345678';

SELECT USER();

FLUSH  PRIVILEGES;

/*
修改其它用户密码
1. 使用ALTER语句来修改普通用户的密码 可以使用ALTER USER语句来修改普通用户的密码。基本语法形 式如下：

ALTER  USER  user   [IDENTIFIED  BY   '新密码 ' ]
[ ,user [IDENTIFIED  BY   '新密码 ' ]] … ;
2. 使用SET命令来修改普通用户的密码 使用root用户登录到MySQL服务器后，可以使用SET语句来修改普 通用户的密码。  SET语句的代码如下：
 
3. 使用UPDATE语句修改普通用户的密码（不推荐）

UPDATE  MySQL .user  SET  authentication_string=PASSWORD( "123456 " )
WHERE  User  =   "username "  AND  Host  =   "hostname " ;
*/
# root去修改其它用户密码
SET PASSWORD FOR 'jack'@'%'='123456';


-- 当我们刚安装完数据库后，没有去执行初始化的操作时，密码有可能是空的
# 登录数据库后执行
MariaDB [(NONE)]> SET PASSWORD=PASSWORD('123456');




