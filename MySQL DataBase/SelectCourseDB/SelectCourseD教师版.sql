CREATE DATABASE SelectCourseDB_dd CHARACTER SET utf8; 

USE `selectcoursedb_dd`;
/*
学生（学生ID 密码 姓名 性别  生日 班级ID 专业ID 系部ID 入学时间）

新生开学

        主键：自动创建聚集索引，编号的顺序和记录在硬盘上存放的物理顺序是相同的	
	
	辅导员录学籍，你们这个学号肯定不是按先来后到
	
	商品：某宝  商品ID，系统自动按程序设定好来编号
	
	长度固定的，单项递增
	
	UUID 16位长度
	
	学生（学生ID 密码 姓名 性别  生日 班级ID 专业ID 系部ID 入学时间）
*/
CREATE TABLE IF NOT EXISTS student(
	student_id INT PRIMARY KEY,
	student_passwd VARCHAR(20),
	student_name VARCHAR(50),
	student_sex CHAR(2),
	student_birthday DATETIME,
	class_id VARCHAR(60),
	major_id CHAR(6),
	department_id VARCHAR(60),
	student_reg_time DATETIME
);
DESC student;
INSERT  INTO `student`(`student_id`,`student_passwd`,`student_name`,`student_sex`,`student_birthday`,`class_id`,`major_id`,`department_id`,`student_reg_time`) VALUES 
(111020114,'123456','孙雨晴','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111020227,'123457','范文虎','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022101,'123458','梁叶彬','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022102,'123459','宓鑫妍','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022103,'123460','赵康靖','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022104,'123461','乔敏','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022106,'123462','曹娟','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022107,'123463','陈小妍','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022108,'123464','饶淑琴','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022110,'123465','刘亚新','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022111,'123466','刘秀文','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022112,'123467','王嘉琪','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022113,'123468','张佳滢','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022114,'123469','鄂邦仪','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022115,'123470','余明菊','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022116,'123471','方彬','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022117,'123472','王铭娟','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022118,'123473','张阳如','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022119,'123474','李礼','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022120,'123475','韦蒋凝','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022121,'123476','陈颖','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022122,'123477','苏春芳','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022123,'123478','李丹丹','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022124,'123479','庞露丹','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022125,'123480','张欣','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022126,'123481','张粱予','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022127,'123482','黄博','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022128,'123483','李世伟','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022129,'123484','崔胡越','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022130,'123485','王一霖','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022131,'123486','余青云','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022132,'123487','李广冀','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022133,'123488','黎才科','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022134,'123489','张佳浩','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022135,'123490','王宇','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022136,'123491','张殿融','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022137,'123492','王楷文','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022138,'123493','耿旭超','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022139,'123494','卢雄坳','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022140,'123495','陈宇豪','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022141,'123496','沈河伯','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
(111022143,'123497','李首言','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00');


/*
	带*号的必须填写
	生日：日历控件
	性别：单选
	专业：下拉
	班级：下拉
	系部：下拉
	
	超星系统：导学生名单  系部  专业 班级 
	
	智慧农业工程系
	智慧农业工程
*/

/*

老师（老师ID， 姓名 性别 职称 专业ID 系部ID 入职时间 tel  office）

字段名称teacher_id  teacher_name teacher_pro teacher_id  department_id  register_time tel_num teacher_office
*/

CREATE TABLE teacher(
	teacher_id CHAR(8) PRIMARY KEY,
	teacher_pass VARCHAR(30),
	teacher_name VARCHAR(60),
	teacher_pro VARCHAR(20),
	department_id VARCHAR(30),
	register_time DATETIME,
	tel_num CHAR(15),
	teacher_office VARCHAR(50)

);





/*
老师（ID范围201016001--201016100 姓名 性别 职称 专业 系部 入职时间 tel  office）
*/




/*
课程（课程ID  名称  学分 总学时  课程介绍）
字段名称	course_id  course_name course_Credit course_Class course_desc
添加5门课

10610001	面向对象程序设计
30601201	软件工程
30601401	算法分析与设计
10601201	PHP程序设计
10601301	MySQL 数据库
*/


CREATE TABLE course(
	course_id INT PRIMARY KEY,
	course_name VARCHAR(50),
	course_Credit INT,
	course_Class INT UNSIGNED,
	course_desc VARCHAR(200)
);

/*
trigger 
view 
存储过程
索引
主从复制
备份还原
用户管理和授权


/*
教室（教室ID  教室名称  坐位数 介绍）
字段名称  class_room_id  class_room_name class_room_seats  class_room_desc  

农信楼506    农业信息技术实验室  50  本教室主要承担.....

*/
CREATE TABLE class_room(
	class_room_id VARCHAR(30) PRIMARY KEY,
	class_room_name VARCHAR(50),
	class_room_seats INT,
	class_room_desc VARCHAR(200)
);


/*
系部（系部ID  名称  办公室 负责人 电话）

字段名称  department_id department_name department_office department_manager department_tel


*/

CREATE TABLE department(
	department_id VARCHAR(30) PRIMARY KEY,
	department_name VARCHAR(50),
	department_office VARCHAR(50),
	department_manager VARCHAR(30),
	department_tel CHAR(15)
);



/*	zhny001 智慧农业工程系  综合楼701  王老师 67720001
	

专业（专业ID 专业名称 专业负责人）

字段名称 major_id   major_name  major_manager
	
	510203 软件技术  李老师
*/
CREATE TABLE major(
	major_id CHAR(8) PRIMARY KEY,
	major_name VARCHAR(50),
	major_manager VARCHAR(50)
);



/*
班级（班级ID(classID) 班级名称，         班级人数，辅导员 ）

字段名称 class_id      class_name     class_stu_nums   class_manager
	
软件221       软件技术专业221班    40 	      张老师
*/

CREATE TABLE class(
	class_id VARCHAR(20) PRIMARY KEY,
	class_name VARCHAR(50),
	class_stu_nums INT,
	class_manager VARCHAR(50)
);

/*	
开课表（开课ID  课程ID  教师ID  教室ID       开课学期             周学时  上课周数安排,登记时间）

AUTO_INCREMENT  .........                 2023-2024第一学期                1-9 or 1-18   
	
give_course_id  课程ID  教师ID  教室ID.....  give_course_term	give_course_week_time    give_course_weeks  give_course_regtime
		
*/

CREATE TABLE given_course_teacher(
	give_course_id VARCHAR(20) PRIMARY KEY,
	course_id INT,
	teacher_id CHAR(8),
	class_room_id VARCHAR(30),
	give_course_term VARCHAR(60),
	give_course_every_week_time INT,
	give_course_total_weeks VARCHAR(50),
	give_course_regtime DATETIME
	
);


/*	
选课（选课流水号，开课ID，班级ID,时间）
	AUTO_INCREMENt    int 
字段名称 select_course_id  give_course_id  class_id   reg_time
*/
CREATE TABLE select_course_student(
	select_course_id INT AUTO_INCREMENT PRIMARY KEY,
	give_course_id VARCHAR(20),
	class_id VARCHAR(20),
	reg_time DATETIME
);

/*
成绩表（成绩流水号，选课流水号, 学号，      平时成绩     实验成绩 期末成绩 总评  是否拿到学分 备注）
字段名 student_score_id  select_course_id  student_id course_daily_score  
course_operate_score course_total_score  score_flag  comment
	AUTO_INCREMENT
*/

CREATE TABLE select_course_scores(
	student_score_id INT AUTO_INCREMENT PRIMARY KEY,
	select_course_id INT,
	student_id INT,
	course_daily_score INT,	  
	course_operate_score INT,
	course_total_score INT,
	score_flag CHAR(2),
	select_course_comment VARCHAR(20)
);




/*
	最后要求测试
	功能：老师和学生课表查询以及学生成绩查询 
*/


SELECT * FROM
student t1 INNER JOIN select_course_scores t2
ON t1.`student_id`=t2.`student_id`
INNER JOIN select_course_student t3
ON t2.`select_course_id`=t3.`select_course_id`
INNER JOIN given_course_teacher t4
ON t3.`give_course_id`=t4.`give_course_id`
INNER JOIN course t5
ON t4.`course_id`=t5.`course_id`
INNER JOIN class_room t6
ON t4.`class_room_id`=t6.`class_room_id`
INNER JOIN teacher t7
ON t4.`teacher_id`=t7.`teacher_id`;





