SELECT 1;

SELECT NOW();

SELECT 9 FROM DUAL;

SET @name='zhangsan';
SELECT @name FROM DUAL;
USE employs_manage_db;
# 1 查询所有列
SELECT * FROM employees;
#在表数据量比较少的情况下，可以使用*来查询，如果数据量达到一定规模，就不建议这样子去查询

#2 选择指定列字段
SELECT first_name,last_name,department_id from employees;

#3给字段指定别名
SELECT first_name ename,last_name faname from employees;

#去除返回记录中重复的记录 DISTINCT

select department_id from employees;

select  DISTINCT department_id  from employees;

#条件过滤，排序

where 条件表达式

-- 查询部门ID号是60的员工信息
SELECT * from employees 
	where department_id=60;
	
SELECT * from employees 
	where department_id<>60;
#>  <    >=  <=
#查询工资高于3500$的员工有多少

SELECT * from employees where salary>3500;
#限定范围
-- 第一种方法
SELECT * from employees where salary>=3500 and salary<=7000;
-- 第二种方法 BETWEEN and  包含首尾，而且只能前面是小的，后面是大小
SELECT * from employees where salary BETWEEN 3500 and 7000;

#比较运算中，如果是时间这个来怎么比较
#栗子：1995年以前来公司的hire_date,如果用大小于符号来比较就是按直接先后来比较，时间比较早的反而小
SELECT * from employees where hire_date < '1995-1-1';

update employees set salary=salary-1000 where last_name='King';

#空值查询
-- NULL
-- is null 表示为空，是什么都没有输入过 name=""
SELECT * from employees where manager_id is null;
SELECT * from employees where manager_id <=> null;


#like关键字,模糊查询
% 0到任意n个任意字符
_ 代表1个任意字符
#查询员工表里那个lastname含有字母U的员工

SELECT * from employees where last_name like '%U%';

SELECT * from employees where last_name like 'U%';

SELECT * from employees where last_name like '%U';
#利用_来实现查询字符串中第几个字符是什么
SELECT * from employees where last_name like '_U%';

#查询条件中，如果本身就含有% 或者_  的这个要求，怎么写？

#排序
select * from employees where department_id=100 order by last_name;
#先按工资排，然后再按部门排
select * from employees order by salary asc,department_id asc ;

#分页查询
limit n,m
n表示从第几条记录开始取，m表示取多少条，在应用程序中最常见的分页显示功能
查询显示前几条记录 
limit n 表示取前几条记录，n是从0开始的

#查询员工表的前10条记录
select * from employees limit 10;
#查询员工表中，要求返回第11条到20条记录
select * from employees limit 10,10;

#函数的使用
#连接查询
#子查询
