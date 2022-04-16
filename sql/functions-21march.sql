--Create table employee(eid int primary key,ename varchar(30),eaddress varchar(50),eage int,email varchar(30),esalary int);
--insert into employee values(1,'mayur','nashik',33,'mayur@gmail.com',30000);
--insert into employee values(2,'mayur','nashik',33,'mayur@gmail.com',30000);
--insert into employee values(3,'mayuri Waghchaure','pune',23,'mayuri@gmail.com',80000);
--insert into employee values(4,'mayuresh patil','nashik',30,'mayuresh@gmail.com',60000);
--insert into employee values(5,'mayura','shirdi',28,'mayura@gmail.com',40000);
--insert into employee values(6,'mayu singh','nashik',32,'mayursingh@gmail.com',30000);
--insert into employee values(7,'mayuriya singh','nashik',22,'mayursingh@gmail.com',null);

select * from employee;

--############ Aggrigate Functions#########

--1.MIN

--select min(eage) from employee

--2.MAX

--select max(esalary) from employee;

--3.avg

--select avg(esalary)from employee;

--4.sum

--select sum(esalary)from employee;

--5.count

--select count(*)from employee; --o/p:7

--select count(esalary)from employee;--o/p:6

--6.top

--select top 3  * from employee;

--display bottom  record;

--select top 1  * from employee  order by eid desc;


--7.Distinct:did not display duplicate value

--select distinct(ename) from  employee;
