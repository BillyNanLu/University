CREATE DATABASE SelectCourseDB CHARACTER SET utf8; 

USE `selectcoursedb`;
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

SHOW CREATE TABLE  student;
/*
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_passwd` varchar(20) DEFAULT NULL,
  `student_name` varchar(50) DEFAULT NULL,
  `student_sex` char(2) DEFAULT NULL,
  `student_birthday` datetime DEFAULT NULL,
  `class_id` varchar(60) DEFAULT NULL,
  `major_id` char(6) DEFAULT NULL,
  `department_id` varchar(60) DEFAULT NULL,
  `student_reg_time` datetime DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
*/
SELECT * FROM student;

UPDATE student SET student_birthday='2002-01-01',student_reg_time='2022-09-01';
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

老师（ID范围201016001--201016100 姓名 性别 职称 专业 系部 入职时间 tel  office）


课程（课程ID  名称  学分 总学时  课程介绍）
字段名称	course_id  course_name course_Credit course_Class course_desc
添加5门课

10610001	面向对象程序设计
30601201	软件工程
30601401	算法分析与设计
10601201	PHP程序设计
10601301	MySQL 数据库


教室（教室ID  教室名称  坐位数 介绍）
字段名称  class_room_id  class_room_name class_room_seats  class_room_desc  

农信楼506    农业信息技术实验室  50  本教室主要承担.....


系部（系部ID  名称  办公室 负责人 电话）

字段名称  department_id department_name department_office department_manager department_tel

	zhny001 智慧农业工程系  综合楼701  王老师 67720001
	

专业（专业ID 专业名称 专业负责人）

字段名称 major_id   major_name  major_manager
	
	510203 软件技术  李老师


班级（班级ID(classID) 班级名称，         班级人数，辅导员 ）

字段名称 class_id      class_name     class_stu_nums   class_manager
	
软件221       软件技术专业221班    40 	      张老师
	
开课表（开课ID  课程ID  教师ID  教室ID       开课学期             周学时  上课周数安排,登记时间）

AUTO_INCREMENT  .........                 2023-2024第一学期            1-9 or 1-18   
	
give_course_id  课程ID  教师ID  教室ID.....  give_course_term	give_course_week_time    give_course_weeks  give_course_regtime
		
	
选课（选课流水号，开课ID，班级ID,时间）
	AUTO_INCREMENt    int 
字段名称 select_course_id  give_course_id  class_id reg_time

成绩表（成绩流水号，选课流水号, 学号，      平时成绩     实验成绩 期末成绩 总评  是否拿到学分 备注）
字段名 student_score_id  select_course_id  student_id course_daily_score  course_operate_score course_total_score  score_flag  comment
	AUTO_INCREMENT
*/

/*
	最后要求测试
	功能：课表查询  成绩查询 
*/