# 1.查询同时存在1课程和2课程的情况
  select studentId from student_course where courseId  ='1' or courseId  = '2' group by studentId having count(*)=2;
# 2.查询同时存在1课程和2课程的情况
  select studentId from student_course where courseId  ='1' or courseId  = '2' group by studentId having count(*)=2;
# 3.查询平均成绩大于等于60分的同学的学生编号和学生姓名和平均成绩
  SELECT studentId,name,avg_sr FROM (SELECT studentId,avg(score)  avg_sr from student_course  GROUP BY studentId HAVING avg(score) >= 60) t1 LEFT JOIN student t2 on t1.studentId = t2.id;
# 4.查询在student_course表中不存在成绩的学生信息的SQL语句
  select * from student where id not in (select distinct(studentId) from student_course);
# 5.查询所有有成绩的SQL
  select distinct(studentId),name,age,sex from student_course t1 left join student t2 on t1.studentId = t2.id;
# 6.查询学过编号为1并且也学过编号为2的课程的同学的信息
  select t1.* from student t1 right join (select studentId from student_course where courseId  ='1' or courseId  = '2' group by studentId having count(*)=2) t2 on t2.studentId = t1.id;
# 7.检索1课程分数小于60，按分数降序排列的学生信息
  select t1.* from student t1 right join (select studentId from student_course where courseId = '1' and score < 60 order by score) t2 on t2.studentId = t1.id;
# 8.查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排列
  select courseId,avg(score) from student_course group by courseId order by avg(score) desc ,courseId
# 9.查询课程名称为"数学"，且分数低于60的学生姓名和分数
  select name,score from (select studentId,score  from student_course where cast(courseId  as int) = (select id from course where name = '数学' ) and score < 60 ) t1 left join student t2 on t2.id = t1.studentId;