--create table employee1 (emp_id int, emp_name varchar(15),emp_age int,emp_add varchar(30),emp_salary int,emp_mob varchar(15));
--insert into employee1 values (501,'mayuri',36,'shirdi',40000,9960183880);
--insert into employee1 values (502,'ramesh',38,'pune',60000,9960123880);
--insert into employee1 values (503,'gokul',40,'mumbai',90000,9980183880);
--insert into employee1 values (504,'pritam',32,'nagar',20000,9960185680);
--insert into employee1 values (505,'shamali',28,'rahata',30000,9960583880);
--select*from employee1
select*from employee1 where emp_age<40 or emp_salary <60000