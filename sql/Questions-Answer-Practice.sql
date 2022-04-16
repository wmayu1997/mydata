
--(Create 2 tables- Emp_details col Name- Id, Name, city  2nd table dept_details col name- dept, salary,id )

 /*
create table Emp_details(
id int primary key identity(1,1),
ename varchar(50),
city varchar(40),
)
 
insert into Emp_details values('sujay','pune');
insert into Emp_details values('Govind','shirdi');
insert into Emp_details values('suraj','koprhgav');
insert into Emp_details values('mayur','pune');
insert into Emp_details values('David','mumbai');
insert into Emp_details values('Diana','Nashik');



create table  dept_details(
id int primary key identity(101,1),
dept_name varchar(40),
salary int)

--insert into dept_details values('Mcs',30000);
insert into dept_details values('Bcs',15000);
insert into dept_details values('Btech',60000);
insert into dept_details values('Mtech',80000);
insert into dept_details values('BE',40000);
 */

 select * from dept_details

 select * from Emp_details

 --Q. How to display employees whose salary between 15000 and 25000 without using between operators?

 --select * from dept_details where salary>15000 and salary<250000

/*
 101   Mcs	30000
103	   Btech	60000
104    Mtech	  80000
105	   BE	40000

*/
--Q. Display employees whose COMMISION_PCT is other than 0.10.


--Q. Delete employees from department Purchasing and salary less than 25000.

--delete from dept_details where salary <=25000;


--Q. Display the list of employees having first name ‘David’ or ‘Diana’ without using 'LIKE'.
/*
select * from emp_details where ename ='David' or ename='Diana'

5	David	mumbai
6	Diana	Nashik
*/

--(Create table according to this, COL name EID, Name, dept, Salary, Hiring_date)
/*
create table emp(
eid int primary key identity(1,1),
name varchar(40),
dept varchar(30),
salary int,
hiring_year int)

insert into emp values('raj','science',50000,'2021');
insert into emp values('om','commerce',25000,'2002');
insert into emp values('ram','Arts',15000,'2013');
insert into emp values('sai','math',20000,'2004');
insert into emp values('dev','Physics',30000,'2012');
*/
insert into emp values('rohan',null,20000,'2022');
insert into emp values('rohini','chemistry',0,'2021');
 insert into emp values('rakhi','physics',20000,'2022','22');
insert into emp values('rahul','chemistry',50000,'2021','24');


select * from emp

--Q. Display employees having salary less than 30000 and hiring year greater than 2005. 

select * from emp where salary<30000 and hiring_year>'2005'

 --3	ram	Arts	15000	2013

 --How to fetch salary column whose values are increses to 5000 rs.
 ------ARITHMETIC CLAUSE-ADDITION, SUBSTRACTION, MULTIPLICATION AND DIVISION

 select * from emp
 select *,new_add=salary+5000,new_sub=salary-5000,new_mul=salary*0.5,new_div=salary/5  from emp;

 --How to fetch multiple records of new columns?------------------
 --MULTIPLE NEW COOLUMNS IN TERMS OF ADDITION, SUBSTRACTION, MULTIPLICATION AND DIVISION
  select *,new_add=salary+5000,new_sub=salary-5000,new_mul=salary*0.5,new_div=salary/5  from emp;


  --How to sort data in a particular column in ascending order & descending order?

  select * from emp order by salary desc
  select * from emp order by hiring_year
  select * from emp order by dept asc


  --If in a particular column NULL value is present then after order by 
  --(asending & descending) what will be the position of NULL value?

  select * from emp order by dept --first position
    select * from emp order by dept desc--last position

--How to fetch a particular column whose value is NULL?
	select * from emp where dept is NULL

--How to fetch a columns whose values are not NULL?
		select * from emp where dept is not NULL

--How to fetch a particular column whose value is zero?

select * from emp where salary =0

--How to delete complete records or rows without deleting column or structure?
 delete  from employee
 select * from employee

 --How to delete a particular record or row?

 delete from emp where dept is null

 --How to delete complete structure or all columns?

 drop table employee

 --How to delete complete recoords or rows?---
 --HERE FIRST BOTH RECORDS AS WELLL AS STRUCTURES DELETED AT THE SAME TIME THE STRUCUTRES RECREATED.

  drop table department
 /* 
 truncate table department
 delete from department
 insert into department values(101,'IT')
  insert into department values(102,'IT Cloud Computing')
   insert into department values(103,'IT BIg Data')
   insert into department values(104,'IT Data Science')

 select * from department
 */

 --How to update or change the record of a particular column?

 select * from emp
 
 update emp set name='krishna' where name='raj'


 --How to add new columns in a current table?

 alter table emp add  age int;

 alter table emp add gender varchar(20)


 --How to delete a particular column ?

 alter table emp drop column  age

 --How to delete  two or more columns ?

 select * from emp

 alter table emp drop column age,gender

 --How to change datatype i.e varchar to integer or integer to varchaar?

 alter table emp alter column age varchar(20)

 --How to fetch minimum value (salary) from table?

 select min(salary) from emp

 --How to fetch minimum, maximum, average and sum of Emp_salary and showing column name for each

 select min(salary)as new_min,max(salary)as new_max,avg(salary)as new_avg,sum(salary)as new_sum from emp

 --How to fetch a count of a particular column records?
  select count(eid)from emp

  --How to fetch total records in a given table?
    select count(eid)from emp

--If we will take count OF Emp_id then whether NULL Values included in total count or not?
 
 create table t1 (id int,name varchar(20))
 insert into t1 values(null,'kiran');
 select * from t1;
 select count(id)from t1

--How to fetch top two records ?

select top 2 * from emp;

--How to fetch top two records of a particular column?
select top 2 name from emp

--How to fetch top five records in ascending order?

select top 5 name from emp order by  name asc

--How to fetch top six records in descending order?

select top 6 name from emp order by name desc

--How to fetch unique value of a particular column from table?



--How to fetch count of a uqnique value of a particular column from table?

--How to fetch count of a particular record of a particular column from all records?

--How to fetch count of a unique value of particular record of a particular column from table?

  select count(distinct(city)) from Emp_details

--If we dont required duplicate values or unique values or NULL values of a particular coulmn?

--->distinct should be used

--If we dont require duplicate value or a unique value of a particular coumn?
select distinct(city) from Emp_details

select * from Emp_details

--If we dont require duplicate values or a uniuqe values for more than one columns?

select distinct(city) from Emp_details

--If we dont want null value for a particular coulmn or  number of column? (repition of records of any coulmn is allowed)
select * from  emp where eid is not null

--If we want emp_sal>20000 ?
select * from emp where salary>20000

--If we require default name of a particular column?

create table t2(id int,name varchar(30) default 'sai') 
select * from t2
insert into t2 values(3,0);
insert into t2(id)values(2)

--If we want autometic increament of particular column (emp_id ) like 1,2,3,4?
 create table t3 (id int identity(1,1),name varchar(30));
 insert into t3 values('rahj');
insert into t3 values('sAI')
select * from t3
drop table t3
--If we want autometic increment of particular column (emp_id) like 10,20,30,40?

 create table t3 (id int primary key identity(10,10),name varchar(30));

 --How to create relation between two table? (in two table atleast one column should be same nane and same datatype)

 -->by using foreign key constraints

create table t4(tid int identity(4,4),name varchar(30),id  int foreign key references t3 (id)) 

--IF WE WANT AGGREGATE (MIN/MAX/AVG/COUNT) OF PARTICULAR COLUMN CORRESPONDING TO GROUP BY OF ANOTHER COLUMN??

select * from Emp

select  hiring_year, max(salary)as new_sal from emp group by hiring_year  

 select * from emp
 select * from dept_details
 select * from Emp_details

 --If we want count of group by column having specific condition?

 select city ,count(city)as countcity from Emp_details group by city

 --If we want to fetch sum of emp_salary of kiran, sanket,yogesh 
 --group by emp_name having sum of salary greater than 40000 order new_salary in ascending order

 select * from info1

select name,sum(salary)as new_sal from info1 where name in('rojana','om','rohini')
group by name having sum(salary)>40000 order by new_sal asc


--How to fetch second highest emp_salary from employee_details table?
with new_table as
(select *,dense_rank()over( order by salary)as new_sal from info1)
select * from new_table where new_sal=2

--or
select max(salary)as new_salary from info1 where salary<(select max(salary)as new_salary from info1)

--How to fetch second minimum emp_salary fron employee_details table?

select min(salary)as new_salary from info1 where salary> (select min(salary)as new_salary from info1)

--How to fetch third highest emp_salary from employee_details table?
with ntable as
(select *, DENSE_RANK()over(order by salary desc)as newsal from info1)
select * from ntable where newsal=3

--How to fetch third minimum emp_salary from employee_details table?
with ntable as
(select *, DENSE_RANK()over(order by salary )as newsal from info1)
select * from ntable where newsal=3
select * from info1

--How to fetch emp_salary excluding maximumn emp_salary?

select * from info1 where salary <(select max(salary)as newsal from info1)


--Fetch emp name who are out of mumbai and whose age between 30 and 40

select * from info1 where city != 'mumbai' and age between 30 and 40

--fetch students name who are from maharashtra and whose language is hindi ?

select * from student where state='maharashtra' and langauge='hindi'

select * from student

alter table  student add state varchar(30),langauge varchar(30)

update student set state='maharashtra' where sname='rihan'

update student set langauge='marathi' where sname='rihan';

insert into student values(102,'raj','nashik','maharashtra','hindi')
insert into student values(103,'rohan','panji','goa','hindi')
insert into student values(104,'ram','surat','Gujrat','gujrathi')
insert into student values(105,'rajveer','jaipur','rajsthan','hindi')




--75	How to relate customer table to orders table if column c_id is same in both table? Or 
--select*from customer as c where exists (select*from orders as o where c.c_id=o.c_id);-----------HERE FOR TABLE CUSTOMER (C) NAME ASSIGNED & FOR TABLE ORDERS (O) NAME ASSIGNED.
select*from customer as c where exists (select*from order1 as o where c.cid=o.cid)

create table customer (cid int primary key identity(1,1),cname varchar(30));
create table order1(oid int primary key identity(101,1), product_name varchar(30),cid int foreign key references customer(cid))


insert into customer values('lalit patil');
insert into customer values('omkar patil');
insert into customer values('rohan pawar');
insert into customer values('sachin shelke');

insert into order1 values('rice',1);
insert into order1 values('onion',1);
insert into order1 values('corn',3);
insert into order1 values('potatos',2);
insert into order1 values('shimla',2);
insert into order1 values('apple',3);
insert into order1 values('shimla',4);
insert into order1 values('apple',4);
insert into order1 values('oranges',1);


select * from customer
select * from order1

--find name of customer who bye apple

select c.cid,o.oid,cname,product_name from customer as c,order1 as o where c.cid=o.cid and product_name='apple'

--find the customer who does not buy any product

select * from customer where not exists(select * from customer as c,order1 as o where c.cid=o.cid)
 

--How to relate ORDERS table to CUSTOMER table if column c_id is same in both table?

select * from customer join order1 on customer.cid=order1.cid

--How to fetch records which is not exists in either table?
select * from order1;
select * from customer;
select * from customer where not exists(select cname,product_name from order1 as o ,customer as c where c.cid=o.cid  )

--How to fetch a specific column records whose records are same in both table?
select * from customer as c left join order1 as o on c.cid=o.cid