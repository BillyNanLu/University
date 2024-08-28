# 用户管理
/*
创建用户

    CREATE  USER  用户名 [IDENTIFIED  BY   '密码 ' ][ ,用户名 [IDENTIFIED  BY   '密码 ' ]] ;

    1  用户名参数表示新建用户的账户，由 用户（User） 和 主机名（Host） 构成；

    2  “ [ ]”表示可选，也就是说，可以指定用户登录时需要密码验证，
    也可以不指定密码验证，这样用户 可以直接登录。不过，不指定密码的方式不安全，不推荐使用。

    3 如果指定密码值，这里需要使用   IDENTIFIED BY指定明文密码值。

    4 CREATE USER语句可以同时创建多个用户。

    栗子：
	CREATE  USER  zhang3  IDENTIFIED  BY   '123123 ' ;    #  默认host是 %

	CREATE  USER   'kangshifu '@ 'localhost '  IDENTIFIED  BY   '123456 ' ;
*/
use mysql;

select  * from user;

-- 创建用户
# 第1步：创建用户，并设置密码，这个时候这个用户只能登录服务器，不能干其它事情，对于数据库没有操作权限
# 第2步：授权
create user 'Billy'@'%' identified by '12345678';
flush privileges;

grant all privileges on *.* to 'Billy'@'%';
flush privileges;

