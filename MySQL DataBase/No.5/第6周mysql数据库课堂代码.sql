SELECT * from employees;

select CONCAT(first_name,'@',last_name) from employees;

SELECT CURDATE() ,CURTIME() ,NOW() ,SYSDATE()+0 ,UTC_DATE() ,UTC_DATE()+0 ,UTC_TIME() ,UTC_TIME()+0 FROM  DUAL;

select *,round(DATEDIFF(now(),hire_date)/365) as 工龄 from employees;

SELECT  
		CASE
			WHEN   1   >  0  THEN   '1  >  0 '
			WHEN   2  >  0 THEN   '2  >  0 '
			ELSE   '3  >  0 '
		END
		
		
SELECT first_name, 
	CASE
		WHEN salary>20000 THEN '高收入'
		WHEN salary>10000 and salary<20000 THEN '中等收入'
		ELSE '屌丝'		
  END as 收入水平
 from employees;
 
 
 select MD5('123456');
 
 select  SHA('123456');
 
 select PASSWORD('123456');
SELECT PASSWORD('mysql') from dual;


select avg(salary) from employees;

select avg(salary),max(salary),min(salary),sum(salary) from employees;

SELECT max(hire_date),min(hire_date) from employees;

SELECT max(first_name),min(first_name) from employees;


SELECT count(*) from employees where department_id=60;
SELECT count(1) from employees;

SELECT count(department_id) from employees;
SELECT count(*) from employees;

SELECT * from employees where department_id is null;
#聚合函数及分组
#1 按部门求一个平均工资

select department_id,round(avg(salary)) as avg_salary
from employees 
GROUP BY department_id
order by avg_salary;


#
select department_id,round(avg(salary)) as avg_salary
from employees 
where hire_date<'1998-1-1'
GROUP BY department_id
order by avg_salary;

SELECT * from employees 
where hire_date<'1998-1-1'


select department_id,round(avg(salary)) as avg_salary
from employees 
GROUP BY department_id
order by avg_salary desc
limit 5;


select department_id,round(avg(salary)) as avg_salary
from employees 
GROUP BY department_id
order by avg_salary desc
limit 5;

#having条件
select department_id,round(avg(salary)) as avg_salary
from employees
GROUP BY department_id
HAVING avg_salary>5000 and department_id>50;
#用having聚合的条件不能用where来写
select department_id,round(avg(salary)) as avg_salary
from employees
GROUP BY department_id
HAVING avg_salary>5000 and department_id>50;
# 用where条件可以使用having么？
select department_id,round(avg(salary)) as avg_salary
from employees
where department_id>50
GROUP BY department_id
HAVING avg_salary>5000;

select * from employees HAVING salary>8000;
select * from employees where salary>8000;


select * from departments,employees;
笛卡尔积

SQL92写法
SELECT  表名.字段名 ，.....from course c ,student s,sc
where sc.学号=  and sc.课程编号=

SQL99
t1 inner join t2 on t1.column=t2.COLUMN













