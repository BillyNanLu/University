USE studentinfo;

-- 查询student表中的所有数据
SELECT * FROM student;

-- 查询所有学生的姓名、性别、出生日期和系别
SELECT sname, ssex, sbirthday, sdept FROM student;

-- 查询每名学生的学号、姓名和年龄
SELECT sno, sname, ROUND(DATEDIFF(NOW(), sbirthday) / 365) AS 年龄 FROM student;

-- 使用DISTINCT关键字消除sno字段中的重复记录
SELECT DISTINCT sno FROM student;

-- 查询student表中学生的总人数
SELECT COUNT(*) FROM student;

-- 查询每名学生考试的科目总数
SELECT sno, COUNT(cno) AS 考试科目总数 FROM sc GROUP BY sno;

-- 统计sc表中学号为202008001的学生的总成绩
SELECT SUM(grade) FROM sc WHERE sno = 202008001;

-- 计算所有人的平均成绩
SELECT AVG(grade) FROM sc;

-- 查询每名学生的平均成绩
SELECT sno, AVG(grade) FROM sc GROUP BY sno;

-- 查询sc表中的最高成绩
SELECT MAX(grade) FROM sc;