-- MySQL简单编程题作业内容 ---

/*创建学生表（student）*/
create table student (
id varchar(10),
name varchar(20),
age smallint,
sex char(2));
/*把数据插入学生表（student）*/
insert into student(
values('001','张三','18','男'),
      ('002','李四','20','女'));

     
/*创建考试科目表（subject）*/
create table subject (
id varchar(10),
subject varchar(10),
teacher varchar(20),
description varchar(30));
/*把数据插入考试科目表（subject）*/
insert into subject(
values('1001','语文','王老师','本次考试比较简单'),
      ('1002','数学','刘老师','本次考试比较难'));
      
      
/*创建成绩表（score）*/
create table score (
id varchar(10),
student_id varchar(10),
subject_id varchar(10),
score numeric );
/*把数据插入成绩表（score）*/
insert into score(
values('1','001','1001','80'),
      ('2','002','1002','60'),
	  ('3','001','1002','70'),
	  ('4','002','1002','60.5'));
