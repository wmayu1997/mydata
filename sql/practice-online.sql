CREATE TABLE Worker (
	WORKER_ID INT PRIMARY KEY ,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT,
	JOINING_DATE DATETIME,
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(002, 'Niharika', 'Verma', 80000, '2020/05/3', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '2012/02/21', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '2028/03/23 ', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '2002/01/14', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '2000/05/20 ', 'Account'),
		(007, 'Satish', 'Kumar', 75000, ' 2018/08/22', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '2014/09/15 ', 'Admin');

CREATE TABLE Bonus (
	WORKER_REF_ID INT,
	BONUS_AMOUNT INT,
	BONUS_DATE DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Bonus 
	(WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE) VALUES
		(001, 5000, '2016/02/20'),
		(002, 3000, '2011/06/11'),
		(003, 4000, '2010/2/20'),
		(001, 4500, '2016/02/20'),
		(002, 3500, '2016/06/11');
CREATE TABLE Title (
	WORKER_REF_ID INT,
	WORKER_TITLE CHAR(25),
	AFFECTED_FROM DATETIME,
	FOREIGN KEY (WORKER_REF_ID)
		REFERENCES Worker(WORKER_ID)
        ON DELETE CASCADE
);

INSERT INTO Title 
	(WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
 (001, 'Manager', '2016/02/20 00:00:00'),
 (002, 'Executive', '2016/06/11 00:00:00'),
 (008, 'Executive', '2016/06/11 00:00:00'),
 (005, 'Manager', '2016/06/11 00:00:00'),
 (004, 'Asst. Manager', '2016/06/11 00:00:00'),
 (007, 'Executive', '2016/06/11 00:00:00'),
 (006, 'Lead', '2016/06/11 00:00:00'),
 (003, 'Lead', '2016/06/11 00:00:00');

 select * from Worker
 select  * from Title
 select * from Bonus

 --1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias name as <WORKER_NAME>.
 select First_name as WORKER_NAME from worker

 --2. Write an SQL query to fetch “FIRST_NAME” from Worker table in upper case.
 select UPPER(First_name) as WORKER_NAME from Worker

 --3.Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
 select distinct(department)from worker

 --4.Write an SQL query to print the first three characters of  FIRST_NAME from Worker table.
 select SUBSTRING(first_name,1,3) as newname from worker

 --@@@5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from Worker table.


 --6.Write an SQL query to print the FIRST_NAME from Worker table after removing white spaces from the right side.
 select RTRIM(first_name) from Worker

 --7. Write an SQL query to print the DEPARTMENT from Worker table after removing white spaces from the left side.
 select LTRIM(department)from Worker

 --8.Write an SQL query that fetches the unique values of DEPARTMENT from Worker table and prints its length.
 select distinct(len(department))as new from worker

 --Q-9. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’ with ‘A’.

 select replace (first_name,'a','A') as new from Worker

 --10.Write an SQL query to print the FIRST_NAME and LAST_NAME from Worker table into a single column COMPLETE_NAME. A space char should separate them.

 select CONCAT(first_name ,'',last_name) as Name from worker

 --Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.

 select * from worker order by FIRST_NAME asc

 --Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
  select * from worker order by FIRST_NAME asc , department desc

  --Q-13. Write an SQL query to print details for Workers with the first name as “Vipul” and “Satish” from Worker table.

  select * from worker where FIRST_NAME in('vipul','satish')

  --Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from Worker table.

    select * from worker where FIRST_NAME not in('vipul','satish')

	--Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
	select * from worker where DEPARTMENT='Admin'

	--Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
	select * from worker where FIRST_NAME like '%a%'

	--Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.

	select * from worker where FIRST_NAME like '%a'

	--18. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.

	select * from worker where FIRST_NAME like '_____%h'

	--Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.

	select * from worker where SALARY between 100000 and 500000

	--Q-20. Write an SQL query to print details of the Workers who have joined in Feb’2014.

	select * from worker where year(JOINING_DATE)=2014 and month(joining_date)=2

	--21.Write an SQL query to fetch the count of employees working in the department ‘Admin'

	select count(worker_id)as newcount from Worker where DEPARTMENT='Admin';

	--22.Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.

	select concat(first_name,' ',LAST_NAME)as fullname,SALARY from worker where SALARY between 50000 and 100000

	--23. Write an SQL query to print details of the Workers who are also Managers.
	  
	select first_name,last_name,salary,joining_date,worker_title from Worker as w,Title as t where w.WORKER_ID=t.WORKER_REF_ID and WORKER_TITLE='manager' 

	--Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
          
		  select worker_title,AFFECTED_FROM ,count(*) as new from title group by WORKER_TITLE,AFFECTED_FROM having count(*)>1

		  select * from title
		  select * from Worker
		  select * from bonus

--26. Write an SQL query to clone a new table from another table.

select * into  newworker from Worker  

select * from newworker


--Q-29. Write an SQL query to fetch intersecting records of two tables.

select * from Worker intersect select * from Title


--Q-30. Write an SQL query to show records from one table that another table does not have.

select * from worker minus select * from Title
 

 --Q-31. Write an SQL query to show the current date and time.

 select GETDATE();

 --Q-32. Write an SQL query to show the top n (say 10) records of a table.

 select top 10  * from worker


 --Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.

with ntable as
(select *,DENSE_RANK()over(order by salary desc) as newsal from worker)
select * from ntable where newsal=5

 select * from Worker

 --Q-35. Write an SQL query to fetch the list of employees with the same salary.
  
        select w.FIRST_NAME,w.SALARY from worker as w,worker as w1 
		where w.WORKER_ID!=w1.WORKER_ID and
		w.SALARY=w1.SALARY

--Q-39. Write an SQL query to fetch the first 50% records from a table.

select * from worker where WORKER_ID<

(select  count(worker_id)/2 as new from Worker)

--Q-40. Write an SQL query to fetch the departments that have less than five people in it.

select department, count(worker_id)as new from Worker group by DEPARTMENT HAVING COUNT(worker_id)<5  

--Q-41. Write an SQL query to show all departments along with the number of people in there.
select  department,count(department) as newdepartment from worker group by DEPARTMENT  
 

 --Q-42. Write an SQL query to show the last record from a table.


select  top 1 * from Worker order by worker_id desc

 --Q-43. Write an SQL query to fetch the first row of a table.

 select top 1 * from Worker


 --Q-44. Write an SQL query to fetch the last five records from a table.
select top 5 * from Worker order by WORKER_ID  desc


--Q-45. Write an SQL query to print the name of employees having the highest salary in each department.

  select DEPARTMENT ,first_name,salary,max(salary)as newsalary  from worker group by DEPARTMENT,FIRST_NAME, SALARY having  max(salary)<SALARY
  select * from worker
  select department ,max(Salary) as newsal from worker group by DEPARTMENT having sum(SALARY) order by FIRST_NAME asce

  /*SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Worker group by DEPARTMENT) as TempNew 
Inner Join Worker t on TempNew.DEPARTMENT=t.DEPARTMENT 
 and TempNew.TotalSalary=t.Salary;*/