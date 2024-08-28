use studentinfo;


-- 编写一个存储过程proc_stu，实现的功能：显示所有女性同学的的信息。参考数据库【studentinfo】，资源目录下有SQL脚本下载。
delimiter $$
create procedure pro_stu()
begin
    select * from student where ssex = '女';
end $$
delimiter ;

call pro_stu();




-- 编写一个存储过程proc_hg，实现的功能：显示所有成绩合格（>60）的所有考试信息（学号，课程号，成绩）。
delimiter $$
create procedure proc_hg()
begin
    select * from sc;
end $$
delimiter ;

call proc_hg();



-- 编写一个存储过程proc_hg_update，实现的功能：显示所有成绩合格（>60）的所有考试信息（学号，姓名，课程名称，成绩）。
delimiter $$
create procedure proc_hg_update()
begin
    select student.sno, sname, cname, grade
    from student
        join sc on student.sno = sc.sno
        join course on sc.cno = course.cno;
end $$
delimiter ;

call proc_hg_update();



-- 编写一个存储过程proc_s1，实现的功能：查询某个指定学号（如202008001）的学生详细信息。
delimiter $$
create procedure proc_s1(in s_sno char(9))
begin
    select * from student where sno = s_sno;
end $$
delimiter ;

call proc_s1('202008001');



-- 编写一个存储过程proc_s2，实现的功能：查询某个指定学号（如202008001）某指定课程的考试信息。
delimiter $$
create procedure proce_s2(in s_sno varchar(9), in sc_cno char(4))
begin
    select * from sc where sno = s_sno and cno = sc_cno;
end $$
delimiter ;

call proce_s2('202008001', '1');
