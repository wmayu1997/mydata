--create table department(did int primary key,dname varchar(30),dep_salary int);

--insert into department values(1,'bcs',30000);

--insert into department values(2,'Mcs',50000);

--insert into department values(3,'M-tech',90000);

--insert into department values(4,'B-tech',60000);

--insert into department values(5,'BE',40000);
/*

select * from department;


--Q.1.display max salary depwise of mcs,bcs,be & salary >40000 it show in desc order


--select dname,max(dep_salary) as max_salary from department where dname in('Mcs','Bcs','BE') group by dname having sum(dep_salary)>20000 order by max_salary desc


/*create table emp(eid int primary key,ename varchar(30),e_salary int,eaddress varchar(50),eage int);


insert into emp values(1,'om laturkar',30000,'latur',25);
insert into emp values(2,'sai patil',40000,'latur',25);
insert into emp values(3,'jay singh',50000,'nashik',30);
insert into emp values(4,'ram shelke',70000,'pune',35);
insert into emp values(5,'raj oberoy',60000,'nashik',27);

*/
select * from emp;

 --Q.2.display min salary in latur which age >20 & display employee name ascending order


 --select ename,eaddress,eage, min(e_salary)as sal from emp where eaddress ='latur' group by ename,eage,eaddress having sum(eage)>20 order by ename asc

 --Q.3.display max salary in nashik which age is equal or grater than 27 & dispaly employee address in desc order

 
 --select ename,eage,eaddress, max(e_salary) as maxsalary from emp where  eaddress in('nashik') group by ename,eage,eaddress having sum (eage)>=28  order by eage desc

 --o/p: jay singh	30	nashik	50000

 --Q.4.count the total number of employee whoes salary is greater than 50k and employee name staring with r and display salary in desc order
 

 --select ename,e_salary,count(ename) as totalnoofemp from emp where ename like 'r%' group by ename,e_salary having sum(e_salary)>50000 order by e_salary desc; 

 /* output:
 ename      salary  counttotalemp
 ram shelke	70000	1
 raj oberoy	60000	1

 */


 --Q.5.display the avg salary of employee whoes age in between 27 to 35 and salary >30k and display age in desc


 select ename,eage,avg(e_salary) as newsal from emp where eage between 27 and 35 group by ename,eage having sum(e_salary)>30000 order by  eage desc

 /*		ename      Eage  Esalary
		ram shelke	35	70000
		jay singh	30	50000
		raj oberoy	27	60000
*/

*/
select * from department;


--select dname ,max(dep_salary)from department group by dname

--select dep_salary,dname,max(dep_salary) as newsal from department group by dep_salary,dname
		

---@@@@@@@@@Group by clauses@@@@@@@@@

select * from customer1

--Q.list the number of customer in each city

select count(cust_id) as newcount from customer1 group by cust_address

---@@@@@@@@@Having clauses@@@@@@@@@@

--Q.list the number of customer in each city ,only include countries with more than 2 customer
select count(cust_id) as newcount from customer1 group by cust_address having count(cust_id) >2
 
 --Q list the number of customer in each city, sorted by hight to low (only include city with more than 2 cutomer)

select cust_address,count(cust_id)as newcount from customer1 group by cust_address having COUNT(cust_id)>2 order by cust_address desc