SHOW ENGINES;


SHOW VARIABLES LIKE 'character%';


CREATE DATABASE IF NOT EXISTS jdscDB;


USE jdscDB;


CREATE TABLE category(
	category_id INT(11) NOT NULL COMMENT '商品类型编号，主键，自动增长',
	category_name VARCHAR(20) NOT NULL COMMENT '商品类型名称',
	category_desc VARCHAR(40) NULL COMMENT '商品类型描述'
);


INSERT INTO category(category_id, category_name, category_desc)
	VALUES ('1', '冰箱', '家用电器'),
		('2', '洗衣机', '家用电器'),
		('3', '空调', '家用电器'),
		('4', '电视', '家用电器'),
		('5', '厨房电器', '家用电器'),
		('6', '热水器', '家用电器');
SELECT * FROM category;


CREATE TABLE users(
	user_id CHAR(8) NOT NULL PRIMARY KEY COMMENT '用户编号',
	user_name VARCHAR(20) NOT NULL COMMENT '用户名',
	user_password CHAR(8) NOT NULL COMMENT '密码',
	address VARCHAR(40) NOT NULL COMMENT '用户地址',
	phone CHAR(11) NOT NULL COMMENT '联系电话',
	birthday DATE NULL COMMENT '出生日期',
	email VARCHAR(20) NULL COMMENT '电子邮箱'
);


INSERT INTO users(user_id, user_name, user_password, address, phone, birthday, email)
	VALUES ('000001', '刘梅', '123456', '湖南株洲田心区', '18087902345', '1990/10/10', 'liumei@126.com'),
		('000002', '李志军', '126789', '广西南宁市', '18902876760', '1989/12/21', 'lizhijun@126.com'),
		('000003', '王宇宁', '123567', '浙江杭州市', '13589017689', '1985/10/11', 'wyning@126.com'),
		('000004', '吴敏杰', '123567', '广东珠海市', '13607389021', '1982/9/11', 'wuminjie@126.com'),
        ('000005', '陆楠', '123456', '上海市', '15026547056', '2002/12/30', 'lunan96789@gmail.com');
SELECT * FROM users;


CREATE TABLE goods(
    goods_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '商品编号',
    goods_name VARCHAR(60) NOT NULL COMMENT '商品名称',
    goods_model VARCHAR(30) NOT NULL COMMENT '商品型号',
    category_id INT(11) NOT NULL COMMENT '类型编号',
    goods_desc VARCHAR(200) NULL COMMENT '商品描述',
    stock_number INT(11) NOT NULL COMMENT '库存数量',
    goods_price FLOAT NOT NULL COMMENT '商品价格'
);


INSERT INTO goods(goods_id, goods_name, goods_model, category_id, goods_desc, stock_number, goods_price)
    VALUES ('2', '容声冰箱', 'BCD-526WD11HY', '1', '珍珠白；对开门；风冷；3级能效；电脑控温；自动除霜', '55', '2799'),
           ('3', '西门子冰箱', 'BCD-610W', '1', '变频风冷无霜 独立双循环 LED显示 对开门冰箱（浅金色', '70', '5888'),
           ('4', '海尔571升云智能大对开', 'BCD-571WB', '1', '风冷无霜 中门可变温 智能杀菌 大冷冻力空间家用冰箱', '60', '2499'),
           ('5', '美菱冰箱', 'BCD-206L3CT', '1', '变频；三门冰箱 静音大容积 节能省电 软冷冻(银色)', '70', '1499'),
           ('6', '方太_触控式抽油烟机燃气灶', 'BEX-893CD', '5', '方烟灶套餐 EM71T+HC26BE 风量18.5立方', '55', '5799');
SELECT * FROM goods;


CREATE TABLE orders(
    order_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '订单编号',
    user_id CHAR(8) NOT NULL COMMENT '用户编号',
    order_date DATETIME NOT NULL COMMENT '订购时间',
    total_price FLOAT NOT NULL COMMENT '订购总金额',
    order_status CHAR(1) NOT NULL COMMENT '订单状态'
);


CREATE TABLE order_item(
    order_id INT(11) NOT NULL COMMENT '订单编号',
    goods_id CHAR(8) NOT NULL COMMENT '商品编号',
    order_number INT(11) NOT NULL COMMENT '订购数量',
    PRIMARY KEY (order_id, goods_id)
);