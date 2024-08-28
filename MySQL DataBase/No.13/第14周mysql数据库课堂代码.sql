SELECT 

CREATE 对象类型 对象名称

VIEW  PROCEDURE  TRIGGER


ALTER 对象类型 对象名称

DROP  对象类型 对象名称

help的使用

HELP ALTER TABLE;

CREATE TRIGGER demo_trigger
tablename 事件
何种处理sql语句


CREATE  TRIGGER  触发器名称
{BEFORE|AFTER}  {INSERT|UPDATE|DELETE}  ON  表名
FOR   EACH   ROW
触发器执行的语句块;
/*
	触发的时间，前还是后
	BEFORE|AFTER 对于比较严格建议采用事前触发	
	{INSERT|UPDATE|DELETE}	
	进行指定事件，三种 ，修改表数据的操作	
	on  表名
*/
CREATE TRIGGER demo_trigger
BEFORE INSERT ON orders_detail
FOR EACH ROW
BEGIN
	触发器执行的语句块;
END



DELIMITER $$

CREATE TRIGGER demo_trigger1 BEFORE INSERT
    ON TABLE NAME
    FOR EACH ROW 
    BEGIN

    END$$

DELIMITER ;

#1. 创建触发器

#举例1：
#① 创建数据表

CREATE TABLE test_trigger (
id INT PRIMARY KEY AUTO_INCREMENT,
t_note VARCHAR(30)
);

INSERT INTO test_trigger(id,t_note)
VALUES(6,'Tom...');

CREATE TABLE test_trigger_log (
id INT PRIMARY KEY AUTO_INCREMENT,
t_log VARCHAR(30)
);

#② 查看表数据
SELECT * FROM test_trigger;

SELECT * FROM test_trigger_log;

#③ 创建触发器
#创建名称为before_insert_test_tri的触发器，向test_trigger数据表插入数据之前，
#向test_trigger_log数据表中插入before_insert的日志信息。

DELIMITER $$

CREATE TRIGGER before_insert_test_triiu
BEFORE INSERT ON test_trigger
FOR EACH ROW
BEGIN
	INSERT INTO test_trigger_log(t_log)
	VALUES('before insert...');
END $$

DELIMITER ;

-- 测试

INSERT INTO test_trigger(t_note)
VALUES('Tom...');

SELECT * FROM test_trigger;

SELECT * FROM test_trigger_log;

/* 商品和订单 
	演示范例
	当添加订单时商品库存对应减少，当库存不够时，添加订单失败
	删除商品时，如果还有订单存在，则不能删除

*/
-- 创建商品表
CREATE TABLE goods(
	 goods_id INT PRIMARY KEY AUTO_INCREMENT,
	 goods_name VARCHAR(64),
	 shop_price DECIMAL(10,2),
	 goods_number INT)DEFAULT CHARSET=utf8;


#创建订单表
/*
	将下面这个订单表改成正常的订单表，就是说这个goods_id不能使用auto_increment
	试试把这个goods_id改成外键，关联goods表
	增加一个orders_id 订单流水号 作主键
	向表里面添加记录测试时，对应字段要修改

*/	
 CREATE TABLE orders(
 #下面添加一个字段 orders_id
 orders_id INT PRIMARY KEY AUTO_INCREMENT,
 goods_id INT,
 goods_name VARCHAR(64),-- 利用合理的字段冗余加快查询速度，垃圾冗余则不同
 buy_number INT 
 )DEFAULT CHARSET=utf8;
 
 #向商品表中添加几条记录,
 INSERT INTO goods VALUES
 (NULL,'nokiaN85',2000,35),
 (NULL,'iphone4S',4500,30),
 (NULL,'Lnmia',5000,40),
 (NULL,'samsung',4200,20);
#查看数据	 
SELECT * FROM goods;

 INSERT INTO goods VALUES
 (NULL,'hwp50',6000,35);
 
 SELECT * FROM orders;

/*
	其中DELIMITER 定好结束符为"$$", 然后最后又定义为";", MYSQL的默认结束符为";". 
	详细解释: 
	其实就是告诉mysql解释器，该段命令是否已经结束了，mysql是否可以执行了。 
	默认情况下，delimiter是分号;。在命令行客户端中，如果有一行命令以分号结束，

*/
-- 栗子

# 当添加一条订单记录时，修改对应的商品的库存，写成个固定值

DELIMITER $$
CREATE TRIGGER insert_order_trigger1
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
	UPDATE goods SET goods_number=goods_number-3 WHERE goods_id=1;
END$$
 
DELIMITER ;

 
 SELECT * FROM orders;
 SELECT * FROM goods;
 
 INSERT INTO orders VALUES(NULL,1,'nokiaN85',3);
 
 INSERT INTO orders VALUES(NULL,2,'iphone4S',1);
/*
临时表new表：在执行触发器时系统自动创建一个表，临时，触发器结束，它也结束
	保存的是什么数据：
	第1种数据：insert 添加记录时，new表里面保存就是一个副本
	第2种数据：update语句时，会在new表里面保存更新的记录更新后数据的副本
临时表old表:
	第1种数据：delete语句执行时被删除记录的副本
	第2种数据：update语句时，会在old表里面保存更新的记录没有被更新前数据的副本
	
update语句对于触发器来讲：相当于先删除了原来的记录，然后再添加了一条新记录这样子的操作顺序
*/ 

SHOW TRIGGERS;

DELIMITER $$

CREATE TRIGGER insert_order_trigger23 BEFORE INSERT
    ON orders
    FOR EACH ROW 
    BEGIN
	DECLARE number INT;
	SET number=(SELECT goods_number FROM goods WHERE goods_id=new.goods_id);
	IF (new.buy_number<=number)THEN
		UPDATE goods SET goods_number=goods_number-new.buy_number WHERE goods_id=new.goods_id;
	END IF;
    END$$

DELIMITER ;
 
 
INSERT INTO orders VALUES(NULL,4,'samsung',8);

SELECT * FROM goods;
SELECT * FROM orders;

#查看触发器
SHOW TRIGGERS;
#3. 删除触发器
DROP TRIGGER IF EXISTS insert_order_trigger23;

-- 解决库存不够时，不能够出现订单可以添加但是库存不减少的问题
DELIMITER $$ 
CREATE TRIGGER trg_insert1
BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
	DECLARE stock  INT;
	SET stock=(SELECT goods_number FROM goods WHERE goods_id=new.goods_id);
	
	IF new.buy_number>stock THEN
		signal SQLSTATE 'HY000' SET message_text='库存不够';
	ELSE
		UPDATE goods SET goods_number=goods_number-new.buy_number WHERE goods_id=new.goods_id;		
	END IF;
		
	
END$$

DELIMITER ;


-- 删除商品时，去检测订单表中是否有相应记录，有就不能删除

DELIMITER $$ 
CREATE TRIGGER trg_del
BEFORE DELETE ON goods
FOR EACH ROW
BEGIN
	DECLARE flag VARCHAR(25);
	SET flag=(SELECT goods_name FROM orders WHERE goods_id=old.goods_id);
	
	IF flag IS NOT NULL THEN
		signal SQLSTATE 'HY000' SET message_text='不能删除，还有订单没有处理';
	END IF;
END$$

DELIMITER ;

DROP TRIGGER trg_del; 
INSERT INTO orders VALUES(NULL,4,'samsung',8);

SELECT * FROM goods;
SELECT * FROM orders;

DELETE FROM goods WHERE goods_id=3;





#  实验，完成上课范例实验





