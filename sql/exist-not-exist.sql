Create Table customer121 (C_ID int primary key ,CNAME varchar(20),Loc varchar(20))


insert into customer121  values( 1,'AMIT','PUNE')
insert into customer121  values(  2,'Sumit','Delhi')
insert into customer121  values(3,'varun','Mumbai')
insert into customer121  values( 4,'snehal','Latur')
insert into customer121  values( 5,'Raj','Sangli')
insert into customer121 values( 6,'Mohit','Satara')

select * from customer121 
 
create table orders(OID int primary key, CID int,groceries varchar(20))

insert into orders values(1,2,'almonds')
insert into orders values(2,3,'deo')
insert into orders values(3,1,'milk')
insert into orders values(4,2,'soap') 
insert into orders values(5,4,'dishes')
insert into orders values(6,2,'rice')

select * from orders
 select * from customer121 as c where exists (select * from orders as o where o.oid=o.cid)

 select * from customer121 as c where not exists (select * from orders as o where o.oid=o.cid)


 select * from customer121 where C_ID in (select CID from orders)
 select * from customer121 C where exists (select * from orders O where C.C_ID =O.CID )





