-- 插入记录  
   insert into student values('003','科比','37','男');
   insert into student('id','name','sex') values('004','詹姆斯','男');
-- 修改记录  
   update student set age = '35' where name = '詹姆斯';
--  删除记录  
   delete from student where name = '科比';
--  查询记录  
   select * from student where id = '002';
   select count(1) from student ;