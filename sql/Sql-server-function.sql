--SQL SERVER FUNCTIONS

--1.upper:

select UPPER('mayuri');
select *,UPPER(name)as new_name from info1

--2.lower:
select lower('mayuri');
select *,lower(name)as new_name from info1

--3.initcap:
select initcap('mayu') --shows error used in oracle

--4.substring:

select SUBSTRING('mayur',2,2);
select *,SUBSTRING(name,1,3)as new from info1
--covert uppercase
select *,UPPER(SUBSTRING(name,1,3))as new from info1

--5.length:

select *,len(name) as new_len from info1

--6.reverse:
select *,REVERSE(name)as new_name from info1

--7.replicate:

select *,REPLICATE(name,2) as new from info1

--8.replace:
select *,REPLACE(name,'r','m') as newname from info1

--9.concat: used for varchar only

select *,CONCAT(name,' ',age) as newcol from info1
select *,name+ ' ' +city as newcol from info1 
select *,CONCAT(age,' ',city) as col from info1


--10.trim: 1.ltrim 2.rtrim

select LTRIM('          mayuri')
select RTRIM('mayuri         ')
select TRIM('       mayuri         ')

--11.round: syntax select round(number,len)

select ROUND(34.5,0);
select ROUND(34.8,1);
select ROUND(34.2,2);--/after decimal round figure
select ROUND(34.88,0);--/before decimal round figure


--12.convert

select *,CONVERT(varchar,DOJ) as newdate from DOJ

select CONVERT(varchar,GETDATE())--Apr  6 2022  7:34PM

select CONVERT(varchar,GETDATE(),3)--06/04/22

select CONVERT(varchar,GETDATE(),4)--06.04.22




create table DOJ (id int, NAME varchar(20),DOJ datetime)

insert into DOJ values (1,'Mansa','2020-01-01 10:10:10')
insert into DOJ values (2,'Vasavi','2015-06-01 10:20:10')
insert into DOJ values (3,'Pravlika','2014-04-01 11:10:10')
insert into DOJ values (4,'Jyoti','2017-08-01 12:10:10')
insert into DOJ values (5,'Pushpa','2016-05-01 01:23:10')
insert into DOJ values (6,'Seema',GETDATE())
select * from DOJ
--Write a query find number of employees whose DOB is between 02/05/1970 to 31/12/1975


select count(*) as newcount from DOJ where DOJ between '2015-06-01' and '2020-01-01';



select *  from doj  where id=(select max(id) as lastid from doj)


select * from doj where id=(select min(id) as firstid from doj)


--11.Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.

select * from doj order by name asc, doj desc


--Q30. Write a query to fetch 50% records from the EmployeeInfo table.


select * from doj where id<=(select count(id)/2 as new from doj);


--SQL query to fetch all the employees who are not working on any department.

select * from emp

select * from emp where dept is null

insert into emp values('raj',null,90000,'2021')


select * from emp where  hiring_year between 2002 and 2014



-- Write an SQL query to create an empty table with the same structure as some other table.

 
select * into e1 from emp 
