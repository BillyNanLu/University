USE studentinfo;

# 【练习1】显示所有学生参加考试的情况，要求：未参加考试的学生其成绩显示为NULL。
select * from
    student left join sc on student.sno = sc.sno
    join course on sc.cno = course.cno
order by student.sno;

# 【练习2】采用外连接查询的方式，查询未参加任何课程考核的学生信息（即学号只在student表而不在sc表中出现）。
select * from
    student left join sc on student.sno = sc.sno
where sc.sno is null;

select * from
    student where sno in (select sno from sc where grade is null);

# 【练习3】采用外连接查询的方式，查询未安排考核的课程信息（即课程号只在course表而不在sc表中出现）。
select * from
    course left join sc on course.cno = sc.cno
where sc.cno is null;

select * from
    course where cno not in (select distinct cno from sc);

# 【练习4】利用子查询方式，查询未参加任何课程考核的学生信息（即学号只在student表而不在sc表中出现）。
select * from
    student where sno not in (select distinct sno from sc);

# 【练习5】利用子查询方式，查询未安排考核的课程信息（即课程号只在course表而不在sc表中出现）。
select * from
    course where cno not in (select cno from sc);

# 【练习6】查询成绩大于平均成绩的学生学号。
select sno from
    sc where grade > (select avg(grade) from sc);

# 【练习7】对课程号为的课程查询该课程成绩大于平均成绩（课程号为2的平均分）的学生学号。
select sno from
    sc where grade > (select avg(grade) from sc where cno = 2)
         and cno = 2;

# 【练习8】查询"公文写作"课程高于该课程平均成绩（课程名称为"公文写作"的平均分）的学生学号、姓名。
select student.sno, student.sname, sc.cno, sc.grade, course.cname from
    student join sc on student.sno = sc.sno
    join course on sc.cno = course.cno
where course.cname = '公文写作'
    and sc.grade > (
        select avg(grade) from
            sc join course on sc.cno = course.cno
        where course.cname = '公文写作'
    );


select student.sno, student.sname, sc.cno, sc.grade, course.cname from
    student join sc on student.sno = sc.sno
    join course on sc.cno = course.cno
    join (select cno, AVG(grade) avgscore from sc group by cno) as t4 on t4.cno = course.cno and sc.grade > t4.avgscore
where course.cname = '公文写作';


# 【练习9】如果存在一名学号为0003的学生，则显示他在student表中所有信息；如果不存在，则不显示。
select * from
    student where exists(select sno from student where sno = 0003);

select * from
    student where exists(select * from sc where sc.sno = student.sno);

# 【练习10】如果student表中存在sno字段取值为202008001的记录，则查询student表中sdept字段等于“网络系”的记录。
select * from
    student where sdept = '网络系'
        and exists(select * from student where sno = 202008001);

# 【练习11】查询student表中是否有网络系的学生，且其年龄不小于（大于等于）通信系年龄最小者？
select * from
    student where sdept = '网络系'
              and sbirthday >= (select min(sbirthday) from student where sdept = '通信系')
order by sbirthday;

# 【练习12】查询年龄最小的学生其基本信息。
select * from
    student where sbirthday = (select max(sbirthday) from student);

# 【练习13】用student表和sc表查询学号只在student表中出现过，并且未在sc表中出现过的学生基本信息。
select * from
    student where sno not in (select sno from sc);

# 【练习14】查询student表，按照系别进行分组，显示每个分组中年龄最小和最大的学生基本信息。
select t1.* from
    student t1 join (select sdept, max(sbirthday) as minage, min(sbirthday) maxage from
                    student group by sdept
    ) t2 on t1.sdept = t2.sdept and (t1.sbirthday = t2.minage or t1.sbirthday = t2.maxage)
order by t1.sdept;




