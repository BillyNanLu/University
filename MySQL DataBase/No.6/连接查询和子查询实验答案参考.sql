-- 1
-- 以下实验操作在【studentinfo】数据库中完成。数据库源文件在后面附件



#【练习1】显示所有学生参加考试的情况，要求：未参加考试的学生其成绩显示为NULL。

  SELECT * FROM 
  student t1 LEFT JOIN sc t2 ON t1.sno=t2.sno
	INNER JOIN course t3
	ON t2.cno=t3.cno
  ORDER BY t1.sno;
  
  

#【练习2】采用外连接查询的方式，查询未参加任何课程考核的学生信息
#（即学号只在student表而不在sc表中出现）。

  SELECT * FROM 
  student t1 LEFT JOIN sc t2 ON t1.sno=t2.sno
    WHERE t2.sno IS NULL
    
 SELECT * FROM 
  student WHERE sno  
  IN( 
	SELECT sno FROM sc WHERE grade IS NULL
	);

#【练习3】采用外连接查询的方式，查询未安排考核的课程信息
#（即课程号只在course表而不在sc表中出现）。
  course t1 LEFT JOIN sc t2
  WHERE t1.stuid IS NULL
  
  SELECT * FROM course t1 LEFT JOIN sc t2 
  ON t1.cno = t2.cno
  WHERE t2.cno IS NULL;
  
  SELECT * FROM course WHERE cno 
	NOT IN(SELECT DISTINCT cno FROM sc);


#【练习4】利用子查询方式，查询未参加任何课程考核的学生信息
#（即学号只在student表而不在sc表中出现）。

SELECT * FROM student WHERE sno NOT IN (SELECT DISTINCT sno FROM sc);



#【练习5】利用子查询方式，查询未安排考核的课程信息
#（即课程号只在course表而不在sc表中出现）。

  NOT IN 

#【练习6】查询成绩大于平均成绩的学生学号。

SELECT sno FROM sc WHERE grade > 
	(
		SELECT 	AVG(grade) FROM sc
	);

#【练习7】对课程号为2的课程查询该课程成绩大于平均成绩
#（课程号为2的平均分）的学生学号。
# ps:就是在6的基础利用where过滤哈
SELECT sno FROM sc WHERE grade >(
	SELECT AVG(grade) FROM sc WHERE cno=2
) AND cno=2;

SELECT * FROM sc WHERE cno=2


-- 【练习8】查询"公文写作"课程高于该课程平均成绩(课程名称为"公文写作"的平均分）的学生学号、姓名。
-- 找出选了“公文写作”这门课的学生的学号姓名
 
SELECT t1.sno,t2.cno,t1.sname,t2.`grade`,t3.cname
FROM 
	student t1 INNER JOIN sc t2
	ON t1.sno=t2.sno 
	INNER JOIN course t3
	ON t2.`cno`=t3.`cno`
	WHERE t3.cname='公文写作'	
	
	AND t2.`grade`>
	(
		SELECT AVG(grade) FROM sc WHERE cno=
			(
				SELECT cno FROM course WHERE cname='公文写作'
			)
	);


		
/*		
SELECT t1.sno,t2.cno,t1.sname,t2.`grade`,t3.cname FROM 
	student t1 INNER JOIN sc t2
	ON t1.sno=t2.sno 
	INNER JOIN course t3
	ON t2.`cno`=t3.`cno`
	INNER JOIN 
	
	(
		SELECT cno,AVG(grade) avgscore FROM sc GROUP BY cno

	) AS t4
	
	ON t4.cno=t3.cno AND t2.`grade`> t4.avgscore
	WHERE t3.cname='公文写作'  
	;	
*/


	













#【练习9】如果存在一名学号为0003的学生，则显示他在student表中所有信息；如果不存在，则不显示。

SELECT * FROM student
WHERE EXISTS (SELECT sno FROM student WHERE sno =0003);


SELECT * FROM student t1
WHERE EXISTS (SELECT * FROM sc t2 WHERE t2.sno=t1.sno );


#【练习10】如果student表中存在sno字段取值为202008001的记录，
#则查询student表中sdept字段等于“网络系”的记录。

SELECT * FROM student 
WHERE sdept= '网络系' AND EXISTS(SELECT * FROM student WHERE sno=202008001);

#【练习11】查询student表中是否有网络系的学生，且其年龄不小于（大于等于）通信系年龄最小者？
SELECT * FROM student 
WHERE sdept= '网络系' 
AND sbirthday<=ANY(SELECT sbirthday FROM student WHERE sdept= '通信系')
ORDER BY sbirthday;

use studentinfo;
#【练习12】查询年龄最小的学生其基本信息。
SELECT * FROM student 
WHERE sbirthday>=ALL(SELECT sbirthday FROM student);
delete from student where sbirthday is null;

#【练习13】用student表和sc表查询学号只在student表中出现过，并且未在sc表中出现过的学生基本信息。
-- 这个题和第2题重复了


#【练习14】查询student表，按照系别进行分组，
#显示每个分组中年龄最小和最大的学生基本信息。
SELECT t1.* FROM student t1
INNER JOIN
	(
		SELECT sdept,
			MAX(sbirthday) AS minage,
			MIN(sbirthday) AS maxage
		FROM student
		GROUP BY sdept
	) 
	t2

ON t1.sdept=t2.sdept
AND(t1.`sbirthday`=t2.maxage OR t1.`sbirthday`=t2.minage )
ORDER BY t1.`sdept`;


SELECT * FROM student t1
INNER JOIN
		(SELECT sdept,
			MAX(sbirthday) AS minage,
			MIN(sbirthday) AS maxage
		FROM student
		GROUP BY sdept) AS t2
ON t1.sdept=t2.sdept AND (t1.sbirthday=t2.minage OR t1.sbirthday=t2.maxage)
ORDER BY t1.`sdept`;
