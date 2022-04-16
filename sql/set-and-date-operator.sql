--set Operator:
/*
1.Union:A=[1,2,3,4] & B=[3,4,5,6]  A Union B then result =[1,2,3,4,5,6]

2.Union All: A Union All B =[1,2,3,3,4,4,5,6]

3.Intersect :A intersect B=[3,4] It shows common value

4.Except : A Except B=[1,2] Expect thoes values doest not present in A

           B Except A=[5,6]

*/

/*
create table set1 (sid int ,sname varchar(30));

create table set2 (sid int ,sname varchar(30));

insert into set1 values(1,'A')

insert into set1 values(2,'B')

insert into set1 values(3,'C')

insert into set1 values(4,'D')

insert into set1 values(5,'E')

insert into set2 values(1,'C')

insert into set2 values(2,'D')

insert into set2 values(3,'E')

insert into set2 values(4,'f')

insert into set2 values(5,'g')

insert into set2 values(6,'h')

 select  * from set1 ;

 select * from set2
 */
 --1.Union 

 --select * from set1 Union select * from set2

 --2.Union All

 --select * from set1 Union All select * from set2

--3 Intersect -not showing anwser

--select * from set1 intersect select * from set2

--4.Except

--select * from set2 except select * from set1


/*
Date opertator:

used to shoe date & time at same time 

getdate():display current date;
getdate()+1:display tommarow date;
getdate()+1:display yesterday date;

interval: 1.hour:hh 2.min:mm 3.year:yy 4.second:ss 5.milisec:ms 6.quarter:Q 7.month:M/MM 8.week:www

1.datediff -it shows diff between date1 & date2

syntax: select datediff(interval,date1,date2)

2.datpart -used when we date datatype

syntax: select datepart (interval,date/col-name)

3.dateadd - increases /decreses date using date addd
we can add /subscribe date,month,year 

*/
/*
create table Account_details(
Acc_no int primary key identity(1112881,1),
Acc_name varchar(20),
Acc_open_date date,
Branch varchar(20))
*/

--#######date-format -yy/mm/dd #####--

--insert into Account_details values('Sahil','2014/5/09','Mumbai');

--insert into Account_details values('Jyoti','2022/5/03','Nagar');

--insert into Account_details values('Mayur','2010/12/01','Pune');

--insert into Account_details values('Mayuri','2016/5/25','Shirdi');

--insert into Account_details values('Sonali','2011/6/8','Kopergav');

--insert into Account_details values('Nandini','2017/5/02','Mumbai');
/*
insert into Account_details values('Sujata','2019/5/13','Jalgaon');

insert into Account_details values('Raj','2016/7/18','Pune');

insert into Account_details values('Rohan','2013/2/01','Godegaon');

insert into Account_details values('Rahul','2020/1/05','Nashik');
*/--delete  from Account_details where Acc_name = 'rahul';

select * from Account_details;


--1.datediff

--yearwise:
--select * ,DATEDIFF(yy,Acc_open_date,GETDATE()) as year_of_join from Account_details

--monthwise:
--select * ,DATEDIFF(MM,Acc_open_date,GETDATE()) as month_of_join from Account_details

--2.datepart: it shows the date when u r joining it used bcoz date datatype

--select * ,datepart(yy,Acc_open_date)as newdate from Account_details where DATEPART (yy,Acc_open_date)='2022';

--select * ,datepart(mm,Acc_open_date)as newdate from Account_details where DATEPART (MM,Acc_open_date)='5';

--3.DateAdd:
/*
select * ,DATEADD(yy,5,Acc_open_date) as new_open_date from Account_details --Adding 5 years in each record

select * ,DATEADD(yy,-5,Acc_open_date) as new_open_date from Account_details --minus 5 years in each record

select * ,DATEADD(mm,3,Acc_open_date) as new_open_date from Account_details --Adding 3 month in each record

select * ,DATEADD(mm,-3,Acc_open_date) as new_open_date from Account_details --minus 3 month in each record


select *,DATEADD(yy,5,Acc_open_date)as new from Account_details where Acc_name='nandini'

*/
