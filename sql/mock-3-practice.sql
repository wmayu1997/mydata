create table M1(id int,name varchar(20));
create table M2(id int,name varchar(20));
 insert into m1 values(1,'A')
insert into m1 values(2,'B')
insert into m1 values(3,'C')
insert into m2 values(4,'D')
insert into M2 values(5,'E')
insert into m2 values(6,'F')
insert into m2 values(7,'G')
insert into m2 values(8,'H')
insert into m2 values(9,'Ha')
select * from m1
select * from m2

select * from m1 union select * from m2
select getdate();

select * from customer1

--list the name of customer  in each city having age is 22 to 23 

select cust_address,count(cust_id)as new from customer1 where cust_age between 22 and 23 group by cust_address  having count(cust_id)>2 order by cust_address desc

