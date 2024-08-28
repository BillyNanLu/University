SELECT VERSION();

use employs_manage_db;
#案例：查询员工的姓名及其部门名称
SELECT last_name, department_name
FROM employees, departments;

SELECT * FROM employees;

SELECT * FROM departments;

SELECT 107*27;
/*
· 笛卡尔积的错误会在下面条件下产生：
· 省略多个表的连接条件(或关联条件)
· 连接条件(或关联条件)无效
· 所有表中的所有行互相连接
· 为了避免笛卡尔积，可以在 WHERE加入有效的连接条件。
*/

#案例：查询员工的姓名及其部门名称
-- SQL92规范的写法
SELECT last_name, department_name,first_name
FROM employees, departments WHERE employees.department_id = departments.department_id;

-- 表的别名的使用,
/*
	一但使用表别名，因为运行时，这个是加载到内存中的，即是对表实例进行重新命名为别名，
	所以在这个语句中其它地方再使用时就只能使用别名，不能再使用表名
*/
SELECT t1.last_name,t1.first_name,t2.department_name  
FROM employees AS t1, departments AS t2 
WHERE t1.department_id = t2.department_id ;

-- 查询结果再次过滤
SELECT t1.last_name,t1.first_name,t2.department_name,t2.department_id 
FROM employees AS t1, departments AS t2 
WHERE t1.department_id = t2.department_id AND t2.department_id>90;

-- 3个表的连接
SELECT t1.employee_id, t1.last_name, t1.first_name, t2.department_id, t2.department_name,t3.location_id
FROM employees AS t1, departments AS t2, locations AS t3
WHERE t1.department_id = t2.department_id AND t2.location_id = t3.location_id
order by t1.employee_id;

-- 总结：连接 n 个表，至少需要 n-1 个连接条件。 比如，连接三个表，至少需要两个连接条件。

/*
    按照我们书写的顺序连接是下面这个顺序，但是，实际上mysql在执行这种连接查询时
    它发起连接的第一个表第2个表，第3个表实际并不是按照我们写的顺序来的
    在最前面发起连接的时候是记录少的哪一个表作为驱动表
 */
SELECT * from employees;

SELECT * from departments;

select * from locations;




select empid,empname,depid,depname from (
	SELECT t1.employee_id as empid,t1.last_name as empname, t2.department_id as depid, t2.department_name as depname, t3.location_id as locid
	FROM employees AS t1, departments AS t2, locations AS t3
	WHERE t1.department_id = t2.department_id AND t2.location_id = t3.location_id
	order by t1.employee_id
) as eminfo;





-- 自连接 相当于一张表变成两个副本，通过取别名的方式来实现
#练习：查询员工id,员工姓名及其管理者的id和姓名
select  t1.employee_id, t1.first_name, t2.employee_id
from employees t1, employees t2
where t1.manager_id = t2.employee_id;


SELECT * from employees;

# 内连接：合并具有同一列的两个以上的表的行, 结果集中不包含一个表与另一个表不匹配的行


#练习：查询所有的员工的last_name,department_name信息
SELECT employee_id,department_name
FROM employees e, departments d
WHERE e.`department_id` = d.department_id; 

# 外连接的分类：左外连接、右外连接、满外连接
# 外连接：合并具有同一列的两个以上的表的行, 结果集中除了包含一个表与另一个表匹配的行之外，还查询到了左表 或 右表中不匹配的行。

# 左外连接：两个表在连接过程中除了返回满足连接条件的行以外还返回左表中不满足条件的行，这种连接称为左外连接。
# 右外连接：两个表在连接过程中除了返回满足连接条件的行以外还返回右表中不满足条件的行，这种连接称为右外连接。

# 练习：查询所有的员工的last_name,department_name信息
SELECT employee_id, department_name
FROM employees e,departments d
WHERE e.`department_id` = d.department_id;   # 需要使用左外连接

# SQL92语法实现内连接：见上，略
# SQL92语法实现外连接：使用 +  ---------- MySQL不支持SQL92语法中外连接的写法！
/*
    不支持：
    内连接(INNER JOIN)的实现
    SELECT 字段列表
    FROM A表 INNER JOIN B表
    ON 关联条件
    WHERE 等其他子句;
*/


#案例：查询员工的姓名及其部门名称
-- SQL99规范的写法
SELECT t1.last_name, t1.first_name, t2.department_name
FROM employees AS t1 
inner join departments AS t2 
on t1.department_id = t2.department_id ;


# 左外连接(LEFT OUTER JOIN)
# 左边这个表是主表，如果右边表中没有对应的记录匹配，则以null补上


#练习：查询所有的员工的last_name,department_name信息 
# 左外连接：
SELECT t1.first_name, t2.department_name
from employees t1 left join departments t2
on t1.department_id = t2.department_id;

#现在要想查出没有安排部门的员工信息
SELECT t1.first_name,t2.department_name
from employees t1 left join departments t2
on t1.department_id = t2.department_id 
where t2.department_id is null;

#现在要想查出部门已经成立了，但是还没有员工的部门
SELECT t1.department_name,t2.first_name from 
departments t1 left join employees t2
on t1.department_id = t2.department_id
where t2.first_name is null;

-- 用右外连接来实现
SELECT t1.first_name,t2.department_name from 
employees t1 right join departments t2
on t1.department_id = t2.department_id 
where t1.first_name is null;

select DISTINCT department_id from employees;
select count(*) from departments;


#查出来有员工还没有部门和有部门还没有员工的
/*
满外连接的结果 = 左右表匹配的数据 + 左表没有匹配到的数据 + 右表没有匹配到的数据。
SQL99是支持满外连接的。使用FULL JOIN 或 FULL OUTER JOIN来实现。
需要注意的是，MySQL不支持FULL JOIN，但是可以用 LEFT JOIN UNION RIGHT JOIN代替。
full outer join
*/

/*
合并查询结果 利用UNION关键字，可以给出多条SELECT语句，并将它们的结果组合成单个结果集。合并
时，两个表对应的列数和数据类型必须相同，并且相互对应。各个SELECT语句之间使用UNION或UNION
ALL关键字分隔。
语法格式：
SELECT column,... FROM table1
UNION [ALL]
SELECT column,... FROM table2
*/

#查出来有员工还没有部门和有部门还没有员工的
SELECT t1.first_name,t2.department_name from 
employees t1 left join departments t2
on t1.department_id = t2.department_id 
where t2.department_id is null
UNION
SELECT t1.first_name,t2.department_name from 
employees t1 right join departments t2
on t1.department_id = t2.department_id 
where t1.first_name is null;

 

use studentinfo;
#查出来一门课都还没有选的学生和这个课程还没有一个学生选的课
SELECT t1.sno,t2.cno from
student t1 left join sc t2
on t1.sno = t2.sno
where t2.sno is null
union ALL
SELECT t2.sno,t1.cno from 
course t1 left join sc t2
on t1.cno = t2.cno
where t2.cno is null;


select stuid from
	 (
			SELECT t1.sno as stuid,t2.cno as cid from 
			student t1 left join sc t2
			on t1.sno = t2.sno
			where t2.sno is null
			union ALL
			SELECT t2.sno as stuid,t1.cno as cid from 
			course t1 left join sc t2
			on t1.cno = t2.cno
			where t2.cno is null
	)as result_table
where stuid is not null;

-- 查找出来没有选课的学生详细信息
select * from student where sno in(
        select stuid from
			 (
					SELECT t1.sno as stuid,t2.cno as cid from 
					student t1 left join sc t2
					on t1.sno = t2.sno
					where t2.sno is null
					union ALL
					SELECT t2.sno as stuid,t1.cno as cid from 
					course t1 left join sc t2
					on t1.cno = t2.cno
					where t2.cno is null
			)as result_table
		where stuid is not null
)
order by sdept;




-- -- 查找出来没有选课的学生详细信息了
select * from course where cno in(
		select cid from
			(
				SELECT t1.sno as stuid,t2.cno as cid from
				student t1 left join sc t2
				on t1.sno = t2.sno
				where t2.sno is null
				union ALL
				SELECT t2.sno as stuid,t1.cno as cid from
				course t1 left join sc t2
				on t1.cno = t2.cno
				where t2.cno is null
			)as result_table
		where cid is not null
);
	
	
/*2 USING连接
当我们进行连接的时候，SQL99还支持使用 USING 指定数据表里的 同名字段 进行等值连接。但是只能配
合JOIN一起使用。比如：
SELECT employee_id,last_name,department_name
FROM employees e JOIN departments d
USING (department_id);
*/

select * from student;
DELETE from student where sno='';

select * from course;









CREATE TABLE `beauty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `sex` char(1) DEFAULT '女',
  `borndate` datetime DEFAULT '1987-01-01 00:00:00',
  `phone` varchar(11) NOT NULL,
  `photo` blob,
  `boyfriend_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `beauty` */
insert  into `beauty`(`id`,`name`,`sex`,`borndate`,`phone`,`photo`,`boyfriend_id`)
values (1,'柳岩','女','1988-02-03 00:00:00','18209876577',NULL,8),
       (2,'苍老师','女','1987-12-30 00:00:00','18219876577',NULL,9),
       (3,'Angelababy','女','1989-02-03 00:00:00','18209876567',NULL,3),
       (4,'热巴','女','1993-02-03 00:00:00','18209876579',NULL,2),
       (5,'周冬雨','女','1992-02-03 00:00:00','18209179577',NULL,9),
       (6,'周芷若','女','1988-02-03 00:00:00','18209876577',NULL,1),
       (7,'岳灵珊','女','1987-12-30 00:00:00','18219876577',NULL,9),
       (8,'小昭','女','1989-02-03 00:00:00','18209876567',NULL,1),
       (9,'双儿','女','1993-02-03 00:00:00','18209876579',NULL,9),
       (10,'王语嫣','女','1992-02-03 00:00:00','18209179577',NULL,4),
       (11,'夏雪','女','1993-02-03 00:00:00','18209876579',NULL,9),
       (12,'赵敏','女','1992-02-03 00:00:00','18209179577',NULL,1);

select * from beauty;


create table boy (boyid int ,boyname varchar(50),flowere varchar(80));

create table girl (girlid int ,girlname varchar(50),flowere varchar(80));

INSERT into boy 
VALUES (1,'刘德花','玫瑰花'),
       (2,'张学由','郁金香'),
       (3,'周杰轮','夜来香'),
       (4,'王宝宝','百合花'),
       (5,'赵无及','桂花'),
       (6,'张三风','荷花');

SELECT * from boy;


INSERT into girl 
VALUES (1,'柳岩','玫瑰花'),
       (2,'苍老师','一花'),
       (3,'Angelababy','夜来香'),
       (4,'热巴','百合花'),
       (5,'周冬雨','二花'),
       (6,'周芷若','三花'),
       (7,'岳灵珊','桃花'),
       (8,'小昭','梨花'),
       (9,'双儿','郁金香'),
       (10,'王语嫣','苹果花'),
       (11,'夏雪','桂花'),
       (12,'赵敏','菊花');

SELECT * from girl;


/*扩展作业：查出单身男女的信息*/

select * from
    boy left join girl on boy.flowere = girl.flowere
where girl.girlid is null
union all
select * from
    boy right join girl on boy.flowere = girl.flowere
where boy.boyid is null;