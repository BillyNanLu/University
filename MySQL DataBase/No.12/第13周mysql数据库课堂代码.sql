SELECT 

EXPLAIN SELECT * FROM employees;


-- DELIMITER的作用是重新定义mysql语句的结束符
-- 1、创建一个无参的存储过程
DELIMITER $$

CREATE PROCEDURE select_all_data()
	
	BEGIN
		SELECT * FROM employees;	
	END$$
	
DELIMITER ;

-- 调用存储过程
# call 存储过程名;
CALL select_all_data();

#举例2：创建存储过程avg_employee_salary()，返回所有员工的平均工资
DROP PROCEDURE avg_employee_salary;

DELIMITER //

CREATE PROCEDURE avg_employee_salary()
BEGIN 
	SELECT AVG(salary) FROM employees;
	
END //

DELIMITER ;

#调用
CALL avg_employee_salary();

-- 带参数的怎么去实现

#举例5：创建存储过程show_someone_salary()，查看“emps”表的某个员工的薪资，
#并用IN参数empname输入员工姓名。

DELIMITER $$

CREATE PROCEDURE show_someone_salary(IN emp_name VARCHAR(25))

	-- 变量去使用的时候不能使用单引号，直接用名称就可以了
	
	BEGIN
		SELECT last_name,salary FROM employees WHERE last_name=emp_name;	
	END$$
	
DELIMITER ;

-- 调用上面的存储过程
CALL show_someone_salary('Faviet');

-- 带参数的另外一种类型，模糊查询里面的东东

DELIMITER $$

CREATE PROCEDURE show_someone_salary_a(IN emp_name VARCHAR(25))

	-- 变量去使用的时候不能使用单引号，直接用名称就可以了
	-- SET emp_name = concat('%',emp_name,'%');
	
	BEGIN
		-- SELECT last_name,salary FROM employees WHERE last_name=emp_name;
		SET emp_name = CONCAT('%',emp_name,'%');
		SELECT last_name,salary FROM employees WHERE last_name LIKE emp_name;	
	END$$
	
DELIMITER ;

CALL show_someone_salary_a('k');

#调用方式1
CALL show_someone_salary('Abel');
#调用方式2
SET @empname := 'Abel';
CALL show_someone_salary(@empname);






#类型4：带 IN 和 OUT
#举例6：创建存储过程show_someone_salary2()，查看“emps”表的某个员工的薪资，
#并用IN参数empname输入员工姓名，用OUT参数empsalary输出员工薪资。

DELIMITER //

CREATE PROCEDURE show_someone_salary2(IN empname VARCHAR(20),OUT empsalary DECIMAL(10,2))
BEGIN
	SELECT salary INTO empsalary
	FROM employees
	WHERE last_name = empname;
	
	-- set empsalary=(SELECT salary FROM employees WHERE last_name = empname);
END //

DELIMITER ;


#调用
SET @empname = 'Abel';
CALL show_someone_salary2(@empname,@empsalary);

SELECT @empsalary;





DECLARE  i  INT;
DECLARE  SUM  INT;
SET  i  =  1;
SET  SUM  =  0;
WHILE  i  <=  n  DO
SET  SUM  =  SUM  +  i;
SET  i  =  i  +1;
END  WHILE;
SELECT  SUM;

DECLARE i INT;
DECLARE suma INT;
SET @i=1;
SET @suma=0;
WHILE @i<=100 DO
	SET @suma=@suma+@i;
	SET @i=@i+1;
END WHILE;
SELECT @suma;




DELIMITER //

CREATE FUNCTION email_by_name()
RETURNS VARCHAR(25)
	DETERMINISTIC
	CONTAINS SQL
	READS SQL DATA
BEGIN
	RETURN (SELECT email FROM employees WHERE last_name = 'Abel');
END //

DELIMITER ;

SELECT email_by_name();

SELECT VERSION();

-- 修改存储过程

-- 也可以使用alter去修改

DELIMITER $$

USE `employs_manage_db`$$

DROP PROCEDURE IF EXISTS avg_employee_salary $$

CREATE  PROCEDURE `avg_employee_salary`()
BEGIN 
	SELECT AVG(salary) FROM employees;
	
END$$

DELIMITER ;

--  结束
DROP PROCEDURE 名称;
DROP FUNCTION 名称;



















