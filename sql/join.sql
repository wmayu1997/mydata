/*

intersect and join perfome same operation only diff is intersect have limited record

*********Join*********
1.inner join
2.outer join:   a.left b.right c.full
3.Equi join
4.self join
5.cross join
*/

--Create Table A (Aid int, Name varchar(20))
--Create Table B (Bid int, Name varchar(20),Aid int)
/*
insert Into A values(1,'Sam')
insert Into A values(2,'tom')
insert Into A values(3,'harry')
insert Into A values(4,'katich')
insert Into A values(5,'kate')


insert Into B values(11,'harry',3)
insert Into B values(12,'katich',4)
insert Into B values(13,'kate',5)
insert Into B values(14,'mate',6)
insert Into B values(15,'sat',7)
 */

 --select * from A 
  --select * from  B

  --@@1.inner join@@--

  --syntax: select * from table1 join table2 on table1.col=table2.col


  --select A.name ,B.Bid from A join B on A.Aid=B.Aid;

  --select A.aid from a join b on a.aid=b.aid
  --select b.aid from a join b on a.aid=b.aid

  --select B.bid ,B.Aid,B.name from B Join A on b.Aid=A.Aid

  --@@2.OUTER JOIN@@--

  --A]left outer join:innerjoin+left side reords

  --select * from a left join b on a.aid=b.aid
  --select a.aid,a.name,b.name,b.aid from a left join b on a.aid=b.aid

  --B]right outer join:innerjoin+right side records

  --select * from a right join b on a.aid =b.aid

  --select a.aid,a.name,b.aid from a right join b on a.aid =b.aid

    --A]Full join:innerjoin+left side reords+right side records

	--select * from a full join b on a.aid=b.aid


 /* Create Table C (Cid int, Name varchar(20),Bid int)
insert Into C values(21,'harry',13)
insert Into C values(22,'katich',14)
insert Into C values(23,'kate',15)
insert Into C values(24,'mate',16)
insert Into C values(25,'sat',17)

3 table inner join syntax:

select * from table1 join table2 on table1.col=table2.col join table3 on table2.col=table3.col

*/
--select * from c

--select * from a join b on a.aid=b.aid join c on  b.bid=c.bid

--left outer join

--select * from a left join b on a.aid=b.aid left join c on b.bid=c.bid

--right outer join

--select * from a right join b on a.aid=b.aid right join c on b.bid=c.bid


--Full Join

--select * from a full join b on a.aid=b.aid full join c on b.Bid=c.Bid


--create table EMP_new (id int, name varchar (10),Company varchar (10),Work varchar (10));
/*
insert into EMP_new values (1,'Amit','Info','pune')
insert into EMP_new values (2,'Puja','Tcs','Mumbai')
insert into EMP_new values (3,'Poonam','Tech','Pune')
insert into EMP_new values (4,'Abhi','Logic','Nagpur')
insert into EMP_new values (5,'Kirti','Lim','Nagar')
*/
select * from EMP_new

--create table Job (salary int,base varchar (10),id int)
/*
insert into job values (10000,'Pune',1)
 insert into job values (40000,'Pune',1)
insert into job values (20000,'Mumbai',3)
insert into job values (30000,'Nagpur',4)
insert into job values (40000,'Pune',5)
insert into job values (35000,'Nagar',2)
*/
select * from Job;


  --@@3.EQUI JOIN@@--

  --we do not used join an on keyword 
  --syntax:select * from table1,table2 where <condition>
  --1.in inner join we used join and on keyword via equi join we can'nt use join and on keyword
  --2.','used to join the two table and 'where' condition used for applying multiple condition

  --Q.find out the name of employee who work and base are in same location?
 
 
 --select * from Emp_new,job where EMP_new.id=job.id and EMP_new.Work=Job.base;


   --@@4.Cross JOIN@@--

   --syntax: select * from table1 cross join table2

   --it perform cartesion product like if we consider 3 record  and 5 record another table so 3*5 =15 its output

   select * from EMP_new cross join job 


     --@@5.self join@@--
	 --it have perform only one table self join
	-- syntax: select * from table1 as new1 ,table2 as new2 where <condition>

 -- Create table SELF_TEST_EMP(EID int, ENAME varchar(20),ManagerID varchar(20))
  /*
insert into SELF_TEST_EMP values(1,'Shivam',2)
insert into SELF_TEST_EMP values(2,'krishna',4)
insert into SELF_TEST_EMP values(3,'meera',NULL)
insert into SELF_TEST_EMP values(4,'radha',2)
insert into SELF_TEST_EMP values(5,'bali',1)
*/
select * from SELF_TEST_EMP

--select * from self_test_emp as e1,self_test_emp as e2 where e1.eid =e2.managerid

--select e1.ename,e2.managerid from self_test_emp as e1,self_test_emp as e2 where e1.eid =e2.managerid

--Q.display name and respected manager name (self join)

 select s1.ename ,s2.managerid from self_test_emp as s1 ,self_test_emp as s2 where s1.eid=s2.managerid  


create table student(id int primary key identity(1,1),name varchar(30),city varchar(40));

insert into student values('sachin','shirdi');
insert into student values('ram','nashik');
insert into student values('Amit','pune');
insert into student values('Aman','pune');
insert into student values('om','nashik');

select * from student

select s1.name,s2.city from student as s1, student as s2 where s1.id!=s2.id and s1.city=s2.city
/*
name city
ram	 nashik
Amit pune
Aman pune
om	nashik
*/


create table A1(id int );
create table B1(id int );

insert INTO A1 values(1)
insert INTO A1 values(1)
insert INTO A1 values(null)

insert INTO B1 values(1)
insert INTO B1 values(1)
insert INTO B1 values(1)
insert INTO B1 values(null)
insert INTO B1 values(null)

select * from A1
select * from B1

--1.inner join

select A1.id from A1 inner join B1 on A1.id=B1.id

--2.left join

select A1.id from A1 left join B1 on A1.id=B1.id

--3.right join
select A1.id from A1 right join B1 on A1.id=B1.id

--4. full join

select A1.id from A1 full join B1 on A1.id=B1.id

--5.equi join
select A1.id from A1,B1 where  A1.id=B1.id

--6.cross join

select A1.id from A1 cross join B1 

--7.self join

select A1.id from A1,B1 where A1.id=B1.id