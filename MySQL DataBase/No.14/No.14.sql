use mysql;

select * from user;

select user();

create database JDSDB;

-- 设置root密码为123456
set password = password ('123456');
flush privileges;



-- 创建用户 zhangsan@% ,密码为123
# 授权为所有数据库有完全控制权限
create user 'zhangsan'@'%' identified by '123';
grant all privileges on *.* to 'zhangsan'@'%';
flush privileges;



-- 创建用户wangwu@% 密码为123
#授权为对数据库JDSCDB数据库有完全控制权限
create user 'wangwu'@'%' identified by '123';
grant all privileges on jdsdb.* to 'wangwu'@'%' with grant option;
flush privileges;