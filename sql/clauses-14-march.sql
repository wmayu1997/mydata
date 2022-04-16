--create table  customer1(cust_id int, cust_name varchar(20),cust_mobile varchar(15) ,cust_address varchar(40),cust_salary int,cust_age int);
--select * from customer1;
--insert into customer1 values(106,'Shree rang',9021214576,'Pune',90000,25);
--insert into customer1 values(101,'ram',9021214576,'NASHIK',50000,22);

--insert into customer1 values(102,'Shree jay',9021214576,'Pune',40000,23);

--insert into customer1 values(103,'raj patil',9021214576,'nashik',60000,29);

--insert into customer1 values(104,'sai kokan',907861243,'Pune',70000,23,'23-march-2022','sai@gmail.com');

--insert into customer1 values(105,'raj shinde',9021214576,'pune',60000,29, '20-march-1992','raj@gmail.com');



--@@@Clauses@@@---

-- Their are 4 types of clauses:1.Where 2.Order by 3.Group by 4.Having


--@@@@@@@@@Comparison Operator@@@@@@----


select * from customer1;

--@@@@@@@@@ 1. Where Clause  @@@@@@----


--select  * from  customer1 where cust_name='shamali';

--select * from customer1 where cust_salary != 10000;

--select * from customer1 where cust_age <25;

--select * from customer1 where cust_age<=28;

--select * from customer1 where cust_salary >20000;

--select * from customer1 where cust_salary >=24000;



--@@@@@@@@@ Logical Operator@@@@@@----

--select * from customer1;

--select * from customer1 where cust_address='nashik' and cust_age<25;

--select * from customer1 where cust_address='nashik' or cust_age<25;



--@@@@@@@@@ In Operator@@@@@@----

--select * from customer1 where cust_age in(22,24,28);

--select * from customer1 where cust_salary NOT IN (80000);

--@@@@@@@@@ Between Operator@@@@@@----


--select * from customer1 where cust_age between 24 and 28;


--select * from customer1 where cust_salary not between 20000 and 30000;


--@@@@@@@@@ Using All Operator@@@@@@----


--select * from customer1

---Condition:


select * from customer1 where cust_address!='nashik' and cust_salary>10000 and cust_age between 20 and 29;



--select * from customer1 where cust_address!='nashik' or cust_salary>10000 and cust_age between 20 and 29;


--select *  from customer1 where  cust_age Not in (22) and cust_address='pune' and cust_salary>=20000;


--select * from customer1 where  cust_age in (24,29) and cust_address in('nashik','pune') or cust_salary Not between 20000 and 80000; 


--@@@@@@@@@ Like  Operator@@@@@@----

--select * from customer1 where cust_name like 's%';

--select * from customer1 where cust_name like 'sh%';

--select * from customer1 where cust_name like '%l';

--select * from customer1 where cust_name like '%a%';

--select * from customer1 where cust_name like '[mb]%';


--insert into customer1 values(107,'pooja patil', 907856342,'katraj',80000,32);


--select * from customer1 where cust_name like '[pp]%';

--select * from customer1 where cust_name  not like '[pp]%';


--delete  from customer1 where cust_id=107;

--select * from customer1 where cust_name like '[m_e]%';--range from staring character to ending


--@@@@@@@@@ Arithamtic  Operator@@@@@@----


--select * , new_salary=cust_salary+1000 from customer1;

--select * , pf_salary=cust_salary-(cust_salary*0.012) from customer1;

select * ,tax_salary=cust_salary-(cust_salary*0.05) from customer1 where cust_salary>50000;

--SELECT * , TAX_SALARY=cust_salary-(cust_salary*0.1), reduce_salary = cust_salary-(cust_salary*0.05) from customer1 where cust_salary>20000 and cust_salary<240000;

 
--select * , New_salary=cust_salary+13000 from customer1 where cust_age between 22 and 30;

--select * ,salary=cust_salary-(cust_salary*0.1) from customer1 where cust_salary=80000;

select * from customer1;
select *,newsal=cust_salary+(cust_salary*0.05) from customer1 where cust_salary>30000

--decrement the 20% of salary whoes age in between 20 to 25;
select *,newsal=cust_salary-(cust_salary*0.20) from customer1 where cust_age between 20 and 25



--@@@@@@@@@ 2.Order by Clause  @@@@@@----


--select * from customer1 order by cust_name ;

--select * from customer1 order by cust_salary desc;



--@@@@@@@@@ delete is DML@@@@@@----

--delete from customer1 where cust_name='pooja patil'; 

--delete from customer1 where cust_name like 's%';


--delete from customer1 where cust_name in ('raj');


--DROP table customer1;

--truncate table customer1;

--delete from customer1;

--@@@@@@@@@ update is DML@@@@@@----

--update customer1 set cust_name='Raj' where cust_id=101;


--@@@@@@@@@ Alter is DDL@@@@@@----

--alter table customer1 add cust_DOB date;

--ADD Multiple column
--alter table customer1 add location varchar(30),cust_email varchar(40);

--delete column
--alter table customer1 drop column location;

--change datatype
--alter table customer1 alter column cust_email varchar(50);

--update customer1 set cust_email='ram20@gmail.com'; 

--update customer1 set cust_DOB='12 Dec 1990' where cust_id=102;

--delete from customer1 where cust_id=106;


--@@@@@@@@@ 3.Group by Clause  @@@@@@----


--1.Never Selected all coloumn(*) always mention specified column name & same col name used by group by 


--syntax: select col-name,aggrigate function(col-name) from table-name group by col-name


--select cust_name, max(cust_salary) as new_salary from customer1 group by cust_name;

--display sumof salary cust_address wise

--select cust_address, sum(cust_salary) as new_salary from customer1 group by cust_address;

--count the age of customer due to cust-address wise

--select cust_address ,count(cust_age) as new_age from customer1 group by cust_address;


--select  cust_address , max(cust_age)as new_age from customer1 group by  cust_address;

--output:NASHIK 	29
--       Pune	    23

--select  cust_address , min(cust_age)as new_age from customer1 group by  cust_address;


--output:NASHIK 	22
--       Pune	    23

--select   cust_address, avg(cust_salary)as new_avgsalary from customer1 group by   cust_address;

--o/p:NASHIK	55000

--    Pune	   40000


--adding two column group by clauses:
--select   cust_id,cust_name, count(cust_age)as new_age from customer1 group by  cust_id,cust_name;


--count total number of customer in addresswise;

--select    cust_address ,count(cust_id)as No_customer from customer1 group by cust_address 
--output:NASHIK	2
---      pune	3

--@@@@@@@@@ 3.having by Clause  @@@@@@----

--it used when we used group by and order by clause simultaneously, its similar to where clause diff is having clause
--used multiple row & where clause used single row
--having clause used after group by and before order by clause
--group by and having clause both are dependent

--ex: display minimum number of salary cust_addresswise which is greater than 40k


select cust_address,min(cust_salary) as total_sal from customer1 where cust_salary>40000  group by  cust_address  

---output:

--NASHIK	50000
--pune	60000