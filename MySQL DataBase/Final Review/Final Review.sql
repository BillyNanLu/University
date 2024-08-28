-- 期末操作复习

-- 1 导入新的数据库 studentinfo
-- 后续的所有操作都要在这个数据中去完成
use studentinfo;

-- 2  建表
CREATE TABLE `account` (
  `userid` CHAR(6) NOT NULL,
  `fullname` VARCHAR(10) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `sex` CHAR(2) NOT NULL,
  `address` VARCHAR(40) DEFAULT NULL,
  `email` VARCHAR(20) DEFAULT NULL,
  `phone` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=INNODB;


CREATE TABLE `student` (
  `sno` CHAR(9) CHARACTER SET gbk COLLATE gbk_chinese_ci NOT NULL DEFAULT '' COMMENT '学号',
  `sname` VARCHAR(10) NOT NULL COMMENT '姓名',
  `ssex` CHAR(2) DEFAULT NULL COMMENT '性别',
  `sbirthday` DATE DEFAULT NULL COMMENT '年龄',
  `sdept` VARCHAR(8) NOT NULL COMMENT '系别',
  PRIMARY KEY (`sno`)
) ENGINE=INNODB DEFAULT CHARSET=gbk;

CREATE TABLE account (
	userid INT PRIMARY KEY,
	fullname VARCHAR(50),
	user_level VARCHAR(30),
	sex CHAR(2), 
	age INT	
);


-- 3 添加几条记录
INSERT INTO account VALUES (202403,'阿三','初级会员','男',20),
                           (202404,'小明','初级会员','男',28);
SELECT * FROM account;


-- 4  修改记录
-- UPDATE 表  SET   字段名=新值  WHERE 条件
UPDATE account SET fullname='王五' WHERE userid=202404;


-- 5 查询一个表，按要求字段排序
-- 查询成绩，按成绩升序排列
SELECT * FROM sc ORDER BY grade;


-- 6 统计函数的使用
-- SUM  AVG  MAX  MIN 按学生  按课程
SELECT sno,SUM(grade) FROM sc
GROUP BY sno
ORDER BY SUM(grade) DESC;

SELECT sno,ROUND(AVG(grade),2) FROM sc
GROUP BY sno;

SELECT * FROM sc;

SELECT cno,AVG(grade) FROM sc
GROUP BY cno;

SELECT cno,MAX(grade) FROM sc
GROUP BY cno;


-- 7 视图和存储过程
-- 创建视图，要求这个利用这个视图可以查询学生的成绩单
CREATE

    VIEW `studentinfo`.`score_view` 
    AS
SELECT stu.sno,stu.sname,stu.sdept,co.cname,sc.grade FROM student stu
INNER JOIN sc ON stu.sno=sc.sno
INNER JOIN course co ON sc.cno=co.cno;

SELECT * FROM  score_view;

-- 创建存储过程，要求传入学号或者姓名能够查学生成绩

DELIMITER $$

CREATE
    
    PROCEDURE `studentinfo`.`find_score_proc`(IN username VARCHAR(10))
    
	BEGIN
	-- SQL92语法  inner join 是SQL99写法	concat
		SELECT * FROM student,sc,course 
		WHERE student.sno=sc.sno AND sc.cno=course.cno
		AND student.sname=username;

	END$$

DELIMITER ;

#调用存储过程
CALL find_score_proc('张向东');

SELECT * FROM student;


-- 8 用户管理及测试
# 给某一个用户对数据库服务器只能操作一个数据库的所有权限
USE mysql;
# 第1步：创建用户并设置密码及访问主机，这个没有任何权限
CREATE USER 'jack'@'%' IDENTIFIED BY '123';
SELECT * FROM USER;
# 第2步：授权
GRANT ALL PRIVILEGES ON test.* TO 'jack'@'%' WITH GRANT OPTION;
# 第3步：刷新权限,重载权限让其生效
FLUSH PRIVILEGES;

SELECT USER();

# 测试登录时，那个地址要使用IP
