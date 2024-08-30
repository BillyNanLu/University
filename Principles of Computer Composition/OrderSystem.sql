--创建数据库OrderSystem
CREATE DATABASE OrderSystem
GO


--打开数据库OrderSystem
USE OrderSystem
GO


--在库中创建主表Customer
CREATE TABLE Customer
(
	c_id char(3) not null primary key,
	c_name varchar(20) null,
	c_age int null,
	c_address varchar(40) null,
	c_mobile char(11) null,
	c_mail varchar(30) null
)
GO
--在库中创建主表Product
CREATE TABLE Product
(
	p_id char(3) not null primary key,
	p_name varchar(20) null,
	p_pdate datetime null,
	p_idate datetime null,
	p_type char(10) null,
	p_price money null
)
GO

--在库中创建主表Ems
CREATE TABLE Ems
(
	e_id char(3) not null primary key,
	e_name varchar(20) null,
	e_address varchar(40) null,
	e_mobile char(11) null
)
GO
--在库中创建从表Orders
CREATE TABLE Orders
(
	o_id char(3) not null primary key,
	o_date datetime null,
	o_qty int null,
	c_id char(3) not null references Customer(c_id),
	p_id char(3) not null references Product(p_id),
	e_id char(3) not null references Ems(e_id)
)
GO


-- 先建主表 再建从表 建关系图 最后插入记录

-- 数据库没有有效的所有者的解决办法
alter authorization on database::OrderSystem to sa;


--在Customer表中写入记录
INSERT INTO Customer(c_id,c_name,c_age,c_address,c_mobile,c_mail)
	VALUES('c01','张三丰',25,'中山南路2号','13323561881','zsf@126.com')
GO	
INSERT INTO Customer(c_id,c_name,c_age,c_address,c_mobile,c_mail)
	VALUES('c02','霍元甲',22,'中山西路1号','13823461772','gyj@qq.com')
GO
INSERT INTO Customer(c_id,c_name,c_age,c_address,c_mobile,c_mail)
	VALUES('c03','李小龙',26,'中山北路3号','13923761623','lxl@163.com')

--在Product表中写入记录
INSERT INTO Product(p_id,p_name,p_pdate,p_idate,p_type,p_price)
	VALUES('p01','乐事薯片','2023-03-21','2023-06-21','食品',7.80)
GO
INSERT INTO Product(p_id,p_name,p_pdate,p_idate,p_type,p_price)
	VALUES('p02','可口可乐','2022-01-11','2023-01-11','饮料',5.60)
GO
INSERT INTO Product(p_id,p_name,p_pdate,p_idate,p_type,p_price)
	VALUES('p03','老北京布鞋','2021-02-12','2023-02-12','鞋帽',12.50)
GO


--在Ems表中写入记录
INSERT INTO Ems(e_id,e_name,e_address,e_mobile)
	VALUES('e01','顺丰快递','中山南二路118号','13523561881')
GO
INSERT INTO Ems(e_id,e_name,e_address,e_mobile)
	VALUES('e02','圆通快递','西藏南路238号','13823561881')
GO
INSERT INTO Ems(e_id,e_name,e_address,e_mobile)
	VALUES('e03','中通快递','北京东路329号','13723561881')
GO


--在Orders表中写入记录
INSERT INTO Orders(o_id,o_date,o_qty,c_id,p_id,e_id)
	VALUES('o01','2023-03-21',1,'c01','p01','e01')
GO
INSERT INTO Orders(o_id,o_date,o_qty,c_id,p_id,e_id)
	VALUES('o02','2023-03-22',2,'c01','p02','e01')
GO
INSERT INTO Orders(o_id,o_date,o_qty,c_id,p_id,e_id)
	VALUES('o03','2023-03-23',3,'c02','p02','e02')
GO
INSERT INTO Orders(o_id,o_date,o_qty,c_id,p_id,e_id)
	VALUES('o04','2023-03-24',6,'c02','p03','e02')
GO
INSERT INTO Orders(o_id,o_date,o_qty,c_id,p_id,e_id)
	VALUES('o05','2023-03-25',5,'c03','p01','e03')
GO
INSERT INTO Orders(o_id,o_date,o_qty,c_id,p_id,e_id)
	VALUES('o06','2023-03-26',4,'c03','p03','e03')
GO


select * from Customer;

select * from Ems;

select * from Orders;

select * from Product;


--查询客户表中年龄小于25岁
SELECT *
FROM Customer
WHERE c_age<25
GO

--查询客户的姓名、联系电话、订购日期及订购数量
SELECT c.c_name,c.c_mobile,o.o_date,o.o_qty
FROM Customer c,Orders o
WHERE c.c_id=o.c_id      --主表的主键等于从表的外键
GO

SELECT c.c_name,c.c_mobile,o.o_date,o.o_qty
FROM Customer c inner join Orders o
ON c.c_id=o.c_id      --主表的主键等于从表的外键
GO

--查询某客户姓名、联系电话、家庭地址、订购日期及订购数量、产品名称、产品的保质期、产品类别、单价及总价
SELECT c.c_id,c.c_mobile,c.c_address,o.o_date,o.o_qty,p.p_name,p.p_idate-p.p_pdate as '保质期',p.p_type,p.p_price,p.p_price*o.o_qty as '总价'
FROM Customer c,Orders o,Product p
WHERE c.c_id=o.c_id and p.p_id=o.p_id
GO


--修改产品编号为p03的产品的单价为25.8
UPDATE Product
SET p_price=25.8
WHERE p_id='p03'
GO

--删除产品编号为p01的产品
delete
from Product
WHERE p_id='p01'
GO

--先删除约束，再删除从表，最后删除主表
DROP Orders  --报错，应先将Orders中的外键删除
DROP Customer
DROP PRODUCT