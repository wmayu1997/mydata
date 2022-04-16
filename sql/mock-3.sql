--what is Group by clause
--Group  by statements are used in conjection witrh aggregate functions to group result-set by one or more columns.
--MIN,MAX,Count,AVG,SUM,
--Syntax:
--select column_name , aggregate_Function(column_name) from Table_NAME
--where Column_name <Condition>
--group by Column_name
select * from customer1
 

--display the number of customer in citiwies

select cust_address,count(cust_id) as newid from customer1 group by cust_address

--The following SQL statement lists the number of customers in each country, sorted high to low:
select cust_address,count(cust_id) as newid from customer1 group by cust_address order by newid desc

---Q.Find the sum of salary of each department?

 select * from employee

 select department,sum(salary) as newsal from employee group by department 

 ----Q.1.How will you display the second highest salary department wise?
 select department, max(salary) as newsal from employee where salary<(select max(salary) from employee)
group by department
--Q.Display the department name with highest salary?
  select department ,max(salary) as newsal from employee group by department order by newsal desc
 
--Q.In group where we can use 'WHERE' clause and Why?



--HAVING Clause
--Having clause is added in SQL because the WHERE clause not used with aggreagate function.
--Syntax:
--select column_name , aggregate_Function(column_name) from Table_NAME
--where Column_name <Condition>
--group by Column_name
--HAVING Aggregate_Function(Column_NAME) operator Value.


--Q. How to display the department wise total salary is greater  than 30000?

select department,sum(salary) as newsum from employee group by department  having sum(salary)>30000

select department,SUM(salary) from employee
--where salary > 30000
group by department
having SUM(salary) > 30000

--By Using Group by and Having Clause we can identify the duplicate records from table.
--To identify the duplicate from Table 
 
 --@@@@@@@Class_10@@@@
 
--SET operator:is used to combine the two more select stament.
 --The number and order of columns must be the same.
 --Data types must be compatible.

--1.UNION:combine the two table into one format .it did  not accpet dupilcate value it select distinct value by default.

 select * from set1
 select * from set2
syntax:select * from set1 union select * from set2

--2.UNION ALL: It also combine tow or more select statement but it can allow duplicate value.
syntax: select * from set1 union all select * from set2
--3.INTERSECT:it will return only common values i.e duplicate value from two or more table.
syntax:select * from set1 intersect select * from set2
--4.EXCEPT:it will return differce in reord i.e it substract from first table two second table

synatx: select * from set1 except select * from set2
synatx: select * from set2 except select * from set1

--date & time function:

select getdate()
select getdate()+1
select getdate()-1

--There are three diffrent functions in SQL to modify or perform any date related task
--1.DATEDIFF()
--2.DATEPART()
--3.DATEADD()

--1.datediff():it used to find the differece between two date it require 3 argument
-- syntax:datediff(interval,date1,date2)

select * from Account_details

select  DATEDIFF(yy,'1997/12/19',getdate());


select ACC_No,ACC_NAME,ACC_OPEN_DATE ,Branch, DATEDIFF(mm,ACC_OPEN_DATE,GETDATE()) as Ageofaccount 
from Account_details
where DATEDIFF(yy,ACC_OPEN_DATE,GETDATE()) >1

select * ,  DATEDIFF(yy,ACC_OPEN_DATE,GETDATE())  as new from account_details



--Q.What is the age of your bank account

select * ,  DATEDIFF(yy,ACC_OPEN_DATE,GETDATE())  as new from account_details


----Q.Calculate the no of accounts which is opened during the current year.

select * ,datediff(yy,acc_open_date,getdate()) as new from Account_details where datediff(yy,acc_open_date,getdate())=0



.--2.DATEPART:it contains 2 argument syntax: datepart(interval,date/coloumn_name)
--This will allow you to display the date part 

select datepart(yy,getdate())

select *,datepart(YY,ACC_OPEN_DATE) as date from Account_details where datepart(YY,ACC_OPEN_DATE) =2022  
 
select * ,DATEPART(mm,Acc_open_date) as date from Account_details where DATEPART(mm,Acc_open_date)=5

select * from Account_details
select count(*) as new from Account_details where DATEPART(yy,Acc_open_date) in ('2014','2022')

--display the name of accountant whoes branch is mumbai
select acc_name,branch,datepart(yy,acc_open_date)as new from Account_details  where Branch ='mumbai' 



----3.DATEADD()
--it will allow you to add the dates.
--it will accept three arguments.
--syntax : DATEADD(interval,value,date/datecolumn)

select DATEADD(DD,30,GETDATE())  

--add 5days to the acc_open date whoes branch is pune

select  * ,dateadd(dd,5,acc_open_date)as newdate from Account_details where branch='pune'

select * from Account_details






 
