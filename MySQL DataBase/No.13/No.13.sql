/*
select

create 对象类型 对象名称

view procedure trigger

-- alter 对象类型 对象名称

-- drop 对象类型 对象名称
 */


/*
help的使用
help alter table;
 */


/*
create trigger demo_trigger
tablename 事件
何种处理sql语句
 */


/*
create trigger 触发器名称
{before|after} {insert|update|delete} on 表名
for each row
触发器执行的语句块;
 */

/*
	触发的时间，前还是后
	before|after 对于比较严格建议采用事前触发
	{insert|update|delete}
	进行指定事件，三种 ，修改表数据的操作
	on  表名
*/


/*
create trigger demo_trigger
before insert on orders_detail
for each row
begin
    触发器执行语句块;
end;
 */


/*
delimiter $$
create trigger demo_trigger1
before insert on table name
for each row
begin
    触发器执行语句块;
end $$;
 */



create database shopping;

use shopping;

# 1. 创建触发器
# 举例1：
# ① 创建数据表

create table test_trigger (
    id int primary key auto_increment,
    t_note varchar(30)
);

insert into test_trigger(id, t_note)
values (6, 'Tom...');

create table test_trigger_log (
    id int primary key auto_increment,
    t_log varchar(30)
);



# ② 查看表数据
select * from test_trigger;

select * from test_trigger_log;



# ③ 创建触发器
-- 创建名称为before_insert_test_tri的触发器，向test_trigger数据表插入数据之前，
-- 向test_trigger_log数据表中插入before_insert的日志信息。
delimiter $$
create trigger before_insert_test_tri
before insert on test_trigger
for each row
begin
    insert into test_trigger_log(t_log) values ('before insert...');
end $$;
delimiter ;

-- 测试
insert into test_trigger(t_note) values ('Tom...');

select * from test_trigger;
select * from test_trigger_log;


/*  商品和订单
	演示范例
	当添加订单时商品库存对应减少，当库存不够时，添加订单失败
	删除商品时，如果还有订单存在，则不能删除
*/
create table goods(
	 goods_id int primary key auto_increment,
	 goods_name varchar(64),
	 shop_price decimal(10,2),
	 goods_number INT
);

#创建订单表
/*
	将下面这个订单表改成正常的订单表，就是说这个goods_id不能使用auto_increment
	试试把这个goods_id改成外键，关联goods表
	增加一个orders_id 订单流水号 作主键
	向表里面添加记录测试时，对应字段要修改
*/
create table orders (
    orders_id int primary key auto_increment,
    goods_id int,
    good_name varchar(64), -- 利用合理的字段冗余加快查询速度，垃圾冗余则不同
    buy_number int
);

 #向商品表中添加几条记录,
insert into goods values (null,'nokiaN85',2000,35),
                        (null,'iphone4S',4500,30),
                        (null,'Lnmia',5000,40),
                        (null,'samsung',4200,20);

select * from goods;

insert into goods values (null, 'hwp50', 6000, 35);

select * from orders;

/*
	其中delimiter 定好结束符为"$$", 然后最后又定义为";", MYSQL的默认结束符为";".
	详细解释:
	其实就是告诉mysql解释器，该段命令是否已经结束了，mysql是否可以执行了。
	默认情况下，delimiter是分号;。在命令行客户端中，如果有一行命令以分号结束，
*/

-- 栗子
# 当添加一条订单记录时，修改对应的商品的库存，写成个固定值
delimiter $$
create trigger insert_order_trigger1
before insert on orders
for each row
begin
    update goods set goods_number = goods_number - 1 where goods_id = 1;
end $$
delimiter ;


select * from orders;
select * from goods;

insert into orders values (null, 1, 'nokiaN85', 3);
insert into orders values (null, 1, 'iphone4s', 1);


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
show triggers;

delimiter $$
create trigger insert_order_trigger23
before insert on orders
for each row
begin
    declare number int;
    set number = (select goods_number from goods where goods_id = new.goods_id);
    if (new.buy_number <= number)
    then update goods set goods_number = goods_number - new.buy_number where goods_id = new.goods_id;
    end if;
end $$
delimiter ;

insert into orders values (null, 4, 'samsung', 8);

select * from goods;
select * from orders;


# 查看触发器
show triggers;

# 删除触发器
drop trigger if exists insert_order_trigger23;



-- 解决库存不够时，不能出现订单可以添加但是库存不减少的问题
delimiter $$
create trigger tr_insert1
before insert on orders
for each row
begin
    declare stock int;
    set stock = (select goods_number from goods where goods_id = new.goods_id);

    if new.buy_number > stock
        then signal sqlstate 'HY000' set message_text = '库存不够';
    else
        update goods set goods_number = goods_number - new.buy_number where goods_id = new.goods_id;
    end if;
end;
delimiter ;


-- 删除商品时 去检测订单表中是否有相应的记录 有就不删除
delimiter $$
create trigger trg_del
    before delete on goods
    for each row
    begin
        declare flag varchar(25);
        set flag = (select good_name from orders where goods_id = old.goods_id);

        if flag is not null
            then signal sqlstate 'HY000' set message_text = '不能删除，还有订单未处理';
        end if;
    end $$
delimiter ;

drop trigger trg_del;

insert into orders values (null, 4, 'samsung', 8);

select * from goods;
select * from orders;

delete from goods where goods_id = 3;