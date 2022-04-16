select * from customer1;

--1.Increment the  5% of salary for thoes customer who have grater than 50000 salary 
select *,newsal=cust_salary+(cust_salary*0.5)from customer1 where cust_salary>50000

--2.In sql how to terminate the sql statement?

--3.Write a query to fetch all the records from the EmployeeInfo table ordered by EmpLname in descending order and Department in the ascending order.

select * from customer1 order by cust_name asc, cust_salary desc

--4. Write a query to display the first and the last record from the EmployeeInfo table.
select *  from customer1  where cust_id=(select max(cust_id) as lastid from customer1)

--6. how to define update statment?what is syntax for that and it is dml or ddl statement?
   --update the customer salary 10% whoes age in between 23 to 29

   update customer1 set cust_salary=cust_salary+(cust_salary*0.5)
   where cust_age between 23 and 29;

--7.what are the functions in sql ?
--1.min()
--2.max()
--3.count()
--4.TOP
--5.sum()
--6.avg()
--7.Distinct()

--8.a]display the unique city from the table?
    select distinct(cust_address) as newaddress from customer1
   -- b] display the first 3 record in desc order
   select  top 3 * from customer1 order by cust_id desc
   --c]count the number of employee whoes age is less than 29
     select count(cust_id)as new from customer1 where cust_age<29

--9.In count function NULL value can be considered? true/false
     false.null value is not consider in count function
	 In count,sum, and Avg function NULL values are ignored

--10.how to define constraints?which are their types?
--1.Primary Key
--2.Foreign Key
--3.NOT NULL key
--4.Unique Key
--5.Check Key
--6.Default key


--11.create a table customer whoes contains the column
--cust_id,cust_name,cust_address,cust_email,cust_age,cust_salary
-- cust_id unique id and its incremented by automatically,
--cust_name should be not null,
--cust_address add default city 'pune'
--cust_email should be unique, 
--check the  cust_age in between 20  to 30 while inserting the values
-- cust_salary is should not be blank

create table cust(
cust_id int primary key identity(1,1),
cust_name varchar(30) not null,
cust_address varchar(30) default 'pune',
cust_email varchar(30) unique,
cust_age int check(cust_age between 20 and 30),
cust_salary int not null);
select * from cust

