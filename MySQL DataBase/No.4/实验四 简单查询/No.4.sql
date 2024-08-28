use companysales;


SELECT salary FROM employee WHERE employeename = "蔡慧敏";


SELECT * FROM employee WHERE salary > 3000;


SELECT employeename, sex , salary FROM employee WHERE salary < 3400 AND sex = '女';


SELECT * FROM employee WHERE salary BETWEEN 5500 AND 7500;


SELECT * FROM product WHERE productstocknumber BETWEEN 2000 AND 4000;


SELECT * FROM Sell_order WHERE employeeid IN (1,5,7);


SELECT * FROM employee WHERE employeename LIKE "章%";


SELECT * FROM employee WHERE employeename LIKE "%利%";


SELECT * FROM employee WHERE employeename NOT LIKE "李%";


SELECT companyname, contactname, phone FROM customer WHERE phone LIKE "0577__8%";