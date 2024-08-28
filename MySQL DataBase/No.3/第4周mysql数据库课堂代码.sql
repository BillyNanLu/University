SHOW ENGINES;

SELECT VERSION();
utf8mb3

utf8mb4


CREATE DATABASE demodb1;

SHOW DATABASES;

SHOW CREATE DATABASE demodb1;

DROP TABLE students;
CREATE TABLE students(
	student_number CHAR(10) PRIMARY KEY,
	student_name VARCHAR(50) NOT NULL,
	student_sex CHAR(2) NOT NULL,
	student_reg DATETIME,
	student_class VARCHAR(50)  NOT NULL,
	student_major VARCHAR(50) NOT NULL,
	student_dep VARCHAR(50) NOT NULL,
	student_qq VARCHAR(20) UNIQUE
) ;


CREATE TABLE students_copy(
	stu_bianhao INT PRIMARY KEY AUTO_INCREMENT,
	student_number CHAR(10),
	student_name VARCHAR(50) NOT NULL,
	student_sex CHAR(2) NOT NULL,
	student_reg DATETIME,
	student_class VARCHAR(50)  NOT NULL,
	student_major VARCHAR(50) NOT NULL,
	student_dep VARCHAR(50) NOT NULL,
	student_qq VARCHAR(20) UNIQUE
) ;
DESC students;

CREATE TABLE stu2 SELECT * FROM students;
#第一种方法添加记录
INSERT INTO table_name VALUES();
#第二种方法指定数据列，最常用的
INSERT INTO table_name(字段列表)VALUES(对应前面字段值);

INSERT INTO table_name(字段列表)
VALUES
(对应前面字段值),
(对应前面字段值),
(对应前面字段值);


#第3种方法将结果集追加到现在的表里面，导入数据时候会用到
INSERT INTO table_name(字段列表) SELECT(字段列表)

INSERT INTO stu2(
	student_number,
	student_name,
	student_sex,
	student_reg,
	student_class,
	student_major,
	student_dep
	)VALUES(
	'344121110',
	'胡逸凯',
	'男',
	'2021-09-01',
	'高本211',
	'软件技术',
	'智慧工程系'	
	)
	
	
INSERT INTO stu2(
	student_number,student_name,student_sex,student_reg,student_class,student_major,student_dep)
	VALUES
	('344121121','朱杰','男','2021-09-01','高本211','软件技术','智慧工程系'),
	('344121122','桂骏铮','男','2021-09-01','高本211','软件技术','智慧工程系');

SELECT * FROM stu2;

SELECT * FROM sheet1;

CREATE TABLE students_demo(
	student_number CHAR(10) PRIMARY KEY,
	student_name VARCHAR(50) NOT NULL,
	student_sex CHAR(2),
	student_reg DATETIME,
	student_class VARCHAR(50),
	student_major VARCHAR(50),
	student_dep VARCHAR(50),
	student_qq VARCHAR(20)
) ;

SELECT * FROM students_demo;

INSERT INTO students_demo(student_number,student_name,student_dep)SELECT * FROM sheet1;

UPDATE students_demo SET student_reg='2021-09-01',student_class='高本211',student_major='软件技术';


UPDATE 表名 SET 字段=new值,字段=new值  WHERE 条件表达式

DELETE FROM 表名 WHERE 条件表达式
TRUNCATE 表;

增，改，删

查询（重点）
简单查询，单表查询，条件查询
多表查询，
连接查询
复合查询（子查询）

聚合函数的使用


