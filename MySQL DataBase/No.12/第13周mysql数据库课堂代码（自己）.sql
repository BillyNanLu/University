use employs_manage_db;

explain select * from employees;


# delimiter 的作用是重新定义mysql语句的结束符
-- 1、 创建一个无参的存储过程
delimiter $$
create procedure selct_all_data()
    begin
        select * from employees;
    end $$
delimiter ;

-- 调用存储过程
-- call 存储过程名
call selct_all_data();



-- 2、 创建一个带参数的存储过程
delimiter $$
create procedure show_someone_salary(in emp_name varchar(25))
    begin
        select last_name, salary from employees where last_name = emp_name;
    end $$
delimiter ;

-- 调用存储过程
call show_someone_salary('Faviet');


-- 创建一个带参数的存储过程，另一种，模糊查询
delimiter $$
create procedure show_someone_salary_a(in emp_name varchar(25))
    -- set emp_name = concat('%', emp_name, '%')
    begin
        set emp_name = concat('%', emp_name, '%');
        select last_name, salary from employees where last_name like emp_name;
    end $$
delimiter ;

call show_someone_salary_a('k');


delimiter $$
create procedure show_someone_salary_b(in empname varchar(20), out empsalary decimal(10, 2))
    begin
        select salary into empsalary
        from employees
        where last_name = empname;
    end $$
delimiter ;

-- 调用
set @empname = 'Abel';
call show_someone_salary_b(@empname, @empsalary);



-- 创建一个带参数的存储函数
delimiter $$
create function email_by_name()
returns varchar(25)
    deterministic
    contains sql
    reads sql data
begin
    return (select * from employees where last_name = 'Abel');
end $$
delimiter ;

-- 调用
select email_by_name();


delimiter $$
create procedure test_var()
begin
    declare sum int;
    set @i = 1;
    set @suma = 0;
    while @i <= @n do
                 set @suma = @suma + @i;
                 set @i = @i + 1;
    end while;
    select @suma;
end $$
delimiter ;


