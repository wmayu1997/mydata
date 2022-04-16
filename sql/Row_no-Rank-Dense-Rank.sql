/*select * from emp;
select * from Emp_details
select * from employee
*/
/*
create table info1(id int identity(101,1),name varchar(10),gender varchar(30),age int,salary int,city varchar(30));
insert into info1 values('rohan','male',23,30000,'pune')
insert into info1 values('Mohina','Female',33,70000,'pune')
insert into info1 values('Raj','male',30,60000,'Nashik')
insert into info1 values('Rani','Female',31,50000,'Shirdi')
insert into info1 values('Omkar','male',20,40000,'Mumbai')
insert into info1 values('rojana','Female',36,84000,'pune')
insert into info1 values('Rajveer','male',31,50000,'Shirdi')
insert into info1 values('Om','male',20,40000,'Mumbai')
insert into info1 values('rohini','Female',36,84000,'pune')
*/
select * from info1

--1.Row_Number:
select *,ROW_NUMBER() over (order by age desc)as new_row from info1;

--2.Rank
select *,RANK() over (order by age desc) as new_row from info1;

--3.Dense_Rank
select *,DENSE_RANK() over(order by age )as new_row from info1


select * from info1
select *,ROW_NUMBER()over (order by age desc) as new_row1,RANK()over (order by age desc)as rank1,DENSE_RANK()over(order by age desc) as dense_rank1 from info1


--Apply for salary

select *,ROW_NUMBER() over(order by salary desc) as new_salary from info1
select *,Rank() over (order by salary desc)as new_salary1 from info1
select *,Dense_Rank() over (order by salary desc) as new_salary2 from info1
select *,ROW_NUMBER() over(order by salary desc)as new_sal1,RANK()over(order by salary desc)as new_sal2,DENSE_RANK()over(order by salary desc)as new_sal3 from info1
/*
106	rojana	Female	36	84000	pune	1	1	1
109	rohini	Female	36	84000	pune	2	1	1
102	Mohina	Female	33	70000	pune	3	3	2
103	Raj	male	30	60000	Nashik	4	4	3
104	Rani	Female	31	50000	Shirdi	5	5	4
107	Rajveer	male	31	50000	Shirdi	6	5	4
108	Om	male	20	40000	Mumbai	7	7	5
105	Omkar	male	20	40000	Mumbai	8	7	5
101	rohan	male	23	30000	pune	9	9	6
*/

--create temp table using with keyword

--syntax: With  temp_table_name as 
--(query)
--select * from temp_table_name where(<condition>)

--find the second highest salary name of emp

with info4 as (select *,DENSE_RANK()over(order by salary desc)as new_rank from info1)
select * from info4 where new_rank='3';

with info2 as (select *,DENSE_RANK()over(order by salary desc)as new_rank from info1)
select * from info2 where new_rank='5';

with info3 as (select *,DENSE_RANK()over(order by salary desc)as new_rank from info1)
select * from info3 where new_rank='6';


select * from info1;

--Partition by :is similar to group by clause that group a column create and partition it as per needed 

--Q.find the first lower age of emp in citywise 

with new_temp_table as
(select * ,DENSE_RANK()over(partition by city  order by age)as new_rank from info1)
select * from new_temp_table where new_rank='1'
 

--Q.find the max salary

select  MAX(salary)as new_max from info1

--Q.find max salary citiwise

select name,city, max(salary)as new_sal from info1 group by city,name order by new_sal desc
select * from info1;

--Q.find top 3 record of hightest age

select top 3 * from info1 order by age desc


--Q.find the max salary genderwise and display gender in alternate fromat

with new_table as
(select *,DENSE_RANK() over(partition by gender order by salary desc)as rank from info1)
select * from new_table

--Q.find the max salary genderwise and display gender in alternate fromat
select * ,DENSE_rank()over(partition by gender order by salary )as rank from info1;
select * ,ROW_NUMBER()over(partition by gender order by salary)as rank from info1;
select * ,Rank()over(partition by gender order by salary)as rank from info1;

with new_table as
(select * ,ROW_NUMBER()over(partition by gender order by salary )as rank from info1)
select  *  from new_table order by rank,gender ;

 

select * from info1

--Q find the duplicate value of city using row_number

select city from info1 group by city having count(city)>1

with new_table as
(select city,ROW_NUMBER() over( partition by city order by city )as new_city from info1)
select city from new_table group by city having count(new_city)>1


--Q delete the duplicate value of  city using row_number
 with new_table as
 (select city,ROW_NUMBER()over(partition by city order by city)as new_city from info1)
 delete new_table where  new_city>1

 select * from info1

  