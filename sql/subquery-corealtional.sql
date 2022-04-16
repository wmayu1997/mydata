--subquery-corealtional--
/*
1.inner query is does not dependent on outer query in subquery
2.inner query is dependent on outer query in coreational



create table employee(eid int identity (1,1) primary key,ename varchar(30) not null,emobile varchar(14) unique ,eaddress varchar(90),salary int);

insert into emp values('rohan',90214786413,'nashik',20000);

*/

select * from emp
--Q.find out the 2nd largested  salary?
--lect max(salary) as newsal from emp where salary<(select max(salary)from emp)

--Qfind out 2nd minimum salary

--elect min(salary)as newsal from emp where salary>(select min(salary)from emp)

--Q. find out ename thoes name staring with r which having salary>15000
/*
select name from emp where name like 'r%' and (select salary from emp where salary>15000)

*/


--corealtional  query

 select * from Emp_details

 select * from emp

 --select * from Emp_details where exists ( select * from emp,Emp_details where emp.eid=Emp_details.id)

 -- select * from Emp_details where not exists ( select * from emp,Emp_details where emp.eid=Emp_details.id)

 select * from bank1