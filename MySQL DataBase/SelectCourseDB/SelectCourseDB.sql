select version();

show variables like '%character%';

show variables like '%storage%';

# mysql8 已经自动使用utf8

show variables like '%datadir%';

drop database selectcoursedb;

create database selectcoursedb CHARACTER SET utf8;

use selectcoursedb;

/*
 学生 ： 学号ID	密码  姓名	性别  生日	班级name  	专业name	    系部name	入学时间
 新生开学
    主键：自动创建聚集索引，编号的顺序和记录在硬盘上存放的物理顺序是相同的
    辅导员录入学籍 学号不是按先来后到
    商品：某宝 商品ID 系统自动按程序设定好来编号
    长度固定的  单项递增
    UUID    16位长度
*/
create table student(
    student_id int primary key,
    student_passwd varchar(20) not null,
    student_name varchar(50),
    student_sex char(2),
    student_birthday datetime,
    class_name varchar(60),
    major_name char(6),
    department_name varchar(60),
    student_reg_time datetime
);

insert  into `student` values (111020114,'123456','孙雨晴','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111020227,'123457','范文虎','男','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022101,'123458','梁叶彬','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022102,'123459','宓鑫妍','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022103,'123460','赵康靖','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022104,'123461','乔敏','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022106,'123462','曹娟','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022107,'123463','陈小妍','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022108,'123464','饶淑琴','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022110,'123465','刘亚新','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022111,'123466','刘秀文','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022112,'123467','王嘉琪','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022113,'123468','张佳滢','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022114,'123469','鄂邦仪','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022115,'123470','余明菊','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022116,'123471','方彬','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022117,'123472','王铭娟','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022118,'123473','张阳如','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022119,'123474','李礼','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022120,'123475','韦蒋凝','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022121,'123476','陈颖','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022122,'123477','苏春芳','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022123,'123478','李丹丹','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022124,'123479','庞露丹','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
                                (111022125,'123480','张欣','女','2002-01-01 00:00:00','园林221','园林技术','风景园林技术系','2022-09-01 00:00:00'),
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

update student set class_name='软件（高本）221', major_name='软件技术', department_name='智慧农业工程系', student_reg_time='2022-09-10 00:00:00';

select * from student;

/*
     带*号的必须填写
     生日：日历控件
     性别：单选
     专业：下拉选单
     班级：下拉选单

     超星系统：导学生名单 系部 专业 班级
     智慧农业工程系
     智慧农业工程
*/



/*
    老师（老师ID， 姓名 性别 职称 系部name 入职时间 tel_num  office）

    字段名称 teacher_id  teacher_name teacher_pro department_name  register_time tel_num teacher_office

    老师（ID范围201016001--201016100 姓名 性别 职称 专业 系部 入职时间 tel  office）
*/
create table teacher(
    teacher_id int primary key,
    teacher_name varchar(50),
    teacher_pro char(6),
    department_name varchar(60),
    regeister_time datetime,
    tel_num varchar(60),
    teacher_office varchar(60)
);

insert into teacher values (201016003, '谭春茂', '副教授', '智慧农业工程系', '2000-08-21', '13917235212', '综合楼701'),
                           (201016085, '刘恒娟', '讲师', '智慧农业工程系', '2019-06-03', '15028923567', '农信楼203'),
                           (201016067, '张有根', '讲师', '智慧农业工程系', '2013-03-01', '13817452312', '农信楼203'),
                           (201016078, '毛怀勇', '讲师', '智慧农业工程系', '2017-02-28', '17562345121', '农信楼203'),
                           (201016093, '刘丹', '讲师', '智慧农业工程系', '2020-08-22', '13998971642', '农信楼203');

select * from teacher;


/*
    课程（课程ID  名称  学分 总学时  课程介绍）
    字段名称	course_id  course_name course_Credit course_Class course_desc
    添加5门课
    10601301	MySQL 数据库
    30601201	软件工程
    10601201	PHP程序设计
    30601401	算法分析与设计
    10610001	面向对象程序设计
*/
create table course (
    course_id int primary key,
    course_name varchar(50),
    course_credit int,
    course_class int,
    course_desc varchar(255)
);

insert into course values (10610001, '面向对象程序设计', 4, 72, '面向对象程序设计是一门软件技术专业必修课, 让学生掌握面向对象编程思想'),
                          (30601201, '软件工程', 4, 72, '软件工程是一门软件技术专业必修课, 让学生掌握软件开发过程'),
                          (30601401, '算法分析与设计', 4, 72, '算法分析与设计是一门软件技术专业必修课, 让学生掌握数据结构、算法设计的基本方法与基本原理'),
                          (10601301, 'MySQL数据库', 4, 72, 'MySQL数据库是一门软件技术专业必修课, 让学生掌握数据库基本概念、SQL查询语句与数据库管理、数据库设计'),
                          (10601201, 'PHP程序设计', 4, 72, 'PHP程序设计是一门软件技术专业必修课, 让学生掌握PHP语法及其应用技巧, 熟悉常用的PHP开发工具和框架, 并能够开发简单的PHP应用程序');

select * from course;


/*
    教室（教室ID  教室名称  坐位数 介绍）
    字段名称  class_room_id  class_room_name class_room_seats  class_room_desc

    农信楼506    农业信息技术实验室  50  本教室主要承担.....
*/
create table class_room (
    class_room_id varchar(50) primary key,
    class_room_name varchar(50),
    class_room_seats int,
    class_room_desc varchar(255)
);

insert into class_room values ('农信楼503', '农业信息技术实验室6', 50, '本教室主要承担计算机相关课程的各种教学任务和实训任务'),
                              ('农信楼506', '农业信息技术实验室7', 50, '本教室主要承担计算机相关课程的各种教学任务和实训任务');

select * from class_room;



/*
    系部（系部ID  名称  办公室 负责人 电话）

    字段名称  department_id department_name department_office department_manager department_tel

            zhny001         智慧农业工程系     综合楼701          王老师             67720001
*/
create table department (
    department_id varchar(50) primary key,
    department_name varchar(60),
    department_office varchar(60),
    department_manager varchar(50),
    department_tel varchar(60)
);

insert into department values ('zhny001', '智慧农业工程系', '综合楼701', '王妍', ' 67726901');

select * from department;



/*
    专业（专业ID 专业名称 专业负责人）

    字段名称 major_id   major_name  major_manager

	        510203     软件技术     李老师
*/
create table major (
    major_id varchar(50) primary key,
    major_name char(6),
    major_manager varchar(50)
);

insert into major values ('510203', '软件技术', '李嘉');

select * from major;



/*
    班级（班级ID(classID) 班级名称，         班级人数，辅导员 ）

    字段名称 class_id      class_name     class_stu_nums   class_manager

            软件221       软件（高本）221    40 	      张老师
*/
create table class (
    class_id varchar(60) primary key,
    class_name varchar(60),
    class_stu_nums int,
    class_manager varchar(50)
);

insert into class values ('软件技术（高本贯通）221', '软件（高本）221', 40, '张峰源');

select * from class;



/*
    开课表（开课ID  课程ID  教师ID  教室ID       开课学期             周学时  上课周数安排,登记时间）

    AUTO_INCREMENT  .........                 2023-2024第一学期                1-9 or 1-18

    give_course_id  课程ID  教师ID  教室ID.....  give_course_term	give_course_week_time    give_course_weeks  give_course_regtime

*/
create table give_course (
    give_course_id int primary key,
    course_id int,
    teacher_id int,
    class_room_id varchar(50),
    give_course_term varchar(60),
    give_course_every_week_time int,
    give_course_total_weeks varchar(50),
    give_course_regtime datetime
);

insert into give_course values (23101, 10601301, 201016003, '农信楼506', '2023学年第一学期', 4, '1-18', '2023-09-01'),
                               (23102, 30601201, 201016067, '农信楼503', '2023学年第一学期', 4, '1-18', '2023-09-01'),
                               (23103, 10601201, 201016078, '农信楼503', '2023学年第一学期', 4, '1-18', '2023-09-01'),
                               (23104, 30601401, 201016085, '农信楼506', '2023学年第一学期', 4, '1-18', '2023-09-01'),
                               (23105, 10610001, 201016093, '农信楼506', '2023学年第一学期', 4, '1-18', '2023-09-01');

select * from give_course;



/*
    选课（选课流水号，开课ID，班级ID,时间）
	AUTO_INCREMENt    int
    字段名称 select_course_id  give_course_id  class_id reg_time
*/
create table select_course (
    select_course_id int auto_increment primary key,
    give_course_id int,
    class_id varchar(60),
    reg_time datetime
);

insert into select_course values (1, 10601301, '软件技术（高本贯通）221', '2023-09-05'),
                                 (2, 30601201, '软件技术（高本贯通）221', '2023-09-05'),
                                 (3, 10601201, '软件技术（高本贯通）221', '2023-09-05'),
                                 (4, 30601401, '软件技术（高本贯通）221', '2023-09-05'),
                                 (5, 10610001, '软件技术（高本贯通）221', '2023-09-05');

select * from select_course;



/*
    成绩表（成绩流水号，选课流水号, 学号，      平时成绩     实验成绩 期末成绩 总评  是否拿到学分 备注）
    字段名 student_score_id  select_course_id  student_id course_daily_score  course_operate_score course_total_score  score_flag  comment
	AUTO_INCREMENT
*/
create table score (
    student_score_id int auto_increment primary key,
    select_course_id int,
    student_id int,
    course_daily_score int,
    course_operate_score int,
    course_final_score int,
    course_total_score int,
    score_flag char(1),
    comment varchar(255)
);

insert into score values (1, 1, 111022102, 90, 95, 93, 4, '是', '正常'),
                         (2, 3, 111022102, 90, 88, 89, 4, '是', '正常'),
                         (3, 5, 111022102, 88, 90, 89, 4, '是', '正常'),
                         (4, 2, 111022103, 90, 92, 91, 4, '是', '正常'),
                         (5, 4, 111022103, 85, 82, 83, 4, '是', '正常'),
                         (6, 5, 111022103, 88, 58, 69, 4, '是', '正常'),
                         (7, 1, 111022104, 85, 82, 83, 4, '是', '正常'),
                         (8, 2, 111022104, 80, 80, 84, 4, '是', '正常'),
                         (9, 3, 111022107, 82, 82, 81, 4, '是', '正常'),
                         (10, 4, 111022107, 78, 70, 73, 4, '是', '正常'),
                         (11, 4, 111022110, 90, 88, 89, 4, '是', '正常'),
                         (12, 5, 111022110, 90, 95, 93, 4, '是', '正常'),
                         (13, 1, 111022113, 90, 92, 91, 4, '是', '正常'),
                         (14, 2, 111022113, 82, 89, 86, 4, '是', '正常'),
                         (15, 5, 111022113, 70, 50, 58, 0, '否', '不合格'),
                         (16, 3, 111022115, 85, 82, 83, 4, '是', '正常'),
                         (17, 4, 111022115, 75, 75, 75, 4, '是', '正常'),
                         (18, 5, 111022115, 85, 88, 87, 4, '是', '正常'),
                         (19, 1, 111022118, 100, 100, 100, 4, '是', '正常'),
                         (20, 3, 111022118, 98, 100, 99, 4, '是', '正常'),
                         (21, 5, 111022118, 92, 92, 92, 4, '是', '正常'),
                         (22, 2, 111022119, 80, 82, 81, 4, '是', '正常'),
                         (23, 4, 111022119, 80, 70, 74, 4, '是', '正常'),
                         (24, 3, 111022120, 85, 0, 34, 0, '否', '缓考'),
                         (25, 4, 111022120, 80, 0, 32, 0, '否', '缓考'),
                         (26, 5, 111022120, 85, 82, 34, 0, '否', '缓考'),
                         (27, 1, 111022123, 90, 90, 90, 4, '是', '正常'),
                         (28, 4, 111022123, 85, 80, 82, 4, '是', '正常'),
                         (29, 5, 111022123, 90, 95, 93, 4, '是', '正常'),
                         (30, 2, 111022124, 70, 60, 64, 4, '是', '正常'),
                         (31, 4, 111022124, 80, 43, 58, 0, '否', '不合格'),
                         (32, 1, 111022125, 80, 85, 83, 4, '是', '正常'),
                         (33, 3, 111022125, 85, 90, 88, 4, '是', '正常'),
                         (34, 5, 111022125, 85, 88, 87, 4, '是', '正常'),
                         (35, 1, 111022126, 60, 30, 42, 0, '否', '不合格'),
                         (36, 2, 111022126, 60, 0, 24, 0, '否', '缺考'),
                         (37, 4, 111022126, 60, 40, 60, 4, '是', '正常'),
                         (38, 2, 111022127, 85, 82, 83, 4, '是', '正常'),
                         (39, 4, 111022127, 80, 80, 80, 4, '是', '正常'),
                         (40, 5, 111022127, 90, 95, 93, 4, '是', '正常'),
                         (41, 1, 111022129, 90, 90, 90, 4, '是', '正常'),
                         (42, 3, 111022129, 85, 90, 88, 4, '是', '正常'),
                         (43, 3, 111022132, 85, 82, 83, 4, '是', '正常'),
                         (44, 4, 111022132, 85, 85, 85, 4, '是', '正常'),
                         (45, 5, 111022132, 85, 30, 52, 0, '否', '不合格'),
                         (46, 1, 111022133, 80, 0, 32, 0, '否', '缓考'),
                         (47, 3, 111022133, 85, 0, 34, 0, '否', '缓考'),
                         (48, 5, 111022133, 82, 0, 33, 0, '否', '缓考'),
                         (49, 2, 111022136, 90, 93, 92, 4, '是', '正常'),
                         (50, 3, 111022136, 90, 80, 84, 4, '是', '正常'),
                         (51, 5, 111022137, 85, 85, 85, 4, '是', '正常'),
                         (52, 1, 111022139, 60, 30, 42, 0, '否', '不合格'),
                         (53, 3, 111022139, 70, 30, 46, 0, '否', '不合格'),
                         (54, 2, 111022140, 80, 85, 83, 4, '是', '正常'),
                         (55, 4, 111022140, 85, 90, 88, 4, '是', '正常'),
                         (56, 5, 111022140, 90, 95, 93, 4, '是', '正常'),
                         (57, 1, 111022141, 100, 100, 100, 4, '是', '正常'),
                         (58, 3, 111022141, 95, 100, 99, 4, '是', '正常'),
                         (59, 5, 111022141, 90, 93, 92, 4, '是', '正常'),
                         (60, 2, 111022143, 80, 88, 85, 4, '是', '正常'),
                         (61, 4, 111022143, 85, 90, 88, 4, '是', '正常'),
                         (62, 5, 111022143, 85, 85, 85, 4, '是', '正常');

select * from score;





/*
	最后要求测试功能：课表查询  成绩查询
*/

-- 班级课表：class_name, course_name, give_course_term, teacher_name, class_room_id, class_room_name, give_course_every_week_time, give_course_total_weeks

select distinct class_name, course_name, give_course_term, teacher_name, class_room.class_room_id, class_room_name, give_course_every_week_time, give_course_total_weeks from
student inner join score
on student.student_id = score.student_id
inner join select_course
on score.select_course_id = select_course.select_course_id
inner join give_course
on select_course.give_course_id = give_course.course_id
inner join class_room
on give_course.class_room_id = class_room.class_room_id
inner join course
on give_course.course_id = course.course_id
inner join teacher
on give_course.teacher_id = teacher.teacher_id;



-- 学生成绩：student_score_id, class_name, student_id, student_name, course_name, give_course_term, teacher_name, course_daily_score, course_operate_score, course_final_score, score_flag, score.comment

select student_score_id, class_name, student.student_id, student_name, course_name, give_course_term, teacher_name, course_daily_score, course_operate_score, course_final_score, score_flag, comment  from
student inner join score
on student.student_id = score.student_id
inner join select_course
on score.select_course_id = select_course.select_course_id
inner join give_course
on select_course.give_course_id = give_course.course_id
inner join course
on give_course.course_id = course.course_id
inner join teacher
on give_course.teacher_id = teacher.teacher_id;



-- 教师课表：teacher_id, department_name, teacher_name, course_id, course_name, class_name, class_room_id, class_room_name, give_course_term, course_class, give_course_every_week_time, give_course_total_weeks

select teacher.teacher_id, teacher_name, department_name, course.course_id, course_name, class_name, class_room.class_room_id, class_room_name, give_course_term, course_class, give_course_every_week_time, give_course_total_weeks from
select_course inner join give_course
on select_course.give_course_id = give_course.course_id
inner join class
on select_course.class_id = class.class_id
inner join class_room
on give_course.class_room_id = class_room.class_room_id
inner join course
on give_course.course_id = course.course_id
inner join teacher
on give_course.teacher_id = teacher.teacher_id;