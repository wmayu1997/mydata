--How to create table?

create table t1(id int primary key identity(1,1),name varchar(20) not null,mobile varchar(20) unique,email varchar(30) unique,birth_date date);

--How to show or fetch table?

 
select * from t1

insert into t1 values('raj','9074231678','raj@gmail.com','2022-03-31')
insert into t1 values('om','90232331678','om@gmail.com','1998-02-21')
insert into t1 values('sai','913442128','sai@gmail.com','2012-01-1')
insert into t1 values('ram','974213424','ram@gmail.com','2002-02-3')
insert into t1 values('jay','9973427426','jay@gmail.com','2020-08-11')
insert into t1 values('sham','989632424','sham@gmail.com','2004-03-15')

--How to fetch particular column

select name from t1 

--How to show two particular column?

select id,name from t1

--How to insert zero at the place of integer?
 
insert into a values(null)

 --How to insert blank space at the plave of varchar?

 insert into a values('')
 
 --How to insert NULL at the place of integer?

 insert into a values(null)

 --How to insert values of a particular column?

 insert into a(id) values(1)

 select * from a

 --How to insert two colunm values in one query?

 insert into t1(name,email)values('leela','leela@gmail.com')
 select * from t1

 --How to insert three column values in one query?

  insert into t1(name,email,mobile)values('ajay','ajay@gmail.com','9067122222')

--How to fetch last column from multiple coulmns at first?

select birth_date from t1 

--How to fetch a particular record or rows ?

select * from t1 where id=5

--How to fetch multiple records or rows in one query?
--1.If we know the values of two or more columns from same records or rows?

select * from t1 where city='pune'

--13.How to fetch particular records from same column?

select * from t1 where city='pune'

--If we dont want particular records from same column?

select * from t1 where city!='pune'

--How to fetch a range of particular coulmn?

select * from t1 where birth_date between '2002-01-21' and '2012-4-2'

--If we dont want a specific range of a particular column?

select * from t1 where birth_date not between '2002-01-21' and '2012-4-2'

--How to fetch uknown records (if we know alphabets at any position)?


select * from t1 where name  like '%r%' 

--If we  want record of particular column whose staring alphabates are r and o


   select * from t1 where name like 'ro%'
select * from t1 where name  like '[ro]%'   

--If we want records of particular column whose starting alphabates are excluding from r and o ?

select * from t1 where name like '[^ro]%'

--If we want particular column records whose second and third characters are r and a?

select * from t1 where name like '_ra%'

--If we want records of a particular column whose last two characters are a and m?

select * from t1 where name like '%am'

--If we want records of particular column whose starting alphabets between k and n?

select * from t1 where name between 'k' and 'n'

--If we want records of  a particular column whose starting alphabates are not between k and n?

select * from t1 where name not between 'k' and 'n'

--How to show temparary column name? (column name should present in current table)

select count(id)as totalid from t1 


--If you have to find values that end with “i”

select * from t1 where name like '%i'

--If you have to find values that have “abc” in any position

select * from t1 where name like '%abc%'


--: If you have to find values that have “a” in the third position

select * from  t1 where name like '__a%'


--If you have to find values that start with “a” and are at least 5 characters in length

select * from t1 where name like 's_____%';


---If you have to find values that start with “g” and end with “v”

select * from t1 where name like 's%i'


delete t1  where name='kiran';

select * from dept_details


delete dept_details where dept_name='mcs' and salary=30000

select * from bank1

delete  bank1 


create table Truncate1 (U_ID int, UNAME varchar(20) ,ULOC varchar(20))

insert into Truncate1 values (1,'Sagar','PUNE')
insert into Truncate1 values (2,'Amit','Sangli')
insert into Truncate1 values (3,'Sarika','Bijapur')
insert into Truncate1 values (4,'Rohan','Mumbai')
insert into Truncate1 values (5,'Amrita','Palampur')

select * from Truncate1

truncate table truncate1 




create table UPDATE_DELETE (U_ID int, UNAME varchar(20) ,ULOC varchar(20))

insert into UPDATE_DELETE values (1,'Sagar','PUNE')
insert into UPDATE_DELETE values (2,'Amit','Sangli')
insert into UPDATE_DELETE values (3,'Sarika','Bijapur')
insert into UPDATE_DELETE values (4,'Rohan','Mumbai')
insert into UPDATE_DELETE values (5,'Amrita','Palampur')


select * from UPDATE_DELETE

update UPDATE_DELETE set uloc='nashik' where uname='sagar'


update UPDATE_DELETE set uname=null where uloc='mumbai'



Create table ALTER_OPERATION(AID int not Null , ANAME varchar(20))
 

insert into ALTER_OPERATION values (1,'Amit')
insert into ALTER_OPERATION values (2,'sumit')
insert into ALTER_OPERATION values (3,'rohit')
insert into ALTER_OPERATION values (4,'anil')
insert into ALTER_OPERATION values (5,'anil123456')

select * from ALTER_OPERATION


--Adding a single column into a table

alter table alter_operation add  age int

update ALTER_OPERATION set age=30 where  age=null

-----Adding multiple columns in a table

alter table alter_operation add date_of_birth date,address varchar(40);

--
--Dropping/Deleting single column from table
alter table alter_operation drop column date_of_birth

--Dropping/Deleting multiple columns from table

alter table alter_operation drop column age,address


----to increse or decrease the size of a column


alter table alter_operation alter column aname varchar(60)

select * from UPDATE_DELETE


--find out top record from the table

select min(u_id) as newid from UPDATE_DELETE 


select * from customer1


select max(cust_salary)as newmax  from customer1 where cust_age between 23 and 29


select count(distinct(cust_address))as new from customer1


 select * from customer1

 select count(cust_id) as bewcount from customer1 where cust_age=29

